uint64_t sub_214F2E7E8()
{
  v0 = sub_2150A4AD0();
  v1 = MEMORY[0x2160618B0](v0);

  return v1;
}

uint64_t sub_214F2E824()
{
  sub_2150A4AD0();
  sub_2150A4BB0();
}

uint64_t sub_214F2E878()
{
  sub_2150A4AD0();
  sub_2150A64B0();
  sub_2150A4BB0();
  v0 = sub_2150A64E0();

  return v0;
}

uint64_t sub_214F2E8EC()
{
  v0 = sub_2150A4AD0();
  v2 = v1;
  if (v0 == sub_2150A4AD0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2150A6270();
  }

  return v5 & 1;
}

unint64_t sub_214F2ECE8()
{
  result = qword_27CA41988;
  if (!qword_27CA41988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA41988);
  }

  return result;
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_214F2F170()
{
  result = qword_280C24550;
  if (!qword_280C24550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA41A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C24550);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_214F2F2C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_214F2F2E4(uint64_t result, int a2, int a3)
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

Swift::Void __swiftcall ICFolder.associateAppEntity(with:)(CSSearchableItemAttributeSet with)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9[-v3 - 8];
  sub_214F2F904(v9);
  sub_214D6DEC0(v9[0], v10, v11, v4);
  v5 = sub_2150A3750();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_214F302D4(v4, &qword_27CA41D40);
  }

  else
  {
    sub_2150A3650();
    (*(v6 + 8))(v4, v5);
  }

  v7 = [v1 title];
  sub_2150A4AD0();

  sub_214F301C4(MEMORY[0x277D84F90]);
  sub_2150A5700();
}

uint64_t sub_214F2F904@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2150A3F30();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v66 = &v57[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v8 = &v57[-v7];
  v9 = [v1 objectID];
  if (![v9 ic_isModernType])
  {
    [v9 ic_isLegacyType];
  }

  v61 = v57;
  MEMORY[0x28223BE20](v10);
  v64 = v11;
  v57[-16] = v11;
  v12 = qword_280C245E0;
  v13 = v1;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v3, qword_280C24890);
  v62 = *(v4 + 16);
  v63 = v14;
  v62(v8);
  v15 = swift_allocObject();
  *(v15 + 16) = 2;
  v16 = sub_214D6DCAC(v15, sub_214D6DCB0, &v57[-32]);
  v65 = v4;
  if (v16)
  {
  }

  else
  {
    v17 = sub_2150A5570();
    v18 = sub_2150A3F10();
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v58 = v17;
      v20 = v19;
      v59 = swift_slowAlloc();
      v69 = v59;
      *v20 = 136315650;
      v21 = sub_2150A5B70();
      v23 = sub_214F7723C(v21, v22, &v69);
      v60 = a1;
      v24 = v23;

      *(v20 + 4) = v24;
      *(v20 + 12) = 2048;
      *(v20 + 14) = 50;
      *(v20 + 22) = 2080;
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_2150A5B20();
      MEMORY[0x2160617E0](0xD000000000000034, 0x80000002150E1D10);
      v25 = [v13 ic_loggingDescription];
      v26 = sub_2150A4AD0();
      v28 = v27;

      v29 = v26;
      a1 = v60;
      MEMORY[0x2160617E0](v29, v28);

      v30 = sub_214F7723C(v67, v68, &v69);

      *(v20 + 24) = v30;
      _os_log_impl(&dword_214D51000, v18, v58, "Failed assertion at %s:%lu: %s", v20, 0x20u);
      v31 = v59;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v31, -1, -1);
      MEMORY[0x216064AF0](v20, -1, -1);
    }

    v4 = v65;
  }

  v32 = *(v4 + 8);
  v32(v8, v3);

  v33 = v66;
  v34 = [v13 identifierURIPathComponent];
  if (v34)
  {
    v35 = v34;
    v36 = sub_2150A4AD0();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0xE000000000000000;
  }

  v61 = v57;
  MEMORY[0x28223BE20](v34);
  *&v57[-16] = v36;
  *&v57[-8] = v38;
  (v62)(v33, v63, v3);
  v39 = swift_allocObject();
  *(v39 + 16) = 2;
  v40 = v13;
  if (sub_214D6DCAC(v39, sub_214D6DD3C, &v57[-32]))
  {

LABEL_18:
    v32(v33, v3);
    goto LABEL_19;
  }

  v41 = sub_2150A5570();
  v42 = sub_2150A3F10();
  if (!os_log_type_enabled(v42, v41))
  {

    goto LABEL_18;
  }

  v43 = swift_slowAlloc();
  LODWORD(v62) = v41;
  v44 = v43;
  v63 = swift_slowAlloc();
  v69 = v63;
  *v44 = 136315650;
  v45 = sub_2150A5B70();
  v47 = sub_214F7723C(v45, v46, &v69);
  v60 = a1;
  v48 = v47;

  *(v44 + 4) = v48;
  *(v44 + 12) = 2048;
  *(v44 + 14) = 52;
  *(v44 + 22) = 2080;
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_2150A5B20();

  v67 = 0xD000000000000028;
  v68 = 0x80000002150E1CE0;
  v49 = [v40 ic_loggingDescription];
  v50 = sub_2150A4AD0();
  v59 = v32;
  v52 = v51;

  v53 = v50;
  a1 = v60;
  MEMORY[0x2160617E0](v53, v52);

  v54 = sub_214F7723C(v67, v68, &v69);

  *(v44 + 24) = v54;
  _os_log_impl(&dword_214D51000, v42, v62, "Failed assertion at %s:%lu: %s", v44, 0x20u);
  v55 = v63;
  swift_arrayDestroy();
  MEMORY[0x216064AF0](v55, -1, -1);
  MEMORY[0x216064AF0](v44, -1, -1);

  v59(v66, v3);
LABEL_19:

  *a1 = v64;
  *(a1 + 8) = v36;
  *(a1 + 16) = v38;
  return result;
}

unint64_t sub_214F30094(uint64_t a1, uint64_t a2)
{
  sub_2150A64B0();
  sub_2150A4BB0();
  v4 = sub_2150A64E0();

  return sub_214F3010C(a1, a2, v4);
}

unint64_t sub_214F3010C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2150A6270())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_214F301C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42F10);
    v3 = sub_2150A5EA0();
    v4 = a1 + 32;

    while (1)
    {
      sub_214F30334(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_214F30094(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_214D72488(&v15, (v3[7] + 32 * result));
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

uint64_t sub_214F302D4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_214F30334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

ICTTAttachment __swiftcall ICTTAttachment.init(identifier:universalTypeIdentifier:)(Swift::String_optional identifier, Swift::String_optional universalTypeIdentifier)
{
  object = universalTypeIdentifier.value._object;
  v3 = identifier.value._object;
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = v4;
  if (v3)
  {
    v6 = sub_2150A4A90();
  }

  else
  {
    v6 = 0;
  }

  [v4 setAttachmentIdentifier_];

  if (object)
  {
    v7 = sub_2150A4A90();
  }

  else
  {
    v7 = 0;
  }

  [v4 setAttachmentUTI_];

  v10 = v4;
  result._attachmentUTI = v9;
  result._attachmentIdentifier = v8;
  result.super.isa = v10;
  return result;
}

uint64_t sub_214F30684(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NotesVersion(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214F306C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E08);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_2150A3E80();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_214F302D4(a1, &qword_27CA41E08);
    v13 = sub_214FB1920(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_214FED1C4();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_214F40F74(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_214F302D4(v8, &qword_27CA41E08);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_214FEBD18(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_214F30918(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_214FEC4D8(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_2150A3750();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_214FB1B98(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_214FEDFEC();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_2150A3750();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_214F41634(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_2150A3750();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_214F30AD8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == 255)
  {
    sub_214F302D4(a1, &qword_27CA41E10);
    sub_214FE8AA4(a2, v10);
    v8 = sub_2150A3750();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_214F302D4(v10, &qword_27CA41E10);
  }

  else
  {
    v4 = *(a1 + 16);
    v10[0] = *a1;
    v10[1] = v4;
    v11 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_214FEC308(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = sub_2150A3750();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  return result;
}

uint64_t sub_214F30C24@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *a1);
  v4 = v3[1];
  v5 = v3[2];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
}

uint64_t sub_214F30E30@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = sub_2150A3960();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v25 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  v15 = OBJC_IVAR___ICCloudSession_startDate;
  swift_beginAccess();
  sub_214F43C14(a1 + v15, v8, &qword_27CA41DD0);
  v16 = v10[6];
  if (v16(v8, 1, v9) == 1)
  {
    v17 = v8;
  }

  else
  {
    v24 = v10[4];
    v24(v14, v8, v9);
    v18 = OBJC_IVAR___ICCloudSession_endDate;
    swift_beginAccess();
    sub_214F43C14(a1 + v18, v6, &qword_27CA41DD0);
    if (v16(v6, 1, v9) != 1)
    {
      v21 = v25;
      v24(v25, v6, v9);
      sub_2150A3870();
      v20 = v22;
      v23 = v10[1];
      v23(v21, v9);
      result = (v23)(v14, v9);
      goto LABEL_7;
    }

    (v10[1])(v14, v9);
    v17 = v6;
  }

  result = sub_214F302D4(v17, &qword_27CA41DD0);
  v20 = 0;
LABEL_7:
  *v26 = v20;
  return result;
}

uint64_t sub_214F31138()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D90);
  sub_2150A55B0();
  return v1;
}

uint64_t sub_214F311B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR___ICCloudSession__metrics;
  swift_beginAccess();
  *a2 = *(a1 + v4);
}

uint64_t sub_214F3121C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR___ICCloudSession__metrics;
  swift_beginAccess();
  *a1 = *(v3 + v4);
}

uint64_t sub_214F31280()
{
  type metadata accessor for CloudSessionChanges();
  sub_2150A55B0();
  return v1;
}

id sub_214F312F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + OBJC_IVAR___ICCloudSession_zoneChanges);
  v3 = *(a1 + OBJC_IVAR___ICCloudSession_zoneChanges + 8);
  v4 = *(a1 + OBJC_IVAR___ICCloudSession_zoneChanges + 16);
  v6 = *(a1 + OBJC_IVAR___ICCloudSession_fetchedRecordChanges);
  v5 = *(a1 + OBJC_IVAR___ICCloudSession_fetchedRecordChanges + 8);
  v7 = *(a1 + OBJC_IVAR___ICCloudSession_fetchedRecordChanges + 16);
  v8 = *(a1 + OBJC_IVAR___ICCloudSession_pushedRecordChanges + 8);
  v16 = *(a1 + OBJC_IVAR___ICCloudSession_pushedRecordChanges);
  v9 = *(a1 + OBJC_IVAR___ICCloudSession_pushedRecordChanges + 16);
  v10 = type metadata accessor for CloudSessionChanges();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR___CloudSessionChanges_recordZonesChanges];
  *v12 = v2;
  *(v12 + 1) = v3;
  *(v12 + 2) = v4;
  v13 = &v11[OBJC_IVAR___CloudSessionChanges_fetchedRecordChanges];
  *v13 = v6;
  *(v13 + 1) = v5;
  *(v13 + 2) = v7;
  v14 = &v11[OBJC_IVAR___CloudSessionChanges_pushedRecordChanges];
  *v14 = v16;
  *(v14 + 1) = v8;
  *(v14 + 2) = v9;
  v18.receiver = v11;
  v18.super_class = v10;

  result = objc_msgSendSuper2(&v18, sel_init);
  *a2 = result;
  return result;
}

uint64_t sub_214F31480@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v2 = *(a1 + OBJC_IVAR___ICCloudSession_pushedRecordChanges);
  v3 = *(a1 + OBJC_IVAR___ICCloudSession_pushedRecordChanges + 8);
  v4 = *(a1 + OBJC_IVAR___ICCloudSession_pushedRecordChanges + 16);
  if (v2 >> 62)
  {
    v7 = a2;
    result = sub_2150A59D0();
    a2 = v7;
    if (result)
    {
      goto LABEL_5;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_5:
      v6 = 1;
      goto LABEL_6;
    }
  }

  if (v3 >> 62)
  {
    v8 = a2;
    result = sub_2150A59D0();
    a2 = v8;
    if (result)
    {
      goto LABEL_5;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }
  }

  if (v4 >> 62)
  {
    v9 = a2;
    result = sub_2150A59D0();
    a2 = v9;
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = result != 0;
LABEL_6:
  *a2 = v6;
  return result;
}

uint64_t sub_214F31660(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;
  sub_214F33518(sub_214F3177C, v3);
}

uint64_t sub_214F316E0(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = v3;
  sub_214F33518(sub_214F43F4C, v4);
}

uint64_t (*sub_214F31794(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  sub_2150A55B0();
  *(a1 + 8) = *(a1 + 9);
  return sub_214F3182C;
}

uint64_t sub_214F3182C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v2;
  sub_214F33518(sub_214F43F4C, v3);
}

uint64_t sub_214F31908@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR___ICCloudSession_endDate;
  swift_beginAccess();
  sub_214F43C14(a1 + v7, v6, &qword_27CA41DD0);
  v8 = sub_2150A3960();
  LODWORD(v7) = (*(*(v8 - 8) + 48))(v6, 1, v8);
  result = sub_214F302D4(v6, &qword_27CA41DD0);
  if (v7 == 1 || *(a1 + OBJC_IVAR___ICCloudSession__error) || *(a1 + OBJC_IVAR___ICCloudSession__hasCompletedInitialSync) == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + OBJC_IVAR___ICCloudSession__wasCancelled) ^ 1;
  }

  *a2 = v10 & 1;
  return result;
}

uint64_t sub_214F31B30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D98);
  sub_2150A55B0();
  return v1;
}

void sub_214F31C60(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;
  v5 = a1;
  sub_214F33518(sub_214F33854, v3);
}

uint64_t sub_214F31CEC@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D98);
  result = sub_2150A55B0();
  *a1 = v3;
  return result;
}

uint64_t sub_214F31D74(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = v3;
  v6 = v2;
  sub_214F33518(sub_214F43EE4, v4);
}

void (*sub_214F31DFC(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D98);
  sub_2150A55B0();
  *a1 = a1[1];
  return sub_214F31EA4;
}

void sub_214F31EA4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  if (a2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    v5 = v2;
    v6 = v3;
    v7 = v2;
    sub_214F33518(sub_214F43EE4, v4);
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v2;
    v9 = v3;
    v10 = v2;
    sub_214F33518(sub_214F43EE4, v8);
  }
}

uint64_t sub_214F32014(void *a1)
{
  v1 = a1;
  sub_2150A55B0();

  return v3;
}

uint64_t sub_214F320F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  v9 = *a2;
  swift_beginAccess();
  sub_214F43C14(a1 + v9, v8, &qword_27CA41DD0);
  v10 = sub_2150A3960();
  LOBYTE(v9) = (*(*(v10 - 8) + 48))(v8, 1, v10) != 1;
  result = sub_214F302D4(v8, &qword_27CA41DD0);
  *a3 = v9;
  return result;
}

uint64_t sub_214F3233C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___ICCloudSession_identifier;
  swift_beginAccess();
  v4 = sub_2150A3A00();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_214F324D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ICCloudSession_identifier;
  swift_beginAccess();
  v5 = sub_2150A3A00();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_214F32564(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR___ICCloudSession_identifier;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_214F326F8()
{
  v1 = (v0 + OBJC_IVAR___ICCloudSession_reason);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_214F327BC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___ICCloudSession_reason);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_214F32928()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_214F32988(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___ICCloudSession_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_214F32A20;
}

void sub_214F32A20(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_214F32AA0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E08);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___ICCloudSession____lazy_storage___sessionSignpostID;
  swift_beginAccess();
  sub_214F43C14(v1 + v9, v8, &qword_27CA41E08);
  v10 = sub_2150A3E80();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_214F302D4(v8, &qword_27CA41E08);
  sub_2150A3EA0();
  sub_2150A3E60();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_214F43C7C(v6, v1 + v9, &qword_27CA41E08);
  return swift_endAccess();
}

id CloudSession.init(reason:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v50 = a1;
  v51 = a2;
  v4 = sub_2150A55A0();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  v55 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2150A5590();
  MEMORY[0x28223BE20](v53);
  v54 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2150A4490();
  MEMORY[0x28223BE20](v7 - 8);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2150A3F30();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v48 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2150A3EB0();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_2150A3A00();
  v45 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D84F98];
  *&v3[OBJC_IVAR___ICCloudSession__metrics] = MEMORY[0x277D84F98];
  v3[OBJC_IVAR___ICCloudSession__hasCompletedInitialSync] = 0;
  *&v3[OBJC_IVAR___ICCloudSession__error] = 0;
  v3[OBJC_IVAR___ICCloudSession__wasCancelled] = 0;
  swift_unknownObjectWeakInit();
  v16 = &v3[OBJC_IVAR___ICCloudSession_zoneChanges];
  v17 = MEMORY[0x277D84F90];
  *v16 = MEMORY[0x277D84F90];
  v16[1] = v17;
  v16[2] = v17;
  v18 = &v3[OBJC_IVAR___ICCloudSession_fetchedRecordChanges];
  *v18 = v17;
  v18[1] = v17;
  v18[2] = v17;
  v19 = &v3[OBJC_IVAR___ICCloudSession_pushedRecordChanges];
  *v19 = v17;
  v19[1] = v17;
  v19[2] = v17;
  *&v3[OBJC_IVAR___ICCloudSession_recordTypesToIdentifiers] = v15;
  v20 = OBJC_IVAR___ICCloudSession_startDate;
  v21 = sub_2150A3960();
  v22 = *(*(v21 - 8) + 56);
  v22(&v3[v20], 1, 1, v21);
  v22(&v3[OBJC_IVAR___ICCloudSession_endDate], 1, 1, v21);
  v23 = &v3[OBJC_IVAR___ICCloudSession_unknownRecordType];
  *v23 = 0xD000000000000011;
  v23[1] = 0x80000002150E1D80;
  v24 = OBJC_IVAR___ICCloudSession_preferredLoggingOrder;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2150C26D0;
  *(v25 + 32) = sub_2150A4AD0();
  *(v25 + 40) = v26;
  *(v25 + 48) = sub_2150A4AD0();
  *(v25 + 56) = v27;
  *(v25 + 64) = sub_2150A4AD0();
  *(v25 + 72) = v28;
  *(v25 + 80) = sub_2150A4AD0();
  *(v25 + 88) = v29;
  *(v25 + 96) = sub_2150A4AD0();
  *(v25 + 104) = v30;
  *(v25 + 112) = sub_2150A5750();
  *(v25 + 120) = v31;
  *&v3[v24] = v25;
  v32 = OBJC_IVAR___ICCloudSession____lazy_storage___sessionSignpostID;
  v33 = sub_2150A3E80();
  (*(*(v33 - 8) + 56))(&v3[v32], 1, 1, v33);
  *&v3[OBJC_IVAR___ICCloudSession_sessionSignpostState] = 0;
  *&v3[OBJC_IVAR___ICCloudSession_signpostIDForPhase] = v15;
  *&v3[OBJC_IVAR___ICCloudSession_signpostStateForPhase] = v15;
  v34 = &v3[OBJC_IVAR___ICCloudSession_sessionSignpostName];
  *v34 = "CloudSession";
  *(v34 + 1) = 12;
  v34[16] = 2;
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  if (qword_280C245C0 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v9, qword_280C245C8);
  v36 = v45;
  (*(v45 + 16))(&v3[OBJC_IVAR___ICCloudSession_identifier], v14, v58);
  v37 = *(v10 + 16);
  v37(&v3[OBJC_IVAR___ICCloudSession_logger], v35, v9);
  v37(v48, v35, v9);
  v38 = v46;
  sub_2150A3E90();
  (*(v47 + 32))(&v3[OBJC_IVAR___ICCloudSession_signPoster], v38, v49);
  v39 = &v3[OBJC_IVAR___ICCloudSession_reason];
  v40 = v51;
  *v39 = v50;
  v39[1] = v40;
  v51 = sub_214D55670(0, &qword_280C24508);
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_2150A5B20();

  v60 = 0xD00000000000001DLL;
  v61 = 0x80000002150E1DA0;
  v41 = sub_2150A3990();
  MEMORY[0x2160617E0](v41);

  sub_2150A4440();
  v60 = v17;
  sub_214F43DFC(&qword_280C24510, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC8);
  sub_214F43BCC(&unk_280C24530, &qword_27CA41DC8);
  sub_2150A5930();
  (*(v56 + 104))(v55, *MEMORY[0x277D85260], v57);
  v42 = sub_2150A55D0();
  (*(v36 + 8))(v14, v58);
  *&v3[OBJC_IVAR___ICCloudSession_queue] = v42;
  v43 = type metadata accessor for CloudSession(0);
  v59.receiver = v3;
  v59.super_class = v43;
  return objc_msgSendSuper2(&v59, sel_init);
}

uint64_t sub_214F33518(uint64_t a1, uint64_t a2)
{
  v5 = sub_2150A4400();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2150A4490();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[OBJC_IVAR___ICCloudSession_queue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_214F43E94;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214F44018;
  aBlock[3] = &block_descriptor_402;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  sub_2150A4440();
  v18 = MEMORY[0x277D84F90];
  sub_214F43DFC(&qword_280C24570, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA41A28);
  sub_214F43BCC(&qword_280C24550, &unk_27CA41A28);
  sub_2150A5930();
  MEMORY[0x216062180](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

id sub_214F33818@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR___ICCloudSession__error);
  *a1 = v2;
  return v2;
}

uint64_t sub_214F338B8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v17 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR___ICCloudSession_startDate;
  swift_beginAccess();
  sub_214F43C14(a1 + v9, v8, &qword_27CA41DD0);
  v10 = sub_2150A3960();
  v11 = *(*(v10 - 8) + 48);
  v12 = v11(v8, 1, v10);
  result = sub_214F302D4(v8, &qword_27CA41DD0);
  if (v12 != 1)
  {
    v14 = OBJC_IVAR___ICCloudSession_endDate;
    swift_beginAccess();
    sub_214F43C14(a1 + v14, v6, &qword_27CA41DD0);
    v15 = v11(v6, 1, v10);
    result = sub_214F302D4(v6, &qword_27CA41DD0);
    if (v15 == 1)
    {
      return v17(result);
    }
  }

  return result;
}

uint64_t sub_214F33A7C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = sub_2150A4400();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2150A4490();
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2150A4420();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    sub_214D55670(0, &qword_280C24508);
    (*(v11 + 104))(v13, *MEMORY[0x277D851C8], v10);
    v19 = sub_2150A55E0();
    (*(v11 + 8))(v13, v10);
    v16 = swift_allocObject();
    v16[2] = v20;
    v16[3] = a2;
    v16[4] = v15;
    aBlock[4] = sub_214F43B9C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214F44018;
    aBlock[3] = &block_descriptor_287;
    v17 = _Block_copy(aBlock);

    swift_unknownObjectRetain();
    sub_2150A4440();
    v23 = MEMORY[0x277D84F90];
    sub_214F43DFC(&qword_280C24570, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA41A28);
    sub_214F43BCC(&qword_280C24550, &unk_27CA41A28);
    sub_2150A5930();
    v18 = v19;
    MEMORY[0x216062180](0, v9, v6, v17);
    _Block_release(v17);
    swift_unknownObjectRelease();

    (*(v4 + 8))(v6, v3);
    (*(v21 + 8))(v9, v22);
  }

  return result;
}

uint64_t sub_214F33E6C()
{
  v1 = *&v0[OBJC_IVAR___ICCloudSession_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_214F3FBC8;
  *(v3 + 24) = v2;
  v8[4] = sub_214F3FBD0;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_214F34100;
  v8[3] = &block_descriptor_0;
  v4 = _Block_copy(v8);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_214F33FC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  v5 = OBJC_IVAR___ICCloudSession_startDate;
  swift_beginAccess();
  sub_214F43C14(a1 + v5, v4, &qword_27CA41DD0);
  v6 = sub_2150A3960();
  LODWORD(v5) = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_214F302D4(v4, &qword_27CA41DD0);
  if (v5 == 1)
  {
    sub_214F3428C();
  }
}

void sub_214F3428C()
{
  v1 = sub_2150A3A00();
  v89 = *(v1 - 8);
  v90 = v1;
  MEMORY[0x28223BE20](v1);
  v88 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2150A3E80();
  v84 = *(v85 - 8);
  v3 = MEMORY[0x28223BE20](v85);
  v83 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v87 = &v81 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v86 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v81 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v81 - v12;
  v14 = OBJC_IVAR___ICCloudSession_startDate;
  swift_beginAccess();
  sub_214F43C14(&v0[v14], v13, &qword_27CA41DD0);
  v15 = sub_2150A3960();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(v13, 1, v15);
  sub_214F302D4(v13, &qword_27CA41DD0);
  if (v18 == 1)
  {
    v19 = OBJC_IVAR___ICCloudSession_endDate;
    swift_beginAccess();
    sub_214F43C14(&v0[v19], v11, &qword_27CA41DD0);
    LODWORD(v19) = v17(v11, 1, v15);
    sub_214F302D4(v11, &qword_27CA41DD0);
    if (v19 == 1)
    {
      v20 = v86;
      sub_2150A3950();
      (*(v16 + 56))(v20, 0, 1, v15);
      swift_beginAccess();
      sub_214F43C7C(v20, &v0[v14], &qword_27CA41DD0);
      swift_endAccess();
      v21 = *&v0[OBJC_IVAR___ICCloudSession_sessionSignpostName];
      v22 = v0[OBJC_IVAR___ICCloudSession_sessionSignpostName + 16];
      v23 = v87;
      sub_214F32AA0(v87);
      v24 = v0;
      v25 = sub_2150A3EA0();
      v26 = sub_2150A5610();
      if ((sub_2150A57D0() & 1) == 0)
      {

LABEL_16:
        v59 = v84;
        v60 = v85;
        (*(v84 + 16))(v83, v23, v85);
        sub_2150A3EF0();
        swift_allocObject();
        v61 = sub_2150A3EE0();
        (*(v59 + 8))(v23, v60);
        *&v24[OBJC_IVAR___ICCloudSession_sessionSignpostState] = v61;

        v62 = v24;
        v63 = sub_2150A3F10();
        v64 = sub_2150A5580();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v92 = v66;
          *v65 = 136315394;
          v67 = OBJC_IVAR___ICCloudSession_identifier;
          swift_beginAccess();
          v69 = v89;
          v68 = v90;
          v70 = v88;
          (*(v89 + 16))(v88, &v62[v67], v90);
          sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0]);
          v71 = sub_2150A6100();
          v73 = v72;
          (*(v69 + 8))(v70, v68);
          v74 = sub_214F7723C(v71, v73, &v92);

          *(v65 + 4) = v74;
          *(v65 + 12) = 2080;
          v75 = &v62[OBJC_IVAR___ICCloudSession_reason];
          swift_beginAccess();
          v77 = *v75;
          v76 = v75[1];

          v78 = sub_214F7723C(v77, v76, &v92);

          *(v65 + 14) = v78;
          _os_log_impl(&dword_214D51000, v63, v64, "Session began %s %s", v65, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x216064AF0](v66, -1, -1);
          MEMORY[0x216064AF0](v65, -1, -1);
        }

        v79 = swift_allocObject();
        *(v79 + 16) = v62;
        v80 = v62;
        sub_214F33A7C(sub_214F43B8C, v79);

        return;
      }

      LODWORD(v86) = v26;
      if (v22)
      {
        if (!(v21 >> 32))
        {
          if ((v21 & 0xFFFFF800) == 0xD800)
          {
LABEL_23:
            __break(1u);
            return;
          }

          if (v21 >> 16 <= 0x10)
          {

            v82 = v93;
            goto LABEL_15;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      else
      {

        if (v21)
        {
          v82 = v21;
LABEL_15:
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v93[0] = v45;
          *v44 = 136315394;
          v46 = OBJC_IVAR___ICCloudSession_identifier;
          swift_beginAccess();
          v48 = v89;
          v47 = v90;
          v49 = v88;
          (*(v89 + 16))(v88, &v24[v46], v90);
          sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0]);
          v50 = sub_2150A6100();
          v52 = v51;
          (*(v48 + 8))(v49, v47);
          v53 = sub_214F7723C(v50, v52, v93);

          *(v44 + 4) = v53;
          *(v44 + 12) = 2080;
          v54 = &v24[OBJC_IVAR___ICCloudSession_reason];
          swift_beginAccess();
          v56 = *v54;
          v55 = v54[1];

          v57 = sub_214F7723C(v56, v55, v93);

          *(v44 + 14) = v57;
          v58 = sub_2150A3E70();
          _os_signpost_emit_with_name_impl(&dword_214D51000, v25, v86, v58, v82, "Session began %s %s", v44, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x216064AF0](v45, -1, -1);
          MEMORY[0x216064AF0](v44, -1, -1);
          goto LABEL_16;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_22;
    }
  }

  v27 = v0;
  v28 = sub_2150A3F10();
  v29 = sub_2150A5560();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v91[0] = v31;
    *v30 = 136315394;
    v32 = OBJC_IVAR___ICCloudSession_identifier;
    swift_beginAccess();
    v34 = v89;
    v33 = v90;
    v35 = v88;
    (*(v89 + 16))(v88, &v27[v32], v90);
    sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0]);
    v36 = sub_2150A6100();
    v38 = v37;
    (*(v34 + 8))(v35, v33);
    v39 = sub_214F7723C(v36, v38, v91);

    *(v30 + 4) = v39;
    *(v30 + 12) = 2080;
    v40 = &v27[OBJC_IVAR___ICCloudSession_reason];
    swift_beginAccess();
    v42 = *v40;
    v41 = v40[1];

    v43 = sub_214F7723C(v42, v41, v91);

    *(v30 + 14) = v43;
    _os_log_impl(&dword_214D51000, v28, v29, "Session has already begun, but attempted to mark beginning again. session %s %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x216064AF0](v31, -1, -1);
    MEMORY[0x216064AF0](v30, -1, -1);
  }
}

uint64_t sub_214F34D64(void *a1)
{
  v3 = *&v1[OBJC_IVAR___ICCloudSession_queue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_214F3FBF8;
  *(v5 + 24) = v4;
  v11[4] = sub_214F43F50;
  v11[5] = v5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_214F34100;
  v11[3] = &block_descriptor_37;
  v6 = _Block_copy(v11);
  v7 = v1;
  v8 = a1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_214F34F24(void *a1)
{
  v3 = sub_2150A3A00();
  v115 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v114 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2150A3EC0();
  v6 = *(v5 - 1);
  v112 = v5;
  v113 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2150A3E80();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v105 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v105 - v20;
  if (sub_214F426EC(a1))
  {
    v22 = OBJC_IVAR___ICCloudSession_startDate;
    swift_beginAccess();
    sub_214F43C14(v1 + v22, v16, &qword_27CA41DD0);
    v23 = sub_2150A3960();
    v24 = (*(*(v23 - 8) + 48))(v16, 1, v23);
    sub_214F302D4(v16, &qword_27CA41DD0);
    v25 = v1;
    v26 = sub_2150A3F10();
    if (v24 == 1)
    {
      v27 = sub_2150A5550();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = v3;
        v30 = swift_slowAlloc();
        v117 = v30;
        *v28 = 136315394;
        v31 = OBJC_IVAR___ICCloudSession_identifier;
        swift_beginAccess();
        v33 = v114;
        v32 = v115;
        (*(v115 + 16))(v114, &v25[v31], v29);
        sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0]);
        v34 = sub_2150A6100();
        v36 = v35;
        (*(v32 + 8))(v33, v29);
        v37 = sub_214F7723C(v34, v36, &v117);

        *(v28 + 4) = v37;
        *(v28 + 12) = 2080;
        v38 = &v25[OBJC_IVAR___ICCloudSession_reason];
        swift_beginAccess();
        v40 = *v38;
        v39 = v38[1];

        v41 = sub_214F7723C(v40, v39, &v117);

        *(v28 + 14) = v41;
        _os_log_impl(&dword_214D51000, v26, v27, "Ignoring session end for syncing disabled, we never started this session %s %s", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x216064AF0](v30, -1, -1);
        v42 = v28;
LABEL_15:
        MEMORY[0x216064AF0](v42, -1, -1);
      }
    }

    else
    {
      v59 = sub_2150A5560();

      if (os_log_type_enabled(v26, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v116[0] = v61;
        *v60 = 136315138;
        v62 = &v25[OBJC_IVAR___ICCloudSession_reason];
        swift_beginAccess();
        v64 = *v62;
        v63 = v62[1];

        v65 = sub_214F7723C(v64, v63, v116);

        *(v60 + 4) = v65;
        _os_log_impl(&dword_214D51000, v26, v59, "Syncing is disabled, but this session was marked as started. %s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v61);
        MEMORY[0x216064AF0](v61, -1, -1);
        v42 = v60;
        goto LABEL_15;
      }
    }

LABEL_16:

    return;
  }

  v110 = v12;
  v111 = a1;
  v107 = v10;
  v108 = v9;
  v109 = v3;
  v43 = OBJC_IVAR___ICCloudSession_endDate;
  swift_beginAccess();
  sub_214F43C14(v1 + v43, v21, &qword_27CA41DD0);
  v44 = sub_2150A3960();
  v45 = *(v44 - 8);
  v46 = (*(v45 + 48))(v21, 1, v44);
  sub_214F302D4(v21, &qword_27CA41DD0);
  if (v46 != 1)
  {
    v66 = v1;
    v26 = sub_2150A3F10();
    v67 = sub_2150A5560();

    if (os_log_type_enabled(v26, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v117 = v69;
      *v68 = 136315394;
      v70 = OBJC_IVAR___ICCloudSession_identifier;
      swift_beginAccess();
      v72 = v114;
      v71 = v115;
      v73 = v109;
      (*(v115 + 16))(v114, &v66[v70], v109);
      sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0]);
      v74 = sub_2150A6100();
      v76 = v75;
      (*(v71 + 8))(v72, v73);
      v77 = sub_214F7723C(v74, v76, &v117);

      *(v68 + 4) = v77;
      *(v68 + 12) = 2080;
      v78 = &v66[OBJC_IVAR___ICCloudSession_reason];
      swift_beginAccess();
      v80 = *v78;
      v79 = v78[1];

      v81 = sub_214F7723C(v80, v79, &v117);

      *(v68 + 14) = v81;
      _os_log_impl(&dword_214D51000, v26, v67, "Session has already ended, but attempted to mark end again, session %s %s", v68, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v69, -1, -1);
      v42 = v68;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v47 = swift_allocObject();
  v48 = v111;
  *(v47 + 16) = v1;
  *(v47 + 24) = v48;
  v49 = v1;
  v50 = v48;
  sub_214F33518(sub_214F43EE4, v47);

  sub_2150A3950();
  (*(v45 + 56))(v19, 0, 1, v44);
  swift_beginAccess();
  sub_214F43C7C(v19, v1 + v43, &qword_27CA41DD0);
  swift_endAccess();
  if (!*&v49[OBJC_IVAR___ICCloudSession_sessionSignpostState])
  {
    goto LABEL_26;
  }

  v51 = *&v49[OBJC_IVAR___ICCloudSession_sessionSignpostName];
  v52 = v49[OBJC_IVAR___ICCloudSession_sessionSignpostName + 16];
  v53 = v49;

  v54 = sub_2150A3EA0();
  v55 = v110;
  sub_2150A3ED0();
  v106 = sub_2150A5600();
  if (sub_2150A57D0())
  {
    v56 = v53;
    if (v52)
    {
      v57 = v113;
      if (!(v51 >> 32))
      {
        v58 = v112;
        if ((v51 & 0xFFFFF800) == 0xD800)
        {
LABEL_31:
          __break(1u);
          return;
        }

        if (v51 >> 16 <= 0x10)
        {

          v51 = &v118;
          goto LABEL_22;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {

      v57 = v113;
      if (v51)
      {
        v58 = v112;
LABEL_22:

        sub_2150A3F00();

        v82 = (*(v57 + 11))(v8, v58);
        v83 = *MEMORY[0x277D85B00];
        v105 = v54;
        v113 = v51;
        if (v82 == v83)
        {
          v84 = 0;
          v112 = "[Error] Interval already ended";
        }

        else
        {
          (*(v57 + 1))(v8, v58);
          v112 = "Ended sync session %s %s";
          v84 = 2;
        }

        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v117 = v86;
        *v85 = v84;
        *(v85 + 1) = v84;
        *(v85 + 2) = 2080;
        v87 = OBJC_IVAR___ICCloudSession_identifier;
        swift_beginAccess();
        v89 = v114;
        v88 = v115;
        v90 = v109;
        (*(v115 + 16))(v114, &v56[v87], v109);
        sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0]);
        v91 = sub_2150A6100();
        v93 = v92;
        (*(v88 + 8))(v89, v90);
        v94 = sub_214F7723C(v91, v93, &v117);

        *(v85 + 4) = v94;
        *(v85 + 12) = 2080;
        v95 = &v56[OBJC_IVAR___ICCloudSession_reason];
        swift_beginAccess();
        v97 = *v95;
        v96 = v95[1];

        v98 = sub_214F7723C(v97, v96, &v117);

        *(v85 + 14) = v98;
        v99 = v110;
        v100 = sub_2150A3E70();
        v101 = v105;
        _os_signpost_emit_with_name_impl(&dword_214D51000, v105, v106, v100, v113, v112, v85, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x216064AF0](v86, -1, -1);
        MEMORY[0x216064AF0](v85, -1, -1);

        (*(v107 + 8))(v99, v108);
        v48 = v111;
        goto LABEL_26;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  (*(v107 + 8))(v55, v108);
LABEL_26:
  sub_214F3BC9C();
  sub_214F3CFBC();
  v102 = swift_allocObject();
  *(v102 + 16) = v49;
  *(v102 + 24) = v48;
  v103 = v49;
  v104 = v48;
  sub_214F33A7C(sub_214F43B84, v102);
}

void sub_214F35BF0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    v5 = sub_2150A35C0();
    a1 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [a1 sessionDidEnd:a2 with:?];
}

uint64_t sub_214F35C60()
{
  v1 = *&v0[OBJC_IVAR___ICCloudSession_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_214F3FC20;
  *(v3 + 24) = v2;
  v8[4] = sub_214F43F50;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_214F34100;
  v8[3] = &block_descriptor_47;
  v4 = _Block_copy(v8);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_214F35F18()
{
  v1 = v0;
  v2 = sub_2150A3A00();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38[-v7];
  v9 = OBJC_IVAR___ICCloudSession__wasCancelled;
  if ((v0[OBJC_IVAR___ICCloudSession__wasCancelled] & 1) == 0)
  {
    v10 = OBJC_IVAR___ICCloudSession_endDate;
    swift_beginAccess();
    sub_214F43C14(&v0[v10], v8, &qword_27CA41DD0);
    v11 = sub_2150A3960();
    LODWORD(v10) = (*(*(v11 - 8) + 48))(v8, 1, v11);
    sub_214F302D4(v8, &qword_27CA41DD0);
    v12 = v0;
    v13 = sub_2150A3F10();
    if (v10 == 1)
    {
      v14 = sub_2150A5550();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v41 = v40;
        *v15 = 136315394;
        v39 = v14;
        v16 = OBJC_IVAR___ICCloudSession_identifier;
        swift_beginAccess();
        (*(v3 + 16))(v5, &v12[v16], v2);
        sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0]);
        v17 = sub_2150A6100();
        v19 = v18;
        (*(v3 + 8))(v5, v2);
        v20 = sub_214F7723C(v17, v19, &v41);

        *(v15 + 4) = v20;
        *(v15 + 12) = 2080;
        v21 = &v12[OBJC_IVAR___ICCloudSession_reason];
        swift_beginAccess();
        v23 = *v21;
        v22 = v21[1];

        v24 = sub_214F7723C(v23, v22, &v41);

        *(v15 + 14) = v24;
        _os_log_impl(&dword_214D51000, v13, v39, "Marking session as cancelled  %s %s", v15, 0x16u);
        v25 = v40;
        swift_arrayDestroy();
        MEMORY[0x216064AF0](v25, -1, -1);
        MEMORY[0x216064AF0](v15, -1, -1);
      }

      v1[v9] = 1;
      v13 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CBBF50] code:20 userInfo:0];
      sub_214F34F24(v13);
    }

    else
    {
      v26 = sub_2150A5560();

      if (os_log_type_enabled(v13, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v41 = v28;
        *v27 = 136315394;
        v29 = OBJC_IVAR___ICCloudSession_identifier;
        swift_beginAccess();
        (*(v3 + 16))(v5, &v12[v29], v2);
        sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0]);
        v30 = sub_2150A6100();
        v32 = v31;
        (*(v3 + 8))(v5, v2);
        v33 = sub_214F7723C(v30, v32, &v41);

        *(v27 + 4) = v33;
        *(v27 + 12) = 2080;
        v34 = &v12[OBJC_IVAR___ICCloudSession_reason];
        swift_beginAccess();
        v36 = *v34;
        v35 = v34[1];

        v37 = sub_214F7723C(v36, v35, &v41);

        *(v27 + 14) = v37;
        _os_log_impl(&dword_214D51000, v13, v26, "Session has already ended, but attempted to mark end again. session %s %s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x216064AF0](v28, -1, -1);
        MEMORY[0x216064AF0](v27, -1, -1);
      }
    }
  }
}

uint64_t sub_214F364BC(unint64_t a1)
{
  v3 = sub_2150A3A00();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v46 - v6;
  v8 = sub_2150A3E80();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  sub_2150A3EA0();
  sub_2150A3E60();
  v55 = *(v9 + 16);
  v55(v7, v14, v8);
  v15 = *(v9 + 56);
  v54 = v8;
  v15(v7, 0, 1, v8);
  swift_beginAccess();
  sub_214F306C8(v7, a1);
  swift_endAccess();
  v56 = a1;
  if (a1 > 3)
  {
    v16 = "";
  }

  else
  {
    v16 = off_27819A810[a1];
  }

  v17 = v1;
  v18 = sub_2150A3EA0();
  v19 = sub_2150A5610();
  v20 = sub_2150A57D0();

  if (v20)
  {
    v50 = v12;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v57 = v22;
    v58 = 0;
    *v21 = 136315650;
    v59 = 0xE000000000000000;
    v48 = v16;
    v49 = v18;
    v47 = v19;
    v46 = v22;
    v23 = sub_2150A5B70();
    MEMORY[0x2160617E0](v23);

    v24 = sub_214F7723C(v58, v59, &v57);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    v25 = OBJC_IVAR___ICCloudSession_identifier;
    swift_beginAccess();
    v27 = v52;
    v26 = v53;
    v28 = &v17[v25];
    v29 = v51;
    (*(v52 + 16))(v51, v28, v53);
    sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0]);
    v30 = sub_2150A6100();
    v32 = v31;
    (*(v27 + 8))(v29, v26);
    v33 = sub_214F7723C(v30, v32, &v57);

    *(v21 + 14) = v33;
    *(v21 + 22) = 2080;
    v34 = &v17[OBJC_IVAR___ICCloudSession_reason];
    swift_beginAccess();
    v36 = *v34;
    v35 = v34[1];

    v37 = sub_214F7723C(v36, v35, &v57);

    *(v21 + 24) = v37;
    v38 = sub_2150A3E70();
    v39 = v49;
    _os_signpost_emit_with_name_impl(&dword_214D51000, v49, v47, v38, v48, "Began sync phase %s for %s %s", v21, 0x20u);
    v40 = v46;
    swift_arrayDestroy();
    MEMORY[0x216064AF0](v40, -1, -1);
    MEMORY[0x216064AF0](v21, -1, -1);

    v12 = v50;
  }

  else
  {
  }

  v41 = v54;
  v55(v12, v14, v54);
  sub_2150A3EF0();
  swift_allocObject();
  v42 = sub_2150A3EE0();
  v43 = OBJC_IVAR___ICCloudSession_signpostStateForPhase;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = *&v17[v43];
  *&v17[v43] = 0x8000000000000000;
  sub_214FEBD04(v42, v56, isUniquelyReferenced_nonNull_native);
  *&v17[v43] = v57;
  swift_endAccess();

  return (*(v9 + 8))(v14, v41);
}

void sub_214F36AB4(unint64_t a1)
{
  v2 = v1;
  v4 = sub_2150A3A00();
  v73 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2150A3EC0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2150A3E80();
  v72 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR___ICCloudSession_signpostStateForPhase;
  swift_beginAccess();
  v15 = *&v2[v14];
  if (*(v15 + 16) && (v16 = sub_214FB1920(a1), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
    v70 = v11;
    v71 = v18;
    v67 = v4;
    if (a1 > 3)
    {
      v19 = "";
    }

    else
    {
      v19 = off_27819A810[a1];
    }

    v69 = v19;
    v25 = v2;

    v26 = sub_2150A3EA0();
    sub_2150A3ED0();
    v68 = sub_2150A5600();
    if (sub_2150A57D0())
    {
      v66 = v26;

      v27 = v25;

      sub_2150A3F00();

      if ((*(v8 + 88))(v10, v7) == *MEMORY[0x277D85B00])
      {
        v28 = 0;
        v29 = 0;
        v30 = "[Error] Interval already ended";
      }

      else
      {
        (*(v8 + 8))(v10, v7);
        v30 = "Ended sync phase %s for %s %s";
        v29 = 2;
        v28 = 3;
      }

      v31 = v67;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v76 = v33;
      *v32 = v29;
      *(v32 + 1) = v28;
      *(v32 + 2) = 2080;
      v74 = 0;
      v75 = 0xE000000000000000;
      v64 = v33;
      v65 = v30;
      v48 = v72;
      v47 = v73;
      v49 = sub_2150A5B70();
      MEMORY[0x2160617E0](v49);

      v50 = sub_214F7723C(v74, v75, &v76);

      *(v32 + 4) = v50;
      *(v32 + 12) = 2080;
      v51 = OBJC_IVAR___ICCloudSession_identifier;
      swift_beginAccess();
      (*(v47 + 16))(v6, &v27[v51], v31);
      sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0]);
      v52 = sub_2150A6100();
      v54 = v53;
      (*(v47 + 8))(v6, v31);
      v55 = sub_214F7723C(v52, v54, &v76);

      *(v32 + 14) = v55;
      *(v32 + 22) = 2080;
      v56 = &v27[OBJC_IVAR___ICCloudSession_reason];
      swift_beginAccess();
      v58 = *v56;
      v57 = v56[1];

      v59 = sub_214F7723C(v58, v57, &v76);

      *(v32 + 24) = v59;
      v60 = sub_2150A3E70();
      v61 = v66;
      _os_signpost_emit_with_name_impl(&dword_214D51000, v66, v68, v60, v69, v65, v32, 0x20u);
      v62 = v64;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v62, -1, -1);
      MEMORY[0x216064AF0](v32, -1, -1);

      (*(v48 + 8))(v13, v70);
    }

    else
    {

      (*(v72 + 8))(v13, v70);
    }
  }

  else
  {
    v20 = v2;
    v21 = sub_2150A3F10();
    v22 = sub_2150A5560();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v76 = v24;
      *v23 = 136315650;
      v74 = 0;
      v75 = 0xE000000000000000;
      v72 = v24;
      v34 = sub_2150A5B70();
      MEMORY[0x2160617E0](v34);

      v35 = sub_214F7723C(v74, v75, &v76);

      *(v23 + 4) = v35;
      *(v23 + 12) = 2080;
      v36 = OBJC_IVAR___ICCloudSession_identifier;
      swift_beginAccess();
      v37 = v73;
      (*(v73 + 16))(v6, &v20[v36], v4);
      sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0]);
      v38 = sub_2150A6100();
      v40 = v39;
      (*(v37 + 8))(v6, v4);
      v41 = sub_214F7723C(v38, v40, &v76);

      *(v23 + 14) = v41;
      *(v23 + 22) = 2080;
      v42 = &v20[OBJC_IVAR___ICCloudSession_reason];
      swift_beginAccess();
      v44 = *v42;
      v43 = v42[1];

      v45 = sub_214F7723C(v44, v43, &v76);

      *(v23 + 24) = v45;
      _os_log_impl(&dword_214D51000, v21, v22, "Attempted to end phase that never began. phase = %s, session = %s %s", v23, 0x20u);
      v46 = v72;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v46, -1, -1);
      MEMORY[0x216064AF0](v23, -1, -1);
    }
  }
}

uint64_t sub_214F37320(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR___ICCloudSession_queue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_214F3FC44;
  *(v5 + 24) = v4;
  v10[4] = sub_214F43F50;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_214F34100;
  v10[3] = &block_descriptor_57;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_214F37478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11[-v5];
  v7 = OBJC_IVAR___ICCloudSession_startDate;
  swift_beginAccess();
  sub_214F43C14(a1 + v7, v6, &qword_27CA41DD0);
  v8 = sub_2150A3960();
  LODWORD(v7) = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_214F302D4(v6, &qword_27CA41DD0);
  if (v7 != 1)
  {
    v9 = OBJC_IVAR___ICCloudSession__metrics;
    swift_beginAccess();
    if (!*(*(a1 + v9) + 16) || (sub_214FB1920(a2), (v10 & 1) == 0))
    {
      sub_214F37738(a2);
    }
  }
}

void sub_214F37738(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v64 - v5;
  v7 = sub_2150A3A00();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___ICCloudSession__metrics;
  swift_beginAccess();
  if (!*(*&v1[v11] + 16) || (sub_214FB1920(a1), (v12 & 1) == 0))
  {
    sub_214F364BC(a1);
    v19 = v1;
    v20 = sub_2150A3F10();
    v21 = sub_2150A5540();

    v22 = os_log_type_enabled(v20, v21);
    v68 = v6;
    if (!v22)
    {

      v25 = v19;
LABEL_18:
      type metadata accessor for CloudSession.PhaseMetrics(0);
      v41 = swift_allocObject();
      v42 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_startDate;
      v43 = sub_2150A3960();
      v44 = *(*(v43 - 8) + 56);
      v44(v41 + v42, 1, 1, v43);
      v44(v41 + OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_endDate, 1, 1, v43);
      v45 = MEMORY[0x277D84F90];
      *(v41 + OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_errors) = MEMORY[0x277D84F90];
      *(v41 + OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_ckMetrics) = v45;
      *(v41 + 16) = a1;
      v46 = v68;
      sub_2150A3950();
      v44(v46, 0, 1, v43);
      v47 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_startDate;
      swift_beginAccess();
      sub_214F43C7C(v46, v41 + v47, &qword_27CA41DD0);
      swift_endAccess();
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = *&v2[v11];
      *&v2[v11] = 0x8000000000000000;
      sub_214FEBE80(v41, a1, isUniquelyReferenced_nonNull_native);
      *&v2[v11] = v70;
      swift_endAccess();
      v49 = swift_allocObject();
      *(v49 + 16) = a1;
      *(v49 + 24) = v25;
      v50 = v25;
      sub_214F33A7C(sub_214F43B74, v49);

      return;
    }

    v66 = v21;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v70 = v24;
    v71 = 0;
    *v23 = 136315650;
    v72 = 0xE000000000000000;
    v67 = v20;
    v65 = v24;
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v25 = v19;
        goto LABEL_17;
      }

      if (a1 == 3)
      {
        v25 = v19;
        goto LABEL_17;
      }
    }

    else
    {
      if (!a1)
      {
        v25 = v19;
        goto LABEL_17;
      }

      if (a1 == 1)
      {
        v25 = v19;
LABEL_17:
        v26 = sub_2150A5B70();
        MEMORY[0x2160617E0](v26);

        v27 = sub_214F7723C(v71, v72, &v70);

        *(v23 + 4) = v27;
        *(v23 + 12) = 2080;
        v28 = OBJC_IVAR___ICCloudSession_identifier;
        swift_beginAccess();
        v29 = &v25[v28];
        v30 = v10;
        (*(v8 + 16))(v10, v29, v7);
        sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0]);
        v31 = sub_2150A6100();
        v33 = v32;
        (*(v8 + 8))(v30, v7);
        v34 = sub_214F7723C(v31, v33, &v70);

        *(v23 + 14) = v34;
        *(v23 + 22) = 2080;
        v35 = &v25[OBJC_IVAR___ICCloudSession_reason];
        swift_beginAccess();
        v37 = *v35;
        v36 = v35[1];

        v38 = sub_214F7723C(v37, v36, &v70);

        *(v23 + 24) = v38;
        v39 = v67;
        _os_log_impl(&dword_214D51000, v67, v66, "Sync phase %s began for session %s %s", v23, 0x20u);
        v40 = v65;
        swift_arrayDestroy();
        MEMORY[0x216064AF0](v40, -1, -1);
        MEMORY[0x216064AF0](v23, -1, -1);

        goto LABEL_18;
      }
    }

    v25 = v19;
    goto LABEL_17;
  }

  v13 = v7;
  v14 = v1;
  v15 = sub_2150A3F10();
  v16 = sub_2150A5560();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 136315650;
    v71 = 0;
    v72 = 0xE000000000000000;
    v68 = v18;
    v69[0] = v18;
    v51 = sub_2150A5B70();
    MEMORY[0x2160617E0](v51);

    v52 = sub_214F7723C(v71, v72, v69);

    *(v17 + 4) = v52;
    *(v17 + 12) = 2080;
    v53 = OBJC_IVAR___ICCloudSession_identifier;
    swift_beginAccess();
    v54 = v10;
    (*(v8 + 16))(v10, &v14[v53], v13);
    sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0]);
    v55 = sub_2150A6100();
    v57 = v56;
    (*(v8 + 8))(v54, v13);
    v58 = sub_214F7723C(v55, v57, v69);

    *(v17 + 14) = v58;
    *(v17 + 22) = 2080;
    v59 = &v14[OBJC_IVAR___ICCloudSession_reason];
    swift_beginAccess();
    v61 = *v59;
    v60 = v59[1];

    v62 = sub_214F7723C(v61, v60, v69);

    *(v17 + 24) = v62;
    _os_log_impl(&dword_214D51000, v15, v16, "Tried to start phase %s multiple times for session %s %s, ignoring", v17, 0x20u);
    v63 = v68;
    swift_arrayDestroy();
    MEMORY[0x216064AF0](v63, -1, -1);
    MEMORY[0x216064AF0](v17, -1, -1);
  }
}

uint64_t sub_214F37FAC(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;
  sub_214F33518(sub_214F3FC4C, v3);
}

void sub_214F380C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v95 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v90 - v11;
  v13 = OBJC_IVAR___ICCloudSession__metrics;
  swift_beginAccess();
  v14 = *&v1[v13];
  if (!*(v14 + 16) || (v15 = sub_214FB1920(a1), (v16 & 1) == 0))
  {
    v28 = v2;
    v29 = sub_2150A3F10();
    v30 = sub_2150A5560();

    if (!os_log_type_enabled(v29, v30))
    {
LABEL_20:

      return;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v96[0] = v32;
    *v31 = 136315650;
    v100 = 0;
    v101 = 0xE000000000000000;
    v94 = v32;
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v33 = v5;
        goto LABEL_19;
      }

      if (a1 == 3)
      {
        v33 = v5;
        goto LABEL_19;
      }
    }

    else
    {
      if (!a1)
      {
        v33 = v5;
        goto LABEL_19;
      }

      if (a1 == 1)
      {
        v33 = v5;
LABEL_19:
        v40 = sub_2150A5B70();
        MEMORY[0x2160617E0](v40);

        v41 = sub_214F7723C(v100, v101, v96);

        *(v31 + 4) = v41;
        *(v31 + 12) = 2080;
        v42 = OBJC_IVAR___ICCloudSession_identifier;
        swift_beginAccess();
        v43 = &v28[v42];
        v44 = v95;
        (*(v33 + 16))(v95, v43, v4);
        sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0]);
        v45 = sub_2150A6100();
        v47 = v46;
        (*(v33 + 8))(v44, v4);
        v48 = sub_214F7723C(v45, v47, v96);

        *(v31 + 14) = v48;
        *(v31 + 22) = 2080;
        v49 = &v28[OBJC_IVAR___ICCloudSession_reason];
        swift_beginAccess();
        v51 = *v49;
        v50 = v49[1];

        v52 = sub_214F7723C(v51, v50, v96);

        *(v31 + 24) = v52;
        _os_log_impl(&dword_214D51000, v29, v30, "Phase %s marked as ended, but never marked as began for session %s %s", v31, 0x20u);
        v53 = v94;
        swift_arrayDestroy();
        MEMORY[0x216064AF0](v53, -1, -1);
        MEMORY[0x216064AF0](v31, -1, -1);
        goto LABEL_20;
      }
    }

    v33 = v5;
    goto LABEL_19;
  }

  v93 = v4;
  v94 = a1;
  v92 = v5;
  v17 = *(*(v14 + 56) + 8 * v15);
  v18 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_endDate;
  swift_beginAccess();
  sub_214F43C14(v17 + v18, v12, &qword_27CA41DD0);
  v19 = sub_2150A3960();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v12, 1, v19);

  sub_214F302D4(v12, &qword_27CA41DD0);
  if (v21 == 1)
  {
    sub_214F36AB4(v94);
    sub_2150A3950();
    (*(v20 + 56))(v10, 0, 1, v19);
    swift_beginAccess();
    sub_214F43C7C(v10, v17 + v18, &qword_27CA41DD0);
    swift_endAccess();

    v22 = v2;
    v23 = sub_2150A3F10();
    v24 = sub_2150A5540();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v97 = v26;
      v98 = 0;
      *v25 = 136315906;
      v99 = 0xE000000000000000;
      v90 = v26;
      v91 = v17;
      v27 = v93;
      v54 = sub_2150A5B70();
      MEMORY[0x2160617E0](v54);

      v55 = sub_214F7723C(v98, v99, &v97);

      *(v25 + 4) = v55;
      *(v25 + 12) = 2080;
      v56 = OBJC_IVAR___ICCloudSession_identifier;
      swift_beginAccess();
      v57 = v92;
      v58 = &v22[v56];
      v59 = v95;
      (*(v92 + 16))(v95, v58, v27);
      sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0]);
      v60 = sub_2150A6100();
      v62 = v61;
      (*(v57 + 8))(v59, v27);
      v63 = sub_214F7723C(v60, v62, &v97);

      *(v25 + 14) = v63;
      *(v25 + 22) = 2080;
      v64 = &v22[OBJC_IVAR___ICCloudSession_reason];
      swift_beginAccess();
      v66 = *v64;
      v65 = v64[1];

      v67 = sub_214F7723C(v66, v65, &v97);

      *(v25 + 24) = v67;
      *(v25 + 32) = 2080;

      v68 = sub_214F3ECBC(0, 0, 0);
      v70 = v69;

      v71 = sub_214F7723C(v68, v70, &v97);

      *(v25 + 34) = v71;
      _os_log_impl(&dword_214D51000, v23, v24, "Sync phase %s ended for session %s %s: %s", v25, 0x2Au);
      v72 = v90;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v72, -1, -1);
      MEMORY[0x216064AF0](v25, -1, -1);
    }

    v73 = swift_allocObject();
    *(v73 + 16) = v94;
    *(v73 + 24) = v22;
    v74 = v22;
    sub_214F33A7C(sub_214F43B64, v73);
  }

  else
  {
    v91 = v17;
    v34 = v2;
    v35 = sub_2150A3F10();
    v36 = sub_2150A5560();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v97 = v38;
      v98 = 0;
      *v37 = 136315650;
      v99 = 0xE000000000000000;
      v90 = v38;
      v39 = v93;
      v75 = sub_2150A5B70();
      MEMORY[0x2160617E0](v75);

      v76 = sub_214F7723C(v98, v99, &v97);

      *(v37 + 4) = v76;
      *(v37 + 12) = 2080;
      v77 = OBJC_IVAR___ICCloudSession_identifier;
      swift_beginAccess();
      v78 = v92;
      v79 = &v34[v77];
      v80 = v95;
      (*(v92 + 16))(v95, v79, v39);
      sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0]);
      v81 = sub_2150A6100();
      v83 = v82;
      (*(v78 + 8))(v80, v39);
      v84 = sub_214F7723C(v81, v83, &v97);

      *(v37 + 14) = v84;
      *(v37 + 22) = 2080;
      v85 = &v34[OBJC_IVAR___ICCloudSession_reason];
      swift_beginAccess();
      v87 = *v85;
      v86 = v85[1];

      v88 = sub_214F7723C(v87, v86, &v97);

      *(v37 + 24) = v88;
      _os_log_impl(&dword_214D51000, v35, v36, "Phase %s has already ended for session %s %s", v37, 0x20u);
      v89 = v90;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v89, -1, -1);
      MEMORY[0x216064AF0](v37, -1, -1);
    }
  }
}

uint64_t sub_214F38C3C(uint64_t a1, void *a2, void *a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = v3;
  v9 = a2;
  v10 = a3;
  sub_214F33518(sub_214F3FC74, v7);
}

void sub_214F38DB0(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_2150A3A00();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR___ICCloudSession__metrics;
  swift_beginAccess();
  v13 = *&v3[v12];
  if (*(v13 + 16) && (v14 = sub_214FB1920(a1), (v15 & 1) != 0))
  {
    v61 = v9;
    v16 = *(*(v13 + 56) + 8 * v14);
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = v4;
    v17[4] = a2;
    v17[5] = a3;

    v18 = v4;
    v63 = a2;
    v19 = a3;
    sub_214F33A7C(sub_214F43B58, v17);

    if (a3)
    {
      v60 = v8;
      v20 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_errors;
      swift_beginAccess();
      v21 = *(v16 + v20);
      v22 = a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v16;
      *(v16 + v20) = v21;
      v25 = a2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_21505F5F0(0, v21[2] + 1, 1, v21);
        *(v24 + v20) = v21;
      }

      v27 = v21[2];
      v26 = v21[3];
      if (v27 >= v26 >> 1)
      {
        v21 = sub_21505F5F0((v26 > 1), v27 + 1, 1, v21);
      }

      v21[2] = v27 + 1;
      v21[v27 + 4] = a3;
      *(v24 + v20) = v21;
      swift_endAccess();
      a2 = v25;
      v16 = v24;
      v8 = v60;
    }

    if (a2)
    {
      v28 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_ckMetrics;
      swift_beginAccess();
      v29 = v63;
      MEMORY[0x216061A60]();
      if (*((*(v16 + v28) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v16 + v28) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2150A4F10();
      }

      sub_2150A4F70();
      swift_endAccess();
    }

    v62 = a2;
    v30 = v18;
    v31 = v63;
    v32 = sub_2150A3F10();
    v33 = sub_2150A5550();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v67 = v36;
      *v34 = 136315906;
      v65 = 0;
      v66 = 0xE000000000000000;
      LODWORD(v63) = v33;
      v59 = v35;
      v60 = v36;
      v43 = sub_2150A5B70();
      MEMORY[0x2160617E0](v43);

      v44 = sub_214F7723C(v65, v66, &v67);

      *(v34 + 4) = v44;
      *(v34 + 12) = 2080;
      v45 = OBJC_IVAR___ICCloudSession_identifier;
      swift_beginAccess();
      v46 = v61;
      (*(v61 + 16))(v11, &v30[v45], v8);
      sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0]);
      v47 = sub_2150A6100();
      v49 = v48;
      (*(v46 + 8))(v11, v8);
      v50 = sub_214F7723C(v47, v49, &v67);

      *(v34 + 14) = v50;
      *(v34 + 22) = 2080;
      v51 = &v30[OBJC_IVAR___ICCloudSession_reason];
      swift_beginAccess();
      v53 = *v51;
      v52 = v51[1];

      v54 = sub_214F7723C(v53, v52, &v67);

      *(v34 + 24) = v54;
      *(v34 + 32) = 2112;
      *(v34 + 34) = v31;
      v55 = v59;
      *v59 = v62;
      v56 = v31;
      _os_log_impl(&dword_214D51000, v32, v63, "Operation ended for phase %s for session %s %s: %@", v34, 0x2Au);
      sub_214F302D4(v55, &qword_27CA41DF0);
      MEMORY[0x216064AF0](v55, -1, -1);
      v57 = v60;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v57, -1, -1);
      MEMORY[0x216064AF0](v34, -1, -1);
    }
  }

  else
  {
    v37 = sub_2150A3F10();
    v38 = sub_2150A5560();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v64[0] = v40;
      *v39 = 136315138;
      v65 = 0;
      v66 = 0xE000000000000000;
      v41 = sub_2150A5B70();
      MEMORY[0x2160617E0](v41);

      v42 = sub_214F7723C(v65, v66, v64);

      *(v39 + 4) = v42;
      _os_log_impl(&dword_214D51000, v37, v38, "Operation ended, but phase never marked as began: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x216064AF0](v40, -1, -1);
      MEMORY[0x216064AF0](v39, -1, -1);
    }
  }
}

void sub_214F394FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v8 = a1;
    v9 = sub_2150A35C0();
    a1 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  [a1 operationEndedFor:a2 in:a3 metrics:a4 error:?];
}

uint64_t sub_214F39584(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR___ICCloudSession_queue];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_214F44014;
  *(v7 + 24) = v6;
  v12[4] = sub_214F43F50;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_214F34100;
  v12[3] = &block_descriptor_396;
  v8 = _Block_copy(v12);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_214F396F4(void *a1, uint64_t a2, unint64_t a3)
{
  v87 = a3;
  v80 = a2;
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v77 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v76 = &v72 - v8;
  v82 = sub_2150A3A00();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v79 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v84 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v85 = &v72 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v83 = &v72 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v88 = &v72 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v72 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v72 - v22;
  v24 = OBJC_IVAR___ICCloudSession_startDate;
  swift_beginAccess();
  sub_214F43C14(a1 + v24, v23, &qword_27CA41DD0);
  v86 = v5;
  v25 = *(v5 + 48);
  v26 = v25(v23, 1, v4);
  sub_214F302D4(v23, &qword_27CA41DD0);
  if (v26 == 1 || (v27 = OBJC_IVAR___ICCloudSession_endDate, swift_beginAccess(), sub_214F43C14(a1 + v27, v21, &qword_27CA41DD0), LODWORD(v27) = v25(v21, 1, v4), sub_214F302D4(v21, &qword_27CA41DD0), v27 != 1))
  {
    v78 = v25;
    v75 = v4;
    v28 = a1;
    v29 = v87;

    v30 = sub_2150A3F10();
    v31 = sub_2150A5560();

    if (os_log_type_enabled(v30, v31))
    {
      v73 = v31;
      v74 = v30;
      v32 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v89 = v72;
      *v32 = 136316162;
      *(v32 + 4) = sub_214F7723C(v80, v29, &v89);
      *(v32 + 12) = 2080;
      v33 = OBJC_IVAR___ICCloudSession_identifier;
      swift_beginAccess();
      v34 = v81;
      v35 = v79;
      v36 = v82;
      (*(v81 + 16))(v79, &v28[v33], v82);
      sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0]);
      v37 = sub_2150A6100();
      v39 = v38;
      (*(v34 + 8))(v35, v36);
      v40 = sub_214F7723C(v37, v39, &v89);

      *(v32 + 14) = v40;
      *(v32 + 22) = 2080;
      v41 = &v28[OBJC_IVAR___ICCloudSession_reason];
      swift_beginAccess();
      v43 = *v41;
      v42 = v41[1];

      v44 = sub_214F7723C(v43, v42, &v89);

      *(v32 + 24) = v44;
      *(v32 + 32) = 2080;
      v45 = a1 + v24;
      v46 = v88;
      sub_214F43C14(v45, v88, &qword_27CA41DD0);
      v47 = v46;
      v48 = v83;
      sub_214F43C14(v47, v83, &qword_27CA41DD0);
      v49 = v75;
      v50 = v78;
      if (v78(v48, 1, v75) == 1)
      {
        sub_214F302D4(v48, &qword_27CA41DD0);
        v51 = 0xE300000000000000;
        v52 = 7104878;
      }

      else
      {
        v53 = v76;
        (*(v86 + 32))(v76, v48, v49);
        if (qword_280C24840 != -1)
        {
          swift_once();
        }

        v54 = qword_280C24848;
        v55 = sub_2150A38F0();
        v56 = [v54 stringFromDate_];

        v52 = sub_2150A4AD0();
        v51 = v57;

        (*(v86 + 8))(v53, v49);
        v50 = v78;
      }

      sub_214F302D4(v88, &qword_27CA41DD0);
      v58 = sub_214F7723C(v52, v51, &v89);

      *(v32 + 34) = v58;
      *(v32 + 42) = 2080;
      v59 = OBJC_IVAR___ICCloudSession_endDate;
      swift_beginAccess();
      v60 = v85;
      sub_214F43C14(&v28[v59], v85, &qword_27CA41DD0);
      v61 = v84;
      sub_214F43C14(v60, v84, &qword_27CA41DD0);
      if (v50(v61, 1, v49) == 1)
      {
        sub_214F302D4(v61, &qword_27CA41DD0);
        v62 = 0xE300000000000000;
        v63 = 7104878;
      }

      else
      {
        v64 = v86;
        v65 = v77;
        (*(v86 + 32))(v77, v61, v49);
        if (qword_280C24840 != -1)
        {
          swift_once();
        }

        v66 = qword_280C24848;
        v67 = sub_2150A38F0();
        v68 = [v66 stringFromDate_];

        v63 = sub_2150A4AD0();
        v62 = v69;

        (*(v64 + 8))(v65, v49);
      }

      sub_214F302D4(v60, &qword_27CA41DD0);
      v70 = sub_214F7723C(v63, v62, &v89);

      *(v32 + 44) = v70;
      v30 = v74;
      _os_log_impl(&dword_214D51000, v74, v73, "Attempted call to %s while session is inactive. session = %s %s. start = %s, end = %s", v32, 0x34u);
      v71 = v72;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v71, -1, -1);
      MEMORY[0x216064AF0](v32, -1, -1);
    }
  }
}

uint64_t sub_214F3A018(void *a1)
{
  v3 = *&v1[OBJC_IVAR___ICCloudSession_queue];
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = 0xD000000000000012;
  v4[4] = 0x80000002150E1DC0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_214F3FCA0;
  *(v5 + 24) = v4;
  v12[4] = sub_214F43F50;
  v12[5] = v5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_214F34100;
  v12[3] = &block_descriptor_73;
  v6 = _Block_copy(v12);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = a1;
    v10 = v7;
    v11 = a1;
    sub_214F33518(sub_214F3FCAC, v9);
  }

  return result;
}

uint64_t sub_214F3A1E4(uint64_t a1, void *a2)
{
  v3 = (a1 + OBJC_IVAR___ICCloudSession_zoneChanges);
  v5 = *(a1 + OBJC_IVAR___ICCloudSession_zoneChanges);
  v4 = *(a1 + OBJC_IVAR___ICCloudSession_zoneChanges + 8);
  v6 = *(a1 + OBJC_IVAR___ICCloudSession_zoneChanges + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C26E0;
  *(inited + 32) = a2;

  v8 = a2;
  sub_2150685DC(inited);
  *v3 = v5;
  v3[1] = v4;
  v3[2] = v6;
}

uint64_t sub_214F3A380(void *a1)
{
  v3 = *&v1[OBJC_IVAR___ICCloudSession_queue];
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = 0xD000000000000012;
  v4[4] = 0x80000002150E1DE0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_214F44014;
  *(v5 + 24) = v4;
  v12[4] = sub_214F43F50;
  v12[5] = v5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_214F34100;
  v12[3] = &block_descriptor_87;
  v6 = _Block_copy(v12);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = a1;
    v10 = v7;
    v11 = a1;
    sub_214F33518(sub_214F3FCB4, v9);
  }

  return result;
}

uint64_t sub_214F3A54C(uint64_t a1, void *a2)
{
  v3 = (a1 + OBJC_IVAR___ICCloudSession_zoneChanges);
  v4 = *(a1 + OBJC_IVAR___ICCloudSession_zoneChanges);
  v5 = *(a1 + OBJC_IVAR___ICCloudSession_zoneChanges + 8);
  v6 = *(a1 + OBJC_IVAR___ICCloudSession_zoneChanges + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C26E0;
  *(inited + 32) = a2;

  v8 = a2;
  sub_2150685DC(inited);
  *v3 = v4;
  v3[1] = v5;
  v3[2] = v6;
}

uint64_t sub_214F3A6E8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR___ICCloudSession_queue];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = 0xD00000000000001ELL;
  v8[4] = 0x80000002150E1E00;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_214F44014;
  *(v9 + 24) = v8;
  v16[4] = sub_214F43F50;
  v16[5] = v9;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_214F34100;
  v16[3] = &block_descriptor_101;
  v10 = _Block_copy(v16);
  v11 = v3;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = a1;
    v13[4] = a2;
    v13[5] = a3;

    v14 = v11;
    v15 = a1;
    sub_214F33518(sub_214F3FCBC, v13);
  }

  return result;
}

uint64_t sub_214F3A9CC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR___ICCloudSession_queue];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = 0xD000000000000020;
  v8[4] = 0x80000002150E1E20;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_214F44014;
  *(v9 + 24) = v8;
  v16[4] = sub_214F43F50;
  v16[5] = v9;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_214F34100;
  v16[3] = &block_descriptor_115;
  v10 = _Block_copy(v16);
  v11 = v3;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = a1;
    v13[4] = a2;
    v13[5] = a3;

    v14 = v11;
    v15 = a1;
    sub_214F33518(sub_214F3FCE4, v13);
  }

  return result;
}

uint64_t sub_214F3ACB0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR___ICCloudSession_queue];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = 0xD000000000000020;
  v8[4] = 0x80000002150E1E50;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_214F44014;
  *(v9 + 24) = v8;
  v16[4] = sub_214F43F50;
  v16[5] = v9;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_214F34100;
  v16[3] = &block_descriptor_129;
  v10 = _Block_copy(v16);
  v11 = v3;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = a1;
    v13[4] = a2;
    v13[5] = a3;

    v14 = v11;
    v15 = a1;
    sub_214F33518(sub_214F3FD0C, v13);
  }

  return result;
}

uint64_t sub_214F3AF94(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR___ICCloudSession_queue];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = 0xD000000000000020;
  v8[4] = 0x80000002150E1E80;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_214F44014;
  *(v9 + 24) = v8;
  v16[4] = sub_214F43F50;
  v16[5] = v9;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_214F34100;
  v16[3] = &block_descriptor_143;
  v10 = _Block_copy(v16);
  v11 = v3;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = a1;
    v13[4] = a2;
    v13[5] = a3;

    v14 = v11;
    v15 = a1;
    sub_214F33518(sub_214F3FD34, v13);
  }

  return result;
}

uint64_t sub_214F3B17C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = (a1 + *a5);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C26E0;
  *(inited + 32) = a2;
  v15 = v9;

  v13 = a2;
  sub_2150685F4(inited);
  *v8 = v15;
  v8[1] = v10;
  v8[2] = v11;

  return sub_214F3BB40(v13, a3, a4);
}

uint64_t sub_214F3B378(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR___ICCloudSession_queue];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = 0xD000000000000024;
  v8[4] = 0x80000002150E1EB0;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_214F44014;
  *(v9 + 24) = v8;
  v16[4] = sub_214F43F50;
  v16[5] = v9;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_214F34100;
  v16[3] = &block_descriptor_157;
  v10 = _Block_copy(v16);
  v11 = v3;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = a1;
    v13[4] = a2;
    v13[5] = a3;

    v14 = v11;
    v15 = a1;
    sub_214F33518(sub_214F3FD5C, v13);
  }

  return result;
}

uint64_t sub_214F3B560(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = (a1 + *a5);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C26E0;
  *(inited + 32) = a2;
  v15 = v10;

  v13 = a2;
  sub_2150685F4(inited);
  *v8 = v9;
  v8[1] = v15;
  v8[2] = v11;

  return sub_214F3BB40(v13, a3, a4);
}

uint64_t sub_214F3B75C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR___ICCloudSession_queue];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = 0xD000000000000020;
  v8[4] = 0x80000002150E1EE0;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_214F44014;
  *(v9 + 24) = v8;
  v16[4] = sub_214F43F50;
  v16[5] = v9;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_214F34100;
  v16[3] = &block_descriptor_171;
  v10 = _Block_copy(v16);
  v11 = v3;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = a1;
    v13[4] = a2;
    v13[5] = a3;

    v14 = v11;
    v15 = a1;
    sub_214F33518(sub_214F3FD84, v13);
  }

  return result;
}

uint64_t sub_214F3B944(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = (a1 + *a5);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C26E0;
  *(inited + 32) = a2;
  v15 = v11;

  v13 = a2;
  sub_2150685F4(inited);
  *v8 = v9;
  v8[1] = v10;
  v8[2] = v15;

  return sub_214F3BB40(v13, a3, a4);
}

uint64_t sub_214F3BB40(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    a2 = *(v3 + OBJC_IVAR___ICCloudSession_unknownRecordType);
    v7 = *(v3 + OBJC_IVAR___ICCloudSession_unknownRecordType + 8);
  }

  v8 = OBJC_IVAR___ICCloudSession_recordTypesToIdentifiers;
  swift_beginAccess();
  v9 = *(v3 + v8);
  v10 = *(v9 + 16);

  if (v10 && (v11 = sub_214F30094(a2, v7), (v12 & 1) != 0))
  {
    v13 = *(*(v9 + 56) + 8 * v11);
  }

  else
  {
    v13 = MEMORY[0x277D84FA0];
  }

  v19 = v13;
  sub_214FBFC2C(v18, a1);

  v14 = v19;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v8);
  *(v4 + v8) = 0x8000000000000000;
  sub_214FEC004(v14, a2, v7, isUniquelyReferenced_nonNull_native);

  *(v4 + v8) = v17;
  return swift_endAccess();
}

void sub_214F3BC9C()
{
  v1 = v0;
  v166 = sub_2150A3A00();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v164 = &v160 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2150A3960();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v169 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v168 = (&v160 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v167 = &v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v172 = (&v160 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v171 = &v160 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v160 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v182 = (&v160 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v160 - v21;
  MEMORY[0x28223BE20](v20);
  v181 = &v160 - v23;
  v24 = OBJC_IVAR___ICCloudSession__metrics;
  swift_beginAccess();
  if (*(*(v0 + v24) + 16) && (sub_214FB1920(0), (v25 & 1) != 0))
  {

    v26 = sub_214F3ECBC(0, 0, 0);
    v179 = v27;
  }

  else
  {
    v26 = 0;
    v179 = 0;
  }

  v28 = *(*(v0 + v24) + 16);
  v175 = v17;
  v174 = v22;
  if (v28 && (sub_214FB1920(1), (v29 & 1) != 0))
  {
    v30 = *(v0 + OBJC_IVAR___ICCloudSession_zoneChanges);
    v31 = *(v0 + OBJC_IVAR___ICCloudSession_zoneChanges + 8);
    v32 = *(v0 + OBJC_IVAR___ICCloudSession_zoneChanges + 16);

    v178 = sub_214F3ECBC(v30, v31, v32);
    v177 = v33;
  }

  else
  {
    v178 = 0;
    v177 = 0;
  }

  v34 = *(*(v0 + v24) + 16);
  v176 = v4;
  if (v34 && (sub_214FB1920(2), (v35 & 1) != 0))
  {
    v37 = *(v0 + OBJC_IVAR___ICCloudSession_fetchedRecordChanges);
    v36 = *(v0 + OBJC_IVAR___ICCloudSession_fetchedRecordChanges + 8);
    v38 = *(v0 + OBJC_IVAR___ICCloudSession_fetchedRecordChanges + 16);

    v39 = sub_214F3ECBC(v37, v36, v38);
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v42 = *(*(v0 + v24) + 16);
  v180 = v3;
  if (v42 && (sub_214FB1920(3), (v43 & 1) != 0))
  {
    v44 = *(v0 + OBJC_IVAR___ICCloudSession_pushedRecordChanges);
    v45 = *(v0 + OBJC_IVAR___ICCloudSession_pushedRecordChanges + 8);
    v173 = v0;
    v46 = v24;
    v47 = v26;
    v48 = *(v0 + OBJC_IVAR___ICCloudSession_pushedRecordChanges + 16);

    v49 = sub_214F3ECBC(v44, v45, v48);
    v51 = v50;
    v26 = v47;
    v24 = v46;
    v1 = v173;

    v3 = v180;
  }

  else
  {
    v49 = 0;
    v51 = 0;
  }

  v52 = 0;
  v53 = v185;
  v186 = v26;
  v187 = v179;
  v188 = v178;
  v189 = v177;
  v190 = v39;
  v191 = v41;
  v192 = v49;
  v193 = v51;
  v54 = 4;
  v55 = MEMORY[0x277D84F90];
LABEL_18:
  if (v52 <= 4)
  {
    v56 = 4;
  }

  else
  {
    v56 = v52;
  }

  v57 = v56 + 1;
  v58 = 16 * v52 + 40;
  while (v52 != 4)
  {
    if (v57 == ++v52)
    {
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      swift_once();
      goto LABEL_33;
    }

    v59 = v58 + 16;
    v49 = *&v185[v58];
    v58 += 16;
    if (v49)
    {
      v60 = *(v185 + v59 + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_21505F4D0(0, *(v55 + 2) + 1, 1, v55);
      }

      v62 = *(v55 + 2);
      v61 = *(v55 + 3);
      v39 = v62 + 1;
      if (v62 >= v61 >> 1)
      {
        v55 = sub_21505F4D0((v61 > 1), v62 + 1, 1, v55);
      }

      *(v55 + 2) = v39;
      v63 = &v55[16 * v62];
      *(v63 + 4) = v60;
      *(v63 + 5) = v49;
      v3 = v180;
      goto LABEL_18;
    }
  }

  v173 = 7104878;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44BB0);
  swift_arrayDestroy();
  v184 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
  sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0);
  v163 = sub_2150A4A20();
  v178 = v64;

  v65 = OBJC_IVAR___ICCloudSession_startDate;
  swift_beginAccess();
  v170 = v65;
  v66 = &v1[v65];
  v67 = v181;
  sub_214F43C14(v66, v181, &qword_27CA41DD0);
  v68 = v174;
  sub_214F43C14(v67, v174, &qword_27CA41DD0);
  v69 = v176;
  v53 = (v176 + 48);
  v179 = *(v176 + 48);
  v54 = &unk_280C24000;
  if (v179(v68, 1, v3) == 1)
  {
    sub_214F302D4(v68, &qword_27CA41DD0);
    v177 = 0xE300000000000000;
    v174 = 7104878;
    goto LABEL_34;
  }

  v49 = v168;
  (*(v69 + 32))(v168, v68, v3);
  v39 = v69;
  if (qword_280C24840 != -1)
  {
    goto LABEL_79;
  }

LABEL_33:
  v70 = *(v54 + 2120);
  v71 = v54;
  v72 = v49;
  v73 = sub_2150A38F0();
  v74 = [v70 stringFromDate_];

  v174 = sub_2150A4AD0();
  v177 = v75;

  v76 = v72;
  v54 = v71;
  (*(v39 + 8))(v76, v3);
  v69 = v39;
LABEL_34:
  v49 = &qword_27CA41DD0;
  sub_214F302D4(v181, &qword_27CA41DD0);
  v77 = OBJC_IVAR___ICCloudSession_endDate;
  swift_beginAccess();
  v176 = v77;
  v78 = &v1[v77];
  v79 = v182;
  sub_214F43C14(v78, v182, &qword_27CA41DD0);
  v80 = v79;
  v39 = v175;
  sub_214F43C14(v80, v175, &qword_27CA41DD0);
  v81 = v179(v39, 1, v3);
  v162 = v53;
  if (v81 == 1)
  {
    sub_214F302D4(v39, &qword_27CA41DD0);
    v181 = 0xE300000000000000;
  }

  else
  {
    v82 = v169;
    (*(v69 + 32))(v169, v39, v3);
    v83 = v69;
    if (qword_280C24840 != -1)
    {
      swift_once();
    }

    v84 = *(v54 + 2120);
    v85 = v82;
    v49 = sub_2150A38F0();
    v86 = [v84 stringFromDate_];

    v173 = sub_2150A4AD0();
    v181 = v87;

    v88 = *(v83 + 8);
    v39 = v83 + 8;
    v88(v85, v3);
  }

  sub_214F302D4(v182, &qword_27CA41DD0);
  v89 = *&v1[v24];
  v53 = (v89 + 64);
  v90 = 1 << *(v89 + 32);
  v91 = -1;
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  v92 = v91 & *(v89 + 64);
  v54 = (v90 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v3 = 0;
  v93 = 0;
  do
  {
    if (!v92)
    {
      while (1)
      {
        v94 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (v94 >= v54)
        {
          goto LABEL_51;
        }

        v92 = *&v53[8 * v94];
        ++v3;
        if (v92)
        {
          v3 = v94;
          goto LABEL_48;
        }
      }

      __break(1u);
      goto LABEL_77;
    }

    v94 = v3;
LABEL_48:
    v95 = __clz(__rbit64(v92));
    v92 &= v92 - 1;
    v49 = *(*(v89 + 56) + ((v94 << 9) | (8 * v95)));

    v39 = sub_214F3E884();

    v96 = __OFADD__(v93, v39);
    v93 += v39;
  }

  while (!v96);
  __break(1u);
LABEL_51:

  v39 = *&v1[v24];
  v53 = (v39 + 64);
  v97 = 1 << *(v39 + 32);
  v98 = -1;
  if (v97 < 64)
  {
    v98 = ~(-1 << v97);
  }

  v24 = v98 & *(v39 + 64);
  v99 = (v97 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v3 = 0;
  v100 = 0;
  do
  {
    if (!v24)
    {
      while (1)
      {
        v101 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_78;
        }

        if (v101 >= v99)
        {
          goto LABEL_63;
        }

        v24 = *&v53[8 * v101];
        ++v3;
        if (v24)
        {
          v3 = v101;
          goto LABEL_60;
        }
      }
    }

    v101 = v3;
LABEL_60:
    v102 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v49 = *(*(v39 + 56) + ((v101 << 9) | (8 * v102)));

    v54 = sub_214F3E890();

    v96 = __OFADD__(v100, v54);
    v100 += v54;
  }

  while (!v96);
  __break(1u);
LABEL_63:

  v103 = objc_opt_self();
  v104 = [v103 stringFromByteCount:v93 countStyle:3];
  v175 = sub_2150A4AD0();
  v106 = v105;

  v107 = [v103 stringFromByteCount:v100 countStyle:3];
  v169 = sub_2150A4AD0();
  v109 = v108;

  v110 = v171;
  sub_214F43C14(&v1[v170], v171, &qword_27CA41DD0);
  v111 = v172;
  sub_214F43C14(&v1[v176], v172, &qword_27CA41DD0);
  v170 = sub_214F42438(v110, v111);
  v113 = v112;
  sub_214F302D4(v111, &qword_27CA41DD0);
  sub_214F302D4(v110, &qword_27CA41DD0);
  v114 = v1;

  v115 = sub_2150A3F10();
  v116 = sub_2150A5580();

  if (!os_log_type_enabled(v115, v116))
  {

    return;
  }

  v161 = v106;
  LODWORD(v171) = v116;
  v172 = v115;
  v117 = swift_slowAlloc();
  v182 = swift_slowAlloc();
  v168 = swift_slowAlloc();
  v183 = v168;
  *v117 = 136449026;
  v118 = OBJC_IVAR___ICCloudSession_identifier;
  swift_beginAccess();
  v119 = v165;
  v120 = &v114[v118];
  v121 = v164;
  v122 = v166;
  (*(v165 + 16))(v164, v120, v166);
  sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0]);
  v123 = sub_2150A6100();
  v125 = v124;
  (*(v119 + 8))(v121, v122);
  v126 = sub_214F7723C(v123, v125, &v183);

  *(v117 + 4) = v126;
  *(v117 + 12) = 2082;
  v127 = &v114[OBJC_IVAR___ICCloudSession_reason];
  swift_beginAccess();
  v129 = *v127;
  v128 = v127[1];

  v130 = sub_214F7723C(v129, v128, &v183);

  *(v117 + 14) = v130;
  *(v117 + 22) = 2082;
  v131 = sub_214F7723C(v170, v113, &v183);

  *(v117 + 24) = v131;
  *(v117 + 32) = 2114;
  v132 = OBJC_IVAR___ICCloudSession__error;
  v133 = *&v114[OBJC_IVAR___ICCloudSession__error];
  if (v133)
  {
    v134 = v133;
    v135 = _swift_stdlib_bridgeErrorToNSError();
    v136 = v135;
  }

  else
  {
    v135 = 0;
    v136 = 0;
  }

  *(v117 + 34) = v135;
  *v182 = v136;
  *(v117 + 42) = 1024;
  v137 = OBJC_IVAR___ICCloudSession__wasCancelled;
  v138 = v114[OBJC_IVAR___ICCloudSession__wasCancelled];

  *(v117 + 44) = v138;
  *(v117 + 48) = 2082;
  v139 = sub_214F7723C(v175, v161, &v183);

  *(v117 + 50) = v139;
  *(v117 + 58) = 2082;
  v140 = sub_214F7723C(v169, v109, &v183);

  *(v117 + 60) = v140;
  *(v117 + 68) = 1024;
  v141 = v167;
  sub_214F43C14(&v1[v176], v167, &qword_27CA41DD0);
  v142 = v179(v141, 1, v180);
  sub_214F302D4(v141, &qword_27CA41DD0);
  if (v142 == 1 || *&v114[v132] || (v114[OBJC_IVAR___ICCloudSession__hasCompletedInitialSync] & 1) != 0)
  {

    v143 = v178;
    v144 = v177;
    v145 = v171;
  }

  else
  {
    v159 = v114[v137];

    v143 = v178;
    v144 = v177;
    v145 = v171;
    if ((v159 & 1) == 0)
    {
      v146 = 1;
      goto LABEL_73;
    }
  }

  v146 = 0;
LABEL_73:
  v147 = v181;
  *(v117 + 70) = v146;

  *(v117 + 74) = 1024;
  v148 = v114[OBJC_IVAR___ICCloudSession__hasCompletedInitialSync];

  *(v117 + 76) = v148;
  *(v117 + 80) = 2082;
  v149 = sub_214F7723C(v174, v144, &v183);

  *(v117 + 82) = v149;
  *(v117 + 90) = 2082;
  v150 = sub_214F7723C(v173, v147, &v183);

  *(v117 + 92) = v150;
  *(v117 + 100) = 2082;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0);
  v151 = swift_allocObject();
  *(v151 + 16) = xmmword_2150C25D0;
  *(v151 + 32) = v163;
  *(v151 + 40) = v143;
  v152 = MEMORY[0x216061AA0]();
  v154 = v153;

  v155 = sub_214F7723C(v152, v154, &v183);

  *(v117 + 102) = v155;
  v156 = v172;
  _os_log_impl(&dword_214D51000, v172, v145, "Session completed %{public}s %{public}s, duration: %{public}s, error: %{public}@, cancelled?: %{BOOL}d, downloaded: %{public}s, uploaded: %{public}s, sessionCompletedInitialSync?: %{BOOL}d hasCompletedInitialSync?: %{BOOL}d, start: %{public}s, end: %{public}s, %{public}s", v117, 0x6Eu);
  v157 = v182;
  sub_214F302D4(v182, &qword_27CA41DF0);
  MEMORY[0x216064AF0](v157, -1, -1);
  v158 = v168;
  swift_arrayDestroy();
  MEMORY[0x216064AF0](v158, -1, -1);
  MEMORY[0x216064AF0](v117, -1, -1);
}

uint64_t sub_214F3CFBC()
{
  v1 = v0;
  v69 = sub_2150A3A00();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = OBJC_IVAR___ICCloudSession_recordTypesToIdentifiers;
  swift_beginAccess();
  v5 = *&v0[v4];
  v6 = *(v5 + 16);
  v70 = v3;
  if (v6)
  {
    v7 = sub_214F40C44(v6, 0);
    v66 = sub_214F41F78(&v72, v7 + 4, v6, v5);
    swift_bridgeObjectRetain_n();

    v8 = v1;
    sub_214F420F4();
    if (v66 != v6)
    {
      __break(1u);

      __break(1u);
      return result;
    }
  }

  else
  {

    v9 = v1;

    v7 = MEMORY[0x277D84F90];
  }

  v72 = v7;

  sub_214F437CC(&v72, sub_214F40DE0);

  v10 = v72;
  v11 = sub_215067B5C(v72);
  v12 = *&v1[OBJC_IVAR___ICCloudSession_fetchedRecordChanges + 8];
  v13 = *&v1[OBJC_IVAR___ICCloudSession_fetchedRecordChanges + 16];
  v72 = *&v1[OBJC_IVAR___ICCloudSession_fetchedRecordChanges];
  v73 = v12;
  v74 = v13;

  v14 = sub_214F43880(v11, &v72);
  v16 = v15;

  v17 = sub_215067B5C(v10);

  v18 = *&v1[OBJC_IVAR___ICCloudSession_pushedRecordChanges + 8];
  v19 = *&v1[OBJC_IVAR___ICCloudSession_pushedRecordChanges + 16];
  v72 = *&v1[OBJC_IVAR___ICCloudSession_pushedRecordChanges];
  v73 = v18;
  v74 = v19;

  v64 = sub_214F43880(v17, &v72);
  v21 = v20;

  v22 = OBJC_IVAR___ICCloudSession_logger;
  v23 = v1;

  v65 = v22;
  v24 = sub_2150A3F10();
  LODWORD(v22) = sub_2150A5540();

  v63 = v22;
  v25 = os_log_type_enabled(v24, v22);
  v66 = v21;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v61 = v14;
    v27 = v26;
    v62 = swift_slowAlloc();
    v72 = v62;
    *v27 = 136446722;
    v28 = OBJC_IVAR___ICCloudSession_identifier;
    swift_beginAccess();
    v29 = v68;
    v30 = v67;
    v31 = v69;
    (*(v68 + 16))(v67, &v23[v28], v69);
    sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0]);
    v32 = sub_2150A6100();
    v34 = v33;
    (*(v29 + 8))(v30, v31);
    v35 = sub_214F7723C(v32, v34, &v72);

    *(v27 + 4) = v35;
    *(v27 + 12) = 2082;
    v36 = &v23[OBJC_IVAR___ICCloudSession_reason];
    swift_beginAccess();
    v38 = *v36;
    v37 = v36[1];

    v39 = sub_214F7723C(v38, v37, &v72);

    *(v27 + 14) = v39;
    *(v27 + 22) = 2082;
    v40 = sub_214F7723C(v61, v16, &v72);

    *(v27 + 24) = v40;
    _os_log_impl(&dword_214D51000, v24, v63, "Session %{public}s %{public}s fetched changes: %{public}s", v27, 0x20u);
    v41 = v62;
    swift_arrayDestroy();
    MEMORY[0x216064AF0](v41, -1, -1);
    MEMORY[0x216064AF0](v27, -1, -1);
  }

  else
  {
  }

  v42 = v23;

  v43 = sub_2150A3F10();
  v44 = sub_2150A5540();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v71[0] = v46;
    *v45 = 136446722;
    v47 = OBJC_IVAR___ICCloudSession_identifier;
    swift_beginAccess();
    v48 = v68;
    v49 = v67;
    v50 = v69;
    (*(v68 + 16))(v67, &v42[v47], v69);
    sub_214F43DFC(&qword_280C24850, MEMORY[0x277CC95F0]);
    v51 = sub_2150A6100();
    v53 = v52;
    (*(v48 + 8))(v49, v50);
    v54 = sub_214F7723C(v51, v53, v71);

    *(v45 + 4) = v54;
    *(v45 + 12) = 2082;
    v55 = &v42[OBJC_IVAR___ICCloudSession_reason];
    swift_beginAccess();
    v57 = *v55;
    v56 = v55[1];

    v58 = sub_214F7723C(v57, v56, v71);

    *(v45 + 14) = v58;
    *(v45 + 22) = 2082;
    v59 = sub_214F7723C(v64, v66, v71);

    *(v45 + 24) = v59;
    _os_log_impl(&dword_214D51000, v43, v44, "Session %{public}s %{public}s pushed changes: %{public}s", v45, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x216064AF0](v46, -1, -1);
    MEMORY[0x216064AF0](v45, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_214F3D798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + OBJC_IVAR___ICCloudSession_preferredLoggingOrder);
  v10 = *(v9 + 16);
  v11 = v10 == 0;
  v12 = 0;
  if (v10)
  {
    v13 = (v9 + 40);
    while (1)
    {
      v14 = *(v13 - 1) == a1 && *v13 == a2;
      if (v14 || (sub_2150A6270() & 1) != 0)
      {
        break;
      }

      ++v12;
      v13 += 2;
      v11 = v10 == v12;
      if (v10 == v12)
      {
        v12 = 0;
        break;
      }
    }
  }

  v15 = v10 == 0;
  if (v10)
  {
    v16 = 0;
    v17 = (v9 + 40);
    while (1)
    {
      v18 = *(v17 - 1) == a3 && *v17 == a4;
      if (v18 || (sub_2150A6270() & 1) != 0)
      {
        break;
      }

      ++v16;
      v17 += 2;
      v15 = v10 == v16;
      if (v10 == v16)
      {
        goto LABEL_18;
      }
    }

    if (v11)
    {
      return 0;
    }

    return v15 || v12 < v16;
  }

LABEL_18:
  if (!v11)
  {
    v16 = 0;
    return v15 || v12 < v16;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 0;
  }

  return sub_2150A6270();
}

uint64_t sub_214F3D904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v53 = MEMORY[0x277D84F90];
    sub_214F86A20(0, v4, 0);
    v7 = v53;
    v8 = a1 + 40;
    do
    {
      v9 = sub_2150A4A90();
      v10 = [v9 ic_loggingDescription];
      v11 = sub_2150A4AD0();
      v13 = v12;

      v15 = *(v53 + 16);
      v14 = *(v53 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_214F86A20((v14 > 1), v15 + 1, 1);
      }

      *(v53 + 16) = v15 + 1;
      v16 = v53 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v8 += 16;
      --v4;
    }

    while (v4);
    v17 = a2;
    v18 = *(a2 + 16);
    if (!v18)
    {
      v19 = MEMORY[0x277D84F90];
      goto LABEL_17;
    }

LABEL_10:
    sub_214F86A20(0, v18, 0);
    v19 = v5;
    v20 = v17 + 40;
    do
    {
      v21 = sub_2150A4A90();
      v22 = [v21 ic_loggingDescription];
      v23 = sub_2150A4AD0();
      v25 = v24;

      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_214F86A20((v26 > 1), v27 + 1, 1);
      }

      *(v19 + 16) = v27 + 1;
      v28 = v19 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v20 += 16;
      --v18;
    }

    while (v18);
    goto LABEL_17;
  }

  v17 = a2;
  v18 = *(a2 + 16);
  if (v18)
  {
    v7 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  if (!*(a3 + 16))
  {
    return 0;
  }

  v7 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
LABEL_17:
  v29 = *(a3 + 16);
  v30 = MEMORY[0x277D84F90];
  if (v29)
  {
    v54 = MEMORY[0x277D84F90];
    sub_214F86A20(0, v29, 0);
    v31 = v54;
    v32 = a3 + 40;
    do
    {
      v33 = sub_2150A4A90();
      v34 = [v33 ic_loggingDescription];
      v35 = sub_2150A4AD0();
      v37 = v36;

      v39 = *(v54 + 16);
      v38 = *(v54 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_214F86A20((v38 > 1), v39 + 1, 1);
      }

      *(v54 + 16) = v39 + 1;
      v40 = v54 + 16 * v39;
      *(v40 + 32) = v35;
      *(v40 + 40) = v37;
      v32 += 16;
      --v29;
    }

    while (v29);
    v30 = MEMORY[0x277D84F90];
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  v60 = 0x6465646441;
  v61 = 0xE500000000000000;
  v62[0] = v7;
  v62[1] = 0x6465696669646F4DLL;
  v62[2] = 0xE800000000000000;
  v62[3] = v19;
  v62[4] = 0x646574656C6544;
  v62[5] = 0xE700000000000000;
  v62[6] = v31;
  v58 = v30;
  sub_214F86A20(0, 3, 0);
  v41 = 0;
  v42 = MEMORY[0x277D837D0];
  do
  {
    v43 = v62[v41];
    v55 = *&v59[v41 * 8 + 32];
    v57 = v62[v41 - 1];
    swift_bridgeObjectRetain_n();

    MEMORY[0x2160617E0](8250, 0xE200000000000000);
    v44 = MEMORY[0x216061AA0](v43, v42);
    MEMORY[0x2160617E0](v44);

    v46 = *(v58 + 16);
    v45 = *(v58 + 24);
    if (v46 >= v45 >> 1)
    {
      sub_214F86A20((v45 > 1), v46 + 1, 1);
    }

    *(v58 + 16) = v46 + 1;
    v47 = v58 + 16 * v46;
    *(v47 + 32) = v55;
    *(v47 + 40) = v57;
    v41 += 3;
  }

  while (v41 != 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA425A0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
  sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0);
  v48 = sub_2150A4A20();
  v50 = v49;

  v56 = sub_214F3F8A0();
  MEMORY[0x2160617E0](2108704, 0xE300000000000000);
  MEMORY[0x2160617E0](v48, v50);

  return v56;
}

id CloudSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_214F3DE84(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t ICCloudSessionPhase.description.getter()
{
  v0 = sub_2150A5B70();
  MEMORY[0x2160617E0](v0);

  return 0;
}

uint64_t sub_214F3E1FC()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1);
  return sub_2150A64E0();
}

uint64_t sub_214F3E270()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1);
  return sub_2150A64E0();
}

uint64_t sub_214F3E2D0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_214F43C14(a1, &v14 - v9, &qword_27CA41DD0);
  v11 = *a2;
  v12 = *a5;
  swift_beginAccess();
  sub_214F43C7C(v10, v11 + v12, &qword_27CA41DD0);
  return swift_endAccess();
}

uint64_t sub_214F3E3BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_214F43C14(v2 + v4, a2, &qword_27CA41DD0);
}

uint64_t sub_214F3E420()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = sub_2150A3960();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_startDate;
  swift_beginAccess();
  sub_214F43C14(v0 + v14, v6, &qword_27CA41DD0);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    v16 = v6;
    return sub_214F302D4(v16, &qword_27CA41DD0);
  }

  v21 = *(v8 + 32);
  v21(v13, v6, v7);
  v17 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_endDate;
  swift_beginAccess();
  sub_214F43C14(v0 + v17, v4, &qword_27CA41DD0);
  if (v15(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v16 = v4;
    return sub_214F302D4(v16, &qword_27CA41DD0);
  }

  v21(v11, v4, v7);
  sub_2150A3870();
  v19 = *(v8 + 8);
  v19(v11, v7);
  return (v19)(v13, v7);
}

id sub_214F3E708()
{
  v1 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_errors;
  swift_beginAccess();
  if (!*(*(v0 + v1) + 16))
  {
    return 0;
  }

  v2 = objc_opt_self();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
  v3 = sub_2150A4EB0();

  v4 = [v2 errorFromErrors_];

  return v4;
}

uint64_t sub_214F3E7D0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

char *sub_214F3E89C(SEL *a1)
{
  v3 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_ckMetrics;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
LABEL_24:
    v5 = sub_2150A59D0();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = 0;
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x216062780](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v11 = *(v4 + 8 * v6 + 32);
    }

    v12 = v11;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v13 = [v11 cloudKitMetrics];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 *a1];

      v16 = &v15[v7];
      if (__OFADD__(v7, v15))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v16 = v7;
    }

    v17 = [v12 MMCSMetrics];
    if (v17)
    {
      v8 = v17;
      v9 = [v17 *a1];
    }

    else
    {
      v9 = 0;
    }

    ++v6;
    v10 = __OFADD__(v16, v9);
    v7 = &v9[v16];
    if (v10)
    {
      goto LABEL_23;
    }
  }

  return v7;
}

BOOL sub_214F3EA2C()
{
  v1 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_ckMetrics;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_19:
    v3 = sub_2150A59D0();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    v5 = v4;
    if (v3 == v4)
    {

      return v3 != v5;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x216062780](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v8 = [v6 cloudKitMetrics];
    if (v8)
    {
      break;
    }

    v9 = [v7 MMCSMetrics];

    v4 = v5 + 1;
    if (v9)
    {
      goto LABEL_15;
    }
  }

  v9 = v8;

LABEL_15:

  return v3 != v5;
}

uint64_t sub_214F3EBB0(uint64_t (*a1)(void))
{
  if (!sub_214F3EA2C())
  {
    return 0;
  }

  v2 = a1();
  v3 = [objc_opt_self() stringFromByteCount:v2 countStyle:3];
  v4 = sub_2150A4AD0();

  return v4;
}

char *sub_214F3EC3C()
{
  v0 = sub_214F3E884();
  result = sub_214F3E890();
  if (!__OFADD__(v0, result))
  {
    return sub_214F3E420();
  }

  __break(1u);
  return result;
}

char *sub_214F3ECBC(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v96 = sub_2150A3960();
  v98 = *(v96 - 8);
  v8 = MEMORY[0x28223BE20](v96);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v91 = &v91 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v94 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v95 = &v91 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v91 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v97 = &v91 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v91 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v91 - v25;
  v102 = 0x7972616D6D7573;
  v103 = 0xE700000000000000;
  v92 = v10;
  if (a1)
  {
    v27 = sub_214F3F72C(a1, a2, a3);
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  v104 = v27;
  v105 = v28;
  v106 = 0x6E6F697461727564;
  v107 = 0xE800000000000000;
  v29 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_startDate;
  swift_beginAccess();
  sub_214F43C14(v4 + v29, v26, &qword_27CA41DD0);
  v30 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_endDate;
  swift_beginAccess();
  v93 = v30;
  sub_214F43C14(v4 + v30, v24, &qword_27CA41DD0);
  v31 = sub_214F42438(v26, v24);
  v33 = v32;
  sub_214F302D4(v24, &qword_27CA41DD0);
  sub_214F302D4(v26, &qword_27CA41DD0);
  v108 = v31;
  v109 = v33;
  v110 = 0x64616F6C6E776F64;
  v111 = 0xEA00000000006465;
  v34 = 0;
  v35 = 0;
  if (sub_214F3EA2C())
  {
    v36 = sub_214F3E884();
    v37 = [objc_opt_self() stringFromByteCount:v36 countStyle:3];
    v34 = sub_2150A4AD0();
    v35 = v38;
  }

  v112 = v34;
  v113 = v35;
  v114 = 0x646564616F6C7075;
  v115 = 0xE800000000000000;
  if (sub_214F3EA2C())
  {
    v39 = sub_214F3E890();
    v40 = [objc_opt_self() stringFromByteCount:v39 countStyle:3];
    v41 = sub_2150A4AD0();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v116 = v41;
  v117 = v43;
  v118 = 0x726F727265;
  v119 = 0xE500000000000000;
  v44 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_errors;
  swift_beginAccess();
  if (*(*(v4 + v44) + 16) && (v45 = objc_opt_self(), , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8), v46 = sub_2150A4EB0(), , v47 = [v45 errorFromErrors_], v46, v47))
  {
    swift_getErrorValue();
    v48 = sub_2150A6440();
    v50 = v49;
  }

  else
  {
    v50 = 0xE300000000000000;
    v48 = 7104878;
  }

  v120 = v48;
  v121 = v50;
  v122 = 0x7472617473;
  v123 = 0xE500000000000000;
  v51 = v97;
  sub_214F43C14(v4 + v29, v97, &qword_27CA41DD0);
  sub_214F43C14(v51, v19, &qword_27CA41DD0);
  v52 = v98;
  v53 = *(v98 + 48);
  v54 = v96;
  if ((v53)(v19, 1, v96) == 1)
  {
    sub_214F302D4(v19, &qword_27CA41DD0);
    sub_214F302D4(v51, &qword_27CA41DD0);
    v55 = 0xE300000000000000;
    v56 = 7104878;
  }

  else
  {
    v57 = v91;
    (*(v52 + 32))(v91, v19, v54);
    v58 = v54;
    if (qword_280C24840 != -1)
    {
LABEL_37:
      swift_once();
    }

    v59 = qword_280C24848;
    v60 = v57;
    v61 = sub_2150A38F0();
    v62 = [v59 stringFromDate_];

    v56 = sub_2150A4AD0();
    v55 = v63;

    (*(v98 + 8))(v60, v58);
    sub_214F302D4(v97, &qword_27CA41DD0);
    v54 = v58;
  }

  v124 = v56;
  v125 = v55;
  v126 = 6581861;
  v127 = 0xE300000000000000;
  v64 = v95;
  sub_214F43C14(v4 + v93, v95, &qword_27CA41DD0);
  v65 = v94;
  sub_214F43C14(v64, v94, &qword_27CA41DD0);
  if ((v53)(v65, 1, v54) == 1)
  {
    sub_214F302D4(v65, &qword_27CA41DD0);
    sub_214F302D4(v64, &qword_27CA41DD0);
    v57 = 0xE300000000000000;
    v66 = 7104878;
  }

  else
  {
    v67 = v98;
    v68 = v92;
    (*(v98 + 32))(v92, v65, v54);
    if (qword_280C24840 != -1)
    {
      swift_once();
    }

    v69 = qword_280C24848;
    v70 = sub_2150A38F0();
    v71 = [v69 stringFromDate_];

    v66 = sub_2150A4AD0();
    v57 = v72;

    (*(v67 + 8))(v68, v54);
    sub_214F302D4(v64, &qword_27CA41DD0);
  }

  v53 = 0;
  v128 = v66;
  v129 = v57;
  v58 = 7;
  v73 = MEMORY[0x277D84F90];
LABEL_23:
  if (v53 <= 7)
  {
    v74 = 7;
  }

  else
  {
    v74 = v53;
  }

  v75 = v74 + 1;
  v76 = &v101[2 * v53];
  while (v53 != 7)
  {
    if (v75 == ++v53)
    {
      __break(1u);
      goto LABEL_37;
    }

    v77 = (v76 + 2);
    v78 = *(v76 + 7);
    v76 += 2;
    if (v78)
    {
      v80 = v77[1];
      v79 = v77[2];
      v99 = *v77;
      v100 = v80;
      swift_bridgeObjectRetain_n();

      MEMORY[0x2160617E0](2112800, 0xE300000000000000);
      MEMORY[0x2160617E0](v79, v78);

      v81 = v99;
      v82 = v100;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = sub_21505F4D0(0, *(v73 + 2) + 1, 1, v73);
      }

      v84 = *(v73 + 2);
      v83 = *(v73 + 3);
      v57 = v84 + 1;
      if (v84 >= v83 >> 1)
      {
        v73 = sub_21505F4D0((v83 > 1), v84 + 1, 1, v73);
      }

      *(v73 + 2) = v57;
      v85 = &v73[16 * v84];
      *(v85 + 4) = v81;
      *(v85 + 5) = v82;
      goto LABEL_23;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DF8);
  swift_arrayDestroy();
  v99 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
  sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0);
  v86 = sub_2150A4A20();
  v88 = v87;

  v99 = 0;
  v100 = 0xE000000000000000;
  v89 = sub_2150A5B70();
  MEMORY[0x2160617E0](v89);

  MEMORY[0x2160617E0](8250, 0xE200000000000000);
  MEMORY[0x2160617E0](v86, v88);

  return v99;
}

uint64_t sub_214F3F72C(unint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a1 >> 62)
  {
    sub_2150A59D0();
  }

  v5 = sub_2150A6100();
  MEMORY[0x2160617E0](v5);

  MEMORY[0x2160617E0](2760748, 0xE300000000000000);
  if (a2 >> 62)
  {
    sub_2150A59D0();
  }

  v6 = sub_2150A6100();
  MEMORY[0x2160617E0](v6);

  MEMORY[0x2160617E0](2957356, 0xE300000000000000);
  if (a3 >> 62)
  {
    sub_2150A59D0();
  }

  v7 = sub_2150A6100();
  MEMORY[0x2160617E0](v7);

  return 43;
}

uint64_t sub_214F3F8A0()
{
  v0 = sub_2150A6100();
  MEMORY[0x2160617E0](v0);

  MEMORY[0x2160617E0](2760748, 0xE300000000000000);
  v1 = sub_2150A6100();
  MEMORY[0x2160617E0](v1);

  MEMORY[0x2160617E0](2957356, 0xE300000000000000);
  v2 = sub_2150A6100();
  MEMORY[0x2160617E0](v2);

  return 43;
}

uint64_t CloudSession.PhaseMetrics.deinit()
{
  sub_214F302D4(v0 + OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_startDate, &qword_27CA41DD0);
  sub_214F302D4(v0 + OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_endDate, &qword_27CA41DD0);

  return v0;
}

uint64_t CloudSession.PhaseMetrics.__deallocating_deinit()
{
  sub_214F302D4(v0 + OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_startDate, &qword_27CA41DD0);
  sub_214F302D4(v0 + OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_endDate, &qword_27CA41DD0);

  return swift_deallocClassInstance();
}

void sub_214F3FB28()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_2150A4A90();
  [v0 setDateFormat_];

  qword_280C24848 = v0;
}

uint64_t keypath_get_183Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_214F43C14(v4 + v5, a3, &qword_27CA41DD0);
}

uint64_t keypath_get_187Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void sub_214F3FED4()
{
  sub_2150A3A00();
  if (v0 <= 0x3F)
  {
    sub_214F408F0(319, &qword_280C24858, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      sub_2150A3F30();
      if (v2 <= 0x3F)
      {
        sub_2150A3EB0();
        if (v3 <= 0x3F)
        {
          sub_214F408F0(319, &qword_280C245E8, MEMORY[0x277D85AD8]);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_214F408F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2150A57E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_214F4096C()
{
  sub_214F408F0(319, &qword_280C24858, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_214F40C44(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42670);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_214F40CD4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_214F40D5C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42720);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void sub_214F40DE8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2150A5950() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_2150A5770();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_214F40F74(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2150A5950() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_2150A64B0();
      MEMORY[0x216063080](v9);
      result = sub_2150A64E0();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v3);
      v13 = (v11 + 8 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_2150A3E80() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_214F41144(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2150A5950() + 1) & ~v5;
    do
    {
      sub_2150A64B0();

      sub_2150A4BB0();
      v9 = sub_2150A64E0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_214F412F4(int64_t a1, uint64_t a2)
{
  v42 = sub_2150A3750();
  v4 = *(v42 - 8);
  result = MEMORY[0x28223BE20](v42);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v43 = v6;
    v12 = sub_2150A5950();
    v13 = v42;
    v6 = v43;
    v14 = v11;
    v40 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v38 = a2 + 64;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v41;
      v21 = v14;
      v22 = v15;
      v39(v41, *(v6 + 48) + v17 * v10, v13);
      sub_214F43DFC(&qword_280C241C8, MEMORY[0x277CC9260]);
      v23 = sub_2150A49A0();
      result = (*v37)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v6 = v43;
          v27 = *(v43 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v43;
            v17 = v18;
            v14 = v21;
            v8 = v38;
          }

          else
          {
            v8 = v38;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v43;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = v28 + 40 * a1;
          v30 = (v28 + 40 * v10);
          if (40 * a1 < (40 * v10) || v29 >= v30 + 40 || a1 != v10)
          {
            v31 = *v30;
            v32 = v30[1];
            *(v29 + 32) = *(v30 + 4);
            *v29 = v31;
            *(v29 + 16) = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v38;
      v17 = v18;
      v6 = v43;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(v6 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v35;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_214F41634(int64_t a1, uint64_t a2)
{
  v40 = sub_2150A3750();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_2150A5950();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_214F43DFC(&qword_280C241C8, MEMORY[0x277CC9260]);
      v23 = sub_2150A49A0();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_214F41954(int64_t a1, uint64_t a2)
{
  v40 = sub_2150A3A00();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_2150A5950();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_214F43DFC(&qword_280C241B0, MEMORY[0x277CC95F0]);
      v23 = sub_2150A49A0();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_214F41C74(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_214F41D00(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_214F41D14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE8);
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

void sub_214F41E18(uint64_t a1, unint64_t *a2, uint64_t a3, void *a4)
{
  v24 = a4;
  ICAttachmentGalleryModel.SubAttachments.makeIterator()(&v22);

  if (!a2 || !a3)
  {
LABEL_18:
    v20 = v23;
    goto LABEL_20;
  }

  if (a3 < 0)
  {
    __break(1u);
    return;
  }

  v7 = 1;
  while (2)
  {
    v8 = v23;
    if (!v23)
    {
LABEL_19:

      v20 = 0uLL;
      goto LABEL_20;
    }

    v9 = *(&v23 + 1);
LABEL_7:
    v10 = v22;
    v11 = (v8 + 16 * v9 + 40);
    do
    {
      v12 = *(v8 + 16);
      if (v9 == v12)
      {
        goto LABEL_19;
      }

      if (v9 >= v12)
      {
        __break(1u);
        goto LABEL_22;
      }

      v14 = *(v11 - 1);
      v13 = *v11;
      *(&v23 + 1) = ++v9;
      v11 += 2;
    }

    while (!*(v22 + 16));

    v15 = sub_214F30094(v14, v13);
    v17 = v16;

    if (v17)
    {
      v9 = *(*(v10 + 56) + 8 * v15);
      *a2 = v9;
      if (v7 != a3)
      {
        ++a2;
        v18 = v9;
        if (!__OFADD__(v7++, 1))
        {
          continue;
        }

        __break(1u);
        goto LABEL_18;
      }

LABEL_22:
      v21 = v9;
      goto LABEL_18;
    }

    break;
  }

  v9 = *(&v23 + 1);
  v8 = v23;
  if (v23)
  {
    goto LABEL_7;
  }

  v20 = __PAIR128__(*(&v23 + 1), 0);
LABEL_20:
  *a1 = v22;
  *(a1 + 8) = v20;
}

void *sub_214F41F78(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_214F420FC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + ((v12 << 11) | (32 * v17)));
      v19 = v18[1];
      v21 = v18[2];
      v20 = v18[3];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v21;
      v11[3] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_214F42308()
{
  result = sub_2150A3870();
  v2 = v1;
  if (v1 >= 1.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
    v4 = swift_allocObject();
    v5 = MEMORY[0x277D839F8];
    *(v4 + 16) = xmmword_2150C25D0;
    v6 = MEMORY[0x277D83A80];
    *(v4 + 56) = v5;
    *(v4 + 64) = v6;
    *(v4 + 32) = v2;
    return sub_2150A4B00();
  }

  v3 = v1 * 1000.0;
  if (COERCE__INT64(fabs(v2 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v3 > -9.22337204e18)
  {
    if (v3 < 9.22337204e18)
    {
      v7 = sub_2150A6100();
      MEMORY[0x2160617E0](29549, 0xE200000000000000);
      return v7;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_214F42438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = sub_2150A3960();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  sub_214F43C14(a1, v9, &qword_27CA41DD0);
  v17 = v11[6];
  if (v17(v9, 1, v10) == 1)
  {
    v18 = 6369134;
    v19 = v9;
  }

  else
  {
    v20 = v9;
    v21 = v11[4];
    v21(v16, v20, v10);
    sub_214F43C14(a2, v7, &qword_27CA41DD0);
    if (v17(v7, 1, v10) != 1)
    {
      v21(v14, v7, v10);
      v18 = sub_214F42308();
      v22 = v11[1];
      v22(v14, v10);
      v22(v16, v10);
      return v18;
    }

    v18 = 6369134;
    (v11[1])(v16, v10);
    v19 = v7;
  }

  sub_214F302D4(v19, &qword_27CA41DD0);
  return v18;
}

void *sub_214F426EC(void *result)
{
  if (result)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
    sub_214D55670(0, &qword_280C244D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v2 = [v10 domain];
    v3 = sub_2150A4AD0();
    v5 = v4;

    if (v3 == sub_2150A4AD0() && v5 == v6)
    {
    }

    else
    {
      v8 = sub_2150A6270();

      if ((v8 & 1) == 0)
      {

        return 0;
      }
    }

    v9 = [v10 code];

    return (v9 == 1);
  }

  return result;
}

uint64_t sub_214F4283C(char *__dst, char *__src, unint64_t a3, char *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a3;
  v6 = __src;
  v7 = __src - __dst;
  v8 = (__src - __dst) / 24;
  v9 = a3 - __src;
  v10 = (a3 - __src) / 24;
  if (v8 >= v10)
  {
    v13 = a4;
    if (a4 != __src || &__src[24 * v10] <= a4)
    {
      memmove(a4, __src, 24 * v10);
    }

    v39 = &v13[24 * v10];
    if (v9 >= 24 && v6 > __dst)
    {
      v35 = v13;
LABEL_23:
      v37 = v6;
      v33 = (v6 - 24);
      v21 = v5 - 24;
      v22 = v39;
      do
      {
        v24 = *(v22 - 3);
        v23 = *(v22 - 2);
        v22 -= 24;
        v25 = v21;
        v26 = (v21 + 24);
        v27 = *(v37 - 3);
        v28 = *(v37 - 2);

        LOBYTE(v27) = a5(v24, v23, v27, v28);

        if (v27)
        {
          v5 = v25;
          if (v26 != v37)
          {
            v30 = *v33;
            *(v25 + 16) = *(v33 + 16);
            *v25 = v30;
          }

          v13 = v35;
          if (v39 <= v35 || (v6 = v33, v33 <= __dst))
          {
            v6 = v33;
            goto LABEL_34;
          }

          goto LABEL_23;
        }

        if (v26 != v39)
        {
          v29 = *v22;
          *(v25 + 16) = *(v22 + 2);
          *v25 = v29;
        }

        v21 = v25 - 24;
        v39 = v22;
        v13 = v35;
      }

      while (v22 > v35);
      v39 = v22;
      v6 = v37;
    }
  }

  else
  {
    v11 = __dst;
    if (a4 != __dst || &__dst[24 * v8] <= a4)
    {
      v12 = a4;
      memmove(a4, __dst, 24 * v8);
      a4 = v12;
    }

    v39 = &a4[24 * v8];
    v13 = a4;
    if (v7 >= 24 && v6 < v5)
    {
      v36 = v5;
      while (1)
      {
        v14 = *v6;
        v15 = *(v6 + 1);
        v16 = *v13;
        v17 = *(v13 + 1);

        LOBYTE(v16) = a5(v14, v15, v16, v17);

        if ((v16 & 1) == 0)
        {
          break;
        }

        v18 = v6;
        v19 = v11 == v6;
        v6 += 24;
        if (!v19)
        {
          goto LABEL_13;
        }

LABEL_14:
        v11 += 24;
        if (v13 >= v39 || v6 >= v36)
        {
          goto LABEL_16;
        }
      }

      v18 = v13;
      v19 = v11 == v13;
      v13 += 24;
      if (v19)
      {
        goto LABEL_14;
      }

LABEL_13:
      v20 = *v18;
      *(v11 + 2) = *(v18 + 2);
      *v11 = v20;
      goto LABEL_14;
    }

LABEL_16:
    v6 = v11;
  }

LABEL_34:
  v31 = (v39 - v13) / 24;
  if (v6 != v13 || v6 >= &v13[24 * v31])
  {
    memmove(v6, v13, 24 * v31);
  }

  return 1;
}

uint64_t sub_214F42BBC(char **a1, char *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v25 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v25 = sub_214F41D00(v25);
  }

  v21 = v6;
  *v6 = v25;
  v8 = v25 + 16;
  v9 = *(v25 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v21 = v25;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v25[16 * v9];
      v13 = *v12;
      v14 = v8;
      v15 = &v8[16 * v9];
      v16 = *(v15 + 1);
      __dst = (v10 + 24 * *v12);
      v17 = (v10 + 24 * *v15);
      v6 = (v10 + 24 * v16);

      sub_214F4283C(__dst, v17, v6, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v21 = v25;

        return 1;
      }

      if (v16 < v13)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v18 = *v14;
      if (v9 - 2 >= *v14)
      {
        goto LABEL_13;
      }

      *v12 = v13;
      *(v12 + 1) = v16;
      v19 = v18 - v9;
      if (v18 < v9)
      {
        goto LABEL_14;
      }

      v8 = v14;
      v9 = v18 - 1;
      memmove(v15, v15 + 16, 16 * v19);
      *v14 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v21 = v25;
    __break(1u);
  }

  return result;
}

uint64_t sub_214F42D68(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = v5;
  v123 = MEMORY[0x277D84F90];
  v8 = a3[1];
  swift_retain_n();
  if (v8 >= 1)
  {
    v104 = a4;
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v22 = v12;
      }

      else
      {
        v116 = v8;
        v105 = v6;
        v13 = (*a3 + 24 * v12);
        v14 = *v13;
        v15 = v13[1];
        v108 = v11;
        v16 = 24 * v11;
        v17 = (*a3 + 24 * v11);
        v19 = *v17;
        v18 = v17[1];

        v119 = a5(v14, v15, v19, v18);

        v20 = v11 + 2;
        v21 = v17 + 8;
        while (1)
        {
          v22 = v116;
          if (v116 == v20)
          {
            break;
          }

          v23 = *(v21 - 1);
          v24 = *(v21 - 5);
          v25 = *(v21 - 4);
          v26 = *(v21 - 2);

          LODWORD(v26) = a5(v26, v23, v24, v25) & 1;

          ++v20;
          v21 += 3;
          if ((v119 & 1) != v26)
          {
            v22 = v20 - 1;
            break;
          }
        }

        v6 = v105;
        if (v119)
        {
          v27 = v108;
          if (v22 < v108)
          {
            goto LABEL_117;
          }

          if (v108 < v22)
          {
            v28 = 0;
            v29 = 24 * v22;
            while (1)
            {
              if (v27 != v22 + v28 - 1)
              {
                v35 = *a3;
                if (!*a3)
                {
                  goto LABEL_122;
                }

                v30 = v35 + v16;
                v31 = v35 + v29;
                v32 = *v30;
                v33 = *(v30 + 8);
                v34 = *(v31 - 24);
                *(v30 + 16) = *(v31 - 8);
                *v30 = v34;
                *(v31 - 24) = v32;
                *(v31 - 16) = v33;
              }

              ++v27;
              --v28;
              v29 -= 24;
              v16 += 24;
              if (v27 >= v22 + v28)
              {
                goto LABEL_19;
              }
            }
          }

          v11 = v108;
        }

        else
        {
LABEL_19:
          v11 = v108;
        }
      }

      v36 = a3[1];
      if (v22 >= v36)
      {
        goto LABEL_30;
      }

      if (__OFSUB__(v22, v11))
      {
        goto LABEL_116;
      }

      if (v22 - v11 >= v104)
      {
        goto LABEL_30;
      }

      if (__OFADD__(v11, v104))
      {
        goto LABEL_118;
      }

      if (v11 + v104 >= v36)
      {
        v37 = a3[1];
      }

      else
      {
        v37 = v11 + v104;
      }

      if (v37 < v11)
      {
LABEL_119:
        __break(1u);
LABEL_120:

        __break(1u);
LABEL_121:

        __break(1u);
LABEL_122:

        __break(1u);
LABEL_123:

        __break(1u);
LABEL_124:

        __break(1u);
        return result;
      }

      if (v22 == v37)
      {
LABEL_30:
        v38 = v22;
        if (v22 < v11)
        {
          goto LABEL_115;
        }
      }

      else
      {
        v106 = v6;
        v121 = *a3;
        v93 = (*a3 + 24 * v22);
        v109 = v11;
        v111 = v37;
        v94 = v11 - v22;
        do
        {
          v118 = v22;
          v95 = &v121[24 * v22];
          v96 = *v95;
          v97 = v95[1];
          v112 = v94;
          v113 = v93;
          do
          {
            v98 = *(v93 - 3);
            v99 = *(v93 - 2);

            LOBYTE(v98) = a5(v96, v97, v98, v99);

            if ((v98 & 1) == 0)
            {
              break;
            }

            if (!v121)
            {
              goto LABEL_120;
            }

            v96 = *v93;
            v97 = v93[1];
            v100 = v93[2];
            *v93 = *(v93 - 3);
            v93[2] = *(v93 - 1);
            *(v93 - 2) = v97;
            *(v93 - 1) = v100;
            *(v93 - 3) = v96;
            v93 -= 3;
          }

          while (!__CFADD__(v94++, 1));
          v22 = v118 + 1;
          v93 = v113 + 3;
          v94 = v112 - 1;
          v38 = v111;
        }

        while (v118 + 1 != v111);
        v6 = v106;
        v11 = v109;
        if (v111 < v109)
        {
          goto LABEL_115;
        }
      }

      v110 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_21505F5DC(0, *(v10 + 2) + 1, 1, v10);
      }

      v40 = *(v10 + 2);
      v39 = *(v10 + 3);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        v10 = sub_21505F5DC((v39 > 1), v40 + 1, 1, v10);
      }

      *(v10 + 2) = v41;
      v42 = v10 + 32;
      v43 = &v10[16 * v40 + 32];
      *v43 = v11;
      *(v43 + 1) = v110;
      v120 = *a1;
      if (!*a1)
      {
        goto LABEL_123;
      }

      if (v40)
      {
        v117 = v10 + 32;
        v114 = v10;
        while (1)
        {
          v44 = v41 - 1;
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v45 = *(v10 + 4);
            v46 = *(v10 + 5);
            v55 = __OFSUB__(v46, v45);
            v47 = v46 - v45;
            v48 = v55;
LABEL_51:
            if (v48)
            {
              goto LABEL_105;
            }

            v61 = &v10[16 * v41];
            v63 = *v61;
            v62 = *(v61 + 1);
            v64 = __OFSUB__(v62, v63);
            v65 = v62 - v63;
            v66 = v64;
            if (v64)
            {
              goto LABEL_107;
            }

            v67 = &v42[16 * v44];
            v69 = *v67;
            v68 = *(v67 + 1);
            v55 = __OFSUB__(v68, v69);
            v70 = v68 - v69;
            if (v55)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v65, v70))
            {
              goto LABEL_112;
            }

            if (v65 + v70 >= v47)
            {
              if (v47 < v70)
              {
                v44 = v41 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          if (v41 < 2)
          {
            goto LABEL_113;
          }

          v71 = &v10[16 * v41];
          v73 = *v71;
          v72 = *(v71 + 1);
          v55 = __OFSUB__(v72, v73);
          v65 = v72 - v73;
          v66 = v55;
LABEL_66:
          if (v66)
          {
            goto LABEL_109;
          }

          v74 = &v42[16 * v44];
          v76 = *v74;
          v75 = *(v74 + 1);
          v55 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v55)
          {
            goto LABEL_111;
          }

          if (v77 < v65)
          {
            goto LABEL_3;
          }

LABEL_73:
          if (v44 - 1 >= v41)
          {
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
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          v82 = *a3;
          if (!*a3)
          {
            goto LABEL_121;
          }

          v83 = v6;
          v84 = &v42[16 * v44 - 16];
          v85 = *v84;
          v86 = v44;
          v87 = &v42[16 * v44];
          v88 = *(v87 + 1);
          v89 = (v82 + 24 * *v84);
          v90 = (v82 + 24 * *v87);
          v91 = v82 + 24 * v88;

          sub_214F4283C(v89, v90, v91, v120, a5);
          v6 = v83;
          if (v83)
          {

            goto LABEL_96;
          }

          v10 = v114;
          if (v88 < v85)
          {
            goto LABEL_100;
          }

          v92 = *(v114 + 2);
          if (v86 > v92)
          {
            goto LABEL_101;
          }

          *v84 = v85;
          *(v84 + 1) = v88;
          if (v86 >= v92)
          {
            goto LABEL_102;
          }

          v41 = v92 - 1;
          memmove(v87, v87 + 16, 16 * (v92 - 1 - v86));
          *(v114 + 2) = v92 - 1;
          v42 = v117;
          if (v92 <= 2)
          {
            goto LABEL_3;
          }
        }

        v49 = &v42[16 * v41];
        v50 = *(v49 - 8);
        v51 = *(v49 - 7);
        v55 = __OFSUB__(v51, v50);
        v52 = v51 - v50;
        if (v55)
        {
          goto LABEL_103;
        }

        v54 = *(v49 - 6);
        v53 = *(v49 - 5);
        v55 = __OFSUB__(v53, v54);
        v47 = v53 - v54;
        v48 = v55;
        if (v55)
        {
          goto LABEL_104;
        }

        v56 = &v10[16 * v41];
        v58 = *v56;
        v57 = *(v56 + 1);
        v55 = __OFSUB__(v57, v58);
        v59 = v57 - v58;
        if (v55)
        {
          goto LABEL_106;
        }

        v55 = __OFADD__(v47, v59);
        v60 = v47 + v59;
        if (v55)
        {
          goto LABEL_108;
        }

        if (v60 >= v52)
        {
          v78 = &v42[16 * v44];
          v80 = *v78;
          v79 = *(v78 + 1);
          v55 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v55)
          {
            goto LABEL_114;
          }

          if (v47 < v81)
          {
            v44 = v41 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_51;
      }

LABEL_3:
      v8 = a3[1];
      v9 = v110;
      if (v110 >= v8)
      {
        v123 = v10;
        break;
      }
    }
  }

  v102 = *a1;
  if (!*a1)
  {
    goto LABEL_124;
  }

  sub_214F42BBC(&v123, v102, a3, a5);
  if (v6)
  {

LABEL_96:
  }

  else
  {
  }
}

uint64_t sub_214F43510(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a3 != a2)
  {
    v19 = *a4;
    v5 = (*a4 + 24 * a3);
    v6 = result - a3;
LABEL_5:
    v16 = v5;
    v17 = a3;
    v7 = (v19 + 24 * a3);
    v8 = *v7;
    v9 = v7[1];
    v15 = v6;
    while (1)
    {
      v10 = *(v5 - 3);
      v11 = *(v5 - 2);

      LOBYTE(v10) = a5(v8, v9, v10, v11);

      if ((v10 & 1) == 0)
      {
LABEL_4:
        a3 = v17 + 1;
        v5 = v16 + 3;
        v6 = v15 - 1;
        if (v17 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      v8 = *v5;
      v9 = v5[1];
      v12 = v5[2];
      *v5 = *(v5 - 3);
      v5[2] = *(v5 - 1);
      *(v5 - 2) = v9;
      *(v5 - 1) = v12;
      *(v5 - 3) = v8;
      v5 -= 3;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_214F43660(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_2150A60E0();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B50);
        v8 = sub_2150A4F50();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_214F42D68(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_214F43510(0, v4, 1, a1, a2);
  }
}

uint64_t sub_214F437CC(void **a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_214F4227C(v4);
  }

  v5 = v4[2];
  v7[0] = (v4 + 4);
  v7[1] = v5;

  sub_214F43660(v7, a2);

  *a1 = v4;
}

uint64_t sub_214F43880(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v27 = a2[1];
    v28 = *a2;
    v26 = a2[2];
    v4 = result + 48;
    v5 = MEMORY[0x277D84F90];
    v29 = *(result + 16);
    v23 = result + 48;
    do
    {
      v24 = v5;
      v6 = (v4 + 24 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= v2)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return result;
        }

        if (__OFADD__(v7, 1))
        {
          goto LABEL_24;
        }

        v30 = v7 + 1;
        v8 = *(v6 - 1);
        v9 = *v6;
        v25 = *(v6 - 2);
        swift_bridgeObjectRetain_n();

        sub_214F8558C(v28, v27, v26, v9, &v31);
        v10 = sub_214F3D904(v31, v32, v33);
        v12 = v11;

        v13 = HIBYTE(v12) & 0xF;
        if ((v12 & 0x2000000000000000) == 0)
        {
          v13 = v10 & 0xFFFFFFFFFFFFLL;
        }

        if (v13)
        {
          break;
        }

        ++v7;
        v6 += 3;
        v2 = v29;
        if (v30 == v29)
        {
          v5 = v24;
          goto LABEL_18;
        }
      }

      v31 = v25;
      v32 = v8;

      MEMORY[0x2160617E0](8250, 0xE200000000000000);
      MEMORY[0x2160617E0](v10, v12);

      v14 = v31;
      v15 = v32;
      v5 = v24;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21505F4D0(0, *(v24 + 16) + 1, 1, v24);
        v5 = result;
      }

      v2 = v29;
      v3 = v30;
      v17 = *(v5 + 16);
      v16 = *(v5 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_21505F4D0((v16 > 1), v17 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v17 + 1;
      v18 = v5 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      v4 = v23;
    }

    while (v30 != v29);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

LABEL_18:
  v31 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
  sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0);
  v19 = sub_2150A4A20();
  v21 = v20;

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {

    return 1701736302;
  }

  return v19;
}

uint64_t sub_214F43BCC(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_214F43C14(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214F43C7C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_103Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_62Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_11Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_214F43DB4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR___ICCloudSession__error);
  *(v2 + OBJC_IVAR___ICCloudSession__error) = v1;
  v4 = v1;
}

uint64_t sub_214F43DFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_65Tm(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_214F44018(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_214F4405C()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA41E18);
  v1 = __swift_project_value_buffer(v0, qword_27CA41E18);
  if (qword_280C23250 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C23258);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t ICAttachmentAudioModel.needsTranscription.getter()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 supportsGeneralASR];

  if (!v2)
  {
    return 0;
  }

  result = [v0 audioDocument];
  if (!result)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = result;
  v5 = [result isCallRecording];

  if (v5)
  {
    return 0;
  }

  v6 = v0;
  result = [v0 audioDocument];
  if (!result)
  {
    goto LABEL_26;
  }

  v7 = result;
  v8 = ICTTAudioDocument.orderedFragments.getter();

  if (v8 >> 62)
  {
LABEL_24:
    v9 = sub_2150A59D0();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  v18 = v6;
  while (v9 != v10)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x216062780](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v6 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v12 = [v11 transcript];
    v13 = [v12 allObjects];

    type metadata accessor for ICTTTranscriptSegment();
    v14 = sub_2150A4ED0();

    if (v14 >> 62)
    {
      v15 = sub_2150A59D0();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v10;
    if (!v15)
    {

      return 1;
    }
  }

  result = [v18 attachment];
  if (result)
  {
    v16 = result;

    v17 = [v16 needsTranscription];

    return v17;
  }

LABEL_27:
  __break(1u);
  return result;
}

Swift::Void __swiftcall ICAttachmentAudioModel.transformNewlyAddedMediaAttachment()()
{
  v1 = v0;
  v2 = sub_2150A3960();
  v126 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v118[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42360);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v118[-v6];
  v8 = sub_2150A3A00();
  v9 = *(v8 - 8);
  v129 = v8;
  v130 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v118[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v127 = &v118[-v14];
  MEMORY[0x28223BE20](v13);
  v128 = &v118[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v118[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v118[-v20];
  v22 = sub_2150A3750();
  v132 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v131 = &v118[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = [v1 audioDocument];
  if (!v24)
  {
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v25 = v24;
  v26 = [v24 isCallRecording];

  if (v26)
  {
    return;
  }

  v27 = [v1 attachment];
  if (!v27)
  {
    goto LABEL_54;
  }

  v28 = v27;
  v29 = [v27 media];

  if (v29)
  {
    v30 = [v29 mediaURL];

    if (v30)
    {
      sub_2150A36F0();

      v31 = v132;
      (*(v132 + 56))(v19, 0, 1, v22);
    }

    else
    {
      v31 = v132;
      (*(v132 + 56))(v19, 1, 1, v22);
    }

    sub_214F48094(v19, v21);
    if ((*(v31 + 48))(v21, 1, v22) == 1)
    {
      goto LABEL_10;
    }

    v38 = v131;
    (*(v31 + 32))(v131, v21, v22);
    v39 = [v1 attachment];
    if (v39)
    {
      v40 = v39;
      v41 = [v39 note];

      if (!v41)
      {
        (*(v31 + 8))(v38, v22);
        goto LABEL_12;
      }

      v125 = v41;
      v42 = [v1 attachment];
      if (v42)
      {
        v43 = v42;
        v44 = [v42 identifier];

        if (!v44)
        {
          (*(v31 + 8))(v38, v22);

          goto LABEL_12;
        }

        sub_2150A4AD0();
        v46 = v45;

        sub_2150A3980();
        v48 = v129;
        v47 = v130;
        if ((*(v130 + 48))(v7, 1, v129) == 1)
        {
          (*(v31 + 8))(v131, v22);

          v32 = &unk_27CA42360;
          v33 = v7;
          goto LABEL_11;
        }

        v124 = v46;
        (*(v47 + 32))(v128, v7, v48);
        v49 = [v1 attachment];
        if (v49)
        {
          v50 = v49;
          v51 = [v49 managedObjectContext];

          v123 = v51;
          v52 = v131;
          if (!v51)
          {

            (*(v130 + 8))(v128, v48);
            (*(v31 + 8))(v52, v22);
            goto LABEL_12;
          }

          v53 = sub_2150A39A0();
          v54 = [v1 bitFlippeddUUIDWithUuid_];

          sub_2150A39C0();
          sub_2150A3990();
          v55 = sub_2150A4A90();

          v56 = [v125 addAudioAttachmentWithIdentifier_];

          v57 = v56;
          v58 = [v1 attachment];
          [v57 setParentAttachment_];

          if (qword_27CA41468 != -1)
          {
            swift_once();
          }

          v59 = sub_2150A3F30();
          v60 = __swift_project_value_buffer(v59, qword_27CA41E18);
          v61 = v57;
          v121 = v60;
          v62 = sub_2150A3F10();
          v63 = sub_2150A5550();

          v64 = os_log_type_enabled(v62, v63);
          v122 = v61;
          if (v64)
          {
            v65 = swift_slowAlloc();
            v120 = swift_slowAlloc();
            aBlock[0] = v120;
            *v65 = 136315138;
            v66 = [v61 shortLoggingDescription];
            v67 = sub_2150A4AD0();
            v119 = v63;
            v69 = v68;

            v70 = sub_214F7723C(v67, v69, aBlock);

            *(v65 + 4) = v70;
            _os_log_impl(&dword_214D51000, v62, v119, "Created subattachment %s", v65, 0xCu);
            v71 = v120;
            __swift_destroy_boxed_opaque_existential_0(v120);
            MEMORY[0x216064AF0](v71, -1, -1);
            MEMORY[0x216064AF0](v65, -1, -1);
          }

          v72 = [v1 audioDocument];
          if (v72)
          {
            v73 = v72;
            type metadata accessor for ICTTAudioRecording.Fragment();
            v74 = [v73 document];

            v75 = objc_allocWithZone(swift_getObjCClassFromMetadata());
            v76 = sub_2150A39A0();
            v77 = [v75 initWithDocument:v74 identity:v76];

            _s10Foundation4DateV11NotesSharedE15defaultArgumentACvgZ_0();
            v78 = sub_2150A38F0();
            v126[1](v4, v2);
            [v77 setCreatedDate_];

            v79 = sub_2150A5350();
            v126 = v77;
            [v77 setTranscriptVersion_];

            v80 = [v1 audioDocument];
            if (v80)
            {
              v81 = v80;
              v82 = [v80 document];
              v83 = [v82 rootObject];

              if (v83)
              {
                objc_opt_self();
                v84 = swift_dynamicCastObjCClass();
                if (v84)
                {
                  v85 = [v84 fragments];
                  swift_unknownObjectRelease();
                  [v85 addObject_];
                }

                else
                {

                  swift_unknownObjectRelease();
                }
              }

              else
              {
              }

              v87 = v129;
              v86 = v130;
              (*(v130 + 16))(v12, v127, v129);
              v88 = sub_2150A3F10();
              v89 = sub_2150A5550();
              if (os_log_type_enabled(v88, v89))
              {
                v90 = swift_slowAlloc();
                v121 = swift_slowAlloc();
                aBlock[0] = v121;
                *v90 = 136315138;
                v91 = sub_2150A3990();
                v93 = v92;
                v94 = v87;
                v95 = *(v86 + 8);
                v95(v12, v94);
                v96 = sub_214F7723C(v91, v93, aBlock);

                *(v90 + 4) = v96;
                _os_log_impl(&dword_214D51000, v88, v89, "Appended fragment %s", v90, 0xCu);
                v97 = v121;
                __swift_destroy_boxed_opaque_existential_0(v121);
                MEMORY[0x216064AF0](v97, -1, -1);
                MEMORY[0x216064AF0](v90, -1, -1);
              }

              else
              {

                v98 = v87;
                v95 = *(v86 + 8);
                v95(v12, v98);
              }

              v99 = v132;
              v100 = v123;
              v101 = sub_2150A36B0();
              v102 = v122;

              [v1 setMergeableDataDirty_];
              v103 = [v1 attachment];
              if (v103)
              {
                v104 = v103;
                v105 = sub_2150A4A90();
                [v104 updateChangeCountWithReason_];

                v106 = sub_2150A4A90();
                [v102 updateChangeCountWithReason_];

                [v100 ic_save];
                if (![v1 needsTranscription])
                {

                  v117 = v129;
LABEL_52:

                  v95(v127, v117);
                  v95(v128, v117);
                  (*(v99 + 8))(v131, v22);
                  return;
                }

                if (qword_27CA417A0 != -1)
                {
                  swift_once();
                }

                swift_beginAccess();
                v107 = qword_27CA444E0;
                v108 = [v1 attachment];
                if (v108)
                {
                  v109 = v108;

                  v110 = [v109 objectID];

                  v111 = *&v107[OBJC_IVAR___ICTranscription_workerContext];
                  if (v111)
                  {
                    v112 = swift_allocObject();
                    *(v112 + 16) = v110;
                    aBlock[4] = sub_214F48104;
                    aBlock[5] = v112;
                    aBlock[0] = MEMORY[0x277D85DD0];
                    aBlock[1] = 1107296256;
                    aBlock[2] = sub_214F44018;
                    aBlock[3] = &block_descriptor_1;
                    v113 = _Block_copy(aBlock);
                    v114 = v111;
                    v115 = v110;

                    [v114 performBlock_];

                    _Block_release(v113);
                    v116 = v129;
                    v95(v127, v129);
                    v95(v128, v116);
                    (*(v132 + 8))(v131, v22);
                    return;
                  }

                  v117 = v129;
                  v99 = v132;
                  goto LABEL_52;
                }

LABEL_61:
                __break(1u);
                return;
              }

LABEL_60:
              __break(1u);
              goto LABEL_61;
            }

LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  (*(v132 + 56))(v21, 1, 1, v22);
LABEL_10:
  v32 = &qword_27CA41D40;
  v33 = v21;
LABEL_11:
  sub_214F302D4(v33, v32);
LABEL_12:
  if (qword_27CA41468 != -1)
  {
    swift_once();
  }

  v34 = sub_2150A3F30();
  __swift_project_value_buffer(v34, qword_27CA41E18);
  v35 = sub_2150A3F10();
  v36 = sub_2150A5560();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_214D51000, v35, v36, "no media URL on imported attachment", v37, 2u);
    MEMORY[0x216064AF0](v37, -1, -1);
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ICAttachmentAudioModel.createSubattachmentForRecording()(ICAttachment *__return_ptr retstr)
{
  v2 = v1;
  v3 = sub_2150A3960();
  v84 = *(v3 - 8);
  v85 = v3;
  MEMORY[0x28223BE20](v3);
  v83 = v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42360);
  MEMORY[0x28223BE20](v5 - 8);
  v87 = v79 - v6;
  v88 = sub_2150A3A00();
  v86 = *(v88 - 8);
  v7 = MEMORY[0x28223BE20](v88);
  v82 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v79 - v9;
  v11 = sub_2150A3E50();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v2 attachment];
  if (!v15)
  {
    __break(1u);
    goto LABEL_27;
  }

  v16 = v15;
  v17 = [v15 note];

  v89 = v17;
  if (!v17)
  {
LABEL_14:
    sub_214F4810C();
    swift_allocError();
    *v45 = 8;
    swift_willThrow();
    return;
  }

  v18 = [v2 attachment];
  if (!v18)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v19 = v18;
  v20 = [v18 managedObjectContext];

  if (!v20)
  {

    goto LABEL_14;
  }

  v81 = v10;
  sub_2150A3E40();
  sub_2150A3E30();
  (*(v12 + 8))(v14, v11);
  v21 = sub_2150A4A90();

  v22 = sub_2150A3790();
  v23 = sub_2150A4A90();
  v24 = [v89 addAttachmentWithUTI:v21 data:v22 filename:v23 updateFileBasedAttributes:1 analytics:1 regulatoryLogging:0];

  v25 = v24;
  v26 = [v2 attachment];
  [v25 setParentAttachment_];

  if (qword_27CA41468 != -1)
  {
    swift_once();
  }

  v27 = sub_2150A3F30();
  v28 = __swift_project_value_buffer(v27, qword_27CA41E18);
  v29 = v25;
  v79[1] = v28;
  v30 = sub_2150A3F10();
  v31 = sub_2150A5550();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v79[0] = swift_slowAlloc();
    v90 = v79[0];
    *v32 = 136315138;
    v33 = [v29 shortLoggingDescription];
    v34 = sub_2150A4AD0();
    v80 = v29;
    v36 = v35;

    v37 = sub_214F7723C(v34, v36, &v90);
    v29 = v80;

    *(v32 + 4) = v37;
    _os_log_impl(&dword_214D51000, v30, v31, "Created subattachment %s", v32, 0xCu);
    v38 = v79[0];
    __swift_destroy_boxed_opaque_existential_0(v79[0]);
    MEMORY[0x216064AF0](v38, -1, -1);
    MEMORY[0x216064AF0](v32, -1, -1);
  }

  v39 = v81;
  v40 = v87;
  v41 = [v29 identifier];
  if (!v41)
  {
    goto LABEL_12;
  }

  v42 = v41;
  sub_2150A4AD0();

  sub_2150A3980();
  v43 = v86;
  if ((*(v86 + 48))(v40, 1, v88) == 1)
  {

    sub_214F302D4(v40, &unk_27CA42360);
LABEL_12:
    sub_214F4810C();
    swift_allocError();
    *v44 = 8;
    swift_willThrow();

    return;
  }

  v80 = v29;
  (*(v43 + 32))(v39, v40, v88);
  v46 = [v2 audioDocument];
  if (!v46)
  {
    goto LABEL_28;
  }

  v47 = v46;
  type metadata accessor for ICTTAudioRecording.Fragment();
  v48 = [v47 document];

  v49 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v50 = sub_2150A39A0();
  v51 = [v49 initWithDocument:v48 identity:v50];

  v52 = v83;
  _s10Foundation4DateV11NotesSharedE15defaultArgumentACvgZ_0();
  v53 = sub_2150A38F0();
  v84[1](v52, v85);
  [v51 setCreatedDate_];

  v54 = sub_2150A5350();
  v87 = v51;
  [v51 setTranscriptVersion_];

  v55 = [v2 audioDocument];
  if (!v55)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v56 = v55;

  v57 = [v56 document];
  v58 = [v57 rootObject];

  v59 = v82;
  if (v58)
  {
    objc_opt_self();
    v60 = swift_dynamicCastObjCClass();
    v61 = v81;
    if (v60)
    {
      v62 = [v60 fragments];
      swift_unknownObjectRelease();
      [v62 addObject_];
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {

    v61 = v81;
  }

  v63 = v86;
  (*(v86 + 16))(v59, v61, v88);
  v64 = sub_2150A3F10();
  v65 = sub_2150A5550();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v85 = v2;
    v67 = v66;
    v68 = swift_slowAlloc();
    v84 = v20;
    v69 = v68;
    v90 = v68;
    *v67 = 136315138;
    sub_214F481AC(&qword_280C24850, MEMORY[0x277CC95F0]);
    v70 = sub_2150A6100();
    v71 = v63;
    v72 = v70;
    v74 = v73;
    v75 = *(v71 + 8);
    v75(v59, v88);
    v76 = sub_214F7723C(v72, v74, &v90);

    *(v67 + 4) = v76;
    _os_log_impl(&dword_214D51000, v64, v65, "Appended fragment %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v69);
    v77 = v69;
    v20 = v84;
    MEMORY[0x216064AF0](v77, -1, -1);
    v78 = v67;
    v2 = v85;
    MEMORY[0x216064AF0](v78, -1, -1);
  }

  else
  {

    v75 = *(v63 + 8);
    v75(v59, v88);
  }

  [v2 setMergeableDataDirty_];
  [v20 ic_save];

  v75(v81, v88);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ICAttachmentAudioModel.saveSummaryToAttachment(summarizationResult:)(NotesShared::SummarizationResult *summarizationResult)
{
  v2 = v1;
  v73[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  countAndFlagsBits = summarizationResult->modelVersion.value._countAndFlagsBits;
  object = summarizationResult->modelVersion.value._object;
  v10 = summarizationResult->attributionIcon.value._countAndFlagsBits;
  v11 = summarizationResult->attributionIcon.value._object;
  v12 = summarizationResult->attributionProvider.value._object;
  v69 = summarizationResult->attributionProvider.value._countAndFlagsBits;
  v70 = countAndFlagsBits;
  v71 = v12;
  v72 = object;
  if (sub_2150A4BC0() < 1)
  {
    sub_214F4810C();
    swift_allocError();
    *v25 = 9;
LABEL_49:
    swift_willThrow();
    return;
  }

  v68 = v11;
  v13 = [v2 audioDocument];
  if (!v13)
  {
    __break(1u);
    goto LABEL_51;
  }

  v14 = v13;
  v67[1] = v10;
  v15 = [v2 attachment];
  if (!v15)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v16 = v15;
  v17 = [v15 currentReplicaID];

  sub_2150A39C0();
  v18 = objc_allocWithZone(ICTTMergeableAttributedString);
  v19 = sub_2150A39A0();
  (*(v5 + 8))(v7, v4);
  v20 = [v18 initWithReplicaID_];

  v21 = [v14 document];
  v22 = [v21 rootObject];

  if (v22)
  {
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    v24 = &selRef_unregisterObserver_;
    if (!v23)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v23 = 0;
    v24 = &selRef_unregisterObserver_;
  }

  [v23 setSummary_];

  v26 = [v2 v24[458]];
  if (!v26)
  {
    goto LABEL_52;
  }

  v27 = v26;
  v28 = [v26 document];
  v29 = [v28 rootObject];

  if (v29)
  {
    objc_opt_self();
    v30 = swift_dynamicCastObjCClass();
    if (!v30)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v30 = 0;
  }

  v31 = [v30 summary];

  if (v31)
  {
    v32 = [v31 length];
    v33 = sub_2150A4A90();
    [v31 replaceCharactersInRange:0 withString:{v32, v33}];
  }

  v34 = [v2 v24[458]];
  v35 = v68;
  if (!v34)
  {
    goto LABEL_53;
  }

  v36 = v34;
  v37 = sub_2150A5350();
  v38 = [v36 document];
  v39 = [v38 rootObject];

  if (v39)
  {
    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (!v40)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v40 = 0;
  }

  [v40 setSummaryVersion_];

  v41 = [v2 v24[458]];
  if (!v41)
  {
    goto LABEL_54;
  }

  v42 = v41;
  if (v72)
  {
    v43 = sub_2150A4A90();
  }

  else
  {
    v43 = 0;
  }

  v44 = [v42 document];
  v45 = [v44 rootObject];

  if (v45)
  {
    objc_opt_self();
    v46 = swift_dynamicCastObjCClass();
    if (!v46)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v46 = 0;
  }

  [v46 setLongformSummaryModelVersionInfo_];

  v47 = [v2 v24[458]];
  if (!v47)
  {
    goto LABEL_55;
  }

  v48 = v47;
  if (v71)
  {
    v49 = sub_2150A4A90();
  }

  else
  {
    v49 = 0;
  }

  [v48 setExternalModelAttributionProviderName_];

  v50 = [v2 v24[458]];
  if (!v50)
  {
    goto LABEL_56;
  }

  v51 = v50;
  if (v35)
  {
    v52 = sub_2150A4A90();
  }

  else
  {
    v52 = 0;
  }

  [v51 setExternalModelAttributionSymbolName_];

  if (qword_27CA41468 != -1)
  {
    swift_once();
  }

  v53 = sub_2150A3F30();
  __swift_project_value_buffer(v53, qword_27CA41E18);
  v54 = v2;
  v55 = sub_2150A3F10();
  v56 = sub_2150A5550();
  if (!os_log_type_enabled(v55, v56))
  {

LABEL_46:
    v73[0] = 0;
    if ([v54 saveAttachmentAndReturnError_])
    {
      v65 = v73[0];
      return;
    }

    v66 = v73[0];
    sub_2150A35D0();

    goto LABEL_49;
  }

  v57 = swift_slowAlloc();
  v58 = swift_slowAlloc();
  v73[0] = v58;
  *v57 = 136315138;
  v59 = [v54 attachment];

  if (v59)
  {
    v60 = [v59 identifier];

    if (v60)
    {
      v61 = sub_2150A4AD0();
      v63 = v62;
    }

    else
    {
      v61 = 0;
      v63 = 0xE000000000000000;
    }

    v64 = sub_214F7723C(v61, v63, v73);

    *(v57 + 4) = v64;
    _os_log_impl(&dword_214D51000, v55, v56, "Wrote summary to attachment %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x216064AF0](v58, -1, -1);
    MEMORY[0x216064AF0](v57, -1, -1);
    goto LABEL_46;
  }

LABEL_57:
  __break(1u);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ICAttachmentAudioModel.deleteSummary()()
{
  v1 = v0;
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2150A3A00();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 audioDocument];
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [v1 attachment];
  if (!v8)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  v9 = v8;
  v10 = [v8 currentReplicaID];

  sub_2150A39C0();
  v11 = objc_allocWithZone(ICTTMergeableAttributedString);
  v12 = sub_2150A39A0();
  (*(v3 + 8))(v5, v2);
  v13 = [v11 initWithReplicaID_];

  v14 = [v7 document];
  v15 = [v14 rootObject];

  if (v15)
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (!v16)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v16 = 0;
  }

  [v16 setSummary_];

  v17 = [v1 audioDocument];
  if (!v17)
  {
    goto LABEL_14;
  }

  v18 = v17;
  [v17 setExternalModelAttributionProviderName_];

  v19 = [v1 audioDocument];
  if (!v19)
  {
    goto LABEL_15;
  }

  v20 = v19;
  [v19 setExternalModelAttributionSymbolName_];

  v23[0] = 0;
  if ([v1 saveAttachmentAndReturnError_])
  {
    v21 = v23[0];
  }

  else
  {
    v22 = v23[0];
    sub_2150A35D0();

    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ICAttachmentAudioModel.saveTopLineSummaryToAttachment(summarizationResult:)(NotesShared::SummarizationResult *summarizationResult)
{
  v3 = v1;
  v5 = sub_2150A3A00();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  countAndFlagsBits = summarizationResult->text._countAndFlagsBits;
  object = summarizationResult->text._object;
  v12 = summarizationResult->modelVersion.value._countAndFlagsBits;
  v11 = summarizationResult->modelVersion.value._object;
  if (sub_2150A4BC0() < 1)
  {
    sub_214F4810C();
    swift_allocError();
    *v26 = 9;
    swift_willThrow();
    return;
  }

  v13 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v13 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v65 = v11;
    v64[1] = v12;
    v14 = [v3 audioDocument];
    if (v14)
    {
      v15 = v14;
      v64[2] = v2;
      v16 = [v3 attachment];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 currentReplicaID];

        sub_2150A39C0();
        v19 = objc_allocWithZone(ICTTMergeableAttributedString);
        v20 = sub_2150A39A0();
        (*(v6 + 8))(v8, v5);
        v21 = [v19 initWithReplicaID_];

        v22 = [v15 document];
        v23 = [v22 rootObject];

        if (v23)
        {
          objc_opt_self();
          v24 = swift_dynamicCastObjCClass();
          v25 = &selRef_unregisterObserver_;
          if (!v24)
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v24 = 0;
          v25 = &selRef_unregisterObserver_;
        }

        [v24 setTopLineSummary_];

        v27 = [v3 v25[458]];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 document];
          v30 = [v29 rootObject];

          if (v30)
          {
            objc_opt_self();
            v31 = swift_dynamicCastObjCClass();
            v32 = v65;
            if (!v31)
            {
              swift_unknownObjectRelease();
            }
          }

          else
          {
            v31 = 0;
            v32 = v65;
          }

          v33 = [v31 topLineSummary];

          if (v33)
          {
            v34 = [v33 length];
            v35 = sub_2150A4A90();
            v36 = v34;
            v32 = v65;
            [v33 replaceCharactersInRange:0 withString:{v36, v35}];
          }

          v37 = [v3 v25[458]];
          if (v37)
          {
            v38 = v37;
            if (v32)
            {
              v39 = sub_2150A4A90();
            }

            else
            {
              v39 = 0;
            }

            v40 = [v38 document];
            v41 = [v40 rootObject];

            if (v41)
            {
              objc_opt_self();
              v42 = swift_dynamicCastObjCClass();
              if (!v42)
              {
                swift_unknownObjectRelease();
              }
            }

            else
            {
              v42 = 0;
            }

            [v42 setToplineSummaryModelVersionInfo_];

            v43 = [v3 attachment];
            if (v43)
            {
              v44 = v43;
              v45 = sub_2150A4A90();
              [v44 updateChangeCountWithReason_];

              if (qword_27CA41468 != -1)
              {
                swift_once();
              }

              v46 = sub_2150A3F30();
              __swift_project_value_buffer(v46, qword_27CA41E18);
              v47 = v3;
              v48 = sub_2150A3F10();
              v49 = sub_2150A5550();
              if (os_log_type_enabled(v48, v49))
              {
                v50 = swift_slowAlloc();
                v51 = swift_slowAlloc();
                v66 = v51;
                *v50 = 136315138;
                v52 = [v47 attachment];

                if (!v52)
                {
LABEL_50:
                  __break(1u);
                  return;
                }

                v53 = [v52 identifier];

                if (v53)
                {
                  v54 = sub_2150A4AD0();
                  v56 = v55;
                }

                else
                {
                  v54 = 0;
                  v56 = 0xE000000000000000;
                }

                v57 = sub_214F7723C(v54, v56, &v66);

                *(v50 + 4) = v57;
                _os_log_impl(&dword_214D51000, v48, v49, "Wrote top line summary to attachment %s", v50, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v51);
                MEMORY[0x216064AF0](v51, -1, -1);
                MEMORY[0x216064AF0](v50, -1, -1);
              }

              else
              {
              }

              v58 = [v47 attachment];
              if (v58)
              {
                v59 = v58;
                v60 = [v58 audioModel];

                if (v60)
                {
                  [v60 setMergeableDataDirty_];
                }

                v61 = [v47 attachment];
                if (v61)
                {
                  v62 = v61;
                  v63 = [v61 managedObjectContext];

                  [v63 ic_save];
                  return;
                }

                goto LABEL_49;
              }

LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

LABEL_45:
        __break(1u);
        goto LABEL_46;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_45;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ICAttachmentAudioModel.saveModelDataToSubattachment(transcriptSegments:fragmentUUID:retranscription:)(Swift::OpaquePointer transcriptSegments, Swift::String fragmentUUID, Swift::Bool retranscription)
{
  countAndFlagsBits = fragmentUUID._countAndFlagsBits;
  v4 = v3;
  object = fragmentUUID._object;
  v94[6] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42360);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v81 - v9;
  v11 = sub_2150A3A00();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v90 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v4 attachment];
  if (!v14)
  {
    goto LABEL_63;
  }

  v15 = v14;
  v16 = [v14 identifier];

  if (!v16)
  {
LABEL_16:
    sub_214F4810C();
    v34 = swift_allocError();
    *v35 = 7;
    v92 = v34;
    swift_willThrow();
    return;
  }

  v88 = sub_2150A4AD0();
  v18 = v17;

  sub_2150A3980();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_214F302D4(v10, &unk_27CA42360);
    goto LABEL_16;
  }

  v89 = v18;
  v19 = v90;
  (*(v12 + 32))(v90, v10, v11);
  v20 = [v4 audioDocument];
  if (v20)
  {
    v21 = v20;
    v22 = ICTTAudioDocument.fragment(for:)(v19);

    if (!v22)
    {
      (*(v12 + 8))(v19, v11);

      goto LABEL_16;
    }

    v82 = v12;
    v87 = v11;
    if (!retranscription)
    {
      goto LABEL_11;
    }

    v23 = [v22 transcript];
    v24 = [v23 count];

    if ((v24 & 0x8000000000000000) == 0)
    {
      for (; v24; --v24)
      {
        v25 = [v22 transcript];
        [v25 removeObjectAtIndex_];
      }

LABEL_11:
      v83 = object;
      v26 = *(transcriptSegments._rawValue + 2);
      if (v26)
      {
        v27 = *(type metadata accessor for TranscriptViewModelSegment(0) - 8);
        v28 = transcriptSegments._rawValue + ((*(v27 + 80) + 32) & ~*(v27 + 80));
        v29 = *(v27 + 72);
        v30 = v26;
        v31 = v92;
        v32 = v89;
        do
        {
          sub_214F47980(v28, v4, v22);
          v28 += v29;
          --v30;
        }

        while (v30);
        v92 = v31;
        v33 = sub_2150A5350();
        [v22 setTranscriptVersion_];
      }

      else
      {
        v32 = v89;
      }

      if (qword_27CA41468 != -1)
      {
        goto LABEL_61;
      }

      while (1)
      {
        v36 = sub_2150A3F30();
        __swift_project_value_buffer(v36, qword_27CA41E18);

        v37 = sub_2150A3F10();
        v38 = sub_2150A5550();

        v39 = os_log_type_enabled(v37, v38);
        v40 = v87;
        if (v39)
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v94[0] = v42;
          *v41 = 134218242;
          *(v41 + 4) = v26;

          *(v41 + 12) = 2080;
          *(v41 + 14) = sub_214F7723C(v88, v32, v94);
          _os_log_impl(&dword_214D51000, v37, v38, "Wrote %ld transcript segments to attachment %s", v41, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v42);
          v43 = v42;
          v40 = v87;
          MEMORY[0x216064AF0](v43, -1, -1);
          MEMORY[0x216064AF0](v41, -1, -1);
        }

        else
        {
        }

        v44 = [v4 attachment];
        if (!v44)
        {
          goto LABEL_65;
        }

        v45 = v44;
        v46 = [v44 subAttachments];

        if (!v46)
        {
LABEL_51:
          v71 = [v4 attachment];
          if (!v71)
          {
            goto LABEL_66;
          }

          v72 = v71;
          v73 = [v4 audioDocument];
          if (v73)
          {
            v74 = v73;

            v75 = [v74 transcriptAsPlainText];

            if (!v75)
            {
              sub_2150A4AD0();
              v75 = sub_2150A4A90();
            }

            [v72 setAdditionalIndexableText_];

            v94[0] = 0;
            if ([v4 saveAttachmentAndReturnError_])
            {
              v76 = *(v82 + 8);
              v77 = v94[0];
              v76(v90, v40);
            }

            else
            {
              v78 = v94[0];
              v79 = sub_2150A35D0();

              v92 = v79;
              swift_willThrow();

              (*(v82 + 8))(v90, v40);
            }

            return;
          }

          goto LABEL_67;
        }

        v47 = sub_214F48160();
        sub_214F481AC(&qword_27CA41E30, sub_214F48160);
        v48 = sub_2150A52E0();

        v86 = v4;
        v81[2] = v48;
        v81[3] = v47;
        if ((v48 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          sub_2150A5980();
          sub_2150A5320();
          v48 = v94[1];
          v49 = v94[2];
          v50 = v94[3];
          v26 = v94[4];
          v51 = v94[5];
        }

        else
        {
          v52 = -1 << *(v48 + 32);
          v49 = (v48 + 56);
          v50 = ~v52;
          v53 = -v52;
          v54 = v53 < 64 ? ~(-1 << v53) : -1;
          v51 = (v54 & *(v48 + 56));

          v26 = 0;
        }

        v81[1] = v50;
        v32 = (v50 + 64) >> 6;
        while (v48 < 0)
        {
          v60 = sub_2150A5A10();
          if (!v60 || (v93 = v60, swift_dynamicCast(), v59 = v94[0], v57 = v26, v58 = v51, !v94[0]))
          {
LABEL_49:
            v4 = v86;
LABEL_50:
            sub_214F420F4();

            v40 = v87;
            goto LABEL_51;
          }

LABEL_41:
          v84 = v26;
          v85 = v51;
          v61 = [v59 identifier];
          if (v61)
          {
            v62 = v61;
            v88 = v59;
            v63 = v49;
            v64 = v22;
            v65 = v48;
            v66 = sub_2150A4AD0();
            v68 = v67;

            if (v66 == countAndFlagsBits && v68 == v83)
            {

              v22 = v64;
              v59 = v88;
LABEL_59:
              sub_214F420F4();

              v80 = sub_2150A4A90();
              [v59 updateChangeCountWithReason_];

              v4 = v86;
              v40 = v87;
              goto LABEL_51;
            }

            v70 = sub_2150A6270();

            v48 = v65;
            v22 = v64;
            v49 = v63;
            v59 = v88;
            if (v70)
            {
              goto LABEL_59;
            }
          }

          v26 = v57;
          v51 = v58;
        }

        v55 = v26;
        v56 = v51;
        v57 = v26;
        v4 = v86;
        if (v51)
        {
          break;
        }

        while (1)
        {
          v57 = (v55 + 1);
          if (__OFADD__(v55, 1))
          {
            break;
          }

          if (v57 >= v32)
          {
            goto LABEL_50;
          }

          v56 = v49[v57];
          ++v55;
          if (v56)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_61:
        swift_once();
      }

LABEL_37:
      v58 = (v56 - 1) & v56;
      v59 = *(*(v48 + 48) + ((v57 << 9) | (8 * __clz(__rbit64(v56)))));
      if (!v59)
      {
        goto LABEL_49;
      }

      goto LABEL_41;
    }

    __break(1u);
LABEL_63:
    __break(1u);
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
}

void sub_214F47980(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_2150A3A00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 audioDocument];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for ICTTTranscriptSegment();
    v12 = [v11 document];

    _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
    v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v14 = sub_2150A39A0();
    v15 = [v13 initWithDocument:v12 identity:v14];

    (*(v7 + 8))(v9, v6);
    v16 = type metadata accessor for TranscriptViewModelSegment(0);
    v17 = sub_2150A4A90();
    [v15 setText_];

    v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    [v15 setTimestamp_];

    v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    [v15 setDuration_];

    if (*(a1 + v16[9] + 8))
    {
      v20 = sub_2150A4A90();
      [v15 setSpeaker_];
    }

    v21 = [a3 transcript];
    [v21 addObject_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ICAttachmentAudioModel.saveAttachment()()
{
  v1 = [v0 attachment];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 managedObjectContext];

    if (!v3)
    {
      sub_214F4810C();
      swift_allocError();
      *v7 = 7;
      swift_willThrow();
      return;
    }

    v4 = [v0 attachment];
    if (v4)
    {
      v5 = v4;
      v6 = sub_2150A4A90();
      [v5 updateChangeCountWithReason_];

      [v0 setMergeableDataDirty_];
      [v3 ic_save];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_214F47D60(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

uint64_t (*sub_214F47F8C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x216062780](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_214F481F4;
  }

  __break(1u);
  return result;
}

void (*sub_214F4800C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x216062780](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_214F4808C;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F48094(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_214F4810C()
{
  result = qword_27CA42340;
  if (!qword_27CA42340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42340);
  }

  return result;
}

unint64_t sub_214F48160()
{
  result = qword_27CA44A30;
  if (!qword_27CA44A30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA44A30);
  }

  return result;
}

uint64_t sub_214F481AC(unint64_t *a1, void (*a2)(uint64_t))
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

double NSAttributedString.height(_:)(double a1)
{
  [v1 boundingRectWithSize:3 options:0 context:{a1, 1.79769313e308}];

  return CGRectGetHeight(*&v2);
}