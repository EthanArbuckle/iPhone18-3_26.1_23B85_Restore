unint64_t sub_18E24FDBC()
{
  result = qword_1ED6A8FF0;
  if (!qword_1ED6A8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8FF0);
  }

  return result;
}

uint64_t sub_18E24FE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_18E1D01EC(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0xD8uLL);
  return sub_18E24FE2C() & 1;
}

unint64_t sub_18E24FE9C()
{
  result = qword_1ED6A7958;
  if (!qword_1ED6A7958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7958);
  }

  return result;
}

unint64_t sub_18E24FEF0()
{
  result = qword_1ED6A9018;
  if (!qword_1ED6A9018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9018);
  }

  return result;
}

unint64_t sub_18E24FF78()
{
  result = qword_1ED6A9008;
  if (!qword_1ED6A9008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9008);
  }

  return result;
}

unint64_t sub_18E250050()
{
  result = qword_1ED6A9000;
  if (!qword_1ED6A9000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9000);
  }

  return result;
}

Swift::Void __swiftcall ResourceContainer.encode(with:)(NSCoder with)
{
  sub_18E1C6948(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
  v3 = sub_18E44E60C();
  v4 = sub_18E44EA8C();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  sub_18E1C6948(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceType);
  v5 = sub_18E44EA8C();
  v6 = sub_18E44EA8C();
  sub_18E1CB068(v6, sel_encodeObject_forKey_);

  v7 = *(v1 + OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
  sub_18E1C6C90();
  v8 = sub_18E44EA8C();
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];
}

unint64_t sub_18E250254()
{
  result = qword_1ED6A9378;
  if (!qword_1ED6A9378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9378);
  }

  return result;
}

unint64_t sub_18E2502C8(uint64_t a1)
{
  result = sub_18E250318();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E250318()
{
  result = qword_1ED6A9388;
  if (!qword_1ED6A9388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9388);
  }

  return result;
}

id ResourceContainer.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_18E1D121C(0, &qword_1ED6A87B0, 0x1E695DEF0);
  sub_18E1C8EA0();
  v3 = sub_18E44EEBC();
  sub_18E1D121C(0, &unk_1ED6A87A0, 0x1E696AEC0);
  sub_18E1C8EA0();
  v4 = sub_18E44EEBC();
  sub_18E1C6C90();
  v5 = sub_18E44EA8C();
  [a1 decodeBoolForKey_];

  if (!v3)
  {

    a1 = v4;
LABEL_6:

    swift_getObjectType();
    sub_18E1C8374();
    return 0;
  }

  if (!v4)
  {

    goto LABEL_6;
  }

  v6 = v3;
  sub_18E44E61C();

  sub_18E44EAAC();
  v7 = objc_allocWithZone(ObjectType);
  v8 = sub_18E1C7868();
  v13 = ResourceContainer.init(resourceData:resourceType:assetBacked:)(v8, v9, v10, v11, v12);

  swift_getObjectType();
  sub_18E1C8374();
  return v13;
}

unint64_t sub_18E250508()
{
  result = qword_1ED6A9398;
  if (!qword_1ED6A9398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9398);
  }

  return result;
}

uint64_t *ResourceContainer.toResource()()
{
  swift_getObjectType();
  v0 = sub_18E1C5A78();
  return sub_18E25059C(v0, v1);
}

uint64_t *sub_18E25059C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_18E44E24C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_18E44E23C();
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v8 = *(a1 + OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceType);
  v9 = *(a1 + OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceType + 8);
  sub_18E2D0AF8();
  v11 = v11 && v10 == v9;
  if (v11 || (sub_18E233C38(), (sub_18E1E37B4() & 1) != 0))
  {
    sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
    if (v11)
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
      *(&v46 + 1) = &type metadata for AssetBackedAppleDeviceTrackingBase;
      v47 = sub_18E26331C();
      sub_18E1C86E0();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2C303C();
    }

    else
    {
      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
      *(&v46 + 1) = &type metadata for AppleDeviceTrackingBase;
      v47 = sub_18E2C2CE8();
      sub_18E1C86E0();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2C2D68();
    }
  }

  else
  {
    v13 = v8 == 0xD000000000000011 && 0x800000018E4660E0 == v9;
    if (v13 || (sub_18E1E37B4() & 1) != 0)
    {
      sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
      if (v11)
      {
        sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
        *(&v46 + 1) = &type metadata for AssetBackedDiffusionAdapterBase;
        v47 = sub_18E25FAA8();
        sub_18E1C86E0();
        swift_allocObject();
        sub_18E1E3C4C();
        sub_18E2C350C();
      }

      else
      {
        sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
        *(&v46 + 1) = &type metadata for DiffusionAdapterBase;
        v47 = sub_18E2C328C();
        sub_18E1C86E0();
        swift_allocObject();
        sub_18E1E3C4C();
        sub_18E2C31BC();
      }
    }

    else
    {
      v14 = v8 == 0x6F69737566666944 && v9 == 0xEF6C65646F4D2E6ELL;
      if (v14 || (sub_18E1E37B4() & 1) != 0)
      {
        sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
        if (v11)
        {
          sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
          *(&v46 + 1) = &type metadata for AssetBackedDiffusionModelBase;
          v47 = sub_18E261274();
          sub_18E1C86E0();
          swift_allocObject();
          sub_18E1E3C4C();
          sub_18E2C39DC();
        }

        else
        {
          sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
          *(&v46 + 1) = &type metadata for DiffusionModelBase;
          v47 = sub_18E2C375C();
          sub_18E1C86E0();
          swift_allocObject();
          sub_18E1E3C4C();
          sub_18E2C368C();
        }
      }

      else
      {
        sub_18E2D0AF8();
        v16 = v11 && v15 == v9;
        if (v16 || (sub_18E233C38(), (sub_18E1E37B4() & 1) != 0))
        {
          sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
          if (v11)
          {
            sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
            *(&v46 + 1) = &type metadata for AssetBackedDisabledUseCaseListBase;
            v47 = sub_18E26200C();
            sub_18E1C86E0();
            swift_allocObject();
            sub_18E1E3C4C();
            sub_18E2C3E30();
          }

          else
          {
            sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
            *(&v46 + 1) = &type metadata for DisabledUseCaseListBase;
            v47 = sub_18E2C3ADC();
            sub_18E1C86E0();
            swift_allocObject();
            sub_18E1E3C4C();
            sub_18E2C3B5C();
          }
        }

        else
        {
          v17 = v8 == 0xD000000000000011 && 0x800000018E49F020 == v9;
          if (v17 || (sub_18E1E37B4() & 1) != 0)
          {
            sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
            if (v11)
            {
              sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
              *(&v46 + 1) = &type metadata for AssetBackedEmbeddingDenyListBase;
              v47 = sub_18E262830();
              sub_18E1C86E0();
              swift_allocObject();
              sub_18E1E3C4C();
              sub_18E2C4300();
            }

            else
            {
              sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
              *(&v46 + 1) = &type metadata for EmbeddingDenyListBase;
              v47 = sub_18E2C4080();
              sub_18E1C86E0();
              swift_allocObject();
              sub_18E1E3C4C();
              sub_18E2C3FB0();
            }
          }

          else
          {
            v18 = v8 == 0xD000000000000015 && 0x800000018E49F040 == v9;
            if (v18 || (sub_18E1E37B4() & 1) != 0)
            {
              sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
              if (v11)
              {
                sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                *(&v46 + 1) = &type metadata for AssetBackedEmbeddingPreprocessorBase;
                v47 = sub_18E25C750();
                sub_18E1C86E0();
                swift_allocObject();
                sub_18E1E3C4C();
                sub_18E20197C();
              }

              else
              {
                sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                *(&v46 + 1) = &type metadata for EmbeddingPreprocessorBase;
                v47 = sub_18E2C4400();
                sub_18E1C86E0();
                swift_allocObject();
                sub_18E1E3C4C();
                sub_18E2C4480();
              }
            }

            else
            {
              v19 = v8 == 0xD000000000000016 && 0x800000018E49F060 == v9;
              if (v19 || (sub_18E1E37B4() & 1) != 0)
              {
                sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
                if (v11)
                {
                  sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                  *(&v46 + 1) = &type metadata for AssetBackedHandwritingSynthesizerBase;
                  v47 = sub_18E254CCC();
                  sub_18E1C86E0();
                  swift_allocObject();
                  sub_18E1E3C4C();
                  sub_18E2C4B00();
                }

                else
                {
                  sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                  *(&v46 + 1) = &type metadata for HandwritingSynthesizerBase;
                  v47 = sub_18E2C47AC();
                  sub_18E1C86E0();
                  swift_allocObject();
                  sub_18E1E3C4C();
                  sub_18E2C482C();
                }
              }

              else
              {
                sub_18E2D0AF8();
                v21 = v11 && v20 == v9;
                if (v21 || (sub_18E233C38(), (sub_18E1E37B4() & 1) != 0))
                {
                  sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
                  if (v11)
                  {
                    sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                    *(&v46 + 1) = &type metadata for AssetBackedImageCuratedPromptsBase;
                    v47 = sub_18E261570();
                    sub_18E1C86E0();
                    swift_allocObject();
                    sub_18E1E3C4C();
                    sub_18E2C4F54();
                  }

                  else
                  {
                    sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                    *(&v46 + 1) = &type metadata for ImageCuratedPromptsBase;
                    v47 = sub_18E2C4C00();
                    sub_18E1C86E0();
                    swift_allocObject();
                    sub_18E1E3C4C();
                    sub_18E2C4C80();
                  }
                }

                else
                {
                  sub_18E2D0B5C();
                  v23 = v8 == 0x6C69466567616D49 && v9 == v22;
                  if (v23 || (sub_18E1E37B4() & 1) != 0)
                  {
                    sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
                    if (v11)
                    {
                      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                      *(&v46 + 1) = &type metadata for AssetBackedImageFilterBase;
                      v47 = sub_18E261A70();
                      sub_18E1C86E0();
                      swift_allocObject();
                      sub_18E1E3C4C();
                      sub_18E2C53A8();
                    }

                    else
                    {
                      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                      *(&v46 + 1) = &type metadata for ImageFilterBase;
                      v47 = sub_18E2C5054();
                      sub_18E1C86E0();
                      swift_allocObject();
                      sub_18E1E3C4C();
                      sub_18E2C50D4();
                    }
                  }

                  else
                  {
                    v24 = v8 == 0xD000000000000011 && 0x800000018E49F0B0 == v9;
                    if (v24 || (sub_18E1E37B4() & 1) != 0)
                    {
                      sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
                      if (v11)
                      {
                        sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                        *(&v46 + 1) = &type metadata for AssetBackedImageMagicCleanUpBase;
                        v47 = sub_18E25F3A8();
                        sub_18E1C86E0();
                        swift_allocObject();
                        sub_18E1E3C4C();
                        sub_18E2C57FC();
                      }

                      else
                      {
                        sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                        *(&v46 + 1) = &type metadata for ImageMagicCleanUpBase;
                        v47 = sub_18E2C54A8();
                        sub_18E1C86E0();
                        swift_allocObject();
                        sub_18E1E3C4C();
                        sub_18E2C5528();
                      }
                    }

                    else
                    {
                      sub_18E2D0B5C();
                      v27 = v8 == v26 && v9 == v25 - 8;
                      if (v27 || (sub_18E1E37B4() & 1) != 0)
                      {
                        sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
                        if (v11)
                        {
                          sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                          *(&v46 + 1) = &type metadata for AssetBackedImageScalerBase;
                          v47 = sub_18E2617F0();
                          sub_18E1C86E0();
                          swift_allocObject();
                          sub_18E1E3C4C();
                          sub_18E2C5C50();
                        }

                        else
                        {
                          sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                          *(&v46 + 1) = &type metadata for ImageScalerBase;
                          v47 = sub_18E2C58FC();
                          sub_18E1C86E0();
                          swift_allocObject();
                          sub_18E1E3C4C();
                          sub_18E2C597C();
                        }
                      }

                      else
                      {
                        v28 = v8 == 0xD000000000000018 && 0x800000018E49F0E0 == v9;
                        if (v28 || (sub_18E1E37B4() & 1) != 0)
                        {
                          sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
                          if (v11)
                          {
                            sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                            *(&v46 + 1) = &type metadata for AssetBackedImageSpatialPhotosReliveBase;
                            v47 = sub_18E263020();
                            sub_18E1C86E0();
                            swift_allocObject();
                            sub_18E1E3C4C();
                            sub_18E2C5EFC();
                          }

                          else
                          {
                            sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                            *(&v46 + 1) = &type metadata for ImageSpatialPhotosReliveBase;
                            v47 = sub_18E262DF4();
                            sub_18E1C86E0();
                            swift_allocObject();
                            sub_18E1E3C4C();
                            sub_18E2C5D54();
                          }
                        }

                        else
                        {
                          v29 = v8 == 0x6B6F546567616D49 && v9 == 0xEE0072657A696E65;
                          if (v29 || (sub_18E1E37B4() & 1) != 0)
                          {
                            sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
                            if (v11)
                            {
                              sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                              *(&v46 + 1) = &type metadata for AssetBackedImageTokenizerBase;
                              v47 = sub_18E25BC10();
                              sub_18E1C86E0();
                              swift_allocObject();
                              sub_18E1E3C4C();
                              sub_18E2018E4();
                            }

                            else
                            {
                              sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                              *(&v46 + 1) = &type metadata for ImageTokenizerBase;
                              v47 = sub_18E25EAE4();
                              sub_18E1C86E0();
                              swift_allocObject();
                              sub_18E1E3C4C();
                              sub_18E2C6000();
                            }
                          }

                          else
                          {
                            v30 = v8 == 0x706164412E4D4C4CLL && v9 == 0xEB00000000726574;
                            if (v30 || (sub_18E1E37B4() & 1) != 0)
                            {
                              sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
                              if (v11)
                              {
                                sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                *(&v46 + 1) = &type metadata for AssetBackedLLMAdapterBase;
                                v47 = sub_18E25AFDC();
                                sub_18E1C86E0();
                                swift_allocObject();
                                sub_18E1E3C4C();
                                sub_18E2017AC();
                              }

                              else
                              {
                                sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                *(&v46 + 1) = &type metadata for LLMAdapterBase;
                                v47 = sub_18E25D710();
                                sub_18E220B24();
                                swift_allocObject();
                                sub_18E1E3C4C();
                                sub_18E2CFD8C();
                              }
                            }

                            else
                            {
                              v31 = v8 == 0xD00000000000001BLL && 0x800000018E466150 == v9;
                              if (v31 || (sub_18E1E37B4() & 1) != 0)
                              {
                                sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
                                if (v11)
                                {
                                  sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                  *(&v46 + 1) = &type metadata for AssetBackedLLMAdapterMetadataOverrideBase;
                                  v47 = sub_18E2C6A8C();
                                  sub_18E1C86E0();
                                  swift_allocObject();
                                  sub_18E1E3C4C();
                                  sub_18E2C6938();
                                }

                                else
                                {
                                  sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                  *(&v46 + 1) = &type metadata for LLMAdapterMetadataOverrideBase;
                                  v47 = sub_18E2C6534();
                                  sub_18E1C86E0();
                                  swift_allocObject();
                                  sub_18E1E3C4C();
                                  sub_18E2C6464();
                                }
                              }

                              else
                              {
                                v32 = v8 == 0x666172442E4D4C4CLL && v9 == 0xEE006C65646F4D74;
                                if (v32 || (sub_18E1E37B4() & 1) != 0)
                                {
                                  sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
                                  if (v11)
                                  {
                                    sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                    *(&v46 + 1) = &type metadata for AssetBackedLLMDraftModelBase;
                                    v47 = sub_18E2537C0();
                                    sub_18E1C86E0();
                                    swift_allocObject();
                                    sub_18E1E3C4C();
                                    sub_18E201890();
                                  }

                                  else
                                  {
                                    sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                    *(&v46 + 1) = &type metadata for LLMDraftModelBase;
                                    v47 = sub_18E25E394();
                                    sub_18E220B24();
                                    swift_allocObject();
                                    sub_18E1E3C4C();
                                    sub_18E2CFD38();
                                  }
                                }

                                else
                                {
                                  v33 = v8 == 0x65646F4D2E4D4C4CLL && v9 == 0xE90000000000006CLL;
                                  if (v33 || (sub_18E1E37B4() & 1) != 0)
                                  {
                                    sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
                                    if (v11)
                                    {
                                      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                      *(&v46 + 1) = &type metadata for AssetBackedLLMModelBase;
                                      v47 = sub_18E250318();
                                      sub_18E1C86E0();
                                      swift_allocObject();
                                      sub_18E1E3C4C();
                                      sub_18E201F88();
                                    }

                                    else
                                    {
                                      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                      *(&v46 + 1) = &type metadata for LLMModelBase;
                                      v47 = sub_18E24E078();
                                      sub_18E220B24();
                                      swift_allocObject();
                                      sub_18E1E3C4C();
                                      sub_18E2CFCE4();
                                    }
                                  }

                                  else
                                  {
                                    v34 = v8 == 0xD000000000000017 && 0x800000018E4661A0 == v9;
                                    if (v34 || (sub_18E1E37B4() & 1) != 0)
                                    {
                                      sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
                                      if (v11)
                                      {
                                        sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                        *(&v46 + 1) = &type metadata for AssetBackedServerConfigurationBase;
                                        v47 = sub_18E262B5C();
                                        sub_18E1C86E0();
                                        swift_allocObject();
                                        sub_18E1E3C4C();
                                        sub_18E2C7220();
                                      }

                                      else
                                      {
                                        sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                        *(&v46 + 1) = &type metadata for ServerConfigurationBase;
                                        v47 = sub_18E2C6ECC();
                                        sub_18E1C86E0();
                                        swift_allocObject();
                                        sub_18E1E3C4C();
                                        sub_18E2C6F4C();
                                      }
                                    }

                                    else
                                    {
                                      v35 = v8 == 0xD00000000000001DLL && 0x800000018E49F340 == v9;
                                      if (v35 || (sub_18E1E37B4() & 1) != 0)
                                      {
                                        sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
                                        if (v11)
                                        {
                                          sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                          *(&v46 + 1) = &type metadata for AssetBackedModelConfigurationReplacementBase;
                                          v47 = sub_18E261D10();
                                          sub_18E1C86E0();
                                          swift_allocObject();
                                          sub_18E1E3C4C();
                                          sub_18E2C76F0();
                                        }

                                        else
                                        {
                                          sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                          *(&v46 + 1) = &type metadata for ModelConfigurationReplacementBase;
                                          v47 = sub_18E2C7470();
                                          sub_18E1C86E0();
                                          swift_allocObject();
                                          sub_18E1E3C4C();
                                          sub_18E2C73A0();
                                        }
                                      }

                                      else
                                      {
                                        v36 = v8 == 0x412E6E6F69746F4DLL && v9 == 0xEE00726574706164;
                                        if (v36 || (sub_18E1E37B4() & 1) != 0)
                                        {
                                          sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
                                          if (v11)
                                          {
                                            sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                            *(&v46 + 1) = &type metadata for AssetBackedMotionAdapterBase;
                                            v47 = sub_18E2C7DE8();
                                            sub_18E1C86E0();
                                            swift_allocObject();
                                            sub_18E1E3C4C();
                                            sub_18E2C7C94();
                                          }

                                          else
                                          {
                                            sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                            *(&v46 + 1) = &type metadata for MotionAdapterBase;
                                            v47 = sub_18E2C7940();
                                            sub_18E1C86E0();
                                            swift_allocObject();
                                            sub_18E1E3C4C();
                                            sub_18E2C7870();
                                          }
                                        }

                                        else
                                        {
                                          v37 = v8 == 0x4D2E6E6F69746F4DLL && v9 == 0xEC0000006C65646FLL;
                                          if (v37 || (sub_18E1E37B4() & 1) != 0)
                                          {
                                            sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
                                            if (v11)
                                            {
                                              sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                              *(&v46 + 1) = &type metadata for AssetBackedMotionBase;
                                              v47 = sub_18E2C8364();
                                              sub_18E1C86E0();
                                              swift_allocObject();
                                              sub_18E1E3C4C();
                                              sub_18E2C8210();
                                            }

                                            else
                                            {
                                              sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                              *(&v46 + 1) = &type metadata for MotionBase;
                                              v47 = sub_18E254984();
                                              sub_18E1C86E0();
                                              swift_allocObject();
                                              sub_18E1E3C4C();
                                              sub_18E2C7F94();
                                            }
                                          }

                                          else
                                          {
                                            v38 = v8 == 0x6C4174706D6F7250 && v9 == 0xEF7473694C776F6CLL;
                                            if (v38 || (sub_18E1E37B4() & 1) != 0)
                                            {
                                              sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
                                              if (v11)
                                              {
                                                sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                                *(&v46 + 1) = &type metadata for AssetBackedPromptAllowListBase;
                                                v47 = sub_18E2C8B04();
                                                sub_18E1C86E0();
                                                swift_allocObject();
                                                sub_18E1E3C4C();
                                                sub_18E2C89B0();
                                              }

                                              else
                                              {
                                                sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                                *(&v46 + 1) = &type metadata for PromptAllowListBase;
                                                v47 = sub_18E2C865C();
                                                sub_18E1C86E0();
                                                swift_allocObject();
                                                sub_18E1E3C4C();
                                                sub_18E2C858C();
                                              }
                                            }

                                            else
                                            {
                                              v39 = v8 == 0xD000000000000015 && 0x800000018E4661C0 == v9;
                                              if (v39 || (sub_18E1E37B4() & 1) != 0)
                                              {
                                                sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
                                                if (v11)
                                                {
                                                  sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                                  *(&v46 + 1) = &type metadata for AssetBackedSecureAnalyticsBase;
                                                  v47 = sub_18E25A768();
                                                  sub_18E1C86E0();
                                                  swift_allocObject();
                                                  sub_18E1E3C4C();
                                                  sub_18E2C907C();
                                                }

                                                else
                                                {
                                                  sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                                  *(&v46 + 1) = &type metadata for SecureAnalyticsBase;
                                                  v47 = sub_18E2C8DFC();
                                                  sub_18E1C86E0();
                                                  swift_allocObject();
                                                  sub_18E1E3C4C();
                                                  sub_18E2C8D2C();
                                                }
                                              }

                                              else
                                              {
                                                v40 = v8 == 0xD000000000000012 && 0x800000018E49F390 == v9;
                                                if (v40 || (sub_18E1E37B4() & 1) != 0)
                                                {
                                                  sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
                                                  if (v11)
                                                  {
                                                    sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                                    *(&v46 + 1) = &type metadata for AssetBackedTokenInputDenyListBase;
                                                    v47 = sub_18E26228C();
                                                    sub_18E1C86E0();
                                                    swift_allocObject();
                                                    sub_18E1E3C4C();
                                                    sub_18E2243B8();
                                                  }

                                                  else
                                                  {
                                                    sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                                    *(&v46 + 1) = &type metadata for TokenInputDenyListBase;
                                                    v47 = sub_18E2C92CC();
                                                    sub_18E1C86E0();
                                                    swift_allocObject();
                                                    sub_18E1E3C4C();
                                                    sub_18E2C91FC();
                                                  }
                                                }

                                                else
                                                {
                                                  sub_18E2D0AF8();
                                                  v42 = v11 && v41 == v9;
                                                  if (v42 || (sub_18E233C38(), (sub_18E1E37B4() & 1) != 0))
                                                  {
                                                    sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
                                                    if (v11)
                                                    {
                                                      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                                      *(&v46 + 1) = &type metadata for AssetBackedTokenOutputDenyListBase;
                                                      v47 = sub_18E251CA8();
                                                      sub_18E1C86E0();
                                                      swift_allocObject();
                                                      sub_18E1E3C4C();
                                                      sub_18E251D50();
                                                    }

                                                    else
                                                    {
                                                      sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                                      *(&v46 + 1) = &type metadata for TokenOutputDenyListBase;
                                                      v47 = sub_18E2C96F4();
                                                      sub_18E1C86E0();
                                                      swift_allocObject();
                                                      sub_18E1E3C4C();
                                                      sub_18E2C9624();
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v43 = v8 == 0xD000000000000015 && 0x800000018E49F3D0 == v9;
                                                    if (v43 || (sub_18E1E37B4() & 1) != 0)
                                                    {
                                                      sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
                                                      if (v11)
                                                      {
                                                        sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                                        *(&v46 + 1) = &type metadata for AssetBackedTokenOutputRetainListBase;
                                                        v47 = sub_18E2C9FC4();
                                                        sub_18E1C86E0();
                                                        swift_allocObject();
                                                        sub_18E1E3C4C();
                                                        sub_18E2C9E70();
                                                      }

                                                      else
                                                      {
                                                        sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                                        *(&v46 + 1) = &type metadata for TokenOutputRetainListBase;
                                                        v47 = sub_18E2C9B1C();
                                                        sub_18E1C86E0();
                                                        swift_allocObject();
                                                        sub_18E1E3C4C();
                                                        sub_18E2C9A4C();
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v44 = v8 == 0x657A696E656B6F54 && v9 == 0xE900000000000072;
                                                      if (!v44 && (sub_18E1E37B4() & 1) == 0)
                                                      {

                                                        goto LABEL_12;
                                                      }

                                                      sub_18E1E1A74(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_assetBacked);
                                                      if (v11)
                                                      {
                                                        sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                                        *(&v46 + 1) = &type metadata for AssetBackedTokenizerBase;
                                                        v47 = sub_18E2527B4();
                                                        sub_18E1C86E0();
                                                        swift_allocObject();
                                                        sub_18E1E3C4C();
                                                        sub_18E1E9CB4();
                                                      }

                                                      else
                                                      {
                                                        sub_18E1E269C(OBJC_IVAR____TtC12ModelCatalog17ResourceContainer_resourceData);
                                                        *(&v46 + 1) = &type metadata for TokenizerBase;
                                                        v47 = sub_18E24FDBC();
                                                        sub_18E220B24();
                                                        swift_allocObject();
                                                        sub_18E1E3C4C();
                                                        sub_18E2CFC90();
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_18E1E2088();
  sub_18E44E22C();
  if (v2)
  {
    sub_18E2CF0FC(&v48, &unk_1EABE0FF0);

    return sub_18E287190(&v45);
  }

  sub_18E2CF0FC(&v48, &unk_1EABE0FF0);

  v48 = v45;
  v49 = v46;
  v50 = v47;
LABEL_12:
  v45 = v48;
  v46 = v49;
  v47 = v50;
  if (*(&v49 + 1))
  {
    return sub_18E1C551C(&v45, a2);
  }

  result = sub_18E2CF0FC(&v45, &unk_1EABE0FF0);
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

unint64_t sub_18E251C00()
{
  result = qword_1ED6A94D8;
  if (!qword_1ED6A94D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A94D8);
  }

  return result;
}

unint64_t sub_18E251C54()
{
  result = qword_1ED6A9390;
  if (!qword_1ED6A9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9390);
  }

  return result;
}

unint64_t sub_18E251CA8()
{
  result = qword_1ED6A9178;
  if (!qword_1ED6A9178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9178);
  }

  return result;
}

unint64_t sub_18E251CFC()
{
  result = qword_1ED6A9380;
  if (!qword_1ED6A9380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9380);
  }

  return result;
}

unint64_t sub_18E251D50()
{
  result = qword_1ED6A7B10;
  if (!qword_1ED6A7B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7B10);
  }

  return result;
}

unint64_t sub_18E251DA4(uint64_t a1)
{
  result = sub_18E251DE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E251DE4()
{
  result = qword_1ED6A9360;
  if (!qword_1ED6A9360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9360);
  }

  return result;
}

unint64_t sub_18E251E64(uint64_t a1)
{
  result = sub_18E252124();
  *(a1 + 8) = result;
  return result;
}

uint64_t static Obfuscation.readObfuscatedContents<A>(fileURL:fallback:)(uint64_t a1, char a2)
{
  v4 = sub_18E44E54C();
  v5 = sub_18E1C4EAC(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C4EDC();
  sub_18E44E4BC();
  v8 = [objc_opt_self() defaultManager];
  sub_18E44E4DC();
  v9 = sub_18E44EA8C();

  v10 = [v8 fileExistsAtPath_];

  if (!v10)
  {
    if (a2)
    {
      v15 = sub_18E44E58C();
      if (!v2)
      {
        v26 = v15;
        v28 = v16;
        v17 = sub_18E1C78F8();
        v18(v17);
        goto LABEL_9;
      }
    }

    else
    {
      v19 = sub_18E44E4DC();
      v21 = v20;
      sub_18E3FDB10();
      swift_allocError();
      *v22 = v19;
      *(v22 + 8) = v21;
      *(v22 + 16) = 1;
      swift_willThrow();
    }

LABEL_8:
    v23 = sub_18E1C78F8();
    return v24(v23);
  }

  v11 = sub_18E44E58C();
  if (v2)
  {
    goto LABEL_8;
  }

  v13 = v11;
  v14 = v12;
  v26 = sub_18E252178(v11, v12);
  v28 = v27;
  v29 = sub_18E1C78F8();
  v30(v29);
  sub_18E1FDFE0(v13, v14);
LABEL_9:
  v31 = sub_18E44E24C();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  sub_18E44E23C();
  sub_18E44E22C();

  return sub_18E1FDFE0(v26, v28);
}

unint64_t sub_18E252124()
{
  result = qword_1ED6A9368;
  if (!qword_1ED6A9368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9368);
  }

  return result;
}

uint64_t sub_18E252178(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E44E93C();
  v5 = sub_18E1C4EAC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C4EDC();
  v12 = v11 - v10;
  v13 = sub_18E44E96C();
  v14 = sub_18E1C4EAC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_18E1C4EDC();
  v21 = v20 - v19;
  v22 = sub_18E1C6004();
  sub_18E2523A0(v22, v23);
  v24 = sub_18E1C6004();
  sub_18E2523F8(v24, v25);
  if (!v2)
  {
    sub_18E252900();
    sub_18E2706EC(&qword_1EABE9138, &unk_18E4E2CF0);
    sub_18E2536A0();
    sub_18E44E92C();
    a2 = sub_18E44E94C();
    (*(v7 + 8))(v12, v4);
    (*(v16 + 8))(v21, v13);
  }

  return a2;
}

uint64_t sub_18E2523A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_18E2523F8(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v2) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
LABEL_10:
        __break(1u);
        JUMPOUT(0x18E252500);
      }

      v2 = v2;
LABEL_6:
      if (v2 > 27)
      {
        sub_18E252564(a1, a2);
        return sub_18E44E95C();
      }

      else
      {
LABEL_7:
        sub_18E1FDFE0(a1, a2);
        v6 = sub_18E44E91C();
        sub_18E3FDC10();
        swift_allocError();
        (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E6966368], v6);
        return swift_willThrow();
      }

    case 2uLL:
      v4 = *(a1 + 16);
      v3 = *(a1 + 24);
      v5 = __OFSUB__(v3, v4);
      v2 = v3 - v4;
      if (!v5)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    case 3uLL:
      goto LABEL_7;
    default:
      v2 = BYTE6(a2);
      goto LABEL_6;
  }
}

unint64_t sub_18E252510()
{
  result = qword_1ED6A9338;
  if (!qword_1ED6A9338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9338);
  }

  return result;
}

uint64_t sub_18E252564(uint64_t a1, uint64_t a2)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v12[3] = MEMORY[0x1E6969080];
  v12[4] = MEMORY[0x1E6969078];
  v12[0] = a1;
  v12[1] = a2;
  v2 = sub_18E1E15F4(v12, MEMORY[0x1E6969080]);
  v3 = *v2;
  v4 = v2[1];
  switch(v4 >> 62)
  {
    case 1uLL:
      v7 = v3 >> 32;
      if (v3 >> 32 < v3)
      {
        __break(1u);
      }

      v6 = v3;
      goto LABEL_8;
    case 2uLL:
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
LABEL_8:
      sub_18E252720(v6, v7, &v11);
      goto LABEL_9;
    case 3uLL:
      memset(v10, 0, 14);
      v5 = v10;
      goto LABEL_5;
    default:
      v10[0] = *v2;
      LOWORD(v10[1]) = v4;
      BYTE2(v10[1]) = BYTE2(v4);
      BYTE3(v10[1]) = BYTE3(v4);
      BYTE4(v10[1]) = BYTE4(v4);
      BYTE5(v10[1]) = BYTE5(v4);
      v5 = v10 + BYTE6(v4);
LABEL_5:
      sub_18E252808(v10, v5, &v11);
LABEL_9:
      sub_18E1C9934(v12);
      v8 = *MEMORY[0x1E69E9840];
      return sub_18E1C5BFC();
  }
}

unint64_t sub_18E2526F8(uint64_t a1)
{
  result = sub_18E2527B4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E252720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_18E44E3BC();
  v7 = result;
  if (result)
  {
    result = sub_18E44E3DC();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_18E44E3CC();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_18E252808(v7, v13, a3);
}

unint64_t sub_18E2527B4()
{
  result = qword_1ED6A9348;
  if (!qword_1ED6A9348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9348);
  }

  return result;
}

uint64_t sub_18E252808@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_18E44E55C();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x193ACBD00]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x193ACBD20]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

unint64_t sub_18E2528AC()
{
  result = qword_1ED6A9358;
  if (!qword_1ED6A9358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9358);
  }

  return result;
}

uint64_t sub_18E252900()
{
  v68 = MEMORY[0x1E69E7CC0];
  sub_18E2530E0(0, 32, 0);
  v0 = 0;
  v1 = v68;
  do
  {
    v67 = 0;
    MEMORY[0x193ACD420](&v67, 8);
    sub_18E1C64B0();
    if (v3)
    {
      do
      {
        v67 = 0;
        MEMORY[0x193ACD420](&v67, 8);
        sub_18E1C64B0();
      }

      while (v3);
      LOBYTE(v4) = v5;
    }

    else
    {
      v4 = v2 >> 8;
    }

    v68 = v1;
    v7 = *(v1 + 16);
    v6 = *(v1 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_18E2530E0(v6 > 1, v7 + 1, 1);
      v1 = v68;
    }

    ++v0;
    *(v1 + 16) = v7 + 1;
    *(v1 + v7 + 32) = v4;
  }

  while (v0 != 32);
  v8 = sub_18E253164(v1, &unk_1F013F068);
  v9 = sub_18E253164(v1, &unk_1F013F0A8);
  v10 = sub_18E253164(v1, &unk_1F013F0E8);
  v66 = sub_18E253164(v1, &unk_1F013F128);
  v11 = sub_18E253294(0x18uLL, 32, v8);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  if (v17)
  {
    v8 = sub_18E44F3DC();
    swift_unknownObjectRetain_n();
    v19 = swift_dynamicCastClass();
    if (!v19)
    {
      swift_unknownObjectRelease();
      v19 = MEMORY[0x1E69E7CC0];
    }

    v20 = *(v19 + 16);

    if (__OFSUB__(v17 >> 1, v15))
    {
      __break(1u);
      goto LABEL_80;
    }

    if (v20 != (v17 >> 1) - v15)
    {
      goto LABEL_82;
    }

    v13 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v13)
    {
      goto LABEL_18;
    }

    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  while (1)
  {
    sub_18E2533A8(v11, v13, v15, v17);
    v13 = v18;
LABEL_17:
    swift_unknownObjectRelease();
LABEL_18:
    v11 = sub_18E253294(0x18uLL, 32, v1);
    sub_18E1C8404();
    if ((v8 & 1) == 0)
    {
      goto LABEL_19;
    }

    sub_18E44F3DC();
    swift_unknownObjectRetain_n();
    v22 = swift_dynamicCastClass();
    if (!v22)
    {
      swift_unknownObjectRelease();
      v22 = MEMORY[0x1E69E7CC0];
    }

    v23 = *(v22 + 16);

    sub_18E1C54D4();
    if (v25)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (v23 != v24)
    {
      goto LABEL_84;
    }

    v15 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (!v15)
    {
      v15 = MEMORY[0x1E69E7CC0];
      goto LABEL_26;
    }

LABEL_27:
    v26 = sub_18E1C89D0();
    v11 = sub_18E253164(v26, v27);

    sub_18E253294(0, 8, v9);
    sub_18E1C681C();

    if ((v8 & 1) == 0)
    {
      goto LABEL_28;
    }

    v9 = sub_18E44F3DC();
    swift_unknownObjectRetain_n();
    v31 = swift_dynamicCastClass();
    if (!v31)
    {
      swift_unknownObjectRelease();
      v31 = MEMORY[0x1E69E7CC0];
    }

    v32 = *(v31 + 16);

    sub_18E1C54D4();
    if (!v25)
    {
      break;
    }

LABEL_81:
    __break(1u);
LABEL_82:
    swift_unknownObjectRelease_n();
  }

  if (v32 != v33)
  {
    goto LABEL_86;
  }

  v13 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v13)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_35;
  }

  while (2)
  {
    v9 = sub_18E253294(0, 8, v1);
    sub_18E1C8404();
    if ((v8 & 1) == 0)
    {
      goto LABEL_37;
    }

    sub_18E44F3DC();
    swift_unknownObjectRetain_n();
    v34 = swift_dynamicCastClass();
    if (!v34)
    {
      swift_unknownObjectRelease();
      v34 = MEMORY[0x1E69E7CC0];
    }

    v35 = *(v34 + 16);

    sub_18E1C54D4();
    if (v25)
    {
      __break(1u);
LABEL_84:
      swift_unknownObjectRelease();
LABEL_19:
      sub_18E1C5E38(v11);
      v15 = v21;
LABEL_26:
      swift_unknownObjectRelease();
      goto LABEL_27;
    }

    if (v35 != v36)
    {
      goto LABEL_88;
    }

    v37 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (!v37)
    {
      goto LABEL_43;
    }

LABEL_44:
    v38 = sub_18E1C89D0();
    v9 = sub_18E253164(v38, v39);

    sub_18E253294(0x10uLL, 24, v10);
    sub_18E1C681C();

    if ((v8 & 1) == 0)
    {
      goto LABEL_45;
    }

    v10 = sub_18E44F3DC();
    swift_unknownObjectRetain_n();
    v42 = swift_dynamicCastClass();
    if (!v42)
    {
      swift_unknownObjectRelease();
      v42 = MEMORY[0x1E69E7CC0];
    }

    v43 = *(v42 + 16);

    sub_18E1C54D4();
    if (v25)
    {
      __break(1u);
LABEL_86:
      swift_unknownObjectRelease_n();
LABEL_28:
      v28 = sub_18E1C89D0();
      sub_18E2533A8(v28, v29, v17, v8);
      v13 = v30;
LABEL_35:
      swift_unknownObjectRelease();
      continue;
    }

    break;
  }

  if (v43 != v44)
  {
    goto LABEL_90;
  }

  v45 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v45)
  {
    goto LABEL_51;
  }

  while (2)
  {
    v10 = sub_18E253294(0x10uLL, 24, v1);
    sub_18E1C8404();
    if ((v8 & 1) == 0)
    {
      goto LABEL_53;
    }

    sub_18E44F3DC();
    swift_unknownObjectRetain_n();
    v46 = swift_dynamicCastClass();
    if (!v46)
    {
      swift_unknownObjectRelease();
      v46 = MEMORY[0x1E69E7CC0];
    }

    v47 = *(v46 + 16);

    sub_18E1C54D4();
    if (v25)
    {
      __break(1u);
LABEL_88:
      swift_unknownObjectRelease();
LABEL_37:
      sub_18E1C5E38(v9);
LABEL_43:
      swift_unknownObjectRelease();
      goto LABEL_44;
    }

    if (v47 != v48)
    {
      goto LABEL_92;
    }

    v49 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (!v49)
    {
      goto LABEL_59;
    }

LABEL_60:
    v50 = sub_18E1C89D0();
    v10 = sub_18E253164(v50, v51);

    v52 = sub_18E253294(8uLL, 16, v66);
    sub_18E1C8404();

    if ((v8 & 1) == 0)
    {
      goto LABEL_61;
    }

    sub_18E44F3DC();
    swift_unknownObjectRetain_n();
    v55 = swift_dynamicCastClass();
    if (!v55)
    {
      swift_unknownObjectRelease();
      v55 = MEMORY[0x1E69E7CC0];
    }

    v56 = *(v55 + 16);

    sub_18E1C54D4();
    if (v25)
    {
      __break(1u);
LABEL_90:
      swift_unknownObjectRelease_n();
LABEL_45:
      v40 = sub_18E1C89D0();
      sub_18E2533A8(v40, v41, v17, v8);
LABEL_51:
      swift_unknownObjectRelease();
      continue;
    }

    break;
  }

  if (v56 != v57)
  {
    swift_unknownObjectRelease_n();
LABEL_61:
    sub_18E1C5E38(v52);
    v54 = v53;
    goto LABEL_68;
  }

  v54 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v54)
  {
    goto LABEL_69;
  }

  v54 = MEMORY[0x1E69E7CC0];
LABEL_68:
  swift_unknownObjectRelease();
LABEL_69:
  v58 = sub_18E253294(8uLL, 16, v1);
  sub_18E1C8404();

  if ((v8 & 1) == 0)
  {
    goto LABEL_70;
  }

  v1 = sub_18E44F3DC();
  swift_unknownObjectRetain_n();
  v61 = swift_dynamicCastClass();
  if (!v61)
  {
    swift_unknownObjectRelease();
    v61 = MEMORY[0x1E69E7CC0];
  }

  v62 = *(v61 + 16);

  sub_18E1C54D4();
  if (v25)
  {
    __break(1u);
LABEL_92:
    swift_unknownObjectRelease();
LABEL_53:
    sub_18E1C5E38(v10);
LABEL_59:
    swift_unknownObjectRelease();
    goto LABEL_60;
  }

  if (v62 == v63)
  {
    v60 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (!v60)
    {
      v60 = MEMORY[0x1E69E7CC0];
      goto LABEL_77;
    }
  }

  else
  {
    swift_unknownObjectRelease_n();
LABEL_70:
    sub_18E1C5E38(v58);
    v60 = v59;
LABEL_77:
    swift_unknownObjectRelease();
  }

  v64 = sub_18E253164(v60, v54);

  sub_18E25348C(v64);
  sub_18E25348C(v10);
  sub_18E25348C(v11);
  return v9;
}

unint64_t sub_18E253110()
{
  result = qword_1ED6A94D0;
  if (!qword_1ED6A94D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A94D0);
  }

  return result;
}

uint64_t sub_18E253164(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    result = MEMORY[0x1E69E7CC0];
    if (v2)
    {
      v14 = MEMORY[0x1E69E7CC0];
      sub_18E2530E0(0, v2, 0);
      result = v14;
      v6 = (a2 + 32);
      v7 = (a1 + 32);
      v8 = *(v14 + 16);
      do
      {
        v10 = *v6++;
        v9 = v10;
        v12 = *v7++;
        v11 = v12;
        v15 = result;
        v13 = *(result + 24);
        if (v8 >= v13 >> 1)
        {
          sub_18E2530E0(v13 > 1, v8 + 1, 1);
          result = v15;
        }

        *(result + 16) = v8 + 1;
        *(result + v8++ + 32) = v11 ^ v9;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    result = sub_18E44F14C();
    __break(1u);
  }

  return result;
}

unint64_t sub_18E253294(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_18E253300()
{
  result = qword_1ED6A9350;
  if (!qword_1ED6A9350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9350);
  }

  return result;
}

unint64_t sub_18E253354()
{
  result = qword_1ED6A9340;
  if (!qword_1ED6A9340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9340);
  }

  return result;
}

void sub_18E2533A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_18E2706EC(&qword_1EABE0DF8, &qword_18E49D1A0);
      v8 = swift_allocObject();
      v9 = j__malloc_size_1(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
    }

    if (v4 != a3)
    {
      memcpy(v8 + 4, (a2 + a3), v5);
      return;
    }

    goto LABEL_10;
  }
}

unint64_t sub_18E253464(uint64_t a1)
{
  result = sub_18E25352C();
  *(a1 + 8) = result;
  return result;
}

void sub_18E25348C(uint64_t a1)
{
  v4 = sub_18E1C2A68(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_18E3F65E4(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  sub_18E1E1018();
  if (v10 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + v9 + 32), (v3 + 32), v1);

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v11 = *(v6 + 16);
  v5 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v5)
  {
    *(v6 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

unint64_t sub_18E25352C()
{
  result = qword_1ED6A9328;
  if (!qword_1ED6A9328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9328);
  }

  return result;
}

char *sub_18E2535AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_18E2706EC(&qword_1EABE0DF8, &qword_18E49D1A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_18E2536A0()
{
  result = qword_1EABE09B0;
  if (!qword_1EABE09B0)
  {
    sub_18E2707F8(&qword_1EABE9138, &unk_18E4E2CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE09B0);
  }

  return result;
}

unint64_t sub_18E253704()
{
  result = qword_1ED6A9478;
  if (!qword_1ED6A9478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9478);
  }

  return result;
}

unint64_t sub_18E25375C(uint64_t a1)
{
  result = sub_18E2537C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2537C0()
{
  result = qword_1ED6A9480;
  if (!qword_1ED6A9480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9480);
  }

  return result;
}

uint64_t sub_18E253840(uint64_t result)
{
  if (*(v1 + 16))
  {
    v2 = result;
    v3 = *(v1 + 16);

    v2(v4);
    sub_18E25E13C();
    return sub_18E1DD230();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_18E2538B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1CFB3C();
  a19 = v25;
  a20 = v26;
  v34 = sub_18E1FED68(v27, v28, v29, v30, v31, v32, v33);
  v35 = sub_18E1C5E70(v34, &a14);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_18E1C86C0();
  sub_18E1CD80C();
  MEMORY[0x1EEE9AC00](v38);
  sub_18E1C5738();
  MEMORY[0x1EEE9AC00](v39);
  sub_18E220544();
  MEMORY[0x1EEE9AC00](v40);
  sub_18E1CA6A8();
  MEMORY[0x1EEE9AC00](v41);
  sub_18E1CF7DC();
  sub_18E216B74();
  LOBYTE(v42) = v20;
  if (v20)
  {
    goto LABEL_2;
  }

  sub_18E1CF630();
  if (!v43)
  {
    sub_18E2885F0();
    v75 = sub_18E1C8558();
    sub_18E1CBDCC(v75, v76);
LABEL_2:
    os_unfair_lock_unlock((v23 + 24));
    goto LABEL_3;
  }

  v44 = sub_18E1CF834(v43);
  sub_18E223B94(v44);
  os_unfair_lock_unlock((v23 + 24));
  v45 = 0;
  sub_18E235354();
  sub_18E1E10B8(v46);
  v47.n128_u64[0] = 136315650;
  sub_18E1E334C(v47);
  sub_18E1D43CC();
  sub_18E44D3B0();
  while (1)
  {
    if (v45 == -1)
    {
      __break(1u);
      goto LABEL_43;
    }

    sub_18E1CC494();
    v48 = swift_allocObject();
    v49 = sub_18E1CFF44(v48);
    v167[4] = v22;
    v167[5] = v49;
    sub_18E1C8480();
    sub_18E1C80EC(&v166);
    v167[2] = v50;
    v167[3] = v21;
    _Block_copy(v167);
    sub_18E223FB8();

    v51 = sub_18E1E237C();
    v22 = [v51 v52];
    _Block_release(v21);
    sub_18E1CC494();
    v53 = swift_allocObject();
    sub_18E223C24(v53);
    sub_18E1CC494();
    v54 = swift_allocObject();
    sub_18E1D1A18(v54);
    sub_18E1CD8AC();
    v21 = swift_allocObject();
    v21[2] = &qword_1F018ABF0;
    v21[3] = v24;
    swift_unknownObjectRetain();

    sub_18E2452C0();
    v55();

    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E44D380();
    if (!v21)
    {
      break;
    }

    v56 = v21;
    v57 = v21;
    sub_18E1E3B68();
    sub_18E280314(v58, v59);
    sub_18E1E63E8();
    if ((v42 & 1) == 0)
    {
      sub_18E1D029C();
      if (!v100)
      {
LABEL_43:
        sub_18E1C6A1C();
        v99 = swift_once();
      }

      sub_18E1C8658(v99, qword_1ED6A9028);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E1C5904();
      v101 = sub_18E1E8838();
      v102(v101);
      v103 = v21;
      v104 = sub_18E44E80C();
      v105 = sub_18E44EE0C();

      if (os_log_type_enabled(v104, v105))
      {
        sub_18E1CA69C();
        v106 = swift_slowAlloc();
        sub_18E20809C();
        v107 = swift_slowAlloc();
        sub_18E223724(v107);
        sub_18E1CA69C();
        v108 = swift_slowAlloc();
        sub_18E223C94(v108);
        LODWORD(v109) = sub_18E1E2F8C().n128_u32[0];
        sub_18E1E2E5C(v109);
        sub_18E223F48();
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E228810();
        v110 = sub_18E1D84BC();
        sub_18E1C9624(v110, v22, v111);
        sub_18E1CEA58();
        sub_18E239C9C();
        v112 = _swift_stdlib_bridgeErrorToNSError();
        *(v106 + 14) = v112;
        sub_18E1FF324(v112, &a10);
        *(v106 + 22) = v113;
        sub_18E232E60();
        *(v106 + 24) = v114;
        sub_18E1E3200();
        _os_log_impl(v115, v116, v117, v118, v119, 0x20u);
        sub_18E32F548(v23);
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
        sub_18E1CF2EC();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();

        v120 = sub_18E1CF4CC();
      }

      else
      {

        v120 = sub_18E1E3A7C();
      }

      v121(v120);
      swift_willThrow();
      sub_18E1CF42C();
      sub_18E2352D0();
      swift_unknownObjectRelease_n();

      sub_18E1CF238();

      sub_18E1CEB50();

      goto LABEL_3;
    }

    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    sub_18E207B14();
    sub_18E1C95AC(v45, qword_1ED6A9028);
    sub_18E1C5904();
    v24 = v162;
    sub_18E2244C4();
    v60();
    v61 = v21;
    v42 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E1E3CD0();
    if (sub_18E2217FC())
    {
      sub_18E1CA69C();
      swift_slowAlloc();
      sub_18E1E7BA8();
      v63 = v62;
      sub_18E20809C();
      v64 = swift_slowAlloc();
      sub_18E1CA69C();
      v22 = swift_slowAlloc();
      v167[0] = v22;
      *v63 = sub_18E1E2F8C().n128_u32[0];
      sub_18E223F48();
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E44D398();
      v65 = sub_18E24707C();
      sub_18E1C9624(v65, v45, v66);
      sub_18E224020();
      sub_18E1D0444();

      sub_18E1E34C4();
      v67 = _swift_stdlib_bridgeErrorToNSError();
      *(v63 + 14) = v67;
      sub_18E1D0074(v67);
      *(v63 + 22) = v68;
      sub_18E232E60();
      *(v63 + 24) = v69;
      sub_18E243EFC(&dword_18E1C1000, v42, v162, "%s sync: connection error during call: %@, num connection attempts: %lu");
      sub_18E32F548(v64);
      v23 = v161;
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1CFCC0();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E25E204(&a12);
      swift_unknownObjectRelease();

      v70 = sub_18E240534();
      v71(v70);
      sub_18E1CF42C();
      sub_18E1D002C();

      sub_18E1CF238();
    }

    else
    {

      sub_18E25E204(&a12);
      swift_unknownObjectRelease();
      v72 = *v23;
      v73 = sub_18E1CF4CC();
      v74(v73);

      sub_18E1D002C();
    }

    swift_unknownObjectRelease();
    sub_18E223428();
    ++v45;
    sub_18E1D43CC();
  }

  sub_18E224020();
  sub_18E1D4CFC();
  swift_beginAccess();
  v77 = v24[2];
  if (v77)
  {
    sub_18E1E7BA8();
    v78 = v77;
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    sub_18E1CBEB4(v163, qword_1ED6A9028);
    sub_18E1C5904();
    v79 = sub_18E1E6718();
    v80(v79);
    v81 = v77;
    v82 = sub_18E44E80C();
    v83 = sub_18E44EE0C();

    if (os_log_type_enabled(v82, v83))
    {
      sub_18E1CA69C();
      v84 = swift_slowAlloc();
      sub_18E20809C();
      swift_slowAlloc();
      sub_18E1CA69C();
      v85 = swift_slowAlloc();
      sub_18E223C94(v85);
      LODWORD(v86) = sub_18E1E2F8C().n128_u32[0];
      sub_18E1E8ADC(v86);
      sub_18E223F48();
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E228810();
      v87 = sub_18E1E3D6C();
      sub_18E1C9624(v87, v22, v88);
      sub_18E1CEA58();
      sub_18E1E22D0();
      v89 = _swift_stdlib_bridgeErrorToNSError();
      *(v84 + 14) = v89;
      sub_18E1FF324(v89, &a9);
      *(v84 + 22) = v90;
      sub_18E232E60();
      *(v84 + 24) = v91;
      sub_18E1E1F74(&a10);
      sub_18E1D5FA8();
      _os_log_impl(v92, v93, v94, v95, v96, 0x20u);
      sub_18E32F548(v23);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v138 = *v23;
    }

    v97 = sub_18E1D63DC();
    v98(v97);
    swift_willThrow();
    sub_18E1CF42C();
    sub_18E2352D0();
    swift_unknownObjectRelease_n();

    sub_18E1CF238();

    sub_18E1CEB50();
  }

  else
  {
    sub_18E1D4CFC();
    v123 = swift_beginAccess();
    if (off_1F018AC00)
    {
      v124 = qword_1ED6A9020;

      if (v124 != -1)
      {
        sub_18E1C6A1C();
        swift_once();
      }

      sub_18E1CA644(v163, qword_1ED6A9028);
      sub_18E1C5904();
      v125 = sub_18E1E6718();
      v126(v125);
      v127 = sub_18E44E80C();
      sub_18E44EDFC();
      sub_18E1E3E30();
      if (os_log_type_enabled(v127, v128))
      {
        sub_18E1C9700();
        v129 = swift_slowAlloc();
        sub_18E1CA69C();
        v130 = swift_slowAlloc();
        sub_18E221F1C(v130);
        sub_18E1E2ABC(4.8151e-34);
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E44D398();
        v131 = sub_18E1D5C74();
        sub_18E1C9624(v131, v45, v132);
        sub_18E1D0444();

        sub_18E1E39BC();
        *(v129 + 14) = v24;
        sub_18E1DD2E8(&dword_18E1C1000, v133, v134, "%s sync: method returned non-nil result, num connection attempts:%lu");
        sub_18E1CF2EC();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();

        sub_18E1CEB50();
        sub_18E25E204(&a12);
        swift_unknownObjectRelease();
        sub_18E1E8A2C(&v164);
        v136 = sub_18E1C69C4();
        v137(v136);
        sub_18E1CF42C();
        sub_18E1D002C();
      }

      else
      {

        sub_18E1CEB50();
        sub_18E25E204(&a12);
        swift_unknownObjectRelease();
        v153 = *v23;
        v154 = sub_18E1D63DC();
        v155(v154);
        sub_18E1CF42C();
      }

      swift_unknownObjectRelease();
      sub_18E240AB4();
    }

    else
    {
      if (qword_1ED6A9020 != -1)
      {
        sub_18E1C6A1C();
        v123 = swift_once();
      }

      sub_18E1C8658(v123, qword_1ED6A9028);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E1C5904();
      sub_18E1E19C0();
      v140();
      v141 = sub_18E44E80C();
      v142 = sub_18E44EE0C();
      if (sub_18E207A34(v142))
      {
        sub_18E1C9700();
        swift_slowAlloc();
        sub_18E1CA69C();
        v143 = swift_slowAlloc();
        sub_18E2200C8(v143);
        sub_18E243124(4.8151e-34);
        sub_18E223F48();
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E1CFDD4();
        v144 = sub_18E1D5C74();
        sub_18E1C9624(v144, v23, v145);
        sub_18E1E7BA8();
        sub_18E1E6B80();

        sub_18E1E1764();
        sub_18E220934(&v165);
        sub_18E1E1F74(&a13);
        sub_18E1EA5B8(v146, v147, v148, v149);
        sub_18E1CFCC0();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();

        v150 = *v24;
        sub_18E1D025C();
        v151();
      }

      else
      {

        v156 = *v23;
        sub_18E1D025C();
        v157();
      }

      sub_18E2885F0();
      v158 = sub_18E1C8558();
      sub_18E1E1254(v158, v159);
      sub_18E1CF42C();
      sub_18E2352D0();
      swift_unknownObjectRelease_n();

      sub_18E1CEB50();
    }
  }

LABEL_3:
  sub_18E2245CC();
  sub_18E1E6AEC();
}

unint64_t sub_18E254448()
{
  result = qword_1ED6A9490;
  if (!qword_1ED6A9490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9490);
  }

  return result;
}

uint64_t sub_18E254508()
{
  v1 = *(v0 + 16);

  sub_18E1CC494();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

unint64_t sub_18E254544()
{
  result = qword_1ED6A94F0;
  if (!qword_1ED6A94F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A94F0);
  }

  return result;
}

unint64_t sub_18E254598()
{
  result = qword_1ED6A9488;
  if (!qword_1ED6A9488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9488);
  }

  return result;
}

uint64_t sub_18E2545EC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_18E1CD8AC();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = qword_1ED6A8B58;

  if (v7 != -1)
  {
    sub_18E1C593C();
    swift_once();
  }

  v8 = sub_18E44E83C();
  sub_18E1CE8B4(v8, qword_1ED6A9888);
  v9 = sub_18E44E80C();
  sub_18E44EE2C();
  v10 = sub_18E223CA0();
  if (os_log_type_enabled(v10, v11))
  {
    sub_18E1CAE28();
    *swift_slowAlloc() = 0;
    sub_18E1C96F0();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
  }

  sub_18E1CD8AC();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_18E1E0F7C;
  *(v17 + 24) = v6;
  sub_18E254738(sub_18E288764, v17, a1);
}

void sub_18E254738(uint64_t a1, uint64_t a2, void *a3)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18E27E2FC;
  v5[3] = &unk_1F013FDC8;
  v4 = _Block_copy(v5);

  [a3 regulatoryDomainsWith_];
  _Block_release(v4);
}

unint64_t sub_18E2547F0()
{
  result = qword_1ED6A9468;
  if (!qword_1ED6A9468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9468);
  }

  return result;
}

unint64_t sub_18E254844(uint64_t a1)
{
  result = sub_18E25486C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E25486C()
{
  result = qword_1ED6A9460;
  if (!qword_1ED6A9460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9460);
  }

  return result;
}

unint64_t sub_18E2548E0(uint64_t a1)
{
  result = sub_18E254908();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E254908()
{
  result = qword_1ED6A8670;
  if (!qword_1ED6A8670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8670);
  }

  return result;
}

unint64_t sub_18E25495C(uint64_t a1)
{
  result = sub_18E254984();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E254984()
{
  result = qword_1ED6A8680;
  if (!qword_1ED6A8680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8680);
  }

  return result;
}

unint64_t sub_18E254A54()
{
  result = qword_1ED6A8698[0];
  if (!qword_1ED6A8698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6A8698);
  }

  return result;
}

unint64_t sub_18E254AA8()
{
  result = qword_1ED6A80F0;
  if (!qword_1ED6A80F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A80F0);
  }

  return result;
}

unint64_t sub_18E254B00@<X0>(void *a1@<X8>)
{
  result = Tag.rawValue.getter();
  *a1 = 0xD000000000000020;
  a1[1] = v3;
  return result;
}

unint64_t sub_18E254B30()
{
  result = qword_1ED6A8690;
  if (!qword_1ED6A8690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8690);
  }

  return result;
}

unint64_t sub_18E254BA0()
{
  result = qword_1ED6A8688;
  if (!qword_1ED6A8688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8688);
  }

  return result;
}

unint64_t sub_18E254C4C()
{
  result = qword_1ED6A9140;
  if (!qword_1ED6A9140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9140);
  }

  return result;
}

unint64_t sub_18E254CA4(uint64_t a1)
{
  result = sub_18E254CCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E254CCC()
{
  result = qword_1ED6A9148;
  if (!qword_1ED6A9148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9148);
  }

  return result;
}

unint64_t sub_18E254D4C()
{
  result = qword_1ED6A9158;
  if (!qword_1ED6A9158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9158);
  }

  return result;
}

uint64_t sub_18E254E00@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return Tag.init(rawValue:)(a1);
}

unint64_t sub_18E254E10()
{
  result = qword_1ED6A94B0;
  if (!qword_1ED6A94B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A94B0);
  }

  return result;
}

uint64_t Tag.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_18E44F19C();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_18E254ED4()
{
  result = qword_1ED6A9150;
  if (!qword_1ED6A9150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9150);
  }

  return result;
}

unint64_t sub_18E254F54()
{
  result = qword_1ED6A9130;
  if (!qword_1ED6A9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9130);
  }

  return result;
}

uint64_t sub_18E254FA8()
{
  v2 = sub_18E207C7C(&unk_1F0127FD0);
  sub_18E207D3C(&v1, 0xD000000000000042, 0x800000018E459040);

  sub_18E207D3C(&v1, 0xD00000000000003ELL, 0x800000018E459090);

  sub_18E207D3C(&v1, 0xD000000000000023, 0x800000018E459010);

  sub_18E207D3C(&v1, 0xD000000000000026, 0x800000018E4590D0);

  return v2;
}

uint64_t sub_18E2550D0()
{
  result = sub_18E254FA8();
  qword_1ED6A94E8 = result;
  return result;
}

uint64_t sub_18E2550F0()
{
  sub_18E2706EC(&qword_1EABE1080, &qword_18E49DCC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E4B7BF0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = 0xD000000000000023;
  *(v0 + 40) = 0x800000018E450780;
  *(v0 + 48) = v1;
  *(v0 + 56) = 0xD000000000000028;
  *(v0 + 64) = 0x800000018E4507E0;
  *(v0 + 72) = v1;
  *(v0 + 80) = 0xD000000000000028;
  *(v0 + 88) = 0x800000018E450EC0;
  *(v0 + 96) = v1;
  *(v0 + 104) = 0xD00000000000002ELL;
  *(v0 + 112) = 0x800000018E450EF0;
  *(v0 + 120) = v1;
  *(v0 + 128) = 0xD00000000000002DLL;
  *(v0 + 136) = 0x800000018E450F20;
  *(v0 + 144) = v1;
  *(v0 + 152) = 0xD000000000000028;
  *(v0 + 160) = 0x800000018E450F50;
  *(v0 + 168) = v1;
  *(v0 + 176) = 0xD00000000000002ELL;
  *(v0 + 184) = 0x800000018E450F80;
  *(v0 + 192) = v1;
  *(v0 + 200) = 0xD00000000000002DLL;
  *(v0 + 208) = 0x800000018E450FB0;
  *(v0 + 216) = v1;
  *(v0 + 224) = 0xD000000000000028;
  *(v0 + 232) = 0x800000018E450FE0;
  *(v0 + 240) = v1;
  *(v0 + 248) = 0xD00000000000002ELL;
  *(v0 + 256) = 0x800000018E451010;
  *(v0 + 264) = v1;
  *(v0 + 272) = 0xD00000000000002DLL;
  *(v0 + 280) = 0x800000018E451040;
  *(v0 + 288) = v1;
  *(v0 + 296) = 0xD000000000000028;
  *(v0 + 304) = 0x800000018E451070;
  *(v0 + 312) = v1;
  *(v0 + 320) = 0xD00000000000002ELL;
  *(v0 + 328) = 0x800000018E4510A0;
  *(v0 + 336) = v1;
  *(v0 + 344) = 0xD00000000000002DLL;
  *(v0 + 352) = 0x800000018E4510D0;
  *(v0 + 360) = v1;
  *(v0 + 368) = 0xD000000000000028;
  *(v0 + 376) = 0x800000018E451100;
  *(v0 + 384) = v1;
  *(v0 + 392) = 0xD00000000000002ELL;
  *(v0 + 400) = 0x800000018E451130;
  *(v0 + 408) = v1;
  *(v0 + 416) = 0xD00000000000002DLL;
  *(v0 + 424) = 0x800000018E451160;
  *(v0 + 432) = v1;
  *(v0 + 440) = 0xD000000000000030;
  *(v0 + 448) = 0x800000018E451190;
  *(v0 + 456) = v1;
  *(v0 + 464) = 0xD000000000000035;
  *(v0 + 472) = 0x800000018E4511D0;
  *(v0 + 480) = v1;
  *(v0 + 488) = 0xD000000000000028;
  *(v0 + 496) = 0x800000018E451210;
  *(v0 + 504) = v1;
  *(v0 + 512) = 0xD00000000000002ELL;
  *(v0 + 520) = 0x800000018E451240;
  *(v0 + 528) = v1;
  *(v0 + 536) = 0xD00000000000002DLL;
  *(v0 + 544) = 0x800000018E451270;
  *(v0 + 552) = v1;
  *(v0 + 560) = 0xD000000000000028;
  *(v0 + 568) = 0x800000018E4512A0;
  *(v0 + 576) = v1;
  *(v0 + 584) = 0xD00000000000002ELL;
  *(v0 + 592) = 0x800000018E4512D0;
  *(v0 + 600) = v1;
  *(v0 + 608) = 0xD00000000000002DLL;
  *(v0 + 616) = 0x800000018E451300;
  *(v0 + 624) = v1;
  *(v0 + 632) = 0xD000000000000028;
  *(v0 + 640) = 0x800000018E451330;
  *(v0 + 648) = v1;
  *(v0 + 656) = 0xD00000000000002ELL;
  *(v0 + 664) = 0x800000018E451360;
  *(v0 + 672) = v1;
  *(v0 + 680) = 0xD00000000000002DLL;
  *(v0 + 688) = 0x800000018E451390;
  *(v0 + 696) = v1;
  *(v0 + 704) = 0xD000000000000028;
  *(v0 + 712) = 0x800000018E4513C0;
  *(v0 + 720) = v1;
  *(v0 + 728) = 0xD00000000000002ELL;
  *(v0 + 736) = 0x800000018E4513F0;
  *(v0 + 744) = v1;
  *(v0 + 752) = 0xD00000000000002DLL;
  *(v0 + 760) = 0x800000018E451420;
  *(v0 + 768) = v1;
  *(v0 + 776) = 0xD000000000000028;
  *(v0 + 784) = 0x800000018E451450;
  *(v0 + 792) = v1;
  *(v0 + 808) = 0x800000018E451480;
  *(v0 + 832) = 0x800000018E4514B0;
  *(v0 + 856) = 0x800000018E450750;
  *(v0 + 880) = 0x800000018E450720;
  *(v0 + 904) = 0x800000018E4507B0;
  *(v0 + 928) = 0x800000018E4508D0;
  *(v0 + 952) = 0x800000018E4508A0;
  *(v0 + 976) = 0x800000018E450900;
  *(v0 + 1000) = 0x800000018E450930;
  *(v0 + 1024) = 0x800000018E450810;
  *(v0 + 1048) = 0x800000018E450960;
  *(v0 + 1072) = 0x800000018E450840;
  *(v0 + 1096) = 0x800000018E450990;
  *(v0 + 1120) = 0x800000018E450870;
  *(v0 + 1144) = 0x800000018E4514E0;
  *(v0 + 1152) = &unk_1F012A130;
  *(v0 + 1168) = 0x800000018E451510;
  *(v0 + 1176) = &unk_1F012A160;
  *(v0 + 1184) = 0xD00000000000002ALL;
  *(v0 + 1192) = 0x800000018E451550;
  *(v0 + 1200) = &unk_1F012A190;
  *(v0 + 1216) = 0x800000018E451580;
  *(v0 + 1224) = &unk_1F012A1C0;
  *(v0 + 1240) = 0x800000018E4515B0;
  *(v0 + 1264) = 0x800000018E4515E0;
  *(v0 + 1272) = &unk_1F012A1F0;
  *(v0 + 1280) = 0xD00000000000002ALL;
  *(v0 + 1288) = 0x800000018E451610;
  *(v0 + 1312) = 0x800000018E4509C0;
  *(v0 + 1336) = 0x800000018E450A00;
  *(v0 + 1360) = 0x800000018E451640;
  *(v0 + 1368) = &unk_1F012A240;
  *(v0 + 1384) = 0x800000018E451670;
  *(v0 + 1392) = &unk_1F012A270;
  *(v0 + 1408) = 0x800000018E4516B0;
  *(v0 + 1416) = &unk_1F012A2A0;
  *(v0 + 1432) = 0x800000018E4516F0;
  *(v0 + 1440) = &unk_1F012A2D0;
  *(v0 + 1456) = 0x800000018E451730;
  *(v0 + 1464) = &unk_1F012A300;
  *(v0 + 1480) = 0x800000018E451770;
  *(v0 + 1488) = &unk_1F012A330;
  *(v0 + 1504) = 0x800000018E450B20;
  *(v0 + 1512) = &unk_1F012A360;
  *(v0 + 1528) = 0x800000018E4517B0;
  *(v0 + 1536) = &unk_1F012A390;
  *(v0 + 1552) = 0x800000018E451800;
  *(v0 + 1560) = &unk_1F012A3C0;
  *(v0 + 1576) = 0x800000018E451840;
  *(v0 + 1584) = &unk_1F012A3F0;
  *(v0 + 1600) = 0x800000018E451880;
  *(v0 + 1608) = &unk_1F012A420;
  *(v0 + 1624) = 0x800000018E4518C0;
  *(v0 + 1632) = &unk_1F012A450;
  *(v0 + 1648) = 0x800000018E4518F0;
  *(v0 + 1656) = &unk_1F012A480;
  *(v0 + 1664) = 0xD000000000000051;
  *(v0 + 1672) = 0x800000018E451930;
  *(v0 + 1680) = &unk_1F012A4B0;
  *(v0 + 1696) = 0x800000018E451990;
  *(v0 + 1704) = &unk_1F012A4E0;
  *(v0 + 1720) = 0x800000018E4519C0;
  *(v0 + 1728) = &unk_1F012A510;
  *(v0 + 1744) = 0x800000018E4519F0;
  *(v0 + 1752) = &unk_1F012A540;
  *(v0 + 1768) = 0x800000018E451A30;
  *(v0 + 1776) = &unk_1F012A580;
  *(v0 + 1792) = 0x800000018E451A70;
  *(v0 + 1800) = &unk_1F012A5B0;
  *(v0 + 1816) = 0x800000018E451AC0;
  *(v0 + 1824) = &unk_1F012A5E0;
  *(v0 + 1832) = 0xD00000000000002ALL;
  *(v0 + 1840) = 0x800000018E451B20;
  *(v0 + 1848) = &unk_1F012A610;
  *(v0 + 1864) = 0x800000018E451B50;
  *(v0 + 1872) = &unk_1F012A640;
  *(v0 + 1888) = 0x800000018E451B90;
  *(v0 + 1896) = &unk_1F012A670;
  *(v0 + 1904) = 0xD00000000000005ALL;
  *(v0 + 1912) = 0x800000018E451BE0;
  *(v0 + 1920) = &unk_1F012A6A0;
  *(v0 + 1936) = 0x800000018E451C40;
  *(v0 + 1944) = &unk_1F012A6D0;
  *(v0 + 1960) = 0x800000018E451C70;
  *(v0 + 1968) = &unk_1F012A700;
  *(v0 + 1984) = 0x800000018E451CA0;
  *(v0 + 1992) = &unk_1F012A730;
  *(v0 + 2008) = 0x800000018E451CE0;
  *(v0 + 2016) = &unk_1F012A760;
  *(v0 + 2032) = 0x800000018E451D20;
  *(v0 + 2040) = &unk_1F012A790;
  *(v0 + 2056) = 0x800000018E451D60;
  *(v0 + 2064) = &unk_1F012A7C0;
  *(v0 + 2080) = 0x800000018E451DA0;
  *(v0 + 2088) = &unk_1F012A7F0;
  *(v0 + 2104) = 0x800000018E451DD0;
  *(v0 + 2112) = &unk_1F012A820;
  *(v0 + 2128) = 0x800000018E451E10;
  *(v0 + 2136) = &unk_1F012A850;
  *(v0 + 2152) = 0x800000018E450B50;
  *(v0 + 2160) = &unk_1F012A880;
  *(v0 + 2176) = 0x800000018E451E50;
  *(v0 + 2184) = &unk_1F012A8B0;
  *(v0 + 2200) = 0x800000018E451E80;
  *(v0 + 2208) = &unk_1F012A8E0;
  *(v0 + 2224) = 0x800000018E451EB0;
  *(v0 + 2248) = 0x800000018E451EF0;
  *(v0 + 2272) = 0x800000018E451F30;
  *(v0 + 2280) = &unk_1F012A910;
  *(v0 + 2296) = 0x800000018E451F60;
  *(v0 + 2304) = &unk_1F012A940;
  *(v0 + 2320) = 0x800000018E451FA0;
  *(v0 + 2328) = &unk_1F012A970;
  *(v0 + 2344) = 0x800000018E451FE0;
  *(v0 + 2352) = &unk_1F012A9A0;
  *(v0 + 2368) = 0x800000018E452020;
  *(v0 + 2376) = &unk_1F012A9D0;
  *(v0 + 2392) = 0x800000018E452060;
  *(v0 + 2400) = &unk_1F012AA00;
  *(v0 + 2416) = 0x800000018E4520A0;
  *(v0 + 2424) = &unk_1F012AA30;
  *(v0 + 2440) = 0x800000018E4520E0;
  *(v0 + 2448) = &unk_1F012AA60;
  *(v0 + 2464) = 0x800000018E452120;
  *(v0 + 2472) = &unk_1F012AA90;
  *(v0 + 2488) = 0x800000018E452160;
  *(v0 + 2496) = &unk_1F012AAC0;
  *(v0 + 2512) = 0x800000018E4521A0;
  *(v0 + 2520) = &unk_1F012AAF0;
  *(v0 + 2536) = 0x800000018E4521E0;
  *(v0 + 2544) = &unk_1F012AB20;
  *(v0 + 2560) = 0x800000018E452230;
  *(v0 + 2568) = &unk_1F012AB50;
  *(v0 + 2584) = 0x800000018E452260;
  *(v0 + 2592) = &unk_1F012AB80;
  *(v0 + 2608) = 0x800000018E4522A0;
  *(v0 + 2616) = &unk_1F012ABB0;
  *(v0 + 2632) = 0x800000018E4522E0;
  *(v0 + 2640) = &unk_1F012ABE0;
  *(v0 + 2656) = 0x800000018E452330;
  *(v0 + 2664) = &unk_1F012AC10;
  *(v0 + 2680) = 0x800000018E452380;
  *(v0 + 2688) = &unk_1F012AC40;
  *(v0 + 2704) = 0x800000018E4523C0;
  *(v0 + 2712) = &unk_1F012AC70;
  *(v0 + 2728) = 0x800000018E452410;
  *(v0 + 2736) = &unk_1F012ACA0;
  *(v0 + 2752) = 0x800000018E452440;
  *(v0 + 2760) = &unk_1F012ACD0;
  *(v0 + 2776) = 0x800000018E452480;
  *(v0 + 2784) = &unk_1F012AD00;
  *(v0 + 2800) = 0x800000018E4524B0;
  *(v0 + 2808) = &unk_1F012AD30;
  *(v0 + 2824) = 0x800000018E4524F0;
  *(v0 + 2832) = &unk_1F012AD60;
  *(v0 + 4720) = 0x800000018E453910;
  *(v0 + 4728) = &unk_1F012B9F0;
  *(v0 + 4664) = 0xD00000000000002DLL;
  *(v0 + 4688) = 0xD000000000000033;
  *(v0 + 4712) = 0xD00000000000002BLL;
  *(v0 + 4696) = 0x800000018E4538D0;
  *(v0 + 4704) = &unk_1F012B9C0;
  *(v0 + 4672) = 0x800000018E4538A0;
  *(v0 + 4680) = &unk_1F012B990;
  *(v0 + 4624) = 0x800000018E453820;
  *(v0 + 4632) = v1;
  *(v0 + 4656) = &unk_1F012B960;
  *(v0 + 4640) = 0xD00000000000003ALL;
  *(v0 + 4648) = 0x800000018E453860;
  *(v0 + 4496) = 0xD00000000000002DLL;
  *(v0 + 4592) = 0xD000000000000031;
  *(v0 + 4608) = v1;
  *(v0 + 4616) = 0xD000000000000037;
  *(v0 + 4600) = 0x800000018E4537E0;
  *(v0 + 4568) = 0xD00000000000003ELL;
  *(v0 + 4584) = &unk_1F012B930;
  *(v0 + 4576) = 0x800000018E4537A0;
  *(v0 + 4528) = 0x800000018E453720;
  *(v0 + 4560) = &unk_1F012B900;
  *(v0 + 4544) = 0xD000000000000038;
  *(v0 + 4552) = 0x800000018E453760;
  *(v0 + 4536) = &unk_1F012B8D0;
  *(v0 + 4504) = 0x800000018E4536F0;
  *(v0 + 4512) = &unk_1F012B8A0;
  *(v0 + 4520) = 0xD000000000000033;
  *(v0 + 4456) = 0x800000018E453670;
  *(v0 + 4464) = &unk_1F012B840;
  *(v0 + 4488) = &unk_1F012B870;
  *(v0 + 4472) = 0xD00000000000003DLL;
  *(v0 + 4480) = 0x800000018E4536B0;
  *(v0 + 4376) = 0xD000000000000035;
  *(v0 + 4424) = 0xD00000000000002CLL;
  *(v0 + 4448) = 0xD000000000000037;
  *(v0 + 4432) = 0x800000018E453640;
  *(v0 + 4440) = &unk_1F012B810;
  *(v0 + 4400) = 0xD00000000000003BLL;
  *(v0 + 4416) = v1;
  *(v0 + 4408) = 0x800000018E453600;
  *(v0 + 4384) = 0x800000018E4535C0;
  *(v0 + 4392) = v1;
  *(v0 + 4120) = 0x800000018E453310;
  *(v0 + 4352) = 0xD000000000000038;
  *(v0 + 4368) = v1;
  *(v0 + 4360) = 0x800000018E453580;
  *(v0 + 4336) = 0x800000018E453540;
  *(v0 + 4344) = v1;
  *(v0 + 4312) = 0x800000018E453500;
  *(v0 + 4320) = &unk_1F012B7E0;
  *(v0 + 4328) = 0xD000000000000032;
  *(v0 + 4280) = 0xD00000000000002FLL;
  *(v0 + 4296) = &unk_1F012B7B0;
  *(v0 + 4304) = 0xD000000000000035;
  *(v0 + 4288) = 0x800000018E4534D0;
  *(v0 + 4256) = 0xD00000000000003CLL;
  *(v0 + 4272) = &unk_1F012B780;
  *(v0 + 4264) = 0x800000018E453490;
  *(v0 + 4216) = 0x800000018E453410;
  *(v0 + 4248) = &unk_1F012B750;
  *(v0 + 4232) = 0xD000000000000036;
  *(v0 + 4240) = 0x800000018E453450;
  *(v0 + 4224) = &unk_1F012B720;
  *(v0 + 4168) = 0x800000018E453390;
  *(v0 + 4200) = &unk_1F012B6F0;
  *(v0 + 4208) = 0xD00000000000003DLL;
  *(v0 + 4184) = 0xD000000000000037;
  *(v0 + 4192) = 0x800000018E4533D0;
  *(v0 + 4176) = &unk_1F012B6C0;
  *(v0 + 4144) = 0x800000018E453350;
  *(v0 + 4152) = &unk_1F012B690;
  *(v0 + 4160) = 0xD000000000000037;
  *(v0 + 4128) = &unk_1F012B660;
  *(v0 + 4136) = 0xD000000000000039;
  *(v0 + 4064) = 0xD000000000000040;
  *(v0 + 4088) = 0xD000000000000046;
  *(v0 + 4112) = 0xD000000000000033;
  *(v0 + 4096) = 0x800000018E4532C0;
  *(v0 + 4104) = &unk_1F012B630;
  *(v0 + 4072) = 0x800000018E453270;
  *(v0 + 4080) = &unk_1F012B600;
  *(v0 + 3952) = 0x800000018E453110;
  *(v0 + 4016) = 0xD00000000000003DLL;
  *(v0 + 4056) = &unk_1F012B5D0;
  *(v0 + 4040) = 0xD000000000000043;
  *(v0 + 4048) = 0x800000018E453220;
  *(v0 + 4032) = &unk_1F012B5A0;
  *(v0 + 4024) = 0x800000018E4531E0;
  *(v0 + 4000) = 0x800000018E453190;
  *(v0 + 4008) = &unk_1F012B570;
  *(v0 + 3960) = &unk_1F012B510;
  *(v0 + 3984) = &unk_1F012B540;
  *(v0 + 3992) = 0xD000000000000042;
  *(v0 + 3968) = 0xD00000000000003CLL;
  *(v0 + 3976) = 0x800000018E453150;
  *(v0 + 3904) = 0x800000018E453090;
  *(v0 + 3912) = &unk_1F012B4B0;
  *(v0 + 3936) = &unk_1F012B4E0;
  *(v0 + 3944) = 0xD000000000000038;
  *(v0 + 3920) = 0xD000000000000032;
  *(v0 + 3928) = 0x800000018E4530D0;
  *(v0 + 3856) = 0x800000018E453010;
  *(v0 + 3864) = &unk_1F012B450;
  *(v0 + 3888) = &unk_1F012B480;
  *(v0 + 3896) = 0xD00000000000003ELL;
  *(v0 + 3872) = 0xD000000000000038;
  *(v0 + 3880) = 0x800000018E453050;
  *(v0 + 3808) = 0x800000018E452F90;
  *(v0 + 3816) = &unk_1F012B3F0;
  *(v0 + 3840) = &unk_1F012B420;
  *(v0 + 3848) = 0xD00000000000003ELL;
  *(v0 + 3824) = 0xD000000000000038;
  *(v0 + 3832) = 0x800000018E452FD0;
  *(v0 + 3760) = 0x800000018E452F00;
  *(v0 + 3768) = &unk_1F012B390;
  *(v0 + 3792) = &unk_1F012B3C0;
  *(v0 + 3800) = 0xD00000000000003ELL;
  *(v0 + 3776) = 0xD000000000000038;
  *(v0 + 3784) = 0x800000018E452F50;
  *(v0 + 2848) = 0x800000018E452520;
  *(v0 + 2856) = &unk_1F012AD90;
  *(v0 + 2872) = 0x800000018E452560;
  *(v0 + 2880) = &unk_1F012ADC0;
  *(v0 + 2896) = 0x800000018E4525A0;
  *(v0 + 2904) = &unk_1F012ADF0;
  *(v0 + 2920) = 0x800000018E4525F0;
  *(v0 + 2928) = &unk_1F012AE20;
  *(v0 + 2944) = 0x800000018E452630;
  *(v0 + 2952) = &unk_1F012AE50;
  *(v0 + 2968) = 0x800000018E452680;
  *(v0 + 2976) = &unk_1F012AE80;
  *(v0 + 2992) = 0x800000018E4526B0;
  *(v0 + 3000) = &unk_1F012AEB0;
  *(v0 + 3016) = 0x800000018E4526F0;
  *(v0 + 3024) = &unk_1F012AEE0;
  *(v0 + 3040) = 0x800000018E452730;
  *(v0 + 3048) = &unk_1F012AF10;
  *(v0 + 3064) = 0x800000018E452770;
  *(v0 + 3072) = &unk_1F012AF40;
  *(v0 + 3088) = 0x800000018E4527B0;
  *(v0 + 3096) = &unk_1F012AF70;
  *(v0 + 3104) = 0xD00000000000002ALL;
  *(v0 + 3112) = 0x800000018E4527F0;
  *(v0 + 3120) = &unk_1F012AFA0;
  *(v0 + 3136) = 0x800000018E452820;
  *(v0 + 3144) = &unk_1F012AFD0;
  *(v0 + 3160) = 0x800000018E452850;
  *(v0 + 3168) = &unk_1F012B000;
  *(v0 + 3184) = 0x800000018E452890;
  *(v0 + 3192) = &unk_1F012B030;
  *(v0 + 3208) = 0x800000018E4528E0;
  *(v0 + 3216) = &unk_1F012B060;
  *(v0 + 3232) = 0x800000018E452930;
  *(v0 + 3240) = &unk_1F012B090;
  *(v0 + 3256) = 0x800000018E452980;
  *(v0 + 3264) = &unk_1F012B0C0;
  *(v0 + 3280) = 0x800000018E4529D0;
  *(v0 + 3288) = &unk_1F012B0F0;
  *(v0 + 3296) = 0xD00000000000003FLL;
  *(v0 + 3304) = 0x800000018E452A20;
  *(v0 + 3312) = v1;
  *(v0 + 3328) = 0x800000018E452A60;
  *(v0 + 3344) = 0xD000000000000045;
  *(v0 + 3352) = 0x800000018E452AB0;
  *(v0 + 3360) = v1;
  *(v0 + 3376) = 0x800000018E452B00;
  *(v0 + 3384) = v1;
  *(v0 + 3392) = 0xD00000000000003DLL;
  *(v0 + 3400) = 0x800000018E452B50;
  *(v0 + 3408) = v1;
  *(v0 + 3424) = 0x800000018E452B90;
  *(v0 + 3448) = 0x800000018E452BE0;
  *(v0 + 3456) = &unk_1F012B120;
  *(v0 + 3416) = 0xD000000000000043;
  *(v0 + 3472) = 0x800000018E452C20;
  *(v0 + 3432) = v1;
  *(v0 + 3480) = &unk_1F012B150;
  *(v0 + 3496) = 0x800000018E452C60;
  *(v0 + 3504) = &unk_1F012B180;
  *(v0 + 3440) = 0xD000000000000037;
  *(v0 + 3520) = 0x800000018E452C90;
  *(v0 + 3464) = 0xD00000000000003DLL;
  *(v0 + 3528) = &unk_1F012B1B0;
  *(v0 + 3544) = 0x800000018E452CD0;
  *(v0 + 3552) = &unk_1F012B1E0;
  *(v0 + 3488) = 0xD00000000000002CLL;
  *(v0 + 3568) = 0x800000018E452D00;
  *(v0 + 3512) = 0xD000000000000032;
  *(v0 + 3576) = &unk_1F012B210;
  *(v0 + 3592) = 0x800000018E452D40;
  *(v0 + 3600) = &unk_1F012B240;
  *(v0 + 3536) = 0xD00000000000002CLL;
  *(v0 + 3616) = 0x800000018E452D70;
  *(v0 + 3560) = 0xD000000000000032;
  *(v0 + 3624) = &unk_1F012B270;
  *(v0 + 3640) = 0x800000018E452DB0;
  *(v0 + 3648) = &unk_1F012B2A0;
  *(v0 + 3584) = 0xD00000000000002CLL;
  *(v0 + 3664) = 0x800000018E452DF0;
  *(v0 + 3608) = 0xD000000000000032;
  *(v0 + 3672) = &unk_1F012B2D0;
  *(v0 + 3688) = 0x800000018E452E30;
  *(v0 + 3696) = &unk_1F012B300;
  *(v0 + 3632) = 0xD000000000000033;
  *(v0 + 3712) = 0x800000018E452E70;
  *(v0 + 3656) = 0xD000000000000039;
  *(v0 + 3720) = &unk_1F012B330;
  *(v0 + 3736) = 0x800000018E452EB0;
  *(v0 + 3744) = &unk_1F012B360;
  *(v0 + 3680) = 0xD000000000000035;
  *(v0 + 4744) = 0x800000018E453940;
  *(v0 + 3704) = 0xD00000000000003BLL;
  *(v0 + 4752) = &unk_1F012BA20;
  *(v0 + 4768) = 0x800000018E450AB0;
  *(v0 + 4776) = &unk_1F012BA50;
  *(v0 + 3728) = 0xD000000000000040;
  *(v0 + 4792) = 0x800000018E450A70;
  *(v0 + 3752) = 0xD000000000000046;
  *(v0 + 4800) = &unk_1F012BA80;
  *(v0 + 4816) = 0x800000018E453970;
  *(v0 + 4824) = &unk_1F012BAB0;
  *(v0 + 4840) = 0x800000018E450B80;
  *(v0 + 4848) = &unk_1F012BAE0;
  *(v0 + 4864) = 0x800000018E4539B0;
  *(v0 + 4872) = &unk_1F012BB10;
  *(v0 + 4888) = 0x800000018E4539F0;
  *(v0 + 4896) = &unk_1F012BB40;
  *(v0 + 4912) = 0x800000018E453A20;
  *(v0 + 4920) = &unk_1F012BB70;
  *(v0 + 4936) = 0x800000018E453A70;
  *(v0 + 4944) = &unk_1F012BBA0;
  *(v0 + 4960) = 0x800000018E453AB0;
  *(v0 + 4968) = &unk_1F012BBE0;
  *(v0 + 4984) = 0x800000018E453AF0;
  *(v0 + 4992) = &unk_1F012BC20;
  *(v0 + 5008) = 0x800000018E450BB0;
  *(v0 + 5016) = &unk_1F012BC50;
  *(v0 + 5032) = 0x800000018E453B30;
  *(v0 + 5040) = &unk_1F012BC80;
  *(v0 + 5056) = 0x800000018E453B70;
  *(v0 + 5064) = &unk_1F012BCB0;
  *(v0 + 5080) = 0x800000018E453BB0;
  *(v0 + 5088) = &unk_1F012BCE0;
  *(v0 + 5104) = 0x800000018E453C00;
  *(v0 + 5112) = &unk_1F012BD10;
  *(v0 + 5128) = 0x800000018E453C40;
  *(v0 + 5136) = &unk_1F012BD40;
  *(v0 + 5152) = 0x800000018E453C80;
  *(v0 + 5160) = &unk_1F012BD70;
  *(v0 + 5176) = 0x800000018E453CC0;
  *(v0 + 5184) = &unk_1F012BDA0;
  *(v0 + 5200) = 0x800000018E453D00;
  *(v0 + 5208) = &unk_1F012BDD0;
  *(v0 + 5224) = 0x800000018E453D50;
  *(v0 + 5232) = &unk_1F012BE00;
  *(v0 + 5248) = 0x800000018E453D90;
  *(v0 + 5256) = &unk_1F012BE30;
  *(v0 + 5272) = 0x800000018E453DD0;
  *(v0 + 5280) = &unk_1F012BE60;
  *(v0 + 5296) = 0x800000018E453E10;
  *(v0 + 5304) = &unk_1F012BE90;
  *(v0 + 5320) = 0x800000018E453E60;
  *(v0 + 5328) = &unk_1F012BEC0;
  *(v0 + 5344) = 0x800000018E453EB0;
  *(v0 + 5352) = &unk_1F012BEF0;
  *(v0 + 5368) = 0x800000018E453EF0;
  *(v0 + 3368) = 0xD00000000000004BLL;
  *(v0 + 5376) = &unk_1F012BF20;
  *(v0 + 5392) = 0x800000018E453F30;
  *(v0 + 5400) = &unk_1F012BF50;
  *(v0 + 3336) = v1;
  *(v0 + 5416) = 0x800000018E453F70;
  *(v0 + 3320) = 0xD000000000000045;
  *(v0 + 5424) = &unk_1F012BF80;
  *(v0 + 5440) = 0x800000018E453FB0;
  *(v0 + 5448) = &unk_1F012BFB0;
  *(v0 + 5464) = 0x800000018E454000;
  *(v0 + 5472) = &unk_1F012BFE0;
  *(v0 + 3272) = 0xD00000000000004ELL;
  *(v0 + 5488) = 0x800000018E454050;
  *(v0 + 5496) = &unk_1F012C010;
  *(v0 + 5504) = 0xD00000000000004BLL;
  *(v0 + 5512) = 0x800000018E4540A0;
  *(v0 + 3248) = 0xD000000000000048;
  *(v0 + 5520) = &unk_1F012C040;
  *(v0 + 3224) = 0xD000000000000042;
  *(v0 + 5536) = 0x800000018E4540F0;
  *(v0 + 5544) = &unk_1F012C070;
  *(v0 + 3200) = 0xD000000000000041;
  *(v0 + 5560) = 0x800000018E454130;
  *(v0 + 3176) = 0xD000000000000040;
  *(v0 + 5568) = &unk_1F012C0A0;
  *(v0 + 5584) = 0x800000018E454170;
  *(v0 + 5592) = &unk_1F012C0D0;
  *(v0 + 3152) = 0xD00000000000003ALL;
  *(v0 + 5608) = 0x800000018E4541B0;
  *(v0 + 3128) = 0xD00000000000002BLL;
  *(v0 + 5616) = &unk_1F012C100;
  *(v0 + 5632) = 0x800000018E454200;
  *(v0 + 5640) = &unk_1F012C130;
  *(v0 + 5656) = 0x800000018E454240;
  *(v0 + 5664) = &unk_1F012C160;
  *(v0 + 5680) = 0x800000018E454280;
  *(v0 + 5688) = &unk_1F012C190;
  *(v0 + 3080) = 0xD000000000000036;
  *(v0 + 5704) = 0x800000018E4542D0;
  *(v0 + 3056) = 0xD000000000000030;
  *(v0 + 5712) = &unk_1F012C1C0;
  *(v0 + 5728) = 0x800000018E454310;
  *(v0 + 5736) = &unk_1F012C1F0;
  *(v0 + 3032) = 0xD000000000000037;
  *(v0 + 5752) = 0x800000018E454360;
  *(v0 + 3008) = 0xD000000000000031;
  *(v0 + 5760) = &unk_1F012C220;
  *(v0 + 5776) = 0x800000018E4543A0;
  *(v0 + 5784) = &unk_1F012C250;
  *(v0 + 2984) = 0xD000000000000035;
  *(v0 + 5800) = 0x800000018E4543F0;
  *(v0 + 2960) = 0xD00000000000002FLL;
  *(v0 + 5808) = &unk_1F012C280;
  *(v0 + 5824) = 0x800000018E454430;
  *(v0 + 2936) = 0xD000000000000044;
  *(v0 + 5832) = &unk_1F012C2B0;
  *(v0 + 2912) = 0xD00000000000003ELL;
  *(v0 + 5848) = 0x800000018E454470;
  *(v0 + 5856) = &unk_1F012C2E0;
  *(v0 + 5872) = 0x800000018E4544C0;
  *(v0 + 2888) = 0xD000000000000042;
  *(v0 + 5880) = &unk_1F012C310;
  *(v0 + 2864) = 0xD00000000000003CLL;
  *(v0 + 5896) = 0x800000018E454510;
  *(v0 + 5904) = &unk_1F012C340;
  *(v0 + 5920) = 0x800000018E454560;
  *(v0 + 2840) = 0xD000000000000032;
  *(v0 + 5928) = &unk_1F012C370;
  *(v0 + 2816) = 0xD00000000000002CLL;
  *(v0 + 5944) = 0x800000018E4545B0;
  *(v0 + 5952) = &unk_1F012C3A0;
  *(v0 + 5968) = 0x800000018E4545F0;
  *(v0 + 2792) = 0xD000000000000035;
  *(v0 + 5976) = &unk_1F012C3D0;
  *(v0 + 2768) = 0xD00000000000002FLL;
  *(v0 + 5992) = 0x800000018E454630;
  *(v0 + 6000) = &unk_1F012C400;
  *(v0 + 6016) = 0x800000018E454680;
  *(v0 + 2744) = 0xD000000000000035;
  *(v0 + 6024) = &unk_1F012C430;
  *(v0 + 2720) = 0xD00000000000002FLL;
  *(v0 + 6040) = 0x800000018E4546D0;
  *(v0 + 6048) = &unk_1F012C460;
  *(v0 + 6056) = 0xD000000000000050;
  *(v0 + 6064) = 0x800000018E454720;
  *(v0 + 2696) = 0xD000000000000042;
  *(v0 + 6072) = &unk_1F012C490;
  *(v0 + 2672) = 0xD00000000000003CLL;
  *(v0 + 6088) = 0x800000018E454780;
  *(v0 + 6096) = &unk_1F012C4C0;
  *(v0 + 6112) = 0x800000018E4547D0;
  *(v0 + 2648) = 0xD000000000000046;
  *(v0 + 6120) = &unk_1F012C4F0;
  *(v0 + 2624) = 0xD000000000000040;
  *(v0 + 6136) = 0x800000018E454820;
  *(v0 + 6144) = &unk_1F012C520;
  *(v0 + 6160) = 0x800000018E454870;
  *(v0 + 2600) = 0xD000000000000031;
  *(v0 + 6168) = &unk_1F012C550;
  *(v0 + 2576) = 0xD000000000000035;
  *(v0 + 6184) = 0x800000018E4548C0;
  *(v0 + 6192) = &unk_1F012C580;
  *(v0 + 6208) = 0x800000018E454910;
  *(v0 + 2552) = 0xD00000000000002FLL;
  *(v0 + 6216) = &unk_1F012C5B0;
  *(v0 + 2528) = 0xD000000000000042;
  *(v0 + 6104) = 0xD00000000000004CLL;
  *(v0 + 6224) = 0xD00000000000004CLL;
  *(v0 + 2504) = 0xD000000000000036;
  *(v0 + 6232) = 0x800000018E454960;
  *(v0 + 6240) = &unk_1F012C5E0;
  *(v0 + 2480) = 0xD000000000000030;
  *(v0 + 6248) = 0xD000000000000052;
  *(v0 + 2456) = 0xD000000000000037;
  *(v0 + 6256) = 0x800000018E4549B0;
  *(v0 + 6264) = &unk_1F012C610;
  *(v0 + 6280) = 0x800000018E454A10;
  *(v0 + 2432) = 0xD000000000000031;
  *(v0 + 6288) = &unk_1F012C640;
  *(v0 + 2408) = 0xD000000000000038;
  *(v0 + 6304) = 0x800000018E454A60;
  *(v0 + 6312) = &unk_1F012C670;
  *(v0 + 2384) = 0xD000000000000034;
  *(v0 + 6328) = 0x800000018E454AC0;
  *(v0 + 6336) = &unk_1F012C6A0;
  *(v0 + 6296) = 0xD000000000000055;
  *(v0 + 6344) = 0xD000000000000055;
  *(v0 + 2360) = 0xD000000000000037;
  *(v0 + 6352) = 0x800000018E454B10;
  *(v0 + 2336) = 0xD000000000000031;
  *(v0 + 6360) = &unk_1F012C6D0;
  *(v0 + 6376) = 0x800000018E454B70;
  *(v0 + 6384) = &unk_1F012C700;
  *(v0 + 2312) = 0xD000000000000033;
  *(v0 + 6400) = 0x800000018E454BC0;
  *(v0 + 2288) = 0xD000000000000034;
  *(v0 + 6408) = &unk_1F012C730;
  *(v0 + 2240) = 0xD000000000000039;
  *(v0 + 2256) = v1;
  *(v0 + 2264) = 0xD00000000000002ELL;
  *(v0 + 6424) = 0x800000018E454C10;
  *(v0 + 6432) = &unk_1F012C760;
  *(v0 + 2232) = v1;
  *(v0 + 6448) = 0x800000018E454C60;
  *(v0 + 6456) = &unk_1F012C790;
  *(v0 + 2216) = 0xD000000000000033;
  *(v0 + 6472) = 0x800000018E454CB0;
  *(v0 + 2192) = 0xD00000000000002ELL;
  *(v0 + 6480) = &unk_1F012C7C0;
  *(v0 + 6496) = 0x800000018E454CF0;
  *(v0 + 6504) = &unk_1F012C7F0;
  *(v0 + 2168) = 0xD00000000000002CLL;
  *(v0 + 2144) = 0xD000000000000026;
  *(v0 + 6520) = 0x800000018E454D30;
  *(v0 + 6528) = &unk_1F012C820;
  *(v0 + 6544) = 0x800000018E454D70;
  *(v0 + 2120) = 0xD00000000000003BLL;
  *(v0 + 6552) = &unk_1F012C860;
  *(v0 + 2096) = 0xD000000000000035;
  *(v0 + 6568) = 0x800000018E454DB0;
  *(v0 + 6576) = &unk_1F012C8A0;
  *(v0 + 6592) = 0x800000018E454DF0;
  *(v0 + 2072) = 0xD00000000000002DLL;
  *(v0 + 6600) = &unk_1F012C8E0;
  *(v0 + 2048) = 0xD00000000000003BLL;
  *(v0 + 6616) = 0x800000018E454E30;
  *(v0 + 6624) = &unk_1F012C920;
  *(v0 + 6640) = 0x800000018E454E70;
  *(v0 + 2024) = 0xD000000000000038;
  *(v0 + 6648) = &unk_1F012C960;
  *(v0 + 2000) = 0xD000000000000032;
  *(v0 + 6664) = 0x800000018E454EB0;
  *(v0 + 6672) = &unk_1F012C9A0;
  *(v0 + 6688) = 0x800000018E454EF0;
  *(v0 + 1976) = 0xD000000000000039;
  *(v0 + 6696) = &unk_1F012C9E0;
  *(v0 + 1952) = 0xD00000000000002DLL;
  *(v0 + 6712) = 0x800000018E454F30;
  *(v0 + 6720) = &unk_1F012CA20;
  *(v0 + 6736) = 0x800000018E454F70;
  *(v0 + 1928) = 0xD00000000000002ELL;
  *(v0 + 6744) = &unk_1F012CA60;
  *(v0 + 6760) = 0x800000018E454FB0;
  *(v0 + 6768) = &unk_1F012CAA0;
  *(v0 + 6784) = 0x800000018E454FF0;
  *(v0 + 6792) = &unk_1F012CAD0;
  *(v0 + 1880) = 0xD000000000000043;
  *(v0 + 6808) = 0x800000018E455030;
  *(v0 + 6816) = &unk_1F012CB00;
  *(v0 + 1856) = 0xD000000000000038;
  *(v0 + 6832) = 0x800000018E455080;
  *(v0 + 6840) = &unk_1F012CB30;
  *(v0 + 6856) = 0x800000018E4550C0;
  *(v0 + 6864) = &unk_1F012CB60;
  *(v0 + 1808) = 0xD000000000000059;
  *(v0 + 6880) = 0x800000018E455110;
  *(v0 + 6888) = &unk_1F012CB90;
  *(v0 + 1784) = 0xD000000000000042;
  *(v0 + 6904) = 0x800000018E455160;
  *(v0 + 6912) = &unk_1F012CBC0;
  *(v0 + 1760) = 0xD000000000000037;
  *(v0 + 6928) = 0x800000018E4551B0;
  *(v0 + 6936) = &unk_1F012CBF0;
  *(v0 + 1736) = 0xD000000000000034;
  *(v0 + 6952) = 0x800000018E4551F0;
  *(v0 + 6960) = &unk_1F012CC20;
  *(v0 + 1712) = 0xD00000000000002DLL;
  *(v0 + 6976) = 0x800000018E455240;
  *(v0 + 6984) = &unk_1F012CC50;
  *(v0 + 1688) = 0xD00000000000002CLL;
  *(v0 + 7000) = 0x800000018E455280;
  *(v0 + 7008) = &unk_1F012CC80;
  *(v0 + 7024) = 0x800000018E4552D0;
  *(v0 + 7032) = &unk_1F012CCB0;
  *(v0 + 7048) = 0x800000018E455310;
  *(v0 + 7056) = &unk_1F012CCF0;
  *(v0 + 7072) = 0x800000018E455360;
  *(v0 + 1640) = 0xD00000000000003ALL;
  *(v0 + 7080) = &unk_1F012CD30;
  *(v0 + 1616) = 0xD00000000000002FLL;
  *(v0 + 7096) = 0x800000018E4553A0;
  *(v0 + 7104) = &unk_1F012CD70;
  *(v0 + 7120) = 0x800000018E4553F0;
  *(v0 + 1592) = 0xD000000000000032;
  *(v0 + 7128) = &unk_1F012CDB0;
  *(v0 + 1568) = 0xD000000000000033;
  *(v0 + 7144) = 0x800000018E455430;
  *(v0 + 1544) = 0xD000000000000033;
  *(v0 + 7152) = &unk_1F012CDF0;
  *(v0 + 1520) = 0xD000000000000042;
  *(v0 + 7168) = 0x800000018E455480;
  *(v0 + 7176) = &unk_1F012CE30;
  *(v0 + 1472) = 0xD00000000000003ELL;
  *(v0 + 1496) = 0xD000000000000028;
  *(v0 + 5456) = 0xD000000000000049;
  *(v0 + 6128) = 0xD000000000000049;
  *(v0 + 6176) = 0xD000000000000049;
  *(v0 + 7184) = 0xD000000000000049;
  *(v0 + 7192) = 0x800000018E4554D0;
  *(v0 + 7200) = &unk_1F012CE60;
  *(v0 + 1448) = 0xD000000000000038;
  *(v0 + 7216) = 0x800000018E455520;
  *(v0 + 1424) = 0xD000000000000038;
  *(v0 + 7224) = &unk_1F012CE90;
  *(v0 + 7240) = 0x800000018E455570;
  *(v0 + 7248) = &unk_1F012CEC0;
  *(v0 + 1400) = 0xD000000000000039;
  *(v0 + 7264) = 0x800000018E4555C0;
  *(v0 + 1376) = 0xD000000000000031;
  *(v0 + 7272) = &unk_1F012CEF0;
  *(v0 + 7288) = 0x800000018E455610;
  *(v0 + 1344) = v1;
  *(v0 + 1352) = 0xD00000000000002CLL;
  *(v0 + 7296) = &unk_1F012CF20;
  *(v0 + 1304) = 0xD000000000000030;
  *(v0 + 1320) = v1;
  *(v0 + 1328) = 0xD000000000000035;
  *(v0 + 7312) = 0x800000018E455660;
  *(v0 + 7320) = &unk_1F012CF50;
  *(v0 + 1296) = v1;
  *(v0 + 7336) = 0x800000018E4556A0;
  *(v0 + 7344) = &unk_1F012CF80;
  *(v0 + 1256) = 0xD00000000000002FLL;
  *(v0 + 7360) = 0x800000018E4556F0;
  *(v0 + 7368) = &unk_1F012CFB0;
  *(v0 + 1248) = v1;
  *(v0 + 7384) = 0x800000018E455730;
  *(v0 + 1232) = 0xD000000000000022;
  *(v0 + 7392) = &unk_1F012CFE0;
  *(v0 + 1208) = 0xD00000000000002FLL;
  *(v0 + 7408) = 0x800000018E455770;
  *(v0 + 7416) = &unk_1F012D010;
  *(v0 + 7432) = 0x800000018E4557C0;
  *(v0 + 7440) = &unk_1F012D040;
  *(v0 + 7456) = 0x800000018E455810;
  *(v0 + 7464) = &unk_1F012D070;
  *(v0 + 1160) = 0xD000000000000030;
  *(v0 + 7480) = 0x800000018E455850;
  *(v0 + 1112) = 0xD000000000000027;
  *(v0 + 1128) = v1;
  *(v0 + 1136) = 0xD00000000000002BLL;
  *(v0 + 7488) = &unk_1F012D0A0;
  *(v0 + 1080) = v1;
  *(v0 + 1088) = 0xD000000000000022;
  *(v0 + 1104) = v1;
  *(v0 + 7504) = 0x800000018E455890;
  *(v0 + 7512) = &unk_1F012D0D0;
  *(v0 + 1056) = v1;
  *(v0 + 1064) = 0xD000000000000027;
  *(v0 + 7528) = 0x800000018E4558D0;
  *(v0 + 1016) = 0xD000000000000027;
  *(v0 + 1032) = v1;
  *(v0 + 1040) = 0xD000000000000022;
  *(v0 + 7536) = &unk_1F012D100;
  *(v0 + 984) = v1;
  *(v0 + 992) = 0xD000000000000022;
  *(v0 + 1008) = v1;
  *(v0 + 7552) = 0x800000018E455920;
  *(v0 + 7560) = &unk_1F012D130;
  *(v0 + 960) = v1;
  *(v0 + 968) = 0xD00000000000002ELL;
  *(v0 + 7576) = 0x800000018E455960;
  *(v0 + 912) = v1;
  *(v0 + 936) = v1;
  *(v0 + 944) = 0xD00000000000002FLL;
  *(v0 + 920) = 0xD000000000000029;
  *(v0 + 7584) = &unk_1F012D160;
  *(v0 + 7600) = 0x800000018E4559A0;
  *(v0 + 888) = v1;
  *(v0 + 896) = 0xD000000000000027;
  *(v0 + 864) = v1;
  *(v0 + 872) = 0xD000000000000028;
  *(v0 + 7608) = &unk_1F012D190;
  *(v0 + 7624) = 0x800000018E4559E0;
  *(v0 + 840) = v1;
  *(v0 + 848) = 0xD000000000000022;
  *(v0 + 816) = v1;
  *(v0 + 824) = 0xD00000000000002DLL;
  *(v0 + 7720) = 0x800000018E455A90;
  *(v0 + 800) = 0xD00000000000002ELL;
  *(v0 + 4736) = 0xD00000000000002ELL;
  *(v0 + 8296) = 0x800000018E455FE0;
  *(v0 + 4760) = 0xD00000000000002DLL;
  *(v0 + 4784) = 0xD000000000000033;
  *(v0 + 8808) = &unk_1F012DA90;
  *(v0 + 9736) = 0x800000018E456EA0;
  *(v0 + 9816) = &unk_1F012E240;
  *(v0 + 9832) = 0x800000018E456FC0;
  *(v0 + 9856) = 0x800000018E457010;
  *(v0 + 9864) = &unk_1F012E2A0;
  *(v0 + 10744) = 0x800000018E457970;
  *(v0 + 10696) = 0x800000018E4578F0;
  *(v0 + 10728) = &unk_1F012E960;
  *(v0 + 10736) = 0xD000000000000033;
  *(v0 + 10720) = 0x800000018E457930;
  *(v0 + 10712) = 0xD000000000000033;
  *(v0 + 10704) = &unk_1F012E930;
  *(v0 + 10648) = 0x800000018E457870;
  *(v0 + 10680) = &unk_1F012E900;
  *(v0 + 10688) = 0xD000000000000030;
  *(v0 + 10672) = 0x800000018E4578B0;
  *(v0 + 10664) = 0xD000000000000039;
  *(v0 + 10656) = &unk_1F012E8D0;
  *(v0 + 10600) = 0x800000018E4577E0;
  *(v0 + 10632) = &unk_1F012E8A0;
  *(v0 + 10640) = 0xD00000000000003BLL;
  *(v0 + 10624) = 0x800000018E457820;
  *(v0 + 10616) = 0xD000000000000048;
  *(v0 + 10608) = &unk_1F012E870;
  *(v0 + 10552) = 0x800000018E457750;
  *(v0 + 10584) = &unk_1F012E840;
  *(v0 + 10592) = 0xD00000000000003CLL;
  *(v0 + 10576) = 0x800000018E4577A0;
  *(v0 + 10568) = 0xD000000000000038;
  *(v0 + 10560) = &unk_1F012E810;
  *(v0 + 10504) = 0x800000018E4576C0;
  *(v0 + 10536) = &unk_1F012E7E0;
  *(v0 + 10544) = 0xD000000000000042;
  *(v0 + 10528) = 0x800000018E457700;
  *(v0 + 10520) = 0xD000000000000042;
  *(v0 + 10512) = &unk_1F012E7B0;
  *(v0 + 10456) = 0x800000018E457640;
  *(v0 + 10488) = &unk_1F012E780;
  *(v0 + 10496) = 0xD000000000000038;
  *(v0 + 10480) = 0x800000018E457680;
  *(v0 + 10472) = 0xD000000000000032;
  *(v0 + 10464) = &unk_1F012E750;
  *(v0 + 10408) = 0x800000018E4575C0;
  *(v0 + 10440) = &unk_1F012E720;
  *(v0 + 10448) = 0xD00000000000003BLL;
  *(v0 + 10432) = 0x800000018E457600;
  *(v0 + 10424) = 0xD000000000000038;
  *(v0 + 10416) = &unk_1F012E6F0;
  *(v0 + 10360) = 0x800000018E457540;
  *(v0 + 10392) = &unk_1F012E6C0;
  *(v0 + 10400) = 0xD000000000000033;
  *(v0 + 10384) = 0x800000018E457580;
  *(v0 + 10376) = 0xD000000000000031;
  *(v0 + 10368) = &unk_1F012E690;
  *(v0 + 10312) = 0x800000018E4574C0;
  *(v0 + 10344) = &unk_1F012E660;
  *(v0 + 10352) = 0xD00000000000003ALL;
  *(v0 + 10336) = 0x800000018E457500;
  *(v0 + 10328) = 0xD00000000000003BLL;
  *(v0 + 10320) = &unk_1F012E630;
  *(v0 + 10264) = 0x800000018E457440;
  *(v0 + 10296) = &unk_1F012E600;
  *(v0 + 10304) = 0xD000000000000037;
  *(v0 + 10288) = 0x800000018E457480;
  *(v0 + 10280) = 0xD000000000000039;
  *(v0 + 10272) = &unk_1F012E5D0;
  *(v0 + 10216) = 0x800000018E4573B0;
  *(v0 + 10248) = &unk_1F012E5A0;
  *(v0 + 10256) = 0xD00000000000003CLL;
  *(v0 + 10240) = 0x800000018E457400;
  *(v0 + 10232) = 0xD000000000000034;
  *(v0 + 10224) = &unk_1F012E570;
  *(v0 + 10168) = 0x800000018E457330;
  *(v0 + 10200) = &unk_1F012E540;
  *(v0 + 10208) = 0xD000000000000041;
  *(v0 + 10192) = 0x800000018E457370;
  *(v0 + 10184) = 0xD00000000000003ELL;
  *(v0 + 10176) = &unk_1F012E510;
  *(v0 + 10120) = 0x800000018E4572C0;
  *(v0 + 10152) = &unk_1F012E4E0;
  *(v0 + 10160) = 0xD000000000000034;
  *(v0 + 10144) = 0x800000018E457300;
  *(v0 + 10136) = 0xD00000000000002FLL;
  *(v0 + 10128) = &unk_1F012E4B0;
  *(v0 + 10072) = 0x800000018E457240;
  *(v0 + 10104) = &unk_1F012E480;
  *(v0 + 10112) = 0xD000000000000031;
  *(v0 + 10096) = 0x800000018E457280;
  *(v0 + 10088) = 0xD000000000000035;
  *(v0 + 10080) = &unk_1F012E450;
  *(v0 + 10024) = 0x800000018E4571C0;
  *(v0 + 10056) = &unk_1F012E420;
  *(v0 + 10064) = 0xD000000000000036;
  *(v0 + 10048) = 0x800000018E457200;
  *(v0 + 10040) = 0xD000000000000034;
  *(v0 + 10032) = &unk_1F012E3F0;
  *(v0 + 9976) = 0x800000018E457150;
  *(v0 + 10008) = &unk_1F012E3C0;
  *(v0 + 10016) = 0xD000000000000032;
  *(v0 + 10000) = 0x800000018E457190;
  *(v0 + 9992) = 0xD00000000000002FLL;
  *(v0 + 9984) = &unk_1F012E390;
  *(v0 + 9928) = 0x800000018E4570C0;
  *(v0 + 9960) = &unk_1F012E360;
  *(v0 + 9968) = 0xD000000000000032;
  *(v0 + 9952) = 0x800000018E457100;
  *(v0 + 9944) = 0xD000000000000043;
  *(v0 + 9936) = &unk_1F012E330;
  *(v0 + 9904) = 0x800000018E457080;
  *(v0 + 9912) = &unk_1F012E300;
  *(v0 + 9920) = 0xD00000000000003CLL;
  *(v0 + 9888) = &unk_1F012E2D0;
  *(v0 + 9896) = 0xD000000000000037;
  *(v0 + 9880) = 0x800000018E457040;
  *(v0 + 9872) = 0xD00000000000003ALL;
  *(v0 + 9840) = &unk_1F012E270;
  *(v0 + 6152) = 0xD00000000000004FLL;
  *(v0 + 6200) = 0xD00000000000004FLL;
  *(v0 + 6272) = 0xD00000000000004FLL;
  *(v0 + 9848) = 0xD00000000000002DLL;
  *(v0 + 6320) = 0xD00000000000004FLL;
  *(v0 + 9824) = 0xD00000000000004FLL;
  *(v0 + 9808) = 0x800000018E456F80;
  *(v0 + 9800) = 0xD00000000000003DLL;
  *(v0 + 9784) = 0x800000018E456F30;
  *(v0 + 9792) = &unk_1F012E210;
  *(v0 + 9744) = &unk_1F012E1B0;
  *(v0 + 9768) = &unk_1F012E1E0;
  *(v0 + 9776) = 0xD000000000000047;
  *(v0 + 9760) = 0x800000018E456EF0;
  *(v0 + 9752) = 0xD00000000000003ELL;
  *(v0 + 9688) = 0x800000018E456E30;
  *(v0 + 9696) = &unk_1F012E150;
  *(v0 + 9720) = &unk_1F012E180;
  *(v0 + 9728) = 0xD000000000000040;
  *(v0 + 9712) = 0x800000018E456E70;
  *(v0 + 9704) = 0xD00000000000002DLL;
  *(v0 + 8584) = 0x800000018E4562A0;
  *(v0 + 9672) = &unk_1F012E120;
  *(v0 + 9680) = 0xD00000000000003FLL;
  *(v0 + 9664) = 0x800000018E456E00;
  *(v0 + 9656) = 0xD00000000000002CLL;
  *(v0 + 9640) = 0x800000018E4506E0;
  *(v0 + 9648) = v1;
  *(v0 + 9592) = 0x800000018E456D80;
  *(v0 + 9624) = &unk_1F012E0F0;
  *(v0 + 9632) = 0xD000000000000036;
  *(v0 + 9616) = 0x800000018E456DC0;
  *(v0 + 9608) = 0xD000000000000031;
  *(v0 + 9600) = &unk_1F012E0C0;
  *(v0 + 9544) = 0x800000018E456CF0;
  *(v0 + 9576) = &unk_1F012E090;
  *(v0 + 9584) = 0xD00000000000003BLL;
  *(v0 + 9568) = 0x800000018E456D40;
  *(v0 + 9560) = 0xD000000000000035;
  *(v0 + 9552) = &unk_1F012E060;
  *(v0 + 9520) = 0x800000018E456CB0;
  *(v0 + 9528) = &unk_1F012E030;
  *(v0 + 9536) = 0xD000000000000046;
  *(v0 + 9504) = &unk_1F012E000;
  *(v0 + 9464) = 0xD000000000000058;
  *(v0 + 9512) = 0xD000000000000034;
  *(v0 + 9488) = 0xD000000000000058;
  *(v0 + 9496) = 0x800000018E456C50;
  *(v0 + 9480) = &unk_1F012DFD0;
  *(v0 + 9472) = 0x800000018E456BF0;
  *(v0 + 9448) = 0x800000018E456BB0;
  *(v0 + 9456) = &unk_1F012DFA0;
  *(v0 + 9432) = &unk_1F012DF70;
  *(v0 + 9440) = 0xD000000000000032;
  *(v0 + 9424) = 0x800000018E456B70;
  *(v0 + 9416) = 0xD000000000000035;
  *(v0 + 9400) = 0x800000018E456B30;
  *(v0 + 9408) = &unk_1F012DF40;
  *(v0 + 9384) = &unk_1F012DF10;
  *(v0 + 9392) = 0xD000000000000032;
  *(v0 + 9376) = 0x800000018E456B00;
  *(v0 + 9368) = 0xD00000000000002FLL;
  *(v0 + 9352) = 0x800000018E456AC0;
  *(v0 + 9360) = &unk_1F012DEE0;
  *(v0 + 9336) = &unk_1F012DEB0;
  *(v0 + 9344) = 0xD000000000000038;
  *(v0 + 9328) = 0x800000018E456A80;
  *(v0 + 9320) = 0xD00000000000003ALL;
  *(v0 + 9304) = 0x800000018E456A30;
  *(v0 + 9312) = &unk_1F012DE80;
  *(v0 + 9288) = &unk_1F012DE50;
  *(v0 + 9296) = 0xD000000000000047;
  *(v0 + 9280) = 0x800000018E4569F0;
  *(v0 + 9272) = 0xD00000000000003BLL;
  *(v0 + 9256) = 0x800000018E4569B0;
  *(v0 + 9264) = &unk_1F012DE20;
  *(v0 + 9240) = &unk_1F012DDF0;
  *(v0 + 9248) = 0xD000000000000037;
  *(v0 + 9232) = 0x800000018E456960;
  *(v0 + 9224) = 0xD000000000000041;
  *(v0 + 9208) = 0x800000018E456910;
  *(v0 + 9216) = &unk_1F012DDC0;
  *(v0 + 9192) = &unk_1F012DD90;
  *(v0 + 9200) = 0xD000000000000041;
  *(v0 + 9184) = 0x800000018E4568D0;
  *(v0 + 9176) = 0xD000000000000037;
  *(v0 + 9160) = 0x800000018E456890;
  *(v0 + 9168) = &unk_1F012DD60;
  *(v0 + 9144) = &unk_1F012DD30;
  *(v0 + 9152) = 0xD000000000000031;
  *(v0 + 9136) = 0x800000018E456850;
  *(v0 + 9128) = 0xD00000000000003ALL;
  *(v0 + 9112) = 0x800000018E456810;
  *(v0 + 9120) = &unk_1F012DD00;
  *(v0 + 9096) = &unk_1F012DCD0;
  *(v0 + 9104) = 0xD000000000000037;
  *(v0 + 9088) = 0x800000018E4567D0;
  *(v0 + 9080) = 0xD000000000000032;
  *(v0 + 9064) = 0x800000018E456790;
  *(v0 + 9072) = &unk_1F012DCA0;
  *(v0 + 9048) = &unk_1F012DC70;
  *(v0 + 9056) = 0xD000000000000030;
  *(v0 + 9040) = 0x800000018E456750;
  *(v0 + 9032) = 0xD000000000000039;
  *(v0 + 9016) = 0x800000018E456710;
  *(v0 + 9024) = &unk_1F012DC40;
  *(v0 + 9000) = &unk_1F012DC10;
  *(v0 + 9008) = 0xD00000000000003ALL;
  *(v0 + 8992) = 0x800000018E4566D0;
  *(v0 + 8984) = 0xD00000000000003BLL;
  *(v0 + 8968) = 0x800000018E456690;
  *(v0 + 8976) = &unk_1F012DBE0;
  *(v0 + 8952) = &unk_1F012DBB0;
  *(v0 + 8960) = 0xD000000000000033;
  *(v0 + 8944) = 0x800000018E456640;
  *(v0 + 8936) = 0xD000000000000040;
  *(v0 + 8920) = 0x800000018E456600;
  *(v0 + 8928) = &unk_1F012DB80;
  *(v0 + 8904) = &unk_1F012DB50;
  *(v0 + 8912) = 0xD00000000000003DLL;
  *(v0 + 8896) = 0x800000018E4565C0;
  *(v0 + 8888) = 0xD000000000000033;
  *(v0 + 8872) = 0x800000018E456590;
  *(v0 + 8880) = &unk_1F012DB20;
  *(v0 + 8856) = &unk_1F012DAF0;
  *(v0 + 8864) = 0xD00000000000002ELL;
  *(v0 + 8848) = 0x800000018E456550;
  *(v0 + 8840) = 0xD000000000000030;
  *(v0 + 8824) = 0x800000018E456510;
  *(v0 + 8832) = &unk_1F012DAC0;
  *(v0 + 8800) = 0x800000018E4564D0;
  *(v0 + 8816) = 0xD000000000000034;
  *(v0 + 8784) = &unk_1F012DA60;
  *(v0 + 8792) = 0xD000000000000035;
  *(v0 + 8776) = 0x800000018E456490;
  *(v0 + 8768) = 0xD000000000000033;
  *(v0 + 8752) = 0x800000018E456450;
  *(v0 + 8760) = &unk_1F012DA30;
  *(v0 + 8736) = &unk_1F012DA00;
  *(v0 + 8744) = 0xD000000000000031;
  *(v0 + 8728) = 0x800000018E456420;
  *(v0 + 8720) = 0xD00000000000002ELL;
  *(v0 + 8704) = 0x800000018E4563E0;
  *(v0 + 8712) = &unk_1F012D9D0;
  *(v0 + 8688) = &unk_1F012D9A0;
  *(v0 + 8696) = 0xD000000000000031;
  *(v0 + 8680) = 0x800000018E456390;
  *(v0 + 8672) = 0xD000000000000042;
  *(v0 + 8656) = 0x800000018E456350;
  *(v0 + 8664) = &unk_1F012D970;
  *(v0 + 8640) = &unk_1F012D940;
  *(v0 + 8648) = 0xD00000000000003BLL;
  *(v0 + 8632) = 0x800000018E456310;
  *(v0 + 8624) = 0xD000000000000036;
  *(v0 + 8608) = 0x800000018E4562D0;
  *(v0 + 8616) = &unk_1F012D910;
  *(v0 + 8592) = &unk_1F012D8E0;
  *(v0 + 8600) = 0xD000000000000039;
  *(v0 + 8536) = 0x800000018E456210;
  *(v0 + 8568) = &unk_1F012D8B0;
  *(v0 + 6896) = 0xD00000000000004ELL;
  *(v0 + 8576) = 0xD00000000000002CLL;
  *(v0 + 8552) = 0xD00000000000004ELL;
  *(v0 + 8560) = 0x800000018E456250;
  *(v0 + 8544) = &unk_1F012D880;
  *(v0 + 8488) = 0x800000018E456180;
  *(v0 + 8520) = &unk_1F012D850;
  *(v0 + 8528) = 0xD00000000000003CLL;
  *(v0 + 8512) = 0x800000018E4561C0;
  *(v0 + 8504) = 0xD000000000000046;
  *(v0 + 8496) = &unk_1F012D820;
  *(v0 + 8440) = 0x800000018E456110;
  *(v0 + 8472) = &unk_1F012D7F0;
  *(v0 + 8480) = 0xD00000000000003DLL;
  *(v0 + 8464) = 0x800000018E456140;
  *(v0 + 8456) = 0xD00000000000003FLL;
  *(v0 + 8448) = &unk_1F012D7C0;
  *(v0 + 8416) = 0x800000018E4560D0;
  *(v0 + 8424) = &unk_1F012D790;
  *(v0 + 8432) = 0xD00000000000002CLL;
  *(v0 + 8400) = &unk_1F012D760;
  *(v0 + 8408) = 0xD00000000000003ELL;
  *(v0 + 8392) = 0x800000018E4560A0;
  *(v0 + 8384) = 0xD00000000000002BLL;
  *(v0 + 8368) = 0x800000018E4506A0;
  *(v0 + 8376) = v1;
  *(v0 + 8352) = &unk_1F012D730;
  *(v0 + 8360) = 0xD000000000000035;
  *(v0 + 8344) = 0x800000018E456060;
  *(v0 + 8336) = 0xD000000000000030;
  *(v0 + 8320) = 0x800000018E456020;
  *(v0 + 8328) = &unk_1F012D700;
  *(v0 + 8304) = &unk_1F012D6D0;
  *(v0 + 8312) = 0xD00000000000003ALL;
  *(v0 + 8248) = 0x800000018E455F70;
  *(v0 + 8280) = v1;
  *(v0 + 8288) = 0xD000000000000034;
  *(v0 + 8272) = 0x800000018E455FB0;
  *(v0 + 8264) = 0xD000000000000024;
  *(v0 + 8256) = &unk_1F012D6A0;
  *(v0 + 8240) = 0xD000000000000032;
  *(v0 + 8224) = 0x800000018E455F40;
  *(v0 + 8232) = &unk_1F012D670;
  *(v0 + 8208) = v1;
  *(v0 + 8216) = 0xD000000000000027;
  *(v0 + 8176) = 0x800000018E455ED0;
  *(v0 + 8200) = 0x800000018E455F00;
  *(v0 + 8184) = v1;
  *(v0 + 0x2000) = 0xD000000000000032;
  *(v0 + 8152) = 0x800000018E455EA0;
  *(v0 + 8160) = &unk_1F012D630;
  *(v0 + 8168) = 0xD000000000000027;
  *(v0 + 8128) = 0x800000018E455E70;
  *(v0 + 8136) = v1;
  *(v0 + 8144) = 0xD00000000000002ELL;
  *(v0 + 8080) = 0x800000018E455DF0;
  *(v0 + 7592) = 0xD000000000000032;
  *(v0 + 8112) = v1;
  *(v0 + 8120) = 0xD000000000000028;
  *(v0 + 8096) = 0xD000000000000032;
  *(v0 + 8104) = 0x800000018E455E30;
  *(v0 + 8088) = &unk_1F012D5F0;
  *(v0 + 8032) = 0x800000018E455D80;
  *(v0 + 8064) = &unk_1F012D5B0;
  *(v0 + 8072) = 0xD000000000000035;
  *(v0 + 8056) = 0x800000018E455DB0;
  *(v0 + 8048) = 0xD000000000000035;
  *(v0 + 8040) = &unk_1F012D570;
  *(v0 + 8008) = 0x800000018E455D50;
  *(v0 + 8024) = 0xD00000000000002DLL;
  *(v0 + 7960) = 0x800000018E455CC0;
  *(v0 + 7992) = &unk_1F012D4F0;
  *(v0 + 8000) = 0xD00000000000002ELL;
  *(v0 + 7984) = 0x800000018E455D00;
  *(v0 + 7976) = 0xD000000000000042;
  *(v0 + 7968) = &unk_1F012D4B0;
  *(v0 + 7912) = 0x800000018E455C30;
  *(v0 + 7944) = &unk_1F012D470;
  *(v0 + 7952) = 0xD00000000000003ALL;
  *(v0 + 7936) = 0x800000018E455C70;
  *(v0 + 7928) = 0xD000000000000040;
  *(v0 + 7920) = &unk_1F012D430;
  *(v0 + 7864) = 0x800000018E455BB0;
  *(v0 + 7896) = &unk_1F012D3F0;
  *(v0 + 7904) = 0xD000000000000039;
  *(v0 + 7888) = 0x800000018E455BF0;
  *(v0 + 7880) = 0xD00000000000003DLL;
  *(v0 + 7872) = &unk_1F012D3B0;
  *(v0 + 7816) = 0x800000018E455B40;
  *(v0 + 7848) = &unk_1F012D370;
  *(v0 + 7856) = 0xD00000000000003BLL;
  *(v0 + 7840) = 0x800000018E455B70;
  *(v0 + 7832) = 0xD000000000000033;
  *(v0 + 7824) = &unk_1F012D330;
  *(v0 + 7792) = 0x800000018E455B10;
  *(v0 + 7800) = &unk_1F012D2F0;
  *(v0 + 7808) = 0xD00000000000002CLL;
  *(v0 + 7776) = &unk_1F012D2B0;
  *(v0 + 7784) = 0xD00000000000002BLL;
  *(v0 + 7768) = 0x800000018E455AD0;
  *(v0 + 7760) = 0xD000000000000030;
  *(v0 + 7744) = 0x800000018E450A40;
  *(v0 + 7752) = v1;
  *(v0 + 7728) = &unk_1F012D280;
  *(v0 + 7736) = 0xD000000000000028;
  *(v0 + 7696) = 0x800000018E455A50;
  *(v0 + 7704) = &unk_1F012D250;
  *(v0 + 7688) = 0xD000000000000038;
  *(v0 + 7712) = 0xD00000000000003DLL;
  *(v0 + 7672) = 0x800000018E455A20;
  *(v0 + 7680) = &unk_1F012D220;
  *(v0 + 7632) = &unk_1F012D1C0;
  *(v0 + 7656) = &unk_1F012D1F0;
  *(v0 + 7664) = 0xD00000000000002BLL;
  *(v0 + 7648) = 0x800000018E450BE0;
  *(v0 + 10752) = &unk_1F012E990;
  *(v0 + 7640) = 0xD000000000000033;
  *(v0 + 10768) = 0x800000018E4579B0;
  *(v0 + 7616) = 0xD000000000000038;
  *(v0 + 10776) = &unk_1F012E9C0;
  *(v0 + 10760) = 0xD000000000000059;
  *(v0 + 10784) = 0xD000000000000059;
  *(v0 + 10792) = 0x800000018E457A10;
  *(v0 + 10800) = &unk_1F012E9F0;
  *(v0 + 7568) = 0xD00000000000003ELL;
  *(v0 + 10816) = 0x800000018E457A70;
  *(v0 + 10824) = &unk_1F012EA20;
  *(v0 + 10840) = 0x800000018E457AB0;
  *(v0 + 7544) = 0xD000000000000038;
  *(v0 + 10848) = &unk_1F012EA50;
  *(v0 + 7520) = 0xD000000000000042;
  *(v0 + 10864) = 0x800000018E457B00;
  *(v0 + 10872) = &unk_1F012EA80;
  *(v0 + 10888) = 0x800000018E457B30;
  *(v0 + 7496) = 0xD00000000000003CLL;
  *(v0 + 10896) = &unk_1F012EAB0;
  *(v0 + 7472) = 0xD00000000000003FLL;
  *(v0 + 10912) = 0x800000018E457B80;
  *(v0 + 10920) = &unk_1F012EAE0;
  *(v0 + 10936) = 0x800000018E457BD0;
  *(v0 + 7448) = 0xD000000000000039;
  *(v0 + 10944) = &unk_1F012EB10;
  *(v0 + 7424) = 0xD000000000000048;
  *(v0 + 10960) = 0x800000018E457C10;
  *(v0 + 10968) = &unk_1F012EB40;
  *(v0 + 10984) = 0x800000018E457C50;
  *(v0 + 7400) = 0xD000000000000042;
  *(v0 + 10992) = &unk_1F012EB80;
  *(v0 + 7376) = 0xD00000000000003DLL;
  *(v0 + 11008) = 0x800000018E457C90;
  *(v0 + 11016) = &unk_1F012EBB0;
  *(v0 + 11032) = 0x800000018E457CC0;
  *(v0 + 7352) = 0xD000000000000037;
  *(v0 + 11040) = &unk_1F012EBE0;
  *(v0 + 7328) = 0xD000000000000044;
  *(v0 + 11056) = 0x800000018E457D00;
  *(v0 + 7280) = 0xD00000000000004ALL;
  *(v0 + 7304) = 0xD00000000000003ELL;
  *(v0 + 11064) = &unk_1F012EC10;
  *(v0 + 4928) = 0xD000000000000039;
  *(v0 + 6536) = 0xD000000000000039;
  *(v0 + 6584) = 0xD000000000000039;
  *(v0 + 7232) = 0xD000000000000047;
  *(v0 + 7256) = 0xD000000000000044;
  *(v0 + 6632) = 0xD000000000000039;
  *(v0 + 6680) = 0xD000000000000039;
  *(v0 + 6728) = 0xD000000000000039;
  *(v0 + 6752) = 0xD000000000000039;
  *(v0 + 11072) = 0xD000000000000039;
  *(v0 + 7208) = 0xD000000000000041;
  *(v0 + 11080) = 0x800000018E457D40;
  *(v0 + 11088) = &unk_1F012EC40;
  *(v0 + 11104) = 0x800000018E457D80;
  *(v0 + 11112) = &unk_1F012EC70;
  *(v0 + 11128) = 0x800000018E457DC0;
  *(v0 + 11136) = &unk_1F012ECA0;
  *(v0 + 11152) = 0x800000018E457E00;
  *(v0 + 7160) = 0xD000000000000043;
  *(v0 + 11160) = &unk_1F012ECD0;
  *(v0 + 7136) = 0xD000000000000045;
  *(v0 + 11176) = 0x800000018E457E40;
  *(v0 + 11184) = &unk_1F012ED00;
  *(v0 + 11200) = 0x800000018E457E80;
  *(v0 + 7112) = 0xD00000000000003FLL;
  *(v0 + 11208) = &unk_1F012ED30;
  *(v0 + 7088) = 0xD000000000000045;
  *(v0 + 11224) = 0x800000018E457EC0;
  *(v0 + 7064) = 0xD00000000000003FLL;
  *(v0 + 11232) = &unk_1F012ED60;
  *(v0 + 5432) = 0xD000000000000043;
  *(v0 + 11240) = 0xD000000000000043;
  *(v0 + 7040) = 0xD000000000000045;
  *(v0 + 11248) = 0x800000018E457F10;
  *(v0 + 11256) = &unk_1F012ED90;
  *(v0 + 11272) = 0x800000018E457F60;
  *(v0 + 7016) = 0xD00000000000003FLL;
  *(v0 + 11280) = &unk_1F012EDC0;
  *(v0 + 6992) = 0xD000000000000045;
  *(v0 + 11296) = 0x800000018E457FA0;
  *(v0 + 6968) = 0xD00000000000003FLL;
  *(v0 + 11304) = &unk_1F012EDF0;
  *(v0 + 11312) = 0xD00000000000002FLL;
  *(v0 + 6944) = 0xD000000000000042;
  *(v0 + 11320) = 0x800000018E457FE0;
  *(v0 + 11328) = &unk_1F012EE20;
  *(v0 + 6920) = 0xD00000000000003CLL;
  *(v0 + 11344) = 0x800000018E458010;
  *(v0 + 11352) = &unk_1F012EE50;
  *(v0 + 11368) = 0x800000018E458050;
  *(v0 + 11376) = &unk_1F012EE80;
  *(v0 + 11392) = 0x800000018E458090;
  *(v0 + 6872) = 0xD000000000000048;
  *(v0 + 11400) = &unk_1F012EEB0;
  *(v0 + 6848) = 0xD000000000000042;
  *(v0 + 11416) = 0x800000018E4580D0;
  *(v0 + 11424) = &unk_1F012EEE0;
  *(v0 + 5120) = 0xD00000000000003BLL;
  *(v0 + 6824) = 0xD00000000000003CLL;
  *(v0 + 5144) = 0xD00000000000003BLL;
  *(v0 + 11432) = 0xD00000000000003BLL;
  *(v0 + 6800) = 0xD000000000000040;
  *(v0 + 11440) = 0x800000018E458110;
  *(v0 + 11448) = &unk_1F012EF10;
  *(v0 + 6776) = 0xD00000000000003ALL;
  *(v0 + 11464) = 0x800000018E458150;
  *(v0 + 11472) = &unk_1F012EF40;
  *(v0 + 11488) = 0x800000018E4581A0;
  *(v0 + 11496) = &unk_1F012EF70;
  *(v0 + 11512) = 0x800000018E4581F0;
  *(v0 + 6704) = 0xD000000000000033;
  *(v0 + 11520) = &unk_1F012EFA0;
  *(v0 + 11120) = 0xD000000000000034;
  *(v0 + 11168) = 0xD000000000000034;
  *(v0 + 11192) = 0xD000000000000034;
  *(v0 + 11264) = 0xD000000000000034;
  *(v0 + 11528) = 0xD000000000000034;
  *(v0 + 11536) = 0x800000018E458230;
  *(v0 + 11544) = &unk_1F012EFD0;
  *(v0 + 6656) = 0xD000000000000033;
  *(v0 + 11560) = 0x800000018E458270;
  *(v0 + 11568) = &unk_1F012F000;
  *(v0 + 11480) = 0xD000000000000048;
  *(v0 + 11576) = 0xD000000000000048;
  *(v0 + 6608) = 0xD000000000000033;
  *(v0 + 11584) = 0x800000018E4582C0;
  *(v0 + 11592) = &unk_1F012F030;
  *(v0 + 5192) = 0xD000000000000044;
  *(v0 + 5600) = 0xD000000000000044;
  *(v0 + 5720) = 0xD000000000000044;
  *(v0 + 6368) = 0xD000000000000044;
  *(v0 + 11600) = 0xD000000000000044;
  *(v0 + 6560) = 0xD000000000000033;
  *(v0 + 11608) = 0x800000018E458310;
  *(v0 + 11616) = &unk_1F012F060;
  *(v0 + 11632) = 0x800000018E458360;
  *(v0 + 6512) = 0xD000000000000033;
  *(v0 + 11640) = &unk_1F012F090;
  *(v0 + 5312) = 0xD000000000000047;
  *(v0 + 5840) = 0xD000000000000047;
  *(v0 + 6488) = 0xD000000000000036;
  *(v0 + 5912) = 0xD000000000000047;
  *(v0 + 5984) = 0xD000000000000047;
  *(v0 + 6416) = 0xD000000000000047;
  *(v0 + 6440) = 0xD00000000000004DLL;
  *(v0 + 6464) = 0xD000000000000030;
  *(v0 + 10832) = 0xD000000000000047;
  *(v0 + 10904) = 0xD000000000000047;
  *(v0 + 11624) = 0xD000000000000047;
  *(v0 + 11648) = 0xD000000000000047;
  *(v0 + 11656) = 0x800000018E4583B0;
  *(v0 + 6392) = 0xD00000000000004ALL;
  *(v0 + 11664) = &unk_1F012F0C0;
  *(v0 + 5864) = 0xD00000000000004ALL;
  *(v0 + 6032) = 0xD00000000000004ALL;
  *(v0 + 11672) = 0xD00000000000004ALL;
  *(v0 + 6008) = 0xD00000000000004DLL;
  *(v0 + 11680) = 0x800000018E458400;
  *(v0 + 11688) = &unk_1F012F0F0;
  *(v0 + 11696) = 0xD00000000000004DLL;
  *(v0 + 11704) = 0x800000018E458450;
  *(v0 + 11712) = &unk_1F012F120;
  *(v0 + 11720) = 0xD00000000000004DLL;
  *(v0 + 11728) = 0x800000018E4584A0;
  *(v0 + 11736) = &unk_1F012F150;
  *(v0 + 11752) = 0x800000018E4584F0;
  *(v0 + 11760) = &unk_1F012F180;
  *(v0 + 5480) = 0xD000000000000045;
  *(v0 + 5672) = 0xD000000000000045;
  *(v0 + 11456) = 0xD000000000000045;
  *(v0 + 11552) = 0xD000000000000045;
  *(v0 + 11768) = 0xD000000000000045;
  *(v0 + 11776) = 0x800000018E458540;
  *(v0 + 11784) = &unk_1F012F1B0;
  *(v0 + 11792) = 0xD00000000000002ELL;
  *(v0 + 11800) = 0x800000018E458590;
  *(v0 + 11808) = &unk_1F012F1E0;
  *(v0 + 11824) = 0x800000018E4585C0;
  *(v0 + 11832) = &unk_1F012F210;
  *(v0 + 11848) = 0x800000018E458600;
  *(v0 + 11856) = &unk_1F012F250;
  *(v0 + 11872) = 0x800000018E458640;
  *(v0 + 11880) = &unk_1F012F290;
  *(v0 + 11896) = 0x800000018E458680;
  *(v0 + 11904) = &unk_1F012F2D0;
  *(v0 + 11920) = 0x800000018E4586C0;
  *(v0 + 11928) = &unk_1F012F310;
  *(v0 + 11944) = 0x800000018E458700;
  *(v0 + 11952) = &unk_1F012F350;
  *(v0 + 4808) = 0xD000000000000038;
  *(v0 + 5264) = 0xD000000000000038;
  *(v0 + 5792) = 0xD000000000000038;
  *(v0 + 6080) = 0xD000000000000046;
  *(v0 + 11024) = 0xD000000000000038;
  *(v0 + 11384) = 0xD000000000000038;
  *(v0 + 11960) = 0xD000000000000038;
  *(v0 + 11968) = 0x800000018E458740;
  *(v0 + 11976) = &unk_1F012F380;
  *(v0 + 5936) = 0xD000000000000036;
  *(v0 + 11992) = 0x800000018E458780;
  *(v0 + 5960) = 0xD00000000000003CLL;
  *(v0 + 12000) = &unk_1F012F3B0;
  *(v0 + 12008) = 0xD000000000000046;
  *(v0 + 12016) = 0x800000018E4587C0;
  *(v0 + 12024) = &unk_1F012F3E0;
  *(v0 + 12040) = 0x800000018E458810;
  *(v0 + 12048) = &unk_1F012F410;
  *(v0 + 12064) = 0x800000018E458850;
  *(v0 + 12072) = &unk_1F012F440;
  *(v0 + 12088) = 0x800000018E458890;
  *(v0 + 12096) = &unk_1F012F470;
  *(v0 + 12112) = 0x800000018E4588D0;
  *(v0 + 12120) = &unk_1F012F4B0;
  *(v0 + 5888) = 0xD000000000000041;
  *(v0 + 11336) = 0xD00000000000003DLL;
  *(v0 + 12056) = 0xD00000000000003DLL;
  *(v0 + 12080) = 0xD00000000000003DLL;
  *(v0 + 12104) = 0xD00000000000003DLL;
  *(v0 + 12128) = 0xD00000000000003DLL;
  *(v0 + 12136) = 0x800000018E458910;
  *(v0 + 12144) = &unk_1F012F4F0;
  *(v0 + 4952) = 0xD00000000000003FLL;
  *(v0 + 5288) = 0xD000000000000041;
  *(v0 + 5816) = 0xD00000000000003ELL;
  *(v0 + 5648) = 0xD00000000000003FLL;
  *(v0 + 5744) = 0xD00000000000003ALL;
  *(v0 + 5768) = 0xD000000000000040;
  *(v0 + 10880) = 0xD000000000000041;
  *(v0 + 11144) = 0xD00000000000003FLL;
  *(v0 + 11216) = 0xD000000000000041;
  *(v0 + 11504) = 0xD00000000000003FLL;
  *(v0 + 12152) = 0xD000000000000041;
  *(v0 + 12160) = 0x800000018E458950;
  *(v0 + 12168) = &unk_1F012F530;
  *(v0 + 12176) = 0xD00000000000003FLL;
  *(v0 + 12184) = 0x800000018E4589A0;
  *(v0 + 12192) = &unk_1F012F560;
  *(v0 + 12208) = 0x800000018E4589E0;
  *(v0 + 12216) = &unk_1F012F590;
  *(v0 + 5240) = 0xD00000000000003CLL;
  *(v0 + 5360) = 0xD00000000000003CLL;
  *(v0 + 5696) = 0xD00000000000003ELL;
  *(v0 + 5408) = 0xD00000000000003CLL;
  *(v0 + 5552) = 0xD00000000000003CLL;
  *(v0 + 5624) = 0xD000000000000031;
  *(v0 + 11096) = 0xD00000000000003CLL;
  *(v0 + 11288) = 0xD00000000000003CLL;
  *(v0 + 11360) = 0xD00000000000003CLL;
  *(v0 + 12224) = 0xD00000000000003CLL;
  *(v0 + 12232) = 0x800000018E458A30;
  *(v0 + 12240) = &unk_1F012F5C0;
  *(v0 + 5024) = 0xD000000000000035;
  *(v0 + 5096) = 0xD000000000000035;
  *(v0 + 5576) = 0xD00000000000003ELL;
  *(v0 + 10808) = 0xD000000000000035;
  *(v0 + 12248) = 0xD000000000000035;
  *(v0 + 12256) = 0x800000018E458A70;
  *(v0 + 12264) = &unk_1F012F5F0;
  *(v0 + 4904) = 0xD000000000000040;
  *(v0 + 5528) = 0xD000000000000036;
  *(v0 + 5072) = 0xD000000000000040;
  *(v0 + 10952) = 0xD000000000000037;
  *(v0 + 11936) = 0xD000000000000037;
  *(v0 + 12272) = 0xD000000000000040;
  *(v0 + 12280) = 0x800000018E458AB0;
  *(v0 + 12288) = &unk_1F012F620;
  *(v0 + 12296) = 0xD000000000000037;
  *(v0 + 12304) = 0x800000018E458B00;
  *(v0 + 12312) = &unk_1F012F650;
  *(v0 + 12328) = 0x800000018E458B40;
  *(v0 + 12336) = &unk_1F012F680;
  *(v0 + 12352) = 0x800000018E458B80;
  *(v0 + 12360) = &unk_1F012F6B0;
  *(v0 + 4856) = 0xD000000000000031;
  *(v0 + 5048) = 0xD00000000000003ALL;
  *(v0 + 5168) = 0xD00000000000003ELL;
  *(v0 + 5216) = 0xD000000000000036;
  *(v0 + 5384) = 0xD000000000000036;
  *(v0 + 5336) = 0xD000000000000036;
  *(v0 + 10976) = 0xD000000000000031;
  *(v0 + 11408) = 0xD000000000000036;
  *(v0 + 11816) = 0xD000000000000031;
  *(v0 + 11840) = 0xD000000000000031;
  *(v0 + 11864) = 0xD000000000000031;
  *(v0 + 11888) = 0xD000000000000031;
  *(v0 + 11912) = 0xD000000000000031;
  *(v0 + 11984) = 0xD00000000000003ALL;
  *(v0 + 12032) = 0xD00000000000003ALL;
  *(v0 + 12320) = 0xD00000000000003ALL;
  *(v0 + 12344) = 0xD000000000000036;
  *(v0 + 12368) = 0xD00000000000003ALL;
  *(v0 + 12376) = 0x800000018E458BC0;
  *(v0 + 12384) = &unk_1F012F6E0;
  *(v0 + 12392) = 0xD000000000000036;
  *(v0 + 12400) = 0x800000018E458C00;
  *(v0 + 12408) = &unk_1F012F710;
  *(v0 + 12416) = 0xD000000000000021;
  *(v0 + 12424) = 0x800000018E458C40;
  *(v0 + 12432) = &unk_1F012F740;
  *(v0 + 12440) = 0xD000000000000031;
  *(v0 + 12448) = 0x800000018E458C70;
  *(v0 + 12456) = &unk_1F012F870;
  *(v0 + 12472) = 0x800000018E458CB0;
  *(v0 + 12480) = &unk_1F012F8A0;
  *(v0 + 12488) = 0xD000000000000036;
  *(v0 + 12496) = 0x800000018E458CE0;
  *(v0 + 12504) = &unk_1F012F8D0;
  *(v0 + 12520) = 0x800000018E458D20;
  *(v0 + 12528) = &unk_1F012F900;
  *(v0 + 4832) = 0xD000000000000027;
  *(v0 + 12536) = 0xD000000000000027;
  *(v0 + 12544) = 0x800000018E458D50;
  *(v0 + 12552) = &unk_1F012FA30;
  *(v0 + 12560) = 0xD000000000000018;
  *(v0 + 12568) = 0x800000018E458D80;
  *(v0 + 12512) = 0xD000000000000022;
  *(v0 + 12584) = 0xD000000000000022;
  *(v0 + 12592) = 0x800000018E458DA0;
  *(v0 + 4880) = 0xD00000000000002CLL;
  *(v0 + 12608) = 0xD00000000000002CLL;
  *(v0 + 12616) = 0x800000018E458DD0;
  *(v0 + 12624) = &unk_1F012FB60;
  *(v0 + 5000) = 0xD00000000000002DLL;
  *(v0 + 12632) = 0xD000000000000030;
  *(v0 + 12640) = 0x800000018E458E00;
  *(v0 + 12648) = &unk_1F012FB90;
  *(v0 + 12656) = 0xD00000000000002DLL;
  *(v0 + 12664) = 0x800000018E458E40;
  *(v0 + 12672) = &unk_1F012FBC0;
  *(v0 + 4976) = 0xD000000000000033;
  *(v0 + 12680) = 0xD000000000000029;
  *(v0 + 12688) = 0x800000018E458E70;
  *(v0 + 12696) = &unk_1F012FBF0;
  *(v0 + 11048) = 0xD000000000000033;
  *(v0 + 12704) = 0xD00000000000001DLL;
  *(v0 + 12712) = 0x800000018E458EA0;
  *(v0 + 12720) = &unk_1F012FC20;
  *(v0 + 12736) = 0x800000018E458EC0;
  *(v0 + 12744) = &unk_1F012FC50;
  *(v0 + 12464) = 0xD000000000000024;
  *(v0 + 12752) = 0xD000000000000024;
  *(v0 + 12760) = 0x800000018E458EF0;
  *(v0 + 12768) = &unk_1F012FC80;
  *(v0 + 11000) = 0xD00000000000002BLL;
  *(v0 + 12776) = 0xD00000000000002BLL;
  *(v0 + 12784) = 0x800000018E458F20;
  *(v0 + 12792) = &unk_1F012FCB0;
  *(v0 + 8016) = &unk_1F012D530;
  *(v0 + 10856) = 0xD000000000000026;
  *(v0 + 10928) = 0xD00000000000003ELL;
  *(v0 + 11744) = 0xD000000000000042;
  *(v0 + 12200) = 0xD000000000000042;
  *(v0 + 12576) = v1;
  *(v0 + 12600) = v1;
  *(v0 + 12728) = 0xD000000000000023;
  sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  v2 = sub_18E44E9AC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_18E259CDC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_18E259CDC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_18E259CDC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_18E259CDC();
  return v2;
}

uint64_t static CoherentAssetLock.createUnlockedAssetLock(resources:client:)()
{
  type metadata accessor for CoherentAssetLock();
  sub_18E1CADEC();
  swift_allocObject();

  v0 = sub_18E1D43C0();
  return sub_18E1FD9F4(v0, v1);
}

{
  sub_18E1C6170();
  type metadata accessor for CoherentAssetLock();
  sub_18E1CADEC();
  swift_allocObject();

  v0 = swift_task_alloc();
  v1 = sub_18E1C5EA8(v0);
  *v1 = v2;
  sub_18E1C5950(v1);
  v3 = sub_18E1C5BFC();

  return sub_18E25D518(v3, v4);
}

uint64_t sub_18E259CBC()
{
  result = sub_18E2550F0();
  qword_1ED6A9458 = result;
  return result;
}

uint64_t sub_18E259CF0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t dispatch thunk of CatalogClient.donateGenerativeGuardrailResult(guardrailResultInfo:)()
{
  sub_18E1C6170();
  sub_18E1C6A30();
  v8 = *(v0 + 560) + **(v0 + 560);
  v1 = *(*(v0 + 560) + 4);
  v2 = swift_task_alloc();
  v3 = sub_18E1C5EA8(v2);
  *v3 = v4;
  v5 = sub_18E1CFB58(v3);

  return v6(v5);
}

uint64_t sub_18E259E40()
{
  sub_18E1C52F0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for RawGuardrailResult(0);
  v1[4] = v3;
  sub_18E1CF260(v3);
  v1[5] = v4;
  v1[6] = *(v5 + 64);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18E259F30()
{
  v1 = v0[8];
  v2 = v0[4];
  v22 = v0[3];
  v3 = v0[2];
  v4 = *(v3 + 2);
  v5 = v3[32];
  if (v5)
  {
    v6 = *(v3 + 3) != 0;
  }

  else
  {
    v6 = *(v3 + 3);
  }

  v7 = *v3;
  v8 = *(v3 + 1);
  v9 = *(type metadata accessor for GuardrailResultInfo() + 28);
  v10 = *(v2 + 28);
  v11 = sub_18E44E6AC();
  sub_18E1C4EEC(v11);
  result = (*(v12 + 16))(v1 + v10, &v3[v9]);
  *v1 = v7;
  *(v1 + 8) = v8;
  *(v1 + 16) = v4;
  *(v1 + 24) = v6;
  *(v1 + 32) = v5;
  v14 = *(v22 + 16);
  v0[9] = v14;
  if (v14)
  {
    v16 = v0[7];
    v15 = v0[8];
    v18 = v0[5];
    v17 = v0[6];
    sub_18E287284();
    v19 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v20 = swift_allocObject();
    v0[10] = v20;
    sub_18E288BE8();
    sub_18E1FF278(&dword_18E49DB28);

    v21 = swift_task_alloc();
    v0[11] = v21;
    *v21 = v0;
    v21[1] = sub_18E25E4CC;

    return (v22)(sub_18E25A858, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18E25A118()
{
  v1 = (type metadata accessor for RawGuardrailResult(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 16);

  v6 = v1[9];
  v7 = sub_18E44E6AC();
  sub_18E1C4EEC(v7);
  (*(v8 + 8))(v0 + v3 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

unint64_t sub_18E25A1F8()
{
  result = qword_1ED6A8308;
  if (!qword_1ED6A8308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8308);
  }

  return result;
}

uint64_t sub_18E25A24C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18E25A270, 0, 0);
}

uint64_t sub_18E25A270()
{
  sub_18E1CAF5C();
  v2 = *(*(v1 + 48) + 16);
  os_unfair_lock_lock((v2 + 24));
  sub_18E1E6788();
  if (v0)
  {
LABEL_2:
    os_unfair_lock_unlock((v2 + 24));
    sub_18E1D008C();

    return v3();
  }

  v5 = *(v2 + 16);
  *(v1 + 56) = v5;
  if (!v5)
  {
    sub_18E2885F0();
    sub_18E1D0098();
    v12 = swift_allocError();
    sub_18E1CBDCC(v12, v13);
    goto LABEL_2;
  }

  v6 = *(v1 + 48);
  v7 = v5;
  v14 = *(v1 + 32);
  os_unfair_lock_unlock((v2 + 24));
  v8 = swift_task_alloc();
  *(v1 + 64) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  *(v8 + 32) = v14;
  v9 = *(MEMORY[0x1E69E8920] + 4);
  swift_task_alloc();
  sub_18E2016A8();
  *(v1 + 72) = v10;
  *v10 = v11;
  v10[1] = sub_18E25E294;
  sub_18E1C4F44();
  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DE38]();
}

unint64_t sub_18E25A3EC(uint64_t a1)
{
  result = sub_18E25A768();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E25A414(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t (*)(), uint64_t), void (*a5)(uint64_t, uint64_t (*)(), uint64_t))
{
  v33 = a5;
  v39 = a4;
  v30 = a3;
  v31 = a2;
  v37 = a1;
  v6 = sub_18E2706EC(&qword_1EABE1050, &qword_18E49DC80);
  v7 = *(v6 - 8);
  v38 = *(v7 + 64);
  v8 = v38;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = swift_allocObject();
  v29 = v11;
  *(v11 + 16) = 0;
  swift_beginAccess();
  *(v11 + 16) = 1;
  v12 = *(v7 + 16);
  v35 = v7 + 16;
  v36 = v12;
  v12(v10, a1, v6);
  v13 = *(v7 + 80);
  v14 = (v13 + 40) & ~v13;
  v15 = swift_allocObject();
  v15[2] = v30;
  v15[3] = v11;
  v16 = v31;
  v15[4] = v31;
  v17 = *(v7 + 32);
  v32 = v7 + 32;
  v34 = v17;
  v17(v15 + v14, v10, v6);
  v18 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v33;
  *v18 = v39;
  v18[1] = v19;
  aBlock[4] = sub_18E28873C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18E448558;
  aBlock[3] = &unk_1F013FC60;
  v20 = _Block_copy(aBlock);

  v21 = v29;

  v22 = v16;

  v23 = [v22 remoteObjectProxyWithErrorHandler_];
  _Block_release(v20);
  v36(v10, v37, v6);
  v24 = (v13 + 24) & ~v13;
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  v34(v25 + v24, v10, v6);

  v26 = swift_unknownObjectRetain();
  v39(v26, sub_18E25D764, v25);

  return swift_unknownObjectRelease_n();
}

unint64_t sub_18E25A768()
{
  result = qword_1ED6A8310;
  if (!qword_1ED6A8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8310);
  }

  return result;
}

uint64_t sub_18E25A7F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_18E25A804()
{
  result = qword_1ED6A8328;
  if (!qword_1ED6A8328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8328);
  }

  return result;
}

void sub_18E25A888(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RawGuardrailResult(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = qword_1ED6A8B58;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_18E44E83C();
  sub_18E1C95EC(v12, qword_1ED6A9888);
  v13 = sub_18E44E80C();
  v14 = sub_18E44EE2C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_18E1C1000, v13, v14, "calling donateGenerativeGuardrailResult", v15, 2u);
    MEMORY[0x193ACD400](v15, -1, -1);
  }

  sub_18E287284();
  v16 = type metadata accessor for GuardrailResultWrapper(0);
  v17 = objc_allocWithZone(v16);
  sub_18E287284();
  v19.receiver = v17;
  v19.super_class = v16;
  v18 = objc_msgSendSuper2(&v19, sel_init);
  sub_18E2886E4(v9, type metadata accessor for RawGuardrailResult);
  sub_18E25AC64(v18, sub_18E25D6A4, v10, a1, &unk_1F013FBC0, &selRef_donateGenerativeGuardrailResultWithGuardrailResult_with_);
}

unint64_t sub_18E25AABC()
{
  result = qword_1ED6A8320;
  if (!qword_1ED6A8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8320);
  }

  return result;
}

unint64_t sub_18E25AB30()
{
  result = qword_1ED6A8318;
  if (!qword_1ED6A8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8318);
  }

  return result;
}

unint64_t sub_18E25AB84()
{
  result = qword_1ED6A82F8;
  if (!qword_1ED6A82F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A82F8);
  }

  return result;
}

uint64_t sub_18E25ABD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawGuardrailResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18E25AC3C(uint64_t a1)
{
  result = sub_18E25AD0C();
  *(a1 + 8) = result;
  return result;
}

void sub_18E25AC64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, SEL *a6)
{
  v11[4] = a2;
  v11[5] = a3;
  sub_18E1CACD0();
  v11[1] = 1107296256;
  v11[2] = sub_18E25D5B8;
  v11[3] = v9;
  v10 = _Block_copy(v11);

  [a4 *a6];
  _Block_release(v10);
}

unint64_t sub_18E25AD0C()
{
  result = qword_1ED6A82F0;
  if (!qword_1ED6A82F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A82F0);
  }

  return result;
}

Swift::Void __swiftcall GuardrailResultWrapper.encode(with:)(NSCoder with)
{
  v2 = sub_18E44E27C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_18E44E26C();
  type metadata accessor for RawGuardrailResult(0);
  sub_18E1C4EFC();
  sub_18E271F94(v5, v6);
  v7 = sub_18E44E25C();
  v9 = v8;

  sub_18E25BD94();
  sub_18E2523A0(v7, v9);
  v10 = sub_18E25BDDC(v7, v9);
  v11 = sub_18E44EA8C();
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];

  sub_18E1FDFE0(v7, v9);
}

unint64_t sub_18E25AF5C()
{
  result = qword_1ED6A9278;
  if (!qword_1ED6A9278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9278);
  }

  return result;
}

unint64_t sub_18E25AFB4(uint64_t a1)
{
  result = sub_18E25AFDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E25AFDC()
{
  result = qword_1ED6A9288;
  if (!qword_1ED6A9288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9288);
  }

  return result;
}

uint64_t RawGuardrailResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_18E2706EC(&unk_1EABE0F10, &qword_18E49D2B8);
  sub_18E1C4EAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22[-v11];
  v13 = a1[4];
  sub_18E1E15F4(a1, a1[3]);
  sub_18E25B268();
  sub_18E44F4EC();
  v14 = *v3;
  v25 = 0;
  sub_18E1C5930();
  sub_18E44F32C();
  if (!v2)
  {
    v15 = *(v3 + 1);
    v16 = *(v3 + 2);
    sub_18E1C5774();
    sub_18E1C5930();
    sub_18E44F31C();
    v17 = v3[32];
    v23 = *(v3 + 3);
    v24 = v17;
    v22[15] = 2;
    sub_18E25B478();
    sub_18E1C5930();
    sub_18E44F35C();
    v18 = *(type metadata accessor for RawGuardrailResult(0) + 28);
    v22[14] = 3;
    sub_18E44E6AC();
    sub_18E1C8168();
    sub_18E271F94(v19, v20);
    sub_18E1C5930();
    sub_18E44F35C();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_18E25B268()
{
  result = qword_1EABE0838;
  if (!qword_1EABE0838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0838);
  }

  return result;
}

unint64_t sub_18E25B2BC()
{
  result = qword_1ED6A9298[0];
  if (!qword_1ED6A9298[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6A9298);
  }

  return result;
}

unint64_t sub_18E25B31C(char a1)
{
  result = 0x6E5564656B72616DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x65636E6174736E69;
      break;
    case 3:
      result = 0x7571655272657375;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_18E25B3D0()
{
  result = qword_1ED6A94C8;
  if (!qword_1ED6A94C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A94C8);
  }

  return result;
}

unint64_t sub_18E25B424()
{
  result = qword_1ED6A9290;
  if (!qword_1ED6A9290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9290);
  }

  return result;
}

unint64_t sub_18E25B478()
{
  result = qword_1EABDFA70;
  if (!qword_1EABDFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFA70);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for RawGuardrailResult.InstanceType(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

unint64_t sub_18E25B4E0()
{
  result = qword_1ED6A9280;
  if (!qword_1ED6A9280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9280);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RawGuardrailResult.InstanceType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x18E25B600);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E25B628(uint64_t a1)
{
  result = sub_18E25B650();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E25B650()
{
  result = qword_1ED6A9260;
  if (!qword_1ED6A9260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9260);
  }

  return result;
}

unint64_t sub_18E25B6A4(uint64_t a1)
{
  result = sub_18E25B754();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RawGuardrailResult.InstanceType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_18E25B754()
{
  result = qword_1ED6A9268;
  if (!qword_1ED6A9268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9268);
  }

  return result;
}

uint64_t RawGuardrailResult.InstanceType.encode(to:)(void *a1)
{
  v3 = sub_18E2706EC(&qword_1EABE0EB8, &qword_18E49D270);
  v4 = sub_18E1C4EAC(v3);
  v49 = v5;
  v50 = v4;
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1CAF50();
  v48 = v9;
  v10 = sub_18E2706EC(&qword_1EABE0EC0, &qword_18E49D278);
  v11 = sub_18E1C4EAC(v10);
  v46 = v12;
  v47 = v11;
  v14 = *(v13 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v15);
  sub_18E1CAF50();
  v45 = v16;
  v17 = sub_18E2706EC(&qword_1EABE0EC8, &qword_18E49D280);
  v18 = sub_18E1C4EAC(v17);
  v43 = v19;
  v44 = v18;
  v21 = *(v20 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v22);
  sub_18E1CAF50();
  v42 = v23;
  v24 = sub_18E2706EC(&unk_1EABE0ED0, &qword_18E49D288);
  sub_18E1C4EAC(v24);
  v26 = v25;
  v28 = *(v27 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v42 - v30;
  v32 = *v1;
  v33 = *(v1 + 8);
  v34 = a1[4];
  sub_18E1E15F4(a1, a1[3]);
  sub_18E25BB90();
  sub_18E44F4EC();
  if (v33 == 1)
  {
    if (v32)
    {
      sub_18E1C5774();
      sub_18E25BC64();
      v35 = v45;
      sub_18E1C84B4();
      v37 = v46;
      v36 = v47;
    }

    else
    {
      v51 = 0;
      sub_18E271298();
      v35 = v42;
      sub_18E1C84B4();
      v37 = v43;
      v36 = v44;
    }

    (*(v37 + 8))(v35, v36);
    return (*(v26 + 8))(v31, v24);
  }

  else
  {
    v52 = 2;
    sub_18E271244();
    v38 = v48;
    sub_18E1C84B4();
    v39 = v50;
    sub_18E44F34C();
    sub_18E1C62B8();
    v40(v38, v39);
    return (*(v26 + 8))(v31, v24);
  }
}

unint64_t sub_18E25BB3C()
{
  result = qword_1ED6A8850;
  if (!qword_1ED6A8850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8850);
  }

  return result;
}

unint64_t sub_18E25BB90()
{
  result = qword_1EABE0818;
  if (!qword_1EABE0818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0818);
  }

  return result;
}

unint64_t sub_18E25BBE8(uint64_t a1)
{
  result = sub_18E25BC10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E25BC10()
{
  result = qword_1ED6A8858;
  if (!qword_1ED6A8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8858);
  }

  return result;
}

unint64_t sub_18E25BC64()
{
  result = qword_1EABE04F8;
  if (!qword_1EABE04F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE04F8);
  }

  return result;
}

uint64_t sub_18E25BCEC(char a1)
{
  if (!a1)
  {
    return 0x74706D6F7270;
  }

  if (a1 == 1)
  {
    return 0x65736E6F70736572;
  }

  return 0x6E776F6E6B6E75;
}

unint64_t sub_18E25BD40()
{
  result = qword_1ED6A8868;
  if (!qword_1ED6A8868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8868);
  }

  return result;
}

unint64_t sub_18E25BD94()
{
  result = qword_1ED6A87B0;
  if (!qword_1ED6A87B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6A87B0);
  }

  return result;
}

id sub_18E25BDDC(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_18E44E60C();
  v6 = [v4 initWithData_];

  sub_18E1FDFE0(a1, a2);
  return v6;
}

unint64_t sub_18E25BE54()
{
  result = qword_1ED6A8AC0[0];
  if (!qword_1ED6A8AC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6A8AC0);
  }

  return result;
}

unint64_t sub_18E25BEA8()
{
  result = qword_1ED6A8860;
  if (!qword_1ED6A8860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8860);
  }

  return result;
}

unint64_t sub_18E25BF0C()
{
  result = qword_1ED6A8848;
  if (!qword_1ED6A8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8848);
  }

  return result;
}

unint64_t sub_18E25BF7C(uint64_t a1)
{
  result = sub_18E25C010();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E25C010()
{
  result = qword_1ED6A8510;
  if (!qword_1ED6A8510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8510);
  }

  return result;
}

id GuardrailResultWrapper.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for RawGuardrailResult(0);
  v6 = sub_18E1C4EEC(v5);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  sub_18E25BD94();
  v14 = sub_18E44EEBC();
  if (v14)
  {
    v15 = v14;
    v16 = sub_18E44E24C();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_18E44E23C();
    v19 = v15;
    v20 = sub_18E44E61C();
    v22 = v21;

    sub_18E1C4EFC();
    sub_18E271F94(v23, v24);
    sub_18E44E22C();
    sub_18E1FDFE0(v20, v22);

    sub_18E25ABD8(v13, v11);
    v27 = objc_allocWithZone(ObjectType);
    sub_18E25ABD8(v11, v27 + OBJC_IVAR____TtC12ModelCatalog22GuardrailResultWrapper_guardrailResult);
    v33.receiver = v27;
    v33.super_class = ObjectType;
    v28 = objc_msgSendSuper2(&v33, sel_init);
    sub_18E271FDC(v11);

    sub_18E271FDC(v13);
    swift_getObjectType();
    v29 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v30 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {

    swift_getObjectType();
    v25 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v26 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v28;
}

unint64_t sub_18E25C34C()
{
  result = qword_1ED6A8470;
  if (!qword_1ED6A8470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8470);
  }

  return result;
}

uint64_t RawGuardrailResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18E44E6AC();
  v5 = sub_18E1C4EAC(v4);
  v30 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C4EDC();
  v11 = v10 - v9;
  v12 = sub_18E2706EC(&unk_1EABE0F28, &qword_18E49D2C0);
  sub_18E1C4EAC(v12);
  v14 = *(v13 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v15);
  v16 = type metadata accessor for RawGuardrailResult(0);
  v17 = sub_18E1C4EEC(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_18E1C4EDC();
  v22 = v21 - v20;
  v23 = a1[4];
  sub_18E1E15F4(a1, a1[3]);
  sub_18E25B268();
  sub_18E44F4DC();
  if (v2)
  {
    return sub_18E1C9934(a1);
  }

  sub_18E1C555C();
  *v22 = sub_18E44F23C() & 1;
  sub_18E1C5774();
  sub_18E1C555C();
  *(v22 + 8) = sub_18E44F22C();
  *(v22 + 16) = v24;
  sub_18E25C7E8();
  sub_18E1C555C();
  sub_18E44F26C();
  *(v22 + 24) = v32;
  *(v22 + 32) = v33;
  sub_18E1C8168();
  sub_18E271F94(v25, v26);
  sub_18E1C555C();
  sub_18E44F26C();
  v27 = sub_18E1C5E98();
  v28(v27);
  (*(v30 + 32))(v22 + *(v16 + 28), v11, v4);
  sub_18E25ABD8(v22, a2);
  sub_18E1C9934(a1);
  return sub_18E271FDC(v22);
}

unint64_t sub_18E25C728(uint64_t a1)
{
  result = sub_18E25C750();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E25C750()
{
  result = qword_1ED6A8478;
  if (!qword_1ED6A8478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8478);
  }

  return result;
}

unint64_t sub_18E25C7E8()
{
  result = qword_1EABE04F0;
  if (!qword_1EABE04F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE04F0);
  }

  return result;
}

void RawGuardrailResult.InstanceType.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v67 = sub_18E2706EC(&qword_1EABE0EE8, &qword_18E49D290);
  sub_18E1C4EAC(v67);
  v71 = v3;
  v5 = *(v4 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1CAF50();
  v73 = v7;
  v8 = sub_18E2706EC(&qword_1EABE0EF0, &qword_18E49D298);
  v9 = sub_18E1C4EAC(v8);
  v68 = v10;
  v69 = v9;
  v12 = *(v11 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v63 - v14;
  v16 = sub_18E2706EC(&qword_1EABE0EF8, &qword_18E49D2A0);
  sub_18E1C4EAC(v16);
  v66 = v17;
  v19 = *(v18 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - v21;
  v23 = sub_18E2706EC(&qword_1EABE0F00, &qword_18E49D2A8);
  sub_18E1C4EAC(v23);
  v72 = v24;
  v26 = *(v25 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v63 - v28;
  v30 = a1[4];
  sub_18E1E15F4(a1, a1[3]);
  sub_18E25BB90();
  v31 = v74;
  sub_18E44F4DC();
  if (v31)
  {
    goto LABEL_10;
  }

  v64 = v16;
  v65 = v22;
  v32 = v73;
  v74 = a1;
  v33 = v29;
  v34 = sub_18E44F28C();
  sub_18E1FF610(v34, 0);
  if (v37 == v38 >> 1)
  {
LABEL_9:
    v50 = sub_18E44F04C();
    swift_allocError();
    v52 = v51;
    v53 = *(sub_18E2706EC(&qword_1EABE0F08, &qword_18E49D2B0) + 48);
    *v52 = &type metadata for RawGuardrailResult.InstanceType;
    sub_18E44F1BC();
    sub_18E44F03C();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_18E1C62B8();
    v54(v33, v23);
    a1 = v74;
LABEL_10:
    sub_18E1C9934(a1);
    return;
  }

  v63 = 0;
  if (v37 < (v38 >> 1))
  {
    v39 = v29;
    v40 = *(v36 + v37);
    sub_18E20038C(v37 + 1, v38 >> 1, v35, v36, v37, v38);
    v42 = v41;
    v44 = v43;
    swift_unknownObjectRelease();
    v45 = v42 == v44 >> 1;
    v46 = v71;
    if (!v45)
    {
      v33 = v39;
      goto LABEL_9;
    }

    if (v40)
    {
      if (v40 != 1)
      {
        v76 = 2;
        sub_18E271244();
        sub_18E1C52AC();
        v56 = v70;
        v59 = v42;
        v60 = v67;
        v49 = sub_18E44F25C();
        swift_unknownObjectRelease();
        (*(v46 + 8))(v32, v60);
        sub_18E1C62B8();
        v61(v59, v23);
        v62 = 0;
LABEL_14:
        *v56 = v49;
        *(v56 + 8) = v62;
        sub_18E1C9934(v74);
        return;
      }

      sub_18E1C5774();
      sub_18E25BC64();
      sub_18E1C52AC();
      swift_unknownObjectRelease();
      (*(v68 + 8))(v15, v69);
      v47 = sub_18E1C6674();
      v48(v47);
      v49 = 1;
    }

    else
    {
      v75 = 0;
      sub_18E271298();
      v55 = v65;
      sub_18E1C52AC();
      swift_unknownObjectRelease();
      (*(v66 + 8))(v55, v64);
      v57 = sub_18E1C6674();
      v58(v57);
      v49 = 0;
    }

    v62 = 1;
    v56 = v70;
    goto LABEL_14;
  }

  __break(1u);
}

unint64_t sub_18E25CE14()
{
  result = qword_1ED6A8490;
  if (!qword_1ED6A8490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8490);
  }

  return result;
}

uint64_t sub_18E25CE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E25CF54(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_18E25CEAC()
{
  result = qword_1ED6A8488;
  if (!qword_1ED6A8488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8488);
  }

  return result;
}

unint64_t sub_18E25CF00()
{
  result = qword_1ED6A8480;
  if (!qword_1ED6A8480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8480);
  }

  return result;
}

uint64_t sub_18E25CF54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v4 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_18E44F3CC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t static Catalog.Resource.EmbeddingDenyList.All()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.EmbeddingDenyList.All(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000042);
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998();
    sub_18E1E3DB8();
    result = sub_18E1CD52C();
    __break(1u);
  }

  return result;
}

unint64_t sub_18E25D114()
{
  result = qword_1ED6A8460;
  if (!qword_1ED6A8460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8460);
  }

  return result;
}

uint64_t static CoherentAssetLock.createUnlockedAssetLock(resources:)()
{
  sub_18E1C6170();
  v1 = v0;
  type metadata accessor for CoherentAssetLock();
  sub_18E1CADEC();
  swift_allocObject();

  v2 = swift_task_alloc();
  v3 = sub_18E1C5EA8(v2);
  *v3 = v4;
  sub_18E1C5950(v3);

  return sub_18E25D518(v1, 0);
}

{
  type metadata accessor for CoherentAssetLock();
  sub_18E1CADEC();
  swift_allocObject();

  return sub_18E1FD9F4(v0, 0);
}

uint64_t sub_18E25D23C()
{
  sub_18E1CAF5C();
  v1 = *(v0 + 136);
  sub_18E2706EC(&qword_1EABE91A0, qword_18E4E2D78);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v1[3] = v2;
  v1[4] = 0;
  v1[5] = 0;
  if (qword_1ED6A8358 != -1)
  {
    sub_18E1C5AE8();
  }

  swift_beginAccess();
  sub_18E202008(&xmmword_1ED6A7B48, v0 + 56, &qword_1EABE9198, &qword_18E4E2D58);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 120);
    sub_18E1C551C((v0 + 56), v0 + 16);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    sub_18E1E15F4((v0 + 16), v4);

    v7 = sub_18E207C7C(v6);
    *(v0 + 144) = v7;
    sub_18E2218CC(v5);
    v19 = (v8 + *v8);
    v10 = *(v9 + 4);
    v11 = swift_task_alloc();
    *(v0 + 152) = v11;
    *v11 = v0;
    sub_18E1C5950(v11);

    return v19(v7, v4, v5);
  }

  else
  {
    v13 = *(v0 + 128);
    sub_18E1E8EEC(v0 + 56, &qword_1EABE9198, &qword_18E4E2D58);
    v14 = *(v0 + 128);
    if (v13)
    {
      v15 = *(v0 + 128);
    }

    else
    {
      type metadata accessor for CatalogClient();
      swift_allocObject();
      v15 = CatalogClient.init()();
    }

    *(v0 + 176) = v14;
    *(v0 + 184) = v15;
    v16 = *(v0 + 120);

    v17 = sub_18E207C7C(v16);
    *(v0 + 192) = v17;
    v18 = swift_task_alloc();
    *(v0 + 200) = v18;
    *v18 = v0;
    sub_18E1C5950(v18);

    return sub_18E25E7A8(v17);
  }
}

unint64_t sub_18E25D4F0(uint64_t a1)
{
  result = sub_18E25D53C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E25D518(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18E25D23C, 0, 0);
}

unint64_t sub_18E25D53C()
{
  result = qword_1ED6A93A8;
  if (!qword_1ED6A93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A93A8);
  }

  return result;
}

unint64_t sub_18E25D590(uint64_t a1)
{
  result = sub_18E25D650();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E25D5B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_18E44EAAC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

unint64_t sub_18E25D650()
{
  result = qword_1ED6A93B0;
  if (!qword_1ED6A93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A93B0);
  }

  return result;
}

unint64_t sub_18E25D6A8(uint64_t a1)
{
  result = sub_18E25D710();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E25D6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a1;
  v7[1] = a2;
  return v4(v7, a3);
}

unint64_t sub_18E25D710()
{
  result = qword_1ED6A93C0;
  if (!qword_1ED6A93C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A93C0);
  }

  return result;
}

unint64_t sub_18E25D7B8()
{
  result = qword_1ED6A93E0;
  if (!qword_1ED6A93E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A93E0);
  }

  return result;
}

uint64_t sub_18E25D80C()
{
  sub_18E1CD8B8();
  v4 = sub_18E1E1A4C(v0, v1, v2, v3);
  sub_18E1C5B08(v4);
  v6 = *(v5 + 80);
  v7 = sub_18E1CF658();

  return v8(v7);
}

uint64_t sub_18E25D89C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_18E44E83C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v58 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - v19;
  if (a3)
  {
    v21 = a3;
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v22 = sub_18E1C95EC(v10, qword_1ED6A9028);
    swift_beginAccess();
    (*(v11 + 16))(v20, v22, v10);

    v23 = a3;

    v24 = sub_18E44E80C();
    v25 = sub_18E44EE0C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v59 = a5;
      v28 = v27;
      v29 = swift_slowAlloc();
      v61[0] = v29;
      *v26 = 136315650;
      v58 = v11;
      swift_beginAccess();
      v60 = v10;
      v31 = qword_1EABE9328;
      v30 = off_1EABE9330;

      v32 = sub_18E1C9624(v31, v30, v61);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2112;
      v33 = a3;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v34;
      *v28 = v34;
      *(v26 + 22) = 2048;
      swift_beginAccess();
      v35 = *(a4 + 16);

      *(v26 + 24) = v35;

      _os_log_impl(&dword_18E1C1000, v24, v25, "%s async: method error during call: %@, num connection attempts: %lu", v26, 0x20u);
      sub_18E1CC340(v28, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v28, -1, -1);
      sub_18E1C9934(v29);
      MEMORY[0x193ACD400](v29, -1, -1);
      MEMORY[0x193ACD400](v26, -1, -1);

      (*(v58 + 8))(v20, v60);
    }

    else
    {

      (*(v11 + 8))(v20, v10);
    }

    v61[0] = a3;
LABEL_13:
    sub_18E2706EC(&qword_1EABE1050, &qword_18E49DC80);
    return sub_18E44ED0C();
  }

  if (!a2)
  {
    v47 = v11;
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v48 = sub_18E1C95EC(v10, qword_1ED6A9028);
    swift_beginAccess();
    (*(v47 + 16))(v15, v48, v10);

    v49 = sub_18E44E80C();
    v50 = sub_18E44EE0C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v61[0] = v52;
      *v51 = 136315394;
      swift_beginAccess();
      v60 = v10;
      v54 = qword_1EABE9328;
      v53 = off_1EABE9330;

      v55 = sub_18E1C9624(v54, v53, v61);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2048;
      swift_beginAccess();
      *(v51 + 14) = *(a4 + 16);

      _os_log_impl(&dword_18E1C1000, v49, v50, "%s async: throwing neither result or error returned, num connection attempts: %lu", v51, 0x16u);
      sub_18E1C9934(v52);
      MEMORY[0x193ACD400](v52, -1, -1);
      MEMORY[0x193ACD400](v51, -1, -1);

      (*(v47 + 8))(v15, v60);
    }

    else
    {

      (*(v47 + 8))(v15, v10);
    }

    sub_18E2885F0();
    v56 = swift_allocError();
    *v57 = 2;
    v61[0] = v56;
    goto LABEL_13;
  }

  v58 = a1;
  v36 = v11;
  if (qword_1ED6A9020 != -1)
  {
    swift_once();
  }

  v37 = sub_18E1C95EC(v10, qword_1ED6A9028);
  swift_beginAccess();
  (*(v36 + 16))(v18, v37, v10);

  v38 = sub_18E44E80C();
  v39 = sub_18E44EDFC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v59 = a5;
    v42 = v41;
    v61[0] = v41;
    *v40 = 136315394;
    swift_beginAccess();
    v60 = v10;
    v44 = qword_1EABE9328;
    v43 = off_1EABE9330;

    v45 = sub_18E1C9624(v44, v43, v61);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2048;
    swift_beginAccess();
    *(v40 + 14) = *(a4 + 16);

    _os_log_impl(&dword_18E1C1000, v38, v39, "%s async: method returned non-nil result, num connection attempts: %lu", v40, 0x16u);
    sub_18E1C9934(v42);
    MEMORY[0x193ACD400](v42, -1, -1);
    MEMORY[0x193ACD400](v40, -1, -1);

    (*(v36 + 8))(v18, v60);
  }

  else
  {

    (*(v36 + 8))(v18, v10);
  }

  v61[0] = v58;
  v61[1] = a2;

  sub_18E2706EC(&qword_1EABE1050, &qword_18E49DC80);
  return sub_18E44ED1C();
}

unint64_t sub_18E25E054()
{
  result = qword_1ED6A93D0;
  if (!qword_1ED6A93D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A93D0);
  }

  return result;
}

unint64_t sub_18E25E0A8()
{
  result = qword_1ED6A93C8;
  if (!qword_1ED6A93C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A93C8);
  }

  return result;
}

unint64_t sub_18E25E114(uint64_t a1)
{
  result = sub_18E25E210();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E25E13C()
{
}

uint64_t sub_18E25E158()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E25E1CC(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 10000;
  *(v1 + 48) = 1;
  *(v1 + 49) = 0;
  return result;
}

unint64_t sub_18E25E210()
{
  result = qword_1ED6A9050;
  if (!qword_1ED6A9050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9050);
  }

  return result;
}

unint64_t sub_18E25E26C(uint64_t a1)
{
  result = sub_18E25E394();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E25E294()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v3 = v2;
  sub_18E1C6684();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_18E1C52E0();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (!v0)
  {
    v9 = *(v3 + 64);
  }

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

unint64_t sub_18E25E394()
{
  result = qword_1ED6A9060;
  if (!qword_1ED6A9060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9060);
  }

  return result;
}

uint64_t sub_18E25E3E8()
{
  sub_18E1C52F0();

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

unint64_t sub_18E25E478()
{
  result = qword_1ED6A9080;
  if (!qword_1ED6A9080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9080);
  }

  return result;
}

uint64_t sub_18E25E4CC()
{
  sub_18E1C6170();
  sub_18E1C64F4();
  v3 = v2[11];
  v4 = v2[10];
  v5 = v2[9];
  v6 = *v1;
  sub_18E1C52E0();
  *v7 = v6;
  *(v8 + 96) = v0;

  if (!v0)
  {
  }

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

unint64_t sub_18E25E620()
{
  result = qword_1ED6A9070;
  if (!qword_1ED6A9070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9070);
  }

  return result;
}

uint64_t sub_18E25E674()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_18E1C52E0();
  *v4 = v3;

  sub_18E1D008C();

  return v5();
}

unint64_t sub_18E25E754()
{
  result = qword_1ED6A9068;
  if (!qword_1ED6A9068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9068);
  }

  return result;
}

uint64_t sub_18E25E7A8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_18E1C62C4();
}

void sub_18E25E7BC()
{
  v1 = *(v0[3] + 16);
  v0[4] = v1;
  if (v1)
  {
    sub_18E1CF270();
    v7 = v2;
    sub_18E1CAF5C();
    v3 = v0[2];
    sub_18E1CC494();
    v4 = swift_allocObject();
    v0[5] = v4;
    *(v4 + 16) = v3;
    sub_18E1C8DC0();

    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = sub_18E27A7BC;
    sub_18E2218E0();

    v6();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E25E8AC()
{
  v1 = *(v0 + 16);

  sub_18E1CC494();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

unint64_t sub_18E25E8E4(uint64_t a1)
{
  result = sub_18E25E90C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E25E90C()
{
  result = qword_1ED6A88E0;
  if (!qword_1ED6A88E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A88E0);
  }

  return result;
}

uint64_t sub_18E25E960(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18E25E984, 0, 0);
}

uint64_t sub_18E25E984()
{
  sub_18E1CAF5C();
  sub_18E1E3848();
  sub_18E1E6788();
  if (v1)
  {
LABEL_2:
    os_unfair_lock_unlock(v0 + 6);
    sub_18E1D008C();

    return v3();
  }

  sub_18E1CF444();
  if (!v5)
  {
    sub_18E2885F0();
    sub_18E1D0098();
    v21 = swift_allocError();
    sub_18E1CBDCC(v21, v22);
    goto LABEL_2;
  }

  v6 = *(v2 + 40);
  v7 = v5;
  sub_18E1C8880();
  v8 = swift_task_alloc();
  sub_18E1C89FC(v8, v9, v10, v11, v12, v13, v14, v15, v16);
  v17 = *(MEMORY[0x1E69E8920] + 4);
  v18 = swift_task_alloc();
  sub_18E1CF8E8(v18);
  type metadata accessor for AcquireCoherenceTokenResponse();
  sub_18E1E2D00();
  MEMORY[0] = v19;
  MEMORY[8] = sub_18E278D10;
  sub_18E1C4F44();
  v20 = sub_18E1C62D4();

  return MEMORY[0x1EEE6DE38](v20);
}

unint64_t sub_18E25EABC(uint64_t a1)
{
  result = sub_18E25EAE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E25EAE4()
{
  result = qword_1ED6A88F0;
  if (!qword_1ED6A88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A88F0);
  }

  return result;
}

uint64_t sub_18E25EB88(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t (*)(), uint64_t), void (*a5)(uint64_t, uint64_t (*)(), uint64_t))
{
  v33 = a5;
  v39 = a4;
  v30 = a3;
  v31 = a2;
  v37 = a1;
  v6 = sub_18E2706EC(&qword_1EABE10A0, &qword_18E49DCE8);
  v7 = *(v6 - 8);
  v38 = *(v7 + 64);
  v8 = v38;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = swift_allocObject();
  v29 = v11;
  *(v11 + 16) = 0;
  swift_beginAccess();
  *(v11 + 16) = 1;
  v12 = *(v7 + 16);
  v35 = v7 + 16;
  v36 = v12;
  v12(v10, a1, v6);
  v13 = *(v7 + 80);
  v14 = (v13 + 40) & ~v13;
  v15 = swift_allocObject();
  v15[2] = v30;
  v15[3] = v11;
  v16 = v31;
  v15[4] = v31;
  v17 = *(v7 + 32);
  v32 = v7 + 32;
  v34 = v17;
  v17(v15 + v14, v10, v6);
  v18 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v33;
  *v18 = v39;
  v18[1] = v19;
  aBlock[4] = sub_18E288CAC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18E448558;
  aBlock[3] = &unk_1F01401D8;
  v20 = _Block_copy(aBlock);

  v21 = v29;

  v22 = v16;

  v23 = [v22 remoteObjectProxyWithErrorHandler_];
  _Block_release(v20);
  v36(v10, v37, v6);
  v24 = (v13 + 24) & ~v13;
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  v34(v25 + v24, v10, v6);

  v26 = swift_unknownObjectRetain();
  v39(v26, sub_18E288CD4, v25);

  return swift_unknownObjectRelease_n();
}

unint64_t sub_18E25EEF8()
{
  result = qword_1ED6A8908;
  if (!qword_1ED6A8908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8908);
  }

  return result;
}

unint64_t sub_18E25EF58()
{
  result = qword_1ED6A8900;
  if (!qword_1ED6A8900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8900);
  }

  return result;
}

unint64_t sub_18E25EFAC()
{
  result = qword_1ED6A88F8;
  if (!qword_1ED6A88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A88F8);
  }

  return result;
}

uint64_t sub_18E25F000(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = qword_1ED6A8B58;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_18E44E83C();
  sub_18E1C95EC(v10, qword_1ED6A9888);

  v11 = sub_18E44E80C();
  v12 = sub_18E44EE2C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    v15 = sub_18E44EDBC();
    v17 = sub_18E1C9624(v15, v16, &v19);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_18E1C1000, v11, v12, "calling acquireCoherenceToken for %s", v13, 0xCu);
    sub_18E1C9934(v14);
    MEMORY[0x193ACD400](v14, -1, -1);
    MEMORY[0x193ACD400](v13, -1, -1);
  }

  sub_18E25F240(a4, sub_18E1E0F74, v8, a1);
}

uint64_t sub_18E25F1DC()
{
  v1 = *(v0 + 24);

  sub_18E1CD8AC();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

void sub_18E25F240(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_18E44ED9C();
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_18E1E0EE0;
  v9[3] = &unk_1F01402C8;
  v8 = _Block_copy(v9);

  [a4 acquireCoherenceTokenWithIdentifiers:v7 with:v8];
  _Block_release(v8);
}

unint64_t sub_18E25F328()
{
  result = qword_1ED6A8F00;
  if (!qword_1ED6A8F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8F00);
  }

  return result;
}

unint64_t sub_18E25F380(uint64_t a1)
{
  result = sub_18E25F3A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E25F3A8()
{
  result = qword_1ED6A8F08;
  if (!qword_1ED6A8F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8F08);
  }

  return result;
}

unint64_t sub_18E25F42C()
{
  result = qword_1ED6A8F20;
  if (!qword_1ED6A8F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8F20);
  }

  return result;
}

uint64_t dispatch thunk of CoherentAssetLock.withLock<A>(closure:)()
{
  sub_18E1E15DC();
  sub_18E1C6A30();
  v1 = *(v0 + 208);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_18E1C2960(v3);
  *v4 = v5;
  v4[1] = sub_18E25E674;
  sub_18E1E1758();

  return v7();
}

{
  sub_18E1C6A30();
  return (*(v0 + 200))();
}

uint64_t sub_18E25F5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_18E1C62C4();
}

uint64_t sub_18E25F5CC()
{
  sub_18E1C6170();
  v1 = v0[5];
  sub_18E204B54();
  v7 = (v0[3] + *v0[3]);
  v2 = *(v0[3] + 4);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_18E260F40;
  v4 = v0[4];
  v5 = v0[2];

  return v7(v5);
}

unint64_t sub_18E25F708()
{
  result = qword_1ED6A8F18;
  if (!qword_1ED6A8F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8F18);
  }

  return result;
}

id sub_18E25F75C()
{
  v0 = sub_18E44EA8C();

  v1 = sub_18E44EA8C();

  v2 = [swift_getObjCClassFromMetadata() attributeWithDomain:v0 name:v1];

  return v2;
}

unint64_t sub_18E25F7F0()
{
  result = qword_1ED6A8F10;
  if (!qword_1ED6A8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8F10);
  }

  return result;
}

unint64_t sub_18E25F844()
{
  result = qword_1ED6A8EF0;
  if (!qword_1ED6A8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8EF0);
  }

  return result;
}

id sub_18E25F898(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_18E44EA8C();

  sub_18E1D121C(0, &qword_1ED6A7DB0, 0x1E69C7550);
  v6 = sub_18E44EC8C();

  v7 = [v3 initWithExplanation:v5 target:a3 attributes:v6];

  return v7;
}

unint64_t sub_18E25F9C8()
{
  result = qword_1ED6A8F40;
  if (!qword_1ED6A8F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8F40);
  }

  return result;
}

unint64_t sub_18E25FA58(uint64_t a1)
{
  result = sub_18E25FAA8();
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of AssetBackedResource.fetchLockedAsset(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 48))();
}

{
  return (*(a3 + 40))();
}

unint64_t sub_18E25FAA8()
{
  result = qword_1ED6A8F48;
  if (!qword_1ED6A8F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8F48);
  }

  return result;
}

void sub_18E25FAFC(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for EmbeddingDenyListAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E260E90(v5, &v134);
      sub_18E260E90(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E2CFAB0(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E2CFAB0(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E2CFAB0(v5);
        sub_18E2CFAB0(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E260A54();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for EmbeddingDenyListAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for EmbeddingDenyListAssetContents);

  v69 = v125;
  sub_18E4332EC(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for EmbeddingDenyListAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE1948, &qword_18E4E3A40);
      sub_18E2491F8(v66, type metadata accessor for EmbeddingDenyListAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E260E90(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E2CFAB0(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for EmbeddingDenyListAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E2CFAB0(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for EmbeddingDenyListAssetContents);
    v92(v80, v84);
  }
}

uint64_t sub_18E260A54()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedEmbeddingDenyListBase;
    v17[4] = sub_18E260E38();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedEmbeddingDenyListBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E260E90(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

unint64_t sub_18E260DE4()
{
  result = qword_1ED6A8F60;
  if (!qword_1ED6A8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8F60);
  }

  return result;
}

unint64_t sub_18E260E38()
{
  result = qword_1EABE0208;
  if (!qword_1EABE0208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0208);
  }

  return result;
}

unint64_t sub_18E260EEC()
{
  result = qword_1ED6A8F58;
  if (!qword_1ED6A8F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8F58);
  }

  return result;
}

uint64_t sub_18E260F40()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  sub_18E211354();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  sub_18E1C52E0();
  *v7 = v6;
  *(v8 + 56) = v0;

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

unint64_t sub_18E26103C()
{
  result = qword_1ED6A8F50;
  if (!qword_1ED6A8F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8F50);
  }

  return result;
}

uint64_t sub_18E261090()
{
  sub_18E1C52F0();
  v1 = *(v0 + 40);
  sub_18E1D04C8();
  v2 = *(v0 + 56);
  sub_18E1D008C();

  return v3();
}

unint64_t sub_18E2610EC()
{
  result = qword_1ED6A8F30;
  if (!qword_1ED6A8F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8F30);
  }

  return result;
}

unint64_t sub_18E261140(uint64_t a1)
{
  result = sub_18E261174();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E261174()
{
  result = qword_1ED6A8F28;
  if (!qword_1ED6A8F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8F28);
  }

  return result;
}

unint64_t sub_18E2611F4()
{
  result = qword_1ED6A90A0;
  if (!qword_1ED6A90A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A90A0);
  }

  return result;
}

unint64_t sub_18E26124C(uint64_t a1)
{
  result = sub_18E261274();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E261274()
{
  result = qword_1ED6A90A8;
  if (!qword_1ED6A90A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A90A8);
  }

  return result;
}

unint64_t sub_18E2612F4()
{
  result = qword_1ED6A90C0;
  if (!qword_1ED6A90C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A90C0);
  }

  return result;
}

unint64_t sub_18E26134C()
{
  result = qword_1ED6A90B8;
  if (!qword_1ED6A90B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A90B8);
  }

  return result;
}

unint64_t sub_18E2613A0()
{
  result = qword_1ED6A90B0;
  if (!qword_1ED6A90B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A90B0);
  }

  return result;
}

unint64_t sub_18E2613F4()
{
  result = qword_1ED6A9090;
  if (!qword_1ED6A9090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9090);
  }

  return result;
}

unint64_t sub_18E261448(uint64_t a1)
{
  result = sub_18E261470();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E261470()
{
  result = qword_1ED6A9088;
  if (!qword_1ED6A9088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9088);
  }

  return result;
}

unint64_t sub_18E2614F0()
{
  result = qword_1ED6A8E98;
  if (!qword_1ED6A8E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8E98);
  }

  return result;
}

unint64_t sub_18E261548(uint64_t a1)
{
  result = sub_18E261570();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E261570()
{
  result = qword_1ED6A8EA0;
  if (!qword_1ED6A8EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8EA0);
  }

  return result;
}

unint64_t sub_18E2615F0()
{
  result = qword_1ED6A8EB0;
  if (!qword_1ED6A8EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8EB0);
  }

  return result;
}

unint64_t sub_18E261648()
{
  result = qword_1ED6A9518[0];
  if (!qword_1ED6A9518[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6A9518);
  }

  return result;
}

unint64_t sub_18E26169C()
{
  result = qword_1ED6A8EA8;
  if (!qword_1ED6A8EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8EA8);
  }

  return result;
}

unint64_t sub_18E2616F0()
{
  result = qword_1ED6A8E90;
  if (!qword_1ED6A8E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8E90);
  }

  return result;
}

unint64_t sub_18E261770()
{
  result = qword_1ED6A8F78;
  if (!qword_1ED6A8F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8F78);
  }

  return result;
}

unint64_t sub_18E2617C8(uint64_t a1)
{
  result = sub_18E2617F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2617F0()
{
  result = qword_1ED6A8F80;
  if (!qword_1ED6A8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8F80);
  }

  return result;
}

unint64_t sub_18E261870()
{
  result = qword_1ED6A8F98;
  if (!qword_1ED6A8F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8F98);
  }

  return result;
}

unint64_t sub_18E2618C8()
{
  result = qword_1ED6A8F90;
  if (!qword_1ED6A8F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8F90);
  }

  return result;
}

unint64_t sub_18E26191C()
{
  result = qword_1ED6A8F88;
  if (!qword_1ED6A8F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8F88);
  }

  return result;
}

unint64_t sub_18E261970()
{
  result = qword_1ED6A8F68;
  if (!qword_1ED6A8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8F68);
  }

  return result;
}

unint64_t sub_18E2619F0()
{
  result = qword_1ED6A8FB0;
  if (!qword_1ED6A8FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8FB0);
  }

  return result;
}

unint64_t sub_18E261A48(uint64_t a1)
{
  result = sub_18E261A70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E261A70()
{
  result = qword_1ED6A8FB8;
  if (!qword_1ED6A8FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8FB8);
  }

  return result;
}

unint64_t sub_18E261AF0()
{
  result = qword_1ED6A8FD0;
  if (!qword_1ED6A8FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8FD0);
  }

  return result;
}

unint64_t sub_18E261B48()
{
  result = qword_1ED6A8FC8;
  if (!qword_1ED6A8FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8FC8);
  }

  return result;
}

unint64_t sub_18E261B9C()
{
  result = qword_1ED6A8FC0;
  if (!qword_1ED6A8FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8FC0);
  }

  return result;
}

unint64_t sub_18E261BF0()
{
  result = qword_1ED6A8FA0;
  if (!qword_1ED6A8FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8FA0);
  }

  return result;
}

unint64_t sub_18E261C90()
{
  result = qword_1ED6A90D0;
  if (!qword_1ED6A90D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A90D0);
  }

  return result;
}

unint64_t sub_18E261CE8(uint64_t a1)
{
  result = sub_18E261D10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E261D10()
{
  result = qword_1ED6A90E0;
  if (!qword_1ED6A90E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A90E0);
  }

  return result;
}

unint64_t sub_18E261D90()
{
  result = qword_1ED6A90F0;
  if (!qword_1ED6A90F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A90F0);
  }

  return result;
}

unint64_t sub_18E261DE8()
{
  result = qword_1ED6A9498;
  if (!qword_1ED6A9498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9498);
  }

  return result;
}

unint64_t sub_18E261E3C()
{
  result = qword_1ED6A90E8;
  if (!qword_1ED6A90E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A90E8);
  }

  return result;
}

unint64_t sub_18E261E90()
{
  result = qword_1ED6A90D8;
  if (!qword_1ED6A90D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A90D8);
  }

  return result;
}

unint64_t sub_18E261EE4(uint64_t a1)
{
  result = sub_18E261F0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E261F0C()
{
  result = qword_1ED6A8730;
  if (!qword_1ED6A8730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8730);
  }

  return result;
}

unint64_t sub_18E261F8C()
{
  result = qword_1ED6A8EC8;
  if (!qword_1ED6A8EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8EC8);
  }

  return result;
}

unint64_t sub_18E261FE4(uint64_t a1)
{
  result = sub_18E26200C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E26200C()
{
  result = qword_1ED6A8ED0;
  if (!qword_1ED6A8ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8ED0);
  }

  return result;
}

unint64_t sub_18E26208C()
{
  result = qword_1ED6A8EE8;
  if (!qword_1ED6A8EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8EE8);
  }

  return result;
}

unint64_t sub_18E2620E4()
{
  result = qword_1ED6A8EE0;
  if (!qword_1ED6A8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8EE0);
  }

  return result;
}

unint64_t sub_18E262138()
{
  result = qword_1ED6A8ED8;
  if (!qword_1ED6A8ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8ED8);
  }

  return result;
}

unint64_t sub_18E26218C()
{
  result = qword_1ED6A8EB8;
  if (!qword_1ED6A8EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8EB8);
  }

  return result;
}

unint64_t sub_18E26220C()
{
  result = qword_1ED6A91A0;
  if (!qword_1ED6A91A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A91A0);
  }

  return result;
}

unint64_t sub_18E262264(uint64_t a1)
{
  result = sub_18E26228C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E26228C()
{
  result = qword_1ED6A91A8;
  if (!qword_1ED6A91A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A91A8);
  }

  return result;
}

unint64_t sub_18E26230C()
{
  result = qword_1ED6A91B8[0];
  if (!qword_1ED6A91B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6A91B8);
  }

  return result;
}

unint64_t sub_18E262364()
{
  result = qword_1ED6A94C0;
  if (!qword_1ED6A94C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A94C0);
  }

  return result;
}

unint64_t sub_18E2623B8()
{
  result = qword_1ED6A91B0;
  if (!qword_1ED6A91B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A91B0);
  }

  return result;
}

unint64_t sub_18E26240C()
{
  result = qword_1ED6A9190;
  if (!qword_1ED6A9190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9190);
  }

  return result;
}

unint64_t sub_18E262460(uint64_t a1)
{
  result = sub_18E262488();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E262488()
{
  result = qword_1ED6A8840;
  if (!qword_1ED6A8840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8840);
  }

  return result;
}

unint64_t sub_18E262508()
{
  result = qword_1ED6A9170;
  if (!qword_1ED6A9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9170);
  }

  return result;
}

unint64_t sub_18E262560(uint64_t a1)
{
  result = sub_18E251CA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E2625B4()
{
  result = qword_1ED6A9188;
  if (!qword_1ED6A9188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9188);
  }

  return result;
}

unint64_t sub_18E26260C()
{
  result = qword_1ED6A94B8;
  if (!qword_1ED6A94B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A94B8);
  }

  return result;
}

unint64_t sub_18E262660()
{
  result = qword_1ED6A9180;
  if (!qword_1ED6A9180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9180);
  }

  return result;
}

unint64_t sub_18E2626B4()
{
  result = qword_1ED6A9160;
  if (!qword_1ED6A9160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9160);
  }

  return result;
}

unint64_t sub_18E262708(uint64_t a1)
{
  result = sub_18E262730();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E262730()
{
  result = qword_1ED6A8838;
  if (!qword_1ED6A8838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8838);
  }

  return result;
}

unint64_t sub_18E2627B0()
{
  result = qword_1ED6A84E8;
  if (!qword_1ED6A84E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A84E8);
  }

  return result;
}

unint64_t sub_18E262808(uint64_t a1)
{
  result = sub_18E262830();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E262830()
{
  result = qword_1ED6A84F0;
  if (!qword_1ED6A84F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A84F0);
  }

  return result;
}

unint64_t sub_18E2628B0()
{
  result = qword_1ED6A8508;
  if (!qword_1ED6A8508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8508);
  }

  return result;
}

unint64_t sub_18E262908()
{
  result = qword_1ED6A8500;
  if (!qword_1ED6A8500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8500);
  }

  return result;
}

unint64_t sub_18E26295C()
{
  result = qword_1ED6A84F8;
  if (!qword_1ED6A84F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A84F8);
  }

  return result;
}

unint64_t sub_18E2629B0()
{
  result = qword_1ED6A84D8;
  if (!qword_1ED6A84D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A84D8);
  }

  return result;
}

unint64_t sub_18E262A04(uint64_t a1)
{
  result = sub_18E262A2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E262A2C()
{
  result = qword_1ED6A84D0;
  if (!qword_1ED6A84D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A84D0);
  }

  return result;
}

void sub_18E262A80()
{
  qword_1ED6A85F8 = 0xD00000000000001BLL;
  unk_1ED6A8600 = 0x800000018E45B470;
  byte_1ED6A8608 = 2;
}

unint64_t sub_18E262ADC()
{
  result = qword_1ED6A8E68;
  if (!qword_1ED6A8E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8E68);
  }

  return result;
}

unint64_t sub_18E262B34(uint64_t a1)
{
  result = sub_18E262B5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E262B5C()
{
  result = qword_1ED6A8E70;
  if (!qword_1ED6A8E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8E70);
  }

  return result;
}

unint64_t sub_18E262BDC()
{
  result = qword_1ED6A8E88;
  if (!qword_1ED6A8E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8E88);
  }

  return result;
}

unint64_t sub_18E262C34()
{
  result = qword_1ED6A8E80;
  if (!qword_1ED6A8E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8E80);
  }

  return result;
}

unint64_t sub_18E262C88()
{
  result = qword_1ED6A8E78;
  if (!qword_1ED6A8E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8E78);
  }

  return result;
}

unint64_t sub_18E262CDC()
{
  result = qword_1ED6A8E58;
  if (!qword_1ED6A8E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8E58);
  }

  return result;
}

unint64_t sub_18E262D50(uint64_t a1)
{
  result = sub_18E262D78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E262D78()
{
  result = qword_1ED6A8870;
  if (!qword_1ED6A8870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8870);
  }

  return result;
}

unint64_t sub_18E262DCC(uint64_t a1)
{
  result = sub_18E262DF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E262DF4()
{
  result = qword_1ED6A8880;
  if (!qword_1ED6A8880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8880);
  }

  return result;
}

unint64_t sub_18E262E74()
{
  result = qword_1ED6A8898;
  if (!qword_1ED6A8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8898);
  }

  return result;
}

unint64_t sub_18E262ECC()
{
  result = qword_1ED6A8890;
  if (!qword_1ED6A8890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8890);
  }

  return result;
}

unint64_t sub_18E262F20()
{
  result = qword_1ED6A8888;
  if (!qword_1ED6A8888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8888);
  }

  return result;
}

unint64_t sub_18E262FA0()
{
  result = qword_1ED6A8438;
  if (!qword_1ED6A8438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8438);
  }

  return result;
}

unint64_t sub_18E262FF8(uint64_t a1)
{
  result = sub_18E263020();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E263020()
{
  result = qword_1ED6A8440;
  if (!qword_1ED6A8440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8440);
  }

  return result;
}

unint64_t sub_18E2630A0()
{
  result = qword_1ED6A8458;
  if (!qword_1ED6A8458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8458);
  }

  return result;
}

unint64_t sub_18E2630F8()
{
  result = qword_1ED6A8450;
  if (!qword_1ED6A8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8450);
  }

  return result;
}

unint64_t sub_18E26314C()
{
  result = qword_1ED6A8448;
  if (!qword_1ED6A8448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8448);
  }

  return result;
}

unint64_t sub_18E2631A0()
{
  result = qword_1ED6A8428;
  if (!qword_1ED6A8428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8428);
  }

  return result;
}

unint64_t sub_18E2631F4(uint64_t a1)
{
  result = sub_18E26321C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E26321C()
{
  result = qword_1ED6A8420;
  if (!qword_1ED6A8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8420);
  }

  return result;
}

unint64_t sub_18E26329C()
{
  result = qword_1ED6A8498;
  if (!qword_1ED6A8498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8498);
  }

  return result;
}

unint64_t sub_18E2632F4(uint64_t a1)
{
  result = sub_18E26331C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E26331C()
{
  result = qword_1ED6A84B0;
  if (!qword_1ED6A84B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A84B0);
  }

  return result;
}

unint64_t sub_18E26339C()
{
  result = qword_1ED6A84C8;
  if (!qword_1ED6A84C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A84C8);
  }

  return result;
}

unint64_t sub_18E2633F4()
{
  result = qword_1ED6A84C0;
  if (!qword_1ED6A84C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A84C0);
  }

  return result;
}

unint64_t sub_18E263448()
{
  result = qword_1ED6A84B8;
  if (!qword_1ED6A84B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A84B8);
  }

  return result;
}

unint64_t sub_18E26349C()
{
  result = qword_1ED6A84A8;
  if (!qword_1ED6A84A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A84A8);
  }

  return result;
}

uint64_t sub_18E263510()
{
  sub_18E2706EC(&qword_1EABE1080, &qword_18E49DCC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E4E2060;
  *(v0 + 32) = 0xD000000000000026;
  *(v0 + 40) = 0x800000018E459280;
  *(v0 + 48) = &unk_1F01200A0;
  *(v0 + 56) = 0xD000000000000022;
  *(v0 + 64) = 0x800000018E459AF0;
  *(v0 + 72) = &unk_1F01201D0;
  *(v0 + 80) = 0xD000000000000022;
  *(v0 + 88) = 0x800000018E459B20;
  *(v0 + 96) = &unk_1F0120300;
  *(v0 + 104) = 0xD000000000000028;
  *(v0 + 112) = 0x800000018E459B50;
  *(v0 + 120) = &unk_1F0120430;
  *(v0 + 128) = 0xD000000000000027;
  *(v0 + 136) = 0x800000018E459B80;
  *(v0 + 144) = &unk_1F0120560;
  *(v0 + 152) = 0xD00000000000001ALL;
  *(v0 + 160) = 0x800000018E450AE0;
  *(v0 + 168) = &unk_1F0120690;
  *(v0 + 176) = 0xD000000000000022;
  *(v0 + 184) = 0x800000018E459BB0;
  *(v0 + 192) = &unk_1F01207C0;
  *(v0 + 200) = 0xD000000000000019;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 208) = 0x800000018E459F20;
  *(v0 + 216) = v1;
  *(v0 + 224) = 0xD000000000000024;
  *(v0 + 232) = 0x800000018E459BE0;
  *(v0 + 240) = &unk_1F0120A00;
  *(v0 + 248) = 0xD00000000000002ELL;
  *(v0 + 256) = 0x800000018E459C10;
  *(v0 + 264) = &unk_1F0120B30;
  *(v0 + 272) = 0xD000000000000022;
  *(v0 + 280) = 0x800000018E459CC0;
  *(v0 + 288) = &unk_1F0120D70;
  *(v0 + 296) = 0xD000000000000016;
  *(v0 + 304) = 0x800000018E459E70;
  *(v0 + 312) = &unk_1F0120EA0;
  *(v0 + 320) = 0xD000000000000016;
  *(v0 + 328) = 0x800000018E459530;
  *(v0 + 336) = &unk_1F0120FD0;
  *(v0 + 344) = 0xD00000000000001CLL;
  *(v0 + 352) = 0x800000018E45A020;
  *(v0 + 360) = &unk_1F0121010;
  *(v0 + 368) = 0xD000000000000023;
  *(v0 + 376) = 0x800000018E45A040;
  *(v0 + 384) = &unk_1F0121140;
  *(v0 + 392) = 0xD000000000000021;
  *(v0 + 400) = 0x800000018E45A070;
  *(v0 + 408) = &unk_1F0121270;
  *(v0 + 416) = 0xD00000000000001BLL;
  *(v0 + 424) = 0x800000018E45A0A0;
  *(v0 + 432) = &unk_1F01213A0;
  *(v0 + 440) = 0xD000000000000023;
  *(v0 + 448) = 0x800000018E45A0C0;
  *(v0 + 456) = &unk_1F01214D0;
  *(v0 + 464) = 0xD000000000000021;
  *(v0 + 472) = 0x800000018E45A120;
  *(v0 + 480) = &unk_1F0121600;
  *(v0 + 488) = 0xD00000000000001ALL;
  *(v0 + 496) = 0x800000018E45A150;
  *(v0 + 504) = &unk_1F0121730;
  *(v0 + 512) = 0xD000000000000014;
  *(v0 + 520) = 0x800000018E45A170;
  *(v0 + 528) = &unk_1F0121860;
  *(v0 + 536) = 0xD000000000000027;
  *(v0 + 544) = 0x800000018E459550;
  *(v0 + 552) = &unk_1F0121990;
  *(v0 + 560) = 0xD000000000000022;
  *(v0 + 568) = 0x800000018E45A210;
  *(v0 + 576) = &unk_1F0121AC0;
  *(v0 + 584) = 0xD000000000000018;
  *(v0 + 592) = 0x800000018E45A240;
  *(v0 + 600) = &unk_1F0121BF0;
  *(v0 + 608) = 0xD000000000000022;
  *(v0 + 616) = 0x800000018E45A260;
  *(v0 + 624) = &unk_1F0121D20;
  *(v0 + 632) = 0xD00000000000002ALL;
  *(v0 + 640) = 0x800000018E45A290;
  *(v0 + 648) = &unk_1F0121E50;
  *(v0 + 656) = 0xD00000000000001ALL;
  *(v0 + 664) = 0x800000018E45A2C0;
  *(v0 + 672) = &unk_1F0121F80;
  *(v0 + 680) = 0xD000000000000022;
  *(v0 + 688) = 0x800000018E45A2E0;
  *(v0 + 696) = &unk_1F01220B0;
  *(v0 + 704) = 0xD00000000000002ALL;
  *(v0 + 712) = 0x800000018E45A310;
  *(v0 + 720) = &unk_1F01221E0;
  *(v0 + 728) = 0xD000000000000028;
  *(v0 + 736) = 0x800000018E45A340;
  *(v0 + 744) = &unk_1F0122310;
  *(v0 + 752) = 0xD000000000000030;
  *(v0 + 760) = 0x800000018E45A370;
  *(v0 + 768) = &unk_1F0122440;
  *(v0 + 776) = 0xD000000000000022;
  *(v0 + 784) = 0x800000018E45A3B0;
  *(v0 + 792) = &unk_1F0122570;
  *(v0 + 800) = 0xD000000000000028;
  *(v0 + 808) = 0x800000018E45A3E0;
  *(v0 + 816) = &unk_1F01226A0;
  *(v0 + 824) = 0xD000000000000027;
  *(v0 + 832) = 0x800000018E45A410;
  *(v0 + 840) = &unk_1F01227D0;
  *(v0 + 848) = 0xD00000000000002DLL;
  *(v0 + 856) = 0x800000018E45A440;
  *(v0 + 864) = &unk_1F0122900;
  *(v0 + 872) = 0xD00000000000001BLL;
  *(v0 + 880) = 0x800000018E45A470;
  *(v0 + 888) = &unk_1F0122A30;
  *(v0 + 896) = 0xD000000000000026;
  *(v0 + 904) = 0x800000018E45A490;
  *(v0 + 912) = &unk_1F0122B60;
  *(v0 + 920) = 0xD000000000000020;
  *(v0 + 928) = 0x800000018E45A4C0;
  *(v0 + 936) = &unk_1F0122C90;
  *(v0 + 944) = 0xD00000000000001BLL;
  *(v0 + 952) = 0x800000018E45A4F0;
  *(v0 + 960) = &unk_1F0122DC0;
  *(v0 + 968) = 0xD00000000000001CLL;
  *(v0 + 976) = 0x800000018E45A510;
  *(v0 + 984) = &unk_1F0122EF0;
  *(v0 + 992) = 0xD00000000000001CLL;
  *(v0 + 1000) = 0x800000018E45A530;
  *(v0 + 1008) = &unk_1F0123020;
  *(v0 + 1016) = 0xD000000000000019;
  *(v0 + 1024) = 0x800000018E45A550;
  *(v0 + 1032) = &unk_1F0123150;
  *(v0 + 1040) = 0xD000000000000026;
  *(v0 + 1048) = 0x800000018E45A570;
  *(v0 + 1056) = &unk_1F0123280;
  *(v0 + 1064) = 0xD000000000000028;
  *(v0 + 1072) = 0x800000018E45A5A0;
  *(v0 + 1080) = &unk_1F01233B0;
  *(v0 + 1088) = 0xD00000000000001BLL;
  *(v0 + 1096) = 0x800000018E45A5D0;
  *(v0 + 1104) = &unk_1F01234E0;
  *(v0 + 1112) = 0xD00000000000001ELL;
  *(v0 + 1120) = 0x800000018E45A5F0;
  *(v0 + 1128) = &unk_1F0123610;
  *(v0 + 1136) = 0xD00000000000001DLL;
  *(v0 + 1144) = 0x800000018E45A610;
  *(v0 + 1152) = &unk_1F0123740;
  *(v0 + 1160) = 0xD000000000000023;
  *(v0 + 1168) = 0x800000018E45A630;
  *(v0 + 1176) = &unk_1F0123870;
  *(v0 + 1184) = 0xD00000000000001FLL;
  *(v0 + 1192) = 0x800000018E45A660;
  *(v0 + 1200) = &unk_1F01239A0;
  *(v0 + 1208) = 0xD00000000000001DLL;
  *(v0 + 1216) = 0x800000018E45A680;
  *(v0 + 1224) = &unk_1F01239E0;
  *(v0 + 1232) = 0xD000000000000020;
  *(v0 + 1240) = 0x800000018E45A6A0;
  *(v0 + 1248) = &unk_1F0123B10;
  *(v0 + 1256) = 0xD000000000000022;
  *(v0 + 1264) = 0x800000018E45A6D0;
  *(v0 + 1272) = &unk_1F0123C40;
  *(v0 + 1280) = 0xD00000000000001FLL;
  *(v0 + 1288) = 0x800000018E45A720;
  *(v0 + 1296) = &unk_1F0123D70;
  *(v0 + 1304) = 0xD000000000000022;
  *(v0 + 1312) = 0x800000018E45A740;
  *(v0 + 1320) = &unk_1F0123EA0;
  *(v0 + 1328) = 0xD000000000000025;
  *(v0 + 1336) = 0x800000018E459620;
  *(v0 + 1344) = &unk_1F0123FD0;
  *(v0 + 1352) = 0xD000000000000039;
  *(v0 + 1360) = 0x800000018E459650;
  *(v0 + 1368) = &unk_1F0124210;
  *(v0 + 1376) = 0xD000000000000046;
  *(v0 + 1384) = 0x800000018E459690;
  *(v0 + 1392) = &unk_1F0124270;
  *(v0 + 1400) = 0xD00000000000003ELL;
  *(v0 + 1408) = 0x800000018E4596E0;
  *(v0 + 1416) = &unk_1F01242D0;
  *(v0 + 1424) = 0xD000000000000031;
  *(v0 + 1432) = 0x800000018E459720;
  *(v0 + 1440) = &unk_1F0124330;
  *(v0 + 1448) = 0xD00000000000003ELL;
  *(v0 + 1456) = 0x800000018E459760;
  *(v0 + 1464) = &unk_1F0124390;
  *(v0 + 1472) = 0xD00000000000003FLL;
  *(v0 + 1480) = 0x800000018E4597A0;
  *(v0 + 1488) = &unk_1F01243F0;
  *(v0 + 1496) = 0xD00000000000004CLL;
  *(v0 + 1504) = 0x800000018E4597E0;
  *(v0 + 1512) = &unk_1F0124450;
  *(v0 + 1520) = 0xD000000000000041;
  *(v0 + 1528) = 0x800000018E459830;
  *(v0 + 1536) = &unk_1F01244B0;
  *(v0 + 1544) = 0xD00000000000004ELL;
  *(v0 + 1552) = 0x800000018E459880;
  *(v0 + 1560) = &unk_1F0124510;
  *(v0 + 1568) = 0xD000000000000040;
  *(v0 + 1576) = 0x800000018E4598D0;
  *(v0 + 1584) = &unk_1F0124570;
  *(v0 + 1592) = 0xD000000000000033;
  *(v0 + 1600) = 0x800000018E459920;
  *(v0 + 1608) = &unk_1F01245D0;
  *(v0 + 1616) = 0xD00000000000003BLL;
  *(v0 + 1624) = 0x800000018E459960;
  *(v0 + 1632) = &unk_1F0124630;
  *(v0 + 1640) = 0xD000000000000027;
  *(v0 + 1648) = 0x800000018E4599A0;
  *(v0 + 1656) = &unk_1F0124690;
  *(v0 + 1664) = 0xD000000000000033;
  *(v0 + 1672) = 0x800000018E4599D0;
  *(v0 + 1680) = &unk_1F01248D0;
  *(v0 + 1688) = 0xD000000000000040;
  *(v0 + 1696) = 0x800000018E459A10;
  *(v0 + 1704) = &unk_1F0124930;
  *(v0 + 1712) = 0xD000000000000024;
  *(v0 + 1720) = 0x800000018E459A60;
  *(v0 + 1728) = &unk_1F0124990;
  *(v0 + 1736) = 0xD000000000000013;
  *(v0 + 1744) = 0x800000018E45A190;
  *(v0 + 1752) = &unk_1F01249F0;
  *(v0 + 1760) = 0xD000000000000015;
  *(v0 + 1768) = 0x800000018E459FB0;
  *(v0 + 1776) = &unk_1F0124A20;
  *(v0 + 1784) = 0xD000000000000025;
  *(v0 + 1792) = 0x800000018E45A7F0;
  *(v0 + 1800) = &unk_1F0124BD0;
  *(v0 + 1808) = 0xD000000000000016;
  *(v0 + 1816) = 0x800000018E459580;
  *(v0 + 1824) = &unk_1F0124D00;
  *(v0 + 1832) = 0xD000000000000020;
  *(v0 + 1840) = 0x800000018E4595A0;
  *(v0 + 1848) = &unk_1F0124E30;
  *(v0 + 1856) = 0xD00000000000001CLL;
  *(v0 + 1864) = 0x800000018E459600;
  *(v0 + 1872) = &unk_1F0124F60;
  *(v0 + 1880) = 0xD000000000000026;
  *(v0 + 1888) = 0x800000018E4595D0;
  *(v0 + 1896) = &unk_1F0125090;
  *(v0 + 1904) = 0xD000000000000019;
  *(v0 + 1912) = 0x800000018E459AD0;
  *(v0 + 1920) = &unk_1F01251C0;
  *(v0 + 1928) = 0xD000000000000019;
  *(v0 + 1936) = 0x800000018E459EB0;
  *(v0 + 1944) = &unk_1F01252F0;
  *(v0 + 1952) = 0xD00000000000001ELL;
  *(v0 + 1960) = 0x800000018E459F60;
  *(v0 + 1968) = &unk_1F0125420;
  *(v0 + 1976) = 0xD00000000000001ELL;
  *(v0 + 1984) = 0x800000018E459AB0;
  *(v0 + 1992) = &unk_1F0125550;
  *(v0 + 2000) = 0xD000000000000016;
  *(v0 + 2008) = 0x800000018E459D40;
  *(v0 + 2016) = &unk_1F0125680;
  *(v0 + 2024) = 0xD000000000000026;
  *(v0 + 2032) = 0x800000018E45A7C0;
  *(v0 + 2040) = &unk_1F01257B0;
  *(v0 + 2048) = 0xD000000000000023;
  *(v0 + 2056) = 0x800000018E459D60;
  *(v0 + 2064) = &unk_1F01258E0;
  *(v0 + 2072) = 0xD00000000000001ALL;
  *(v0 + 2080) = 0x800000018E45A770;
  *(v0 + 2088) = &unk_1F0125A10;
  *(v0 + 2096) = 0xD000000000000026;
  *(v0 + 2104) = 0x800000018E45A820;
  *(v0 + 2112) = &unk_1F0125B40;
  *(v0 + 2120) = 0xD00000000000003FLL;
  *(v0 + 2128) = 0x800000018E459DD0;
  *(v0 + 2136) = &unk_1F0125C70;
  *(v0 + 2144) = 0xD00000000000003FLL;
  *(v0 + 2152) = 0x800000018E459D90;
  *(v0 + 2160) = &unk_1F0125DA0;
  *(v0 + 2168) = 0xD000000000000021;
  *(v0 + 2176) = 0x800000018E459FD0;
  *(v0 + 2184) = &unk_1F0125ED0;
  *(v0 + 2192) = 0xD000000000000020;
  *(v0 + 2200) = 0x800000018E45A0F0;
  *(v0 + 2208) = &unk_1F0126000;
  *(v0 + 2216) = 0xD000000000000017;
  *(v0 + 2224) = 0x800000018E45A1B0;
  *(v0 + 2232) = &unk_1F0126030;
  *(v0 + 2240) = 0xD000000000000019;
  *(v0 + 2248) = 0x800000018E45A1D0;
  *(v0 + 2256) = &unk_1F0126060;
  *(v0 + 2264) = 0xD000000000000024;
  *(v0 + 2272) = 0x800000018E459CF0;
  *(v0 + 2280) = &unk_1F0126090;
  *(v0 + 2288) = 0xD00000000000001DLL;
  *(v0 + 2296) = 0x800000018E45A700;
  *(v0 + 2304) = &unk_1F01260C0;
  *(v0 + 2312) = 0xD000000000000017;
  *(v0 + 2320) = 0x800000018E459A90;
  *(v0 + 2328) = &unk_1F01261F0;
  *(v0 + 2336) = 0xD00000000000001DLL;
  *(v0 + 2344) = 0x800000018E459260;
  *(v0 + 2352) = &unk_1F0126320;
  *(v0 + 2360) = 0xD00000000000001ALL;
  *(v0 + 2368) = 0x800000018E45A000;
  *(v0 + 2376) = &unk_1F0126450;
  *(v0 + 2384) = 0xD000000000000023;
  *(v0 + 2392) = 0x800000018E459F80;
  *(v0 + 2400) = &unk_1F0126580;
  *(v0 + 2408) = 0xD000000000000026;
  *(v0 + 2416) = 0x800000018E4593E0;
  *(v0 + 2424) = &unk_1F01266B0;
  *(v0 + 2432) = 0xD000000000000026;
  *(v0 + 2440) = 0x800000018E459410;
  *(v0 + 2448) = &unk_1F01267E0;
  *(v0 + 2456) = 0xD000000000000026;
  *(v0 + 2464) = 0x800000018E459440;
  *(v0 + 2472) = &unk_1F0126910;
  *(v0 + 2480) = 0xD00000000000002DLL;
  *(v0 + 2488) = 0x800000018E4592B0;
  *(v0 + 2496) = &unk_1F0126A40;
  *(v0 + 2504) = 0xD000000000000030;
  *(v0 + 2512) = 0x800000018E459320;
  *(v0 + 2520) = &unk_1F0126B70;
  *(v0 + 2528) = 0xD000000000000030;
  *(v0 + 2536) = 0x800000018E459360;
  *(v0 + 2544) = &unk_1F0126CA0;
  *(v0 + 2552) = 0xD000000000000030;
  *(v0 + 2560) = 0x800000018E4593A0;
  *(v0 + 2568) = &unk_1F0126DD0;
  *(v0 + 2576) = 0xD000000000000037;
  *(v0 + 2584) = 0x800000018E4592E0;
  *(v0 + 2592) = &unk_1F0126F00;
  *(v0 + 2600) = 0xD000000000000019;
  *(v0 + 2608) = 0x800000018E45A1F0;
  *(v0 + 2616) = &unk_1F0127030;
  *(v0 + 2624) = 0xD000000000000024;
  *(v0 + 2632) = 0x800000018E459EF0;
  *(v0 + 2640) = &unk_1F0127060;
  *(v0 + 2648) = 0xD000000000000014;
  *(v0 + 2656) = 0x800000018E459F40;
  *(v0 + 2664) = &unk_1F0127090;
  sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  v2 = sub_18E44E9AC();
  sub_18E21654C(0xD00000000000001CLL, 0x800000018E459E90, v2);
  sub_18E2645DC(&unk_1F01270C0);
  swift_isUniquelyReferenced_nonNull_native();
  sub_18E259CDC();
  return v2;
}

uint64_t sub_18E2645BC()
{
  result = sub_18E263510();
  qword_1ED6A8728 = result;
  return result;
}

void sub_18E2645DC(uint64_t a1)
{
  v4 = sub_18E1C2A68(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_18E3F656C(v4, 1, sub_18E264698);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  sub_18E1E1018();
  if (v9 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v10 = *(v6 + 16);
  v5 = __OFADD__(v10, v1);
  v11 = v10 + v1;
  if (!v5)
  {
    *(v6 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_18E264698()
{
  sub_18E1CADE0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_18E1C5534();
  if (v6 == v7)
  {
LABEL_7:
    sub_18E1C5AD8(v5);
    if (v2)
    {
      sub_18E2706EC(&qword_1EABE0E38, &qword_18E49D1E0);
      v8 = sub_18E1DD5E0();
      sub_18E1C8D48(v8);
      sub_18E1C6250(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_18E1CB0D4();
        sub_18E26DEA0(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_18E223D80();
    goto LABEL_12;
  }

  sub_18E1E1CA8();
  if (!v6)
  {
    sub_18E1C5E88();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_18E2647DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_18E264838(uint64_t a1, unint64_t *a2)
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

uint64_t sub_18E264884()
{
  v0 = sub_18E44E83C();
  sub_18E24D4C0(v0, qword_1ED6A9028);
  sub_18E1C95EC(v0, qword_1ED6A9028);
  return sub_18E44E82C();
}

uint64_t sub_18E2648E4()
{
  sub_18E2706EC(&qword_1EABE9348, &qword_18E4E3AF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E49D9C0;
  *(v0 + 32) = sel_useCaseResourceAvailabilityBy_with_;
  *(v0 + 40) = 0;
  sub_18E2706EC(&qword_1EABE9070, &qword_18E4E2618);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18E49DA90;
  v2 = sub_18E1D121C(0, &qword_1ED6A8C98, 0x1E695DEC8);
  *(v1 + 56) = sub_18E2706EC(&qword_1EABE9350, &qword_18E4E3AF8);
  *(v1 + 32) = v2;
  v3 = type metadata accessor for UseCaseIdentifierWrapper();
  *(v1 + 88) = sub_18E2706EC(&qword_1EABE9378, &qword_18E4E3B20);
  *(v1 + 64) = v3;
  sub_18E1D121C(0, qword_1ED6A8CA0, 0x1E695DFD8);
  v4 = MEMORY[0x193ACC600](v1);
  sub_18E1D121C(0, &qword_1ED6A8C90, 0x1E69E58C0);
  sub_18E264B58();
  v5 = sub_18E1CB0E4(v4);

  sub_18E264BC0(v5);
  sub_18E1C5720();
  *(v0 + 48) = v4;
  *(v0 + 56) = sel_donateSafetyFailureWithSafetyFailure_with_;
  *(v0 + 64) = 0;
  v6 = sub_18E1C5500();
  v6[1] = xmmword_18E49D9B0;
  type metadata accessor for SafetyFailureWrapper(0);
  v7 = sub_18E2706EC(&qword_1EABE93A8, &qword_18E4E3B50);
  sub_18E1C58E8(v7);
  v9 = sub_18E1C5E54(v8);

  sub_18E264BC0(v9);
  sub_18E1C5720();
  *(v0 + 72) = v6;
  *(v0 + 80) = sel_donateGenerativeGuardrailResultWithGuardrailResult_with_;
  *(v0 + 88) = 0;
  v10 = sub_18E1C5500();
  v18 = sub_18E1C613C(v10, v11, v12, v13, v14, v15, v16, v17, xmmword_18E49D9B0);
  v19 = type metadata accessor for GuardrailResultWrapper(v18);
  *(v10 + 56) = sub_18E2706EC(&qword_1EABE93B0, &unk_18E4E3B58);
  *(v10 + 32) = v19;
  v20 = MEMORY[0x193ACC600](v10);
  v21 = sub_18E1CB0E4(v20);

  v22 = sub_18E264BC0(v21);

  *(v0 + 96) = v22;
  off_1ED6A8DD0 = v0;
  return result;
}

unint64_t sub_18E264B58()
{
  result = qword_1ED6A9128;
  if (!qword_1ED6A9128)
  {
    sub_18E1D121C(255, &qword_1ED6A8C90, 0x1E69E58C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9128);
  }

  return result;
}

uint64_t sub_18E264BC0(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_18E44EF8C())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CD0];
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_18E2706EC(&qword_1EABE93A0, &qword_18E4E3B48);
  v3 = sub_18E44EFDC();
  if (v2)
  {
LABEL_4:

    sub_18E44EF7C();
    sub_18E1D121C(0, &qword_1ED6A8C90, 0x1E69E58C0);
    sub_18E264B58();
    result = sub_18E44EDDC();
    v1 = v31;
    v5 = v32;
    v6 = v33;
    v7 = v34;
    v8 = v35;
    goto LABEL_11;
  }

LABEL_7:
  v9 = -1 << *(v1 + 32);
  v5 = v1 + 56;
  v6 = ~v9;
  v10 = -v9;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v8 = v11 & *(v1 + 56);

  v7 = 0;
LABEL_11:
  v12 = v3 + 56;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v8)
  {
    v13 = v7;
LABEL_21:
    v16 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v17 = *(*(v1 + 48) + ((v13 << 9) | (8 * v16)));
    while (1)
    {
      sub_18E1D121C(0, &qword_1ED6A8C90, 0x1E69E58C0);
      swift_dynamicCast();
      v18 = *(v3 + 40);
      result = sub_18E44EFAC();
      v19 = -1 << *(v3 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        break;
      }

      v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
      *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v27 = *(v3 + 48) + 40 * v22;
      *(v27 + 32) = v30;
      *v27 = v28;
      *(v27 + 16) = v29;
      ++*(v3 + 16);
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_14:
      v14 = sub_18E44EF9C();
      if (!v14)
      {
        goto LABEL_33;
      }

      *&v28 = v14;
      sub_18E1D121C(0, &qword_1ED6A8C90, 0x1E69E58C0);
      swift_dynamicCast();
    }

    v23 = 0;
    v24 = (63 - v19) >> 6;
    while (++v21 != v24 || (v23 & 1) == 0)
    {
      v25 = v21 == v24;
      if (v21 == v24)
      {
        v21 = 0;
      }

      v23 |= v25;
      v26 = *(v12 + 8 * v21);
      if (v26 != -1)
      {
        v22 = __clz(__rbit64(~v26)) + (v21 << 6);
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = v7;
    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v13 >= ((v6 + 64) >> 6))
      {
LABEL_33:
        sub_18E246F7C();

        return v3;
      }

      v8 = *(v5 + 8 * v13);
      ++v15;
      if (v8)
      {
        v7 = v13;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E264F58()
{
  sub_18E2706EC(&qword_1EABE9348, &qword_18E4E3AF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E49E5B0;
  *(v0 + 32) = sel_resourceContainersWith_;
  *(v0 + 40) = 0;
  sub_18E2706EC(&qword_1EABE9070, &qword_18E4E2618);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18E49DA90;
  v2 = sub_18E1D121C(0, &qword_1ED6A8C98, 0x1E695DEC8);
  v3 = sub_18E2706EC(&qword_1EABE9350, &qword_18E4E3AF8);
  *(v1 + 56) = v3;
  *(v1 + 32) = v2;
  v4 = type metadata accessor for ResourceContainer();
  *(v1 + 88) = sub_18E2706EC(&qword_1EABE9358, &qword_18E4E3B00);
  *(v1 + 64) = v4;
  sub_18E1D121C(0, qword_1ED6A8CA0, 0x1E695DFD8);
  v5 = MEMORY[0x193ACC600](v1);
  sub_18E1D121C(0, &qword_1ED6A8C90, 0x1E69E58C0);
  sub_18E264B58();
  v6 = sub_18E1CB0E4(v5);

  v7 = sub_18E264BC0(v6);

  *(v0 + 48) = v7;
  *(v0 + 56) = sel_resourceBundleContainersWith_;
  *(v0 + 64) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18E49DA90;
  *(v8 + 56) = v3;
  *(v8 + 32) = v2;
  v9 = type metadata accessor for ResourceBundleContainer();
  *(v8 + 88) = sub_18E2706EC(&qword_1EABE9360, &qword_18E4E3B08);
  *(v8 + 64) = v9;
  v10 = MEMORY[0x193ACC600](v8);
  v11 = sub_18E1C5E54(v10);

  sub_18E264BC0(v11);
  sub_18E1C5720();
  *(v0 + 72) = v9;
  *(v0 + 80) = sel_acquireCoherenceTokenWithIdentifiers_with_;
  *(v0 + 88) = 0;
  v12 = sub_18E1C5500();
  v12[1] = xmmword_18E49D9B0;
  type metadata accessor for AcquireCoherenceTokenResponse();
  v13 = sub_18E2706EC(&qword_1EABE9368, &qword_18E4E3B10);
  sub_18E1C58E8(v13);
  v15 = sub_18E1C5E54(v14);

  sub_18E264BC0(v15);
  sub_18E1C5720();
  *(v0 + 96) = v12;
  *(v0 + 104) = sel_useCaseResourceAvailabilityBy_with_;
  *(v0 + 112) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_18E49D9C0;
  v17 = sub_18E1D121C(0, &qword_1ED6A8E50, 0x1E695DF20);
  *(v16 + 56) = sub_18E2706EC(&qword_1EABE9370, &qword_18E4E3B18);
  *(v16 + 32) = v17;
  v18 = type metadata accessor for UseCaseIdentifierWrapper();
  *(v16 + 88) = sub_18E2706EC(&qword_1EABE9378, &qword_18E4E3B20);
  *(v16 + 64) = v18;
  v19 = type metadata accessor for UseCaseAvailabilityInfo();
  *(v16 + 120) = sub_18E2706EC(&qword_1EABE9380, &qword_18E4E3B28);
  *(v16 + 96) = v19;
  v20 = MEMORY[0x193ACC600](v16);
  v21 = sub_18E1C5E54(v20);

  sub_18E264BC0(v21);
  sub_18E1C5720();
  *(v0 + 120) = v16;
  *(v0 + 128) = sel_siriResourceAvailabilityWith_;
  *(v0 + 136) = 0;
  v22 = sub_18E1C5500();
  sub_18E1C613C(v22, v23, v24, v25, v26, v27, v28, v29, xmmword_18E49D9B0);
  type metadata accessor for SiriResourceAvailabilityInfo();
  v30 = sub_18E2706EC(&qword_1EABE9388, &qword_18E4E3B30);
  sub_18E1C58E8(v30);
  v32 = sub_18E1C5E54(v31);

  sub_18E264BC0(v32);
  sub_18E1C5720();
  *(v0 + 144) = v22;
  *(v0 + 152) = sel_availableUseCasesWithUseCaseIdentifiers_includeAssetsInformation_with_;
  *(v0 + 160) = 0;
  v33 = sub_18E1C5500();
  sub_18E1C613C(v33, v34, v35, v36, v37, v38, v39, v40, v57);
  type metadata accessor for AvailableUseCasesWrapper();
  v41 = sub_18E2706EC(&qword_1EABE9390, &qword_18E4E3B38);
  sub_18E1C58E8(v41);
  v43 = sub_18E1C5E54(v42);

  sub_18E264BC0(v43);
  sub_18E1C5720();
  *(v0 + 168) = v33;
  *(v0 + 176) = sel_debugInformationWithOptions_with_;
  *(v0 + 184) = 0;
  v44 = sub_18E1C5500();
  sub_18E1C613C(v44, v45, v46, v47, v48, v49, v50, v51, v58);
  v52 = type metadata accessor for DebugInformationWrapper();
  *(v44 + 56) = sub_18E2706EC(&qword_1EABE9398, &qword_18E4E3B40);
  *(v44 + 32) = v52;
  v53 = MEMORY[0x193ACC600](v44);
  v54 = sub_18E1CB0E4(v53);

  v55 = sub_18E264BC0(v54);

  *(v0 + 192) = v55;
  off_1ED6A8DC0 = v0;
  return result;
}

unint64_t sub_18E26549C()
{
  result = qword_1ED6A8A40;
  if (!qword_1ED6A8A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8A40);
  }

  return result;
}

unint64_t sub_18E2654F4()
{
  result = qword_1ED6A8828;
  if (!qword_1ED6A8828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8828);
  }

  return result;
}

unint64_t sub_18E26555C()
{
  result = qword_1ED6A88C0;
  if (!qword_1ED6A88C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A88C0);
  }

  return result;
}

unint64_t sub_18E2655B4()
{
  result = qword_1ED6A88C8;
  if (!qword_1ED6A88C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A88C8);
  }

  return result;
}

unint64_t sub_18E265618()
{
  result = qword_1ED6A8658;
  if (!qword_1ED6A8658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8658);
  }

  return result;
}

void *sub_18E26566C(uint64_t a1)
{
  *(v1 + 144) = a1;
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 912), 0xD8uLL);
}

__n128 *sub_18E2656A0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  return result;
}

unint64_t sub_18E2656AC()
{
  result = qword_1ED6A8558;
  if (!qword_1ED6A8558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8558);
  }

  return result;
}

unint64_t sub_18E265714()
{
  result = qword_1ED6A88A0;
  if (!qword_1ED6A88A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A88A0);
  }

  return result;
}

unint64_t sub_18E26576C()
{
  result = qword_1ED6A88A8;
  if (!qword_1ED6A88A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A88A8);
  }

  return result;
}