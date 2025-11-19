unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DBAssetModelEnum@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DBAssetModelEnum.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance DBAssetModelEnum@<X0>(uint64_t *a1@<X8>)
{
  result = DBAssetModelEnum.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static DBAssetModelType.subscript.getter(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 >> 60;
  v3 = *a1 & 0xFFFFFFFFFFFFFFFLL;
  switch(v2)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
      v1 = v3;
      break;
    default:
      break;
  }

  return v1;
}

uint64_t DBAssetModelType.toMap.getter(void (*a1)(void))
{
  a1(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t DBAssetModel.toEnum.getter@<X0>(unint64_t *a1@<X8>)
{
  type metadata accessor for DBContactModel();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = 0xB000000000000000;
LABEL_5:
    v5 = v3 | v4;
    goto LABEL_6;
  }

  type metadata accessor for DBLivePhotoModel();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = 0x9000000000000000;
    goto LABEL_5;
  }

  type metadata accessor for DBMapModel();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v5 = v7 | 0x1000000000000000;
  }

  else
  {
    type metadata accessor for DBMediaFirstPartyModel();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = 0x5000000000000000;
      goto LABEL_5;
    }

    type metadata accessor for DBMediaThirdPartyModel();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v5 = v8 | 0x6000000000000000;
    }

    else
    {
      type metadata accessor for DBMotionActivityModel();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v5 = v9 | 0x2000000000000000;
      }

      else
      {
        type metadata accessor for DBPhotoModel();
        v10 = swift_dynamicCastClass();
        if (v10)
        {
          v5 = v10 | 0x7000000000000000;
        }

        else
        {
          type metadata accessor for DBReflectionModel();
          v11 = swift_dynamicCastClass();
          if (v11)
          {
            v5 = v11 | 0x8000000000000000;
          }

          else
          {
            type metadata accessor for DBPosterModel();
            v12 = swift_dynamicCastClass();
            if (v12)
            {
              v5 = v12 | 0xC000000000000000;
            }

            else
            {
              type metadata accessor for DBStateOfMindModel();
              v13 = swift_dynamicCastClass();
              if (v13)
              {
                v5 = v13 | 0x4000000000000000;
              }

              else
              {
                type metadata accessor for DBVideoModel();
                v3 = swift_dynamicCastClass();
                if (v3)
                {
                  v4 = 0xA000000000000000;
                  goto LABEL_5;
                }

                type metadata accessor for DBWorkoutModel();
                v14 = swift_dynamicCastClass();
                if (v14)
                {
                  v5 = v14 | 0x3000000000000000;
                }

                else
                {
                  v5 = v1;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_6:
  *a1 = v5;
}

uint64_t DBAssetModel.Style.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7568546C6C616D73;
    v6 = 0x68546D756964656DLL;
    if (a1 != 2)
    {
      v6 = 0x756854656772616CLL;
    }

    if (!a1)
    {
      v5 = 0xD000000000000013;
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
    v1 = 0xD000000000000010;
    if (a1 != 7)
    {
      v1 = 0x657373416C6C7566;
    }

    if (a1 == 6)
    {
      v2 = 0xD000000000000014;
    }

    else
    {
      v2 = v1;
    }

    v3 = 0xD000000000000013;
    if (a1 != 4)
    {
      v3 = 0xD00000000000001CLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DBAssetModel.Style.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized DBAssetModel.Style.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModel.Style.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.Style.CodingKeys and conformance DBAssetModel.Style.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModel.Style.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.Style.CodingKeys and conformance DBAssetModel.Style.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModel.Style.ExtraLargeThumbnailCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.Style.ExtraLargeThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeThumbnailCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModel.Style.ExtraLargeThumbnailCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.Style.ExtraLargeThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeThumbnailCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModel.Style.ExtraSmallThumbnailCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.Style.ExtraSmallThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraSmallThumbnailCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModel.Style.ExtraSmallThumbnailCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.Style.ExtraSmallThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraSmallThumbnailCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModel.Style.FullAssetCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.Style.FullAssetCodingKeys and conformance DBAssetModel.Style.FullAssetCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModel.Style.FullAssetCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.Style.FullAssetCodingKeys and conformance DBAssetModel.Style.FullAssetCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModel.Style.InterstitialCarouselCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.Style.InterstitialCarouselCodingKeys and conformance DBAssetModel.Style.InterstitialCarouselCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModel.Style.InterstitialCarouselCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.Style.InterstitialCarouselCodingKeys and conformance DBAssetModel.Style.InterstitialCarouselCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModel.Style.InterstitialListCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.Style.InterstitialListCodingKeys and conformance DBAssetModel.Style.InterstitialListCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModel.Style.InterstitialListCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.Style.InterstitialListCodingKeys and conformance DBAssetModel.Style.InterstitialListCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModel.Style.LargeThumbnailCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.Style.LargeThumbnailCodingKeys and conformance DBAssetModel.Style.LargeThumbnailCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModel.Style.LargeThumbnailCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.Style.LargeThumbnailCodingKeys and conformance DBAssetModel.Style.LargeThumbnailCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModel.Style.MediumThumbnailCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.Style.MediumThumbnailCodingKeys and conformance DBAssetModel.Style.MediumThumbnailCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModel.Style.MediumThumbnailCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.Style.MediumThumbnailCodingKeys and conformance DBAssetModel.Style.MediumThumbnailCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModel.Style.SmallThumbnailCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.Style.SmallThumbnailCodingKeys and conformance DBAssetModel.Style.SmallThumbnailCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModel.Style.SmallThumbnailCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.Style.SmallThumbnailCodingKeys and conformance DBAssetModel.Style.SmallThumbnailCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DBAssetModel.Style.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI12DBAssetModelC5StyleO19FullAssetCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x28223BE20](v4);
  v63 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI12DBAssetModelC5StyleO26InterstitialListCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x28223BE20](v6);
  v60 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI12DBAssetModelC5StyleO30InterstitialCarouselCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x28223BE20](v8);
  v57 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI12DBAssetModelC5StyleO38ExtraLargeCondensedThumbnailCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v55 = *(v10 - 8);
  v56 = v10;
  MEMORY[0x28223BE20](v10);
  v54 = &v47 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI12DBAssetModelC5StyleO29ExtraLargeThumbnailCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI12DBAssetModelC5StyleO24LargeThumbnailCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v70 = *(v13 - 8);
  v71 = v13;
  MEMORY[0x28223BE20](v13);
  v69 = &v47 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI12DBAssetModelC5StyleO25MediumThumbnailCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v68 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v67 = &v47 - v15;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI12DBAssetModelC5StyleO24SmallThumbnailCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v66 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI12DBAssetModelC5StyleO29ExtraSmallThumbnailCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v48 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI12DBAssetModelC5StyleO10CodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v21 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v23 = &v47 - v22;
  v24 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBAssetModel.Style.CodingKeys and conformance DBAssetModel.Style.CodingKeys();
  v72 = v23;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v25 = (v21 + 8);
  if (v24 <= 3)
  {
    v64 = v18;
    v65 = (v21 + 8);
    v31 = v66;
    v32 = v67;
    v33 = v68;
    v34 = v69;
    v35 = v70;
    v36 = v71;
    if (v24 > 1)
    {
      if (v24 != 2)
      {
        v77 = 3;
        lazy protocol witness table accessor for type DBAssetModel.Style.LargeThumbnailCodingKeys and conformance DBAssetModel.Style.LargeThumbnailCodingKeys();
        v44 = v34;
        v46 = v72;
        v45 = v73;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v35 + 8))(v44, v36);
        return (*v65)(v46, v45);
      }

      v76 = 2;
      lazy protocol witness table accessor for type DBAssetModel.Style.MediumThumbnailCodingKeys and conformance DBAssetModel.Style.MediumThumbnailCodingKeys();
      v38 = v72;
      v39 = v73;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v33 + 8))(v32, v50);
    }

    else
    {
      if (v24)
      {
        v75 = 1;
        lazy protocol witness table accessor for type DBAssetModel.Style.SmallThumbnailCodingKeys and conformance DBAssetModel.Style.SmallThumbnailCodingKeys();
        v42 = v72;
        v43 = v73;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v31 + 8))(v17, v49);
        return (*v65)(v42, v43);
      }

      v74 = 0;
      lazy protocol witness table accessor for type DBAssetModel.Style.ExtraSmallThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraSmallThumbnailCodingKeys();
      v37 = v20;
      v38 = v72;
      v39 = v73;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v48 + 8))(v37, v64);
    }

    return (*v65)(v38, v39);
  }

  if (v24 > 5)
  {
    if (v24 == 6)
    {
      v80 = 6;
      lazy protocol witness table accessor for type DBAssetModel.Style.InterstitialCarouselCodingKeys and conformance DBAssetModel.Style.InterstitialCarouselCodingKeys();
      v26 = v57;
      v27 = v72;
      v28 = v73;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v30 = v58;
      v29 = v59;
    }

    else if (v24 == 7)
    {
      v81 = 7;
      lazy protocol witness table accessor for type DBAssetModel.Style.InterstitialListCodingKeys and conformance DBAssetModel.Style.InterstitialListCodingKeys();
      v26 = v60;
      v27 = v72;
      v28 = v73;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v30 = v61;
      v29 = v62;
    }

    else
    {
      v82 = 8;
      lazy protocol witness table accessor for type DBAssetModel.Style.FullAssetCodingKeys and conformance DBAssetModel.Style.FullAssetCodingKeys();
      v26 = v63;
      v27 = v72;
      v28 = v73;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v30 = v64;
      v29 = v65;
    }

    goto LABEL_19;
  }

  if (v24 != 4)
  {
    v79 = 5;
    lazy protocol witness table accessor for type DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys();
    v26 = v54;
    v27 = v72;
    v28 = v73;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v30 = v55;
    v29 = v56;
LABEL_19:
    (*(v30 + 8))(v26, v29);
    return (*v25)(v27, v28);
  }

  v78 = 4;
  lazy protocol witness table accessor for type DBAssetModel.Style.ExtraLargeThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeThumbnailCodingKeys();
  v41 = v51;
  v27 = v72;
  v28 = v73;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v52 + 8))(v41, v53);
  return (*v25)(v27, v28);
}

Swift::Int DBAssetModel.Style.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](v1);
  return Hasher._finalize()();
}

uint64_t DBAssetModel.Style.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v81 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI12DBAssetModelC5StyleO19FullAssetCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v70 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v76 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI12DBAssetModelC5StyleO26InterstitialListCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v71 = *(v4 - 8);
  v72 = v4;
  MEMORY[0x28223BE20](v4);
  v75 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI12DBAssetModelC5StyleO30InterstitialCarouselCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v80 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI12DBAssetModelC5StyleO38ExtraLargeCondensedThumbnailCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v79 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI12DBAssetModelC5StyleO29ExtraLargeThumbnailCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v11 = *(v10 - 8);
  v64 = v10;
  v65 = v11;
  MEMORY[0x28223BE20](v10);
  v78 = &v52 - v12;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI12DBAssetModelC5StyleO24LargeThumbnailCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v77 = &v52 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI12DBAssetModelC5StyleO25MediumThumbnailCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v74 = &v52 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI12DBAssetModelC5StyleO24SmallThumbnailCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v59 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI12DBAssetModelC5StyleO29ExtraSmallThumbnailCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v57 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI12DBAssetModelC5StyleO10CodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v52 - v22;
  v24 = a1[3];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  lazy protocol witness table accessor for type DBAssetModel.Style.CodingKeys and conformance DBAssetModel.Style.CodingKeys();
  v25 = v82;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    goto LABEL_12;
  }

  v54 = v19;
  v53 = v17;
  v27 = v77;
  v26 = v78;
  v29 = v79;
  v28 = v80;
  v82 = v21;
  v55 = 0;
  v30 = v81;
  v31 = KeyedDecodingContainer.allKeys.getter();
  if (*(v31 + 16) == 1)
  {
    v56 = *(v31 + 32);
    if (v56 != 9)
    {
      if (v56 <= 3)
      {
        if (v56 <= 1)
        {
          if (v56)
          {
            v85 = 1;
            lazy protocol witness table accessor for type DBAssetModel.Style.SmallThumbnailCodingKeys and conformance DBAssetModel.Style.SmallThumbnailCodingKeys();
            v46 = v55;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v46)
            {
              (*(v59 + 8))(v16, v58);
              (*(v82 + 8))(v23, v20);
              goto LABEL_41;
            }
          }

          else
          {
            v84 = 0;
            lazy protocol witness table accessor for type DBAssetModel.Style.ExtraSmallThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraSmallThumbnailCodingKeys();
            v39 = v54;
            v40 = v55;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v40)
            {
              (*(v57 + 8))(v39, v53);
              (*(v82 + 8))(v23, v20);
              goto LABEL_41;
            }
          }

LABEL_25:
          (*(v82 + 8))(v23, v20);
          goto LABEL_11;
        }

        if (v56 == 2)
        {
          v86 = 2;
          lazy protocol witness table accessor for type DBAssetModel.Style.MediumThumbnailCodingKeys and conformance DBAssetModel.Style.MediumThumbnailCodingKeys();
          v41 = v74;
          v42 = v55;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v43 = v82;
          if (!v42)
          {
            (*(v61 + 8))(v41, v60);
LABEL_40:
            (*(v43 + 8))(v23, v20);
            goto LABEL_41;
          }
        }

        else
        {
          v87 = 3;
          lazy protocol witness table accessor for type DBAssetModel.Style.LargeThumbnailCodingKeys and conformance DBAssetModel.Style.LargeThumbnailCodingKeys();
          v47 = v55;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v43 = v82;
          if (!v47)
          {
            (*(v63 + 8))(v27, v62);
            goto LABEL_40;
          }
        }
      }

      else
      {
        if (v56 > 5)
        {
          if (v56 == 6)
          {
            v90 = 6;
            lazy protocol witness table accessor for type DBAssetModel.Style.InterstitialCarouselCodingKeys and conformance DBAssetModel.Style.InterstitialCarouselCodingKeys();
            v45 = v55;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v45)
            {
              (*(v68 + 8))(v28, v69);
              (*(v82 + 8))(v23, v20);
              goto LABEL_41;
            }
          }

          else if (v56 == 7)
          {
            v91 = 7;
            lazy protocol witness table accessor for type DBAssetModel.Style.InterstitialListCodingKeys and conformance DBAssetModel.Style.InterstitialListCodingKeys();
            v32 = v75;
            v33 = v55;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v33)
            {
              (*(v71 + 8))(v32, v72);
              (*(v82 + 8))(v23, v20);
LABEL_41:
              swift_unknownObjectRelease();
              v37 = v83;
              goto LABEL_42;
            }
          }

          else
          {
            v48 = v30;
            v92 = 8;
            lazy protocol witness table accessor for type DBAssetModel.Style.FullAssetCodingKeys and conformance DBAssetModel.Style.FullAssetCodingKeys();
            v49 = v76;
            v50 = v55;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v50)
            {
              (*(v70 + 8))(v49, v73);
              (*(v82 + 8))(v23, v20);
              swift_unknownObjectRelease();
              v37 = v83;
              v30 = v48;
LABEL_42:
              *v30 = v56;
              return __swift_destroy_boxed_opaque_existential_1(v37);
            }
          }

          goto LABEL_25;
        }

        if (v56 == 4)
        {
          v88 = 4;
          lazy protocol witness table accessor for type DBAssetModel.Style.ExtraLargeThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeThumbnailCodingKeys();
          v44 = v55;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v43 = v82;
          if (!v44)
          {
            (*(v65 + 8))(v26, v64);
            goto LABEL_40;
          }
        }

        else
        {
          v89 = 5;
          lazy protocol witness table accessor for type DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys();
          v51 = v55;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v43 = v82;
          if (!v51)
          {
            (*(v66 + 8))(v29, v67);
            goto LABEL_40;
          }
        }
      }

      (*(v43 + 8))(v23, v20);
      goto LABEL_11;
    }
  }

  v34 = type metadata accessor for DecodingError();
  swift_allocError();
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *v36 = &type metadata for DBAssetModel.Style;
  KeyedDecodingContainer.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
  swift_willThrow();
  (*(v82 + 8))(v23, v20);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v37 = v83;
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

void DBAssetModel.RenderState.uiRenderState.getter(char *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance DBAssetModel.RenderState.CodingKeys()
{
  if (*v0)
  {
    return 0x6E6552796C6C7566;
  }

  else
  {
    return 0x65646E6552746F6ELL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DBAssetModel.RenderState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65646E6552746F6ELL && a2 == 0xEB00000000646572;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6552796C6C7566 && a2 == 0xED00006465726564)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModel.RenderState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.RenderState.CodingKeys and conformance DBAssetModel.RenderState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModel.RenderState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.RenderState.CodingKeys and conformance DBAssetModel.RenderState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModel.RenderState.FullyRenderedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.RenderState.FullyRenderedCodingKeys and conformance DBAssetModel.RenderState.FullyRenderedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModel.RenderState.FullyRenderedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.RenderState.FullyRenderedCodingKeys and conformance DBAssetModel.RenderState.FullyRenderedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModel.RenderState.NotRenderedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.RenderState.NotRenderedCodingKeys and conformance DBAssetModel.RenderState.NotRenderedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModel.RenderState.NotRenderedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.RenderState.NotRenderedCodingKeys and conformance DBAssetModel.RenderState.NotRenderedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DBAssetModel.RenderState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI12DBAssetModelC11RenderStateO23FullyRenderedCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI12DBAssetModelC11RenderStateO21NotRenderedCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI12DBAssetModelC11RenderStateO10CodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBAssetModel.RenderState.CodingKeys and conformance DBAssetModel.RenderState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    lazy protocol witness table accessor for type DBAssetModel.RenderState.FullyRenderedCodingKeys and conformance DBAssetModel.RenderState.FullyRenderedCodingKeys();
    v14 = v18;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    lazy protocol witness table accessor for type DBAssetModel.RenderState.NotRenderedCodingKeys and conformance DBAssetModel.RenderState.NotRenderedCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

Swift::Int DBAssetModel.RenderState.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](v1);
  return Hasher._finalize()();
}

uint64_t DBAssetModel.RenderState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI12DBAssetModelC11RenderStateO23FullyRenderedCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI12DBAssetModelC11RenderStateO21NotRenderedCodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI12DBAssetModelC11RenderStateO10CodingKeys33_FD191C5A56C656085764A699ABC762EBLLOGMd);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBAssetModel.RenderState.CodingKeys and conformance DBAssetModel.RenderState.CodingKeys();
  v13 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = KeyedDecodingContainer.allKeys.getter();
  if (*(v17 + 16) != 1)
  {
    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v21 = &type metadata for DBAssetModel.RenderState;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    lazy protocol witness table accessor for type DBAssetModel.RenderState.FullyRenderedCodingKeys and conformance DBAssetModel.RenderState.FullyRenderedCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    lazy protocol witness table accessor for type DBAssetModel.RenderState.NotRenderedCodingKeys and conformance DBAssetModel.RenderState.NotRenderedCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

MomentsUI::DBAssetModel::ColorScheme_optional __swiftcall DBAssetModel.ColorScheme.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBAssetModel.ColorScheme.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DBAssetModel.ColorScheme(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6B7261642D2DLL;
  }

  else
  {
    v3 = 0x746867696C2D2DLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6B7261642D2DLL;
  }

  else
  {
    v5 = 0x746867696C2D2DLL;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBAssetModel.ColorScheme()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DBAssetModel.ColorScheme()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBAssetModel.ColorScheme()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DBAssetModel.ColorScheme@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBAssetModel.ColorScheme.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DBAssetModel.ColorScheme(uint64_t *a1@<X8>)
{
  v2 = 0x746867696C2D2DLL;
  if (*v1)
  {
    v2 = 0x6B7261642D2DLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t DBAssetModel.baseTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);

  return v1;
}

uint64_t DBAssetModel.id.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t DBAssetModel.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 25705;
    v7 = 0x616C437465737361;
    v8 = 0xD000000000000018;
    if (a1 != 3)
    {
      v8 = 0x6574726F70707573;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x44497465737361;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6E6572646C696863;
    v2 = 0x74537265646E6572;
    if (a1 != 9)
    {
      v2 = 0x6E6F697461657263;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6C74695465736162;
    v4 = 0xD000000000000010;
    if (a1 != 6)
    {
      v4 = 0x7461447465737361;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DBAssetModelEnum(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBAssetModelEnum(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DBAssetModelEnum(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBAssetModelEnum(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DBAssetModel.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DBAssetModel.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance DBAssetModel.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = DBAssetModel.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance DBAssetModel.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized DBAssetModel.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAssetModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.CodingKeys and conformance DBAssetModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAssetModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAssetModel.CodingKeys and conformance DBAssetModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DBAssetModel.AssetDataHelper.string2UUID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DBAssetModel.AssetDataHelper.uuid2AssetData.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DBAssetModel.AssetDataHelper.uuid2Data.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DBAssetModel.AssetDataHelper.uuid2URL.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t (*DBAssetModel.AssetDataHelper.dataFutureFor(_:)(_BYTE *a1))()
{
  v1 = *a1 == 0;
  if (*a1)
  {
    v2 = 0x6B7261642D2DLL;
  }

  else
  {
    v2 = 0x746867696C2D2DLL;
  }

  if (v1)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  v4 = DBAssetModel.AssetDataHelper.dataFutureFor(_:)(v2, v3);

  return v4;
}

uint64_t (*DBAssetModel.AssetDataHelper.urlFutureFor(_:)(_BYTE *a1))()
{
  v1 = *a1 == 0;
  if (*a1)
  {
    v2 = 0x6B7261642D2DLL;
  }

  else
  {
    v2 = 0x746867696C2D2DLL;
  }

  if (v1)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  v4 = DBAssetModel.AssetDataHelper.urlFutureFor(_:)(v2, v3);

  return v4;
}

uint64_t (*DBAssetModel.AssetDataHelper.urlFutureFor(_:)(uint64_t a1, uint64_t a2))()
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27[-v11];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v27[-v14];
  v16 = v2[1];
  v28 = *v2;
  v29 = v16;
  v17 = v2[3];
  v30 = v2[2];
  v31 = v17;
  v18 = (v28)(v13);
  if (*(v18 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v20 & 1) != 0))
  {
    (*(v6 + 16))(v12, *(v18 + 56) + *(v6 + 72) * v19, v5);

    v21 = *(v6 + 32);
    v21(v15, v12, v5);
    v21(v9, v15, v5);
    v22 = (*(v6 + 80) + 80) & ~*(v6 + 80);
    v23 = swift_allocObject();
    v24 = v29;
    v23[1] = v28;
    v23[2] = v24;
    v25 = v31;
    v23[3] = v30;
    v23[4] = v25;
    v21(v23 + v22, v9, v5);
    outlined init with copy of DBAssetModel.AssetDataHelper(&v28, v27);
    return partial apply for closure #1 in DBAssetModel.AssetDataHelper.urlFutureFor(_:);
  }

  else
  {

    return 0;
  }
}

uint64_t DBAssetModel.AssetDataHelper.dumpAssetData()()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 16);
  v20[3] = *(v0 + 24);
  v21 = v7;
  v8 = v6(v3);
  v9 = v8;
  v20[0] = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v10 = v8 + 64;
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v8 + 64);
  v14 = (v11 + 63) >> 6;
  v20[1] = v2 + 8;
  v20[2] = v2 + 16;

  v16 = 0;
  if (!v13)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v2 + 16))(v5, *(v9 + 56) + *(v2 + 72) * (v17 | (v16 << 6)), v1);
      v18 = v21(v5);
      result = (*(v2 + 8))(v5, v1);
      if (v18)
      {
        break;
      }

      if (!v13)
      {
        goto LABEL_6;
      }
    }

    MEMORY[0x21CE92260](result);
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v20[0] = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v20[0] = v22;
  }

  while (v13);
LABEL_6:
  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v19 >= v14)
    {

      return v20[0];
    }

    v13 = *(v10 + 8 * v19);
    ++v16;
    if (v13)
    {
      v16 = v19;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t DBAssetModel.AssetDataHelper.init(string2UUID:uuid2AssetData:uuid2Data:uuid2URL:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t key path setter for DBAssetModel.assetData : DBAssetModel(__int128 *a1, void *a2)
{
  v2 = a1[1];
  v13 = *a1;
  v14 = v2;
  v3 = a1[3];
  v15 = a1[2];
  v16 = v3;
  v4 = (*a2 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[3];
  v17[2] = v4[2];
  v17[3] = v7;
  v17[0] = v5;
  v17[1] = v6;
  v8 = v13;
  v9 = v14;
  v10 = v16;
  v4[2] = v15;
  v4[3] = v10;
  *v4 = v8;
  v4[1] = v9;
  outlined init with copy of DBAssetModel.AssetDataHelper(&v13, v12);
  return outlined destroy of DBAssetModel.AssetDataHelper(v17);
}

uint64_t key path setter for DBAssetModel.assetDataLookup : DBAssetModel(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(**a2 + 264);

  return v6(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UUID) -> (@out DBAssetData?), v5);
}

uint64_t DBAssetModel.assetDataLookup.didset()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel__assetDataID);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = (v1 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataLookup);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  v7 = *(*v1 + 280);

  v9 = v7(v8);
  v11 = v10;
  v12 = (*(*v1 + 304))();
  v14 = v13;
  v15 = v1 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData;
  swift_beginAccess();
  v16 = *(v15 + 16);
  v26[0] = *v15;
  v26[1] = v16;
  v17 = *(v15 + 48);
  v26[2] = *(v15 + 32);
  v26[3] = v17;
  *v15 = partial apply for closure #4 in DBAssetModel.init(from:);
  *(v15 + 8) = v3;
  *(v15 + 16) = v6;
  *(v15 + 24) = v5;
  *(v15 + 32) = v9;
  *(v15 + 40) = v11;
  *(v15 + 48) = v12;
  *(v15 + 56) = v14;
  result = outlined destroy of DBAssetModel.AssetDataHelper(v26);
  v19 = *(v1 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = 0;
    while (v21 < *(v19 + 16))
    {
      v22 = *(v19 + 32 + 8 * v21++);
      switch(v22 >> 60)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
          v22 &= 0xFFFFFFFFFFFFFFFuLL;
          break;
        default:
          break;
      }

      v23 = *(*v1 + 256);

      v25 = v23(v24);
      (*(*v22 + 264))(v25);

      if (v20 == v21)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t key path setter for DBAssetModel.assetDataGet : DBAssetModel(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(**a2 + 288);

  return v6(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UUID) -> (@out Data?), v5);
}

uint64_t DBAssetModel.assetDataGet.didset()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel__assetDataID);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = *(*v1 + 256);

  v6 = v4(v5);
  v8 = v7;
  v9 = (v1 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataGet);
  swift_beginAccess();
  v11 = *v9;
  v10 = v9[1];
  v12 = *(*v1 + 304);

  v14 = v12(v13);
  v16 = v15;
  v17 = v1 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData;
  swift_beginAccess();
  v18 = *(v17 + 16);
  v28[0] = *v17;
  v28[1] = v18;
  v19 = *(v17 + 48);
  v28[2] = *(v17 + 32);
  v28[3] = v19;
  *v17 = partial apply for closure #4 in DBAssetModel.init(from:);
  *(v17 + 8) = v3;
  *(v17 + 16) = v6;
  *(v17 + 24) = v8;
  *(v17 + 32) = v11;
  *(v17 + 40) = v10;
  *(v17 + 48) = v14;
  *(v17 + 56) = v16;
  result = outlined destroy of DBAssetModel.AssetDataHelper(v28);
  v21 = *(v1 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children);
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = 0;
    while (v23 < *(v21 + 16))
    {
      v24 = *(v21 + 32 + 8 * v23++);
      switch(v24 >> 60)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
          v24 &= 0xFFFFFFFFFFFFFFFuLL;
          break;
        default:
          break;
      }

      v25 = *(*v1 + 280);

      v27 = v25(v26);
      (*(*v24 + 288))(v27);

      if (v22 == v23)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t DBAssetModel.assetURLGet.didset()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel__assetDataID);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = *(*v1 + 256);

  v6 = v4(v5);
  v8 = v7;
  v9 = (*(*v1 + 280))();
  v11 = v10;
  v12 = (v1 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetURLGet);
  swift_beginAccess();
  v14 = *v12;
  v13 = v12[1];
  v15 = v1 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData;
  swift_beginAccess();
  v16 = *(v15 + 16);
  v26[0] = *v15;
  v26[1] = v16;
  v17 = *(v15 + 48);
  v26[2] = *(v15 + 32);
  v26[3] = v17;
  *v15 = partial apply for closure #1 in DBAssetModel.assetURLGet.didset;
  *(v15 + 8) = v3;
  *(v15 + 16) = v6;
  *(v15 + 24) = v8;
  *(v15 + 32) = v9;
  *(v15 + 40) = v11;
  *(v15 + 48) = v14;
  *(v15 + 56) = v13;

  result = outlined destroy of DBAssetModel.AssetDataHelper(v26);
  v19 = *(v1 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = 0;
    while (v21 < *(v19 + 16))
    {
      v22 = *(v19 + 32 + 8 * v21++);
      switch(v22 >> 60)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
          v22 &= 0xFFFFFFFFFFFFFFFuLL;
          break;
        default:
          break;
      }

      v23 = *(*v1 + 304);

      v25 = v23(v24);
      (*(*v22 + 312))(v25);

      if (v20 == v21)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t DBAssetModel.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  DBAssetModel.init(from:)(a1);
  return v2;
}

uint64_t DBAssetModel.__allocating_init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:)(uint64_t a1, uint64_t a2, char *a3, unsigned int (**a4)(char *, uint64_t, uint64_t), void (**a5)(char *, uint64_t, uint64_t, uint64_t), unsigned int (**a6)(char *, uint64_t, unsigned __int8 *), unsigned int (**a7)(char *, uint64_t, unsigned __int8 *), uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 *a11)
{
  v109 = a8;
  v116 = a7;
  v115 = a6;
  v114 = a5;
  v113 = a4;
  v118 = a11;
  *&v119 = a9;
  v106 = type metadata accessor for Date();
  v103 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v102 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v16 - 8);
  v117 = &v93 - v17;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v112 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v93 - v22;
  *&v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
  v24 = *(v120 - 8);
  v25 = MEMORY[0x28223BE20](v120);
  v95 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v93 = &v93 - v27;

  v110 = v11;
  v28 = swift_allocObject();
  v29 = *a3;
  *(v28 + 16) = 0;
  LODWORD(v111) = *v118;
  v108 = v19;
  v30 = *(v19 + 16);
  v107 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
  v105 = a1;
  v30(v28 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id, a1, v18);
  v101 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID;
  v104 = a2;
  v118 = v18;
  v30(v28 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID, a2, v18);
  *(v28 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass) = v29;
  v31 = v113;
  *(v28 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport) = v113;
  *(v28 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_supportedStyles) = v114;
  v32 = (v28 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);
  v33 = v116;
  *v32 = v115;
  v32[1] = v33;
  v34 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval;
  v35 = type metadata accessor for DateInterval();
  v99 = *(v35 - 8);
  v36 = *(v99 + 16);
  v100 = v35;
  v36(v34 + v28, v109);
  v98 = v31;
  v37 = v119;
  v38 = specialized Dictionary.compactMapValues<A>(_:)(v119);
  v96 = 0;
  *(v28 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel__assetDataID) = v38;
  *(v28 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children) = a10;
  v39 = v38;
  swift_beginAccess();
  v40 = v37;
  v43 = *(v37 + 64);
  v42 = (v37 + 64);
  v41 = v43;
  v44 = 1 << *(v40 + 32);
  v45 = -1;
  v101 = v28;
  *(v28 + 16) = v111;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v41;
  v47 = (v44 + 63) >> 6;
  v115 = (v108 + 48);
  v111 = (v108 + 32);
  v114 = (v24 + 56);
  v94 = v24;
  v113 = (v24 + 48);
  v97 = v39;

  v48 = 0;
  v107 = MEMORY[0x277D84F90];
  v49 = v40;
  v50 = v120;
  v116 = v42;
  v110 = v47;
  if (v46)
  {
    while (1)
    {
      v51 = v48;
LABEL_8:
      v52 = *(*(v49 + 56) + 8 * (__clz(__rbit64(v46)) | (v51 << 6)));
      v34 = *(*v52 + 192);

      v54 = v117;
      v34(v53);
      v55 = v54;
      v56 = v54;
      v57 = v118;
      if ((*v115)(v56, 1, v118) == 1)
      {
        outlined destroy of UTType?(v55, &_s10Foundation4UUIDVSgMd);
        (*v114)(v23, 1, 1, v50);
      }

      else
      {
        v34 = *v111;
        v58 = v23;
        v59 = v112;
        (*v111)(v112, v55, v57);
        v60 = *(v120 + 48);
        v61 = v58;
        v62 = v59;
        v23 = v58;
        v50 = v120;
        (v34)(v61, v62, v57);
        v47 = v110;
        *&v23[v60] = v52;
        (*v114)(v23, 0, 1, v50);
      }

      v46 &= v46 - 1;

      v63 = (*v113)(v23, 1, v50) == 1;
      v42 = v116;
      if (v63)
      {
        outlined destroy of UTType?(v23, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
      }

      else
      {
        v64 = v93;
        outlined init with take of (UUID, DBAssetData)(v23, v93);
        outlined init with take of (UUID, DBAssetData)(v64, v95);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v107 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v107[2] + 1, 1, v107);
        }

        v67 = v107[2];
        v66 = v107[3];
        v68 = v94;
        if (v67 >= v66 >> 1)
        {
          v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v66 > 1, v67 + 1, 1, v107);
          v68 = v94;
          v107 = v70;
        }

        v69 = v107;
        v107[2] = v67 + 1;
        outlined init with take of (UUID, DBAssetData)(v95, v69 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v67);
      }

      v48 = v51;
      v49 = v119;
      if (!v46)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v51 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);

      v91 = *(v108 + 8);
      v92 = v118;
      v91(v107 + v47, v118);
      v91((v47 + v101), v92);

      (*(v99 + 8))(v34 + v47, v100);
      swift_deallocPartialClassInstance();
      __break(1u);
      goto LABEL_27;
    }

    if (v51 >= v47)
    {
      break;
    }

    v46 = v42[v51];
    ++v48;
    if (v46)
    {
      goto LABEL_8;
    }
  }

  if (v107[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI11DBAssetDataCGMd);
    v71 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v71 = MEMORY[0x277D84F98];
  }

  v72 = v118;
  v73 = v108;
  v74 = v101;
  v121 = v71;

  v76 = v96;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v75, 1, &v121);
  if (!v76)
  {

    v77 = v121;
    v78 = swift_allocObject();
    *(v78 + 16) = v77;
    v79 = (v74 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataLookup);
    *v79 = partial apply for closure #1 in DBAssetModel.init(from:);
    v79[1] = v78;
    v80 = swift_allocObject();
    *(v80 + 16) = v77;
    v81 = (v74 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataGet);
    *v81 = partial apply for closure #2 in DBAssetModel.init(from:);
    v81[1] = v80;
    v82 = (v74 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetURLGet);
    *v82 = closure #3 in DBAssetModel.init(from:);
    v82[1] = 0;
    v83 = swift_allocObject();
    *(v83 + 16) = v97;
    swift_beginAccess();
    v120 = *v79;
    swift_beginAccess();
    v119 = *v81;
    swift_beginAccess();
    v84 = *v82;
    v85 = v82[1];
    v86 = v74 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData;
    *v86 = partial apply for closure #4 in DBAssetModel.init(from:);
    *(v86 + 8) = v83;
    v87 = v119;
    *(v86 + 16) = v120;
    *(v86 + 32) = v87;
    *(v86 + 48) = v84;
    *(v86 + 56) = v85;

    v88 = v102;
    static Date.now.getter();

    (*(v99 + 8))(v109, v100);
    v89 = *(v73 + 8);
    v89(v104, v72);
    v89(v105, v72);
    (*(v103 + 32))(v74 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_creationDate, v88, v106);
    return v74;
  }

LABEL_27:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v38 - v3;
  v46 = type metadata accessor for UUID();
  v5 = MEMORY[0x28223BE20](v46);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = &v38 - v8;
  v44 = MEMORY[0x277D84F98];
  v48 = MEMORY[0x277D84F98];
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v45 = (v7 + 48);
  v40 = v7;
  v41 = (v7 + 32);
  v47 = a1;

  v15 = 0;
  while (1)
  {
    v16 = v15;
    if (!v12)
    {
      break;
    }

LABEL_9:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v17 | (v15 << 6);
    v19 = (*(v47 + 48) + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    v22 = *(**(*(v47 + 56) + 8 * v18) + 192);

    v22(v23);

    if ((*v45)(v4, 1, v46) == 1)
    {

      result = outlined destroy of UTType?(v4, &_s10Foundation4UUIDVSgMd);
    }

    else
    {
      v24 = *v41;
      (*v41)(v43, v4, v46);
      v39 = v24;
      v24(v42, v43, v46);
      v25 = v44[2];
      if (v44[3] <= v25)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25 + 1, 1);
      }

      v26 = v48;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = v26 + 64;
      v44 = v26;
      v28 = -1 << *(v26 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v26 + 64 + 8 * (v29 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v28) >> 6;
        while (++v30 != v33 || (v32 & 1) == 0)
        {
          v34 = v30 == v33;
          if (v30 == v33)
          {
            v30 = 0;
          }

          v32 |= v34;
          v35 = *(v27 + 8 * v30);
          if (v35 != -1)
          {
            v31 = __clz(__rbit64(~v35)) + (v30 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v31 = __clz(__rbit64((-1 << v29) & ~*(v26 + 64 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v27 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      v36 = v44;
      v37 = (v44[6] + 16 * v31);
      *v37 = v21;
      v37[1] = v20;
      result = (v39)(v36[7] + *(v40 + 72) * v31, v42, v46);
      ++v36[2];
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return v44;
    }

    v12 = *(v9 + 8 * v15);
    ++v16;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t closure #1 in DBAssetModel.init(from:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t closure #2 in DBAssetModel.init(from:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(**(*(a2 + 56) + 8 * v3) + 424);

  v7 = v5(v6);

  return v7;
}

uint64_t closure #3 in DBAssetModel.init(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t DBAssetModel.__deallocating_deinit()
{
  DBAssetModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Decodable.init(from:) in conformance DBAssetModel@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 344))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBAssetModel()
{
  Hasher.init(_seed:)();
  (*(**v0 + 384))(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Identifiable.id.getter in conformance DBAssetModel@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

BOOL DBAssetModel.renderedDataUnlikelyToChange.getter()
{
  type metadata accessor for DBMapModel();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  type metadata accessor for DBMediaFirstPartyModel();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  type metadata accessor for DBWorkoutModel();
  return swift_dynamicCastClass() != 0;
}

unint64_t lazy protocol witness table accessor for type DBAssetModel.CodingKeys and conformance DBAssetModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModel.CodingKeys and conformance DBAssetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.CodingKeys and conformance DBAssetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.CodingKeys and conformance DBAssetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.CodingKeys and conformance DBAssetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.CodingKeys and conformance DBAssetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.CodingKeys and conformance DBAssetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.CodingKeys and conformance DBAssetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.CodingKeys and conformance DBAssetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.CodingKeys and conformance DBAssetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.CodingKeys and conformance DBAssetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.CodingKeys and conformance DBAssetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.CodingKeys and conformance DBAssetModel.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for DBAssetModel()
{
  result = type metadata singleton initialization cache for DBAssetModel;
  if (!type metadata singleton initialization cache for DBAssetModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetData.AssetClass and conformance DBAssetData.AssetClass()
{
  result = lazy protocol witness table cache variable for type DBAssetData.AssetClass and conformance DBAssetData.AssetClass;
  if (!lazy protocol witness table cache variable for type DBAssetData.AssetClass and conformance DBAssetData.AssetClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetData.AssetClass and conformance DBAssetData.AssetClass);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetData.AssetClass and conformance DBAssetData.AssetClass;
  if (!lazy protocol witness table cache variable for type DBAssetData.AssetClass and conformance DBAssetData.AssetClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetData.AssetClass and conformance DBAssetData.AssetClass);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetData.AssetClass and conformance DBAssetData.AssetClass;
  if (!lazy protocol witness table cache variable for type DBAssetData.AssetClass and conformance DBAssetData.AssetClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetData.AssetClass and conformance DBAssetData.AssetClass);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetData.AssetClass and conformance DBAssetData.AssetClass;
  if (!lazy protocol witness table cache variable for type DBAssetData.AssetClass and conformance DBAssetData.AssetClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetData.AssetClass and conformance DBAssetData.AssetClass);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModel.Style and conformance DBAssetModel.Style()
{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style and conformance DBAssetModel.Style;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style and conformance DBAssetModel.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style and conformance DBAssetModel.Style);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style and conformance DBAssetModel.Style;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style and conformance DBAssetModel.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style and conformance DBAssetModel.Style);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style and conformance DBAssetModel.Style;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style and conformance DBAssetModel.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style and conformance DBAssetModel.Style);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style and conformance DBAssetModel.Style;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style and conformance DBAssetModel.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style and conformance DBAssetModel.Style);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [DBAssetModelType] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MomentsUI16DBAssetModelTypeOGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModelType and conformance DBAssetModelType()
{
  result = lazy protocol witness table cache variable for type DBAssetModelType and conformance DBAssetModelType;
  if (!lazy protocol witness table cache variable for type DBAssetModelType and conformance DBAssetModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType and conformance DBAssetModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType and conformance DBAssetModelType;
  if (!lazy protocol witness table cache variable for type DBAssetModelType and conformance DBAssetModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType and conformance DBAssetModelType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModel.RenderState and conformance DBAssetModel.RenderState()
{
  result = lazy protocol witness table cache variable for type DBAssetModel.RenderState and conformance DBAssetModel.RenderState;
  if (!lazy protocol witness table cache variable for type DBAssetModel.RenderState and conformance DBAssetModel.RenderState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.RenderState and conformance DBAssetModel.RenderState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.RenderState and conformance DBAssetModel.RenderState;
  if (!lazy protocol witness table cache variable for type DBAssetModel.RenderState and conformance DBAssetModel.RenderState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.RenderState and conformance DBAssetModel.RenderState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.RenderState and conformance DBAssetModel.RenderState;
  if (!lazy protocol witness table cache variable for type DBAssetModel.RenderState and conformance DBAssetModel.RenderState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.RenderState and conformance DBAssetModel.RenderState);
  }

  return result;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, type metadata accessor for Asset);
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, type metadata accessor for UIImage);
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, type metadata accessor for SuggestionViewModel);
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15PHAssetResourceC_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15PHAssetResourceC_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
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
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
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

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15PHAssetResourceC_Tt1g5(v2, 0);

    MEMORY[0x21CE93160](v3 + 32, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = __CocoaSet.count.getter();
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    outlined consume of [String : DBAssetData].Iterator._Variant();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
  v12 = MEMORY[0x28223BE20](v11);
  v15 = v54 - v14;
  v59 = *(a1 + 16);
  if (!v59)
  {
    goto LABEL_22;
  }

  v54[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v58 = *(v13 + 72);
  v60 = a1;
  v54[0] = v17;
  outlined init with copy of DateInterval?(a1 + v17, v54 - v14, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
  v55 = v8;
  v61 = *(v8 + 32);
  v62 = v7;
  v61(v10, v15, v7);
  v57 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, a2 & 1);
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v32 = v20;
  specialized _NativeDictionary.copy()();
  v20 = v32;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v65 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v30 = swift_dynamicCast();
    v31 = v62;
    if ((v30 & 1) == 0)
    {

      (*(v55 + 8))(v10, v31);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v33 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v34 = v33[6];
  v56 = *(v55 + 72);
  v35 = v20;
  v61((v34 + v56 * v20), v10, v62);
  *(v33[7] + 8 * v35) = v18;
  v36 = v33[2];
  v24 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v24)
  {
    v33[2] = v37;
    v38 = v60;
    if (v59 == 1)
    {
LABEL_22:

      return;
    }

    v39 = v60 + v58 + v54[0];
    v40 = 1;
    while (v40 < *(v38 + 16))
    {
      outlined init with copy of DateInterval?(v39, v15, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
      v61(v10, v15, v62);
      v41 = *&v15[v57];
      v42 = *a3;
      v43 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v24 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v24)
      {
        goto LABEL_23;
      }

      v48 = v44;
      if (v42[3] < v47)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v47, 1);
        v43 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v48)
      {
        goto LABEL_9;
      }

      v50 = *a3;
      *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v51 = v43;
      v61((v50[6] + v56 * v43), v10, v62);
      *(v50[7] + 8 * v51) = v41;
      v52 = v50[2];
      v24 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v40;
      v50[2] = v53;
      v39 += v58;
      v38 = v60;
      if (v59 == v40)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v63 = 0;
  v64 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x21CE92100](0xD00000000000001BLL, 0x800000021657A870);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x21CE92100](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI12DBSuggestionCtMd);
  v12 = MEMORY[0x28223BE20](v11);
  v15 = v54 - v14;
  v59 = *(a1 + 16);
  if (!v59)
  {
    goto LABEL_22;
  }

  v54[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v58 = *(v13 + 72);
  v60 = a1;
  v54[0] = v17;
  outlined init with copy of DateInterval?(a1 + v17, v54 - v14, &_s10Foundation4UUIDV_9MomentsUI12DBSuggestionCtMd);
  v55 = v8;
  v61 = *(v8 + 32);
  v62 = v7;
  v61(v10, v15, v7);
  v57 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, a2 & 1);
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v32 = v20;
  specialized _NativeDictionary.copy()();
  v20 = v32;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v65 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v30 = swift_dynamicCast();
    v31 = v62;
    if ((v30 & 1) == 0)
    {

      (*(v55 + 8))(v10, v31);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v33 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v34 = v33[6];
  v56 = *(v55 + 72);
  v35 = v20;
  v61((v34 + v56 * v20), v10, v62);
  *(v33[7] + 8 * v35) = v18;
  v36 = v33[2];
  v24 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v24)
  {
    v33[2] = v37;
    v38 = v60;
    if (v59 == 1)
    {
LABEL_22:

      return;
    }

    v39 = v60 + v58 + v54[0];
    v40 = 1;
    while (v40 < *(v38 + 16))
    {
      outlined init with copy of DateInterval?(v39, v15, &_s10Foundation4UUIDV_9MomentsUI12DBSuggestionCtMd);
      v61(v10, v15, v62);
      v41 = *&v15[v57];
      v42 = *a3;
      v43 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v24 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v24)
      {
        goto LABEL_23;
      }

      v48 = v44;
      if (v42[3] < v47)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v47, 1);
        v43 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v48)
      {
        goto LABEL_9;
      }

      v50 = *a3;
      *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v51 = v43;
      v61((v50[6] + v56 * v43), v10, v62);
      *(v50[7] + 8 * v51) = v41;
      v52 = v50[2];
      v24 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v40;
      v50[2] = v53;
      v39 += v58;
      v38 = v60;
      if (v59 == v40)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v63 = 0;
  v64 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x21CE92100](0xD00000000000001BLL, 0x800000021657A870);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x21CE92100](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized static DBAssetModel.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2;
  v3 = a1;

  v5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI12DBAssetModelC5StyleO_SayAHGTt0g5Tf4g_n(v4);

  v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI12DBAssetModelC5StyleO_SayAHGTt0g5Tf4g_n(v6);

  v8 = _sSh2eeoiySbShyxG_ABtFZ9MomentsUI12DBAssetModelC5StyleO_Tt1g5(v5, v7);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DBMapModel();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v12 = result;

    v13 = specialized static DBMapModel.== infix(_:_:)(v10, v12);
    goto LABEL_6;
  }

  type metadata accessor for DBContactModel();
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    result = swift_dynamicCastClass();
    if (result)
    {
      v28 = &OBJC_IVAR____TtC9MomentsUI14DBContactModel_contactIdentifier;
      goto LABEL_27;
    }
  }

  else
  {
    type metadata accessor for DBWorkoutModel();
    v34 = swift_dynamicCastClass();
    if (v34)
    {
      v35 = v34;
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      v36 = result;

      v13 = specialized static DBWorkoutModel.== infix(_:_:)(v35, v36);
      goto LABEL_6;
    }

    type metadata accessor for DBStateOfMindModel();
    v37 = swift_dynamicCastClass();
    if (v37)
    {
      v38 = v37;
      result = swift_dynamicCastClass();
      if (result)
      {
        v39 = result;

        v13 = specialized static DBStateOfMindModel.== infix(_:_:)(v38, v39);
LABEL_6:
        v14 = v13;

        if (v14)
        {
          goto LABEL_7;
        }

        return 0;
      }
    }

    else
    {
      type metadata accessor for DBMotionActivityModel();
      v40 = swift_dynamicCastClass();
      if (v40)
      {
        v41 = v40;
        result = swift_dynamicCastClass();
        if (result)
        {
          v42 = *(result + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue + 8);
          if (*(v41 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue + 8))
          {
            if (*(result + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue + 8))
            {
              goto LABEL_7;
            }
          }

          else
          {
            if (*(v41 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue) != *(result + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue))
            {
              v42 = 1;
            }

            if ((v42 & 1) == 0)
            {
LABEL_7:
              while (1)
              {
                v15 = *(v3 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children);
                v16 = *(v15 + 16);
                v17 = *(v2 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children);
                if (v16 != *(v17 + 16))
                {
                  break;
                }

                if (!v16)
                {
                  return 1;
                }

                v18 = 0;
                v19 = v15 + 32;
                while (2)
                {
                  if (v18 < *(v15 + 16))
                  {
                    v20 = *(v17 + 16);
                    result = v20 != 0;
                    if (v20)
                    {
                      v55 = v18 + 1;
                      v21 = *(v19 + 8 * v18);
                      v2 = v21 & 0xFFFFFFFFFFFFFFFLL;
                      if (v21 >> 60)
                      {
                        v22 = v21 & 0xFFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v22 = v21;
                      }

                      v23 = 0;
                      while (1)
                      {
                        if (v23 >= *(v17 + 16))
                        {
                          __break(1u);
                          goto LABEL_60;
                        }

                        v24 = *(v17 + 32 + 8 * v23++);
                        v3 = v24 & 0xFFFFFFFFFFFFFFFLL;
                        switch(v24 >> 60)
                        {
                          case 1uLL:
                          case 2uLL:
                          case 3uLL:
                          case 4uLL:
                          case 5uLL:
                          case 6uLL:
                          case 7uLL:
                          case 8uLL:
                          case 9uLL:
                          case 0xAuLL:
                          case 0xBuLL:
                          case 0xCuLL:
                            v24 &= 0xFFFFFFFFFFFFFFFuLL;
                            break;
                          default:
                            break;
                        }

                        v25 = specialized static DBAssetModel.== infix(_:_:)(v22, v24);

                        if (v25)
                        {
                          break;
                        }

                        if (v20 == v23)
                        {

                          return 0;
                        }
                      }

                      v19 = v15 + 32;
                      v18 = v55;
                      result = 1;
                      if (v55 != v16)
                      {
                        continue;
                      }
                    }

                    return result;
                  }

                  break;
                }

                __break(1u);
LABEL_66:
                type metadata accessor for DBReflectionModel();
                v47 = swift_dynamicCastClass();
                if (v47)
                {
                  v48 = v47;
                  result = swift_dynamicCastClass();
                  if (!result)
                  {
                    return result;
                  }

                  v49 = result;

                  v13 = specialized static DBReflectionModel.== infix(_:_:)(v48, v49);
                  goto LABEL_6;
                }

                type metadata accessor for DBPosterModel();
                v50 = swift_dynamicCastClass();
                if (v50)
                {
                  v27 = v50;
                  result = swift_dynamicCastClass();
                  if (!result)
                  {
                    return result;
                  }

                  v28 = &OBJC_IVAR____TtC9MomentsUI13DBPosterModel_spotlightIdentifier;
LABEL_27:
                  v29 = *v28;
                  v30 = (v27 + *v28);
                  v31 = v30[1];
                  v32 = (result + v29);
                  v33 = v32[1];
                  if (v31)
                  {
                    if (!v33 || (*v30 != *v32 || v31 != v33) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      return 0;
                    }
                  }

                  else if (v33)
                  {
                    return 0;
                  }
                }

                else
                {
                  if (one-time initialization token for processing != -1)
                  {
                    swift_once();
                  }

                  v51 = type metadata accessor for Logger();
                  __swift_project_value_buffer(v51, static CommonLogger.processing);
                  v52 = Logger.logObject.getter();
                  v53 = static os_log_type_t.debug.getter();
                  if (os_log_type_enabled(v52, v53))
                  {
                    v54 = swift_slowAlloc();
                    *v54 = 0;
                    _os_log_impl(&dword_21607C000, v52, v53, "[DBAssetModel.==] base compartor called unexpectedly", v54, 2u);
                    MEMORY[0x21CE94770](v54, -1, -1);
                  }

                  if ((*(v3 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle) != *(v2 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle) || *(v3 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle + 8) != *(v2 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static DateInterval.== infix(_:_:)() & 1) == 0)
                  {
                    return 0;
                  }
                }
              }
            }
          }

          return 0;
        }
      }

      else
      {
        type metadata accessor for DBMediaFirstPartyModel();
        v43 = swift_dynamicCastClass();
        if (v43)
        {
          v27 = v43;
          result = swift_dynamicCastClass();
          if (result)
          {
            v28 = &OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_trackIdentifier;
            goto LABEL_27;
          }
        }

        else
        {
          type metadata accessor for DBMediaThirdPartyModel();
          v44 = swift_dynamicCastClass();
          if (v44)
          {
            v45 = v44;
            result = swift_dynamicCastClass();
            if (result)
            {
              if (specialized static DBMediaThirdPartyModel.== infix(_:_:)(v45, result))
              {
                goto LABEL_7;
              }

              return 0;
            }
          }

          else
          {
LABEL_60:
            type metadata accessor for DBPhotoModel();
            v46 = swift_dynamicCastClass();
            if (!v46)
            {
              type metadata accessor for DBLivePhotoModel();
              v46 = swift_dynamicCastClass();
              if (!v46)
              {
                type metadata accessor for DBVideoModel();
                v46 = swift_dynamicCastClass();
                if (!v46)
                {
                  goto LABEL_66;
                }
              }
            }

            v27 = v46;
            result = swift_dynamicCastClass();
            if (result)
            {
              v28 = &OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier;
              goto LABEL_27;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [DBAssetModel.Style] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MomentsUI12DBAssetModelC5StyleOGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t specialized static DBAssetModel.baseImage2DB(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v262 = &v226 - v3;
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v226 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v265 = type metadata accessor for UUID();
  v267 = *(v265 - 8);
  v8 = MEMORY[0x28223BE20](v265);
  v10 = &v226 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v226 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v226 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v266 = &v226 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v226 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v24 = MEMORY[0x28223BE20](v23);
  v25 = MEMORY[0x28223BE20](v24);
  v253 = (&v226 - v26);
  MEMORY[0x28223BE20](v25);
  v28 = MEMORY[0x28223BE20](&v226 - v27);
  v29 = MEMORY[0x28223BE20](v28);
  v260 = &v226 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v32 = MEMORY[0x28223BE20](v31);
  v33 = MEMORY[0x28223BE20](v32);
  v34 = MEMORY[0x28223BE20](v33);
  v254 = (&v226 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v37 = MEMORY[0x28223BE20](v36);
  v38 = MEMORY[0x28223BE20](v37);
  v39 = MEMORY[0x28223BE20](v38);
  v51 = &v226 - v50;
  if (a1)
  {
    v239 = v46;
    v250 = v45;
    v259 = v44;
    v258 = v13;
    v241 = v43;
    v242 = v42;
    v251 = v20;
    v243 = v16;
    v246 = v41;
    v247 = v7;
    v248 = v5;
    v249 = v4;
    v236 = v40;
    v244 = v39;
    v245 = v49;
    v237 = v48;
    v238 = v47;
    v240 = v10;
    v52 = a1;
    v53 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v54 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v52) + 0xB8))();
    v55 = type metadata accessor for URL();
    v56 = *(v55 - 8);
    v57 = v56[6];
    v58 = v57(v51, 1, v55);
    v252 = v56;
    v257 = v52;
    v264 = v53;
    v256 = v55;
    v255 = a1;
    v263 = (v56 + 6);
    v261 = v57;
    if (v58 == 1)
    {
      v59 = outlined destroy of UTType?(v51, &_s10Foundation3URLVSgMd);
      v60 = *((*v54 & *v52) + 0x98);
      v61 = v60(v59);
      v63 = v62 >> 62;
      v64 = v54;
      if ((v62 >> 62) <= 1)
      {
        v65 = v256;
        if (!v63)
        {
          v66 = BYTE6(v62);
          result = outlined consume of Data._Representation(v61, v62);
          if (!v66)
          {
            goto LABEL_24;
          }

          goto LABEL_22;
        }

        v82 = v256;
        v105 = HIDWORD(v61);
        v106 = v61;
        result = outlined consume of Data._Representation(v61, v62);
        LODWORD(v83) = v105 - v106;
        if (__OFSUB__(v105, v106))
        {
          __break(1u);
          goto LABEL_60;
        }

        v83 = v83;
        goto LABEL_21;
      }

      v65 = v256;
      if (v63 != 2)
      {
        outlined consume of Data._Representation(v61, v62);
        goto LABEL_24;
      }

      v82 = v256;
      v55 = *(v61 + 16);
      v80 = *(v61 + 24);
      result = outlined consume of Data._Representation(v61, v62);
      v83 = v80 - v55;
      if (!__OFSUB__(v80, v55))
      {
LABEL_21:
        v65 = v82;
        if (v83 >= 1)
        {
LABEL_22:
          v107 = (*((*v54 & *v52) + 0xE8))(&v269, result);
          v108 = v269;
          v109 = v60(v107);
          v111 = v110;
          v112 = v252[7];
          v113 = v242;
          v112(v242, 1, 1, v65);
          UUID.init()();
          v114 = v65;
          v115 = v241;
          v112(v241, 1, 1, v114);
          v116 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
          LOBYTE(v112) = (v116 == 2) | v116;
          v117 = UUID.uuidString.getter();
          LODWORD(v229) = v108;
          v268[0] = v108;
          v251 = v109;
          v250 = v111;
          specialized static CloudSyncAssetData._fillInBlanks(id:sha256:size:inlineData:fileURL:fileExt:assetClass:blobFolderURL:allowLazyLoading:dryRun:)(v117, v118, 0, 0xF000000000000000, 0, 1, v109, v111, &v270, v115, 0, 0, v268, v113, v112 & 1, 0);
          v228 = v270;
          v254 = v271;
          v259 = v272;
          v235 = v273;
          v234 = v274;
          v231 = v275;
          v233 = v276;

          v119 = v239;
          outlined init with copy of DateInterval?(v113, v239, &_s10Foundation3URLVSgMd);
          if (v261(v119, 1, v114) == 1)
          {
            outlined destroy of UTType?(v119, &_s10Foundation3URLVSgMd);
            countAndFlagsBits = 0;
            object = 0;
          }

          else
          {
            v127 = URL.path(percentEncoded:)(1);
            countAndFlagsBits = v127._countAndFlagsBits;
            object = v127._object;
            (v252[1])(v119, v114);
          }

          v227 = *(v267 + 16);
          v128 = v266;
          v227(v266, v243, v265);
          v129 = type metadata accessor for DBAssetData();
          v130 = swift_allocObject();
          *(v130 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI07DBAssetB0C_AGQo_Md);
          v226 = type metadata accessor for DBAssetData;
          v131 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
          v270 = v129;
          v271 = v129;
          v272 = v131;
          v273 = v131;
          *(v130 + 80) = swift_getOpaqueTypeConformance2();
          __swift_allocate_boxed_opaque_existential_1((v130 + 48));
          static PersistentModel.createBackingData<A>()();
          *(v130 + 16) = 16843009;
          *(v130 + 20) = 257;
          *(v130 + 22) = 1;
          *(v130 + 32) = 0;
          *(v130 + 24) = 0;
          v239 = (v130 + 24);
          __swift_project_boxed_opaque_existential_1((v130 + 48), *(v130 + 72));
          swift_getKeyPath();
          v270 = MEMORY[0x277D84F90];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGSgMd);
          type metadata accessor for DBSuggestion();
          lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
          dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

          *(v130 + 40) = 0;
          ObservationRegistrar.init()();
          v132 = v262;
          v227(v262, v128, v265);
          (*(v267 + 56))(v132, 0, 1, v265);
          v270 = v130;
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, v226);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

          outlined destroy of UTType?(v132, &_s10Foundation4UUIDVSgMd);
          v270 = v130;
          v134 = swift_getKeyPath();
          MEMORY[0x28223BE20](v134);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

          v270 = v130;
          v135 = swift_getKeyPath();
          MEMORY[0x28223BE20](v135);
          v136 = v254;
          v137 = v259;
          outlined copy of Data._Representation(v254, v259);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          outlined consume of Data._Representation(v136, v137);

          v270 = v130;
          v138 = swift_getKeyPath();
          MEMORY[0x28223BE20](v138);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

          v270 = v130;
          v139 = swift_getKeyPath();
          MEMORY[0x28223BE20](v139);
          v140 = v235;
          v141 = v234;
          outlined copy of Data?(v235, v234);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          outlined consume of Data?(v140, v141);

          v270 = v130;
          v142 = swift_getKeyPath();
          MEMORY[0x28223BE20](v142);
          v143 = v265;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

          v144 = v239;
          swift_beginAccess();
          *v144 = countAndFlagsBits;
          *(v130 + 32) = object;

          DBAssetData.refreshAssetLoaded()();
          outlined consume of Data._Representation(v251, v250);
          outlined consume of Data?(v140, v141);
          outlined consume of Data._Representation(v254, v259);
          v145 = *(v267 + 8);
          v145(v266, v143);
          outlined destroy of UTType?(v241, &_s10Foundation3URLVSgMd);
          v145(v243, v143);
          outlined destroy of UTType?(v242, &_s10Foundation3URLVSgMd);
          v146 = v264;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v270 = v146;
          v104 = v130;
          goto LABEL_31;
        }

LABEL_24:
        if (one-time initialization token for views != -1)
        {
          swift_once();
        }

        v120 = type metadata accessor for Logger();
        __swift_project_value_buffer(v120, static CommonLogger.views);
        v121 = Logger.logObject.getter();
        v122 = static os_log_type_t.error.getter();
        v123 = os_log_type_enabled(v121, v122);
        v124 = v264;
        if (v123)
        {
          v125 = swift_slowAlloc();
          *v125 = 0;
          _os_log_impl(&dword_21607C000, v121, v122, "[baseImage2DB] unexpectedly unhandled light", v125, 2u);
          MEMORY[0x21CE94770](v125, -1, -1);
        }

        v126 = v260;
        goto LABEL_32;
      }

      __break(1u);
    }

    else
    {
      v243 = URL.path.getter();
      v69 = v56[1];
      v229 = (v56 + 1);
      v228 = v69;
      v70 = (v69)(v51, v55);
      (*((*v54 & *v52) + 0xE8))(&v269, v70);
      LODWORD(v241) = v269;
      v71 = v56[7];
      v71(v259, 1, 1, v55);
      v72 = v251;
      UUID.init()();
      v71(v246, 1, 1, v55);
      (*(v248 + 13))(v247, *MEMORY[0x277CC91D8], v249);
      v73 = v250;
      v52 = v72;
      URL.init(filePath:directoryHint:relativeTo:)();
      v71(v73, 0, 1, v55);
      v74 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
      v75 = (v74 == 2) | v74;
      v76 = UUID.uuidString.getter();
      v268[0] = v241;
      v77 = v259;
      specialized static CloudSyncAssetData._fillInBlanks(id:sha256:size:inlineData:fileURL:fileExt:assetClass:blobFolderURL:allowLazyLoading:dryRun:)(v76, v78, 0, 0xF000000000000000, 0, 1, 0, 0xF000000000000000, &v270, v73, 0, 0, v268, v259, v75 & 1, 0);
      object = v270;
      v243 = v271;
      v242 = v272;
      v239 = v273;
      v235 = v274;
      v233 = v275;
      v234 = v276;

      v79 = v77;
      v80 = v254;
      outlined init with copy of DateInterval?(v79, v254, &_s10Foundation3URLVSgMd);
      if (v57(v80, 1, v55) == 1)
      {
        v81 = v265;
        outlined destroy of UTType?(v80, &_s10Foundation3URLVSgMd);
        countAndFlagsBits = 0;
        v231 = 0;
LABEL_18:
        v229 = *(v267 + 16);
        v229(v266, v52, v81);
        v85 = type metadata accessor for DBAssetData();
        v86 = swift_allocObject();
        *(v86 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI07DBAssetB0C_AGQo_Md);
        v87 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
        v270 = v85;
        v271 = v85;
        v272 = v87;
        v273 = v87;
        *(v86 + 80) = swift_getOpaqueTypeConformance2();
        __swift_allocate_boxed_opaque_existential_1((v86 + 48));
        static PersistentModel.createBackingData<A>()();
        *(v86 + 16) = 16843009;
        *(v86 + 20) = 257;
        *(v86 + 22) = 1;
        *(v86 + 32) = 0;
        *(v86 + 24) = 0;
        v254 = (v86 + 24);
        __swift_project_boxed_opaque_existential_1((v86 + 48), *(v86 + 72));
        swift_getKeyPath();
        v270 = MEMORY[0x277D84F90];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGSgMd);
        type metadata accessor for DBSuggestion();
        lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
        dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

        *(v86 + 40) = 0;
        ObservationRegistrar.init()();
        v88 = v262;
        v229(v262, v266, v81);
        (*(v267 + 56))(v88, 0, 1, v81);
        v270 = v86;
        v89 = swift_getKeyPath();
        MEMORY[0x28223BE20](v89);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        outlined destroy of UTType?(v88, &_s10Foundation4UUIDVSgMd);
        v270 = v86;
        v90 = swift_getKeyPath();
        MEMORY[0x28223BE20](v90);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        v270 = v86;
        v91 = swift_getKeyPath();
        MEMORY[0x28223BE20](v91);
        v92 = v243;
        v93 = v242;
        outlined copy of Data._Representation(v243, v242);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        outlined consume of Data._Representation(v92, v93);

        v270 = v86;
        v94 = swift_getKeyPath();
        MEMORY[0x28223BE20](v94);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        v270 = v86;
        v95 = swift_getKeyPath();
        MEMORY[0x28223BE20](v95);
        v96 = v239;
        v97 = v235;
        outlined copy of Data?(v239, v235);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        outlined consume of Data?(v96, v97);

        v270 = v86;
        v98 = swift_getKeyPath();
        MEMORY[0x28223BE20](v98);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        v99 = v254;
        swift_beginAccess();
        *v99 = countAndFlagsBits;
        *(v86 + 32) = v231;

        DBAssetData.refreshAssetLoaded()();
        outlined consume of Data?(v96, v97);
        outlined consume of Data._Representation(v243, v242);
        v100 = *(v267 + 8);
        v101 = v265;
        v100(v266, v265);
        outlined destroy of UTType?(v250, &_s10Foundation3URLVSgMd);
        v100(v251, v101);
        outlined destroy of UTType?(v259, &_s10Foundation3URLVSgMd);
        v102 = v264;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v270 = v102;
        v104 = v86;
LABEL_31:
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v104, 0x746867696C2D2DLL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
        v124 = v270;
        v52 = v257;
        v65 = v256;
        v126 = v260;
        v64 = MEMORY[0x277D85000];
LABEL_32:
        (*((*v64 & *v52) + 0xE0))();
        if (v261(v126, 1, v65) != 1)
        {
          v254 = 0;
          v264 = v124;
          URL.path.getter();
          v260 = v150;
          v151 = v252;
          v152 = v252[1];
          v243 = (v252 + 1);
          v242 = v152;
          v153 = (v152)(v126, v65);
          (*((*v64 & *v52) + 0xE8))(&v269, v153);
          v154 = v269;
          v155 = *(v151 + 56);
          v156 = v245;
          v155(v245, 1, 1, v65);
          UUID.init()();
          v155(v246, 1, 1, v65);
          (*(v248 + 13))(v247, *MEMORY[0x277CC91D8], v249);
          v157 = v244;
          URL.init(filePath:directoryHint:relativeTo:)();
          v155(v157, 0, 1, v65);
          v158 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
          v159 = (v158 == 2) | v158;
          v160 = UUID.uuidString.getter();
          LODWORD(v250) = v154;
          v277 = v154;
          specialized static CloudSyncAssetData._fillInBlanks(id:sha256:size:inlineData:fileURL:fileExt:assetClass:blobFolderURL:allowLazyLoading:dryRun:)(v160, v161, 0, 0xF000000000000000, 0, 1, 0, 0xF000000000000000, &v270, v157, 0, 0, &v277, v156, v159 & 1, 0);
          v248 = v270;
          v260 = v271;
          v259 = v272;
          v255 = v273;
          v252 = v274;
          v249 = v275;
          v251 = v276;

          v162 = v253;
          outlined init with copy of DateInterval?(v156, v253, &_s10Foundation3URLVSgMd);
          if (v261(v162, 1, v65) == 1)
          {
            outlined destroy of UTType?(v162, &_s10Foundation3URLVSgMd);
            v263 = 0;
            v261 = 0;
          }

          else
          {
            v163 = URL.path(percentEncoded:)(1);
            v263 = v163._countAndFlagsBits;
            v261 = v163._object;
            (v242)(v162, v65);
          }

          v253 = *(v267 + 16);
          v164 = v265;
          (v253)(v266, v258, v265);
          v165 = type metadata accessor for DBAssetData();
          v166 = swift_allocObject();
          *(v166 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI07DBAssetB0C_AGQo_Md);
          v247 = type metadata accessor for DBAssetData;
          v167 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
          v270 = v165;
          v271 = v165;
          v272 = v167;
          v273 = v167;
          *(v166 + 80) = swift_getOpaqueTypeConformance2();
          __swift_allocate_boxed_opaque_existential_1((v166 + 48));
          static PersistentModel.createBackingData<A>()();
          *(v166 + 16) = 16843009;
          *(v166 + 20) = 257;
          *(v166 + 22) = 1;
          *(v166 + 32) = 0;
          *(v166 + 24) = 0;
          v256 = (v166 + 24);
          __swift_project_boxed_opaque_existential_1((v166 + 48), *(v166 + 72));
          swift_getKeyPath();
          v270 = MEMORY[0x277D84F90];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGSgMd);
          type metadata accessor for DBSuggestion();
          lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
          dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

          *(v166 + 40) = 0;
          ObservationRegistrar.init()();
          v168 = v262;
          (v253)(v262, v266, v164);
          (*(v267 + 56))(v168, 0, 1, v164);
          v270 = v166;
          v169 = swift_getKeyPath();
          MEMORY[0x28223BE20](v169);
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, v247);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

          outlined destroy of UTType?(v168, &_s10Foundation4UUIDVSgMd);
          v270 = v166;
          v170 = swift_getKeyPath();
          MEMORY[0x28223BE20](v170);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

          v270 = v166;
          v171 = swift_getKeyPath();
          MEMORY[0x28223BE20](v171);
          v172 = v260;
          v173 = v259;
          outlined copy of Data._Representation(v260, v259);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          outlined consume of Data._Representation(v172, v173);

          v270 = v166;
          v174 = swift_getKeyPath();
          MEMORY[0x28223BE20](v174);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

          v270 = v166;
          v175 = swift_getKeyPath();
          MEMORY[0x28223BE20](v175);
          v176 = v255;
          v177 = v252;
          outlined copy of Data?(v255, v252);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          outlined consume of Data?(v176, v177);

          v270 = v166;
          v178 = swift_getKeyPath();
          MEMORY[0x28223BE20](v178);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

          v179 = v256;
          swift_beginAccess();
          *v179 = v263;
          *(v166 + 32) = v261;

          DBAssetData.refreshAssetLoaded()();
          outlined consume of Data?(v176, v177);
          outlined consume of Data._Representation(v260, v259);
          v180 = *(v267 + 8);
          v181 = v265;
          v180(v266, v265);
          outlined destroy of UTType?(v244, &_s10Foundation3URLVSgMd);
          v180(v258, v181);
          outlined destroy of UTType?(v245, &_s10Foundation3URLVSgMd);
          v182 = v264;
          v183 = swift_isUniquelyReferenced_nonNull_native();
          v269 = v182;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v166, 0x6B7261642D2DLL, 0xE600000000000000, v183);

          return v269;
        }

        v147 = outlined destroy of UTType?(v126, &_s10Foundation3URLVSgMd);
        result = (*((*v64 & *v52) + 0xC0))(v147);
        if (v148 >> 60 == 15)
        {
LABEL_51:
          if (one-time initialization token for views != -1)
          {
            swift_once();
          }

          v199 = type metadata accessor for Logger();
          __swift_project_value_buffer(v199, static CommonLogger.views);
          v200 = Logger.logObject.getter();
          v201 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v200, v201))
          {
            v202 = swift_slowAlloc();
            *v202 = 0;
            _os_log_impl(&dword_21607C000, v200, v201, "[baseImage2DB] no dark", v202, 2u);
            MEMORY[0x21CE94770](v202, -1, -1);
          }

          return v124;
        }

        v149 = v148 >> 62;
        if ((v148 >> 62) <= 1)
        {
          if (!v149)
          {
            if (!BYTE6(v148))
            {
              goto LABEL_50;
            }

            goto LABEL_46;
          }

          if (!__OFSUB__(HIDWORD(result), result))
          {
            if (HIDWORD(result) - result < 1)
            {
              goto LABEL_50;
            }

LABEL_46:
            v254 = 0;
            v264 = v124;
            v188 = v148;
            v189 = result;
            (*((*v64 & *v52) + 0xE8))(&v269);
            v190 = v269;
            v191 = v252[7];
            v192 = v65;
            v193 = v238;
            v191(v238, 1, 1, v192);
            outlined copy of Data._Representation(v189, v188);
            UUID.init()();
            v194 = v237;
            v191(v237, 1, 1, v192);
            v195 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
            LOBYTE(v191) = (v195 == 2) | v195;
            v196 = UUID.uuidString.getter();
            LODWORD(v248) = v190;
            v277 = v190;
            v255 = v189;
            v258 = v188;
            specialized static CloudSyncAssetData._fillInBlanks(id:sha256:size:inlineData:fileURL:fileExt:assetClass:blobFolderURL:allowLazyLoading:dryRun:)(v196, v197, 0, 0xF000000000000000, 0, 1, v189, v188, &v270, v194, 0, 0, &v277, v193, v191 & 1, 0);
            v247 = v270;
            v260 = v271;
            v259 = v272;
            v253 = v273;
            v251 = v274;
            v249 = v275;
            v250 = v276;

            v198 = v236;
            outlined init with copy of DateInterval?(v193, v236, &_s10Foundation3URLVSgMd);
            if (v261(v198, 1, v192) == 1)
            {
              outlined destroy of UTType?(v198, &_s10Foundation3URLVSgMd);
              v263 = 0;
              v261 = 0;
            }

            else
            {
              v203 = URL.path(percentEncoded:)(1);
              v263 = v203._countAndFlagsBits;
              v261 = v203._object;
              (v252[1])(v198, v192);
            }

            v252 = *(v267 + 16);
            v204 = v265;
            (v252)(v266, v240, v265);
            v205 = type metadata accessor for DBAssetData();
            v206 = swift_allocObject();
            *(v206 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI07DBAssetB0C_AGQo_Md);
            v246 = type metadata accessor for DBAssetData;
            v207 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
            v270 = v205;
            v271 = v205;
            v272 = v207;
            v273 = v207;
            *(v206 + 80) = swift_getOpaqueTypeConformance2();
            __swift_allocate_boxed_opaque_existential_1((v206 + 48));
            static PersistentModel.createBackingData<A>()();
            *(v206 + 16) = 16843009;
            *(v206 + 20) = 257;
            *(v206 + 22) = 1;
            *(v206 + 32) = 0;
            *(v206 + 24) = 0;
            v256 = (v206 + 24);
            __swift_project_boxed_opaque_existential_1((v206 + 48), *(v206 + 72));
            swift_getKeyPath();
            v270 = MEMORY[0x277D84F90];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGSgMd);
            type metadata accessor for DBSuggestion();
            lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
            dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

            *(v206 + 40) = 0;
            ObservationRegistrar.init()();
            v208 = v262;
            (v252)(v262, v266, v204);
            (*(v267 + 56))(v208, 0, 1, v204);
            v270 = v206;
            v209 = swift_getKeyPath();
            MEMORY[0x28223BE20](v209);
            lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, v246);
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

            outlined destroy of UTType?(v208, &_s10Foundation4UUIDVSgMd);
            v270 = v206;
            v210 = swift_getKeyPath();
            MEMORY[0x28223BE20](v210);
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

            v270 = v206;
            v211 = swift_getKeyPath();
            MEMORY[0x28223BE20](v211);
            v212 = v260;
            v213 = v259;
            outlined copy of Data._Representation(v260, v259);
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
            outlined consume of Data._Representation(v212, v213);

            v270 = v206;
            v214 = swift_getKeyPath();
            MEMORY[0x28223BE20](v214);
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

            v270 = v206;
            v215 = swift_getKeyPath();
            MEMORY[0x28223BE20](v215);
            v216 = v253;
            v217 = v251;
            outlined copy of Data?(v253, v251);
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
            outlined consume of Data?(v216, v217);

            v270 = v206;
            v218 = swift_getKeyPath();
            MEMORY[0x28223BE20](v218);
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

            v219 = v256;
            swift_beginAccess();
            *v219 = v263;
            *(v206 + 32) = v261;

            DBAssetData.refreshAssetLoaded()();
            v220 = v255;
            v221 = v258;
            outlined consume of Data?(v255, v258);
            outlined consume of Data?(v216, v217);
            outlined consume of Data._Representation(v260, v259);
            v222 = *(v267 + 8);
            v223 = v265;
            v222(v266, v265);
            outlined destroy of UTType?(v237, &_s10Foundation3URLVSgMd);
            v222(v240, v223);
            outlined destroy of UTType?(v238, &_s10Foundation3URLVSgMd);

            v224 = v264;
            v225 = swift_isUniquelyReferenced_nonNull_native();
            v269 = v224;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v206, 0x6B7261642D2DLL, 0xE600000000000000, v225);
            outlined consume of Data?(v220, v221);

            return v269;
          }

          goto LABEL_61;
        }

        if (v149 != 2)
        {
LABEL_50:
          outlined consume of Data?(result, v148);
          goto LABEL_51;
        }

        v185 = *(result + 16);
        v184 = *(result + 24);
        v186 = __OFSUB__(v184, v185);
        v187 = v184 - v185;
        if (!v186)
        {
          if (v187 >= 1)
          {
            goto LABEL_46;
          }

          goto LABEL_50;
        }

LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        return result;
      }
    }

    v81 = v265;
    v84 = URL.path(percentEncoded:)(1);
    countAndFlagsBits = v84._countAndFlagsBits;
    v231 = v84._object;
    (v228)(v80, v55);
    goto LABEL_18;
  }

  v68 = MEMORY[0x277D84F90];

  return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(v68);
}

unint64_t lazy protocol witness table accessor for type DBAssetModelType.CodingKeys and conformance DBAssetModelType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModelType.CodingKeys and conformance DBAssetModelType.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.CodingKeys and conformance DBAssetModelType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.CodingKeys and conformance DBAssetModelType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.CodingKeys and conformance DBAssetModelType.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.CodingKeys and conformance DBAssetModelType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.CodingKeys and conformance DBAssetModelType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.CodingKeys and conformance DBAssetModelType.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.CodingKeys and conformance DBAssetModelType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.CodingKeys and conformance DBAssetModelType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.CodingKeys and conformance DBAssetModelType.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.CodingKeys and conformance DBAssetModelType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.CodingKeys and conformance DBAssetModelType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModelType.PosterCodingKeys and conformance DBAssetModelType.PosterCodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModelType.PosterCodingKeys and conformance DBAssetModelType.PosterCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.PosterCodingKeys and conformance DBAssetModelType.PosterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.PosterCodingKeys and conformance DBAssetModelType.PosterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.PosterCodingKeys and conformance DBAssetModelType.PosterCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.PosterCodingKeys and conformance DBAssetModelType.PosterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.PosterCodingKeys and conformance DBAssetModelType.PosterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.PosterCodingKeys and conformance DBAssetModelType.PosterCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.PosterCodingKeys and conformance DBAssetModelType.PosterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.PosterCodingKeys and conformance DBAssetModelType.PosterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.PosterCodingKeys and conformance DBAssetModelType.PosterCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.PosterCodingKeys and conformance DBAssetModelType.PosterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.PosterCodingKeys and conformance DBAssetModelType.PosterCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModelType.ContactCodingKeys and conformance DBAssetModelType.ContactCodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModelType.ContactCodingKeys and conformance DBAssetModelType.ContactCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.ContactCodingKeys and conformance DBAssetModelType.ContactCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.ContactCodingKeys and conformance DBAssetModelType.ContactCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.ContactCodingKeys and conformance DBAssetModelType.ContactCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.ContactCodingKeys and conformance DBAssetModelType.ContactCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.ContactCodingKeys and conformance DBAssetModelType.ContactCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.ContactCodingKeys and conformance DBAssetModelType.ContactCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.ContactCodingKeys and conformance DBAssetModelType.ContactCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.ContactCodingKeys and conformance DBAssetModelType.ContactCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.ContactCodingKeys and conformance DBAssetModelType.ContactCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.ContactCodingKeys and conformance DBAssetModelType.ContactCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.ContactCodingKeys and conformance DBAssetModelType.ContactCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModelType.VideoCodingKeys and conformance DBAssetModelType.VideoCodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModelType.VideoCodingKeys and conformance DBAssetModelType.VideoCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.VideoCodingKeys and conformance DBAssetModelType.VideoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.VideoCodingKeys and conformance DBAssetModelType.VideoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.VideoCodingKeys and conformance DBAssetModelType.VideoCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.VideoCodingKeys and conformance DBAssetModelType.VideoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.VideoCodingKeys and conformance DBAssetModelType.VideoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.VideoCodingKeys and conformance DBAssetModelType.VideoCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.VideoCodingKeys and conformance DBAssetModelType.VideoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.VideoCodingKeys and conformance DBAssetModelType.VideoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.VideoCodingKeys and conformance DBAssetModelType.VideoCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.VideoCodingKeys and conformance DBAssetModelType.VideoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.VideoCodingKeys and conformance DBAssetModelType.VideoCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModelType.LivePhotoCodingKeys and conformance DBAssetModelType.LivePhotoCodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModelType.LivePhotoCodingKeys and conformance DBAssetModelType.LivePhotoCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.LivePhotoCodingKeys and conformance DBAssetModelType.LivePhotoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.LivePhotoCodingKeys and conformance DBAssetModelType.LivePhotoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.LivePhotoCodingKeys and conformance DBAssetModelType.LivePhotoCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.LivePhotoCodingKeys and conformance DBAssetModelType.LivePhotoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.LivePhotoCodingKeys and conformance DBAssetModelType.LivePhotoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.LivePhotoCodingKeys and conformance DBAssetModelType.LivePhotoCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.LivePhotoCodingKeys and conformance DBAssetModelType.LivePhotoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.LivePhotoCodingKeys and conformance DBAssetModelType.LivePhotoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.LivePhotoCodingKeys and conformance DBAssetModelType.LivePhotoCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.LivePhotoCodingKeys and conformance DBAssetModelType.LivePhotoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.LivePhotoCodingKeys and conformance DBAssetModelType.LivePhotoCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModelType.ReflectionCodingKeys and conformance DBAssetModelType.ReflectionCodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModelType.ReflectionCodingKeys and conformance DBAssetModelType.ReflectionCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.ReflectionCodingKeys and conformance DBAssetModelType.ReflectionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.ReflectionCodingKeys and conformance DBAssetModelType.ReflectionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.ReflectionCodingKeys and conformance DBAssetModelType.ReflectionCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.ReflectionCodingKeys and conformance DBAssetModelType.ReflectionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.ReflectionCodingKeys and conformance DBAssetModelType.ReflectionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.ReflectionCodingKeys and conformance DBAssetModelType.ReflectionCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.ReflectionCodingKeys and conformance DBAssetModelType.ReflectionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.ReflectionCodingKeys and conformance DBAssetModelType.ReflectionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.ReflectionCodingKeys and conformance DBAssetModelType.ReflectionCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.ReflectionCodingKeys and conformance DBAssetModelType.ReflectionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.ReflectionCodingKeys and conformance DBAssetModelType.ReflectionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModelType.PhotoCodingKeys and conformance DBAssetModelType.PhotoCodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModelType.PhotoCodingKeys and conformance DBAssetModelType.PhotoCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.PhotoCodingKeys and conformance DBAssetModelType.PhotoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.PhotoCodingKeys and conformance DBAssetModelType.PhotoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.PhotoCodingKeys and conformance DBAssetModelType.PhotoCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.PhotoCodingKeys and conformance DBAssetModelType.PhotoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.PhotoCodingKeys and conformance DBAssetModelType.PhotoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.PhotoCodingKeys and conformance DBAssetModelType.PhotoCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.PhotoCodingKeys and conformance DBAssetModelType.PhotoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.PhotoCodingKeys and conformance DBAssetModelType.PhotoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.PhotoCodingKeys and conformance DBAssetModelType.PhotoCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.PhotoCodingKeys and conformance DBAssetModelType.PhotoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.PhotoCodingKeys and conformance DBAssetModelType.PhotoCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModelType.MediaThirdPartyCodingKeys and conformance DBAssetModelType.MediaThirdPartyCodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModelType.MediaThirdPartyCodingKeys and conformance DBAssetModelType.MediaThirdPartyCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.MediaThirdPartyCodingKeys and conformance DBAssetModelType.MediaThirdPartyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.MediaThirdPartyCodingKeys and conformance DBAssetModelType.MediaThirdPartyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.MediaThirdPartyCodingKeys and conformance DBAssetModelType.MediaThirdPartyCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.MediaThirdPartyCodingKeys and conformance DBAssetModelType.MediaThirdPartyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.MediaThirdPartyCodingKeys and conformance DBAssetModelType.MediaThirdPartyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.MediaThirdPartyCodingKeys and conformance DBAssetModelType.MediaThirdPartyCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.MediaThirdPartyCodingKeys and conformance DBAssetModelType.MediaThirdPartyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.MediaThirdPartyCodingKeys and conformance DBAssetModelType.MediaThirdPartyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.MediaThirdPartyCodingKeys and conformance DBAssetModelType.MediaThirdPartyCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.MediaThirdPartyCodingKeys and conformance DBAssetModelType.MediaThirdPartyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.MediaThirdPartyCodingKeys and conformance DBAssetModelType.MediaThirdPartyCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModelType.MediaFirstPartyCodingKeys and conformance DBAssetModelType.MediaFirstPartyCodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModelType.MediaFirstPartyCodingKeys and conformance DBAssetModelType.MediaFirstPartyCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.MediaFirstPartyCodingKeys and conformance DBAssetModelType.MediaFirstPartyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.MediaFirstPartyCodingKeys and conformance DBAssetModelType.MediaFirstPartyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.MediaFirstPartyCodingKeys and conformance DBAssetModelType.MediaFirstPartyCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.MediaFirstPartyCodingKeys and conformance DBAssetModelType.MediaFirstPartyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.MediaFirstPartyCodingKeys and conformance DBAssetModelType.MediaFirstPartyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.MediaFirstPartyCodingKeys and conformance DBAssetModelType.MediaFirstPartyCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.MediaFirstPartyCodingKeys and conformance DBAssetModelType.MediaFirstPartyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.MediaFirstPartyCodingKeys and conformance DBAssetModelType.MediaFirstPartyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.MediaFirstPartyCodingKeys and conformance DBAssetModelType.MediaFirstPartyCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.MediaFirstPartyCodingKeys and conformance DBAssetModelType.MediaFirstPartyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.MediaFirstPartyCodingKeys and conformance DBAssetModelType.MediaFirstPartyCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModelType.StateOfMindCodingKeys and conformance DBAssetModelType.StateOfMindCodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModelType.StateOfMindCodingKeys and conformance DBAssetModelType.StateOfMindCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.StateOfMindCodingKeys and conformance DBAssetModelType.StateOfMindCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.StateOfMindCodingKeys and conformance DBAssetModelType.StateOfMindCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.StateOfMindCodingKeys and conformance DBAssetModelType.StateOfMindCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.StateOfMindCodingKeys and conformance DBAssetModelType.StateOfMindCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.StateOfMindCodingKeys and conformance DBAssetModelType.StateOfMindCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.StateOfMindCodingKeys and conformance DBAssetModelType.StateOfMindCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.StateOfMindCodingKeys and conformance DBAssetModelType.StateOfMindCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.StateOfMindCodingKeys and conformance DBAssetModelType.StateOfMindCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.StateOfMindCodingKeys and conformance DBAssetModelType.StateOfMindCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.StateOfMindCodingKeys and conformance DBAssetModelType.StateOfMindCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.StateOfMindCodingKeys and conformance DBAssetModelType.StateOfMindCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModelType.WorkoutCodingKeys and conformance DBAssetModelType.WorkoutCodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModelType.WorkoutCodingKeys and conformance DBAssetModelType.WorkoutCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.WorkoutCodingKeys and conformance DBAssetModelType.WorkoutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.WorkoutCodingKeys and conformance DBAssetModelType.WorkoutCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.WorkoutCodingKeys and conformance DBAssetModelType.WorkoutCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.WorkoutCodingKeys and conformance DBAssetModelType.WorkoutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.WorkoutCodingKeys and conformance DBAssetModelType.WorkoutCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.WorkoutCodingKeys and conformance DBAssetModelType.WorkoutCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.WorkoutCodingKeys and conformance DBAssetModelType.WorkoutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.WorkoutCodingKeys and conformance DBAssetModelType.WorkoutCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.WorkoutCodingKeys and conformance DBAssetModelType.WorkoutCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.WorkoutCodingKeys and conformance DBAssetModelType.WorkoutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.WorkoutCodingKeys and conformance DBAssetModelType.WorkoutCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModelType.MotionActivityCodingKeys and conformance DBAssetModelType.MotionActivityCodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModelType.MotionActivityCodingKeys and conformance DBAssetModelType.MotionActivityCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.MotionActivityCodingKeys and conformance DBAssetModelType.MotionActivityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.MotionActivityCodingKeys and conformance DBAssetModelType.MotionActivityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.MotionActivityCodingKeys and conformance DBAssetModelType.MotionActivityCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.MotionActivityCodingKeys and conformance DBAssetModelType.MotionActivityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.MotionActivityCodingKeys and conformance DBAssetModelType.MotionActivityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.MotionActivityCodingKeys and conformance DBAssetModelType.MotionActivityCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.MotionActivityCodingKeys and conformance DBAssetModelType.MotionActivityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.MotionActivityCodingKeys and conformance DBAssetModelType.MotionActivityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.MotionActivityCodingKeys and conformance DBAssetModelType.MotionActivityCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.MotionActivityCodingKeys and conformance DBAssetModelType.MotionActivityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.MotionActivityCodingKeys and conformance DBAssetModelType.MotionActivityCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModelType.MapCodingKeys and conformance DBAssetModelType.MapCodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModelType.MapCodingKeys and conformance DBAssetModelType.MapCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.MapCodingKeys and conformance DBAssetModelType.MapCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.MapCodingKeys and conformance DBAssetModelType.MapCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.MapCodingKeys and conformance DBAssetModelType.MapCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.MapCodingKeys and conformance DBAssetModelType.MapCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.MapCodingKeys and conformance DBAssetModelType.MapCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.MapCodingKeys and conformance DBAssetModelType.MapCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.MapCodingKeys and conformance DBAssetModelType.MapCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.MapCodingKeys and conformance DBAssetModelType.MapCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.MapCodingKeys and conformance DBAssetModelType.MapCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.MapCodingKeys and conformance DBAssetModelType.MapCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.MapCodingKeys and conformance DBAssetModelType.MapCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModelType.UnknownCodingKeys and conformance DBAssetModelType.UnknownCodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModelType.UnknownCodingKeys and conformance DBAssetModelType.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.UnknownCodingKeys and conformance DBAssetModelType.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.UnknownCodingKeys and conformance DBAssetModelType.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.UnknownCodingKeys and conformance DBAssetModelType.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.UnknownCodingKeys and conformance DBAssetModelType.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.UnknownCodingKeys and conformance DBAssetModelType.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.UnknownCodingKeys and conformance DBAssetModelType.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.UnknownCodingKeys and conformance DBAssetModelType.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.UnknownCodingKeys and conformance DBAssetModelType.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.UnknownCodingKeys and conformance DBAssetModelType.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.UnknownCodingKeys and conformance DBAssetModelType.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.UnknownCodingKeys and conformance DBAssetModelType.UnknownCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModelType.UnknownCodingKey and conformance DBAssetModelType.UnknownCodingKey()
{
  result = lazy protocol witness table cache variable for type DBAssetModelType.UnknownCodingKey and conformance DBAssetModelType.UnknownCodingKey;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.UnknownCodingKey and conformance DBAssetModelType.UnknownCodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.UnknownCodingKey and conformance DBAssetModelType.UnknownCodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.UnknownCodingKey and conformance DBAssetModelType.UnknownCodingKey;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.UnknownCodingKey and conformance DBAssetModelType.UnknownCodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.UnknownCodingKey and conformance DBAssetModelType.UnknownCodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType.UnknownCodingKey and conformance DBAssetModelType.UnknownCodingKey;
  if (!lazy protocol witness table cache variable for type DBAssetModelType.UnknownCodingKey and conformance DBAssetModelType.UnknownCodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType.UnknownCodingKey and conformance DBAssetModelType.UnknownCodingKey);
  }

  return result;
}

uint64_t specialized DBAssetModelType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7364973 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63416E6F69746F6DLL && a2 == 0xEE00797469766974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74756F6B726F77 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4D664F6574617473 && a2 == 0xEB00000000646E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726946616964656DLL && a2 == 0xEF79747261507473 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696854616964656DLL && a2 == 0xEF79747261506472 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F746F6870 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x697463656C666572 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x746F68506576696CLL && a2 == 0xE90000000000006FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6F65646976 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x746361746E6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x726574736F70 && a2 == 0xE600000000000000)
  {

    return 12;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

unint64_t lazy protocol witness table accessor for type DBAssetModelType._0CodingKey and conformance DBAssetModelType._0CodingKey()
{
  result = lazy protocol witness table cache variable for type DBAssetModelType._0CodingKey and conformance DBAssetModelType._0CodingKey;
  if (!lazy protocol witness table cache variable for type DBAssetModelType._0CodingKey and conformance DBAssetModelType._0CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType._0CodingKey and conformance DBAssetModelType._0CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType._0CodingKey and conformance DBAssetModelType._0CodingKey;
  if (!lazy protocol witness table cache variable for type DBAssetModelType._0CodingKey and conformance DBAssetModelType._0CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType._0CodingKey and conformance DBAssetModelType._0CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType._0CodingKey and conformance DBAssetModelType._0CodingKey;
  if (!lazy protocol witness table cache variable for type DBAssetModelType._0CodingKey and conformance DBAssetModelType._0CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType._0CodingKey and conformance DBAssetModelType._0CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelType._0CodingKey and conformance DBAssetModelType._0CodingKey;
  if (!lazy protocol witness table cache variable for type DBAssetModelType._0CodingKey and conformance DBAssetModelType._0CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelType._0CodingKey and conformance DBAssetModelType._0CodingKey);
  }

  return result;
}

unint64_t specialized DBAssetModelEnum.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBAssetModelEnum.init(rawValue:), v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized static DBAssetModelType.subscript.getter(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 >> 60;
  result = 0;
  switch(v2)
  {
    case 1:
      if (*(*((v1 & 0xFFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children) + 16))
      {
        result = 3;
      }

      else
      {
        result = 2;
      }

      break;
    case 2:
      result = 6;
      break;
    case 3:
      if (*(*((v1 & 0xFFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children) + 16))
      {
        result = 13;
      }

      else
      {
        result = 12;
      }

      break;
    case 4:
      result = 10;
      break;
    case 5:
      result = 4;
      break;
    case 6:
      result = 5;
      break;
    case 7:
    case 8:
      result = v2;
      break;
    case 9:
      result = 1;
      break;
    case 10:
      result = 11;
      break;
    case 11:
      return result;
    case 12:
      result = 9;
      break;
    default:
      result = 14;
      break;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModel.Style.CodingKeys and conformance DBAssetModel.Style.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.CodingKeys and conformance DBAssetModel.Style.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.CodingKeys and conformance DBAssetModel.Style.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.CodingKeys and conformance DBAssetModel.Style.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.CodingKeys and conformance DBAssetModel.Style.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.CodingKeys and conformance DBAssetModel.Style.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.CodingKeys and conformance DBAssetModel.Style.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.CodingKeys and conformance DBAssetModel.Style.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.CodingKeys and conformance DBAssetModel.Style.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.CodingKeys and conformance DBAssetModel.Style.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.CodingKeys and conformance DBAssetModel.Style.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.CodingKeys and conformance DBAssetModel.Style.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.CodingKeys and conformance DBAssetModel.Style.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModel.Style.FullAssetCodingKeys and conformance DBAssetModel.Style.FullAssetCodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.FullAssetCodingKeys and conformance DBAssetModel.Style.FullAssetCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.FullAssetCodingKeys and conformance DBAssetModel.Style.FullAssetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.FullAssetCodingKeys and conformance DBAssetModel.Style.FullAssetCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.FullAssetCodingKeys and conformance DBAssetModel.Style.FullAssetCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.FullAssetCodingKeys and conformance DBAssetModel.Style.FullAssetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.FullAssetCodingKeys and conformance DBAssetModel.Style.FullAssetCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.FullAssetCodingKeys and conformance DBAssetModel.Style.FullAssetCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.FullAssetCodingKeys and conformance DBAssetModel.Style.FullAssetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.FullAssetCodingKeys and conformance DBAssetModel.Style.FullAssetCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModel.Style.InterstitialListCodingKeys and conformance DBAssetModel.Style.InterstitialListCodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.InterstitialListCodingKeys and conformance DBAssetModel.Style.InterstitialListCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.InterstitialListCodingKeys and conformance DBAssetModel.Style.InterstitialListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.InterstitialListCodingKeys and conformance DBAssetModel.Style.InterstitialListCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.InterstitialListCodingKeys and conformance DBAssetModel.Style.InterstitialListCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.InterstitialListCodingKeys and conformance DBAssetModel.Style.InterstitialListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.InterstitialListCodingKeys and conformance DBAssetModel.Style.InterstitialListCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.InterstitialListCodingKeys and conformance DBAssetModel.Style.InterstitialListCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.InterstitialListCodingKeys and conformance DBAssetModel.Style.InterstitialListCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.InterstitialListCodingKeys and conformance DBAssetModel.Style.InterstitialListCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModel.Style.InterstitialCarouselCodingKeys and conformance DBAssetModel.Style.InterstitialCarouselCodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.InterstitialCarouselCodingKeys and conformance DBAssetModel.Style.InterstitialCarouselCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.InterstitialCarouselCodingKeys and conformance DBAssetModel.Style.InterstitialCarouselCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.InterstitialCarouselCodingKeys and conformance DBAssetModel.Style.InterstitialCarouselCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.InterstitialCarouselCodingKeys and conformance DBAssetModel.Style.InterstitialCarouselCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.InterstitialCarouselCodingKeys and conformance DBAssetModel.Style.InterstitialCarouselCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.InterstitialCarouselCodingKeys and conformance DBAssetModel.Style.InterstitialCarouselCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.InterstitialCarouselCodingKeys and conformance DBAssetModel.Style.InterstitialCarouselCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.InterstitialCarouselCodingKeys and conformance DBAssetModel.Style.InterstitialCarouselCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.InterstitialCarouselCodingKeys and conformance DBAssetModel.Style.InterstitialCarouselCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeCondensedThumbnailCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModel.Style.ExtraLargeThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeThumbnailCodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraLargeThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeThumbnailCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraLargeThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeThumbnailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraLargeThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeThumbnailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraLargeThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeThumbnailCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraLargeThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeThumbnailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraLargeThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeThumbnailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraLargeThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeThumbnailCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraLargeThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeThumbnailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraLargeThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraLargeThumbnailCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModel.Style.LargeThumbnailCodingKeys and conformance DBAssetModel.Style.LargeThumbnailCodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.LargeThumbnailCodingKeys and conformance DBAssetModel.Style.LargeThumbnailCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.LargeThumbnailCodingKeys and conformance DBAssetModel.Style.LargeThumbnailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.LargeThumbnailCodingKeys and conformance DBAssetModel.Style.LargeThumbnailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.LargeThumbnailCodingKeys and conformance DBAssetModel.Style.LargeThumbnailCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.LargeThumbnailCodingKeys and conformance DBAssetModel.Style.LargeThumbnailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.LargeThumbnailCodingKeys and conformance DBAssetModel.Style.LargeThumbnailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.LargeThumbnailCodingKeys and conformance DBAssetModel.Style.LargeThumbnailCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.LargeThumbnailCodingKeys and conformance DBAssetModel.Style.LargeThumbnailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.LargeThumbnailCodingKeys and conformance DBAssetModel.Style.LargeThumbnailCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModel.Style.MediumThumbnailCodingKeys and conformance DBAssetModel.Style.MediumThumbnailCodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.MediumThumbnailCodingKeys and conformance DBAssetModel.Style.MediumThumbnailCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.MediumThumbnailCodingKeys and conformance DBAssetModel.Style.MediumThumbnailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.MediumThumbnailCodingKeys and conformance DBAssetModel.Style.MediumThumbnailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.MediumThumbnailCodingKeys and conformance DBAssetModel.Style.MediumThumbnailCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.MediumThumbnailCodingKeys and conformance DBAssetModel.Style.MediumThumbnailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.MediumThumbnailCodingKeys and conformance DBAssetModel.Style.MediumThumbnailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.MediumThumbnailCodingKeys and conformance DBAssetModel.Style.MediumThumbnailCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.MediumThumbnailCodingKeys and conformance DBAssetModel.Style.MediumThumbnailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.MediumThumbnailCodingKeys and conformance DBAssetModel.Style.MediumThumbnailCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModel.Style.SmallThumbnailCodingKeys and conformance DBAssetModel.Style.SmallThumbnailCodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.SmallThumbnailCodingKeys and conformance DBAssetModel.Style.SmallThumbnailCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.SmallThumbnailCodingKeys and conformance DBAssetModel.Style.SmallThumbnailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.SmallThumbnailCodingKeys and conformance DBAssetModel.Style.SmallThumbnailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.SmallThumbnailCodingKeys and conformance DBAssetModel.Style.SmallThumbnailCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.SmallThumbnailCodingKeys and conformance DBAssetModel.Style.SmallThumbnailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.SmallThumbnailCodingKeys and conformance DBAssetModel.Style.SmallThumbnailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.SmallThumbnailCodingKeys and conformance DBAssetModel.Style.SmallThumbnailCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.SmallThumbnailCodingKeys and conformance DBAssetModel.Style.SmallThumbnailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.SmallThumbnailCodingKeys and conformance DBAssetModel.Style.SmallThumbnailCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModel.Style.ExtraSmallThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraSmallThumbnailCodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraSmallThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraSmallThumbnailCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraSmallThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraSmallThumbnailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraSmallThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraSmallThumbnailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraSmallThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraSmallThumbnailCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraSmallThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraSmallThumbnailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraSmallThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraSmallThumbnailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraSmallThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraSmallThumbnailCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraSmallThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraSmallThumbnailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.Style.ExtraSmallThumbnailCodingKeys and conformance DBAssetModel.Style.ExtraSmallThumbnailCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModel.RenderState.CodingKeys and conformance DBAssetModel.RenderState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModel.RenderState.CodingKeys and conformance DBAssetModel.RenderState.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.RenderState.CodingKeys and conformance DBAssetModel.RenderState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.RenderState.CodingKeys and conformance DBAssetModel.RenderState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.RenderState.CodingKeys and conformance DBAssetModel.RenderState.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.RenderState.CodingKeys and conformance DBAssetModel.RenderState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.RenderState.CodingKeys and conformance DBAssetModel.RenderState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.RenderState.CodingKeys and conformance DBAssetModel.RenderState.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.RenderState.CodingKeys and conformance DBAssetModel.RenderState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.RenderState.CodingKeys and conformance DBAssetModel.RenderState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.RenderState.CodingKeys and conformance DBAssetModel.RenderState.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.RenderState.CodingKeys and conformance DBAssetModel.RenderState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.RenderState.CodingKeys and conformance DBAssetModel.RenderState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModel.RenderState.FullyRenderedCodingKeys and conformance DBAssetModel.RenderState.FullyRenderedCodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModel.RenderState.FullyRenderedCodingKeys and conformance DBAssetModel.RenderState.FullyRenderedCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.RenderState.FullyRenderedCodingKeys and conformance DBAssetModel.RenderState.FullyRenderedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.RenderState.FullyRenderedCodingKeys and conformance DBAssetModel.RenderState.FullyRenderedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.RenderState.FullyRenderedCodingKeys and conformance DBAssetModel.RenderState.FullyRenderedCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.RenderState.FullyRenderedCodingKeys and conformance DBAssetModel.RenderState.FullyRenderedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.RenderState.FullyRenderedCodingKeys and conformance DBAssetModel.RenderState.FullyRenderedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.RenderState.FullyRenderedCodingKeys and conformance DBAssetModel.RenderState.FullyRenderedCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.RenderState.FullyRenderedCodingKeys and conformance DBAssetModel.RenderState.FullyRenderedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.RenderState.FullyRenderedCodingKeys and conformance DBAssetModel.RenderState.FullyRenderedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModel.RenderState.NotRenderedCodingKeys and conformance DBAssetModel.RenderState.NotRenderedCodingKeys()
{
  result = lazy protocol witness table cache variable for type DBAssetModel.RenderState.NotRenderedCodingKeys and conformance DBAssetModel.RenderState.NotRenderedCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.RenderState.NotRenderedCodingKeys and conformance DBAssetModel.RenderState.NotRenderedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.RenderState.NotRenderedCodingKeys and conformance DBAssetModel.RenderState.NotRenderedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.RenderState.NotRenderedCodingKeys and conformance DBAssetModel.RenderState.NotRenderedCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.RenderState.NotRenderedCodingKeys and conformance DBAssetModel.RenderState.NotRenderedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.RenderState.NotRenderedCodingKeys and conformance DBAssetModel.RenderState.NotRenderedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.RenderState.NotRenderedCodingKeys and conformance DBAssetModel.RenderState.NotRenderedCodingKeys;
  if (!lazy protocol witness table cache variable for type DBAssetModel.RenderState.NotRenderedCodingKeys and conformance DBAssetModel.RenderState.NotRenderedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.RenderState.NotRenderedCodingKeys and conformance DBAssetModel.RenderState.NotRenderedCodingKeys);
  }

  return result;
}

uint64_t specialized DBAssetModel.Style.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000021657A7B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7568546C6C616D73 && a2 == 0xEE006C69616E626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x68546D756964656DLL && a2 == 0xEF6C69616E626D75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756854656772616CLL && a2 == 0xEE006C69616E626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021657A7D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000021657A7F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x800000021657A810 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021657A830 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x657373416C6C7566 && a2 == 0xE900000000000074)
  {

    return 8;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t specialized DBAssetModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBAssetModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

unint64_t lazy protocol witness table accessor for type DBAssetModelEnum and conformance DBAssetModelEnum()
{
  result = lazy protocol witness table cache variable for type DBAssetModelEnum and conformance DBAssetModelEnum;
  if (!lazy protocol witness table cache variable for type DBAssetModelEnum and conformance DBAssetModelEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelEnum and conformance DBAssetModelEnum);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModelEnum and conformance DBAssetModelEnum;
  if (!lazy protocol witness table cache variable for type DBAssetModelEnum and conformance DBAssetModelEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModelEnum and conformance DBAssetModelEnum);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBAssetModel.ColorScheme and conformance DBAssetModel.ColorScheme()
{
  result = lazy protocol witness table cache variable for type DBAssetModel.ColorScheme and conformance DBAssetModel.ColorScheme;
  if (!lazy protocol witness table cache variable for type DBAssetModel.ColorScheme and conformance DBAssetModel.ColorScheme)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.ColorScheme and conformance DBAssetModel.ColorScheme);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBAssetModel.ColorScheme and conformance DBAssetModel.ColorScheme;
  if (!lazy protocol witness table cache variable for type DBAssetModel.ColorScheme and conformance DBAssetModel.ColorScheme)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBAssetModel.ColorScheme and conformance DBAssetModel.ColorScheme);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DBAssetModelType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x74 && *(a1 + 8))
  {
    return (*a1 + 116);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x73)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for DBAssetModelType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x73)
  {
    *result = a2 - 116;
    if (a3 >= 0x74)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x74)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DBAssetModelEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DBAssetModelEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata completion function for DBAssetModel()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DateInterval();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DBAssetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DBAssetModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DBAssetModel.AssetDataHelper(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DBAssetModel.AssetDataHelper(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DBAssetModel.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DBAssetModel.Style(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DBAssetModelType.UnknownCodingKey(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DBAssetModelType.UnknownCodingKey(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UUID) -> (@owned Data?)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UUID) -> (@owned DBAssetData?)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

unint64_t type metadata accessor for UIImage()
{
  result = lazy cache variable for type metadata for UIImage;
  if (!lazy cache variable for type metadata for UIImage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIImage);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MosaicSuggestionViewModel.isLastListItem.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_isLastListItem;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MosaicSuggestionViewModel.isLastListItem.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_isLastListItem;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MosaicSuggestionViewModel.__allocating_init(suggestion:client:)(char *a1, uint64_t a2)
{
  v5 = type metadata accessor for Client();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v74 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v74 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v74 - v22;
  v24 = OBJC_IVAR____TtC9MomentsUI10Suggestion_assets;
  v25 = *&a1[OBJC_IVAR____TtC9MomentsUI10Suggestion_assets];
  if (v25)
  {
    if (v25 >> 62)
    {
      v83 = OBJC_IVAR____TtC9MomentsUI10Suggestion_assets;
      v84 = v23;
      v60 = __CocoaSet.count.getter();
      v24 = v83;
      v23 = v84;
      if (v60 >= 1)
      {
        goto LABEL_4;
      }
    }

    else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_4:
      v82 = v2;
      v83 = v24;
      v86 = v16;
      v87 = v14;
      v81 = v10;
      v26 = *(v18 + 16);
      v84 = v23;
      v77 = v26;
      v78 = v18 + 16;
      v26(v23, &a1[OBJC_IVAR____TtC9MomentsUI10Suggestion_id], v17);
      v27 = *&a1[OBJC_IVAR____TtC9MomentsUI10Suggestion_title];
      v28 = MEMORY[0x277D85000];
      if (v27)
      {
        v29 = *((*MEMORY[0x277D85000] & *v27) + 0x58);
        v30 = v27;
        v31 = v29();
        v79 = v32;
        v80 = v31;
      }

      else
      {
        v79 = 0;
        v80 = 0;
      }

      v33 = *&a1[OBJC_IVAR____TtC9MomentsUI10Suggestion_subtitle];
      if (v33)
      {
        v34 = *((*v28 & *v33) + 0x58);
        v35 = v33;
        v36 = v34();
        v75 = v37;
        v76 = v36;
      }

      else
      {
        v75 = 0;
        v76 = 0;
      }

      v38 = *&a1[OBJC_IVAR____TtC9MomentsUI10Suggestion_dateRange];
      if (v38)
      {
        v39 = OBJC_IVAR____TtC9MomentsUI9DateRange_startDate;
        v40 = type metadata accessor for Date();
        v41 = *(v40 - 8);
        v85 = a2;
        v42 = v41;
        v74 = v7;
        v43 = *(v41 + 16);
        v44 = v86;
        v43(v86, v38 + v39, v40);
        v45 = *(v42 + 56);
        v45(v44, 0, 1, v40);
        v46 = v38 + OBJC_IVAR____TtC9MomentsUI9DateRange_endDate;
        v47 = v87;
        v43(v87, v46, v40);
        v7 = v74;
        v28 = MEMORY[0x277D85000];
        v45(v47, 0, 1, v40);
        a2 = v85;
      }

      else
      {
        v48 = type metadata accessor for Date();
        v49 = *(*(v48 - 8) + 56);
        v49(v86, 1, 1, v48);
        v49(v87, 1, 1, v48);
      }

      v50 = v81;
      v77(v81, &a1[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionID], v17);
      (*(v18 + 56))(v50, 0, 1, v17);
      v51 = *&a1[v83];
      v90 = a1[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionType];
      v89 = a1[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionSubType];
      v52 = *((*v28 & *a1) + 0xA8);

      v54 = v52(v53);
      v55 = *&a1[OBJC_IVAR____TtC9MomentsUI10Suggestion_prompt];
      outlined init with copy of Client(a2, v7);
      v88 = 0;
      v56 = *(v82 + 416);
      v57 = v55;
      BYTE2(v73) = 0;
      LOWORD(v73) = 0;
      v58 = v56(v84, v80, v79, v76, v75, v86, v87, v50, v51, &v90, &v89, v54, v55, v7, v73, &v88);

      outlined destroy of Client(a2);
      return v58;
    }
  }

  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  __swift_project_value_buffer(v61, static CommonLogger.viewModel);
  v62 = a1;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v85 = a2;
    v67 = v66;
    v91 = v66;
    *v65 = 136315138;
    (*(v18 + 16))(v21, &v62[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionID], v17);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v70 = v69;
    (*(v18 + 8))(v21, v17);
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, &v91);

    *(v65 + 4) = v71;
    _os_log_impl(&dword_21607C000, v63, v64, "[MosaicSuggestionViewModel] dropping suggestions, no assets, id=%s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    MEMORY[0x21CE94770](v67, -1, -1);
    MEMORY[0x21CE94770](v65, -1, -1);

    v72 = v85;
  }

  else
  {

    v72 = a2;
  }

  outlined destroy of Client(v72);
  return 0;
}

uint64_t MosaicSuggestionViewModel.__allocating_init(databaseID:title:subtitle:startDate:endDate:suggestionID:assets:suggestionType:suggestionSubType:suggestionRanking:prompt:client:isFullWidth:isListItem:isLastListItem:currentSegmentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 *a10, unsigned __int8 *a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17, _BYTE *a18)
{
  v73 = a8;
  v74 = a7;
  v64 = a5;
  v62 = a4;
  v60 = a3;
  v59 = a2;
  v72 = a14;
  LODWORD(v69) = a17;
  LODWORD(v68) = a16;
  LODWORD(v66) = a15;
  v67 = a18;
  v61 = a9;
  v20 = type metadata accessor for Client();
  MEMORY[0x28223BE20](v20 - 8);
  v75 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v58 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v76 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v58 - v28;
  v30 = type metadata accessor for UUID();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = swift_allocObject();
  v35 = *a11;
  v70 = *a10;
  v71 = v35;
  *(v34 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_isFullWidth) = v66;
  *(v34 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_isListItem) = v68;
  LOBYTE(v35) = *v67;
  *(v34 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_isLastListItem) = v69;
  *(v34 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_currentSegmentType) = v35;
  v36 = *(v31 + 16);
  v68 = a1;
  v36(v33, a1, v30);
  v66 = a6;
  outlined init with copy of DateInterval?(a6, v29, &_s10Foundation4DateVSgMd);
  v37 = v30;
  outlined init with copy of DateInterval?(v74, v76, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v73, v24, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of Client(v72, v75);
  UUID.init()();
  v38 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID;
  v69 = v31;
  (*(v31 + 56))(v34 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID, 1, 1, v30);
  v39 = (v34 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_title);
  *v39 = 0;
  v39[1] = 0;
  v40 = (v34 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_subtitle);
  *v40 = 0;
  v40[1] = 0;
  v65 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking;
  *(v34 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking) = 0;
  v63 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets;
  *(v34 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets) = 0;
  v67 = v33;
  v36((v34 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_databaseID), v33, v37);
  swift_beginAccess();
  v41 = v60;
  *v39 = v59;
  v39[1] = v41;
  swift_beginAccess();
  v42 = v64;
  *v40 = v62;
  v40[1] = v42;
  v43 = v61;
  v44 = v76;
  outlined init with copy of DateInterval?(v29, v34 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v44, v34 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_endDate, &_s10Foundation4DateVSgMd);
  swift_beginAccess();
  outlined assign with copy of UUID?(v24, v34 + v38);
  swift_endAccess();
  if (v43)
  {
    v45 = v72;
    v62 = v29;
    v64 = v24;
    v46 = v73;
    v47 = v74;
    v48 = v66;
    v49 = v68;

    v77[0] = specialized Array._copyToContiguousArray()(v50);
    specialized MutableCollection<>.sort(by:)(v77);

    outlined destroy of Client(v45);
    outlined destroy of UTType?(v46, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v47, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v48, &_s10Foundation4DateVSgMd);
    v51 = *(v69 + 8);
    v51(v49, v37);
    outlined destroy of UTType?(v64, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v76, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v62, &_s10Foundation4DateVSgMd);
    v51(v67, v37);
    v52 = v77[0];
  }

  else
  {
    outlined destroy of Client(v72);
    outlined destroy of UTType?(v73, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v74, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v66, &_s10Foundation4DateVSgMd);
    v53 = *(v69 + 8);
    v53(v68, v37);
    outlined destroy of UTType?(v24, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v44, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v29, &_s10Foundation4DateVSgMd);
    v53(v67, v37);
    v52 = 0;
  }

  v54 = v63;
  swift_beginAccess();
  *(v34 + v54) = v52;
  v55 = v71;
  *(v34 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionType) = v70;
  *(v34 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType) = v55;
  v56 = v65;
  swift_beginAccess();
  *(v34 + v56) = a12;
  outlined init with take of Client(v75, v34 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_client);
  *(v34 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_prompt) = a13;
  return v34;
}

uint64_t MosaicSuggestionViewModel.init(databaseID:title:subtitle:startDate:endDate:suggestionID:assets:suggestionType:suggestionSubType:suggestionRanking:prompt:client:isFullWidth:isListItem:isLastListItem:currentSegmentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, unint64_t a9, unsigned __int8 *a10, unsigned __int8 *a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, unsigned __int8 a16, char a17, _BYTE *a18)
{
  v75 = a8;
  v76 = a7;
  v63 = a5;
  v62 = a4;
  v61 = a3;
  v60 = a2;
  v74 = a14;
  LODWORD(v71) = a16;
  LODWORD(v67) = a15;
  v70 = a18;
  v64 = a9;
  v21 = type metadata accessor for Client();
  MEMORY[0x28223BE20](v21 - 8);
  v77 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v23 - 8);
  v57 = &v57 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v72 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v57 - v28;
  v73 = &v57 - v28;
  v30 = type metadata accessor for UUID();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *a10;
  v69 = *a11;
  *(v18 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_isFullWidth) = v67;
  *(v18 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_isListItem) = v71;
  LOBYTE(v32) = *v70;
  *(v18 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_isLastListItem) = a17;
  *(v18 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_currentSegmentType) = v32;
  v34 = *(v31 + 16);
  v71 = a1;
  v34(v33, a1, v30);
  v70 = a6;
  outlined init with copy of DateInterval?(a6, v29, &_s10Foundation4DateVSgMd);
  v35 = v72;
  outlined init with copy of DateInterval?(v76, v72, &_s10Foundation4DateVSgMd);
  v36 = v57;
  outlined init with copy of DateInterval?(v75, v57, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of Client(v74, v77);
  UUID.init()();
  v37 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID;
  v67 = v31;
  (*(v31 + 56))(v18 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID, 1, 1, v30);
  v38 = (v18 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_title);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v18 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_subtitle);
  *v39 = 0;
  v39[1] = 0;
  v65 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking;
  *(v18 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking) = 0;
  v58 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets;
  *(v18 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets) = 0;
  v66 = v33;
  v59 = v30;
  v34((v18 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_databaseID), v33, v30);
  swift_beginAccess();
  v40 = v61;
  *v38 = v60;
  v38[1] = v40;
  swift_beginAccess();
  v41 = v63;
  *v39 = v62;
  v39[1] = v41;
  v42 = v73;
  v43 = v36;
  outlined init with copy of DateInterval?(v73, v18 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v35, v18 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_endDate, &_s10Foundation4DateVSgMd);
  swift_beginAccess();
  outlined assign with copy of UUID?(v36, v18 + v37);
  swift_endAccess();
  if (v64)
  {
    v45 = v74;
    v44 = v75;
    v46 = v59;
    v47 = v76;
    v48 = v64;

    v78[0] = specialized Array._copyToContiguousArray()(v48);
    specialized MutableCollection<>.sort(by:)(v78);

    outlined destroy of Client(v45);
    outlined destroy of UTType?(v44, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v47, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v70, &_s10Foundation4DateVSgMd);
    v49 = *(v67 + 8);
    v49(v71, v46);
    outlined destroy of UTType?(v43, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v72, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v73, &_s10Foundation4DateVSgMd);
    v49(v66, v46);
    v50 = v78[0];
  }

  else
  {
    outlined destroy of Client(v74);
    outlined destroy of UTType?(v75, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v76, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v70, &_s10Foundation4DateVSgMd);
    v51 = *(v67 + 8);
    v52 = v59;
    v51(v71, v59);
    outlined destroy of UTType?(v43, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v35, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v42, &_s10Foundation4DateVSgMd);
    v51(v66, v52);
    v50 = 0;
  }

  v53 = v58;
  swift_beginAccess();
  *(v18 + v53) = v50;

  *(v18 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionType) = v68;
  *(v18 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType) = v69;
  v54 = v65;
  swift_beginAccess();
  v55 = *(v18 + v54);
  *(v18 + v54) = a12;

  outlined init with take of Client(v77, v18 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_client);
  *(v18 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_prompt) = a13;
  return v18;
}

uint64_t MosaicSuggestionViewModel.titleLabelString.getter()
{
  v1 = *v0;
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionType) == 7)
  {
    return (*(v1 + 440))();
  }

  result = (*(v1 + 208))();
  if (!v3)
  {
    return 0;
  }

  return result;
}

uint64_t MosaicSuggestionViewModel.subtitleLabelString.getter()
{
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static CommonLogger.views);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    v6 = SegmentType.asString.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v18);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_21607C000, v2, v3, "[subtitleLabelString] current segment: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x21CE94770](v5, -1, -1);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  v9 = *(v0 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionType);
  if (v9 == 12)
  {
    return (*(*v0 + 472))();
  }

  if (v9 == 7)
  {
    return (*(*v0 + 448))();
  }

  v11 = *(v0 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType);
  if (v11 == 65 || !specialized Sequence<>.contains(_:)(v11, &outlined read-only object #0 of MosaicSuggestionViewModel.isWeeklySummary.getter))
  {
    if ((*(v0 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_currentSegmentType) & 1) == 0)
    {
      return (*(*v0 + 488))();
    }

    result = (*(*v0 + 456))();
    if (!v17)
    {
      return (*(*v0 + 488))();
    }
  }

  else
  {
    type metadata accessor for MomentDateFormatter();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    v19._object = 0x800000021657A890;
    v14._countAndFlagsBits = 0xD000000000000012;
    v14._object = 0x800000021657A890;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v19._countAndFlagsBits = 0xD000000000000012;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v19)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  return result;
}

uint64_t MosaicSuggestionViewModel.photoMemoryTitle.getter()
{
  v1 = (*(*v0 + 208))();
  if (v2)
  {
    v3 = MEMORY[0x21CE91FC0](v1);

    v4 = [v3 copy];

    if (v4)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type String and conformance String();
      v5 = StringProtocol.components<A>(separatedBy:)();

      if (*(v5 + 16))
      {

        v6 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

        return v6;
      }
    }
  }

  return 0;
}

id MosaicSuggestionViewModel.photoMemorySubtitle.getter()
{
  v1 = (*(*v0 + 208))();
  if (!v2)
  {
    return 0;
  }

  v3 = MEMORY[0x21CE91FC0](v1);

  v4 = [v3 copy];

  if (v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type String and conformance String();
    v5 = StringProtocol.components<A>(separatedBy:)();

    v6 = *(v5 + 16);
    if (v6)
    {
      v4 = *(v5 + 16 + 16 * v6);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

char *MosaicSuggestionViewModel.assetTypeString.getter()
{
  v1 = type metadata accessor for NSFastEnumerationIterator();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v46 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (*(*v0 + 304))(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v44 = v1;
  *&v50 = MEMORY[0x277D84F90];
  v7 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
    goto LABEL_29;
  }

  v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v43 = v2;
  if (!v8)
  {
LABEL_30:
    v10 = MEMORY[0x277D84F90];
LABEL_31:

    v45 = [objc_allocWithZone(MEMORY[0x277CCA940]) init];
    if (v10 >> 62)
    {
      goto LABEL_44;
    }

    v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
LABEL_33:
      v19 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x21CE93180](v19, v10);
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v19 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v20 = *(v10 + 8 * v19 + 32);
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            v18 = __CocoaSet.count.getter();
            if (!v18)
            {
              break;
            }

            goto LABEL_33;
          }
        }

        v22 = v20;
        v23 = specialized AssetType.init(_:)(v22);
        if (v23 != 20)
        {
          LOBYTE(v50) = v23;
          [v45 addObject_];
          swift_unknownObjectRelease();
        }

        ++v19;
      }

      while (v21 != v18);
    }

    MEMORY[0x21CE92B90](v24);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator, MEMORY[0x277CC9178]);
    v25 = v44;
    dispatch thunk of IteratorProtocol.next()();
    v26 = MEMORY[0x277D84F90];
    while (v51)
    {
      outlined init with take of Any(&v50, v49);
      outlined init with copy of Any(v49, v48);
      if (swift_dynamicCast())
      {
        v48[0] = v47;
        v27 = [v45 countForObject_];
        swift_unknownObjectRelease();
        if (v27 <= 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        v29 = AssetType.assetTypeAsPluralString(count:includeCount:)(v28, 0);
        v30 = StaticString.description.getter();
        v32 = v31;
        v33 = [objc_opt_self() mainBundle];
        v52._object = v32;
        v34._countAndFlagsBits = 0;
        v34._object = 0xE000000000000000;
        v52._countAndFlagsBits = v30;
        v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v33, v34, v52);

        __swift_destroy_boxed_opaque_existential_1(v49);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
        }

        v37 = *(v26 + 2);
        v36 = *(v26 + 3);
        if (v37 >= v36 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v26);
        }

        *(v26 + 2) = v37 + 1;
        *&v26[16 * v37 + 32] = v35;
        v25 = v44;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v49);
      }

      dispatch thunk of IteratorProtocol.next()();
    }

    (*(v43 + 8))(v46, v25);
    *&v50 = v26;
    type metadata accessor for MosaicSuggestionViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v39 = [objc_opt_self() bundleForClass_];
    v53._object = 0xEF726F7461726170;
    v53._countAndFlagsBits = 0x657320616D6D6F63;
    v40._countAndFlagsBits = 8236;
    v40._object = 0xE200000000000000;
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v40, 0, v39, v41, v53);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v17 = BidirectionalCollection<>.joined(separator:)();

    return v17;
  }

LABEL_4:
  v9 = 0;
  v2 = v6 & 0xC000000000000001;
  v10 = MEMORY[0x277D84F90];
  while (2)
  {
    v11 = v9;
    while (1)
    {
      if (v2)
      {
        result = MEMORY[0x21CE93180](v11, v6);
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v11 >= *(v7 + 16))
        {
          goto LABEL_28;
        }

        result = *(v6 + 8 * v11 + 32);
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          v8 = __CocoaSet.count.getter();
          v43 = v2;
          if (!v8)
          {
            goto LABEL_30;
          }

          goto LABEL_4;
        }
      }

      v14 = *&result[OBJC_IVAR____TtC9MomentsUI5Asset_representations];
      if (v14)
      {
        if (v14 >> 62)
        {
          v45 = result;
          v12 = __CocoaSet.count.getter();
          result = v45;
          if (v12)
          {
            break;
          }

          goto LABEL_7;
        }

        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }
      }

LABEL_7:

      ++v11;
      if (v9 == v8)
      {
        goto LABEL_31;
      }
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = result;
      MEMORY[0x21CE93180](0, v14);
LABEL_21:

      MEMORY[0x21CE92260]();
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = v50;
      if (v9 == v8)
      {
        goto LABEL_31;
      }

      continue;
    }

    break;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = result;
    v16 = *(v14 + 32);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t MosaicSuggestionViewModel.timeRangeString.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v42 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - v12;
  outlined init with copy of DateInterval?(v0 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_endDate, v6, &_s10Foundation4DateVSgMd);
  v14 = *(v8 + 48);
  if (v14(v6, 1, v7) == 1)
  {
    outlined destroy of UTType?(v6, &_s10Foundation4DateVSgMd);
    return 0;
  }

  v45 = v11;
  v15 = *(v8 + 32);
  v15(v13, v6, v7);
  outlined init with copy of DateInterval?(v0 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v4, &_s10Foundation4DateVSgMd);
  if (v14(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    outlined destroy of UTType?(v4, &_s10Foundation4DateVSgMd);
    return 0;
  }

  v44 = v8;
  v16 = v45;
  v15(v45, v4, v7);
  Date.timeIntervalSince(_:)();
  if (fabs(v17) <= 86400.0)
  {
    v41 = *(v44 + 8);
    v41(v16, v7);
    v41(v13, v7);
    return 0;
  }

  v43 = v7;
  if (one-time initialization token for fullDateFormatter != -1)
  {
    swift_once();
  }

  v18 = static MomentDateFormatter.fullDateFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v20 = [v18 stringFromDate_];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  type metadata accessor for MosaicSuggestionViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = [objc_opt_self() bundleForClass_];
  v48._object = 0x8000000216577810;
  v26._countAndFlagsBits = 2108704;
  v26._object = 0xE300000000000000;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v48._countAndFlagsBits = 0xD000000000000034;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v48);

  v46 = v21;
  v47 = v23;

  MEMORY[0x21CE92100](v28._countAndFlagsBits, v28._object);

  v29 = v16;
  v30 = v46;
  v31 = v47;
  v32 = Date._bridgeToObjectiveC()().super.isa;
  v33 = [v18 stringFromDate_];

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v46 = v30;
  v47 = v31;

  MEMORY[0x21CE92100](v34, v36);

  v37 = v46;
  v38 = v43;
  v39 = *(v44 + 8);
  v39(v29, v43);
  v39(v13, v38);
  return v37;
}

uint64_t MosaicSuggestionViewModel.thematicSummaryDateString.getter()
{
  v1 = type metadata accessor for Calendar.Component();
  v128 = *(v1 - 8);
  v129 = v1;
  MEMORY[0x28223BE20](v1);
  v127 = &v117 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Calendar();
  v131 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v130 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v117 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v126 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v124 = &v117 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v125 = &v117 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v123 = &v117 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v117 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v117 - v24;
  outlined init with copy of DateInterval?(v0 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_endDate, v10, &_s10Foundation4DateVSgMd);
  v26 = *(v12 + 48);
  if (v26(v10, 1, v11) == 1)
  {
    v27 = v10;
LABEL_5:
    outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd);
    return 0;
  }

  v121 = v3;
  v122 = v23;
  v28 = *(v12 + 32);
  v28(v25, v10, v11);
  outlined init with copy of DateInterval?(v0 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v8, &_s10Foundation4DateVSgMd);
  if (v26(v8, 1, v11) == 1)
  {
    (*(v12 + 8))(v25, v11);
    v27 = v8;
    goto LABEL_5;
  }

  v118 = v0;
  v119 = v12;
  v30 = v122;
  v120 = v11;
  v28(v122, v8, v11);
  v31 = v30;
  v32 = v130;
  static Calendar.current.getter();
  v33 = Calendar.isDate(_:inSameDayAs:)();
  v34 = *(v131 + 1);
  v35 = v121;
  v34(v32, v121);
  if ((v33 & 1) == 0)
  {
    static Calendar.current.getter();
    v41 = v25;
    v43 = v127;
    v42 = v128;
    v44 = v129;
    (*(v128 + 104))(v127, *MEMORY[0x277CC9998], v129);
    v45 = Calendar.isDate(_:equalTo:toGranularity:)();
    (*(v42 + 8))(v43, v44);
    v34(v32, v35);
    if ((v45 & 1) == 0)
    {
      Date.timeIntervalSinceReferenceDate.getter();
      v65 = v64;
      Date.timeIntervalSinceReferenceDate.getter();
      v67 = v41;
      if (v65 - v66 >= 18144000.0)
      {
        v68 = v120;
        if (one-time initialization token for viewModel != -1)
        {
          swift_once();
        }

        v89 = type metadata accessor for Logger();
        __swift_project_value_buffer(v89, static CommonLogger.viewModel);
        v90 = v119;
        v91 = *(v119 + 16);
        v92 = v124;
        v91(v124, v31, v68);
        v93 = v126;
        v91(v126, v67, v68);
        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v131 = v67;
          v132 = v130;
          *v96 = 136446722;
          *(v96 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000021657A8F0, &v132);
          *(v96 + 12) = 2080;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
          v97 = v93;
          v98 = dispatch thunk of CustomStringConvertible.description.getter();
          v100 = v99;
          v101 = v92;
          v82 = *(v90 + 8);
          v82(v101, v120);
          v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v100, &v132);

          *(v96 + 14) = v102;
          *(v96 + 22) = 2080;
          v68 = v120;
          v103 = dispatch thunk of CustomStringConvertible.description.getter();
          v105 = v104;
          v82(v97, v68);
          v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v105, &v132);

          *(v96 + 24) = v106;
          _os_log_impl(&dword_21607C000, v94, v95, "MosaicSuggestionViewModel.%{public}s start date (%s) and end date (%s) are apart by more than 30 days. Use 'Over the last few months' time substring", v96, 0x20u);
          v107 = v130;
          swift_arrayDestroy();
          v67 = v131;
          MEMORY[0x21CE94770](v107, -1, -1);
          MEMORY[0x21CE94770](v96, -1, -1);
        }

        else
        {

          v113 = v92;
          v82 = *(v90 + 8);
          v82(v93, v68);
          v82(v113, v68);
        }

        v109 = 0x800000021657A8D0;
        type metadata accessor for MosaicSuggestionViewModel();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v111 = [objc_opt_self() bundleForClass_];
        v112 = 0xD000000000000018;
      }

      else
      {
        v68 = v120;
        if (one-time initialization token for viewModel != -1)
        {
          swift_once();
        }

        v69 = type metadata accessor for Logger();
        __swift_project_value_buffer(v69, static CommonLogger.viewModel);
        v70 = v119;
        v71 = *(v119 + 16);
        v72 = v123;
        v71(v123, v31, v68);
        v73 = v125;
        v71(v125, v67, v68);
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v131 = v67;
          v132 = v130;
          *v76 = 136446722;
          *(v76 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000021657A8F0, &v132);
          *(v76 + 12) = 2080;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
          v77 = v73;
          v78 = dispatch thunk of CustomStringConvertible.description.getter();
          v80 = v79;
          v81 = v72;
          v82 = *(v70 + 8);
          v82(v81, v120);
          v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v132);

          *(v76 + 14) = v83;
          *(v76 + 22) = 2080;
          v68 = v120;
          v84 = dispatch thunk of CustomStringConvertible.description.getter();
          v86 = v85;
          v82(v77, v68);
          v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v86, &v132);

          *(v76 + 24) = v87;
          _os_log_impl(&dword_21607C000, v74, v75, "MosaicSuggestionViewModel.%{public}s start date (%s) is last month and start and end dates (%s) are from different months. Use 'Over the last month' time substring", v76, 0x20u);
          v88 = v130;
          swift_arrayDestroy();
          v67 = v131;
          MEMORY[0x21CE94770](v88, -1, -1);
          MEMORY[0x21CE94770](v76, -1, -1);
        }

        else
        {

          v108 = v72;
          v82 = *(v70 + 8);
          v82(v73, v68);
          v82(v108, v68);
        }

        v109 = 0x800000021657A910;
        type metadata accessor for MosaicSuggestionViewModel();
        v110 = swift_getObjCClassFromMetadata();
        v111 = [objc_opt_self() bundleForClass_];
        v112 = 0xD000000000000013;
      }

      v133._object = v109;
      v115 = v109;
      v116._countAndFlagsBits = 0;
      v116._object = 0xE000000000000000;
      v133._countAndFlagsBits = v112;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v112, 0, v111, v116, v133)._countAndFlagsBits;

      v82(v122, v68);
      v82(v67, v68);
      return countAndFlagsBits;
    }

    v46 = v32;
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static CommonLogger.viewModel);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    v50 = os_log_type_enabled(v48, v49);
    v38 = v120;
    if (v50)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v132 = v52;
      *v51 = 136446210;
      *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000021657A8F0, &v132);
      _os_log_impl(&dword_21607C000, v48, v49, "MosaicSuggestionViewModel.%{public}s start date and end date are from the same month. Use 'Days in {month}' format", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      v53 = v52;
      v31 = v122;
      MEMORY[0x21CE94770](v53, -1, -1);
      v54 = v51;
      v35 = v121;
      MEMORY[0x21CE94770](v54, -1, -1);
    }

    static Calendar.current.getter();
    countAndFlagsBits = Date.daysInMonthString(calendar:)();
    v56 = v55;
    v57 = (v34)(v46, v35);
    if (!v56)
    {
      countAndFlagsBits = (*(*v118 + 488))(v57);
    }

    v39 = *(v119 + 8);
    v39(v31, v38);
    v40 = v41;
LABEL_17:
    v39(v40, v38);
    return countAndFlagsBits;
  }

  Date.timeIntervalSinceNow.getter();
  if (fabs(v36) < 604800.0)
  {
    countAndFlagsBits = Date.getRelativeDate()()._countAndFlagsBits;
    v38 = v120;
    v39 = *(v119 + 8);
    v39(v31, v120);
    v40 = v25;
    goto LABEL_17;
  }

  v58 = v120;
  if (one-time initialization token for monthDateFormatter != -1)
  {
    swift_once();
  }

  v59 = static MomentDateFormatter.monthDateFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v61 = [v59 stringFromDate_];

  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = *(v119 + 8);
  v63(v31, v58);
  v63(v25, v58);
  return v62;
}

Swift::String __swiftcall MosaicSuggestionViewModel.relativeDateString()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  countAndFlagsBits = MosaicSuggestionViewModel.timeRangeString.getter();
  if (!object)
  {
    outlined init with copy of DateInterval?(v0 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v3, &_s10Foundation4DateVSgMd);
    v6 = type metadata accessor for Date();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v3, 1, v6) == 1)
    {
      outlined destroy of UTType?(v3, &_s10Foundation4DateVSgMd);
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

    else
    {
      v8 = Date.getRelativeDate()();
      (*(v7 + 8))(v3, v6);
      object = v8._object;
      countAndFlagsBits = v8._countAndFlagsBits;
    }
  }

  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::Bool __swiftcall MosaicSuggestionViewModel.isEligibleToBeUpranked()()
{
  if (!(*(*v0 + 304))())
  {
    return 0;
  }

  if (*(v0 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionType) == 7)
  {
    return 0;
  }

  v2 = *(*v0 + 504);

  return v2();
}

Swift::Bool __swiftcall MosaicSuggestionViewModel.isFullWidthEligible()()
{
  v1 = (*(*v0 + 304))();
  if (v1)
  {
    if (v1 >> 62)
    {
      v2 = __CocoaSet.count.getter();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    LOBYTE(v1) = v2 != 1;
  }

  return v1;
}

uint64_t MosaicSuggestionViewModel.hash(into:)()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v11 = dispatch thunk of Hashable.hash(into:)();
  (*(*v0 + 184))(v11);
  outlined init with copy of DateInterval?(v10, v8, &_s10Foundation4UUIDVSgMd);
  if ((*(v2 + 48))(v8, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v8, v1);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  outlined destroy of UTType?(v10, &_s10Foundation4UUIDVSgMd);
  Hasher._combine(_:)(*(v0 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_isFullWidth));
  Hasher._combine(_:)(*(v0 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_isListItem));
  v12 = (*(*v0 + 392))();
  Hasher._combine(_:)(v12 & 1);
  return MEMORY[0x21CE937C0](*(v0 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_currentSegmentType));
}

uint64_t MosaicSuggestionViewModel.__deallocating_deinit()
{
  SuggestionViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t MosaicSuggestionViewModel.copyWith(isFullWidthUpdated:isListItemUpdated:isLastListItemUpdated:currentSegmentTypeUpdated:)(int a1, int a2, int a3, unsigned __int8 *a4)
{
  v5 = v4;
  v64 = a3;
  v65 = a2;
  v63 = a1;
  v62 = *v5;
  v7 = type metadata accessor for Client();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v55 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v15;
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - v16;
  v18 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *a4;
  v22 = (*(v21 + 16))(v20, v5 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_databaseID);
  v23 = (*(*v5 + 208))(v22);
  v60 = v24;
  v61 = v23;
  v25 = (*(*v5 + 232))();
  v57 = v26;
  v58 = v25;
  outlined init with copy of DateInterval?(v5 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v17, &_s10Foundation4DateVSgMd);
  v27 = outlined init with copy of DateInterval?(v5 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_endDate, v15, &_s10Foundation4DateVSgMd);
  v28 = (*(*v5 + 184))(v27);
  v29 = (*(*v5 + 304))(v28);
  v69 = *(v5 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionType);
  v68 = *(v5 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType);
  v30 = (*(*v5 + 256))();
  v31 = *(v5 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_prompt);
  (*(*v5 + 280))(v31);
  v67 = v59;
  BYTE2(v54) = v64;
  BYTE1(v54) = v65;
  LOBYTE(v54) = v63;
  v32 = (*(v62 + 416))(v20, v61, v60, v58, v57, v17, v56, v55, v29, &v69, &v68, v30, v31, v9, v54, &v67);
  v33 = *(*v32 + 352);

  v34 = v33();

  v36 = *(*v5 + 352);
  if (v34 == v36(v35))
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static CommonLogger.viewModel);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 134218240;
      *(v40 + 4) = v33();

      *(v40 + 12) = 2048;
      *(v40 + 14) = v36(v41);

      _os_log_impl(&dword_21607C000, v38, v39, "[MosaicSuggestionViewModel] equivalent, lhs hash=%ld, self hash=%ld", v40, 0x16u);
      MEMORY[0x21CE94770](v40, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static CommonLogger.viewModel);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v66 = v46;
      *v45 = 136315394;
      v47 = UUID.uuidString.getter();
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v66);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      v50 = UUID.uuidString.getter();
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v66);

      *(v45 + 14) = v52;
      _os_log_impl(&dword_21607C000, v43, v44, "[MosaicSuggestionViewModel] hash changed, oldID=%s, newID=%s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v46, -1, -1);
      MEMORY[0x21CE94770](v45, -1, -1);
    }

    return v32;
  }

  return v5;
}

uint64_t specialized static MosaicSuggestionViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v34 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v37 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v34 - v18;
  v20 = *(*a1 + 184);
  v35 = a1;
  v21 = v20(v17);
  v22 = *(*a2 + 184);
  v36 = a2;
  v22(v21);
  v23 = *(v8 + 56);
  outlined init with copy of DateInterval?(v19, v10, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of DateInterval?(v16, &v10[v23], &_s10Foundation4UUIDVSgMd);
  v24 = v5;
  v25 = *(v5 + 48);
  if (v25(v10, 1, v4) == 1)
  {
    outlined destroy of UTType?(v16, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v19, &_s10Foundation4UUIDVSgMd);
    if (v25(&v10[v23], 1, v4) == 1)
    {
      outlined destroy of UTType?(v10, &_s10Foundation4UUIDVSgMd);
      goto LABEL_8;
    }
  }

  else
  {
    outlined init with copy of DateInterval?(v10, v37, &_s10Foundation4UUIDVSgMd);
    if (v25(&v10[v23], 1, v4) != 1)
    {
      v27 = v34;
      (*(v24 + 32))(v34, &v10[v23], v4);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v28 = v37;
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *(v24 + 8);
      v30(v27, v4);
      outlined destroy of UTType?(v16, &_s10Foundation4UUIDVSgMd);
      outlined destroy of UTType?(v19, &_s10Foundation4UUIDVSgMd);
      v30(v28, v4);
      outlined destroy of UTType?(v10, &_s10Foundation4UUIDVSgMd);
      if ((v29 & 1) == 0)
      {
LABEL_11:
        v26 = 0;
        return v26 & 1;
      }

LABEL_8:
      v32 = v35;
      v31 = v36;
      if ((static UUID.== infix(_:_:)() & 1) != 0 && *(v32 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_isFullWidth) == *(v31 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_isFullWidth) && *(v32 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_isListItem) == *(v31 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_isListItem))
      {
        v26 = *(v32 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_currentSegmentType) ^ *(v31 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_currentSegmentType) ^ 1;
        return v26 & 1;
      }

      goto LABEL_11;
    }

    outlined destroy of UTType?(v16, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v19, &_s10Foundation4UUIDVSgMd);
    (*(v5 + 8))(v37, v4);
  }

  outlined destroy of UTType?(v10, &_s10Foundation4UUIDVSg_ADtMd);
  v26 = 0;
  return v26 & 1;
}

uint64_t type metadata accessor for MosaicSuggestionViewModel()
{
  result = type metadata singleton initialization cache for MosaicSuggestionViewModel;
  if (!type metadata singleton initialization cache for MosaicSuggestionViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      specialized _NativeDictionary._delete(at:)(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      specialized _NativeDictionary._delete(at:)(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    outlined destroy of UTType?(a1, &_s10Foundation9IndexPathVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return outlined destroy of UTType?(v7, &_s10Foundation9IndexPathVSgMd);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        specialized _NativeDictionary.copy()();
        v14 = v16;
      }

      result = specialized _NativeDictionary._delete(at:)(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t InterstitialSelectionTracker.assetGroupUUIDsByIndividualAssetUUID.didset()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v94 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v80 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v99 = &v80 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v90 = &v80 - v11;
  MEMORY[0x28223BE20](v10);
  v89 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_AC5valuetSgMd);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v88 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v80 - v16;
  swift_beginAccess();
  v81 = v0;
  v18 = *(v0 + 16);
  v19 = *(v18 + 64);
  v83 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v82 = (v20 + 63) >> 6;
  v96 = (v2 + 32);
  v92 = v2;
  v93 = (v2 + 8);
  v85 = v18;

  v23 = 0;
  v24 = MEMORY[0x277D84F98];
  v84 = xmmword_21658CA50;
  v91 = v17;
  v98 = (v2 + 16);
  v87 = v1;
  v95 = v7;
  if (!v22)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v97 = v24;
      v25 = v23;
LABEL_16:
      v28 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v29 = v85;
      v30 = v92;
      v31 = *(v92 + 72) * (v28 | (v25 << 6));
      v32 = *(v92 + 16);
      v33 = v89;
      v32(v89, *(v85 + 48) + v31, v1);
      v34 = v90;
      v32(v90, *(v29 + 56) + v31, v1);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_AC5valuetMd);
      v36 = *(v35 + 48);
      v37 = *(v30 + 32);
      v38 = v88;
      v37(v88, v33, v1);
      v37(&v38[v36], v34, v1);
      (*(*(v35 - 8) + 56))(v38, 0, 1, v35);
      v27 = v25;
      v39 = v38;
      v17 = v91;
      v24 = v97;
      v7 = v95;
LABEL_17:
      outlined init with take of URL?(v39, v17, &_s10Foundation4UUIDV3key_AC5valuetSgMd);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_AC5valuetMd);
      if ((*(*(v40 - 8) + 48))(v17, 1, v40) == 1)
      {

        *(v81 + 24) = v24;

        InterstitialSelectionTracker.individualAssetsUUIDsByGroupAssetUUID.didset();
      }

      v41 = *(v40 + 48);
      v42 = *v96;
      v1 = v87;
      (*v96)(v99, v17, v87);
      v42(v7, &v17[v41], v1);
      v43 = v24[2];
      v97 = v27;
      if (v43)
      {
        break;
      }

      v45 = *v98;
LABEL_23:
      v54 = v94;
      v55 = v7;
      v56 = v45;
      v45(v94, v55, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
      v57 = v92;
      v58 = *(v92 + 72);
      v59 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = v84;
      v86 = v56;
      v56(v60 + v59, v99, v1);
      v61 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation4UUIDV_Tt0g5Tf4g_n(v60);
      swift_setDeallocating();
      v62 = *(v57 + 8);
      v62(v60 + v59, v1);
      swift_deallocClassInstance();
      v63 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = v63;
      v66 = specialized __RawDictionaryStorage.find<A>(_:)(v54);
      v67 = v63[2];
      v68 = (v65 & 1) == 0;
      v69 = v67 + v68;
      if (__OFADD__(v67, v68))
      {
        goto LABEL_37;
      }

      v70 = v65;
      if (v63[3] >= v69)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v24 = v101;
          if ((v65 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          v24 = v101;
          if ((v70 & 1) == 0)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v69, isUniquelyReferenced_nonNull_native);
        v71 = specialized __RawDictionaryStorage.find<A>(_:)(v94);
        if ((v70 & 1) != (v72 & 1))
        {
          goto LABEL_39;
        }

        v66 = v71;
        v24 = v101;
        if ((v70 & 1) == 0)
        {
LABEL_30:
          v24[(v66 >> 6) + 8] |= 1 << v66;
          v73 = v94;
          v86(v24[6] + v66 * v58, v94, v1);
          *(v24[7] + 8 * v66) = v61;
          v62(v73, v1);
          v7 = v95;
          v62(v95, v1);
          v62(v99, v1);
          v74 = v24[2];
          v75 = __OFADD__(v74, 1);
          v76 = v74 + 1;
          if (v75)
          {
            goto LABEL_38;
          }

          v24[2] = v76;
          goto LABEL_6;
        }
      }

      *(v24[7] + 8 * v66) = v61;

      v62(v94, v1);
      v7 = v95;
      v62(v95, v1);
      v62(v99, v1);
LABEL_6:
      v23 = v97;
      v17 = v91;
      if (!v22)
      {
        goto LABEL_8;
      }
    }

    v44 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
    v45 = *v98;
    if ((v46 & 1) == 0)
    {
      goto LABEL_23;
    }

    v101 = *(v24[7] + 8 * v44);
    v47 = v90;
    v48 = v24;
    v49 = v99;
    v45(v90, v99, v1);

    v50 = v89;
    specialized Set._Variant.insert(_:)(v89, v47);
    v51 = *v93;
    (*v93)(v50, v1);
    v52 = v101;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v100 = v48;
    v7 = v95;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v52, v95, v53);
    v51(v7, v1);
    v51(v49, v1);
    v24 = v100;
    v23 = v97;
  }

  while (v22);
LABEL_8:
  if (v82 <= v23 + 1)
  {
    v26 = v23 + 1;
  }

  else
  {
    v26 = v82;
  }

  v27 = (v26 - 1);
  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v82)
    {
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_AC5valuetMd);
      v78 = v88;
      (*(*(v77 - 8) + 56))(v88, 1, 1, v77);
      v39 = v78;
      v22 = 0;
      goto LABEL_17;
    }

    v22 = *(v83 + 8 * v25);
    v23 = (v23 + 1);
    if (v22)
    {
      v97 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t InterstitialSelectionTracker.assetGroupUUIDsByIndividualAssetUUID.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return InterstitialSelectionTracker.assetGroupUUIDsByIndividualAssetUUID.didset();
}

uint64_t (*InterstitialSelectionTracker.assetGroupUUIDsByIndividualAssetUUID.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return InterstitialSelectionTracker.assetGroupUUIDsByIndividualAssetUUID.modify;
}

uint64_t InterstitialSelectionTracker.assetGroupUUIDsByIndividualAssetUUID.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return InterstitialSelectionTracker.assetGroupUUIDsByIndividualAssetUUID.didset();
  }

  return result;
}

uint64_t InterstitialSelectionTracker.individualAssetsUUIDsByGroupAssetUUID.didset()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v66 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v56 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_ShyACG5valuetSgMd);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v54 - v10;
  v12 = *(v0 + 24);
  v13 = *(v12 + 64);
  v60 = v0;
  v61 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v55 = (v14 + 63) >> 6;
  v62 = v2 + 16;
  v63 = v2;
  v65 = (v2 + 32);
  v59 = (v2 + 8);
  v57 = v12;

  v17 = 0;
  v64 = v9;
  v58 = v11;
  while (v16)
  {
    v18 = v17;
LABEL_16:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v22 = v21 | (v18 << 6);
    v23 = v57;
    v24 = v63;
    (*(v63 + 16))(v56, *(v57 + 48) + *(v63 + 72) * v22, v1);
    v25 = *(*(v23 + 56) + 8 * v22);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_ShyACG5valuetMd);
    v27 = *(v26 + 48);
    v28 = *(v24 + 32);
    v9 = v64;
    v29 = v1;
    v28();
    *&v9[v27] = v25;
    (*(*(v26 - 8) + 56))(v9, 0, 1, v26);

LABEL_17:
    outlined init with take of URL?(v9, v11, &_s10Foundation4UUIDV3key_ShyACG5valuetSgMd);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_ShyACG5valuetMd);
    if ((*(*(v30 - 8) + 48))(v11, 1, v30) == 1)
    {
    }

    v31 = *&v11[*(v30 + 48)];
    v32 = v66;
    (*v65)(v66, v11, v29);
    v33 = (*(*v60 + 264))(v68);
    v35 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = *v35;
    v37 = v67;
    *v35 = 0x8000000000000000;
    v39 = specialized __RawDictionaryStorage.find<A>(_:)(v32);
    v40 = v37[2];
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_30;
    }

    v43 = v38;
    if (v37[3] >= v42)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v42, isUniquelyReferenced_nonNull_native);
      v44 = specialized __RawDictionaryStorage.find<A>(_:)(v66);
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_32;
      }

      v39 = v44;
    }

    v1 = v29;
    v46 = v67;
    if (v43)
    {
      *(v67[7] + 8 * v39) = v31;

      (*v59)(v66, v29);
    }

    else
    {
      v67[(v39 >> 6) + 8] |= 1 << v39;
      v47 = v63;
      v48 = v66;
      (*(v63 + 16))(v46[6] + *(v63 + 72) * v39, v66, v1);
      *(v46[7] + 8 * v39) = v31;
      (*(v47 + 8))(v48, v1);
      v49 = v46[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_31;
      }

      v46[2] = v51;
    }

    *v35 = v46;

    v33(v68, 0);
    v9 = v64;
    v11 = v58;
  }

  if (v55 <= v17 + 1)
  {
    v19 = v17 + 1;
  }

  else
  {
    v19 = v55;
  }

  v20 = v19 - 1;
  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v55)
    {
      v29 = v1;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_ShyACG5valuetMd);
      (*(*(v52 - 8) + 56))(v9, 1, 1, v52);
      v16 = 0;
      v17 = v20;
      goto LABEL_17;
    }

    v16 = *(v61 + 8 * v18);
    ++v17;
    if (v16)
    {
      v17 = v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *one-time initialization function for assetTypeSelectionBehavior()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI9AssetTypeO_AC12InterstitialV17SelectionBehaviorOTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for assetTypeSelectionBehavior);
  static InterstitialSelectionTracker.assetTypeSelectionBehavior = result;
  return result;
}

uint64_t InterstitialSelectionTracker.selectionDisabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t key path setter for InterstitialSelectionTracker.selectedAssetViewModelsChanged : InterstitialSelectionTracker(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *(**a2 + 208);

  return v6(partial apply for thunk for @escaping @callee_guaranteed () -> (@out ()), v5);
}

uint64_t InterstitialSelectionTracker.selectedAssetViewModelsChanged.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t InterstitialSelectionTracker.selectedAssetViewModelsChanged.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t InterstitialSelectionTracker.selectedAssetUUIDs.setter(uint64_t a1)
{
  v2 = v1;
  if ((*(*v1 + 176))())
  {
  }

  else
  {
    v5 = one-time initialization token for interstitial;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static CommonLogger.interstitial);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v9 = 136315394;
      type metadata accessor for UUID();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy10Foundation4UUIDVGMd);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v10 = Dictionary.description.getter();
      v19 = v8;
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v21);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2080;
      v13 = Dictionary.description.getter();
      v15 = v14;

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v21);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_21607C000, v7, v19, "[Asset Selection] Selected asset UUIDs changed. New selected asset UUIDs: %s, old selected asset UUIDs: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v20, -1, -1);
      MEMORY[0x21CE94770](v9, -1, -1);
    }

    else
    {
    }

    v2[8] = a1;

    v18 = (*(*v2 + 200))(v17);
    v18();
  }
}

uint64_t (*InterstitialSelectionTracker.selectedAssetUUIDs.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + 64);
  a1[1] = v1;

  return InterstitialSelectionTracker.selectedAssetUUIDs.modify;
}

uint64_t InterstitialSelectionTracker.selectedAssetUUIDs.modify(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return InterstitialSelectionTracker.selectedAssetUUIDs.setter(*a1);
  }

  InterstitialSelectionTracker.selectedAssetUUIDs.setter(v2);
}

uint64_t InterstitialSelectionTracker.__allocating_init(assetViewModels:)(unint64_t a1)
{
  v2 = swift_allocObject();
  InterstitialSelectionTracker.init(assetViewModels:)(a1);
  return v2;
}

unint64_t InterstitialSelectionTracker.init(assetViewModels:)(unint64_t a1)
{
  v33 = type metadata accessor for UUID();
  v3 = *(v33 - 8);
  v4 = MEMORY[0x28223BE20](v33);
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  v8 = MEMORY[0x277D84F90];
  *(v1 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_AETt0g5Tf4g_n(MEMORY[0x277D84F90]);
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ShyAEGTt0g5Tf4g_n(v8);
  v10 = a1;
  *(v1 + 24) = result;
  *(v1 + 40) = 0;
  *(v1 + 48) = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  *(v1 + 56) = 0;
  v36 = MEMORY[0x277D84FA0];
  if (!(a1 >> 62))
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_14:

    v26 = MEMORY[0x277D84F98];
    v25 = MEMORY[0x277D84FA0];
LABEL_15:
    v27 = _sSa9repeating5countSayxGx_SitcfCShy10Foundation4UUIDVG_Tt1g5Tf4gn_n(MEMORY[0x277D84FA0], *(v25 + 16));
    v28 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC10Foundation4UUIDV_ShyAGGs12Zip2SequenceVyAHSayAHGGTt0g5Tf4g_n(v25, v27);

    *(v1 + 64) = v28;
    *(v1 + 32) = v26;
    return v1;
  }

  result = __CocoaSet.count.getter();
  v10 = a1;
  v11 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v11 >= 1)
  {
    v12 = 0;
    v29 = v1;
    v30 = v10 & 0xC000000000000001;
    v13 = (v3 + 16);
    v14 = (v3 + 8);
    v34 = MEMORY[0x277D84F98];
    v31 = v10;
    do
    {
      if (v30)
      {
        v18 = MEMORY[0x21CE93180](v12);
      }

      else
      {
        v18 = *(v10 + 8 * v12 + 32);
      }

      v19 = v18;
      v20 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid;
      v22 = v32;
      v21 = v33;
      (*v13)(v32, &v18[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid], v33);
      specialized Set._Variant.insert(_:)(v7, v22);
      (*v14)(v7, v21);
      v23 = v19;
      v24 = specialized AssetType.init(_:)(v23);
      if (v24 == 20)
      {
      }

      else
      {
        v15 = v24;
        v16 = v34;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v16;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v19 + v20, isUniquelyReferenced_nonNull_native);

        v34 = v35;
      }

      ++v12;
      v10 = v31;
    }

    while (v11 != v12);

    v25 = v36;
    v1 = v29;
    v26 = v34;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfC9MomentsUI13RouteLocationV_Tt1g5(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = type metadata accessor for RouteLocation();
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      outlined init with copy of RouteLocation(v3, v5 + v7);
      v8 = a2 - 1;
      if (a2 != 1)
      {
        v9 = *(v6 + 72);
        v10 = v5 + v9 + v7;
        do
        {
          outlined init with copy of RouteLocation(v3, v10);
          v10 += v9;
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    outlined destroy of RouteLocation(v3);
    return v5;
  }

  return result;
}

uint64_t InterstitialSelectionTracker.selectionBehavior(forAssetWithUUID:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (!*(v2 + 16))
  {
    return 1;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = *(*(v2 + 56) + v3);
  if (one-time initialization token for assetTypeSelectionBehavior != -1)
  {
    v10 = v5;
    swift_once();
    v5 = v10;
  }

  v6 = static InterstitialSelectionTracker.assetTypeSelectionBehavior;
  if (*(static InterstitialSelectionTracker.assetTypeSelectionBehavior + 2) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v8 & 1) != 0))
  {
    return *(v6[7] + v7);
  }

  else
  {
    return 1;
  }
}

uint64_t InterstitialSelectionTracker.interstitialCollectionViewController(_:didSelectAssetWithUUID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_10Foundation4UUIDV17memberAfterInserttSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v122 = &v122 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v128 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v127 = &v122 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v123 = &v122 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v124 = &v122 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v122 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v129 = &v122 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v122 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v122 - v25;
  if (one-time initialization token for interstitial != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, static CommonLogger.interstitial);
  v132 = v8[2];
  v133 = v8 + 2;
  v132(v26, a2, v7);
  v131 = v28;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  v31 = os_log_type_enabled(v29, v30);
  v130 = a2;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v125 = v8;
    v33 = v32;
    v34 = swift_slowAlloc();
    v136[0] = v34;
    *v33 = 136315138;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v126 = v24;
    v36 = v3;
    v38 = v37;
    v134 = v125[1];
    v134(v26, v7);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v38, v136);
    v3 = v36;
    v24 = v126;

    *(v33 + 4) = v39;
    _os_log_impl(&dword_21607C000, v29, v30, "[Asset Selection] Selected asset with UUID=%s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    v40 = v34;
    a2 = v130;
    MEMORY[0x21CE94770](v40, -1, -1);
    v41 = v33;
    v8 = v125;
    MEMORY[0x21CE94770](v41, -1, -1);
  }

  else
  {

    v134 = v8[1];
    v42 = (v134)(v26, v7);
  }

  v43 = (*(*v3 + 128))(v42);
  v44 = v129;
  if (!*(v43 + 16) || (v45 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v46 & 1) == 0))
  {

    v63 = v127;
    v132(v127, a2, v7);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v136[0] = v67;
      *v66 = 136315138;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v7;
      v70 = v3;
      v72 = v71;
      v134(v63, v69);
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v72, v136);
      v3 = v70;
      v7 = v69;

      *(v66 + 4) = v73;
      _os_log_impl(&dword_21607C000, v64, v65, "[Asset Selection] No group UUID found for selected individual asset UUID=%s, selecting the individual asset", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v67);
      v74 = v67;
      a2 = v130;
      MEMORY[0x21CE94770](v74, -1, -1);
      MEMORY[0x21CE94770](v66, -1, -1);
    }

    else
    {

      v134(v63, v7);
    }

    v75 = v128;
    v132(v128, a2, v7);
    v76 = v3[3];
    if (*(v76 + 16))
    {

      v77 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if (v78)
      {
        v79 = *(*(v76 + 56) + 8 * v77);
      }

      else
      {
        v79 = MEMORY[0x277D84FA0];
      }
    }

    else
    {
      v79 = MEMORY[0x277D84FA0];
    }

    v80 = (*(*v3 + 264))(v136);
    v82 = v81;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v135 = *v82;
    *v82 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v79, v75, isUniquelyReferenced_nonNull_native);
    v134(v75, v7);
    *v82 = v135;
    return v80(v136, 0);
  }

  v128 = v3;
  v47 = v132;
  v132(v24, *(v43 + 56) + v8[9] * v45, v7);

  v47(v44, v24, v7);
  v48 = v19;
  v47(v19, a2, v7);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  v51 = os_log_type_enabled(v49, v50);
  v126 = v24;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v136[0] = v127;
    *v52 = 136315394;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v44;
    v56 = v55;
    v134(v54, v7);
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v56, v136);

    *(v52 + 4) = v57;
    *(v52 + 12) = 2080;
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    v134(v48, v7);
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v136);
    a2 = v130;

    *(v52 + 14) = v61;
    _os_log_impl(&dword_21607C000, v49, v50, "[Asset Selection] Found group UUID (%s for selected individual asset UUID=%s", v52, 0x16u);
    v62 = v127;
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v62, -1, -1);
    MEMORY[0x21CE94770](v52, -1, -1);
  }

  else
  {

    v85 = v134;
    v134(v48, v7);
    v85(v44, v7);
  }

  v86 = v128;
  v87 = InterstitialSelectionTracker.selectionBehavior(forAssetWithUUID:)(a2);
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v136[0] = v91;
    *v90 = 136315138;
    LOBYTE(v135) = v87;
    v92 = String.init<A>(describing:)();
    v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, v136);
    v86 = v128;

    *(v90 + 4) = v94;
    _os_log_impl(&dword_21607C000, v88, v89, "[Asset Selection] Selection behavior is %s", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v91);
    MEMORY[0x21CE94770](v91, -1, -1);
    MEMORY[0x21CE94770](v90, -1, -1);
  }

  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.debug.getter();
  v97 = os_log_type_enabled(v95, v96);
  v98 = v130;
  if ((v87 & 1) == 0)
  {
    if (v97)
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_21607C000, v95, v96, "[Asset Selection] Selecting the individual asset", v105, 2u);
      v106 = v105;
      v98 = v130;
      MEMORY[0x21CE94770](v106, -1, -1);
    }

    v107 = (*(*v86 + 248))();
    v108 = v126;
    if (*(v107 + 16) && (v109 = specialized __RawDictionaryStorage.find<A>(_:)(v126), (v110 & 1) != 0))
    {
      v111 = *(*(v107 + 56) + 8 * v109);

      v135 = v111;
      if (v111)
      {
        v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_10Foundation4UUIDV17memberAfterInserttMd);
        v113 = *(v112 + 48);
        v114 = v123;
        v132(v123, v98, v7);
        v115 = v122;
        *v115 = specialized Set._Variant.insert(_:)(&v122[v113], v114) & 1;
        (*(*(v112 - 8) + 56))(v115, 0, 1, v112);
LABEL_37:
        outlined destroy of UTType?(v115, &_sSb8inserted_10Foundation4UUIDV17memberAfterInserttSgMd);
        v117 = v123;
        v132(v123, v108, v7);
        v118 = v135;
        v119 = *(*v86 + 264);

        v120 = v119(v136);
        specialized Dictionary.subscript.setter(v118, v117);
        v120(v136, 0);
        v134(v108, v7);
      }
    }

    else
    {

      v135 = 0;
    }

    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_10Foundation4UUIDV17memberAfterInserttMd);
    v115 = v122;
    (*(*(v116 - 8) + 56))(v122, 1, 1, v116);
    goto LABEL_37;
  }

  if (v97)
  {
    v99 = swift_slowAlloc();
    *v99 = 0;
    _os_log_impl(&dword_21607C000, v95, v96, "[Asset Selection] Selecting the entire group", v99, 2u);
    MEMORY[0x21CE94770](v99, -1, -1);
  }

  v100 = v126;
  v132(v124, v126, v7);
  v101 = v86[3];
  if (*(v101 + 16))
  {

    v102 = specialized __RawDictionaryStorage.find<A>(_:)(v100);
    if (v103)
    {
      v104 = *(*(v101 + 56) + 8 * v102);
    }

    else
    {
      v104 = 0;
    }
  }

  else
  {
    v104 = 0;
  }

  v121 = (*(*v86 + 264))(v136);
  specialized Dictionary.subscript.setter(v104, v124);
  v121(v136, 0);
  return (v134)(v100, v7);
}

uint64_t InterstitialSelectionTracker.interstitialCollectionViewController(_:didDeselectAssetWithUUID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v102 = &v98[-v6];
  v7 = type metadata accessor for UUID();
  v111 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v106 = &v98[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v103 = &v98[-v11];
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v98[-v13];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v98[-v16];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v98[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v98[-v21];
  if (one-time initialization token for interstitial != -1)
  {
    swift_once();
  }

  v104 = v14;
  v23 = type metadata accessor for Logger();
  v24 = __swift_project_value_buffer(v23, static CommonLogger.interstitial);
  v107 = *(v111 + 16);
  v108 = v111 + 16;
  v107(v22, a2, v7);
  v110 = v24;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  v27 = os_log_type_enabled(v25, v26);
  v109 = a2;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v105 = v20;
    v101 = v3;
    v30 = v29;
    v113[0] = v29;
    *v28 = 136315138;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v34 = *(v111 + 8);
    v34(v22, v7);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v113);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_21607C000, v25, v26, "[Asset Selection] Deselected asset with UUID=%s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    v36 = v30;
    v3 = v101;
    v20 = v105;
    MEMORY[0x21CE94770](v36, -1, -1);
    v37 = v28;
    a2 = v109;
    MEMORY[0x21CE94770](v37, -1, -1);
  }

  else
  {

    v34 = *(v111 + 8);
    v38 = (v34)(v22, v7);
  }

  v39 = (*(*v3 + 128))(v38);
  if (*(v39 + 16))
  {
    v40 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v41)
    {
      v42 = v107;
      v107(v20, *(v39 + 56) + *(v111 + 72) * v40, v7);

      v105 = v20;
      v42(v17, v20, v7);
      v43 = v104;
      v42(v104, a2, v7);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      v46 = os_log_type_enabled(v44, v45);
      v101 = v34;
      if (v46)
      {
        v47 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v113[0] = v106;
        *v47 = 136315394;
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
        v100 = v44;
        v99 = v45;
        v48 = dispatch thunk of CustomStringConvertible.description.getter();
        v50 = v49;
        v34(v17, v7);
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v113);
        a2 = v109;

        *(v47 + 4) = v51;
        *(v47 + 12) = 2080;
        v52 = dispatch thunk of CustomStringConvertible.description.getter();
        v54 = v53;
        v34(v43, v7);
        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v113);

        *(v47 + 14) = v55;
        v56 = v100;
        _os_log_impl(&dword_21607C000, v100, v99, "[Asset Selection] Found group UUID (%s for deselected individual asset UUID=%s", v47, 0x16u);
        v57 = v106;
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v57, -1, -1);
        MEMORY[0x21CE94770](v47, -1, -1);
      }

      else
      {

        v34(v43, v7);
        v34(v17, v7);
      }

      v72 = InterstitialSelectionTracker.selectionBehavior(forAssetWithUUID:)(a2);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v113[0] = v76;
        *v75 = 136315138;
        LOBYTE(v112) = v72;
        v77 = String.init<A>(describing:)();
        v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, v113);

        *(v75 + 4) = v79;
        _os_log_impl(&dword_21607C000, v73, v74, "[Asset Selection] Selection behavior is %s", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v76);
        MEMORY[0x21CE94770](v76, -1, -1);
        MEMORY[0x21CE94770](v75, -1, -1);
      }

      v80 = v105;
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.debug.getter();
      v83 = os_log_type_enabled(v81, v82);
      v84 = v109;
      if (v72)
      {
        if (v83)
        {
          v85 = swift_slowAlloc();
          *v85 = 0;
          _os_log_impl(&dword_21607C000, v81, v82, "[Asset Selection] Deselecting the entire group", v85, 2u);
          MEMORY[0x21CE94770](v85, -1, -1);
        }

        v86 = (*(*v3 + 264))(v113);
        specialized Dictionary.removeValue(forKey:)(v80);

        v86(v113, 0);
        return (v101)(v80, v7);
      }

      if (v83)
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&dword_21607C000, v81, v82, "[Asset Selection] Deselecting the individual asset", v87, 2u);
        MEMORY[0x21CE94770](v87, -1, -1);
      }

      v88 = (*(*v3 + 248))();
      if (*(v88 + 16) && (v89 = specialized __RawDictionaryStorage.find<A>(_:)(v80), (v90 & 1) != 0))
      {
        v91 = *(*(v88 + 56) + 8 * v89);

        v112 = v91;
        v92 = v101;
        if (v91)
        {
          v93 = v102;
          specialized Set._Variant.remove(_:)(v84, v102);
LABEL_29:
          outlined destroy of UTType?(v93, &_s10Foundation4UUIDVSgMd);
          v94 = v103;
          v107(v103, v80, v7);
          v95 = v112;
          v96 = *(*v3 + 264);

          v97 = v96(v113);
          specialized Dictionary.subscript.setter(v95, v94);
          v97(v113, 0);
          v92(v80, v7);
        }
      }

      else
      {

        v112 = 0;
        v92 = v101;
      }

      v93 = v102;
      (*(v111 + 56))(v102, 1, 1, v7);
      goto LABEL_29;
    }
  }

  v58 = v106;
  v107(v106, a2, v7);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v113[0] = v62;
    *v61 = 136315138;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v58;
    v65 = v63;
    v67 = v66;
    v34(v64, v7);
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, v113);

    *(v61 + 4) = v68;
    _os_log_impl(&dword_21607C000, v59, v60, "[Asset Selection] No group UUID found for deselected individual asset UUID=%s, deselecting the individual asset", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v62);
    MEMORY[0x21CE94770](v62, -1, -1);
    v69 = v61;
    a2 = v109;
    MEMORY[0x21CE94770](v69, -1, -1);
  }

  else
  {

    v34(v58, v7);
  }

  v70 = (*(*v3 + 264))(v113);
  specialized Dictionary.removeValue(forKey:)(a2);

  return v70(v113, 0);
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
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
    specialized _NativeDictionary.copy()();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v5, v7);
  *v2 = v7;
  return v10;
}