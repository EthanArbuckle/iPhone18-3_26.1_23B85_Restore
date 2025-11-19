void OUTLINED_FUNCTION_26_27()
{
  *(v0 - 96) = 0x206D6F726620;
  *(v0 - 128) = 0x20646E6120;
  *(v0 - 112) = 544175136;
}

void OUTLINED_FUNCTION_27_25()
{
  *(v0 - 112) = 11569381;
  *(v0 - 104) = 11050213;
  *(v0 - 96) = 9354212;
  *(v0 - 128) = 9212645;
}

uint64_t OUTLINED_FUNCTION_31_26()
{
  v2 = *(*(v1 - 112) + 8);
  result = v0;
  v4 = *(v1 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_27(uint64_t a1)
{

  return outlined destroy of (offset: Int, element: SearchResult)(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_44_25()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_48_16(uint64_t a1)
{

  return outlined destroy of (offset: Int, element: SearchResult)(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_49_22()
{

  return outlined init with copy of Locale.LanguageCode?(v1, v2 + v0);
}

void OUTLINED_FUNCTION_50_17(void *a1@<X8>)
{
  *a1 = 32;
  a1[1] = 0xE100000000000000;
  a1[2] = 2123040;
  a1[3] = 0xE300000000000000;
}

uint64_t SFCard.hydrateImages()()
{
  *(v1 + 144) = v0;
  return MEMORY[0x2822009F8](SFCard.hydrateImages(), 0, 0);
}

{
  v1 = outlined bridged method (pb) of @objc SFCard.cardSections.getter(*(v0 + 144));
  *(v0 + 152) = v1;
  if (v1)
  {
    v2 = specialized Array.count.getter(v1);
    *(v0 + 160) = v2;
    if (v2)
    {
      if (v2 < 1)
      {
        __break(1u);
      }

      else
      {
        *(v0 + 168) = 0;
        v3 = *(v0 + 152);
        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x25F89FFD0](0);
        }

        else
        {
          v4 = *(v3 + 32);
        }

        v7 = v4;
        *(v0 + 176) = v4;
        *(v0 + 16) = v0;
        *(v0 + 24) = SFCard.hydrateImages();
        swift_continuation_init();
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd, &_sSccyyts5NeverOGMR);
        OUTLINED_FUNCTION_1_76(v8);
        *(v0 + 88) = 1107296256;
        OUTLINED_FUNCTION_0_83(&block_descriptor_9);
        [v7 hydrateImagesWithCompletionHandler_];
        v2 = v0 + 16;
      }

      return MEMORY[0x282200938](v2);
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](SFCard.hydrateImages(), 0, 0);
}

{
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 152);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 168) + 1;
    *(v0 + 168) = v6;
    v7 = *(v0 + 152);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x25F89FFD0]();
    }

    else
    {
      v8 = *(v7 + 8 * v6 + 32);
    }

    v9 = v8;
    *(v0 + 176) = v8;
    *(v0 + 16) = v0;
    *(v0 + 24) = SFCard.hydrateImages();
    swift_continuation_init();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd, &_sSccyyts5NeverOGMR);
    OUTLINED_FUNCTION_1_76(v10);
    *(v0 + 88) = 1107296256;
    OUTLINED_FUNCTION_0_83(&block_descriptor_9);
    [v9 hydrateImagesWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) () -> () with result type ()(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return specialized _resumeUnsafeContinuation<A>(_:_:)();
}

void OUTLINED_FUNCTION_0_83(uint64_t a1@<X8>)
{
  v1[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) () -> () with result type ();
  v1[13] = a1;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_1_76(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t @objc closure #1 in SFCardSection.hydrateImages()(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = @objc closure #1 in SFCardSection.hydrateImages();

  return SFCardSection.hydrateImages()();
}

uint64_t @objc closure #1 in SFCardSection.hydrateImages()()
{
  OUTLINED_FUNCTION_48();
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  v2[2](v2);
  _Block_release(v2);
  OUTLINED_FUNCTION_127();

  return v5();
}

uint64_t SFDetailedRowCardSection.hydrateImages()()
{
  *(v1 + 208) = v0;
  return OUTLINED_FUNCTION_3_11();
}

{
  OUTLINED_FUNCTION_78();
  v1 = [*(v0 + 208) thumbnail];
  *(v0 + 216) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0 + 16;
    *(v0 + 16) = v0;
    *(v0 + 24) = SFDetailedRowCardSection.hydrateImages();
    swift_continuation_init();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd, &_sSccyyts5NeverOGMR);
    OUTLINED_FUNCTION_3_60(v4);
    *(v0 + 152) = 1107296256;
    v5 = &block_descriptor_10;
LABEL_5:
    *(v0 + 160) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) () -> () with result type ();
    *(v0 + 168) = v5;
    [v2 loadImageDataWithCompletionHandler_];

    return MEMORY[0x282200938](v3);
  }

  v6 = [*(v0 + 208) trailingThumbnail];
  *(v0 + 224) = v6;
  if (v6)
  {
    v2 = v6;
    v3 = v0 + 80;
    *(v0 + 80) = v0;
    OUTLINED_FUNCTION_6_43();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd, &_sSccyyts5NeverOGMR);
    OUTLINED_FUNCTION_3_60(v7);
    *(v0 + 152) = 1107296256;
    v5 = &block_descriptor_3;
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_127();

  return v8();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_12_41();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  return MEMORY[0x2822009F8](SFDetailedRowCardSection.hydrateImages(), 0, 0);
}

{
  OUTLINED_FUNCTION_78();

  v2 = [*(v1 + 208) trailingThumbnail];
  *(v1 + 224) = v2;
  if (v2)
  {
    OUTLINED_FUNCTION_10_42();
    *(v1 + 80) = v3;
    v4 = OUTLINED_FUNCTION_6_43();
    *(v1 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd, &_sSccyyts5NeverOGMR);
    *(v1 + 144) = MEMORY[0x277D85DD0];
    *(v1 + 152) = 1107296256;
    *(v1 + 160) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) () -> () with result type ();
    *(v1 + 168) = &block_descriptor_3;
    *(v1 + 176) = v4;
    [v0 loadImageDataWithCompletionHandler_];

    return MEMORY[0x282200938](v1 + 80);
  }

  else
  {
    OUTLINED_FUNCTION_127();

    return v5();
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_12_41();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  return MEMORY[0x2822009F8](SFDetailedRowCardSection.hydrateImages(), 0, 0);
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_127();

  return v1();
}

uint64_t @objc closure #1 in SFDetailedRowCardSection.hydrateImages()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in SFVerticalLayoutCardSection.hydrateImages();

  return SFDetailedRowCardSection.hydrateImages()();
}

uint64_t SFVerticalLayoutCardSection.hydrateImages()()
{
  *(v1 + 144) = v0;
  return OUTLINED_FUNCTION_3_11();
}

{
  OUTLINED_FUNCTION_78();
  v2 = [*(v1 + 144) thumbnail];
  *(v1 + 152) = v2;
  if (v2)
  {
    OUTLINED_FUNCTION_10_42();
    *(v1 + 16) = v3;
    *(v1 + 24) = SFVerticalLayoutCardSection.hydrateImages();
    v4 = swift_continuation_init();
    *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd, &_sSccyyts5NeverOGMR);
    *(v1 + 80) = MEMORY[0x277D85DD0];
    *(v1 + 88) = 1107296256;
    *(v1 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) () -> () with result type ();
    *(v1 + 104) = &block_descriptor_6;
    *(v1 + 112) = v4;
    [v0 loadImageDataWithCompletionHandler_];

    return MEMORY[0x282200938](v1 + 16);
  }

  else
  {
    OUTLINED_FUNCTION_127();

    return v5();
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_12_41();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  return MEMORY[0x2822009F8](SFVerticalLayoutCardSection.hydrateImages(), 0, 0);
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_127();

  return v1();
}

uint64_t @objc closure #1 in SFVerticalLayoutCardSection.hydrateImages()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in SFVerticalLayoutCardSection.hydrateImages();

  return SFVerticalLayoutCardSection.hydrateImages()();
}

uint64_t SFCollectionCardSection.hydrateImages()()
{
  *(v1 + 144) = v0;
  return OUTLINED_FUNCTION_3_11();
}

{
  v1 = outlined bridged method (pb) of @objc SFCollectionCardSection.cardSections.getter(*(v0 + 144));
  *(v0 + 152) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = specialized Array.count.getter(v1);
    *(v0 + 160) = v3;
    if (v3)
    {
      if (v3 < 1)
      {
        __break(1u);
      }

      else
      {
        *(v0 + 168) = 0;
        v4 = *(v0 + 152);
        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x25F89FFD0](0);
        }

        else
        {
          v7 = *(v4 + 32);
        }

        OUTLINED_FUNCTION_10_42();
        *(v0 + 176) = v8;
        *(v0 + 16) = v9;
        *(v0 + 24) = SFCollectionCardSection.hydrateImages();
        swift_continuation_init();
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd, &_sSccyyts5NeverOGMR);
        OUTLINED_FUNCTION_1_76(v10);
        *(v0 + 88) = 1107296256;
        OUTLINED_FUNCTION_0_83(&block_descriptor_9);
        [v2 hydrateImagesWithCompletionHandler_];
        v3 = v0 + 16;
      }

      return MEMORY[0x282200938](v3);
    }
  }

  OUTLINED_FUNCTION_127();

  return v5();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_12_41();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  return MEMORY[0x2822009F8](SFCollectionCardSection.hydrateImages(), 0, 0);
}

{
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 152);

    OUTLINED_FUNCTION_127();

    return v4();
  }

  else
  {
    v6 = *(v0 + 168) + 1;
    *(v0 + 168) = v6;
    v7 = *(v0 + 152);
    if ((v7 & 0xC000000000000001) != 0)
    {
      MEMORY[0x25F89FFD0]();
    }

    else
    {
      v8 = *(v7 + 8 * v6 + 32);
    }

    OUTLINED_FUNCTION_10_42();
    *(v0 + 176) = v9;
    *(v0 + 16) = v10;
    *(v0 + 24) = SFCollectionCardSection.hydrateImages();
    swift_continuation_init();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd, &_sSccyyts5NeverOGMR);
    OUTLINED_FUNCTION_1_76(v11);
    *(v0 + 88) = 1107296256;
    OUTLINED_FUNCTION_0_83(&block_descriptor_9);
    [v1 hydrateImagesWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t @objc SFCardSection.hydrateImages()(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = a1;

  return _runTaskForBridgedAsyncMethod(_:)(a5, v8);
}

uint64_t @objc closure #1 in SFCollectionCardSection.hydrateImages()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in SFCollectionCardSection.hydrateImages();

  return SFCollectionCardSection.hydrateImages()();
}

uint64_t @objc closure #1 in SFCollectionCardSection.hydrateImages()()
{
  OUTLINED_FUNCTION_48();
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  v2[2](v2);
  _Block_release(v2);
  OUTLINED_FUNCTION_127();

  return v6();
}

uint64_t outlined bridged method (pb) of @objc SFCollectionCardSection.cardSections.getter(void *a1)
{
  v1 = [a1 cardSections];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for SFCardSection();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t partial apply for @objc closure #1 in SFCollectionCardSection.hydrateImages()()
{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_63(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_84(v4);

  return v7(v6);
}

uint64_t partial apply for @objc closure #1 in SFVerticalLayoutCardSection.hydrateImages()()
{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_63(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_84(v4);

  return v7(v6);
}

uint64_t partial apply for @objc closure #1 in SFDetailedRowCardSection.hydrateImages()()
{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_63(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_84(v4);

  return v7(v6);
}

uint64_t objectdestroyTm_2()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in SFCardSection.hydrateImages()()
{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_63(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_84(v4);

  return v7(v6);
}

unint64_t type metadata accessor for SFCardSection()
{
  result = lazy cache variable for type metadata for SFCardSection;
  if (!lazy cache variable for type metadata for SFCardSection)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SFCardSection);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_84(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_3_60(uint64_t result)
{
  v1[25] = result;
  v1[22] = v2;
  v1[18] = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_6_43()
{
  *(v0 + 88) = SFDetailedRowCardSection.hydrateImages();

  return swift_continuation_init();
}

uint64_t specialized _resumeUnsafeContinuation<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return MEMORY[0x282200948]();
}

uint64_t _runTaskForBridgedAsyncMethod(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &_sIeghH_IeAgH_TRTATu;
  v10[5] = v9;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTATu, v10);
}

uint64_t SFImage.loadImageData()()
{
  *(v1 + 224) = v0;
  return MEMORY[0x2822009F8](SFImage.loadImageData(), 0, 0);
}

{
  v1 = v0[28];
  Image = SFImage.shouldLoadImageData.getter();
  v3 = v0[28];
  if (Image)
  {
    objc_opt_self();
    v4 = 3.0;
    if (!swift_dynamicCastObjCClass())
    {
      v5 = v0[28];
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v4 = 3.0;
      }

      else
      {
        v4 = 1.0;
      }
    }

    v6 = v0[28];
    v7 = objc_opt_self();
    v0[10] = v0;
    v0[15] = v0 + 26;
    v0[11] = SFImage.loadImageData();
    v8 = swift_continuation_init();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation4DataVSgs5NeverOGMd, &_sSccy10Foundation4DataVSgs5NeverOGMR);
    OUTLINED_FUNCTION_0_85(v9);
    v0[19] = 1107296256;
    v0[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?) -> () with result type Data?;
    v0[21] = &block_descriptor_3_0;
    v0[22] = v8;
    [v7 imageDataFromImage:v6 scale:0 isDarkStyle:v0 + 18 completion:v4];
    v10 = v0 + 10;
    goto LABEL_9;
  }

  v11 = [v0[28] badgingImage];
  v0[29] = v11;
  if (v11)
  {
    v12 = v11;
    v0[2] = v0;
    OUTLINED_FUNCTION_3_61();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd, &_sSccyyts5NeverOGMR);
    OUTLINED_FUNCTION_0_85(v13);
    v0[19] = 1107296256;
    OUTLINED_FUNCTION_2_65();
    [v12 loadImageDataWithCompletionHandler_];
    v10 = v0 + 2;
LABEL_9:

    return MEMORY[0x282200938](v10);
  }

  OUTLINED_FUNCTION_127();

  return v14();
}

{
  OUTLINED_FUNCTION_48();
  v4 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  return MEMORY[0x2822009F8](SFImage.loadImageData(), 0, 0);
}

{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 216);
  if (v1 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v3 = *(v0 + 208);
    v4 = *(v0 + 216);
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v3, v1);
  }

  [*(v0 + 224) setImageData_];

  v5 = [*(v0 + 224) badgingImage];
  *(v0 + 232) = v5;
  if (v5)
  {
    v6 = v5;
    *(v0 + 16) = v0;
    OUTLINED_FUNCTION_3_61();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd, &_sSccyyts5NeverOGMR);
    OUTLINED_FUNCTION_0_85(v7);
    *(v0 + 152) = 1107296256;
    OUTLINED_FUNCTION_2_65();
    [v6 loadImageDataWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    OUTLINED_FUNCTION_127();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_48();
  v4 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  return MEMORY[0x2822009F8](SFImage.loadImageData(), 0, 0);
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_127();

  return v1();
}

BOOL SFImage.shouldLoadImageData.getter()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  return swift_dynamicCastObjCClass() != 0;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?) -> () with result type Data?(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    a2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xF000000000000000;
  }

  return specialized _resumeUnsafeContinuation<A>(_:_:)(v3, a2, v6);
}

uint64_t @objc SFImage.loadImageData()(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v6 = a1;

  return _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in SFImage.loadImageData(), v5);
}

uint64_t @objc closure #1 in SFImage.loadImageData()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in SFImage.loadImageData();

  return SFImage.loadImageData()();
}

uint64_t @objc closure #1 in SFImage.loadImageData()()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  OUTLINED_FUNCTION_11();
  *v6 = v5;

  v3[2](v3);
  _Block_release(v3);
  OUTLINED_FUNCTION_127();

  return v7();
}

uint64_t partial apply for @objc closure #1 in SFImage.loadImageData()()
{
  OUTLINED_FUNCTION_78();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return @objc closure #1 in SFImage.loadImageData()(v2, v3);
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return v7();
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return _sIeghH_IeAgH_TR(v2, v3, v5);
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return v8();
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_23(v7);
  *v8 = v9;
  v8[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return _sIeAgH_ytIeAgHr_TR(a1, v3, v4, v6);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  outlined init with copy of TaskPriority?(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    outlined destroy of TaskPriority?(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA()
{
  OUTLINED_FUNCTION_78();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_23(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_12(v4);

  return v7(v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_20()
{
  OUTLINED_FUNCTION_78();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_23(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_12(v4);

  return v7(v6);
}

uint64_t OUTLINED_FUNCTION_0_85(uint64_t result)
{
  *(v1 + 200) = result;
  *(v1 + 144) = MEMORY[0x277D85DD0];
  return result;
}

void OUTLINED_FUNCTION_2_65()
{
  v1[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) () -> () with result type ();
  v1[21] = v0;
  v1[22] = v2;
}

uint64_t OUTLINED_FUNCTION_3_61()
{
  *(v0 + 24) = SFImage.loadImageData();

  return swift_continuation_init();
}

Swift::Bool __swiftcall String.containsHTMLTag()()
{
  v2 = v1;
  v3 = v0;
  v4 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v5 = @nonobjc NSRegularExpression.init(pattern:options:)(0xD000000000000026, 0x800000025DBF07A0, 0);
  v6 = String.text.getter();
  v7 = MEMORY[0x25F89F730](v6);

  v8 = MEMORY[0x25F89F4C0](v3, v2);
  v9 = [v5 firstMatchInString:v8 options:0 range:{0, v7}];

  if (!v9)
  {
    return 0;
  }

  return 1;
}

Swift::String __swiftcall String.oms_collapseConsecutiveWordBreaks()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for OSSignpostID();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v47 - v13;
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v15, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v16 = OSSignposter.logHandle.getter();
  v17 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v18 = OUTLINED_FUNCTION_172();
    *v18 = 0;
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v16, v17, v19, "String+Extras.oms_collapseConsecutiveWordBreaks", "", v18, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  (*(v7 + 16))(v12, v14, v4);
  v20 = type metadata accessor for OSSignpostIntervalState();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  (*(v7 + 8))(v14, v4);
  if (one-time initialization token for consecutiveWordBreakRegex != -1)
  {
    OUTLINED_FUNCTION_0_86();
  }

  if (static NSRegularExpression.consecutiveWordBreakRegex)
  {
    v23 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v23 = v3;
    }

    v24 = 7;
    if (((v2 >> 60) & ((v3 & 0x800000000000000) == 0)) != 0)
    {
      v24 = 11;
    }

    v47[2] = 15;
    v47[3] = v24 | (v23 << 16);
    v47[0] = v3;
    v47[1] = v2;
    v25 = static NSRegularExpression.consecutiveWordBreakRegex;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySS5IndexVGMd, &_sSnySS5IndexVGMR);
    OUTLINED_FUNCTION_1_77();
    lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(v26, v27, &_sSnySS5IndexVGMR);
    lazy protocol witness table accessor for type String and conformance String();
    v28 = _NSRange.init<A, B>(_:in:)();
    v30 = v29;
    v31 = OUTLINED_FUNCTION_119();
    v32 = MEMORY[0x25F89F4C0](v31);
    v33 = MEMORY[0x25F89F4C0](12580, 0xE200000000000000);
    v34 = [v25 stringByReplacingMatchesInString:v32 options:0 range:v28 withTemplate:{v30, v33}];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_119();
    v35 = String.count.getter();
    if (v35 != String.count.getter())
    {
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_7_1();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logging.answerSynthesis);

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.info.getter();
      if (!OUTLINED_FUNCTION_88_0(v38))
      {

        goto LABEL_24;
      }

      v39 = swift_slowAlloc();
      *v39 = 134218240;
      OUTLINED_FUNCTION_119();
      *(v39 + 4) = String.count.getter();

      *(v39 + 12) = 2048;
      *(v39 + 14) = String.count.getter();

      _os_log_impl(&dword_25D85C000, v37, v38, "oms_trimCharacters: string length before collapsing: %ld and string length after collapsing: %ld", v39, 0x16u);
      OUTLINED_FUNCTION_42_0();
    }
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logging.answerSynthesis);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_88_0(v42))
    {
      v43 = OUTLINED_FUNCTION_172();
      *v43 = 0;
      _os_log_impl(&dword_25D85C000, v41, v42, "Failed to create regex for consecutive word break", v43, 2u);
      OUTLINED_FUNCTION_42_0();
    }
  }

LABEL_24:
  $defer #1 () in String.oms_collapseConsecutiveWordBreaks()();

  v44 = OUTLINED_FUNCTION_119();
  result._object = v45;
  result._countAndFlagsBits = v44;
  return result;
}

uint64_t String.nilIfEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = a1;

  return v3;
}

Swift::String __swiftcall String.camelCased(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v3 = String.lowercased()();
  v28 = countAndFlagsBits;
  v29 = object;
  v27 = &v28;
  v4 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Sequence<>.contains(_:), v26, v3._countAndFlagsBits, v3._object);
  v5 = *(v4 + 16);
  if (v5)
  {
    v32 = MEMORY[0x277D84F90];
    v6 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v8 = 0;
    v9 = v32;
    v25 = *(v4 + 16);
    v10 = (v4 + 56);
    while (v25 != v8)
    {
      if (v8 >= *(v4 + 16))
      {
        goto LABEL_15;
      }

      v12 = *(v10 - 3);
      v11 = *(v10 - 2);
      v14 = *(v10 - 1);
      v13 = *v10;
      if (v8)
      {
        v28 = *(v10 - 3);
        v29 = v11;
        v30 = v14;
        v31 = v13;
        lazy protocol witness table accessor for type Substring and conformance Substring();
        v6 = StringProtocol.capitalized.getter();
        v15 = v6;
        v16 = v7;
      }

      else
      {
        v17 = *v10;

        v18 = Substring.lowercased()();
        v15 = v18._countAndFlagsBits;
        v16 = v18._object;
      }

      v32 = v9;
      v20 = *(v9 + 16);
      v19 = *(v9 + 24);
      if (v20 >= v19 >> 1)
      {
        v6 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1);
        v9 = v32;
      }

      *(v9 + 16) = v20 + 1;
      v21 = v9 + 16 * v20;
      *(v21 + 32) = v15;
      *(v21 + 40) = v16;
      ++v8;
      v10 += 4;
      if (v5 == v8)
      {

        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
LABEL_13:
    v28 = v9;
    v22 = OUTLINED_FUNCTION_88();
    __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_24();
    BidirectionalCollection<>.joined(separator:)();

    v6 = OUTLINED_FUNCTION_88();
  }

  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

__C::_NSRange_optional __swiftcall String.nsRangeWithCompleteTokenMatch(of:)(Swift::String of)
{
  object = of._object;
  countAndFlagsBits = of._countAndFlagsBits;
  type metadata accessor for FeatureFlagService();
  v3 = swift_allocObject();
  v4 = String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)(countAndFlagsBits, object, v3);
  v6 = v5;
  LOBYTE(object) = v7;

  v8 = object & 1;
  v9 = v4;
  v10 = v6;
  result.value.length = v10;
  result.value.location = v9;
  result.is_nil = v8;
  return result;
}

Swift::String_optional __swiftcall String.substringFromNSRange(_:)(__C::_NSRange a1)
{
  Range<>.init(_:in:)();
  if (v1)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v4 = String.subscript.getter();
    v2 = MEMORY[0x25F89F5B0](v4);
    v3 = v5;
  }

  v6 = v2;
  v7 = v3;
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::String __swiftcall String.removePossessivePronouns()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for CharacterSet();
  v5 = OUTLINED_FUNCTION_14(v4);
  v45 = v6;
  v46 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NLTagger();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11NLTagSchemeaGMd, &_ss23_ContiguousArrayStorageCySo11NLTagSchemeaGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25DBC8180;
  v11 = *MEMORY[0x277CD8960];
  *(v10 + 32) = *MEMORY[0x277CD8960];
  v12 = v11;
  isa = NLTagger.__allocating_init(tagSchemes:)(v10).super.isa;
  outlined bridged method (mbgnn) of @objc NLTokenizer.string.setter(v3, v2, isa);
  type metadata accessor for LocalizedString();
  v14 = static LocalizedString.localizedString(forKey:)(0xD000000000000032, 0x800000025DBF90E0);
  v56 = MEMORY[0x277D84F90];
  v49 = v3;
  v50 = v2;
  v43 = v14;
  v51 = v14;
  v52 = v15;
  v47 = v15;
  v48 = isa;
  v53 = &v56;
  NLTagger.enumerateTags(in:unit:scheme:options:using:)();
  v16 = v56;
  v17 = *(v56 + 16);
  if (v17)
  {

    v18 = (v16 + 16 * v17 + 24);
    while (v17 <= *(v16 + 16))
    {
      --v17;
      v20 = *(v18 - 1);
      v19 = *v18;
      v21 = OUTLINED_FUNCTION_88();
      v22 = MEMORY[0x25F89F4C0](v21);

      v23 = OUTLINED_FUNCTION_24();
      v24 = MEMORY[0x25F89F4C0](v23);
      OUTLINED_FUNCTION_9_44();
      v27 = [v25 v26];

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v18 -= 2;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {

    v28 = v3;
    v30 = v2;
LABEL_5:
    v54 = v28;
    v55 = v30;
    v31 = v44;
    static CharacterSet.whitespacesAndNewlines.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v18 = StringProtocol.trimmingCharacters(in:)();
    v33 = v32;
    (*(v45 + 8))(v31, v46);

    v34 = v18 == v3 && v33 == v2;
    if (v34 || (OUTLINED_FUNCTION_63_0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      goto LABEL_11;
    }
  }

  v46 = v18;
  if (one-time initialization token for memoryCreationQU != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logging.memoryCreationQU);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v40 = 136315650;
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v40 + 4) = v41;
    *(v40 + 12) = 2080;
    *(v40 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v40 + 22) = 2080;
    OUTLINED_FUNCTION_63_0();
    *(v40 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v38, v39, "Removed possessive pronouns %s in %s = %s", v40, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
  }

LABEL_11:
  v35 = OUTLINED_FUNCTION_63_0();
  result._object = v36;
  result._countAndFlagsBits = v35;
  return result;
}

void String.oms_trimCharacters(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = *(a1 + 48) + ((v11 << 10) | (16 * v14));
    v16 = specialized Collection.first.getter(*v15, *(v15 + 8));
    if ((v16 & 0x100000000) == 0)
    {
      v17 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = *(v12 + 16);
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v12 = v21;
      }

      v18 = *(v12 + 16);
      v19 = v18 + 1;
      if (v18 >= *(v12 + 24) >> 1)
      {
        v24 = v18 + 1;
        v22 = *(v12 + 16);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v18 = v22;
        v19 = v24;
        v12 = v23;
      }

      *(v12 + 16) = v19;
      *(v12 + 4 * v18 + 32) = v17;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      specialized RangeReplaceableCollection.filter(_:)(a2, a3, v12);
      String.UnicodeScalarView.append<A>(contentsOf:)();

      return;
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v93 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v94 = &v86 - v5;
  v6 = String.standardizeQuotations()();
  v8 = v7;
  v96 = String.standardizeQuotations()();
  v10 = v9;
  if (one-time initialization token for search != -1)
  {
LABEL_53:
    OUTLINED_FUNCTION_35_0();
  }

  v11 = type metadata accessor for Logger();
  v12 = __swift_project_value_buffer(v11, static Logging.search);

  v92 = v12;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  v15 = os_log_type_enabled(v13, v14);
  v99 = v10;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v16 + 12) = 2080;
    *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v13, v14, "Starting check to see if standardized string: “%s”, contains standardized key: “%s”", v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  v17 = HIBYTE(v8) & 0xF;
  v97 = v6;
  v98 = v8;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v17 = v6 & 0xFFFFFFFFFFFFLL;
  }

  v18 = 7;
  if (((v8 >> 60) & ((v6 & 0x800000000000000) == 0)) != 0)
  {
    v18 = 11;
  }

  v95 = v18 | (v17 << 16);
  v19 = 4 * v17;
  v20 = 15;
  while (1)
  {
    v21 = v96;
    if (v19 <= v20 >> 14)
    {
      break;
    }

    v102 = v97;
    v103 = v98;
    v100 = v96;
    v101 = v99;
    v22 = type metadata accessor for Locale();
    __swift_storeEnumTagSinglePayload(v94, 1, 1, v22);
    v84 = lazy protocol witness table accessor for type String and conformance String();
    v85 = v84;
    v23 = StringProtocol.range<A>(of:options:range:locale:)();
    v20 = v24;
    v26 = v25;
    v27 = OUTLINED_FUNCTION_63_0();
    outlined destroy of (offset: Int, element: SearchResult)(v27, v28, &_s10Foundation6LocaleVSgMR);
    if ((v26 & 1) != 0 || (v23 ^ v20) < 0x4000)
    {
      break;
    }

    v29 = v97;
    v30 = v21;
    v31 = v98;
    v32 = String.distance(from:to:)();
    if (String.isCompleteToken(index:key:)(v32, v30, v99, v29, v31))
    {
      v102 = v23;
      v103 = v20;
      v100 = v97;
      v101 = v98;

      v33 = OUTLINED_FUNCTION_88();
      __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
      OUTLINED_FUNCTION_1_77();
      lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(v35, v36, &_sSnySS5IndexVGMR);
      v37 = _NSRange.init<A, B>(_:in:)();
LABEL_51:
      $defer #1 () in String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)();

      return v37;
    }
  }

  if (((*(*v93 + 80))(11) & 1) == 0)
  {
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_88_0(v70))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_100_3(&dword_25D85C000, v71, v72, "Photos MC internationalization disabled; returning early");
      OUTLINED_FUNCTION_42_0();
    }

    goto LABEL_38;
  }

  type metadata accessor for NLTagger();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11NLTagSchemeaGMd, &_ss23_ContiguousArrayStorageCySo11NLTagSchemeaGMR);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_25DBC8180;
  v39 = *MEMORY[0x277CD8960];
  *(v38 + 32) = *MEMORY[0x277CD8960];
  v40 = v39;
  v41.super.isa = NLTagger.__allocating_init(tagSchemes:)(v38).super.isa;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  v44 = OUTLINED_FUNCTION_88_0(v43);
  v45 = v99;
  v46 = v97;
  if (v44)
  {
    *OUTLINED_FUNCTION_172() = 0;
    OUTLINED_FUNCTION_100_3(&dword_25D85C000, v47, v48, "Starting NLTagger-based token matching");
    OUTLINED_FUNCTION_42_0();
  }

  v49 = MEMORY[0x277D84F90];
  v112[0] = MEMORY[0x277D84F90];
  outlined bridged method (mbgnn) of @objc NLTokenizer.string.setter(v21, v45, v41.super.isa);
  MEMORY[0x28223BE20](v50);
  *(&v86 - 4) = v21;
  *(&v86 - 3) = v45;
  v84 = v112;
  OUTLINED_FUNCTION_16_39();
  if (!*(v112[0] + 16))
  {

LABEL_38:
    v37 = 0;
    goto LABEL_51;
  }

  v111 = 0;
  v109 = 0;
  v110 = 1;
  v106 = v49;
  v107 = 0;
  v108 = 1;
  v51 = v98;
  outlined bridged method (mbgnn) of @objc NLTokenizer.string.setter(v46, v98, v41.super.isa);
  MEMORY[0x28223BE20](v52);
  *(&v86 - 8) = v46;
  *(&v86 - 7) = v51;
  *(&v86 - 6) = &v106;
  *(&v86 - 5) = v112;
  *(&v86 - 4) = &v111;
  *(&v86 - 3) = &v109;
  v84 = &v107;
  result = OUTLINED_FUNCTION_16_39();
  v37 = v109;
  v54 = v110;
  if ((v110 & 1) != 0 || v108 == 1)
  {
    v95 = v106;
    v55 = *(v106 + 16);
    if (v55)
    {
      v56 = 0;
      v92 = v95 + 32;
      v57 = &_ss10ArraySliceVySSGMd;
      v8 = 3;
      v10 = &_ss10ArraySliceVySSGMR;
      v58 = v55;
      v88 = v109;
      v87 = v110;
      v86 = v55;
      isa = v41.super.isa;
LABEL_22:
      v89 = v56 + 1;
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(v57, v10);
      v90 = v8;
      v6 = v8;
      v59 = v58;
      while (1)
      {
        if (!v59)
        {
          __break(1u);
          goto LABEL_53;
        }

        v102 = v95;
        v103 = v92;
        v60 = v56;
        v104 = v56;
        v105 = v6;
        OUTLINED_FUNCTION_2_66();
        v61 = v57;
        v62 = v10;
        lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>, v57, v10);

        OUTLINED_FUNCTION_24();
        v63 = BidirectionalCollection<>.joined(separator:)();
        v65 = v64;
        v8 = v96;

        if (v63 == v8 && v65 == v99)
        {
          break;
        }

        v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v67)
        {
          goto LABEL_41;
        }

        v6 += 2;
        --v59;
        v57 = v61;
        v10 = v62;
        v56 = v60;
        if (!v59)
        {
          --v58;
          v8 = v90 + 2;
          v56 = v89;
          v37 = v88;
          v54 = v87;
          v41.super.isa = isa;
          if (v89 != v86)
          {
            goto LABEL_22;
          }

          goto LABEL_31;
        }
      }

LABEL_41:
      v46 = v97;
      v73 = v8;
      v68 = v98;
      v102 = v97;
      v103 = v98;
      v100 = v73;
      v101 = v99;
      v74 = type metadata accessor for Locale();
      v75 = v94;
      __swift_storeEnumTagSinglePayload(v94, 1, 1, v74);
      v84 = lazy protocol witness table accessor for type String and conformance String();
      v85 = v84;
      StringProtocol.range<A>(of:options:range:locale:)();
      v77 = v76;
      outlined destroy of (offset: Int, element: SearchResult)(v75, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      if (v77)
      {

        goto LABEL_50;
      }

      OUTLINED_FUNCTION_9_44();
      v37 = String.distance(from:to:)();
      OUTLINED_FUNCTION_9_44();
      result = String.distance(from:to:)();
      v107 = result;
      v108 = 0;
      v41.super.isa = isa;
    }

    else
    {
LABEL_31:
      v46 = v97;
      v68 = v98;
      if (v54 & 1) != 0 || (v108)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    v68 = v98;
  }

  if (!__OFSUB__(v107, v37))
  {
    OUTLINED_FUNCTION_9_44();
    Range<>.init(_:in:)();
    if ((v78 & 1) == 0)
    {
      OUTLINED_FUNCTION_9_44();
      v79 = String.subscript.getter();
      v80 = MEMORY[0x25F89F5B0](v79);
      v82 = v81;

      v83 = String.containsValidPrecedingAndSucceedingCharacters(index:key:)(v37, v80, v82, v46, v68);

      if (v83)
      {

        goto LABEL_51;
      }

LABEL_49:

LABEL_50:

      v37 = 0;
      goto LABEL_51;
    }

LABEL_46:

    goto LABEL_49;
  }

  __break(1u);
  return result;
}

uint64_t String.standardizeQuotations()()
{
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v0 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v0;
}

void $defer #1 () in String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)()
{
  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logging.search);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v2 = 136315394;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v2 + 12) = 2080;
    *(v2 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, oslog, v1, "Ending check to see if standardized string: “%s” contains standardized key: “%s”", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8A1050](v4, -1, -1);
    MEMORY[0x25F8A1050](v2, -1, -1);
  }
}

uint64_t String.isCompleteToken(index:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = specialized _copyCollectionToContiguousArray<A>(_:)(a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  result = swift_initStackObject();
  *(result + 16) = xmmword_25DBC8900;
  *(result + 32) = 32;
  *(result + 40) = 0xE100000000000000;
  *(result + 48) = 39;
  *(result + 56) = 0xE100000000000000;
  *(result + 64) = 34;
  *(result + 72) = 0xE100000000000000;
  *(result + 80) = 92;
  *(result + 88) = 0xE100000000000000;
  *(result + 96) = 47;
  *(result + 104) = 0xE100000000000000;
  *(result + 112) = 91;
  *(result + 120) = 0xE100000000000000;
  *(result + 128) = 45;
  *(result + 136) = 0xE100000000000000;
  *(result + 144) = 46;
  *(result + 152) = 0xE100000000000000;
  *(result + 160) = 10911970;
  *(result + 168) = 0xA300000000000000;
  v8 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  if ((v8 & 0x8000000000000000) != 0)
  {
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  else
  {
    if (v8 >= v6[1].value._countAndFlagsBits)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v22 = a1;
    v10 = &v6[v8];
    object = v10[2].value._object;
    countAndFlagsBits = v10[2].value._countAndFlagsBits;
    v24 = object;
    MEMORY[0x28223BE20](result);
    p_countAndFlagsBits = &countAndFlagsBits;

    v12 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v20, v9);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();

    if (!v12)
    {

      return 0;
    }

    a1 = v22;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8920;
  *(inited + 32) = 32;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = 46;
  *(inited + 56) = 0xE100000000000000;
  *(inited + 64) = 44;
  *(inited + 72) = 0xE100000000000000;
  *(inited + 80) = 39;
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = 34;
  *(inited + 104) = 0xE100000000000000;
  *(inited + 112) = 58;
  *(inited + 120) = 0xE100000000000000;
  *(inited + 128) = 59;
  *(inited + 136) = 0xE100000000000000;
  *(inited + 144) = 33;
  *(inited + 152) = 0xE100000000000000;
  *(inited + 160) = 63;
  *(inited + 168) = 0xE100000000000000;
  *(inited + 176) = 92;
  *(inited + 184) = 0xE100000000000000;
  *(inited + 192) = 47;
  *(inited + 200) = 0xE100000000000000;
  *(inited + 208) = 93;
  *(inited + 216) = 0xE100000000000000;
  *(inited + 224) = 45;
  *(inited + 232) = 0xE100000000000000;
  *(inited + 240) = 10911970;
  *(inited + 248) = 0xA300000000000000;
  result = String.count.getter();
  v14 = a1 + result;
  if (__OFADD__(a1, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v14 >= v6[1].value._countAndFlagsBits)
  {

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    return 1;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = &v6[v14];
    v17 = v15[2].value._countAndFlagsBits;
    v16 = v15[2].value._object;

    countAndFlagsBits = v17;
    v24 = v16;
    MEMORY[0x28223BE20](v18);
    p_countAndFlagsBits = &countAndFlagsBits;
    v19 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v20, inited);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();

    return v19;
  }

LABEL_17:
  __break(1u);
  return result;
}

NLTagger __swiftcall NLTagger.__allocating_init(tagSchemes:)(Swift::OpaquePointer tagSchemes)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NLTagScheme(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithTagSchemes_];

  return v3;
}

uint64_t closure #1 in String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v7 = *MEMORY[0x277CD8988];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {

    return 1;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v13 & 1) == 0)
  {
LABEL_7:
    v14 = String.subscript.getter();
    v15 = MEMORY[0x25F89F5B0](v14);
    v17 = v16;

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v18 = *(*a6 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v18);
    v19 = *a6;
    *(v19 + 16) = v18 + 1;
    v20 = v19 + 16 * v18;
    *(v20 + 32) = v15;
    *(v20 + 40) = v17;
  }

  return 1;
}

void closure #2 in String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, unint64_t *a8, uint64_t a9, uint64_t a10)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v13 = *MEMORY[0x277CD8988];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {

    return;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v19 & 1) == 0)
  {
LABEL_7:
    v20 = String.subscript.getter();
    v21 = MEMORY[0x25F89F5B0](v20);
    v23 = v22;

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v24 = *(*a6 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v24);
    v25 = *a6;
    *(v25 + 16) = v24 + 1;
    v26 = v25 + 16 * v24;
    *(v26 + 32) = v21;
    *(v26 + 40) = v23;
    v27 = *a8;
    if ((*a8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v27 < *(*a7 + 16))
    {
      v28 = *a7 + 16 * v27;
      if (v21 == *(v28 + 32) && v23 == *(v28 + 40))
      {
      }

      else
      {
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v30 & 1) == 0)
        {
          *a8 = 0;
          *a9 = 0;
          *(a9 + 8) = 1;
          return;
        }
      }

      v31 = *a8;
      if (!*a8)
      {
        *a9 = String.distance(from:to:)();
        *(a9 + 8) = 0;
        v31 = *a8;
      }

      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (!v32)
      {
        *a8 = v33;
        if (v33 == *(*a7 + 16))
        {
          *a10 = String.distance(from:to:)();
          *(a10 + 8) = 0;
        }

        return;
      }

LABEL_25:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_25;
  }
}

Swift::Bool __swiftcall String.isAContinuousSubset(of:)(Swift::OpaquePointer of)
{
  if (!*(of._rawValue + 2))
  {
    return 0;
  }

  v3 = v2;
  v4 = v1;
  v5 = 0;
  v6 = &_ss10ArraySliceVySSGMd;
  v7 = 3;
  v8 = &_ss10ArraySliceVySSGMR;
  v9 = *(of._rawValue + 2);
  v19 = v9;
  while (2)
  {
    v20 = v5 + 1;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v8);
    v21 = v9;
    v22 = v7;
    do
    {
      if (!v9)
      {
        __break(1u);
        return result;
      }

      v11 = v5;
      OUTLINED_FUNCTION_2_66();
      v12 = v6;
      v13 = v8;
      lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>, v6, v8);

      OUTLINED_FUNCTION_24();
      v14 = BidirectionalCollection<>.joined(separator:)();
      v16 = v15;

      if (v14 == v4 && v16 == v3)
      {

        return 1;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        return 1;
      }

      v7 += 2;
      --v9;
      v6 = v12;
      v8 = v13;
      v5 = v11;
    }

    while (v9);
    result = 0;
    v9 = v21 - 1;
    v7 = v22 + 2;
    v5 = v20;
    if (v20 != v19)
    {
      continue;
    }

    break;
  }

  return result;
}

uint64_t String.containsValidPrecedingAndSucceedingCharacters(index:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = specialized _copyCollectionToContiguousArray<A>(_:)(a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  result = swift_initStackObject();
  *(result + 16) = xmmword_25DBC8930;
  *(result + 32) = 93;
  *(result + 40) = 0xE100000000000000;
  *(result + 48) = 41;
  *(result + 56) = 0xE100000000000000;
  *(result + 64) = 125;
  *(result + 72) = 0xE100000000000000;
  *(result + 80) = 37;
  *(result + 88) = 0xE100000000000000;
  v8 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v23 = xmmword_25DBC8930;
  if ((v8 & 0x8000000000000000) != 0)
  {
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  else
  {
    if (v8 >= v6[1].value._countAndFlagsBits)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v10 = &v6[v8];
    object = v10[2].value._object;
    countAndFlagsBits = v10[2].value._countAndFlagsBits;
    v25 = object;
    MEMORY[0x28223BE20](result);
    p_countAndFlagsBits = &countAndFlagsBits;

    v12 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v21, v9);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();

    if (v12)
    {

      v13 = 0;
      return v13 & 1;
    }
  }

  inited = swift_initStackObject();
  *(inited + 16) = v23;
  *(inited + 32) = 91;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = 40;
  *(inited + 56) = 0xE100000000000000;
  *(inited + 64) = 123;
  *(inited + 72) = 0xE100000000000000;
  *(inited + 80) = 37;
  *(inited + 88) = 0xE100000000000000;
  result = String.count.getter();
  v15 = a1 + result;
  if (__OFADD__(a1, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v15 >= v6[1].value._countAndFlagsBits)
  {

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v13 = 1;
    return v13 & 1;
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = &v6[v15];
    v18 = v16[2].value._countAndFlagsBits;
    v17 = v16[2].value._object;

    countAndFlagsBits = v18;
    v25 = v17;
    MEMORY[0x28223BE20](v19);
    p_countAndFlagsBits = &countAndFlagsBits;
    v20 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v21, inited);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();

    v13 = !v20;
    return v13 & 1;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t closure #1 in String.removePossessivePronouns()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v10 = String.subscript.getter();
  MEMORY[0x25F89F5B0](v10);

  String.lowercased()();

  if (one-time initialization token for memoryCreationQU != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logging.memoryCreationQU);
  v12 = a1;

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v15 + 12) = 2080;
    v17 = a8;
    if (a1)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v15 + 14) = v18;
    _os_log_impl(&dword_25D85C000, v13, v14, "Word %s is tagged as %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8A1050](v16, -1, -1);
    MEMORY[0x25F8A1050](v15, -1, -1);

    a8 = v17;
  }

  else
  {
  }

  lazy protocol witness table accessor for type String and conformance String();
  v19 = StringProtocol.contains<A>(_:)();

  if (v19)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySS5IndexVGMd, &_sSnySS5IndexVGMR);
    lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>, &_sSnySS5IndexVGMd, &_sSnySS5IndexVGMR);
    v20 = _NSRange.init<A, B>(_:in:)();
    v22 = v21;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v23 = *(*a8 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v23);
    v24 = *a8;
    *(v24 + 16) = v23 + 1;
    v25 = v24 + 16 * v23;
    *(v25 + 32) = v20;
    *(v25 + 40) = v22;
  }

  return 1;
}

uint64_t specialized RangeReplaceableCollection.filter(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v20 = 0;
  v21 = 0xE000000000000000;
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

    v17 = 0;
    goto LABEL_26;
  }

  v7 = 0;
  v22 = a2 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v11 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      v13 = v12;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = v22;
        v9 = v19 + v7;
        v11 = *(v19 + v7);
        if (*(v19 + v7) < 0)
        {
          switch(__clz(v11 ^ 0xFF))
          {
            case 0x1Au:
LABEL_23:
              v11 = v9[1] & 0x3F | ((v11 & 0x1F) << 6);
              v13 = 2;
              break;
            case 0x1Bu:
LABEL_24:
              v11 = ((v11 & 0xF) << 12) | ((v9[1] & 0x3F) << 6) | v9[2] & 0x3F;
              v13 = 3;
              break;
            case 0x1Cu:
LABEL_25:
              v11 = ((v11 & 0xF) << 18) | ((v9[1] & 0x3F) << 12) | ((v9[2] & 0x3F) << 6) | v9[3] & 0x3F;
              v13 = 4;
              break;
            default:
              goto LABEL_14;
          }

          goto LABEL_15;
        }
      }

      else
      {
        v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v8 = _StringObject.sharedUTF8.getter();
        }

        v9 = (v8 + v7);
        v10 = *(v8 + v7);
        v11 = *(v8 + v7);
        if (v10 < 0)
        {
          switch(__clz(v11 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_23;
            case 0x1Bu:
              goto LABEL_24;
            case 0x1Cu:
              goto LABEL_25;
            default:
              break;
          }
        }
      }

LABEL_14:
      v13 = 1;
    }

LABEL_15:
    v14 = *(a3 + 16);
    v15 = (a3 + 32);
    while (v14)
    {
      v16 = *v15++;
      --v14;
      if (v16 == v11)
      {
        goto LABEL_20;
      }
    }

    String.UnicodeScalarView.append(_:)();
LABEL_20:
    v7 += v13;
  }

  while (v7 < v5);

  v17 = v20;
LABEL_26:

  return v17;
}

uint64_t $defer #1 () in String.oms_collapseConsecutiveWordBreaks()()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v10, static Logging.searchSignposter);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v11, v12, v15, "String+Extras.oms_collapseConsecutiveWordBreaks", v13, v14, 2u);
    MEMORY[0x25F8A1050](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t *NSRegularExpression.consecutiveWordBreakRegex.unsafeMutableAddressor()
{
  if (one-time initialization token for consecutiveWordBreakRegex != -1)
  {
    OUTLINED_FUNCTION_0_86();
  }

  return &static NSRegularExpression.consecutiveWordBreakRegex;
}

id one-time initialization function for consecutiveWordBreakRegex()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = @nonobjc NSRegularExpression.init(pattern:options:)(0xD00000000000002DLL, 0x800000025DBF9120, 0);
  static NSRegularExpression.consecutiveWordBreakRegex = result;
  return result;
}

uint64_t static NSRegularExpression.consecutiveWordBreakRegex.getter()
{
  if (one-time initialization token for consecutiveWordBreakRegex != -1)
  {
    OUTLINED_FUNCTION_0_86();
  }

  v0 = static NSRegularExpression.consecutiveWordBreakRegex;
  v1 = static NSRegularExpression.consecutiveWordBreakRegex;
  return v0;
}

id @nonobjc NSRegularExpression.init(pattern:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x25F89F4C0]();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    String.subscript.getter();
    OUTLINED_FUNCTION_10_43();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v15 = v30;
    v8 = *(v30 + 16);
    v31 = *(v30 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v31 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v32 = (v15 + 32 * v8);
      v32[4] = v6;
      v32[5] = v10;
      v32[6] = v11;
      v32[7] = v12;
      return v15;
    }

LABEL_41:
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v15 = v33;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v43 = MEMORY[0x277D84F90];
  v16 = 15;
  while (1)
  {
    v41 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v41;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_8_47();
      v17 = String.subscript.getter();
      v11 = v18;
      v44[0] = v17;
      v44[1] = v18;
      v19 = v45(v44);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      OUTLINED_FUNCTION_8_47();
      v16 = String.index(after:)();
    }

    v22 = (v41 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v41 >> 14)
    {
      break;
    }

    v42 = String.subscript.getter();
    v37 = v24;
    v38 = v23;
    v36 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = *(v43 + 16);
      OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v43 = v28;
    }

    v12 = *(v43 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v43 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v43 = v29;
    }

    *(v43 + 16) = v11;
    v26 = (v43 + 32 * v12);
    v26[4] = v42;
    v26[5] = v38;
    v26[6] = v37;
    v26[7] = v36;
LABEL_20:
    OUTLINED_FUNCTION_8_47();
    v16 = String.index(after:)();
    if ((v22 & 1) == 0 && *(v43 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v43;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        String.subscript.getter();
        OUTLINED_FUNCTION_10_43();
        v15 = v43;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v31 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v34 = *(v15 + 16);
      OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v15 = v35;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

unint64_t type metadata accessor for NLTagger()
{
  result = lazy cache variable for type metadata for NLTagger;
  if (!lazy cache variable for type metadata for NLTagger)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NLTagger);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_86()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_43()
{
}

uint64_t OUTLINED_FUNCTION_16_39()
{

  return NLTagger.enumerateTags(in:unit:scheme:options:using:)();
}

uint64_t TaskGroup.oms_results.getter(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(a2 - 8);
  v2[5] = v3;
  v4 = *(v3 + 64) + 15;
  v2[6] = swift_task_alloc();
  v5 = *(*(type metadata accessor for Optional() - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for TaskGroup.Iterator();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](TaskGroup.oms_results.getter, 0, 0);
}

uint64_t TaskGroup.oms_results.getter()
{
  v1 = v0[10];
  v3 = v0[3];
  v2 = v0[4];
  v0[2] = static Array._allocateUninitialized(_:)();
  TaskGroup.makeAsyncIterator()();
  v4 = *(MEMORY[0x277D856B0] + 4);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_0_87(v5);

  return MEMORY[0x2822002E8](v6);
}

{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](TaskGroup.oms_results.getter, 0, 0);
}

{
  v1 = v0[7];
  v2 = v0[4];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[6];
    (*(v0[9] + 8))(v0[10], v0[8]);
    v4 = v0[2];

    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v1, v2);
    type metadata accessor for Array();
    Array.append(_:)();
    v7 = *(MEMORY[0x277D856B0] + 4);
    v8 = swift_task_alloc();
    v0[11] = v8;
    *v8 = v0;
    v9 = OUTLINED_FUNCTION_0_87();

    return MEMORY[0x2822002E8](v9);
  }
}

uint64_t OUTLINED_FUNCTION_0_87(uint64_t a1)
{
  *(a1 + 8) = TaskGroup.oms_results.getter;
  v2 = v1[10];
  result = v1[7];
  v4 = v1[8];
  return result;
}

uint64_t UTType.searchToolExportedExperiences.unsafeMutableAddressor()
{
  if (one-time initialization token for searchToolExportedExperiences != -1)
  {
    OUTLINED_FUNCTION_38_11();
  }

  v0 = type metadata accessor for UTType();

  return __swift_project_value_buffer(v0, static UTType.searchToolExportedExperiences);
}

uint64_t one-time initialization function for searchToolExportedExperiences()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6 - v2;
  v4 = type metadata accessor for UTType();
  __swift_allocate_value_buffer(v4, static UTType.searchToolExportedExperiences);
  __swift_project_value_buffer(v4, static UTType.searchToolExportedExperiences);
  static UTType.data.getter();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  return UTType.init(exportedAs:conformingTo:)();
}

uint64_t static UTType.searchToolExportedExperiences.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for searchToolExportedExperiences != -1)
  {
    OUTLINED_FUNCTION_38_11();
  }

  v2 = type metadata accessor for UTType();
  v3 = __swift_project_value_buffer(v2, static UTType.searchToolExportedExperiences);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static UTType.searchToolExportedExperiences.setter(uint64_t a1)
{
  if (one-time initialization token for searchToolExportedExperiences != -1)
  {
    OUTLINED_FUNCTION_38_11();
  }

  v2 = type metadata accessor for UTType();
  v3 = __swift_project_value_buffer(v2, static UTType.searchToolExportedExperiences);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static UTType.searchToolExportedExperiences.modify())()
{
  if (one-time initialization token for searchToolExportedExperiences != -1)
  {
    OUTLINED_FUNCTION_38_11();
  }

  v0 = type metadata accessor for UTType();
  __swift_project_value_buffer(v0, static UTType.searchToolExportedExperiences);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

id static NSUserDefaults.makeModelCatalogAjaxUserDefaults()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = @nonobjc NSUserDefaults.init(suiteName:)(0xD00000000000001BLL, 0x800000025DBF9150);
  if (!v1)
  {
    if (one-time initialization token for utilities != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logging.utilities);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_25D85C000, v3, v4, "Failed to create UserDefaults for ModelCatalog.Ajax", v5, 2u);
      MEMORY[0x25F8A1050](v5, -1, -1);
    }
  }

  return v1;
}

uint64_t static NSUserDefaults.makeOmniSearchUserDefaults()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = @nonobjc NSUserDefaults.init(suiteName:)(0xD000000000000014, 0x800000025DBF6940);
  if (!result)
  {
    result = OUTLINED_FUNCTION_2_67();
    __break(1u);
  }

  return result;
}

uint64_t UserDefault.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v16 - v9;
  v11 = *(a1 + 28);
  v12 = *(v2 + *(a1 + 32));
  v13 = MEMORY[0x25F89F4C0](*(v2 + v11), *(v2 + v11 + 8), v8);
  v14 = [v12 objectForKey_];

  if (v14)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v16, v17);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v5);
    return (*(*(v5 - 8) + 32))(a2, v10, v5);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v5);
    return (*(*(v5 - 8) + 16))(a2, v2, v5);
  }
}

uint64_t UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + *(a2 + 32));
  v6 = *(a2 + 16);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  v8 = MEMORY[0x25F89F4C0](*(v2 + *(a2 + 28)), *(v2 + *(a2 + 28) + 8));
  [v5 setObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  v9 = *(*(v6 - 8) + 8);

  return v9(a1, v6);
}

uint64_t UserDefault.init(key:defaultValue:container:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for UserDefault();
  v13 = (a6 + *(v12 + 28));
  *v13 = a1;
  v13[1] = a2;
  result = (*(*(a5 - 8) + 32))(a6, a3, a5);
  *(a6 + *(v12 + 32)) = a4;
  return result;
}

uint64_t UserDefault.key.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

void UserDefault.container.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);

  *(v2 + v4) = a1;
}

uint64_t (*UserDefault.container.modify(uint64_t a1, uint64_t a2))()
{
  result = _s10OmniSearch11GeoLocationVSgWOi_;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t key path getter for UserDefault.wrappedValue : <A>UserDefault<A>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = type metadata accessor for UserDefault();
  return UserDefault.wrappedValue.getter(v5, a3);
}

uint64_t key path setter for UserDefault.wrappedValue : <A>UserDefault<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a3 + a4 - 8) - 8) + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6, v5);
  v9 = type metadata accessor for UserDefault();
  return UserDefault.wrappedValue.setter(v7, v9);
}

void (*UserDefault.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v6 = *(a2 + 16);
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  v5[4] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v5[5] = v9;
  UserDefault.wrappedValue.getter(a2, v9);
  return UserDefault.wrappedValue.modify;
}

void UserDefault.wrappedValue.modify(uint64_t **a1, char a2)
{
  v5 = *a1;
  v6 = (*a1)[4];
  v7 = (*a1)[5];
  if (a2)
  {
    v8 = OUTLINED_FUNCTION_1_78();
    v9(v8);
    UserDefault.wrappedValue.setter(v6, v3);
    (*(v4 + 8))(v7, v2);
  }

  else
  {
    v10 = v5[1];
    UserDefault.wrappedValue.setter((*a1)[5], *v5);
  }

  free(v7);
  free(v6);

  free(v5);
}

Swift::Void __swiftcall UserDefault.removeObject()()
{
  v2 = *(v1 + *(v0 + 32));
  v3 = MEMORY[0x25F89F4C0](*(v1 + *(v0 + 28)), *(v1 + *(v0 + 28) + 8));
  [v2 removeObjectForKey_];
}

uint64_t UserDefaultsTokenGeneration.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

id UserDefaultsTokenGeneration.projectedValue.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;

  return v4;
}

uint64_t static NSUserDefaults.makeTokenGenerationUserDefaults()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = @nonobjc NSUserDefaults.init(suiteName:)(0xD000000000000019, 0x800000025DBF91C0);
  if (!result)
  {
    result = OUTLINED_FUNCTION_2_67();
    __break(1u);
  }

  return result;
}

uint64_t UserDefaultsTokenGeneration.init(key:container:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t UserDefaultsTokenGeneration.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = MEMORY[0x25F89F4C0](v5, v6);
  v9 = [v7 objectForKey_];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v13, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v10 = *(a1 + 16);
  v11 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a2, v11 ^ 1u, 1, v10);
}

uint64_t key path getter for UserDefaultsTokenGeneration.wrappedValue : <A>UserDefaultsTokenGeneration<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v8 = *a1;
  v9 = *(a1 + 1);
  v6 = type metadata accessor for UserDefaultsTokenGeneration();
  return UserDefaultsTokenGeneration.wrappedValue.getter(v6, a4);
}

uint64_t key path setter for UserDefaultsTokenGeneration.wrappedValue : <A>UserDefaultsTokenGeneration<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, a1, v8);
  v12 = type metadata accessor for UserDefaultsTokenGeneration();
  return UserDefaultsTokenGeneration.wrappedValue.setter(v10, v12);
}

uint64_t UserDefaultsTokenGeneration.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = v2[2];
  (*(v6 + 16))(&v15 - v9, a1, v5, v8);
  v12 = 0;
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) != 1)
  {
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(*(v4 - 8) + 8))(v10, v4);
  }

  v13 = MEMORY[0x25F89F4C0](*v2, v2[1]);
  [v11 setObject:v12 forKey:v13];
  swift_unknownObjectRelease();

  return (*(v6 + 8))(a1, v5);
}

void (*UserDefaultsTokenGeneration.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v6 = *(a2 + 16);
  v7 = type metadata accessor for Optional();
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64);
  v5[4] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v5[5] = v10;
  v12 = *v2;
  v13 = *(v2 + 1);
  UserDefaultsTokenGeneration.wrappedValue.getter(a2, v10);
  return UserDefaultsTokenGeneration.wrappedValue.modify;
}

void UserDefaultsTokenGeneration.wrappedValue.modify(uint64_t **a1, char a2)
{
  v5 = *a1;
  v6 = (*a1)[4];
  v7 = (*a1)[5];
  if (a2)
  {
    v8 = OUTLINED_FUNCTION_1_78();
    v9(v8);
    UserDefaultsTokenGeneration.wrappedValue.setter(v6, v3);
    (*(v4 + 8))(v7, v2);
  }

  else
  {
    v10 = v5[1];
    UserDefaultsTokenGeneration.wrappedValue.setter((*a1)[5], *v5);
  }

  free(v7);
  free(v6);

  free(v5);
}

Swift::Void __swiftcall UserDefaultsTokenGeneration.removeObject()()
{
  v1 = v0[2];
  v2 = MEMORY[0x25F89F4C0](*v0, v0[1]);
  [v1 removeObjectForKey_];
}

uint64_t UserDefault.with(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v5[15] = *(a4 + 16);
  v6 = type metadata accessor for Optional();
  v5[16] = v6;
  v7 = *(v6 - 8);
  v5[17] = v7;
  v8 = *(v7 + 64) + 15;
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](UserDefault.with(_:_:), 0, 0);
}

uint64_t UserDefault.with(_:_:)()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + *(*(v0 + 104) + 32));
  v3 = (v1 + *(*(v0 + 104) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = MEMORY[0x25F89F4C0](*v3, v5);
  v7 = [v2 objectForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any((v0 + 48), (v0 + 16));
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  v8 = *(v0 + 144);
  v9 = *(v0 + 120);
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v12 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v8, v12 ^ 1u, 1, v9);
  v13 = _bridgeAnythingToObjectiveC<A>(_:)();
  v14 = MEMORY[0x25F89F4C0](v4, v5);
  [v2 setObject:v13 forKey:v14];

  swift_unknownObjectRelease();
  v19 = (v10 + *v10);
  v15 = v10[1];
  v16 = swift_task_alloc();
  *(v0 + 152) = v16;
  *v16 = v0;
  v16[1] = UserDefault.with(_:_:);
  v17 = *(v0 + 96);

  return v19();
}

{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = UserDefault.with(_:_:);
  }

  else
  {
    v3 = UserDefault.with(_:_:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  OUTLINED_FUNCTION_4_55();
  (*(v2 + 8))(v1, v0);

  v4 = *(v3 + 8);

  return v4();
}

{
  OUTLINED_FUNCTION_4_55();
  (*(v2 + 8))(v1, v0);

  v4 = *(v3 + 8);
  v5 = *(v3 + 160);

  return v4();
}

void $defer #1 <A>() in UserDefault.with(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v14);
  if (__swift_getEnumTagSinglePayload(v10, 1, a3) == 1)
  {
    (*(v7 + 8))(v10, v6);
    v17 = type metadata accessor for UserDefault();
    v18 = *(a2 + *(v17 + 32));
    v19 = MEMORY[0x25F89F4C0](*(a2 + *(v17 + 28)), *(a2 + *(v17 + 28) + 8));
    [v18 removeObjectForKey_];
  }

  else
  {
    (*(v11 + 32))(v16, v10, a3);
    v20 = type metadata accessor for UserDefault();
    v21 = *(a2 + *(v20 + 32));
    v22 = _bridgeAnythingToObjectiveC<A>(_:)();
    v23 = MEMORY[0x25F89F4C0](*(a2 + *(v20 + 28)), *(a2 + *(v20 + 28) + 8));
    [v21 setObject:v22 forKey:v23];
    swift_unknownObjectRelease();

    (*(v11 + 8))(v16, a3);
  }
}

id @nonobjc NSUserDefaults.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x25F89F4C0]();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

unint64_t type metadata completion function for UserDefault(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for NSUserDefaults();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserDefault(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void storeEnumTagSinglePayload for UserDefault(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[1] = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t type metadata instantiation function for UserDefaultsTokenGeneration()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for UserDefaultsTokenGeneration(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UserDefaultsTokenGeneration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_78()
{
  v2 = v0[2];
  v4 = *v0;
  v3 = v0[1];
  v5 = *(v0[3] + 16);
  return v1;
}

uint64_t OUTLINED_FUNCTION_2_67()
{

  return _assertionFailure(_:_:file:line:flags:)();
}

void OUTLINED_FUNCTION_4_55()
{
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];
  v6 = v0[18];

  $defer #1 <A>() in UserDefault.with(_:_:)(v6, v5, v3);
}

id LinkCardBuilder.buildHorizontallyScrollingCardSection()()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  *&v4 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v0 + 24) buildResult];
  v8 = *(v0 + 16);
  v9 = v7;
  v10 = [v8 attributeSet];
  v11 = [v10 URL];

  if (v11)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v12);
    v11 = v13;
    (*(v2 + 8))(v6, v1);
  }

  [v9 setUrl_];

  v14 = *MEMORY[0x277D65C98];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  outlined bridged method (mbnn) of @objc SFSearchResult.sectionBundleIdentifier.setter(v15, v16, v9);

  v17 = [objc_opt_self() resultBuilderWithResult_];
  v18 = [v17 buildHorizontallyScrollingCardSection];
  v19 = [objc_allocWithZone(MEMORY[0x277D4C278]) init];
  v20 = [objc_allocWithZone(MEMORY[0x277D4C290]) init];
  [v19 setCollectionStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_25DBC8190;
  *(v21 + 32) = v18;
  v22 = v18;
  outlined bridged method (mbnn) of @objc SFCollectionCardSection.cardSections.setter();

  return v19;
}

uint64_t LinkCardBuilder.__allocating_init(csItem:resultBuilder:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t LinkCardBuilder.init(csItem:resultBuilder:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t LinkCardBuilder.__deallocating_deinit()
{
  DefaultSpotlightCardBuilder.deinit();

  return swift_deallocClassInstance();
}

void outlined bridged method (mbnn) of @objc SFSearchResult.sectionBundleIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0]();

  [a3 setSectionBundleIdentifier_];
}

uint64_t PhotoCardBuilder.__allocating_init(csItem:resultBuilder:imageCornerRoundingStyle:)(uint64_t a1, uint64_t a2, int a3)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t PhotoCardBuilder.init(csItem:resultBuilder:imageCornerRoundingStyle:)(uint64_t a1, uint64_t a2, int a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

id PhotoCardBuilder.buildHorizontallyScrollingCardSection()()
{
  v1 = v0;
  v2 = *(v0 + 24);
  v3 = [v2 buildHorizontallyScrollingCardSection];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && (v5 = v4, (v6 = [v4 thumbnail]) != 0))
  {
    v7 = v6;
    [v6 setSize_];
    [v7 setCornerRoundingStyle_];
    v8 = [objc_allocWithZone(MEMORY[0x277D4C278]) init];
    v9 = [objc_allocWithZone(MEMORY[0x277D4C290]) init];
    [v8 setCollectionStyle_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_25DBC8190;
    *(v10 + 32) = v5;
    outlined bridged method (mbnn) of @objc SFCollectionCardSection.cardSections.setter();

    return v8;
  }

  else
  {

    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logging.search);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v2;
      *v16 = v2;
      v17 = v2;
      _os_log_impl(&dword_25D85C000, v13, v14, "[VISUAL] Failed to get photo visual from spotlight, resultBuilder: %@", v15, 0xCu);
      outlined destroy of NSObject?(v16);
      MEMORY[0x25F8A1050](v16, -1, -1);
      MEMORY[0x25F8A1050](v15, -1, -1);
    }

    v18 = [v2 buildHorizontallyScrollingCardSection];

    return v18;
  }
}

uint64_t PhotoCardBuilder.__deallocating_deinit()
{
  DefaultSpotlightCardBuilder.deinit();

  return swift_deallocClassInstance();
}

id static DefaultSpotlightCardBuilder.buildCommand(item:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D4C4D8]) init];
  v3 = [a1 uniqueIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  outlined bridged method (mbnn) of @objc SFOpenCoreSpotlightItemCommand.coreSpotlightIdentifier.setter(v4, v6, v2);
  v7 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(a1);
  if (v8)
  {
    v9 = MEMORY[0x25F89F4C0](v7);
  }

  else
  {
    v9 = 0;
  }

  [v2 setApplicationBundleIdentifier_];

  return v2;
}

uint64_t DefaultSpotlightCardBuilder.init(csItem:resultBuilder:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

double DefaultSpotlightCardBuilder.buildVerticalCardSections()()
{
  v1 = (*(*v0 + 128))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v2 = swift_allocObject();
  *&result = 1;
  *(v2 + 16) = xmmword_25DBC8190;
  *(v2 + 32) = v1;
  return result;
}

uint64_t DefaultSpotlightCardBuilder.buildInlineCardSections()()
{
  v1 = [*(v0 + 24) buildInlineCardSections];
  type metadata accessor for SFCardSection();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id DefaultSpotlightCardBuilder.buildHorizontallyScrollingCardSection()()
{
  v1 = [*(v0 + 24) buildHorizontallyScrollingCardSection];

  return v1;
}

uint64_t DefaultSpotlightCardBuilder.__allocating_init(csItem:resultBuilder:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t DefaultSpotlightCardBuilder.__deallocating_deinit()
{
  DefaultSpotlightCardBuilder.deinit();

  return swift_deallocClassInstance();
}

void outlined bridged method (mbnn) of @objc SFOpenCoreSpotlightItemCommand.coreSpotlightIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0]();

  [a3 setCoreSpotlightIdentifier_];
}

uint64_t outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(void *a1)
{
  v1 = [a1 bundleID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t SFCard.snippetPluginModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Layout();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v11 = v10 - v9;
  if (SFCard.isEmpty.getter())
  {
    v12 = type metadata accessor for RGPluginModel();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v12);
  }

  else
  {
    v14 = v1;
    CodableCard.init(wrappedValue:)();
    (*(v6 + 104))(v11, *MEMORY[0x277D46C38], v3);
    Layout.snippetModel()();
    (*(v6 + 8))(v11, v3);
    v15 = type metadata accessor for RGPluginModel();
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v15);
  }
}

id SFCard.init(data:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  v2 = objc_allocWithZone(MEMORY[0x277D4C728]);
  v3 = OUTLINED_FUNCTION_119();
  outlined copy of Data._Representation(v3, v4);
  v5 = OUTLINED_FUNCTION_119();
  v7 = @nonobjc _SFPBCard.init(data:)(v5, v6);
  if (!v7)
  {
    v12 = OUTLINED_FUNCTION_119();
    outlined consume of Data?(v12, v13);
    return 0;
  }

  v8 = v7;
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProtobuf_];

  v10 = OUTLINED_FUNCTION_119();
  outlined consume of Data?(v10, v11);
  if (v9)
  {
  }

  return v9;
}

uint64_t SFCard.data.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D4C728]) initWithFacade_];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 data];
  if (!v3)
  {

    return 0;
  }

  v4 = v3;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

id _s10OmniSearch18EntityCardBuildingPAAE15cardForEntities_7contextSo6SFCardCSayAA0bC0VG_AA0bC13VisualContextCtFZAA0cD7BuilderV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v47 - v6;
  v8 = type metadata accessor for SearchResult(0);
  v9 = OUTLINED_FUNCTION_14(v8);
  v50 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  v15 = v14 - v13;
  v16 = type metadata accessor for SearchEntity(0);
  v17 = OUTLINED_FUNCTION_18_8(v16);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = *(v20 + 84);
    v26 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v27 = *(v21 + 72);
    v28 = MEMORY[0x277D84F90];
    v49 = v8;
    do
    {
      OUTLINED_FUNCTION_1_79();
      _s10OmniSearch0B6EntityVWOcTm_2(v26, v23, v29);
      outlined init with copy of SearchResult?(&v23[v25], v7);
      _s10OmniSearch0B6EntityVWOhTm_1(v23, v2);
      if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
      {
        outlined destroy of IntentApplication?(v7, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      }

      else
      {
        outlined init with take of SearchResult(v7, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = *(v28 + 16);
          v35 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35, v36, v37, v28);
          v28 = v38;
        }

        v31 = *(v28 + 16);
        v30 = *(v28 + 24);
        v2 = (v31 + 1);
        if (v31 >= v30 >> 1)
        {
          v39 = OUTLINED_FUNCTION_106_6(v30);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39, v40, v41, v28);
          v28 = v42;
        }

        *(v28 + 16) = v2;
        OUTLINED_FUNCTION_9_45();
        outlined init with take of SearchResult(v15, v28 + v32 + *(v33 + 72) * v31);
        v8 = v49;
      }

      v26 += v27;
      --v24;
    }

    while (v24);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  if (*(v28 + 16))
  {
    type metadata accessor for ResultSectionBuilder();
    v43 = swift_allocObject();
    v44 = v48;
    *(v43 + 16) = v28;
    *(v43 + 24) = v44;

    v45 = ResultSectionBuilder.buildCard()();
  }

  else
  {

    return [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  }

  return v45;
}

id specialized static EntityCardBuilding.cardForEntities(_:context:)(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for SearchResult(0);
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchEntity(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = *(v13 + 84);
    v19 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = *(v14 + 72);
    v21 = MEMORY[0x277D84F90];
    v32 = v7;
    do
    {
      _s10OmniSearch0B6EntityVWOcTm_2(v19, v16, type metadata accessor for SearchEntity);
      outlined init with copy of SearchResult?(&v16[v18], v6);
      _s10OmniSearch0B6EntityVWOhTm_1(v16, type metadata accessor for SearchEntity);
      if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
      {
        outlined destroy of IntentApplication?(v6, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      }

      else
      {
        outlined init with take of SearchResult(v6, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1, v21);
          v21 = v24;
        }

        v23 = *(v21 + 16);
        v22 = *(v21 + 24);
        if (v23 >= v22 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1, v21);
          v21 = v25;
        }

        *(v21 + 16) = v23 + 1;
        outlined init with take of SearchResult(v10, v21 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v23);
        v7 = v32;
      }

      v19 += v20;
      --v17;
    }

    while (v17);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  if (*(v21 + 16))
  {
    type metadata accessor for ResultSectionBuilder();
    v26 = swift_allocObject();
    v27 = v31;
    *(v26 + 16) = v21;
    *(v26 + 24) = v27;

    v28 = ResultSectionBuilder.buildCard()();
  }

  else
  {

    return [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  }

  return v28;
}

id static EntityCardBuilding.cardForEntities(_:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v46 - v7;
  v9 = type metadata accessor for SearchResult(0);
  v10 = OUTLINED_FUNCTION_14(v9);
  v50 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  v16 = v15 - v14;
  v17 = type metadata accessor for SearchEntity(0);
  v18 = OUTLINED_FUNCTION_18_8(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = *(v21 + 84);
    v27 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v28 = *(v22 + 72);
    v29 = MEMORY[0x277D84F90];
    v49 = v9;
    do
    {
      OUTLINED_FUNCTION_1_79();
      _s10OmniSearch0B6EntityVWOcTm_2(v27, v24, v30);
      outlined init with copy of SearchResult?(&v24[v26], v8);
      _s10OmniSearch0B6EntityVWOhTm_1(v24, a1);
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        outlined destroy of IntentApplication?(v8, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      }

      else
      {
        outlined init with take of SearchResult(v8, v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = *(v29 + 16);
          v36 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36, v37, v38, v29);
          v29 = v39;
        }

        v32 = *(v29 + 16);
        v31 = *(v29 + 24);
        a1 = v32 + 1;
        if (v32 >= v31 >> 1)
        {
          v40 = OUTLINED_FUNCTION_106_6(v31);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v40, v41, v42, v29);
          v29 = v43;
        }

        *(v29 + 16) = a1;
        OUTLINED_FUNCTION_9_45();
        outlined init with take of SearchResult(v16, v29 + v33 + *(v34 + 72) * v32);
        v9 = v49;
      }

      v27 += v28;
      --v25;
    }

    while (v25);
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  v44 = (*(v48 + 16))(v29, v46, v47);

  if (!v44)
  {
    return [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  }

  return v44;
}

void SFCard.cardDetails.getter()
{
  v1 = outlined bridged method (pb) of @objc SFCard.cardSections.getter(v0);
  if (v1)
  {
    v2 = v1;
    v3 = specialized Array.count.getter(v1);
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v3 == v4)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v16 = BidirectionalCollection<>.joined(separator:)();
        v18 = v17;

        goto LABEL_16;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x25F89FFD0](v4, v2);
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
      if (__OFADD__(v4, 1))
      {
        break;
      }

      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SFCardSectionCmMd, &_sSo13SFCardSectionCmMR);
      v8 = String.init<A>(describing:)();
      v10 = v9;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = *(v5 + 16);
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v5 = v14;
      }

      v11 = *(v5 + 16);
      if (v11 >= *(v5 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v5 = v15;
      }

      *(v5 + 16) = v11 + 1;
      v12 = v5 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v10;
      ++v4;
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
LABEL_16:
    MEMORY[0x25F89F6C0](v16, v18);

    MEMORY[0x25F89F6C0](93, 0xE100000000000000);
  }
}

id static EntityCardBuilding.cardForSearchResults(_:context:)(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  type metadata accessor for ResultSectionBuilder();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = ResultSectionBuilder.buildCard()();

  return v5;
}

{
  return static EntityCardBuilding.cardForSearchResults(_:context:)(a1, a2);
}

Swift::Int CardSectionOption.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](v1);
  return Hasher._finalize()();
}

id EntityCardBuilder.cardForSearchResult(_:_:_:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SearchResult(0);
  v9 = OUTLINED_FUNCTION_17(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v76 = &v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v68 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v68 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v68 - v23;
  v75 = *a2;
  v25 = SearchResultItem.experience.getter();
  if (v25)
  {
    v26 = (*(*v25 + 128))();

    if (v26)
    {
      if (!SFCard.isEmpty.getter())
      {
        goto LABEL_6;
      }
    }
  }

  v27 = *(v8 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v26 = CodableNSSecureCoding.wrappedValue.getter();
  LOBYTE(v77) = v75;
  EntityCardBuilder.sectionForCSItem(_:_:_:)(v26, &v77, a3, a4);

  [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  v28 = OUTLINED_FUNCTION_112_2();
  outlined bridged method (mbnn) of @objc SFCard.cardSections.setter(v28, v26);
LABEL_6:
  v73 = v8;
  v29 = v26;
  if (one-time initialization token for visual != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = __swift_project_value_buffer(v30, static Logging.visual);
  _s10OmniSearch0B6EntityVWOcTm_2(a1, v24, type metadata accessor for SearchResult);
  _s10OmniSearch0B6EntityVWOcTm_2(a1, v21, type metadata accessor for SearchResult);
  _s10OmniSearch0B6EntityVWOcTm_2(a1, v18, type metadata accessor for SearchResult);
  v32 = v76;
  _s10OmniSearch0B6EntityVWOcTm_2(a1, v76, type metadata accessor for SearchResult);
  v33 = v29;
  v74 = v31;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v69 = v35;
    v70 = v34;
    v72 = v13;
    v36 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v79 = v68;
    *v36 = 136316418;
    SearchResultItem.type.getter(&v77);
    SearchResultKey.rawValue.getter();
    _s10OmniSearch0B6EntityVWOhTm_1(v24, type metadata accessor for SearchResult);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v36 + 4) = v37;
    *(v36 + 12) = 2080;
    v71 = v33;
    SFCard.cardDetails.getter();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v36 + 14) = v38;
    *(v36 + 22) = 2080;
    v39 = v73;
    v40 = *(v73 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v41 = CodableNSSecureCoding.wrappedValue.getter();
    v77 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v41);
    v78 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    String.init<A>(describing:)();
    _s10OmniSearch0B6EntityVWOhTm_1(v21, type metadata accessor for SearchResult);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v36 + 24) = v43;
    *(v36 + 32) = 2080;
    v44 = &v18[*(v39 + 24)];
    v45 = CodableNSSecureCoding.wrappedValue.getter();
    v46 = [v45 attributeSet];

    v77 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.contentType.getter(v46);
    v78 = v47;
    String.init<A>(describing:)();
    _s10OmniSearch0B6EntityVWOhTm_1(v18, type metadata accessor for SearchResult);
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v36 + 34) = v48;
    *(v36 + 42) = 2080;
    LOBYTE(v77) = v75;
    String.init<A>(describing:)();
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v36 + 44) = v49;
    *(v36 + 52) = 2080;
    v50 = v76 + *(v39 + 24);
    v51 = CodableNSSecureCoding.wrappedValue.getter();
    v52 = [v51 attributeSet];

    v53 = CSSearchableItemAttributeSet.spotlightSearchResult.getter();
    if (v53)
    {
      v54 = outlined bridged method (ob) of @objc SFSearchResult.sectionBundleIdentifier.getter(v53);
    }

    else
    {
      v54 = 0;
      v55 = 0;
    }

    v13 = v72;
    v77 = v54;
    v78 = v55;
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_0_89();
    _s10OmniSearch0B6EntityVWOhTm_1(v76, v56);
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v36 + 54) = v57;
    v35 = v70;
    _os_log_impl(&dword_25D85C000, v70, v69, "[VISUAL] SearchResult: %s, card: %s, bundle: %s, contentType: %s, option: %s, section: %s", v36, 0x3Eu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();

    v33 = v71;
  }

  else
  {

    _s10OmniSearch0B6EntityVWOhTm_1(v32, type metadata accessor for SearchResult);
    _s10OmniSearch0B6EntityVWOhTm_1(v18, type metadata accessor for SearchResult);
    _s10OmniSearch0B6EntityVWOhTm_1(v21, type metadata accessor for SearchResult);
    _s10OmniSearch0B6EntityVWOhTm_1(v24, type metadata accessor for SearchResult);
  }

  v58 = outlined bridged method (ob) of @objc SFCard.cardSections.getter(v33);
  if (!v58 || (specialized Array.count.getter(v58), OUTLINED_FUNCTION_112_2(), , !v35))
  {
    _s10OmniSearch0B6EntityVWOcTm_2(a1, v13, type metadata accessor for SearchResult);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = v33;
      v63 = swift_slowAlloc();
      v77 = v63;
      *v61 = 136315138;
      SearchResultItem.type.getter(&v79);
      SearchResultKey.rawValue.getter();
      OUTLINED_FUNCTION_0_89();
      _s10OmniSearch0B6EntityVWOhTm_1(v13, v64);
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v61 + 4) = v65;
      _os_log_impl(&dword_25D85C000, v59, v60, "[VISUAL] Card is empty or nil unexpectedly for SearchResult: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      v33 = v62;
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      OUTLINED_FUNCTION_0_89();
      _s10OmniSearch0B6EntityVWOhTm_1(v13, v66);
    }
  }

  return v33;
}

BOOL SFCard.isEmpty.getter()
{
  v1 = outlined bridged method (pb) of @objc SFCard.cardSections.getter(v0);
  if (!v1)
  {
    return 1;
  }

  specialized Array.count.getter(v1);
  OUTLINED_FUNCTION_112_2();

  return v0 < 1;
}

uint64_t EntityCardBuilder.sectionForCSItem(_:_:_:)(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(a1);
  v10 = &one-time initialization token for typeDisplayRepresentation;
  if (v9)
  {
    if (v8 == 0xD00000000000001ALL && v9 == 0x800000025DBEE6C0)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v13 = objc_allocWithZone(MEMORY[0x277D65898]);

        v14 = @nonobjc SPSearchQueryContext.init(search:)(a3, a4);
        v15 = [a1 attributeSet];
        v16 = CSSearchableItemAttributeSet.spotlightSearchResult.getter();

        if (v16)
        {
          v17 = [v16 backendData];
          if (v17)
          {
            v18 = v17;
            v19 = *MEMORY[0x277CC2518];
            *&v121[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *(&v121[0] + 1) = v20;
            [v18 __swift_setObject_forKeyedSubscript_];

            swift_unknownObjectRelease();
          }
        }

        if (CSSearchableItem.isSupportedSharedLinkType.getter())
        {
          if (v16)
          {
            v21 = *MEMORY[0x277D65C98];
            v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            outlined bridged method (mbnn) of @objc SFSearchResult.sectionBundleIdentifier.setter(v22, v23, v16);
LABEL_21:
            v33 = [objc_opt_self() resultBuilderWithResult_];
LABEL_27:
            v43 = v33;
            [v43 setQueryContext_];
            type metadata accessor for DefaultSpotlightCardBuilder();
            v44 = swift_allocObject();
            v44[2] = a1;
            v44[3] = v43;
            objc_opt_self();
            v45 = swift_dynamicCastObjCClass();
            v46 = a1;
            if (v45)
            {

              type metadata accessor for LinkCardBuilder();
              v44 = swift_allocObject();
              v44[2] = v46;
              v44[3] = v45;
              v47 = v46;
            }

            else
            {

              objc_opt_self();
              v47 = swift_dynamicCastObjCClass();
              if (v47)
              {
                v48 = v47;
                type metadata accessor for PhotoCardBuilder();
                swift_allocObject();
                v49 = PhotoCardBuilder.init(csItem:resultBuilder:imageCornerRoundingStyle:)(v46, v48, 1);
                v50 = v46;
                v51 = v43;

                v44 = v49;
              }
            }

            v52 = *v44;
            if (v7)
            {
              v53 = (*(v52 + 112))(v47);
            }

            else
            {
              v53 = (*(v52 + 120))(v47);
            }

            v31 = v53;
            if (!specialized Array.count.getter(v53))
            {
              goto LABEL_62;
            }

            specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v31 & 0xC000000000000001) == 0, v31);
            if ((v31 & 0xC000000000000001) != 0)
            {
              v54 = MEMORY[0x25F89FFD0](0, v31);
            }

            else
            {
              v54 = *(v31 + 32);
            }

            v55 = v54;
            objc_opt_self();
            v56 = swift_dynamicCastObjCClass();
            if (!v56)
            {
              goto LABEL_61;
            }

            v57 = v56;
            v58 = [v56 title];
            if (!v58)
            {
              goto LABEL_61;
            }

            v104 = v57;
            v59 = outlined bridged method (ob) of @objc SFText.text.getter(v58);
            if (!v60)
            {
              goto LABEL_61;
            }

            v61 = v60;
            v106 = v59;
            v109 = v55;
            v111 = v14;
            v114 = v16;
            type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SPSearchSuggestion, 0x277D658A0);
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v63 = [objc_opt_self() bundleForClass_];
            v64 = MEMORY[0x25F89F4C0](0x454C5449545F4F4ELL, 0xE800000000000000);
            v65 = MEMORY[0x25F89F4C0](0, 0xE000000000000000);
            v66 = MEMORY[0x25F89F4C0](0xD000000000000011, 0x800000025DBF9330);
            v67 = [v63 localizedStringForKey:v64 value:v65 table:v66];

            v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v70 = v69;

            if (v106 == v68 && v61 == v70)
            {

              v16 = v114;
            }

            else
            {
              v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v14 = v111;
              v16 = v114;
              if ((v72 & 1) == 0)
              {

LABEL_76:
                v10 = &one-time initialization token for typeDisplayRepresentation;
                goto LABEL_62;
              }
            }

            v73 = [v46 attributeSet];
            v10 = &one-time initialization token for typeDisplayRepresentation;
            if (one-time initialization token for keyAttributeAppEntityTitle != -1)
            {
              swift_once();
            }

            v74 = MEMORY[0x25F89F4C0](static LocalIndexClient.keyAttributeAppEntityTitle, *algn_27FCAFD18);
            v75 = [v73 attributeForKey_];

            if (v75)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v118 = 0u;
              v120 = 0u;
            }

            v14 = v111;
            v55 = v109;
            v121[0] = v118;
            v121[1] = v120;
            if (!*(&v120 + 1))
            {

              outlined destroy of IntentApplication?(v121, &_sypSgMd, &_sypSgMR);
              goto LABEL_62;
            }

            if (swift_dynamicCast())
            {
              v76 = HIBYTE(v117) & 0xF;
              if ((v117 & 0x2000000000000000) == 0)
              {
                v76 = v116 & 0xFFFFFFFFFFFFLL;
              }

              if (v76)
              {
                if (one-time initialization token for visual != -1)
                {
                  swift_once();
                }

                v77 = type metadata accessor for Logger();
                __swift_project_value_buffer(v77, static Logging.visual);

                v78 = Logger.logObject.getter();
                v79 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v78, v79))
                {
                  v80 = swift_slowAlloc();
                  v81 = swift_slowAlloc();
                  *&v121[0] = v81;
                  *v80 = 136315138;
                  v107 = v79;
                  v82 = v78;
                  v83 = v116;
                  *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
                  _os_log_impl(&dword_25D85C000, v82, v107, "[VISUAL] Missing title for card section, fallback to appEntityTitle: %s", v80, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v81);
                  v84 = v81;
                  v16 = v114;
                  MEMORY[0x25F8A1050](v84, -1, -1);
                  v85 = v80;
                  v14 = v111;
                  MEMORY[0x25F8A1050](v85, -1, -1);
                }

                else
                {

                  v83 = v116;
                }

                type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);
                v103 = @nonobjc SFRichText.__allocating_init(string:)(v83, v117);
                [v105 setTitle_];

                goto LABEL_76;
              }
            }

            else
            {
LABEL_61:
            }

LABEL_62:
            if (v10[81] != -1)
            {
              swift_once();
            }

            v86 = type metadata accessor for Logger();
            __swift_project_value_buffer(v86, static Logging.visual);
            v87 = v16;
            v88 = v46;
            v89 = v43;

            v90 = Logger.logObject.getter();
            v91 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v90, v91))
            {
              v112 = v14;
              v92 = swift_slowAlloc();
              v108 = swift_slowAlloc();
              *&v121[0] = v108;
              *v92 = 136316674;
              v93 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCardSection, 0x277D4C238);
              MEMORY[0x25F89F8A0](v31, v93);
              v115 = v87;
              v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v92 + 4) = v94;
              *(v92 + 12) = 2080;
              swift_getObjectType();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15SSResultBuilderCmMd, &_sSo15SSResultBuilderCmMR);
              String.init<A>(describing:)();
              v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v92 + 14) = v95;
              *(v92 + 22) = 2080;
              outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v88);
              v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v92 + 24) = v96;
              *(v92 + 32) = 2080;
              if (!v16 || (outlined bridged method (pb) of @objc SFSearchResult.sectionBundleIdentifier.getter(v115), !v97))
              {
              }

              v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v92 + 34) = v98;
              *(v92 + 42) = 2080;
              v99 = [v88 uniqueIdentifier];
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v92 + 44) = v100;
              *(v92 + 52) = 2080;
              outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.contentType.getter([v88 attributeSet]);
              v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v92 + 54) = v101;
              *(v92 + 62) = 2080;
              String.init<A>(describing:)();
              v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v92 + 64) = v102;
              _os_log_impl(&dword_25D85C000, v90, v91, "[VISUAL] cardSections: %s, builder: %s, bundle: %s, sectionID: %s, uid: %s, contentType: %s, option: %s", v92, 0x48u);
              swift_arrayDestroy();
              MEMORY[0x25F8A1050](v108, -1, -1);
              MEMORY[0x25F8A1050](v92, -1, -1);
            }

            else
            {
            }

            return v31;
          }
        }

        else if (v16)
        {
          goto LABEL_21;
        }

        v113 = v16;
        v34 = [objc_opt_self() resultBuilderForItem_];
        v35 = one-time initialization token for visual;
        v33 = v34;
        if (v35 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        __swift_project_value_buffer(v36, static Logging.visual);
        v37 = a1;
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          *&v121[0] = v110;
          *v40 = 136315138;
          v41 = [v37 uniqueIdentifier];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          v10 = &one-time initialization token for typeDisplayRepresentation;

          *(v40 + 4) = v42;
          _os_log_impl(&dword_25D85C000, v38, v39, "[VISUAL] Missing orginal spotlight result unexpected for CSSI:  %s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v110);
          MEMORY[0x25F8A1050](v110, -1, -1);
          MEMORY[0x25F8A1050](v40, -1, -1);
        }

        v16 = v113;
        goto LABEL_27;
      }
    }
  }

  if (one-time initialization token for visual != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logging.visual);
  v25 = a1;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    *v28 = 136315138;
    *&v121[0] = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v25);
    *(&v121[0] + 1) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    String.init<A>(describing:)();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v28 + 4) = v30;
    _os_log_impl(&dword_25D85C000, v26, v27, "[VISUAL] No cardSection for bundleID: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v119);
    MEMORY[0x25F8A1050](v119, -1, -1);
    MEMORY[0x25F8A1050](v28, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

void *SFCard.init(cardSections:)()
{
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = OUTLINED_FUNCTION_112_2();
  outlined bridged method (mbnn) of @objc SFCard.cardSections.setter(v1, v0);
  return v0;
}

id @nonobjc SFRichText.__allocating_init(string:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = MEMORY[0x25F89F4C0]();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() textWithString_];

  return v3;
}

id @nonobjc _SFPBCard.init(data:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
  }

  v6 = [v2 initWithData_];

  return v6;
}

uint64_t outlined bridged method (pb) of @objc SFCard.cardSections.getter(void *a1)
{
  v1 = [a1 cardSections];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCardSection, 0x277D4C238);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc SFText.text.getter(void *a1)
{
  v2 = [a1 text];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc SFCard.cardSections.setter(uint64_t a1, void *a2)
{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCardSection, 0x277D4C238);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setCardSections_];
}

uint64_t _s10OmniSearch0B6EntityVWOcTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_17(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CardSectionOption and conformance CardSectionOption()
{
  result = lazy protocol witness table cache variable for type CardSectionOption and conformance CardSectionOption;
  if (!lazy protocol witness table cache variable for type CardSectionOption and conformance CardSectionOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CardSectionOption and conformance CardSectionOption);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CardSectionOption(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityCardBuilder(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc SFSearchResult.sectionBundleIdentifier.getter(void *a1)
{
  v1 = [a1 sectionBundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized Sequence.compactMap<A>(_:)(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemVSgMd, &_s10OmniSearch10GlobalItemVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v40 - v8;
  v10 = type metadata accessor for GlobalItem();
  v11 = OUTLINED_FUNCTION_14(v10);
  v43 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v44 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v42 = v40 - v17;
  v18 = 0;
  v19 = *(a3 + 16);
  v45 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v19 == v18)
    {
      return v45;
    }

    v20 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity() - 8);
    a1(a3 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v18);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      outlined destroy of (offset: Int, element: SearchResult)(v9, &_s10OmniSearch10GlobalItemVSgMd, &_s10OmniSearch10GlobalItemVSgMR);
      ++v18;
    }

    else
    {
      v21 = v42;
      outlined init with take of GlobalItem(v9, v42);
      outlined init with take of GlobalItem(v21, v44);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = *(v45 + 16);
        v32 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32, v33, v34, v35);
        v45 = v36;
      }

      v23 = *(v45 + 16);
      v22 = *(v45 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v40[1] = *(v45 + 16);
        v41 = v23 + 1;
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1, v45);
        v24 = v41;
        v45 = v37;
      }

      ++v18;
      *(v45 + 16) = v24;
      v25 = *(v43 + 80);
      OUTLINED_FUNCTION_79();
      outlined init with take of GlobalItem(v30, v27 + v26 + *(v28 + 72) * v29);
    }
  }

  v38 = v45;

  return v38;
}

void specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x277D84F90];
  while (v7 != v6)
  {
    if (v6 >= v7)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v9 = *(type metadata accessor for SearchResult(0) - 8);
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_15;
    }

    a1(&v17, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6);
    if (v3)
    {

      return;
    }

    v11 = v17;
    ++v6;
    if (v17)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = *(v8 + 16);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v15;
      }

      v12 = *(v8 + 16);
      v13 = v12 + 1;
      if (v12 >= *(v8 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v13 = v12 + 1;
        v8 = v16;
      }

      *(v8 + 16) = v13;
      *(v8 + 8 * v12 + 32) = v11;
      v6 = v10;
    }
  }
}

uint64_t specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v4 = *(a3 + 16);
  v5 = (a3 + 40);
  v6 = MEMORY[0x277D84F90];
  if (v4)
  {
    while (1)
    {
      v7 = *v5;
      v18[0] = *(v5 - 1);
      v18[1] = v7;

      v19(&v16, v18);
      if (v3)
      {
        break;
      }

      v8 = v17;
      if (v17)
      {
        v9 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = *(v6 + 16);
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v6 = v13;
        }

        v10 = *(v6 + 16);
        if (v10 >= *(v6 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v6 = v14;
        }

        *(v6 + 16) = v10 + 1;
        v11 = v6 + 16 * v10;
        *(v11 + 32) = v9;
        *(v11 + 40) = v8;
      }

      v5 += 2;
      if (!--v4)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t specialized Sequence.compactMap<A>(_:)(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  v7 = (a3 + 40);
  if (v5)
  {
    while (1)
    {
      v8 = *v7;
      v17[0] = *(v7 - 1);
      v17[1] = v8;

      a1(&v14, v17);
      if (v3)
      {
        break;
      }

      if (v15)
      {
        outlined init with take of ResponseOverrideMatcherProtocol(&v14, v16);
        outlined init with take of ResponseOverrideMatcherProtocol(v16, &v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = *(v6 + 16);
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v6 = v11;
        }

        v9 = *(v6 + 16);
        if (v9 >= *(v6 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v6 = v12;
        }

        *(v6 + 16) = v9 + 1;
        outlined init with take of ResponseOverrideMatcherProtocol(&v14, v6 + 40 * v9 + 32);
      }

      else
      {
        outlined destroy of (offset: Int, element: SearchResult)(&v14, &_s10OmniSearch13MessageRecord_pSgMd, &_s10OmniSearch13MessageRecord_pSgMR);
      }

      v7 += 2;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t ResultSectionBuilder.__allocating_init(results:context:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t key path setter for ResultSectionBuilder.results : ResultSectionBuilder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 104);

  return v3(v4);
}

uint64_t ResultSectionBuilder.results.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t ResultSectionBuilder.results.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t key path setter for ResultSectionBuilder.context : ResultSectionBuilder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);

  return v3(v4);
}

uint64_t ResultSectionBuilder.context.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t ResultSectionBuilder.context.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t ResultSectionBuilder.init(results:context:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

id ResultSectionBuilder.buildCard()()
{
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  v1 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v122 = (v107 - v2);
  v3 = type metadata accessor for SearchResult(0);
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v4);
  v11 = v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v107 - v13;
  v15 = (*(*v0 + 120))(v12);
  swift_beginAccess();
  outlined init with copy of ChatMessageRecord(v15 + 16, &v137);

  v17 = *(*v0 + 96);
  v18 = *v0 + 96;
  v115 = v0;
  v114 = v17;
  v113 = v18;
  v19 = v17(v16);
  v20 = 0;
  v119 = *(v19 + 16);
  v21 = &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR;
  while (1)
  {
    v22 = v20;
    if (v119 == v20)
    {
LABEL_5:
      v112 = v22;

      v29 = v114;
      v110 = *(v114(v28) + 16);

      v31 = v29(v30);
      v32 = 0;
      v120 = *(v31 + 16);
      v111 = v6;
      do
      {
        v33 = v32;
        if (v120 == v32)
        {

          v39 = 1;
          goto LABEL_14;
        }

        if (v32 >= *(v31 + 16))
        {
          goto LABEL_98;
        }

        v34 = *(v6 + 80);
        OUTLINED_FUNCTION_79();
        outlined init with copy of SearchResult(v31 + v35 + *(v6 + 72) * v32++, v11);
        v21 = v33;
        v36 = *(v3 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
        v37 = CodableNSSecureCoding.wrappedValue.getter();
        v38 = CSSearchableItem.isSupportedSharedLinkType.getter();

        outlined destroy of SearchResult(v11);
      }

      while ((v38 & 1) != 0);
      OUTLINED_FUNCTION_11_48();
      v39 = v69;

      v33 = v21;
LABEL_14:
      v109 = v33;
      v108 = v120 == v33;
      v41 = v114(v40);
      MEMORY[0x28223BE20](v41);
      v107[-2] = &v137;
      LOBYTE(v107[-1]) = v39;
      specialized Sequence.compactMap<A>(_:)(partial apply for closure #3 in ResultSectionBuilder.buildCard(), &v107[-4], v41);
      v43 = v42;
      v107[1] = 0;

      v44 = 0;
      v11 = MEMORY[0x277D84F90];
      v125 = *(v43 + 16);
      v124 = v43 + 32;
      v116 = v43;
      while (1)
      {
        if (v44 == v125)
        {

          v136 = 0;
          v134 = 0u;
          v135 = 0u;
          v69 = v120 != v109 || v110 == 1;
          if (v69)
          {
            if (v119 == v112 && v110 != 1)
            {
              outlined destroy of (offset: Int, element: SearchResult)(&v134, &_s10OmniSearch21SectionedCardBuilding_pSgMd, &_s10OmniSearch21SectionedCardBuilding_pSgMR);
              *(&v135 + 1) = &type metadata for SectionedCardBuilder;
              v136 = &protocol witness table for SectionedCardBuilder;
            }
          }

          else
          {
            outlined destroy of (offset: Int, element: SearchResult)(&v134, &_s10OmniSearch21SectionedCardBuilding_pSgMd, &_s10OmniSearch21SectionedCardBuilding_pSgMR);
            *(&v135 + 1) = &type metadata for SectionedStandardCardBuilder;
            v136 = &protocol witness table for SectionedStandardCardBuilder;
            *&v134 = 2;
          }

          v21 = v111;
          if (one-time initialization token for visual != -1)
          {
            goto LABEL_103;
          }

          goto LABEL_72;
        }

        if (v44 >= *(v43 + 16))
        {
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        v21 = *(v124 + 8 * v44);
        if (v21 >> 62)
        {
          if (v21 < 0)
          {
            v67 = *(v124 + 8 * v44);
          }

          else
          {
            v67 = v21 & 0xFFFFFFFFFFFFFF8;
          }

          v45 = MEMORY[0x25F8A01B0](v67);
        }

        else
        {
          v45 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v46 = v11 >> 62;
        if (v11 >> 62)
        {
          if (v11 < 0)
          {
            v68 = v11;
          }

          else
          {
            v68 = v11 & 0xFFFFFFFFFFFFFF8;
          }

          v47 = MEMORY[0x25F8A01B0](v68);
        }

        else
        {
          v47 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v48 = v47 + v45;
        if (__OFADD__(v47, v45))
        {
          goto LABEL_94;
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (v46)
        {
          goto LABEL_29;
        }

        v49 = v11 & 0xFFFFFFFFFFFFFF8;
        if (v48 > *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_28;
        }

LABEL_34:
        v127 = v44 + 1;
        v52 = *(v49 + 16);
        v53 = (*(v49 + 24) >> 1) - v52;
        v54 = v49 + 8 * v52;
        v126 = v49;
        if (v21 >> 62)
        {
          if (v21 < 0)
          {
            v56 = v21;
          }

          else
          {
            v56 = v21 & 0xFFFFFFFFFFFFFF8;
          }

          v57 = MEMORY[0x25F8A01B0](v56);
          if (!v57)
          {
            goto LABEL_51;
          }

          v58 = v57;
          v59 = MEMORY[0x25F8A01B0](v56);
          if (v53 < v59)
          {
            goto LABEL_101;
          }

          if (v58 < 1)
          {
            goto LABEL_102;
          }

          v117 = v59;
          v118 = v45;
          v121 = v11;
          OUTLINED_FUNCTION_0_90();
          lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type [SFCardSection] and conformance [A], &_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
          for (i = 0; i != v58; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
            v61 = specialized protocol witness for Collection.subscript.read in conformance [A](&v134, i, v21);
            v63 = *v62;
            v61(&v134, 0);
            *(v54 + 32 + 8 * i) = v63;
          }

          v11 = v121;
          v43 = v116;
          v45 = v118;
          v55 = v117;
LABEL_47:

          v44 = v127;
          if (v55 < v45)
          {
            goto LABEL_95;
          }

          if (v55 > 0)
          {
            v64 = *(v126 + 16);
            v65 = __OFADD__(v64, v55);
            v66 = v64 + v55;
            if (v65)
            {
              goto LABEL_99;
            }

            *(v126 + 16) = v66;
          }
        }

        else
        {
          v55 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v55)
          {
            if (v53 < v55)
            {
              goto LABEL_100;
            }

            type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCardSection, 0x277D4C238);
            swift_arrayInitWithCopy();
            goto LABEL_47;
          }

LABEL_51:

          v44 = v127;
          if (v45 > 0)
          {
            goto LABEL_95;
          }
        }
      }

      if (v46)
      {
LABEL_29:
        if (v11 < 0)
        {
          v51 = v11;
        }

        else
        {
          v51 = v11 & 0xFFFFFFFFFFFFFF8;
        }

        MEMORY[0x25F8A01B0](v51);
      }

      else
      {
        v49 = v11 & 0xFFFFFFFFFFFFFF8;
LABEL_28:
        v50 = *(v49 + 16);
      }

      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v49 = v11 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_34;
    }

    if (v20 >= *(v19 + 16))
    {
      break;
    }

    v23 = *(v6 + 80);
    OUTLINED_FUNCTION_79();
    outlined init with copy of SearchResult(v19 + v24 + *(v6 + 72) * v20++, v14);
    v25 = *(v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v26 = CodableNSSecureCoding.wrappedValue.getter();
    v27 = CSSearchableItem.isPhotoOrVideo.getter();

    outlined destroy of SearchResult(v14);
    if ((v27 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

LABEL_97:
  __break(1u);
LABEL_98:
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
  swift_once();
LABEL_72:
  v71 = type metadata accessor for Logger();
  v72 = __swift_project_value_buffer(v71, static Logging.visual);

  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.info.getter();
  v75 = os_log_type_enabled(v73, v74);
  v121 = v11;
  v127 = v72;
  if (v75)
  {
    OUTLINED_FUNCTION_11_48();
    v76 = v69;
    v77 = swift_slowAlloc();
    *v77 = 134218496;
    v78 = v114;
    v79 = *((v114)() + 16);

    *(v77 + 4) = v79;

    *(v77 + 12) = 1024;
    *(v77 + 14) = v76;
    *(v77 + 18) = 1024;
    *(v77 + 20) = v108;
    _os_log_impl(&dword_25D85C000, v73, v74, "Build card for %ld result(s), allImageVideo: %{BOOL}d,  allSharedLink: %{BOOL}d", v77, 0x18u);
    MEMORY[0x25F8A1050](v77, -1, -1);
  }

  else
  {

    v78 = v114;
  }

  v80 = v78();
  v81 = 0;
  v11 = *(v80 + 16);
  v82 = MEMORY[0x277D84F90];
  while (v11 != v81)
  {
    if (v81 >= *(v80 + 16))
    {
      goto LABEL_96;
    }

    v83 = *(v21 + 80);
    OUTLINED_FUNCTION_79();
    v85 = v21;
    v86 = v80 + v84 + *(v21 + 72) * v81;
    v87 = *(v123 + 48);
    v88 = v122;
    *v122 = v81;
    outlined init with copy of SearchResult(v86, v88 + v87);
    *&v128 = v81;
    v130 = dispatch thunk of CustomStringConvertible.description.getter();
    v131 = v89;
    MEMORY[0x25F89F6C0](2108969, 0xE300000000000000);
    SearchResult.description.getter();
    MEMORY[0x25F89F6C0]();

    v90 = v130;
    v91 = v131;
    outlined destroy of (offset: Int, element: SearchResult)(v88, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v94 = *(v82 + 16);
      OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v82 = v95;
    }

    v92 = *(v82 + 16);
    if (v92 >= *(v82 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v82 = v96;
    }

    *(v82 + 16) = v92 + 1;
    v93 = v82 + 16 * v92;
    *(v93 + 32) = v90;
    *(v93 + 40) = v91;
    ++v81;
    v21 = v85;
  }

  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v130 = v100;
    *v99 = 136315138;
    *&v128 = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    BidirectionalCollection<>.joined(separator:)();

    v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v99 + 4) = v101;
    _os_log_impl(&dword_25D85C000, v97, v98, "%s", v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v100);
    MEMORY[0x25F8A1050](v100, -1, -1);
    MEMORY[0x25F8A1050](v99, -1, -1);
  }

  else
  {
  }

  v102 = v121;
  outlined init with copy of SectionedCardBuilding?(&v134, &v128);
  if (v129)
  {
    outlined init with take of ResponseOverrideMatcherProtocol(&v128, &v130);
    v103 = v132;
    v104 = v133;
    __swift_project_boxed_opaque_existential_1(&v130, v132);
    v105 = (*(v104 + 8))(v102, v103, v104);

    outlined destroy of (offset: Int, element: SearchResult)(&v134, &_s10OmniSearch21SectionedCardBuilding_pSgMd, &_s10OmniSearch21SectionedCardBuilding_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(&v130);
  }

  else
  {
    outlined destroy of (offset: Int, element: SearchResult)(&v128, &_s10OmniSearch21SectionedCardBuilding_pSgMd, &_s10OmniSearch21SectionedCardBuilding_pSgMR);
    v105 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
    outlined bridged method (mbnn) of @objc SFCard.cardSections.setter(v102, v105);
    outlined destroy of (offset: Int, element: SearchResult)(&v134, &_s10OmniSearch21SectionedCardBuilding_pSgMd, &_s10OmniSearch21SectionedCardBuilding_pSgMR);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v137);
  return v105;
}

uint64_t closure #3 in ResultSectionBuilder.buildCard()@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v11 = a3 & 1;
  v9 = (*(v8 + 24))(a1, &v11, 0, 0xE000000000000000, v7, v8);
  result = outlined bridged method (ob) of @objc SFCard.cardSections.getter(v9);
  *a4 = result;
  return result;
}

uint64_t ResultSectionBuilder.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t ResultSectionBuilder.__deallocating_deinit()
{
  ResultSectionBuilder.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined init with copy of SectionedCardBuilding?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21SectionedCardBuilding_pSgMd, &_s10OmniSearch21SectionedCardBuilding_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of GlobalItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlobalItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_5_51()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_12_42(unint64_t *a1)
{

  return lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_13_34()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

id OUTLINED_FUNCTION_17_38(uint64_t a1, void **a2)
{
  v3 = *a2;

  return v3;
}

uint64_t SectionedCardBuilder.buildSectionedCard(cardSections:)(uint64_t a1)
{
  if (!a1)
  {
    v20 = objc_allocWithZone(MEMORY[0x277D4C230]);

    return [v20 init];
  }

  v25 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  result = specialized Array.count.getter(a1);
  if (!result)
  {

    v5 = MEMORY[0x277D84F90];
    v6 = MEMORY[0x277D84F90];
LABEL_37:
    v21 = specialized Array.count.getter(v6);

    if (v21)
    {

      v22 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
      outlined bridged method (mbnn) of @objc SFCard.cardSections.setter(a1, v22);
    }

    else
    {

      StackedGridsLayout.init(rawValue:)(&outlined read-only object #0 of one-time initialization function for defaultLayout);
      type metadata accessor for StackedGridsLayoutProvider();
      swift_allocObject();
      v23 = StackedGridsLayoutProvider.init(_:)();
      if (specialized Array.count.getter(v5) >= 2)
      {
        SectionedCardBuilder.updateImageSize(_:for:)(v5, 600.0, 600.0);
      }

      v24 = (*(*v23 + 120))(v5);

      v22 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
      outlined bridged method (mbnn) of @objc SFCard.cardSections.setter(v24, v22);
    }

    return v22;
  }

  v3 = result;
  if (result < 1)
  {
    goto LABEL_44;
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x25F89FFD0](v4, a1);
    }

    else
    {
      v7 = *(a1 + 8 * v4 + 32);
    }

    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (!v9)
    {
      goto LABEL_21;
    }

    v10 = v9;
    v11 = v8;
    v12 = outlined bridged method (pb) of @objc SFCollectionCardSection.cardSections.getter(v10);
    v8 = v11;
    if (v12)
    {
      break;
    }

LABEL_20:

LABEL_21:
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = [v16 thumbnail];
      if (v17)
      {

        v18 = v8;
        MEMORY[0x25F89F850]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v5 = v26;
      }

      else
      {
      }
    }

    else
    {
      v19 = v8;
      MEMORY[0x25F89F850]();
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v6 = v25;
    }

    if (v3 == ++v4)
    {
      goto LABEL_37;
    }
  }

  v13 = v12;
  v14 = v12 & 0xFFFFFFFFFFFFFF8;
  if (v12 >> 62)
  {
    if (v12 >= 0)
    {
      v12 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    result = MEMORY[0x25F8A01B0](v12);
    if (!result)
    {
LABEL_19:

      v8 = v11;
      goto LABEL_20;
    }
  }

  else
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_19;
    }
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x25F89FFD0](0, v13);
    goto LABEL_15;
  }

  if (*(v14 + 16))
  {
    v15 = *(v13 + 32);
LABEL_15:
    v8 = v15;

    goto LABEL_20;
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void SectionedCardBuilder.updateImageSize(_:for:)(uint64_t a1, double a2, double a3)
{
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    while (1)
    {
      if (v6 < 1)
      {
        __break(1u);
        return;
      }

      v7 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x25F89FFD0](v7, a1);
        }

        else
        {
          v8 = *(a1 + 8 * v7 + 32);
        }

        v9 = v8;
        objc_opt_self();
        v10 = swift_dynamicCastObjCClass();
        if (v10)
        {
          v11 = [v10 thumbnail];
          if (v11)
          {
            goto LABEL_18;
          }
        }

        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12)
        {
          break;
        }

LABEL_20:
        ++v7;

        if (v6 == v7)
        {
          return;
        }
      }

      v13 = v12;
      v14 = v9;
      v15 = outlined bridged method (pb) of @objc SFImagesCardSection.images.getter(v13);
      if (!v15)
      {
        goto LABEL_19;
      }

      v16 = v15;
      v17 = v15 & 0xFFFFFFFFFFFFFF8;
      if (v15 >> 62)
      {
        if (v15 >= 0)
        {
          v15 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        if (!MEMORY[0x25F8A01B0](v15))
        {
LABEL_25:

          goto LABEL_19;
        }
      }

      else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*(v17 + 16))
      {
        v18 = *(v16 + 32);
        goto LABEL_17;
      }

      __break(1u);
LABEL_28:
      if (a1 < 0)
      {
        v19 = a1;
      }

      else
      {
        v19 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v6 = MEMORY[0x25F8A01B0](v19);
      if (!v6)
      {
        return;
      }
    }

    v18 = MEMORY[0x25F89FFD0](0, v16);
LABEL_17:
    v11 = v18;

LABEL_18:
    [v11 setSize_];
    v14 = v11;
LABEL_19:

    goto LABEL_20;
  }
}

uint64_t outlined bridged method (pb) of @objc SFImagesCardSection.images.getter(void *a1)
{
  v1 = [a1 images];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for SFImage();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for SectionedCardBuilder(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t type metadata accessor for SFImage()
{
  result = lazy cache variable for type metadata for SFImage;
  if (!lazy cache variable for type metadata for SFImage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SFImage);
  }

  return result;
}

uint64_t SectionedStandardCardBuilder.buildSectionedCard(cardSections:)(uint64_t a1)
{
  if (!a1)
  {
    v20 = objc_allocWithZone(MEMORY[0x277D4C230]);

    return [v20 init];
  }

  v3 = *v1;
  v21 = MEMORY[0x277D84F90];
  result = specialized Array.count.getter(a1);
  if (!result)
  {
LABEL_26:
    result = [objc_allocWithZone(MEMORY[0x277D4C280]) init];
    if (v3 < 0)
    {
      goto LABEL_32;
    }

    v16 = result;
    [result setNumberOfColumns_];
    v17 = [objc_allocWithZone(MEMORY[0x277D4C278]) init];
    [v17 setCollectionStyle_];
    outlined bridged method (mbnn) of @objc SFCollectionCardSection.cardSections.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_25DBC8190;
    *(v18 + 32) = v17;
    v19 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
    outlined bridged method (mbnn) of @objc SFCard.cardSections.setter(v18, v19);

    return v19;
  }

  v5 = result;
  if (result < 1)
  {
    goto LABEL_33;
  }

  v6 = 0;
  while (1)
  {
    v7 = (a1 & 0xC000000000000001) != 0 ? MEMORY[0x25F89FFD0](v6, a1) : *(a1 + 8 * v6 + 32);
    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = outlined bridged method (pb) of @objc SFCollectionCardSection.cardSections.getter(v9);
      if (v10)
      {
        break;
      }
    }

LABEL_19:
    if (v5 == ++v6)
    {
      goto LABEL_26;
    }
  }

  v11 = v10;
  v12 = v10 & 0xFFFFFFFFFFFFFF8;
  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  if (v10 >= 0)
  {
    v10 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  result = MEMORY[0x25F8A01B0](v10);
  if (!result)
  {
LABEL_24:

    goto LABEL_19;
  }

LABEL_12:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x25F89FFD0](0, v11);
    goto LABEL_15;
  }

  if (*(v12 + 16))
  {
    v13 = *(v11 + 32);
LABEL_15:
    v14 = v13;

    v15 = v14;
    MEMORY[0x25F89F850]();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    goto LABEL_19;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for SectionedStandardCardBuilder(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SectionedStandardCardBuilder(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t StackableGrid.init(rawValue:)(uint64_t a1, unint64_t a2)
{
  v3 = a1 == 72 && a2 == 0xE100000000000000;
  if (v3 || (OUTLINED_FUNCTION_15_40() & 1) != 0)
  {

    return 0;
  }

  v7 = a1 == 104 && a2 == 0xE100000000000000;
  if (v7 || (result = OUTLINED_FUNCTION_15_40(), (result & 1) != 0))
  {

    return 1;
  }

  v8 = HIBYTE(a2) & 0xF;
  v9 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v5 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
    v26 = v27;
    goto LABEL_83;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v9 >= 1)
      {
        if (v9 != 1)
        {
          v5 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_91_4();
              if (!v3 & v12)
              {
                goto LABEL_81;
              }

              OUTLINED_FUNCTION_0_91();
              if (!v3)
              {
                goto LABEL_81;
              }

              v5 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                goto LABEL_81;
              }

              OUTLINED_FUNCTION_204_1();
              if (v3)
              {
                goto LABEL_82;
              }
            }
          }

          goto LABEL_72;
        }

        goto LABEL_81;
      }

      goto LABEL_92;
    }

    if (v11 != 45)
    {
      if (v9)
      {
        v5 = 0;
        if (result)
        {
          while (1)
          {
            v22 = *result - 48;
            if (v22 > 9)
            {
              goto LABEL_81;
            }

            v23 = 10 * v5;
            if ((v5 * 10) >> 64 != (10 * v5) >> 63)
            {
              goto LABEL_81;
            }

            v5 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              goto LABEL_81;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_72;
      }

LABEL_81:
      v5 = 0;
      v15 = 1;
      goto LABEL_82;
    }

    if (v9 >= 1)
    {
      if (v9 != 1)
      {
        v5 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_91_4();
            if (!v3 & v12)
            {
              goto LABEL_81;
            }

            OUTLINED_FUNCTION_0_91();
            if (!v3)
            {
              goto LABEL_81;
            }

            v5 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_81;
            }

            OUTLINED_FUNCTION_204_1();
            if (v3)
            {
              goto LABEL_82;
            }
          }
        }

LABEL_72:
        v15 = 0;
LABEL_82:
        v26 = v15;
LABEL_83:

        if ((v26 & 1) == 0 && v5 <= 9)
        {
          return v5;
        }

        return 0;
      }

      goto LABEL_81;
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v8)
      {
        while (1)
        {
          OUTLINED_FUNCTION_91_4();
          if (!v3 & v12)
          {
            break;
          }

          OUTLINED_FUNCTION_0_91();
          if (!v3)
          {
            break;
          }

          v5 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          OUTLINED_FUNCTION_204_1();
          if (v3)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    if (v8)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_10_45();
        while (1)
        {
          OUTLINED_FUNCTION_91_4();
          if (!v3 & v12)
          {
            break;
          }

          OUTLINED_FUNCTION_0_91();
          if (!v3)
          {
            break;
          }

          v5 = v17 - v16;
          if (__OFSUB__(v17, v16))
          {
            break;
          }

          OUTLINED_FUNCTION_204_1();
          if (v3)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    goto LABEL_91;
  }

  if (v8)
  {
    if (v8 != 1)
    {
      OUTLINED_FUNCTION_10_45();
      while (1)
      {
        OUTLINED_FUNCTION_91_4();
        if (!v3 & v12)
        {
          break;
        }

        OUTLINED_FUNCTION_0_91();
        if (!v3)
        {
          break;
        }

        v5 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        OUTLINED_FUNCTION_204_1();
        if (v3)
        {
          goto LABEL_82;
        }
      }
    }

    goto LABEL_81;
  }

LABEL_93:
  __break(1u);
  return result;
}

uint64_t StackableGrid.rawValue.getter(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  if (a1)
  {
    return 104;
  }

  return 72;
}

uint64_t StackableGrid.numberOfColumns.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    return 3;
  }

  return result;
}

uint64_t StackableGrid.gridStyle.getter(uint64_t a1, char a2)
{
  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void static StackableGrid.grids(from:)(uint64_t a1, unint64_t a2)
{
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  v3 = 0;
  countAndFlagsBits = v2[1].value._countAndFlagsBits;
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  p_object = &v2[v3 + 2].value._object;
  while (1)
  {
    if (countAndFlagsBits == v3)
    {

      return;
    }

    if (v3 >= v2[1].value._countAndFlagsBits)
    {
      break;
    }

    ++v3;
    v7 = p_object + 2;
    v9 = *(p_object - 1);
    v8 = *p_object;

    v10 = StackableGrid.init(rawValue:)(v9, v8);
    p_object = v7;
    if ((v11 & 0x100) == 0)
    {
      v12 = v10;
      v13 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = *(v5 + 16);
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v5 = v18;
      }

      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      if (v15 >= v14 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v14);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v5 = v19;
      }

      *(v5 + 16) = v15 + 1;
      v16 = v5 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13 & 1;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance StackableGrid@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = StackableGrid.init(rawValue:)(*a1, *(a1 + 8));
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance StackableGrid@<X0>(uint64_t *a1@<X8>)
{
  result = StackableGrid.rawValue.getter(*v1, *(v1 + 8));
  *a1 = result;
  a1[1] = v4;
  return result;
}

OmniSearch::StackedGridsLayout_optional __swiftcall StackedGridsLayout.init(rawValue:)(Swift::OpaquePointer rawValue)
{
  OUTLINED_FUNCTION_9_46();
  v5 = 0;
  v29 = *(isUniquelyReferenced_nonNull_native + 16);
  v30 = isUniquelyReferenced_nonNull_native;
  v28 = isUniquelyReferenced_nonNull_native + 32;
  for (i = MEMORY[0x277D84F90]; ; *(i + 8 * v26 + 32) = v14)
  {
    if (v5 == v29)
    {

      OUTLINED_FUNCTION_10_44();
      goto LABEL_22;
    }

    if (v5 >= *(v30 + 16))
    {
      break;
    }

    v7 = (v28 + 16 * v5++);
    v8 = *v7;
    v9 = v7[1];

    isUniquelyReferenced_nonNull_native = specialized _copyCollectionToContiguousArray<A>(_:)(v8, v9);
    v10 = isUniquelyReferenced_nonNull_native;
    v11 = 0;
    v12 = *(isUniquelyReferenced_nonNull_native + 16);
    v13 = isUniquelyReferenced_nonNull_native + 40;
    v14 = MEMORY[0x277D84F90];
    v31 = isUniquelyReferenced_nonNull_native + 40;
LABEL_5:
    v15 = (v13 + 16 * v11);
    while (v12 != v11)
    {
      if (v11 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      ++v11;
      v16 = v15 + 2;
      v18 = *(v15 - 1);
      v17 = *v15;

      isUniquelyReferenced_nonNull_native = StackableGrid.init(rawValue:)(v18, v17);
      v15 = v16;
      if ((v2 & 0x100) == 0)
      {
        v19 = isUniquelyReferenced_nonNull_native;
        v20 = v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = *(v14 + 16);
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v14 = isUniquelyReferenced_nonNull_native;
        }

        v22 = *(v14 + 16);
        v21 = *(v14 + 24);
        if (v22 >= v21 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v21);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v14 = isUniquelyReferenced_nonNull_native;
        }

        *(v14 + 16) = v22 + 1;
        v23 = v14 + 16 * v22;
        *(v23 + 32) = v19;
        *(v23 + 40) = v20 & 1;
        v13 = v31;
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = *(i + 16);
      OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      i = isUniquelyReferenced_nonNull_native;
    }

    v26 = *(i + 16);
    v25 = *(i + 24);
    if (v26 >= v25 >> 1)
    {
      OUTLINED_FUNCTION_26_3(v25);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      i = isUniquelyReferenced_nonNull_native;
    }

    *(i + 16) = v26 + 1;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  result.value.trailingGridColumnNumber = v2;
  result.value.patternGrids._rawValue = isUniquelyReferenced_nonNull_native;
  *&result.value.trailingGridIsPadded = v3;
  result.is_nil = v4;
  return result;
}

void StackedGridsLayout.rawValue.getter()
{
  OUTLINED_FUNCTION_9_46();
  v1 = *(v0 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v0;
    v28 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v4 = 0;
    v5 = v28;
    v24 = v3 + 32;
    v25 = v1;
    do
    {
      v26 = v5;
      v6 = *(v24 + 8 * v4);
      v7 = *(v6 + 16);
      if (v7)
      {

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
        v8 = v2;
        v9 = (v6 + 40);
        do
        {
          if (*v9 == 1)
          {
            if (*(v9 - 1))
            {
              v10 = 104;
            }

            else
            {
              v10 = 72;
            }

            v11 = 0xE100000000000000;
          }

          else
          {
            v27 = *(v9 - 1);
            v10 = dispatch thunk of CustomStringConvertible.description.getter();
            v11 = v12;
          }

          v14 = *(v8 + 16);
          v13 = *(v8 + 24);
          if (v14 >= v13 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13 > 1, v14 + 1, 1);
          }

          *(v8 + 16) = v14 + 1;
          v15 = v8 + 16 * v14;
          *(v15 + 32) = v10;
          *(v15 + 40) = v11;
          v9 += 16;
          --v7;
        }

        while (v7);
        v2 = MEMORY[0x277D84F90];
      }

      else
      {
        v16 = *(v24 + 8 * v4);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v17 = BidirectionalCollection<>.joined(separator:)();
      v19 = v18;

      v5 = v26;
      v21 = *(v26 + 16);
      v20 = *(v26 + 24);
      if (v21 >= v20 >> 1)
      {
        v23 = OUTLINED_FUNCTION_26_3(v20);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23, v21 + 1, 1);
        v5 = v26;
      }

      ++v4;
      *(v5 + 16) = v21 + 1;
      v22 = v5 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
    }

    while (v4 != v25);
  }

  OUTLINED_FUNCTION_10_44();
}

uint64_t Array<A>.toString()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      if (*v3 == 1)
      {
        if (*(v3 - 1))
        {
          v4 = 104;
        }

        else
        {
          v4 = 72;
        }

        v5 = 0xE100000000000000;
      }

      else
      {
        v13 = *(v3 - 1);
        v4 = dispatch thunk of CustomStringConvertible.description.getter();
        v5 = v6;
      }

      v8 = *(v14 + 16);
      v7 = *(v14 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = OUTLINED_FUNCTION_26_3(v7);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v10, v8 + 1, 1);
      }

      *(v14 + 16) = v8 + 1;
      v9 = v14 + 16 * v8;
      *(v9 + 32) = v4;
      *(v9 + 40) = v5;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v11 = BidirectionalCollection<>.joined(separator:)();

  return v11;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StackedGridsLayout.validateLayout()()
{
  v1 = 0;
  while (v1 != *(v0 + 16))
  {
    v2 = v1;
    v3 = *(v0 + 32 + 8 * v1++);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = (v3 + 40);
      do
      {
        v7 = *(v6 - 1);
        if (*v6)
        {
          v7 = 3;
        }

        v8 = __OFADD__(v5, v7);
        v5 += v7;
        if (v8)
        {
          __break(1u);
          return;
        }

        v6 += 16;
        --v4;
      }

      while (v4);
      if (v5 == v2)
      {
        continue;
      }

LABEL_12:
      _StringGuts.grow(_:)(59);
      MEMORY[0x25F89F6C0](0xD000000000000025, 0x800000025DBF9380);
      v9 = OUTLINED_FUNCTION_9_47();
      MEMORY[0x25F89F6C0](v9);

      MEMORY[0x25F89F6C0](544434464, 0xE400000000000000);
      v10 = OUTLINED_FUNCTION_9_47();
      MEMORY[0x25F89F6C0](v10);

      MEMORY[0x25F89F6C0](0x746365707865202CLL, 0xEC000000203A6465);
      v11 = OUTLINED_FUNCTION_9_47();
      MEMORY[0x25F89F6C0](v11);

      lazy protocol witness table accessor for type StackedGridsLayout.StackedGridLayoutError and conformance StackedGridsLayout.StackedGridLayoutError();
      swift_allocError();
      *v12 = 0;
      v12[1] = 0xE000000000000000;
      swift_willThrow();
      return;
    }

    if (v2)
    {
      goto LABEL_12;
    }
  }
}

void StackedGridsLayout.generateStackedGrids(for:)()
{
  OUTLINED_FUNCTION_9_46();
  v6 = MEMORY[0x277D84F90];
  if (v2 < 1)
  {
    goto LABEL_48;
  }

  v7 = *(v3 + 16);
  if (v7 < 2)
  {
    goto LABEL_48;
  }

  v8 = v4;
  if (v7 > v2)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7 - 1;
  }

  if (v7 <= v2 && (v5 & 1) != 0)
  {
    if (v4 < 1)
    {
      v9 = v7 - 1;
    }

    else
    {
      v10 = v2;
      do
      {
        v11 = __OFSUB__(v10, v4);
        v10 -= v4;
        if (v11)
        {
          goto LABEL_50;
        }
      }

      while (v7 <= v10);
      v9 = v10 & ~(v10 >> 63);
    }
  }

  if (v9 >= v7)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v12 = *(v3 + 8 * v9 + 32);
  v1 = *(v12 + 16);
  if (v1)
  {
    v33 = v2;
    v34 = v5;
    v35 = v3;

    v13 = 0;
    v14 = (v12 + 40);
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v15 = *(v14 - 1);
      v0 = *v14;
      v16 = [objc_allocWithZone(MEMORY[0x277D4C280]) init];
      v17 = v16;
      if (v0)
      {
        v18 = 3;
      }

      else
      {
        if (v15 < 1)
        {

          v18 = v15;
          goto LABEL_32;
        }

        v18 = v15;
      }

      [v16 setNumberOfColumns_];
      if (v15)
      {
        v19 = 2;
      }

      else
      {
        v19 = 1;
      }

      if (v0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      [v17 setGridStyle_];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = *(v6 + 16);
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v6 = v24;
      }

      v0 = *(v6 + 16);
      v21 = *(v6 + 24);
      if (v0 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v21);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v6 = v25;
      }

      *(v6 + 16) = v0 + 1;
      v22 = v6 + 16 * v0;
      *(v22 + 32) = v17;
      *(v22 + 40) = v18;
LABEL_32:
      v11 = __OFADD__(v13, v18);
      v13 += v18;
      if (v11)
      {
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v14 += 16;
      if (!--v1)
      {

        v3 = v35;
        v5 = v34;
        v2 = v33;
        goto LABEL_37;
      }
    }
  }

  v13 = 0;
  v6 = MEMORY[0x277D84F90];
LABEL_37:
  v1 = v2 - v13;
  if (__OFSUB__(v2, v13))
  {
    goto LABEL_52;
  }

  if (!v8 && v13 >= 1)
  {
    v26 = StackedGridsLayout.generateStackedGrids(for:)(v2 - v13, v3, 0, v5 & 0x101);
    specialized Array.append<A>(contentsOf:)(v26);
    goto LABEL_48;
  }

  v0 = [objc_allocWithZone(MEMORY[0x277D4C280]) init];
  [v0 setGridStyle_];
  if ((v8 & 0x8000000000000000) == 0)
  {
    [v0 setNumberOfColumns_];
    if (v1 < 1)
    {

      goto LABEL_48;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_44;
    }

    goto LABEL_54;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  v30 = *(v6 + 16);
  OUTLINED_FUNCTION_44();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v6 = v31;
LABEL_44:
  v28 = *(v6 + 16);
  v27 = *(v6 + 24);
  if (v28 >= v27 >> 1)
  {
    OUTLINED_FUNCTION_26_3(v27);
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v6 = v32;
  }

  *(v6 + 16) = v28 + 1;
  v29 = v6 + 16 * v28;
  *(v29 + 32) = v0;
  *(v29 + 40) = v1;
LABEL_48:
  OUTLINED_FUNCTION_10_44();
}

uint64_t StackedGridsLayout.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x476E726574746170 && a2 == 0xEC00000073646972;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x800000025DBF93E0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x800000025DBF9400 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x800000025DBF9420 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t StackedGridsLayout.CodingKeys.stringValue.getter(char a1)
{
  result = 0x476E726574746170;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StackedGridsLayout.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = StackedGridsLayout.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StackedGridsLayout.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StackedGridsLayout.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StackedGridsLayout.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch18StackedGridsLayoutV10CodingKeys33_4628CCC6220FEB69288264EAE3449300LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch18StackedGridsLayoutV10CodingKeys33_4628CCC6220FEB69288264EAE3449300LLOGMR);
  v7 = OUTLINED_FUNCTION_14(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = a2;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySay10OmniSearch13StackableGridOGGMd, &_sSaySay10OmniSearch13StackableGridOGGMR);
  lazy protocol witness table accessor for type [[StackableGrid]] and conformance <A> [A](&lazy protocol witness table cache variable for type [[StackableGrid]] and conformance <A> [A], lazy protocol witness table accessor for type [StackableGrid] and conformance <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v19 = 1;
    OUTLINED_FUNCTION_6_45();
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = 2;
    OUTLINED_FUNCTION_6_45();
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = 3;
    OUTLINED_FUNCTION_6_45();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v13, v6);
}

uint64_t StackedGridsLayout.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch18StackedGridsLayoutV10CodingKeys33_4628CCC6220FEB69288264EAE3449300LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch18StackedGridsLayoutV10CodingKeys33_4628CCC6220FEB69288264EAE3449300LLOGMR);
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySay10OmniSearch13StackableGridOGGMd, &_sSaySay10OmniSearch13StackableGridOGGMR);
  lazy protocol witness table accessor for type [[StackableGrid]] and conformance <A> [A](&lazy protocol witness table cache variable for type [[StackableGrid]] and conformance <A> [A], lazy protocol witness table accessor for type [StackableGrid] and conformance <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  OUTLINED_FUNCTION_4_57();
  KeyedDecodingContainer.decode(_:forKey:)();
  OUTLINED_FUNCTION_4_57();
  KeyedDecodingContainer.decode(_:forKey:)();
  OUTLINED_FUNCTION_4_57();
  KeyedDecodingContainer.decode(_:forKey:)();
  v8 = OUTLINED_FUNCTION_9_34();
  v9(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

uint64_t protocol witness for Decodable.init(from:) in conformance StackedGridsLayout@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = StackedGridsLayout.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 17) = HIBYTE(v6) & 1;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance StackedGridsLayout(void *a1)
{
  v2 = *(v1 + 16);
  *(v1 + 17);
  return StackedGridsLayout.encode(to:)(a1, *v1, *(v1 + 8));
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance StackedGridsLayout(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  *(a1 + 17);
  *(a2 + 17);
  return specialized == infix<A>(_:_:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance StackedGridsLayout@<X0>(Swift::OpaquePointer *a1@<X0>, uint64_t a2@<X8>)
{
  result = StackedGridsLayout.init(rawValue:)(a1->_rawValue);
  *a2 = result;
  *(a2 + 8) = 3;
  *(a2 + 16) = 257;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance StackedGridsLayout(void *a1@<X8>)
{
  v3 = *v1;
  StackedGridsLayout.rawValue.getter();
  *a1 = v4;
}

uint64_t SFCollectionStyleGrid.toString.getter()
{
  v1 = [v0 gridStyle];
  if (v1)
  {
    if (v1 == 1)
    {
      return 72;
    }

    else if (v1 == 2)
    {
      return 104;
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    [v0 numberOfColumns];
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  return result;
}

Swift::String_optional *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = String.count.getter();
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = v4;
  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSJ_Tt1gq5(v4, 0);

  v7 = specialized Sequence._copySequenceContents(initializing:)(&v9, v6 + 2, v5, a1, a2);

  if (v7 != v5)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

unint64_t lazy protocol witness table accessor for type StackedGridsLayout.StackedGridLayoutError and conformance StackedGridsLayout.StackedGridLayoutError()
{
  result = lazy protocol witness table cache variable for type StackedGridsLayout.StackedGridLayoutError and conformance StackedGridsLayout.StackedGridLayoutError;
  if (!lazy protocol witness table cache variable for type StackedGridsLayout.StackedGridLayoutError and conformance StackedGridsLayout.StackedGridLayoutError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedGridsLayout.StackedGridLayoutError and conformance StackedGridsLayout.StackedGridLayoutError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys;
  if (!lazy protocol witness table cache variable for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys;
  if (!lazy protocol witness table cache variable for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys;
  if (!lazy protocol witness table cache variable for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys;
  if (!lazy protocol witness table cache variable for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [StackableGrid] and conformance <A> [A]()
{
  return lazy protocol witness table accessor for type [StackableGrid] and conformance <A> [A](&lazy protocol witness table cache variable for type [StackableGrid] and conformance <A> [A], lazy protocol witness table accessor for type StackableGrid and conformance StackableGrid);
}

{
  return lazy protocol witness table accessor for type [StackableGrid] and conformance <A> [A](&lazy protocol witness table cache variable for type [StackableGrid] and conformance <A> [A], lazy protocol witness table accessor for type StackableGrid and conformance StackableGrid);
}

uint64_t lazy protocol witness table accessor for type [StackableGrid] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch13StackableGridOGMd, &_sSay10OmniSearch13StackableGridOGMR);
    a2();
    result = OUTLINED_FUNCTION_14_33();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StackableGrid and conformance StackableGrid()
{
  result = lazy protocol witness table cache variable for type StackableGrid and conformance StackableGrid;
  if (!lazy protocol witness table cache variable for type StackableGrid and conformance StackableGrid)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackableGrid and conformance StackableGrid);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackableGrid and conformance StackableGrid;
  if (!lazy protocol witness table cache variable for type StackableGrid and conformance StackableGrid)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackableGrid and conformance StackableGrid);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackableGrid and conformance StackableGrid;
  if (!lazy protocol witness table cache variable for type StackableGrid and conformance StackableGrid)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackableGrid and conformance StackableGrid);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [[StackableGrid]] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySay10OmniSearch13StackableGridOGGMd, &_sSaySay10OmniSearch13StackableGridOGGMR);
    a2();
    result = OUTLINED_FUNCTION_14_33();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for StackedGridsLayout(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StackedGridsLayout(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StackedGridsLayout.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, Swift::String_optional *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a4;
  v14 = a5;
  *&v15 = 0;
  *(&v15 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
    v10 = 0;
LABEL_15:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v10;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v12 = String.Iterator.next()();
      result = v12.value._countAndFlagsBits;
      if (!v12.value._object)
      {
        a4 = v13;
        a5 = v14;
        goto LABEL_14;
      }

      *v9++ = v12;
      ++v10;
      if (v11 == a3)
      {
        a4 = v13;
        a5 = v14;
        v10 = a3;
LABEL_14:
        v7 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSJ_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySJGMd, &_ss23_ContiguousArrayStorageCySJGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

uint64_t OUTLINED_FUNCTION_9_47()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t OUTLINED_FUNCTION_14_33()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_15_40()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t StackedGridsLayoutProvider.__allocating_init(_:)()
{
  OUTLINED_FUNCTION_0_92();
  v0 = swift_allocObject();
  StackedGridsLayoutProvider.init(_:)();
  return v0;
}

uint64_t key path getter for StackedGridsLayoutProvider.gridsLayout : StackedGridsLayoutProvider@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t key path setter for StackedGridsLayoutProvider.gridsLayout : StackedGridsLayoutProvider(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 96);
  v5 = *(a1 + 8);

  return v4(v6, v3, v5);
}

void StackedGridsLayoutProvider.gridsLayout.didset()
{
  swift_beginAccess();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 24);

    StackedGridsLayout.validateLayout()();
    if (v3)
    {

      if (one-time initialization token for visual != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logging.visual);
      v5 = v3;
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        v10 = v3;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&dword_25D85C000, v6, v7, "Failed to set grid layout, error: %@", v8, 0xCu);
        outlined destroy of NSObject?(v9);
        MEMORY[0x25F8A1050](v9, -1, -1);
        MEMORY[0x25F8A1050](v8, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t StackedGridsLayoutProvider.gridsLayout.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
}

void StackedGridsLayoutProvider.gridsLayout.setter()
{
  OUTLINED_FUNCTION_0_92();
  swift_beginAccess();
  v4 = *(v1 + 16);
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;

  StackedGridsLayoutProvider.gridsLayout.didset();
}

void (*StackedGridsLayoutProvider.gridsLayout.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return StackedGridsLayoutProvider.gridsLayout.modify;
}

void StackedGridsLayoutProvider.gridsLayout.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    StackedGridsLayoutProvider.gridsLayout.didset();
  }
}

uint64_t StackedGridsLayoutProvider.init(_:)()
{
  OUTLINED_FUNCTION_0_92();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return v1;
}

uint64_t StackedGridsLayoutProvider.layout(_:)(unint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for visual != -1)
  {
LABEL_66:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logging.visual);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = specialized Array.count.getter(a1);

    _os_log_impl(&dword_25D85C000, v5, v6, "Starting layout, input %ld cardSections", v7, 0xCu);
    MEMORY[0x25F8A1050](v7, -1, -1);
  }

  else
  {
  }

  v9 = (*(*v2 + 88))(v8);
  if (!v9)
  {
    goto LABEL_52;
  }

  v10 = v9;
  if (specialized Array.count.getter(a1) < 1 || *(v10 + 16) < 2uLL)
  {

LABEL_52:

    return a1;
  }

  v44 = MEMORY[0x277D84F90];
  StackedGridsLayout.generateStackedGrids(for:)();
  v12 = v11;

  v13 = *(v12 + 16);
  if (!v13)
  {

    a1 = MEMORY[0x277D84F90];
LABEL_55:

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      *(v39 + 4) = specialized Array.count.getter(a1);

      _os_log_impl(&dword_25D85C000, v37, v38, "Finished layout, output %ld cardSections", v39, 0xCu);
      MEMORY[0x25F8A1050](v39, -1, -1);
    }

    else
    {
    }

    return a1;
  }

  v14 = 0;
  v15 = 0;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v16 = a1;
  }

  else
  {
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v42 = v12 + 32;
  v40 = v16;
  v17 = MEMORY[0x277D84F90];
  v18 = a1 >> 62;
  v41 = v13;
  while (1)
  {
    v19 = v42 + 16 * v15;
    v20 = *(v19 + 8);
    if (v20)
    {
      break;
    }

LABEL_49:
    if (++v15 == v13)
    {

      a1 = v17;
      goto LABEL_55;
    }
  }

  v2 = *v19;
  v21 = StackedGridsLayoutProvider.collectionCardSections(for:)(v2);
  v22 = v14 + v20;
  if (__OFADD__(v14, v20))
  {
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
    goto LABEL_66;
  }

  if (v22 < v14)
  {
    goto LABEL_60;
  }

  v23 = v21;
  if (v18)
  {
    if (MEMORY[0x25F8A01B0](v40) < v14)
    {
      goto LABEL_61;
    }

    v24 = MEMORY[0x25F8A01B0](v40);
  }

  else
  {
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24 < v14)
    {
      goto LABEL_61;
    }
  }

  if (v24 < v22)
  {
    goto LABEL_62;
  }

  v43 = v2;
  if ((a1 & 0xC000000000000001) == 0 || v14 == v22)
  {

    if (!v18)
    {
LABEL_25:
      v27 = (2 * v22) | 1;
      goto LABEL_28;
    }
  }

  else
  {
    if (v14 >= v22)
    {
      goto LABEL_64;
    }

    type metadata accessor for SFCardSection();

    v25 = v14;
    do
    {
      v26 = v25 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v25);
      v25 = v26;
      --v20;
    }

    while (v20);
    if (!v18)
    {
      goto LABEL_25;
    }
  }

  _CocoaArrayWrapper.subscript.getter();
  v14 = v28;
LABEL_28:
  v29 = v27 >> 1;
  if (v27)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v32 = swift_dynamicCastClass();
    if (!v32)
    {
      swift_unknownObjectRelease();
      v32 = MEMORY[0x277D84F90];
    }

    v33 = *(v32 + 16);

    v2 = v29 - v14;
    if (__OFSUB__(v29, v14))
    {
      goto LABEL_65;
    }

    if (v33 == v2)
    {
      v34 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v13 = v41;
      v18 = a1 >> 62;
      if (v34)
      {
LABEL_46:
        outlined bridged method (mbnn) of @objc SFCollectionCardSection.cardSections.setter();
        v35 = v23;
        MEMORY[0x25F89F850]();
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v17 = v44;
        v14 = v22;
        goto LABEL_49;
      }

LABEL_45:
      swift_unknownObjectRelease();
      goto LABEL_46;
    }

    swift_unknownObjectRelease();
    v13 = v41;
    if (!v2)
    {
LABEL_44:
      v18 = a1 >> 62;
      goto LABEL_45;
    }
  }

  else
  {
    v2 = v29 - v14;
    if (__OFSUB__(v29, v14))
    {
      goto LABEL_63;
    }

    if (!v2)
    {
      goto LABEL_44;
    }
  }

  if (v2 >= 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v30 = swift_allocObject();
    v31 = _swift_stdlib_malloc_size(v30);
    v13 = v41;
    v30[2] = v2;
    v30[3] = (2 * ((v31 - 32) / 8)) | 1;
  }

  if (v14 != v29)
  {
    type metadata accessor for SFCardSection();
    swift_arrayInitWithCopy();
    goto LABEL_44;
  }

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

id StackedGridsLayoutProvider.collectionCardSections(for:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D4C278]) init];
  [v2 setCollectionStyle_];
  return v2;
}

uint64_t StackedGridsLayoutProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t StackedGridsLayoutProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t SearchEntityVisualContext.__allocating_init(cardBuilder:)(uint64_t *a1)
{
  swift_allocObject();
  v2 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_17_23();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = OUTLINED_FUNCTION_12_24(v6, v11);
  v8(v7);
  v9 = OUTLINED_FUNCTION_2_69();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t SearchEntityVisualContext.cardBuilder.setter(uint64_t a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  outlined init with take of EntityCardBuilding(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t SearchEntityVisualContext.init(cardBuilder:)(uint64_t *a1)
{
  v2 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_17_23();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = OUTLINED_FUNCTION_12_24(v6, v11);
  v8(v7);
  v9 = OUTLINED_FUNCTION_2_69();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t SearchEntityVisualContext.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t specialized SearchEntityVisualContext.init(cardBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[3] = a3;
  v9[4] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a3);
  outlined init with take of EntityCardBuilding(v9, a2 + 16);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_69()
{

  return specialized SearchEntityVisualContext.init(cardBuilder:)(v3, v0, v1, v2);
}

uint64_t MessageAccumulationContext.makeMessageOnlySnippetData()()
{
  MessageAccumulationContext.makeViewModel()();
  if (!v2)
  {
    return 0;
  }

  lazy protocol witness table accessor for type SearchToolSnippetPluginModel and conformance SearchToolSnippetPluginModel();
  v0 = SnippetPluginModel.data.getter();

  return v0;
}

OmniSearch::AttributionViewModel __swiftcall AttributionViewModel.init(sourceBundles:messages:)(Swift::OpaquePointer sourceBundles, OmniSearch::MessageAccumulationViewModel_optional messages)
{
  v3 = *messages.value.summaries._rawValue;
  v2->_rawValue = sourceBundles._rawValue;
  v2[1]._rawValue = v3;
  result.messages = messages;
  result.sourceBundles = sourceBundles;
  return result;
}

uint64_t static SearchToolSnippetPluginModel.bundleName.getter()
{
  swift_beginAccess();

  return OUTLINED_FUNCTION_107();
}

uint64_t static SearchToolSnippetPluginModel.bundleName.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  static SearchToolSnippetPluginModel.bundleName = a1;
  off_27FC71808 = a2;
}

uint64_t (*static SearchToolSnippetPluginModel.bundleName.modify())()
{
  OUTLINED_FUNCTION_107();
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t SearchToolSnippetPluginModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7475626972747461 && a2 == 0xEB000000006E6F69)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t key path getter for static SearchToolSnippetPluginModel.bundleName : SearchToolSnippetPluginModel.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27FC71808;
  *a1 = static SearchToolSnippetPluginModel.bundleName;
  a1[1] = v2;
}

uint64_t key path setter for static SearchToolSnippetPluginModel.bundleName : SearchToolSnippetPluginModel.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  static SearchToolSnippetPluginModel.bundleName = v2;
  off_27FC71808 = v1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchToolSnippetPluginModel.AttributionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchToolSnippetPluginModel.AttributionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchToolSnippetPluginModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SearchToolSnippetPluginModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchToolSnippetPluginModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchToolSnippetPluginModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void SearchToolSnippetPluginModel.encode(to:)()
{
  OUTLINED_FUNCTION_60_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E22ToolSnippetPluginModelO21AttributionCodingKeys33_764E27219276D372D031B6F44FD14947LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E22ToolSnippetPluginModelO21AttributionCodingKeys33_764E27219276D372D031B6F44FD14947LLOGMR);
  v22 = OUTLINED_FUNCTION_14(v4);
  v23 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E22ToolSnippetPluginModelO10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E22ToolSnippetPluginModelO10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMR);
  OUTLINED_FUNCTION_14(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18_9();
  v17 = *v0;
  v21 = v0[1];
  v18 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  lazy protocol witness table accessor for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v24 = v17;
  v25 = v21;
  lazy protocol witness table accessor for type AttributionViewModel and conformance AttributionViewModel();
  v19 = v22;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v23 + 8))(v10, v19);
  (*(v13 + 8))(v1, v11);
  OUTLINED_FUNCTION_61_2();
}

void SearchToolSnippetPluginModel.init(from:)()
{
  OUTLINED_FUNCTION_60_1();
  v2 = v1;
  v47 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E22ToolSnippetPluginModelO21AttributionCodingKeys33_764E27219276D372D031B6F44FD14947LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E22ToolSnippetPluginModelO21AttributionCodingKeys33_764E27219276D372D031B6F44FD14947LLOGMR);
  OUTLINED_FUNCTION_14(v4);
  v44 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E22ToolSnippetPluginModelO10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E22ToolSnippetPluginModelO10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMR);
  OUTLINED_FUNCTION_14(v11);
  v43 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  v18 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  lazy protocol witness table accessor for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    goto LABEL_8;
  }

  v41 = v10;
  v42 = v2;
  v19 = v44;
  v40 = v4;
  v20 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC10OmniSearch0K22ToolSnippetPluginModelO10CodingKeys33_764E27219276D372D031B6F44FD14947LLO_Tt1g5(v20, 0);
  v23 = v11;
  if (v21 == v22 >> 1)
  {
LABEL_7:
    v31 = type metadata accessor for DecodingError();
    swift_allocError();
    v33 = v32;
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v33 = &type metadata for SearchToolSnippetPluginModel;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v17, v23);
    v2 = v42;
LABEL_8:
    v38 = v2;
    goto LABEL_9;
  }

  if (v21 < (v22 >> 1))
  {
    v24 = v11;
    specialized ArraySlice.subscript.getter(v21 + 1);
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 == v28 >> 1)
    {
      lazy protocol witness table accessor for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys();
      v29 = v41;
      v30 = v24;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type AttributionViewModel and conformance AttributionViewModel();
      v35 = v40;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v36 = v43;
      swift_unknownObjectRelease();
      (*(v19 + 8))(v29, v35);
      (*(v36 + 8))(v17, v30);
      v37 = v46;
      *v47 = v45;
      v47[1] = v37;
      v38 = v42;
LABEL_9:
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      OUTLINED_FUNCTION_61_2();
      return;
    }

    v23 = v11;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t AttributionViewModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7542656372756F73 && a2 == 0xED000073656C646ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t AttributionViewModel.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x736567617373656DLL;
  }

  else
  {
    return 0x7542656372756F73;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AttributionViewModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AttributionViewModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AttributionViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttributionViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void AttributionViewModel.encode(to:)()
{
  OUTLINED_FUNCTION_60_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch20AttributionViewModelV10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch20AttributionViewModelV10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = *v0;
  v14 = v0[1];
  v12 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v13 = lazy protocol witness table accessor for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  OUTLINED_FUNCTION_26_8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v13)
  {
    v15 = 1;
    lazy protocol witness table accessor for type MessageAccumulationViewModel and conformance MessageAccumulationViewModel();

    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  (*(v5 + 8))(v10, v3);
  OUTLINED_FUNCTION_61_2();
}

void AttributionViewModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60_1();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch20AttributionViewModelV10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch20AttributionViewModelV10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMR);
  OUTLINED_FUNCTION_14(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_25_13();
  lazy protocol witness table accessor for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys();
  OUTLINED_FUNCTION_11_49();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_39_16();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    lazy protocol witness table accessor for type MessageAccumulationViewModel and conformance MessageAccumulationViewModel();
    OUTLINED_FUNCTION_39_16();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v19 = OUTLINED_FUNCTION_17_7();
    v20(v19);
    *v14 = a10;
    v14[1] = a10;

    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  OUTLINED_FUNCTION_61_2();
}

uint64_t MessageAccumulationViewModel.Summary.glyphName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MessageAccumulationViewModel.Summary.text.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

OmniSearch::MessageAccumulationViewModel::Summary __swiftcall MessageAccumulationViewModel.Summary.init(glyphName:text:)(Swift::String glyphName, Swift::String text)
{
  *v2 = glyphName;
  v2[1] = text;
  result.text = text;
  result.glyphName = glyphName;
  return result;
}

void MessageAccumulationViewModel.Summary.init(error:subcomponent:)(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  *a3 = 0xD000000000000017;
  a3[1] = 0x800000025DBF94E0;
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x73757361676550;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0x800000025DBF9500;
    }
  }

  else
  {
    v6 = 0xE900000000000074;
    v5 = OUTLINED_FUNCTION_12_43();
  }

  MEMORY[0x25F89F6C0](v5, v6);

  MEMORY[0x25F89F6C0](8250, 0xE200000000000000);
  swift_getErrorValue();
  v7 = Error.baseError.getter(v11);
  swift_getErrorValue();
  v8 = Error.localizedDescription.getter();
  v10 = v9;

  MEMORY[0x25F89F6C0](v8, v10);

  a3[2] = 0;
  a3[3] = 0xE000000000000000;
}

uint64_t MessageAccumulationContext.Subcomponent.displayName.getter(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_12_43();
  }

  if (a1 == 1)
  {
    return 0x73757361676550;
  }

  return 0xD000000000000010;
}

uint64_t Error.baseError.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v24 - v9;
  v11 = *(v4 + 16);
  v11(v24 - v9, v2, a1);
  v12 = _getErrorEmbeddedNSError<A>(_:)();
  if (v12)
  {
    v13 = v12;
    (*(v4 + 8))(v10, a1);
  }

  else
  {
    v13 = swift_allocError();
    (*(v4 + 32))(v14, v10, a1);
  }

  v15 = _convertErrorToNSError(_:)();

  v16 = [v15 underlyingErrors];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v17 + 16))
  {
    v18 = *(v17 + 32);
    v19 = v18;

    swift_getErrorValue();
    v20 = Error.baseError.getter(v24[1], v24[2]);
  }

  else
  {

    v11(v8, v2, a1);
    v21 = _getErrorEmbeddedNSError<A>(_:)();
    if (v21)
    {
      v20 = v21;
      (*(v4 + 8))(v8, a1);
    }

    else
    {
      v20 = swift_allocError();
      (*(v4 + 32))(v22, v8, a1);
    }
  }

  return v20;
}