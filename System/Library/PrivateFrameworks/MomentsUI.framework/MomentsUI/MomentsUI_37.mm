Swift::Bool __swiftcall CloudDevice.hasCapability(_:)(MomentsUI::CloudDevice::Capability a1)
{
  v2 = *a1;
  v3 = *(v1 + *(type metadata accessor for CloudDevice() + 52));
  if (v3)
  {
    v4 = *(v3 + 16);
    for (i = (v3 + 32); ; ++i)
    {
      v7 = v4-- != 0;
      v8 = v7;
      if (!v7)
      {
        return v8;
      }

      v9 = *i;
      if (v9 > 3)
      {
        if (*i > 5u)
        {
          if (v9 == 6)
          {
            v14 = 0x756F527465737361;
            v15 = 0xEE00626F6C426574;
            if (v2 <= 3)
            {
              goto LABEL_51;
            }
          }

          else
          {
            v14 = 0x6174536775626564;
            v15 = 0xEA0000000000656CLL;
            if (v2 <= 3)
            {
              goto LABEL_51;
            }
          }
        }

        else
        {
          if (v9 == 4)
          {
            v14 = 1280328553;
          }

          else
          {
            v14 = 0x68746C616548;
          }

          if (v9 == 4)
          {
            v15 = 0xE400000000000000;
          }

          else
          {
            v15 = 0xE600000000000000;
          }

          if (v2 <= 3)
          {
            goto LABEL_51;
          }
        }
      }

      else
      {
        v10 = 0x64756F6C43776F6CLL;
        if (v9 != 2)
        {
          v10 = 0x6469766F72506F6ELL;
        }

        v11 = 0xEB00000000737265;
        if (v9 == 2)
        {
          v11 = 0xEF656761726F7453;
        }

        v12 = 0x6C61636F4C776F6CLL;
        if (!*i)
        {
          v12 = 0x626E4F726576656ELL;
        }

        v13 = 0xEE0064656472616FLL;
        if (*i)
        {
          v13 = 0xEF656761726F7453;
        }

        if (*i <= 1u)
        {
          v14 = v12;
        }

        else
        {
          v14 = v10;
        }

        if (*i <= 1u)
        {
          v15 = v13;
        }

        else
        {
          v15 = v11;
        }

        if (v2 <= 3)
        {
LABEL_51:
          if (v2 > 1)
          {
            if (v2 == 2)
            {
              v20 = 0x64756F6C43776F6CLL;
            }

            else
            {
              v20 = 0x6469766F72506F6ELL;
            }

            if (v2 == 2)
            {
              v21 = 0xEF656761726F7453;
            }

            else
            {
              v21 = 0xEB00000000737265;
            }
          }

          else
          {
            v20 = 0x626E4F726576656ELL;
            v21 = 0xEE0064656472616FLL;
            if (v2)
            {
              v20 = 0x6C61636F4C776F6CLL;
              v21 = 0xEF656761726F7453;
            }
          }

          goto LABEL_60;
        }
      }

      v16 = 0x756F527465737361;
      if (v2 != 6)
      {
        v16 = 0x6174536775626564;
      }

      v17 = 0xEE00626F6C426574;
      if (v2 != 6)
      {
        v17 = 0xEA0000000000656CLL;
      }

      v18 = 0x68746C616548;
      if (v2 == 4)
      {
        v18 = 1280328553;
        v19 = 0xE400000000000000;
      }

      else
      {
        v19 = 0xE600000000000000;
      }

      if (v2 <= 5)
      {
        v20 = v18;
      }

      else
      {
        v20 = v16;
      }

      if (v2 <= 5)
      {
        v21 = v19;
      }

      else
      {
        v21 = v17;
      }

LABEL_60:
      if (v14 == v20 && v15 == v21)
      {

        return 1;
      }

      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v6)
      {
        return v8;
      }
    }
  }

  return 0;
}

void CloudDevice.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - v7;
  String.hash(into:)();
  v9 = type metadata accessor for CloudDevice();
  outlined init with copy of DateInterval?(v1 + *(v9 + 28), v8, &_s10Foundation4DateVSgMd);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  if (*(v1 + *(v9 + 32) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int CloudDevice.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = type metadata accessor for CloudDevice();
  outlined init with copy of DateInterval?(v1 + *(v9 + 28), v8, &_s10Foundation4DateVSgMd);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  if (*(v1 + *(v9 + 32) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static CloudRecord.productionSchema.getter in conformance CloudDevice()
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static CloudDevice.productionSchema.getter()
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

void (*protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudDevice(id *a1, uint64_t a2))(void **a1, char a2)
{
  a1[1] = v2;
  *a1 = specialized static CloudSyncDB.getCKRecord(_:)(*&v2[*(a2 + 112)], *&v2[*(a2 + 112) + 8]);
  return protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudDevice;
}

void protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudDevice(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    CloudDevice.lastKnownCKRecord.setter(v2);
  }

  else
  {
    CloudDevice.lastKnownCKRecord.setter(*a1);
  }
}

void (*CloudDevice.lastKnownCKRecord.modify(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = type metadata accessor for CloudDevice();
  *a1 = specialized static CloudSyncDB.getCKRecord(_:)(*&v1[*(v3 + 112)], *&v1[*(v3 + 112) + 8]);
  return protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudDevice;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CloudDevice(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v13 - v10;
  Hasher.init(_seed:)();
  String.hash(into:)();
  outlined init with copy of DateInterval?(v4 + *(a2 + 28), v11, &_s10Foundation4DateVSgMd);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v6 + 8))(v8, v5);
  }

  if (*(v4 + *(a2 + 32) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t static CloudDevice.productionSchema.setter(void *a1)
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CloudDevice.productionSchema = a1;
}

uint64_t (*static CloudDevice.productionSchema.modify())()
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

uint64_t closure #1 in CloudDevice.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](closure #1 in CloudDevice.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:), 0, 0);
}

uint64_t closure #1 in CloudDevice.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)()
{
  v1 = v0[4];
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMd);
  v3 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[5] = v6;
  *(v6 + 16) = xmmword_21658CA50;
  (*(v4 + 16))(v6 + v5, v1, v3);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = closure #1 in CloudSyncAssetData.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:);
  v8 = v0[3];

  return CloudManagerProtocol.add(pendingRecordZoneChanges:_:_:)(v6, 0xD00000000000004CLL, 0x8000000216578810, 1559, ObjectType, v8);
}

uint64_t key path setter for CloudDevice.systemIdiom : CloudDevice(char *a1, uint64_t a2)
{
  v3 = qword_2165A4770[*a1];
  result = type metadata accessor for CloudDevice();
  v5 = a2 + *(result + 40);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t CloudDevice.systemIdiom.setter(char *a1)
{
  v2 = qword_2165A4770[*a1];
  result = type metadata accessor for CloudDevice();
  v4 = v1 + *(result + 40);
  *v4 = v2;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CloudDevice.systemIdiom.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CloudDevice() + 40);
  *(a1 + 8) = v3;
  v4 = v1 + v3;
  if (*(v4 + 8))
  {
    v5 = -1;
  }

  else
  {
    v5 = *v4;
  }

  CloudDevice.Idiom.init(rawValue:)(v5);
  v6 = v8;
  if (v8 == 7)
  {
    v6 = 0;
  }

  *(a1 + 12) = v6;
  return CloudDevice.systemIdiom.modify;
}

uint64_t CloudDevice.systemIdiom.modify(uint64_t result)
{
  v1 = *result + *(result + 8);
  *v1 = qword_2165A4770[*(result + 12)];
  *(v1 + 8) = 0;
  return result;
}

void (*CloudDevice.snapshotEventAggregation.modify(uint64_t *a1))(__int128 **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x148uLL);
  }

  *a1 = v3;
  *(v3 + 320) = v1;
  CloudDevice.snapshotEventAggregation.getter(v3);
  return CloudDevice.snapshotEventAggregation.modify;
}

void CloudDevice.snapshotEventAggregation.modify(__int128 **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[1];
    v5 = v2[2];
    v4 = v2[3];
    v2[12] = v5;
    v2[13] = v4;
    v6 = v2[3];
    v2[14] = v2[4];
    v7 = v2[1];
    v8 = *v2;
    v2[10] = *v2;
    v2[11] = v7;
    v15 = v5;
    v16 = v6;
    v17 = v2[4];
    v13 = v8;
    v14 = v3;
    outlined init with copy of DateInterval?((v2 + 10), (v2 + 15), &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
    CloudDevice.snapshotEventAggregation.setter(&v13);
    v9 = v2[3];
    v2[7] = v2[2];
    v2[8] = v9;
    v2[9] = v2[4];
    v10 = v2[1];
    v2[5] = *v2;
    v2[6] = v10;
    outlined destroy of UTType?((v2 + 5), &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
  }

  else
  {
    v11 = v2[3];
    v15 = v2[2];
    v16 = v11;
    v17 = v2[4];
    v12 = v2[1];
    v13 = *v2;
    v14 = v12;
    CloudDevice.snapshotEventAggregation.setter(&v13);
  }

  free(v2);
}

unint64_t CloudDevice.jsonDict.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v325 = &v313 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v324 = &v313 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v323 = &v313 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v322 = &v313 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v321 = &v313 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v320 = &v313 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v319 = &v313 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v318 = &v313 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v317 = &v313 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v316 = &v313 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v315 = &v313 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v313 - v25;
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Se_SEpTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v28 = *v0;
  v29 = v0[1];
  v30 = MEMORY[0x277D837D0];
  v31 = MEMORY[0x277D83808];
  v336 = MEMORY[0x277D837D0];
  v337 = MEMORY[0x277D83808];
  v32 = MEMORY[0x277D837D8];
  v338 = MEMORY[0x277D837D8];
  *&v335 = v28;
  *(&v335 + 1) = v29;
  outlined init with take of Decodable & Encodable(&v335, &v333);

  LOBYTE(v29) = swift_isUniquelyReferenced_nonNull_native();
  v332 = v27;
  v33 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
  MEMORY[0x28223BE20](v33);
  v35 = (&v313 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(*v35, v35[1], 25705, 0xE200000000000000, v29, &v332);
  __swift_destroy_boxed_opaque_existential_1(&v333);
  v37 = v332;
  v339 = v332;
  v38 = v1[3];
  if (v38)
  {
    v39 = v1[2];
    v336 = v30;
    v337 = v31;
    v338 = v32;
    *&v335 = v39;
    *(&v335 + 1) = v38;
    outlined init with take of Decodable & Encodable(&v335, &v333);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v332 = v37;
    v41 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v41);
    v43 = &v313 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v44 + 16))(v43);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, 0x4449656369766564, 0xE800000000000000, isUniquelyReferenced_nonNull_native, &v332, v30, v31, v32);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
    v45 = v1[5];
    if (v45)
    {
LABEL_3:
      v46 = v1[4];
      v336 = v30;
      v337 = v31;
      v338 = v32;
      *&v335 = v46;
      *(&v335 + 1) = v45;
      outlined init with take of Decodable & Encodable(&v335, &v333);

      v47 = v339;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v332 = v47;
      v49 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
      MEMORY[0x28223BE20](v49);
      v51 = &v313 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v51);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v51, 0x4449656C646E7562, 0xE800000000000000, v48, &v332, v30, v31, v32);
      __swift_destroy_boxed_opaque_existential_1(&v333);
      v339 = v332;
      goto LABEL_6;
    }
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x4449656369766564, 0xE800000000000000, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd);
    v45 = v1[5];
    if (v45)
    {
      goto LABEL_3;
    }
  }

  specialized Dictionary._Variant.removeValue(forKey:)(0x4449656C646E7562, 0xE800000000000000, &v335);
  outlined destroy of UTType?(&v335, &_sSe_SEpSgMd);
LABEL_6:
  v331 = type metadata accessor for CloudDevice();
  outlined init with copy of DateInterval?(v1 + v331[7], v26, &_s10Foundation4DateVSgMd);
  v53 = type metadata accessor for Date();
  v54 = *(v53 - 8);
  v329 = *(v54 + 48);
  v330 = v54 + 48;
  v55 = v329(v26, 1, v53);
  v56 = MEMORY[0x277D839F8];
  v57 = MEMORY[0x277D83A30];
  v58 = MEMORY[0x277D83A08];
  v327 = v54;
  v328 = v53;
  if (v55 == 1)
  {
    outlined destroy of UTType?(v26, &_s10Foundation4DateVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000014, 0x8000000216585CF0, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v336 = v56;
    v337 = v57;
    v338 = v58;
    *&v335 = v59;
    (*(v54 + 8))(v26, v53);
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v60 = v339;
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v60;
    v62 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v62);
    v64 = &v313 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v65 + 16))(v64);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v64, 0xD000000000000014, 0x8000000216585CF0, v61, &v332, v56, v57, v58);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
  }

  v66 = v57;
  v67 = (v1 + v331[8]);
  v68 = v67[1];
  v69 = MEMORY[0x277D837D0];
  if (v68)
  {
    v70 = *v67;
    v336 = MEMORY[0x277D837D0];
    v71 = MEMORY[0x277D83808];
    v337 = MEMORY[0x277D83808];
    v72 = MEMORY[0x277D837D8];
    v338 = MEMORY[0x277D837D8];
    *&v335 = v70;
    *(&v335 + 1) = v68;
    outlined init with take of Decodable & Encodable(&v335, &v333);

    v73 = v339;
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v73;
    v75 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v75);
    v77 = &v313 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v78 + 16))(v77);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v77, 1701667182, 0xE400000000000000, v74, &v332, v69, v71, v72);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(1701667182, 0xE400000000000000, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd);
  }

  v79 = (v1 + v331[9]);
  v80 = v79[1];
  if (v80)
  {
    v81 = *v79;
    v336 = v69;
    v82 = MEMORY[0x277D83808];
    v337 = MEMORY[0x277D83808];
    v83 = MEMORY[0x277D837D8];
    v338 = MEMORY[0x277D837D8];
    *&v335 = v81;
    *(&v335 + 1) = v80;
    outlined init with take of Decodable & Encodable(&v335, &v333);

    v84 = v339;
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v84;
    v86 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v86);
    v88 = &v313 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v89 + 16))(v88);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v88, 0x65566D6574737973, 0xED00006E6F697372, v85, &v332, v69, v82, v83);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x65566D6574737973, 0xED00006E6F697372, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd);
  }

  v90 = v1 + v331[10];
  v91 = v90[8];
  v326 = v1;
  if (v91)
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x64496D6574737973, 0xEE00746E496D6F69, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd);
  }

  else
  {
    v92 = *v90;
    v93 = MEMORY[0x277D84A28];
    v94 = MEMORY[0x277D84A58];
    v95 = MEMORY[0x277D84A30];
    v337 = MEMORY[0x277D84A58];
    v338 = MEMORY[0x277D84A30];
    v336 = MEMORY[0x277D84A28];
    *&v335 = v92;
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v96 = v339;
    v97 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v96;
    v98 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v98);
    v100 = &v313 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
    v69 = MEMORY[0x277D837D0];
    (*(v101 + 16))(v100);
    v102 = v97;
    v66 = MEMORY[0x277D83A30];
    v103 = v95;
    v1 = v326;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v100, 0x64496D6574737973, 0xEE00746E496D6F69, v102, &v332, v93, v94, v103);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
  }

  v104 = (v1 + v331[11]);
  v105 = v104[1];
  if (v105)
  {
    v106 = *v104;
    v336 = v69;
    v107 = MEMORY[0x277D83808];
    v337 = MEMORY[0x277D83808];
    v108 = MEMORY[0x277D837D8];
    v338 = MEMORY[0x277D837D8];
    *&v335 = v106;
    *(&v335 + 1) = v105;
    outlined init with take of Decodable & Encodable(&v335, &v333);

    v109 = v339;
    v110 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v109;
    v111 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v111);
    v113 = &v313 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v114 + 16))(v113);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v113, 0x614C6D6574737973, 0xEE0065676175676ELL, v110, &v332, v69, v107, v108);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x614C6D6574737973, 0xEE0065676175676ELL, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd);
  }

  v115 = *(v1 + v331[13]);
  if (v115)
  {
    v314 = "userModificationDate";
    v116 = *(v115 + 16);
    v117 = MEMORY[0x277D84F90];
    if (v116)
    {
      *&v335 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v116, 0);
      v118 = (v115 + 32);
      v117 = v335;
      v119 = 0x68746C616548;
      do
      {
        v121 = *v118++;
        v120 = v121;
        v122 = v121 == 6;
        if (v121 == 6)
        {
          v123 = 0x756F527465737361;
        }

        else
        {
          v123 = 0x6174536775626564;
        }

        if (v122)
        {
          v124 = 0xEE00626F6C426574;
        }

        else
        {
          v124 = 0xEA0000000000656CLL;
        }

        if (v120 == 4)
        {
          v125 = 1280328553;
        }

        else
        {
          v125 = v119;
        }

        if (v120 == 4)
        {
          v126 = 0xE400000000000000;
        }

        else
        {
          v126 = 0xE600000000000000;
        }

        if (v120 <= 5)
        {
          v123 = v125;
          v124 = v126;
        }

        if (v120 == 2)
        {
          v127 = 0x64756F6C43776F6CLL;
        }

        else
        {
          v127 = 0x6469766F72506F6ELL;
        }

        if (v120 == 2)
        {
          v128 = 0xEF656761726F7453;
        }

        else
        {
          v128 = 0xEB00000000737265;
        }

        if (v120)
        {
          v129 = 0x6C61636F4C776F6CLL;
        }

        else
        {
          v129 = 0x626E4F726576656ELL;
        }

        if (v120)
        {
          v130 = 0xEF656761726F7453;
        }

        else
        {
          v130 = 0xEE0064656472616FLL;
        }

        if (v120 <= 1)
        {
          v127 = v129;
          v128 = v130;
        }

        if (v120 <= 3)
        {
          v131 = v127;
        }

        else
        {
          v131 = v123;
        }

        if (v120 <= 3)
        {
          v132 = v128;
        }

        else
        {
          v132 = v124;
        }

        *&v335 = v117;
        v134 = *(v117 + 16);
        v133 = *(v117 + 24);
        if (v134 >= v133 >> 1)
        {
          v136 = v119;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v133 > 1), v134 + 1, 1);
          v119 = v136;
          v117 = v335;
        }

        *(v117 + 16) = v134 + 1;
        v135 = v117 + 16 * v134;
        *(v135 + 32) = v131;
        *(v135 + 40) = v132;
        --v116;
      }

      while (v116);
      v69 = MEMORY[0x277D837D0];
      v66 = MEMORY[0x277D83A30];
    }

    v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    v336 = v137;
    v138 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    v337 = v138;
    v139 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    v338 = v139;
    *&v335 = v117;
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v140 = v339;
    v141 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v140;
    v142 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v142);
    v144 = &v313 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v145 + 16))(v144);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v144, 0xD000000000000012, v314 | 0x8000000000000000, v141, &v332, v137, v138, v139);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
    v1 = v326;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000012, 0x8000000216585D10, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd);
  }

  v146 = (v1 + v331[12]);
  v147 = v146[1];
  if (v147)
  {
    v148 = *v146;
    v336 = v69;
    v149 = MEMORY[0x277D83808];
    v337 = MEMORY[0x277D83808];
    v150 = MEMORY[0x277D837D8];
    v338 = MEMORY[0x277D837D8];
    *&v335 = v148;
    *(&v335 + 1) = v147;
    outlined init with take of Decodable & Encodable(&v335, &v333);

    v151 = v339;
    v152 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v151;
    v153 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v153);
    v155 = &v313 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v156 + 16))(v155);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v155, 0x6F4D656369766564, 0xEB000000006C6564, v152, &v332, v69, v149, v150);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x6F4D656369766564, 0xEB000000006C6564, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd);
  }

  v157 = MEMORY[0x277D839F8];
  v158 = v315;
  outlined init with copy of DateInterval?(v1 + v331[14], v315, &_s10Foundation4DateVSgMd);
  v159 = v328;
  if (v329(v158, 1, v328) == 1)
  {
    outlined destroy of UTType?(v158, &_s10Foundation4DateVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000011, 0x8000000216585D30, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v336 = v157;
    v337 = v66;
    v160 = v69;
    v161 = MEMORY[0x277D83A08];
    v338 = MEMORY[0x277D83A08];
    *&v335 = v162;
    (*(v327 + 8))(v158, v159);
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v163 = v339;
    v164 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v163;
    v165 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v165);
    v167 = &v313 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v168 + 16))(v167);
    v169 = v161;
    v69 = v160;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v167, 0xD000000000000011, 0x8000000216585D30, v164, &v332, v157, v66, v169);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
  }

  v170 = *(v1 + v331[15]);
  if (v170 == 2)
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x616D697250736177, 0xEA00000000007972, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd);
  }

  else
  {
    v171 = MEMORY[0x277D839B0];
    v172 = MEMORY[0x277D839D0];
    v336 = MEMORY[0x277D839B0];
    v337 = MEMORY[0x277D839D0];
    v173 = MEMORY[0x277D839B8];
    v338 = MEMORY[0x277D839B8];
    LOBYTE(v335) = v170 & 1;
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v174 = v339;
    v175 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v174;
    v176 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v176);
    v178 = &v313 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v179 + 16))(v178);
    v180 = v178;
    v69 = MEMORY[0x277D837D0];
    v181 = v175;
    v1 = v326;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v180, 0x616D697250736177, 0xEA00000000007972, v181, &v332, v171, v172, v173);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
  }

  v182 = v328;
  v183 = v316;
  outlined init with copy of DateInterval?(v1 + v331[16], v316, &_s10Foundation4DateVSgMd);
  if (v329(v183, 1, v182) == 1)
  {
    outlined destroy of UTType?(v183, &_s10Foundation4DateVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000013, 0x8000000216585D50, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v336 = v157;
    v337 = v66;
    v184 = v69;
    v185 = MEMORY[0x277D83A08];
    v338 = MEMORY[0x277D83A08];
    *&v335 = v186;
    (*(v327 + 8))(v183, v182);
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v187 = v339;
    v188 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v187;
    v189 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v189);
    v191 = &v313 - ((v190 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v192 + 16))(v191);
    v193 = v185;
    v69 = v184;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v191, 0xD000000000000013, 0x8000000216585D50, v188, &v332, v157, v66, v193);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
  }

  v194 = (v1 + v331[17]);
  v195 = v194[1];
  if (v195)
  {
    v196 = *v194;
    v336 = v69;
    v197 = MEMORY[0x277D83808];
    v337 = MEMORY[0x277D83808];
    v198 = MEMORY[0x277D837D8];
    v338 = MEMORY[0x277D837D8];
    *&v335 = v196;
    *(&v335 + 1) = v195;
    outlined init with take of Decodable & Encodable(&v335, &v333);

    v199 = v339;
    v200 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v199;
    v201 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v201);
    v203 = &v313 - ((v202 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v204 + 16))(v203);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v203, 0xD000000000000012, 0x8000000216585D70, v200, &v332, v69, v197, v198);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v157 = MEMORY[0x277D839F8];
    v339 = v332;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000012, 0x8000000216585D70, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd);
  }

  v205 = v317;
  outlined init with copy of DateInterval?(v1 + v331[18], v317, &_s10Foundation4DateVSgMd);
  v206 = v328;
  if (v329(v205, 1, v328) == 1)
  {
    outlined destroy of UTType?(v205, &_s10Foundation4DateVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(0x6974616E696D6F6ELL, 0xEE00657461446E6FLL, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v336 = v157;
    v337 = v66;
    v207 = MEMORY[0x277D83A08];
    v338 = MEMORY[0x277D83A08];
    *&v335 = v208;
    (*(v327 + 8))(v205, v206);
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v209 = v339;
    v210 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v209;
    v211 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v211);
    v213 = &v313 - ((v212 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v214 + 16))(v213);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v213, 0x6974616E696D6F6ELL, 0xEE00657461446E6FLL, v210, &v332, v157, v66, v207);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v206 = v328;
    v339 = v332;
  }

  v215 = v318;
  outlined init with copy of DateInterval?(v1 + v331[19], v318, &_s10Foundation4DateVSgMd);
  if (v329(v215, 1, v206) == 1)
  {
    outlined destroy of UTType?(v215, &_s10Foundation4DateVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000010, 0x8000000216585D90, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v336 = v157;
    v337 = v66;
    v216 = MEMORY[0x277D83A08];
    v338 = MEMORY[0x277D83A08];
    *&v335 = v217;
    (*(v327 + 8))(v215, v206);
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v218 = v339;
    v219 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v218;
    v220 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v220);
    v222 = &v313 - ((v221 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v223 + 16))(v222);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v222, 0xD000000000000010, 0x8000000216585D90, v219, &v332, v157, v66, v216);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v206 = v328;
    v339 = v332;
  }

  v224 = v319;
  outlined init with copy of DateInterval?(v1 + v331[20], v319, &_s10Foundation4DateVSgMd);
  if (v329(v224, 1, v206) == 1)
  {
    outlined destroy of UTType?(v224, &_s10Foundation4DateVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(0x696472616F626E6FLL, 0xEE0065746144676ELL, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v336 = v157;
    v337 = v66;
    v225 = MEMORY[0x277D83A08];
    v338 = MEMORY[0x277D83A08];
    *&v335 = v226;
    (*(v327 + 8))(v224, v206);
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v227 = v339;
    v228 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v227;
    v229 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v229);
    v231 = &v313 - ((v230 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v232 + 16))(v231);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v231, 0x696472616F626E6FLL, 0xEE0065746144676ELL, v228, &v332, v157, v66, v225);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v206 = v328;
    v339 = v332;
  }

  v233 = v320;
  outlined init with copy of DateInterval?(v1 + v331[21], v320, &_s10Foundation4DateVSgMd);
  if (v329(v233, 1, v206) == 1)
  {
    outlined destroy of UTType?(v233, &_s10Foundation4DateVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000023, 0x8000000216585DB0, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v234 = MEMORY[0x277D839F8];
    v336 = MEMORY[0x277D839F8];
    v337 = MEMORY[0x277D83A30];
    v235 = MEMORY[0x277D83A08];
    v338 = MEMORY[0x277D83A08];
    *&v335 = v236;
    (*(v327 + 8))(v233, v206);
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v237 = v339;
    v238 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v237;
    v239 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v239);
    v241 = &v313 - ((v240 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v242 + 16))(v241);
    v243 = v234;
    v66 = MEMORY[0x277D83A30];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v241, 0xD000000000000023, 0x8000000216585DB0, v238, &v332, v243, MEMORY[0x277D83A30], v235);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v206 = v328;
    v339 = v332;
  }

  v244 = v321;
  outlined init with copy of DateInterval?(v1 + v331[22], v321, &_s10Foundation4DateVSgMd);
  if (v329(v244, 1, v206) == 1)
  {
    outlined destroy of UTType?(v244, &_s10Foundation4DateVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000021, 0x80000002165842C0, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v245 = MEMORY[0x277D839F8];
    v336 = MEMORY[0x277D839F8];
    v337 = MEMORY[0x277D83A30];
    v246 = MEMORY[0x277D83A08];
    v338 = MEMORY[0x277D83A08];
    *&v335 = v247;
    (*(v327 + 8))(v244, v206);
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v248 = v339;
    v249 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v248;
    v250 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v250);
    v252 = &v313 - ((v251 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v253 + 16))(v252);
    v254 = v245;
    v66 = MEMORY[0x277D83A30];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v252, 0xD000000000000021, 0x80000002165842C0, v249, &v332, v254, MEMORY[0x277D83A30], v246);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v206 = v328;
    v339 = v332;
  }

  v255 = v322;
  outlined init with copy of DateInterval?(v1 + v331[23], v322, &_s10Foundation4DateVSgMd);
  if (v329(v255, 1, v206) == 1)
  {
    outlined destroy of UTType?(v255, &_s10Foundation4DateVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000020, 0x80000002165842F0, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v256 = MEMORY[0x277D839F8];
    v336 = MEMORY[0x277D839F8];
    v337 = MEMORY[0x277D83A30];
    v257 = MEMORY[0x277D83A08];
    v338 = MEMORY[0x277D83A08];
    *&v335 = v258;
    (*(v327 + 8))(v255, v206);
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v259 = v339;
    v260 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v259;
    v261 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v261);
    v263 = &v313 - ((v262 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v264 + 16))(v263);
    v265 = v256;
    v66 = MEMORY[0x277D83A30];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v263, 0xD000000000000020, 0x80000002165842F0, v260, &v332, v265, MEMORY[0x277D83A30], v257);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v206 = v328;
    v339 = v332;
  }

  v266 = v323;
  outlined init with copy of DateInterval?(v1 + v331[24], v323, &_s10Foundation4DateVSgMd);
  if (v329(v266, 1, v206) == 1)
  {
    outlined destroy of UTType?(v266, &_s10Foundation4DateVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000018, 0x8000000216584320, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v267 = MEMORY[0x277D839F8];
    v336 = MEMORY[0x277D839F8];
    v337 = MEMORY[0x277D83A30];
    v268 = MEMORY[0x277D83A08];
    v338 = MEMORY[0x277D83A08];
    *&v335 = v269;
    (*(v327 + 8))(v266, v206);
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v270 = v339;
    v271 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v270;
    v272 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v272);
    v274 = &v313 - ((v273 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v275 + 16))(v274);
    v276 = v267;
    v66 = MEMORY[0x277D83A30];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v274, 0xD000000000000018, 0x8000000216584320, v271, &v332, v276, MEMORY[0x277D83A30], v268);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v206 = v328;
    v339 = v332;
  }

  v277 = v324;
  outlined init with copy of DateInterval?(v1 + v331[25], v324, &_s10Foundation4DateVSgMd);
  if (v329(v277, 1, v206) == 1)
  {
    outlined destroy of UTType?(v277, &_s10Foundation4DateVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000010, 0x8000000216584340, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v278 = MEMORY[0x277D839F8];
    v336 = MEMORY[0x277D839F8];
    v337 = MEMORY[0x277D83A30];
    v279 = MEMORY[0x277D83A08];
    v338 = MEMORY[0x277D83A08];
    *&v335 = v280;
    (*(v327 + 8))(v277, v206);
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v281 = v339;
    v282 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v281;
    v283 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v283);
    v285 = &v313 - ((v284 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v286 + 16))(v285);
    v287 = v278;
    v66 = MEMORY[0x277D83A30];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v285, 0xD000000000000010, 0x8000000216584340, v282, &v332, v287, MEMORY[0x277D83A30], v279);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
  }

  v288 = (v1 + v331[27]);
  v289 = v288[1];
  if (v289)
  {
    v290 = *v288;
    v291 = MEMORY[0x277D837D0];
    v336 = MEMORY[0x277D837D0];
    v292 = MEMORY[0x277D83808];
    v337 = MEMORY[0x277D83808];
    v293 = MEMORY[0x277D837D8];
    v338 = MEMORY[0x277D837D8];
    *&v335 = v290;
    *(&v335 + 1) = v289;
    outlined init with take of Decodable & Encodable(&v335, &v333);

    v294 = v339;
    v295 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v294;
    v296 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v296);
    v298 = &v313 - ((v297 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v299 + 16))(v298);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v298, 0x69746172656E6567, 0xEA00000000006E6FLL, v295, &v332, v291, v292, v293);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x69746172656E6567, 0xEA00000000006E6FLL, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd);
  }

  v300 = MEMORY[0x277D839F8];
  v301 = MEMORY[0x277D83A08];
  v302 = v327;
  v303 = v325;
  outlined init with copy of DateInterval?(v1 + v331[29], v325, &_s10Foundation4DateVSgMd);
  v304 = v328;
  if (v329(v303, 1, v328) == 1)
  {
    outlined destroy of UTType?(v303, &_s10Foundation4DateVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000015, 0x800000021657BAE0, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd);
    return v339;
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v336 = v300;
    v337 = v66;
    v338 = v301;
    *&v335 = v306;
    (*(v302 + 8))(v303, v304);
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v307 = v339;
    v308 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v307;
    v309 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v309);
    v311 = &v313 - ((v310 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v312 + 16))(v311);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v311, 0xD000000000000015, 0x800000021657BAE0, v308, &v332, v300, v66, v301);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    return v332;
  }
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = specialized closure #1 in _NativeSet.intersection(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = specialized closure #1 in _NativeSet.intersection(_:)(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v11, v6, a2, a1);

    MEMORY[0x21CE94770](v11, -1, -1);
  }

  return v9;
}

Swift::Int specialized closure #1 in _NativeSet.intersection(_:)(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v71 = result;
  v6 = 0;
  v7 = 0;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v38 = a3 + 56;
    v39 = 1 << *(a3 + 32);
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v73 = v40 & *(a3 + 56);
    v41 = (v39 + 63) >> 6;
    v77 = a4 + 56;
    while (1)
    {
      do
      {
LABEL_82:
        if (v73)
        {
          v42 = __clz(__rbit64(v73));
          v43 = (v73 - 1) & v73;
        }

        else
        {
          v44 = v7;
          do
          {
            v7 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              goto LABEL_156;
            }

            if (v7 >= v41)
            {
LABEL_154:

              return specialized _NativeSet.extractSubset(using:count:)(v71, a2, v6, v5);
            }

            v45 = *(v38 + 8 * v7);
            ++v44;
          }

          while (!v45);
          v42 = __clz(__rbit64(v45));
          v43 = (v45 - 1) & v45;
        }

        v46 = v42 | (v7 << 6);
        v47 = *(*(v5 + 48) + v46);
        Hasher.init(_seed:)();
        v73 = v43;
        v70 = v46;
        String.hash(into:)();

        result = Hasher._finalize()();
        v48 = -1 << *(v4 + 32);
        v49 = result & ~v48;
      }

      while (((*(v77 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0);
      v75 = v6;
      v50 = ~v48;
      while (1)
      {
        v51 = *(*(a4 + 48) + v49);
        if (v51 > 3)
        {
          if (*(*(a4 + 48) + v49) > 5u)
          {
            if (v51 == 6)
            {
              v56 = 0x756F527465737361;
              v57 = 0xEE00626F6C426574;
              if (v47 > 3)
              {
                goto LABEL_118;
              }
            }

            else
            {
              v56 = 0x6174536775626564;
              v57 = 0xEA0000000000656CLL;
              if (v47 > 3)
              {
                goto LABEL_118;
              }
            }
          }

          else
          {
            if (v51 == 4)
            {
              v56 = 1280328553;
            }

            else
            {
              v56 = 0x68746C616548;
            }

            if (v51 == 4)
            {
              v57 = 0xE400000000000000;
            }

            else
            {
              v57 = 0xE600000000000000;
            }

            if (v47 > 3)
            {
              goto LABEL_118;
            }
          }
        }

        else
        {
          v52 = 0x64756F6C43776F6CLL;
          if (v51 != 2)
          {
            v52 = 0x6469766F72506F6ELL;
          }

          v53 = 0xEF656761726F7453;
          v54 = 0xEB00000000737265;
          if (v51 == 2)
          {
            v54 = 0xEF656761726F7453;
          }

          v55 = 0x6C61636F4C776F6CLL;
          if (!*(*(a4 + 48) + v49))
          {
            v55 = 0x626E4F726576656ELL;
            v53 = 0xEE0064656472616FLL;
          }

          if (*(*(a4 + 48) + v49) <= 1u)
          {
            v56 = v55;
          }

          else
          {
            v56 = v52;
          }

          if (*(*(a4 + 48) + v49) <= 1u)
          {
            v57 = v53;
          }

          else
          {
            v57 = v54;
          }

          if (v47 > 3)
          {
LABEL_118:
            v60 = 0x756F527465737361;
            if (v47 != 6)
            {
              v60 = 0x6174536775626564;
            }

            v61 = 0xEE00626F6C426574;
            if (v47 != 6)
            {
              v61 = 0xEA0000000000656CLL;
            }

            v62 = 0x68746C616548;
            if (v47 == 4)
            {
              v62 = 1280328553;
            }

            v63 = 0xE400000000000000;
            if (v47 != 4)
            {
              v63 = 0xE600000000000000;
            }

            if (v47 <= 5)
            {
              v64 = v62;
            }

            else
            {
              v64 = v60;
            }

            if (v47 <= 5)
            {
              v59 = v63;
            }

            else
            {
              v59 = v61;
            }

            if (v56 != v64)
            {
              goto LABEL_142;
            }

            goto LABEL_141;
          }
        }

        if (v47 > 1)
        {
          if (v47 == 2)
          {
            v65 = 0x64756F6C43776F6CLL;
          }

          else
          {
            v65 = 0x6469766F72506F6ELL;
          }

          if (v47 == 2)
          {
            v59 = 0xEF656761726F7453;
          }

          else
          {
            v59 = 0xEB00000000737265;
          }

          if (v56 != v65)
          {
            goto LABEL_142;
          }
        }

        else
        {
          v58 = 0x626E4F726576656ELL;
          v59 = 0xEE0064656472616FLL;
          if (v47)
          {
            v58 = 0x6C61636F4C776F6CLL;
            v59 = 0xEF656761726F7453;
          }

          if (v56 != v58)
          {
            goto LABEL_142;
          }
        }

LABEL_141:
        if (v57 == v59)
        {
          break;
        }

LABEL_142:
        v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v66)
        {
          goto LABEL_151;
        }

        v49 = (v49 + 1) & v50;
        if (((*(v77 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
        {
          v5 = a3;
          v6 = v75;
          v4 = a4;
          goto LABEL_82;
        }
      }

LABEL_151:
      *(v71 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
      v6 = v75 + 1;
      v5 = a3;
      v4 = a4;
      if (__OFADD__(v75, 1))
      {
        goto LABEL_157;
      }
    }
  }

  v69 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a4 + 56);
  v67 = (v8 + 63) >> 6;
  v76 = a3 + 56;
LABEL_6:
  while (v10)
  {
    v11 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v12 = v11 | (v7 << 6);
    v13 = a4;
LABEL_13:
    v16 = *(*(v13 + 48) + v12);
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    v20 = 1 << v18;
    if (((1 << v18) & *(v76 + 8 * (v18 >> 6))) == 0)
    {
      continue;
    }

    v72 = v10;
    v74 = v6;
    v21 = ~v17;
    while (1)
    {
      v22 = *(*(v5 + 48) + v18);
      if (v22 <= 3)
      {
        break;
      }

      if (*(*(v5 + 48) + v18) > 5u)
      {
        if (v22 == 6)
        {
          v27 = 0x756F527465737361;
          v28 = 0xEE00626F6C426574;
          if (v16 > 3)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v27 = 0x6174536775626564;
          v28 = 0xEA0000000000656CLL;
          if (v16 > 3)
          {
            goto LABEL_42;
          }
        }
      }

      else
      {
        if (v22 == 4)
        {
          v27 = 1280328553;
        }

        else
        {
          v27 = 0x68746C616548;
        }

        if (v22 == 4)
        {
          v28 = 0xE400000000000000;
        }

        else
        {
          v28 = 0xE600000000000000;
        }

        if (v16 > 3)
        {
          goto LABEL_42;
        }
      }

LABEL_29:
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          v36 = 0x64756F6C43776F6CLL;
        }

        else
        {
          v36 = 0x6469766F72506F6ELL;
        }

        if (v16 == 2)
        {
          v30 = 0xEF656761726F7453;
        }

        else
        {
          v30 = 0xEB00000000737265;
        }

        if (v27 == v36)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v29 = 0x626E4F726576656ELL;
        v30 = 0xEE0064656472616FLL;
        if (v16)
        {
          v29 = 0x6C61636F4C776F6CLL;
          v30 = 0xEF656761726F7453;
        }

        if (v27 == v29)
        {
          goto LABEL_65;
        }
      }

LABEL_66:
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v37)
      {
        goto LABEL_75;
      }

      v18 = (v18 + 1) & v21;
      v19 = v18 >> 6;
      v5 = a3;
      v20 = 1 << v18;
      if ((*(v76 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        v10 = v72;
        v6 = v74;
        goto LABEL_6;
      }
    }

    v23 = 0x64756F6C43776F6CLL;
    if (v22 != 2)
    {
      v23 = 0x6469766F72506F6ELL;
    }

    v24 = 0xEF656761726F7453;
    v25 = 0xEB00000000737265;
    if (v22 == 2)
    {
      v25 = 0xEF656761726F7453;
    }

    v26 = 0x6C61636F4C776F6CLL;
    if (!*(*(v5 + 48) + v18))
    {
      v26 = 0x626E4F726576656ELL;
      v24 = 0xEE0064656472616FLL;
    }

    if (*(*(v5 + 48) + v18) <= 1u)
    {
      v27 = v26;
    }

    else
    {
      v27 = v23;
    }

    if (*(*(v5 + 48) + v18) <= 1u)
    {
      v28 = v24;
    }

    else
    {
      v28 = v25;
    }

    if (v16 <= 3)
    {
      goto LABEL_29;
    }

LABEL_42:
    v31 = 0x756F527465737361;
    if (v16 != 6)
    {
      v31 = 0x6174536775626564;
    }

    v32 = 0xEE00626F6C426574;
    if (v16 != 6)
    {
      v32 = 0xEA0000000000656CLL;
    }

    v33 = 0x68746C616548;
    if (v16 == 4)
    {
      v33 = 1280328553;
    }

    v34 = 0xE400000000000000;
    if (v16 != 4)
    {
      v34 = 0xE600000000000000;
    }

    if (v16 <= 5)
    {
      v35 = v33;
    }

    else
    {
      v35 = v31;
    }

    if (v16 <= 5)
    {
      v30 = v34;
    }

    else
    {
      v30 = v32;
    }

    if (v27 != v35)
    {
      goto LABEL_66;
    }

LABEL_65:
    if (v28 != v30)
    {
      goto LABEL_66;
    }

LABEL_75:
    v10 = v72;
    v71[v19] |= v20;
    v6 = v74 + 1;
    v5 = a3;
    if (__OFADD__(v74, 1))
    {
      goto LABEL_158;
    }
  }

  v14 = v7;
  v13 = a4;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v67)
    {
      goto LABEL_154;
    }

    v15 = *(v69 + 8 * v7);
    ++v14;
    if (v15)
    {
      v10 = (v15 - 1) & v15;
      v12 = __clz(__rbit64(v15)) | (v7 << 6);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
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

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x21CE92130](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = MEMORY[0x277D837D0];
  v29 = MEMORY[0x277D837D0];
  v30 = MEMORY[0x277D83808];
  v31 = MEMORY[0x277D837D8];
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v11 = *a6;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 48 * v13);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return outlined init with take of Decodable & Encodable(&v28, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a5 & 1);
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v28, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  specialized _NativeDictionary._insert(at:key:value:)(v13, a3, a4, *v26, v26[1], v19);

  return __swift_destroy_boxed_opaque_existential_1(&v28);
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a6;
  v36 = a7;
  v37 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v17 = *a5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = v17[3];
  if (v24 >= v22 && (a4 & 1) != 0)
  {
LABEL_7:
    v25 = *a5;
    if (v23)
    {
LABEL_8:
      v26 = (v25[7] + 48 * v19);
      __swift_destroy_boxed_opaque_existential_1(v26);
      return outlined init with take of Decodable & Encodable(&v34, v26);
    }

    goto LABEL_11;
  }

  if (v24 >= v22 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, a4 & 1);
  v28 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v23 & 1) != (v29 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v28;
  v25 = *a5;
  if (v23)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = __swift_mutable_project_boxed_opaque_existential_1(&v34, v35);
  MEMORY[0x28223BE20](v30);
  v32 = &v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32);
  specialized _NativeDictionary._insert(at:key:value:)(v19, a2, a3, v32, v25, a6, a7, a8);

  return __swift_destroy_boxed_opaque_existential_1(&v34);
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  v14 = MEMORY[0x277D83808];
  v15 = MEMORY[0x277D837D8];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = outlined init with take of Decodable & Encodable(&v12, (a6[7] + 48 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a6;
  v22 = a7;
  v23 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v15 = (a5[6] + 16 * a1);
  *v15 = a2;
  v15[1] = a3;
  result = outlined init with take of Decodable & Encodable(&v20, (a5[7] + 48 * a1));
  v17 = a5[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v19;
  }

  return result;
}

uint64_t specialized static CloudDevice.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_10;
  }

  v28 = v7;
  v29 = type metadata accessor for CloudDevice();
  v14 = *(v29 + 28);
  v15 = *(v11 + 48);
  outlined init with copy of DateInterval?(a1 + v14, v13, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(a2 + v14, &v13[v15], &_s10Foundation4DateVSgMd);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of DateInterval?(v13, v10, &_s10Foundation4DateVSgMd);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = &v13[v15];
      v20 = v28;
      (*(v5 + 32))(v28, v19, v4);
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v5 + 8);
      v22(v20, v4);
      v22(v10, v4);
      outlined destroy of UTType?(v13, &_s10Foundation4DateVSgMd);
      if (v21)
      {
        goto LABEL_13;
      }

LABEL_10:
      v17 = 0;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
LABEL_9:
    outlined destroy of UTType?(v13, &_s10Foundation4DateVSg_ADtMd);
    goto LABEL_10;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  outlined destroy of UTType?(v13, &_s10Foundation4DateVSgMd);
LABEL_13:
  v23 = *(v29 + 32);
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  v17 = (v25 | v27) == 0;
  if (v25 && v27)
  {
    if (*v24 == *v26 && v25 == v27)
    {
      v17 = 1;
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v17 & 1;
}

uint64_t outlined init with copy of CloudDevice(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudDevice();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized static CloudDevice.Capability.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEE0064656472616FLL;
  v3 = 0x626E4F726576656ELL;
  v4 = *a1;
  v5 = *a2;
  if (v4 > 3)
  {
    if (*a1 > 5u)
    {
      if (v4 == 6)
      {
        v6 = 0x756F527465737361;
        v7 = 0xEE00626F6C426574;
      }

      else
      {
        v6 = 0x6174536775626564;
        v7 = 0xEA0000000000656CLL;
      }
    }

    else if (v4 == 4)
    {
      v7 = 0xE400000000000000;
      v6 = 1280328553;
    }

    else
    {
      v7 = 0xE600000000000000;
      v6 = 0x68746C616548;
    }
  }

  else if (*a1 > 1u)
  {
    if (v4 == 2)
    {
      v6 = 0x64756F6C43776F6CLL;
      v7 = 0xEF656761726F7453;
    }

    else
    {
      v6 = 0x6469766F72506F6ELL;
      v7 = 0xEB00000000737265;
    }
  }

  else
  {
    if (*a1)
    {
      v6 = 0x6C61636F4C776F6CLL;
    }

    else
    {
      v6 = 0x626E4F726576656ELL;
    }

    if (v4)
    {
      v7 = 0xEF656761726F7453;
    }

    else
    {
      v7 = 0xEE0064656472616FLL;
    }
  }

  v8 = 0x756F527465737361;
  v9 = 0xEE00626F6C426574;
  if (v5 != 6)
  {
    v8 = 0x6174536775626564;
    v9 = 0xEA0000000000656CLL;
  }

  v10 = 0xE400000000000000;
  v11 = 1280328553;
  if (v5 != 4)
  {
    v11 = 0x68746C616548;
    v10 = 0xE600000000000000;
  }

  if (*a2 <= 5u)
  {
    v8 = v11;
    v9 = v10;
  }

  v12 = 0x64756F6C43776F6CLL;
  v13 = 0xEF656761726F7453;
  if (v5 != 2)
  {
    v12 = 0x6469766F72506F6ELL;
    v13 = 0xEB00000000737265;
  }

  if (*a2)
  {
    v3 = 0x6C61636F4C776F6CLL;
    v2 = 0xEF656761726F7453;
  }

  if (*a2 > 1u)
  {
    v3 = v12;
    v2 = v13;
  }

  if (*a2 <= 3u)
  {
    v14 = v3;
  }

  else
  {
    v14 = v8;
  }

  if (*a2 <= 3u)
  {
    v15 = v2;
  }

  else
  {
    v15 = v9;
  }

  if (v6 == v14 && v7 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v16 & 1;
}

BOOL specialized static CloudDevice.< infix(_:_:)()
{
  type metadata accessor for CloudDevice();
  lazy protocol witness table accessor for type String and conformance String();

  v0 = StringProtocol.localizedCompare<A>(_:)();

  return v0 == -1;
}

uint64_t specialized static CloudDevice._getDeviceName()()
{

  return specialized static CloudDevice._getDeviceName()(0x72657475706D6F43, 0xEC000000656D614ELL, "Computer Name: %s");
}

uint64_t specialized static CloudDevice._getOSVersion()()
{

  return specialized static CloudDevice._getDeviceName()(0x56746375646F7250, 0xEE006E6F69737265, "OS Version: %s");
}

uint64_t specialized static CloudDevice._getDeviceName()(uint64_t a1, uint64_t a2, const char *a3)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v10 = MEMORY[0x21CE91FC0](a1, a2);
  v11 = MGCopyAnswerWithError();

  if (v11)
  {
    v30[0] = v11;
    v12 = swift_dynamicCast();
    if (v12)
    {
      v11 = v28;
    }

    else
    {
      v11 = 0;
    }

    if (v12)
    {
      v13 = v29;
    }

    else
    {
      v13 = 0;
    }

    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v6, static CloudDevice.Log);
    swift_beginAccess();
    (*(v7 + 16))(v9, v14, v6);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v25 = a3;
      v18 = v17;
      v19 = swift_slowAlloc();
      v30[0] = v19;
      *v18 = 136315138;
      if (v13)
      {
        v20 = v11;
      }

      else
      {
        v20 = 0x6E776F6E6B6E55;
      }

      v26 = v11;
      v21 = v7;
      if (v13)
      {
        v22 = v13;
      }

      else
      {
        v22 = 0xE700000000000000;
      }

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v30);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_21607C000, v15, v16, v25, v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x21CE94770](v19, -1, -1);
      MEMORY[0x21CE94770](v18, -1, -1);

      (*(v21 + 8))(v9, v6);
      return v26;
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }

  return v11;
}

uint64_t specialized static CloudDevice._getIdiom()()
{
  v26[1] = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v4 = MEMORY[0x21CE91FC0](0x6C43656369766544, 0xEB00000000737361);
  v5 = MGCopyAnswerWithError();

  if (!v5)
  {
    return -1;
  }

  v26[0] = v5;
  v6 = swift_dynamicCast();
  if (v6)
  {
    v7 = v24;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v25;
  }

  else
  {
    v8 = 0;
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, static CloudDevice.Log);
  swift_beginAccess();
  (*(v1 + 16))(v3, v9, v0);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  v12 = os_log_type_enabled(v10, v11);
  v22 = v7;
  if (v12)
  {
    v13 = v1;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26[0] = v15;
    *v14 = 136315138;
    if (v8)
    {
      v16 = v8;
    }

    else
    {
      v7 = 0x6E776F6E6B6E55;
      v16 = 0xE700000000000000;
    }

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v16, v26);

    *(v14 + 4) = v17;
    _os_log_impl(&dword_21607C000, v10, v11, "Device Class: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x21CE94770](v15, -1, -1);
    MEMORY[0x21CE94770](v14, -1, -1);

    (*(v13 + 8))(v3, v0);
    if (!v8)
    {
      return -1;
    }
  }

  else
  {

    (*(v1 + 8))(v3, v0);
    if (!v8)
    {
      return -1;
    }
  }

  v18 = v22;
  if (v22 == 0x656E6F685069 && v8 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  if (v18 == 1684099177 && v8 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  if (v18 == 0x5654656C707041 && v8 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  if (v18 == 6512973 && v8 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  if (v18 == 0x447974696C616552 && v8 == 0xED00006563697665)
  {

    return 6;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    return 6;
  }

  return -1;
}

uint64_t specialized static CloudDevice._getProductType()()
{

  return specialized static CloudDevice._getDeviceName()(0x54746375646F7250, 0xEB00000000657079, "Machine Code: %s");
}

char *specialized static CloudDevice.effectiveCapabilities(original:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:)(uint64_t a1, unsigned __int8 *a2, char a3, char a4, char a5)
{
  v5 = *a2;
  v6 = static DefaultsManager.SyncOnboarding.hasOnboardedBefore.getter();
  v7 = MEMORY[0x277D84FA0];
  v108 = MEMORY[0x277D84FA0];
  v109 = MEMORY[0x277D84FA0];
  if ((v6 & 1) == 0)
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    v8 = Hasher._finalize()();
    v9 = -1 << *(v7 + 32);
    v10 = v8 & ~v9;
    if ((*(v7 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v10))
    {
      v11 = ~v9;
      while (*(*(v7 + 48) + v10) > 3u || *(*(v7 + 48) + v10))
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v12)
        {
          goto LABEL_10;
        }

        v10 = (v10 + 1) & v11;
        if (((*(v7 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v10) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v7 = MEMORY[0x277D84FA0];
    }

    else
    {
LABEL_9:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107 = v7;
      specialized _NativeSet.insertNew(_:at:isUnique:)(0, v10, isUniquelyReferenced_nonNull_native);
      v109 = v7;
    }
  }

LABEL_10:
  v14 = MEMORY[0x277D84FA0];
  if (v5)
  {
    if (v5 == 3)
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v15 = Hasher._finalize()();
      v16 = -1 << *(v14 + 32);
      v17 = v15 & ~v16;
      if ((*(v14 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v17))
      {
        v18 = ~v16;
        while (*(*(v14 + 48) + v17) >= 2u || !*(*(v14 + 48) + v17))
        {
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v19)
          {
            goto LABEL_31;
          }

          v17 = (v17 + 1) & v18;
          v14 = MEMORY[0x277D84FA0];
          if (((*(MEMORY[0x277D84FA0] + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v17) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

LABEL_31:
        v21 = MEMORY[0x277D84FA0];
      }

      else
      {
LABEL_19:
        v20 = swift_isUniquelyReferenced_nonNull_native();
        v107 = v14;
        specialized _NativeSet.insertNew(_:at:isUnique:)(1, v17, v20);
        v21 = v14;
        v108 = v14;
      }
    }

    else
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      if ((*(v7 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
      {
        v25 = ~v23;
        v21 = MEMORY[0x277D84FA0];
        while (*(*(v7 + 48) + v24) >= 2u || !*(*(v7 + 48) + v24))
        {
          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v26)
          {
            goto LABEL_32;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v7 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_28:
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v107 = v7;
        specialized _NativeSet.insertNew(_:at:isUnique:)(1, v24, v27);
        v109 = v7;
      }

      v21 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v21 = MEMORY[0x277D84FA0];
  }

LABEL_32:
  v28 = a4;
  if (a3 == 2)
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    v29 = Hasher._finalize()();
    v30 = -1 << *(v21 + 32);
    v31 = v29 & ~v30;
    if ((*(v21 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
    {
      v32 = ~v30;
      while (1)
      {
        v33 = *(*(v21 + 48) + v31);
        if (v33 <= 3 && *(*(v21 + 48) + v31) > 1u && v33 != 3)
        {
          break;
        }

        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v34)
        {
          goto LABEL_50;
        }

        v31 = (v31 + 1) & v32;
        if (((*(v21 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

LABEL_125:

      goto LABEL_50;
    }

LABEL_40:
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v21;
    specialized _NativeSet.insertNew(_:at:isUnique:)(2, v31, v35);
    v108 = v21;
  }

  else
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_51;
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    v36 = Hasher._finalize()();
    v37 = -1 << *(v7 + 32);
    v38 = v36 & ~v37;
    if ((*(v7 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
    {
      v39 = ~v37;
      do
      {
        v40 = *(*(v7 + 48) + v38);
        if (v40 <= 3 && *(*(v7 + 48) + v38) > 1u && v40 != 3)
        {
          goto LABEL_125;
        }

        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v41)
        {
          goto LABEL_50;
        }

        v38 = (v38 + 1) & v39;
      }

      while (((*(v7 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0);
    }

    v42 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v7;
    specialized _NativeSet.insertNew(_:at:isUnique:)(2, v38, v42);
    v109 = v7;
  }

LABEL_50:
  v28 = a4;
LABEL_51:
  if (v28 == 2)
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    v43 = Hasher._finalize()();
    v44 = -1 << *(v21 + 32);
    v45 = v43 & ~v44;
    if (((*(v21 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
    {
LABEL_59:
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v107 = v21;
      specialized _NativeSet.insertNew(_:at:isUnique:)(4, v45, v49);
      v108 = v21;
      goto LABEL_69;
    }

    v46 = ~v44;
    while (1)
    {
      v47 = *(*(v21 + 48) + v45);
      if (v47 > 3 && *(*(v21 + 48) + v45) <= 5u && v47 != 5)
      {
        break;
      }

      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v48)
      {
        goto LABEL_69;
      }

      v45 = (v45 + 1) & v46;
      if (((*(v21 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
      {
        goto LABEL_59;
      }
    }
  }

  else
  {
    if ((v28 & 1) == 0)
    {
      goto LABEL_69;
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    v50 = Hasher._finalize()();
    v51 = -1 << *(v7 + 32);
    v52 = v50 & ~v51;
    if (((*(v7 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
    {
LABEL_68:
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v107 = v7;
      specialized _NativeSet.insertNew(_:at:isUnique:)(4, v52, v56);
      v109 = v7;
      goto LABEL_69;
    }

    v53 = ~v51;
    while (1)
    {
      v54 = *(*(v7 + 48) + v52);
      if (v54 > 3 && *(*(v7 + 48) + v52) <= 5u && v54 != 5)
      {
        break;
      }

      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v55)
      {
        goto LABEL_69;
      }

      v52 = (v52 + 1) & v53;
      if (((*(v7 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
      {
        goto LABEL_68;
      }
    }
  }

LABEL_69:
  if (a5 == 2)
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    v57 = Hasher._finalize()();
    v58 = -1 << *(v21 + 32);
    v59 = v57 & ~v58;
    if (((*(v21 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
    {
LABEL_77:
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v107 = v21;
      specialized _NativeSet.insertNew(_:at:isUnique:)(5, v59, v63);
      v108 = v21;
      goto LABEL_87;
    }

    v60 = ~v58;
    while (1)
    {
      v61 = *(*(v21 + 48) + v59);
      if (v61 > 3 && *(*(v21 + 48) + v59) <= 5u && v61 != 4)
      {
        break;
      }

      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v62)
      {
        goto LABEL_87;
      }

      v59 = (v59 + 1) & v60;
      if (((*(v21 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
      {
        goto LABEL_77;
      }
    }
  }

  else
  {
    if ((a5 & 1) == 0)
    {
      goto LABEL_87;
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    v64 = Hasher._finalize()();
    v65 = -1 << *(v7 + 32);
    v66 = v64 & ~v65;
    if (((*(v7 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
    {
LABEL_86:
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v107 = v7;
      specialized _NativeSet.insertNew(_:at:isUnique:)(5, v66, v70);
      v109 = v7;
      goto LABEL_87;
    }

    v67 = ~v65;
    while (1)
    {
      v68 = *(*(v7 + 48) + v66);
      if (v68 > 3 && *(*(v7 + 48) + v66) <= 5u && v68 != 4)
      {
        break;
      }

      v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v69)
      {
        goto LABEL_87;
      }

      v66 = (v66 + 1) & v67;
      if (((*(v7 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
      {
        goto LABEL_86;
      }
    }
  }

LABEL_87:
  Hasher.init(_seed:)();
  String.hash(into:)();
  v71 = Hasher._finalize()();
  v72 = -1 << *(v7 + 32);
  v73 = v71 & ~v72;
  if ((*(v7 + 56 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73))
  {
    v74 = ~v72;
    while (1)
    {
      v75 = *(*(v7 + 48) + v73);
      if (v75 > 3 && *(*(v7 + 48) + v73) > 5u && v75 != 7)
      {
        break;
      }

      v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v76)
      {
        goto LABEL_95;
      }

      v73 = (v73 + 1) & v74;
      if (((*(v7 + 56 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
      {
        goto LABEL_94;
      }
    }
  }

  else
  {
LABEL_94:
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v7;
    specialized _NativeSet.insertNew(_:at:isUnique:)(6, v73, v77);
    v109 = v7;
  }

LABEL_95:
  v78 = specialized static DefaultsManager.Cloud.capabilitiesMock.getter();
  v79 = specialized static DefaultsManager.Cloud.capabilitiesBlock.getter();
  v80 = specialized static DefaultsManager.Cloud.capabilitiesForce.getter();
  if (v78)
  {

    v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI11CloudDeviceV10CapabilityO_SayAHGTt0g5Tf4g_n(v78);

    v109 = v7;
    v21 = MEMORY[0x277D84FA0];
    v108 = MEMORY[0x277D84FA0];
  }

  if (v79)
  {
    if (*(v7 + 16))
    {
      v81 = *(v79 + 2);
      if (v81)
      {
        v82 = (v79 + 32);
        do
        {
          v83 = *v82++;
          specialized Set._Variant.remove(_:)(v83, &v107);
          --v81;
        }

        while (v81);
      }
    }

    if (*(v21 + 16))
    {
      v84 = *(v79 + 2);
      if (v84)
      {
        v85 = (v79 + 32);
        do
        {
          v86 = *v85++;
          specialized Set._Variant.remove(_:)(v86, &v107);
          --v84;
        }

        while (v84);
      }
    }
  }

  if (v80)
  {
    v87 = *(v80 + 2);
    if (v87)
    {
      v88 = (v80 + 32);
      do
      {
        v89 = *v88++;
        specialized Set._Variant.insert(_:)(&v107, v89);
        --v87;
      }

      while (v87);
    }

    if (*(v108 + 16))
    {
      v90 = *(v80 + 2);
      if (v90)
      {
        v91 = (v80 + 32);
        do
        {
          v92 = *v91++;
          specialized Set._Variant.remove(_:)(v92, &v107);
          --v90;
        }

        while (v90);
      }
    }
  }

  v94 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI11CloudDeviceV10CapabilityO_SayAHGTt0g5Tf4g_n(v93);

  v95 = v108;
  if (*(v108 + 16) <= *(v109 + 16) >> 3)
  {
    v107 = v109;
    specialized Set._subtract<A>(_:)(v108);
    v96 = v107;
  }

  else
  {
    v96 = specialized _NativeSet.subtracting<A>(_:)(v108, v109);
  }

  v97 = specialized _NativeSet.intersection(_:)(v95, v94);

  v98 = specialized Set.union<A>(_:)(v97, v96);
  v99 = v98;
  v100 = *(v98 + 16);
  if (!v100)
  {

    v101 = MEMORY[0x277D84F90];
    goto LABEL_123;
  }

  v101 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9MomentsUI11CloudDeviceV10CapabilityO_Tt1g5(*(v98 + 16), 0);
  v102 = specialized Sequence._copySequenceContents(initializing:)(&v107, v101 + 32, v100, v99);

  outlined consume of [String : DBAssetData].Iterator._Variant();
  if (v102 == v100)
  {

LABEL_123:
    v107 = v101;
    specialized MutableCollection<>.sort(by:)(&v107);
    return v107;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t specialized static CloudDevice._compareVersions(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = lazy protocol witness table accessor for type String and conformance String();
  v7 = MEMORY[0x277D837D0];
  v8 = MEMORY[0x21CE92F90](46, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v6);
  v73 = a3;
  v74 = a4;
  result = MEMORY[0x21CE92F90](46, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, v7, v6);
  v10 = result;
  v11 = *(v8 + 16);
  v12 = *(result + 16);
  if (v11 < v12)
  {
    do
    {
      v13 = MEMORY[0x21CE92EF0](48, 0xE100000000000000);
      v15 = v14;
      v17 = v16;
      v19 = v18;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v21 = *(v8 + 16);
      v20 = *(v8 + 24);
      v11 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v11;
      v22 = (v8 + 32 * v21);
      v22[4] = v13;
      v22[5] = v15;
      v22[6] = v17;
      v22[7] = v19;
    }

    while (v11 < v12);
    v12 = *(v10 + 16);
  }

  if (v12 < v11)
  {
    do
    {
      v23 = MEMORY[0x21CE92EF0](48, 0xE100000000000000);
      v25 = v24;
      v27 = v26;
      v29 = v28;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v31 = *(v10 + 16);
      v30 = *(v10 + 24);
      v12 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 16) = v12;
      v32 = (v10 + 32 * v31);
      v32[4] = v23;
      v32[5] = v25;
      v32[6] = v27;
      v32[7] = v29;
    }

    while (v12 < v11);
    v11 = *(v8 + 16);
  }

  if (v12 <= v11)
  {
    v33 = v11;
  }

  else
  {
    v33 = v12;
  }

  if (!v33)
  {
LABEL_50:

    return 2;
  }

  v34 = 0;
  v35 = 0;
  while (v35 < *(v8 + 16))
  {
    v36 = v8 + v34;
    v37 = *(v8 + v34 + 32);
    v38 = *(v8 + v34 + 40);
    if ((v38 ^ v37) < 0x4000)
    {
      v44 = 0;
    }

    else
    {
      v39 = *(v36 + 48);
      v40 = *(v36 + 56);
      if ((v40 & 0x1000000000000000) != 0)
      {
        v52 = *(v36 + 56);
        v53 = *(v8 + v34 + 40);
        v54 = *(v8 + v34 + 32);
        v55 = *(v36 + 48);

        v56 = specialized _parseInteger<A, B>(ascii:radix:)(v54, v53, v55, v52, 10);
        v43 = v57;

        result = v56;
      }

      else
      {
        if ((v40 & 0x2000000000000000) != 0)
        {
          v73 = *(v36 + 48);
          v74 = v40 & 0xFFFFFFFFFFFFFFLL;
          v41 = &v73;
        }

        else if ((v39 & 0x1000000000000000) != 0)
        {
          v41 = ((v40 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v63 = *(v8 + v34 + 32);
          v64 = *(v36 + 56);
          v65 = *(v8 + v34 + 40);
          v66 = *(v36 + 48);
          v41 = _StringObject.sharedUTF8.getter();
          v39 = v66;
          v37 = v63;
          v38 = v65;
          v40 = v64;
        }

        result = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(v41, v37, v38, v39, v40, 10);
        v43 = v42 & 1;
      }

      if (v43)
      {
        v44 = 0;
      }

      else
      {
        v44 = result;
      }
    }

    if (v35 >= *(v10 + 16))
    {
      goto LABEL_55;
    }

    v45 = v10 + v34;
    v46 = *(v10 + v34 + 32);
    v47 = *(v10 + v34 + 40);
    if ((v47 ^ v46) < 0x4000)
    {
      goto LABEL_20;
    }

    v48 = *(v45 + 48);
    v49 = *(v45 + 56);
    if ((v49 & 0x1000000000000000) == 0)
    {
      if ((v49 & 0x2000000000000000) != 0)
      {
        v73 = *(v45 + 48);
        v74 = v49 & 0xFFFFFFFFFFFFFFLL;
        v50 = &v73;
      }

      else if ((v48 & 0x1000000000000000) != 0)
      {
        v50 = ((v49 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v72 = *(v10 + v34 + 32);
        v67 = *(v45 + 56);
        v68 = *(v10 + v34 + 40);
        v69 = *(v45 + 48);
        v50 = _StringObject.sharedUTF8.getter();
        v48 = v69;
        v46 = v72;
        v47 = v68;
        v49 = v67;
      }

      result = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(v50, v46, v47, v48, v49, 10);
      if ((v51 & 1) == 0)
      {
        if (v44 != result)
        {
          goto LABEL_52;
        }

        goto LABEL_21;
      }

LABEL_20:
      if (v44)
      {
        v70 = 0;
LABEL_53:

        return v44 < v70;
      }

      goto LABEL_21;
    }

    v58 = *(v45 + 56);
    v59 = *(v10 + v34 + 40);
    v60 = *(v10 + v34 + 32);
    v71 = *(v45 + 48);

    v61 = specialized _parseInteger<A, B>(ascii:radix:)(v60, v59, v71, v58, 10);
    LOBYTE(v60) = v62;

    if (v60)
    {
      goto LABEL_20;
    }

    result = v61;
    if (v44 != v61)
    {
LABEL_52:
      v70 = result;
      goto LABEL_53;
    }

LABEL_21:
    ++v35;
    v34 += 32;
    if (v33 == v35)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

void *specialized static CloudDevice.newlyOnboardedDevices(in:)(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v52 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v49 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - v16;
  static Date.now.getter();
  v18 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
  if (v19)
  {
    v20 = 2419200.0;
  }

  else
  {
    v20 = v18;
  }

  v55 = v17;
  v56 = a1;
  v58 = v17;
  v59 = v20;
  v21 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in static CloudDevice.newlyOnboardedDevices(in:), v57, a1);
  v54 = 0;
  specialized Sequence<>.max()(v21, v8);

  v22 = *(v10 + 48);
  if (v22(v8, 1, v9) == 1)
  {
    static Date.distantPast.getter();
    if (v22(v8, 1, v9) != 1)
    {
      outlined destroy of UTType?(v8, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v2, static CloudDevice.Log);
  swift_beginAccess();
  (*(v3 + 16))(v5, v23, v2);
  v24 = *(v10 + 16);
  v25 = v52;
  v53 = v15;
  v24(v52, v15, v9);
  v26 = v5;
  v27 = v9;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v30 = v3;
  if (os_log_type_enabled(v28, v29))
  {
    v31 = swift_slowAlloc();
    v51 = v2;
    v32 = v25;
    v33 = v31;
    v50 = swift_slowAlloc();
    v60 = v50;
    *v33 = 136446466;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x80000002165865F0, &v60);
    *(v33 + 12) = 2080;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v49 = v26;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v27;
    v37 = v36;
    v38 = *(v10 + 8);
    v39 = v32;
    v40 = v35;
    v38(v39, v35);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v37, &v60);

    *(v33 + 14) = v41;
    _os_log_impl(&dword_21607C000, v28, v29, "CloudDevice.%{public}s lastInformedOfNewlyOnboardedDevices: %s", v33, 0x16u);
    v42 = v50;
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v42, -1, -1);
    MEMORY[0x21CE94770](v33, -1, -1);

    v43 = (*(v30 + 8))(v49, v51);
    v27 = v40;
  }

  else
  {

    v38 = *(v10 + 8);
    v38(v25, v27);
    v43 = (*(v30 + 8))(v26, v2);
  }

  MEMORY[0x28223BE20](v43);
  v45 = v55;
  v44 = v56;
  *(&v49 - 4) = v55;
  *(&v49 - 3) = v20;
  v46 = v53;
  *(&v49 - 2) = v53;
  v47 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #2 in static CloudDevice.newlyOnboardedDevices(in:), (&v49 - 6), v44);
  v38(v46, v27);
  v38(v45, v27);
  return v47;
}

uint64_t specialized static CloudDevice.diff(_:_:)(void *a1, void *a2)
{
  v291 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v253 = &v239 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v252 = &v239 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v251 = &v239 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v250 = &v239 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v249 = &v239 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v256 = &v239 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v248 = &v239 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v247 = &v239 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v246 = &v239 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v255 = &v239 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v239 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v239 - v28;
  v30 = type metadata accessor for Date();
  v269 = *(v30 - 8);
  v270 = v30;
  v31 = MEMORY[0x28223BE20](v30);
  v254 = &v239 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v265 = &v239 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v264 = &v239 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v263 = &v239 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v262 = &v239 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v261 = &v239 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v260 = &v239 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v259 = &v239 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v258 = &v239 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v257 = &v239 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v267 = &v239 - v52;
  MEMORY[0x28223BE20](v51);
  v266 = &v239 - v53;
  v278 = 0;
  v279 = 0xE000000000000000;
  v54 = *a2;
  v55 = a2[1];
  v273 = a2;
  v276 = a1;
  v56 = [a1 recordID];
  v57 = [v56 recordName];

  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  if ((v54 != v58 || v55 != v60) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v280[0] = 0;
    v280[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    strcpy(v280, "local id: ");
    BYTE3(v280[1]) = 0;
    HIDWORD(v280[1]) = -369098752;
    MEMORY[0x21CE92100](v54, v55);
    MEMORY[0x21CE92100](0x69206B63203E3D20, 0xEB00000000203A64);
    MEMORY[0x21CE92100](v58, v60);

    MEMORY[0x21CE92100](v280[0], v280[1]);
  }

  if (v273[3])
  {
    v61 = v273[2];
    v62 = v273[3];
  }

  else
  {
    swift_beginAccess();
    v61 = static CloudDevice.nilStr;
    v62 = qword_27CA92B00;
  }

  v63 = 0x4449656369766564;

  v64 = [v276 encryptedValues];
  v65 = MEMORY[0x21CE91FC0](0x4449656369766564, 0xE800000000000000);
  v66 = [v64 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v66 && (v290 = v66, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v67 = v280[0];
    v68 = v280[1];
  }

  else
  {
    swift_beginAccess();
    v67 = static CloudDevice.nilStr;
    v68 = qword_27CA92B00;
  }

  if (one-time initialization token for productionSchema != -1)
  {
LABEL_226:
    swift_once();
  }

  swift_beginAccess();
  v69 = specialized Dictionary.subscript.getter(v63, 0xE800000000000000, static CloudDevice.productionSchema);
  swift_endAccess();
  if (!v69 || v61 == v67 && v62 == v68 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    v280[0] = 0;
    v280[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v280[0] = 0xD000000000000011;
    v280[1] = 0x80000002165865B0;
    MEMORY[0x21CE92100](v61, v62);

    MEMORY[0x21CE92100](0xD000000000000011, 0x80000002165865D0);
    MEMORY[0x21CE92100](v67, v68);

    MEMORY[0x21CE92100](v280[0], v280[1]);
  }

  if (v273[5])
  {
    v70 = v273[4];
    v71 = v273[5];
  }

  else
  {
    swift_beginAccess();
    v70 = static CloudDevice.nilStr;
    v71 = qword_27CA92B00;
  }

  v72 = [v276 encryptedValues];
  v73 = MEMORY[0x21CE91FC0](0x4449656C646E7562, 0xE800000000000000);
  v74 = [v72 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v74 && (v289 = v74, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v76 = v280[0];
    v75 = v280[1];
  }

  else
  {
    swift_beginAccess();
    v76 = static CloudDevice.nilStr;
    v75 = qword_27CA92B00;
  }

  swift_beginAccess();
  v77 = specialized Dictionary.subscript.getter(0x4449656C646E7562, 0xE800000000000000, static CloudDevice.productionSchema);
  swift_endAccess();
  if (!v77 || v70 == v76 && v71 == v75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    v280[0] = 0;
    v280[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v280[0] = 0xD000000000000011;
    v280[1] = 0x8000000216586570;
    MEMORY[0x21CE92100](v70, v71);

    MEMORY[0x21CE92100](0xD000000000000011, 0x8000000216586590);
    MEMORY[0x21CE92100](v76, v75);

    MEMORY[0x21CE92100](v280[0], v280[1]);
  }

  v275 = type metadata accessor for CloudDevice();
  v78 = v273;
  outlined init with copy of DateInterval?(v273 + v275[7], v29, &_s10Foundation4DateVSgMd);
  v80 = v269;
  v79 = v270;
  v81 = v269 + 48;
  v82 = *(v269 + 48);
  v83 = v82(v29, 1, v270);
  v272 = v81;
  v274 = v82;
  if (v83 == 1)
  {
    static Date.distantPast.getter();
    if (v82(v29, 1, v79) != 1)
    {
      outlined destroy of UTType?(v29, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v80 + 32))(v266, v29, v79);
  }

  v84 = [v276 encryptedValues];
  v85 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x8000000216585CF0);
  v86 = [v84 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v86)
  {
    v280[0] = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v87 = swift_dynamicCast();
    v271 = *(v80 + 56);
    v271(v27, v87 ^ 1u, 1, v79);
    if (v274(v27, 1, v79) != 1)
    {
      (*(v80 + 32))(v267, v27, v79);
      goto LABEL_42;
    }
  }

  else
  {
    v271 = *(v80 + 56);
    v271(v27, 1, 1, v79);
  }

  static Date.distantPast.getter();
  if (v274(v27, 1, v79) != 1)
  {
    outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd);
  }

LABEL_42:
  swift_beginAccess();
  v88 = specialized Dictionary.subscript.getter(0xD000000000000014, 0x8000000216585CF0, static CloudDevice.productionSchema);
  swift_endAccess();
  if (v88)
  {
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v280[0] = 0;
      v280[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      MEMORY[0x21CE92100](0xD00000000000001DLL, 0x8000000216586530);
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v89 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x21CE92100](v89);

      MEMORY[0x21CE92100](0xD00000000000001DLL, 0x8000000216586550);
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x21CE92100](v90);

      MEMORY[0x21CE92100](v280[0], v280[1]);
    }
  }

  v91 = (v78 + v275[8]);
  if (v91[1])
  {
    v92 = *v91;
    v93 = v91[1];
  }

  else
  {
    swift_beginAccess();
    v92 = static CloudDevice.nilStr;
    v93 = qword_27CA92B00;
  }

  v94 = [v276 encryptedValues];
  v95 = MEMORY[0x21CE91FC0](1701667182, 0xE400000000000000);
  v96 = [v94 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v96 && (v288 = v96, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v98 = v280[0];
    v97 = v280[1];
  }

  else
  {
    swift_beginAccess();
    v98 = static CloudDevice.nilStr;
    v97 = qword_27CA92B00;
  }

  swift_beginAccess();
  v99 = specialized Dictionary.subscript.getter(1701667182, 0xE400000000000000, static CloudDevice.productionSchema);
  swift_endAccess();
  if (!v99 || v92 == v98 && v93 == v97 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    v280[0] = 0;
    v280[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    strcpy(v280, "\nlocal name: ");
    HIWORD(v280[1]) = -4864;
    MEMORY[0x21CE92100](v92, v93);

    MEMORY[0x21CE92100](0x6E206B63203E3D20, 0xED0000203A656D61);
    MEMORY[0x21CE92100](v98, v97);

    MEMORY[0x21CE92100](v280[0], v280[1]);
  }

  v100 = (v78 + v275[9]);
  if (v100[1])
  {
    v101 = *v100;
    v102 = v100[1];
  }

  else
  {
    swift_beginAccess();
    v101 = static CloudDevice.nilStr;
    v102 = qword_27CA92B00;
  }

  v103 = [v276 encryptedValues];
  v104 = MEMORY[0x21CE91FC0](0x65566D6574737973, 0xED00006E6F697372);
  v105 = [v103 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v105 && (v287 = v105, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v107 = v280[0];
    v106 = v280[1];
  }

  else
  {
    swift_beginAccess();
    v107 = static CloudDevice.nilStr;
    v106 = qword_27CA92B00;
  }

  swift_beginAccess();
  v108 = specialized Dictionary.subscript.getter(0x65566D6574737973, 0xED00006E6F697372, static CloudDevice.productionSchema);
  swift_endAccess();
  if (!v108 || v101 == v107 && v102 == v106 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    v280[0] = 0;
    v280[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v280[0] = 0xD000000000000016;
    v280[1] = 0x80000002165864F0;
    MEMORY[0x21CE92100](v101, v102);

    MEMORY[0x21CE92100](0xD000000000000016, 0x8000000216586510);
    MEMORY[0x21CE92100](v107, v106);

    MEMORY[0x21CE92100](v280[0], v280[1]);
  }

  v109 = v273;
  v110 = v273 + v275[10];
  if (v110[8])
  {
    v111 = -1;
  }

  else
  {
    v111 = *v110;
  }

  v112 = [v276 encryptedValues];
  v113 = MEMORY[0x21CE91FC0](0x64496D6574737973, 0xEE00746E496D6F69);
  v114 = [v112 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v114 && (v280[0] = v114, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), swift_dynamicCast()))
  {
    v115 = v286;
  }

  else
  {
    v115 = -1;
  }

  swift_beginAccess();
  v116 = specialized Dictionary.subscript.getter(0x64496D6574737973, 0xEE00746E496D6F69, static CloudDevice.productionSchema);
  swift_endAccess();
  if (v116 && v111 != v115)
  {
    v280[0] = 0;
    v280[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(50);

    v280[0] = 0xD000000000000017;
    v280[1] = 0x80000002165864B0;
    v286 = v111;
    v117 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x21CE92100](v117);

    MEMORY[0x21CE92100](0xD000000000000017, 0x80000002165864D0);
    v286 = v115;
    v118 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x21CE92100](v118);

    MEMORY[0x21CE92100](v280[0], v280[1]);
  }

  v119 = (v109 + v275[11]);
  if (v119[1])
  {
    v120 = *v119;
    v121 = v119[1];
  }

  else
  {
    swift_beginAccess();
    v120 = static CloudDevice.nilStr;
    v121 = qword_27CA92B00;
  }

  v68 = 0x614C6D6574737973;

  v122 = [v276 encryptedValues];
  v62 = MEMORY[0x21CE91FC0](0x614C6D6574737973, 0xEE0065676175676ELL);
  v123 = [v122 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v123 && (v285 = v123, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v125 = v280[0];
    v124 = v280[1];
  }

  else
  {
    swift_beginAccess();
    v125 = static CloudDevice.nilStr;
    v124 = qword_27CA92B00;
  }

  swift_beginAccess();
  v126 = specialized Dictionary.subscript.getter(0x614C6D6574737973, 0xEE0065676175676ELL, static CloudDevice.productionSchema);
  swift_endAccess();
  if (!v126 || v120 == v125 && v121 == v124 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    v280[0] = 0;
    v280[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(50);

    v280[0] = 0xD000000000000017;
    v280[1] = 0x8000000216586470;
    MEMORY[0x21CE92100](v120, v121);

    MEMORY[0x21CE92100](0xD000000000000017, 0x8000000216586490);
    MEMORY[0x21CE92100](v125, v124);

    MEMORY[0x21CE92100](v280[0], v280[1]);
  }

  if (*(v273 + v275[13]))
  {
    v127 = *(v273 + v275[13]);
  }

  else
  {
    v127 = MEMORY[0x277D84F90];
  }

  v128 = [v276 encryptedValues];
  v268 = 0xD000000000000012;
  v129 = MEMORY[0x21CE91FC0]();
  v130 = [v128 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v130 && (v283 = v130, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), swift_dynamicCast()))
  {
    v132 = v280[0];
    v131 = v280[1];
  }

  else
  {
    v132 = 0;
    v131 = 0xC000000000000000;
  }

  v133 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v280[0] = 0;
  v135 = [v133 JSONObjectWithData:isa options:0 error:v280];

  v244 = v132;
  v245 = v131;
  v242 = "userModificationDate";
  v243 = v127;
  if (!v135)
  {
    v137 = v280[0];
    v138 = _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_102;
  }

  v136 = v280[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_102:
    v240 = 0;
    v63 = MEMORY[0x277D84F90];
    goto LABEL_103;
  }

  v240 = 0;
  v63 = v283;
LABEL_103:
  v29 = 0;
  v61 = *(v63 + 16);
  v139 = v63 + 40;
  v27 = MEMORY[0x277D84F90];
  v67 = &outlined read-only object #0 of CloudDevice.Capability.init(rawValue:);
  v241 = v63 + 40;
LABEL_104:
  v140 = (v139 + 16 * v29);
  while (v61 != v29)
  {
    if (v29 >= *(v63 + 16))
    {
      __break(1u);
      goto LABEL_226;
    }

    ++v29;
    v141 = v140 + 2;
    v62 = *(v140 - 1);
    v142 = *v140;

    v143._countAndFlagsBits = v62;
    v143._object = v142;
    v68 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CloudDevice.Capability.init(rawValue:), v143);

    v140 = v141;
    if (v68 < 8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
      }

      v145 = *(v27 + 2);
      v144 = *(v27 + 3);
      v62 = (v145 + 1);
      if (v145 >= v144 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v144 > 1), v145 + 1, 1, v27);
      }

      *(v27 + 2) = v62;
      v27[v145 + 32] = v68;
      v139 = v241;
      goto LABEL_104;
    }
  }

  swift_beginAccess();
  v146 = specialized Dictionary.subscript.getter(v268, v242 | 0x8000000000000000, static CloudDevice.productionSchema);
  swift_endAccess();
  if (v146)
  {
    v147 = v243;
    v148 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ9MomentsUI11CloudDeviceV10CapabilityO_Tt1g5(v243, v27);
    v150 = v269;
    v149 = v270;
    v151 = v273;
    if (v148)
    {
    }

    else
    {
      v280[0] = 0;
      v280[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      MEMORY[0x21CE92100](0xD00000000000001BLL, 0x8000000216586430);
      v154 = MEMORY[0x21CE922B0](v147, &type metadata for CloudDevice.Capability);
      v155 = v150;
      v156 = v151;
      v158 = v157;

      MEMORY[0x21CE92100](v154, v158);
      v151 = v156;
      v150 = v155;

      MEMORY[0x21CE92100](0xD00000000000001BLL, 0x8000000216586450);
      v159 = MEMORY[0x21CE922B0](v27, &type metadata for CloudDevice.Capability);
      v161 = v160;

      MEMORY[0x21CE92100](v159, v161);

      MEMORY[0x21CE92100](v280[0], v280[1]);
    }

    v152 = v274;
    v153 = v255;
  }

  else
  {

    v150 = v269;
    v149 = v270;
    v151 = v273;
    v152 = v274;
    v153 = v255;
  }

  outlined init with copy of DateInterval?(v151 + v275[14], v153, &_s10Foundation4DateVSgMd);
  if (v152(v153, 1, v149) == 1)
  {
    static Date.distantPast.getter();
    if (v152(v153, 1, v149) != 1)
    {
      outlined destroy of UTType?(v153, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v150 + 32))(v257, v153, v149);
  }

  v162 = [v276 encryptedValues];
  v163 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216585D30);
  v164 = [v162 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v164)
  {
    v280[0] = v164;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v165 = v246;
    v166 = swift_dynamicCast();
    v271(v165, v166 ^ 1u, 1, v149);
    v167 = v274;
    if (v274(v165, 1, v149) != 1)
    {
      (*(v150 + 32))(v258, v165, v149);
      goto LABEL_129;
    }
  }

  else
  {
    v165 = v246;
    v271(v246, 1, 1, v149);
    v167 = v274;
  }

  static Date.distantPast.getter();
  if (v167(v165, 1, v149) != 1)
  {
    outlined destroy of UTType?(v165, &_s10Foundation4DateVSgMd);
  }

LABEL_129:
  swift_beginAccess();
  v168 = specialized Dictionary.subscript.getter(0xD000000000000011, 0x8000000216585D30, static CloudDevice.productionSchema);
  swift_endAccess();
  if (v168)
  {
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v280[0] = 0;
      v280[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(56);
      MEMORY[0x21CE92100](0xD00000000000001ALL, 0x80000002165863F0);
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v169 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x21CE92100](v169);
      v167 = v274;

      MEMORY[0x21CE92100](0xD00000000000001ALL, 0x8000000216586410);
      v170 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x21CE92100](v170);

      MEMORY[0x21CE92100](v280[0], v280[1]);
    }
  }

  v171 = v247;
  outlined init with copy of DateInterval?(v151 + v275[16], v247, &_s10Foundation4DateVSgMd);
  if (v167(v171, 1, v149) == 1)
  {
    static Date.distantPast.getter();
    if (v167(v171, 1, v149) != 1)
    {
      outlined destroy of UTType?(v171, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v150 + 32))(v259, v171, v149);
  }

  v172 = [v276 encryptedValues];
  v173 = MEMORY[0x21CE91FC0](0xD000000000000013, 0x8000000216585D50);
  v174 = [v172 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v174)
  {
    v280[0] = v174;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v175 = v248;
    v176 = swift_dynamicCast();
    v271(v175, v176 ^ 1u, 1, v149);
    v177 = v274;
    if (v274(v175, 1, v149) != 1)
    {
      (*(v150 + 32))(v260, v175, v149);
      goto LABEL_142;
    }
  }

  else
  {
    v175 = v248;
    v271(v248, 1, 1, v149);
    v177 = v274;
  }

  static Date.distantPast.getter();
  if (v177(v175, 1, v149) != 1)
  {
    outlined destroy of UTType?(v175, &_s10Foundation4DateVSgMd);
  }

LABEL_142:
  swift_beginAccess();
  v178 = specialized Dictionary.subscript.getter(0xD000000000000013, 0x8000000216585D50, static CloudDevice.productionSchema);
  swift_endAccess();
  if (v178)
  {
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v280[0] = 0;
      v280[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(60);
      MEMORY[0x21CE92100](0xD00000000000001CLL, 0x80000002165863B0);
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v179 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x21CE92100](v179);

      MEMORY[0x21CE92100](0xD00000000000001CLL, 0x80000002165863D0);
      v180 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x21CE92100](v180);

      MEMORY[0x21CE92100](v280[0], v280[1]);
    }
  }

  v181 = (v151 + v275[17]);
  if (v181[1])
  {
    v182 = *v181;
    v183 = v181[1];
  }

  else
  {
    swift_beginAccess();
    v182 = static CloudDevice.nilStr;
    v183 = qword_27CA92B00;
  }

  v184 = [v276 encryptedValues];
  v185 = MEMORY[0x21CE91FC0](v268, 0x8000000216585D70);
  v186 = [v184 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v186 && (v281 = v186, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v188 = v283;
    v187 = v284;
  }

  else
  {
    swift_beginAccess();
    v188 = static CloudDevice.nilStr;
    v187 = qword_27CA92B00;
  }

  swift_beginAccess();
  v189 = specialized Dictionary.subscript.getter(v268, 0x8000000216585D70, static CloudDevice.productionSchema);
  swift_endAccess();
  if (!v189 || v182 == v188 && v183 == v187 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    v281 = 0;
    v282 = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    MEMORY[0x21CE92100](0xD00000000000001BLL, 0x8000000216586370);
    MEMORY[0x21CE92100](v182, v183);

    MEMORY[0x21CE92100](0xD00000000000001BLL, 0x8000000216586390);
    MEMORY[0x21CE92100](v188, v187);

    MEMORY[0x21CE92100](v281, v282);
  }

  v190 = v256;

  outlined init with copy of DateInterval?(v273 + v275[18], v190, &_s10Foundation4DateVSgMd);
  v191 = v270;
  v192 = v274;
  v193 = v274(v190, 1, v270);
  v194 = v269;
  v195 = v254;
  if (v193 == 1)
  {
    static Date.distantPast.getter();
    if (v192(v190, 1, v191) != 1)
    {
      outlined destroy of UTType?(v190, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v269 + 32))(v261, v190, v191);
  }

  v196 = [v276 encryptedValues];
  v197 = MEMORY[0x21CE91FC0](0x6974616E696D6F6ELL, 0xEE00657461446E6FLL);
  v198 = [v196 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v198)
  {
    v281 = v198;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v199 = v249;
    v200 = swift_dynamicCast();
    v271(v199, v200 ^ 1u, 1, v191);
    v201 = v274(v199, 1, v191);
    v202 = v250;
    if (v201 != 1)
    {
      (*(v194 + 32))(v262, v199, v191);
      goto LABEL_167;
    }
  }

  else
  {
    v199 = v249;
    v271(v249, 1, 1, v191);
    v202 = v250;
  }

  static Date.distantPast.getter();
  if (v274(v199, 1, v191) != 1)
  {
    outlined destroy of UTType?(v199, &_s10Foundation4DateVSgMd);
  }

LABEL_167:
  swift_beginAccess();
  v203 = specialized Dictionary.subscript.getter(0x6974616E696D6F6ELL, 0xEE00657461446E6FLL, static CloudDevice.productionSchema);
  swift_endAccess();
  if (v203)
  {
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v281 = 0;
      v282 = 0xE000000000000000;
      _StringGuts.grow(_:)(50);

      v281 = 0xD000000000000017;
      v282 = 0x8000000216586330;
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v204 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x21CE92100](v204);

      MEMORY[0x21CE92100](0xD000000000000017, 0x8000000216586350);
      v205 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x21CE92100](v205);

      MEMORY[0x21CE92100](v281, v282);
    }
  }

  outlined init with copy of DateInterval?(v273 + v275[20], v202, &_s10Foundation4DateVSgMd);
  v206 = v274;
  if (v274(v202, 1, v191) == 1)
  {
    static Date.distantPast.getter();
    if (v206(v202, 1, v191) != 1)
    {
      outlined destroy of UTType?(v202, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v194 + 32))(v263, v202, v191);
  }

  v207 = [v276 encryptedValues];
  v208 = MEMORY[0x21CE91FC0](0x696472616F626E6FLL, 0xEE0065746144676ELL);
  v209 = [v207 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v209)
  {
    v281 = v209;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v210 = v251;
    v211 = swift_dynamicCast();
    v271(v210, v211 ^ 1u, 1, v191);
    v212 = v274(v210, 1, v191);
    v213 = v252;
    if (v212 != 1)
    {
      (*(v194 + 32))(v264, v210, v191);
      goto LABEL_180;
    }
  }

  else
  {
    v210 = v251;
    v271(v251, 1, 1, v191);
    v213 = v252;
  }

  static Date.distantPast.getter();
  if (v274(v210, 1, v191) != 1)
  {
    outlined destroy of UTType?(v210, &_s10Foundation4DateVSgMd);
  }

LABEL_180:
  swift_beginAccess();
  v214 = specialized Dictionary.subscript.getter(0x696472616F626E6FLL, 0xEE0065746144676ELL, static CloudDevice.productionSchema);
  swift_endAccess();
  if (v214)
  {
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v281 = 0;
      v282 = 0xE000000000000000;
      _StringGuts.grow(_:)(50);

      v281 = 0xD000000000000017;
      v282 = 0x80000002165862F0;
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v215 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x21CE92100](v215);

      MEMORY[0x21CE92100](0xD000000000000017, 0x8000000216586310);
      v216 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x21CE92100](v216);

      MEMORY[0x21CE92100](v281, v282);
    }
  }

  outlined init with copy of DateInterval?(v273 + v275[21], v213, &_s10Foundation4DateVSgMd);
  v217 = v274;
  if (v274(v213, 1, v191) == 1)
  {
    static Date.distantPast.getter();
    if (v217(v213, 1, v191) != 1)
    {
      outlined destroy of UTType?(v213, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v194 + 32))(v265, v213, v191);
  }

  v218 = [v276 encryptedValues];
  v219 = MEMORY[0x21CE91FC0](0xD000000000000023, 0x8000000216585DB0);
  v220 = [v218 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v220)
  {
    v281 = v220;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v221 = v253;
    v222 = swift_dynamicCast();
    v271(v221, v222 ^ 1u, 1, v191);
    v223 = v274;
    if (v274(v221, 1, v191) != 1)
    {
      (*(v194 + 32))(v195, v221, v191);
      goto LABEL_193;
    }
  }

  else
  {
    v221 = v253;
    v271(v253, 1, 1, v191);
    v223 = v274;
  }

  static Date.distantPast.getter();
  if (v223(v221, 1, v191) != 1)
  {
    outlined destroy of UTType?(v221, &_s10Foundation4DateVSgMd);
  }

LABEL_193:
  swift_beginAccess();
  v224 = specialized Dictionary.subscript.getter(0xD000000000000023, 0x8000000216585DB0, static CloudDevice.productionSchema);
  swift_endAccess();
  if (v224)
  {
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v281 = 0;
      v282 = 0xE000000000000000;
      _StringGuts.grow(_:)(92);
      MEMORY[0x21CE92100](0xD00000000000002CLL, 0x8000000216586290);
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v225 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x21CE92100](v225);

      MEMORY[0x21CE92100](0xD00000000000002CLL, 0x80000002165862C0);
      v226 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x21CE92100](v226);

      MEMORY[0x21CE92100](v281, v282);
    }
  }

  v227 = (v273 + v275[27]);
  v229 = *v227;
  v228 = v227[1];

  v230 = [v276 encryptedValues];
  v231 = MEMORY[0x21CE91FC0](0x69746172656E6567, 0xEA00000000006E6FLL);
  v232 = [v230 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v232)
  {
    v277 = v232;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    if (swift_dynamicCast())
    {
      v233 = v281;
      v232 = v282;
    }

    else
    {
      v233 = 0;
      v232 = 0;
    }
  }

  else
  {
    v233 = 0;
  }

  swift_beginAccess();
  v234 = specialized Dictionary.subscript.getter(0x69746172656E6567, 0xEA00000000006E6FLL, static CloudDevice.productionSchema);
  swift_endAccess();
  if (!v234)
  {
    goto LABEL_207;
  }

  if (!v228)
  {
    if (!v232)
    {
      outlined consume of Data._Representation(v244, v245);
      goto LABEL_218;
    }

    v228 = 0xE300000000000000;
    v229 = 7104878;
    goto LABEL_210;
  }

  if (!v232 || (v229 != v233 || v228 != v232) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
LABEL_210:
    v281 = 0;
    v282 = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    MEMORY[0x21CE92100](0xD00000000000001BLL, 0x8000000216586250);
    MEMORY[0x21CE92100](v229, v228);

    MEMORY[0x21CE92100](0xD00000000000001BLL, 0x8000000216586270);
    if (v232)
    {
      v235 = v233;
    }

    else
    {
      v235 = 7104878;
    }

    if (v232)
    {
      v236 = v232;
    }

    else
    {
      v236 = 0xE300000000000000;
    }

    MEMORY[0x21CE92100](v235, v236);

    MEMORY[0x21CE92100](v281, v282);
    outlined consume of Data._Representation(v244, v245);
    goto LABEL_217;
  }

LABEL_207:
  outlined consume of Data._Representation(v244, v245);

LABEL_217:

LABEL_218:
  v237 = *(v194 + 8);
  v237(v195, v191);
  v237(v265, v191);
  v237(v264, v191);
  v237(v263, v191);
  v237(v262, v191);
  v237(v261, v191);
  v237(v260, v191);
  v237(v259, v191);
  v237(v258, v191);
  v237(v257, v191);
  v237(v267, v191);
  v237(v266, v191);
  return v278;
}

uint64_t specialized CloudDevice.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(void *a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t, uint64_t), unint64_t a4)
{
  v272 = a3;
  v278[4] = *MEMORY[0x277D85DE8];
  v271 = type metadata accessor for Date();
  v273 = *(v271 - 8);
  v6 = MEMORY[0x28223BE20](v271);
  v255 = &v249 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v262 = &v249 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v261 = &v249 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v260 = &v249 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v259 = &v249 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v258 = &v249 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v257 = &v249 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v256 = &v249 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v254 = &v249 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v253 = &v249 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v252 = &v249 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v251 = &v249 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v250 = &v249 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v249 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v34 - 8);
  v266 = &v249 - v35;
  v36 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v267 = *(v36 - 8);
  v268 = v36;
  v37 = MEMORY[0x28223BE20](v36);
  v264 = &v249 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = v38;
  MEMORY[0x28223BE20](v37);
  v265 = (&v249 - v39);
  v40 = type metadata accessor for Logger();
  v270 = *(v40 - 1);
  v41 = MEMORY[0x28223BE20](v40);
  v269 = &v249 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v249 - v43;
  swift_beginAccess();
  v46 = static CloudManager.currentID;
  v45 = qword_2811A6918;

  v275 = a1;
  v47 = [a1 recordID];
  v48 = [v47 recordName];

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  if (v46 != v49 || v45 != v51)
  {
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v52)
    {
      goto LABEL_5;
    }

    v40 = v275;
    v68 = [v275 encryptedValues];
    v69 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x8000000216585CF0);
    v70 = [v68 objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v70)
    {
      v276 = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
      v71 = v271;
      v72 = swift_dynamicCast();
      v73 = *(v273 + 56);
      v74 = v72 ^ 1u;
      v75 = v33;
      v76 = v71;
    }

    else
    {
      v73 = *(v273 + 56);
      v75 = v33;
      v74 = 1;
      v76 = v271;
    }

    v272 = v73;
    v73(v75, v74, 1, v76);
    v105 = v274;
    v51 = type metadata accessor for CloudDevice();
    outlined assign with take of Date?(v33, v105 + v51[7]);
    v106 = [v40 encryptedValues];
    v107 = MEMORY[0x21CE91FC0](1701667182, 0xE400000000000000);
    v108 = [v106 objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v108)
    {
      v278[0] = v108;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
      v109 = swift_dynamicCast();
      if (v109)
      {
        v108 = v276;
      }

      else
      {
        v108 = 0;
      }

      if (v109)
      {
        v110 = v277;
      }

      else
      {
        v110 = 0;
      }
    }

    else
    {
      v110 = 0;
    }

    v111 = (v105 + v51[8]);

    *v111 = v108;
    v111[1] = v110;
    v112 = [v40 encryptedValues];
    v113 = MEMORY[0x21CE91FC0](0x65566D6574737973, 0xED00006E6F697372);
    v114 = [v112 objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v114)
    {
      v278[0] = v114;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
      v115 = swift_dynamicCast();
      if (v115)
      {
        v114 = v276;
      }

      else
      {
        v114 = 0;
      }

      if (v115)
      {
        v116 = v277;
      }

      else
      {
        v116 = 0;
      }
    }

    else
    {
      v116 = 0;
    }

    v117 = (v105 + v51[9]);

    *v117 = v114;
    v117[1] = v116;
    v118 = [v40 encryptedValues];
    v119 = MEMORY[0x21CE91FC0](0x64496D6574737973, 0xEE00746E496D6F69);
    v120 = [v118 objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v120)
    {
      v276 = v120;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
      v121 = swift_dynamicCast();
      v122 = v278[0];
      if (!v121)
      {
        v122 = 0;
      }

      v123 = v121 ^ 1;
    }

    else
    {
      v122 = 0;
      v123 = 1;
    }

    v124 = v105 + v51[10];
    *v124 = v122;
    v124[8] = v123;
    v125 = [v40 encryptedValues];
    v126 = MEMORY[0x21CE91FC0](0x614C6D6574737973, 0xEE0065676175676ELL);
    v127 = [v125 objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v127)
    {
      v278[0] = v127;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
      v128 = swift_dynamicCast();
      if (v128)
      {
        v127 = v276;
      }

      else
      {
        v127 = 0;
      }

      if (v128)
      {
        v129 = v277;
      }

      else
      {
        v129 = 0;
      }
    }

    else
    {
      v129 = 0;
    }

    v130 = (v105 + v51[11]);

    *v130 = v127;
    v130[1] = v129;
    v56 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    v131 = [v40 encryptedValues];
    swift_getObjectType();
    CKRecordKeyValueSetting.subscript.getter();
    swift_unknownObjectRelease();
    v132 = v276;
    v133 = v277;
    v134 = (v105 + v51[12]);

    *v134 = v132;
    v134[1] = v133;
    v135 = [v40 encryptedValues];
    v136 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x8000000216585D10);
    v137 = [v135 objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v137 && (v278[0] = v137, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), swift_dynamicCast()))
    {
      v138 = v276;
      v139 = v277;
    }

    else
    {
      v138 = 0;
      v139 = 0xC000000000000000;
    }

    v140 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v276 = 0;
    v142 = [v140 JSONObjectWithData:isa options:0 error:&v276];

    v269 = v139;
    v270 = v138;
    if (v142)
    {
      v143 = v276;
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
      if (swift_dynamicCast())
      {
        v268 = 0;
        v144 = v278[0];
LABEL_58:
        v147 = 0;
        v44 = *(v144 + 16);
        v49 = v144 + 40;
        for (i = MEMORY[0x277D84F90]; ; i[a4 + 32] = v40)
        {
          v149 = (v49 + 16 * v147);
          do
          {
            if (v44 == v147)
            {

              v153 = v51[13];
              v154 = v274;

              *&v154[v153] = i;
              v53 = v275;
              v155 = [v275 encryptedValues];
              v156 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216585D30);
              v157 = [v155 objectForKeyedSubscript_];
              swift_unknownObjectRelease();

              v158 = v271;
              if (v157)
              {
                v276 = v157;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
                v159 = v250;
                v160 = swift_dynamicCast() ^ 1;
                v161 = v159;
              }

              else
              {
                v159 = v250;
                v161 = v250;
                v160 = 1;
              }

              v272(v161, v160, 1, v158);
              outlined assign with take of Date?(v159, &v154[v51[14]]);
              v162 = [v53 encryptedValues];
              v163 = MEMORY[0x21CE91FC0](0xD000000000000013, 0x8000000216585D50);
              v164 = [v162 objectForKeyedSubscript_];
              swift_unknownObjectRelease();

              if (v164)
              {
                v276 = v164;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
                v165 = v251;
                v166 = swift_dynamicCast() ^ 1;
                v167 = v165;
              }

              else
              {
                v165 = v251;
                v167 = v251;
                v166 = 1;
              }

              v272(v167, v166, 1, v158);
              outlined assign with take of Date?(v165, &v154[v51[16]]);
              v168 = [v53 encryptedValues];
              v169 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x8000000216585D70);
              v170 = [v168 objectForKeyedSubscript_];
              swift_unknownObjectRelease();

              if (v170)
              {
                v278[0] = v170;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
                v171 = swift_dynamicCast();
                if (v171)
                {
                  v172 = v276;
                }

                else
                {
                  v172 = 0;
                }

                if (v171)
                {
                  v173 = v277;
                }

                else
                {
                  v173 = 0;
                }
              }

              else
              {
                v172 = 0;
                v173 = 0;
              }

              v174 = &v154[v51[17]];

              *v174 = v172;
              *(v174 + 1) = v173;
              v175 = [v53 encryptedValues];
              v176 = MEMORY[0x21CE91FC0](0x6974616E696D6F6ELL, 0xEE00657461446E6FLL);
              v177 = [v175 objectForKeyedSubscript_];
              swift_unknownObjectRelease();

              if (v177)
              {
                v276 = v177;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
                v178 = v252;
                v179 = v271;
                v180 = swift_dynamicCast() ^ 1;
                v181 = v178;
                v182 = v179;
              }

              else
              {
                v178 = v252;
                v181 = v252;
                v180 = 1;
                v182 = v271;
              }

              v272(v181, v180, 1, v182);
              outlined assign with take of Date?(v178, &v154[v51[18]]);
              v183 = [v53 encryptedValues];
              v184 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x8000000216585D90);
              v185 = [v183 objectForKeyedSubscript_];
              swift_unknownObjectRelease();

              if (v185)
              {
                v276 = v185;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
                v186 = v253;
                v187 = v271;
                v188 = swift_dynamicCast();
                v189 = v273;
                v190 = v188 ^ 1u;
                v191 = v186;
              }

              else
              {
                v189 = v273;
                v186 = v253;
                v191 = v253;
                v190 = 1;
                v187 = v271;
              }

              v272(v191, v190, 1, v187);
              v192 = v254;
              v193 = v51[19];
              outlined assign with take of Date?(v186, &v154[v193]);
              outlined init with copy of DateInterval?(&v154[v193], v192, &_s10Foundation4DateVSgMd);
              v194 = *(v189 + 48);
              if (v194(v192, 1, v187) == 1)
              {
                v195 = v262;
                static Date.distantFuture.getter();
                v196 = v194(v192, 1, v187);
                v197 = v255;
                if (v196 != 1)
                {
                  outlined destroy of UTType?(v192, &_s10Foundation4DateVSgMd);
                }
              }

              else
              {
                v198 = *(v189 + 32);
                v195 = v262;
                v198(v262, v192, v187);
                v197 = v255;
              }

              v199 = [v53 creationDate];
              if (v199)
              {
                v200 = v199;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                if (static Date.< infix(_:_:)())
                {
                  outlined destroy of UTType?(&v154[v193], &_s10Foundation4DateVSgMd);
                  (*(v273 + 32))(&v154[v193], v197, v187);
                  v272(&v154[v193], 0, 1, v187);
                }

                else
                {
                  (*(v273 + 8))(v197, v187);
                }
              }

              v201 = [v53 encryptedValues];
              v202 = MEMORY[0x21CE91FC0](0x696472616F626E6FLL, 0xEE0065746144676ELL);
              v203 = [v201 objectForKeyedSubscript_];
              swift_unknownObjectRelease();

              if (v203)
              {
                v276 = v203;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
                v204 = v256;
                v205 = swift_dynamicCast() ^ 1;
                v206 = v204;
              }

              else
              {
                v204 = v256;
                v206 = v256;
                v205 = 1;
              }

              v272(v206, v205, 1, v187);
              outlined assign with take of Date?(v204, &v154[v51[20]]);
              v207 = [v53 encryptedValues];
              v208 = MEMORY[0x21CE91FC0](0xD000000000000023, 0x8000000216585DB0);
              v209 = [v207 objectForKeyedSubscript_];
              swift_unknownObjectRelease();

              if (v209)
              {
                v276 = v209;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
                v210 = v257;
                v211 = swift_dynamicCast() ^ 1;
                v212 = v210;
              }

              else
              {
                v210 = v257;
                v212 = v257;
                v211 = 1;
              }

              v272(v212, v211, 1, v187);
              outlined assign with take of Date?(v210, &v154[v51[21]]);
              v213 = [v53 encryptedValues];
              v214 = MEMORY[0x21CE91FC0](0xD000000000000021, 0x80000002165842C0);
              v215 = [v213 objectForKeyedSubscript_];
              swift_unknownObjectRelease();

              if (v215)
              {
                v276 = v215;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
                v216 = v258;
                v217 = swift_dynamicCast() ^ 1;
                v218 = v216;
              }

              else
              {
                v216 = v258;
                v218 = v258;
                v217 = 1;
              }

              v272(v218, v217, 1, v187);
              outlined assign with take of Date?(v216, &v154[v51[22]]);
              v219 = [v53 encryptedValues];
              v220 = MEMORY[0x21CE91FC0](0xD000000000000020, 0x80000002165842F0);
              v221 = [v219 objectForKeyedSubscript_];
              swift_unknownObjectRelease();

              if (v221)
              {
                v276 = v221;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
                v222 = v259;
                v223 = swift_dynamicCast() ^ 1;
                v224 = v222;
              }

              else
              {
                v222 = v259;
                v224 = v259;
                v223 = 1;
              }

              v272(v224, v223, 1, v187);
              outlined assign with take of Date?(v222, &v154[v51[23]]);
              v225 = [v53 encryptedValues];
              v226 = MEMORY[0x21CE91FC0](0xD000000000000018, 0x8000000216584320);
              v227 = [v225 objectForKeyedSubscript_];
              swift_unknownObjectRelease();

              if (v227)
              {
                v276 = v227;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
                v228 = v260;
                v229 = swift_dynamicCast() ^ 1;
                v230 = v228;
              }

              else
              {
                v228 = v260;
                v230 = v260;
                v229 = 1;
              }

              v272(v230, v229, 1, v187);
              outlined assign with take of Date?(v228, &v154[v51[24]]);
              v231 = [v53 encryptedValues];
              v232 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x8000000216584340);
              v233 = [v231 objectForKeyedSubscript_];
              swift_unknownObjectRelease();

              if (v233)
              {
                v276 = v233;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
                v234 = v261;
                v235 = swift_dynamicCast() ^ 1;
                v236 = v234;
              }

              else
              {
                v234 = v261;
                v236 = v261;
                v235 = 1;
              }

              v272(v236, v235, 1, v187);
              outlined assign with take of Date?(v234, &v154[v51[25]]);
              v237 = [v53 encryptedValues];
              v238 = MEMORY[0x21CE91FC0](0xD00000000000001CLL, 0x8000000216585DE0);
              v239 = [v237 objectForKeyedSubscript_];
              swift_unknownObjectRelease();

              if (v239)
              {
                v278[0] = v239;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
                if (swift_dynamicCast())
                {
                  v239 = v276;
                  v240 = v277;
                  goto LABEL_119;
                }

                v239 = 0;
              }

              v240 = 0xF000000000000000;
LABEL_119:
              v241 = &v154[v51[26]];
              outlined consume of Data?(*v241, *(v241 + 1));
              *v241 = v239;
              *(v241 + 1) = v240;
              v242 = [v53 encryptedValues];
              v243 = MEMORY[0x21CE91FC0](0x69746172656E6567, 0xEA00000000006E6FLL);
              v244 = [v242 objectForKeyedSubscript_];
              outlined consume of Data._Representation(v270, v269);
              swift_unknownObjectRelease();

              (*(v273 + 8))(v195, v187);
              if (v244)
              {
                v278[0] = v244;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
                if (swift_dynamicCast())
                {
                  v244 = v276;
                  v245 = v277;
LABEL_124:
                  v246 = &v154[v51[27]];

                  *v246 = v244;
                  *(v246 + 1) = v245;
                  goto LABEL_125;
                }

                v244 = 0;
              }

              v245 = 0;
              goto LABEL_124;
            }

            if (v147 >= *(v144 + 16))
            {
              __break(1u);
LABEL_127:
              swift_once();
LABEL_9:
              v58 = __swift_project_value_buffer(v40, static CloudDevice.Log);
              swift_beginAccess();
              v59 = v270;
              v60 = v270[2];
              v271 = v58;
              v262 = v60;
              (v60)(v44, v58, v40);

              v61 = Logger.logObject.getter();
              v62 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v61, v62))
              {
                v63 = swift_slowAlloc();
                v261 = swift_slowAlloc();
                v278[0] = v261;
                *v63 = 136315650;
                *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004CLL, 0x8000000216578810, v278);
                *(v63 + 12) = 2080;
                v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v278);

                *(v63 + 14) = v64;
                *(v63 + 22) = 2080;
                v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, v56, v278);

                *(v63 + 24) = v65;
                _os_log_impl(&dword_21607C000, v61, v62, "CloudDevice.%s: iCloud tried to clobber our device record:\nrecordName: %s\n%s", v63, 0x20u);
                v66 = v261;
                swift_arrayDestroy();
                MEMORY[0x21CE94770](v66, -1, -1);
                MEMORY[0x21CE94770](v63, -1, -1);

                v67 = v270;
              }

              else
              {

                v67 = v59;
              }

              v77 = *(v67 + 8);
              v77(v44, v40);
              v79 = v273;
              v78 = v274;
              v80 = v269;
              (v262)(v269, v271, v40);
              v81 = Logger.logObject.getter();
              v82 = static os_log_type_t.info.getter();
              v83 = os_log_type_enabled(v81, v82);
              v53 = v275;
              if (v83)
              {
                v84 = swift_slowAlloc();
                *v84 = 0;
                _os_log_impl(&dword_21607C000, v81, v82, "We are the source of truth! Re-uploading our record to iCloud...", v84, 2u);
                MEMORY[0x21CE94770](v84, -1, -1);
              }

              v77(v80, v40);
              if (v272)
              {
                type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID);
                v85 = *v78;
                v86 = v78[1];
                type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
                v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v89 = v88;
                v90 = v272;
                swift_unknownObjectRetain();

                v91._countAndFlagsBits = 0x73656369766544;
                v91._object = 0xE700000000000000;
                v92._countAndFlagsBits = v87;
                v92._object = v89;
                v93 = CKRecordZoneID.init(zoneName:ownerName:)(v91, v92).super.isa;
                v94._countAndFlagsBits = v85;
                v94._object = v86;
                v95.super.isa = CKRecordID.init(recordName:zoneID:)(v94, v93).super.isa;
                v96 = v79;
                v97 = v265;
                v265->super.isa = v95.super.isa;
                v99 = v267;
                v98 = v268;
                (*(v267 + 104))(v97, *MEMORY[0x277CBBC68], v268);
                v100 = type metadata accessor for TaskPriority();
                v101 = v266;
                (*(*(v100 - 8) + 56))(v266, 1, 1, v100);
                v102 = v264;
                (*(v99 + 16))(v264, v97, v98);
                v103 = (*(v99 + 80) + 48) & ~*(v99 + 80);
                v104 = swift_allocObject();
                *(v104 + 2) = 0;
                *(v104 + 3) = 0;
                *(v104 + 4) = v90;
                *(v104 + 5) = v96;
                v53 = v275;
                (*(v99 + 32))(&v104[v103], v102, v98);
                swift_unknownObjectRetain();
                _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v101, &async function pointer to partial apply for closure #1 in CloudDevice.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:), v104);
                swift_unknownObjectRelease();

                (*(v99 + 8))(v97, v98);
              }

              goto LABEL_125;
            }

            ++v147;
            a4 = (v149 + 2);
            v150 = *(v149 - 1);
            v56 = *v149;

            v151._countAndFlagsBits = v150;
            v151._object = v56;
            v40 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CloudDevice.Capability.init(rawValue:), v151);

            v149 = a4;
          }

          while (v40 >= 8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            i = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(i + 2) + 1, 1, i);
          }

          a4 = *(i + 2);
          v152 = *(i + 3);
          v56 = (a4 + 1);
          if (a4 >= v152 >> 1)
          {
            i = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v152 > 1), a4 + 1, 1, i);
          }

          *(i + 2) = v56;
        }
      }
    }

    else
    {
      v145 = v276;
      v146 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v268 = 0;
    v144 = MEMORY[0x277D84F90];
    goto LABEL_58;
  }

LABEL_5:
  v273 = a4;
  v53 = v275;
  v54 = specialized static CloudDevice.diff(_:_:)(v275, v274);
  v56 = v55;
  v57 = (v55 >> 56) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v57 = v54 & 0xFFFFFFFFFFFFLL;
  }

  if (v57)
  {
    a4 = v54;
    if (one-time initialization token for Log != -1)
    {
      goto LABEL_127;
    }

    goto LABEL_9;
  }

LABEL_125:
  v247 = v53;
  return CloudDevice.lastKnownCKRecord.setter(v53);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v180 = a5;
  v178 = type metadata accessor for CloudDevice();
  v179 = *(v178 - 8);
  v10 = MEMORY[0x28223BE20](v178);
  v170 = v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v183 = v169 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v172 = v169 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v184 = v169 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v174 = v169 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v190 = v169 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v176 = v169 - v23;
  MEMORY[0x28223BE20](v22);
  v191 = (v169 - v24);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd);
  v25 = MEMORY[0x28223BE20](v206);
  v171 = (v169 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x28223BE20](v25);
  v173 = (v169 - v28);
  v29 = MEMORY[0x28223BE20](v27);
  v185 = (v169 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = v169 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v189 = (v169 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v188 = (v169 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v187 = v169 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v186 = v169 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v175 = (v169 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v177 = (v169 - v45);
  v46 = MEMORY[0x28223BE20](v44);
  v193 = (v169 - v47);
  v48 = MEMORY[0x28223BE20](v46);
  v192 = (v169 - v49);
  v50 = MEMORY[0x28223BE20](v48);
  v197 = (v169 - v51);
  v52 = MEMORY[0x28223BE20](v50);
  v196 = (v169 - v53);
  v54 = MEMORY[0x28223BE20](v52);
  v195 = v169 - v55;
  MEMORY[0x28223BE20](v54);
  v194 = v169 - v56;
  v58 = *(v57 + 72);
  if (!v58)
  {
    goto LABEL_105;
  }

  v59 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v58 == -1)
  {
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
    return result;
  }

  v60 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v58 == -1)
  {
    goto LABEL_107;
  }

  v169[1] = v5;
  v209 = a1;
  v208 = a4;
  if (v59 / v58 >= v60 / v58)
  {
    v62 = v60 / v58 * v58;
    if (a4 < a2 || a2 + v62 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v62 < 1)
    {
      v116 = a4 + v62;
    }

    else
    {
      v114 = -v58;
      v115 = a4 + v62;
      v116 = a4 + v62;
      v199 = a4;
      v200 = a1;
      v198 = v33;
      v196 = v114;
      do
      {
        v177 = v116;
        v117 = a2 + v114;
        v201 = a2 + v114;
        v190 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v209 = a2;
            v207 = v177;
            goto LABEL_100;
          }

          v194 = a3;
          v182 = v116;
          v195 = v115;
          v193 = (v115 + v114);
          v119 = v186;
          outlined init with copy of DateInterval?(v115 + v114, v186, &_sSS3key_10Foundation4DateV5valuetMd);
          v120 = v187;
          outlined init with copy of DateInterval?(v117, v187, &_sSS3key_10Foundation4DateV5valuetMd);
          v121 = v188;
          outlined init with copy of DateInterval?(v119, v188, &_sSS3key_10Foundation4DateV5valuetMd);
          v122 = v33;
          v124 = *v121;
          v205 = v121[1];
          v123 = v205;
          v125 = v206;
          v203 = *(v206 + 48);
          v126 = v189;
          outlined init with copy of DateInterval?(v120, v189, &_sSS3key_10Foundation4DateV5valuetMd);
          v127 = *v126;
          v204 = v126[1];
          v128 = *(v125 + 48);
          v192 = v124;
          *v122 = v124;
          v122[1] = v123;
          v129 = type metadata accessor for Date();
          v197 = *(v129 - 8);
          v130 = v197[2];
          v130(&v198[v128], v121 + v203, v129);
          v131 = v185;
          v191 = v127;
          *v185 = v127;
          v131[1] = v204;
          v130(v131 + *(v125 + 48), v126 + v128, v129);
          v132 = v198;
          lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);

          v202 = v129;
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            v181 = v128;
            v133 = v173;
            outlined init with copy of DateInterval?(v132, v173, &_sSS3key_10Foundation4DateV5valuetMd);
            v134 = v180;
            if (!*(v180 + 16))
            {
              goto LABEL_110;
            }

            v135 = *(v206 + 48);
            v136 = specialized __RawDictionaryStorage.find<A>(_:)(*v133, v133[1]);
            v138 = v137;

            if ((v138 & 1) == 0)
            {
              goto LABEL_103;
            }

            v139 = *(v179 + 72);
            v140 = v172;
            outlined init with copy of CloudDevice(*(v134 + 56) + v139 * v136, v172);
            outlined init with take of CloudDevice(v140, v184);
            v141 = v134;
            v142 = v197[1];
            v142(v133 + v135, v202);
            v143 = v171;
            outlined init with copy of DateInterval?(v185, v171, &_sSS3key_10Foundation4DateV5valuetMd);
            if (!*(v134 + 16))
            {
              goto LABEL_111;
            }

            v144 = *(v206 + 48);
            v145 = specialized __RawDictionaryStorage.find<A>(_:)(*v143, v143[1]);
            v147 = v146;

            if ((v147 & 1) == 0)
            {
              goto LABEL_104;
            }

            v148 = v170;
            outlined init with copy of CloudDevice(*(v141 + 56) + v145 * v139, v170);
            outlined init with take of CloudDevice(v148, v183);
            v142(v143 + v144, v202);
            v149 = *(v178 + 36);
            v150 = (v184 + v149);
            if (*(v184 + v149 + 8))
            {
              v151 = *v150;
              v152 = v150[1];
            }

            else
            {
              v151 = 0;
              v152 = 0xE000000000000000;
            }

            v131 = v185;
            v154 = v196;
            v156 = (v183 + v149);
            if (v156[1])
            {
              v157 = *v156;
              v158 = v156[1];
            }

            else
            {
              v157 = 0;
              v158 = 0xE000000000000000;
            }

            v153 = specialized static CloudDevice._compareVersions(_:_:)(v151, v152, v157, v158);

            if (v153 == 2)
            {
              v153 = v192 == v191 && v205 == v204 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
              v155 = v198;
              outlined destroy of CloudDevice(v183);
              outlined destroy of CloudDevice(v184);
            }

            else
            {
              outlined destroy of CloudDevice(v183);
              outlined destroy of CloudDevice(v184);
              v155 = v198;
            }

            v128 = v181;
          }

          else
          {
            v153 = static Date.< infix(_:_:)();
            v154 = v196;
            v155 = v132;
          }

          v159 = v194;
          a3 = v194 + v154;
          outlined destroy of UTType?(v131, &_sSS3key_10Foundation4DateV5valuetMd);
          v160 = v155;
          outlined destroy of UTType?(v155, &_sSS3key_10Foundation4DateV5valuetMd);

          v161 = v197[1];
          v162 = v189 + v128;
          v163 = v202;
          v161(v162, v202);
          v161(v188 + v203, v163);
          outlined destroy of UTType?(v187, &_sSS3key_10Foundation4DateV5valuetMd);
          outlined destroy of UTType?(v186, &_sSS3key_10Foundation4DateV5valuetMd);
          if ((v153 & 1) == 0)
          {
            break;
          }

          v164 = v193;
          v116 = v193;
          v165 = v199;
          v117 = v201;
          if (v159 < v195 || a3 >= v195)
          {
            swift_arrayInitWithTakeFrontToBack();
            v114 = v196;
            v33 = v160;
          }

          else
          {
            v166 = v159 == v195;
            v114 = v196;
            v33 = v160;
            if (!v166)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v115 = v116;
          v118 = v164 > v165;
          a2 = v190;
          a1 = v200;
          if (!v118)
          {
            goto LABEL_98;
          }
        }

        v167 = v199;
        a2 = v201;
        if (v159 < v190 || a3 >= v190)
        {
          swift_arrayInitWithTakeFrontToBack();
          v116 = v182;
          v114 = v196;
          v33 = v160;
        }

        else
        {
          v166 = v159 == v190;
          v116 = v182;
          v114 = v196;
          v33 = v160;
          if (!v166)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v115 = v195;
        a1 = v200;
      }

      while (v195 > v167);
    }

LABEL_98:
    v209 = a2;
    v207 = v116;
  }

  else
  {
    v61 = v59 / v58 * v58;
    if (a4 < a1 || a1 + v61 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v187 = a4 + v61;
    v207 = (a4 + v61);
    if (v61 >= 1 && a2 < a3)
    {
      v182 = a3;
      v181 = v58;
      do
      {
        v200 = a1;
        v201 = a2;
        v64 = v194;
        outlined init with copy of DateInterval?(a2, v194, &_sSS3key_10Foundation4DateV5valuetMd);
        v199 = a4;
        v65 = v195;
        outlined init with copy of DateInterval?(a4, v195, &_sSS3key_10Foundation4DateV5valuetMd);
        v66 = v196;
        outlined init with copy of DateInterval?(v64, v196, &_sSS3key_10Foundation4DateV5valuetMd);
        v67 = *v66;
        v205 = v66[1];
        v68 = v205;
        v69 = v206;
        v203 = *(v206 + 48);
        v70 = v197;
        outlined init with copy of DateInterval?(v65, v197, &_sSS3key_10Foundation4DateV5valuetMd);
        v71 = *v70;
        v204 = v70[1];
        v72 = *(v69 + 48);
        v73 = v192;
        v189 = v67;
        *v192 = v67;
        *(v73 + 8) = v68;
        v74 = type metadata accessor for Date();
        v198 = *(v74 - 8);
        v75 = *(v198 + 2);
        v75(v73 + v72, v66 + v203, v74);
        v76 = v193;
        v188 = v71;
        *v193 = v71;
        v76[1] = v204;
        v77 = *(v69 + 48);
        v78 = v76;
        v75(v76 + v77, v70 + v72, v74);
        lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);

        v202 = v74;
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v79 = v177;
          outlined init with copy of DateInterval?(v73, v177, &_sSS3key_10Foundation4DateV5valuetMd);
          v80 = v180;
          if (!*(v180 + 16))
          {
            goto LABEL_108;
          }

          v81 = *(v206 + 48);
          v82 = specialized __RawDictionaryStorage.find<A>(_:)(*v79, v79[1]);
          v84 = v83;

          if ((v84 & 1) == 0)
          {
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
            goto LABEL_106;
          }

          v186 = v72;
          v85 = v79;
          v86 = *(v179 + 72);
          v87 = v78;
          v88 = v176;
          outlined init with copy of CloudDevice(*(v80 + 56) + v86 * v82, v176);
          outlined init with take of CloudDevice(v88, v191);
          v89 = v80;
          v90 = *(v198 + 1);
          v90(v85 + v81, v202);
          v91 = v175;
          outlined init with copy of DateInterval?(v87, v175, &_sSS3key_10Foundation4DateV5valuetMd);
          if (!*(v89 + 16))
          {
            goto LABEL_109;
          }

          v92 = *(v206 + 48);
          v93 = v91;
          v94 = specialized __RawDictionaryStorage.find<A>(_:)(*v91, v91[1]);
          v96 = v95;

          if ((v96 & 1) == 0)
          {
            goto LABEL_102;
          }

          v97 = *(v89 + 56) + v94 * v86;
          v98 = v174;
          outlined init with copy of CloudDevice(v97, v174);
          outlined init with take of CloudDevice(v98, v190);
          v90(v93 + v92, v202);
          v99 = *(v178 + 36);
          v100 = (v191 + v99);
          if (*(v191 + v99 + 8))
          {
            v101 = *v100;
            v102 = v100[1];
          }

          else
          {
            v101 = 0;
            v102 = 0xE000000000000000;
          }

          v78 = v193;
          v107 = (v190 + v99);
          if (v107[1])
          {
            v108 = *v107;
            v109 = v107[1];
          }

          else
          {
            v108 = 0;
            v109 = 0xE000000000000000;
          }

          v103 = specialized static CloudDevice._compareVersions(_:_:)(v101, v102, v108, v109);

          if (v103 == 2)
          {
            if (v189 == v188 && v205 == v204)
            {
              v103 = 0;
            }

            else
            {
              v103 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            v106 = v200;
            v105 = v201;
            outlined destroy of CloudDevice(v190);
            outlined destroy of CloudDevice(v191);
            v104 = v192;
          }

          else
          {
            outlined destroy of CloudDevice(v190);
            outlined destroy of CloudDevice(v191);
            v106 = v200;
            v105 = v201;
            v104 = v192;
          }

          v72 = v186;
        }

        else
        {
          v103 = static Date.< infix(_:_:)();
          v104 = v73;
          v106 = v200;
          v105 = v201;
        }

        outlined destroy of UTType?(v78, &_sSS3key_10Foundation4DateV5valuetMd);
        outlined destroy of UTType?(v104, &_sSS3key_10Foundation4DateV5valuetMd);

        v110 = *(v198 + 1);
        v111 = v197 + v72;
        v112 = v202;
        v110(v111, v202);
        v110(v196 + v203, v112);
        outlined destroy of UTType?(v195, &_sSS3key_10Foundation4DateV5valuetMd);
        outlined destroy of UTType?(v194, &_sSS3key_10Foundation4DateV5valuetMd);
        if ((v103 & 1) == 0)
        {
          v113 = v181;
          a4 = v199;
          if (v106 < v105 || v106 >= v105 + v181)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v106 != v105)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v105 + v113;
          goto LABEL_54;
        }

        v113 = v181;
        a4 = v199 + v181;
        a2 = v105;
        if (v106 < v199 || v106 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v106 != v199)
        {
          swift_arrayInitWithTakeBackToFront();
          v208 = a4;
          goto LABEL_54;
        }

        v208 = a4;
LABEL_54:
        a1 = v106 + v113;
        v209 = a1;
      }

      while (a4 < v187 && a2 < v182);
    }
  }

LABEL_100:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v209, &v208, &v207);
  return 1;
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v26 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
  }

  v21 = v6;
  *v6 = v26;
  v6 = (v26 + 16);
  v8 = *(v26 + 2);
  if (v8 < 2)
  {
LABEL_10:

    *v21 = v26;
    return 1;
  }

  else
  {
    v22 = (v26 + 16);
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v26[16 * v8];
      v11 = *v10;
      v12 = &v6[2 * v8];
      v13 = *v12;
      v14 = v12[1];
      v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd) - 8) + 72);
      v16 = v9 + v15 * v11;
      v6 = (v9 + v15 * v13);
      v17 = v9 + v15 * v14;

      specialized _merge<A>(low:mid:high:buffer:by:)(v16, v6, v17, a2, a4);

      if (v5)
      {
        *v21 = v26;

        return 1;
      }

      if (v14 < v11)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v6 = (v26 + 16);
      v18 = *v22;
      if (v8 - 2 >= *v22)
      {
        goto LABEL_14;
      }

      *v10 = v11;
      *(v10 + 1) = v14;
      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_15;
      }

      v8 = v18 - 1;
      memmove(v12, v12 + 2, 16 * v19);
      *v22 = v8;
      if (v8 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v21 = v26;
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v281 = a1;
  v311 = type metadata accessor for CloudDevice();
  v312 = *(v311 - 8);
  v8 = MEMORY[0x28223BE20](v311);
  v308 = &v276 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v276 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v310 = &v276 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v321 = &v276 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v284 = &v276 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v295 = &v276 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v286 = &v276 - v22;
  MEMORY[0x28223BE20](v21);
  v296 = &v276 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd);
  v293 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v288 = &v276 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v316 = &v276 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v309 = (&v276 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = (&v276 - v32);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v276 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v276 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v329 = (&v276 - v41);
  v42 = MEMORY[0x28223BE20](v40);
  v328 = &v276 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v327 = &v276 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v326 = &v276 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v285 = (&v276 - v49);
  v50 = MEMORY[0x28223BE20](v48);
  v287 = (&v276 - v51);
  v52 = MEMORY[0x28223BE20](v50);
  v54 = &v276 - v53;
  v55 = MEMORY[0x28223BE20](v52);
  v297 = (&v276 - v56);
  v57 = MEMORY[0x28223BE20](v55);
  v305 = (&v276 - v58);
  v59 = MEMORY[0x28223BE20](v57);
  v304 = (&v276 - v60);
  v61 = MEMORY[0x28223BE20](v59);
  v303 = &v276 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v302 = &v276 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v277 = (&v276 - v66);
  v67 = MEMORY[0x28223BE20](v65);
  v276 = (&v276 - v68);
  v69 = MEMORY[0x28223BE20](v67);
  v279 = &v276 - v70;
  MEMORY[0x28223BE20](v69);
  v278 = &v276 - v71;
  v337 = MEMORY[0x277D84F90];
  v298 = a3;
  if (a3[1] >= 1)
  {
    v72 = a3[1];
    swift_bridgeObjectRetain_n();
    v73 = v72;
    v74 = 0;
    v294 = MEMORY[0x277D84F90];
    v313 = a5;
    v280 = a4;
    v306 = v12;
    v331 = v24;
    v307 = v33;
    v325 = v36;
    v320 = v39;
    v300 = v54;
    while (1)
    {
      v283 = v74;
      if (v74 + 1 >= v73)
      {
        v101 = v74 + 1;
        v142 = v331;
      }

      else
      {
        v299 = v73;
        v75 = *v298;
        v335 = v75;
        v76 = *(v293 + 72);
        v319 = v76;
        v77 = v75 + v76 * (v74 + 1);
        v78 = v278;
        outlined init with copy of DateInterval?(v77, v278, &_sSS3key_10Foundation4DateV5valuetMd);
        v79 = v75 + v76 * v74;
        v80 = v279;
        outlined init with copy of DateInterval?(v79, v279, &_sSS3key_10Foundation4DateV5valuetMd);
        v81 = v276;
        outlined init with copy of DateInterval?(v78, v276, &_sSS3key_10Foundation4DateV5valuetMd);
        v82 = *v81;
        v83 = v81[1];
        v84 = v331;
        v85 = *(v331 + 48);
        v336 = v85;
        v86 = v277;
        outlined init with copy of DateInterval?(v80, v277, &_sSS3key_10Foundation4DateV5valuetMd);
        v87 = *(v84 + 48);
        LODWORD(v315) = closure #1 in closure #1 in static CloudDevice.nominatedPhone(in:)(v82, v83, v81 + v85, *v86, v86[1], v86 + v87, v313);
        v88 = v77;

        v89 = type metadata accessor for Date();
        v90 = *(v89 - 8);
        v91 = *(v90 + 8);
        v92 = v90 + 8;
        v91(v86 + v87, v89);
        v93 = v81 + v336;
        v336 = v89;
        v334 = v91;
        v91(v93, v89);
        outlined destroy of UTType?(v279, &_sSS3key_10Foundation4DateV5valuetMd);
        outlined destroy of UTType?(v278, &_sSS3key_10Foundation4DateV5valuetMd);
        v333 = v92;
        v314 = (v92 + 8);
        v94 = v283 + 2;
        v95 = v335 + v319 * (v283 + 2);
        while (1)
        {
          v101 = v299;
          if (v299 == v94)
          {
            break;
          }

          v322 = v95;
          v323 = v94;
          v102 = v302;
          outlined init with copy of DateInterval?(v95, v302, &_sSS3key_10Foundation4DateV5valuetMd);
          v324 = v88;
          v103 = v303;
          outlined init with copy of DateInterval?(v88, v303, &_sSS3key_10Foundation4DateV5valuetMd);
          v104 = v304;
          outlined init with copy of DateInterval?(v102, v304, &_sSS3key_10Foundation4DateV5valuetMd);
          v105 = *v104;
          v332 = v104[1];
          v106 = v332;
          v107 = v331;
          v335 = *(v331 + 48);
          v108 = v305;
          outlined init with copy of DateInterval?(v103, v305, &_sSS3key_10Foundation4DateV5valuetMd);
          v109 = *v108;
          v110 = v108[1];
          v111 = *(v107 + 48);
          v318 = v105;
          v112 = v297;
          *v297 = v105;
          *(v112 + 8) = v106;
          v113 = *v314;
          v114 = v104 + v335;
          v115 = v336;
          (*v314)(v112 + v111, v114, v336);
          v116 = v300;
          v317 = v109;
          *v300 = v109;
          v116[1] = v110;
          v117 = v108 + v111;
          v118 = v116;
          v113(v116 + *(v107 + 48), v117, v115);
          v119 = v332;
          v120 = v111;
          lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);

          v330 = v110;

          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            v121 = v287;
            outlined init with copy of DateInterval?(v112, v287, &_sSS3key_10Foundation4DateV5valuetMd);
            v122 = v313;
            if (!*(v313 + 16))
            {
              goto LABEL_164;
            }

            v123 = *(v331 + 48);
            v124 = specialized __RawDictionaryStorage.find<A>(_:)(*v121, v121[1]);
            v126 = v125;

            if ((v126 & 1) == 0)
            {
              goto LABEL_141;
            }

            v292 = v120;
            v127 = *(v312 + 72);
            v128 = v286;
            outlined init with copy of CloudDevice(*(v122 + 56) + v127 * v124, v286);
            outlined init with take of CloudDevice(v128, v296);
            (v334)(v121 + v123, v336);
            v129 = v285;
            outlined init with copy of DateInterval?(v300, v285, &_sSS3key_10Foundation4DateV5valuetMd);
            if (!*(v122 + 16))
            {
              goto LABEL_165;
            }

            v130 = *(v331 + 48);
            v131 = specialized __RawDictionaryStorage.find<A>(_:)(*v129, v129[1]);
            v133 = v132;

            if ((v133 & 1) == 0)
            {
              goto LABEL_142;
            }

            v134 = v284;
            outlined init with copy of CloudDevice(*(v122 + 56) + v131 * v127, v284);
            outlined init with take of CloudDevice(v134, v295);
            (v334)(v129 + v130, v336);
            v135 = *(v311 + 36);
            v136 = (v296 + v135);
            if (*(v296 + v135 + 8))
            {
              v137 = *v136;
              v138 = v136[1];
            }

            else
            {
              v137 = 0;
              v138 = 0xE000000000000000;
            }

            v139 = (v295 + v135);
            if (v139[1])
            {
              v140 = *v139;
              v141 = v139[1];
            }

            else
            {
              v140 = 0;
              v141 = 0xE000000000000000;
            }

            v96 = specialized static CloudDevice._compareVersions(_:_:)(v137, v138, v140, v141);

            if (v96 == 2)
            {
              v118 = v300;
              v97 = v297;
              if (v318 == v317 && v119 == v330)
              {
                v96 = 0;
              }

              else
              {
                v96 = _stringCompareWithSmolCheck(_:_:expecting:)();
              }

              v120 = v292;
              outlined destroy of CloudDevice(v295);
              outlined destroy of CloudDevice(v296);
            }

            else
            {
              outlined destroy of CloudDevice(v295);
              outlined destroy of CloudDevice(v296);
              v118 = v300;
              v97 = v297;
              v120 = v292;
            }
          }

          else
          {
            v96 = static Date.< infix(_:_:)();
            v97 = v112;
          }

          outlined destroy of UTType?(v118, &_sSS3key_10Foundation4DateV5valuetMd);
          outlined destroy of UTType?(v97, &_sSS3key_10Foundation4DateV5valuetMd);

          v98 = v336;
          v99 = v334;
          (v334)(v305 + v120, v336);
          v99(v304 + v335, v98);
          outlined destroy of UTType?(v303, &_sSS3key_10Foundation4DateV5valuetMd);
          outlined destroy of UTType?(v302, &_sSS3key_10Foundation4DateV5valuetMd);
          v100 = v315 ^ v96;
          v94 = v323 + 1;
          v95 = v322 + v319;
          v88 = v324 + v319;
          if (v100)
          {
            v101 = v323;
            break;
          }
        }

        a4 = v280;
        v74 = v283;
        v142 = v331;
        if ((v315 & 1) == 0)
        {
          if (v101 < v283)
          {
            goto LABEL_159;
          }

          if (v283 < v101)
          {
            v143 = v319 * (v101 - 1);
            v144 = v101 * v319;
            v145 = v101;
            v146 = v283;
            v147 = v283 * v319;
            do
            {
              if (v146 != --v145)
              {
                v148 = *v298;
                if (!*v298)
                {
                  goto LABEL_166;
                }

                v149 = v101;
                outlined init with take of URL?(v148 + v147, v288, &_sSS3key_10Foundation4DateV5valuetMd);
                if (v147 < v143 || v148 + v147 >= (v148 + v144))
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v147 != v143)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                outlined init with take of URL?(v288, v148 + v143, &_sSS3key_10Foundation4DateV5valuetMd);
                v74 = v283;
                v101 = v149;
                v142 = v331;
              }

              ++v146;
              v143 -= v319;
              v144 -= v319;
              v147 += v319;
            }

            while (v146 < v145);
            a4 = v280;
          }
        }
      }

      v150 = v298[1];
      if (v101 < v150)
      {
        if (__OFSUB__(v101, v74))
        {
          goto LABEL_156;
        }

        if (v101 - v74 < a4)
        {
          if (__OFADD__(v74, a4))
          {
            goto LABEL_157;
          }

          if (v74 + a4 < v150)
          {
            v150 = v74 + a4;
          }

          if (v150 < v74)
          {
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_161:

            __break(1u);
LABEL_162:

            __break(1u);
LABEL_163:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_164:

            __break(1u);
LABEL_165:

            __break(1u);
LABEL_166:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_167:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_168:
            result = swift_bridgeObjectRelease_n();
            __break(1u);
            return result;
          }

          if (v101 != v150)
          {
            v289 = v150;
            v151 = *v298;
            v152 = v101;
            v153 = type metadata accessor for Date();
            v154 = v152;
            v155 = *(v293 + 72);
            v335 = v153;
            v318 = v153 - 8;
            v156 = v151 + v155 * (v152 - 1);
            v314 = -v155;
            v157 = v74 - v152;
            v315 = v151;
            v282 = v155;
            v158 = v151 + v152 * v155;
            do
            {
              v299 = v154;
              v290 = v158;
              v291 = v157;
              v159 = v157;
              v292 = v156;
              v160 = v156;
              do
              {
                v323 = v158;
                v324 = v159;
                v161 = v326;
                outlined init with copy of DateInterval?(v158, v326, &_sSS3key_10Foundation4DateV5valuetMd);
                v322 = v160;
                v162 = v327;
                outlined init with copy of DateInterval?(v160, v327, &_sSS3key_10Foundation4DateV5valuetMd);
                v163 = v161;
                v164 = v328;
                outlined init with copy of DateInterval?(v163, v328, &_sSS3key_10Foundation4DateV5valuetMd);
                v166 = *v164;
                v167 = *(v142 + 48);
                v333 = *(v164 + 8);
                v165 = v333;
                v334 = v167;
                v168 = v329;
                outlined init with copy of DateInterval?(v162, v329, &_sSS3key_10Foundation4DateV5valuetMd);
                v169 = v168[1];
                v330 = *v168;
                v336 = v169;
                v170 = *(v142 + 48);
                v171 = v320;
                v319 = v166;
                *v320 = v166;
                *(v171 + 8) = v165;
                v172 = v142;
                v173 = v335;
                v332 = *(v335 - 8);
                v174 = *(v332 + 16);
                v174(v171 + v170, &v334[v164], v335);
                v175 = v325;
                v176 = v336;
                *v325 = v330;
                v175[1] = v176;
                v174(v175 + *(v172 + 48), v168 + v170, v173);
                lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);

                if (dispatch thunk of static Equatable.== infix(_:_:)())
                {
                  v317 = v170;
                  v177 = v307;
                  outlined init with copy of DateInterval?(v171, v307, &_sSS3key_10Foundation4DateV5valuetMd);
                  v178 = v313;
                  if (!*(v313 + 16))
                  {
                    goto LABEL_161;
                  }

                  v179 = *(v331 + 48);
                  v180 = specialized __RawDictionaryStorage.find<A>(_:)(*v177, v177[1]);
                  v182 = v181;

                  if ((v182 & 1) == 0)
                  {
                    __break(1u);
LABEL_136:
                    __break(1u);
LABEL_137:
                    __break(1u);
LABEL_138:
                    __break(1u);
LABEL_139:
                    __break(1u);
LABEL_140:
                    __break(1u);
LABEL_141:
                    __break(1u);
LABEL_142:
                    __break(1u);
LABEL_143:
                    __break(1u);
LABEL_144:
                    __break(1u);
LABEL_145:
                    __break(1u);
LABEL_146:
                    __break(1u);
LABEL_147:
                    __break(1u);
LABEL_148:
                    __break(1u);
LABEL_149:
                    __break(1u);
LABEL_150:
                    __break(1u);
LABEL_151:
                    __break(1u);
LABEL_152:
                    __break(1u);
LABEL_153:
                    __break(1u);
LABEL_154:
                    __break(1u);
LABEL_155:
                    __break(1u);
LABEL_156:
                    __break(1u);
LABEL_157:
                    __break(1u);
                    goto LABEL_158;
                  }

                  v183 = v177;
                  v184 = *(v312 + 72);
                  v185 = v310;
                  outlined init with copy of CloudDevice(*(v178 + 56) + v184 * v180, v310);
                  outlined init with take of CloudDevice(v185, v321);
                  v186 = *(v332 + 8);
                  v186(v183 + v179, v335);
                  v187 = v309;
                  outlined init with copy of DateInterval?(v325, v309, &_sSS3key_10Foundation4DateV5valuetMd);
                  if (!*(v178 + 16))
                  {
                    goto LABEL_162;
                  }

                  v188 = v178;
                  v189 = *(v331 + 48);
                  v190 = specialized __RawDictionaryStorage.find<A>(_:)(*v187, v187[1]);
                  v192 = v191;

                  if ((v192 & 1) == 0)
                  {
                    goto LABEL_136;
                  }

                  v193 = v308;
                  outlined init with copy of CloudDevice(*(v188 + 56) + v190 * v184, v308);
                  v194 = v306;
                  outlined init with take of CloudDevice(v193, v306);
                  v186(v187 + v189, v335);
                  v195 = *(v311 + 36);
                  v196 = (v321 + v195);
                  if (*(v321 + v195 + 8))
                  {
                    v197 = *v196;
                    v198 = v196[1];
                  }

                  else
                  {
                    v197 = 0;
                    v198 = 0xE000000000000000;
                  }

                  v201 = v325;
                  v171 = v320;
                  v202 = (v194 + v195);
                  if (v202[1])
                  {
                    v203 = *v202;
                    v204 = v202[1];
                  }

                  else
                  {
                    v203 = 0;
                    v204 = 0xE000000000000000;
                  }

                  v199 = specialized static CloudDevice._compareVersions(_:_:)(v197, v198, v203, v204);

                  if (v199 == 2)
                  {
                    v142 = v331;
                    v200 = v317;
                    if (v319 == v330 && v333 == v336)
                    {
                      v199 = 0;
                    }

                    else
                    {
                      v199 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    }

                    outlined destroy of CloudDevice(v194);
                    outlined destroy of CloudDevice(v321);
                  }

                  else
                  {
                    outlined destroy of CloudDevice(v194);
                    outlined destroy of CloudDevice(v321);
                    v142 = v331;
                    v200 = v317;
                  }
                }

                else
                {
                  v199 = static Date.< infix(_:_:)();
                  v142 = v331;
                  v200 = v170;
                  v201 = v175;
                }

                outlined destroy of UTType?(v201, &_sSS3key_10Foundation4DateV5valuetMd);
                outlined destroy of UTType?(v171, &_sSS3key_10Foundation4DateV5valuetMd);

                v205 = *(v332 + 8);
                v206 = v329 + v200;
                v207 = v335;
                v205(v206, v335);
                v205(&v334[v328], v207);
                outlined destroy of UTType?(v327, &_sSS3key_10Foundation4DateV5valuetMd);
                outlined destroy of UTType?(v326, &_sSS3key_10Foundation4DateV5valuetMd);
                if (v199)
                {
                  break;
                }

                v208 = v324;
                if (!v315)
                {
                  goto LABEL_160;
                }

                v209 = v323;
                v210 = v316;
                outlined init with take of URL?(v323, v316, &_sSS3key_10Foundation4DateV5valuetMd);
                v211 = v322;
                swift_arrayInitWithTakeFrontToBack();
                outlined init with take of URL?(v210, v211, &_sSS3key_10Foundation4DateV5valuetMd);
                v160 = v314 + v211;
                v158 = v314 + v209;
                v212 = __CFADD__(v208, 1);
                v159 = v208 + 1;
              }

              while (!v212);
              v154 = v299 + 1;
              v156 = v292 + v282;
              v157 = v291 - 1;
              v158 = v290 + v282;
            }

            while (v299 + 1 != v289);
            v74 = v283;
            v101 = v289;
          }
        }
      }

      v213 = v294;
      if (v101 < v74)
      {
        goto LABEL_155;
      }

      v289 = v101;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v213 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v213 + 2) + 1, 1, v213);
      }

      v215 = *(v213 + 2);
      v214 = *(v213 + 3);
      v216 = v215 + 1;
      if (v215 >= v214 >> 1)
      {
        v213 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v214 > 1), v215 + 1, 1, v213);
      }

      *(v213 + 2) = v216;
      v217 = v213 + 32;
      v218 = &v213[16 * v215 + 32];
      v219 = v289;
      *v218 = v74;
      *(v218 + 1) = v219;
      v336 = *v281;
      if (!v336)
      {
        goto LABEL_167;
      }

      v294 = v213;
      if (v215)
      {
        while (1)
        {
          v220 = v216 - 1;
          if (v216 >= 4)
          {
            break;
          }

          if (v216 == 3)
          {
            v221 = *(v213 + 4);
            v222 = *(v213 + 5);
            v231 = __OFSUB__(v222, v221);
            v223 = v222 - v221;
            v224 = v231;
LABEL_99:
            if (v224)
            {
              goto LABEL_145;
            }

            v237 = &v213[16 * v216];
            v239 = *v237;
            v238 = *(v237 + 1);
            v240 = __OFSUB__(v238, v239);
            v241 = v238 - v239;
            v242 = v240;
            if (v240)
            {
              goto LABEL_147;
            }

            v243 = &v217[16 * v220];
            v245 = *v243;
            v244 = *(v243 + 1);
            v231 = __OFSUB__(v244, v245);
            v246 = v244 - v245;
            if (v231)
            {
              goto LABEL_150;
            }

            if (__OFADD__(v241, v246))
            {
              goto LABEL_152;
            }

            if (v241 + v246 >= v223)
            {
              if (v223 < v246)
              {
                v220 = v216 - 2;
              }

              goto LABEL_121;
            }

            goto LABEL_114;
          }

          if (v216 < 2)
          {
            goto LABEL_153;
          }

          v247 = &v213[16 * v216];
          v249 = *v247;
          v248 = *(v247 + 1);
          v231 = __OFSUB__(v248, v249);
          v241 = v248 - v249;
          v242 = v231;
LABEL_114:
          if (v242)
          {
            goto LABEL_149;
          }

          v250 = &v217[16 * v220];
          v252 = *v250;
          v251 = *(v250 + 1);
          v231 = __OFSUB__(v251, v252);
          v253 = v251 - v252;
          if (v231)
          {
            goto LABEL_151;
          }

          if (v253 < v241)
          {
            goto LABEL_3;
          }

LABEL_121:
          if (v220 - 1 >= v216)
          {
            goto LABEL_137;
          }

          v258 = *v298;
          if (!*v298)
          {
            goto LABEL_163;
          }

          v259 = &v217[16 * v220 - 16];
          v260 = *v259;
          v261 = &v217[16 * v220];
          v262 = *(v261 + 1);
          v263 = *(v293 + 72);
          v264 = v258 + v263 * *v259;
          v265 = v258 + v263 * *v261;
          v266 = v258 + v263 * v262;
          v267 = v313;

          v268 = v264;
          v269 = v301;
          specialized _merge<A>(low:mid:high:buffer:by:)(v268, v265, v266, v336, v267);
          v301 = v269;
          if (v269)
          {

            v337 = v294;
            goto LABEL_133;
          }

          if (v262 < v260)
          {
            goto LABEL_138;
          }

          v213 = v294;
          v270 = *(v294 + 2);
          if (v220 > v270)
          {
            goto LABEL_139;
          }

          *v259 = v260;
          *(v259 + 1) = v262;
          if (v220 >= v270)
          {
            goto LABEL_140;
          }

          v216 = v270 - 1;
          memmove(&v217[16 * v220], v261 + 16, 16 * (v270 - 1 - v220));
          *(v213 + 2) = v270 - 1;
          if (v270 <= 2)
          {
            goto LABEL_3;
          }
        }

        v225 = &v217[16 * v216];
        v226 = *(v225 - 8);
        v227 = *(v225 - 7);
        v231 = __OFSUB__(v227, v226);
        v228 = v227 - v226;
        if (v231)
        {
          goto LABEL_143;
        }

        v230 = *(v225 - 6);
        v229 = *(v225 - 5);
        v231 = __OFSUB__(v229, v230);
        v223 = v229 - v230;
        v224 = v231;
        if (v231)
        {
          goto LABEL_144;
        }

        v232 = &v213[16 * v216];
        v234 = *v232;
        v233 = *(v232 + 1);
        v231 = __OFSUB__(v233, v234);
        v235 = v233 - v234;
        if (v231)
        {
          goto LABEL_146;
        }

        v231 = __OFADD__(v223, v235);
        v236 = v223 + v235;
        if (v231)
        {
          goto LABEL_148;
        }

        if (v236 >= v228)
        {
          v254 = &v217[16 * v220];
          v256 = *v254;
          v255 = *(v254 + 1);
          v231 = __OFSUB__(v255, v256);
          v257 = v255 - v256;
          if (v231)
          {
            goto LABEL_154;
          }

          if (v223 < v257)
          {
            v220 = v216 - 2;
          }

          goto LABEL_121;
        }

        goto LABEL_99;
      }

LABEL_3:
      v73 = v298[1];
      v74 = v289;
      a4 = v280;
      if (v289 >= v73)
      {
        v337 = v294;
        v271 = v313;
        goto LABEL_131;
      }
    }
  }

  swift_bridgeObjectRetain_n();
  v271 = a5;
LABEL_131:
  v272 = *v281;
  if (!*v281)
  {
    goto LABEL_168;
  }

  v273 = v272;
  v274 = v301;
  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v337, v273, v298, v271);
  v301 = v274;

LABEL_133:
  swift_bridgeObjectRelease_n();
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v112 = a5;
  v108 = type metadata accessor for CloudDevice();
  v111 = *(v108 - 8);
  v9 = MEMORY[0x28223BE20](v108);
  v107 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v106 = &v98 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v110 = &v98 - v14;
  MEMORY[0x28223BE20](v13);
  v120 = &v98 - v15;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd);
  v16 = *(v131 - 8);
  v17 = MEMORY[0x28223BE20](v131);
  v116 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v109 = (&v98 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v113 = (&v98 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v135 = &v98 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = (&v98 - v26);
  v28 = MEMORY[0x28223BE20](v25);
  v126 = (&v98 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v125 = (&v98 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v124 = &v98 - v33;
  result = MEMORY[0x28223BE20](v32);
  v123 = &v98 - v35;
  v100 = a2;
  if (a3 == a2)
  {
    return result;
  }

  v36 = *a4;
  v37 = type metadata accessor for Date();
  v38 = *(v16 + 72);
  v134 = v37;
  v118 = v37 - 8;
  v39 = v36 + v38 * (a3 - 1);
  v114 = -v38;
  v115 = v36;
  v40 = a1 - a3;
  v99 = v38;
  v41 = v36 + v38 * a3;
  v105 = v27;
LABEL_5:
  v104 = a3;
  v101 = v41;
  v42 = v41;
  v102 = v40;
  v43 = v40;
  v103 = v39;
  v132 = v39;
  while (1)
  {
    v121 = v42;
    v122 = v43;
    v44 = v123;
    outlined init with copy of DateInterval?(v42, v123, &_sSS3key_10Foundation4DateV5valuetMd);
    v45 = v124;
    outlined init with copy of DateInterval?(v132, v124, &_sSS3key_10Foundation4DateV5valuetMd);
    v46 = v125;
    outlined init with copy of DateInterval?(v44, v125, &_sSS3key_10Foundation4DateV5valuetMd);
    v47 = *v46;
    v130 = v46[1];
    v48 = v130;
    v49 = v131;
    v133 = *(v131 + 48);
    v50 = v126;
    outlined init with copy of DateInterval?(v45, v126, &_sSS3key_10Foundation4DateV5valuetMd);
    v51 = *v50;
    v129 = v50[1];
    v52 = *(v49 + 48);
    v119 = v47;
    *v27 = v47;
    v27[1] = v48;
    v53 = v134;
    v54 = *(v134 - 8);
    v127 = v51;
    v128 = v54;
    v55 = *(v54 + 16);
    v56 = v135;
    v55(v27 + v52, v46 + v133, v134);
    v57 = v129;
    *v56 = v127;
    *(v56 + 1) = v57;
    v55(&v56[*(v49 + 48)], v50 + v52, v53);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);

    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v83 = static Date.< infix(_:_:)();
      v84 = v52;
      v85 = v122;
LABEL_23:
      v90 = v133;
      goto LABEL_26;
    }

    v58 = v113;
    outlined init with copy of DateInterval?(v27, v113, &_sSS3key_10Foundation4DateV5valuetMd);
    v59 = v112;
    if (!*(v112 + 16))
    {
      goto LABEL_34;
    }

    v60 = *(v131 + 48);
    v61 = specialized __RawDictionaryStorage.find<A>(_:)(*v58, v58[1]);
    v63 = v62;

    if ((v63 & 1) == 0)
    {
      break;
    }

    v117 = v52;
    v64 = v58;
    v65 = *(v111 + 72);
    v66 = *(v59 + 56) + v65 * v61;
    v67 = v110;
    outlined init with copy of CloudDevice(v66, v110);
    outlined init with take of CloudDevice(v67, v120);
    v68 = *(v128 + 8);
    v68(v64 + v60, v134);
    v69 = v109;
    outlined init with copy of DateInterval?(v135, v109, &_sSS3key_10Foundation4DateV5valuetMd);
    if (!*(v59 + 16))
    {
      goto LABEL_35;
    }

    v70 = v59;
    v71 = *(v131 + 48);
    v72 = specialized __RawDictionaryStorage.find<A>(_:)(*v69, v69[1]);
    v74 = v73;

    if ((v74 & 1) == 0)
    {
      goto LABEL_32;
    }

    v75 = *(v70 + 56) + v72 * v65;
    v76 = v107;
    outlined init with copy of CloudDevice(v75, v107);
    v77 = v76;
    v78 = v106;
    outlined init with take of CloudDevice(v77, v106);
    v68(v69 + v71, v134);
    v79 = *(v108 + 36);
    v80 = (v120 + v79);
    if (*(v120 + v79 + 8))
    {
      v81 = *v80;
      v82 = v80[1];
    }

    else
    {
      v81 = 0;
      v82 = 0xE000000000000000;
    }

    v86 = v129;
    v87 = (v78 + v79);
    if (v87[1])
    {
      v88 = *v87;
      v89 = v87[1];
    }

    else
    {
      v88 = 0;
      v89 = 0xE000000000000000;
    }

    v83 = specialized static CloudDevice._compareVersions(_:_:)(v81, v82, v88, v89);

    if (v83 != 2)
    {
      outlined destroy of CloudDevice(v78);
      outlined destroy of CloudDevice(v120);
      v27 = v105;
      v85 = v122;
      v84 = v117;
      goto LABEL_23;
    }

    v27 = v105;
    v85 = v122;
    if (v119 == v127 && v130 == v86)
    {
      v83 = 0;
    }

    else
    {
      v83 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v90 = v133;
    outlined destroy of CloudDevice(v78);
    outlined destroy of CloudDevice(v120);
    v84 = v117;
LABEL_26:
    outlined destroy of UTType?(v135, &_sSS3key_10Foundation4DateV5valuetMd);
    outlined destroy of UTType?(v27, &_sSS3key_10Foundation4DateV5valuetMd);

    v91 = *(v128 + 8);
    v92 = v126 + v84;
    v93 = v134;
    v91(v92, v134);
    v91(v125 + v90, v93);
    outlined destroy of UTType?(v124, &_sSS3key_10Foundation4DateV5valuetMd);
    result = outlined destroy of UTType?(v123, &_sSS3key_10Foundation4DateV5valuetMd);
    v94 = v121;
    if ((v83 & 1) == 0)
    {
      if (!v115)
      {
        goto LABEL_33;
      }

      v95 = v116;
      outlined init with take of URL?(v121, v116, &_sSS3key_10Foundation4DateV5valuetMd);
      v96 = v132;
      swift_arrayInitWithTakeFrontToBack();
      result = outlined init with take of URL?(v95, v96, &_sSS3key_10Foundation4DateV5valuetMd);
      v132 = v96 + v114;
      v42 = v94 + v114;
      v97 = __CFADD__(v85, 1);
      v43 = v85 + 1;
      if (!v97)
      {
        continue;
      }
    }

    a3 = v104 + 1;
    v39 = v103 + v99;
    v40 = v102 - 1;
    v41 = v101 + v99;
    if (v104 + 1 == v100)
    {
      return result;
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:

  __break(1u);
LABEL_35:

  __break(1u);
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = _minimumMergeRunLength(_:)(v4);
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v8 + 16) = v7;
      }

      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
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

    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t specialized MutableCollection<>.sort(by:)(void **a1, uint64_t a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd) - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

id specialized static CloudDevice.dumpRecord(_:)(void *a1)
{
  v241 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v189 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v189 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v189 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v214 = &v189 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v223 = &v189 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v199 = &v189 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v195 = &v189 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v222 = &v189 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v192 = &v189 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v191 = &v189 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v190 = &v189 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v189 - v28;
  v30 = type metadata accessor for Date();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v221 = &v189 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v220 = &v189 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v219 = &v189 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v218 = &v189 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v217 = &v189 - v41;
  MEMORY[0x28223BE20](v40);
  v224 = &v189 - v42;
  v43 = [a1 recordID];
  v44 = [v43 recordName];

  v208 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v209 = v45;

  v226 = a1;
  v46 = [a1 encryptedValues];
  v47 = MEMORY[0x21CE91FC0](0x4449656369766564, 0xE800000000000000);
  v48 = [v46 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  v211 = v5;
  if (v48 && (v240 = v48, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v206 = v232;
    v207 = v233;
  }

  else
  {
    swift_beginAccess();
    v206 = static CloudDevice.nilStr;
    v207 = qword_27CA92B00;
  }

  v49 = [v226 encryptedValues];
  v50 = MEMORY[0x21CE91FC0](0x4449656C646E7562, 0xE800000000000000);
  v51 = [v49 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v51 && (v239 = v51, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v204 = v232;
    v205 = v233;
  }

  else
  {
    swift_beginAccess();
    v204 = static CloudDevice.nilStr;
    v205 = qword_27CA92B00;
  }

  v52 = [v226 encryptedValues];
  v53 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x8000000216585CF0);
  v54 = [v52 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v54)
  {
    v232 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v55 = swift_dynamicCast();
    v227 = *(v31 + 56);
    v227(v29, v55 ^ 1u, 1, v30);
    v225 = *(v31 + 48);
    if (v225(v29, 1, v30) != 1)
    {
      (*(v31 + 32))(v224, v29, v30);
      goto LABEL_15;
    }
  }

  else
  {
    v227 = *(v31 + 56);
    v227(v29, 1, 1, v30);
  }

  static Date.distantPast.getter();
  v225 = *(v31 + 48);
  if (v225(v29, 1, v30) != 1)
  {
    outlined destroy of UTType?(v29, &_s10Foundation4DateVSgMd);
  }

LABEL_15:
  v56 = [v226 encryptedValues];
  v57 = MEMORY[0x21CE91FC0](1701667182, 0xE400000000000000);
  v58 = [v56 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v58 && (v238 = v58, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v200 = v232;
    v201 = v233;
  }

  else
  {
    swift_beginAccess();
    v200 = static CloudDevice.nilStr;
    v201 = qword_27CA92B00;
  }

  v59 = [v226 encryptedValues];
  v60 = MEMORY[0x21CE91FC0](0x65566D6574737973, 0xED00006E6F697372);
  v61 = [v59 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v61 && (v237 = v61, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v197 = v232;
    v198 = v233;
  }

  else
  {
    swift_beginAccess();
    v197 = static CloudDevice.nilStr;
    v198 = qword_27CA92B00;
  }

  v62 = [v226 encryptedValues];
  v63 = MEMORY[0x21CE91FC0](0x64496D6574737973, 0xEE00746E496D6F69);
  v64 = [v62 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v64 && (v232 = v64, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), swift_dynamicCast()))
  {
    v65 = v236;
  }

  else
  {
    v65 = -1;
  }

  v196 = v65;
  v66 = [v226 encryptedValues];
  v67 = MEMORY[0x21CE91FC0](0x614C6D6574737973, 0xEE0065676175676ELL);
  v68 = [v66 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v68 && (v236 = v68, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v193 = v232;
    v194 = v233;
  }

  else
  {
    swift_beginAccess();
    v193 = static CloudDevice.nilStr;
    v194 = qword_27CA92B00;
  }

  v69 = [v226 encryptedValues];
  v70 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x8000000216585D10);
  v71 = [v69 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v71 && (v234 = v71, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), swift_dynamicCast()))
  {
    v72 = v232;
    v73 = v233;
  }

  else
  {
    v72 = 0;
    v73 = 0xC000000000000000;
  }

  v74 = objc_opt_self();
  v203 = v72;
  v202 = v73;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v232 = 0;
  v76 = [v74 JSONObjectWithData:isa options:0 error:&v232];

  v212 = v2;
  if (!v76)
  {
    v79 = v232;
    v80 = _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_39;
  }

  v77 = v232;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:
    v78 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  v78 = v234;
LABEL_40:
  v213 = v31;
  v210 = v30;
  v215 = v11;
  v216 = v8;
  v81 = v78[2];
  if (!v81)
  {
    v228 = MEMORY[0x277D84F90];
    goto LABEL_70;
  }

  v189 = 0;
  v82 = 0;
  v228 = MEMORY[0x277D84F90];
  do
  {
    v83 = &v78[2 * v82 + 5];
    v84 = v82;
    while (1)
    {
      if (v84 >= v78[2])
      {
        __break(1u);
      }

      v85 = *(v83 - 1);
      v86 = *v83;

      v87._countAndFlagsBits = v85;
      v87._object = v86;
      v88 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CloudDevice.Capability.init(rawValue:), v87);
      if (v88 > 3)
      {
        break;
      }

      if (v88 > 1)
      {
        if (v88 != 2)
        {
          v89 = 0x6469766F72506F6ELL;
          v90 = 0xEB00000000737265;
          goto LABEL_63;
        }

        v89 = 0x64756F6C43776F6CLL;
        goto LABEL_62;
      }

      if (!v88)
      {
        v89 = 0x626E4F726576656ELL;
        v90 = 0xEE0064656472616FLL;
        goto LABEL_63;
      }

      if (v88 == 1)
      {
        v89 = 0x6C61636F4C776F6CLL;
LABEL_62:
        v90 = 0xEF656761726F7453;
        goto LABEL_63;
      }

LABEL_43:
      ++v84;

      v83 += 2;
      if (v81 == v84)
      {
        goto LABEL_70;
      }
    }

    if (v88 > 5)
    {
      if (v88 == 6)
      {
        v89 = 0x756F527465737361;
        v90 = 0xEE00626F6C426574;
        goto LABEL_63;
      }

      if (v88 == 7)
      {
        v89 = 0x6174536775626564;
        v90 = 0xEA0000000000656CLL;
        goto LABEL_63;
      }

      goto LABEL_43;
    }

    if (v88 == 4)
    {
      v90 = 0xE400000000000000;
      v89 = 1280328553;
    }

    else
    {
      v90 = 0xE600000000000000;
      v89 = 0x68746C616548;
    }

LABEL_63:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v228 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v228 + 2) + 1, 1, v228);
    }

    v92 = *(v228 + 2);
    v91 = *(v228 + 3);
    if (v92 >= v91 >> 1)
    {
      v228 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v228);
    }

    v82 = v84 + 1;
    v93 = v228;
    *(v228 + 2) = v92 + 1;
    v94 = &v93[16 * v92];
    *(v94 + 4) = v89;
    *(v94 + 5) = v90;
  }

  while (v81 - 1 != v84);
LABEL_70:

  v95 = v226;
  v96 = [v226 encryptedValues];
  v97 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216585D30);
  v98 = [v96 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v98)
  {
    v232 = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v99 = v190;
    v100 = v210;
    v101 = swift_dynamicCast();
    v102 = v213;
    v227(v99, v101 ^ 1u, 1, v100);
    v103 = v225;
    v104 = v225(v99, 1, v100);
    v105 = v207;
    if (v104 != 1)
    {
      (*(v102 + 32))(v217, v99, v100);
      goto LABEL_76;
    }
  }

  else
  {
    v102 = v213;
    v99 = v190;
    v100 = v210;
    v227(v190, 1, 1, v210);
    v105 = v207;
    v103 = v225;
  }

  static Date.distantPast.getter();
  if (v103(v99, 1, v100) != 1)
  {
    outlined destroy of UTType?(v99, &_s10Foundation4DateVSgMd);
  }

LABEL_76:
  v106 = [v95 encryptedValues];
  v107 = MEMORY[0x21CE91FC0](0xD000000000000013, 0x8000000216585D50);
  v108 = [v106 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v108)
  {
    v232 = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v109 = v191;
    v110 = swift_dynamicCast();
    v227(v109, v110 ^ 1u, 1, v100);
    if (v103(v109, 1, v100) != 1)
    {
      (*(v102 + 32))(v218, v109, v100);
      goto LABEL_82;
    }
  }

  else
  {
    v109 = v191;
    v227(v191, 1, 1, v100);
  }

  static Date.distantPast.getter();
  if (v103(v109, 1, v100) != 1)
  {
    outlined destroy of UTType?(v109, &_s10Foundation4DateVSgMd);
  }

LABEL_82:
  v111 = [v95 encryptedValues];
  v112 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x8000000216585D70);
  v113 = [v111 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v113 && (v234 = v113, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v207 = v232;
    v210 = v233;
  }

  else
  {
    swift_beginAccess();
    v207 = static CloudDevice.nilStr;
    v210 = qword_27CA92B00;
  }

  v114 = [v95 encryptedValues];
  v115 = MEMORY[0x21CE91FC0](0x6974616E696D6F6ELL, 0xEE00657461446E6FLL);
  v116 = [v114 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v116)
  {
    v234 = v116;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v117 = v192;
    v118 = swift_dynamicCast();
    v227(v117, v118 ^ 1u, 1, v100);
    if (v103(v117, 1, v100) != 1)
    {
      (*(v102 + 32))(v219, v117, v100);
      goto LABEL_92;
    }
  }

  else
  {
    v117 = v192;
    v227(v192, 1, 1, v100);
  }

  static Date.distantPast.getter();
  if (v103(v117, 1, v100) != 1)
  {
    outlined destroy of UTType?(v117, &_s10Foundation4DateVSgMd);
  }

LABEL_92:
  v119 = [v95 encryptedValues];
  v120 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x8000000216585D90);
  v121 = [v119 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v121)
  {
    v234 = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v122 = v222;
    v123 = swift_dynamicCast() ^ 1;
    v124 = v122;
  }

  else
  {
    v124 = v222;
    v123 = 1;
  }

  v227(v124, v123, 1, v100);
  v125 = v208;
  v126 = [v95 encryptedValues];
  v127 = MEMORY[0x21CE91FC0](0x696472616F626E6FLL, 0xEE0065746144676ELL);
  v128 = [v126 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v128)
  {
    v234 = v128;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v129 = v195;
    v130 = swift_dynamicCast();
    v227(v129, v130 ^ 1u, 1, v100);
    if (v225(v129, 1, v100) != 1)
    {
      (*(v102 + 32))(v220, v129, v100);
      goto LABEL_101;
    }
  }

  else
  {
    v129 = v195;
    v227(v195, 1, 1, v100);
  }

  static Date.distantPast.getter();
  if (v225(v129, 1, v100) != 1)
  {
    outlined destroy of UTType?(v129, &_s10Foundation4DateVSgMd);
  }

LABEL_101:
  v131 = [v95 encryptedValues];
  v132 = MEMORY[0x21CE91FC0](0xD000000000000023, 0x8000000216585DB0);
  v133 = [v131 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v133)
  {
    v234 = v133;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v134 = v199;
    v135 = swift_dynamicCast();
    v227(v134, v135 ^ 1u, 1, v100);
    v136 = v225;
    if (v225(v134, 1, v100) != 1)
    {
      (*(v102 + 32))(v221, v134, v100);
      goto LABEL_107;
    }
  }

  else
  {
    v134 = v199;
    v227(v199, 1, 1, v100);
    v136 = v225;
  }

  static Date.distantPast.getter();
  if (v136(v134, 1, v100) != 1)
  {
    outlined destroy of UTType?(v134, &_s10Foundation4DateVSgMd);
  }

LABEL_107:
  v137 = [v95 encryptedValues];
  v138 = MEMORY[0x21CE91FC0](0xD000000000000021, 0x80000002165842C0);
  v139 = [v137 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v139)
  {
    v234 = v139;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v140 = v223;
    v141 = swift_dynamicCast() ^ 1;
    v142 = v140;
  }

  else
  {
    v142 = v223;
    v141 = 1;
  }

  v227(v142, v141, 1, v100);
  v143 = [v95 encryptedValues];
  v144 = MEMORY[0x21CE91FC0](0xD000000000000020, 0x80000002165842F0);
  v145 = [v143 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v145)
  {
    v234 = v145;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v146 = v214;
    v147 = swift_dynamicCast() ^ 1;
    v148 = v146;
  }

  else
  {
    v148 = v214;
    v147 = 1;
  }

  v227(v148, v147, 1, v100);
  v149 = [v95 encryptedValues];
  v150 = MEMORY[0x21CE91FC0](0xD000000000000018, 0x8000000216584320);
  v151 = [v149 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v151)
  {
    v234 = v151;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v152 = v215;
    v153 = swift_dynamicCast() ^ 1;
    v154 = v152;
  }

  else
  {
    v154 = v215;
    v153 = 1;
  }

  v227(v154, v153, 1, v100);
  v155 = [v95 encryptedValues];
  v156 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x8000000216584340);
  v157 = [v155 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v157)
  {
    v234 = v157;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v158 = v216;
    v159 = swift_dynamicCast() ^ 1;
    v160 = v158;
  }

  else
  {
    v160 = v216;
    v159 = 1;
  }

  v227(v160, v159, 1, v100);
  v161 = v209;
  v162 = [v95 encryptedValues];
  v163 = MEMORY[0x21CE91FC0](0x69746172656E6567, 0xEA00000000006E6FLL);
  v164 = [v162 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v164 && (v230 = v164, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v165 = v235;
    v227 = v234;
  }

  else
  {
    swift_beginAccess();
    v165 = qword_27CA92B00;
    v227 = static CloudDevice.nilStr;
  }

  v230 = 0;
  v231 = 0xE000000000000000;
  _StringGuts.grow(_:)(491);
  MEMORY[0x21CE92100](540697705, 0xE400000000000000);
  MEMORY[0x21CE92100](v125, v161);

  MEMORY[0x21CE92100](0x496563697665640ALL, 0xEB00000000203A44);
  MEMORY[0x21CE92100](v206, v105);

  MEMORY[0x21CE92100](0x49656C646E75620ALL, 0xEB00000000203A44);
  MEMORY[0x21CE92100](v204, v205);

  MEMORY[0x21CE92100](0xD000000000000017, 0x8000000216585E20);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v166 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v166);

  MEMORY[0x21CE92100](0x203A656D616E0ALL, 0xE700000000000000);
  MEMORY[0x21CE92100](v200, v201);

  MEMORY[0x21CE92100](0xD000000000000010, 0x8000000216585E40);
  MEMORY[0x21CE92100](v197, v198);

  MEMORY[0x21CE92100](0xD000000000000011, 0x8000000216585E60);
  v229 = v196;
  v167 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v167);

  MEMORY[0x21CE92100](0xD000000000000011, 0x8000000216585E80);
  MEMORY[0x21CE92100](v193, v194);

  MEMORY[0x21CE92100](0xD000000000000015, 0x8000000216585EA0);
  v168 = MEMORY[0x21CE922B0](v228, MEMORY[0x277D837D0]);
  v170 = v169;

  MEMORY[0x21CE92100](v168, v170);

  MEMORY[0x21CE92100](0xD000000000000014, 0x8000000216585EC0);
  v171 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v171);

  MEMORY[0x21CE92100](0xD000000000000016, 0x8000000216585EE0);
  v172 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v172);

  MEMORY[0x21CE92100](0xD000000000000015, 0x8000000216585F00);
  MEMORY[0x21CE92100](v207, v210);

  MEMORY[0x21CE92100](0xD000000000000011, 0x8000000216585F20);
  v173 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v173);

  MEMORY[0x21CE92100](0xD000000000000013, 0x8000000216585F40);
  v174 = v100;
  v175 = v211;
  outlined init with copy of DateInterval?(v222, v211, &_s10Foundation4DateVSgMd);
  v176 = String.init<A>(describing:)();
  MEMORY[0x21CE92100](v176);

  MEMORY[0x21CE92100](0xD000000000000011, 0x8000000216585F60);
  v177 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v177);

  MEMORY[0x21CE92100](0xD000000000000015, 0x8000000216585F80);
  MEMORY[0x21CE92100](v227, v165);

  MEMORY[0x21CE92100](0xD000000000000026, 0x8000000216585FA0);
  v178 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v178);

  MEMORY[0x21CE92100](0xD000000000000024, 0x8000000216585FD0);
  outlined init with copy of DateInterval?(v223, v175, &_s10Foundation4DateVSgMd);
  v179 = String.init<A>(describing:)();
  MEMORY[0x21CE92100](v179);

  MEMORY[0x21CE92100](0xD000000000000041, 0x8000000216586000);
  v180 = v214;
  outlined init with copy of DateInterval?(v214, v175, &_s10Foundation4DateVSgMd);
  v181 = String.init<A>(describing:)();
  MEMORY[0x21CE92100](v181);

  MEMORY[0x21CE92100](0xD00000000000001BLL, 0x8000000216586050);
  v182 = v215;
  outlined init with copy of DateInterval?(v215, v175, &_s10Foundation4DateVSgMd);
  v183 = String.init<A>(describing:)();
  MEMORY[0x21CE92100](v183);

  MEMORY[0x21CE92100](0xD000000000000013, 0x8000000216586070);
  v184 = v216;
  outlined init with copy of DateInterval?(v216, v175, &_s10Foundation4DateVSgMd);
  v185 = String.init<A>(describing:)();
  MEMORY[0x21CE92100](v185);

  outlined consume of Data._Representation(v203, v202);
  v186 = v230;
  v187 = *(v213 + 8);
  v187(v221, v174);
  v187(v220, v174);
  v187(v219, v174);
  v187(v218, v174);
  v187(v217, v174);
  v187(v224, v174);
  outlined destroy of UTType?(v184, &_s10Foundation4DateVSgMd);
  outlined destroy of UTType?(v182, &_s10Foundation4DateVSgMd);
  outlined destroy of UTType?(v180, &_s10Foundation4DateVSgMd);
  outlined destroy of UTType?(v223, &_s10Foundation4DateVSgMd);
  outlined destroy of UTType?(v222, &_s10Foundation4DateVSgMd);
  return v186;
}