uint64_t specialized static CloudDevice._compareBundles(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  swift_beginAccess();
  v9 = static CloudDevice._bundleMap;
  v10 = *(static CloudDevice._bundleMap + 2);
  if (!v10)
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }

  v11 = 0;
  for (i = (static CloudDevice._bundleMap + 40); ; i += 2)
  {
    v13 = *(i - 1) == a1 && *i == a2;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    if (v10 == ++v11)
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
    }
  }

  v14 = 0;
  for (j = v9 + 40; ; j += 2)
  {
    v16 = *(j - 1) == a3 && *j == a4;
    if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    if (v10 == ++v14)
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
    }
  }

  return v11 < v14;
}

unint64_t lazy protocol witness table accessor for type CloudDevicesDB.SnapshotEventAggregation and conformance CloudDevicesDB.SnapshotEventAggregation()
{
  result = lazy protocol witness table cache variable for type CloudDevicesDB.SnapshotEventAggregation and conformance CloudDevicesDB.SnapshotEventAggregation;
  if (!lazy protocol witness table cache variable for type CloudDevicesDB.SnapshotEventAggregation and conformance CloudDevicesDB.SnapshotEventAggregation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudDevicesDB.SnapshotEventAggregation and conformance CloudDevicesDB.SnapshotEventAggregation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CloudDevicesDB.SnapshotEventAggregation and conformance CloudDevicesDB.SnapshotEventAggregation;
  if (!lazy protocol witness table cache variable for type CloudDevicesDB.SnapshotEventAggregation and conformance CloudDevicesDB.SnapshotEventAggregation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudDevicesDB.SnapshotEventAggregation and conformance CloudDevicesDB.SnapshotEventAggregation);
  }

  return result;
}

uint64_t specialized static CloudDevice.userHasAtLeastOneiPad(in:hasToBeOnboarded:)(uint64_t a1, int a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v72 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v66 - v6;
  v79 = type metadata accessor for Date();
  v8 = *(v79 - 8);
  v9 = MEMORY[0x28223BE20](v79);
  v67 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v66 = &v66 - v12;
  MEMORY[0x28223BE20](v11);
  v76 = &v66 - v13;
  v14 = type metadata accessor for CloudDevice();
  v82 = *(v14 - 1);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v81 = &v66 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_9MomentsUI11CloudDeviceV5valuetSgMd);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v85 = &v66 - v23;
  v24 = *(a1 + 64);
  v75 = a1 + 64;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v74 = (v25 + 63) >> 6;
  v78 = (v8 + 48);
  v73 = (v8 + 32);
  v70 = "ForceDevelopmentEnvironment";
  v71 = (v8 + 8);
  v83 = a1;

  v29 = 0;
  v84 = v7;
  v80 = v22;
  v77 = v14;
  v86 = v17;
  while (v27)
  {
    v30 = v14;
    v31 = v29;
LABEL_15:
    v35 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v36 = v35 | (v31 << 6);
    v37 = (*(v83 + 48) + 16 * v36);
    v39 = *v37;
    v38 = v37[1];
    v40 = v81;
    outlined init with copy of CloudDevice(*(v83 + 56) + *(v82 + 72) * v36, v81);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
    v42 = *(v41 + 48);
    v22 = v80;
    *v80 = v39;
    *(v22 + 1) = v38;
    outlined init with take of CloudDevice(v40, &v22[v42]);
    (*(*(v41 - 8) + 56))(v22, 0, 1, v41);

    v7 = v84;
    v34 = v85;
    v14 = v30;
LABEL_16:
    outlined init with take of URL?(v22, v34, &_sSS3key_9MomentsUI11CloudDeviceV5valuetSgMd);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
    v44 = (*(*(v43 - 8) + 48))(v34, 1, v43);
    if (v44 == 1)
    {
LABEL_40:

      return v44 != 1;
    }

    v45 = v34 + *(v43 + 48);
    v46 = v86;
    outlined init with take of CloudDevice(v45, v86);
    v47 = v46 + v14[10];
    if ((*(v47 + 8) & 1) != 0 || *v47 != 1)
    {
      result = outlined destroy of CloudDevice(v46);
    }

    else
    {
      outlined init with copy of DateInterval?(v46 + v14[7], v7, &_s10Foundation4DateVSgMd);
      v48 = v79;
      v49 = *v78;
      if ((*v78)(v7, 1, v79) == 1)
      {
        outlined destroy of CloudDevice(v46);
        result = outlined destroy of UTType?(v7, &_s10Foundation4DateVSgMd);
        v14 = v77;
      }

      else
      {
        v50 = v7;
        v51 = *v73;
        (*v73)(v76, v50, v48);
        Date.timeIntervalSinceNow.getter();
        if (one-time initialization token for momentsUI != -1)
        {
          v65 = v52;
          swift_once();
          v52 = v65;
        }

        v53 = fabs(v52);
        v54 = static DefaultsManager.momentsUI;
        v14 = v77;
        if (!static DefaultsManager.momentsUI)
        {
          v89 = 0u;
          v90 = 0u;
          v58 = v86;
LABEL_33:
          outlined destroy of UTType?(&v89, &_sypSgMd);
          goto LABEL_34;
        }

        v55 = MEMORY[0x21CE91FC0](0xD00000000000001BLL, v70 | 0x8000000000000000);
        v56 = [v54 objectForKey_];

        if (v56)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v87 = 0u;
          v88 = 0u;
        }

        v58 = v86;
        v89 = v87;
        v90 = v88;
        if (!*(&v88 + 1))
        {
          goto LABEL_33;
        }

        if (swift_dynamicCast())
        {
          v59 = v72;
          if (v53 >= *&v87)
          {
            goto LABEL_32;
          }

          goto LABEL_35;
        }

LABEL_34:
        v59 = v72;
        if (v53 >= 2419200.0)
        {
LABEL_32:
          (*v71)(v76, v79);
          result = outlined destroy of CloudDevice(v58);
          goto LABEL_38;
        }

LABEL_35:
        if ((v69 & 1) == 0)
        {

          (*v71)(v76, v79);
          outlined destroy of CloudDevice(v86);
          return v44 != 1;
        }

        outlined init with copy of DateInterval?(&v86[v14[20]], v59, &_s10Foundation4DateVSgMd);
        v60 = v79;
        if (v49(v59, 1, v79) == 1)
        {
          (*v71)(v76, v60);
          outlined destroy of CloudDevice(v86);
          result = outlined destroy of UTType?(v59, &_s10Foundation4DateVSgMd);
LABEL_38:
          v7 = v84;
        }

        else
        {
          v61 = v66;
          v51(v66, v59, v60);
          v62 = v67;
          static Date.distantPast.getter();
          v68 = static Date.> infix(_:_:)();
          v63 = *v71;
          v64 = v62;
          v14 = v77;
          (*v71)(v64, v60);
          v63(v61, v60);
          v63(v76, v60);
          result = outlined destroy of CloudDevice(v86);
          v7 = v84;
          if (v68)
          {
            goto LABEL_40;
          }
        }
      }
    }
  }

  if (v74 <= v29 + 1)
  {
    v32 = v29 + 1;
  }

  else
  {
    v32 = v74;
  }

  v33 = v32 - 1;
  v34 = v85;
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v74)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
      (*(*(v57 - 8) + 56))(v22, 1, 1, v57);
      v27 = 0;
      v29 = v33;
      goto LABEL_16;
    }

    v27 = *(v75 + 8 * v31);
    ++v29;
    if (v27)
    {
      v30 = v14;
      v29 = v31;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type [CloudDevice.Capability] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MomentsUI11CloudDeviceV10CapabilityOGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CloudDevicesDB.SnapshotEventAggregation? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CloudDevicesDB.SnapshotEventAggregation? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CloudDevicesDB.SnapshotEventAggregation? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
    lazy protocol witness table accessor for type CloudDevicesDB.SnapshotEventAggregation and conformance CloudDevicesDB.SnapshotEventAggregation();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudDevicesDB.SnapshotEventAggregation? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CloudDevice.Idiom and conformance CloudDevice.Idiom()
{
  result = lazy protocol witness table cache variable for type CloudDevice.Idiom and conformance CloudDevice.Idiom;
  if (!lazy protocol witness table cache variable for type CloudDevice.Idiom and conformance CloudDevice.Idiom)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudDevice.Idiom and conformance CloudDevice.Idiom);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CloudDevice(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type CloudDevice and conformance CloudDevice, type metadata accessor for CloudDevice);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type CloudDevice and conformance CloudDevice, type metadata accessor for CloudDevice);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type CloudDevice and conformance CloudDevice, type metadata accessor for CloudDevice);
  a1[3] = result;
  return result;
}

void type metadata completion function for CloudDevice()
{
  type metadata accessor for Double?(319, &lazy cache variable for type metadata for String?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Int64?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [CloudDevice.Capability]?();
        if (v3 <= 0x3F)
        {
          type metadata accessor for Double?(319, &lazy cache variable for type metadata for Bool?);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Double?(319, &lazy cache variable for type metadata for Data?);
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

void type metadata accessor for [CloudDevice.Capability]?()
{
  if (!lazy cache variable for type metadata for [CloudDevice.Capability]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MomentsUI11CloudDeviceV10CapabilityOGMd);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [CloudDevice.Capability]?);
    }
  }
}

uint64_t getEnumTagSinglePayload for CloudDevice.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudDevice.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized CloudDevice.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000216585CF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65566D6574737973 && a2 == 0xED00006E6F697372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64496D6574737973 && a2 == 0xEE00746E496D6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x614C6D6574737973 && a2 == 0xEE0065676175676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000216585D10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000216585D30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x616D697250736177 && a2 == 0xEA00000000007972 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000216585D50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000216585D70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6974616E696D6F6ELL && a2 == 0xEE00657461446E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000216585D90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x696472616F626E6FLL && a2 == 0xEE0065746144676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000216585DB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000021 && 0x80000002165842C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000020 && 0x80000002165842F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000216584320 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000216584340 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000216585DE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000216579270 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000015 && 0x800000021657BAC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000015 && 0x800000021657BAE0 == a2)
  {

    return 25;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 25;
    }

    else
    {
      return 26;
    }
  }
}

uint64_t partial apply for closure #1 in CloudDevice.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(uint64_t a1)
{
  v4 = *(type metadata accessor for CKSyncEngine.PendingRecordZoneChange() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in CloudDevice.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(a1, v6, v7, v8, v9, v1 + v5);
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

id DBAssetModel.baseVideo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22 - v3;
  v5 = *(*v0 + 232);
  v5(&v27, v2);
  v6 = DBAssetModel.AssetDataHelper.urlFutureFor(_:)(0x567972616D697270, 0xEC0000006F656469);
  v8 = v7;
  v26[0] = v27;
  v26[1] = v28;
  v26[2] = v29;
  v26[3] = v30;
  v9 = outlined destroy of DBAssetModel.AssetDataHelper(v26);
  v5(v25, v9);
  v23 = DBAssetModel.AssetDataHelper.dataFutureFor(_:)(0x567972616D697270, 0xEC0000006F656469);
  v22 = v10;
  v27 = v25[0];
  v28 = v25[1];
  v29 = v25[2];
  v30 = v25[3];
  outlined destroy of DBAssetModel.AssetDataHelper(&v27);
  v11 = *(v0 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass);
  v12 = type metadata accessor for Video();
  v13 = objc_allocWithZone(v12);
  v14 = OBJC_IVAR____TtC9MomentsUI5Video_url;
  v15 = type metadata accessor for URL();
  v16 = *(*(v15 - 8) + 56);
  v16(&v13[v14], 1, 1, v15);
  if (v6)
  {

    (v6)(v17);
    outlined consume of (@escaping @callee_guaranteed () -> (@unowned UInt?))?(v6, v8);
  }

  else
  {
    v16(v4, 1, 1, v15);
  }

  swift_beginAccess();
  outlined assign with take of URL?(v4, &v13[v14]);
  swift_endAccess();
  v13[OBJC_IVAR____TtC9MomentsUI5Video__assetClass] = v11;
  v18 = &v13[OBJC_IVAR____TtC9MomentsUI5Video__dataFuture];
  v19 = v22;
  *v18 = v23;
  v18[1] = v19;
  v20 = &v13[OBJC_IVAR____TtC9MomentsUI5Video__urlFuture];
  *v20 = v6;
  v20[1] = v8;
  v24.receiver = v13;
  v24.super_class = v12;
  return objc_msgSendSuper2(&v24, sel_init);
}

uint64_t Video.assetData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v80 = &v66 - v2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x28223BE20](v3);
  v75 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v85 = *(v5 - 8);
  v86 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v66 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v82 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v66 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v81 = (&v66 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v66 - v20);
  MEMORY[0x28223BE20](v19);
  v23 = &v66 - v22;
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x70))(v26);
  v84 = v25;
  v76 = *(v25 + 48);
  if (v76(v23, 1, v24) == 1)
  {
    outlined destroy of UTType?(v23, &_s10Foundation3URLVSgMd);
    return MEMORY[0x277D84F98];
  }

  else
  {
    v83 = v8;
    v31 = v84;
    v32 = (*(v84 + 32))(v28, v23, v24);
    (*((*v29 & *v0) + 0x88))(&v87, v32);
    v77 = v87;
    v73 = v28;
    countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v33 = *(v31 + 56);
    v33(v21, 1, 1, v24);
    UUID.init()();
    v33(v16, 1, 1, v24);
    (*(v78 + 104))(v75, *MEMORY[0x277CC91D8], v79);
    v34 = v81;
    URL.init(filePath:directoryHint:relativeTo:)();
    v33(v34, 0, 1, v24);
    v35 = v10;
    v36 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
    v37 = (v36 == 2) | v36;
    v38 = UUID.uuidString.getter();
    v95[0] = v77;
    specialized static CloudSyncAssetData._fillInBlanks(id:sha256:size:inlineData:fileURL:fileExt:assetClass:blobFolderURL:allowLazyLoading:dryRun:)(v38, v39, 0, 0xF000000000000000, 0, 1, 0, 0xF000000000000000, &v88, v34, 0, 0, v95, v21, v37 & 1, 0);
    v66 = v88;
    v78 = v90;
    v79 = v89;
    v75 = v91;
    countAndFlagsBits = v92;
    v68 = v93;
    v70 = v94;

    v40 = v82;
    outlined init with copy of URL?(v21, v82);
    v41 = v76(v40, 1, v24);
    v74 = v21;
    v72 = v24;
    if (v41 == 1)
    {
      outlined destroy of UTType?(v82, &_s10Foundation3URLVSgMd);
      v76 = 0;
      object = 0;
    }

    else
    {
      v42 = v82;
      v43 = URL.path(percentEncoded:)(1);
      v76 = v43._countAndFlagsBits;
      object = v43._object;
      (*(v84 + 8))(v42, v24);
    }

    v44 = *(v85 + 16);
    v44(v83, v35, v86);
    v45 = type metadata accessor for DBAssetData();
    v46 = swift_allocObject();
    *(v46 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI07DBAssetB0C_AGQo_Md);
    v47 = lazy protocol witness table accessor for type DBAssetData and conformance DBAssetData(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
    v82 = v35;
    v88 = v45;
    v89 = v45;
    v90 = v47;
    v91 = v47;
    *(v46 + 80) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v46 + 48));
    static PersistentModel.createBackingData<A>()();
    *(v46 + 16) = 16843009;
    *(v46 + 20) = 257;
    *(v46 + 22) = 1;
    *(v46 + 32) = 0;
    *(v46 + 24) = 0;
    v67 = (v46 + 24);
    __swift_project_boxed_opaque_existential_1((v46 + 48), *(v46 + 72));
    swift_getKeyPath();
    v88 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGSgMd);
    type metadata accessor for DBSuggestion();
    lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
    dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

    *(v46 + 40) = 0;
    ObservationRegistrar.init()();
    v48 = v80;
    v49 = v86;
    v44(v80, v83, v86);
    (*(v85 + 56))(v48, 0, 1, v49);
    v88 = v46;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type DBAssetData and conformance DBAssetData(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    outlined destroy of UTType?(v48, &_s10Foundation4UUIDVSgMd);
    v88 = v46;
    v51 = swift_getKeyPath();
    MEMORY[0x28223BE20](v51);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v88 = v46;
    v52 = swift_getKeyPath();
    MEMORY[0x28223BE20](v52);
    v53 = v78;
    v54 = v79;
    outlined copy of Data._Representation(v79, v78);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    outlined consume of Data._Representation(v54, v53);

    v88 = v46;
    v55 = swift_getKeyPath();
    MEMORY[0x28223BE20](v55);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v88 = v46;
    v56 = swift_getKeyPath();
    MEMORY[0x28223BE20](v56);
    v57 = v75;
    v58 = countAndFlagsBits;
    outlined copy of Data?(v75, countAndFlagsBits);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    outlined consume of Data?(v57, v58);

    v88 = v46;
    v59 = swift_getKeyPath();
    MEMORY[0x28223BE20](v59);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v60 = v67;
    swift_beginAccess();
    *v60 = v76;
    *(v46 + 32) = object;

    DBAssetData.refreshAssetLoaded()();
    outlined consume of Data?(v57, v58);
    outlined consume of Data._Representation(v79, v78);
    v61 = v86;
    v62 = *(v85 + 8);
    v62(v83, v86);
    outlined destroy of UTType?(v81, &_s10Foundation3URLVSgMd);
    v62(v82, v61);
    outlined destroy of UTType?(v74, &_s10Foundation3URLVSgMd);
    v63 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = v63;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v46, 0x567972616D697270, 0xEC0000006F656469, isUniquelyReferenced_nonNull_native);
    v30 = v87;
    (*(v84 + 8))(v73, v72);
  }

  return v30;
}

Swift::Int EngagementDeviceType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type EngagementDeviceType and conformance EngagementDeviceType()
{
  result = lazy protocol witness table cache variable for type EngagementDeviceType and conformance EngagementDeviceType;
  if (!lazy protocol witness table cache variable for type EngagementDeviceType and conformance EngagementDeviceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EngagementDeviceType and conformance EngagementDeviceType);
  }

  return result;
}

CKRecordID CloudRecord.recordID.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID);
  v4 = (*(a2 + 64))(a1, a2);
  v6 = v5;
  v7.super.isa = (*(a2 + 72))(a1, a2);
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  return CKRecordID.init(recordName:zoneID:)(v8, v7);
}

uint64_t CloudRecord._setEncryptedValue(_:_:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (one-time initialization token for container != -1)
  {
    swift_once();
  }

  v12 = [static CloudManager.container containerID];
  v13 = [v12 environment];

  if (v13 != 1)
  {
LABEL_6:
    v17 = [a1 encryptedValues];
    swift_getObjectType();
    outlined init with copy of CKRecordValueProtocol?(a4, v18);

    CKRecordKeyValueSetting.subscript.setter();
    return swift_unknownObjectRelease();
  }

  if (*((*(a6 + 56))(a5, a6) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    v15 = v14;

    if ((v15 & 1) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }
}

uint64_t CloudRecord._setValue(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (one-time initialization token for container != -1)
  {
    swift_once();
  }

  v11 = [static CloudManager.container containerID];
  v12 = [v11 environment];

  if (v12 != 1)
  {
LABEL_6:
    outlined init with copy of CKRecordValueProtocol?(a4, v16);
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecord);

    return CKRecordKeyValueSetting.subscript.setter();
  }

  if (*((*(a6 + 56))(a5, a6) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }
}

uint64_t CloudRecord.dbRecordID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = (*(a2 + 64))();
  v8 = v7;
  result = (*(a2 + 40))(a1, a2);
  *a3 = v6;
  a3[1] = v8;
  a3[2] = result;
  a3[3] = v10;
  return result;
}

uint64_t static CloudRecord.isRecordClass(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  outlined init with copy of DBObject(v4, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudRecord_pMd);
  result = swift_dynamicCast();
  if (result)
  {
    v8 = result;
    (*(v3 + 8))(v6, a2);
    return v8;
  }

  return result;
}

CKRecordZoneID static CloudRecord.zoneID.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
  v4 = (*(a2 + 32))(a1, a2);
  v6 = v5;
  v7._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7._object = v8;
  v9._countAndFlagsBits = v4;
  v9._object = v6;
  return CKRecordZoneID.init(zoneName:ownerName:)(v9, v7);
}

uint64_t protocol witness for CloudRecord.dbRecordID.getter in conformance CloudMetaDevice@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0xD000000000000014;
  a1[3] = 0x8000000216583C40;
}

CKRecordZoneID protocol witness for CloudRecord.zoneID.getter in conformance CloudMetaDevice(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
  v6._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6._object = v7;
  v8._countAndFlagsBits = a3;
  v8._object = a4;
  return CKRecordZoneID.init(zoneName:ownerName:)(v8, v6);
}

CKRecordID protocol witness for CloudRecord.recordID.getter in conformance CloudMetaDevice(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID);
  v7 = *v4;
  v8 = v4[1];
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = a3;
  v12._object = a4;
  v13._countAndFlagsBits = v9;
  v13._object = v11;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v12, v13).super.isa;
  v15._countAndFlagsBits = v7;
  v15._object = v8;
  return CKRecordID.init(recordName:zoneID:)(v15, isa);
}

uint64_t protocol witness for CloudRecord.dbRecordID.getter in conformance CloudDevice@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0x656369766544;
  a1[3] = 0xE600000000000000;
}

uint64_t DBRecordID.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DBRecordID.type.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance DBRecordID.CodingKeys()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 25705;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DBRecordID.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBRecordID.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBRecordID.CodingKeys and conformance DBRecordID.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBRecordID.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBRecordID.CodingKeys and conformance DBRecordID.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DBRecordID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI10DBRecordIDV10CodingKeys33_5192DD7906A903A8A6A9197286F6A0ECLLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBRecordID.CodingKeys and conformance DBRecordID.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  v8 = v10[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v8)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

Swift::Int DBRecordID.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t DBRecordID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI10DBRecordIDV10CodingKeys33_5192DD7906A903A8A6A9197286F6A0ECLLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBRecordID.CodingKeys and conformance DBRecordID.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

MomentsUI::DBRecordID __swiftcall DBRecordID.init(id:type:)(Swift::String id, Swift::String type)
{
  *v2 = id;
  v2[1] = type;
  result.type = type;
  result.id = id;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBRecordID()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DBRecordID()
{
  String.hash(into:)();

  return String.hash(into:)();
}

uint64_t DBRecordID.hash(into:)()
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBRecordID()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DBRecordID(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t static DBRecordID.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t outlined init with copy of CKRecordValueProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CloudKit21CKRecordValueProtocol_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type DBRecordID.CodingKeys and conformance DBRecordID.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DBRecordID.CodingKeys and conformance DBRecordID.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBRecordID.CodingKeys and conformance DBRecordID.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBRecordID.CodingKeys and conformance DBRecordID.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBRecordID.CodingKeys and conformance DBRecordID.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBRecordID.CodingKeys and conformance DBRecordID.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBRecordID.CodingKeys and conformance DBRecordID.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBRecordID.CodingKeys and conformance DBRecordID.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBRecordID.CodingKeys and conformance DBRecordID.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBRecordID.CodingKeys and conformance DBRecordID.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBRecordID.CodingKeys and conformance DBRecordID.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBRecordID.CodingKeys and conformance DBRecordID.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBRecordID.CodingKeys and conformance DBRecordID.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBRecordID and conformance DBRecordID()
{
  result = lazy protocol witness table cache variable for type DBRecordID and conformance DBRecordID;
  if (!lazy protocol witness table cache variable for type DBRecordID and conformance DBRecordID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBRecordID and conformance DBRecordID);
  }

  return result;
}

uint64_t protocol witness for CloudSubDB.fetchZones() in conformance CloudRootDB(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return CloudDB.fetchZones()(a1, &protocol witness table for CloudRootDB);
}

uint64_t CloudDB.fetchZones()(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](CloudDB.fetchZones(), 0, 0);
}

uint64_t CloudDB.fetchZones()()
{
  v0[7] = MEMORY[0x277D84FA0];
  v1 = (*(v0[9] + 40))(v0[8]);
  v0[11] = v1;
  v2 = *(v1 + 16);
  v0[12] = v2;
  if (v2)
  {
    v0[13] = 0;
    outlined init with copy of DBObject(v1 + 32, (v0 + 2));
    v3 = v0[5];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
    v9 = (*(v4 + 24) + **(v4 + 24));
    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = CloudDB.fetchZones();

    return v9(v3, v4);
  }

  else
  {

    v7 = v0[1];
    v8 = MEMORY[0x277D84FA0];

    return v7(v8);
  }
}

{
  v1 = v0[12];
  v2 = v0[13] + 1;
  specialized Set.formUnion<A>(_:)(v0[15]);
  if (v2 == v1)
  {

    v3 = v0[7];
    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    v6 = v0[13];
    v0[13] = v6 + 1;
    outlined init with copy of DBObject(v0[11] + 40 * v6 + 72, (v0 + 2));
    v7 = v0[5];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
    v10 = (*(v8 + 24) + **(v8 + 24));
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = CloudDB.fetchZones();

    return v10(v7, v8);
  }
}

uint64_t CloudDB.fetchZones()(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 120) = a1;

  __swift_destroy_boxed_opaque_existential_1(v2 + 16);

  return MEMORY[0x2822009F8](CloudDB.fetchZones(), 0, 0);
}

uint64_t protocol witness for CloudSubDB.sendZones() in conformance CloudRootDB(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of AssetViewModelRenderable.isReadyForDisplay();

  return CloudDB.sendZones()(a1, &protocol witness table for CloudRootDB);
}

uint64_t CloudDB.sendZones()(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](CloudDB.sendZones(), 0, 0);
}

uint64_t CloudDB.sendZones()()
{
  v0[7] = MEMORY[0x277D84FA0];
  v1 = (*(v0[9] + 40))(v0[8]);
  v0[11] = v1;
  v2 = *(v1 + 16);
  v0[12] = v2;
  if (v2)
  {
    v0[13] = 0;
    outlined init with copy of DBObject(v1 + 32, (v0 + 2));
    v3 = v0[5];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
    v9 = (*(v4 + 32) + **(v4 + 32));
    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = CloudDB.sendZones();

    return v9(v3, v4);
  }

  else
  {

    v7 = v0[1];
    v8 = MEMORY[0x277D84FA0];

    return v7(v8);
  }
}

{
  v1 = v0[12];
  v2 = v0[13] + 1;
  specialized Set.formUnion<A>(_:)(v0[15]);
  if (v2 == v1)
  {

    v3 = v0[7];
    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    v6 = v0[13];
    v0[13] = v6 + 1;
    outlined init with copy of DBObject(v0[11] + 40 * v6 + 72, (v0 + 2));
    v7 = v0[5];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
    v10 = (*(v8 + 32) + **(v8 + 32));
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = CloudDB.sendZones();

    return v10(v7, v8);
  }
}

uint64_t CloudDB.sendZones()(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 120) = a1;

  __swift_destroy_boxed_opaque_existential_1(v2 + 16);

  return MEMORY[0x2822009F8](CloudDB.sendZones(), 0, 0);
}

uint64_t protocol witness for CloudSubDB.hasZone(_:) in conformance CloudRootDB(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return CloudDB.hasZone(_:)(a1, a2, &protocol witness table for CloudRootDB);
}

uint64_t CloudDB.hasZone(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](CloudDB.hasZone(_:), 0, 0);
}

uint64_t CloudDB.hasZone(_:)()
{
  result = (*(v0[9] + 40))(v0[8]);
  v0[11] = result;
  v2 = *(result + 16);
  v0[12] = v2;
  v0[13] = 0;
  if (v2)
  {
    if (*(result + 16))
    {
      outlined init with copy of DBObject(result + 32, (v0 + 2));
      v3 = v0[5];
      v4 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
      v9 = (*(v4 + 40) + **(v4 + 40));
      v5 = swift_task_alloc();
      v0[14] = v5;
      *v5 = v0;
      v5[1] = CloudDB.hasZone(_:);
      v6 = v0[7];

      return v9(v6, v3, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v7 = v0[1];
    v8 = v0[13] != v0[12];

    return v7(v8);
  }

  return result;
}

uint64_t CloudDB.hasZone(_:)(char a1)
{
  v2 = *v1;
  *(v2 + 120) = a1;

  __swift_destroy_boxed_opaque_existential_1(v2 + 16);

  return MEMORY[0x2822009F8](CloudDB.hasZone(_:), 0, 0);
}

void CloudDB.hasZone(_:)()
{
  if ((*(v0 + 120) & 1) != 0 || (v1 = *(v0 + 96), v2 = *(v0 + 104) + 1, *(v0 + 104) = v2, v2 == v1))
  {

    v3 = *(v0 + 8);
    v4 = *(v0 + 104) != *(v0 + 96);

    v3(v4);
  }

  else
  {
    v5 = *(v0 + 88);
    if (v2 >= *(v5 + 16))
    {
      __break(1u);
    }

    else
    {
      outlined init with copy of DBObject(v5 + 40 * v2 + 32, v0 + 16);
      v6 = *(v0 + 40);
      v7 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
      v10 = (*(v7 + 40) + **(v7 + 40));
      v8 = swift_task_alloc();
      *(v0 + 112) = v8;
      *v8 = v0;
      v8[1] = CloudDB.hasZone(_:);
      v9 = *(v0 + 56);

      v10(v9, v6, v7);
    }
  }
}

uint64_t static MotionActivityCollectionViewCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024MotionActivityCollectionbD0CAF06ClienthiB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static MotionActivityCollectionViewCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id MotionActivityCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t static MotionActivityCollectionViewLandscapeCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024MotionActivityCollectionb9LandscapeD0CAF06ClienthiB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static MotionActivityCollectionViewLandscapeCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id MotionActivityCollectionViewCell.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t static MotionActivityCollectionViewSmallCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024MotionActivityCollectionb5SmallD0CAF06ClienthiB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static MotionActivityCollectionViewSmallCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

char *specialized MotionActivityCollectionViewCell.init(frame:)(char a1)
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = static MutableMotionActivityViewModel.empty;
  v3 = objc_allocWithZone(type metadata accessor for MotionActivityView());
  v16 = a1;
  v4 = v2;
  v5 = LabeledImageView.init(viewModel:style:)(v4, &v16);
  if (v5)
  {
    v6 = one-time initialization token for accessibilityString;
    v7 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = MEMORY[0x21CE91FC0](static Constants.accessibilityString, *(&static Constants.accessibilityString + 1));
    [v7 setAccessibilityLabel_];

    v9 = v7;
    v10 = CollectionViewAssetCell.init(assetView:)(v9);
    v11 = *((*MEMORY[0x277D85000] & *v10) + 0x90);
    v12 = v10;
    v13 = v11();

    [v13 addSubview_];
    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    return v12;
  }

  else
  {

    v15 = [objc_allocWithZone(type metadata accessor for AssetView()) init];

    return CollectionViewAssetCell.init(assetView:)(v15);
  }
}

uint64_t MutableReflectionViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized MutableReflectionViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t MutableReflectionViewModel.promptIndex.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_promptIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MutableReflectionViewModel.promptIndex.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_promptIndex;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MutableReflectionViewModel.prompts.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_prompts;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *MutableReflectionViewModel.lightBackgroundColor.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_lightBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MutableReflectionViewModel.lightBackgroundColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_lightBackgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *MutableReflectionViewModel.darkBackgroundColor.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_darkBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MutableReflectionViewModel.darkBackgroundColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_darkBackgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MutableReflectionViewModel.__allocating_init(intendedViewport:supportedStyles:prompts:promptIndex:dateInterval:lightBackgroundColor:darkBackgroundColor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = specialized MutableReflectionViewModel.init(intendedViewport:supportedStyles:prompts:promptIndex:dateInterval:lightBackgroundColor:darkBackgroundColor:)(a1, a2, a3, a4, a5, a6, a7);

  return v16;
}

id static MutableReflectionViewModel.empty.getter()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v1 = static MutableReflectionViewModel.empty;

  return v1;
}

id MutableReflectionViewModel.init(intendedViewport:supportedStyles:prompts:promptIndex:dateInterval:lightBackgroundColor:darkBackgroundColor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v10 = specialized MutableReflectionViewModel.init(intendedViewport:supportedStyles:prompts:promptIndex:dateInterval:lightBackgroundColor:darkBackgroundColor:)(a1, a2, a3, a4, a5, a6, a7);

  return v10;
}

uint64_t MutableReflectionViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized MutableReflectionViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void MutableReflectionViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableReflectionViewModel.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_prompts) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_lightBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_darkBackgroundColor) = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableReflectionViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableReflectionViewModel.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_prompts) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_lightBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_darkBackgroundColor) = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

BOOL MutableReflectionViewModel.isRenderedBasedOnProperties.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_prompts;
  swift_beginAccess();
  return *(v0 + v1) != 0;
}

Swift::Bool __swiftcall MutableReflectionViewModel.clearCache()()
{
  v1 = OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_prompts;
  swift_beginAccess();
  *(v0 + v1) = 0;

  return 1;
}

uint64_t MutableReflectionViewModel.view(style:)(char *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(type metadata accessor for ReflectionView());
  *&v3[OBJC_IVAR____TtC9MomentsUI14ReflectionView_prompts] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC9MomentsUI14ReflectionView_promptIndex] = 0;
  v4 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_shuffleButton;
  v5 = objc_allocWithZone(MEMORY[0x277D75220]);
  v6 = v1;
  *&v3[v4] = [v5 init];
  v7 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_reflectionPromptLabel;
  *&v3[v7] = closure #1 in variable initialization expression of ReflectionView.reflectionPromptLabel();
  v8 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_categoryLabel;
  *&v3[v8] = closure #1 in variable initialization expression of ReflectionView.categoryLabel();
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v10 = *MEMORY[0x277D76560];
    v11 = one-time initialization token for accessibilityString;
    v12 = v6;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = static ReflectionView.Constants.accessibilityString;
    v14 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
    v15 = objc_allocWithZone(MEMORY[0x277D755E8]);
    v16 = v12;
    *&v3[v14] = [v15 init];
    swift_unknownObjectWeakInit();
    v17 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 56))(&v3[v17], 1, 1, v18);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v3[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = v2;
    v36.receiver = v3;
    v36.super_class = type metadata accessor for AssetView();
    v19 = objc_msgSendSuper2(&v36, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v20 = *((*MEMORY[0x277D85000] & *v19) + 0xE8);
    v21 = v19;
    v20();
    AssetView.setFallBackView()();
    [v21 setIsAccessibilityElement_];
    v22 = [v21 accessibilityTraits];
    if ((v10 & ~v22) != 0)
    {
      v23 = v10;
    }

    else
    {
      v23 = 0;
    }

    [v21 setAccessibilityTraits_];
    v24 = MEMORY[0x21CE91FC0](v13, *(&v13 + 1));
    [v21 setAccessibilityLabel_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_21658CA50;
    v26 = type metadata accessor for UITraitUserInterfaceStyle();
    v27 = MEMORY[0x277D74BF0];
    *(v25 + 32) = v26;
    *(v25 + 40) = v27;
    v28 = v21;
    MEMORY[0x21CE92C30](v25, sel_handleTraitChange);
    swift_unknownObjectRelease();

    [v28 handleTraitChange];
    [v28 setTranslatesAutoresizingMaskIntoConstraints_];

    [v28 setClipsToBounds_];
    v29 = *&v28[OBJC_IVAR____TtC9MomentsUI14ReflectionView_categoryLabel];
    v30 = v28;
    v31 = v29;
    v32 = [v31 text];
    if (v32)
    {
      v33 = v32;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = String.uppercased()();

      v35 = MEMORY[0x21CE91FC0](v34._countAndFlagsBits, v34._object);
    }

    else
    {
      v35 = 0;
    }

    [v31 setText_];

    ReflectionView.setupShuffleButton()();
    ReflectionView.setupText()();
    ReflectionView.addConstraints()();

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MutableReflectionViewModel.__ivar_destroyer()
{

  return swift_weakDestroy();
}

id MutableReflectionViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ReflectionViewModel.promptIndex.getter in conformance MutableReflectionViewModel()
{
  v1 = OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_promptIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t protocol witness for ReflectionViewModel.promptIndex.setter in conformance MutableReflectionViewModel(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_promptIndex;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *protocol witness for ReflectionViewModel.lightBackgroundColor.getter in conformance MutableReflectionViewModel()
{
  v1 = OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_lightBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *protocol witness for ReflectionViewModel.darkBackgroundColor.getter in conformance MutableReflectionViewModel()
{
  v1 = OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_darkBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t specialized MutableReflectionViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v24[3] = a3;
  v24[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_prompts;
  *&a2[OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_prompts] = 0;
  v9 = OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_lightBackgroundColor;
  *&a2[OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_lightBackgroundColor] = 0;
  v10 = OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_darkBackgroundColor;
  *&a2[OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_darkBackgroundColor] = 0;
  swift_weakInit();
  outlined init with copy of DBObject(v24, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBReflectionModel();
  if (swift_dynamicCast())
  {
    v11 = *(v22 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_prompts);
    swift_beginAccess();
    *&a2[v8] = v11;

    *&a2[OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_promptIndex] = 0;
    if (*(v22 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_lightBackgroundColor + 32))
    {
      v13 = [objc_opt_self() whiteColor];
    }

    else
    {
      v12 = (v22 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_lightBackgroundColor);
      v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*v12 green:v12[1] blue:v12[2] alpha:v12[3]];
    }

    v14 = v13;
    swift_beginAccess();
    v15 = *&a2[v9];
    *&a2[v9] = v14;

    if (*(v22 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_darkBackgroundColor + 32))
    {
      v17 = [objc_opt_self() whiteColor];
    }

    else
    {
      v16 = (v22 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_darkBackgroundColor);
      v17 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*v16 green:v16[1] blue:v16[2] alpha:v16[3]];
    }

    v18 = v17;
    swift_beginAccess();
    v19 = *&a2[v10];
    *&a2[v10] = v18;

    swift_weakAssign();
    v20 = specialized AssetViewModel.init(dbObject:)(v22, a2);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v20;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized MutableReflectionViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v10);
  (*(v7 + 16))(v9, a1, a3);
  return specialized MutableReflectionViewModel.init(dbObject:)(v9, v11, a3, a4);
}

id specialized MutableReflectionViewModel.init(intendedViewport:supportedStyles:prompts:promptIndex:dateInterval:lightBackgroundColor:darkBackgroundColor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v8 = v7;
  v44 = a5;
  v43 = a2;
  v42 = a1;
  ObjectType = swift_getObjectType();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v14 - 8);
  v45 = &v40 - v15;
  v16 = OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_prompts;
  *&v8[OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_prompts] = 0;
  v17 = OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_lightBackgroundColor;
  *&v8[OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_lightBackgroundColor] = 0;
  v18 = OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_darkBackgroundColor;
  *&v8[OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_darkBackgroundColor] = 0;
  swift_weakInit();
  swift_beginAccess();
  *&v8[v16] = a3;

  *&v8[OBJC_IVAR____TtC9MomentsUI26MutableReflectionViewModel_promptIndex] = a4;
  swift_beginAccess();
  v19 = *&v8[v17];
  *&v8[v17] = a6;
  v20 = a6;

  swift_beginAccess();
  v21 = *&v8[v18];
  *&v8[v18] = a7;
  v22 = a7;

  swift_weakAssign();
  v23 = type metadata accessor for DateInterval();
  v24 = *(v23 - 8);
  v25 = v45;
  (*(v24 + 16))(v45, a5, v23);
  v26 = *(v24 + 56);
  v26(v25, 0, 1, v23);
  type metadata accessor for DBAssetModel();
  v27 = ObjectType;
  static DBAssetModel.subscript.getter(ObjectType, &v48);
  LOBYTE(a3) = v48;
  v28 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v29 = &v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v29 = 0;
  v29[1] = 0;
  v30 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v26(&v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval], 1, 1, v23);
  UUID.init()();
  v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  v31 = v42;
  *&v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v42;
  *&v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = v43;
  swift_beginAccess();
  v32 = *&v8[v28];
  *&v8[v28] = 0;
  v33 = v31;

  swift_beginAccess();
  *v29 = 0;
  v29[1] = 0;

  swift_beginAccess();
  v34 = v45;
  outlined assign with copy of DateInterval?(v45, &v8[v30]);
  v35 = swift_endAccess();
  v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = a3;
  (*(v27 + 328))(v47, v35);
  LOBYTE(v30) = v47[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v36 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v36 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v36 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v36 + 112) = v30;
  *&v8[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v36;
  v37 = type metadata accessor for AssetViewModel();
  v46.receiver = v8;
  v46.super_class = v37;
  v38 = objc_msgSendSuper2(&v46, sel_init);
  (*(v24 + 8))(v44, v23);
  outlined destroy of DateInterval?(v34);
  return v38;
}

uint64_t type metadata accessor for MutableReflectionViewModel()
{
  result = type metadata singleton initialization cache for MutableReflectionViewModel;
  if (!type metadata singleton initialization cache for MutableReflectionViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id UIView.alignTrailingToSuper(margin:equivalency:)(char a1, double a2)
{
  v3 = v2;
  v6 = [v3 superview];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [v3 trailingAnchor];
  v9 = [v7 trailingAnchor];
  v10 = [v8 *off_27821DB68[a1]];

  [v10 setConstant_];
  if (v10)
  {
    [v10 setActive_];
  }

  return v10;
}

id UIView.alignBottomToSuper(margin:equivalency:)(char a1, double a2)
{
  v3 = v2;
  v6 = [v3 superview];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [v3 bottomAnchor];
  v9 = [v7 bottomAnchor];
  v10 = [v8 *off_27821DB68[a1]];

  if (v10)
  {
    [v10 setConstant_];
    [v10 setActive_];
  }

  return v10;
}

id UIView.alignTopToSuper(margin:equivalency:)(char a1, double a2)
{
  v3 = v2;
  v6 = [v3 superview];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [v3 topAnchor];
  v9 = [v7 topAnchor];
  v10 = [v8 *off_27821DB68[a1]];

  [v10 setConstant_];
  if (v10)
  {
    [v10 setActive_];
  }

  return v10;
}

id UIView.alignLeadingToSuper(margin:equivalency:)(char a1, double a2)
{
  v3 = v2;
  v6 = [v3 superview];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [v3 leadingAnchor];
  v9 = [v7 leadingAnchor];
  v10 = [v8 *off_27821DB68[a1]];

  [v10 setConstant_];
  if (v10)
  {
    [v10 setActive_];
  }

  return v10;
}

id UIView.setFixedWidth(width:)(SEL *a1, double a2)
{
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [v2 *a1];
  v6 = [v5 constraintEqualToConstant_];

  [v6 setActive_];
  return v6;
}

Swift::Void __swiftcall UIView.removeAllSubviews()()
{
  v1 = [v0 subviews];
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIView);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CE93180](i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    [v5 removeFromSuperview];
  }

LABEL_10:
}

id UIView.alignCenterVerticallyToSuper(margin:equivalency:)(char a1, double a2)
{
  v3 = v2;
  v6 = [v3 superview];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [v3 centerYAnchor];
  v9 = [v7 centerYAnchor];
  v10 = [v8 *off_27821DB68[a1]];

  [v10 setConstant_];
  if (v10)
  {
    [v10 setActive_];
  }

  return v10;
}

id UIView.alignCenterHorizontallyToSuper(margin:equivalency:)(char a1, double a2)
{
  v3 = v2;
  v6 = [v3 superview];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [v3 centerXAnchor];
  v9 = [v7 centerXAnchor];
  v10 = [v8 *off_27821DB68[a1]];

  [v10 setConstant_];
  if (v10)
  {
    [v10 setActive_];
  }

  return v10;
}

uint64_t UIView.fillSuper(horizontalMargin:verticalMargin:)(double a1, double a2)
{
  v3 = v2;
  v6 = MEMORY[0x277D84F90];
  v32 = MEMORY[0x277D84F90];
  v7 = [v3 superview];
  if (v7)
  {
    v8 = v7;
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v9 = [v3 leadingAnchor];
    v10 = [v8 leadingAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    [v11 setConstant_];
    if (v11)
    {
      [v11 setActive_];

      v12 = v11;
      MEMORY[0x21CE92260]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v6 = v32;
    }

    else
    {

      v6 = MEMORY[0x277D84F90];
    }
  }

  v13 = [v3 superview];
  if (v13)
  {
    v14 = v13;
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v15 = [v3 trailingAnchor];
    v16 = [v14 trailingAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    [v17 setConstant_];
    if (v17)
    {
      [v17 setActive_];

      v18 = v17;
      MEMORY[0x21CE92260]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v6 = v32;
    }

    else
    {
    }
  }

  v19 = [v3 superview];
  if (v19)
  {
    v20 = v19;
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v21 = [v3 topAnchor];
    v22 = [v20 topAnchor];
    v23 = [v21 constraintEqualToAnchor_];

    [v23 setConstant_];
    if (v23)
    {
      [v23 setActive_];

      v24 = v23;
      MEMORY[0x21CE92260]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v6 = v32;
    }

    else
    {
    }
  }

  v25 = [v3 superview];
  if (v25)
  {
    v26 = v25;
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v27 = [v3 bottomAnchor];
    v28 = [v26 bottomAnchor];
    v29 = [v27 constraintEqualToAnchor_];

    if (v29)
    {
      [v29 setConstant_];
      [v29 setActive_];

      v30 = v29;
      MEMORY[0x21CE92260]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      return v32;
    }

    else
    {
    }
  }

  return v6;
}

Swift::Void __swiftcall UIView.removeAllConstraints()()
{
  v2 = v0;
  v3 = [v0 superview];
  if (v3)
  {
    v4 = v3;
    while (1)
    {
      v5 = v4;
      v6 = [v5 constraints];
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v7 >> 62)
      {
        break;
      }

      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_6;
      }

LABEL_3:

      v4 = [v5 superview];

      if (!v4)
      {
        goto LABEL_26;
      }
    }

    v8 = __CocoaSet.count.getter();
    if (!v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v8 < 1)
    {
      goto LABEL_48;
    }

    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CE93180](v9, v7);
      }

      else
      {
        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 firstItem];
      if (v12)
      {
        v1 = v12;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSObject);
          if (static NSObject.== infix(_:_:)())
          {
            [v5 removeConstraint_];
          }
        }

        swift_unknownObjectRelease();
      }

      v13 = [v11 secondItem];
      if (v13)
      {
        v1 = v13;
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {

          swift_unknownObjectRelease();
          goto LABEL_10;
        }

        type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSObject);
        if (static NSObject.== infix(_:_:)())
        {
          [v5 removeConstraint_];
        }

        swift_unknownObjectRelease();
      }

LABEL_10:
      if (v8 == ++v9)
      {
        goto LABEL_3;
      }
    }
  }

LABEL_26:
  v14 = [v2 constraints];
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v1 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v27 = v1;
    v16 = 0;
    v17 = v1 & 0xC000000000000001;
    v18 = v1 & 0xFFFFFFFFFFFFFF8;
    v28 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v17)
      {
        v19 = MEMORY[0x21CE93180](v16, v1);
      }

      else
      {
        if (v16 >= *(v18 + 16))
        {
          goto LABEL_47;
        }

        v19 = *(v1 + 8 * v16 + 32);
      }

      v20 = v19;
      v21 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if ([v19 firstItem])
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v22 = i;
          v23 = v17;
          type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIView);
          v24 = v2;
          v25 = static NSObject.== infix(_:_:)();

          swift_unknownObjectRelease();
          if (v25)
          {
            v17 = v23;
            v18 = v28;
            if ([v20 secondItem])
            {

              swift_unknownObjectRelease();
            }

            else
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              v18 = v28;
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            i = v22;
            v1 = v27;
          }

          else
          {

            v17 = v23;
            i = v22;
            v1 = v27;
            v18 = v28;
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }

      ++v16;
      if (v21 == i)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

LABEL_50:

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 removeConstraints_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
}

id UIView.setAspectRatio(widthAspect:heightAspect:)(double a1, double a2)
{
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [v2 heightAnchor];
  v6 = [v2 widthAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 multiplier:a2 / a1];

  [v7 setActive_];
  return v7;
}

Swift::Int UIView.AutolayoutEquivalency.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](a1);
  return Hasher._finalize()();
}

id UIView.setWidthAnchor(view:multiplier:)(void *a1, double a2)
{
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [v2 widthAnchor];
  v6 = [a1 widthAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 multiplier:a2];

  [v7 setActive_];
  return v7;
}

void UIView.alignLeadingTo(view:margin:)(void *a1, SEL *a2, double a3)
{
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [v3 *a2];
  v8 = [a1 *a2];
  v9 = [v7 constraintEqualToAnchor:v8 constant:a3];

  [v9 setActive_];
}

id UIView.alignRightOf(view:margin:)(void *a1, SEL *a2, SEL *a3, double a4)
{
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = [v4 *a2];
  v10 = [a1 *a3];
  v11 = [v9 constraintEqualToAnchor_];

  [v11 setConstant_];
  [v11 setActive_];
  return v11;
}

id UIView.alignLeftOf(view:margin:)(void *a1, double a2)
{
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [v2 trailingAnchor];
  v6 = [a1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  [v7 setConstant_];
  [v7 setActive_];
  return v7;
}

NSLayoutConstraint_optional __swiftcall UIView.alignCenterVerticallyBetweenTopAndBottomAnchor(topAnchor:bottomAnchor:)(NSLayoutYAxisAnchor topAnchor, NSLayoutYAxisAnchor bottomAnchor)
{
  v3 = v2;
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v3 centerYAnchor];
  v7 = [(objc_class *)topAnchor.super.super.isa anchorWithOffsetToAnchor:v6];

  v8 = [v3 centerYAnchor];
  v9 = [v8 anchorWithOffsetToAnchor_];

  v10 = [v7 constraintEqualToAnchor_];
  v11 = v10;
  if (v10)
  {
    [(objc_class *)v10 setActive:1];
  }

  v13 = v11;
  result.value.super.isa = v13;
  result.is_nil = v12;
  return result;
}

unint64_t lazy protocol witness table accessor for type UIView.AutolayoutEquivalency and conformance UIView.AutolayoutEquivalency()
{
  result = lazy protocol witness table cache variable for type UIView.AutolayoutEquivalency and conformance UIView.AutolayoutEquivalency;
  if (!lazy protocol witness table cache variable for type UIView.AutolayoutEquivalency and conformance UIView.AutolayoutEquivalency)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIView.AutolayoutEquivalency and conformance UIView.AutolayoutEquivalency);
  }

  return result;
}

uint64_t ReflectionView.promptIndex.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_promptIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ReflectionView.promptIndex.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_promptIndex;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ReflectionView.shuffleButton.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_shuffleButton;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ReflectionView.shuffleButton.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_shuffleButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ReflectionView.accentColor.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (!v1)
  {
    goto LABEL_7;
  }

  ObjectType = swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (!v3)
  {

    v1 = 0;
LABEL_7:
    v9 = [objc_opt_self() systemIndigoColor];
    goto LABEL_8;
  }

  v4 = v3;
  v5 = *(v3 + 48);
  v1 = v1;
  v6 = v5(ObjectType, v4);

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = *(v4 + 56);
  v1 = v1;
  v8 = v7(ObjectType, v4);

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = [objc_opt_self() systemWhiteColor];
LABEL_8:
  v10 = v9;

  return v10;
}

id closure #1 in variable initialization expression of ReflectionView.reflectionPromptLabel()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTextAlignment_];
  [v0 setNumberOfLines_];
  [v0 setLineBreakMode_];
  v1 = *MEMORY[0x277D74420];
  v2 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:0];
  v3 = [v2 fontDescriptorWithSymbolicTraits_];
  if (v3)
  {
    v4 = v3;

    v2 = v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21658CA50;
  v6 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo24UIFontDescriptorTraitKeya_So0D6WeightatGMd);
  v7 = swift_initStackObject();
  v8 = MEMORY[0x277D74430];
  *(v7 + 16) = xmmword_21658CA50;
  v9 = *v8;
  *(v7 + 32) = *v8;
  *(v7 + 40) = v1;
  v10 = v6;
  v11 = v9;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(v7);
  swift_setDeallocating();
  outlined destroy of UTType?(v7 + 32, &_sSo24UIFontDescriptorTraitKeya_So0A6WeightatMd);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo24UIFontDescriptorTraitKeyaSo0A6WeightaGMd);
  *(inited + 40) = v12;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of UTType?(inited + 32, &_sSo29UIFontDescriptorAttributeNamea_yptMd);
  type metadata accessor for UIFontDescriptorAttributeName(0);
  lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = [v2 fontDescriptorByAddingAttributes_];

  v15 = [objc_opt_self() fontWithDescriptor:v14 size:0.0];
  [v0 setFont_];

  v16 = v0;
  [v16 setContentMode_];
  [v16 setMaximumContentSizeCategory_];
  [v16 setBaselineAdjustment_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];

  return v16;
}

id closure #1 in variable initialization expression of ReflectionView.categoryLabel()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setNumberOfLines_];
  v1 = *MEMORY[0x277D743F8];
  v2 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21658CA50;
  v4 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo24UIFontDescriptorTraitKeya_So0D6WeightatGMd);
  v5 = swift_initStackObject();
  v6 = MEMORY[0x277D74430];
  *(v5 + 16) = xmmword_21658CA50;
  v7 = *v6;
  *(v5 + 32) = *v6;
  *(v5 + 40) = v1;
  v8 = v4;
  v9 = v7;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(v5);
  swift_setDeallocating();
  outlined destroy of UTType?(v5 + 32, &_sSo24UIFontDescriptorTraitKeya_So0A6WeightatMd);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo24UIFontDescriptorTraitKeyaSo0A6WeightaGMd);
  *(inited + 40) = v10;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of UTType?(inited + 32, &_sSo29UIFontDescriptorAttributeNamea_yptMd);
  type metadata accessor for UIFontDescriptorAttributeName(0);
  lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v2 fontDescriptorByAddingAttributes_];

  v13 = [objc_opt_self() fontWithDescriptor:v12 size:0.0];
  [v0 setFont_];

  [v0 setMaximumContentSizeCategory_];
  v14 = [objc_opt_self() systemWhiteColor];
  v15 = [v14 colorWithAlphaComponent_];

  [v0 setTextColor_];
  type metadata accessor for ReflectionView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v23._object = 0x8000000216586A10;
  v18._countAndFlagsBits = 0x495443454C464552;
  v18._object = 0xEA00000000004E4FLL;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0xD000000000000016;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v23);

  v21 = MEMORY[0x21CE91FC0](v20._countAndFlagsBits, v20._object);

  [v0 setText_];

  [v0 setLineBreakMode_];
  return v0;
}

void *ReflectionView.init(viewModel:style:)(void *a1, char *a2)
{
  v4 = *a2;
  *&v2[OBJC_IVAR____TtC9MomentsUI14ReflectionView_prompts] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC9MomentsUI14ReflectionView_promptIndex] = 0;
  v5 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_shuffleButton;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v6 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_reflectionPromptLabel;
  *&v2[v6] = closure #1 in variable initialization expression of ReflectionView.reflectionPromptLabel();
  v7 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_categoryLabel;
  *&v2[v7] = closure #1 in variable initialization expression of ReflectionView.categoryLabel();
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    v8 = *MEMORY[0x277D76560];
    v9 = one-time initialization token for accessibilityString;
    v10 = a1;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = static ReflectionView.Constants.accessibilityString;
    v12 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
    v13 = objc_allocWithZone(MEMORY[0x277D755E8]);
    v14 = v10;
    *&v2[v12] = [v13 init];
    swift_unknownObjectWeakInit();
    v15 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 56))(&v2[v15], 1, 1, v16);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v2[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = v4;
    v36.receiver = v2;
    v36.super_class = type metadata accessor for AssetView();
    v17 = objc_msgSendSuper2(&v36, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v18 = *((*MEMORY[0x277D85000] & *v17) + 0xE8);
    v19 = v17;
    v20 = v17;
    v18();
    AssetView.setFallBackView()();
    [v20 setIsAccessibilityElement_];
    v21 = [v20 accessibilityTraits];
    if ((v8 & ~v21) != 0)
    {
      v22 = v8;
    }

    else
    {
      v22 = 0;
    }

    [v20 setAccessibilityTraits_];
    v23 = MEMORY[0x21CE91FC0](v11, *(&v11 + 1));
    [v20 setAccessibilityLabel_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_21658CA50;
    v25 = type metadata accessor for UITraitUserInterfaceStyle();
    v26 = MEMORY[0x277D74BF0];
    *(v24 + 32) = v25;
    *(v24 + 40) = v26;
    v27 = v20;
    MEMORY[0x21CE92C30](v24, sel_handleTraitChange);
    swift_unknownObjectRelease();

    [v27 handleTraitChange];
    [v27 setTranslatesAutoresizingMaskIntoConstraints_];

    [v27 setClipsToBounds_];
    v28 = *&v27[OBJC_IVAR____TtC9MomentsUI14ReflectionView_categoryLabel];
    v29 = v27;
    v30 = v28;
    v31 = [v30 text];
    if (v31)
    {
      v32 = v31;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = String.uppercased()();

      v34 = MEMORY[0x21CE91FC0](v33._countAndFlagsBits, v33._object);
    }

    else
    {
      v34 = 0;
    }

    [v30 setText_];

    ReflectionView.setupShuffleButton()();
    ReflectionView.setupText()();
    ReflectionView.addConstraints()();

    return v19;
  }

  else
  {

    type metadata accessor for ReflectionView();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t type metadata accessor for ReflectionView()
{
  result = type metadata singleton initialization cache for ReflectionView;
  if (!type metadata singleton initialization cache for ReflectionView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall ReflectionView.addSubViews()()
{
  ReflectionView.setupShuffleButton()();

  ReflectionView.setupText()();
}

Swift::Void __swiftcall ReflectionView.addConstraints()()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_categoryLabel;
  [v0 addSubview_];
  v2 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_reflectionPromptLabel;
  [v0 addSubview_];
  v3 = *(v0 + v1);
  v4 = [v3 superview];
  if (v4)
  {
    v5 = v4;
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = [v3 leadingAnchor];
    v7 = [v5 leadingAnchor];
    v8 = [v6 constraintEqualToAnchor_];

    [v8 setConstant_];
    if (v8)
    {
      [v8 setActive_];
    }
  }

  else
  {
    v8 = 0;
    v5 = v3;
  }

  v39 = objc_opt_self();
  v40 = MEMORY[0x21CE91FC0](0xD00000000000006ALL, 0x8000000216586810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000017;
  v10 = MEMORY[0x277D839F8];
  *(inited + 16) = xmmword_21658E190;
  *(inited + 40) = 0x8000000216586880;
  *(inited + 48) = 0x4018000000000000;
  *(inited + 72) = v10;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x80000002165868A0;
  *(inited + 96) = 0x4028000000000000;
  *(inited + 120) = v10;
  strcpy((inited + 128), "TEXT_PADDING");
  *(inited + 168) = v10;
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = 0x4030000000000000;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_21658CA60;
  strcpy((v12 + 32), "categoryLabel");
  *(v12 + 46) = -4864;
  v13 = *(v0 + v1);
  v14 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UILabel);
  *(v12 + 48) = v13;
  *(v12 + 72) = v14;
  *(v12 + 80) = 0xD000000000000010;
  *(v12 + 88) = 0x80000002165868C0;
  v15 = *(v0 + v2);
  *(v12 + 120) = v14;
  *(v12 + 96) = v15;
  v16 = v13;
  v17 = v15;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  v18 = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = [v39 constraintsWithVisualFormat:v40 options:0 metrics:isa views:v18];

  if (!v19)
  {
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v39 activateConstraints_];

  v20 = *(v0 + v2);
  v21 = [v20 superview];
  if (v21)
  {
    v22 = v21;
    [v20 setTranslatesAutoresizingMaskIntoConstraints_];
    v23 = [v20 trailingAnchor];
    v24 = [v22 trailingAnchor];
    v25 = [v23 constraintEqualToAnchor_];

    [v25 setConstant_];
    if (v25)
    {
      [v25 setActive_];
    }

    v26 = &selRef_setDeliversTouchesForGesturesToSuperview_;
  }

  else
  {
    v25 = 0;
    v22 = v20;
    v26 = &selRef_setDeliversTouchesForGesturesToSuperview_;
  }

  v27 = *(v0 + v2);
  v28 = [v27 superview];
  if (v28)
  {
    v29 = v28;
    [v27 setTranslatesAutoresizingMaskIntoConstraints_];
    v30 = [v27 v26[13]];
    v31 = [v29 v26[13]];
    v32 = [v30 constraintEqualToAnchor_];

    [v32 setConstant_];
    if (v32)
    {
      [v32 setActive_];
    }
  }

  else
  {
    v32 = 0;
    v29 = v27;
  }

  v33 = *((*MEMORY[0x277D85000] & *v0) + 0x160);
  v34 = *(v0 + v2);
  v35 = v33();
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  v36 = [v34 trailingAnchor];
  v37 = [v35 trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:6.0];

  [v38 setActive_];
}

id ReflectionView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t ReflectionView.updateAndShowViews()()
{
  *(v1 + 16) = v0;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](ReflectionView.updateAndShowViews(), v3, v2);
}

{
  v1 = *(v0 + 16);

  ReflectionView.updateData()();
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0xF0))();
  (*((*v2 & *v1) + 0x1B8))(v3);
  v4 = *(v0 + 8);

  return v4();
}

Swift::Void __swiftcall ReflectionView.updateData()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (v2)
  {
    v8 = v2;
    ObjectType = swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    if (v4)
    {
      v5 = (*(v4 + 16))(ObjectType, v4);
      v6 = MEMORY[0x277D84F90];
      if (v5)
      {
        v6 = v5;
      }

      *(v0 + OBJC_IVAR____TtC9MomentsUI14ReflectionView_prompts) = v6;

      v7 = ReflectionView.setupText()();
      (*((*v1 & *v0) + 0x1B8))(v7);
    }
  }
}

Swift::Void __swiftcall ReflectionView.handleTraitLight()()
{
  v1 = v0;
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (v2)
  {
    v7 = v2;
    ObjectType = swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    if (v4)
    {
      v5 = (*(v4 + 48))(ObjectType, v4);
      [v1 setBackgroundColor_];

      v6 = v5;
    }

    else
    {
      v6 = v7;
    }
  }
}

Swift::Void __swiftcall ReflectionView.handleTraitDark()()
{
  v1 = v0;
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (v2)
  {
    v7 = v2;
    ObjectType = swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    if (v4)
    {
      v5 = (*(v4 + 56))(ObjectType, v4);
      [v1 setBackgroundColor_];

      v6 = v5;
    }

    else
    {
      v6 = v7;
    }
  }
}

Swift::Void __swiftcall ReflectionView.updateBackgroundColor()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (v3)
  {
    v4 = v3;
    swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (v5)
    {
      v6 = v5;
      v7 = [v0 traitCollection];
      v8 = [v7 userInterfaceStyle];

      ObjectType = swift_getObjectType();
      if (v8 == 1)
      {
        v10 = (*(v6 + 48))(ObjectType, v6);
      }

      else
      {
        v10 = (*(v6 + 56))(ObjectType, v6);
      }

      v12 = v10;
      [v1 setBackgroundColor_];

      v13 = *((*v2 & *v1) + 0x178);
      v14 = *(v1 + OBJC_IVAR____TtC9MomentsUI14ReflectionView_categoryLabel);
      v15 = v13();
      v16 = [v15 colorWithAlphaComponent_];

      [v14 setTextColor_];
      v11 = v16;
    }

    else
    {
      v11 = v4;
    }
  }
}

id ReflectionView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void ReflectionView.__ivar_destroyer()
{

  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI14ReflectionView_categoryLabel);
}

id ReflectionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReflectionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for AssetViewBase.init(viewModel:style:) in conformance ReflectionView@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  result = (*(v3 + 432))(a1, &v6);
  *a3 = result;
  return result;
}

id ReflectionView.setupText()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI14ReflectionView_prompts);
  v2 = MEMORY[0x277D85000];
  if (*(v1 + 16))
  {
    v3 = *((*MEMORY[0x277D85000] & *v0) + 0x148);

    v5 = v3(v4);
    if (v5 < 0 || v5 >= *(v1 + 16))
    {
      v8 = 0;
      v7 = 0xE000000000000000;
    }

    else
    {
      v6 = v1 + 16 * v5;
      v8 = *(v6 + 32);
      v7 = *(v6 + 40);
    }

    v9 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v10 = MEMORY[0x21CE91FC0](v8, v7);

    v11 = [v9 initWithString_];

    v12 = *MEMORY[0x277D740C0];
    v13 = (*((*v2 & *v0) + 0x178))();
    v14 = v11;
    [v14 addAttribute:v12 value:v13 range:{0, objc_msgSend(v14, sel_length)}];

    v15 = *(v0 + OBJC_IVAR____TtC9MomentsUI14ReflectionView_reflectionPromptLabel);
    [v15 setAttributedText_];
  }

  v16 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_reflectionPromptLabel;
  v17 = *((*v2 & *v0) + 0x178);
  v18 = *(v0 + OBJC_IVAR____TtC9MomentsUI14ReflectionView_reflectionPromptLabel);
  v19 = v17();
  [v18 setTextColor_];

  [*(v0 + v16) setAdjustsFontSizeToFitWidth_];
  v20 = *(v0 + v16);

  return [v20 setNumberOfLines_];
}

void ReflectionView.setupShuffleButton()()
{
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  v2 = [objc_opt_self() configurationWithFont_];

  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x160);
  v5 = v4();
  v6 = v2;
  v7 = MEMORY[0x21CE91FC0](0xD00000000000001BLL, 0x80000002165869A0);
  v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

  v35 = v6;
  [v5 setImage:v8 forState:0];

  v9 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_updatePromptIndex_];
  v10 = v4();
  [v10 addGestureRecognizer_];

  v11 = v4();
  [v11 setUserInteractionEnabled_];

  v12 = v4();
  [v12 setDeliversTouchesForGesturesToSuperview_];

  v13 = v4();
  [v0 addSubview_];

  v14 = v4();
  v15 = &unk_27821E000;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];

  v16 = v4();
  v17 = (*((*v3 & *v0) + 0x178))();
  v18 = [v17 colorWithAlphaComponent_];

  [v16 setTintColor_];
  v19 = v4();
  v20 = [v19 superview];
  v21 = 0x1FBB28000uLL;
  if (v20)
  {
    v22 = v20;
    [v19 setTranslatesAutoresizingMaskIntoConstraints_];
    v23 = [v19 trailingAnchor];
    v24 = [v22 trailingAnchor];
    v25 = [v23 0x1FBB28F65];

    [v25 0x1FAE0C992];
    if (v25)
    {
      [v25 setActive_];
    }

    v15 = &unk_27821E000;
    v21 = 0x1FBB28000;
  }

  else
  {
    v25 = 0;
    v22 = v19;
  }

  v26 = v4();
  v27 = [v26 superview];
  if (v27)
  {
    v28 = v27;
    [v26 v15[440]];
    v29 = [v26 topAnchor];
    v30 = [v28 topAnchor];
    v31 = [v29 (v21 + 3941)];

    [v31 0x1FAE0C992];
    if (v31)
    {
      [v31 setActive_];
    }
  }

  else
  {
    v31 = 0;
    v28 = v26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_21658CA60;
  *(v32 + 56) = type metadata accessor for ReflectionView();
  *(v32 + 32) = v0;
  v33 = v0;
  v34 = v4();
  *(v32 + 88) = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIButton);
  *(v32 + 64) = v34;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v33 setAccessibilityElements_];
}

Swift::Int __swiftcall ReflectionView.updateReflectionIndex()()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC9MomentsUI14ReflectionView_prompts) + 16);
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x148);
  if (v3() >= v1 - 1)
  {
    v6 = (*((*v2 & *v0) + 0x150))(0);
    return (v3)(v6);
  }

  result = (*((*v2 & *v0) + 0x158))(v7);
  if (!__OFADD__(*v5, 1))
  {
    ++*v5;
    v6 = (result)(v7, 0);
    return (v3)(v6);
  }

  __break(1u);
  return result;
}

void specialized ReflectionView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI14ReflectionView_prompts) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9MomentsUI14ReflectionView_promptIndex) = 0;
  v1 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_shuffleButton;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v2 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_reflectionPromptLabel;
  *(v0 + v2) = closure #1 in variable initialization expression of ReflectionView.reflectionPromptLabel();
  v3 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_categoryLabel;
  *(v0 + v3) = closure #1 in variable initialization expression of ReflectionView.categoryLabel();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id specialized ReflectionView.updatePromptIndex(_:)()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC9MomentsUI14ReflectionView_prompts) + 16);
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x148);
  if (v3() >= v1 - 1)
  {
    v6 = (*((*v2 & *v0) + 0x150))(0);
  }

  else
  {
    result = (*((*v2 & *v0) + 0x158))(v15);
    if (__OFADD__(*v5, 1))
    {
      __break(1u);
      return result;
    }

    ++*v5;
    v6 = (result)(v15, 0);
  }

  v7 = (v3)(v6);
  v8 = (*((*v2 & *v0) + 0x150))(v7);
  v9 = (*((*v2 & *v0) + 0x70))(v8);
  if (v9)
  {
    v10 = v9;
    ObjectType = swift_getObjectType();
    v12 = swift_conformsToProtocol2();
    if (v12)
    {
      v13 = v12;
      v14 = v3();
      (*(v13 + 32))(v14, ObjectType, v13);
    }
  }

  return ReflectionView.setupText()();
}

void DBMediaFirstPartyModel.mediaCategory.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_mediaCategoryRawValue + 8))
  {
    *a1 = 4;
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_mediaCategoryRawValue);
    if (v2 >= 4)
    {
      LOBYTE(v2) = 4;
    }

    *a1 = v2;
  }
}

uint64_t static DBMediaFirstPartyModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_trackIdentifier);
  v4 = *(a1 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_trackIdentifier + 8);
  v5 = (a2 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_trackIdentifier);
  v6 = v5[1];
  result = (v4 | v6) == 0;
  if (v4)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if (*v3 == *v5 && v4 == v6)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t DBMediaFirstPartyModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseImage:subtitle:trackIdentifier:mediaCategoryRawValue:renderState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, char a14, unsigned __int8 *a15)
{
  v64 = a8;
  v74 = a7;
  v66 = a6;
  v67 = a5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v58 - v20;
  v22 = type metadata accessor for DateInterval();
  v59 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v73 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v61 = *a15;
  v65 = v25;
  v29 = *(v25 + 16);
  v62 = &v58 - v30;
  v71 = a1;
  v29();
  v63 = v28;
  v70 = a2;
  v68 = v24;
  (v29)(v28, a2, v24);
  if (a3)
  {
    v60 = a3;
  }

  else
  {
    if (one-time initialization token for zero != -1)
    {
      swift_once();
    }

    v60 = static ScreenSize.zero;
  }

  v31 = v22;
  v32 = *(a4 + 16);
  v33 = v72;
  v69 = a3;
  if (v32)
  {
    v76 = MEMORY[0x277D84F90];
    v34 = a3;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
    v35 = v76;
    v36 = *(v76 + 16);
    v37 = 32;
    do
    {
      v38 = *(a4 + v37);
      v76 = v35;
      v39 = *(v35 + 24);
      if (v36 >= v39 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v36 + 1, 1);
        v35 = v76;
      }

      *(v35 + 16) = v36 + 1;
      *(v35 + v36 + 32) = v38;
      ++v37;
      ++v36;
      --v32;
    }

    while (v32);

    v33 = v72;
  }

  else
  {
    v40 = a3;

    v35 = MEMORY[0x277D84F90];
  }

  outlined init with copy of DateInterval?(v74, v21);
  v41 = v59;
  v42 = *(v59 + 48);
  if (v42(v21, 1, v31) == 1)
  {
    DateInterval.init()();
    if (v42(v21, 1, v31) != 1)
    {
      outlined destroy of UTType?(v21, &_s10Foundation12DateIntervalVSgMd);
    }
  }

  else
  {
    (*(v41 + 32))(v73, v21, v31);
  }

  v43 = v64;
  if (v64)
  {
    v44 = v64;
    v45 = v43;
    v43 = v44;
    v46 = specialized static DBAssetModel.baseImage2DB(_:)(v45);
  }

  else
  {
    v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v47 = 0xE000000000000000;
  if (v66)
  {
    v48 = v66;
  }

  else
  {
    v48 = 0xE000000000000000;
  }

  if (v66)
  {
    v49 = v67;
  }

  else
  {
    v49 = 0;
  }

  if (a10)
  {
    v50 = a9;
  }

  else
  {
    v50 = 0;
  }

  if (a10)
  {
    v51 = a10;
  }

  else
  {
    v51 = 0xE000000000000000;
  }

  if (a12)
  {
    v52 = a11;
  }

  else
  {
    v52 = 0;
  }

  if (a12)
  {
    v47 = a12;
  }

  if (a14)
  {
    v53 = 0;
  }

  else
  {
    v53 = a13;
  }

  v75 = v61;
  v54 = (*(v33 + 424))(v62, v63, v60, v35, v49, v48, v73, v46, v50, v51, v52, v47, v53, 0, &v75);

  outlined destroy of UTType?(v74, &_s10Foundation12DateIntervalVSgMd);
  v55 = *(v65 + 8);
  v56 = v68;
  v55(v70, v68);
  v55(v71, v56);
  return v54;
}

uint64_t DBMediaFirstPartyModel.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_subtitle);

  return v1;
}

uint64_t DBMediaFirstPartyModel.trackIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_trackIdentifier);

  return v1;
}

MomentsUI::DBMediaFirstPartyModel::CodingKeys_optional __swiftcall DBMediaFirstPartyModel.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBMediaFirstPartyModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t DBMediaFirstPartyModel.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x656C746974627573;
  }

  if (a1 == 1)
  {
    return 0x6564496B63617274;
  }

  return 0xD000000000000015;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DBMediaFirstPartyModel.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6564496B63617274;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x80000002165765A0;
  if (v2 != 1)
  {
    v3 = 0xD000000000000015;
    v4 = 0x80000002165765A0;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x656C746974627573;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x6564496B63617274;
  if (*a2 == 1)
  {
    v5 = 0xEF7265696669746ELL;
  }

  else
  {
    v8 = 0xD000000000000015;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C746974627573;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBMediaFirstPartyModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DBMediaFirstPartyModel.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBMediaFirstPartyModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DBMediaFirstPartyModel.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DBMediaFirstPartyModel.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DBMediaFirstPartyModel.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564496B63617274;
  if (v2 != 1)
  {
    v5 = 0xD000000000000015;
    v4 = 0x80000002165765A0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C746974627573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance DBMediaFirstPartyModel.CodingKeys()
{
  v1 = 0x6564496B63617274;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974627573;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance DBMediaFirstPartyModel.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized DBMediaFirstPartyModel.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBMediaFirstPartyModel.CodingKeys(uint64_t a1)
{
  Party = lazy protocol witness table accessor for type DBMediaFirstPartyModel.CodingKeys and conformance DBMediaFirstPartyModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, Party);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBMediaFirstPartyModel.CodingKeys(uint64_t a1)
{
  Party = lazy protocol witness table accessor for type DBMediaFirstPartyModel.CodingKeys and conformance DBMediaFirstPartyModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, Party);
}

uint64_t DBMediaFirstPartyModel.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI22DBMediaFirstPartyModelC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBMediaFirstPartyModel.CodingKeys and conformance DBMediaFirstPartyModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for DBMediaFirstPartyModel();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v20[0]) = 0;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v11 = (v1 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_subtitle);
    *v11 = v9;
    v11[1] = v12;
    LOBYTE(v20[0]) = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14 = (v1 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_trackIdentifier);
    *v14 = v13;
    v14[1] = v15;
    LOBYTE(v20[0]) = 2;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17 = v1 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_mediaCategoryRawValue;
    *v17 = v16;
    *(v17 + 8) = v18 & 1;
    KeyedDecodingContainer.superDecoder()();
    v3 = DBAssetModel.init(from:)(v20);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t DBMediaFirstPartyModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI22DBMediaFirstPartyModelC10CodingKeysOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-1] - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBMediaFirstPartyModel.CodingKeys and conformance DBMediaFirstPartyModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v9[0]) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    LOBYTE(v9[0]) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v9[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    KeyedEncodingContainer.superEncoder()();
    DBAssetModel.encode(to:)(v9);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return (*(v4 + 8))(v6, v3);
}

Swift::Int DBMediaFirstPartyModel.metadataHash.getter()
{
  Hasher.init()();
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_trackIdentifier + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher.finalize()();
}

uint64_t DBMediaFirstPartyModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:subtitle:trackIdentifier:mediaCategoryRawValue:renderState:)(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t, uint64_t), void (**a4)(char *, uint64_t, uint64_t, uint64_t), unsigned int (**a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, size_t a12, uint64_t a13, char a14, unsigned __int8 *a15)
{
  swift_allocObject();
  v21 = specialized DBMediaFirstPartyModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:subtitle:trackIdentifier:mediaCategoryRawValue:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14 & 1, a15);

  return v21;
}

uint64_t DBMediaFirstPartyModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:subtitle:trackIdentifier:mediaCategoryRawValue:renderState:)(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t, uint64_t), void (**a4)(char *, uint64_t, uint64_t, uint64_t), unsigned int (**a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, size_t a12, uint64_t a13, char a14, unsigned __int8 *a15)
{
  v16 = specialized DBMediaFirstPartyModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:subtitle:trackIdentifier:mediaCategoryRawValue:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14 & 1, a15);

  return v16;
}

uint64_t DBMediaFirstPartyModel.__ivar_destroyer()
{
}

uint64_t DBMediaFirstPartyModel.deinit()
{
  v0 = DBAssetModel.deinit();

  return v0;
}

uint64_t DBMediaFirstPartyModel.__deallocating_deinit()
{
  DBAssetModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized DBMediaFirstPartyModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:subtitle:trackIdentifier:mediaCategoryRawValue:renderState:)(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t, uint64_t), void (**a4)(char *, uint64_t, uint64_t, uint64_t), unsigned int (**a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, size_t a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 *a15)
{
  v16 = v15;
  *&v134 = a8;
  v123 = a7;
  *&v135 = a6;
  v129 = a5;
  v128 = a4;
  v127 = a3;
  LODWORD(v125) = a14;
  v124 = a13;
  v121 = a12;
  v119 = a11;
  v117 = a10;
  v133 = *v16;
  v115 = type metadata accessor for Date();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v111 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v20 - 8);
  v132 = &v104 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
  MEMORY[0x28223BE20](v22 - 8);
  v131 = &v104 - v23;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
  v118 = *(v130 - 8);
  v24 = MEMORY[0x28223BE20](v130);
  v106 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v105 = &v104 - v26;
  v27 = type metadata accessor for DateInterval();
  v122 = v27;
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v120 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for UUID();
  v31 = MEMORY[0x28223BE20](v30);
  v126 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v104 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v104 - v36;
  LODWORD(v116) = *a15;
  v38 = (v16 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_subtitle);
  v39 = v117;
  *v38 = a9;
  v38[1] = v39;
  v40 = (v16 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_trackIdentifier);
  v41 = v121;
  *v40 = v119;
  v40[1] = v41;
  v42 = v16 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_mediaCategoryRawValue;
  *v42 = v124;
  *(v42 + 8) = v125 & 1;
  v121 = v43;
  v44 = *(v43 + 16);
  v113 = a1;
  v44(&v104 - v36, a1, v30);
  v112 = a2;
  v44(v35, a2, v30);
  v124 = type metadata accessor for DBAssetModel();
  static DBAssetModel.subscript.getter(v133, &v137);
  LODWORD(v125) = v137;
  v110 = v28;
  v45 = *(v28 + 16);
  v46 = v120;
  v45(v120, v123, v27);
  *(v16 + 16) = 0;
  v119 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
  v108 = v37;
  v44((v16 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id), v37, v30);
  v117 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID;
  v109 = v35;
  v133 = v30;
  v44((v16 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID), v35, v30);
  *(v16 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass) = v125;
  v47 = v127;
  *(v16 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport) = v127;
  *(v16 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_supportedStyles) = v128;
  v48 = (v16 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);
  v49 = v135;
  *v48 = v129;
  v48[1] = v49;
  v45((v16 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval), v46, v122);
  v50 = v47;
  v51 = specialized Dictionary.compactMapValues<A>(_:)(v134);
  v107 = 0;
  *(v16 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel__assetDataID) = v51;
  v119 = MEMORY[0x277D84F90];
  *(v16 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children) = MEMORY[0x277D84F90];
  v52 = v51;
  swift_beginAccess();
  v117 = v16;
  *(v16 + 16) = v116;
  v53 = v134 + 64;
  v54 = 1 << *(v134 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & *(v134 + 64);
  v57 = (v54 + 63) >> 6;
  v129 = (v121 + 48);
  v125 = (v121 + 32);
  v128 = (v118 + 56);
  v127 = (v118 + 48);
  v116 = v52;

  v58 = 0;
  v124 = v57;
  while (v56)
  {
    v59 = v58;
LABEL_9:
    v60 = __clz(__rbit64(v56)) | (v59 << 6);
    v61 = *(*(v134 + 56) + 8 * v60);
    v62 = *(*v61 + 192);
    *&v135 = *(*(v134 + 48) + 16 * v60 + 8);

    v64 = v132;
    v62(v63);
    v65 = v133;
    if ((*v129)(v64, 1, v133) == 1)
    {
      outlined destroy of UTType?(v64, &_s10Foundation4UUIDVSgMd);
      v66 = v131;
      v67 = v130;
      (*v128)(v131, 1, 1, v130);
    }

    else
    {
      v68 = *v125;
      v69 = v53;
      v70 = v126;
      (*v125)(v126, v64, v65);
      v71 = v65;
      v67 = v130;
      v72 = *(v130 + 48);
      v66 = v131;
      v73 = v70;
      v53 = v69;
      v57 = v124;
      v68(v131, v73, v71);
      *(v66 + v72) = v61;
      (*v128)(v66, 0, 1, v67);
    }

    v56 &= v56 - 1;

    if ((*v127)(v66, 1, v67) == 1)
    {
      outlined destroy of UTType?(v66, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
      v58 = v59;
    }

    else
    {
      v74 = v105;
      outlined init with take of (UUID, DBAssetData)(v66, v105);
      outlined init with take of (UUID, DBAssetData)(v74, v106);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v119 + 16) + 1, 1, v119);
      }

      v76 = *(v119 + 16);
      v75 = *(v119 + 24);
      v77 = v118;
      if (v76 >= v75 >> 1)
      {
        v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v75 > 1, v76 + 1, 1, v119);
        v77 = v118;
        v119 = v79;
      }

      v78 = v119;
      *(v119 + 16) = v76 + 1;
      outlined init with take of (UUID, DBAssetData)(v106, v78 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v76);
      v58 = v59;
    }
  }

  while (1)
  {
    v59 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      __break(1u);

      v102 = *(v121 + 8);
      v103 = v133;
      v102(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMR[v119], v133);
      v102(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMR[v117], v103);

      (*(v110 + 8))(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMR[v53], v122);
      swift_deallocPartialClassInstance();
      __break(1u);
      goto LABEL_25;
    }

    if (v59 >= v57)
    {
      break;
    }

    v56 = *(v53 + 8 * v59);
    ++v58;
    if (v56)
    {
      goto LABEL_9;
    }
  }

  v80 = v121;
  if (*(v119 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI11DBAssetDataCGMd);
    v81 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v81 = MEMORY[0x277D84F98];
  }

  v82 = v117;
  v136 = v81;

  v84 = v107;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v83, 1, &v136);
  if (!v84)
  {

    v85 = v136;
    v86 = swift_allocObject();
    *(v86 + 16) = v85;
    v87 = (v82 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataLookup);
    *v87 = partial apply for closure #3 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v87[1] = v86;
    v88 = swift_allocObject();
    *(v88 + 16) = v85;
    v89 = (v82 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataGet);
    *v89 = partial apply for closure #4 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v89[1] = v88;
    v90 = (v82 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetURLGet);
    *v90 = closure #3 in DBAssetModel.init(from:);
    v90[1] = 0;
    v91 = swift_allocObject();
    *(v91 + 16) = v116;
    swift_beginAccess();
    v135 = *v87;
    swift_beginAccess();
    v134 = *v89;
    swift_beginAccess();
    v92 = *v90;
    v93 = v90[1];
    v94 = v82 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData;
    *v94 = partial apply for closure #6 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    *(v94 + 8) = v91;
    v95 = v134;
    *(v94 + 16) = v135;
    *(v94 + 32) = v95;
    *(v94 + 48) = v92;
    *(v94 + 56) = v93;

    v96 = v111;
    static Date.now.getter();
    v97 = *(v110 + 8);
    v98 = v122;
    v97(v123, v122);
    v99 = *(v80 + 8);
    v100 = v133;
    v99(v112, v133);
    v99(v113, v100);
    v97(v120, v98);
    v99(v109, v100);
    v99(v108, v100);
    (*(v114 + 32))(v82 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_creationDate, v96, v115);
    return v82;
  }

LABEL_25:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t specialized DBMediaFirstPartyModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBMediaFirstPartyModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type DBMediaFirstPartyModel.CodingKeys and conformance DBMediaFirstPartyModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DBMediaFirstPartyModel.CodingKeys and conformance DBMediaFirstPartyModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBMediaFirstPartyModel.CodingKeys and conformance DBMediaFirstPartyModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMediaFirstPartyModel.CodingKeys and conformance DBMediaFirstPartyModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBMediaFirstPartyModel.CodingKeys and conformance DBMediaFirstPartyModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBMediaFirstPartyModel.CodingKeys and conformance DBMediaFirstPartyModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMediaFirstPartyModel.CodingKeys and conformance DBMediaFirstPartyModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBMediaFirstPartyModel.CodingKeys and conformance DBMediaFirstPartyModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBMediaFirstPartyModel.CodingKeys and conformance DBMediaFirstPartyModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMediaFirstPartyModel.CodingKeys and conformance DBMediaFirstPartyModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBMediaFirstPartyModel.CodingKeys and conformance DBMediaFirstPartyModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBMediaFirstPartyModel.CodingKeys and conformance DBMediaFirstPartyModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBMediaFirstPartyModel.CodingKeys and conformance DBMediaFirstPartyModel.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for DBMediaFirstPartyModel()
{
  result = type metadata singleton initialization cache for DBMediaFirstPartyModel;
  if (!type metadata singleton initialization cache for DBMediaFirstPartyModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double UILabel.estimatedHeight(forWidth:text:ofSize:weight:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_So6UIFontCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21658CA50;
  v11 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v12 = objc_opt_self();
  v13 = v11;
  *(inited + 40) = [v12 systemFontOfSize:a4 weight:a5];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_So6UIFontCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (NSAttributedStringKey, UIFont)(inited + 32);
  v27 = a2;

  v15 = String.init<A>(_:)();
  v16 = MEMORY[0x21CE91FC0](v15);

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v14);

  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v16 boundingRectWithSize:3 options:isa attributes:0 context:{a3, 3.40282347e38, a1, v27}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v28.origin.x = v19;
  v28.origin.y = v21;
  v28.size.width = v23;
  v28.size.height = v25;
  return ceil(CGRectGetHeight(v28));
}

double specialized UILabel.estimatedHeight(forWidth:text:ofFont:)(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_So6UIFontCtGMd);
  inited = swift_initStackObject();
  v9 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_21658CA50;
  v10 = *v9;
  *(inited + 32) = v10;
  *(inited + 40) = a3;
  v11 = v10;
  v12 = a3;
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_So6UIFontCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (NSAttributedStringKey, UIFont)(inited + 32);
  v26 = a1;

  v14 = String.init<A>(_:)();
  v15 = MEMORY[0x21CE91FC0](v14);

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v13);

  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v15 boundingRectWithSize:3 options:isa attributes:0 context:{a4, 3.40282347e38, v26, a2}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v27.origin.x = v18;
  v27.origin.y = v20;
  v27.size.width = v22;
  v27.size.height = v24;
  return ceil(CGRectGetHeight(v27));
}

uint64_t outlined destroy of (NSAttributedStringKey, UIFont)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_So6UIFontCtMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void MultiPinMapPOIAnnotationView.update(style:count:countColor:poiIcon:)(unsigned __int8 a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = *a4;
  v11 = *(a4 + 8);
  v12 = *(a4 + 16);
  v13 = *(a4 + 24);
  v14 = *(a4 + 32);
  (*((*MEMORY[0x277D85000] & *v5) + 0x80))();
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      [*(v5 + OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_numberLabel) setHidden_];
      v20 = *(v5 + OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_poiIconView);
      if (a5)
      {
        v21 = Image.uiImage.getter();
      }

      else
      {
        v21 = 0;
      }

      [v20 setImage_];
    }

    else
    {
      v26 = *(v5 + OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_poiIconView);
      v27 = [objc_opt_self() systemFontOfSize_];
      v28 = [objc_opt_self() configurationWithFont:v27 scale:3];

      v29 = v28;
      v30 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x800000021657D200);
      v31 = [objc_opt_self() _systemImageNamed_withConfiguration_];

      [v26 setImage_];
      v32 = objc_opt_self();
      v33 = [v32 whiteColor];
      [v26 setTintColor_];

      v34 = *(v6 + OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_baseView);
      v35 = [v32 systemIndigoColor];
      [v34 setBackgroundColor_];

      v36 = *(v6 + OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_numberLabel);

      [v36 setHidden_];
    }
  }

  else
  {
    if (a1)
    {
      if ((a3 | v14))
      {
        return;
      }

      v22 = *(v5 + OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_numberLabel);
      [v22 setHidden_];
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = MEMORY[0x21CE91FC0](v23);

      [v22 setText_];

      v18 = *(v5 + OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_baseView);
      v19 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v10 green:v11 blue:v12 alpha:v13];
    }

    else
    {
      if (a3)
      {
        return;
      }

      v15 = *(v5 + OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_numberLabel);
      [v15 setHidden_];
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = MEMORY[0x21CE91FC0](v16);

      [v15 setText_];

      v18 = *(v5 + OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_baseView);
      v19 = [objc_opt_self() systemIndigoColor];
    }

    v25 = v19;
    [v18 setBackgroundColor_];

    [*(v6 + OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_poiIconView) setImage_];
  }
}

id MultiPinMapPOIAnnotationView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t MultiPinMapPOIAnnotationView.style.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_style;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MultiPinMapPOIAnnotationView.style.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_style;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Swift::Int MultiPinMapPOIAnnotationView.Style.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](a1);
  return Hasher._finalize()();
}

char *MultiPinMapPOIAnnotationView.init()()
{
  v1 = OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_baseView;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_poiIconView;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v3 = OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_numberLabel;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  [v4 setTextColor_];

  [v4 setTextAlignment_];
  v7 = [objc_opt_self() systemFontOfSize:14.0 weight:*MEMORY[0x277D743F8]];
  [v4 setFont_];

  *&v0[v3] = v4;
  v8 = OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_whiteBorderLayer;
  *&v0[v8] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v0[OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_style] = 0;
  v22.receiver = v0;
  v22.super_class = type metadata accessor for MultiPinMapPOIAnnotationView();
  v9 = objc_msgSendSuper2(&v22, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_baseView;
  v11 = *&v9[OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_baseView];
  v12 = v9;
  [v12 addSubview_];
  v13 = *&v9[v10];
  v14 = [v5 whiteColor];
  [v13 setBackgroundColor_];

  v15 = OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_poiIconView;
  [v12 addSubview_];
  [*&v12[v15] setContentMode_];
  [v12 addSubview_];
  v16 = [v12 layer];

  [v16 addSublayer_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21658CA50;
  v18 = type metadata accessor for UITraitUserInterfaceStyle();
  v19 = MEMORY[0x277D74BF0];
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  MEMORY[0x21CE92C30](v17, sel_handleTraitChange);
  swift_unknownObjectRelease();

  (*((*MEMORY[0x277D85000] & *v12) + 0x90))(v20);
  [v12 handleTraitChange];

  return v12;
}

Swift::Void __swiftcall MultiPinMapPOIAnnotationView.setupBorder()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_whiteBorderLayer);
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  v4 = [v3 CGColor];

  [v1 setFillColor_];
  v5 = [v2 whiteColor];
  v6 = [v5 CGColor];

  [v1 setStrokeColor_];

  [v1 setLineWidth_];
}

id MultiPinMapPOIAnnotationView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall MultiPinMapPOIAnnotationView.layoutSubviews()()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for MultiPinMapPOIAnnotationView();
  objc_msgSendSuper2(&v20, sel_layoutSubviews);
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_baseView);
  [v0 bounds];
  [v1 setFrame_];
  [v0 bounds];
  [v1 _setCornerRadius_];
  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_numberLabel);
  [v0 bounds];
  v3 = [v2 setFrame_];
  v4 = (*((*MEMORY[0x277D85000] & *v0) + 0x78))(v3);
  v5 = *(v0 + OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_poiIconView);
  [v0 bounds];
  if (v4 == 3)
  {
    v10 = CGRectGetWidth(*&v6) + -10.0;
    [v0 bounds];
    [v5 setFrame_];
  }

  else
  {
    [v5 setFrame_];
  }

  [v0 bounds];
  v11 = CGRectGetWidth(v23) * 0.5 + -1.0;
  [v0 bounds];
  MidX = CGRectGetMidX(v24);
  [v0 bounds];
  MidY = CGRectGetMidY(v25);
  v14 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory(MidX, MidY);
  v16 = v15;
  v17 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  [v17 addArcWithCenter:1 radius:v14 startAngle:v16 endAngle:v11 clockwise:{0.0, 6.28318501}];
  v18 = *(v0 + OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_whiteBorderLayer);
  v19 = [v17 CGPath];
  [v18 setPath_];
}

id MultiPinMapPOIAnnotationView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MultiPinMapPOIAnnotationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiPinMapPOIAnnotationView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id MultiPinMapPOIAnnotationView.genericPinImage.getter()
{
  v0 = [objc_opt_self() systemFontOfSize_];
  v1 = [objc_opt_self() configurationWithFont:v0 scale:3];

  v2 = v1;
  v3 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x800000021657D200);
  v4 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  return v4;
}

Swift::Void __swiftcall MultiPinMapPOIAnnotationView.updateRoundPinShadow()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = [v0 layer];
  v4 = objc_opt_self();
  v5 = &selRef_blackColor;
  if (v2 != 1)
  {
    v5 = &selRef_whiteColor;
  }

  v6 = [v4 *v5];
  v7 = [v6 CGColor];

  [v3 setShadowColor_];
  v8 = [v0 layer];
  LODWORD(v9) = 1039516303;
  [v8 setShadowOpacity_];

  v10 = [v0 layer];
  [v10 setShadowOffset_];

  v11 = [v0 layer];
  [v11 setShadowRadius_];
}

uint64_t specialized MultiPinMapPOIAnnotationView.Style.init(from:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if ((*(a2 + 64))(ObjectType, a2))
  {
    (*(a2 + 56))(v7, ObjectType, a2);

    return (v8 & 1) == 0;
  }

  else
  {
    v6 = (*(a2 + 32))(ObjectType, a2);
    (*(*v6 + 240))(v7);

    if (LOBYTE(v7[0]) == 2)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void specialized MultiPinMapPOIAnnotationView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_baseView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_poiIconView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v3 = OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_numberLabel;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = [objc_opt_self() whiteColor];
  [v4 setTextColor_];

  [v4 setTextAlignment_];
  v6 = [objc_opt_self() systemFontOfSize:14.0 weight:*MEMORY[0x277D743F8]];
  [v4 setFont_];

  *(v0 + v3) = v4;
  v7 = OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_whiteBorderLayer;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  *(v0 + OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_style) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type MultiPinMapPOIAnnotationView.Style and conformance MultiPinMapPOIAnnotationView.Style()
{
  result = lazy protocol witness table cache variable for type MultiPinMapPOIAnnotationView.Style and conformance MultiPinMapPOIAnnotationView.Style;
  if (!lazy protocol witness table cache variable for type MultiPinMapPOIAnnotationView.Style and conformance MultiPinMapPOIAnnotationView.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultiPinMapPOIAnnotationView.Style and conformance MultiPinMapPOIAnnotationView.Style);
  }

  return result;
}

id UIImage.with(style:)(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 imageAsset];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v7 = [v5 imageWithTraitCollection_];

  return v7;
}

id UIImage.dark.getter()
{
  v1 = [v0 imageAsset];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v4 = [v2 imageWithTraitCollection_];

  return v4;
}

void UIImage.register(image:style:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 imageAsset];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
    [v6 registerImage:a1 withTraitCollection:v7];
  }
}

Swift::Int ProcessingError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](v1);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for ProcessingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProcessingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t TransferMapViewModel.mapViewModels.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_mapViewModels;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *TransferMapViewModel.location.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_location;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TransferMapViewModel.location.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_location;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t TransferMapViewModel.isWorkLocation.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_isWorkLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TransferMapViewModel.isWorkLocation.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_isWorkLocation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL TransferMapViewModel.isSingleMap.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x238))();
  if (v1)
  {
  }

  return v1 == 0;
}

MomentsUI::TransferMapViewModel::CodingKeys_optional __swiftcall TransferMapViewModel.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferMapViewModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t TransferMapViewModel.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x4D7765695670616DLL;
  v2 = 0x6E6F697461636F6CLL;
  v3 = 0x6D65744970616DLL;
  if (a1 != 4)
  {
    v3 = 0x6F4C6B726F577369;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x6D614E6563616C70;
  if (a1 != 1)
  {
    v4 = 0x656D614E79746963;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TransferMapViewModel.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xED0000736C65646FLL;
  v3 = 0x4D7765695670616DLL;
  v4 = *a1;
  v5 = *a2;
  v6 = 0xE800000000000000;
  v7 = 0x6E6F697461636F6CLL;
  v8 = 0xE700000000000000;
  v9 = 0x6D65744970616DLL;
  if (v4 != 4)
  {
    v9 = 0x6F4C6B726F577369;
    v8 = 0xEE006E6F69746163;
  }

  if (v4 != 3)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0x6D614E6563616C70;
  v11 = 0xE900000000000065;
  if (v4 != 1)
  {
    v10 = 0x656D614E79746963;
    v11 = 0xE800000000000000;
  }

  if (!*a1)
  {
    v10 = 0x4D7765695670616DLL;
    v11 = 0xED0000736C65646FLL;
  }

  if (*a1 <= 2u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (v4 <= 2)
  {
    v13 = v11;
  }

  else
  {
    v13 = v6;
  }

  if (*a2 > 2u)
  {
    if (v5 == 3)
    {
      v2 = 0xE800000000000000;
      if (v12 != 0x6E6F697461636F6CLL)
      {
        goto LABEL_31;
      }
    }

    else if (v5 == 4)
    {
      v2 = 0xE700000000000000;
      if (v12 != 0x6D65744970616DLL)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEE006E6F69746163;
      if (v12 != 0x6F4C6B726F577369)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (*a2)
    {
      if (v5 == 1)
      {
        v2 = 0xE900000000000065;
        if (v12 != 0x6D614E6563616C70)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE800000000000000;
      v3 = 0x656D614E79746963;
    }

    if (v12 != v3)
    {
LABEL_31:
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v13 != v2)
  {
    goto LABEL_31;
  }

  v14 = 1;
LABEL_32:

  return v14 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TransferMapViewModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TransferMapViewModel.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TransferMapViewModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TransferMapViewModel.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TransferMapViewModel.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TransferMapViewModel.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000736C65646FLL;
  v4 = 0x4D7765695670616DLL;
  v5 = 0xE800000000000000;
  v6 = 0x6E6F697461636F6CLL;
  v7 = 0xE700000000000000;
  v8 = 0x6D65744970616DLL;
  if (v2 != 4)
  {
    v8 = 0x6F4C6B726F577369;
    v7 = 0xEE006E6F69746163;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000065;
  v10 = 0x6D614E6563616C70;
  if (v2 != 1)
  {
    v10 = 0x656D614E79746963;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TransferMapViewModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x4D7765695670616DLL;
  v3 = 0x6E6F697461636F6CLL;
  v4 = 0x6D65744970616DLL;
  if (v1 != 4)
  {
    v4 = 0x6F4C6B726F577369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D614E6563616C70;
  if (v1 != 1)
  {
    v5 = 0x656D614E79746963;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance TransferMapViewModel.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized TransferMapViewModel.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TransferMapViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferMapViewModel.CodingKeys and conformance TransferMapViewModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TransferMapViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferMapViewModel.CodingKeys and conformance TransferMapViewModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id TransferMapViewModel.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_mapViewModels;
  *(v1 + OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_mapViewModels) = 0;
  v5 = (v1 + OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_placeName);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_cityName);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_location;
  *(v1 + OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_location) = 0;
  v8 = (v1 + OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_mapItem);
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_isWorkLocation;
  *(v1 + OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_isWorkLocation) = 2;
  type metadata accessor for TransferMapViewModel();
  v10 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  swift_beginAccess();
  *(v2 + v4) = v10;

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSString);
  v11 = NSCoder.decodeObject<A>(of:forKey:)();
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  swift_beginAccess();
  *v5 = 0;
  v5[1] = 0;

  v12 = NSCoder.decodeObject<A>(of:forKey:)();
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  swift_beginAccess();
  *v6 = 0;
  v6[1] = 0;

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CLLocation);
  v13 = NSCoder.decodeObject<A>(of:forKey:)();
  swift_beginAccess();
  v14 = *(v2 + v7);
  *(v2 + v7) = v13;

  v15 = NSCoder.decodeObject<A>(of:forKey:)();
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  swift_beginAccess();
  *v8 = 0;
  v8[1] = 0;

  v16 = MEMORY[0x21CE91FC0](0x6F4C6B726F577369, 0xEE006E6F69746163);
  LOBYTE(v8) = [a1 decodeBoolForKey_];

  swift_beginAccess();
  *(v2 + v9) = v8;
  v17 = specialized AssetViewModel.init(coder:)(a1);

  return v17;
}

Swift::Void __swiftcall TransferMapViewModel.encode(with:)(NSCoder with)
{
  AssetViewModel.encode(with:)(with);
  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x238))())
  {
    type metadata accessor for TransferMapViewModel();
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v5 = MEMORY[0x21CE91FC0](0x4D7765695670616DLL, 0xED0000736C65646FLL);
  [(objc_class *)with.super.isa encodeObject:v4.super.isa forKey:v5];
  swift_unknownObjectRelease();

  v6 = (*((*v3 & *v1) + 0x250))();
  if (v7)
  {
    v8 = MEMORY[0x21CE91FC0](v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = MEMORY[0x21CE91FC0](0x6D614E6563616C70, 0xE900000000000065);
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];
  swift_unknownObjectRelease();

  v10 = (*((*v3 & *v1) + 0x268))();
  if (v11)
  {
    v12 = MEMORY[0x21CE91FC0](v10);
  }

  else
  {
    v12 = 0;
  }

  v13 = MEMORY[0x21CE91FC0](0x656D614E79746963, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];
  swift_unknownObjectRelease();

  v14 = (*((*v3 & *v1) + 0x280))();
  v15 = MEMORY[0x21CE91FC0](0x6E6F697461636F6CLL, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v14 forKey:v15];

  v16 = (*((*v3 & *v1) + 0x298))();
  if (v17)
  {
    v18 = MEMORY[0x21CE91FC0](v16);
  }

  else
  {
    v18 = 0;
  }

  v19 = MEMORY[0x21CE91FC0](0x6D65744970616DLL, 0xE700000000000000);
  [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];
  swift_unknownObjectRelease();

  if ((*((*v3 & *v1) + 0x2B0))() == 2)
  {
    isa = 0;
  }

  else
  {
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  v21 = MEMORY[0x21CE91FC0](0x6F4C6B726F577369, 0xEE006E6F69746163);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v21];
  swift_unknownObjectRelease();
}

void TransferMapViewModel.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_mapViewModels) = 0;
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_placeName);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_cityName);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_location) = 0;
  v3 = (v0 + OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_mapItem);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_isWorkLocation) = 2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void TransferMapViewModel.init(dbObject:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_mapViewModels) = 0;
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_placeName);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_cityName);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_location) = 0;
  v3 = (v0 + OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_mapItem);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_isWorkLocation) = 2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id TransferMapViewModel.init(mapViewModel:)(void *a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v63 - v7;
  v9 = OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_mapViewModels;
  *&v2[OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_mapViewModels] = 0;
  v10 = &v2[OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_placeName];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v2[OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_cityName];
  *v11 = 0;
  v11[1] = 0;
  v67 = OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_location;
  *&v2[OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_location] = 0;
  v12 = &v2[OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_mapItem];
  *v12 = 0;
  v12[1] = 0;
  v68 = v12;
  v69 = OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_isWorkLocation;
  v2[OBJC_IVAR____TtC9MomentsUI20TransferMapViewModel_isWorkLocation] = 2;
  v13 = swift_getObjectType();
  v14 = *(a2 + 16);
  v72 = v13;
  v15 = v14(v13, a2);
  v16 = MEMORY[0x277D84F90];
  v71 = v8;
  if (v15)
  {
    v17 = v15;
    v66 = a1;
    v76 = MEMORY[0x277D84F90];
    a1 = *(v15 + 16);
    if (a1)
    {
      v64 = v9;
      v65 = a2;
      a2 = 0;
      v18 = (v15 + 40);
      while (a2 < *(v17 + 16))
      {
        v20 = *(v18 - 1);
        v19 = *v18;
        objc_allocWithZone(type metadata accessor for TransferMapViewModel());
        TransferMapViewModel.init(mapViewModel:)(v20, v19);
        MEMORY[0x21CE92260]();
        if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++a2;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v18 += 2;
        if (a1 == a2)
        {
          v16 = v76;
          a2 = v65;
          v9 = v64;
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_17;
    }

LABEL_9:

    a1 = v66;
  }

  else
  {
    v16 = 0;
  }

  swift_beginAccess();
  *&v3[v9] = v16;

  v17 = *(a2 + 8);
  v21 = v72;
  v22 = (*(v17 + 8))(v72, v17);
  v24 = v23;
  swift_beginAccess();
  *v10 = v22;
  v10[1] = v24;

  v25 = (*(a2 + 24))(v21, a2);
  v27 = v26;
  swift_beginAccess();
  *v11 = v25;
  v11[1] = v27;

  v28 = *(a2 + 32);
  v29 = v28(v21, a2);
  v30 = (*(*v29 + 168))(v29);
  v31 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v30 longitude:(*(*v29 + 192))()];

  v32 = v67;
  swift_beginAccess();
  v33 = *&v3[v32];
  *&v3[v32] = v31;

  v34 = v28(v21, a2);
  v35 = (*(*v34 + 216))(v34);

  if (v35)
  {
    v37 = (*(*v35 + 152))(v36);
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  v40 = v68;
  swift_beginAccess();
  *v40 = v37;
  v40[1] = v39;

  v18 = v72;
  v41 = v28(v72, a2);
  (*(*v41 + 240))(v75);

  v42 = LOBYTE(v75[0]) == 1;
  v43 = v69;
  swift_beginAccess();
  v3[v43] = v42;
  if (one-time initialization token for zero != -1)
  {
LABEL_17:
    swift_once();
  }

  v44 = static ScreenSize.zero;
  v45 = (*(a2 + 48))(v18, a2);
  v46 = *((*MEMORY[0x277D85000] & *a1) + 0xD0);
  v47 = a1;
  v69 = v46();
  v49 = v48;

  v50 = v71;
  (*(v17 + 24))(v18, v17);
  LODWORD(v72) = *(v47 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v51 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v52 = &v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v52 = 0;
  v52[1] = 0;
  v53 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v54 = type metadata accessor for DateInterval();
  (*(*(v54 - 8) + 56))(&v3[v53], 1, 1, v54);
  UUID.init()();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v44;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = MEMORY[0x277D84F90];
  swift_beginAccess();
  v55 = *&v3[v51];
  *&v3[v51] = v45;
  v56 = v44;
  v57 = v45;

  swift_beginAccess();
  *v52 = v69;
  v52[1] = v49;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v50, &v3[v53]);
  v58 = swift_endAccess();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v72;
  (*(ObjectType + 328))(v74, v58);
  LOBYTE(v51) = v74[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v59 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v59 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v59 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v59 + 112) = v51;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v59;
  v60 = type metadata accessor for AssetViewModel();
  v73.receiver = v3;
  v73.super_class = v60;
  v61 = objc_msgSendSuper2(&v73, sel_init);

  outlined destroy of DateInterval?(v50);
  return v61;
}

uint64_t TransferMapViewModel.__ivar_destroyer()
{
}

id TransferMapViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransferMapViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t specialized TransferMapViewModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferMapViewModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for TransferMapViewModel()
{
  result = type metadata singleton initialization cache for TransferMapViewModel;
  if (!type metadata singleton initialization cache for TransferMapViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransferMapViewModel.CodingKeys and conformance TransferMapViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TransferMapViewModel.CodingKeys and conformance TransferMapViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferMapViewModel.CodingKeys and conformance TransferMapViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferMapViewModel.CodingKeys and conformance TransferMapViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferMapViewModel.CodingKeys and conformance TransferMapViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferMapViewModel.CodingKeys and conformance TransferMapViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferMapViewModel.CodingKeys and conformance TransferMapViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferMapViewModel.CodingKeys and conformance TransferMapViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferMapViewModel.CodingKeys and conformance TransferMapViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferMapViewModel.CodingKeys and conformance TransferMapViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferMapViewModel.CodingKeys and conformance TransferMapViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferMapViewModel.CodingKeys and conformance TransferMapViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferMapViewModel.CodingKeys and conformance TransferMapViewModel.CodingKeys);
  }

  return result;
}

uint64_t ClientPosterViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized ClientPosterViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t ClientPosterViewModel.posterImage.getter()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 336))(result);

    return v1;
  }

  return result;
}

uint64_t ClientPosterViewModel.attributedTitle.getter@<X0>(uint64_t a1@<X8>)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    outlined init with copy of DateInterval?(Strong + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_attributedTitle, a1, &_s10Foundation16AttributedStringVSgMd);
  }

  else
  {
    v4 = type metadata accessor for AttributedString();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }
}

uint64_t key path setter for ClientPosterViewModel.startDate : ClientPosterViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of DateInterval?(a1, &v8 - v5, &_s10Foundation4DateVSgMd);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x268))(v6);
}

uint64_t key path setter for ClientPosterViewModel.endDate : ClientPosterViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of DateInterval?(a1, &v8 - v5, &_s10Foundation4DateVSgMd);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x280))(v6);
}

uint64_t ClientPosterViewModel.isHost.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_isHost;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ClientPosterViewModel.isHost.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_isHost;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ClientPosterViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized ClientPosterViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void ClientPosterViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  v2 = OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_startDate;
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 56);
  v4(&v1[v2], 1, 1, v3);
  v4(&v1[OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_endDate], 1, 1, v3);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientPosterViewModel.init(from:)()
{
  swift_weakInit();
  v1 = OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_startDate;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_endDate, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_isHost) = 2;
  v4 = (v0 + OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_locationDisplayName);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_spotlightIdentifier);
  *v5 = 0;
  v5[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientPosterViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  v2 = OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_startDate;
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 56);
  v4(&v1[v2], 1, 1, v3);
  v4(&v1[OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_endDate], 1, 1, v3);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *ClientPosterViewModel.view(style:)(char *a1)
{
  v3 = *a1;
  objc_allocWithZone(type metadata accessor for PosterView());
  return PosterView.init(viewModel:style:)(v1, &v3);
}

uint64_t ClientPosterViewModel.__ivar_destroyer()
{
  swift_weakDestroy();
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_startDate);
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_endDate);
}

id ClientPosterViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientPosterViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized ClientPosterViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a3;
  v23[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  swift_weakInit();
  v8 = OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_startDate;
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 56);
  v10(&a2[v8], 1, 1, v9);
  v11 = OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_endDate;
  v10(&a2[OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_endDate], 1, 1, v9);
  v12 = OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_isHost;
  a2[OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_isHost] = 2;
  v13 = &a2[OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_locationDisplayName];
  *v13 = 0;
  v13[1] = 0;
  v14 = &a2[OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_spotlightIdentifier];
  *v14 = 0;
  v14[1] = 0;
  outlined init with copy of DBObject(v23, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBPosterModel();
  if (swift_dynamicCast())
  {
    v15 = OBJC_IVAR____TtC9MomentsUI13DBPosterModel_startDate;
    swift_beginAccess();
    outlined assign with copy of Date?(v21 + v15, &a2[v8]);
    swift_endAccess();
    v16 = OBJC_IVAR____TtC9MomentsUI13DBPosterModel_endDate;
    swift_beginAccess();
    outlined assign with copy of Date?(v21 + v16, &a2[v11]);
    swift_endAccess();
    LOBYTE(v16) = *(v21 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_isHost);
    swift_beginAccess();
    a2[v12] = v16;
    v18 = *(v21 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_locationDisplayName);
    v17 = *(v21 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_locationDisplayName + 8);
    swift_beginAccess();
    *v13 = v18;
    v13[1] = v17;

    swift_weakAssign();
    v19 = specialized AssetViewModel.init(clientDBObject:)(v21, a2);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return v19;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ClientPosterViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for ClientPosterViewModel());
  (*(v7 + 16))(v9, a1, a3);
  return specialized ClientPosterViewModel.init(dbObject:)(v9, v10, a3, a4);
}

void specialized ClientPosterViewModel.init(coder:)()
{
  swift_weakInit();
  v1 = OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_startDate;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_endDate, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_isHost) = 2;
  v4 = (v0 + OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_locationDisplayName);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_spotlightIdentifier);
  *v5 = 0;
  v5[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for ClientPosterViewModel()
{
  result = type metadata singleton initialization cache for ClientPosterViewModel;
  if (!type metadata singleton initialization cache for ClientPosterViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ClientPosterViewModel()
{
  type metadata accessor for Date?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t static PhotoCollectionViewCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI015PhotoCollectionbD0CAF06ClienthB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static PhotoCollectionViewCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *PhotoCollectionViewCell.photoView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI23PhotoCollectionViewCell_photoView);
  v2 = v1;
  return v1;
}

id PhotoCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PhotoCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PhotoCollectionViewCell.init(coder:)()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v0 = static MutablePhotoViewModel.empty;
  v1 = objc_allocWithZone(type metadata accessor for PhotoView());
  v2 = OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView;
  v3 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v4 = v0;
  *&v1[v2] = [v3 init];
  v5 = *MEMORY[0x277D76560];
  if (one-time initialization token for accessibilityString != -1)
  {
    swift_once();
  }

  v6 = static PhotoView.Constants.accessibilityString;
  v7 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
  v8 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v9 = v4;
  *&v1[v7] = [v8 init];
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v1[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = 2;
  v30.receiver = v1;
  v30.super_class = type metadata accessor for AssetView();
  v12 = objc_msgSendSuper2(&v30, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v13 = *((*MEMORY[0x277D85000] & *v12) + 0xE8);
  v14 = v12;
  v13();
  AssetView.setFallBackView()();
  [v14 setIsAccessibilityElement_];
  v15 = [v14 accessibilityTraits];
  if ((v5 & ~v15) != 0)
  {
    v16 = v5;
  }

  else
  {
    v16 = 0;
  }

  v17 = OBJC_IVAR____TtC9MomentsUI23PhotoCollectionViewCell_photoView;
  [v14 setAccessibilityTraits_];
  v18 = MEMORY[0x21CE91FC0](v6, *(&v6 + 1));
  [v14 setAccessibilityLabel_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21658CA50;
  v20 = type metadata accessor for UITraitUserInterfaceStyle();
  v21 = MEMORY[0x277D74BF0];
  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  v22 = v14;
  MEMORY[0x21CE92C30](v19, sel_handleTraitChange);
  swift_unknownObjectRelease();

  [v22 handleTraitChange];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];

  [v22 setClipsToBounds_];
  v23 = OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView;
  v24 = *&v22[OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView];
  v25 = v22;
  [v24 setContentMode_];
  [*&v22[v23] setTranslatesAutoresizingMaskIntoConstraints_];
  [v25 addSubview_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v26 = *&v25[OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView];
  v27 = MEMORY[0x21CE91FC0](0x6F746F6870, 0xE500000000000000);
  v28 = [objc_opt_self() systemImageNamed_];

  [v26 setImage_];
  *(v29 + v17) = v12;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall PhotoCollectionViewCell.releaseResources()()
{
  v1 = v0;
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.views);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21607C000, v3, v4, "[PhotoCollectionViewCell] release resources", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC9MomentsUI23PhotoCollectionViewCell_photoView);
  if (v6)
  {
    (*((*MEMORY[0x277D85000] & *v6) + 0x118))();
  }
}

id PhotoCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *specialized PhotoCollectionViewCell.init(frame:)()
{
  v1 = v0;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = static MutablePhotoViewModel.empty;
  v3 = objc_allocWithZone(type metadata accessor for PhotoView());
  v4 = OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView;
  v5 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v6 = v2;
  *&v3[v4] = [v5 init];
  v7 = *MEMORY[0x277D76560];
  if (one-time initialization token for accessibilityString != -1)
  {
    swift_once();
  }

  v8 = static PhotoView.Constants.accessibilityString;
  v9 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
  v10 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v11 = v6;
  *&v3[v9] = [v10 init];
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(&v3[v12], 1, 1, v13);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = 2;
  v37.receiver = v3;
  v37.super_class = type metadata accessor for AssetView();
  v14 = objc_msgSendSuper2(&v37, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v15 = *((*MEMORY[0x277D85000] & *v14) + 0xE8);
  v16 = v14;
  v15();
  AssetView.setFallBackView()();
  [v16 setIsAccessibilityElement_];
  v17 = [v16 accessibilityTraits];
  if ((v7 & ~v17) != 0)
  {
    v18 = v7;
  }

  else
  {
    v18 = 0;
  }

  v19 = OBJC_IVAR____TtC9MomentsUI23PhotoCollectionViewCell_photoView;
  [v16 setAccessibilityTraits_];
  v20 = MEMORY[0x21CE91FC0](v8, *(&v8 + 1));
  [v16 setAccessibilityLabel_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21658CA50;
  v22 = type metadata accessor for UITraitUserInterfaceStyle();
  v23 = MEMORY[0x277D74BF0];
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  v24 = v16;
  MEMORY[0x21CE92C30](v21, sel_handleTraitChange);
  swift_unknownObjectRelease();

  [v24 handleTraitChange];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];

  [v24 setClipsToBounds_];
  v25 = OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView;
  v26 = *&v24[OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView];
  v27 = v24;
  [v26 setContentMode_];
  [*&v24[v25] setTranslatesAutoresizingMaskIntoConstraints_];
  [v27 addSubview_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v28 = *&v27[OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView];
  v29 = MEMORY[0x21CE91FC0](0x6F746F6870, 0xE500000000000000);
  v30 = [objc_opt_self() systemImageNamed_];

  [v28 setImage_];
  *(v1 + v19) = v14;
  v31 = v27;
  v32 = CollectionViewAssetCell.init(assetView:)(v31);
  v33 = *((*MEMORY[0x277D85000] & *v32) + 0x90);
  v34 = v32;
  v35 = v33();
  [v35 addSubview_];

  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  return v34;
}

uint64_t type metadata accessor for PhotoCollectionViewCell()
{
  result = type metadata singleton initialization cache for PhotoCollectionViewCell;
  if (!type metadata singleton initialization cache for PhotoCollectionViewCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PairedPhotoVideo.__allocating_init(photo:video:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  swift_beginAccess();
  *(v4 + 16) = a1;
  swift_beginAccess();
  *(v4 + 24) = a2;
  return v4;
}

void *PairedPhotoVideo.video.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void PairedPhotoVideo.video.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t PairedPhotoVideo.init(photo:video:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  swift_beginAccess();
  *(v2 + 16) = a1;
  swift_beginAccess();
  *(v2 + 24) = a2;
  return v2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PairedPhotoVideo.CodingKeys()
{
  if (*v0)
  {
    return 0x6F65646976;
  }

  else
  {
    return 0x6F746F6870;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PairedPhotoVideo.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F746F6870 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F65646976 && a2 == 0xE500000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PairedPhotoVideo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PairedPhotoVideo.CodingKeys and conformance PairedPhotoVideo.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PairedPhotoVideo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PairedPhotoVideo.CodingKeys and conformance PairedPhotoVideo.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PairedPhotoVideo.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PairedPhotoVideo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI16PairedPhotoVideoC10CodingKeys33_2E52303AEA0C264047A27E83D811EDFDLLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PairedPhotoVideo.CodingKeys and conformance PairedPhotoVideo.CodingKeys();
  v9 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = (*(*v3 + 96))(v9);
  v14 = v10;
  HIBYTE(v13) = 0;
  type metadata accessor for Image();
  lazy protocol witness table accessor for type Image and conformance Image(&lazy protocol witness table cache variable for type Image and conformance Image, 255, type metadata accessor for Image);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

  if (!v2)
  {
    v11 = (*(*v3 + 120))();
    v14 = v11;
    HIBYTE(v13) = 1;
    type metadata accessor for Video();
    lazy protocol witness table accessor for type Image and conformance Image(&lazy protocol witness table cache variable for type Video and conformance Video, 255, type metadata accessor for Video);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type PairedPhotoVideo.CodingKeys and conformance PairedPhotoVideo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PairedPhotoVideo.CodingKeys and conformance PairedPhotoVideo.CodingKeys;
  if (!lazy protocol witness table cache variable for type PairedPhotoVideo.CodingKeys and conformance PairedPhotoVideo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairedPhotoVideo.CodingKeys and conformance PairedPhotoVideo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PairedPhotoVideo.CodingKeys and conformance PairedPhotoVideo.CodingKeys;
  if (!lazy protocol witness table cache variable for type PairedPhotoVideo.CodingKeys and conformance PairedPhotoVideo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairedPhotoVideo.CodingKeys and conformance PairedPhotoVideo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PairedPhotoVideo.CodingKeys and conformance PairedPhotoVideo.CodingKeys;
  if (!lazy protocol witness table cache variable for type PairedPhotoVideo.CodingKeys and conformance PairedPhotoVideo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairedPhotoVideo.CodingKeys and conformance PairedPhotoVideo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PairedPhotoVideo.CodingKeys and conformance PairedPhotoVideo.CodingKeys;
  if (!lazy protocol witness table cache variable for type PairedPhotoVideo.CodingKeys and conformance PairedPhotoVideo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairedPhotoVideo.CodingKeys and conformance PairedPhotoVideo.CodingKeys);
  }

  return result;
}

uint64_t PairedPhotoVideo.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  PairedPhotoVideo.init(from:)(a1);
  return v2;
}

uint64_t PairedPhotoVideo.init(from:)(void *a1)
{
  v3 = v1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI16PairedPhotoVideoC10CodingKeys33_2E52303AEA0C264047A27E83D811EDFDLLOGMd);
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v7 = &v17 - v6;
  *(v3 + 16) = 0;
  v8 = (v3 + 16);
  *(v3 + 24) = 0;
  v9 = (v3 + 24);
  v10 = a1[3];
  v18 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  lazy protocol witness table accessor for type PairedPhotoVideo.CodingKeys and conformance PairedPhotoVideo.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
  }

  else
  {
    type metadata accessor for Image();
    v20 = 0;
    lazy protocol witness table accessor for type Image and conformance Image(&lazy protocol witness table cache variable for type Image and conformance Image, 255, type metadata accessor for Image);
    v11 = v17;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v12 = v19;
    swift_beginAccess();
    v13 = *v8;
    *v8 = v12;

    type metadata accessor for Video();
    LOBYTE(v19) = 1;
    lazy protocol witness table accessor for type Image and conformance Image(&lazy protocol witness table cache variable for type Video and conformance Video, 255, type metadata accessor for Video);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v5 + 8))(v7, v11);
    v15 = v21;
    swift_beginAccess();
    v16 = *v9;
    *v9 = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v3;
}

uint64_t instantiation function for generic protocol witness table for PairedPhotoVideo(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = lazy protocol witness table accessor for type Image and conformance Image(&lazy protocol witness table cache variable for type PairedPhotoVideo and conformance PairedPhotoVideo, a2, type metadata accessor for PairedPhotoVideo);
  result = lazy protocol witness table accessor for type Image and conformance Image(&lazy protocol witness table cache variable for type PairedPhotoVideo and conformance PairedPhotoVideo, v3, type metadata accessor for PairedPhotoVideo);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Image and conformance Image(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PairedPhotoVideo@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 160))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id RoundImageView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void RoundImageView.image.setter(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9MomentsUI14RoundImageView_imageView);
  if (a1)
  {
    v4 = [a1 imageWithRenderingMode_];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setImage_];
}

Swift::Void __swiftcall RoundView.layoutSubviews()()
{
  [v0 bounds];

  [v0 _setCornerRadius_];
}

id RoundView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for RoundView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id RoundView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RoundView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id RoundView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id RoundImageView.image.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9MomentsUI14RoundImageView_imageView) image];

  return v1;
}

void key path setter for RoundImageView.image : RoundImageView(void **a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC9MomentsUI14RoundImageView_imageView);
  if (*a1)
  {
    v4 = v3;
    v5 = [v2 imageWithRenderingMode_];
  }

  else
  {
    v6 = v3;
    v5 = 0;
  }

  v7 = v5;
  [v3 setImage_];
}

void (*RoundImageView.image.modify(void *a1))(void **a1, char a2)
{
  v2 = OBJC_IVAR____TtC9MomentsUI14RoundImageView_imageView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = [*(v1 + v2) image];
  return RoundImageView.image.modify;
}

void RoundImageView.image.modify(void **a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  v5 = *&v2[v3];
  if (a2)
  {
    if (v4)
    {
      v12 = v4;
      v6 = v5;
      v13 = v12;
      v7 = [v13 imageWithRenderingMode_];
    }

    else
    {
      v10 = v5;
      v13 = 0;
      v7 = 0;
    }

    [v5 setImage_];

    v9 = v5;
    v5 = v13;
  }

  else
  {
    if (v4)
    {
      v13 = v4;
      v8 = v5;
      v9 = [v13 imageWithRenderingMode_];
    }

    else
    {
      v11 = v5;
      v13 = 0;
      v9 = 0;
    }

    [v5 setImage_];
  }
}

char *RoundImageView.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC9MomentsUI14RoundImageView_imageView;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4 = OBJC_IVAR____TtC9MomentsUI14RoundImageView_imageView;
  v5 = *&v3[OBJC_IVAR____TtC9MomentsUI14RoundImageView_imageView];
  v6 = v3;
  [v5 setContentMode_];
  [v6 addSubview_];

  return v6;
}

id RoundImageView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void RoundImageView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14RoundImageView_imageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall RoundImageView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9MomentsUI14RoundImageView_imageView];
  [v0 bounds];
  [v1 setFrame_];
}

id RoundImageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MomentsStateOfMindTip.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV17buildPartialBlock5firstQrx_tAA0A6OptionRzlFZQOy__AE0F10ExpressionyQrSayxGAaHRzlFZQOy__AC23IgnoresDisplayFrequencyVQo_Qo_Md);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV15buildExpressionyQrSayxGAA0A6OptionRzlFZQOy__AC23IgnoresDisplayFrequencyVQo_Md);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO23IgnoresDisplayFrequencyVGMd);
  v8 = type metadata accessor for Tips.IgnoresDisplayFrequency();
  *(swift_allocObject() + 16) = xmmword_21658CA50;
  MEMORY[0x21CE91100](1);
  v9 = MEMORY[0x277CE1A20];
  static Tips.OptionsBuilder.buildExpression<A>(_:)();

  v13 = v8;
  v14 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CE910D0](v7, v4, OpaqueTypeConformance2);
  v13 = v4;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v11 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t MomentsStateOfMindTip.actions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO6ActionVGMd);
  v0 = type metadata accessor for Tips.Action();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21658CA50;
  Tips.Action.init(id:perform:_:)();
  v4 = specialized static Tips.ActionBuilder.buildFinalResult(_:)(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

uint64_t closure #1 in MomentsStateOfMindTip.actions.getter()
{
  LocalizedStringKey.init(stringLiteral:)();
  v0 = Text.init(_:tableName:bundle:comment:)();
  v2 = v1;
  v4 = v3;
  static Color.white.getter();
  v5 = Text.foregroundStyle<A>(_:)();
  outlined consume of Text.Storage(v0, v2, v4 & 1);

  return v5;
}

uint64_t protocol witness for Tip.actions.getter in conformance MomentsStateOfMindTip()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO6ActionVGMd);
  v0 = type metadata accessor for Tips.Action();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21658CA50;
  Tips.Action.init(id:perform:_:)();
  v4 = specialized static Tips.ActionBuilder.buildFinalResult(_:)(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

uint64_t protocol witness for Tip.options.getter in conformance MomentsStateOfMindTip()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV17buildPartialBlock5firstQrx_tAA0A6OptionRzlFZQOy__AE0F10ExpressionyQrSayxGAaHRzlFZQOy__AC23IgnoresDisplayFrequencyVQo_Qo_Md);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV15buildExpressionyQrSayxGAA0A6OptionRzlFZQOy__AC23IgnoresDisplayFrequencyVQo_Md);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO23IgnoresDisplayFrequencyVGMd);
  v8 = type metadata accessor for Tips.IgnoresDisplayFrequency();
  *(swift_allocObject() + 16) = xmmword_21658CA50;
  MEMORY[0x21CE91100](1);
  v9 = MEMORY[0x277CE1A20];
  static Tips.OptionsBuilder.buildExpression<A>(_:)();

  v13 = v8;
  v14 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CE910D0](v7, v4, OpaqueTypeConformance2);
  v13 = v4;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v11 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v11;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO6ActionVGMd);
  v10 = *(type metadata accessor for Tips.Action() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Tips.Action() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t specialized MomentsStateOfMindTip.title.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000216586ED0;
  v1._object = 0x8000000216586EB0;
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  v1._countAndFlagsBits = 0xD00000000000001DLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  lazy protocol witness table accessor for type String and conformance String();
  return Text.init<A>(_:)();
}

uint64_t specialized MomentsStateOfMindTip.message.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000216586E80;
  v1._countAndFlagsBits = 0xD000000000000075;
  v1._object = 0x8000000216586E00;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000002CLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  lazy protocol witness table accessor for type String and conformance String();
  return Text.init<A>(_:)();
}

uint64_t specialized static Tips.ActionBuilder.buildFinalResult(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Tips.Action();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_6TipKit4TipsO6ActionV7elementtMd);
  v6 = MEMORY[0x28223BE20](v30);
  v29 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v31 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
  v10 = v31;
  v28 = *(a1 + 16);
  if (v28)
  {
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = *(v12 + 56);
    v26 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v27 = v13;
    v15 = a1 + v26;
    v24 = (v12 + 16);
    v25 = v14;
    do
    {
      v16 = v29;
      v17 = *(v30 + 48);
      *v29 = v11;
      v18 = v12;
      v27(v16 + v17, v15, v2);
      outlined init with take of (offset: Int, element: Tips.Action)(v16, v9);
      Tips.Action.with(index:)();
      outlined destroy of (offset: Int, element: Tips.Action)(v9);
      v31 = v10;
      v19 = v2;
      v21 = *(v10 + 16);
      v20 = *(v10 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
        v10 = v31;
      }

      ++v11;
      *(v10 + 16) = v21 + 1;
      v22 = v25;
      (*v24)(v10 + v26 + v21 * v25, v5, v19);
      v15 += v22;
      v2 = v19;
      v12 = v18;
    }

    while (v28 != v11);
  }

  return v10;
}

uint64_t getEnumTagSinglePayload for MomentsStateOfMindTip(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t outlined init with take of (offset: Int, element: Tips.Action)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_6TipKit4TipsO6ActionV7elementtMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (offset: Int, element: Tips.Action)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_6TipKit4TipsO6ActionV7elementtMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id OnboardingViewController.init(title:detailText:onboardButtonTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  v13 = &v6[OBJC_IVAR____TtC9MomentsUI24OnboardingViewController_onboardButtonTitle];
  *v13 = a5;
  *(v13 + 1) = a6;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v16 = MEMORY[0x21CE91FC0](0xD000000000000023, 0x800000021657D550);
  v17 = [objc_opt_self() imageNamed:v16 inBundle:v15];

  v18 = MEMORY[0x21CE91FC0](a1, a2);

  if (a4)
  {
    v19 = MEMORY[0x21CE91FC0](a3, a4);
  }

  else
  {
    v19 = 0;
  }

  v23.receiver = v6;
  v23.super_class = type metadata accessor for OnboardingViewController();
  v20 = objc_msgSendSuper2(&v23, sel_initWithTitle_detailText_icon_contentLayout_, v18, v19, v17, 2);

  v21 = v20;
  OnboardingViewController.loadInitialController()();

  return v21;
}

void OnboardingViewController.addPrivacyBulletedListItem()()
{
  v1 = v0;
  swift_getObjectType();
  if (one-time initialization token for journalOnboardingBundle != -1)
  {
    swift_once();
  }

  if (!static OnboardingViewController.journalOnboardingBundle)
  {
    goto LABEL_7;
  }

  v2 = [static OnboardingViewController.journalOnboardingBundle privacyFlow];
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 localizedButtonTitle];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
LABEL_7:
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIAction);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = v8;
  v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v10 = specialized static OnboardingViewController.createListItemLinkButton(title:action:)(v5, v7, v9);

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = objc_opt_self();
  v13 = [v12 bundleForClass_];
  v27._object = 0x8000000216586FC0;
  v14._object = 0x8000000216586FA0;
  v27._countAndFlagsBits = 0xD000000000000028;
  v14._countAndFlagsBits = 0xD000000000000017;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v27);

  v17 = MEMORY[0x21CE91FC0](v16._countAndFlagsBits, v16._object);

  v18 = [v12 bundleForClass_];
  v28._object = 0x8000000216587050;
  v19._countAndFlagsBits = 0xD000000000000050;
  v19._object = 0x8000000216586FF0;
  v28._countAndFlagsBits = 0xD000000000000027;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v28);

  v22 = MEMORY[0x21CE91FC0](v21._countAndFlagsBits, v21._object);

  v23 = MEMORY[0x21CE91FC0](0x6961722E646E6168, 0xEB00000000646573);
  v25 = [objc_opt_self() systemBlueColor];
  [v1 addBulletedListItemWithTitle:v17 description:v22 symbolName:v23 tintColor:v25 linkButton:v10];
}

void OnboardingViewController.loadInitialController()()
{
  swift_getObjectType();
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationBar];

    v4 = [objc_opt_self() systemBackgroundColor];
    [v3 setBackgroundColor_];
  }

  v5 = [v0 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 navigationBar];

    [v7 setTranslucent_];
  }

  v8 = [v0 navigationController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 navigationBar];

    v11 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    [v10 setShadowImage_];
  }

  v12 = [v0 view];
  if (v12)
  {
    v13 = v12;
    v14 = objc_opt_self();
    v15 = [v14 systemBackgroundColor];
    [v13 setBackgroundColor_];

    v16 = [v0 buttonTray];
    v17 = [v14 systemBlueColor];
    [v16 setTintColor_];

    (*((*MEMORY[0x277D85000] & *v0) + 0x68))();
    OnboardingViewController.addPrivacyBulletedListItem()();
    v18 = [objc_opt_self() boldButton];
    v19 = MEMORY[0x21CE91FC0](*(v0 + OBJC_IVAR____TtC9MomentsUI24OnboardingViewController_onboardButtonTitle), *(v0 + OBJC_IVAR____TtC9MomentsUI24OnboardingViewController_onboardButtonTitle + 8));
    [v18 setTitle:v19 forState:0];

    [v18 addTarget:v0 action:sel_onboardButtonTapped forControlEvents:64];
    v20 = [v0 buttonTray];
    [v20 addButton_];

    v21 = [objc_opt_self() linkButton];
    [v21 addTarget:v0 action:sel_notNowButtonTapped forControlEvents:64];
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass_];
    v30._object = 0x8000000216587080;
    v24._countAndFlagsBits = 0x776F4E20746F4ELL;
    v24._object = 0xE700000000000000;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    v30._countAndFlagsBits = 0xD00000000000001ELL;
    v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v30);

    v27 = MEMORY[0x21CE91FC0](v26._countAndFlagsBits, v26._object);

    [v21 setTitle:v27 forState:0];

    v28 = [v0 buttonTray];
    [v28 addButton_];
  }

  else
  {
    __break(1u);
  }
}

void OnboardingViewController.privacyButtonTapped()()
{
  if (one-time initialization token for onboarding != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static CommonLogger.onboarding);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21607C000, v2, v3, "[Onboarding] Tapped About Journaling Suggestions & Privacy, presenting the Privacy splash", v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  if (one-time initialization token for journalOnboardingBundle != -1)
  {
    swift_once();
  }

  if (static OnboardingViewController.journalOnboardingBundle)
  {
    v13 = static OnboardingViewController.journalOnboardingBundle;
    v5 = [v13 identifier];
    v6 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

    if (v6)
    {
      [v6 setPresentingViewController:v0];
      [v6 present];

      v7 = v6;
      goto LABEL_16;
    }

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21607C000, v10, v11, "[Onboarding] Unable to present the Privacy splash; OBPrivacyPresenter failed to initialize", v12, 2u);
      MEMORY[0x21CE94770](v12, -1, -1);
    }
  }

  else
  {
    v13 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21607C000, v13, v8, "[Onboarding] Unable to present the Privacy splash; Journal Onboarding bundle not found", v9, 2u);
      MEMORY[0x21CE94770](v9, -1, -1);
    }
  }

  v7 = v13;
LABEL_16:
}

void one-time initialization function for journalOnboardingBundle()
{
  v0 = MEMORY[0x21CE91FC0](0xD00000000000001CLL, 0x8000000216586F80);
  v1 = [objc_opt_self() bundleWithIdentifier_];

  static OnboardingViewController.journalOnboardingBundle = v1;
}

void closure #1 in OnboardingViewController.addPrivacyBulletedListItem()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    OnboardingViewController.privacyButtonTapped()();
  }
}

Swift::Void __swiftcall OnboardingViewController.onboardButtonTapped()()
{
  if (one-time initialization token for onboarding != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static CommonLogger.onboarding);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v2[OBJC_IVAR____TtC9MomentsUI24OnboardingViewController_onboardButtonTitle], *&v2[OBJC_IVAR____TtC9MomentsUI24OnboardingViewController_onboardButtonTitle + 8], &v7);
    _os_log_impl(&dword_21607C000, oslog, v3, "[Onboarding] Tapped the Onboard button (%s, finishing Onboarding", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x21CE94770](v5, -1, -1);
    MEMORY[0x21CE94770](v4, -1, -1);
  }
}

id OnboardingViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v14 = MEMORY[0x21CE91FC0]();

  if (!a4)
  {
    v15 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v15 = MEMORY[0x21CE91FC0](a3, a4);

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = MEMORY[0x21CE91FC0](a5, a6);

LABEL_6:
  v17 = [objc_allocWithZone(v8) initWithTitle:v14 detailText:v15 symbolName:v16 contentLayout:a7];

  return v17;
}

id OnboardingViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v12 = MEMORY[0x21CE91FC0]();

  if (a4)
  {
    v13 = MEMORY[0x21CE91FC0](a3, a4);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(v7) initWithTitle:v12 detailText:v13 icon:a5 contentLayout:a6];

  return v14;
}

id OnboardingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized static OnboardingViewController.createListItemLinkButton(title:action:)(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = a3;
  v32 = a2;
  v33 = a1;
  v3 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for UIButton.Configuration.TitleAlignment();
  v6 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration.Size();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UIButton.Configuration();
  v30 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  static UIButton.Configuration.plain()();
  UIButton.Configuration.contentInsets.setter();

  UIButton.Configuration.title.setter();
  (*(v10 + 104))(v12, *MEMORY[0x277D75028], v9);
  UIButton.Configuration.buttonSize.setter();
  (*(v6 + 104))(v8, *MEMORY[0x277D74FF8], v31);
  UIButton.Configuration.titleAlignment.setter();
  (*(v34 + 104))(v5, *MEMORY[0x277D74FC8], v35);
  v19 = v30;
  UIButton.Configuration.cornerStyle.setter();
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for OBBulletedListItemLinkButton);
  (*(v19 + 16))(v16, v18, v13);
  v20 = v36;
  v21 = UIButton.init(configuration:primaryAction:)();
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 systemBlueColor];
  [v23 setTintColor_];

  v25 = [v23 titleLabel];
  if (v25)
  {
    v26 = v25;
    [v25 setNumberOfLines_];
  }

  v27 = [v23 titleLabel];

  if (v27)
  {
    [v27 setLineBreakMode_];
  }

  (*(v19 + 8))(v18, v13);
  return v23;
}

void specialized OnboardingViewController.notNowButtonTapped()()
{
  if (one-time initialization token for onboarding != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static CommonLogger.onboarding);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_21607C000, oslog, v1, "[Onboarding] Tapped Not Now, deffering Onboarding", v2, 2u);
    MEMORY[0x21CE94770](v2, -1, -1);
  }
}

BOOL UIApplication.isLandscape.getter()
{
  v1 = [v0 connectedScenes];
  type metadata accessor for UIScene();
  lazy protocol witness table accessor for type UIScene and conformance NSObject();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Collection.first.getter(v2);

  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 interfaceOrientation];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return UIInterfaceOrientationIsLandscape(v5);
}

uint64_t UIApplication.interfaceOrientation.getter()
{
  v1 = [v0 connectedScenes];
  type metadata accessor for UIScene();
  lazy protocol witness table accessor for type UIScene and conformance NSObject();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Collection.first.getter(v2);

  if (!v3)
  {
    return 1;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 interfaceOrientation];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t specialized Sequence.compactMap<A>(_:)(unint64_t a1, uint64_t *a2)
{
  v14 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CE93180](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v13 = v7;
      closure #1 in InterstitialViewController.init(suggestionViewModel:)(&v13, a2, &v12);
      if (v2)
      {

        return v6;
      }

      if (v12)
      {
        MEMORY[0x21CE92260]();
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v14;
      }

      ++v5;
      if (v9 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return MEMORY[0x277D84F90];
}

void static InterstitialViewController.prepareForPresentation(_:presenter:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = [a1 navigationItem];
  [v4 setBackButtonDisplayMode_];

  v5 = [a1 navigationController];
  if (v5)
  {
    v6 = v5;
    v10 = [v5 navigationBar];

    v7 = objc_opt_self();
    v8 = &selRef_systemIndigoColor;
    if (v3)
    {
      v8 = &selRef_systemBlueColor;
    }

    v9 = [v7 *v8];
    [v10 setTintColor_];
  }
}

uint64_t InterstitialViewController.viewMode.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_viewMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void InterstitialViewController.viewMode.didset(char a1)
{
  if (one-time initialization token for interstitial != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static CommonLogger.interstitial);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  v7 = &unk_27CA92000;
  if (os_log_type_enabled(v5, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25[0] = v9;
    *v8 = 136315394;
    if (a1)
    {
      v10 = 1953720684;
    }

    else
    {
      v10 = 0x6C6573756F726163;
    }

    if (a1)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE800000000000000;
    }

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v25);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_viewMode;
    swift_beginAccess();
    if (*(v4 + v13))
    {
      v14 = 1953720684;
    }

    else
    {
      v14 = 0x6C6573756F726163;
    }

    if (*(v4 + v13))
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE800000000000000;
    }

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v25);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_21607C000, v5, v6, "View mode changed from %s to %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v9, -1, -1);
    v17 = v8;
    v7 = &unk_27CA92000;
    MEMORY[0x21CE94770](v17, -1, -1);
  }

  v18 = [v4 navigationItem];
  v19 = v7[472];
  swift_beginAccess();
  if (*(v4 + v19))
  {
    v20 = 0x732E657261757173;
  }

  else
  {
    v20 = 0x6C75622E7473696CLL;
  }

  if (*(v4 + v19))
  {
    v21 = 0xEC0000006B636174;
  }

  else
  {
    v21 = 0xEB0000000074656CLL;
  }

  v22 = MEMORY[0x21CE91FC0](v20, v21);

  v23 = [objc_opt_self() systemImageNamed_];

  v24 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v23 style:0 target:v4 action:sel_toggleViewMode];
  [v18 setRightBarButtonItem_];

  InterstitialViewController.updateChildView()();
}

void InterstitialViewController.updateChildView()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_viewMode;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  v5 = *(v1 + OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_contentView);
  v6 = MEMORY[0x277D85000];
  if (v4)
  {
    v7 = (*((*MEMORY[0x277D85000] & *v5) + 0x2D0))(v3);
    (*((*v6 & *v5) + 0x2B8))(v7);
    specialized InterstitialViewController.hide(childViewController:)(*(v1 + OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_carouselViewController));
    v8 = (*((*v6 & *v5) + 0x310))(1);
    (*((*v6 & *v5) + 0x2E8))(v8);
    v9 = &OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_listViewController;
  }

  else
  {
    (*((*MEMORY[0x277D85000] & *v5) + 0x2F0))(v3);
    specialized InterstitialViewController.hide(childViewController:)(*(v1 + OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_listViewController));
    v10 = (*((*v6 & *v5) + 0x310))(0);
    v11 = (*((*v6 & *v5) + 0x2C8))(v10);
    (*((*v6 & *v5) + 0x2B0))(v11);
    v9 = &OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_carouselViewController;
  }

  InterstitialViewController.show(childViewController:)(*(v1 + *v9));
}

uint64_t InterstitialViewController.selectedAssetUUIDs.getter()
{
  v1 = (*(**(v0 + OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_selectionTracker) + 248))();

  return _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SD4KeysVyAFShyAFG_GTt0g5(v1);
}

uint64_t InterstitialViewController.currentUiContainer.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_currentUiContainer;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t InterstitialViewController.currentUiContainer.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_currentUiContainer;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t InterstitialViewController.suggestionViewModel.setter()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*InterstitialViewController.suggestionViewModel.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_suggestionViewModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return SuggestionCollectionViewController.cloudManager.modify;
}

void closure #1 in InterstitialViewController.init(suggestionViewModel:)(void **a1@<X0>, uint64_t *a2@<X1>, char **a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = *a1;
  v27 = 6;
  v14 = Asset.assetViewModelFor(style:)(&v27);
  v15 = v14;
  if (v14)
  {
    (*(v7 + 16))(v10, &v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid], v6);
    (*(v7 + 32))(v12, v10, v6);
    v16 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *a2;
    *a2 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v12, isUniquelyReferenced_nonNull_native);
    *a2 = v26;
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    if (one-time initialization token for interstitial != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static CommonLogger.interstitial);
    v19 = v13;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&dword_21607C000, v20, v21, "Failed to map asset: %@", v22, 0xCu);
      outlined destroy of UTType?(v23, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v23, -1, -1);
      MEMORY[0x21CE94770](v22, -1, -1);
    }
  }

  *a3 = v15;
}

char *InterstitialViewController.init(presenter:suggestionTitle:suggestionSubtitle:suggestionDateInterval:assetViewModels:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, unint64_t a7)
{
  v8 = v7;
  v114 = a6;
  v104 = a4;
  v105 = a5;
  v102 = a2;
  v103 = a3;
  ObjectType = swift_getObjectType();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v107 = &v94 - v13;
  v113 = type metadata accessor for DateInterval();
  v14 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for Date();
  v101 = *(v108 - 8);
  v16 = MEMORY[0x28223BE20](v108);
  v100 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v98 = &v94 - v18;
  v99 = type metadata accessor for Calendar();
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_viewMode] = 0;
  v21 = a1[1];
  v110 = *a1;
  *&v8[OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_assetSummaryCountAssetTypeMap] = 0;
  v22 = MEMORY[0x277D84F90];
  *&v8[OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_originalDetents] = MEMORY[0x277D84F90];
  v8[OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_currentUiContainer] = 2;
  v23 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_viewModelUUIDToAssetMapping;
  *&v8[v23] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MomentsUI5AssetCTt0g5Tf4g_n(v22);
  swift_weakInit();
  v96 = v8;
  *&v8[OBJC_IVAR____TtC9MomentsUI26InterstitialViewController__btask] = 0;
  if (one-time initialization token for interstitial != -1)
  {
    swift_once();
  }

  v109 = ObjectType;
  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static CommonLogger.interstitial);

  swift_bridgeObjectRetain_n();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  v27 = os_log_type_enabled(v25, v26);
  v28 = a7;
  v29 = a7 >> 62;
  v106 = v29;
  v111 = v21;
  if (v27)
  {
    v95 = v14;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v117 = v31;
    *v30 = 136315394;
    if (v21)
    {
      v32 = v110;
    }

    else
    {
      v32 = 0x6C616E72756F4ALL;
    }

    if (!v21)
    {
      v21 = 0xE700000000000000;
    }

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v21, &v117);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2048;
    if (v29)
    {
      v34 = __CocoaSet.count.getter();
    }

    else
    {
      v34 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v30 + 14) = v34;

    _os_log_impl(&dword_21607C000, v25, v26, "Presenting Interstitial for %s with %ld assets", v30, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x21CE94770](v31, -1, -1);
    MEMORY[0x21CE94770](v30, -1, -1);

    v21 = v111;
    v14 = v95;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  static Calendar.current.getter();
  v35 = v98;
  v36 = v114;
  DateInterval.start.getter();
  v37 = v100;
  DateInterval.end.getter();
  LODWORD(v95) = Calendar.isDate(_:inSameDayAs:)();
  v38 = *(v101 + 1);
  v39 = v108;
  v38(v37, v108);
  v38(v35, v39);
  (*(v97 + 8))(v20, v99);
  v101 = specialized static InterstitialViewController.assetGroupViewModels(from:)(v28);
  v40 = *(v14 + 16);
  v41 = v113;
  v108 = v28;
  v40(v112, v36, v113);
  v42 = v110;
  v117 = v110;
  v118 = v21;
  v100 = Interstitial.Presenter.addButtonTitle.getter();
  v99 = v43;
  v44 = objc_opt_self();
  v45 = &selRef_systemIndigoColor;
  if (v21)
  {
    v45 = &selRef_systemBlueColor;
  }

  v98 = [v44 *v45];
  v46 = type metadata accessor for InterstitialContentView();
  v47 = objc_allocWithZone(v46);
  v48 = &v47[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_addToEntryButtonAction];
  *v48 = 0;
  v48[1] = 0;
  v49 = &v47[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_disableSelection];
  *v49 = 0;
  v49[1] = 0;
  v50 = &v47[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_disableBackButton];
  *v50 = 0;
  v50[1] = 0;
  *&v47[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___suggestionTitleView] = 0;
  *&v47[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___suggestionDateLabel] = 0;
  *&v47[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___suggestionAssetTypesLabel] = 0;
  *&v47[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___labelsView] = 0;
  v51 = OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childView;
  *&v47[v51] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v52 = OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_scrollViewContainerView;
  *&v47[v52] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v47[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___scrollView] = 0;
  *&v47[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___emptySelectionLabel] = 0;
  *&v47[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___addButton] = 0;
  *&v47[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView____lazy_storage___spinner] = 0;
  *&v47[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childViewWidthEqualHeightConstraint] = 0;
  *&v47[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childViewTopConstraint] = 0;
  *&v47[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childViewCenterYConstraint] = 0;
  *&v47[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_childViewStretchToTheBottomConstraint] = 0;
  v53 = &v47[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_suggestionTitle];
  v54 = v103;
  *v53 = v102;
  v53[1] = v54;
  v55 = &v47[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_suggestionSubtitle];
  v56 = v105;
  *v55 = v104;
  v55[1] = v56;
  v57 = v112;
  v40(&v47[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_suggestionDateInterval], v112, v41);
  v58 = v95 & 1;
  v47[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_isSingleDaySuggestion] = v95 & 1;
  v59 = &v47[OBJC_IVAR____TtC9MomentsUI23InterstitialContentView_addButtonTitle];
  v60 = v99;
  *v59 = v100;
  v59[1] = v60;
  v116.receiver = v47;
  v116.super_class = v46;
  v61 = objc_msgSendSuper2(&v116, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v62 = v98;
  [v61 setTintColor_];
  InterstitialContentView.setupViews()();

  v63 = *(v14 + 8);
  v64 = v108;
  v63(v57, v41);
  v65 = v96;
  *&v96[OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_contentView] = v61;
  v66 = v111;
  v117 = v42;
  v118 = v111;
  v67 = objc_allocWithZone(type metadata accessor for InterstitialCarouselViewController());

  v68 = v66;

  v69 = v61;
  *&v65[OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_carouselViewController] = InterstitialCarouselViewController.init(presenter:assetViewModels:)(&v117, v64);
  v117 = v42;
  v118 = v68;
  v70 = objc_allocWithZone(type metadata accessor for InterstitialListViewController());
  *&v65[OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_listViewController] = InterstitialListViewController.init(presenter:assetGroupViewModels:isSingleDaySuggestion:)(&v117, v101, v58);
  *&v65[OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_assetViewModels] = v64;
  type metadata accessor for InterstitialSelectionTracker();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  *&v65[OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_selectionTracker] = InterstitialSelectionTracker.init(assetViewModels:)(v64);
  v71 = v109;
  v115.receiver = v65;
  v115.super_class = v109;
  v72 = objc_msgSendSuper2(&v115, sel_initWithNibName_bundle_, 0, 0);
  v73 = type metadata accessor for TaskPriority();
  v74 = v107;
  (*(*(v73 - 8) + 56))(v107, 1, 1, v73);
  type metadata accessor for MainActor();
  v75 = v72;

  v76 = v69;
  v77 = v75;
  v78 = static MainActor.shared.getter();
  v79 = swift_allocObject();
  v80 = MEMORY[0x277D85700];
  v79[2] = v78;
  v79[3] = v80;
  v79[4] = v64;
  v79[5] = v77;
  v79[6] = v76;
  v79[7] = v71;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v74, &async function pointer to partial apply for closure #1 in InterstitialViewController.init(presenter:suggestionTitle:suggestionSubtitle:suggestionDateInterval:assetViewModels:), v79);

  if (v106)
  {
    v81 = __CocoaSet.count.getter();
  }

  else
  {
    v81 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v81 == 1)
  {
    v82 = "sets in the interstitial view";
  }

  else
  {
    v82 = "Dismiss onboarding until later";
  }

  if (v81 == 1)
  {
    v83 = 0xEB000000006D6574;
  }

  else
  {
    v83 = 0xEC000000736D6574;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v85 = [objc_opt_self() bundleForClass_];
  v119._object = (v82 | 0x8000000000000000);
  v86._countAndFlagsBits = 0x49207463656C6553;
  v86._object = v83;
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  v119._countAndFlagsBits = 0xD00000000000002DLL;
  v88 = NSLocalizedString(_:tableName:bundle:value:comment:)(v86, 0, v85, v87, v119);

  v89 = MEMORY[0x21CE91FC0](v88._countAndFlagsBits, v88._object);

  [v77 setTitle_];

  v90 = *&v77[OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_selectionTracker];
  v91 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v92 = *(*v90 + 208);

  v92(partial apply for closure #2 in InterstitialViewController.init(presenter:suggestionTitle:suggestionSubtitle:suggestionDateInterval:assetViewModels:), v91);

  v63(v114, v113);

  return v77;
}

uint64_t closure #1 in InterstitialViewController.init(presenter:suggestionTitle:suggestionSubtitle:suggestionDateInterval:assetViewModels:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[10] = type metadata accessor for MainActor();
  v6[11] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v6[12] = v8;
  *v8 = v6;
  v8[1] = closure #1 in InterstitialViewController.init(presenter:suggestionTitle:suggestionSubtitle:suggestionDateInterval:assetViewModels:);

  return specialized static InterstitialViewController.assetGroupViewModelsWithExpandedSummaries(from:)(a4);
}

uint64_t closure #1 in InterstitialViewController.init(presenter:suggestionTitle:suggestionSubtitle:suggestionDateInterval:assetViewModels:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[13] = a1;
  v4[14] = a2;
  v4[15] = a3;

  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in InterstitialViewController.init(presenter:suggestionTitle:suggestionSubtitle:suggestionDateInterval:assetViewModels:), v6, v5);
}

uint64_t closure #1 in InterstitialViewController.init(presenter:suggestionTitle:suggestionSubtitle:suggestionDateInterval:assetViewModels:)()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];

  v4 = *(**(v3 + OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_selectionTracker) + 136);

  v4(v5);

  v7 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v6);

  v8 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_assetSummaryCountAssetTypeMap;
  swift_beginAccess();
  *(v3 + v8) = v7;

  v9 = *(v3 + OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_listViewController);
  specialized InterstitialListViewController.createSections(assetGroupViewModels:assetSummaryAssetTypeMap:)(v1);
  v11 = v10;

  v12 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections;
  swift_beginAccess();
  *(v9 + v12) = v11;

  InterstitialCollectionViewController.reloadData()();
  v13 = InterstitialViewController.suggestionAssetTypesString.getter();
  (*((*MEMORY[0x277D85000] & *v2) + 0x320))(v13);

  v14 = v0[1];

  return v14();
}

uint64_t static InterstitialViewController.assetGroupViewModelsWithExpandedSummaries(from:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static InterstitialViewController.assetGroupViewModelsWithExpandedSummaries(from:);

  return specialized static InterstitialViewController.assetGroupViewModelsWithExpandedSummaries(from:)(a1);
}

uint64_t static InterstitialViewController.assetGroupViewModelsWithExpandedSummaries(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t InterstitialViewController.suggestionAssetTypesString.getter()
{
  v1 = type metadata accessor for UUID();
  v38 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v0;
  v4 = *(v0 + OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_assetViewModels);
  v50 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v6 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v7 = 0;
    v44 = v4 & 0xC000000000000001;
    v42 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_selectionTracker;
    v43 = v4 & 0xFFFFFFFFFFFFFF8;
    v40 = v4;
    v41 = v4 + 32;
    v47 = (v38 + 8);
    v48 = v38 + 16;
    v39 = i;
    while (1)
    {
      if (v44)
      {
        v8 = MEMORY[0x21CE93180](v7, v4);
      }

      else
      {
        if (v7 >= *(v43 + 16))
        {
          goto LABEL_45;
        }

        v8 = *(v41 + 8 * v7);
      }

      v49 = v8;
      if (__OFADD__(v7++, 1))
      {
        break;
      }

      v10 = (*(**(v46 + v42) + 248))();
      v11 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SD4KeysVyAFShyAFG_GTt0g5(v10);
      if (*(v11 + 16))
      {
        v45 = v7;
        _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v12 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v13 = -1 << *(v11 + 32);
        v14 = v12 & ~v13;
        if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
        {
          v15 = ~v13;
          v16 = *(v38 + 72);
          v17 = *(v38 + 16);
          while (1)
          {
            v17(v3, *(v11 + 48) + v16 * v14, v1);
            _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
            v18 = dispatch thunk of static Equatable.== infix(_:_:)();
            (*v47)(v3, v1);
            if (v18)
            {
              break;
            }

            v14 = (v14 + 1) & v15;
            if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
LABEL_15:
        }

        i = v39;
        v4 = v40;
        v7 = v45;
        if (v45 == v39)
        {
LABEL_20:
          v6 = v50;
          goto LABEL_21;
        }
      }

      else
      {

        if (v7 == i)
        {
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

LABEL_21:
  v19 = specialized static InterstitialViewController.assetGroupViewModels(from:)(v6);

  v3 = *(v19 + 2);
  if (!v3)
  {

    v1 = MEMORY[0x277D84F90];
    goto LABEL_43;
  }

  v51 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v1 = v51;
  v20 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_assetSummaryCountAssetTypeMap;
  v21 = (v19 + 40);
  do
  {
    v22 = *v21;
    v4 = *v21 >> 62;
    if (v4)
    {
      if (!__CocoaSet.count.getter())
      {
LABEL_35:

        v32 = v22 & 0xFFFFFFFFFFFFFF8;
        if (!v4)
        {
          goto LABEL_33;
        }

        goto LABEL_36;
      }
    }

    else if (!*((*v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_35;
    }

    if ((v22 & 0xC000000000000001) != 0)
    {

      v24 = MEMORY[0x21CE93180](0, v22);
    }

    else
    {
      if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v23 = *(v22 + 32);

      v24 = v23;
    }

    v25 = v24;
    v26 = v46;
    swift_beginAccess();
    v27 = *(v26 + v20);
    if (v27)
    {
      if (*(v27 + 16))
      {
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v25 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid);
        if (v29)
        {
          v30 = *(*(v27 + 56) + 16 * v28);
          swift_endAccess();

          v31 = v30;
          goto LABEL_37;
        }
      }
    }

    swift_endAccess();

    v32 = v22 & 0xFFFFFFFFFFFFFF8;
    if (!v4)
    {
LABEL_33:
      v31 = *(v32 + 16);
      goto LABEL_37;
    }

LABEL_36:
    v31 = __CocoaSet.count.getter();
LABEL_37:
    v33 = AssetType.assetTypeAsPluralString(count:includeCount:)(v31, 1);

    v51 = v1;
    v35 = *(v1 + 16);
    v34 = *(v1 + 24);
    if (v35 >= v34 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
      v1 = v51;
    }

    *(v1 + 16) = v35 + 1;
    *(v1 + 16 * v35 + 32) = v33;
    v21 += 2;
    --v3;
  }

  while (v3);

LABEL_43:
  v50 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v36 = BidirectionalCollection<>.joined(separator:)();

  return v36;
}

void closure #2 in InterstitialViewController.init(presenter:suggestionTitle:suggestionSubtitle:suggestionDateInterval:assetViewModels:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    InterstitialViewController.updateViewsBasedOnSelection()();
  }
}

uint64_t InterstitialViewController.updateViewsBasedOnSelection()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_contentView);
  v2 = InterstitialViewController.suggestionAssetTypesString.getter();
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x320))(v2);

  v5 = (*(**(v0 + OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_selectionTracker) + 248))(v4);
  v6 = *(_sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SD4KeysVyAFShyAFG_GTt0g5(v5) + 16);

  (*((*v3 & *v1) + 0x318))(v6 != 0);
  return (*((*v3 & *v1) + 0x308))(v6 != 0);
}

id InterstitialViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall InterstitialViewController.viewDidLoad()()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v25, sel_viewDidLoad);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() secondarySystemBackgroundColor];
    [v3 setBackgroundColor_];

    v5 = *&v1[OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_carouselViewController] + OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking;
    swift_beginAccess();
    *(v5 + 8) = &protocol witness table for InterstitialSelectionTracker;
    swift_unknownObjectWeakAssign();
    v6 = *&v1[OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_listViewController] + OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking;
    swift_beginAccess();
    *(v6 + 8) = &protocol witness table for InterstitialSelectionTracker;
    swift_unknownObjectWeakAssign();
    v7 = [v1 navigationItem];
    [v7 setLargeTitleDisplayMode_];

    v8 = [v1 navigationItem];
    v9 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_viewMode;
    swift_beginAccess();
    if (v1[v9])
    {
      v10 = 0x732E657261757173;
    }

    else
    {
      v10 = 0x6C75622E7473696CLL;
    }

    if (v1[v9])
    {
      v11 = 0xEC0000006B636174;
    }

    else
    {
      v11 = 0xEB0000000074656CLL;
    }

    v12 = MEMORY[0x21CE91FC0](v10, v11);

    v13 = [objc_opt_self() systemImageNamed_];

    v14 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v13 style:0 target:v1 action:sel_toggleViewMode];
    [v8 setRightBarButtonItem_];

    InterstitialViewController.updateViewsBasedOnSelection()();
    v15 = *&v1[OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_contentView];
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = MEMORY[0x277D85000];
    v18 = *((*MEMORY[0x277D85000] & *v15) + 0x138);

    v18(partial apply for closure #1 in InterstitialViewController.viewDidLoad(), v16);

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = *((*v17 & *v15) + 0x120);

    v20(partial apply for closure #2 in InterstitialViewController.viewDidLoad(), v19);

    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = *((*v17 & *v15) + 0x108);

    v22(partial apply for closure #3 in InterstitialViewController.viewDidLoad(), v21);

    [v15 setTranslatesAutoresizingMaskIntoConstraints_];
    v23 = [v1 view];
    if (v23)
    {
      v24 = v23;
      [v23 addSubview_];

      UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

      InterstitialViewController.updateChildView()();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void closure #1 in InterstitialViewController.viewDidLoad()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationController];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 navigationBar];

      [v4 setUserInteractionEnabled_];
    }
  }
}

uint64_t closure #2 in InterstitialViewController.viewDidLoad()()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(**(result + OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_selectionTracker) + 184);
    v2 = result;

    v1(1);
  }

  return result;
}

void closure #3 in InterstitialViewController.viewDidLoad()(uint64_t i)
{
  v2 = type metadata accessor for Client();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v138 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v138 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v145 = &v138 - v10;
  v163 = type metadata accessor for UUID();
  v160 = *(v163 - 8);
  v11 = MEMORY[0x28223BE20](v163);
  v13 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v157 = &v138 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v151 = &v138 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v146 = &v138 - v19;
  MEMORY[0x28223BE20](v18);
  v162 = &v138 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_ShyACG5valuetSgMd);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v153 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v152 = &v138 - v24;
  if (one-time initialization token for interstitial != -1)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v25 = type metadata accessor for Logger();
    v26 = __swift_project_value_buffer(v25, static CommonLogger.interstitial);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v13;
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_21607C000, v27, v28, "[AddToEntry] BEGIN", v30, 2u);
      v31 = v30;
      v13 = v29;
      MEMORY[0x21CE94770](v31, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      break;
    }

    v144 = v26;
    v140 = i;
    v141 = v3;
    v142 = v4;
    v139 = v6;
    v143 = v8;
    v166 = MEMORY[0x277D84FA0];
    v147 = Strong;
    v33 = (*(**(Strong + OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_selectionTracker) + 248))();
    v34 = 0;
    v35 = *(v33 + 64);
    v149 = v33 + 64;
    v150 = v33;
    v36 = 1 << *(v33 + 32);
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v38 = v37 & v35;
    v148 = (v36 + 63) >> 6;
    v159 = v160 + 16;
    v156 = (v160 + 32);
    v161 = (v160 + 8);
    v4 = &_s10Foundation4UUIDV3key_ShyACG5valuetMd;
    v154 = v13;
LABEL_10:
    i = v153;
    if (v38)
    {
      v6 = v34;
LABEL_19:
      v40 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      v41 = v40 | (v6 << 6);
      v42 = v150;
      v43 = v160;
      v3 = v162;
      v44 = v163;
      (*(v160 + 16))(v162, *(v150 + 48) + *(v160 + 72) * v41, v163);
      v45 = *(*(v42 + 56) + 8 * v41);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_ShyACG5valuetMd);
      v47 = *(v46 + 48);
      (*(v43 + 32))(i, v3, v44);
      *(i + v47) = v45;
      (*(*(v46 - 8) + 56))(i, 0, 1, v46);

      v8 = v6;
      v13 = v154;
LABEL_20:
      v48 = v152;
      outlined init with take of (key: UUID, value: Set<UUID>)?(i, v152);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_ShyACG5valuetMd);
      if ((*(*(v49 - 8) + 48))(v48, 1, v49) != 1)
      {
        v155 = v8;
        v50 = *(v48 + *(v49 + 48));
        v51 = v151;
        v52 = v163;
        (*v156)(v151, v48, v163);
        v53 = v162;
        specialized Set._Variant.insert(_:)(v162, v51);
        v158 = *v161;
        v158(v53, v52);
        v54 = 0;
        v55 = 1 << *(v50 + 32);
        if (v55 < 64)
        {
          v56 = ~(-1 << v55);
        }

        else
        {
          v56 = -1;
        }

        v57 = v56 & *(v50 + 56);
        v58 = (v55 + 63) >> 6;
        while (v57)
        {
          v59 = v54;
LABEL_30:
          v60 = __clz(__rbit64(v57));
          v57 &= v57 - 1;
          v3 = v157;
          v51 = v163;
          (*(v160 + 16))(v157, *(v50 + 48) + *(v160 + 72) * (v60 | (v59 << 6)), v163);
          v61 = v162;
          specialized Set._Variant.insert(_:)(v162, v3);
          v158(v61, v51);
        }

        while (1)
        {
          v59 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            break;
          }

          if (v59 >= v58)
          {

            v34 = v155;
            v13 = v154;
            v4 = &_s10Foundation4UUIDV3key_ShyACG5valuetMd;
            goto LABEL_10;
          }

          v57 = *(v50 + 56 + 8 * v59);
          ++v54;
          if (v57)
          {
            v54 = v59;
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_60:

        v127 = Logger.logObject.getter();
        v128 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v127, v128))
        {
          v129 = v51;
          v130 = swift_slowAlloc();
          *v130 = 0;
          _os_log_impl(&dword_21607C000, v127, v128, "[AddToEntry] no suggestion view model", v130, 2u);
          v131 = v130;
          v51 = v129;
          MEMORY[0x21CE94770](v131, -1, -1);
        }

        break;
      }

      v162 = MEMORY[0x277D84F90];
      v165 = MEMORY[0x277D84F90];
      v3 = v166;
      v8 = (v166 + 56);
      v63 = 1 << *(v166 + 32);
      v64 = -1;
      if (v63 < 64)
      {
        v64 = ~(-1 << v63);
      }

      v65 = v64 & *(v166 + 56);
      v4 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_viewModelUUIDToAssetMapping;
      v66 = (v63 + 63) >> 6;

      for (i = 0; v65; v3 = v6)
      {
LABEL_42:
        while (1)
        {
          v68 = __clz(__rbit64(v65));
          v65 &= v65 - 1;
          v6 = v3;
          v69 = v160;
          v70 = *(v3 + 48) + *(v160 + 72) * (v68 | (i << 6));
          v71 = v146;
          v72 = v163;
          (*(v160 + 16))(v146, v70, v163);
          (*(v69 + 32))(v13, v71, v72);
          v73 = v147;
          swift_beginAccess();
          v74 = *(v4 + v73);
          if (*(v74 + 16))
          {
            v75 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
            if (v76)
            {
              break;
            }
          }

          swift_endAccess();
          (*v161)(v13, v163);
          v3 = v6;
          if (!v65)
          {
            goto LABEL_38;
          }
        }

        v77 = *(*(v74 + 56) + 8 * v75);
        swift_endAccess();
        v78 = *v161;
        v79 = v77;
        v78(v13, v163);
        v80 = v79;
        MEMORY[0x21CE92260]();
        if (*((v165 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v165 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v162 = v165;
      }

LABEL_38:
      while (1)
      {
        v67 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v67 >= v66)
        {

          v81 = v162;

          v82 = Logger.logObject.getter();
          v83 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v164 = v85;
            *v84 = 136315394;
            _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);

            v86 = Set.description.getter();
            v88 = v87;

            v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, &v164);

            *(v84 + 4) = v89;
            *(v84 + 12) = 2080;
            v90 = type metadata accessor for Asset();
            v91 = MEMORY[0x21CE922D0](v81, v90);
            v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v92, &v164);

            *(v84 + 14) = v93;
            _os_log_impl(&dword_21607C000, v82, v83, "[AddToEntry] authorizedUUIDs: %s, authorizedAssets: %s", v84, 0x16u);
            swift_arrayDestroy();
            v51 = v147;
            MEMORY[0x21CE94770](v85, -1, -1);
            MEMORY[0x21CE94770](v84, -1, -1);

            v94 = v142;
            v95 = v141;
          }

          else
          {

            v94 = v142;
            v95 = v141;
            v51 = v147;
          }

          swift_beginAccess();
          v96 = swift_weakLoadStrong();
          if (!v96)
          {
            goto LABEL_60;
          }

          v97 = v96;
          v98 = type metadata accessor for TaskPriority();
          v99 = v51;
          v100 = v145;
          (*(*(v98 - 8) + 56))(v145, 1, 1, v98);
          type metadata accessor for MainActor();

          v101 = static MainActor.shared.getter();
          v102 = swift_allocObject();
          v103 = MEMORY[0x277D85700];
          v102[2] = v101;
          v102[3] = v103;
          v102[4] = v97;
          _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v100, &async function pointer to partial apply for closure #1 in closure #3 in InterstitialViewController.viewDidLoad(), v102);

          v104 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
          if (v105)
          {
            v104 = 1;
          }

          v106 = specialized DefaultsManager.SheetTransfer.TransferUIMode.init(rawValue:)(v104);
          if (v106 == 5)
          {
            v107 = 1;
          }

          else
          {
            v107 = v106;
          }

          LODWORD(v163) = v107;
          v108 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_currentUiContainer;
          swift_beginAccess();
          LODWORD(v161) = v99[v108];
          v109 = *&v99[OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_contentView];
          v110 = *((*MEMORY[0x277D85000] & *v109) + 0x220);
          v111 = v109;
          v160 = v110();
          v113 = v112;

          v114 = v143;
          (*(*v97 + 280))();
          swift_beginAccess();
          v115 = swift_unknownObjectWeakLoadStrong();
          if (v115)
          {
            v116 = v115;
            v159 = "suggestionViewModel";
            v158 = v113;
            v117 = v139;
            outlined init with copy of Client(v114, v139);
            v118 = (*(v95 + 80) + 16) & ~*(v95 + 80);
            v119 = v94 + v118;
            v120 = (v94 + v118) & 0xFFFFFFFFFFFFFFF8;
            v121 = (v120 + 23) & 0xFFFFFFFFFFFFFFF8;
            v162 = v81;
            v122 = swift_allocObject();
            outlined init with take of Client(v117, v122 + v118, type metadata accessor for Client);
            LOBYTE(v118) = v163;
            *(v122 + v119) = v163;
            *(v122 + v120 + 8) = v97;
            v123 = (v122 + v121);
            v124 = v158;
            *v123 = v160;
            v123[1] = v124;
            v125 = v122 + ((v121 + 23) & 0xFFFFFFFFFFFFFFF8);
            *v125 = v162;
            *(v125 + 8) = v161;

            *&v116[OBJC_IVAR____TtC9MomentsUI26InterstitialViewController__btask] = specialized static BTask.detached(name:operation:)(0xD000000000000027, v159 | 0x8000000000000000, &async function pointer to partial apply for specialized closure #2 in closure #3 in InterstitialViewController.viewDidLoad(), v122);

            v126 = v118;
          }

          else
          {

            v126 = v163;
          }

          v132 = v147;
          if (v126 == 3)
          {
            v133 = Logger.logObject.getter();
            v134 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v133, v134))
            {
              v135 = swift_slowAlloc();
              *v135 = 0;
              _os_log_impl(&dword_21607C000, v133, v134, "[AddToEntry] Dimissing Sheet", v135, 2u);
              v136 = v135;
              v132 = v147;
              MEMORY[0x21CE94770](v136, -1, -1);
            }

            swift_beginAccess();
            v137 = static MomentsUIManager.dismissWithoutCleanup;

            (v137)(1);

            outlined destroy of Client(v143, type metadata accessor for Client);
          }

          else
          {
            outlined destroy of Client(v143, type metadata accessor for Client);
          }

          goto LABEL_69;
        }

        v65 = *&v8[8 * v67];
        ++i;
        if (v65)
        {
          i = v67;
          goto LABEL_42;
        }
      }
    }

    else
    {
      if (v148 <= v34 + 1)
      {
        v39 = v34 + 1;
      }

      else
      {
        v39 = v148;
      }

      v8 = (v39 - 1);
      while (1)
      {
        v6 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v6 >= v148)
        {
          v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_ShyACG5valuetMd);
          (*(*(v62 - 8) + 56))(i, 1, 1, v62);
          v38 = 0;
          goto LABEL_20;
        }

        v38 = *(v149 + 8 * v6);
        ++v34;
        if (v38)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_72:
    swift_once();
  }

LABEL_69:
  $defer #1 () in closure #1 in MosaicCollectionViewCell.viewModel.didset("[AddToEntry] END");
}