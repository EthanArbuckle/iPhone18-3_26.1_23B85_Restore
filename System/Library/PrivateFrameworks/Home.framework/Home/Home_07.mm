void *HMAccessoryProfile.capabilities.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    result = HMMediaProfile.elements.getter();
    v5 = result;
    v6 = 0;
    v7 = result[2];
    v8 = result + 4;
    v9 = 45;
LABEL_3:
    v10 = &v8[2 * v6];
    while (1)
    {
      if (v7 == v6)
      {

        goto LABEL_10;
      }

      if (v6 >= v5[2])
      {
        break;
      }

      ++v6;
      v11 = v10 + 2;
      v12 = *v10;
      v10 += 2;
      if (v12 != v2)
      {
        v13 = *(v11 - 1);
        ObjectType = swift_getObjectType();
        v15[1] = v12;
        result = (*(*(v13 + 8) + 8))(v15, ObjectType);
        v9 |= v15[0];
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
LABEL_10:
    *a1 = v9;
  }

  return result;
}

void *HMServiceGroup.elements.getter()
{
  v1 = [v0 services];
  sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
  v2 = sub_20DD64FD4();

  v3 = sub_20DA0B284(v2);

  return v3;
}

void *sub_20DA54BDC()
{
  v1 = [v0 services];
  sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
  v2 = sub_20DD64FD4();

  v3 = sub_20DA0B284(v2);

  return v3;
}

uint64_t HMMediaSystem.elements.getter()
{
  v1 = [v0 mediaProfiles];
  v2 = [v1 allObjects];

  v3 = sub_20DD64FD4();
  v4 = sub_20DA0B67C(v3);

  if (!*(v4 + 16))
  {
    sub_20D9D7510(0, &qword_280E01EC0, 0x277D86200);
    v5 = v0;
    v6 = sub_20DD65474();
    v7 = sub_20DD65384();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v8 = 136315394;
      *(v8 + 4) = sub_20D9E0B38(0x73746E656D656C65, 0xE800000000000000, &v13);
      *(v8 + 12) = 2112;
      *(v8 + 14) = v5;
      *v9 = v5;
      v11 = v5;
      _os_log_impl(&dword_20D9BF000, v6, v7, "%s: No elements found for media system %@", v8, 0x16u);
      sub_20DA55258(v9);
      MEMORY[0x20F327D10](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x20F327D10](v10, -1, -1);
      MEMORY[0x20F327D10](v8, -1, -1);
    }
  }

  return v4;
}

id HMAccessory.capabilities.getter@<X0>(uint64_t *a1@<X8>)
{
  result = [v1 hf_isMatterOnlyAccessory];
  if (result)
  {
    v4 = 45;
  }

  else
  {
    result = [v1 hf_isMediaAccessory];
    v4 = 13;
    if (!result)
    {
      v4 = 0;
    }
  }

  *a1 = v4;
  return result;
}

void sub_20DA54EE8()
{
  v1 = [v0 uniqueIdentifier];
  sub_20DD63714();
}

id sub_20DA54F48@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = [v3 hf_isMatterOnlyAccessory];
  if (result)
  {
    v5 = 45;
  }

  else
  {
    result = [v3 hf_isMediaAccessory];
    v5 = 13;
    if (!result)
    {
      v5 = 0;
    }
  }

  *a1 = v5;
  return result;
}

uint64_t sub_20DA54FA8(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_20DD655B4();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_20D9EF64C(v2, 0);

    v1 = sub_20D9EAF0C(&v5, (v3 + 32), v2, v1);
    sub_20D9C51CC();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

char *sub_20DA55084(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_20DD655B4();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_20D9C51CC();
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

uint64_t sub_20DA55144(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_20D9EF64C(*(a1 + 16), 0);
  v4 = sub_20D9EF640(&v6, v3 + 32, v1, a1);

  sub_20D9C51CC();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_20DA55200(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_20DD65974() & 1;
  }
}

uint64_t sub_20DA55258(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843630, &qword_20DD94080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DA552DC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_20DD65974() & 1;
  }
}

unint64_t sub_20DA55338()
{
  result = qword_27C8446F8;
  if (!qword_27C8446F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8446F8);
  }

  return result;
}

unint64_t sub_20DA55390()
{
  result = qword_27C844700;
  if (!qword_27C844700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844700);
  }

  return result;
}

unint64_t sub_20DA553E8()
{
  result = qword_27C844708;
  if (!qword_27C844708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844708);
  }

  return result;
}

unint64_t sub_20DA55440()
{
  result = qword_27C844710;
  if (!qword_27C844710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844710);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryElementCapabilities(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AccessoryElementCapabilities(uint64_t result, int a2, int a3)
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

uint64_t sub_20DA55564(void *a1, void *a2)
{
  result = sub_20DA48DA0(a1, a2);
  if (result == 2)
  {

    return sub_20DA55790();
  }

  return result;
}

id AccessoryCategoryReorderableItemList.__allocating_init(applicationDataContainer:category:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_20DD64E74();

  v5 = [v3 initWithApplicationDataContainer:a1 category:v4];
  swift_unknownObjectRelease();

  return v5;
}

id AccessoryCategoryReorderableItemList.init(applicationDataContainer:category:)(uint64_t a1)
{
  v3 = sub_20DD64E74();

  v6.receiver = v1;
  v6.super_class = type metadata accessor for AccessoryCategoryReorderableItemList();
  v4 = objc_msgSendSuper2(&v6, sel_initWithApplicationDataContainer_category_, a1, v3);

  swift_unknownObjectRelease();
  return v4;
}

id AccessoryCategoryReorderableItemList.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryCategoryReorderableItemList();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20DA55790()
{
  v0 = [objc_opt_self() categorySortOrder];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844718, &qword_20DD95C48);
  v1 = sub_20DD64FD4();

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    ObjCClassFromObject = swift_getObjCClassFromObject();
    v5 = 0;
    while (1)
    {
      v6 = *(v3 + 8 * v5);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v8 = ObjCClassFromMetadata != ObjCClassFromObject;
      if (ObjCClassFromMetadata == ObjCClassFromObject)
      {
        break;
      }

      if (v2 == ++v5)
      {
        v5 = 0;
        break;
      }
    }

    result = swift_getObjCClassFromObject();
    v10 = result;
    v11 = 0;
    while (v2 != v11)
    {
      v12 = *(v3 + 8 * v11);
      result = swift_getObjCClassFromMetadata();
      v13 = result != v10;
      if (result == v10)
      {
        goto LABEL_12;
      }

      if (v2 == ++v11)
      {
        v11 = 0;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = 0;
    v5 = 0;
    v13 = 1;
    v8 = 1;
LABEL_12:

    return sub_20DA06504(v5, v8, v11, v13);
  }

  return result;
}

double HFCharacteristicValueManager.staticHomeDataModelCachedValue(for:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v41 = sub_20DD643E4();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v41);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844720, &qword_20DD95C50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = sub_20DD64444();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD63C84();
  v20 = sub_20DD63C64();
  sub_20DA55DA4(a1, v14);

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v21 = &qword_27C844720;
    v22 = &qword_20DD95C50;
    v23 = v14;
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    v24 = sub_20DD64424();
    if (v24 == 2)
    {
      v48 = 0u;
      v49 = 0u;
      v25 = sub_20DD64414();
      if (v26)
      {
        v46 = 0u;
        v47 = 0u;
        v27 = sub_20DD64384();
        if (v28)
        {
          v44 = 0u;
          v45 = 0u;
          v29 = sub_20DD64394();
          if (v30)
          {
            *(&v43 + 1) = MEMORY[0x277D837D0];
            *&v42 = v29;
            *(&v42 + 1) = v30;
            sub_20D9D77C8(&v42, &v50);
          }

          else
          {
            v42 = 0u;
            v43 = 0u;
            v31 = sub_20DD64434();
            if (v32 >> 60 == 15)
            {
              v31 = 0;
              v32 = 0;
              v33 = 0;
              *&v51 = 0;
            }

            else
            {
              v33 = MEMORY[0x277CC9318];
            }

            *&v50 = v31;
            *(&v50 + 1) = v32;
            *(&v51 + 1) = v33;
            if (*(&v43 + 1))
            {
              sub_20D9D76EC(&v42, &unk_27C843A80, &qword_20DD94100);
            }
          }

          if (*(&v45 + 1))
          {
            sub_20D9D76EC(&v44, &unk_27C843A80, &qword_20DD94100);
          }
        }

        else
        {
          *(&v45 + 1) = MEMORY[0x277D839F8];
          *&v44 = v27;
          sub_20D9D77C8(&v44, &v50);
        }

        if (*(&v47 + 1))
        {
          sub_20D9D76EC(&v46, &unk_27C843A80, &qword_20DD94100);
        }
      }

      else
      {
        *(&v47 + 1) = MEMORY[0x277D83B88];
        *&v46 = v25;
        sub_20D9D77C8(&v46, &v50);
      }

      if (*(&v49 + 1))
      {
        sub_20D9D76EC(&v48, &unk_27C843A80, &qword_20DD94100);
      }
    }

    else
    {
      *(&v49 + 1) = MEMORY[0x277D839B0];
      LOBYTE(v48) = v24 & 1;
      sub_20D9D77C8(&v48, &v50);
    }

    sub_20DD643F4();
    v34 = *MEMORY[0x277D165C0];
    v35 = sub_20DD643D4();
    (*(*(v35 - 8) + 104))(v8, v34, v35);
    v36 = v41;
    (*(v4 + 104))(v8, *MEMORY[0x277D165B0], v41);
    LOBYTE(v34) = MEMORY[0x20F325300](v10, v8);
    v37 = *(v4 + 8);
    v37(v8, v36);
    v37(v10, v36);
    (*(v16 + 8))(v19, v15);
    if (v34)
    {
      result = *&v50;
      v39 = v51;
      *a2 = v50;
      a2[1] = v39;
      return result;
    }

    v21 = &unk_27C843A80;
    v22 = &qword_20DD94100;
    v23 = &v50;
  }

  sub_20D9D76EC(v23, v21, v22);
  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

uint64_t sub_20DA55DA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = sub_20DD63EC4();
  v83 = *(v3 - 8);
  v84 = v3;
  v4 = *(v83 + 64);
  MEMORY[0x28223BE20](v3);
  v82 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844720, &qword_20DD95C50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v86 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844778, &qword_20DD95CD8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v88 = &v80 - v11;
  v12 = sub_20DD641F4();
  v89 = *(v12 - 8);
  v13 = *(v89 + 64);
  MEMORY[0x28223BE20](v12);
  v85 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20DD63E94();
  v90 = *(v15 - 8);
  v91 = v15;
  v16 = *(v90 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v92 = &v80 - v20;
  v21 = sub_20DD63744();
  v22 = *(v21 - 8);
  v93 = v21;
  v94 = v22;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v87 = &v80 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v80 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v80 - v32;
  v34 = a1;
  v35 = [a1 service];
  if (!v35)
  {
    goto LABEL_9;
  }

  v36 = v35;
  v37 = [v35 home];

  if (!v37)
  {
    goto LABEL_9;
  }

  v38 = [v37 uniqueIdentifier];

  sub_20DD63714();
  v39 = *(v94 + 32);
  v40 = v31;
  v41 = v93;
  v39(v33, v40, v93);
  v42 = sub_20DD63C04();
  if (!*(v42 + 16) || (v43 = sub_20D9CB38C(v33), (v44 & 1) == 0))
  {

    (*(v94 + 8))(v33, v41);
    goto LABEL_9;
  }

  v81 = v12;
  v45 = v90;
  v46 = v91;
  (*(v90 + 16))(v19, *(v42 + 56) + *(v90 + 72) * v43, v91);

  v47 = v92;
  v48 = v19;
  v49 = v46;
  (*(v45 + 32))(v92, v48, v46);
  v50 = v34;
  v51 = [v34 service];
  if (!v51)
  {
    (*(v45 + 8))(v47, v49);
    (*(v94 + 8))(v33, v93);
    goto LABEL_9;
  }

  v52 = v51;
  v53 = [v51 uniqueIdentifier];

  sub_20DD63714();
  v54 = v87;
  v55 = v93;
  v39(v87, v26, v93);
  v56 = [v50 characteristicType];
  sub_20DD64EB4();

  v57 = v88;
  sub_20DD641E4();
  v58 = v89;
  v59 = v81;
  if ((*(v89 + 48))(v57, 1, v81) == 1)
  {
    v60 = *(v94 + 8);
    v60(v54, v55);
    (*(v90 + 8))(v92, v91);
    v60(v33, v55);
    sub_20D9D76EC(v57, &qword_27C844778, &qword_20DD95CD8);
LABEL_9:
    v61 = sub_20DD64444();
    return (*(*(v61 - 8) + 56))(v95, 1, 1, v61);
  }

  v63 = v85;
  (*(v58 + 32))(v85, v57, v59);
  v64 = sub_20DD63E74();
  v65 = v90;
  if (!*(v64 + 16) || (v66 = sub_20D9CB38C(v54), (v67 & 1) == 0))
  {

    (*(v58 + 8))(v63, v59);
    v77 = v93;
    v78 = *(v94 + 8);
    v78(v54, v93);
    (*(v65 + 8))(v92, v91);
    v78(v33, v77);
    v75 = sub_20DD64444();
    v72 = v86;
    (*(*(v75 - 8) + 56))(v86, 1, 1, v75);
LABEL_16:
    sub_20D9D76EC(v72, &qword_27C844720, &qword_20DD95C50);
    sub_20DD64444();
    return (*(*(v75 - 8) + 56))(v95, 1, 1, v75);
  }

  v68 = v63;
  v69 = v82;
  v70 = v83;
  (*(v83 + 16))(v82, *(v64 + 56) + *(v83 + 72) * v66, v84);

  v71 = v65;
  v72 = v86;
  sub_20DD63EA4();
  (*(v58 + 8))(v68, v59);
  v73 = v93;
  v74 = *(v94 + 8);
  v74(v54, v93);
  (*(v71 + 8))(v92, v91);
  v74(v33, v73);
  (*(v70 + 8))(v69, v84);
  v75 = sub_20DD64444();
  v76 = *(v75 - 8);
  if ((*(v76 + 48))(v72, 1, v75) == 1)
  {
    goto LABEL_16;
  }

  v79 = v95;
  (*(v76 + 32))(v95, v72, v75);
  return (*(v76 + 56))(v79, 0, 1, v75);
}

id HFCharacteristicValueManager.createHomeStateStreamObserver()()
{
  sub_20DD63B44();
  result = MEMORY[0x20F324A10]();
  if (result)
  {
    v1 = result;
    v2 = type metadata accessor for HFCharacteristicValueManager.HomeStateStreamObserver();
    v3 = objc_allocWithZone(v2);
    v4 = OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_characteristicsWithPendingWrites;
    *&v3[v4] = sub_20D9D6124(MEMORY[0x277D84F90]);
    *&v3[OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_observingTask] = 0;
    *&v3[OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_stream] = v1;
    v5.receiver = v3;
    v5.super_class = v2;
    return objc_msgSendSuper2(&v5, sel_init);
  }

  return result;
}

void sub_20DA569DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844720, &qword_20DD95C50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v51 - v4;
  v64 = sub_20DD63744();
  v6 = *(v64 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v64);
  v55 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v61 = &v51 - v11;
  MEMORY[0x28223BE20](v10);
  v63 = &v51 - v12;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    sub_20D9C7830();
    sub_20DA5A66C(&unk_280E020F0, sub_20D9C7830);
    sub_20DD65284();
    a1 = v68;
    v13 = v69;
    v14 = v70;
    v15 = v71;
    v16 = v72;
  }

  else
  {
    v17 = -1 << *(a1 + 32);
    v13 = a1 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(a1 + 56);

    v15 = 0;
  }

  v20 = (v14 + 64) >> 6;
  v58 = v5;
  v59 = (v6 + 32);
  v56 = v14;
  v57 = (v6 + 8);
  v60 = a1;
  while (1)
  {
    if (a1 < 0)
    {
      v26 = sub_20DD655F4();
      if (!v26)
      {
        goto LABEL_32;
      }

      v66 = v26;
      sub_20D9C7830();
      swift_dynamicCast();
      v25 = v67;
      v23 = v15;
      v24 = v16;
      if (!v67)
      {
        goto LABEL_32;
      }

      goto LABEL_18;
    }

    v21 = v15;
    v22 = v16;
    v23 = v15;
    if (!v16)
    {
      break;
    }

LABEL_14:
    v24 = (v22 - 1) & v22;
    v25 = *(*(a1 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v25)
    {
      goto LABEL_32;
    }

LABEL_18:
    v27 = [v25 service];
    if (v27)
    {
      v65 = v24;
      v28 = v27;
      v29 = [v27 home];

      if (v29)
      {
        v30 = [v29 uniqueIdentifier];

        v31 = v61;
        sub_20DD63714();

        v32 = v63;
        (*v59)(v63, v31, v64);
        v33 = OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_characteristicsWithPendingWrites;
        v34 = v62;
        swift_beginAccess();
        v35 = *(v34 + v33);
        if (!*(v35 + 16))
        {

LABEL_28:
          a1 = v60;
          (*v57)(v63, v64);
          v46 = sub_20DD64444();
          v44 = v58;
          (*(*(v46 - 8) + 56))(v58, 1, 1, v46);
          v47 = v65;
          goto LABEL_31;
        }

        v36 = *(v34 + v33);

        v37 = sub_20D9CB38C(v32);
        if ((v38 & 1) == 0)
        {

          goto LABEL_28;
        }

        v39 = *(*(v35 + 56) + 8 * v37);

        v40 = [v25 uniqueIdentifier];
        v41 = v55;
        sub_20DD63714();

        a1 = v60;
        if (*(v39 + 16) && (v42 = sub_20D9CB38C(v41), (v43 & 1) != 0))
        {
          v54 = *(v39 + 56);
          v52 = v42;
          v51 = sub_20DD64444();
          v53 = *(v51 - 8);
          v44 = v58;
          (*(v53 + 16))(v58, v54 + *(v53 + 72) * v52, v51);

          v54 = *v57;
          v54(v55, v64);
          v54(v63, v64);
          v45 = v51;

          (*(v53 + 56))(v44, 0, 1, v45);
        }

        else
        {

          v48 = *v57;
          v49 = v64;
          (*v57)(v41, v64);
          v48(v63, v49);
          v45 = sub_20DD64444();
          v44 = v58;
          (*(*(v45 - 8) + 56))(v58, 1, 1, v45);
        }

        sub_20DD64444();
        v50 = (*(*(v45 - 8) + 48))(v44, 1, v45);
        v47 = v65;
        if (v50 != 1)
        {
          sub_20D9D76EC(v44, &qword_27C844720, &qword_20DD95C50);
LABEL_32:
          sub_20D9C51CC();
          return;
        }

LABEL_31:
        sub_20D9D76EC(v44, &qword_27C844720, &qword_20DD95C50);
        v15 = v23;
        v16 = v47;
      }

      else
      {

        v15 = v23;
        v16 = v65;
      }
    }

    else
    {

      v15 = v23;
      v16 = v24;
    }
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
      goto LABEL_32;
    }

    v22 = *(v13 + 8 * v23);
    ++v21;
    if (v22)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_20DA57188(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v56 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844720, &qword_20DD95C50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v54 - v6;
  v8 = sub_20DD64444();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v54 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_20DD63744();
  v12 = *(v55 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v55);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v54 - v18;
  MEMORY[0x28223BE20](v17);
  v57 = &v54 - v20;
  v21 = [a1 service];
  if (!v21 || (v22 = v21, v23 = [v21 home], v22, !v23))
  {
    v40 = v56;
    *(v56 + 3) = MEMORY[0x277D839B0];
    *v40 = 0;
    return;
  }

  v24 = [v23 uniqueIdentifier];

  sub_20DD63714();
  v25 = v12;
  (*(v12 + 32))(v57, v19, v55);
  v26 = OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_characteristicsWithPendingWrites;
  swift_beginAccess();
  v27 = *(v2 + v26);
  v28 = v9;
  v29 = v8;
  if (!*(v27 + 16))
  {
    goto LABEL_10;
  }

  v30 = *(v2 + v26);

  v31 = sub_20D9CB38C(v57);
  if ((v32 & 1) == 0)
  {

LABEL_10:
    (*(v28 + 56))(v7, 1, 1, v8);
LABEL_11:
    sub_20D9D76EC(v7, &qword_27C844720, &qword_20DD95C50);
    v42 = v56;
    v41 = v57;
    *(v56 + 3) = MEMORY[0x277D839B0];
    *v42 = 0;
    (*(v25 + 8))(v41, v55);
    return;
  }

  v33 = *(*(v27 + 56) + 8 * v31);

  v34 = [a1 uniqueIdentifier];
  sub_20DD63714();

  if (*(v33 + 16))
  {
    v35 = sub_20D9CB38C(v16);
    v36 = v54;
    if (v37)
    {
      (*(v28 + 16))(v7, *(v33 + 56) + *(v28 + 72) * v35, v29);
      v38 = *(v25 + 8);
      v38(v16, v55);

      v39 = 0;
    }

    else
    {

      v38 = *(v25 + 8);
      v38(v16, v55);
      v39 = 1;
    }
  }

  else
  {

    v38 = *(v25 + 8);
    v38(v16, v55);
    v39 = 1;
    v36 = v54;
  }

  (*(v28 + 56))(v7, v39, 1, v29);
  if ((*(v28 + 48))(v7, 1, v29) == 1)
  {
    goto LABEL_11;
  }

  (*(v28 + 32))(v36, v7, v29);
  v43 = sub_20DD64424();
  if (v43 == 2)
  {
    v64 = 0u;
    v65 = 0u;
    v44 = sub_20DD64414();
    if (v45)
    {
      v62 = 0u;
      v63 = 0u;
      v46 = sub_20DD64384();
      if (v47)
      {
        v60 = 0u;
        v61 = 0u;
        v48 = sub_20DD64394();
        if (v49)
        {
          *(&v59 + 1) = MEMORY[0x277D837D0];
          *&v58 = v48;
          *(&v58 + 1) = v49;
          (*(v28 + 8))(v36, v29);
          v38(v57, v55);
          sub_20D9D77C8(&v58, v56);
        }

        else
        {
          v58 = 0u;
          v59 = 0u;
          v50 = sub_20DD64434();
          if (v51 >> 60 == 15)
          {
            (*(v28 + 8))(v36, v29);
            v38(v57, v55);
            v52 = v56;
            *v56 = 0u;
            v52[1] = 0u;
          }

          else
          {
            v53 = v56;
            *(v56 + 3) = MEMORY[0x277CC9318];
            *v53 = v50;
            v53[1] = v51;
            (*(v28 + 8))(v36, v29);
            v38(v57, v55);
          }

          if (*(&v59 + 1))
          {
            sub_20D9D76EC(&v58, &unk_27C843A80, &qword_20DD94100);
          }
        }

        if (*(&v61 + 1))
        {
          sub_20D9D76EC(&v60, &unk_27C843A80, &qword_20DD94100);
        }
      }

      else
      {
        *(&v61 + 1) = MEMORY[0x277D839F8];
        *&v60 = v46;
        (*(v28 + 8))(v36, v29);
        v38(v57, v55);
        sub_20D9D77C8(&v60, v56);
      }

      if (*(&v63 + 1))
      {
        sub_20D9D76EC(&v62, &unk_27C843A80, &qword_20DD94100);
      }
    }

    else
    {
      *(&v63 + 1) = MEMORY[0x277D83B88];
      *&v62 = v44;
      (*(v28 + 8))(v36, v29);
      v38(v57, v55);
      sub_20D9D77C8(&v62, v56);
    }

    if (*(&v65 + 1))
    {
      sub_20D9D76EC(&v64, &unk_27C843A80, &qword_20DD94100);
    }
  }

  else
  {
    *(&v65 + 1) = MEMORY[0x277D839B0];
    LOBYTE(v64) = v43 & 1;
    (*(v28 + 8))(v36, v29);
    v38(v57, v55);
    sub_20D9D77C8(&v64, v56);
  }
}

uint64_t sub_20DA57A64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v15 - v4;
  v6 = OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_observingTask;
  if (!*&v0[OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_observingTask])
  {
    v7 = sub_20DD65114();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    sub_20DD650F4();
    v8 = v0;
    v9 = v0;
    v10 = sub_20DD650E4();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v8;
    v13 = sub_20DA1C514(0, 0, v5, &unk_20DD95C60, v11);
    v14 = *&v9[v6];
    *&v9[v6] = v13;
  }

  return result;
}

uint64_t sub_20DA57BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_20DD63B64();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = sub_20DD63744();
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844750, &qword_20DD95CB0) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844758, &qword_20DD95CB8);
  v4[12] = v12;
  v13 = *(v12 - 8);
  v4[13] = v13;
  v14 = *(v13 + 64) + 15;
  v4[14] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844760, &qword_20DD95CC0);
  v4[16] = v16;
  v17 = *(v16 - 8);
  v4[17] = v17;
  v18 = *(v17 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = sub_20DD650F4();
  v4[20] = sub_20DD650E4();
  v20 = sub_20DD65094();
  v4[21] = v20;
  v4[22] = v19;

  return MEMORY[0x2822009F8](sub_20DA57E50, v20, v19);
}

uint64_t sub_20DA57E50()
{
  v1 = v0[15];
  v2 = v0[3];
  sub_20DD63BB4();
  v3 = sub_20DD65114();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v0[23] = v4;
  *(v4 + 16) = v2;
  v5 = *(MEMORY[0x277D153B8] + 4);
  v6 = v2;
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_20DA57F90;
  v8 = v0[18];
  v9 = v0[15];
  v10 = v0[16];

  return MEMORY[0x28216E948](v8, 0, 0, v9, sub_20DA5A664, v4, v10);
}

uint64_t sub_20DA57F90()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 120);
  v8 = *v0;

  sub_20D9D76EC(v4, &qword_27C8443F0, &qword_20DD93820);
  v5 = *(v1 + 176);
  v6 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_20DA58100, v6, v5);
}

uint64_t sub_20DA58100()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[14];
  sub_20DD63884();
  v4 = v0[19];
  v5 = sub_20DD650E4();
  v0[25] = v5;
  v6 = *(MEMORY[0x277D853A0] + 4);
  v7 = swift_task_alloc();
  v0[26] = v7;
  *v7 = v0;
  v7[1] = sub_20DA581CC;
  v8 = v0[14];
  v9 = v0[12];
  v10 = MEMORY[0x277D85700];

  return MEMORY[0x2821FF728](v0 + 2, v5, v10, v9);
}

uint64_t sub_20DA581CC()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[25];

    v6 = v2[21];
    v7 = v2[22];

    return MEMORY[0x2822009F8](sub_20DA582E0, v6, v7);
  }

  return result;
}

uint64_t sub_20DA582E0()
{
  v1 = *(v0 + 16);
  *(v0 + 216) = v1;
  if (v1)
  {
    v2 = *(v1 + 32);
    *(v0 + 248) = v2;
    v3 = -1;
    v4 = -1 << v2;
    if (-(-1 << v2) < 64)
    {
      v3 = ~(-1 << -(-1 << v2));
    }

    v5 = v3 & *(v1 + 64);
    if (v5)
    {
      v6 = 0;
LABEL_12:
      v22 = *(v0 + 72);
      v21 = *(v0 + 80);
      v24 = *(v0 + 56);
      v23 = *(v0 + 64);
      v26 = *(v0 + 40);
      v25 = *(v0 + 48);
      v46 = *(v0 + 32);
      v49 = (v5 - 1) & v5;
      v27 = __clz(__rbit64(v5)) | (v6 << 6);
      (*(v23 + 16))(v22, *(v1 + 48) + *(v23 + 72) * v27, v24);
      (*(v26 + 16))(v25, *(v1 + 56) + *(v26 + 72) * v27, v46);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844768, &qword_20DD95CC8);
      v29 = *(v28 + 48);
      (*(v23 + 32))(v21, v22, v24);
      (*(v26 + 32))(v21 + v29, v25, v46);
      (*(*(v28 - 8) + 56))(v21, 0, 1, v28);
      v30 = v49;
      v20 = v6;
    }

    else
    {
      v19 = 0;
      v20 = ((63 - v4) >> 6) - 1;
      while (v20 != v19)
      {
        v6 = v19 + 1;
        v5 = *(v1 + 72 + 8 * v19++);
        if (v5)
        {
          goto LABEL_12;
        }
      }

      v44 = *(v0 + 80);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844768, &qword_20DD95CC8);
      (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
      v30 = 0;
    }

    *(v0 + 224) = v30;
    *(v0 + 232) = v20;
    v31 = *(v0 + 88);
    sub_20DA031AC(*(v0 + 80), v31, &qword_27C844750, &qword_20DD95CB0);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844768, &qword_20DD95CC8);
    if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
    {
      v33 = *(v0 + 216);

      v34 = *(v0 + 152);
      v35 = sub_20DD650E4();
      *(v0 + 200) = v35;
      v36 = *(MEMORY[0x277D853A0] + 4);
      v37 = swift_task_alloc();
      *(v0 + 208) = v37;
      *v37 = v0;
      v37[1] = sub_20DA581CC;
      v38 = *(v0 + 112);
      v39 = *(v0 + 96);
      v40 = MEMORY[0x277D85700];

      return MEMORY[0x2821FF728](v0 + 16, v35, v40, v39);
    }

    else
    {
      (*(*(v0 + 40) + 32))(*(v0 + 48), *(v0 + 88) + *(v32 + 48), *(v0 + 32));
      v41 = swift_task_alloc();
      *(v0 + 240) = v41;
      *v41 = v0;
      v41[1] = sub_20DA5878C;
      v42 = *(v0 + 48);
      v43 = *(v0 + 24);

      return sub_20DA58F0C(v42);
    }
  }

  else
  {
    v7 = *(v0 + 160);
    v9 = *(v0 + 136);
    v8 = *(v0 + 144);
    v11 = *(v0 + 120);
    v10 = *(v0 + 128);
    v13 = *(v0 + 104);
    v12 = *(v0 + 112);
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);
    v47 = *(v0 + 72);
    v48 = *(v0 + 48);

    (*(v13 + 8))(v12, v14);
    (*(v9 + 8))(v8, v10);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_20DA5878C()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v6 = *v0;

  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_20DA588AC, v4, v3);
}

uint64_t sub_20DA588AC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  v4 = (*(v3 + 8))(v1, v2);
  v8 = *(v0 + 224);
  v9 = *(v0 + 232);
  if (!v8)
  {
    v11 = ((1 << *(v0 + 248)) + 63) >> 6;
    if (v11 <= (v9 + 1))
    {
      v12 = v9 + 1;
    }

    else
    {
      v12 = ((1 << *(v0 + 248)) + 63) >> 6;
    }

    v13 = v12 - 1;
    while (1)
    {
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        v37 = *(v0 + 80);
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844768, &qword_20DD95CC8);
        (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
        v24 = 0;
        goto LABEL_12;
      }

      v10 = *(v0 + 216);
      v8 = *(v10 + 8 * v14 + 64);
      ++v9;
      if (v8)
      {
        v9 = v14;
        goto LABEL_11;
      }
    }

    __break(1u);
    return MEMORY[0x2821FF728](v4, v5, v6, v7);
  }

  v10 = *(v0 + 216);
LABEL_11:
  v15 = *(v0 + 72);
  v16 = *(v0 + 80);
  v17 = *(v0 + 56);
  v18 = *(v0 + 64);
  v20 = *(v0 + 40);
  v19 = *(v0 + 48);
  v39 = *(v0 + 32);
  v40 = (v8 - 1) & v8;
  v21 = __clz(__rbit64(v8)) | (v9 << 6);
  (*(v18 + 16))(v15, *(v10 + 48) + *(v18 + 72) * v21, v17);
  (*(v20 + 16))(v19, *(v10 + 56) + *(v20 + 72) * v21, v39);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844768, &qword_20DD95CC8);
  v23 = *(v22 + 48);
  (*(v18 + 32))(v16, v15, v17);
  (*(v20 + 32))(v16 + v23, v19, v39);
  (*(*(v22 - 8) + 56))(v16, 0, 1, v22);
  v24 = v40;
  v13 = v9;
LABEL_12:
  *(v0 + 224) = v24;
  *(v0 + 232) = v13;
  v25 = *(v0 + 88);
  sub_20DA031AC(*(v0 + 80), v25, &qword_27C844750, &qword_20DD95CB0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844768, &qword_20DD95CC8);
  if ((*(*(v26 - 8) + 48))(v25, 1, v26) == 1)
  {
    v27 = *(v0 + 216);

    v28 = *(v0 + 152);
    v29 = sub_20DD650E4();
    *(v0 + 200) = v29;
    v30 = *(MEMORY[0x277D853A0] + 4);
    v31 = swift_task_alloc();
    *(v0 + 208) = v31;
    *v31 = v0;
    v31[1] = sub_20DA581CC;
    v32 = *(v0 + 112);
    v7 = *(v0 + 96);
    v6 = MEMORY[0x277D85700];
    v4 = v0 + 16;
    v5 = v29;

    return MEMORY[0x2821FF728](v4, v5, v6, v7);
  }

  (*(*(v0 + 40) + 32))(*(v0 + 48), *(v0 + 88) + *(v26 + 48), *(v0 + 32));
  v33 = swift_task_alloc();
  *(v0 + 240) = v33;
  *v33 = v0;
  v33[1] = sub_20DA5878C;
  v34 = *(v0 + 48);
  v35 = *(v0 + 24);

  return sub_20DA58F0C(v34);
}

uint64_t sub_20DA58CAC(void *a1)
{
  sub_20DD63BB4();
  v2 = a1;
  v3 = sub_20DD63BA4();
  v4 = sub_20DA5A66C(&unk_27C842970, MEMORY[0x277D153C8]);
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844770, &qword_20DD95CD0);
  v7 = MEMORY[0x277D84A98];
  v8 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FF730](sub_20DA5A6B4, v5, v6, v7, v8);
}

uint64_t sub_20DA58DF4()
{
  v1 = OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_observingTask;
  if (*(v0 + OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_observingTask))
  {
    v2 = *(v0 + OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_observingTask);

    sub_20DD65174();

    v3 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

uint64_t sub_20DA58F0C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20DD643E4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = sub_20DD64444();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v9 = sub_20DD64524();
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();
  v12 = sub_20DD63EC4();
  v2[15] = v12;
  v13 = *(v12 - 8);
  v2[16] = v13;
  v14 = *(v13 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v15 = sub_20DD63744();
  v2[19] = v15;
  v16 = *(v15 - 8);
  v2[20] = v16;
  v17 = *(v16 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844740, &qword_20DD95CA0) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v19 = sub_20DD63E94();
  v2[25] = v19;
  v20 = *(v19 - 8);
  v2[26] = v20;
  v21 = *(v20 + 64) + 15;
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA5920C, 0, 0);
}

uint64_t sub_20DA5920C()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[20];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[9];
  v8 = v0[5];
  v9 = v0[2];
  sub_20DD639A4();
  v10 = sub_20DD63E74();
  (*(v2 + 8))(v1, v3);
  v12 = 0;
  v13 = v10 + 64;
  v82 = v10;
  v14 = -1;
  v15 = -1 << *(v10 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(v10 + 64);
  v17 = (63 - v15) >> 6;
  v86 = (v5 + 32);
  v83 = (v6 + 8);
  v95 = *MEMORY[0x277D165C0];
  v94 = *MEMORY[0x277D165B0];
  v93 = (v8 + 104);
  v92 = (v8 + 8);
  v91 = (v7 + 8);
  v88 = (v7 + 32);
  v89 = v4;
  v90 = (v4 + 8);
  v98 = v7;
  v87 = (v7 + 40);
  v18 = MEMORY[0x277D84F98];
  v78 = v5;
  v79 = (v5 + 8);
  v80 = v17;
  v81 = v10 + 64;
  while (1)
  {
    v0[28] = v18;
    v100 = v18;
    if (v16)
    {
      v85 = v12;
      v23 = v12;
      goto LABEL_15;
    }

    v24 = v17 <= v12 + 1 ? v12 + 1 : v17;
    v25 = v24 - 1;
    v26 = &qword_27C844748;
    v27 = &qword_20DD95CA8;
    do
    {
      v23 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        return MEMORY[0x2822009F8](v26, v27, v11);
      }

      if (v23 >= v17)
      {
        v69 = v0[23];
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844748, &qword_20DD95CA8);
        (*(*(v70 - 8) + 56))(v69, 1, 1, v70);
        v84 = 0;
        v85 = v25;
        goto LABEL_16;
      }

      v16 = *(v13 + 8 * v23);
      ++v12;
    }

    while (!v16);
    v85 = v23;
LABEL_15:
    v28 = v0[22];
    v29 = v0[23];
    v31 = v0[18];
    v30 = v0[19];
    v32 = v0[15];
    v84 = (v16 - 1) & v16;
    v33 = __clz(__rbit64(v16)) | (v23 << 6);
    (*(v89 + 16))(v28, *(v82 + 48) + *(v89 + 72) * v33, v30);
    (*(v78 + 16))(v31, *(v82 + 56) + *(v78 + 72) * v33, v32);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844748, &qword_20DD95CA8);
    v35 = *(v34 + 48);
    (*(v89 + 32))(v29, v28, v30);
    (*(v78 + 32))(v29 + v35, v31, v32);
    (*(*(v34 - 8) + 56))(v29, 0, 1, v34);
LABEL_16:
    v36 = v0[24];
    sub_20DA031AC(v0[23], v36, &qword_27C844740, &qword_20DD95CA0);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844748, &qword_20DD95CA8);
    if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
    {
      v73 = v0[22];
      v74 = v0[2];

      sub_20DD63B54();
      sub_20DD650F4();
      v0[29] = sub_20DD650E4();
      v75 = sub_20DD65094();
      v77 = v76;
      v26 = sub_20DA59A80;
      v27 = v75;
      v11 = v77;

      return MEMORY[0x2822009F8](v26, v27, v11);
    }

    v38 = v0[14];
    v39 = v0[12];
    (*v86)(v0[17], v0[24] + *(v37 + 48), v0[15]);
    sub_20DD63EB4();
    v40 = sub_20DD64514();
    (*v83)(v38, v39);
    v26 = v40;
    v99 = *(v40 + 16);
    if (v99)
    {
      break;
    }

LABEL_4:
    v19 = v0[24];
    v20 = v0[19];
    v21 = v0[17];
    v22 = v0[15];

    (*v79)(v21, v22);
    (*v90)(v19, v20);
    v17 = v80;
    v13 = v81;
    v16 = v84;
    v12 = v85;
    v18 = v100;
  }

  v41 = 0;
  v96 = v40;
  v97 = v40 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
  while (1)
  {
    if (v41 >= *(v26 + 2))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v42 = v0[7];
    v43 = v0[6];
    v44 = v0[4];
    v101 = *(v98 + 72);
    v45 = *(v98 + 16);
    v45(v0[11], v97 + v101 * v41, v0[8]);
    sub_20DD643F4();
    v46 = sub_20DD643D4();
    (*(*(v46 - 8) + 104))(v43, v95, v46);
    (*v93)(v43, v94, v44);
    v47 = MEMORY[0x20F325300](v42, v43);
    v48 = *v92;
    (*v92)(v43, v44);
    v48(v42, v44);
    if ((v47 & 1) == 0)
    {
      (*v91)(v0[11], v0[8]);
      goto LABEL_20;
    }

    v49 = v0[21];
    v50 = v0[10];
    v51 = v0[11];
    v52 = v0[8];
    sub_20DD64404();
    v45(v50, v51, v52);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = sub_20D9CB38C(v49);
    v55 = v100[2];
    v56 = (v27 & 1) == 0;
    v26 = (v55 + v56);
    if (__OFADD__(v55, v56))
    {
      goto LABEL_41;
    }

    v57 = v27;
    if (v100[3] < v26)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_20D9D37BC();
    }

LABEL_29:
    v61 = v0[21];
    v62 = v0[19];
    v63 = v0[10];
    v64 = v0[11];
    v65 = v0[8];
    if (v57)
    {
      (*v87)(v100[7] + v54 * v101, v0[10], v0[8]);
      (*v90)(v61, v62);
      (*v91)(v64, v65);
    }

    else
    {
      v100[(v54 >> 6) + 8] |= 1 << v54;
      (*(v89 + 16))(v100[6] + *(v89 + 72) * v54, v61, v62);
      (*v88)(v100[7] + v54 * v101, v63, v65);
      (*(v89 + 8))(v61, v62);
      v26 = (*v91)(v64, v65);
      v66 = v100[2];
      v67 = __OFADD__(v66, 1);
      v68 = v66 + 1;
      if (v67)
      {
        goto LABEL_43;
      }

      v100[2] = v68;
    }

LABEL_20:
    ++v41;
    v26 = v96;
    if (v99 == v41)
    {
      goto LABEL_4;
    }
  }

  v58 = v0[21];
  sub_20D9CF5A0(v26, isUniquelyReferenced_nonNull_native);
  v59 = sub_20D9CB38C(v58);
  if ((v57 & 1) == (v60 & 1))
  {
    v54 = v59;
    goto LABEL_29;
  }

  v71 = v0[19];

  return sub_20DD659E4();
}

uint64_t sub_20DA59A80()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[22];
  v4 = v0[3];

  sub_20DA59C20(v2, v3);

  return MEMORY[0x2822009F8](sub_20DA59B0C, 0, 0);
}

uint64_t sub_20DA59B0C()
{
  v1 = v0[27];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[14];
  v8 = v0[10];
  v11 = v0[7];
  v12 = v0[6];
  (*(v0[20] + 8))(v0[22], v0[19]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_20DA59C20(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v27 = sub_20DD63744();
  v7 = *(v27 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v27);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_characteristicsWithPendingWrites;
  swift_beginAccess();
  v12 = *(v2 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v2 + v11);
  v28 = v14;
  *(v4 + v11) = 0x8000000000000000;
  v16 = sub_20D9CB38C(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v15;
  if (v14[3] >= v19)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v4 + v11) = v14;
      if (v15)
      {
LABEL_9:
        v23 = v14[7];
        v24 = *(v23 + 8 * v16);
        *(v23 + 8 * v16) = a1;

        swift_endAccess();
      }

LABEL_8:
      v22 = sub_20D9D630C(MEMORY[0x277D84F90]);
      (*(v7 + 16))(v10, a2, v27);
      sub_20D9D1E1C(v16, v10, v22, v14);
      goto LABEL_9;
    }

LABEL_11:
    sub_20D9D3518();
    v14 = v28;
    *(v4 + v11) = v28;
    if (v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_20D9CF58C(v19, isUniquelyReferenced_nonNull_native);
  v14 = v28;
  v20 = sub_20D9CB38C(a2);
  if ((v3 & 1) == (v21 & 1))
  {
    v16 = v20;
    *(v4 + v11) = v14;
    if (v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  result = sub_20DD659E4();
  __break(1u);
  return result;
}

id HFCharacteristicValueManager.HomeStateStreamObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HFCharacteristicValueManager.HomeStateStreamObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HFCharacteristicValueManager.HomeStateStreamObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _sSo28HFCharacteristicValueManagerC4HomeE06staticD27DataModelHasInProgressWrite3forSbShySo16HMCharacteristicCG_tF_0(uint64_t a1)
{
  v56 = sub_20DD643E4();
  v2 = *(v56 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v56);
  v55 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v54 = v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844720, &qword_20DD95C50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v44 - v9;
  v11 = sub_20DD64444();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v52 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    sub_20D9C7830();
    sub_20DA5A66C(&unk_280E020F0, sub_20D9C7830);
    result = sub_20DD65284();
    a1 = v62;
    v16 = v63;
    v17 = v64;
    v18 = v65;
    v19 = v66;
  }

  else
  {
    v20 = -1 << *(a1 + 32);
    v16 = a1 + 56;
    v21 = ~v20;
    v22 = -v20;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v19 = v23 & *(a1 + 56);

    v17 = v21;
    v18 = 0;
  }

  v44[1] = v17;
  v24 = (v17 + 64) >> 6;
  v58 = (v12 + 48);
  v50 = (v12 + 32);
  v49 = *MEMORY[0x277D165C0];
  v48 = *MEMORY[0x277D165B0];
  v46 = (v2 + 8);
  v47 = (v2 + 104);
  v45 = (v12 + 8);
  v53 = v11;
  v51 = v24;
  while (1)
  {
    v25 = v18;
    if ((a1 & 0x8000000000000000) == 0)
    {
      break;
    }

    v29 = sub_20DD655F4();
    if (!v29 || (v60 = v29, sub_20D9C7830(), swift_dynamicCast(), v28 = v61, v59 = v19, !v61))
    {
LABEL_21:
      v43 = 0;
      goto LABEL_22;
    }

LABEL_18:
    sub_20DD63C84();
    v30 = sub_20DD63C64();
    sub_20DA55DA4(v28, v10);

    if ((*v58)(v10, 1, v11) == 1)
    {

      result = sub_20D9D76EC(v10, &qword_27C844720, &qword_20DD95C50);
      v19 = v59;
    }

    else
    {
      v44[2] = v19;
      v44[3] = v25;
      v31 = v52;
      (*v50)(v52, v10, v11);
      v32 = v54;
      sub_20DD643F4();
      v33 = sub_20DD643D4();
      v34 = v16;
      v35 = v55;
      (*(*(v33 - 8) + 104))(v55, v49, v33);
      v36 = v10;
      v37 = a1;
      v38 = v56;
      (*v47)(v35, v48, v56);
      v57 = MEMORY[0x20F325300](v32, v35);

      v39 = *v46;
      v40 = v35;
      v16 = v34;
      v24 = v51;
      (*v46)(v40, v38);
      v41 = v32;
      v11 = v53;
      v42 = v38;
      a1 = v37;
      v10 = v36;
      v39(v41, v42);
      result = (*v45)(v31, v11);
      v19 = v59;
      if (v57)
      {
        v43 = 1;
LABEL_22:
        sub_20D9C51CC();
        return v43;
      }
    }
  }

  v26 = v18;
  v27 = v19;
  if (v19)
  {
LABEL_14:
    v59 = (v27 - 1) & v27;
    v28 = *(*(a1 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v27)))));
    if (!v28)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v18 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v18 >= v24)
    {
      goto LABEL_21;
    }

    v27 = *(v16 + 8 * v18);
    ++v26;
    if (v27)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20DA5A4C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D9C76B4;

  return sub_20DA57BB0(a1, v4, v5, v6);
}

uint64_t sub_20DA5A66C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20DA5A6B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*(v1 + 32) + OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_stream);
  sub_20DD63B04();
  v4 = sub_20DD63994();

  *a1 = v4;
  return result;
}

id CameraEventDiagnosticsAttachmentRequestListener.__allocating_init(homeManager:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___HFCameraEventDiagnosticsAttachmentRequestListener_homeManager] = a1;
  v8.receiver = v3;
  v8.super_class = v1;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_27C8424A0 != -1)
  {
    swift_once();
  }

  CFNotificationCenterAddObserver(v6, v5, sub_20DA5CDA8, qword_27C844780, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v5;
}

id CameraEventDiagnosticsAttachmentRequestListener.init(homeManager:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___HFCameraEventDiagnosticsAttachmentRequestListener_homeManager] = a1;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_27C8424A0 != -1)
  {
    swift_once();
  }

  CFNotificationCenterAddObserver(v6, v5, sub_20DA5CDA8, qword_27C844780, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v5;
}

id CameraEventDiagnosticsAttachmentRequestListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CameraEventDiagnosticsAttachmentRequestListener.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_27C8424A0 != -1)
  {
    swift_once();
  }

  CFNotificationCenterRemoveObserver(v2, v0, qword_27C844780, 0);

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_20DA5AB64()
{
  result = sub_20DD64E74();
  qword_27C844780 = result;
  return result;
}

uint64_t sub_20DA5AB9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20DA5AC2C;

  return sub_20DA5AF04();
}

uint64_t sub_20DA5AC2C()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20DA5AD60, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_20DA5AD60()
{
  if (qword_27C8424A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_20DD64C44();
  __swift_project_value_buffer(v2, qword_27C844788);
  v3 = v1;
  v4 = sub_20DD64C24();
  v5 = sub_20DD65364();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 24);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20D9BF000, v4, v5, "Error serializing cloud events: %@", v8, 0xCu);
    sub_20D9D76EC(v9, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v9, -1, -1);
    MEMORY[0x20F327D10](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_20DA5AF04()
{
  v16 = *MEMORY[0x277D85DE8];
  v1[7] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442E0, &qword_20DD95D90) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v3 = sub_20DD63484();
  v1[9] = v3;
  v4 = *(v3 - 8);
  v1[10] = v4;
  v5 = *(v4 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v7 = sub_20DD63744();
  v1[14] = v7;
  v8 = *(v7 - 8);
  v1[15] = v8;
  v9 = *(v8 + 64) + 15;
  v1[16] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442B8, &qword_20DD94B60) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v11 = sub_20DD63514();
  v1[18] = v11;
  v12 = *(v11 - 8);
  v1[19] = v12;
  v13 = *(v12 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20DA5B18C, 0, 0);
}

uint64_t sub_20DA5B18C()
{
  v132 = v0;
  v131[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  type metadata accessor for CameraEventDebugLogger();
  static CameraEventDebugLogger.debugLogDirectory.getter(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20D9D76EC(*(v0 + 136), &qword_27C8442B8, &qword_20DD94B60);
    if (qword_27C8424A8 != -1)
    {
LABEL_45:
      swift_once();
    }

    v4 = sub_20DD64C44();
    __swift_project_value_buffer(v4, qword_27C844788);
    v5 = sub_20DD64C24();
    v6 = sub_20DD65364();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20D9BF000, v5, v6, "Could not get debug log directory", v7, 2u);
      MEMORY[0x20F327D10](v7, -1, -1);
    }

    goto LABEL_6;
  }

  (*(*(v0 + 152) + 32))(*(v0 + 192), *(v0 + 136), *(v0 + 144));
  v21 = [objc_opt_self() defaultManager];
  *(v0 + 200) = v21;
  sub_20DD63504();
  v22 = sub_20DD64E74();

  v23 = [v21 fileExistsAtPath_];

  if (!v23)
  {
    if (qword_27C8424A8 != -1)
    {
      swift_once();
    }

    v76 = *(v0 + 192);
    v78 = *(v0 + 152);
    v77 = *(v0 + 160);
    v79 = *(v0 + 144);
    v80 = sub_20DD64C44();
    __swift_project_value_buffer(v80, qword_27C844788);
    (*(v78 + 16))(v77, v76, v79);
    v81 = sub_20DD64C24();
    v82 = sub_20DD65344();
    v83 = os_log_type_enabled(v81, v82);
    v84 = *(v0 + 192);
    v86 = *(v0 + 152);
    v85 = *(v0 + 160);
    v87 = *(v0 + 144);
    if (v83)
    {
      v88 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v131[0] = v129;
      *v88 = 136315138;
      sub_20DA62600(&unk_27C844840, MEMORY[0x277CC9260]);
      v89 = sub_20DD65934();
      v126 = v84;
      v91 = v90;
      v92 = *(v86 + 8);
      v92(v85, v87);
      v93 = sub_20D9E0B38(v89, v91, v131);

      *(v88 + 4) = v93;
      _os_log_impl(&dword_20D9BF000, v81, v82, "Debug log directory does not exist: %s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v129);
      MEMORY[0x20F327D10](v129, -1, -1);
      MEMORY[0x20F327D10](v88, -1, -1);

      v92(v126, v87);
    }

    else
    {

      v98 = *(v86 + 8);
      v98(v85, v87);
      v98(v84, v87);
    }

LABEL_6:
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    v11 = *(v0 + 168);
    v10 = *(v0 + 176);
    v12 = *(v0 + 160);
    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);
    v127 = *(v0 + 64);

    v18 = *(v0 + 8);
    v19 = *MEMORY[0x277D85DE8];
LABEL_7:

    return v18();
  }

  v24 = *(v0 + 192);
  v25 = sub_20DD634D4();
  type metadata accessor for URLResourceKey(0);
  v26 = sub_20DD64FB4();
  *(v0 + 48) = 0;
  v27 = [v21 contentsOfDirectoryAtURL:v25 includingPropertiesForKeys:v26 options:0 error:v0 + 48];

  v28 = *(v0 + 48);
  if (!v27)
  {
    v99 = *(v0 + 192);
    v101 = *(v0 + 144);
    v100 = *(v0 + 152);
    v102 = v28;
    sub_20DD634A4();

    swift_willThrow();
    (*(v100 + 8))(v99, v101);
    v104 = *(v0 + 184);
    v103 = *(v0 + 192);
    v106 = *(v0 + 168);
    v105 = *(v0 + 176);
    v107 = *(v0 + 160);
    v109 = *(v0 + 128);
    v108 = *(v0 + 136);
    v111 = *(v0 + 96);
    v110 = *(v0 + 104);
    v112 = *(v0 + 88);
    v130 = *(v0 + 64);

    v18 = *(v0 + 8);
    v113 = *MEMORY[0x277D85DE8];
    goto LABEL_7;
  }

  v29 = *(v0 + 144);
  v30 = sub_20DD64FD4();
  *(v0 + 208) = v30;
  v31 = v28;

  v32 = sub_20D9D652C(MEMORY[0x277D84F90]);
  v33 = v32;
  v34 = *(v30 + 16);
  *(v0 + 216) = v34;
  if (!v34)
  {
LABEL_34:
    *(v0 + 280) = v33;
    v94 = *(v0 + 208);

    if (*(v33 + 16))
    {
      v95 = swift_task_alloc();
      *(v0 + 288) = v95;
      *v95 = v0;
      v95[1] = sub_20DA5C848;
      v96 = *(v0 + 56);
      v97 = *MEMORY[0x277D85DE8];

      return sub_20DA5D408(v33);
    }

    v114 = *(v0 + 200);
    (*(*(v0 + 152) + 8))(*(v0 + 192), *(v0 + 144));

    goto LABEL_6;
  }

  v35 = 0;
  *(v0 + 304) = *(*(v0 + 152) + 80);
  v128 = v32;
  while (1)
  {
    *(v0 + 232) = v35;
    *(v0 + 240) = v33;
    *(v0 + 224) = v33;
    v37 = *(v0 + 208);
    if (v35 >= *(v37 + 16))
    {
      __break(1u);
      goto LABEL_45;
    }

    v38 = *(v0 + 184);
    v39 = *(v0 + 144);
    v40 = *(v0 + 152);
    v42 = *(v40 + 16);
    v40 += 16;
    v41 = v42;
    v43 = v37 + ((*(v0 + 304) + 32) & ~*(v0 + 304)) + *(v40 + 56) * v35;
    *(v0 + 248) = v42;
    *(v0 + 256) = v40 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v42(v38, v43, v39);
    if (sub_20DD634B4() == 1852797802 && v44 == 0xE400000000000000)
    {
      break;
    }

    v45 = sub_20DD65974();

    if (v45)
    {
      goto LABEL_22;
    }

    (*(*(v0 + 152) + 8))(*(v0 + 184), *(v0 + 144));
LABEL_16:
    v35 = *(v0 + 232) + 1;
    if (v35 == *(v0 + 216))
    {
      goto LABEL_34;
    }
  }

LABEL_22:
  v46 = *(v0 + 184);
  *(v0 + 16) = sub_20DD634C4();
  *(v0 + 24) = v47;
  *(v0 + 32) = 95;
  *(v0 + 40) = 0xE100000000000000;
  sub_20D9C8A28();
  v48 = sub_20DD654B4();

  if (v48[2] != 3)
  {
LABEL_25:
    if (qword_27C8424A8 != -1)
    {
      swift_once();
    }

    v54 = *(v0 + 184);
    v55 = *(v0 + 168);
    v56 = *(v0 + 144);
    v57 = sub_20DD64C44();
    __swift_project_value_buffer(v57, qword_27C844788);
    v41(v55, v54, v56);

    v58 = sub_20DD64C24();
    v59 = sub_20DD65364();

    v60 = os_log_type_enabled(v58, v59);
    v61 = *(v0 + 184);
    v62 = *(v0 + 168);
    v63 = *(v0 + 144);
    v64 = *(v0 + 152);
    if (v60)
    {
      v65 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v131[0] = v124;
      *v65 = 136315394;
      v66 = sub_20DD63504();
      v67 = v63;
      v125 = v63;
      v69 = v68;
      v70 = *(v64 + 8);
      v70(v62, v67);
      v71 = sub_20D9E0B38(v66, v69, v131);

      *(v65 + 4) = v71;
      *(v65 + 12) = 2080;
      v72 = MEMORY[0x20F325F40](v48, MEMORY[0x277D837D0]);
      v74 = v73;

      v75 = sub_20D9E0B38(v72, v74, v131);

      *(v65 + 14) = v75;
      _os_log_impl(&dword_20D9BF000, v58, v59, "Could not extract UUID from file at path: %s; components: %s", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v124, -1, -1);
      MEMORY[0x20F327D10](v65, -1, -1);

      v70(v61, v125);
    }

    else
    {

      v36 = *(v64 + 8);
      v36(v62, v63);
      v36(v61, v63);
    }

    v33 = v128;
    goto LABEL_16;
  }

  v49 = *(v0 + 112);
  v50 = *(v0 + 120);
  v51 = *(v0 + 104);
  v52 = v48[6];
  v53 = v48[7];

  sub_20DD636D4();

  if ((*(v50 + 48))(v51, 1, v49) == 1)
  {
    sub_20D9D76EC(*(v0 + 104), &unk_27C843A70, &qword_20DD94260);
    goto LABEL_25;
  }

  v116 = *(v0 + 120);
  v115 = *(v0 + 128);
  v118 = *(v0 + 104);
  v117 = *(v0 + 112);

  (*(v116 + 32))(v115, v118, v117);
  v119 = swift_task_alloc();
  *(v0 + 264) = v119;
  *v119 = v0;
  v119[1] = sub_20DA5BD38;
  v120 = *(v0 + 184);
  v122 = *(v0 + 56);
  v121 = *(v0 + 64);
  v123 = *MEMORY[0x277D85DE8];

  return sub_20DA5CE00(v121, v120);
}

uint64_t sub_20DA5BD38()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 264);
  v10 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = *(v2 + 240);
    v5 = *(v2 + 208);

    v6 = sub_20DA5CAE8;
  }

  else
  {
    v6 = sub_20DA5BE94;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20DA5BE94()
{
  v116 = v0;
  v115[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20D9D76EC(v3, &qword_27C8442E0, &qword_20DD95D90);
    if (qword_27C8424A8 != -1)
    {
LABEL_37:
      swift_once();
    }

    v5 = *(v0 + 248);
    v4 = *(v0 + 256);
    v6 = *(v0 + 176);
    v7 = *(v0 + 184);
    v8 = *(v0 + 144);
    v9 = sub_20DD64C44();
    __swift_project_value_buffer(v9, qword_27C844788);
    v5(v6, v7, v8);
    v10 = sub_20DD64C24();
    v11 = sub_20DD65364();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 176);
    v14 = *(v0 + 184);
    v16 = *(v0 + 144);
    v15 = *(v0 + 152);
    v17 = *(v0 + 120);
    v18 = *(v0 + 128);
    v111 = *(v0 + 112);
    if (v12)
    {
      v19 = swift_slowAlloc();
      v108 = v18;
      v20 = swift_slowAlloc();
      v115[0] = v20;
      *v19 = 136315138;
      v103 = v11;
      v21 = sub_20DD63504();
      v106 = v14;
      v23 = v22;
      v24 = *(v15 + 8);
      v24(v13, v16);
      v25 = sub_20D9E0B38(v21, v23, v115);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_20D9BF000, v10, v103, "Could not convert file to DateInterval: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x20F327D10](v20, -1, -1);
      MEMORY[0x20F327D10](v19, -1, -1);

      (*(v17 + 8))(v108, v111);
      v24(v106, v16);
    }

    else
    {

      v34 = *(v15 + 8);
      v34(v13, v16);
      (*(v17 + 8))(v18, v111);
      v34(v14, v16);
    }

    v33 = *(v0 + 240);
    v113 = *(v0 + 224);
  }

  else
  {
    v26 = *(v0 + 224);
    v27 = *(v0 + 152);
    v109 = *(v0 + 144);
    v112 = *(v0 + 184);
    v29 = *(v0 + 120);
    v28 = *(v0 + 128);
    v107 = *(v0 + 112);
    v31 = *(v0 + 88);
    v30 = *(v0 + 96);
    (*(v2 + 32))(v30, v3, v1);
    (*(v2 + 16))(v31, v30, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v115[0] = v26;
    sub_20D9D1588(v31, v28, isUniquelyReferenced_nonNull_native);
    (*(v2 + 8))(v30, v1);
    (*(v29 + 8))(v28, v107);
    (*(v27 + 8))(v112, v109);
    v33 = v26;
    v113 = v26;
  }

  v35 = *(v0 + 232) + 1;
  if (v35 == *(v0 + 216))
  {
LABEL_9:
    *(v0 + 280) = v33;
    v36 = *(v0 + 208);

    if (*(v33 + 16))
    {
      v37 = swift_task_alloc();
      *(v0 + 288) = v37;
      *v37 = v0;
      v37[1] = sub_20DA5C848;
      v38 = *(v0 + 56);
      v39 = *MEMORY[0x277D85DE8];

      return sub_20DA5D408(v33);
    }

    else
    {
      v81 = *(v0 + 200);
      (*(*(v0 + 152) + 8))(*(v0 + 192), *(v0 + 144));

      v83 = *(v0 + 184);
      v82 = *(v0 + 192);
      v85 = *(v0 + 168);
      v84 = *(v0 + 176);
      v86 = *(v0 + 160);
      v88 = *(v0 + 128);
      v87 = *(v0 + 136);
      v90 = *(v0 + 96);
      v89 = *(v0 + 104);
      v91 = *(v0 + 88);
      v114 = *(v0 + 64);

      v92 = *(v0 + 8);
      v93 = *MEMORY[0x277D85DE8];

      return v92();
    }
  }

  v110 = v33;
  while (1)
  {
    *(v0 + 232) = v35;
    *(v0 + 240) = v33;
    *(v0 + 224) = v113;
    v42 = *(v0 + 208);
    if (v35 >= *(v42 + 16))
    {
      __break(1u);
      goto LABEL_37;
    }

    v43 = *(v0 + 184);
    v44 = *(v0 + 144);
    v45 = *(v0 + 152);
    v47 = *(v45 + 16);
    v45 += 16;
    v46 = v47;
    v48 = v42 + ((*(v0 + 304) + 32) & ~*(v0 + 304)) + *(v45 + 56) * v35;
    *(v0 + 248) = v47;
    *(v0 + 256) = v45 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v47(v43, v48, v44);
    if (sub_20DD634B4() == 1852797802 && v49 == 0xE400000000000000)
    {
      break;
    }

    v50 = sub_20DD65974();

    if (v50)
    {
      goto LABEL_22;
    }

    (*(*(v0 + 152) + 8))(*(v0 + 184), *(v0 + 144));
LABEL_16:
    v35 = *(v0 + 232) + 1;
    if (v35 == *(v0 + 216))
    {
      goto LABEL_9;
    }
  }

LABEL_22:
  v51 = *(v0 + 184);
  *(v0 + 16) = sub_20DD634C4();
  *(v0 + 24) = v52;
  *(v0 + 32) = 95;
  *(v0 + 40) = 0xE100000000000000;
  sub_20D9C8A28();
  v53 = sub_20DD654B4();

  if (v53[2] != 3)
  {
LABEL_25:
    if (qword_27C8424A8 != -1)
    {
      swift_once();
    }

    v59 = *(v0 + 184);
    v60 = *(v0 + 168);
    v61 = *(v0 + 144);
    v62 = sub_20DD64C44();
    __swift_project_value_buffer(v62, qword_27C844788);
    v46(v60, v59, v61);

    v63 = sub_20DD64C24();
    v64 = sub_20DD65364();

    v65 = os_log_type_enabled(v63, v64);
    v66 = *(v0 + 184);
    v67 = *(v0 + 168);
    v68 = *(v0 + 144);
    v69 = *(v0 + 152);
    if (v65)
    {
      v70 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v115[0] = v104;
      *v70 = 136315394;
      v71 = sub_20DD63504();
      v72 = v68;
      log = v68;
      v74 = v73;
      v75 = *(v69 + 8);
      v75(v67, v72);
      v76 = sub_20D9E0B38(v71, v74, v115);

      *(v70 + 4) = v76;
      *(v70 + 12) = 2080;
      v77 = MEMORY[0x20F325F40](v53, MEMORY[0x277D837D0]);
      v79 = v78;

      v80 = sub_20D9E0B38(v77, v79, v115);

      *(v70 + 14) = v80;
      _os_log_impl(&dword_20D9BF000, v63, v64, "Could not extract UUID from file at path: %s; components: %s", v70, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v104, -1, -1);
      MEMORY[0x20F327D10](v70, -1, -1);

      v75(v66, log);
    }

    else
    {

      v41 = *(v69 + 8);
      v41(v67, v68);
      v41(v66, v68);
    }

    v33 = v110;
    goto LABEL_16;
  }

  v54 = *(v0 + 112);
  v55 = *(v0 + 120);
  v56 = *(v0 + 104);
  v57 = v53[6];
  v58 = v53[7];

  sub_20DD636D4();

  if ((*(v55 + 48))(v56, 1, v54) == 1)
  {
    sub_20D9D76EC(*(v0 + 104), &unk_27C843A70, &qword_20DD94260);
    goto LABEL_25;
  }

  v95 = *(v0 + 120);
  v94 = *(v0 + 128);
  v97 = *(v0 + 104);
  v96 = *(v0 + 112);

  (*(v95 + 32))(v94, v97, v96);
  v98 = swift_task_alloc();
  *(v0 + 264) = v98;
  *v98 = v0;
  v98[1] = sub_20DA5BD38;
  v99 = *(v0 + 184);
  v101 = *(v0 + 56);
  v100 = *(v0 + 64);
  v102 = *MEMORY[0x277D85DE8];

  return sub_20DA5CE00(v100, v99);
}

uint64_t sub_20DA5C848()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 280);

  if (v0)
  {
    v6 = sub_20DA5CC64;
  }

  else
  {
    v6 = sub_20DA5C9A8;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20DA5C9A8()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  (*(v3 + 8))(v1, v2);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v8 = *(v0 + 160);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 88);
  v17 = *(v0 + 64);

  v14 = *(v0 + 8);
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

uint64_t sub_20DA5CAE8()
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 112);

  (*(v6 + 8))(v5, v7);
  v8 = *(v4 + 8);
  v8(v2, v3);
  v8(v1, v3);
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v12 = *(v0 + 168);
  v11 = *(v0 + 176);
  v13 = *(v0 + 160);
  v15 = *(v0 + 128);
  v14 = *(v0 + 136);
  v17 = *(v0 + 96);
  v16 = *(v0 + 104);
  v18 = *(v0 + 88);
  v22 = *(v0 + 272);
  v23 = *(v0 + 64);

  v19 = *(v0 + 8);
  v20 = *MEMORY[0x277D85DE8];

  return v19();
}

uint64_t sub_20DA5CC64()
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  (*(v3 + 8))(v1, v2);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v8 = *(v0 + 160);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 88);
  v17 = *(v0 + 296);
  v18 = *(v0 + 64);

  v14 = *(v0 + 8);
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

uint64_t sub_20DA5CE00(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_20DD63514();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20DA5CEF0, 0, 0);
}

uint64_t sub_20DA5CEF0()
{
  v47 = v0;
  v46[1] = *MEMORY[0x277D85DE8];
  v1 = v0[9];
  v5 = sub_20DD63524();
  v7 = v6;
  v8 = objc_opt_self();
  v9 = sub_20DD63534();
  v0[6] = 0;
  v10 = [v8 JSONObjectWithData:v9 options:0 error:v0 + 6];

  v11 = v0[6];
  if (v10)
  {
    v12 = v11;
    sub_20DD654E4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844850, &qword_20DD946F8);
    if (swift_dynamicCast())
    {
      v13 = v0[7];
      if (qword_27C8424A8 != -1)
      {
        swift_once();
      }

      v14 = sub_20DD64C44();
      __swift_project_value_buffer(v14, qword_27C844788);

      v15 = sub_20DD64C24();
      v16 = sub_20DD65354();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v46[0] = v18;
        *v17 = 136315138;
        v19 = sub_20DD64DD4();
        v21 = sub_20D9E0B38(v19, v20, v46);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_20D9BF000, v15, v16, "Parsed DateInterval JSON: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x20F327D10](v18, -1, -1);
        MEMORY[0x20F327D10](v17, -1, -1);
      }

      sub_20DA5DF28(v13, v0[8]);

      sub_20DA62594(v5, v7);
    }

    else
    {
      if (qword_27C8424A8 != -1)
      {
        swift_once();
      }

      v24 = v0[12];
      v23 = v0[13];
      v25 = v0[11];
      v26 = v0[9];
      v27 = sub_20DD64C44();
      __swift_project_value_buffer(v27, qword_27C844788);
      (*(v24 + 16))(v23, v26, v25);
      v28 = sub_20DD64C24();
      v29 = sub_20DD65364();
      v30 = os_log_type_enabled(v28, v29);
      v32 = v0[12];
      v31 = v0[13];
      v33 = v0[11];
      if (v30)
      {
        v34 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v46[0] = v45;
        *v34 = 136315138;
        v35 = sub_20DD63504();
        log = v28;
        v37 = v36;
        (*(v32 + 8))(v31, v33);
        v38 = sub_20D9E0B38(v35, v37, v46);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_20D9BF000, log, v29, "Could not parse JSON as dictionary from: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x20F327D10](v45, -1, -1);
        MEMORY[0x20F327D10](v34, -1, -1);
        sub_20DA62594(v5, v7);
      }

      else
      {
        sub_20DA62594(v5, v7);

        (*(v32 + 8))(v31, v33);
      }

      v39 = v0[8];
      v40 = sub_20DD63484();
      (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
    }

    v41 = v0[13];

    v3 = v0[1];
    v42 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v22 = v11;
    sub_20DD634A4();

    swift_willThrow();
    sub_20DA62594(v5, v7);
    v2 = v0[13];

    v3 = v0[1];
    v4 = *MEMORY[0x277D85DE8];
  }

  return v3();
}

uint64_t sub_20DA5D408(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20DD63744();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_20DD63484();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA5D530, 0, 0);
}

uint64_t sub_20DA5D530()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  *(v0 + 88) = sub_20D9F4AB8(v3);
  v4 = [*(v2 + OBJC_IVAR___HFCameraEventDiagnosticsAttachmentRequestListener_homeManager) homes];
  sub_20D9D7510(0, &qword_280E01EF0, 0x277CD1A60);
  v5 = sub_20DD64FD4();
  *(v0 + 96) = v5;

  if (v5 >> 62)
  {
LABEL_31:
    result = sub_20DD655B4();
    *(v0 + 104) = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_32:

    v38 = *(v0 + 96);
    v39 = *(v0 + 72);
    v40 = *(v0 + 80);
    v41 = *(v0 + 48);

    v42 = *(v0 + 8);

    return v42();
  }

  result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 104) = result;
  if (!result)
  {
    goto LABEL_32;
  }

LABEL_3:
  v7 = 0;
  while (1)
  {
    v8 = *(v0 + 96);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x20F326680](v7);
    }

    else
    {
      if (v7 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v9 = *(v8 + 8 * v7 + 32);
    }

    *(v0 + 112) = v9;
    *(v0 + 120) = v7 + 1;
    if (__OFADD__(v7, 1))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v10 = sub_20DA60480(*(v0 + 88), v9);
    *(v0 + 128) = v10;
    if (v10 >> 62)
    {
      break;
    }

    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 136) = v11;
    if (v11)
    {
      goto LABEL_11;
    }

LABEL_22:
    v26 = *(v0 + 128);
    v27 = *(v0 + 88);

    if (*(v27 + 16))
    {
      v7 = *(v0 + 120);
      if (v7 != *(v0 + 104))
      {
        continue;
      }
    }

    v28 = *(v0 + 88);
    goto LABEL_32;
  }

  v25 = sub_20DD655B4();
  *(v0 + 136) = v25;
  if (!v25)
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = 0;
  while (1)
  {
    *(v0 + 144) = 0;
    v16 = *(v0 + 128);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x20F326680](v12);
    }

    else
    {
      if (v12 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v17 = *(v16 + 8 * v12 + 32);
    }

    v18 = v17;
    *(v0 + 152) = v17;
    *(v0 + 160) = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v19 = *(v0 + 48);
    v20 = *(v0 + 16);
    v21 = [v17 uniqueIdentifier];
    sub_20DD63714();

    if (*(v20 + 16))
    {
      v22 = *(v0 + 16);
      v23 = sub_20D9CB38C(*(v0 + 48));
      if (v24)
      {
        break;
      }
    }

    v14 = *(v0 + 40);
    v13 = *(v0 + 48);
    v15 = *(v0 + 32);

    (*(v14 + 8))(v13, v15);
    v12 = *(v0 + 160);
    if (v12 == *(v0 + 136))
    {
      goto LABEL_22;
    }
  }

  v30 = *(v0 + 72);
  v29 = *(v0 + 80);
  v31 = *(v0 + 56);
  v32 = *(v0 + 64);
  v34 = *(v0 + 40);
  v33 = *(v0 + 48);
  v35 = *(v0 + 32);
  (*(v32 + 16))(v30, *(*(v0 + 16) + 56) + *(v32 + 72) * v23, v31);
  (*(v34 + 8))(v33, v35);
  (*(v32 + 32))(v29, v30, v31);
  v36 = swift_task_alloc();
  *(v0 + 168) = v36;
  *v36 = v0;
  v36[1] = sub_20DA5D8F4;
  v37 = *(v0 + 80);

  return sub_20DA611A4(v37, v18);
}

uint64_t sub_20DA5D8F4()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = v2[16];
    v5 = v2[11];
    v6 = v2[12];

    v7 = sub_20DA5DD84;
  }

  else
  {
    v7 = sub_20DA5DA2C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

id sub_20DA5DA2C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  result = (*(v4 + 8))(v2, v3);
  v6 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v7 = *(v0 + 160);
      if (v7 == *(v0 + 136))
      {
        while (1)
        {
          v8 = *(v0 + 128);
          v9 = *(v0 + 88);

          if (v6 == *(v9 + 16) || (v10 = *(v0 + 120), v10 == *(v0 + 104)))
          {
            v24 = *(v0 + 88);

            v25 = *(v0 + 96);
            v26 = *(v0 + 72);
            v27 = *(v0 + 80);
            v28 = *(v0 + 48);

            v29 = *(v0 + 8);

            return v29();
          }

          v11 = *(v0 + 96);
          if ((v11 & 0xC000000000000001) != 0)
          {
            result = MEMORY[0x20F326680](*(v0 + 120));
          }

          else
          {
            if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_30;
            }

            result = *(v11 + 8 * v10 + 32);
          }

          *(v0 + 112) = result;
          *(v0 + 120) = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          v12 = sub_20DA60480(*(v0 + 88), result);
          *(v0 + 128) = v12;
          if (v12 >> 62)
          {
            result = sub_20DD655B4();
            *(v0 + 136) = result;
            if (result)
            {
LABEL_14:
              v7 = 0;
              goto LABEL_15;
            }
          }

          else
          {
            result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            *(v0 + 136) = result;
            if (result)
            {
              goto LABEL_14;
            }
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_15:
      *(v0 + 144) = v6;
      v13 = *(v0 + 128);
      if ((v13 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x20F326680](v7);
      }

      else
      {
        if (v7 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        result = *(v13 + 8 * v7 + 32);
      }

      v14 = result;
      *(v0 + 152) = result;
      *(v0 + 160) = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_31;
      }

      v15 = *(v0 + 48);
      v16 = *(v0 + 16);
      v17 = [result uniqueIdentifier];
      sub_20DD63714();

      if (*(v16 + 16))
      {
        v18 = *(v0 + 16);
        v19 = sub_20D9CB38C(*(v0 + 48));
        if (v20)
        {
          break;
        }
      }

      v22 = *(v0 + 40);
      v21 = *(v0 + 48);
      v23 = *(v0 + 32);

      result = (*(v22 + 8))(v21, v23);
    }

    v31 = *(v0 + 72);
    v30 = *(v0 + 80);
    v32 = *(v0 + 56);
    v33 = *(v0 + 64);
    v35 = *(v0 + 40);
    v34 = *(v0 + 48);
    v36 = *(v0 + 32);
    (*(v33 + 16))(v31, *(*(v0 + 16) + 56) + *(v33 + 72) * v19, v32);
    (*(v35 + 8))(v34, v36);
    (*(v33 + 32))(v30, v31, v32);
    v37 = swift_task_alloc();
    *(v0 + 168) = v37;
    *v37 = v0;
    v37[1] = sub_20DA5D8F4;
    v38 = *(v0 + 80);

    return sub_20DA611A4(v38, v14);
  }

  return result;
}

uint64_t sub_20DA5DD84()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);

  (*(v5 + 8))(v3, v4);

  v7 = *(v0 + 8);
  v8 = *(v0 + 176);

  return v7();
}

uint64_t sub_20DA5DE3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443A0, &qword_20DD94E00);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844870, &unk_20DD95DC8);
    **(*(v4 + 64) + 40) = sub_20DD64FD4();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_20DA5DF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20DD636C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v71 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v71 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v71 - v16;
  if (*(a1 + 16) && (v18 = sub_20D9CB170(0x7461447472617473, 0xE900000000000065), (v19 & 1) != 0) && (sub_20D9D7174(*(a1 + 56) + 32 * v18, v77), (swift_dynamicCast() & 1) != 0))
  {
    v72 = v5;
    v73 = a2;
    v20 = v75;
    v21 = v76;
    v22 = [objc_opt_self() hf_rfc3339Formatter];
    v23 = sub_20DD64E74();
    v74 = v22;
    v24 = [v22 dateFromString_];

    if (v24)
    {

      sub_20DD63674();

      v25 = v72;
      if (*(a1 + 16) && (v26 = sub_20D9CB170(0x65746144646E65, 0xE700000000000000), (v27 & 1) != 0) && (sub_20D9D7174(*(a1 + 56) + 32 * v26, v77), (swift_dynamicCast() & 1) != 0))
      {
        v28 = v75;
        v29 = v76;
        v30 = sub_20DD64E74();
        v31 = [v74 dateFromString_];

        if (v31)
        {

          sub_20DD63674();

          v32 = *(v25 + 16);
          v32(v12, v17, v4);
          v32(v9, v15, v4);
          a2 = v73;
          sub_20DD63444();

          v33 = *(v25 + 8);
          v33(v15, v4);
          v33(v17, v4);
          v34 = 0;
          goto LABEL_15;
        }

        v63 = v29;
        v64 = v28;
        if (qword_27C8424A8 != -1)
        {
          swift_once();
        }

        v65 = sub_20DD64C44();
        __swift_project_value_buffer(v65, qword_27C844788);
        v66 = v63;

        v46 = sub_20DD64C24();
        v67 = sub_20DD65364();

        if (!os_log_type_enabled(v46, v67))
        {

          goto LABEL_21;
        }

        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v77[0] = v69;
        *v68 = 136315138;
        v70 = sub_20D9E0B38(v64, v66, v77);

        *(v68 + 4) = v70;
        _os_log_impl(&dword_20D9BF000, v46, v67, "Could not convert endDate string to date: %s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x20F327D10](v69, -1, -1);
        v53 = v68;
      }

      else
      {
        if (qword_27C8424A8 != -1)
        {
          swift_once();
        }

        v45 = sub_20DD64C44();
        __swift_project_value_buffer(v45, qword_27C844788);

        v46 = sub_20DD64C24();
        v47 = sub_20DD65364();

        if (!os_log_type_enabled(v46, v47))
        {
          goto LABEL_21;
        }

        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v77[0] = v49;
        *v48 = 136315138;
        v50 = sub_20DD64DD4();
        v52 = sub_20D9E0B38(v50, v51, v77);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_20D9BF000, v46, v47, "No endDate attribute in %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x20F327D10](v49, -1, -1);
        v53 = v48;
      }

      MEMORY[0x20F327D10](v53, -1, -1);
LABEL_21:

      a2 = v73;
      (*(v25 + 16))(v12, v17, v4);
      sub_20DD63454();

      (*(v25 + 8))(v17, v4);
      v34 = 0;
      goto LABEL_15;
    }

    v54 = v20;
    if (qword_27C8424A8 != -1)
    {
      swift_once();
    }

    v55 = sub_20DD64C44();
    __swift_project_value_buffer(v55, qword_27C844788);

    v56 = sub_20DD64C24();
    v57 = sub_20DD65364();

    v58 = os_log_type_enabled(v56, v57);
    v59 = v74;
    if (v58)
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v77[0] = v61;
      *v60 = 136315138;
      v62 = sub_20D9E0B38(v54, v21, v77);

      *(v60 + 4) = v62;
      _os_log_impl(&dword_20D9BF000, v56, v57, "Could not convert startDate string to date: %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x20F327D10](v61, -1, -1);
      MEMORY[0x20F327D10](v60, -1, -1);
    }

    else
    {
    }

    v34 = 1;
    a2 = v73;
  }

  else
  {
    if (qword_27C8424A8 != -1)
    {
      swift_once();
    }

    v35 = sub_20DD64C44();
    __swift_project_value_buffer(v35, qword_27C844788);

    v36 = sub_20DD64C24();
    v37 = sub_20DD65364();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v77[0] = v39;
      *v38 = 136315138;
      v40 = sub_20DD64DD4();
      v42 = sub_20D9E0B38(v40, v41, v77);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_20D9BF000, v36, v37, "No startDate attribute in %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x20F327D10](v39, -1, -1);
      MEMORY[0x20F327D10](v38, -1, -1);
    }

    v34 = 1;
  }

LABEL_15:
  v43 = sub_20DD63484();
  return (*(*(v43 - 8) + 56))(a2, v34, 1, v43);
}

uint64_t sub_20DA5E8B8(id *a1, void **a2)
{
  v4 = sub_20DD636C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v25 - v10;
  v12 = *a2;
  v13 = [*a1 dateOfOccurrence];
  sub_20DD63674();

  v14 = [v12 dateOfOccurrence];
  sub_20DD63674();

  if ((sub_20DD63664() & 1) != 0 && (objc_opt_self(), (v15 = swift_dynamicCastObjCClass()) != 0) && (v16 = v15, objc_opt_self(), (v17 = swift_dynamicCastObjCClass()) != 0))
  {
    v18 = v17;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v19 = [v16 quality];
    v20 = [v18 quality];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v21 = *(v5 + 8);
    v21(v9, v4);
    v21(v11, v4);
    v22 = v19 < v20;
  }

  else
  {
    v22 = sub_20DD63644();
    v23 = *(v5 + 8);
    v23(v9, v4);
    v23(v11, v4);
  }

  return v22 & 1;
}

uint64_t sub_20DA5EC48()
{
  v0 = sub_20DD64C44();
  __swift_allocate_value_buffer(v0, qword_27C844788);
  __swift_project_value_buffer(v0, qword_27C844788);
  return sub_20DD64C34();
}

uint64_t sub_20DA5ECD0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_20DA73C60(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_20DA5ED4C(v6);
  return sub_20DD65764();
}

uint64_t sub_20DA5ED4C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20DD65924();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844370, &qword_20DD94DA0);
        v6 = sub_20DD65034();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_20DA5F170(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_20DA5EE5C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20DA5EE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v42 = sub_20DD636C4();
  v8 = *(*(v42 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v42);
  v44 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v35 - v13;
  v36 = a2;
  if (a3 != a2)
  {
    v43 = *a4;
    v41 = (v12 + 8);
    v15 = v43 + 8 * a3 - 8;
    v16 = a1 - a3;
LABEL_5:
    v38 = v15;
    v39 = a3;
    v17 = *(v43 + 8 * a3);
    v37 = v16;
    while (1)
    {
      v18 = *v15;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v19 = [v17 dateOfOccurrence];
      sub_20DD63674();

      v20 = [v18 dateOfOccurrence];
      sub_20DD63674();

      if ((sub_20DD63664() & 1) == 0)
      {
        goto LABEL_11;
      }

      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (v21 && (v22 = v21, objc_opt_self(), (v23 = swift_dynamicCastObjCClass()) != 0))
      {
        v24 = v23;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v25 = [v22 quality];
        v40 = [v24 quality];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v26 = v42;
        v27 = *v41;
        (*v41)(v44, v42);
        v27(v14, v26);
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        if (v25 >= v40)
        {
          goto LABEL_4;
        }
      }

      else
      {
LABEL_11:
        v28 = v44;
        v29 = sub_20DD63644();
        v30 = *v41;
        v31 = v28;
        v32 = v42;
        (*v41)(v31, v42);
        v30(v14, v32);
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        if ((v29 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!v43)
      {
        break;
      }

      v33 = *v15;
      v17 = *(v15 + 8);
      *v15 = v17;
      *(v15 + 8) = v33;
      v15 -= 8;
      if (__CFADD__(v16++, 1))
      {
LABEL_4:
        a3 = v39 + 1;
        v15 = v38 + 8;
        v16 = v37 - 1;
        if (v39 + 1 == v36)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20DA5F170(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v127 = a1;
  v138 = sub_20DD636C4();
  v8 = *(*(v138 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v138);
  v11 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v139 = &v122 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v132 = &v122 - v15;
  result = MEMORY[0x28223BE20](v14);
  v131 = &v122 - v18;
  v134 = a3;
  v19 = *(a3 + 8);
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_101:
    if (!*v127)
    {
      goto LABEL_141;
    }

    a3 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
LABEL_104:
      v142 = result;
      a3 = *(result + 16);
      if (a3 >= 2)
      {
        while (*v134)
        {
          v118 = *(result + 16 * a3);
          v119 = result;
          v120 = *(result + 16 * (a3 - 1) + 40);
          sub_20DA5FC00((*v134 + 8 * v118), (*v134 + 8 * *(result + 16 * (a3 - 1) + 32)), (*v134 + 8 * v120));
          if (v5)
          {
          }

          if (v120 < v118)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v119 = sub_20DA73550(v119);
          }

          if (a3 - 2 >= *(v119 + 2))
          {
            goto LABEL_129;
          }

          v121 = &v119[16 * a3];
          *v121 = v118;
          *(v121 + 1) = v120;
          v142 = v119;
          sub_20DA734C4(a3 - 1);
          result = v142;
          a3 = *(v142 + 16);
          if (a3 <= 1)
          {
          }
        }

        goto LABEL_139;
      }
    }

LABEL_135:
    result = sub_20DA73550(a3);
    goto LABEL_104;
  }

  v20 = 0;
  v137 = (v17 + 8);
  v21 = MEMORY[0x277D84F90];
  v125 = a4;
  v135 = v11;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    if (v20 + 1 < v19)
    {
      v129 = v19;
      v124 = v21;
      a3 = *v134;
      v24 = *(*v134 + 8 * v23);
      v140 = *(*v134 + 8 * v20);
      v141 = v24;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      LODWORD(v130) = sub_20DA5E8B8(&v141, &v140);
      if (v5)
      {

        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v23 = v22 + 2;
      v25 = v129;
      if (v22 + 2 < v129)
      {
        v123 = v22;
        a3 += 8 * v22 + 16;
        do
        {
          v33 = *(a3 - 8);
          v32 = *a3;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v136 = v32;
          v34 = [v32 dateOfOccurrence];
          sub_20DD63674();

          v35 = [v33 dateOfOccurrence];
          sub_20DD63674();

          v36 = sub_20DD63664();
          v133 = v33;
          if ((v36 & 1) != 0 && (objc_opt_self(), (v37 = swift_dynamicCastObjCClass()) != 0) && (v38 = v37, objc_opt_self(), (v39 = swift_dynamicCastObjCClass()) != 0))
          {
            v40 = v39;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v128 = [v38 quality];
            v126 = [v40 quality];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v41 = v138;
            v42 = *v137;
            (*v137)(v132, v138);
            v42(v131, v41);
            swift_unknownObjectRelease();
            result = swift_unknownObjectRelease();
            if (((v130 ^ (v128 >= v126)) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v27 = v131;
            v26 = v132;
            v28 = sub_20DD63644();
            v29 = *v137;
            v30 = v26;
            v31 = v138;
            (*v137)(v30, v138);
            v29(v27, v31);
            v25 = v129;
            swift_unknownObjectRelease();
            result = swift_unknownObjectRelease();
            if ((v130 ^ v28))
            {
              goto LABEL_16;
            }
          }

          ++v23;
          a3 += 8;
        }

        while (v25 != v23);
        v23 = v25;
LABEL_16:
        a4 = v125;
        v22 = v123;
      }

      v21 = v124;
      if (v130)
      {
        if (v23 < v22)
        {
          goto LABEL_134;
        }

        if (v22 < v23)
        {
          v43 = 8 * v23 - 8;
          v44 = 8 * v22;
          v45 = v23;
          v46 = v22;
          do
          {
            if (v46 != --v45)
            {
              v48 = *v134;
              if (!*v134)
              {
                goto LABEL_138;
              }

              v47 = *(v48 + v44);
              *(v48 + v44) = *(v48 + v43);
              *(v48 + v43) = v47;
            }

            ++v46;
            v43 -= 8;
            v44 += 8;
          }

          while (v46 < v45);
        }
      }
    }

    v49 = v134[1];
    if (v23 < v49)
    {
      if (__OFSUB__(v23, v22))
      {
        goto LABEL_131;
      }

      if (v23 - v22 < a4)
      {
        break;
      }
    }

LABEL_49:
    if (v23 < v22)
    {
      goto LABEL_130;
    }

    v72 = v21;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v72;
    }

    else
    {
      result = sub_20D9E014C(0, *(v72 + 16) + 1, 1, v72);
      v21 = result;
    }

    a3 = *(v21 + 16);
    v73 = *(v21 + 24);
    v74 = a3 + 1;
    if (a3 >= v73 >> 1)
    {
      result = sub_20D9E014C((v73 > 1), a3 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 16) = v74;
    v75 = v21 + 16 * a3;
    *(v75 + 32) = v22;
    *(v75 + 40) = v23;
    if (!*v127)
    {
      goto LABEL_140;
    }

    v133 = v23;
    if (a3)
    {
      while (1)
      {
        v76 = v74 - 1;
        if (v74 >= 4)
        {
          break;
        }

        if (v74 == 3)
        {
          v77 = *(v21 + 32);
          v78 = *(v21 + 40);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_69:
          if (v80)
          {
            goto LABEL_119;
          }

          v93 = (v21 + 16 * v74);
          v95 = *v93;
          v94 = v93[1];
          v96 = __OFSUB__(v94, v95);
          v97 = v94 - v95;
          v98 = v96;
          if (v96)
          {
            goto LABEL_122;
          }

          v99 = (v21 + 32 + 16 * v76);
          v101 = *v99;
          v100 = v99[1];
          v87 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v87)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v97, v102))
          {
            goto LABEL_126;
          }

          if (v97 + v102 >= v79)
          {
            if (v79 < v102)
            {
              v76 = v74 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        v103 = (v21 + 16 * v74);
        v105 = *v103;
        v104 = v103[1];
        v87 = __OFSUB__(v104, v105);
        v97 = v104 - v105;
        v98 = v87;
LABEL_83:
        if (v98)
        {
          goto LABEL_121;
        }

        v106 = v21 + 16 * v76;
        v108 = *(v106 + 32);
        v107 = *(v106 + 40);
        v87 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v87)
        {
          goto LABEL_124;
        }

        if (v109 < v97)
        {
          goto LABEL_3;
        }

LABEL_90:
        a3 = v76 - 1;
        if (v76 - 1 >= v74)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (!*v134)
        {
          goto LABEL_137;
        }

        v114 = v21;
        v115 = *(v21 + 32 + 16 * a3);
        v116 = *(v21 + 32 + 16 * v76 + 8);
        sub_20DA5FC00((*v134 + 8 * v115), (*v134 + 8 * *(v21 + 32 + 16 * v76)), (*v134 + 8 * v116));
        if (v5)
        {
        }

        if (v116 < v115)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = sub_20DA73550(v114);
        }

        if (a3 >= *(v114 + 2))
        {
          goto LABEL_116;
        }

        v117 = &v114[16 * a3];
        *(v117 + 4) = v115;
        *(v117 + 5) = v116;
        v142 = v114;
        result = sub_20DA734C4(v76);
        v21 = v142;
        v74 = *(v142 + 16);
        if (v74 <= 1)
        {
          goto LABEL_3;
        }
      }

      v81 = v21 + 32 + 16 * v74;
      v82 = *(v81 - 64);
      v83 = *(v81 - 56);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_117;
      }

      v86 = *(v81 - 48);
      v85 = *(v81 - 40);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_118;
      }

      v88 = (v21 + 16 * v74);
      v90 = *v88;
      v89 = v88[1];
      v87 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v87)
      {
        goto LABEL_120;
      }

      v87 = __OFADD__(v79, v91);
      v92 = v79 + v91;
      if (v87)
      {
        goto LABEL_123;
      }

      if (v92 >= v84)
      {
        v110 = (v21 + 32 + 16 * v76);
        v112 = *v110;
        v111 = v110[1];
        v87 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v87)
        {
          goto LABEL_127;
        }

        if (v79 < v113)
        {
          v76 = v74 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_69;
    }

LABEL_3:
    v20 = v133;
    v19 = v134[1];
    a4 = v125;
    if (v133 >= v19)
    {
      goto LABEL_101;
    }
  }

  v50 = (v22 + a4);
  if (__OFADD__(v22, a4))
  {
    goto LABEL_132;
  }

  if (v50 >= v49)
  {
    v50 = v134[1];
  }

  if (v50 < v22)
  {
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v23 == v50)
  {
    goto LABEL_49;
  }

  v123 = v22;
  v124 = v21;
  v126 = v5;
  v136 = *v134;
  a3 = &v136[v23 - 1];
  v51 = v22 - v23;
  v128 = v50;
LABEL_37:
  v133 = v23;
  v52 = v136[v23];
  v129 = v51;
  v130 = a3;
  while (1)
  {
    v53 = *a3;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v54 = [v52 dateOfOccurrence];
    sub_20DD63674();

    v55 = [v53 dateOfOccurrence];
    sub_20DD63674();

    if ((sub_20DD63664() & 1) == 0)
    {
      goto LABEL_43;
    }

    objc_opt_self();
    v56 = swift_dynamicCastObjCClass();
    if (v56 && (v57 = v56, objc_opt_self(), (v58 = swift_dynamicCastObjCClass()) != 0))
    {
      v59 = v58;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v60 = [v57 quality];
      v61 = [v59 quality];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v62 = *v137;
      v63 = v11;
      v64 = v138;
      (*v137)(v63, v138);
      v62(v139, v64);
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v60 >= v61)
      {
        goto LABEL_35;
      }
    }

    else
    {
LABEL_43:
      v65 = v139;
      v66 = sub_20DD63644();
      v67 = *v137;
      v68 = v11;
      v69 = v138;
      (*v137)(v68, v138);
      v67(v65, v69);
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if ((v66 & 1) == 0)
      {
LABEL_35:
        v11 = v135;
LABEL_36:
        v23 = (v133 + 1);
        a3 = v130 + 8;
        v51 = v129 - 1;
        if (v133 + 1 == v128)
        {
          v23 = v128;
          v5 = v126;
          v22 = v123;
          v21 = v124;
          goto LABEL_49;
        }

        goto LABEL_37;
      }
    }

    if (!v136)
    {
      break;
    }

    v70 = *a3;
    v52 = *(a3 + 8);
    *a3 = v52;
    *(a3 + 8) = v70;
    a3 -= 8;
    v71 = __CFADD__(v51++, 1);
    v11 = v135;
    if (v71)
    {
      goto LABEL_36;
    }
  }

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
  return result;
}

uint64_t sub_20DA5FC00(void **a1, void **a2, char *a3)
{
  v73 = sub_20DD636C4();
  v6 = *(v73 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v73);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v71 = &v65 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v72 = (&v65 - v14);
  MEMORY[0x28223BE20](v13);
  v17 = &v65 - v16;
  v18 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v18 = a2 - a1;
  }

  v19 = v18 >> 3;
  v20 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v20 = a3 - a2;
  }

  v21 = v20 >> 3;
  v74 = v15;
  if (v19 >= v20 >> 3)
  {
    if (v15 != a2 || &a2[v21] <= v15)
    {
      memmove(v15, a2, 8 * v21);
      v15 = v74;
    }

    v75 = &v15[v21];
    if (a3 - a2 < 8)
    {
      v41 = a2;
    }

    else
    {
      v41 = a2;
      if (a2 > a1)
      {
        v67 = (v6 + 8);
        v68 = v10;
LABEL_30:
        v42 = v41 - 1;
        a3 -= 8;
        v43 = v75;
        v69 = v41 - 1;
        v70 = v41;
        do
        {
          v44 = *(v43 - 1);
          v72 = v43 - 1;
          v45 = *v42;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v46 = [v44 dateOfOccurrence];
          sub_20DD63674();

          v47 = [v45 dateOfOccurrence];
          sub_20DD63674();

          if ((sub_20DD63664() & 1) != 0 && (objc_opt_self(), (v48 = swift_dynamicCastObjCClass()) != 0) && (v49 = v48, objc_opt_self(), (v50 = swift_dynamicCastObjCClass()) != 0))
          {
            v51 = v50;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v66 = [v49 quality];
            v52 = [v51 quality];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v53 = *v67;
            v54 = v73;
            (*v67)(v10, v73);
            v53(v71, v54);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (v66 < v52)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v55 = a3;
            v56 = a1;
            v57 = v71;
            v58 = sub_20DD63644();
            v59 = *v67;
            v60 = v10;
            v61 = v73;
            (*v67)(v60, v73);
            v62 = v57;
            a1 = v56;
            a3 = v55;
            v59(v62, v61);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (v58)
            {
LABEL_40:
              v63 = v69;
              v15 = v74;
              if (a3 + 8 != v70)
              {
                *a3 = *v69;
              }

              v10 = v68;
              if (v75 <= v15 || (v41 = v63, v63 <= a1))
              {
                v41 = v63;
                goto LABEL_48;
              }

              goto LABEL_30;
            }
          }

          v15 = v74;
          v43 = v72;
          if (a3 + 8 != v75)
          {
            *a3 = *v72;
          }

          a3 -= 8;
          v75 = v43;
          v10 = v68;
          v42 = v69;
        }

        while (v43 > v15);
        v75 = v43;
        v41 = v70;
      }
    }
  }

  else
  {
    if (v15 != a1 || &a1[v19] <= v15)
    {
      v22 = v19;
      memmove(v15, a1, 8 * v19);
      v19 = v22;
      v15 = v74;
    }

    v75 = &v15[v19];
    if (a2 - a1 >= 8)
    {
      v23 = a2;
      if (a2 < a3)
      {
        v71 = (v6 + 8);
        do
        {
          v70 = v23;
          v24 = *v23;
          v74 = v15;
          v25 = *v15;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v26 = [v24 dateOfOccurrence];
          sub_20DD63674();

          v27 = [v25 dateOfOccurrence];
          sub_20DD63674();

          if ((sub_20DD63664() & 1) != 0 && (objc_opt_self(), (v28 = swift_dynamicCastObjCClass()) != 0) && (v29 = v28, objc_opt_self(), (v30 = swift_dynamicCastObjCClass()) != 0))
          {
            v31 = v30;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v32 = [v29 quality];
            v69 = [v31 quality];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v33 = *v71;
            v34 = v73;
            (*v71)(v72, v73);
            v33(v17, v34);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (v32 >= v69)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v36 = v72;
            v37 = sub_20DD63644();
            v38 = *v71;
            v39 = v36;
            v40 = v73;
            (*v71)(v39, v73);
            v38(v17, v40);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if ((v37 & 1) == 0)
            {
LABEL_16:
              v35 = v74;
              v15 = v74 + 1;
              v23 = v70;
              if (a1 == v74)
              {
                goto LABEL_18;
              }

LABEL_17:
              *a1 = *v35;
              goto LABEL_18;
            }
          }

          v35 = v70;
          v23 = v70 + 1;
          v15 = v74;
          if (a1 != v70)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++a1;
        }

        while (v15 < v75 && v23 < a3);
      }
    }

    v41 = a1;
  }

LABEL_48:
  if (v41 != v15 || v41 >= (v15 + ((v75 - v15 + (v75 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v41, v15, 8 * (v75 - v15));
  }

  return 1;
}

uint64_t sub_20DA602B8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v15 - v5;
  if (a1)
  {
    v7 = qword_27C8424A8;
    v8 = a1;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_20DD64C44();
    __swift_project_value_buffer(v9, qword_27C844788);
    v10 = sub_20DD64C24();
    v11 = sub_20DD65344();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20D9BF000, v10, v11, "Diagnostic attachment request received", v12, 2u);
      MEMORY[0x20F327D10](v12, -1, -1);
    }

    v13 = sub_20DD65114();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v8;
    sub_20DA1C514(0, 0, v6, &unk_20DD95D78, v14);
  }

  return result;
}

uint64_t sub_20DA60480(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v52 - v6;
  v7 = sub_20DD63744();
  v54 = *(v7 - 8);
  v8 = v54[8];
  v9 = MEMORY[0x28223BE20](v7);
  v64 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - v11;
  v68 = a1;
  v69 = MEMORY[0x277D84F90];

  v13 = [a2 accessories];
  sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
  v14 = sub_20DD64FD4();

  if (v14 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
  {
    v16 = 0;
    v17 = v14 & 0xC000000000000001;
    v58 = v14 + 32;
    v59 = v14 & 0xFFFFFFFFFFFFFF8;
    v63 = v54 + 2;
    v18 = (v54 + 1);
    v53 = MEMORY[0x277D84F90];
    v66 = (v54 + 1);
    v67 = v7;
    v56 = i;
    v57 = v14;
    v55 = v14 & 0xC000000000000001;
    while (1)
    {
      if (v17)
      {
        v19 = MEMORY[0x20F326680](v16, v14);
      }

      else
      {
        if (v16 >= *(v59 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(v58 + 8 * v16);
      }

      v20 = v19;
      if (__OFADD__(v16++, 1))
      {
        break;
      }

      v22 = [v19 cameraProfiles];
      if (v22)
      {
        v23 = v22;
        v62 = v20;
        sub_20D9D7510(0, &qword_27C844878, 0x277CD1920);
        v24 = sub_20DD64FD4();

        if (v24 >> 62)
        {
          if (!sub_20DD655B4())
          {
LABEL_30:

            goto LABEL_5;
          }
        }

        else if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        if ((v24 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x20F326680](0, v24);
        }

        else
        {
          if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v25 = *(v24 + 32);
        }

        v26 = v25;

        v27 = v26;
        v28 = [v27 uniqueIdentifier];
        sub_20DD63714();

        if (*(a1 + 16))
        {
          v60 = v16;
          v61 = v27;
          v29 = *(a1 + 40);
          sub_20DA62600(&qword_280E02290, MEMORY[0x277CC95F0]);
          v30 = sub_20DD64E24();
          v31 = -1 << *(a1 + 32);
          v32 = v30 & ~v31;
          v65 = a1 + 56;
          if ((*(a1 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
          {
            v33 = ~v31;
            v34 = v54[9];
            v35 = v54[2];
            while (1)
            {
              v36 = a1;
              v37 = *(a1 + 48) + v34 * v32;
              v38 = v64;
              v39 = v67;
              v35(v64, v37, v67);
              sub_20DA62600(&qword_280E02288, MEMORY[0x277CC95F0]);
              v40 = v12;
              v41 = sub_20DD64E64();
              v42 = *v66;
              (*v66)(v38, v39);
              if (v41)
              {
                break;
              }

              v32 = (v32 + 1) & v33;
              v12 = v40;
              a1 = v36;
              if (((*(v65 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
              {
                goto LABEL_22;
              }
            }

            v44 = v66;
            v7 = v67;
            v42(v40, v67);
            v45 = v61;
            MEMORY[0x20F325F00]();
            if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v49 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_20DD65014();
            }

            sub_20DD65054();
            v53 = v69;
            v46 = [v45 uniqueIdentifier];

            v47 = v64;
            sub_20DD63714();

            v48 = v52;
            sub_20D9EA40C(v47, v52);

            v42(v47, v7);
            sub_20D9D76EC(v48, &unk_27C843A70, &qword_20DD94260);
            a1 = v68;
            v14 = v57;
            if (!*(v68 + 16))
            {
LABEL_32:

              v50 = v53;
              goto LABEL_38;
            }

            v18 = v44;
            v12 = v40;
          }

          else
          {
LABEL_22:

            v43 = v61;
            v18 = v66;
            v7 = v67;
            (*v66)(v12, v67);
            v14 = v57;
          }

          v17 = v55;
          i = v56;
          v16 = v60;
        }

        else
        {

          (*v18)(v12, v7);
        }
      }

      else
      {
      }

LABEL_5:
      if (v16 == i)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v50 = MEMORY[0x277D84F90];
LABEL_38:

  return v50;
}

void sub_20DA60AC0(void *a1)
{
  v57[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442B8, &qword_20DD94B60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v53 - v5;
  v7 = sub_20DD63514();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v53 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v53 - v16;
  type metadata accessor for CameraEventDebugLogger();
  static CameraEventDebugLogger.dateIntervalFileURL(for:)(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20D9D76EC(v6, &qword_27C8442B8, &qword_20DD94B60);
    if (qword_27C8424A8 != -1)
    {
      swift_once();
    }

    v18 = sub_20DD64C44();
    __swift_project_value_buffer(v18, qword_27C844788);
    v19 = sub_20DD64C24();
    v20 = sub_20DD65384();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20D9BF000, v19, v20, "Could not get date interval file", v21, 2u);
      MEMORY[0x20F327D10](v21, -1, -1);
    }
  }

  else
  {
    v56 = v1;
    (*(v8 + 32))(v17, v6, v7);
    v22 = [objc_opt_self() defaultManager];
    sub_20DD63504();
    v23 = sub_20DD64E74();

    v24 = [v22 fileExistsAtPath_];

    if (v24)
    {
      v25 = sub_20DD634D4();
      v57[0] = 0;
      v26 = v17;
      v27 = [v22 removeItemAtURL:v25 error:v57];

      if (v27)
      {
        v28 = qword_27C8424A8;
        v29 = v57[0];
        if (v28 != -1)
        {
          swift_once();
        }

        v30 = sub_20DD64C44();
        __swift_project_value_buffer(v30, qword_27C844788);
        (*(v8 + 16))(v15, v26, v7);
        v31 = sub_20DD64C24();
        v32 = sub_20DD65344();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v57[0] = swift_slowAlloc();
          v55 = v26;
          v34 = v57[0];
          *v33 = 136315138;
          v53 = sub_20DD63504();
          v54 = v22;
          v36 = v35;
          v37 = *(v8 + 8);
          v37(v15, v7);
          v38 = sub_20D9E0B38(v53, v36, v57);

          *(v33 + 4) = v38;
          _os_log_impl(&dword_20D9BF000, v31, v32, "Successfully removed date interval file: %s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v34);
          MEMORY[0x20F327D10](v34, -1, -1);
          MEMORY[0x20F327D10](v33, -1, -1);

          v37(v55, v7);
        }

        else
        {

          v51 = *(v8 + 8);
          v51(v15, v7);
          v51(v26, v7);
        }
      }

      else
      {
        v49 = v57[0];
        sub_20DD634A4();

        swift_willThrow();
        (*(v8 + 8))(v26, v7);
      }
    }

    else
    {
      if (qword_27C8424A8 != -1)
      {
        swift_once();
      }

      v39 = sub_20DD64C44();
      __swift_project_value_buffer(v39, qword_27C844788);
      (*(v8 + 16))(v12, v17, v7);
      v40 = sub_20DD64C24();
      v41 = sub_20DD65384();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v57[0] = v53;
        *v42 = 136315138;
        v43 = sub_20DD63504();
        v54 = v22;
        v55 = v17;
        v45 = v44;
        v46 = *(v8 + 8);
        v46(v12, v7);
        v47 = sub_20D9E0B38(v43, v45, v57);

        *(v42 + 4) = v47;
        _os_log_impl(&dword_20D9BF000, v40, v41, "Date interval file does not exist: %s", v42, 0xCu);
        v48 = v53;
        __swift_destroy_boxed_opaque_existential_0(v53);
        MEMORY[0x20F327D10](v48, -1, -1);
        MEMORY[0x20F327D10](v42, -1, -1);

        v46(v55, v7);
      }

      else
      {

        v50 = *(v8 + 8);
        v50(v12, v7);
        v50(v17, v7);
      }
    }
  }

  v52 = *MEMORY[0x277D85DE8];
}

uint64_t sub_20DA611A4(uint64_t a1, uint64_t a2)
{
  v2[21] = a1;
  v2[22] = a2;
  v3 = sub_20DD636C4();
  v2[23] = v3;
  v4 = *(v3 - 8);
  v2[24] = v4;
  v5 = *(v4 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v6 = sub_20DD63484();
  v2[28] = v6;
  v7 = *(v6 - 8);
  v2[29] = v7;
  v8 = *(v7 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA612E4, 0, 0);
}

uint64_t sub_20DA612E4()
{
  v52 = v0;
  if (qword_27C8424A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  v6 = sub_20DD64C44();
  *(v0 + 256) = __swift_project_value_buffer(v6, qword_27C844788);
  (*(v2 + 16))(v1, v4, v3);
  v7 = v5;
  v8 = sub_20DD64C24();
  v9 = sub_20DD65344();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 248);
  v13 = *(v0 + 224);
  v12 = *(v0 + 232);
  if (v10)
  {
    v49 = *(v0 + 176);
    v14 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = v50;
    *v14 = 136315394;
    sub_20DA62600(&qword_27C844868, MEMORY[0x277CC88A8]);
    v15 = sub_20DD65934();
    v47 = v9;
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_20D9E0B38(v15, v17, &v51);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v49;
    *v48 = v49;
    v20 = v49;
    _os_log_impl(&dword_20D9BF000, v8, v47, "Serializing cloud events from %s for %@", v14, 0x16u);
    sub_20D9D76EC(v48, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v48, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x20F327D10](v50, -1, -1);
    MEMORY[0x20F327D10](v14, -1, -1);
  }

  else
  {

    v18 = *(v12 + 8);
    v18(v11, v13);
  }

  *(v0 + 264) = v18;
  v21 = [*(v0 + 176) recordingEventManager];
  *(v0 + 272) = v21;
  if (v21)
  {
    v22 = v21;
    v23 = *(v0 + 240);
    v25 = *(v0 + 208);
    v24 = *(v0 + 216);
    v26 = *(v0 + 192);
    v27 = *(v0 + 200);
    v28 = *(v0 + 184);
    v29 = *(v0 + 168);
    v30 = [objc_allocWithZone(type metadata accessor for CameraRecordingEventManagerObserver()) init];
    *(v0 + 280) = v30;
    [v22 addObserver:v30 queue:0];
    sub_20DD63464();
    sub_20DD63434();
    sub_20DD63614();
    (*(v26 + 8))(v27, v28);
    sub_20DD63444();
    v31 = sub_20DD63414();
    *(v0 + 288) = v31;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 160;
    *(v0 + 24) = sub_20DA6186C;
    v32 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844860, &qword_20DD95DC0);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_20DA5DE3C;
    *(v0 + 104) = &block_descriptor_7;
    *(v0 + 112) = v32;
    [v22 fetchEventsWithDateInterval:v31 quality:0 limit:0x7FFFFFFFFFFFFFFFLL shouldOrderAscending:1 completion:?];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v33 = *(v0 + 176);
    v34 = sub_20DD64C24();
    v35 = sub_20DD65364();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 176);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v36;
      *v38 = v36;
      v39 = v36;
      _os_log_impl(&dword_20D9BF000, v34, v35, "No recording event manager for camera profile: %@", v37, 0xCu);
      sub_20D9D76EC(v38, &unk_27C843630, &qword_20DD94080);
      MEMORY[0x20F327D10](v38, -1, -1);
      MEMORY[0x20F327D10](v37, -1, -1);
    }

    v41 = *(v0 + 240);
    v40 = *(v0 + 248);
    v43 = *(v0 + 208);
    v42 = *(v0 + 216);
    v44 = *(v0 + 200);

    v45 = *(v0 + 8);

    return v45();
  }
}

uint64_t sub_20DA6186C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  if (v2)
  {
    v3 = sub_20DA61F9C;
  }

  else
  {
    v3 = sub_20DA6197C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DA6197C()
{
  v36 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = *(v0 + 160);

  [v3 removeObserver_];
  v5 = v1 + OBJC_IVAR___HFCameraRecordingEventManagerObserver_recordingEventsByUUID;
  os_unfair_lock_lock(v5);
  v6 = *(v5 + 8);
  v7 = *(v6 + 16);
  if (v7)
  {
    v34 = v0;
    v8 = sub_20D9EF64C(v7, 0);
    v0 = sub_20D9EF640(&v35, v8 + 32, v7, v6);
    swift_bridgeObjectRetain_n();
    sub_20DA55544();
    if (v0 != v7)
    {
      __break(1u);
      goto LABEL_18;
    }

    v0 = v34;
  }

  else
  {
    v9 = *(v5 + 8);

    v8 = MEMORY[0x277D84F90];
  }

  v35 = v8;
  sub_20DA5ECD0(&v35);
  v10 = *(v0 + 256);

  v6 = v35;
  *(v0 + 304) = v35;
  os_unfair_lock_unlock(v5);

  v11 = sub_20DD64C24();
  v12 = sub_20DD65344();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    if (v6 < 0 || (v6 & 0x4000000000000000) != 0)
    {
      v14 = sub_20DD655B4();
    }

    else
    {
      v14 = *(v6 + 16);
    }

    *(v13 + 4) = v14;

    _os_log_impl(&dword_20D9BF000, v11, v12, "Fetched %ld events", v13, 0xCu);
    MEMORY[0x20F327D10](v13, -1, -1);
  }

  else
  {
  }

  if (v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
LABEL_18:
    if (sub_20DD655B4())
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  if (*(v6 + 16))
  {
LABEL_14:
    v15 = *(v0 + 224);
    v16 = *(v0 + 232);
    v17 = *(v0 + 176);
    v18 = type metadata accessor for CameraEventDebugLogger();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    v21 = swift_allocObject();
    swift_defaultActor_initialize();
    v21[15] = 0;
    v21[16] = 0;
    v21[17] = sub_20D9D5DF8(MEMORY[0x277D84F90]);
    (*(v16 + 56))(v21 + OBJC_IVAR___HFCameraEventDebugLogger_previousViewModelDateInterval, 1, 1, v15);
    v21[14] = v17;
    *(v0 + 144) = v21;
    *(v0 + 152) = v18;
    v22 = v17;
    *(v0 + 312) = objc_msgSendSuper2((v0 + 144), sel_init);
    v23 = swift_task_alloc();
    *(v0 + 320) = v23;
    *v23 = v0;
    v23[1] = sub_20DA61D6C;

    return sub_20DA241E4(v6, 2);
  }

LABEL_19:
  v26 = *(v0 + 272);
  v25 = *(v0 + 280);
  v27 = *(v0 + 232) + 8;
  (*(v0 + 264))(*(v0 + 240), *(v0 + 224));

  v29 = *(v0 + 240);
  v28 = *(v0 + 248);
  v30 = *(v0 + 208);
  v31 = *(v0 + 216);
  v32 = *(v0 + 200);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_20DA61D6C()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = v0;

  v5 = *(v2 + 304);
  if (v0)
  {

    v6 = sub_20DA62084;
  }

  else
  {

    v6 = sub_20DA61EB8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20DA61EB8()
{
  v1 = *(v0 + 328);
  sub_20DA60AC0(*(v0 + 176));
  v2 = *(v0 + 312);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 232) + 8;
  (*(v0 + 264))(*(v0 + 240), *(v0 + 224));

  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v9 = *(v0 + 208);
  v8 = *(v0 + 216);
  v10 = *(v0 + 200);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_20DA61F9C()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[28];
  swift_willThrow();

  v5(v6, v8);
  v9 = v0[37];
  v11 = v0[30];
  v10 = v0[31];
  v13 = v0[26];
  v12 = v0[27];
  v14 = v0[25];

  v15 = v0[1];

  return v15();
}

uint64_t sub_20DA62084()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);

  v3(v4, v6);
  v7 = *(v0 + 328);
  v9 = *(v0 + 240);
  v8 = *(v0 + 248);
  v11 = *(v0 + 208);
  v10 = *(v0 + 216);
  v12 = *(v0 + 200);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_20DA62158(uint64_t a1)
{
  v42 = sub_20DD63744();
  v3 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = v1 + OBJC_IVAR___HFCameraRecordingEventManagerObserver_recordingEventsByUUID;
  v12 = (v8 + 63) >> 6;
  v37[1] = v4 + 16;
  v38 = v4;
  v39 = (v4 + 8);

  v13 = 0;
  v40 = v11;
  v41 = a1;
  while (v10)
  {
LABEL_11:
    v17 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    sub_20D9D7288(*(a1 + 48) + 40 * (v17 | (v13 << 6)), v47);
    v44 = v47[0];
    v45 = v47[1];
    v46 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844370, &qword_20DD94DA0);
    if (swift_dynamicCast())
    {
      v18 = v43;
      os_unfair_lock_lock(v11);
      v19 = [v18 uniqueIdentifier];
      sub_20DD63714();

      swift_unknownObjectRetain();
      v20 = *(v11 + 8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v44 = *(v11 + 8);
      v22 = v44;
      *(v11 + 8) = 0x8000000000000000;
      v23 = v6;
      v25 = sub_20D9CB38C(v6);
      v26 = *(v22 + 16);
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        goto LABEL_25;
      }

      v29 = v24;
      if (*(v22 + 24) >= v28)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v32 = v44;
          if (v24)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_20D9D2FF4();
          v32 = v44;
          if (v29)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_20D9CEA00(v28, isUniquelyReferenced_nonNull_native);
        v30 = sub_20D9CB38C(v23);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_27;
        }

        v25 = v30;
        v32 = v44;
        if (v29)
        {
LABEL_4:
          v14 = v32[7];
          v15 = *(v14 + 8 * v25);
          *(v14 + 8 * v25) = v18;
          swift_unknownObjectRelease();
          v6 = v23;
          goto LABEL_5;
        }
      }

      v32[(v25 >> 6) + 8] |= 1 << v25;
      v6 = v23;
      (*(v38 + 16))(v32[6] + *(v38 + 72) * v25, v23, v42);
      *(v32[7] + 8 * v25) = v18;
      v33 = v32[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_26;
      }

      v32[2] = v35;
LABEL_5:
      (*v39)(v6, v42);
      v11 = v40;
      *(v40 + 8) = v32;
      os_unfair_lock_unlock(v11);
      swift_unknownObjectRelease();
      a1 = v41;
    }
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v12)
    {
    }

    v10 = *(v7 + 8 * v16);
    ++v13;
    if (v10)
    {
      v13 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_20DD659E4();
  __break(1u);
  return result;
}

uint64_t sub_20DA624E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20D9C76B4;

  return sub_20DA5AB9C();
}

uint64_t sub_20DA62594(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_20DA62600(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20DA62648()
{
  sub_20DA65904();
}

uint64_t sub_20DA62670(uint64_t a1)
{
  v3 = qword_27C844880;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_20DA62728(void *a1)
{
  v1 = a1;
  sub_20DA62798();

  sub_20DA65948();
  sub_20DA65994();
  v2 = sub_20DD651C4();

  return v2;
}

uint64_t sub_20DA62798()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  v3 = qword_27C844880;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = *((v2 & v1) + 0x50);
  sub_20DA65948();

  swift_getWitnessTable();
  sub_20DA65994();
  v6 = sub_20DD65634();

  return v6;
}

id sub_20DA62868()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  v7 = qword_27C844880;
  swift_beginAccess();
  v8 = *(v0 + v7);
  v9 = sub_20DD65114();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = *((v2 & v1) + 0x50);
  v11[5] = v10;
  v11[6] = v8;
  v12 = objc_allocWithZone(MEMORY[0x277D2C900]);

  v13 = [v12 init];
  [v13 setDescriptor_];
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20DD95DE0;
  v14[5] = v11;
  v14[6] = v13;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20DD95DE8;
  v15[5] = v14;

  v16 = v13;

  sub_20D9D6B40(0, 0, v6, 0, 0, &unk_20DD95DF0, v15);

  sub_20D9D76EC(v6, &qword_27C8443F0, &qword_20DD93820);
  return v16;
}

uint64_t sub_20DA62AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[18] = a3;
  return MEMORY[0x2822009F8](sub_20DA62B14, 0, 0);
}

uint64_t sub_20DA62B14()
{
  v1 = v0[18];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    v3 = *((*MEMORY[0x277D85000] & *Strong) + 0x78);
    v10 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[22] = v5;
    *v5 = v0;
    v5[1] = sub_20DA62CBC;
    v6 = v0[19];

    return v10(v6);
  }

  else
  {
    v8 = [objc_allocWithZone(HFItemProviderReloadResults) initWithAddedItems:0 removedItems:0 existingItems:0];
    v9 = v0[1];

    return v9(v8);
  }
}

uint64_t sub_20DA62CBC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v7 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v5 = sub_20DA62FDC;
  }

  else
  {

    v5 = sub_20DA62DD8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20DA62DD8()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[18];
  v15 = v0[19];

  v4 = [v1 addedItems];
  swift_getWitnessTable();
  v5 = sub_20DD651E4();

  v0[17] = v5;
  sub_20DD652C4();
  swift_getWitnessTable();
  sub_20DD652B4();
  v6 = [v1 removedItems];
  sub_20DD651E4();

  sub_20DD652A4();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = qword_27C844880;
    v9 = Strong;
    swift_beginAccess();
    v10 = *&v9[v8];
    *&v9[v8] = v15;
  }

  v11 = v0[23];

  objc_opt_self();
  v12 = swift_dynamicCastObjCClassUnconditional();
  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_20DA62FDC()
{
  v1 = sub_20DD65364();
  if (qword_27C842498 != -1)
  {
    swift_once();
  }

  v2 = qword_27C84C660;
  if (os_log_type_enabled(qword_27C84C660, v1))
  {
    v3 = *(v0 + 192);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = v3;
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v7;
    *v5 = v7;
    _os_log_impl(&dword_20D9BF000, v2, v1, "SwiftItemProvider threw error %@. Returning unchanged results", v4, 0xCu);
    sub_20D9D76EC(v5, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v5, -1, -1);
    MEMORY[0x20F327D10](v4, -1, -1);
  }

  v8 = *(v0 + 144);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(v0 + 160);
    v11 = qword_27C844880;
    v12 = Strong;
    swift_beginAccess();
    v13 = *&v12[v11];

    sub_20DA65948();
    swift_getWitnessTable();
    sub_20DA65994();
    sub_20DD65634();

    v14 = sub_20DD651C4();
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v0 + 192);
  v16 = [objc_allocWithZone(HFItemProviderReloadResults) initWithAddedItems:0 removedItems:0 existingItems:v14];

  v17 = *(v0 + 8);

  return v17(v16);
}

id sub_20DA63254(void *a1)
{
  v1 = a1;
  v2 = sub_20DA62868();

  return v2;
}

uint64_t sub_20DA632EC()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8434E8, &qword_20DD95E00);
  v2 = *(v1 + 80);
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_20DA652FC(0, 0, 0);
  v5 = *(v0 + 8);

  return v5(v4);
}

id SwiftItemProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SwiftItemProvider.init()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = sub_20DD65024();
  if (sub_20DD65064())
  {
    WitnessTable = swift_getWitnessTable();
    v4 = sub_20DA65C30(v2, v1, WitnessTable);
  }

  else
  {
    v4 = MEMORY[0x277D84FA0];
  }

  *(v0 + qword_27C844880) = v4;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SwiftItemProvider();
  return objc_msgSendSuper2(&v6, sel_init);
}

id SwiftItemProvider.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SwiftItemProvider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id static SwiftItemProvider.diffItems<A, B, C>(with:existingItems:keyProvider:itemProvider:itemKeyProvider:)(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v146 = a8;
  v135 = a7;
  v139 = a6;
  v138 = a5;
  v145 = a4;
  v142 = a3;
  v14 = a2[3];
  v134 = a2[4];
  v137 = a2;
  v136 = __swift_project_boxed_opaque_existential_0(a2, v14);
  swift_getTupleTypeMetadata2();
  v15 = sub_20DD65024();
  v16 = sub_20DA65618(v15, a10, a11, a12);

  v163 = v12;
  v164 = v16;
  v156 = *(v12 + 80);
  v157 = a9;
  v158 = a10;
  v159 = a11;
  v160 = a12;
  v161 = v135;
  v162 = v146;
  v146 = v12;
  v148 = a11;
  sub_20DD64DF4();
  v17 = v134[1];
  sub_20DD64F84();
  v18 = v165;
  v19 = a1[3];
  v135 = a1[4];
  v136 = __swift_project_boxed_opaque_existential_0(a1, v19);
  swift_getTupleTypeMetadata2();
  v20 = sub_20DD65024();
  v21 = sub_20DA65618(v20, a10, a9, a12);

  v164 = v21;
  v143 = v156;
  v149 = v156;
  v150 = a9;
  v151 = a10;
  v152 = a11;
  v153 = a12;
  v154 = v142;
  v155 = v145;
  sub_20DD64DF4();
  v22 = v135[1];
  sub_20DD64F84();
  v134 = v140;
  v23 = v165;
  v144 = a9;
  v24 = sub_20DD64DE4();

  WitnessTable = swift_getWitnessTable();
  v26 = sub_20DD652D4();
  v27 = sub_20DD64DE4();
  v28 = swift_getWitnessTable();
  v29 = MEMORY[0x20F326160](&v165, v26, a10, v27, a12, v28);
  v165 = v18;

  v30 = sub_20DD652D4();
  v165 = v23;
  v133 = MEMORY[0x20F326160](&v165, v30, a10, v24, a12, WitnessTable);
  v165 = v18;
  v140 = v18;

  sub_20DD652D4();
  v136 = v23;
  v165 = v23;
  v145 = sub_20DD65214();
  if (qword_27C842418 != -1)
  {
    swift_once();
  }

  v31 = sub_20DD64C44();
  v32 = __swift_project_value_buffer(v31, qword_27C84C588);

  v33 = sub_20DD64C24();
  v34 = sub_20DD65354();

  v142 = v32;
  v147 = a10;
  v135 = v29;
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v165 = v36;
    *v35 = 136315394;
    v37 = sub_20DD65B04();
    v39 = sub_20D9E0B38(v37, v38, &v165);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2080;
    v164 = v29;
    sub_20DD652C4();
    swift_getWitnessTable();
    v40 = sub_20DD65934();
    v42 = sub_20D9E0B38(v40, v41, &v165);

    *(v35 + 14) = v42;
    _os_log_impl(&dword_20D9BF000, v33, v34, "%s-diffItems: newKeys=%s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v36, -1, -1);
    MEMORY[0x20F327D10](v35, -1, -1);
  }

  v43 = v133;

  v44 = sub_20DD64C24();
  v45 = sub_20DD65354();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v165 = v47;
    *v46 = 136315394;
    v48 = sub_20DD65B04();
    v50 = sub_20D9E0B38(v48, v49, &v165);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2080;
    v164 = v43;
    sub_20DD652C4();
    swift_getWitnessTable();
    v51 = sub_20DD65934();
    v53 = v52;

    v54 = sub_20D9E0B38(v51, v53, &v165);

    *(v46 + 14) = v54;
    _os_log_impl(&dword_20D9BF000, v44, v45, "%s-diffItems: removedKeys=%s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v47, -1, -1);
    MEMORY[0x20F327D10](v46, -1, -1);
  }

  else
  {
  }

  v55 = v145;

  v56 = sub_20DD64C24();
  v57 = sub_20DD65354();

  v141 = a12;
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v165 = v59;
    *v58 = 136315394;
    v60 = sub_20DD65B04();
    v62 = sub_20D9E0B38(v60, v61, &v165);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2080;
    v164 = v55;
    v63 = v147;
    sub_20DD652C4();
    swift_getWitnessTable();
    v64 = sub_20DD65934();
    v66 = sub_20D9E0B38(v64, v65, &v165);

    *(v58 + 14) = v66;
    _os_log_impl(&dword_20D9BF000, v56, v57, "%s-diffItems: existingKeys=%s", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v59, -1, -1);
    MEMORY[0x20F327D10](v58, -1, -1);
  }

  else
  {

    v63 = v147;
  }

  v67 = v137[3];
  v133 = v137[4];
  v137 = __swift_project_boxed_opaque_existential_0(v137, v67);
  v68 = v148;
  v69 = swift_getWitnessTable();
  v164 = sub_20DD64DA4();
  MEMORY[0x28223BE20](v164);
  v70 = v143;
  v126 = v143;
  v127 = v144;
  v128 = v63;
  v129 = v148;
  v71 = v141;
  v130 = v141;
  v132[1] = v69;
  v72 = sub_20DD652C4();
  v73 = *(v133 + 8);
  v133 = v72;
  v74 = sub_20DD64F84();
  v75 = v134;
  v134 = v132;
  v137 = v165;
  v165 = v135;
  MEMORY[0x28223BE20](v74);
  v125[2] = v70;
  v125[3] = v76;
  v126 = v77;
  v127 = v129;
  v128 = v71;
  v129 = v138;
  v130 = v139;
  v131 = v136;
  sub_20DD652C4();
  swift_getWitnessTable();
  v78 = sub_20DD64F74();

  if (v75)
  {
  }

  else
  {
    v165 = v78;
    sub_20DD65084();
    v138 = swift_getWitnessTable();
    v139 = sub_20DD652D4();
    v136 = v125;
    v165 = v145;
    MEMORY[0x28223BE20](v139);
    v80 = v144;
    v125[-6] = v143;
    v125[-5] = v80;
    v125[-4] = v147;
    v125[-3] = v68;
    v81 = v141;
    v82 = v140;
    v125[-2] = v141;
    v125[-1] = v82;
    v83 = sub_20DD64F74();

    v165 = v83;
    v84 = sub_20DD652D4();
    v85 = MEMORY[0x28223BE20](v84);
    v86 = v144;
    v125[-8] = v143;
    v125[-7] = v86;
    v87 = v148;
    v125[-6] = v147;
    v125[-5] = v87;
    v88 = v139;
    v125[-4] = v81;
    v125[-3] = v88;
    v125[-2] = v85;
    v89 = sub_20DD65264();
    v145 = 0;
    v165 = v89;
    swift_getWitnessTable();
    v147 = sub_20DD652D4();

    v90 = sub_20DD64C24();
    v91 = sub_20DD65354();
    v92 = v88;

    if (os_log_type_enabled(v90, v91))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v165 = v94;
      *v93 = 136315394;
      v95 = sub_20DD65B04();
      v97 = sub_20D9E0B38(v95, v96, &v165);

      *(v93 + 4) = v97;
      *(v93 + 12) = 2080;
      v164 = v92;
      swift_getWitnessTable();
      v98 = sub_20DD65934();
      v100 = sub_20D9E0B38(v98, v99, &v165);

      *(v93 + 14) = v100;
      _os_log_impl(&dword_20D9BF000, v90, v91, "%s-diffItems: newItems=%s", v93, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v94, -1, -1);
      MEMORY[0x20F327D10](v93, -1, -1);
    }

    v101 = sub_20DD64C24();
    v102 = sub_20DD65354();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v165 = v104;
      *v103 = 136315394;
      v105 = sub_20DD65B04();
      v107 = sub_20D9E0B38(v105, v106, &v165);

      *(v103 + 4) = v107;
      *(v103 + 12) = 2080;
      v164 = v84;
      swift_getWitnessTable();
      v108 = sub_20DD65934();
      v110 = sub_20D9E0B38(v108, v109, &v165);

      *(v103 + 14) = v110;
      _os_log_impl(&dword_20D9BF000, v101, v102, "%s-diffItems: stillExistingItems=%s", v103, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v104, -1, -1);
      MEMORY[0x20F327D10](v103, -1, -1);
    }

    v111 = v139;
    v112 = v147;

    v113 = sub_20DD64C24();
    v114 = sub_20DD65354();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v165 = v116;
      *v115 = 136315394;
      v117 = sub_20DD65B04();
      v119 = sub_20D9E0B38(v117, v118, &v165);

      *(v115 + 4) = v119;
      *(v115 + 12) = 2080;
      v164 = v147;
      swift_getWitnessTable();
      v120 = sub_20DD65934();
      v122 = sub_20D9E0B38(v120, v121, &v165);

      *(v115 + 14) = v122;
      _os_log_impl(&dword_20D9BF000, v113, v114, "%s-diffItems: removedItems=%s", v115, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v116, -1, -1);
      v123 = v115;
      v112 = v147;
      MEMORY[0x20F327D10](v123, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8434E8, &qword_20DD95E00);
    v124 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    return sub_20DA652FC(v111, v112, v84);
  }
}

uint64_t sub_20DA646AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v54 = a5;
  v12 = *(a8 - 8);
  v13 = v12[8];
  v56 = a9;
  v57 = a10;
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v49 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v49 - v20;
  v23 = *v22;
  v24(*v22);
  if (qword_27C842418 != -1)
  {
    swift_once();
  }

  v25 = sub_20DD64C44();
  __swift_project_value_buffer(v25, qword_27C84C588);
  v26 = v12[2];
  v55 = v21;
  v58 = v26;
  v26(v19, v21, a8);
  v27 = v23;
  v28 = sub_20DD64C24();
  v29 = sub_20DD65354();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v53 = a1;
    v31 = v30;
    v51 = swift_slowAlloc();
    v60 = v51;
    *v31 = 136315650;
    v32 = sub_20DD65B04();
    v50 = v29;
    v34 = sub_20D9E0B38(v32, v33, &v60);
    v52 = v27;
    v35 = v34;

    *(v31 + 4) = v35;
    *(v31 + 12) = 2080;
    v58(v16, v19, a8);
    v36 = sub_20DD64ED4();
    v38 = v37;
    v39 = v12[1];
    v49 = v16;
    v54 = v39;
    v39(v19, a8);
    v40 = sub_20D9E0B38(v36, v38, &v60);
    v27 = v52;

    *(v31 + 14) = v40;
    *(v31 + 22) = 2080;
    v59 = v27;
    swift_getWitnessTable();
    v41 = sub_20DD65934();
    v43 = sub_20D9E0B38(v41, v42, &v60);
    v44 = v49;

    *(v31 + 24) = v43;
    _os_log_impl(&dword_20D9BF000, v28, v50, "%s-diffItems: key is %s for %s", v31, 0x20u);
    v45 = v51;
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v45, -1, -1);
    MEMORY[0x20F327D10](v31, -1, -1);
  }

  else
  {

    v44 = v16;
    v54 = v12[1];
    v54(v19, a8);
  }

  v46 = v55;
  v58(v44, v55, a8);
  v60 = v27;
  sub_20DD64DF4();
  v47 = v27;
  sub_20DD64E14();
  return (v54)(v46, a8);
}

uint64_t sub_20DA64AB4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a4;
  v34 = a3;
  v32 = a1;
  v10 = sub_20DD65494();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v31 = &v29 - v12;
  v13 = sub_20DD65494();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v29 - v17;
  v19 = *(a7 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v29 - v24;
  v30 = a2;
  v34(a2);
  if ((*(v19 + 48))(v18, 1, a7) == 1)
  {
    return (*(v14 + 8))(v18, v13);
  }

  (*(v19 + 32))(v25, v18, a7);
  (*(v19 + 16))(v23, v25, a7);
  v27 = *(a6 - 8);
  v28 = v31;
  (*(v27 + 16))(v31, v30, a6);
  (*(v27 + 56))(v28, 0, 1, a6);
  sub_20DD64DF4();
  sub_20DD64E14();
  return (*(v19 + 8))(v25, a7);
}

void sub_20DA64DA8(uint64_t a1, id *a2)
{
  v2 = *a2;
  swift_getWitnessTable();
  sub_20DD652C4();
  sub_20DD65274();
}

uint64_t sub_20DA64E38@<X0>(uint64_t (*a1)(char *)@<X1>, uint64_t a2@<X5>, uint64_t *a3@<X8>)
{
  v14 = a3;
  v6 = sub_20DD65494();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  sub_20DD64E04();
  v10 = *(a2 - 8);
  result = (*(v10 + 48))(v9, 1, a2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = a1(v9);
    result = (*(v10 + 8))(v9, a2);
    if (!v3)
    {
      *v14 = v12;
    }
  }

  return result;
}

uint64_t sub_20DA64F90(uint64_t *a1)
{
  v1 = *a1;
  swift_getWitnessTable();
  if (sub_20DD65294())
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_20DD65294() ^ 1;
  }

  return v2 & 1;
}

id static SwiftItemProvider.diffItems<A, B>(with:existingItems:itemProvider:objectProvider:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11[2] = *(v9 + 80);
  v11[3] = a7;
  v11[4] = a8;
  v11[5] = a9;
  return static SwiftItemProvider.diffItems<A, B, C>(with:existingItems:keyProvider:itemProvider:itemKeyProvider:)(a1, a2, sub_20DA66140, v11, a3, a4, a5, a6, a7, a7, a8, a9);
}

id static SwiftItemProvider.diffItems<A>(with:existingItems:itemProvider:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *(v6 + 80);
  v21 = a5;
  v22 = a6;
  v16 = v20;
  v17 = a5;
  v18 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return static SwiftItemProvider.diffItems<A, B, C>(with:existingItems:keyProvider:itemProvider:itemKeyProvider:)(a1, a2, sub_20DA661FC, &v19, a3, a4, sub_20DA66208, v15, AssociatedTypeWitness, AssociatedTypeWitness, a5, AssociatedConformanceWitness);
}

uint64_t sub_20DA651A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  (*(v7 + 16))(a2, a1, AssociatedTypeWitness);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, AssociatedTypeWitness);
}

id HFItemProvider.asGeneric()()
{
  sub_20DA65948();
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();

  return v0;
}

id sub_20DA652FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_getWitnessTable();
    v6 = sub_20DD651C4();

    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v6 = 0;
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_getWitnessTable();
  v7 = sub_20DD651C4();

  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_4:
  swift_getWitnessTable();
  v8 = sub_20DD651C4();

LABEL_8:
  v9 = [v3 initWithAddedItems:v6 removedItems:v7 existingItems:v8];

  return v9;
}

unint64_t sub_20DA65434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_20DD64E24();

  return sub_20DA65490(a1, v9, a2, a3);
}

unint64_t sub_20DA65490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_20DD64E64();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_20DA65618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_20DD65064())
  {
    sub_20DD65894();
    v13 = sub_20DD65884();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_20DD65064();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_20DD65044())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_20DD65714();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_20DA65434(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_20DA65904()
{
  v1 = qword_27C844880;
  swift_beginAccess();
  return *(v0 + v1);
}

unint64_t sub_20DA65948()
{
  result = qword_280E01F10;
  if (!qword_280E01F10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E01F10);
  }

  return result;
}

unint64_t sub_20DA65994()
{
  result = qword_280E01F00;
  if (!qword_280E01F00)
  {
    sub_20DA65948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E01F00);
  }

  return result;
}

uint64_t sub_20DA659EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_20D9D77BC;

  return sub_20DA62AF0(v2, v3, v5, v6, v4);
}

uint64_t sub_20DA65AA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20D9C76B4;

  return sub_20D9CAD70(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_20DA65B70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D9D77C4;

  return sub_20D9CA8B4(a1, v4, v5, v7);
}

uint64_t sub_20DA65C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v53 = &v41 - v12;
  v42 = v13;
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  if (sub_20DD65064())
  {
    sub_20DD656E4();
    v16 = sub_20DD656D4();
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  v46 = sub_20DD65064();
  if (!v46)
  {
    return v16;
  }

  v17 = 0;
  v51 = (v6 + 16);
  v52 = v16 + 56;
  v48 = v6 + 32;
  v50 = (v6 + 8);
  v43 = v6;
  v44 = v5;
  v45 = v15;
  while (1)
  {
    v18 = sub_20DD65044();
    sub_20DD65004();
    if (v18)
    {
      v19 = *(v6 + 16);
      v19(v15, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17), a2);
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_20DD65714();
      if (v42 != 8)
      {
        goto LABEL_23;
      }

      v54 = result;
      v19 = *v51;
      (*v51)(v15, &v54, a2);
      swift_unknownObjectRelease();
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
LABEL_20:
        __break(1u);
        return v16;
      }
    }

    v49 = v21;
    v47 = *(v6 + 32);
    v47(v53, v15, a2);
    v22 = *(v16 + 40);
    v23 = sub_20DD64E24();
    v24 = v16;
    v25 = -1 << *(v16 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    v28 = *(v52 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    v30 = *(v6 + 72);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      do
      {
        v19(v10, (*(v24 + 48) + v30 * v26), a2);
        v32 = a3;
        v33 = *(a3 + 8);
        v34 = sub_20DD64E64();
        v35 = *v50;
        (*v50)(v10, a2);
        if (v34)
        {
          v35(v53, a2);
          a3 = v32;
          v6 = v43;
          v5 = v44;
          v16 = v24;
          goto LABEL_7;
        }

        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = *(v52 + 8 * (v26 >> 6));
        v29 = 1 << v26;
        a3 = v32;
      }

      while (((1 << v26) & v28) != 0);
      v6 = v43;
      v5 = v44;
    }

    v36 = v53;
    *(v52 + 8 * v27) = v29 | v28;
    v37 = *(v24 + 48) + v30 * v26;
    v16 = v24;
    result = (v47)(v37, v36, a2);
    v39 = *(v24 + 16);
    v20 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v20)
    {
      break;
    }

    *(v24 + 16) = v40;
LABEL_7:
    v15 = v45;
    v17 = v49;
    if (v49 == v46)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_20DA66038(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v5 = *(v2 + 48);
  return sub_20DA64AB4(a1, a2, *(v2 + 56), *(v2 + 64), *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

void sub_20DA6606C(uint64_t a1, id *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  sub_20DA64DA8(a1, a2);
}

uint64_t sub_20DA66090@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v8 = *(v1 + 48);
  return sub_20DA64E38(*(v1 + 56), *(v1 + 24), a1);
}

uint64_t sub_20DA660C4@<X0>(void *a1@<X8>)
{
  v3 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v5 = v1[7];
  result = sub_20DD64E04();
  if (v8)
  {
    *a1 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20DA66114(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  v8 = v1[8];
  return sub_20DA64F90(a1) & 1;
}

uint64_t sub_20DA66140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_20DA661FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_20DA651A0(a1, a2);
}

uint64_t dispatch thunk of SwiftItemProvider.reloadItems(with:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D9D7010;

  return v8(a1);
}

void __swiftcall ControlCenterPredictionsFetchTimeEvent.init(duration:numberOfPredictions:receivedBeforeModuleFreeze:)(Home::ControlCenterPredictionsFetchTimeEvent *__return_ptr retstr, Swift::Double duration, Swift::UInt numberOfPredictions, Swift::Bool receivedBeforeModuleFreeze)
{
  retstr->eventName._countAndFlagsBits = 0xD000000000000019;
  retstr->eventName._object = 0x800000020DD98C40;
  retstr->domainPrefix.value._countAndFlagsBits = 0xD00000000000001CLL;
  retstr->domainPrefix.value._object = 0x800000020DD98C60;
  retstr->duration = duration;
  retstr->numberOfPredictions = numberOfPredictions;
  retstr->receivedBeforeModuleFreeze = receivedBeforeModuleFreeze;
  v5 = [objc_opt_self() processInfo];
  v6 = [v5 processName];

  v7 = sub_20DD64EB4();
  v9 = v8;

  retstr->processName._countAndFlagsBits = v7;
  retstr->processName._object = v9;
}

uint64_t ControlCenterPredictionsFetchTimeEvent.eventName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ControlCenterPredictionsFetchTimeEvent.domainPrefix.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ControlCenterPredictionsFetchTimeEvent.processName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ControlCenterPredictionsFetchTimeEvent.processName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_20DA66700()
{
  v1 = *v0;
  sub_20DD65A64();
  MEMORY[0x20F3269D0](v1);
  return sub_20DD65AA4();
}

uint64_t sub_20DA66774()
{
  v1 = *v0;
  sub_20DD65A64();
  MEMORY[0x20F3269D0](v1);
  return sub_20DD65AA4();
}

unint64_t sub_20DA667B8()
{
  v1 = *v0;
  v2 = 0x6D614E746E657665;
  v3 = 0xD000000000000013;
  v4 = 0x4E737365636F7270;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x72506E69616D6F64;
  if (v1 != 1)
  {
    v5 = 0x6E6F697461727564;
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

uint64_t sub_20DA6688C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DA66FF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DA668CC(uint64_t a1)
{
  v2 = sub_20DA66B88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DA66908(uint64_t a1)
{
  v2 = sub_20DA66B88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ControlCenterPredictionsFetchTimeEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844908, &qword_20DD95E60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v21[4] = v1[3];
  v21[5] = v10;
  v11 = v1[4];
  v12 = v1[5];
  v21[2] = v1[6];
  v21[3] = v12;
  v21[1] = v1[7];
  v13 = *(v1 + 64);
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_0(v16, v14);
  sub_20DA66B88();
  sub_20DD65AD4();
  v27 = 0;
  v19 = v21[6];
  sub_20DD658D4();
  if (!v19)
  {
    v26 = 1;
    sub_20DD658C4();
    v25 = 2;
    sub_20DD658F4();
    v24 = 3;
    sub_20DD65904();
    v23 = 4;
    sub_20DD658D4();
    v22 = 5;
    sub_20DD658E4();
  }

  return (*(v4 + 8))(v7, v18);
}

unint64_t sub_20DA66B88()
{
  result = qword_280E02190;
  if (!qword_280E02190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E02190);
  }

  return result;
}

unint64_t sub_20DA66BE0()
{
  result = qword_280E02170;
  if (!qword_280E02170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E02170);
  }

  return result;
}

uint64_t sub_20DA66C34()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_20DA66C64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_20DA66CF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20DA66D3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ControlCenterPredictionsFetchTimeEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ControlCenterPredictionsFetchTimeEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20DA66EF4()
{
  result = qword_27C844910;
  if (!qword_27C844910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844910);
  }

  return result;
}

unint64_t sub_20DA66F4C()
{
  result = qword_280E02180;
  if (!qword_280E02180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E02180);
  }

  return result;
}

unint64_t sub_20DA66FA4()
{
  result = qword_280E02188;
  if (!qword_280E02188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E02188);
  }

  return result;
}

uint64_t sub_20DA66FF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E746E657665 && a2 == 0xE900000000000065;
  if (v4 || (sub_20DD65974() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72506E69616D6F64 && a2 == 0xEC00000078696665 || (sub_20DD65974() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_20DD65974() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020DD99B10 == a2 || (sub_20DD65974() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4E737365636F7270 && a2 == 0xEB00000000656D61 || (sub_20DD65974() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000020DD99B30 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_20DD65974();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_20DA67210(uint64_t a1)
{
  v1 = a1;
  v19 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    sub_20DA65948();
    sub_20DA65994();
    sub_20DD65284();
    v1 = v14;
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_20DD655F4() || (sub_20DA65948(), swift_dynamicCast(), (v11 = v13) == 0))
    {
LABEL_21:
      sub_20D9C51CC();
      return;
    }

LABEL_16:
    type metadata accessor for MatterAccessoryLikeItem();
    if (swift_dynamicCastClass())
    {
      MEMORY[0x20F325F00]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20DD65014();
      }

      sub_20DD65054();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall HFItemManager.registerMatterDelegates()()
{
  v1 = v0;
  sub_20DD63C84();
  sub_20DD63C24();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844918, &qword_20DD96070);
  sub_20DA6776C();
  v2 = sub_20DD64D04();

  [v1 setMatterSnapshotObserverCancelable_];
}

uint64_t sub_20DA6753C(uint64_t a1)
{
  v2 = sub_20DD64354();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = [objc_opt_self() mainThreadScheduler];
  v6 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v3 + 16))(&aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  *(v9 + ((v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  aBlock[4] = sub_20DA69204;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20DA89A38;
  aBlock[3] = &block_descriptor_8;
  v10 = _Block_copy(aBlock);

  [v5 performBlock_];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

unint64_t sub_20DA6776C()
{
  result = qword_280E022C0;
  if (!qword_280E022C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C844918, &qword_20DD96070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E022C0);
  }

  return result;
}

void sub_20DA677D0(uint64_t a1)
{
  v2 = sub_20DD63744();
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v2);
  v56 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20DD64354();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20DD64C44();
  v60 = *(v10 - 8);
  v11 = *(v60 + 64);
  MEMORY[0x28223BE20](v10);
  v61 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20DD642D4();
  v15 = v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v17 = Strong, v18 = [Strong home], v17, v18))
  {
    v59 = v10;
    v19 = [v18 matterControllerID];

    v20 = sub_20DD64EB4();
    v22 = v21;

    if (v13 == v20 && v15 == v22)
    {

      goto LABEL_13;
    }

    v40 = sub_20DD65974();

    v10 = v59;
    if (v40)
    {
LABEL_13:
      swift_beginAccess();
      v41 = swift_unknownObjectWeakLoadStrong();
      if (v41)
      {
        v42 = v41;
        sub_20DA67E00(a1);
      }

      return;
    }
  }

  else
  {
  }

  v23 = v61;
  sub_20DD64BE4();
  (*(v6 + 16))(v9, a1, v5);

  v24 = sub_20DD64C24();
  v25 = sub_20DD65364();

  if (!os_log_type_enabled(v24, v25))
  {

    (*(v6 + 8))(v9, v5);
    (*(v60 + 8))(v23, v10);
    return;
  }

  v59 = v10;
  v26 = swift_slowAlloc();
  v55 = swift_slowAlloc();
  v62 = v55;
  *v26 = 136315906;
  *(v26 + 4) = sub_20D9E0B38(0xD000000000000019, 0x800000020DD99B50, &v62);
  *(v26 + 12) = 2082;
  v27 = sub_20DD642D4();
  v29 = v28;
  (*(v6 + 8))(v9, v5);
  v30 = sub_20D9E0B38(v27, v29, &v62);

  *(v26 + 14) = v30;
  *(v26 + 22) = 2082;
  swift_beginAccess();
  v31 = swift_unknownObjectWeakLoadStrong();
  if (!v31)
  {
    v38 = 0xE500000000000000;
    v32 = 0x3E6C696E3CLL;
LABEL_17:
    v39 = 0x3E6C696E3CLL;
    goto LABEL_18;
  }

  v32 = 0x3E6C696E3CLL;
  v33 = v31;
  v34 = [v31 home];

  if (!v34)
  {
    v38 = 0xE500000000000000;
    goto LABEL_17;
  }

  v35 = [v34 matterControllerID];

  v36 = sub_20DD64EB4();
  v38 = v37;

  v39 = v36;
LABEL_18:
  v43 = sub_20D9E0B38(v39, v38, &v62);

  *(v26 + 24) = v43;
  *(v26 + 32) = 2082;
  swift_beginAccess();
  v44 = swift_unknownObjectWeakLoadStrong();
  if (v44)
  {
    v45 = v44;
    v46 = [v44 home];

    v47 = v59;
    if (v46)
    {
      v48 = [v46 uniqueIdentifier];

      v49 = v56;
      sub_20DD63714();

      v32 = sub_20DD636E4();
      v51 = v50;
      (*(v57 + 8))(v49, v58);
    }

    else
    {
      v51 = 0xE500000000000000;
    }
  }

  else
  {
    v51 = 0xE500000000000000;
    v47 = v59;
  }

  v52 = sub_20D9E0B38(v32, v51, &v62);

  *(v26 + 34) = v52;
  _os_log_impl(&dword_20D9BF000, v24, v25, "%s Matter snapshot changed, but does not match current home. Snapshot: %{public}s, current home controller ID: %{public}s, current home ID: %{public}s", v26, 0x2Au);
  v53 = v55;
  swift_arrayDestroy();
  MEMORY[0x20F327D10](v53, -1, -1);
  MEMORY[0x20F327D10](v26, -1, -1);

  (*(v60 + 8))(v61, v47);
}

void sub_20DA67E00(uint64_t a1)
{
  v90 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v78[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v78[-v7];
  v9 = sub_20DD64354();
  v10 = *(v9 - 8);
  isa = v10[8].isa;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v78[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v78[-v15];
  v17 = sub_20DD64C44();
  v91 = *(v17 - 8);
  v92 = v17;
  v18 = *(v91 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v78[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v81 = v1;
  v21 = [v1 itemsToUpdateForMatterSnapshotChange];
  v22 = sub_20DA65948();
  v93 = sub_20DA65994();
  v23 = sub_20DD651E4();

  sub_20DD64BE4();
  v84 = v10;
  v24 = v10[2].isa;
  v82 = v16;
  v25 = v16;
  v26 = v90;
  v24(v25, v90, v9);
  v83 = v14;
  v85 = v9;
  v24(v14, v26, v9);

  v86 = v20;
  v27 = v23;
  v28 = sub_20DD64C24();
  v29 = sub_20DD65384();
  v87 = v27;

  v30 = os_log_type_enabled(v28, v29);
  v89 = v22;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v79 = v29;
    v32 = v31;
    v80 = swift_slowAlloc();
    v94[0] = v80;
    *v32 = 136315906;
    *(v32 + 4) = sub_20D9E0B38(0xD000000000000020, 0x800000020DD99B70, v94);
    *(v32 + 12) = 2082;
    v33 = v82;
    v34 = sub_20DD642D4();
    v36 = v35;
    v37 = v84[1].isa;
    v84 = v28;
    v38 = v85;
    (v37)(v33, v85);
    v39 = sub_20D9E0B38(v34, v36, v94);

    *(v32 + 14) = v39;
    *(v32 + 22) = 2082;
    v40 = sub_20DD651F4();
    v42 = sub_20D9E0B38(v40, v41, v94);

    *(v32 + 24) = v42;
    *(v32 + 32) = 2082;
    v43 = v83;
    sub_20DD642E4();
    sub_20DD64294();
    v44 = sub_20DD64DD4();
    v46 = v45;

    (v37)(v43, v38);
    v47 = sub_20D9E0B38(v44, v46, v94);

    *(v32 + 34) = v47;
    v48 = v84;
    _os_log_impl(&dword_20D9BF000, v84, v79, "%s Triggering item update because Matter snapshot changed. snapshot: (%{public}s) items: %{public}s devices: (%{public}s)", v32, 0x2Au);
    v49 = v80;
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v49, -1, -1);
    MEMORY[0x20F327D10](v32, -1, -1);
  }

  else
  {

    v50 = v84[1].isa;
    v51 = v85;
    (v50)(v83, v85);
    (v50)(v82, v51);
  }

  (*(v91 + 8))(v86, v92);
  v52 = v93;
  sub_20DA67210(v87);
  v54 = v53;
  if (!(v53 >> 62))
  {
    v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v55)
    {
      goto LABEL_6;
    }

LABEL_17:

    v73 = [v81 batchedDelegateAdapterDisallowingReads];
    v74 = sub_20DD651C4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_20DD93A70;
    *(v75 + 32) = sub_20DD64EB4();
    *(v75 + 40) = v76;
    v77 = sub_20DD64FB4();

    return;
  }

  v72 = v53;
  v55 = sub_20DD655B4();
  v54 = v72;
  if (!v55)
  {
    goto LABEL_17;
  }

LABEL_6:
  if (v55 >= 1)
  {
    v56 = 0;
    v91 = v54 & 0xC000000000000001;
    v92 = v55;
    v93 = v54;
    v88 = v6;
    do
    {
      if (v91)
      {
        v59 = MEMORY[0x20F326680](v56);
      }

      else
      {
        v59 = *(v54 + 8 * v56 + 32);
      }

      v60 = v59;
      v61 = *&v59[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable];
      v62 = sub_20DD642E4();
      v63 = sub_20DD63FD4();
      if (*(v62 + 16) && (v64 = sub_20D9CB2A8(v63), (v65 & 1) != 0))
      {
        v66 = v64;
        v67 = *(v62 + 56);
        v68 = v52;
        v69 = sub_20DD64294();
        v70 = *(v69 - 8);
        (*(v70 + 16))(v8, v67 + *(v70 + 72) * v66, v69);

        v71 = v69;
        v52 = v68;
        v6 = v88;
        (*(v70 + 56))(v8, 0, 1, v71);
      }

      else
      {

        v57 = sub_20DD64294();
        (*(*(v57 - 8) + 56))(v8, 1, 1, v57);
      }

      ++v56;
      v58 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
      swift_beginAccess();
      sub_20D9FA458(v61 + v58, v6);
      swift_beginAccess();
      sub_20D9F0D50(v8, v61 + v58);
      swift_endAccess();
      sub_20D9F04E4(v6);
      sub_20D9D76EC(v6, &qword_27C843A20, &qword_20DD940B0);
      sub_20D9D76EC(v8, &qword_27C843A20, &qword_20DD940B0);

      v54 = v93;
    }

    while (v92 != v56);
    goto LABEL_17;
  }

  __break(1u);
}

Swift::Void __swiftcall HFItemManager.deregisterMatterDelegates()()
{
  if ([v0 matterSnapshotObserverCancelable])
  {
    sub_20DD654E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v1 = 0u;
    v2 = 0u;
  }

  v3[0] = v1;
  v3[1] = v2;
  if (*(&v2 + 1))
  {
    sub_20DD64C74();
    if (swift_dynamicCast())
    {

      sub_20DD64C64();
    }
  }

  else
  {
    sub_20D9D76EC(v3, &unk_27C843A80, &qword_20DD94100);
  }

  [v0 setMatterSnapshotObserverCancelable_];
}

uint64_t sub_20DA6888C()
{
  v1 = 0;
  v69[4] = *MEMORY[0x277D85DE8];
  v2 = [v0 allItems];
  v3 = sub_20DA65948();
  sub_20DA65994();
  v4 = sub_20DD651E4();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x277D84FA0];
    v68 = MEMORY[0x277D84FA0];
    sub_20DD65564();
    v7 = sub_20DD655F4();
    if (!v7)
    {
      v65 = v6;
LABEL_54:

      result = v65;
      goto LABEL_55;
    }

    v65 = MEMORY[0x277D84FA0];
    v4 = MEMORY[0x277D84F68];
    v8 = MEMORY[0x277D84F70];
    v9 = &selRef_isAnnounceAccessAllowed;
    while (1)
    {
      v69[0] = v7;
      swift_dynamicCast();
      v10 = [v67 v9[330]];
      if (v10)
      {
        v11 = v10;
        v12 = sub_20DD64DC4();

        v13 = sub_20DD64EB4();
        if (*(v12 + 16))
        {
          v15 = v9;
          v16 = v4;
          v17 = v8;
          v18 = sub_20D9CB170(v13, v14);
          v20 = v19;

          if ((v20 & 1) == 0)
          {

            v8 = v17;
LABEL_15:
            v4 = v16;
            v9 = v15;
            goto LABEL_16;
          }

          sub_20D9D7174(*(v12 + 56) + 32 * v18, v69);

          v8 = v17;
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_15;
          }

          v4 = v16;
          v9 = v15;
          if (v66)
          {
            v21 = v67;
            v22 = *(v65 + 16);
            if (*(v65 + 24) <= v22)
            {
              sub_20D9F776C(v22 + 1);
            }

            v1 = v68;
            v23 = *(v68 + 40);
            v24 = sub_20DD65444();
            v25 = v68 + 56;
            v26 = -1 << *(v68 + 32);
            v27 = v24 & ~v26;
            v28 = v27 >> 6;
            if (((-1 << v27) & ~*(v68 + 56 + 8 * (v27 >> 6))) != 0)
            {
              v29 = __clz(__rbit64((-1 << v27) & ~*(v68 + 56 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v30 = 0;
              v31 = (63 - v26) >> 6;
              do
              {
                if (++v28 == v31 && (v30 & 1) != 0)
                {
                  goto LABEL_57;
                }

                v32 = v28 == v31;
                if (v28 == v31)
                {
                  v28 = 0;
                }

                v30 |= v32;
                v33 = *(v25 + 8 * v28);
              }

              while (v33 == -1);
              v29 = __clz(__rbit64(~v33)) + (v28 << 6);
            }

            *(v25 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
            *(*(v1 + 48) + 8 * v29) = v21;
            v34 = *(v1 + 16) + 1;
            v65 = v1;
            *(v1 + 16) = v34;
            goto LABEL_17;
          }
        }

        else
        {
        }
      }

LABEL_16:

LABEL_17:
      v7 = sub_20DD655F4();
      if (!v7)
      {
        goto LABEL_54;
      }
    }
  }

  v35 = *(v4 + 32);
  v3 = ((1 << v35) + 63) >> 6;
  if ((v35 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v60[0] = v1;
    v60[1] = v60;
    v61 = v3;
    MEMORY[0x28223BE20](v5);
    v62 = v60 - ((v36 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v62, v36);
    v63 = 0;
    v1 = 0;
    v37 = v4 + 56;
    v38 = 1 << *(v4 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v40 = v39 & *(v4 + 56);
    v3 = (v38 + 63) >> 6;
    v64 = @"dependentOnMatterSnapshot";
    v65 = v4;
    while (v40)
    {
      v41 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
LABEL_40:
      v44 = v41 | (v1 << 6);
      v45 = *(*(v4 + 48) + 8 * v44);
      v46 = [v45 latestResults];
      if (v46)
      {
        v47 = v46;
        v48 = sub_20DD64DC4();

        v49 = sub_20DD64EB4();
        if (*(v48 + 16))
        {
          v51 = sub_20D9CB170(v49, v50);
          v53 = v52;

          if ((v53 & 1) == 0)
          {

            goto LABEL_51;
          }

          sub_20D9D7174(*(v48 + 56) + 32 * v51, v69);

          if (swift_dynamicCast())
          {
            v54 = v68;

            v4 = v65;
            if (v54)
            {
              *&v62[(v44 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v44;
              if (__OFADD__(v63++, 1))
              {
                __break(1u);
              }
            }
          }

          else
          {

LABEL_51:
            v4 = v65;
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    v42 = v1;
    while (1)
    {
      v1 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v1 >= v3)
      {
        result = sub_20D9F89D4(v62, v61, v63, v4);
        goto LABEL_55;
      }

      v43 = *(v37 + 8 * v1);
      ++v42;
      if (v43)
      {
        v41 = __clz(__rbit64(v43));
        v40 = (v43 - 1) & v43;
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v58 = swift_slowAlloc();
  v59 = sub_20DA69160(v58, v3, v4, sub_20DA68EB8, 0);

  MEMORY[0x20F327D10](v58, -1, -1);
  result = v59;
LABEL_55:
  v57 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_20DA68EB8(uint64_t *a1)
{
  v1 = *a1;
  HFItem.result(for:)(v4, @"dependentOnMatterSnapshot");
  if (v4[3])
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v3;
    }
  }

  else
  {
    sub_20D9D76EC(v4, &unk_27C843A80, &qword_20DD94100);
    return 0;
  }

  return result;
}

void sub_20DA68FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v23 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v26 = *(*(a3 + 48) + 8 * v16);
    v17 = v26;
    v18 = a4(&v26);

    if (v6)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:

        a6(a1, a2, v23, a3);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_20DA69160(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
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
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_20DA68FEC(result, a2, a3, a4, a5, sub_20D9F89D4);
    v11 = v10;

    return v11;
  }

  return result;
}

void sub_20DA69204()
{
  v1 = *(sub_20DD64354() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_20DA677D0(v0 + v2);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static HFNetworkRouterServiceItem.supportedServiceTypes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD94280;
  v1 = *MEMORY[0x277CD0F48];
  *(inited + 32) = sub_20DD64EB4();
  *(inited + 40) = v2;
  v3 = *MEMORY[0x277CD0F50];
  *(inited + 48) = sub_20DD64EB4();
  *(inited + 56) = v4;
  v5 = sub_20D9EE93C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v5;
}

uint64_t HFNetworkRouterServiceItem._subclass_update(options:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD95210;
  v4 = *MEMORY[0x277CCFA28];
  *(inited + 32) = sub_20DD64EB4();
  *(inited + 40) = v5;
  v6 = *MEMORY[0x277CCFBB8];
  *(inited + 48) = sub_20DD64EB4();
  *(inited + 56) = v7;
  v8 = *MEMORY[0x277CCFBC8];
  *(inited + 64) = sub_20DD64EB4();
  *(inited + 72) = v9;
  sub_20D9EE93C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = sub_20DD651C4();
  if (a1)
  {
    v11 = result;

    v12 = sub_20DD64DB4();
    v13 = [v1 performStandardUpdateWithCharacteristicTypes:v11 options:v12];

    v16[4] = sub_20DA6962C;
    v16[5] = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_20DA055A4;
    v16[3] = &block_descriptor_9;
    v14 = _Block_copy(v16);
    v15 = [v13 flatMap_];

    _Block_release(v14);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20DA6962C(void *a1)
{
  v2 = [a1 standardResults];
  v3 = sub_20DD64DC4();

  v57 = v3;
  v4 = [a1 displayMetadata];
  v5 = [v4 serviceState];

  if (!v5)
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

LABEL_8:
    v31 = objc_allocWithZone(HFItemUpdateOutcome);
    v32 = sub_20DD64DB4();
    v33 = [v31 initWithResults_];

    v34 = [objc_opt_self() futureWithResult_];
    v35 = [v34 asGeneric];

    return v35;
  }

  v7 = v6;
  v8 = [objc_opt_self() systemGrayColor];
  v9 = [objc_opt_self() configurationWithHierarchicalColor_];

  v10 = objc_allocWithZone(HFImageIconDescriptor);
  v11 = sub_20DD64E74();
  v12 = [v10 initWithSystemImageNamed:v11 configuration:v9];

  type metadata accessor for HFItemResultKey(0);
  sub_20DA0583C();
  v13 = @"icon";
  sub_20DD65684();
  v54 = sub_20D9D7510(0, &unk_27C843D70, off_277DEFBA8);
  *&v53 = v12;
  sub_20D9D77C8(&v53, v55);
  v14 = v12;
  v15 = v57;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0DFC(v55, v56, isUniquelyReferenced_nonNull_native);
  sub_20D9D4298(v56);
  v57 = v15;
  *&v53 = @"iconNames";
  v17 = @"iconNames";
  sub_20DD65684();
  v18 = [v14 imageIdentifier];
  v19 = sub_20DD64EB4();
  v21 = v20;

  v22 = MEMORY[0x277D837D0];
  v54 = MEMORY[0x277D837D0];
  *&v53 = v19;
  *(&v53 + 1) = v21;
  sub_20D9D77C8(&v53, v55);
  v23 = v57;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  *&v52[0] = v23;
  sub_20D9D0DFC(v55, v56, v24);
  sub_20D9D4298(v56);
  v57 = v23;
  if ([v7 type])
  {
    *&v53 = @"errorDescription";
    v25 = @"errorDescription";
    sub_20DD65684();
    *&v55[0] = @"description";
    v26 = @"description";
    sub_20DD65684();
    if (*(v23 + 16) && (v27 = sub_20D9CB264(&v53), (v28 & 1) != 0))
    {
      sub_20D9D7174(*(v23 + 56) + 32 * v27, v55);
      sub_20D9D4298(&v53);
      sub_20D9D77C8(v55, v52);
      v29 = v57;
      v30 = swift_isUniquelyReferenced_nonNull_native();
      sub_20D9D0DFC(v52, v56, v30);
      sub_20D9D4298(v56);
      v57 = v29;
    }

    else
    {
      sub_20D9D4298(&v53);
      sub_20DA2769C(v56, v55);
      sub_20D9F8608(v55);
      sub_20D9D4298(v56);
    }

    *&v53 = @"longErrorDescription";
    v37 = @"longErrorDescription";
    sub_20DD65684();
    [v7 underlyingStatus];
    v38 = HMNetworkStatusAsString();
    v39 = sub_20DD64EB4();
    v41 = v40;

    v54 = v22;
    *&v53 = v39;
    *(&v53 + 1) = v41;
    sub_20D9D77C8(&v53, v55);
    v42 = v57;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    *&v52[0] = v42;
    sub_20D9D0DFC(v55, v56, v43);
    sub_20D9D4298(v56);
    v57 = *&v52[0];
    *&v53 = @"descriptionStyle";
    v44 = @"descriptionStyle";
    sub_20DD65684();
    v54 = MEMORY[0x277D83E88];
    *&v53 = 1;
    sub_20D9D77C8(&v53, v55);
    v45 = v57;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    *&v52[0] = v45;
    sub_20D9D0DFC(v55, v56, v46);
    sub_20D9D4298(v56);
  }

  v47 = objc_allocWithZone(HFItemUpdateOutcome);
  v48 = sub_20DD64DB4();
  v49 = [v47 initWithResults_];

  v50 = [objc_opt_self() futureWithResult_];
  v51 = [v50 asGeneric];

  return v51;
}

id HFNetworkRouterServiceItem.init(valueSource:service:)(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValueSource:a1 service:a2];
  swift_unknownObjectRelease();

  return v3;
}

{
  v5.super_class = HFNetworkRouterServiceItem;
  v3 = objc_msgSendSuper2(&v5, sel_initWithValueSource_service_, a1, a2);
  swift_unknownObjectRelease();

  return v3;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t HMHomeManager.refresh(before:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_20DA69E50, 0, 0);
}

uint64_t sub_20DA69E50()
{
  _s11CancellableCMa();
  v1 = swift_allocObject();
  v0[2].i64[0] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844940, &qword_20DD96080);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v1 + 16) = v2;
  *(v1 + 24) = 0;
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  v4 = v0[1];
  *(v3 + 16) = v1;
  *(v3 + 24) = vextq_s8(v4, v4, 8uLL);
  v5 = swift_allocObject();
  v0[3].i64[0] = v5;
  swift_weakInit();
  v6 = *(MEMORY[0x277D85A10] + 4);
  v7 = swift_task_alloc();
  v0[3].i64[1] = v7;
  *v7 = v0;
  v7[1] = sub_20DA69FB8;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v7, &unk_20DD96090, v3, sub_20DA6ACCC, v5, 0, 0, v8);
}

uint64_t sub_20DA69FB8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_20DA6A140;
  }

  else
  {
    v6 = *(v2 + 40);
    v5 = *(v2 + 48);

    v4 = sub_20DA6A0DC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DA6A0DC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20DA6A140()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  v4 = v0[1];
  v5 = v0[8];

  return v4();
}

uint64_t sub_20DA6A1DC()
{
  v0 = sub_20DD64C44();
  __swift_allocate_value_buffer(v0, qword_27C844928);
  __swift_project_value_buffer(v0, qword_27C844928);
  if (qword_27C842490 != -1)
  {
    swift_once();
  }

  v1 = qword_280E03EA8;
  return sub_20DD64C54();
}

void sub_20DA6A268()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  v2 = *(v0 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v1 + 4);
  if (v2)
  {
    [v2 cancel];
    swift_unknownObjectRelease();
  }

  os_unfair_lock_lock(v1 + 4);
  v3 = *(v0 + 24);
  *(v0 + 24) = 0;
  swift_unknownObjectRelease();

  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_20DA6A2F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_20DA6A330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[10] = a2;
  return MEMORY[0x2822009F8](sub_20DA6A354, 0, 0);
}

uint64_t sub_20DA6A354()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[3] = sub_20DA6A400;
  v4 = swift_continuation_init();
  sub_20DA6A6D0(v4, v3, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DA6A400()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 104) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_20DA6A59C;
  }

  else
  {
    v3 = sub_20DA6A51C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DA6A51C()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v2 + 4);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20DA6A59C()
{
  v1 = v0[10];
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v2 + 4);
  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_20DA6A61C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D9C76B4;

  return sub_20DA6A330(a1, v4, v5, v6);
}

uint64_t sub_20DA6A6D0(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_27C8424B0 != -1)
  {
    swift_once();
  }

  v6 = sub_20DD64C44();
  __swift_project_value_buffer(v6, qword_27C844928);
  v7 = sub_20DD64C24();
  v8 = sub_20DD65384();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_20D9E0B38(0xD000000000000010, 0x800000020DD99C50, v18);
    _os_log_impl(&dword_20D9BF000, v7, v8, "%s Sending homed request to refresh graph with local process", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F327D10](v10, -1, -1);
    MEMORY[0x20F327D10](v9, -1, -1);
  }

  v11 = sub_20DD63624();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v18[4] = sub_20DA6AD68;
  v18[5] = v12;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_20DA899CC;
  v18[3] = &block_descriptor_10;
  v13 = _Block_copy(v18);

  v14 = [a3 _refreshBeforeDate_completionHandler_];
  _Block_release(v13);

  v15 = *(a2 + 16);
  os_unfair_lock_lock(v15 + 4);
  v16 = *(a2 + 24);
  *(a2 + 24) = v14;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v15 + 4);
  return swift_unknownObjectRelease();
}

uint64_t sub_20DA6A91C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_27C8424B0 != -1)
    {
      swift_once();
    }

    v5 = sub_20DD64C44();
    __swift_project_value_buffer(v5, qword_27C844928);
    v6 = a1;
    v7 = sub_20DD64C24();
    v8 = sub_20DD65364();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v9 = 136315394;
      *(v9 + 4) = sub_20D9E0B38(0xD000000000000010, 0x800000020DD99C50, &v24);
      *(v9 + 12) = 2112;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v13;
      *v10 = v13;
      _os_log_impl(&dword_20D9BF000, v7, v8, "%s HMHomeManager returned error: %@", v9, 0x16u);
      sub_20DA55258(v10);
      MEMORY[0x20F327D10](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x20F327D10](v11, -1, -1);
      MEMORY[0x20F327D10](v9, -1, -1);
    }

    sub_20DA6AD88();
    v14 = swift_allocError();
    *v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443A0, &qword_20DD94E00);
    v16 = swift_allocError();
    *v17 = v14;

    return MEMORY[0x282200958](a2, v16);
  }

  else
  {
    if (qword_27C8424B0 != -1)
    {
      swift_once();
    }

    v18 = sub_20DD64C44();
    __swift_project_value_buffer(v18, qword_27C844928);
    v19 = sub_20DD64C24();
    v20 = sub_20DD65384();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_20D9E0B38(0xD000000000000010, 0x800000020DD99C50, &v24);
      _os_log_impl(&dword_20D9BF000, v19, v20, "%s Finished refreshing with homed", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x20F327D10](v22, -1, -1);
      MEMORY[0x20F327D10](v21, -1, -1);
    }

    return MEMORY[0x282200950](a2);
  }
}

uint64_t sub_20DA6AC74()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20DA6A268();
  }

  return result;
}

uint64_t sub_20DA6ACD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_20DA6AD1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20DA6AD88()
{
  result = qword_27C844948;
  if (!qword_27C844948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844948);
  }

  return result;
}

uint64_t static HFNetworkRouterStatusItem.serviceTypes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD94280;
  v1 = *MEMORY[0x277CD0F48];
  *(inited + 32) = sub_20DD64EB4();
  *(inited + 40) = v2;
  v3 = *MEMORY[0x277CD0F50];
  *(inited + 48) = sub_20DD64EB4();
  *(inited + 56) = v4;
  v5 = sub_20D9EE93C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v5;
}

uint64_t sub_20DA6AF7C(void *a1, void *a2)
{
  v4 = [swift_getObjCClassFromMetadata() serviceTypes];
  v5 = MEMORY[0x277D837D0];
  sub_20DD651E4();

  v6 = sub_20DD651C4();

  v7 = [a2 standardResultsForBatchReadResponse:a1 serviceTypes:v6];

  v8 = sub_20DD64DC4();
  *&v68[0] = @"hidden";
  type metadata accessor for HFItemResultKey(0);
  sub_20DA0583C();
  v9 = @"hidden";
  sub_20DD65684();
  if (*(v8 + 16) && (v10 = sub_20D9CB264(v69), (v11 & 1) != 0))
  {
    sub_20D9D7174(*(v8 + 56) + 32 * v10, &v70);
    sub_20D9D4298(v69);
    if ((swift_dynamicCast() & 1) != 0 && LOBYTE(v68[0]) == 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_20D9D4298(v69);
  }

  *&v68[0] = @"representedHomeKitObjects";
  v12 = @"representedHomeKitObjects";
  sub_20DD65684();
  if (!*(v8 + 16) || (v13 = sub_20D9CB264(v69), (v14 & 1) == 0))
  {
    sub_20D9D4298(v69);
    goto LABEL_13;
  }

  sub_20D9D7174(*(v8 + 56) + 32 * v13, &v70);
  sub_20D9D4298(v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8449B8, &qword_20DD96138);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v23 = objc_allocWithZone(HFItemUpdateOutcome);
    v24 = sub_20DD64DB4();
    v25 = [v23 initWithResults_];

    v26 = [objc_opt_self() futureWithResult_];
    v27 = [v26 asGeneric];

LABEL_14:

    return v27;
  }

  v15 = *&v68[0];
  v16 = a1;
  sub_20DA6BB00(*&v68[0], v16);
  v18 = v17;

  v19 = sub_20D9F938C(v18);

  *&v70 = @"statusRepresentedServiceStates";
  v20 = @"statusRepresentedServiceStates";
  sub_20DD65684();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8449C0, &qword_20DD96140);
  *&v70 = v19;
  sub_20D9D77C8(&v70, v68);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0DFC(v68, v69, isUniquelyReferenced_nonNull_native);
  sub_20D9D4298(v69);
  if ((v19 & 0xC000000000000001) != 0)
  {
    v22 = sub_20DD655B4();
  }

  else
  {
    v22 = *(v19 + 16);
  }

  if (v22 != 1)
  {

    v30 = [objc_opt_self() combinedStateTypeIdentifier];
    goto LABEL_20;
  }

  result = sub_20DA532D8(v19);
  if (result)
  {
    v29 = result;

    v30 = [v29 stateTypeIdentifier];

LABEL_20:
    v31 = sub_20DD64EB4();
    v33 = v32;

    if ((v15 & 0xC000000000000001) != 0)
    {
      v34 = sub_20DD655B4();
    }

    else
    {
      v34 = *(v15 + 16);
    }

    if (v34 == 1)
    {

      *&v70 = @"title";
      v35 = @"title";
      sub_20DD65684();
      v36 = sub_20DD64E74();
      v37 = HFLocalizedString(v36);

      v38 = sub_20DD64EB4();
      v40 = v39;

      v71 = v5;
      *&v70 = v38;
      *(&v70 + 1) = v40;
      sub_20D9D77C8(&v70, v68);
      v41 = swift_isUniquelyReferenced_nonNull_native();
      sub_20D9D0DFC(v68, v69, v41);
      sub_20D9D4298(v69);
      *&v70 = @"description";
      v42 = @"description";
      sub_20DD65684();
      *&v70 = 0;
      *(&v70 + 1) = 0xE000000000000000;
      sub_20DD65704();

      *&v70 = 0xD000000000000024;
      *(&v70 + 1) = 0x800000020DD99D50;
      MEMORY[0x20F325E90](v31, v33);

      v43 = sub_20DD64E74();

      v44 = HFLocalizedString(v43);
    }

    else
    {
      v67 = v31;
      *&v70 = @"title";
      v45 = @"title";
      sub_20DD65684();
      v46 = sub_20DD64E74();
      v47 = HFLocalizedString(v46);

      sub_20DD64EB4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_20DD93A70;
      if ((v15 & 0xC000000000000001) != 0)
      {
        v49 = sub_20DD655B4();
      }

      else
      {
        v49 = *(v15 + 16);
      }

      v50 = MEMORY[0x277D83C10];
      *(v48 + 56) = MEMORY[0x277D83B88];
      *(v48 + 64) = v50;
      *(v48 + 32) = v49;
      v51 = sub_20DD64EC4();
      v53 = v52;

      v71 = v5;
      *&v70 = v51;
      *(&v70 + 1) = v53;
      sub_20D9D77C8(&v70, v68);
      v54 = swift_isUniquelyReferenced_nonNull_native();
      sub_20D9D0DFC(v68, v69, v54);
      sub_20D9D4298(v69);
      *&v70 = @"description";
      v55 = @"description";
      sub_20DD65684();
      *&v70 = 0;
      *(&v70 + 1) = 0xE000000000000000;
      sub_20DD65704();

      *&v70 = 0xD000000000000029;
      *(&v70 + 1) = 0x800000020DD99D00;
      MEMORY[0x20F325E90](v67, v33);

      v43 = sub_20DD64E74();

      v44 = HFLocalizedString(v43);
    }

    v56 = v44;

    v57 = sub_20DD64EB4();
    v59 = v58;

    v71 = v5;
    *&v70 = v57;
    *(&v70 + 1) = v59;
    sub_20D9D77C8(&v70, v68);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    sub_20D9D0DFC(v68, v69, v60);
    sub_20D9D4298(v69);
    *&v70 = @"statusItemCategory";
    v61 = @"statusItemCategory";
    sub_20DD65684();
    v62 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    v71 = sub_20D9D7510(0, &qword_27C8433B0, 0x277CCABB0);
    *&v70 = v62;
    sub_20D9D77C8(&v70, v68);
    v63 = swift_isUniquelyReferenced_nonNull_native();
    sub_20D9D0DFC(v68, v69, v63);
    sub_20D9D4298(v69);
    v64 = objc_allocWithZone(HFItemUpdateOutcome);
    v65 = sub_20DD64DB4();
    v66 = [v64 initWithResults_];

    v26 = [objc_opt_self() futureWithResult_];
    v27 = [v26 asGeneric];

    goto LABEL_14;
  }

  __break(1u);
  return result;
}