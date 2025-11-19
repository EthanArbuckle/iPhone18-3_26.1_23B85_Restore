unint64_t MAGAdvancedEvent.AdvancedEventType.description.getter()
{
  if (!*(v0 + 16))
  {
    return 0xD000000000000022;
  }

  if (*(v0 + 16) == 1)
  {
    return 0xD000000000000021;
  }

  if (*v0 == 0)
  {
    return 0xD00000000000001DLL;
  }

  return 0xD000000000000027;
}

unint64_t sub_257BE68CC()
{
  if (!*(v0 + 16))
  {
    return 0xD000000000000022;
  }

  if (*(v0 + 16) == 1)
  {
    return 0xD000000000000021;
  }

  if (*v0 == 0)
  {
    return 0xD00000000000001DLL;
  }

  return 0xD000000000000027;
}

uint64_t get_enum_tag_for_layout_string_16MagnifierSupport16MAGAdvancedEventV08AdvancedD4TypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_257BE698C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_257BE69D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_257BE6A18(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t MFReaderFormatterTheme.id.getter()
{
  v0 = sub_257ECCCF0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCCE0();
  v4 = sub_257ECCCA0();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_257BE6B24()
{
  v1 = *v0;
  if (v1 <= 1)
  {
    if (*v0)
    {
      [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.878431373 green:0.847058824 blue:0.784313725 alpha:1.0];
    }

    else
    {
      [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.901960784 green:0.901960784 blue:0.901960784 alpha:1.0];
    }
  }

  else
  {
    if (v1 == 2)
    {
      v2 = [objc_opt_self() darkGrayColor];
    }

    else
    {
      if (v1 != 3)
      {
        return 0;
      }

      v2 = [objc_opt_self() blackColor];
    }

    v3 = v2;
  }

  return sub_257ECED30();
}

uint64_t sub_257BE6C10()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t sub_257BE6D7C()
{
  if (*v0 != 4)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

MagnifierSupport::MFReaderFormatterTheme_optional __swiftcall MFReaderFormatterTheme.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_257ED04B0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MFReaderFormatterTheme.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6574696877;
  v3 = 2036429415;
  v4 = 0x6B63616C62;
  if (v1 != 3)
  {
    v4 = 0x6D6F74737563;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6169706573;
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

unint64_t sub_257BE6F80()
{
  result = qword_27F8F5580;
  if (!qword_27F8F5580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5580);
  }

  return result;
}

uint64_t sub_257BE6FD4()
{
  sub_257ED07B0();
  sub_257ECF5D0();

  return sub_257ED0800();
}

uint64_t sub_257BE70A0()
{
  sub_257ECF5D0();
}

uint64_t sub_257BE7158()
{
  sub_257ED07B0();
  sub_257ECF5D0();

  return sub_257ED0800();
}

void sub_257BE722C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6574696877;
  v5 = 0xE400000000000000;
  v6 = 2036429415;
  v7 = 0xE500000000000000;
  v8 = 0x6B63616C62;
  if (v2 != 3)
  {
    v8 = 0x6D6F74737563;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6169706573;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_257BE72B8()
{
  result = qword_27F8F5588;
  if (!qword_27F8F5588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F5590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5588);
  }

  return result;
}

uint64_t sub_257BE7338@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_257ECCCF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCCE0();
  v6 = sub_257ECCCA0();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return result;
}

uint64_t getEnumTagSinglePayload for MFReaderFormatterTheme(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MFReaderFormatterTheme(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_257BE7614()
{
  result = qword_27F8F5598;
  if (!qword_27F8F5598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5598);
  }

  return result;
}

id sub_257BE7668()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v3 = objc_allocWithZone(MEMORY[0x277CE4A08]);
    swift_unownedRetain();
    v4 = [v3 initWithVersion_];
    [v4 setEnableObjectTracking_];
    [v4 setEnableSegmentation_];
    [v4 setNetworkResolution_];
    [v4 setRunningFrameRate_];
    swift_unownedRelease();
    v5 = *(v0 + 64);
    *(v0 + 64) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t ANSTPersonDetectionManager.__allocating_init()()
{
  v0 = swift_allocObject();
  ANSTPersonDetectionManager.init()();
  return v0;
}

void *ANSTPersonDetectionManager.init()()
{
  v1 = v0;
  v2 = sub_257ECDA30();
  MEMORY[0x28223BE20](v2);
  v0[2] = 0;
  v0[3] = sub_257BE89DC(MEMORY[0x277D84F90]);
  v0[7] = [objc_allocWithZone(MEMORY[0x277CE6AE0]) init];
  v0[8] = 0;
  v3 = objc_allocWithZone(MEMORY[0x277CE6AE8]);
  v4 = sub_257ECF4C0();
  v5 = [v3 initWithIdentifier_];

  v1[4] = v5;
  v6 = objc_allocWithZone(MEMORY[0x277CE6AC0]);
  v7 = sub_257ECF4C0();
  v8 = [v6 initWithIdentifier_];

  v1[5] = v8;
  v9 = objc_allocWithZone(MEMORY[0x277CE6AB0]);
  v10 = sub_257ECF4C0();
  v11 = [v9 initWithIdentifier_];

  v1[6] = v11;
  [v1[4] addSourceNode_];
  [v1[4] addEvaluationNode_];
  [v1[7] setDetectFaceNames_];
  sub_257BE7A18();
  return v1;
}

void sub_257BE7A18()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = sub_257BE7668();
  v2 = [objc_allocWithZone(MEMORY[0x277CE4A00]) initWithConfiguration_];

  v3 = *(v0 + 16);
  *(v0 + 16) = v2;
  v4 = v2;

  if (v4)
  {
    v10[0] = 0;
    v5 = [v4 prepareWithError_];

    if (v5)
    {
      v6 = v10[0];
    }

    else
    {
      v7 = v10[0];
      v8 = sub_257ECC9F0();

      swift_willThrow();
      sub_257BEBEF0();
      swift_allocError();
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 12;
      *(v9 + 24) = 4;
      swift_willThrow();
    }
  }
}

void sub_257BE7B68(void *a1, __CVBuffer *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, double a9, double a10)
{
  v11 = v10;
  imageOut[1] = *MEMORY[0x277D85DE8];
  v22 = sub_257ECCB70();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [objc_opt_self() valueWithCGRect_];
  [a1 setFace_];

  CVPixelBufferLockBaseAddress(a2, 1uLL);
  imageOut[0] = 0;
  VTCreateCGImageFromCVPixelBuffer(a2, 0, imageOut);
  if (imageOut[0])
  {
    v27 = imageOut[0];
    v44.origin.x = a3;
    v44.origin.y = a4;
    v44.size.width = a5;
    v44.size.height = a6;
    v28 = CGImageCreateWithImageInRect(v27, v44);
    if (v28)
    {
      v29 = v28;
      CVPixelBufferUnlockBaseAddress(a2, 1uLL);
      v41 = objc_autoreleasePoolPush();
      v30 = [objc_opt_self() systemPhotoLibraryURL];
      v40 = v22;
      v31 = v23;
      v32 = v30;
      sub_257ECCB20();

      v39 = *(v11 + 40);
      v33 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCGImage_];
      v34 = sub_257ECCAE0();
      v35 = *(v11 + 56);
      v36 = swift_allocObject();
      *(v36 + 16) = a1;
      aBlock[4] = sub_257BEAF5C;
      aBlock[5] = v36;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257BE8054;
      aBlock[3] = &block_descriptor_3;
      v37 = _Block_copy(aBlock);
      v38 = a1;

      [v39 triggerWithImage:v33 photoLibraryURL:v34 options:v35 cacheKey:0 resultHandler:v37];
      _Block_release(v37);

      (*(v31 + 8))(v25, v40);
      objc_autoreleasePoolPop(v41);
    }
  }
}

void sub_257BE7EA4(void *a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    return;
  }

  if (!a1)
  {
    v9 = 0;
    goto LABEL_16;
  }

  v3 = a3;
  v4 = [a1 faceFeatures];
  sub_257BD2C2C(0, &qword_27F8F5730);
  v5 = sub_257ECF810();

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (!sub_257ED0210())
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x259C72E20](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;

  v8 = [v7 faceDetectionResult];

  if (v8)
  {
    v10 = [v8 name];

    v9 = v10;
    a3 = v3;
    if (!v10)
    {
      sub_257ECF500();
      v11 = sub_257ECF4C0();
LABEL_15:

      a3 = v3;
      v9 = v11;
    }
  }

  else
  {
    v9 = 0;
    a3 = v3;
  }

LABEL_16:
  v12 = v9;
  [a3 setFaceName_];
}

void sub_257BE8054(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_257ECC3F0();
  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id *ANSTPersonDetectionManager.deinit()
{

  return v0;
}

uint64_t ANSTPersonDetectionManager.__deallocating_deinit()
{
  ANSTPersonDetectionManager.deinit();

  return swift_deallocClassInstance();
}

void *sub_257BE816C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55A0);
  v3 = sub_257ED0480();
  sub_257ECC3F0();
  memcpy(__dst, a1 + 4, 0x138uLL);
  v4 = __dst[0];
  v5 = __dst[1];
  sub_257BE401C(__dst, v15, &qword_27F8F55A8);
  v6 = sub_257C03F6C(v4, v5);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = (a1 + 43);
  while (1)
  {
    *(v3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v6;
    v9 = (v3[6] + 16 * v6);
    *v9 = v4;
    v9[1] = v5;
    result = memcpy((v3[7] + 296 * v6), &__dst[2], 0x128uLL);
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

    memcpy(__dst, v8, 0x138uLL);
    v4 = __dst[0];
    v5 = __dst[1];
    sub_257BE401C(__dst, v15, &qword_27F8F55A8);
    v6 = sub_257C03F6C(v4, v5);
    v8 += 312;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_257BE82F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55D8);
  v3 = sub_257ED0480();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_257C09E78(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = sub_257C09E78(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_257BE8424(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5628);
    v3 = sub_257ED0480();
    for (i = a1 + 32; ; i += 40)
    {
      sub_257BE401C(i, v11, &qword_27F8F5630);
      v5 = v11[0];
      result = sub_257C09E78(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_257BEBE08(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_257BE8540(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55D0);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v4, &v11, &unk_27F8F5440);
      v5 = v11;
      result = sub_257C09E74(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_257BEBE08(&v12, (v3[7] + 32 * result));
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

unint64_t sub_257BE8668(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9A50);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v4, &v11, &qword_27F8F9420);
      v5 = v11;
      result = sub_257C09E74(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_257BEBE08(&v12, (v3[7] + 32 * result));
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

unint64_t sub_257BE87A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5608);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_257C03F6C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_257BE88A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56B8);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v4, v13, &unk_27F8F54A0);
      result = sub_257C03F28(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_257BEBE08(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_257BE89DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5760);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5768);
    v7 = sub_257ED0480();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_257BE401C(v9, v5, &qword_27F8F5760);
      v11 = *v5;
      result = sub_257C040A0(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_257ECCCF0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_257BE8BB8(uint64_t a1)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5758);
  v6 = sub_257ED0480();
  v7 = *(a1 + 32);
  v28 = *(a1 + 40);
  v29 = *(a1 + 56);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v10 = *(a1 + 88);
  result = sub_257C040A0(v7);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v25 = v3;

    v26 = v2;
    v27 = v1;
    return v6;
  }

  v13 = (a1 + 152);
  while (1)
  {
    *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v6[6] + 8 * result) = v7;
    v14 = v6[7] + 56 * result;
    v15 = *(&v28 + 1);
    *v14 = v28;
    *(v14 + 16) = v29;
    *(v14 + 32) = v8;
    *(v14 + 40) = v9;
    *(v14 + 48) = v10;
    v16 = v6[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v6[2] = v18;
    v2 = *(&v28 + 1);
    v3 = *(&v29 + 1);
    v1 = v29;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v19 = v13 + 8;
    v7 = *(v13 - 7);
    v28 = *(v13 - 3);
    v29 = *(v13 - 2);
    v20 = *(v13 - 2);
    v9 = *(v13 - 1);
    v10 = *v13;
    v21 = v15;
    v22 = v1;
    v23 = v3;

    result = sub_257C040A0(v7);
    v13 = v19;
    v8 = v20;
    if (v24)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_257BE8D30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5620);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_257C09E74(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_257BE8E28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55B0);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_257C09E74(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_257BE8F18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55B8);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v4, &v11, &qword_27F8F55C0);
      v5 = v11;
      result = sub_257C04110(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_257BEBE08(&v12, (v3[7] + 32 * result));
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

unint64_t sub_257BE9040(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55E0);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v4, &v13, &qword_27F8F55E8);
      v5 = v13;
      v6 = v14;
      result = sub_257C03F6C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_257BEBE08(&v15, (v3[7] + 32 * result));
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

unint64_t sub_257BE9198(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_257ED0480();
    for (i = (a1 + 36); ; i += 2)
    {
      v9 = *(i - 4);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 4 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_257BE9280(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5610);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_257C03F6C(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_257BE9394(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5708);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v4, &v11, &qword_27F8F5710);
      v5 = v11;
      result = sub_257C09E74(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_257BEBE08(&v12, (v3[7] + 32 * result));
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

unint64_t sub_257BE94BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F63F0);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v4, &v11, &qword_27F8F5718);
      v5 = v11;
      result = sub_257C09E74(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_257BEBE08(&v12, (v3[7] + 32 * result));
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

unint64_t sub_257BE95E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5660);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *i;
      v8 = v5;
      result = sub_257C04110(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      *(v3[7] + 8 * result) = v6;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_257BE96FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56F8);
    v7 = sub_257ED0480();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v9, v5, &qword_27F8F56F0);
      result = sub_257C04390(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_257ECC590();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_257BE98E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5658);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 40); ; i += 3)
    {
      v5 = *(i - 8);
      v12 = *i;
      v6 = *i;
      result = sub_257C040E4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v12;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_257BE99E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5600);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_257C09E74(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_257BE9ACC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55F0);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v4, &v11, &qword_27F8F55F8);
      v5 = v11;
      result = sub_257C09E74(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_257BEBE08(&v12, (v3[7] + 32 * result));
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

unint64_t sub_257BE9C08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56D8);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_257C04470(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_257BE9CFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56D0);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_257C03FE4(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_257BE9DF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56C0);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v4, &v11, &qword_27F8F56C8);
      v5 = v11;
      result = sub_257C09E74(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_257BEBE08(&v12, (v3[7] + 32 * result));
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

unint64_t sub_257BE9F1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56B0);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_257C09E74(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_257BEA014(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55C8);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_257C03F6C(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_257BEA118(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56A0);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v4, &v11, &qword_27F8F56A8);
      v5 = v11;
      result = sub_257C09E74(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_257BEBE08(&v12, (v3[7] + 32 * result));
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

unint64_t sub_257BEA240(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5638);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v4, v15, &qword_27F8F5640);
      result = sub_257C03F28(v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v15[0];
      v9 = v15[1];
      *(v7 + 32) = v16;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = (v3[7] + 16 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 56;
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

unint64_t sub_257BEA370(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5648);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 56); ; i += 8)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_257C03F6C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_257BEA484(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5650);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_257C0453C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_257BEA590(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5618);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_257C040E4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_257BEA698(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 48); ; i += 2)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v14 = *i;

      sub_257ECC3F0();
      result = sub_257C03F6C(v6, v7);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v4[6] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      *(v4[7] + 16 * result) = v14;
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_257BEA7AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5668);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_257C04664(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_257BEA8A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5690);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v4, &v11, &qword_27F8F5698);
      v5 = v11;
      result = sub_257C09E74(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_257BEBE08(&v12, (v3[7] + 32 * result));
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

void *sub_257BEA9CC(__CVBuffer *a1)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v2 = v1[2];
  if (!v2)
  {
    sub_257BEBEF0();
    swift_allocError();
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *v14 = 13;
    *(v14 + 24) = 4;
    swift_willThrow();
    return v1;
  }

  v38[0] = 0;
  v4 = v2;
  v5 = [v4 resultForPixelBuffer:a1 orientation:4 error:v38];
  if (!v5)
  {
    v15 = v38[0];
    v1 = sub_257ECC9F0();

    swift_willThrow();
    sub_257BEBEF0();
    swift_allocError();
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *v16 = 13;
    *(v16 + 24) = 4;
    swift_willThrow();

    return v1;
  }

  v6 = v5;
  v7 = v38[0];
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v10 = [v6 detectedObjectsForCategory_];
  if (v10)
  {
    v11 = v10;
    sub_257BD2C2C(0, &qword_27F8F5750);
    v12 = sub_257ECF810();

    if (!(v12 >> 62))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_5:
      v13 = v12 & 0xFFFFFFFFFFFFFF8;

      sub_257ED0660();
      sub_257BD2C2C(0, &qword_27F8F5740);
      if (swift_dynamicCastMetatype())
      {
      }

      else
      {
        v18 = Height;
        v19 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v19)
        {
          v36 = Width;
          v20 = v13 + 32;
          while (1)
          {
            objc_opt_self();
            if (!swift_dynamicCastObjCClass())
            {
              break;
            }

            v20 += 8;
            if (!--v19)
            {

              goto LABEL_18;
            }
          }

          v12 = v13 | 1;
LABEL_18:
          Width = v36;
        }

        else
        {
        }

        Height = v18;
      }

      goto LABEL_20;
    }
  }

  sub_257BD2C2C(0, &qword_27F8F5740);

  v17 = sub_257ED0420();
  swift_bridgeObjectRelease_n();
  v12 = v17;
LABEL_20:
  v21 = [v6 detectedObjectsForCategory_];
  if (v21)
  {
    v22 = v21;
    sub_257BD2C2C(0, &qword_27F8F5750);
    v37 = sub_257ECF810();
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  v23 = [v6 detectedObjectsForCategory_];
  if (v23)
  {
    v24 = v23;
    sub_257BD2C2C(0, &qword_27F8F5750);
    v35 = sub_257ECF810();
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

  v25 = [v6 detectedObjectsForCategory_];
  if (v25)
  {
    v26 = v25;
    sub_257BD2C2C(0, &qword_27F8F5750);
    v27 = sub_257ECF810();
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  v28 = Width;
  v29 = Height;
  if (v27 >> 62)
  {
    sub_257BD2C2C(0, &qword_27F8F5748);

    v34 = sub_257ED0420();
    swift_bridgeObjectRelease_n();
    v27 = v34;
  }

  else
  {
    v30 = v27 & 0xFFFFFFFFFFFFFF8;

    sub_257ED0660();
    sub_257BD2C2C(0, &qword_27F8F5748);
    if (swift_dynamicCastMetatype() || (v32 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_31:
    }

    else
    {
      v33 = v30 + 32;
      while (1)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          break;
        }

        v33 += 8;
        if (!--v32)
        {
          goto LABEL_31;
        }
      }

      v27 = v30 | 1;
    }
  }

  v1 = sub_257D2F07C(v12, v37, v35, v27, v28, v29);

  return v1;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

void sub_257BEAF7C(void *a1, uint64_t a2, __CVBuffer *a3)
{
  v4 = v3;
  imageOut[1] = *MEMORY[0x277D85DE8];
  v8 = sub_257ECCB70();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 8);
  if (!v13)
  {
    return;
  }

  v71 = v10;
  v15 = *(a2 + 40);
  v14 = *(a2 + 48);
  v16 = v13;
  [a1 screenRect];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  CGAffineTransformMakeScale(&aBlock, v15, v14);
  v74.origin.x = v18;
  v74.origin.y = v20;
  v74.size.width = v22;
  v74.size.height = v24;
  v75 = CGRectApplyAffineTransform(v74, &aBlock);
  x = v75.origin.x;
  y = v75.origin.y;
  width = v75.size.width;
  height = v75.size.height;
  v29 = v16;
  [v29 boundingBox];
  v85.origin.x = x;
  v85.origin.y = y;
  v85.size.width = width;
  v85.size.height = height;
  v77 = CGRectIntersection(v76, v85);
  v30 = v77.origin.x;
  v31 = v77.origin.y;
  v32 = v77.size.width;
  v33 = v77.size.height;
  v78 = CGRectStandardize(v77);
  v34 = v78.size.height;
  v78.origin.x = v30;
  v78.origin.y = v31;
  v78.size.width = v32;
  v78.size.height = v33;
  v79 = CGRectStandardize(v78);
  v35 = v34 * v79.size.width;
  [v29 boundingBox];
  v36 = v80.origin.x;
  v37 = v80.origin.y;
  v38 = v80.size.width;
  v39 = v80.size.height;
  v81 = CGRectStandardize(v80);
  v40 = v81.size.height;
  v81.origin.x = v36;
  v81.origin.y = v37;
  v81.size.width = v38;
  v81.size.height = v39;
  v82 = CGRectStandardize(v81);
  if (v35 / (v40 * v82.size.width) <= 0.75)
  {

    return;
  }

  [v29 boundingBox];
  if (v15 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_18;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  if (v14 >= 9.22337204e18)
  {
    goto LABEL_20;
  }

  v83 = VNNormalizedRectForImageRect(*&v41, v15, v14);
  v45 = v83.origin.x;
  v46 = v83.origin.y;
  v47 = v83.size.width;
  v48 = v83.size.height;
  [v29 boundingBox];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;

  v57 = [objc_opt_self() valueWithCGRect_];
  [a1 setFace_];

  CVPixelBufferLockBaseAddress(a3, 1uLL);
  imageOut[0] = 0;
  VTCreateCGImageFromCVPixelBuffer(a3, 0, imageOut);
  if (imageOut[0])
  {
    v58 = imageOut[0];
    v84.origin.x = v50;
    v84.origin.y = v52;
    v84.size.width = v54;
    v84.size.height = v56;
    v59 = CGImageCreateWithImageInRect(v58, v84);
    if (v59)
    {
      v60 = v59;
      CVPixelBufferUnlockBaseAddress(a3, 1uLL);
      v70 = objc_autoreleasePoolPush();
      v61 = [objc_opt_self() systemPhotoLibraryURL];
      sub_257ECCB20();

      v69 = *(v4 + 40);
      v62 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCGImage_];
      v63 = sub_257ECCAE0();
      v68 = *(v4 + 56);
      v64 = swift_allocObject();
      *(v64 + 16) = a1;
      *&aBlock.tx = sub_257BEBF48;
      *&aBlock.ty = v64;
      *&aBlock.a = MEMORY[0x277D85DD0];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_257BE8054;
      *&aBlock.d = &block_descriptor_17;
      v65 = v58;
      v66 = _Block_copy(&aBlock);
      v67 = a1;

      [v69 triggerWithImage:v62 photoLibraryURL:v63 options:v68 cacheKey:0 resultHandler:v66];
      _Block_release(v66);

      (*(v9 + 8))(v12, v71);
      objc_autoreleasePoolPop(v70);
    }

    else
    {
    }
  }
}

uint64_t sub_257BEB4A0(unint64_t a1, uint64_t a2, __CVBuffer *a3)
{
  v103 = a3;
  v5 = sub_257ECCCF0();
  v98 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v95 = v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5728);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v105 = v94 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v94 - v13;
  v104 = sub_257BE89DC(MEMORY[0x277D84F90]);
  v124 = a2;
  v125 = v104;
  if (a1 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
  {
    v112 = a1 & 0xC000000000000001;
    v100 = a1 & 0xFFFFFFFFFFFFFF8;
    v99 = a1 + 32;
    v109 = (v98 + 56);
    v97 = v98 + 16;
    v101 = (v98 + 48);
    v96 = (v98 + 32);
    v94[1] = v98 + 8;

    v16 = 0;
    v108 = v10;
    v102 = v14;
    v14 = MEMORY[0x277D84F90];
    v107 = a1;
    v106 = v5;
    v111 = i;
    while (1)
    {
      if (v112)
      {
        v17 = MEMORY[0x259C72E20](v16, a1);
      }

      else
      {
        if (v16 >= *(v100 + 16))
        {
          goto LABEL_47;
        }

        v17 = *(v99 + 8 * v16);
      }

      v114 = v17;
      v18 = __OFADD__(v16, 1);
      v19 = v16 + 1;
      if (v18)
      {
        break;
      }

      v113 = v19;
      v20 = v124;
      v21 = *(v124 + 16);
      if (v21)
      {
        v123 = v14;
        sub_257BF2724(0, v21, 0);
        v14 = v123;
        v22 = (v20 + 80);
        do
        {
          v24 = *(v22 - 5);
          v23 = *(v22 - 4);
          v25 = *(v22 - 3);
          v26 = *(v22 - 1);
          v27 = *v22;
          v28 = v25;

          v29 = v24;
          v30 = v23;
          [v114 screenRect];
          v32 = v31;
          v34 = v33;
          v36 = v35;
          v38 = v37;
          CGAffineTransformMakeScale(&v121, v26, v27);
          v126.origin.x = v32;
          v126.origin.y = v34;
          v126.size.width = v36;
          v126.size.height = v38;
          v127 = CGRectApplyAffineTransform(v126, &v121);
          x = v127.origin.x;
          y = v127.origin.y;
          width = v127.size.width;
          height = v127.size.height;
          v43 = v30;
          if (v23 || (v43 = v28, v25))
          {
            [v43 boundingBox];
            v45 = v44;
            v47 = v46;
            v49 = v48;
            v51 = v50;
          }

          else
          {
            v45 = 0.0;
            v47 = 0.0;
            v49 = 0.0;
            v51 = 0.0;
          }

          v128.origin.x = x;
          v128.origin.y = y;
          v128.size.width = width;
          v128.size.height = height;
          v135.origin.x = v45;
          v135.origin.y = v47;
          v135.size.width = v49;
          v135.size.height = v51;
          v129 = CGRectIntersection(v128, v135);
          v117 = x;
          v52 = v129.origin.x;
          v116 = y;
          v53 = v129.origin.y;
          v118 = height;
          v115 = width;
          v54 = v129.size.width;
          v55 = v129.size.height;
          v130 = CGRectStandardize(v129);
          v120 = v130.size.height;
          v130.origin.x = v52;
          v130.origin.y = v53;
          v130.size.width = v54;
          v130.size.height = v55;
          v131 = CGRectStandardize(v130);
          v119 = v131.size.width;
          v131.origin.x = v117;
          v131.origin.y = v116;
          v131.size.width = v115;
          v131.size.height = v118;
          v136.origin.x = v45;
          v136.origin.y = v47;
          v136.size.width = v49;
          v136.size.height = v51;
          v132 = CGRectUnion(v131, v136);
          v56 = v132.origin.x;
          v57 = v132.origin.y;
          v58 = v132.size.width;
          v59 = v132.size.height;
          v133 = CGRectStandardize(v132);
          v60 = v133.size.height;
          v133.origin.x = v56;
          v133.origin.y = v57;
          v133.size.width = v58;
          v133.size.height = v59;
          v134 = CGRectStandardize(v133);
          v61 = v134.size.width;

          v123 = v14;
          v63 = *(v14 + 2);
          v62 = *(v14 + 3);
          v64 = v63 + 1;
          if (v63 >= v62 >> 1)
          {
            sub_257BF2724((v62 > 1), v63 + 1, 1);
            v14 = v123;
          }

          v65 = v120 * v119 / (v60 * v61);
          *(v14 + 2) = v64;
          *&v14[8 * v63 + 32] = v65;
          v22 += 7;
          --v21;
        }

        while (v21);
        a1 = v107;
        v5 = v106;
        v10 = v108;
LABEL_23:
        v66 = 0;
        v67 = 0;
        v68 = v14 + 32;
        do
        {
          if (v66 >= v64)
          {
            __break(1u);
            goto LABEL_45;
          }

          if (*&v68[8 * v66] < *&v14[8 * v67 + 32])
          {
            v66 = v67;
          }

          ++v67;
        }

        while (v64 != v67);
        if (v66 >= v64)
        {
          goto LABEL_46;
        }

        v69 = *&v68[8 * v66];

        if (v69 <= 0.5)
        {
        }

        else
        {
          sub_257C1C904(v66, &v121);
          a = v121.a;
          b = v121.b;
          c = v121.c;
          d = v121.d;
          tx = v121.tx;
          ty = v121.ty;
          v76 = v122;
          v77 = *(v110 + 24);
          if (*(v77 + 16) && (v78 = sub_257C040A0(*&v121.a), (v79 & 1) != 0))
          {
            (*(v98 + 16))(v105, *(v77 + 56) + *(v98 + 72) * v78, v5);
            v80 = 0;
          }

          else
          {
            v80 = 1;
          }

          v81 = *v109;
          v82 = v105;
          (*v109)(v105, v80, 1, v5);
          sub_257BEBE18(v82, v10);
          if ((*v101)(v10, 1, v5) == 1)
          {
            v83 = v102;
            sub_257ECCCE0();
            sub_257BEBE88(v10);
          }

          else
          {
            v83 = v102;
            (*v96)(v102, v10, v5);
          }

          v81(v83, 0, 1, v5);
          sub_257CB9E30(v83, *&a);
          v84 = v125;
          v85 = *(v125 + 16);
          v104 = v125;
          if (v85 && (v86 = sub_257C040A0(*&a), (v87 & 1) != 0))
          {
            v88 = v98;
            v89 = v95;
            (*(v98 + 16))(v95, *(v84 + 56) + *(v98 + 72) * v86, v5);
            v90 = sub_257ECCCB0();
            v91 = *(v88 + 8);
            v10 = v108;
            v91(v89, v5);
          }

          else
          {
            v90 = 0;
          }

          v92 = v114;
          [v114 setUuid_];

          v121.a = a;
          v121.b = b;
          v121.c = c;
          v121.d = d;
          v121.tx = tx;
          v121.ty = ty;
          v122 = v76;
          sub_257BEAF7C(v92, &v121, v103);
        }

        v14 = MEMORY[0x277D84F90];
        goto LABEL_6;
      }

      v64 = *(v14 + 2);
      if (v64)
      {
        goto LABEL_23;
      }

LABEL_6:
      v16 = v113;
      if (v113 == v111)
      {
        goto LABEL_50;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

LABEL_50:

  *(v110 + 24) = v104;
}

_OWORD *sub_257BEBE08(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_257BEBE18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5728);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257BEBE88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5728);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_257BEBEF0()
{
  result = qword_27F8F5738;
  if (!qword_27F8F5738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5738);
  }

  return result;
}

uint64_t sub_257BEBF50(_OWORD *a1, uint64_t a2)
{
  *(v2 + 360) = a2;
  v4 = sub_257ECDA30();
  *(v2 + 368) = v4;
  *(v2 + 376) = *(v4 - 8);
  *(v2 + 384) = swift_task_alloc();
  *(v2 + 392) = swift_task_alloc();
  v5 = sub_257ECF120();
  *(v2 + 400) = v5;
  *(v2 + 408) = *(v5 - 8);
  *(v2 + 416) = swift_task_alloc();
  v6 = sub_257ECF190();
  *(v2 + 424) = v6;
  *(v2 + 432) = *(v6 - 8);
  *(v2 + 440) = swift_task_alloc();
  *(v2 + 448) = *a1;
  sub_257ECF900();
  *(v2 + 464) = sub_257ECF8F0();
  v8 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257BEC114, v8, v7);
}

uint64_t sub_257BEC114()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_73;
  }

  v2 = Strong;
  v3 = *(v0 + 448);
  if (!(v3 >> 62))
  {
    v6 = *(v0 + 456);
    if (v3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 320) = v6;
      sub_257BEE3F8(v3, v6);
      v7 = v2;
      sub_257BEE3F8(v3, v6);
      sub_257ECDD70();
      v7[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureAttemptDidSucceed] = 1;
      sub_257DFF708();
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureAttemptDidSucceed) = 0;
      v13 = v6;
      sub_257DFF708();
      sub_257DFF9F8(0);
    }

    sub_257BEE3D0(*(v0 + 448), *(v0 + 456));
    v14 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService];

    v14[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_isCapturingPhoto] = 0;
    goto LABEL_73;
  }

  if (v3 >> 62 == 1)
  {
    v4 = v3 & 0x3FFFFFFFFFFFFFFFLL;
    v5 = qword_281544FE0;
    sub_257ECC3F0();
    if (v5 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (*(v0 + 472) & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (*(v0 + 473)))
    {
      sub_257BEE3D0(*(v0 + 448), *(v0 + 456));

      goto LABEL_73;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (*(v0 + 474) == 1)
    {
      v24 = *(v0 + 448);
      v77 = *(v0 + 456);
      v25 = *(v0 + 440);
      v26 = *(v0 + 416);
      v79 = *(v0 + 432);
      v81 = *(v0 + 424);
      v27 = *(v0 + 400);
      v28 = *(v0 + 408);
      sub_257BD52CC();
      v78 = sub_257ECFD30();
      v29 = swift_allocObject();
      *(v29 + 16) = v2;
      *(v29 + 24) = v4;
      *(v0 + 144) = sub_257BEE3F0;
      *(v0 + 152) = v29;
      *(v0 + 112) = MEMORY[0x277D85DD0];
      *(v0 + 120) = 1107296256;
      *(v0 + 128) = sub_257D231C0;
      *(v0 + 136) = &block_descriptor_35;
      v30 = _Block_copy((v0 + 112));
      v31 = v2;
      sub_257BEE3F8(v24, v77);

      sub_257ECF150();
      *(v0 + 312) = MEMORY[0x277D84F90];
      sub_257BD5668();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
      sub_257BD56C0();
      sub_257ED0180();
      MEMORY[0x259C72880](0, v25, v26, v30);
      _Block_release(v30);

      (*(v28 + 8))(v26, v27);
      (*(v79 + 8))(v25, v81);
    }

    v33 = *(v0 + 448);
    v32 = *(v0 + 456);
    v34 = CMSampleBufferGetImageBuffer(*(v4 + 16));
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 304) = v34;
    sub_257ECC3F0();
    v35 = v34;
    sub_257ECDD70();
    sub_257BEE3D0(v33, v32);
    goto LABEL_66;
  }

  v8 = *(v0 + 456);
  if (v3 > 0x800000000000000FLL)
  {
    if (v3 > 0x8000000000000017)
    {
      if (v3 ^ 0x8000000000000018 | v8)
      {
        if (!(v3 ^ 0x8000000000000019 | v8))
        {
          v9 = objc_opt_self();
          v10 = swift_allocObject();
          *(v10 + 16) = v2;
          *(v0 + 96) = sub_257BEE3C0;
          *(v0 + 104) = v10;
          *(v0 + 64) = MEMORY[0x277D85DD0];
          *(v0 + 72) = 1107296256;
          *(v0 + 80) = sub_257D231C0;
          *(v0 + 88) = &block_descriptor_6_1;
          v11 = _Block_copy((v0 + 64));
          v12 = v2;

          [v9 animateWithDuration:v11 animations:0 completion:0.2];

          _Block_release(v11);
          goto LABEL_73;
        }

        v62 = objc_opt_self();
        v63 = swift_allocObject();
        *(v63 + 16) = v2;
        *(v0 + 48) = sub_257BEE3A0;
        *(v0 + 56) = v63;
        *(v0 + 16) = MEMORY[0x277D85DD0];
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = sub_257D231C0;
        *(v0 + 40) = &block_descriptor_4;
        v64 = _Block_copy((v0 + 16));
        v2 = v2;

        [v62 animateWithDuration:v64 animations:0 completion:0.2];
        _Block_release(v64);
        v65 = sub_257DFF3FC();
        v66 = *&v65[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction];
        v67 = v66;

        if (v66)
        {
          v68 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController];
          v69 = sub_257D832B0();

          [v69 addInteraction_];
        }

        sub_257E071A8();
        v70 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton];
        if (sub_257E08680())
        {
          v71 = 1.0;
        }

        else
        {
          v71 = 0.0;
        }

        [v70 setAlpha_];

        v72 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton];
        if (v72)
        {
          v35 = v72;
          if (sub_257E08680())
          {
            v73 = 1.0;
          }

          else
          {
            v73 = 0.0;
          }

          [(__CVBuffer *)v35 setAlpha:v73];
LABEL_66:

          goto LABEL_73;
        }

        goto LABEL_67;
      }

      sub_257ECD410();
      v46 = sub_257ECDA20();
      v47 = sub_257ECFBD0();
      v48 = os_log_type_enabled(v46, v47);
      v50 = *(v0 + 376);
      v49 = *(v0 + 384);
      v51 = *(v0 + 368);
      if (v48)
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        v53 = "Capture Session Controls Became Inactive";
LABEL_70:
        _os_log_impl(&dword_257BAC000, v46, v47, v53, v52, 2u);
        MEMORY[0x259C74820](v52, -1, -1);

LABEL_72:
        (*(v50 + 8))(v49, v51);
        goto LABEL_73;
      }

      goto LABEL_71;
    }

    if (v3 ^ 0x8000000000000010 | v8)
    {
      sub_257ECD410();
      v46 = sub_257ECDA20();
      v47 = sub_257ECFBD0();
      v74 = os_log_type_enabled(v46, v47);
      v49 = *(v0 + 392);
      v51 = *(v0 + 368);
      v50 = *(v0 + 376);
      if (v74)
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        v53 = "Capture Session Controls Became Active";
        goto LABEL_70;
      }

LABEL_71:

      goto LABEL_72;
    }

    if (![*(*(Strong + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService) + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession) isInterrupted])
    {
      v36 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService];
      v37 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
      swift_beginAccess();
      if (!*(v36 + v37) || *(v36 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSessionIsInterrupted) != 1)
      {
        v38 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_sceneEventAnimator];
        if (!v38 || ![v38 isRunning])
        {
          v39 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton];
          if (sub_257E08680())
          {
            v40 = 1.0;
          }

          else
          {
            v40 = 0.0;
          }

          [v39 setAlpha_];

          v41 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton];
          if (v41)
          {
            v42 = v41;
            if (sub_257E08680())
            {
              v43 = 1.0;
            }

            else
            {
              v43 = 0.0;
            }

            [v42 setAlpha_];
          }

          v44 = swift_allocObject();
          *(v44 + 16) = v2;
          v45 = v2;
          sub_257E10748(1, sub_257BEE3C8, v44, 0.0);

          goto LABEL_73;
        }
      }
    }

LABEL_67:

    goto LABEL_73;
  }

  if (v3 > 0x8000000000000007)
  {
    if (!(v3 ^ 0x8000000000000008 | v8))
    {
      sub_257D43868();

      goto LABEL_73;
    }

    if (qword_27F8F4668 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D88 == 1)
    {
      sub_257E10374(0, 0, 0);
    }

    goto LABEL_67;
  }

  if (v3 ^ 0x8000000000000000 | v8)
  {
    v55 = *(v0 + 432);
    v54 = *(v0 + 440);
    v56 = *(v0 + 416);
    v82 = *(v0 + 424);
    v57 = *(v0 + 400);
    v58 = *(v0 + 408);
    sub_257BD52CC();
    v80 = sub_257ECFD30();
    v59 = swift_allocObject();
    *(v59 + 16) = v2;
    *(v0 + 192) = sub_257BEE418;
    *(v0 + 200) = v59;
    *(v0 + 160) = MEMORY[0x277D85DD0];
    *(v0 + 168) = 1107296256;
    *(v0 + 176) = sub_257D231C0;
    *(v0 + 184) = &block_descriptor_47;
    v60 = _Block_copy((v0 + 160));
    v61 = v2;

    sub_257ECF150();
    *(v0 + 328) = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD56C0();
    sub_257ED0180();
    MEMORY[0x259C72880](0, v54, v56, v60);
    _Block_release(v60);

    (*(v58 + 8))(v56, v57);
    (*(v55 + 8))(v54, v82);
    goto LABEL_73;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD60();

  v15 = *(v0 + 336);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 344) = v15;
  sub_257ECDD70();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v16 = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v17 = *(v0 + 475);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v18 = *(v0 + 476);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v17 != 1)
  {
    goto LABEL_67;
  }

  if (v18)
  {
    goto LABEL_67;
  }

  if (*(v0 + 477))
  {
    goto LABEL_67;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v19 = *(v0 + 352);
  if (!v19)
  {
    goto LABEL_67;
  }

  v20 = v16 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__flashlightPercentage;
  swift_beginAccess();
  v21 = *(v20 + 8);
  v22 = *(v20 + 16);
  *(v0 + 280) = *v20;
  *(v0 + 288) = v21;
  *(v0 + 296) = v22;
  v23 = qword_2815447E0;

  if (v23 != -1)
  {
    swift_once();
  }

  *(swift_task_alloc() + 16) = v0 + 280;
  sub_257ECFD50();

  sub_257D32D68(*(v0 + 300));

LABEL_73:

  v75 = *(v0 + 8);

  return v75();
}

void sub_257BED090(void *a1)
{
  v2 = sub_257DFF59C();
  v3 = [v2 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    [v4 setAutomaticallyDimsOverCaptureRegion_];

    [v5 setOpacity_];
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    aBlock[4] = sub_257BEE43C;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_77;
    v8 = _Block_copy(aBlock);
    v9 = a1;

    [v6 animateWithDuration:v8 animations:0.2];
    _Block_release(v8);
  }

  else
  {

    sub_257ED0410();
    __break(1u);
  }
}

void sub_257BED23C()
{
  v0 = sub_257DFF59C();
  v4 = [v0 layer];
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    [v1 setAutomaticallyDimsOverCaptureRegion_];

    LODWORD(v3) = 1.0;
    [v2 setOpacity_];
  }

  else
  {

    sub_257ED0410();
    __break(1u);
  }
}

uint64_t sub_257BED334(uint64_t a1, uint64_t a2)
{
  v3 = sub_257ECDA30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  v8 = sub_257E2960C(v7);

  if (v8)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v13[1] = v8;
    sub_257ECC3F0();
    return sub_257ECDD70();
  }

  else
  {
    sub_257ECD410();
    v10 = sub_257ECDA20();
    v11 = sub_257ECFBD0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = 55;
      _os_log_impl(&dword_257BAC000, v10, v11, "%ld NO SAMPLE IMAGE", v12, 0xCu);
      MEMORY[0x259C74820](v12, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_257BED518(uint64_t a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257ECF190();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECF1B0();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v17 = &v37 - v15;
  if (qword_281544FE0 != -1)
  {
    v44 = a1;
    v34 = result;
    v35 = &v37 - v15;
    v36 = v16;
    swift_once();
    v16 = v36;
    v17 = v35;
    result = v34;
    a1 = v44;
  }

  if (*(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_launchedReaderFromShortcut) == 1)
  {
    v38 = v5;
    v39 = v2;
    v40 = v16;
    v41 = result;
    v42 = v7;
    v43 = v6;
    v44 = v3;
    v18 = a1;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 0;
    sub_257ECC3F0();
    sub_257ECDD70();
    v19 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController;
    v20 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController);
    if (v20)
    {
      v21 = v20;
      [v21 willMoveToParentViewController_];
      v37 = objc_opt_self();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      v49 = sub_257BEE444;
      v50 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v46 = 1107296256;
      v47 = sub_257D231C0;
      v48 = &block_descriptor_98;
      v23 = _Block_copy(&aBlock);
      v24 = v21;

      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      v49 = sub_257BEE44C;
      v50 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v46 = 1107296256;
      v47 = sub_257DFE438;
      v48 = &block_descriptor_104;
      v26 = _Block_copy(&aBlock);
      v27 = v24;

      [v37 animateWithDuration:0x20000 delay:v23 options:v26 animations:0.25 completion:0.0];
      _Block_release(v26);
      _Block_release(v23);

      v28 = *(v18 + v19);
      *(v18 + v19) = 0;
    }

    sub_257BD52CC();
    v29 = sub_257ECFD30();
    sub_257ECF1A0();
    sub_257ECF220();
    v30 = v41;
    v40 = *(v40 + 8);
    (v40)(v13, v41);
    v49 = sub_257BEDAC8;
    v50 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_257D231C0;
    v48 = &block_descriptor_92;
    v31 = _Block_copy(&aBlock);
    sub_257ECF150();
    aBlock = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD56C0();
    v33 = v38;
    v32 = v39;
    sub_257ED0180();
    MEMORY[0x259C727E0](v17, v9, v33, v31);
    _Block_release(v31);

    (*(v44 + 8))(v33, v32);
    (*(v42 + 8))(v9, v43);
    return (v40)(v17, v30);
  }

  return result;
}

uint64_t sub_257BEDAC8()
{
  if (qword_281544FE0 != -1)
  {
    result = swift_once();
  }

  *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_launchedReaderFromShortcut) = 0;
  return result;
}

void sub_257BEDB24(uint64_t a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v40[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v6 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cardPosition;
  swift_beginAccess();
  v41 = 0;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v7 = sub_257ECF110();
  MEMORY[0x28223BE20](v7);
  *&v40[-16] = &v41;
  *&v40[-8] = v6;
  sub_257ECFD40();
  (*(v3 + 8))(v5, v2);
  swift_endAccess();
  v8 = sub_257DFF054();
  v9 = [v8 view];
  if (v9)
  {
    v10 = v9;
    [v9 setAlpha_];

    v11 = [v8 view];
    if (v11)
    {
      type metadata accessor for MFPassthroughView();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        *(v12 + OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_enabled) = 0;
      }
    }

    v13 = *(*(*(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController) + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_grabberView);
    sub_257C8105C();

    sub_257DFD6C4();
    v14 = sub_257DFF3FC();
    v15 = sub_257D83270();

    v16 = [v15 contextMenuInteraction];
    [v16 dismissMenu];

    v17 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController;
    v18 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController);
    v19 = sub_257D83290();

    v20 = [v19 contextMenuInteraction];
    [v20 dismissMenu];

    v21 = *(a1 + v17);
    v22 = *&v21[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction];
    if (v22)
    {
      v23 = v22;
      v24 = v21;
      v25 = sub_257D832B0();

      [v25 removeInteraction_];
      v26 = *(a1 + v17);
      v27 = sub_257D832B0();

      [v27 setAccessibilityCustomActions_];
    }

    v28 = sub_257DFEF64();
    v29 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
    swift_beginAccess();
    v30 = *&v28[v29];
    if (*(v30 + 16) && (v31 = sub_257C040E4(7), (v32 & 1) != 0))
    {
      v33 = *(*(v30 + 56) + 16 * v31);
      swift_endAccess();
      v34 = v33;

      type metadata accessor for MenuButton();
      v35 = swift_dynamicCastClass();
      if (v35)
      {
        v36 = v34;
        v37 = sub_257CF98BC();

        v28 = [v37 contextMenuInteraction];
        [v28 dismissMenu];
      }

      else
      {
        v28 = v34;
      }
    }

    else
    {
      swift_endAccess();
      v35 = 0;
    }

    sub_257E071A8();
    [*(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton) setAlpha_];
    v38 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton);
    if (v38)
    {
      v39 = v38;
      [v39 setAlpha_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_257BEE008(uint64_t a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v6 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cardPosition;
  swift_beginAccess();
  v15 = 0;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v7 = sub_257ECF110();
  MEMORY[0x28223BE20](v7);
  *&v14[-16] = &v15;
  *&v14[-8] = v6;
  sub_257ECFD40();
  (*(v3 + 8))(v5, v2);
  swift_endAccess();
  v8 = sub_257DFF054();
  v9 = [v8 view];
  if (v9)
  {
    v10 = v9;
    [v9 setAlpha_];

    v11 = [v8 view];
    if (v11)
    {
      type metadata accessor for MFPassthroughView();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        *(v12 + OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_enabled) = 1;
      }
    }

    v13 = *(*(*(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController) + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_grabberView);
    sub_257C8105C();

    sub_257DFD6C4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_257BEE2AC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257BEE32C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

void sub_257BEE3D0(unint64_t a1, void *a2)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }
}

unint64_t sub_257BEE3F8(unint64_t result, void *a2)
{
  if (result >> 62 == 1)
  {
    return sub_257ECC3F0();
  }

  if (!(result >> 62))
  {
    return a2;
  }

  return result;
}

uint64_t sub_257BEE4C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F57D0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5788);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED6D30;
  v7 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v8 = v7;
  sub_257BF2B04(inited);
  swift_setDeallocating();
  sub_257BF32AC(inited + 32);
  sub_257ECCAA0();

  v9 = sub_257ECC930();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v5, 0, 1, v9);
  sub_257BF3B00(v5, v3);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    sub_257BE4084(v5, &unk_27F8F57D0);
    sub_257BE4084(v3, &unk_27F8F57D0);
    return 0;
  }

  else
  {
    v12 = sub_257ECC920();
    sub_257BE4084(v5, &unk_27F8F57D0);
    (*(v10 + 8))(v3, v9);
    return v12;
  }
}

uint64_t sub_257BEE7A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = sub_257ECCB70();
  return (*(*(v6 - 8) + 16))(a3, v4 + v5, v6);
}

uint64_t sub_257BEE82C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_257ECCB70();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v12 = *a2;
  v13 = *a5;
  swift_beginAccess();
  (*(v9 + 40))(v12 + v13, v11, v8);
  return swift_endAccess();
}

uint64_t sub_257BEE950@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = sub_257ECCB70();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_257BEE9E0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = sub_257ECCB70();
  (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t MagnifierStillImageStore.__allocating_init(captureService:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MagnifierStillImageStore.init(captureService:)(a1);
  return v2;
}

uint64_t MagnifierStillImageStore.init(captureService:)(uint64_t a1)
{
  v2 = v1;
  v49[3] = *MEMORY[0x277D85DE8];
  v4 = sub_257ECCB70();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = [objc_opt_self() defaultManager];
  v49[0] = 0;
  v12 = [v11 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:v49];
  v13 = v49[0];
  if (v12)
  {
    v14 = v12;
    v42 = a1;
    v43 = v11;
    sub_257ECCB20();
    v15 = v13;

    swift_beginAccess();
    if (qword_27F8FA070)
    {
      sub_257ECC3F0();
      sub_257ECD710();

      (*(v5 + 8))(v10, v4);
      (*(v5 + 32))(v10, v8, v4);
    }

    v45 = v10;
    sub_257ECCB00();
    v16 = OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_imageDirectory;
    v17 = *(v5 + 32);
    v41 = v5 + 32;
    v40 = v17;
    v17(v2 + OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_imageDirectory, v8, v4);
    swift_beginAccess();
    v44 = *(v5 + 16);
    v44(v8, v2 + v16, v4);
    sub_257ECCB50();
    v18 = *(v5 + 8);
    v18(v8, v4);
    v19 = sub_257ECF4C0();

    v20 = v43;
    v21 = [v43 fileExistsAtPath_];

    if ((v21 & 1) == 0)
    {
      v38 = v2;
      v44(v8, v2 + v16, v4);
      v22 = sub_257ECCAE0();
      v37 = v4;
      v39 = v5 + 8;
      v18(v8, v4);
      v48[0] = 0;
      v23 = [v20 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:v48];

      if (!v23)
      {
        v33 = v48[0];
        sub_257ECC9F0();

        swift_willThrow();
        v18(v45, v37);
        goto LABEL_14;
      }

      v24 = v48[0];
      v20 = v43;
      v2 = v38;
      v4 = v37;
    }

    sub_257ECCB00();
    v25 = OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_thumbnailDirectory;
    v40(v2 + OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_thumbnailDirectory, v8, v4);
    swift_beginAccess();
    v44(v8, v2 + v25, v4);
    sub_257ECCB50();
    v18(v8, v4);
    v26 = sub_257ECF4C0();

    v27 = [v20 fileExistsAtPath_];

    if (v27)
    {
LABEL_10:
      v18(v45, v4);

      *(v2 + OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_captureService) = v42;
      return v2;
    }

    v44(v8, v2 + v25, v4);
    v28 = sub_257ECCAE0();
    v18(v8, v4);
    v46 = 0;
    v29 = [v20 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:&v46];

    if (v29)
    {
      v30 = v46;
      goto LABEL_10;
    }

    v34 = v46;
    sub_257ECC9F0();

    swift_willThrow();
    v18(v45, v4);
  }

  else
  {
    v32 = v49[0];
    sub_257ECC9F0();

    swift_willThrow();
  }

LABEL_14:
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_257ED02D0();

  v46 = 0xD000000000000017;
  v47 = 0x8000000257EF9190;
  swift_getErrorValue();
  v35 = sub_257ED0720();
  MEMORY[0x259C72150](v35);

  result = sub_257ED0410();
  __break(1u);
  return result;
}

void sub_257BEF19C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v99 = sub_257ECDA30();
  v4 = *(v99 - 8);
  v5 = MEMORY[0x28223BE20](v99);
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v95 = &v86 - v8;
  v9 = sub_257ECCC80();
  v98 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_257ECCB70();
  v103 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v93 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v86 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v101 = &v86 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v86 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  MEMORY[0x28223BE20](v22 - 8);
  v97 = &v86 - v23;
  v24 = [a1 fileDataRepresentation];
  if (!v24)
  {
    sub_257BF24FC();
    swift_allocError();
    *v32 = 0;
    swift_willThrow();
    return;
  }

  v91 = v7;
  v25 = v24;
  v104 = sub_257ECCBA0();
  v102 = v26;

  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  v92 = v4;
  if (byte_27F8F8D88 != 1)
  {
    goto LABEL_31;
  }

  v90 = v21;
  v27 = v104;
  v28 = v102;
  v29 = sub_257E9C070();
  if (v2)
  {
    v30 = v27;
    v31 = v28;
LABEL_45:
    sub_257BF2550(v30, v31);
    return;
  }

  v96 = v29;
  v33 = *(*&v100[OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_captureService] + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator);
  v89 = v33;
  if (v33)
  {
    [(UIImage *)v33 videoRotationAngleForHorizonLevelCapture];
    v35 = v34;
  }

  else
  {
    v35 = 0.0;
  }

  if (qword_281544FE0 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v106 == 4)
    {
      if (!v89)
      {
        goto LABEL_25;
      }

      if (v35 == 90.0)
      {
        v36 = 6;
        goto LABEL_29;
      }

      if (v35 == 180.0)
      {
        v36 = 5;
        goto LABEL_29;
      }

      if (v35 == 270.0)
      {
        v36 = 7;
      }

      else
      {
LABEL_25:
        v36 = 4;
      }
    }

    else
    {
      if (!v89)
      {
        goto LABEL_28;
      }

      if (v35 == 90.0)
      {
        v36 = 3;
        goto LABEL_29;
      }

      if (v35 == 180.0)
      {
        v36 = 1;
        goto LABEL_29;
      }

      if (v35 == 270.0)
      {
        v36 = 2;
      }

      else
      {
LABEL_28:
        v36 = 0;
      }
    }

LABEL_29:
    v37 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v38 = v96;
    v39 = [v37 initWithCGImage:v96 scale:v36 orientation:1.0];
    v40 = UIImageJPEGRepresentation(v39, 1.0);
    if (!v40)
    {
      sub_257BEBEF0();
      swift_allocError();
      *v85 = 0xD000000000000038;
      *(v85 + 8) = 0x8000000257EF91B0;
      *(v85 + 16) = 0;
      *(v85 + 24) = 2;
      swift_willThrow();

      sub_257BF2550(v104, v102);
      return;
    }

    v89 = v39;
    v41 = v40;
    v88 = sub_257ECCBA0();
    v43 = v42;

    sub_257BF2550(v104, v102);
    v104 = v88;
    v102 = v43;
    v21 = v90;
LABEL_31:
    v44 = [a1 processedFileType];
    if (!v44 || (v45 = v44, a1 = sub_257E865A8(), v47 = v46, v45, (v96 = v47) == 0))
    {

      v96 = 0xE300000000000000;
      a1 = 6778986;
    }

    v48 = OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_imageDirectory;
    v49 = v100;
    swift_beginAccess();
    isa = v103[2].super.isa;
    v89 = v103 + 2;
    v88 = isa;
    isa(v21, &v49[v48], v12);
    sub_257ECCC70();
    sub_257ECCC30();
    v35 = v51;
    (*(v98 + 8))(v11, v9);
    v52 = round(v35 * 1000.0);
    if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v52 <= -9.22337204e18)
    {
      goto LABEL_54;
    }

    if (v52 < 9.22337204e18)
    {
      break;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
  }

  v105 = v52;
  sub_257ED0600();
  v98 = v53;
  sub_257ECCB00();
  v54 = v101;
  sub_257ECCB10();
  v55 = v54;
  v56 = v103;
  v100 = v103[1].super.isa;
  (v100)(v17, v12);
  v57 = v104;
  v58 = v102;
  sub_257ECCBB0();
  if (v2)
  {
    v90 = v21;
    v59 = v95;
    sub_257ECD360();
    v60 = v2;
    v61 = sub_257ECDA20();
    v62 = sub_257ECFBD0();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v105 = v87;
      *v63 = 136315138;
      swift_getErrorValue();
      v64 = sub_257ED0720();
      v66 = sub_257BF1FC8(v64, v65, &v105);

      *(v63 + 4) = v66;
      _os_log_impl(&dword_257BAC000, v61, v62, "Error writing image data: %s", v63, 0xCu);
      v67 = v87;
      __swift_destroy_boxed_opaque_existential_0(v87);
      MEMORY[0x259C74820](v67, -1, -1);
      v68 = v63;
      v58 = v102;
      MEMORY[0x259C74820](v68, -1, -1);
    }

    else
    {
      v104 = v57;
    }

    (*(v92 + 8))(v59, v99);
    v71 = v100;
    (v100)(v101, v12);
    v70 = 1;
    v56 = v103;
    v69 = v97;
    v21 = v90;
  }

  else
  {
    v104 = v57;
    v69 = v97;
    (v56[4].super.isa)(v97, v55, v12);
    v70 = 0;
    v71 = v100;
  }

  (v56[7].super.isa)(v69, v70, 1, v12);

  v71(v21, v12);
  if ((v56[6].super.isa)(v69, 1, v12) == 1)
  {
    sub_257BE4084(v69, &qword_27F8F5F30);
    sub_257BF24FC();
    swift_allocError();
    *v72 = 0;
    swift_willThrow();
    v30 = v104;
    v31 = v58;
    goto LABEL_45;
  }

  v73 = v94;
  (v56[4].super.isa)(v94, v69, v12);
  sub_257ECD360();
  v74 = v93;
  v88(v93, v73, v12);
  v75 = sub_257ECDA20();
  v76 = sub_257ECFBD0();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v102 = v58;
    v78 = v74;
    v79 = v77;
    *v77 = 134217984;
    v80 = sub_257BEE4C0();
    v82 = v81;
    (v100)(v78, v12);
    v83 = vcvtd_n_f64_s64(v80, 0x14uLL);
    if (v82)
    {
      v83 = -0.000000953674316;
    }

    *(v79 + 1) = v83;
    _os_log_impl(&dword_257BAC000, v75, v76, "Saved file with size: %f MB", v79, 0xCu);
    v84 = v99;
    MEMORY[0x259C74820](v79, -1, -1);
    sub_257BF2550(v104, v102);
  }

  else
  {
    sub_257BF2550(v104, v58);

    (v100)(v74, v12);
    v84 = v99;
  }

  (*(v92 + 8))(v91, v84);
}

void sub_257BEFD44(UIImage *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v87 = sub_257ECDA30();
  v4 = *(v87 - 8);
  v5 = MEMORY[0x28223BE20](v87);
  v7 = &v78[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v88 = &v78[-v8];
  v9 = sub_257ECCC80();
  v86 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v78[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_257ECCB70();
  v92 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v78[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v78[-v17];
  v19 = MEMORY[0x28223BE20](v16);
  v90 = &v78[-v20];
  MEMORY[0x28223BE20](v19);
  v93 = &v78[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  MEMORY[0x28223BE20](v22 - 8);
  v85 = &v78[-v23];
  v24 = UIImageJPEGRepresentation(a1, 0.8);
  if (!v24)
  {
    sub_257BF24FC();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();
    return;
  }

  v25 = v24;
  v94 = sub_257ECCBA0();
  v91 = v26;

  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  v84 = v7;
  if (byte_27F8F8D88 != 1)
  {
    goto LABEL_31;
  }

  v81 = v15;
  v27 = v94;
  v28 = v91;
  v29 = sub_257E9C070();
  if (v2)
  {
    v30 = v27;
LABEL_42:
    sub_257BF2550(v30, v28);
    return;
  }

  v32 = v29;
  v33 = *(*&v89[OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_captureService] + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator);
  v80 = v33;
  if (v33)
  {
    [v33 videoRotationAngleForHorizonLevelCapture];
    v35 = v34;
  }

  else
  {
    v35 = 0.0;
  }

  v82 = v4;
  v36 = v32;
  if (qword_281544FE0 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v96 == 4)
    {
      if (!v80)
      {
        goto LABEL_25;
      }

      if (v35 == 90.0)
      {
        v37 = 6;
        goto LABEL_29;
      }

      if (v35 == 180.0)
      {
        v37 = 5;
        goto LABEL_29;
      }

      if (v35 == 270.0)
      {
        v37 = 7;
      }

      else
      {
LABEL_25:
        v37 = 4;
      }
    }

    else
    {
      if (!v80)
      {
        goto LABEL_28;
      }

      if (v35 == 90.0)
      {
        v37 = 3;
        goto LABEL_29;
      }

      if (v35 == 180.0)
      {
        v37 = 1;
        goto LABEL_29;
      }

      if (v35 == 270.0)
      {
        v37 = 2;
      }

      else
      {
LABEL_28:
        v37 = 0;
      }
    }

LABEL_29:
    v38 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v36 scale:v37 orientation:1.0];
    v39 = UIImageJPEGRepresentation(v38, 1.0);
    if (!v39)
    {
      sub_257BEBEF0();
      swift_allocError();
      *v77 = 0xD000000000000038;
      *(v77 + 8) = 0x8000000257EF91B0;
      *(v77 + 16) = 0;
      *(v77 + 24) = 2;
      swift_willThrow();

      sub_257BF2550(v94, v91);
      return;
    }

    v40 = v39;
    v41 = sub_257ECCBA0();
    v80 = v42;

    sub_257BF2550(v94, v91);
    v94 = v41;
    v91 = v80;
    v4 = v82;
    v15 = v81;
LABEL_31:
    v36 = OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_imageDirectory;
    v43 = v89;
    swift_beginAccess();
    v44 = *(v92 + 16);
    v81 = (v92 + 16);
    v80 = v44;
    v44(v93, &v36[v43], v12);
    sub_257ECCC70();
    sub_257ECCC30();
    v35 = v45;
    (*(v86 + 8))(v11, v9);
    v46 = round(v35 * 1000.0);
    if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v46 <= -9.22337204e18)
    {
      goto LABEL_51;
    }

    if (v46 < 9.22337204e18)
    {
      break;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  v82 = v4;
  v95 = v46;
  sub_257ED0600();
  v86 = v47;
  sub_257ECCB00();
  v48 = v90;
  sub_257ECCB10();
  v49 = v48;
  v50 = v92;
  v89 = *(v92 + 8);
  (v89)(v18, v12);
  v51 = v94;
  v28 = v91;
  sub_257ECCBB0();
  if (v2)
  {
    sub_257ECD360();
    v52 = v2;
    v53 = sub_257ECDA20();
    v54 = sub_257ECFBD0();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v95 = v56;
      *v55 = 136315138;
      swift_getErrorValue();
      v79 = v54;
      v57 = sub_257ED0720();
      v59 = v15;
      v60 = sub_257BF1FC8(v57, v58, &v95);

      *(v55 + 4) = v60;
      v15 = v59;
      v50 = v92;
      v61 = v87;
      _os_log_impl(&dword_257BAC000, v53, v79, "Error writing image data: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x259C74820](v56, -1, -1);
      v62 = v55;
      v28 = v91;
      MEMORY[0x259C74820](v62, -1, -1);

      (*(v82 + 8))(v88, v61);
    }

    else
    {
      v94 = v51;

      (*(v82 + 8))(v88, v87);
    }

    v65 = v89;
    (v89)(v90, v12);
    v64 = 1;
    v63 = v85;
  }

  else
  {
    v94 = v51;
    v63 = v85;
    (*(v50 + 32))(v85, v49, v12);
    v64 = 0;
    v65 = v89;
  }

  (*(v50 + 56))(v63, v64, 1, v12);

  v65(v93, v12);
  if ((*(v50 + 48))(v63, 1, v12) == 1)
  {
    sub_257BE4084(v63, &qword_27F8F5F30);
    sub_257BF24FC();
    swift_allocError();
    *v66 = 0;
    swift_willThrow();
    v30 = v94;
    goto LABEL_42;
  }

  v67 = v83;
  (*(v50 + 32))(v83, v63, v12);
  sub_257ECD360();
  v80(v15, v67, v12);
  v68 = sub_257ECDA20();
  v69 = sub_257ECFBD0();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = v15;
    v71 = swift_slowAlloc();
    *v71 = 134217984;
    v72 = sub_257BEE4C0();
    v91 = v28;
    v74 = v73;
    (v89)(v70, v12);
    v75 = vcvtd_n_f64_s64(v72, 0x14uLL);
    if (v74)
    {
      v75 = -0.000000953674316;
    }

    *(v71 + 4) = v75;
    _os_log_impl(&dword_257BAC000, v68, v69, "Saved file with size: %f MB", v71, 0xCu);
    v76 = v87;
    MEMORY[0x259C74820](v71, -1, -1);
    sub_257BF2550(v94, v91);
  }

  else
  {
    sub_257BF2550(v94, v28);

    (v89)(v15, v12);
    v76 = v87;
  }

  (*(v82 + 8))(v84, v76);
}

void sub_257BF088C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v86 = a2;
  v92 = sub_257ECDA30();
  v94 = *(v92 - 8);
  v5 = MEMORY[0x28223BE20](v92);
  v90 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v87 = &v83 - v7;
  v93 = sub_257ECCC80();
  v8 = *(v93 - 1);
  MEMORY[0x28223BE20](v93);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECCB70();
  v99 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v85 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v83 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v95 = &v83 - v18;
  MEMORY[0x28223BE20](v17);
  v96 = &v83 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  MEMORY[0x28223BE20](v20 - 8);
  v91 = &v83 - v21;
  v22 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
  v23 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCIImage_];
  v24 = UIImageJPEGRepresentation(v23, 1.0);
  if (!v24)
  {
    sub_257BEBEF0();
    swift_allocError();
    *v35 = 0xD000000000000038;
    *(v35 + 8) = 0x8000000257EF91B0;
    *(v35 + 16) = 0;
    *(v35 + 24) = 2;
    swift_willThrow();

    return;
  }

  v88 = v11;
  v25 = v24;
  v97 = sub_257ECCBA0();
  v98 = v26;

  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  v27 = v99;
  if ((byte_27F8F8D88 & 1) == 0)
  {
    v31 = v88;
LABEL_11:
    v32 = v3;
    goto LABEL_33;
  }

  v28 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  v29 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVImageBuffer_];
  [v29 extent];
  v30 = [v28 createCGImage:v29 fromRect:?];
  v31 = v88;
  v84 = v30;
  if (!v30)
  {

    goto LABEL_11;
  }

  v32 = v3;
  v27 = *(*(v3 + OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_captureService) + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator);
  if (v27)
  {
    [v27 videoRotationAngleForHorizonLevelCapture];
    v34 = v33;
  }

  else
  {
    v34 = 0.0;
  }

  v36 = v28;
  v83 = v29;
  if (qword_281544FE0 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v101 == 4)
    {
      v37 = v84;
      if (!v27)
      {
        goto LABEL_27;
      }

      if (v34 == 90.0)
      {
        v38 = 6;
        goto LABEL_31;
      }

      if (v34 == 180.0)
      {
        v38 = 5;
        goto LABEL_31;
      }

      if (v34 == 270.0)
      {
        v38 = 7;
      }

      else
      {
LABEL_27:
        v38 = 4;
      }
    }

    else
    {
      v37 = v84;
      if (!v27)
      {
        goto LABEL_30;
      }

      if (v34 == 90.0)
      {
        v38 = 3;
        goto LABEL_31;
      }

      if (v34 == 180.0)
      {
        v38 = 1;
        goto LABEL_31;
      }

      if (v34 == 270.0)
      {
        v38 = 2;
      }

      else
      {
LABEL_30:
        v38 = 0;
      }
    }

LABEL_31:
    v39 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v37 scale:v38 orientation:1.0];
    v40 = UIImageJPEGRepresentation(v39, 1.0);
    if (!v40)
    {
      sub_257BEBEF0();
      swift_allocError();
      *v82 = 0xD000000000000038;
      *(v82 + 8) = 0x8000000257EF91B0;
      *(v82 + 16) = 0;
      *(v82 + 24) = 2;
      swift_willThrow();

      sub_257BF2550(v97, v98);
      return;
    }

    v41 = v36;
    v42 = v40;
    v84 = sub_257ECCBA0();
    v44 = v43;

    sub_257BF2550(v97, v98);
    v97 = v84;
    v98 = v44;
    v31 = v88;
    v27 = v99;
LABEL_33:
    v45 = OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_imageDirectory;
    swift_beginAccess();
    v36 = (v27 + 16);
    v46 = v32 + v45;
    v47 = v96;
    v83 = *(v27 + 16);
    (v83)(v96, v46, v31);
    sub_257ECCC70();
    sub_257ECCC30();
    v34 = v48;
    v49 = *(v8 + 8);
    v8 += 8;
    v49(v10, v93);
    v50 = round(v34 * 1000.0);
    if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v50 <= -9.22337204e18)
    {
      goto LABEL_52;
    }

    if (v50 < 9.22337204e18)
    {
      break;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }

  v100 = v50;
  sub_257ED0600();
  v52 = v51;
  sub_257ECCB00();
  v53 = v95;
  sub_257ECCB10();
  v93 = *(v27 + 8);
  v93(v16, v31);
  v54 = v89;
  sub_257ECCBB0();
  v84 = v52;
  if (v54)
  {
    v55 = v87;
    sub_257ECD360();
    v56 = v54;
    v57 = sub_257ECDA20();
    v58 = sub_257ECFBD0();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v100 = v60;
      *v59 = 136315138;
      swift_getErrorValue();
      v61 = sub_257ED0720();
      v63 = sub_257BF1FC8(v61, v62, &v100);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_257BAC000, v57, v58, "Error writing image data: %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      v64 = v60;
      v31 = v88;
      MEMORY[0x259C74820](v64, -1, -1);
      MEMORY[0x259C74820](v59, -1, -1);

      v65 = *(v94 + 8);
      v66 = v87;
    }

    else
    {

      v65 = *(v94 + 8);
      v66 = v55;
    }

    v70 = v92;
    v65(v66, v92);
    v69 = v93;
    v93(v95, v31);
    v68 = 1;
    v27 = v99;
    v67 = v91;
    v47 = v96;
  }

  else
  {
    v67 = v91;
    (*(v27 + 32))(v91, v53, v31);
    v68 = 0;
    v70 = v92;
    v69 = v93;
  }

  (*(v27 + 56))(v67, v68, 1, v31);

  v69(v47, v31);
  if ((*(v27 + 48))(v67, 1, v31) == 1)
  {
    sub_257BE4084(v67, &qword_27F8F5F30);
    sub_257BF24FC();
    swift_allocError();
    *v71 = 0;
    swift_willThrow();
    sub_257BF2550(v97, v98);
  }

  else
  {
    v72 = v86;
    (*(v27 + 32))(v86, v67, v31);
    sub_257ECD360();
    v73 = v85;
    (v83)(v85, v72, v31);
    v74 = sub_257ECDA20();
    v75 = sub_257ECFBD0();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 134217984;
      v77 = sub_257BEE4C0();
      v78 = v73;
      v80 = v79;
      v93(v78, v31);
      v81 = vcvtd_n_f64_s64(v77, 0x14uLL);
      if (v80)
      {
        v81 = -0.000000953674316;
      }

      *(v76 + 4) = v81;
      _os_log_impl(&dword_257BAC000, v74, v75, "Saved file with size: %f MB", v76, 0xCu);
      MEMORY[0x259C74820](v76, -1, -1);
      sub_257BF2550(v97, v98);
    }

    else
    {
      sub_257BF2550(v97, v98);

      v93(v73, v31);
    }

    (*(v94 + 8))(v90, v70);
  }
}

void *sub_257BF1470()
{
  v74[9] = *MEMORY[0x277D85DE8];
  v1 = sub_257ECD8B0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v52 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_257ECC930();
  v4 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v55 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5780);
  MEMORY[0x28223BE20](v6 - 8);
  v59 = &v50 - v7;
  v8 = sub_257ECCB70();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v53 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v73 = &v50 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - v14;
  v16 = [objc_opt_self() defaultManager];
  v17 = OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_imageDirectory;
  swift_beginAccess();
  v70 = *(v9 + 16);
  v71 = v9 + 16;
  v70(v15, v0 + v17, v8);
  v18 = sub_257ECCAE0();
  v72 = v9;
  v19 = *(v9 + 8);
  v64 = v9 + 8;
  v63 = v19;
  v19(v15, v8);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5788);
  v20 = swift_allocObject();
  v68 = xmmword_257ED6D30;
  *(v20 + 16) = xmmword_257ED6D30;
  v21 = *MEMORY[0x277CBE7B8];
  *(v20 + 32) = *MEMORY[0x277CBE7B8];
  type metadata accessor for URLResourceKey(0);
  v67 = v21;
  v22 = sub_257ECF7F0();

  v74[0] = 0;
  v23 = [v16 contentsOfDirectoryAtURL:v18 includingPropertiesForKeys:v22 options:7 error:v74];

  v24 = v74[0];
  if (v23)
  {
    v25 = sub_257ECF810();
    v26 = v24;

    v66 = *(v25 + 16);
    if (v66)
    {
      v58 = v1;
      v27 = 0;
      v57 = (v4 + 8);
      v56 = (v2 + 48);
      v51 = (v2 + 8);
      v50 = (v72 + 32);
      v54 = MEMORY[0x277D84F90];
      v28 = v55;
      v65 = v25;
      v62 = v8;
      while (1)
      {
        if (v27 >= *(v25 + 16))
        {
          __break(1u);
        }

        v29 = (*(v72 + 80) + 32) & ~*(v72 + 80);
        v30 = *(v72 + 72);
        v70(v73, v25 + v29 + v30 * v27, v8);
        inited = swift_initStackObject();
        *(inited + 16) = v68;
        v32 = v67;
        *(inited + 32) = v67;
        v33 = v32;
        sub_257BF2B04(inited);
        swift_setDeallocating();
        sub_257BF32AC(inited + 32);
        sub_257ECCAA0();
        v61 = v30;
        v34 = v29;

        v35 = v59;
        sub_257ECC910();
        (*v57)(v28, v60);
        v36 = v58;
        if ((*v56)(v35, 1, v58) == 1)
        {
          sub_257BE4084(v35, &qword_27F8F5780);
        }

        else
        {
          v37 = v52;
          sub_257ECD880();
          v38 = sub_257ECD8A0();
          v39 = *v51;
          (*v51)(v37, v36);
          v39(v35, v36);
          if (v38)
          {
            v40 = *v50;
            (*v50)(v53, v73, v62);
            v41 = v54;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v74[0] = v41;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_257BF26C4(0, v41[2] + 1, 1);
              v41 = v74[0];
            }

            v43 = v55;
            v44 = v61;
            v46 = v41[2];
            v45 = v41[3];
            v25 = v65;
            if (v46 >= v45 >> 1)
            {
              sub_257BF26C4(v45 > 1, v46 + 1, 1);
              v41 = v74[0];
            }

            v41[2] = v46 + 1;
            v54 = v41;
            v8 = v62;
            v40(v41 + v34 + v46 * v44, v53, v62);
            v28 = v43;
            goto LABEL_15;
          }

          v28 = v55;
        }

        v8 = v62;
        v63(v73, v62);
        v25 = v65;
LABEL_15:
        if (v66 == ++v27)
        {
          goto LABEL_19;
        }
      }
    }

    v54 = MEMORY[0x277D84F90];
LABEL_19:

    return v54;
  }

  else
  {
    v47 = v74[0];
    v48 = sub_257ECC9F0();

    swift_willThrow();
    return MEMORY[0x277D84F90];
  }
}

uint64_t MagnifierStillImageStore.deinit()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_imageDirectory;
  v2 = sub_257ECCB70();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_thumbnailDirectory, v2);

  return v0;
}

uint64_t MagnifierStillImageStore.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_imageDirectory;
  v2 = sub_257ECCB70();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_thumbnailDirectory, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_257BF1E4C@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  swift_beginAccess();
  v6 = sub_257ECCB70();
  return (*(*(v6 - 8) + 16))(a2, v4 + v5, v6);
}

uint64_t sub_257BF1ED4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257BF1F54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

unint64_t sub_257BF1FC8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_257BF2094(v11, 0, 0, 1, a1, a2);
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
    sub_257BE41F4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_257BF2094(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_257BF21A0(a5, a6);
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
    result = sub_257ED0320();
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

uint64_t sub_257BF21A0(uint64_t a1, unint64_t a2)
{
  v3 = sub_257BF21EC(a1, a2);
  sub_257BF231C(&unk_286903B58);
  return v3;
}

uint64_t sub_257BF21EC(uint64_t a1, unint64_t a2)
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

  v6 = sub_257C74AF8(v5, 0);
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

  result = sub_257ED0320();
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
        v10 = sub_257ECF670();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_257C74AF8(v10, 0);
        result = sub_257ED02C0();
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

uint64_t sub_257BF231C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_257BF2408(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_257BF2408(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F57C8);
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

unint64_t sub_257BF24FC()
{
  result = qword_27F8F5778;
  if (!qword_27F8F5778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5778);
  }

  return result;
}

uint64_t sub_257BF2550(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

char *sub_257BF25A4(char *a1, int64_t a2, char a3)
{
  result = sub_257C640FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF25C4(char *a1, int64_t a2, char a3)
{
  result = sub_257C64218(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF25E4(void *a1, int64_t a2, char a3)
{
  result = sub_257C6422C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF2604(void *a1, int64_t a2, char a3)
{
  result = sub_257C64360(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2624(char *a1, int64_t a2, char a3)
{
  result = sub_257C64494(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2644(char *a1, int64_t a2, char a3)
{
  result = sub_257C645BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2664(char *a1, int64_t a2, char a3)
{
  result = sub_257C646BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2684(char *a1, int64_t a2, char a3)
{
  result = sub_257C647C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF26A4(char *a1, int64_t a2, char a3)
{
  result = sub_257C648D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_257BF26C4(size_t a1, int64_t a2, char a3)
{
  result = sub_257C649F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF26E4(char *a1, int64_t a2, char a3)
{
  result = sub_257C64A20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2704(char *a1, int64_t a2, char a3)
{
  result = sub_257C64B30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2724(char *a1, int64_t a2, char a3)
{
  result = sub_257C64B44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2744(char *a1, int64_t a2, char a3)
{
  result = sub_257C64C48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2764(char *a1, int64_t a2, char a3)
{
  result = sub_257C64D90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2784(char *a1, int64_t a2, char a3)
{
  result = sub_257C64DA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF27A4(char *a1, int64_t a2, char a3)
{
  result = sub_257C64E98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_257BF27C4(size_t a1, int64_t a2, char a3)
{
  result = sub_257C64F9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_257BF27E4(size_t a1, int64_t a2, char a3)
{
  result = sub_257C64FC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2804(char *a1, int64_t a2, char a3)
{
  result = sub_257C650EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF2824(void *a1, int64_t a2, char a3)
{
  result = sub_257C651F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2844(char *a1, int64_t a2, char a3)
{
  result = sub_257C65454(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2864(char *a1, int64_t a2, char a3)
{
  result = sub_257C649DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2884(char *a1, int64_t a2, char a3)
{
  result = sub_257C65574(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_257BF28A4(size_t a1, int64_t a2, char a3)
{
  result = sub_257C656AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF28C4(void *a1, int64_t a2, char a3)
{
  result = sub_257C658B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF28E4(char *a1, int64_t a2, char a3)
{
  result = sub_257C658DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_257BF2904(size_t a1, int64_t a2, char a3)
{
  result = sub_257C65A18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2924(char *a1, int64_t a2, char a3)
{
  result = sub_257C65A40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2944(char *a1, int64_t a2, char a3)
{
  result = sub_257C64204(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2964(char *a1, int64_t a2, char a3)
{
  result = sub_257C658F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2984(char *a1, int64_t a2, char a3)
{
  result = sub_257C65B4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF29A4(char *a1, int64_t a2, char a3)
{
  result = sub_257C65A04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF29C4(char *a1, int64_t a2, char a3)
{
  result = sub_257C65904(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF29E4(char *a1, int64_t a2, char a3)
{
  result = sub_257C65B68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF2A04(void *a1, int64_t a2, char a3)
{
  result = sub_257C65DA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_257BF2A24(size_t a1, int64_t a2, char a3)
{
  result = sub_257C65ED4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF2A44(void *a1, int64_t a2, char a3)
{
  result = sub_257C65EFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF2A64(void *a1, int64_t a2, char a3)
{
  result = sub_257C65F20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF2A84(void *a1, int64_t a2, char a3)
{
  result = sub_257C65C6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF2AA4(void *a1, int64_t a2, char a3)
{
  result = sub_257C65F44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_257BF2AC4(size_t a1, int64_t a2, char a3)
{
  result = sub_257C6609C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2AE4(char *a1, int64_t a2, char a3)
{
  result = sub_257C662A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_257BF2B04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F57C0);
    v3 = sub_257ED02B0();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_257ECF500();
      sub_257ED07B0();
      v27 = v7;
      sub_257ECF5D0();
      v8 = sub_257ED0800();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_257ECF500();
        v18 = v17;
        if (v16 == sub_257ECF500() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_257ED0640();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_257BF2CF8(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_257ED0210();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5798);
      result = sub_257ED02B0();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_257ED0210();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x259C72E20](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_257ECDCD0();
    sub_257BF3AB4(&unk_27F8F9E20, MEMORY[0x277CBCDA8]);
    result = sub_257ECF3F0();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_257BF3AB4(&qword_27F8F57A0, MEMORY[0x277CBCDA8]);
      do
      {
        result = sub_257ECF450();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);
  result = sub_257ECC3F0();
  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_257BF2F8C(uint64_t a1)
{
  v2 = sub_257ECCCF0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F65C0);
    v9 = sub_257ED02B0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_257BF3AB4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
      v16 = sub_257ECF3F0();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_257BF3AB4(&qword_27F8F57B8, MEMORY[0x277CC95F0]);
          v23 = sub_257ECF450();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_257BF32AC(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for MagnifierStillImageStore()
{
  result = qword_281545BF8;
  if (!qword_281545BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257BF335C()
{
  result = sub_257ECCB70();
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

unint64_t sub_257BF35E0()
{
  result = qword_27F8F5790;
  if (!qword_27F8F5790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5790);
  }

  return result;
}

uint64_t sub_257BF3634(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6640);
    v3 = sub_257ED02B0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_257ED07B0();

      sub_257ECF5D0();
      result = sub_257ED0800();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_257ED0640();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_257BF379C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_257ED0210())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F57A8);
      v3 = sub_257ED02B0();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_257ED0210();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x259C72E20](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_257ECFF40();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_257BF3A68();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_257ECFF50();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_257ECFF40();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_257BF3A68();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_257ECFF50();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_257BF3A68()
{
  result = qword_27F8F9CC0;
  if (!qword_27F8F9CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F9CC0);
  }

  return result;
}

uint64_t sub_257BF3AB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257BF3B00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F57D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257BF3B74()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();

  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t sub_257BF3D80()
{
  v1 = 0x6E65657267;
  if (*v0 != 1)
  {
    v1 = 1702194274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6579570;
  }
}

uint64_t sub_257BF3DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_257BF9280(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_257BF3E08(uint64_t a1)
{
  v2 = sub_257BF95FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_257BF3E44(uint64_t a1)
{
  v2 = sub_257BF95FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_257BF3E80(void *a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5898);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_257BF95FC();
  sub_257ED0850();
  v15 = a2;
  HIBYTE(v14) = 0;
  sub_257BF96A4();
  sub_257ED05D0();
  if (!v4)
  {
    v15 = a3;
    HIBYTE(v14) = 1;
    sub_257ED05D0();
    v15 = a4;
    HIBYTE(v14) = 2;
    sub_257ED05D0();
  }

  return (*(v10 + 8))(v12, v9);
}

void sub_257BF4070(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_257BF9394(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_257BF40F0(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 <= 2u || (result = 0, (v1 - 3) >= 2) && v1 == 5)
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v5 = sub_257ECF4C0();
    v6 = sub_257ECF4C0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    v8 = sub_257ECF500();
    return v8;
  }

  return result;
}

void sub_257BF4250(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
LABEL_13:
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v5 = [objc_opt_self() bundleForClass_];
        v6 = sub_257ECF4C0();
        v7 = sub_257ECF4C0();
        v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

        sub_257ECF500();
        return;
      }

      v1 = sub_257ECF4C0();
      v9[4] = sub_257E5BD88;
      v9[5] = 0;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 1107296256;
      v9[2] = sub_257E5BE70;
      v9[3] = &block_descriptor_5;
      v2 = _Block_copy(v9);
      v3 = AXLocStringForDeviceVariant();
      _Block_release(v2);

      if (v3)
      {
        sub_257ECF500();
      }

      else
      {
        __break(1u);
      }
    }
  }

  else if (a1 > 4u || a1 == 3 || AXDeviceSupportsBackTap())
  {
    goto LABEL_13;
  }
}

id sub_257BF46F4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0);
  v42 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v41 = &v36 - v9;
  v49.receiver = v0;
  v49.super_class = ObjectType;
  v38 = ObjectType;
  objc_msgSendSuper2(&v49, sel_viewDidLoad);
  v10 = *&v0[OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_tableView];
  [v10 setDataSource_];
  [v10 setDelegate_];
  sub_257BD2C2C(0, &qword_27F8F5560);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = sub_257ECF4C0();
  [v10 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v12];

  type metadata accessor for UIStepperLengthCell();
  v13 = swift_getObjCClassFromMetadata();
  v14 = sub_257ECF4C0();
  [v10 registerClass:v13 forCellReuseIdentifier:v14];

  v15 = sub_257ECF4C0();
  [v10 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v15];

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v17 = result;
  [result addSubview_];

  result = [v1 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v18 = result;
  sub_257EB6FD8(result, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  v19 = *&v1[OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_colorPickerController];
  [v19 setSupportsAlpha_];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v37 = v8;
  v20 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionColor;
  swift_beginAccess();
  v21 = *(v20 + 8);
  v22 = *(v20 + 32);
  v23 = *(v20 + 16);
  v43[0] = *v20;
  v43[1] = v21;
  v44 = v23;
  v45 = v22;
  v24 = qword_2815447E0;

  if (v24 != -1)
  {
    v25 = swift_once();
  }

  MEMORY[0x28223BE20](v25);
  *(&v36 - 2) = v43;
  sub_257ECFD50();

  v26 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v46 green:v47 blue:v48 alpha:1.0];
  [v19 setSelectedColor_];

  [v19 setDelegate_];
  v27 = *&v1[OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_doorAttributesController];
  *(&v44 + 1) = v38;
  v45 = &off_2869081C8;
  v43[0] = v1;
  v28 = OBJC_IVAR____TtC16MagnifierSupport40DoorAttributeCustomizationViewController_delegate;
  swift_beginAccess();
  v29 = v1;
  sub_257BFB190(v43, v27 + v28);
  swift_endAccess();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  sub_257ECDD30();
  swift_endAccess();
  v30 = [objc_opt_self() mainRunLoop];
  v43[0] = v30;
  v31 = sub_257ED0080();
  (*(*(v31 - 8) + 56))(v5, 1, 1, v31);
  sub_257BD2C2C(0, &unk_281543D40);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
  sub_257BD2C74();
  v32 = v40;
  v33 = v41;
  sub_257ECDDF0();
  sub_257BE4084(v5, &unk_27F8F4DB0);

  (*(v39 + 8))(v7, v32);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0);
  v34 = v37;
  v35 = sub_257ECDE50();

  (*(v42 + 8))(v33, v34);
  *&v29[OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_speechFeedbackSubscription] = v35;
}

void sub_257BF4E84()
{
  v0 = sub_257ECCEB0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v9[7] == 1)
    {
      [v5 beginUpdates];
      MEMORY[0x259C6F970](1, 2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570);
      v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_257ED6D30;
      (*(v1 + 16))(v7 + v6, v3, v0);
      v8 = sub_257ECF7F0();

      [v5 reloadRowsAtIndexPaths:v8 withRowAnimation:100];

      [v5 endUpdates];
      (*(v1 + 8))(v3, v0);
    }

    else
    {
    }
  }
}

void sub_257BF5118(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_257ECF500();
    v8 = sub_257ECF4C0();
  }

  [v3 setTitle_];
}

id sub_257BF52D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v10 = byte_286903D40[v6 + 32];
    if (v10 != 3)
    {
      goto LABEL_10;
    }

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
LABEL_10:
      v25 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF2744(0, *(v7 + 16) + 1, 1);
        v7 = v25;
      }

      v9 = *(v7 + 16);
      v8 = *(v7 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_257BF2744((v8 > 1), v9 + 1, 1);
        v7 = v25;
      }

      *(v7 + 16) = v9 + 1;
      *(v7 + v9 + 32) = v10;
    }

    ++v6;
  }

  while (v6 != 4);
  *&v4[OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_availableDoorDetectionFeedbacks] = v7;
  v11 = OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_tableView;
  v12 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 systemYellowColor];
  [v14 setTintColor_];

  [v14 setClipsToBounds_];
  *&v4[v11] = v14;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_speechFeedbackSubscription] = 0;
  v16 = OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_colorPickerController;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x277D75360]) init];
  v17 = OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_doorAttributesController;
  type metadata accessor for DoorAttributeCustomizationViewController();
  *&v4[v17] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a2)
  {
    v18 = sub_257ECF4C0();
  }

  else
  {
    v18 = 0;
  }

  v24.receiver = v4;
  v24.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v24, sel_initWithNibName_bundle_, v18, a3, a1);

  return v19;
}

id sub_257BF55C8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v8 = byte_286903D68[v4 + 32];
    if (v8 != 3)
    {
      goto LABEL_10;
    }

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
LABEL_10:
      v20 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF2744(0, *(v5 + 16) + 1, 1);
        v5 = v20;
      }

      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_257BF2744((v6 > 1), v7 + 1, 1);
        v5 = v20;
      }

      *(v5 + 16) = v7 + 1;
      *(v5 + v7 + 32) = v8;
    }

    ++v4;
  }

  while (v4 != 4);
  *&v2[OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_availableDoorDetectionFeedbacks] = v5;
  v9 = OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_tableView;
  v10 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 systemYellowColor];
  [v12 setTintColor_];

  [v12 setClipsToBounds_];
  *&v2[v9] = v12;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_speechFeedbackSubscription] = 0;
  v14 = OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_colorPickerController;
  *&v2[v14] = [objc_allocWithZone(MEMORY[0x277D75360]) init];
  v15 = OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_doorAttributesController;
  type metadata accessor for DoorAttributeCustomizationViewController();
  *&v2[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19.receiver = v2;
  v19.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v19, sel_initWithCoder_, a1);

  if (v16)
  {
  }

  return v16;
}

void sub_257BF5900()
{
  v1 = *(*v0 + OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_tableView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570);
  sub_257ECCEB0();
  *(swift_allocObject() + 16) = xmmword_257ED6D30;
  MEMORY[0x259C6F990](0, 5);
  v2 = sub_257ECF7F0();

  [v1 reloadRowsAtIndexPaths:v2 withRowAnimation:5];
}

char *sub_257BF5A80(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v211 - v4;
  v6 = sub_257ECCEA0();
  v7 = sub_257BF9768(v6);
  if (v7 != 7)
  {
    if (v7 - 5 < 2)
    {
      if (sub_257ECCE60() == 1)
      {
        v11 = sub_257ECF4C0();
        v12 = sub_257ECCE30();
        v10 = [a1 dequeueReusableCellWithIdentifier:v11 forIndexPath:v12];
      }

      else
      {
        v15 = objc_allocWithZone(MEMORY[0x277D75B48]);
        v12 = sub_257ECF4C0();
        v10 = [v15 initWithStyle:1 reuseIdentifier:v12];
      }

      goto LABEL_11;
    }

    if (v7 == 1)
    {
      v13 = sub_257ECF4C0();
      v14 = sub_257ECCE30();
      v10 = [a1 dequeueReusableCellWithIdentifier:v13 forIndexPath:v14];

      goto LABEL_30;
    }
  }

  v8 = sub_257ECF4C0();
  v9 = sub_257ECCE30();
  v10 = [a1 dequeueReusableCellWithIdentifier:v8 forIndexPath:v9];

  if (v7 == 7)
  {
    return v10;
  }

LABEL_11:
  if (v7 <= 2u)
  {
    if (!v7)
    {
      v96 = sub_257ECCE60();
      if (v96)
      {
        if (v96 != 1)
        {
          return v10;
        }

        v97 = 1;
      }

      else
      {
        v97 = 0;
      }

      v176 = [v10 textLabel];
      if (v176)
      {
        v177 = v176;
        sub_257C69A6C();
        v178 = sub_257ECF4C0();

        [v177 setText_];
      }

      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v179 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
      swift_beginAccess();
      v180 = *(v179 + 8);
      v181 = *(v179 + 16);
      v225 = *v179;
      v226 = v180;
      LOBYTE(v227) = v181;
      v182 = qword_2815447E0;

      if (v182 != -1)
      {
        v183 = swift_once();
      }

      MEMORY[0x28223BE20](v183);
      *(&v211 - 2) = &v225;
      sub_257ECFD50();

      if ((v97 ^ v222))
      {
        v184 = 0;
      }

      else
      {
        v184 = 3;
      }

      [v10 setAccessoryType_];
      [v10 setAccessoryView_];
      return v10;
    }

    if (v7 == 1)
    {
LABEL_30:
      type metadata accessor for UIStepperLengthCell();
      if (swift_dynamicCastClass())
      {
        v54 = qword_281544FE0;
        v55 = v10;
        if (v54 != -1)
        {
          v210 = v55;
          swift_once();
          v55 = v210;
        }

        v216 = v55;
        v56 = qword_281548348;
        v57 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionPitchThreshold);
        swift_beginAccess();
        v58 = v57[1];
        v59 = v57[2];
        v225 = *v57;
        v226 = v58;
        v227 = v59;
        v60 = qword_2815447E0;

        if (v60 != -1)
        {
          v61 = swift_once();
        }

        MEMORY[0x28223BE20](v61);
        *(&v211 - 2) = &v225;
        sub_257ECFD50();

        v62 = v56 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
        v63 = swift_beginAccess();
        v64 = *(v62 + 8);
        v65 = *(v62 + 16);
        v222 = *v62;
        v223 = v64;
        LOBYTE(v224) = v65;
        MEMORY[0x28223BE20](v63);
        *(&v211 - 2) = &v222;

        sub_257ECFD50();

        v66 = v217;
        v67 = objc_opt_self();
        v68 = &selRef_feet;
        if (!v66)
        {
          v68 = &selRef_meters;
        }

        v69 = [v67 *v68];
        sub_257BD2C2C(0, &qword_27F8F58F0);
        sub_257ECC740();
        sub_257D3DB54(v5, sub_257BF79F0, 0);
        v10 = v216;

        (*(v3 + 8))(v5, v2);
      }

      return v10;
    }

    v98 = *&v216[OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_availableDoorDetectionFeedbacks];
    v99 = sub_257ECCE60();
    if ((v99 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_131:
      swift_once();
LABEL_73:
      v117 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__backTapEnabled;
      swift_beginAccess();
      v118 = *(v117 + 8);
      v119 = *(v117 + 16);
      v225 = *v117;
      v226 = v118;
      LOBYTE(v227) = v119;
      v120 = qword_2815447E0;

      if (v120 != -1)
      {
        v121 = swift_once();
      }

      MEMORY[0x28223BE20](v121);
      *(&v211 - 2) = &v225;
      sub_257ECFD50();

      [v2 setOn_];
      [v2 addTarget:v216 action:sel_didToggleBackTapSwitch_ forControlEvents:4096];
      v10 = v98;
      [v98 setAccessoryView_];
      [v98 setAccessoryType_];

      return v10;
    }

    if (v99 >= *(v98 + 2))
    {
      __break(1u);
    }

    else
    {
      v2 = v98[v99 + 32];
      v100 = [v10 textLabel];
      if (v100)
      {
        v101 = v100;
        sub_257BF3B74();
        v102 = sub_257ECF4C0();

        [v101 setText_];
      }

      v98 = v10;
      v5 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      if (qword_281544FE0 == -1)
      {
        goto LABEL_65;
      }
    }

    swift_once();
LABEL_65:
    v103 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedDoorDetectionFeedbacks);
    swift_beginAccess();
    v104 = v103[1];
    v105 = v103[2];
    v225 = *v103;
    v226 = v104;
    v227 = v105;
    v106 = qword_2815447E0;

    if (v106 != -1)
    {
      v107 = swift_once();
    }

    MEMORY[0x28223BE20](v107);
    *(&v211 - 2) = &v225;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880);
    sub_257ECFD50();

    v108 = sub_257C592D0(v2, v222);

    [v5 setOn_];
    v109 = v5;
    [v109 setTag_];
    [v109 addTarget:v216 action:sel_didToggleFeedbackSwitch_ forControlEvents:4096];
    v10 = v98;
    [v98 setAccessoryView_];

    [v98 setAccessoryType_];
    return v10;
  }

  if (v7 <= 4u)
  {
    if (v7 == 3)
    {
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v213 = objc_opt_self();
      v214 = ObjCClassFromMetadata;
      v17 = [v213 bundleForClass_];
      v215 = "detectionSection.name.backTap";
      v18 = sub_257ECF4C0();
      v19 = sub_257ECF4C0();
      v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

      v21 = v20;
      v22 = v20;
      if (!v20)
      {
        sub_257ECF500();
        v22 = sub_257ECF4C0();

        sub_257ECF500();
        v21 = sub_257ECF4C0();
      }

      v23 = v20;
      v24 = [v10 textLabel];
      if (v24)
      {
        v25 = v24;
        [v24 setText_];
      }

      v26 = [v10 textLabel];
      if (v26)
      {
        v27 = v26;
        [v26 setNumberOfLines_];
      }

      v28 = [v10 textLabel];
      if (v28)
      {
        v29 = v28;
        [v28 setLineBreakMode_];
      }

      [v10 setAccessoryType_];
      [v10 setShowsReorderControl_];
      v30 = objc_opt_self();
      v31 = *MEMORY[0x277D76918];
      v32 = [v30 preferredFontForTextStyle_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F82F0);
      inited = swift_initStackObject();
      v34 = MEMORY[0x277D740A8];
      *(inited + 16) = xmmword_257ED6D30;
      v35 = *v34;
      *(inited + 32) = v35;
      *(inited + 40) = v32;
      v36 = v35;
      v212 = v32;
      v37 = sub_257BE8D30(inited);
      swift_setDeallocating();
      sub_257BE4084(inited + 32, &unk_27F8F58D0);
      sub_257DF2814(v37);

      _s3__C3KeyVMa_0(0);
      sub_257BFB0F4(&qword_27F8F8300, _s3__C3KeyVMa_0);
      v38 = sub_257ECF3C0();

      [v21 sizeWithAttributes_];

      v39 = [v30 preferredFontForTextStyle_];
      [v39 lineHeight];
      v41 = v40;

      v42 = sub_257ECF4C0();
      v43 = objc_opt_self();
      v44 = [v43 systemImageNamed_];

      if (v44)
      {
        v45 = v10;
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v46 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionColor;
        swift_beginAccess();
        v47 = *(v46 + 8);
        v48 = *(v46 + 32);
        v49 = *(v46 + 16);
        v218 = *v46;
        v219 = v47;
        v220 = v49;
        v221 = v48;
        v50 = qword_2815447E0;

        if (v50 != -1)
        {
          v51 = swift_once();
        }

        MEMORY[0x28223BE20](v51);
        *(&v211 - 2) = &v218;
        sub_257ECFD50();

        v52 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v225 green:v226 blue:v227 alpha:1.0];
        v53 = [v44 imageWithTintColor_];

        v10 = v45;
      }

      else
      {
        v53 = 0;
      }

      v151 = sub_257ECF4C0();
      v152 = [v43 systemImageNamed_];

      v153 = 0.0;
      if (v152)
      {
        v154 = [objc_opt_self() systemGrayColor];
        v155 = [v152 imageWithTintColor_];

        v156 = [v30 preferredFontForTextStyle_];
        v157 = [objc_opt_self() configurationWithFont_];

        v158 = [v155 imageWithSymbolConfiguration_];
        if (v158)
        {
          [v158 size];
          v153 = v159;
        }
      }

      else
      {
        v158 = 0;
      }

      v228.width = v41 + v153 + 5.0;
      v228.height = v41;
      UIGraphicsBeginImageContextWithOptions(v228, 0, 0.0);
      v160 = [objc_opt_self() sharedApplication];
      v161 = [v160 userInterfaceLayoutDirection];

      if (!v161)
      {
        if (v53)
        {
          [v53 drawInRect_];
        }

        if (!v158)
        {
          goto LABEL_124;
        }

        v171 = v41 + 5.0;
        v169 = v158;
        [v169 size];
        v167 = (v41 - v172) * 0.5;
        [v169 size];
        v41 = v173;
        [v169 size];
        v175 = v174;
        goto LABEL_123;
      }

      if (v158)
      {
        v162 = v158;
        [v162 size];
        v164 = (v41 - v163) * 0.5;
        [v162 size];
        v166 = v165;
        [v162 size];
        v167 = 0.0;
        [v162 drawInRect_];

        if (v53)
        {
          v169 = v53;
          [v162 size];
          v171 = v170 + 5.0;
LABEL_122:
          v175 = v41;
LABEL_123:
          [v169 drawInRect_];
        }
      }

      else if (v53)
      {
        v169 = v53;
        v167 = 0.0;
        v171 = 5.0;
        goto LABEL_122;
      }

LABEL_124:
      v211 = v53;
      v185 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      v186 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
      v216 = v10;
      [v10 setAccessoryView_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
      v187 = swift_allocObject();
      *(v187 + 16) = xmmword_257ED9BD0;
      v188 = [v213 bundleForClass_];
      v189 = sub_257ECF4C0();
      v190 = sub_257ECF4C0();
      v191 = [v188 localizedStringForKey:v189 value:0 table:v190];

      v192 = sub_257ECF500();
      v194 = v193;

      v195 = MEMORY[0x277D837D0];
      *(v187 + 56) = MEMORY[0x277D837D0];
      v196 = sub_257BFB13C();
      *(v187 + 64) = v196;
      *(v187 + 32) = v192;
      *(v187 + 40) = v194;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v197 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionColor;
      swift_beginAccess();
      v198 = *(v197 + 8);
      v199 = *(v197 + 32);
      v200 = *(v197 + 16);
      v218 = *v197;
      v219 = v198;
      v220 = v200;
      v221 = v199;
      v201 = qword_2815447E0;

      if (v201 != -1)
      {
        v202 = swift_once();
      }

      MEMORY[0x28223BE20](v202);
      *(&v211 - 2) = &v218;
      sub_257ECFD50();

      v203 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*&v222 green:v223 blue:v224 alpha:1.0];
      v204 = [v203 _accessibilityNameWithLuma];

      v205 = sub_257ECF500();
      v207 = v206;

      *(v187 + 96) = v195;
      *(v187 + 104) = v196;
      *(v187 + 72) = v205;
      *(v187 + 80) = v207;
      sub_257ECF540();
      v208 = sub_257ECF4C0();

      v10 = v216;
      [v216 setAccessibilityLabel_];

      return v10;
    }

    v110 = [v10 textLabel];
    if (v110)
    {
      v111 = v110;
      type metadata accessor for MAGUtilities();
      v112 = swift_getObjCClassFromMetadata();
      v113 = [objc_opt_self() bundleForClass_];
      v114 = sub_257ECF4C0();
      v115 = sub_257ECF4C0();
      v116 = [v113 localizedStringForKey:v114 value:0 table:v115];

      if (!v116)
      {
        sub_257ECF500();
        v116 = sub_257ECF4C0();
      }

      [v111 setText_];
    }

    v98 = v10;
    v2 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    if (qword_281544FE0 == -1)
    {
      goto LABEL_73;
    }

    goto LABEL_131;
  }

  if (v7 == 5)
  {
    sub_257BF9814();
    v70 = sub_257BF9BD0();
    v71 = [v10 textLabel];
    if (v71)
    {
      v72 = v71;
      [v71 setNumberOfLines_];
    }

    v73 = [v10 textLabel];
    if (v73)
    {
      v74 = v73;
      [v73 setLineBreakMode_];
    }

    [v10 setAccessoryType_];
    [v10 setShowsReorderControl_];
    v75 = [v10 textLabel];
    if (v75)
    {
      v76 = v75;
      type metadata accessor for MAGUtilities();
      v77 = swift_getObjCClassFromMetadata();
      v78 = [objc_opt_self() bundleForClass_];
      v79 = sub_257ECF4C0();
      v80 = sub_257ECF4C0();
      v81 = [v78 localizedStringForKey:v79 value:0 table:v80];

      if (!v81)
      {
        sub_257ECF500();
        v81 = sub_257ECF4C0();
      }

      [v76 setText_];
    }

    v82 = [v10 textLabel];
    if (v82)
    {
      v83 = 0.5;
      if (v70)
      {
        v83 = 1.0;
      }

      v84 = v82;
      [v82 setAlpha_];
    }

    v85 = [v10 detailTextLabel];
    if (v85)
    {
      v86 = v85;
      type metadata accessor for MAGUtilities();
      v87 = swift_getObjCClassFromMetadata();
      v88 = [objc_opt_self() bundleForClass_];
      v89 = sub_257ECF4C0();
      v90 = sub_257ECF4C0();
      v91 = [v88 localizedStringForKey:v89 value:0 table:v90];

      sub_257ECF500();
      v92 = sub_257ECF4C0();

      [v86 setText_];
    }

    v93 = [v10 detailTextLabel];
    if (v93)
    {
      v94 = 0.5;
      if (v70)
      {
        v94 = 1.0;
      }

      v95 = v93;
      [v93 setAlpha_];
    }
  }

  else
  {
    sub_257BF9E68();
    v122 = [v10 textLabel];
    if (v122)
    {
      v123 = v122;
      type metadata accessor for MAGUtilities();
      v124 = swift_getObjCClassFromMetadata();
      v125 = [objc_opt_self() bundleForClass_];
      v126 = sub_257ECF4C0();
      v127 = sub_257ECF4C0();
      v128 = [v125 localizedStringForKey:v126 value:0 table:v127];

      if (!v128)
      {
        sub_257ECF500();
        v128 = sub_257ECF4C0();
      }

      [v123 setText_];
    }

    v129 = v10;
    v130 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    v131 = sub_257BFA338();
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v132 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
    swift_beginAccess();
    v133 = *(v132 + 8);
    v134 = *(v132 + 16);
    v225 = *v132;
    v226 = v133;
    LOBYTE(v227) = v134;
    v135 = qword_2815447E0;

    if (v135 != -1)
    {
      v136 = swift_once();
    }

    MEMORY[0x28223BE20](v136);
    *(&v211 - 2) = &v225;
    sub_257ECFD50();

    [v130 setOn_];
    v137 = v130;
    [v137 setUserInteractionEnabled_];
    [v137 addTarget:v216 action:sel_didToggleDecorationsSwitch_ forControlEvents:4096];
    [v129 setUserInteractionEnabled_];
    [v129 setAccessoryView_];
    [v129 setAccessoryType_];
    v138 = [v129 imageView];
    if (v138)
    {
      v139 = v138;
      [v138 setImage_];
    }

    v140 = [v129 textLabel];
    if (v140)
    {
      v141 = v140;
      v142 = [objc_opt_self() labelColor];
      [v141 setTextColor_];
    }

    v143 = [v129 textLabel];
    if (v131)
    {
      v144 = 1.0;
    }

    else
    {
      v144 = 0.5;
    }

    if (v143)
    {
      v145 = v143;
      [v143 setAlpha_];
    }

    [v137 setAlpha_];

    type metadata accessor for MAGUtilities();
    v146 = swift_getObjCClassFromMetadata();
    v147 = [objc_opt_self() bundleForClass_];
    v148 = sub_257ECF4C0();
    v149 = sub_257ECF4C0();
    v150 = [v147 localizedStringForKey:v148 value:0 table:v149];

    if (!v150)
    {
      sub_257ECF500();
      v150 = sub_257ECF4C0();
    }

    v10 = v129;
    [v129 setAccessibilityLabel_];
  }

  return v10;
}

uint64_t sub_257BF79F0(double a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v6 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionPitchThreshold;
  swift_beginAccess();
  v10 = a1;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v7 = sub_257ECF110();
  MEMORY[0x28223BE20](v7);
  *&v9[-16] = &v10;
  *&v9[-8] = v6;
  sub_257ECFD40();
  (*(v3 + 8))(v5, v2);
  return swift_endAccess();
}

id sub_257BF7E0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void))
{
  sub_257BFB060(a4, a5);
  if (v5)
  {
    v6 = sub_257ECF4C0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_257BF7F40(void *a1)
{
  v2 = v1;
  v4 = sub_257ECCDF0();
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x28223BE20](v4);
  v67 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257ECDA30();
  v66 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECCEB0();
  v65 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_257ECF120();
  v12 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v14 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_257ECCE30();
  v71 = [a1 cellForRowAtIndexPath_];

  if (!v71)
  {
    return;
  }

  v16 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v16 animated:1];

  v17 = sub_257ECCEA0();
  v18 = sub_257BF9768(v17);
  if (v18 <= 3)
  {
    if (v18 > 1)
    {
      if (v18 != 2)
      {
        [v1 presentViewController:*&v1[OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_colorPickerController] animated:1 completion:0];
      }
    }

    else if (!v18)
    {
      v19 = sub_257ECCE60();
      if (!v19)
      {
        v64 = 0;
        goto LABEL_19;
      }

      if (v19 == 1)
      {
        v64 = 1;
LABEL_19:
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v62 = qword_281548348;
        v24 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
        swift_beginAccess();
        v25 = *v24;
        v26 = *(v24 + 8);
        v61 = v24;
        v27 = *(v24 + 16);
        *&v72 = v25;
        *(&v72 + 1) = v26;
        LOBYTE(v73) = v27;
        v28 = qword_2815447E0;

        if (v28 != -1)
        {
          v29 = swift_once();
        }

        v63 = v59;
        v30 = qword_2815447E8;
        MEMORY[0x28223BE20](v29);
        v59[-2] = &v72;
        sub_257ECFD50();

        if (v64 != LOBYTE(v75[0]))
        {
          v31 = v61;
          v63 = 0;
          v32 = v64;
          swift_beginAccess();
          LOBYTE(v75[0]) = v32;
          v33 = sub_257ECF110();
          v60 = v59;
          MEMORY[0x28223BE20](v33);
          v59[-2] = v75;
          v59[-1] = v31;
          v61 = v30;
          v34 = v63;
          sub_257ECFD40();
          v59[1] = v34;
          v35 = *(v12 + 8);
          v63 = (v12 + 8);
          v60 = v35;
          v35(v14, v70);
          swift_endAccess();
          ++v65;
          MEMORY[0x259C6F970](byte_286903DB0, 0);
          v36 = sub_257ECCE30();
          v37 = [a1 cellForRowAtIndexPath_];

          if (v37)
          {
            [v37 setAccessoryType_];
          }

          v38 = *v65;
          (*v65)(v11, v9);
          MEMORY[0x259C6F970](byte_286903DB1, 0);
          v39 = sub_257ECCE30();
          v40 = [a1 cellForRowAtIndexPath_];

          if (v40)
          {
            [v40 setAccessoryType_];
          }

          v38(v11, v9);
          [v71 setAccessoryType_];
          sub_257ECD420();
          v41 = sub_257ECDA20();
          v42 = sub_257ECFBD0();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = v64;
            v44 = swift_slowAlloc();
            *v44 = 134217984;
            *(v44 + 4) = v43;
            _os_log_impl(&dword_257BAC000, v41, v42, "New door detection unit: %ld", v44, 0xCu);
            MEMORY[0x259C74820](v44, -1, -1);
          }

          (*(v66 + 8))(v8, v6);
          if (v64)
          {
            v45 = 6.0;
          }

          else
          {
            v45 = 2.0;
          }

          v46 = v62;
          v47 = v62 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionPitchThreshold;
          swift_beginAccess();
          v75[0] = *&v45;
          v48 = sub_257ECF110();
          MEMORY[0x28223BE20](v48);
          v59[-2] = v75;
          v59[-1] = v47;
          sub_257ECFD40();
          v49 = v70;
          v50 = v60;
          v60(v14, v70);
          swift_endAccess();
          v51 = v46 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionPitchThreshold;
          swift_beginAccess();
          v75[0] = *&v45;
          v52 = sub_257ECF110();
          MEMORY[0x28223BE20](v52);
          v59[-2] = v75;
          v59[-1] = v51;
          sub_257ECFD40();
          v50(v14, v49);
          swift_endAccess();
          [a1 beginUpdates];
          *&v72 = &unk_286903DB8;
          sub_257BFB0F4(&qword_27F8F58A0, MEMORY[0x277CC9A28]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D80);
          sub_257BD2D4C(&qword_27F8F58B0, &unk_27F8F4D80);
          v53 = v67;
          v54 = v69;
          sub_257ED0180();
          v55 = sub_257ECCDE0();
          (*(v68 + 8))(v53, v54);
          [a1 reloadSections:v55 withRowAnimation:100];

          [a1 endUpdates];
        }

        goto LABEL_43;
      }
    }

    goto LABEL_15;
  }

  if (v18 > 5 || v18 == 4 || (v20 = [objc_opt_self() shared], v21 = objc_msgSend(v20, sel_doorAttributesClassifierProperties), v20, !v21))
  {
LABEL_15:
    v23 = v71;

    return;
  }

  *&v72 = 0xD000000000000017;
  *(&v72 + 1) = 0x8000000257EF93E0;
  v22 = [v21 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v22)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    v72 = 0u;
    v73 = 0u;
  }

  v74[0] = v72;
  v74[1] = v73;
  if (!*(&v73 + 1))
  {

    sub_257BE4084(v74, &unk_27F8F62F0);
    return;
  }

  sub_257BD2C2C(0, &unk_27F8F58C0);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_43:
    return;
  }

  v56 = v75[0];
  if ([v75[0] count] >= 1)
  {
    v57 = [v2 navigationController];
    if (v57)
    {
      v58 = v57;
      [v57 pushViewController:*&v2[OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_doorAttributesController] animated:1];
    }
  }
}

uint64_t sub_257BF8BA4(void *a1)
{
  v3 = v1;
  v5 = sub_257ECF120();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 selectedColor];
  v10 = [v9 CGColor];

  v11 = sub_257ECFB30();
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &unk_286903DE0;
  }

  if (qword_281544FE0 == -1)
  {
    v13 = v12[2];
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = v12;
  swift_once();
  v12 = v11;
  v13 = v11[2];
  if (!v13)
  {
    goto LABEL_20;
  }

LABEL_6:
  if (v13 == 1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 >= 3)
  {
    v11 = qword_281548348;
    v14 = v12[4];
    v15 = v12[5];
    v16 = v12[6];

    v2 = v11 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionColor;
    swift_beginAccess();
    v50[0] = v14;
    v50[1] = v15;
    v50[2] = v16;
    if (qword_2815447E0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  swift_once();
LABEL_9:
  v17 = sub_257ECF110();
  MEMORY[0x28223BE20](v17);
  *(&v41 - 2) = v50;
  *(&v41 - 1) = v2;
  sub_257ECFD40();
  (*(v6 + 8))(v8, v5);
  swift_endAccess();
  [*(v3 + OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_tableView) reloadData];
  v18 = swift_beginAccess();
  v19 = v11[16];
  v20 = v11[17];
  v21 = v11[18];
  v41 = v11[15];
  v42 = v19;
  *&v43 = v20;
  *(&v43 + 1) = v21;
  MEMORY[0x28223BE20](v18);
  *(&v41 - 2) = &v41;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
  sub_257ECFD50();

  v23 = v49;
  if (!v49)
  {
    return result;
  }

  v24 = v48;
  v25 = swift_beginAccess();
  v26 = v11[12];
  v27 = v11[13];
  v41 = v11[11];
  v42 = v26;
  *&v43 = v27;
  MEMORY[0x28223BE20](v25);
  *(&v41 - 2) = v28;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  v29 = v45;
  if (!*(*&v45 + 16))
  {
  }

  v30 = sub_257C03F6C(v24, v23);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
  }

  v33 = (*(*&v29 + 56) + 296 * v30);
  v35 = v33[17];
  v34 = v33[18];
  v36 = v33[19];

  v38 = *(v2 + 1);
  v39 = *(v2 + 4);
  v40 = *(v2 + 1);
  v41 = *v2;
  v42 = v38;
  v43 = v40;
  v44 = v39;
  MEMORY[0x28223BE20](v37);
  *(&v41 - 2) = &v41;

  sub_257ECFD50();

  if (v35 != v45 || v34 != v46 || v36 != v47)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v41) = 1;
    sub_257ECC3F0();
    return sub_257ECDD70();
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MagnifierColor(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MagnifierColor(uint64_t result, int a2, int a3)
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

unint64_t sub_257BF91E8()
{
  result = qword_27F8F5870;
  if (!qword_27F8F5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5870);
  }

  return result;
}

uint64_t sub_257BF9280(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_257ED0640() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_257ED0640() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_257ED0640();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_257BF9394(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5890);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_257BF95FC();
  sub_257ED0840();
  v9 = 0;
  sub_257BF9650();
  sub_257ED0540();
  v6 = v10;
  v9 = 1;
  sub_257ED0540();
  v9 = 2;
  sub_257ED0540();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_257BF95FC()
{
  result = qword_281545AC8[0];
  if (!qword_281545AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281545AC8);
  }

  return result;
}

unint64_t sub_257BF9650()
{
  result = qword_281545C10;
  if (!qword_281545C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545C10);
  }

  return result;
}

unint64_t sub_257BF96A4()
{
  result = qword_281545C30;
  if (!qword_281545C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545C30);
  }

  return result;
}

unint64_t sub_257BF96F8()
{
  result = qword_2815446C8;
  if (!qword_2815446C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815446C8);
  }

  return result;
}

unint64_t sub_257BF9768(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

uint64_t sub_257BF9778(uint64_t result)
{
  if (result <= 2)
  {
    switch(result)
    {
      case 0:
        return 2;
      case 1:
        return result;
      case 2:
        return *(*(v1 + OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_availableDoorDetectionFeedbacks) + 16);
    }
  }

  else
  {
    if (result <= 4)
    {
      if (result != 3)
      {
        return AXDeviceSupportsBackTap();
      }

      return 1;
    }

    if (result == 5 || result == 6)
    {
      return 1;
    }
  }

  return 0;
}

void sub_257BF9814()
{
  v0 = sub_257ECF120();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() shared];
  v5 = [v4 downloadManager];

  v6 = sub_257ECF4C0();
  [v5 totalDownloadedWithName_];
  v8 = v7;

  if (v8 >= 100.0)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v9 = qword_281548348;
    *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorAttributesAssetDownloaded) = 1;
    *(v9 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorAttributesAssetDownloading) = 0;
    v10 = v9 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorAttributesToggledOnAfterSuccessfulDownload;
    swift_beginAccess();
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v19[0] = *v10;
    v19[1] = v11;
    v20 = v12;
    v13 = qword_2815447E0;

    if (v13 != -1)
    {
      v14 = swift_once();
    }

    MEMORY[0x28223BE20](v14);
    v19[-2] = v19;
    sub_257ECFD50();

    if ((v21 & 1) == 0)
    {
      swift_beginAccess();
      v21 = 1;
      v15 = sub_257ECF110();
      MEMORY[0x28223BE20](v15);
      v19[-2] = &v21;
      v19[-1] = v10;
      sub_257ECFD40();
      v16 = *(v1 + 8);
      v16(v3, v0);
      swift_endAccess();
      v17 = v9 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionAttributes;
      swift_beginAccess();
      v21 = 1;
      v18 = sub_257ECF110();
      MEMORY[0x28223BE20](v18);
      v19[-2] = &v21;
      v19[-1] = v17;
      sub_257ECFD40();
      v16(v3, v0);
      swift_endAccess();
    }
  }
}

uint64_t sub_257BF9BD0()
{
  v0 = [objc_opt_self() shared];
  v1 = [v0 doorAttributesClassifierProperties];

  if (!v1)
  {
    return 0;
  }

  *&v8 = 0xD000000000000017;
  *(&v8 + 1) = 0x8000000257EF93E0;
  v2 = [v1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v2)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {

    sub_257BE4084(v10, &unk_27F8F62F0);
    return 0;
  }

  sub_257BD2C2C(0, &unk_27F8F58C0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v3 = [v7 count];

  if (v3 <= 0)
  {
    return 0;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_2815447E0;

  if (v4 != -1)
  {
    v5 = swift_once();
  }

  MEMORY[0x28223BE20](v5);
  sub_257ECFD50();

  return v7;
}

uint64_t sub_257BF9E68()
{
  v0 = sub_257ECF120();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() shared];
  v5 = [v4 downloadManager];

  v6 = sub_257ECF4C0();
  [v5 totalDownloadedWithName_];
  v8 = v7;

  if (v8 < 100.0)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v9 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
    swift_beginAccess();
    LOBYTE(v22[0]) = 0;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v10 = sub_257ECF110();
    MEMORY[0x28223BE20](v10);
    v22[-2] = v22;
    v22[-1] = v9;
    sub_257ECFD40();
    (*(v1 + 8))(v3, v0);
    return swift_endAccess();
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v11 = qword_281548348;
  *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorSignsAssetDownloaded) = 1;
  *(v11 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorSignsAssetDownloading) = 0;
  v12 = v11 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorSignsToggledOnAfterSuccessfulDownload;
  swift_beginAccess();
  v13 = *(v12 + 8);
  v14 = *(v12 + 16);
  v22[0] = *v12;
  v22[1] = v13;
  v23 = v14;
  v15 = qword_2815447E0;

  if (v15 != -1)
  {
    v16 = swift_once();
  }

  MEMORY[0x28223BE20](v16);
  v22[-2] = v22;
  sub_257ECFD50();

  if ((v24[0] & 1) == 0)
  {
    swift_beginAccess();
    v24[0] = 1;
    v18 = sub_257ECF110();
    MEMORY[0x28223BE20](v18);
    v22[-2] = v24;
    v22[-1] = v12;
    sub_257ECFD40();
    v19 = *(v1 + 8);
    v19(v3, v0);
    swift_endAccess();
    v20 = v11 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
    swift_beginAccess();
    v24[0] = 1;
    v21 = sub_257ECF110();
    MEMORY[0x28223BE20](v21);
    v22[-2] = v24;
    v22[-1] = v20;
    sub_257ECFD40();
    v19(v3, v0);
    return swift_endAccess();
  }

  return result;
}

BOOL sub_257BFA338()
{
  v0 = [objc_opt_self() shared];
  v1 = [v0 signDetectorProperties];

  if (v1)
  {
    *&v6 = 0xD000000000000013;
    *(&v6 + 1) = 0x8000000257EF9700;
    v2 = [v1 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v2)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8[0] = v6;
    v8[1] = v7;
    if (*(&v7 + 1))
    {
      sub_257BD2C2C(0, &unk_27F8F58C0);
      if (swift_dynamicCast())
      {
        v3 = [v5 count];

        return v3 > 0;
      }
    }

    else
    {

      sub_257BE4084(v8, &unk_27F8F62F0);
    }
  }

  return 0;
}

id sub_257BFA4C4(void *a1)
{
  result = [a1 tag];
  if (result <= 3)
  {
    v3 = result;
    if ([a1 isOn])
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v4 = qword_2815447E0;

      if (v4 != -1)
      {
        v5 = swift_once();
      }

      MEMORY[0x28223BE20](v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880);
      sub_257ECFD50();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9600);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_257ED6D30;
      *(inited + 32) = v3;
      sub_257EB0610(inited);
      sub_257D523FC(v16, 1);
    }

    else
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v7 = qword_2815447E0;

      if (v7 != -1)
      {
        v8 = swift_once();
      }

      MEMORY[0x28223BE20](v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880);
      sub_257ECFD50();

      v9 = *(v16 + 16);
      if (v9)
      {
        v10 = (v16 + 32);
        v11 = MEMORY[0x277D84F90];
        do
        {
          v15 = *v10++;
          v14 = v15;
          if (v15 != v3)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_257BF2744(0, *(v11 + 16) + 1, 1);
            }

            v13 = *(v11 + 16);
            v12 = *(v11 + 24);
            if (v13 >= v12 >> 1)
            {
              sub_257BF2744((v12 > 1), v13 + 1, 1);
            }

            *(v11 + 16) = v13 + 1;
            *(v11 + v13 + 32) = v14;
          }

          --v9;
        }

        while (v9);
      }

      else
      {
        v11 = MEMORY[0x277D84F90];
      }

      sub_257D523FC(v11, 1);
    }
  }

  return result;
}

uint64_t sub_257BFA8A4(void *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v6 = qword_281548348;
  v7 = [a1 isOn];
  v8 = v6 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__backTapEnabled;
  swift_beginAccess();
  v12 = v7;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v9 = sub_257ECF110();
  MEMORY[0x28223BE20](v9);
  *&v11[-16] = &v12;
  *&v11[-8] = v8;
  sub_257ECFD40();
  (*(v3 + 8))(v5, v2);
  return swift_endAccess();
}

uint64_t sub_257BFAA88(void *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isOn])
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v6 = qword_281548348;
    v7 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
    swift_beginAccess();
    v36 = 1;
    if (qword_2815447E0 == -1)
    {
      goto LABEL_9;
    }

LABEL_21:
    swift_once();
    goto LABEL_9;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v6 = qword_281548348;
  v7 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
  swift_beginAccess();
  v36 = 0;
  if (qword_2815447E0 != -1)
  {
    goto LABEL_21;
  }

LABEL_9:
  v8 = sub_257ECF110();
  MEMORY[0x28223BE20](v8);
  v29[-2] = &v36;
  v29[-1] = v7;
  sub_257ECFD40();
  (*(v3 + 8))(v5, v2);
  swift_endAccess();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = v6[16];
  v10 = v6[17];
  v11 = v6[18];
  v35[0] = v6[15];
  v35[1] = v9;
  v35[2] = v10;
  v35[3] = v11;
  v12 = qword_2815447E0;

  if (v12 != -1)
  {
    v13 = swift_once();
  }

  MEMORY[0x28223BE20](v13);
  v29[-2] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
  sub_257ECFD50();

  v15 = v33;
  if (v33)
  {
    v16 = v32;
    v17 = swift_beginAccess();
    v18 = v6[12];
    v19 = v6[13];
    v32 = v6[11];
    v33 = v18;
    v34 = v19;
    MEMORY[0x28223BE20](v17);
    v29[-2] = &v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
    sub_257ECFD50();

    v20 = v29[0];
    if (*(v29[0] + 16))
    {
      v21 = sub_257C03F6C(v16, v15);
      v23 = v22;

      if (v23)
      {
        v24 = *(*(v20 + 56) + 296 * v21 + 176);

        v25 = v6 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
        v26 = swift_beginAccess();
        v27 = *(v25 + 1);
        v28 = v25[16];
        v29[0] = *v25;
        v29[1] = v27;
        v30 = v28;
        MEMORY[0x28223BE20](v26);
        v29[-2] = v29;

        sub_257ECFD50();

        if (v24 != v31)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v29[0]) = 1;
          sub_257ECC3F0();
          return sub_257ECDD70();
        }

        return result;
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_257BFB060(unint64_t a1, uint64_t (*a2)(unint64_t, void))
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return a2(a1, a2);
  }
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257BFB0F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_257BFB13C()
{
  result = qword_281544070;
  if (!qword_281544070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544070);
  }

  return result;
}

uint64_t sub_257BFB190(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5AB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for MFEnvironment.FreezeFrame.Mode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MFEnvironment.FreezeFrame.Mode(uint64_t result, unsigned int a2, unsigned int a3)
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