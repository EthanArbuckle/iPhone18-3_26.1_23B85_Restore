id HFNetworkRouterStatusItem.init(home:room:valueSource:)(void *a1, void *a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHome:a1 room:a2 valueSource:a3];

  swift_unknownObjectRelease();
  return v5;
}

{
  v7.super_class = HFNetworkRouterStatusItem;
  v5 = objc_msgSendSuper2(&v7, sel_initWithHome_room_valueSource_, a1, a2, a3);

  swift_unknownObjectRelease();
  return v5;
}

void sub_20DA6BB00(uint64_t a1, void *a2)
{
  v2 = a1;
  v26 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
    sub_20DA6C1EC();
    sub_20DD65284();
    v2 = v21;
    v3 = v22;
    v5 = v23;
    v4 = v24;
    v6 = v25;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v4 = 0;
  }

  while (v2 < 0)
  {
    if (!sub_20DD655F4() || (sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90), swift_dynamicCast(), (v12 = v20) == 0))
    {
LABEL_23:
      sub_20D9C51CC();
      return;
    }

LABEL_17:
    v13 = [a2 batchResponseForService_];
    if (!v13)
    {
      goto LABEL_7;
    }

    v14 = v13;
    v15 = [objc_opt_self() displayMetadataForService:v12 characteristicReadResponse:v13];
    v16 = [v15 serviceState];

    if (!v16)
    {
      goto LABEL_7;
    }

    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();

    v12 = v16;
    if (v17)
    {
      MEMORY[0x20F325F00]();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20DD65014();
      }

      sub_20DD65054();
    }

    else
    {
LABEL_7:
    }
  }

  v10 = v4;
  v11 = v6;
  if (v6)
  {
LABEL_13:
    v6 = (v11 - 1) & v11;
    v12 = *(*(v2 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v5 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v11 = *(v3 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t _sSo25HFNetworkRouterStatusItemC4HomeE16_subclass_update7optionsSo8NAFutureCySo19HFItemUpdateOutcomeCGSDys11AnyHashableVypGSg_tF_0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD95210;
  v4 = *MEMORY[0x277CCFA28];
  *(inited + 32) = sub_20DD64EB4();
  *(inited + 40) = v5;
  v6 = *MEMORY[0x277CCFBC8];
  *(inited + 48) = sub_20DD64EB4();
  *(inited + 56) = v7;
  v8 = *MEMORY[0x277CCFBB8];
  *(inited + 64) = sub_20DD64EB4();
  *(inited + 72) = v9;
  v10 = sub_20D9EE93C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v11 = [swift_getObjCClassFromMetadata() serviceTypes];
  v12 = sub_20DD651E4();

  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = sub_20D9E0930(*(v12 + 16), 0);
    v15 = sub_20D9EB61C(aBlock, v14 + 4, v13, v12);
    sub_20D9C51CC();
    if (v15 == v13)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  v16 = sub_20DD64FB4();

  v17 = *(v10 + 16);
  if (!v17)
  {
LABEL_8:
    v21 = sub_20DD64FB4();

    v22 = [v1 filteredServicesOfTypes:v16 containingCharacteristicTypes:v21];

    sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
    sub_20DA6C1EC();
    sub_20DD651E4();

    v23 = [v1 valueSource];
    v24 = sub_20DD651C4();

    v25 = sub_20DD651C4();

    v26 = [v23 readValuesForCharacteristicTypes:v24 inServices:v25];

    swift_unknownObjectRelease();
    v27 = swift_allocObject();
    *(v27 + 16) = v1;
    *(v27 + 24) = ObjectType;
    aBlock[4] = sub_20DA6C254;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20DA055A4;
    aBlock[3] = &block_descriptor_11;
    v28 = _Block_copy(aBlock);
    v29 = v1;

    v30 = [v26 flatMap_];

    _Block_release(v28);
    return v30;
  }

  v18 = sub_20D9E0930(v17, 0);
  v19 = sub_20D9EB61C(aBlock, v18 + 4, v17, v10);

  result = sub_20D9C51CC();
  if (v19 == v17)
  {
    v1 = v0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t sub_20DA6C1EC()
{
  result = qword_27C843900;
  if (!qword_27C843900)
  {
    sub_20D9D7510(255, &qword_27C8435F0, 0x277CD1D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C843900);
  }

  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20DA6C274(char a1, void (*a2)(uint64_t *__return_ptr, char *, uint64_t *), uint64_t a3, void *a4)
{
  v5 = a1;
  BYTE1(v14) = a1;
  v6 = a4[2];
  if (v6)
  {
    v13 = a4[4];

    a2(&v14, &v14 + 1, &v13);
    if (v4)
    {
    }

    else
    {
      v9 = a4 + 5;
      for (i = v6 - 1; ; --i)
      {

        v5 = v14;
        BYTE1(v14) = v14;
        if (!i)
        {
          break;
        }

        v11 = *v9++;
        v13 = v11;

        a2(&v14, &v14 + 1, &v13);
      }
    }
  }

  return v5 & 1;
}

uint64_t sub_20DA6C360(void *a1)
{
  v1 = a1;
  matched = HMMatterCommand.expectedValuesMatchCurrentState.getter();

  return matched & 1;
}

uint64_t HMMatterCommand.expectedValuesMatchCurrentState.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_20DD64C44();
  v78 = *(v2 - 8);
  v79 = v2;
  v3 = *(v78 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v68 - v8;
  MEMORY[0x28223BE20](v7);
  v76 = &v68 - v10;
  v11 = sub_20DD63744();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_20DD63CF4();
  v73 = *(v13 - 8);
  v74 = v13;
  v14 = *(v73 + 64);
  MEMORY[0x28223BE20](v13);
  v72 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844010, &qword_20DD946F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v68 - v18;
  v20 = sub_20DD63CD4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v68 - v26;
  v28 = [v1 expectedValues];
  if (!v28)
  {
    sub_20DD64BE4();
    v45 = v1;
    v46 = sub_20DD64C24();
    v47 = sub_20DD65364();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v80 = v50;
      *v48 = 136315394;
      *(v48 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, &v80);
      *(v48 + 12) = 2114;
      *(v48 + 14) = v45;
      *v49 = v45;
      v51 = v45;
      _os_log_impl(&dword_20D9BF000, v46, v47, "%s: Command has no expectedValues! %{public}@", v48, 0x16u);
      sub_20D9D76EC(v49, &unk_27C843630, &qword_20DD94080);
      MEMORY[0x20F327D10](v49, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x20F327D10](v50, -1, -1);
      MEMORY[0x20F327D10](v48, -1, -1);
    }

    (*(v78 + 8))(v6, v79);
    goto LABEL_18;
  }

  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844850, &qword_20DD946F8);
  v77 = sub_20DD64FD4();

  v30 = [v1 accessory];
  v31 = sub_20DD652F4();
  if (!v31)
  {
    goto LABEL_11;
  }

  v33 = v31;
  v71 = v32;
  v34 = [v30 home];
  if (!v34)
  {
    swift_unknownObjectRelease();
LABEL_11:

    sub_20DD64BE4();
    v52 = v1;
    v53 = v30;
    v54 = sub_20DD64C24();
    v55 = sub_20DD65364();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v80 = v58;
      *v56 = 136315650;
      *(v56 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, &v80);
      *(v56 + 12) = 2112;
      *(v56 + 14) = v53;
      *(v56 + 22) = 2114;
      *(v56 + 24) = v52;
      *v57 = v53;
      v57[1] = v52;
      v59 = v52;
      v60 = v53;
      _os_log_impl(&dword_20D9BF000, v54, v55, "%s: Failed to get matter device on accessory %@ from command %{public}@", v56, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843630, &qword_20DD94080);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v57, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x20F327D10](v58, -1, -1);
      MEMORY[0x20F327D10](v56, -1, -1);
    }

    else
    {
    }

    (*(v78 + 8))(v9, v79);
    goto LABEL_18;
  }

  v69 = v30;
  v70 = v34;
  v68 = v33;
  v35 = [v1 clusterID];
  [v35 unsignedIntValue];

  sub_20DD63CC4();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {

    sub_20D9D76EC(v19, &unk_27C844010, &qword_20DD946F0);
    v36 = v76;
    sub_20DD64BE4();
    v37 = v1;
    v38 = sub_20DD64C24();
    v39 = sub_20DD65364();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v80 = v42;
      *v40 = 136315650;
      *(v40 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, &v80);
      *(v40 + 12) = 2112;
      v43 = [v37 clusterID];
      *(v40 + 14) = v43;
      *(v40 + 22) = 2114;
      *(v40 + 24) = v37;
      *v41 = v43;
      v41[1] = v37;
      v44 = v37;
      _os_log_impl(&dword_20D9BF000, v38, v39, "%s: Failed to get cluster kind for %@ from command %{public}@", v40, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843630, &qword_20DD94080);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v41, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x20F327D10](v42, -1, -1);
      MEMORY[0x20F327D10](v40, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v78 + 8))(v36, v79);
LABEL_18:
    v66 = 0;
    return v66 & 1;
  }

  (*(v21 + 32))(v27, v19, v20);
  v61 = [v70 uniqueIdentifier];
  sub_20DD63714();

  v62 = v68;
  swift_getObjectType();
  sub_20DD63D94();
  v63 = [v1 endpointID];
  [v63 unsignedShortValue];

  (*(v21 + 16))(v25, v27, v20);
  v64 = v72;
  v65 = sub_20DD63CE4();
  MEMORY[0x28223BE20](v65);
  *(&v68 - 6) = v1;
  *(&v68 - 5) = v62;
  *(&v68 - 4) = v71;
  *(&v68 - 3) = v64;
  *(&v68 - 2) = ObjectType;
  v66 = sub_20DA6C274(1, sub_20DA6E220, (&v68 - 8), v77);

  swift_unknownObjectRelease();

  (*(v21 + 8))(v27, v20);
  (*(v73 + 8))(v64, v74);
  return v66 & 1;
}

uint64_t sub_20DA6CD54@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v171 = a6;
  v170 = a5;
  v169 = a4;
  v176 = a7;
  v172 = sub_20DD63CF4();
  v173 = *(v172 - 8);
  v10 = *(v173 + 64);
  MEMORY[0x28223BE20](v172);
  v168 = &v160[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v177 = sub_20DD64C44();
  v186 = *(v177 - 8);
  v12 = *(v186 + 64);
  v13 = MEMORY[0x28223BE20](v177);
  v15 = &v160[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v160[-v17];
  v19 = MEMORY[0x28223BE20](v16);
  v175 = &v160[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v174 = &v160[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v160[-v24];
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v160[-v27];
  MEMORY[0x28223BE20](v26);
  v30 = &v160[-v29];
  v31 = *a1;
  v32 = *a2;
  v33 = *MEMORY[0x277CD50B8];
  v34 = sub_20DD64EB4();
  if (!*(v32 + 16))
  {

LABEL_8:
    sub_20DD64BE4();
    v55 = a3;

    v56 = sub_20DD64C24();
    v57 = sub_20DD65364();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v178[0] = v60;
      *v58 = 136315650;
      *(v58 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, v178);
      *(v58 + 12) = 2080;
      v61 = sub_20DD64DD4();
      v63 = sub_20D9E0B38(v61, v62, v178);

      *(v58 + 14) = v63;
      *(v58 + 22) = 2114;
      *(v58 + 24) = v55;
      *v59 = v55;
      v64 = v55;
      _os_log_impl(&dword_20D9BF000, v56, v57, "%s: Failed to get attribute path for %s from command %{public}@", v58, 0x20u);
      sub_20D9D76EC(v59, &unk_27C843630, &qword_20DD94080);
      MEMORY[0x20F327D10](v59, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v60, -1, -1);
      MEMORY[0x20F327D10](v58, -1, -1);
    }

    result = (*(v186 + 8))(v15, v177);
    goto LABEL_11;
  }

  v166 = v31;
  v165 = v25;
  v36 = sub_20D9CB170(v34, v35);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_20D9D7174(*(v32 + 56) + 32 * v36, v178);
  sub_20D9D7510(0, &qword_27C8449D0, 0x277CD51C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v167 = v185[0];
  v39 = [v167 endpoint];
  v40 = [v39 unsignedShortValue];

  v41 = [a3 endpointID];
  v42 = [v41 unsignedShortValue];

  if (v40 != v42)
  {
    sub_20DD64BE4();
    v43 = v167;
    v44 = a3;
    v45 = sub_20DD64C24();
    v46 = sub_20DD65364();

    v163 = v43;
    v164 = v45;
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v161 = v46;
      v49 = v48;
      v162 = swift_slowAlloc();
      v178[0] = v162;
      *v47 = 136315906;
      *(v47 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, v178);
      *(v47 + 12) = 2112;
      v50 = [v163 endpoint];
      *(v47 + 14) = v50;
      *v49 = v50;
      *(v47 + 22) = 2112;
      v51 = [v44 endpointID];
      *(v47 + 24) = v51;
      *(v47 + 32) = 2114;
      *(v47 + 34) = v44;
      v49[1] = v51;
      v49[2] = v44;
      v52 = v44;
      v53 = v164;
      _os_log_impl(&dword_20D9BF000, v164, v161, "%s: WARNING: EndpointID in expectedValues (%@) doesn't match HMMatterCommand (%@). %{public}@", v47, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843630, &qword_20DD94080);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v49, -1, -1);
      v54 = v162;
      __swift_destroy_boxed_opaque_existential_0(v162);
      MEMORY[0x20F327D10](v54, -1, -1);
      MEMORY[0x20F327D10](v47, -1, -1);
    }

    else
    {
    }

    (*(v186 + 8))(v30, v177);
  }

  v66 = v167;
  v67 = [v167 cluster];

  v68 = &selRef_source;
  LODWORD(v66) = [v67 unsignedIntValue];

  v69 = [a3 clusterID];
  v70 = [v69 unsignedIntValue];

  if (v66 != v70)
  {
    sub_20DD64BE4();
    v71 = v167;
    v72 = a3;
    v73 = sub_20DD64C24();
    v74 = sub_20DD65364();

    v164 = v73;
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      LODWORD(v162) = v74;
      v77 = v76;
      v163 = swift_slowAlloc();
      v178[0] = v163;
      *v75 = 136315906;
      *(v75 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, v178);
      *(v75 + 12) = 2112;
      v78 = [v71 cluster];
      *(v75 + 14) = v78;
      *v77 = v78;
      *(v75 + 22) = 2112;
      v79 = [v72 clusterID];
      *(v75 + 24) = v79;
      *(v75 + 32) = 2114;
      *(v75 + 34) = v72;
      v77[1] = v79;
      v77[2] = v72;
      v80 = v72;
      v81 = v164;
      _os_log_impl(&dword_20D9BF000, v164, v162, "%s: WARNING: Cluster ID in expectedValues (%@) doesn't match HMMatterCommand (%@).  %{public}@", v75, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843630, &qword_20DD94080);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v77, -1, -1);
      v82 = v163;
      __swift_destroy_boxed_opaque_existential_0(v163);
      MEMORY[0x20F327D10](v82, -1, -1);
      v83 = v75;
      v68 = 0x1FB752000;
      MEMORY[0x20F327D10](v83, -1, -1);
    }

    else
    {
    }

    (*(v186 + 8))(v28, v177);
  }

  v84 = *MEMORY[0x277CD50D8];
  v85 = sub_20DD64EB4();
  if (!*(v32 + 16))
  {

    goto LABEL_30;
  }

  v87 = sub_20D9CB170(v85, v86);
  v89 = v88;

  if ((v89 & 1) == 0 || (sub_20D9D7174(*(v32 + 56) + 32 * v87, v178), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844850, &qword_20DD946F8), (swift_dynamicCast() & 1) == 0))
  {
LABEL_30:
    sub_20DD64BE4();
    v116 = a3;

    v117 = sub_20DD64C24();
    v118 = sub_20DD65364();

    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v178[0] = v121;
      *v119 = 136315650;
      *(v119 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, v178);
      *(v119 + 12) = 2082;
      v122 = sub_20DD64DD4();
      v124 = sub_20D9E0B38(v122, v123, v178);

      *(v119 + 14) = v124;
      *(v119 + 22) = 2114;
      *(v119 + 24) = v116;
      *v120 = v116;
      v125 = v116;
      _os_log_impl(&dword_20D9BF000, v117, v118, "%s: Failed to get data for %{public}s from command %{public}@", v119, 0x20u);
      sub_20D9D76EC(v120, &unk_27C843630, &qword_20DD94080);
      MEMORY[0x20F327D10](v120, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v121, -1, -1);
      MEMORY[0x20F327D10](v119, -1, -1);
    }

    else
    {
    }

    result = (*(v186 + 8))(v18, v177);
    goto LABEL_11;
  }

  v90 = v185[0];
  v91 = *MEMORY[0x277CD5188];
  v92 = sub_20DD64EB4();
  if (!v90[2])
  {

    v97 = v175;
    goto LABEL_36;
  }

  v94 = sub_20D9CB170(v92, v93);
  v96 = v95;

  v97 = v175;
  if ((v96 & 1) == 0 || (sub_20D9D7174(v90[7] + 32 * v94, v178), (swift_dynamicCast() & 1) == 0))
  {

LABEL_36:
    sub_20DD64BE4();
    v126 = a3;

    v127 = sub_20DD64C24();
    v128 = sub_20DD65364();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v178[0] = v131;
      *v129 = 136315650;
      *(v129 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, v178);
      *(v129 + 12) = 2082;
      v132 = sub_20DD64DD4();
      v134 = sub_20D9E0B38(v132, v133, v178);

      *(v129 + 14) = v134;
      *(v129 + 22) = 2112;
      *(v129 + 24) = v126;
      *v130 = v126;
      v135 = v126;
      _os_log_impl(&dword_20D9BF000, v127, v128, "%s: Failed to get data for %{public}s from command %@", v129, 0x20u);
      sub_20D9D76EC(v130, &unk_27C843630, &qword_20DD94080);
      MEMORY[0x20F327D10](v130, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v131, -1, -1);
      MEMORY[0x20F327D10](v129, -1, -1);

      result = (*(v186 + 8))(v175, v177);
    }

    else
    {

      result = (*(v186 + 8))(v97, v177);
    }

    goto LABEL_11;
  }

  v99 = v185[0];
  v98 = v185[1];
  v100 = *MEMORY[0x277CD51A0];
  v101 = sub_20DD64EB4();
  if (!v90[2])
  {

LABEL_40:

    v136 = v174;
    sub_20DD64BE4();
    v137 = a3;

    v138 = sub_20DD64C24();
    v139 = sub_20DD65364();

    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v178[0] = v142;
      *v140 = 136315650;
      *(v140 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, v178);
      *(v140 + 12) = 2082;
      v143 = sub_20DD64DD4();
      v145 = sub_20D9E0B38(v143, v144, v178);

      *(v140 + 14) = v145;
      *(v140 + 22) = 2114;
      *(v140 + 24) = v137;
      *v141 = v137;
      v146 = v137;
      _os_log_impl(&dword_20D9BF000, v138, v139, "%s: Failed to get data for %{public}s from command %{public}@", v140, 0x20u);
      sub_20D9D76EC(v141, &unk_27C843630, &qword_20DD94080);
      MEMORY[0x20F327D10](v141, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v142, -1, -1);
      MEMORY[0x20F327D10](v140, -1, -1);

      result = (*(v186 + 8))(v174, v177);
    }

    else
    {

      result = (*(v186 + 8))(v136, v177);
    }

LABEL_11:
    *v176 = 0;
    return result;
  }

  v175 = v99;
  v103 = v68;
  v104 = sub_20D9CB170(v101, v102);
  v106 = v105;

  if ((v106 & 1) == 0)
  {
    goto LABEL_40;
  }

  sub_20D9D7174(v90[7] + 32 * v104, v185);

  v107 = [v167 attribute];
  v108 = [v107 (v103 + 696)];

  swift_getObjectType();
  v109 = v172;
  v179 = v172;
  v180 = sub_20DA6F528(&qword_27C8449D8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v178);
  v111 = *(v173 + 16);
  v112 = v171;
  v111(boxed_opaque_existential_1, v171, v109);
  sub_20DD63DA4();
  __swift_destroy_boxed_opaque_existential_0(v178);
  if (!v182)
  {
    LODWORD(v175) = v108;

    sub_20D9D76EC(&v181, &qword_27C8442C0, &qword_20DD94B78);
    v147 = v165;
    sub_20DD64BE4();
    v148 = v168;
    v149 = v112;
    v150 = v147;
    v111(v168, v149, v109);
    v151 = sub_20DD64C24();
    v152 = sub_20DD65364();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = v148;
      v154 = swift_slowAlloc();
      v178[0] = swift_slowAlloc();
      v155 = v178[0];
      *v154 = 136315650;
      *(v154 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, v178);
      *(v154 + 12) = 2082;
      sub_20DA6F528(&unk_27C8449E0);
      v156 = sub_20DD65934();
      v158 = v157;
      (*(v173 + 8))(v153, v109);
      v159 = sub_20D9E0B38(v156, v158, v178);

      *(v154 + 14) = v159;
      *(v154 + 22) = 1026;
      *(v154 + 24) = v175;
      _os_log_impl(&dword_20D9BF000, v151, v152, "%s: Failed to get current value for (%{public}s:%{public}u)", v154, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v155, -1, -1);
      MEMORY[0x20F327D10](v154, -1, -1);
    }

    else
    {

      (*(v173 + 8))(v148, v109);
    }

    (*(v186 + 8))(v150, v177);
    result = __swift_destroy_boxed_opaque_existential_0(v185);
    goto LABEL_11;
  }

  sub_20D9D77C8(&v181, &v183);
  v113 = v184;
  v114 = __swift_project_boxed_opaque_existential_0(&v183, v184);
  v179 = v113;
  v115 = __swift_allocate_boxed_opaque_existential_1(v178);
  (*(*(v113 - 8) + 16))(v115, v114, v113);
  LOBYTE(v113) = sub_20DA6E244(v185, v178, v175, v98);

  __swift_destroy_boxed_opaque_existential_0(v185);
  __swift_destroy_boxed_opaque_existential_0(v178);
  *v176 = v166 & v113;
  return __swift_destroy_boxed_opaque_existential_0(&v183);
}

uint64_t sub_20DA6E160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = a5;
  sub_20DD654E4();
  swift_unknownObjectRelease();
  sub_20DD654E4();
  swift_unknownObjectRelease();
  v7 = sub_20DD64EB4();
  v9 = v8;

  LOBYTE(v6) = sub_20DA6E244(v12, v11, v7, v9);

  __swift_destroy_boxed_opaque_existential_0(v11);
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v6 & 1;
}

uint64_t sub_20DA6E244(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_20DD64C44();
  v9 = *(v8 - 8);
  v152 = v8;
  v153 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v150 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v148 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v151 = &v148 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v148 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v148 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v148 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v148 - v27;
  v29 = *MEMORY[0x277CD50C0];
  if (sub_20DD64EB4() == a3 && v30 == a4)
  {
  }

  else
  {
    v149 = v15;
    v32 = sub_20DD65974();

    if ((v32 & 1) == 0)
    {
      v33 = *MEMORY[0x277CD5178];
      v35 = sub_20DD64EB4() == a3 && v34 == a4;
      v36 = a1;
      if (v35)
      {
      }

      else
      {
        v37 = sub_20DD65974();

        if ((v37 & 1) == 0)
        {
          v38 = *MEMORY[0x277CD5198];
          if (sub_20DD64EB4() == a3 && v39 == a4)
          {

            v40 = a2;
            goto LABEL_33;
          }

          v69 = sub_20DD65974();

          v40 = a2;
          if (v69)
          {
LABEL_33:
            sub_20D9D7174(a1, v157);
            if (swift_dynamicCast())
            {
              v70 = v156[0];
              sub_20D9D7174(v40, v157);
              if (swift_dynamicCast())
              {
                v42 = v70 == v156[0];
                return v42 & 1;
              }
            }

            sub_20DD64BE4();
            sub_20D9D7174(a1, v157);
            sub_20D9D7174(v40, v156);
            v71 = sub_20DD64C24();
            v72 = sub_20DD65364();
            if (os_log_type_enabled(v71, v72))
            {
              v73 = swift_slowAlloc();
              v74 = swift_slowAlloc();
              v155 = v74;
              *v73 = 136315650;
              *(v73 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, &v155);
              *(v73 + 12) = 2082;
              sub_20D9D7174(v157, v154);
              v75 = sub_20DD64EE4();
              v77 = v76;
              __swift_destroy_boxed_opaque_existential_0(v157);
              v78 = sub_20D9E0B38(v75, v77, &v155);

              *(v73 + 14) = v78;
              *(v73 + 22) = 2082;
              sub_20D9D7174(v156, v154);
              v79 = sub_20DD64EE4();
              v81 = v80;
              __swift_destroy_boxed_opaque_existential_0(v156);
              v82 = sub_20D9E0B38(v79, v81, &v155);

              *(v73 + 24) = v82;
              _os_log_impl(&dword_20D9BF000, v71, v72, "%s: Comparing UInt type, but couldn't cast all values: (%{public}s) (%{public}s)", v73, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x20F327D10](v74, -1, -1);
              MEMORY[0x20F327D10](v73, -1, -1);
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_0(v156);
              __swift_destroy_boxed_opaque_existential_0(v157);
            }

            (*(v153 + 8))(v23, v152);
            goto LABEL_22;
          }

          v83 = *MEMORY[0x277CD5118];
          if (sub_20DD64EB4() == a3 && v84 == a4)
          {

            goto LABEL_44;
          }

          v85 = sub_20DD65974();

          if (v85)
          {
LABEL_44:
            sub_20D9D7174(a1, v157);
            if (swift_dynamicCast())
            {
              v86 = *v156;
              sub_20D9D7174(a2, v157);
              if (swift_dynamicCast())
              {
                v42 = v86 == *v156;
                return v42 & 1;
              }
            }

            sub_20DD64BE4();
            sub_20D9D7174(a1, v157);
            sub_20D9D7174(a2, v156);
            v87 = sub_20DD64C24();
            v88 = sub_20DD65364();
            if (os_log_type_enabled(v87, v88))
            {
              v89 = swift_slowAlloc();
              v90 = swift_slowAlloc();
              v155 = v90;
              *v89 = 136315650;
              *(v89 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, &v155);
              *(v89 + 12) = 2082;
              sub_20D9D7174(v157, v154);
              v91 = sub_20DD64EE4();
              v93 = v92;
              __swift_destroy_boxed_opaque_existential_0(v157);
              v94 = sub_20D9E0B38(v91, v93, &v155);

              *(v89 + 14) = v94;
              *(v89 + 22) = 2082;
              sub_20D9D7174(v156, v154);
              v95 = sub_20DD64EE4();
              v97 = v96;
              __swift_destroy_boxed_opaque_existential_0(v156);
              v98 = sub_20D9E0B38(v95, v97, &v155);

              *(v89 + 24) = v98;
              _os_log_impl(&dword_20D9BF000, v87, v88, "%s: Comparing Double type, but couldn't cast all values: (%{public}s) (%{public}s)", v89, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x20F327D10](v90, -1, -1);
              MEMORY[0x20F327D10](v89, -1, -1);
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_0(v156);
              __swift_destroy_boxed_opaque_existential_0(v157);
            }

            (*(v153 + 8))(v20, v152);
            goto LABEL_22;
          }

          v99 = *MEMORY[0x277CD5150];
          if (sub_20DD64EB4() == a3 && v100 == a4)
          {

LABEL_55:
            sub_20D9D7174(a1, v157);
            if (swift_dynamicCast())
            {
              v102 = *v156;
              sub_20D9D7174(a2, v157);
              v103 = swift_dynamicCast();
              v104 = v151;
              if (v103)
              {
                v42 = v102 == *v156;
                return v42 & 1;
              }
            }

            else
            {
              v104 = v151;
            }

            sub_20DD64BE4();
            sub_20D9D7174(v36, v157);
            sub_20D9D7174(a2, v156);
            v105 = sub_20DD64C24();
            v106 = sub_20DD65364();
            if (os_log_type_enabled(v105, v106))
            {
              v107 = swift_slowAlloc();
              v108 = swift_slowAlloc();
              v155 = v108;
              *v107 = 136315650;
              *(v107 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, &v155);
              *(v107 + 12) = 2082;
              sub_20D9D7174(v157, v154);
              v109 = sub_20DD64EE4();
              v111 = v110;
              __swift_destroy_boxed_opaque_existential_0(v157);
              v112 = sub_20D9E0B38(v109, v111, &v155);

              *(v107 + 14) = v112;
              *(v107 + 22) = 2082;
              sub_20D9D7174(v156, v154);
              v113 = sub_20DD64EE4();
              v115 = v114;
              __swift_destroy_boxed_opaque_existential_0(v156);
              v116 = sub_20D9E0B38(v113, v115, &v155);

              *(v107 + 24) = v116;
              _os_log_impl(&dword_20D9BF000, v105, v106, "%s: Comparing Float type, but couldn't cast all values: (%{public}s) (%{public}s)", v107, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x20F327D10](v108, -1, -1);
              MEMORY[0x20F327D10](v107, -1, -1);
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_0(v156);
              __swift_destroy_boxed_opaque_existential_0(v157);
            }

            (*(v153 + 8))(v104, v152);
            goto LABEL_22;
          }

          v101 = sub_20DD65974();

          if (v101)
          {
            goto LABEL_55;
          }

          v117 = *MEMORY[0x277CD50B0];
          if (sub_20DD64EB4() == a3 && v118 == a4)
          {

LABEL_67:
            sub_20D9D7174(a1, v157);
            sub_20D9D7510(0, &qword_27C8449C8, 0x277CBEA60);
            if (swift_dynamicCast())
            {
              v120 = v156[0];
              sub_20D9D7174(a2, v157);
              if (swift_dynamicCast())
              {
                v121 = v156[0];
                sub_20D9D7510(0, &qword_27C8441A0, 0x277D82BB8);
                v42 = sub_20DD65454();

                return v42 & 1;
              }
            }

            v135 = v149;
            sub_20DD64BE4();
            sub_20D9D7174(a1, v157);
            sub_20D9D7174(a2, v156);
            v136 = sub_20DD64C24();
            v137 = sub_20DD65364();
            if (os_log_type_enabled(v136, v137))
            {
              v138 = swift_slowAlloc();
              v139 = swift_slowAlloc();
              v155 = v139;
              *v138 = 136315650;
              *(v138 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, &v155);
              *(v138 + 12) = 2082;
              sub_20D9D7174(v157, v154);
              v140 = sub_20DD64EE4();
              v142 = v141;
              __swift_destroy_boxed_opaque_existential_0(v157);
              v143 = sub_20D9E0B38(v140, v142, &v155);

              *(v138 + 14) = v143;
              *(v138 + 22) = 2082;
              sub_20D9D7174(v156, v154);
              v144 = sub_20DD64EE4();
              v146 = v145;
              __swift_destroy_boxed_opaque_existential_0(v156);
              v147 = sub_20D9E0B38(v144, v146, &v155);

              *(v138 + 24) = v147;
              _os_log_impl(&dword_20D9BF000, v136, v137, "%s: Comparing Array type, but couldn't cast all values: (%{public}s) (%{public}s)", v138, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x20F327D10](v139, -1, -1);
              MEMORY[0x20F327D10](v138, -1, -1);
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_0(v156);
              __swift_destroy_boxed_opaque_existential_0(v157);
            }

            (*(v153 + 8))(v135, v152);
            goto LABEL_22;
          }

          v119 = sub_20DD65974();

          if (v119)
          {
            goto LABEL_67;
          }

          v122 = v150;
          sub_20DD64BE4();
          sub_20D9D7174(a1, v157);
          sub_20D9D7174(v40, v156);

          v123 = sub_20DD64C24();
          v124 = sub_20DD65364();

          if (os_log_type_enabled(v123, v124))
          {
            v125 = swift_slowAlloc();
            v126 = swift_slowAlloc();
            v155 = v126;
            *v125 = 136315906;
            *(v125 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, &v155);
            *(v125 + 12) = 2080;
            *(v125 + 14) = sub_20D9E0B38(a3, a4, &v155);
            *(v125 + 22) = 2082;
            sub_20D9D7174(v157, v154);
            v127 = sub_20DD64EE4();
            v129 = v128;
            __swift_destroy_boxed_opaque_existential_0(v157);
            v130 = sub_20D9E0B38(v127, v129, &v155);

            *(v125 + 24) = v130;
            *(v125 + 32) = 2082;
            sub_20D9D7174(v156, v154);
            v131 = sub_20DD64EE4();
            v133 = v132;
            __swift_destroy_boxed_opaque_existential_0(v156);
            v134 = sub_20D9E0B38(v131, v133, &v155);

            *(v125 + 34) = v134;
            _os_log_impl(&dword_20D9BF000, v123, v124, "%s: Attempted to compare unsupported type: (%s) values: (%{public}s) (%{public}s)", v125, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x20F327D10](v126, -1, -1);
            MEMORY[0x20F327D10](v125, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_0(v156);
            __swift_destroy_boxed_opaque_existential_0(v157);
          }

          (*(v153 + 8))(v122, v152);
LABEL_22:
          v42 = 0;
          return v42 & 1;
        }
      }

      sub_20D9D7174(a1, v157);
      if (swift_dynamicCast())
      {
        v56 = v156[0];
        sub_20D9D7174(a2, v157);
        if (swift_dynamicCast())
        {
          v42 = v56 == v156[0];
          return v42 & 1;
        }
      }

      sub_20DD64BE4();
      sub_20D9D7174(a1, v157);
      sub_20D9D7174(a2, v156);
      v57 = sub_20DD64C24();
      v58 = sub_20DD65364();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v155 = v60;
        *v59 = 136315650;
        *(v59 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, &v155);
        *(v59 + 12) = 2082;
        sub_20D9D7174(v157, v154);
        v61 = sub_20DD64EE4();
        v63 = v62;
        __swift_destroy_boxed_opaque_existential_0(v157);
        v64 = sub_20D9E0B38(v61, v63, &v155);

        *(v59 + 14) = v64;
        *(v59 + 22) = 2082;
        sub_20D9D7174(v156, v154);
        v65 = sub_20DD64EE4();
        v67 = v66;
        __swift_destroy_boxed_opaque_existential_0(v156);
        v68 = sub_20D9E0B38(v65, v67, &v155);

        *(v59 + 24) = v68;
        _os_log_impl(&dword_20D9BF000, v57, v58, "%s: Comparing Int type, but couldn't cast all values: (%{public}s) (%{public}s)", v59, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F327D10](v60, -1, -1);
        MEMORY[0x20F327D10](v59, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v156);
        __swift_destroy_boxed_opaque_existential_0(v157);
      }

      (*(v153 + 8))(v26, v152);
      goto LABEL_22;
    }
  }

  sub_20D9D7174(a1, v157);
  if ((swift_dynamicCast() & 1) == 0 || (v41 = v156[0], sub_20D9D7174(a2, v157), (swift_dynamicCast() & 1) == 0))
  {
    sub_20DD64BE4();
    sub_20D9D7174(a1, v157);
    sub_20D9D7174(a2, v156);
    v43 = sub_20DD64C24();
    v44 = sub_20DD65364();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v155 = v46;
      *v45 = 136315650;
      *(v45 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, &v155);
      *(v45 + 12) = 2082;
      sub_20D9D7174(v157, v154);
      v47 = sub_20DD64EE4();
      v49 = v48;
      __swift_destroy_boxed_opaque_existential_0(v157);
      v50 = sub_20D9E0B38(v47, v49, &v155);

      *(v45 + 14) = v50;
      *(v45 + 22) = 2082;
      sub_20D9D7174(v156, v154);
      v51 = sub_20DD64EE4();
      v53 = v52;
      __swift_destroy_boxed_opaque_existential_0(v156);
      v54 = sub_20D9E0B38(v51, v53, &v155);

      *(v45 + 24) = v54;
      _os_log_impl(&dword_20D9BF000, v43, v44, "%s: Comparing Bool type, but couldn't cast all values: (%{public}s (%{public}s)", v45, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v46, -1, -1);
      MEMORY[0x20F327D10](v45, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v156);
      __swift_destroy_boxed_opaque_existential_0(v157);
    }

    (*(v153 + 8))(v28, v152);
    goto LABEL_22;
  }

  v42 = v41 ^ LOBYTE(v156[0]) ^ 1;
  return v42 & 1;
}

uint64_t sub_20DA6F528(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_20DD63CF4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20DA6F56C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x277D84F90];
  sub_20DA4AF84(0, v1, 0);
  v2 = v28;
  v4 = -1 << *(a1 + 32);
  v27 = a1 + 56;
  result = sub_20DD65514();
  v6 = result;
  v7 = 0;
  v26 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v27 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v12 = *(*(a1 + 48) + 8 * v6);
    result = sub_20DD64EB4();
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = v13;
      v25 = result;
      sub_20DA4AF84((v14 > 1), v15 + 1, 1);
      v13 = v24;
      result = v25;
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 16 * v15;
    *(v16 + 32) = result;
    *(v16 + 40) = v13;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v17 = *(v27 + 8 * v10);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v26;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v9 = v26;
      v21 = (a1 + 64 + 8 * v10);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_20D9EF46C(v6, v11, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_20D9EF46C(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_20DA6F790(uint64_t a1)
{
  v3 = sub_20DD63744();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_20DD655B4();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v51 = MEMORY[0x277D84F90];
    sub_20DA4B068(0, v8 & ~(v8 >> 63), 0);
    v46 = v51;
    if (v45)
    {
      result = sub_20DD65554();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = sub_20DD65514();
      v10 = *(a1 + 36);
    }

    v48 = result;
    v49 = v10;
    v50 = v45 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v41 = v8;
      v42 = v44 + 32;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v39 = a1 + 56;
      v40 = v13;
      v37[1] = v1;
      v38 = a1 + 64;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        v16 = v48;
        v17 = v49;
        v18 = v50;
        v19 = a1;
        sub_20DA737FC(v48, v49, v50, a1, &qword_280E02100, 0x277CD1970);
        v21 = v20;
        v22 = [v20 uniqueIdentifier];
        sub_20DD63714();

        v23 = v46;
        v51 = v46;
        v25 = *(v46 + 16);
        v24 = *(v46 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_20DA4B068(v24 > 1, v25 + 1, 1);
          v23 = v51;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v46 = v23;
        result = (*(v44 + 32))(v23 + v26 + *(v44 + 72) * v25, v7, v43);
        if (v45)
        {
          if (!v18)
          {
            goto LABEL_42;
          }

          a1 = v19;
          if (sub_20DD65574())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844A98, &unk_20DD96270);
          v14 = sub_20DD65254();
          sub_20DD65624();
          result = v14(v47, 0);
          if (v12 == v8)
          {
LABEL_34:
            sub_20D9EF46C(v48, v49, v50);
            return v46;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_43;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v19;
          v27 = 1 << *(v19 + 32);
          if (v16 >= v27)
          {
            goto LABEL_38;
          }

          v28 = v16 >> 6;
          v29 = *(v39 + 8 * (v16 >> 6));
          if (((v29 >> v16) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v19 + 36) != v17)
          {
            goto LABEL_40;
          }

          v30 = v29 & (-2 << (v16 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v38 + 8 * v28);
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                result = sub_20D9EF46C(v16, v17, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_33;
              }
            }

            result = sub_20D9EF46C(v16, v17, 0);
          }

LABEL_33:
          v36 = *(v19 + 36);
          v48 = v27;
          v49 = v36;
          v50 = 0;
          v8 = v41;
          if (v12 == v41)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t HFItemManagerMessageBatchCoordinator.discardsDelegatesReason.getter()
{
  v1 = (v0 + OBJC_IVAR___HFItemManagerMessageBatchCoordinator_discardsDelegatesReason);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t HFItemManagerMessageBatchCoordinator.discardsDelegatesReason.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___HFItemManagerMessageBatchCoordinator_discardsDelegatesReason);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id HFItemManagerMessageBatchCoordinator.init(itemManager:delegateAdapter:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithItemManager:a1 delegateAdapter:a2];

  return v4;
}

char *HFItemManagerMessageBatchCoordinator.init(itemManager:delegateAdapter:)(void *a1, void *a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___HFItemManagerMessageBatchCoordinator_batcher] = 0;
  v5 = &v2[OBJC_IVAR___HFItemManagerMessageBatchCoordinator_discardsDelegatesReason];
  *v5 = 0;
  *(v5 + 1) = 0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v20.receiver = v2;
  v20.super_class = HFItemManagerMessageBatchCoordinator;
  v6 = objc_msgSendSuper2(&v20, sel_init);
  v7 = [a1 description];
  sub_20DD64EB4();

  MEMORY[0x20F325E90](45, 0xE100000000000000);
  v8 = [a1 identifier];
  v9 = sub_20DD64EB4();
  v11 = v10;

  MEMORY[0x20F325E90](v9, v11);

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v13 = objc_allocWithZone(HFMessageBatcher);

  v14 = sub_20DD64E74();

  v19[4] = sub_20DA7020C;
  v19[5] = v12;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_20DA72A18;
  v19[3] = &block_descriptor_12;
  v15 = _Block_copy(v19);
  v16 = [v13 initWithIdentifier:v14 batchingInterval:v15 maxDelay:0.1 block:0.5];

  _Block_release(v15);

  v17 = *&v6[OBJC_IVAR___HFItemManagerMessageBatchCoordinator_batcher];
  *&v6[OBJC_IVAR___HFItemManagerMessageBatchCoordinator_batcher] = v16;

  return v6;
}

void sub_20DA7002C(uint64_t a1)
{
  sub_20DA70214(a1);
  if (v1)
  {
    v2 = v1;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_20DA70520(v2);
    }
  }

  else
  {
    if (qword_27C842400 != -1)
    {
      swift_once();
    }

    v5 = sub_20DD64C44();
    __swift_project_value_buffer(v5, qword_27C843390);

    oslog = sub_20DD64C24();
    v6 = sub_20DD65364();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v9 = sub_20DD651F4();
      v11 = sub_20D9E0B38(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_20D9BF000, oslog, v6, "Unexpected search containers in batch block: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x20F327D10](v8, -1, -1);
      MEMORY[0x20F327D10](v7, -1, -1);
    }

    else
    {
    }
  }
}

void sub_20DA70214(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843800, &unk_20DD93EF0);
    v2 = sub_20DD656D4();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = _s19ItemSearchContainerCMa();
  v30[5] = v2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  if (v3 == MEMORY[0x277D837D0])
  {
    v25 = (v5 + 63) >> 6;

    v26 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    do
    {
      v27 = v26;
LABEL_31:
      sub_20D9D7288(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v27 << 6)), v30);
      v28 = sub_20DD65644();
      sub_20D9D4298(v30);
      v29 = swift_dynamicCastClass();
      if (!v29)
      {

        return;
      }

      v7 &= v7 - 1;
      sub_20DA73564(v29);
      v26 = v27;
    }

    while (v7);
LABEL_28:
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v25)
      {
LABEL_34:

        return;
      }

      v7 = *(v4 + 8 * v27);
      ++v26;
      if (v7)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v8 = (v5 + 63) >> 6;
    v9 = v2 + 56;

    v10 = 0;
    while (v7)
    {
LABEL_16:
      sub_20D9D7288(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v10 << 6)), v30);
      v13 = sub_20DD65644();
      sub_20D9D4298(v30);
      v14 = swift_dynamicCastClass();
      if (!v14)
      {

        return;
      }

      v15 = v14;
      v16 = *(v2 + 40);
      v17 = sub_20DD65444();
      v18 = -1 << *(v2 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v9 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v9 + 8 * v20);
          if (v24 != -1)
          {
            v11 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v11 = __clz(__rbit64((-1 << v19) & ~*(v9 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v9 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v2 + 48) + 8 * v11) = v15;
      ++*(v2 + 16);
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_34;
      }

      v7 = *(v4 + 8 * v12);
      ++v10;
      if (v7)
      {
        v10 = v12;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

id sub_20DA70520(unint64_t a1)
{
  result = [v1 itemManager];
  v75 = result;
  if (result)
  {
    v4 = MEMORY[0x277D84FA0];
    v5 = MEMORY[0x277D84FA0];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }

    while (1)
    {
      if (sub_20DD655B4())
      {
        sub_20D9EE8F4(MEMORY[0x277D84F90]);
      }

      else
      {
        v5 = MEMORY[0x277D84FA0];
      }

LABEL_3:
      v72 = v1;
      v78 = v4;
      v79[0] = v5;
      if ((a1 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_20DD65564();
        v1 = _s19ItemSearchContainerCMa();
        sub_20DA72B90(&unk_27C844AB0, v6, _s19ItemSearchContainerCMa);
        sub_20DD65284();
        a1 = v79[1];
        v7 = v79[2];
        v8 = v79[3];
        v9 = v79[4];
        v10 = v79[5];
      }

      else
      {
        v11 = -1 << *(a1 + 32);
        v7 = (a1 + 56);
        v8 = ~v11;
        v12 = -v11;
        v13 = v12 < 64 ? ~(-1 << v12) : -1;
        v10 = v13 & *(a1 + 56);

        v9 = 0;
      }

      v14 = 0;
      v15 = (v8 + 64) >> 6;
      v16 = MEMORY[0x277D84F98];
      v73 = a1;
      for (i = v15; ; v15 = i)
      {
        v4 = v10;
        v76 = v14;
        if ((a1 & 0x8000000000000000) == 0)
        {
          break;
        }

        if (!sub_20DD655F4())
        {
          goto LABEL_42;
        }

        _s19ItemSearchContainerCMa();
        swift_dynamicCast();
        v23 = v77;
        if (!v77)
        {
          goto LABEL_42;
        }

LABEL_22:
        v24 = v7;
        v4 = *&v23[OBJC_IVAR____TtCE4HomeCSo36HFItemManagerMessageBatchCoordinator19ItemSearchContainer_sender];
        sub_20D9C2E38(v76);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77 = v16;
        v1 = v16;
        v26 = sub_20D9CB8D4(v4);
        v28 = *(v16 + 2);
        v29 = (v27 & 1) == 0;
        v30 = __OFADD__(v28, v29);
        v31 = v28 + v29;
        if (v30)
        {
          goto LABEL_65;
        }

        v32 = v27;
        if (*(v16 + 3) < v31)
        {
          sub_20D9CFDF0(v31, isUniquelyReferenced_nonNull_native);
          v16 = v77;
          v1 = v77;
          v26 = sub_20D9CB8D4(v4);
          if ((v32 & 1) != (v33 & 1))
          {
            sub_20DD659E4();
            __break(1u);

            __break(1u);
            return result;
          }

LABEL_27:
          if (v32)
          {
            goto LABEL_29;
          }

LABEL_28:
          v1 = v26;
          sub_20D9D1C80(v26, v4, 0, v16);
          v26 = v1;
          goto LABEL_29;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_27;
        }

        v1 = &v77;
        v53 = v26;
        sub_20D9D4090();
        v26 = v53;
        v16 = v77;
        if ((v32 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_29:
        v34 = *(v16 + 7);
        v35 = *(v34 + 8 * v26);
        v30 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v30)
        {
          goto LABEL_66;
        }

        *(v34 + 8 * v26) = v36;
        v37 = *&v23[OBJC_IVAR____TtCE4HomeCSo36HFItemManagerMessageBatchCoordinator19ItemSearchContainer_reloadReasons];

        sub_20D9DD28C(v38);
        v39 = *&v23[OBJC_IVAR____TtCE4HomeCSo36HFItemManagerMessageBatchCoordinator19ItemSearchContainer_itemSearch];
        v40 = v23[OBJC_IVAR____TtCE4HomeCSo36HFItemManagerMessageBatchCoordinator19ItemSearchContainer_itemSearch + 8];
        if (v40 <= 1)
        {
          if (v23[OBJC_IVAR____TtCE4HomeCSo36HFItemManagerMessageBatchCoordinator19ItemSearchContainer_itemSearch + 8])
          {
            v50 = *&v23[OBJC_IVAR____TtCE4HomeCSo36HFItemManagerMessageBatchCoordinator19ItemSearchContainer_itemSearch];
            swift_unknownObjectRetain();
            v51 = [v75 _itemsToUpdateForMediaObjectChange_];
            sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
            a1 = v73;
            sub_20D9EC18C(&qword_280E01F00, &qword_280E01F10, off_277DEFBE0);
            v52 = sub_20DD651E4();

            v1 = v79;
            sub_20D9DD37C(v52);
            v19 = v39;
            v20 = 1;
            goto LABEL_11;
          }

          sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
          sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);

          v41 = sub_20DD651C4();
          sub_20DA73AEC(v39, 0);
          v42 = [v75 _itemsToUpdateForModifiedCharacteristics_];
        }

        else
        {
          if (v40 == 2)
          {
            v17 = [v75 _itemsToUpdateForHomeKitSettingsChange_];
            sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
            a1 = v73;
            sub_20D9EC18C(&qword_280E01F00, &qword_280E01F10, off_277DEFBE0);
            v18 = sub_20DD651E4();

            v1 = v79;
            sub_20D9DD37C(v18);
            v19 = v39;
            v20 = 2;
LABEL_11:
            sub_20DA73AEC(v19, v20);
            goto LABEL_12;
          }

          if (v40 != 3)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_20DD940A0;
            *(inited + 32) = v39;
            sub_20DA73AAC(v39, 4u);
            sub_20DA73AAC(v39, 4u);
            sub_20D9EEE14(inited);
            swift_setDeallocating();
            v46 = *(inited + 16);
            swift_arrayDestroy();
            sub_20D9D7510(0, &unk_27C8437E0, 0x277CD1B18);
            sub_20D9EC18C(&unk_27C844AC0, &unk_27C8437E0, 0x277CD1B18);
            v47 = sub_20DD651C4();

            v48 = [v75 _itemsToUpdateForLightProfiles_];

            sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
            a1 = v73;
            sub_20D9EC18C(&qword_280E01F00, &qword_280E01F10, off_277DEFBE0);
            v49 = sub_20DD651E4();

            v1 = v79;
            sub_20D9DD37C(v49);
            v19 = v39;
            v20 = 4;
            goto LABEL_11;
          }

          sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
          sub_20D9EC18C(&qword_27C843840, &qword_27C844290, 0x277CD1650);

          v41 = sub_20DD651C4();
          sub_20DA73AEC(v39, 3u);
          v42 = [v75 _itemsToUpdateForModifiedAccessories_];
        }

        v43 = v42;

        sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
        sub_20D9EC18C(&qword_280E01F00, &qword_280E01F10, off_277DEFBE0);
        v44 = sub_20DD651E4();

        v1 = v79;
        sub_20D9DD37C(v44);
LABEL_12:

        v14 = sub_20DA539C4;
        v7 = v24;
      }

      v21 = v9;
      v22 = v10;
      if (v10)
      {
        break;
      }

      while (1)
      {
        v9 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_64;
        }

        if (v9 >= v15)
        {
          break;
        }

        v22 = *&v7[8 * v9];
        ++v21;
        if (v22)
        {
          goto LABEL_18;
        }
      }

      v4 = 0;
LABEL_42:
      sub_20D9C51CC();
      a1 = (v16 + 64);
      v54 = 1 << v16[32];
      v55 = -1;
      if (v54 < 64)
      {
        v55 = ~(-1 << v54);
      }

      v56 = v55 & *(v16 + 8);
      v57 = (v54 + 63) >> 6;

      v58 = 0;
      v1 = MEMORY[0x277D84F90];
      if (v56)
      {
        goto LABEL_49;
      }

      while (1)
      {
        v59 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          break;
        }

        if (v59 >= v57)
        {

          v77 = v1;

          sub_20DA72BD8(&v77);

          v66 = v77;
          v67 = [v72 delegateAdapter];
          if (v67)
          {
            v68 = v67;
            sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
            sub_20D9EC18C(&qword_280E01F00, &qword_280E01F10, off_277DEFBE0);
            v69 = sub_20DD651C4();
            sub_20DA6F56C(v78);

            v70 = sub_20DD64FB4();

            if (*(v66 + 2))
            {
              v71 = *(v66 + 4);
            }

            else
            {

              v71 = sub_20DD63854();
            }
          }

          else
          {
          }

          return sub_20D9C2E38(v76);
        }

        v56 = *(a1 + 8 * v59);
        ++v58;
        if (v56)
        {
          v58 = v59;
          do
          {
LABEL_49:
            v60 = (v58 << 9) | (8 * __clz(__rbit64(v56)));
            v61 = *(*(v16 + 6) + v60);
            v62 = *(*(v16 + 7) + v60);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v1 = sub_20D9E082C(0, (v1[2] + 1), 1, v1);
            }

            v64 = v1[2];
            v63 = v1[3];
            v4 = v64 + 1;
            if (v64 >= v63 >> 1)
            {
              v1 = sub_20D9E082C((v63 > 1), v64 + 1, 1, v1);
            }

            v56 &= v56 - 1;
            v1[2] = v4;
            v65 = &v1[2 * v64];
            v65[4] = v61;
            v65[5] = v62;
          }

          while (v56);
          continue;
        }
      }

      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
    }

LABEL_18:
    v10 = (v22 - 1) & v22;
    v23 = *(*(a1 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v23)
    {
      goto LABEL_42;
    }

    goto LABEL_22;
  }

  return result;
}

uint64_t sub_20DA70FC4(void *a1, unsigned __int8 a2)
{
  v4 = sub_20DD63744();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 <= 1u)
  {
    if (a2)
    {
      v21[0] = 0;
      v21[1] = 0xE000000000000000;
      sub_20DD65704();

      strcpy(v21, ".mediaObject(");
      HIWORD(v21[1]) = -4864;
      v18 = [a1 uniqueIdentifier];
      sub_20DD63714();

      sub_20DA72B90(&qword_27C8436C0, 255, MEMORY[0x277CC95F0]);
      v19 = sub_20DD65934();
      MEMORY[0x20F325E90](v19);

      (*(v5 + 8))(v8, v4);
      goto LABEL_11;
    }

    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    sub_20DD65704();

    v21[0] = 0xD000000000000011;
    v21[1] = 0x800000020DD99FF0;
    sub_20DA6F790(a1);
    v10 = MEMORY[0x20F325F40]();
    v12 = v11;

    goto LABEL_9;
  }

  if (a2 == 2)
  {
    strcpy(v21, ".settings(");
    BYTE3(v21[1]) = 0;
    HIDWORD(v21[1]) = -369098752;
    v13 = [a1 description];
    v10 = sub_20DD64EB4();
    v12 = v14;

LABEL_9:
    MEMORY[0x20F325E90](v10, v12);
    goto LABEL_10;
  }

  if (a2 != 3)
  {
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    sub_20DD65704();

    strcpy(v21, ".lightProfile(");
    HIBYTE(v21[1]) = -18;
    v15 = [a1 description];
    v10 = sub_20DD64EB4();
    v12 = v16;

    goto LABEL_9;
  }

  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_20DD65704();

  strcpy(v21, ".accessories(");
  HIWORD(v21[1]) = -4864;
  sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
  sub_20D9EC18C(&qword_27C843840, &qword_27C844290, 0x277CD1650);
  v9 = sub_20DD651F4();
  MEMORY[0x20F325E90](v9);
LABEL_10:

LABEL_11:
  MEMORY[0x20F325E90](41, 0xE100000000000000);
  return v21[0];
}

id sub_20DA71394()
{
  v2.receiver = v0;
  v2.super_class = _s19ItemSearchContainerCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20DA7141C(void *a1, int a2, unint64_t a3, void *a4, uint64_t a5)
{
  v166 = a5;
  v167 = a3;
  v169 = a4;
  v170 = a1;
  v171 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v165 = &v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v164 = &v156 - v10;
  v11 = sub_20DD63744();
  v168 = *(v11 - 8);
  v12 = v168[8];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v156 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v156 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v156 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&v156 - v26);
  MEMORY[0x28223BE20](v25);
  v29 = (&v156 - v28);
  v30 = &v5[OBJC_IVAR___HFItemManagerMessageBatchCoordinator_discardsDelegatesReason];
  swift_beginAccess();
  v31 = v30[1];
  if (v31)
  {
    v32 = *v30;
    v33 = qword_27C842400;

    if (v33 != -1)
    {
      swift_once();
    }

    v34 = sub_20DD64C44();
    __swift_project_value_buffer(v34, qword_27C843390);

    v35 = v170;
    v36 = v171;
    sub_20DA73AAC(v170, v171);
    v37 = sub_20DD64C24();
    v38 = sub_20DD65384();
    sub_20DA73AEC(v35, v36);

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v173 = v40;
      *v39 = 136315394;
      v41 = sub_20DA70FC4(v35, v36);
      v43 = sub_20D9E0B38(v41, v42, &v173);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2082;
      v44 = sub_20D9E0B38(v32, v31, &v173);

      *(v39 + 14) = v44;
      _os_log_impl(&dword_20D9BF000, v37, v38, "HFItemManagerMessageBatchCoordinator discarding item update %s, reason: %{public}s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v40, -1, -1);
      MEMORY[0x20F327D10](v39, -1, -1);
    }

    else
    {
    }

    return;
  }

  v157 = v27;
  v45 = v167;
  v159 = v29;
  v46 = v169;
  v161 = v18;
  v160 = v15;
  v162 = v21;
  v163 = v24;
  v47 = [v5 delegateAdapter];
  if (!v47)
  {
    if (qword_27C842400 != -1)
    {
      swift_once();
    }

    v63 = sub_20DD64C44();
    __swift_project_value_buffer(v63, qword_27C843390);
    v64 = sub_20DD64C24();
    v65 = sub_20DD65374();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v173 = v67;
      *v66 = 136446210;
      v68 = sub_20DD63844();
      v70 = sub_20D9E0B38(v68, v69, &v173);

      *(v66 + 4) = v70;
      _os_log_impl(&dword_20D9BF000, v64, v65, "Attempted to process a search from %{public}s but delegateAdapter was nil!", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x20F327D10](v67, -1, -1);
      MEMORY[0x20F327D10](v66, -1, -1);
    }

    goto LABEL_41;
  }

  v158 = v47;
  v48 = &selRef_isAnnounceAccessAllowed;
  v49 = [v5 itemManager];
  if (v49)
  {
    v50 = v49;
    v51 = v45;
    if (v46)
    {
      v52 = v11;
      v53 = v169;
      v54 = [v50 home];
      if (v54)
      {
        v55 = v54;
        v56 = [v53 uniqueIdentifier];
        v57 = v159;
        sub_20DD63714();

        v58 = [v55 uniqueIdentifier];
        v59 = v157;
        sub_20DD63714();

        LOBYTE(v58) = sub_20DD63704();
        v60 = v168[1];
        v61 = v59;
        v48 = &selRef_isAnnounceAccessAllowed;
        v60(v61, v52);
        v60(v57, v52);
        v62 = v53;
        if (v58)
        {
LABEL_23:
          v76 = _s19ItemSearchContainerCMa();
          v77 = objc_allocWithZone(v76);
          v78 = &v77[OBJC_IVAR____TtCE4HomeCSo36HFItemManagerMessageBatchCoordinator19ItemSearchContainer_itemSearch];
          v79 = v170;
          *v78 = v170;
          v80 = v171;
          v78[8] = v171;
          *&v77[OBJC_IVAR____TtCE4HomeCSo36HFItemManagerMessageBatchCoordinator19ItemSearchContainer_reloadReasons] = v51;
          v81 = v166;
          *&v77[OBJC_IVAR____TtCE4HomeCSo36HFItemManagerMessageBatchCoordinator19ItemSearchContainer_sender] = v166;
          sub_20DA73AAC(v79, v80);
          v172.receiver = v77;
          v172.super_class = v76;

          v64 = objc_msgSendSuper2(&v172, sel_init);
          v82 = v158;
          if (([v158 hasUncommittedBatchingReasons] & 1) != 0 || objc_msgSend(objc_opt_self(), sel_isInternalTest))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_20DD940A0;
            *(inited + 32) = v64;
            v64 = v64;
            sub_20D9EF030(inited);
            v85 = v84;
            swift_setDeallocating();
            v86 = *(inited + 16);
            swift_arrayDestroy();
            sub_20DA70520(v85);
          }

          else
          {
            v112 = *&v5[OBJC_IVAR___HFItemManagerMessageBatchCoordinator_batcher];
            if (!v112)
            {
              __break(1u);
              return;
            }

            v113 = v112;
            [v113 batchObject:v64 sender:v81];
          }

LABEL_41:
          return;
        }

        goto LABEL_20;
      }
    }

    goto LABEL_23;
  }

  v52 = v11;
  if (!v46)
  {
    v87 = v168;
    v75 = v168[7];
    v88 = v164;
    v75(v164, 1, 1, v11);
    v89 = [objc_opt_self() hmf_zeroUUID];
    sub_20DD63714();

    if ((v87[6])(v88, 1, v11) != 1)
    {
      sub_20D9C9040(v88);
    }

    LODWORD(v164) = 1;
    goto LABEL_29;
  }

  v62 = v169;
  v57 = v159;
LABEL_20:
  v71 = [v62 uniqueIdentifier];
  sub_20DD63714();

  v72 = v168;
  v73 = v168[4];
  v74 = v164;
  v73(v164, v57, v52);
  v75 = v72[7];
  v75(v74, 0, 1, v52);
  v73(v163, v74, v52);
  LODWORD(v164) = 0;
LABEL_29:
  v90 = [v5 v48[257]];
  if (v90 && (v91 = v90, v92 = [v90 home], v91, v92))
  {
    v93 = [v92 uniqueIdentifier];

    v94 = v159;
    sub_20DD63714();

    v95 = v168[4];
    v96 = v165;
    v95(v165, v94, v52);
    v75(v96, 0, 1, v52);
    v97 = v52;
    v98 = v162;
    v99 = v97;
    (v95)(v162, v96);
    v100 = v163;
  }

  else
  {
    v101 = v168;
    v102 = v165;
    v75(v165, 1, 1, v52);
    v103 = [objc_opt_self() hmf_zeroUUID];
    v104 = v52;
    v98 = v162;
    sub_20DD63714();

    v105 = v101[6];
    v99 = v104;
    v106 = v105(v102, 1, v104);
    v100 = v163;
    if (v106 != 1)
    {
      sub_20D9C9040(v102);
    }
  }

  v107 = [v5 itemManager];
  if (v107)
  {
    v108 = v107;
    v109 = [v107 home];

    if (v109)
    {
      v110 = [v109 name];

      v165 = sub_20DD64EB4();
      v109 = v111;
    }

    else
    {
      v165 = 0;
    }
  }

  else
  {
    v165 = 0;
    v109 = 0;
  }

  v167 = v109;
  if (qword_27C842400 != -1)
  {
    swift_once();
  }

  v114 = sub_20DD64C44();
  __swift_project_value_buffer(v114, qword_27C843390);
  v115 = v168;
  v116 = v168[2];
  v116(v161, v100, v99);
  v117 = v160;
  v116(v160, v98, v99);
  v118 = v170;
  v119 = v171;
  sub_20DA73AAC(v170, v171);

  v120 = v169;
  v121 = sub_20DD64C24();
  v122 = sub_20DD65364();

  v159 = v120;

  v123 = v119;
  v124 = v121;
  sub_20DA73AEC(v118, v123);
  LODWORD(v169) = v122;
  if (os_log_type_enabled(v121, v122))
  {
    v125 = v99;
    v157 = v124;
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v173 = v127;
    *v126 = 136316418;
    v128 = sub_20DD63844();
    v130 = sub_20D9E0B38(v128, v129, &v173);

    *(v126 + 4) = v130;
    *(v126 + 12) = 2080;
    v131 = 7104878;
    v132 = 0xE300000000000000;
    if ((v164 & 1) == 0)
    {
      v133 = [v159 name];
      v134 = sub_20DD64EB4();
      v132 = v135;

      v131 = v134;
    }

    v136 = sub_20D9E0B38(v131, v132, &v173);

    *(v126 + 14) = v136;
    *(v126 + 22) = 2082;
    sub_20DA72B90(&qword_27C8436C0, 255, MEMORY[0x277CC95F0]);
    v137 = v161;
    v138 = sub_20DD65934();
    v140 = v139;
    v141 = v168[1];
    v141(v137, v125);
    v142 = sub_20D9E0B38(v138, v140, &v173);

    *(v126 + 24) = v142;
    *(v126 + 32) = 2080;
    if (v167)
    {
      v143 = v165;
    }

    else
    {
      v143 = 7104878;
    }

    if (v167)
    {
      v144 = v167;
    }

    else
    {
      v144 = 0xE300000000000000;
    }

    v145 = sub_20D9E0B38(v143, v144, &v173);

    *(v126 + 34) = v145;
    *(v126 + 42) = 2082;
    v146 = v160;
    v147 = sub_20DD65934();
    v149 = v148;
    v141(v146, v125);
    v150 = sub_20D9E0B38(v147, v149, &v173);

    *(v126 + 44) = v150;
    *(v126 + 52) = 2080;
    v151 = sub_20DA70FC4(v170, v171);
    v153 = sub_20D9E0B38(v151, v152, &v173);

    *(v126 + 54) = v153;
    v154 = v157;
    _os_log_impl(&dword_20D9BF000, v157, v169, "Request to update for %s, but home does not match. modifiedHome: %s (%{public}s) itemManager.home: %s (%{public}s)\nitemSearch: %s", v126, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v127, -1, -1);
    MEMORY[0x20F327D10](v126, -1, -1);

    v141(v162, v125);
    v141(v163, v125);
  }

  else
  {

    v155 = v115[1];
    v155(v117, v99);
    v155(v161, v99);
    v155(v162, v99);
    v155(v163, v99);
  }
}

void sub_20DA7274C(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD940A0;
  *(inited + 32) = a1;
  v5 = a1;
  sub_20D9EE8D0(inited);
  v7 = v6;
  swift_setDeallocating();
  v8 = *(inited + 16);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844AA0, &unk_20DD96280);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_20DD93A70;
  *(v9 + 32) = @"softwareUpdate";
  v10 = @"softwareUpdate";
  v11 = sub_20D9EEE3C(v9);
  swift_setDeallocating();
  sub_20DA73A50(v9 + 32);
  v12 = [v5 home];
  sub_20DA7141C(v7, 3, v11, v12, a2);
}

id HFItemManagerMessageBatchCoordinator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_20DA72A18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_20DD651E4();

  v2(v3);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20DA72AEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20DA72B34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_20DA72B90(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_20DA72BD8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_20DA73A3C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_20DD65924();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844AD0, &unk_20DD96290);
      v7 = sub_20DD65034();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_20DA72D34(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_20DA72D34(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_20DA73550(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_20DA732C0((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = (v13 < v10) ^ (v16 >= v17);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20D9E014C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_20D9E014C((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_20DA732C0((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_20DA732C0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v4 + 1) < *(v6 + 1))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 16;
    do
    {
      v17 = v5 + 16;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 16;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 16, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 16;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 -= 16;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v20 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_20DA734C4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20DA73550(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void sub_20DA73564(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_20DD65444();
  v6 = v3 + 56;
  v7 = -1 << *(v3 + 32);
  v8 = v5 & ~v7;
  v9 = v8 >> 6;
  v10 = *(v3 + 56 + 8 * (v8 >> 6));
  v11 = 1 << v8;
  if (((1 << v8) & v10) != 0)
  {
    v12 = ~v7;
    _s19ItemSearchContainerCMa();
    while (1)
    {
      v13 = *(*(v3 + 48) + 8 * v8);
      v14 = sub_20DD65454();

      if (v14)
      {
        break;
      }

      v8 = (v8 + 1) & v12;
      v9 = v8 >> 6;
      v10 = *(v6 + 8 * (v8 >> 6));
      v11 = 1 << v8;
      if (((1 << v8) & v10) == 0)
      {
        goto LABEL_5;
      }
    }

    v16 = *(v3 + 48);
    v17 = *(v16 + 8 * v8);
    *(v16 + 8 * v8) = a1;
  }

  else
  {
LABEL_5:
    v15 = *(v3 + 16);
    if (v15 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v6 + 8 * v9) = v11 | v10;
      *(*(v3 + 48) + 8 * v8) = a1;
      *(v3 + 16) = v15 + 1;
    }
  }
}

uint64_t sub_20DA736C0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  if (result < 0 || (v5 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(a3 + 48);
  v8 = a4(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v7 + *(v9 + 72) * v5;

  return v10(a5, v11, v8);
}

uint64_t sub_20DA73784(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_20DA737FC(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x20F326530](a1, a2, v11);
      sub_20D9D7510(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_20D9D7510(0, a5, a6);
    if (sub_20DD65594() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_20DD655A4();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_20DD65444();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_20DD65454();

        if (v17)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v15;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v18 = *(*(a4 + 48) + 8 * v10);

  v19 = v18;
}

uint64_t sub_20DA73A50(uint64_t a1)
{
  type metadata accessor for HFItemProviderInvalidationReason(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_20DA73AAC(id result, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      return result;
    }

    if (a2 != 3)
    {
      if (a2 != 4)
      {
        return result;
      }

      return result;
    }
  }

  if (!a2)
  {
  }

  if (a2 == 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

void sub_20DA73AEC(id a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
LABEL_5:

      return;
    }

    if (a2 != 3)
    {
      if (a2 != 4)
      {
        return;
      }

      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (!a2)
  {
LABEL_9:

    return;
  }

  if (a2 == 1)
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_20DA73B2C(void *a1, void *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844AA0, &unk_20DD96280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD93A70;
  *(inited + 32) = @"appleMusicAccount";
  v7 = @"appleMusicAccount";
  v8 = sub_20D9EEE3C(inited);
  swift_setDeallocating();
  sub_20DA73A50(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_20DD940A0;
  *(v9 + 32) = a1;
  v10 = a1;
  sub_20D9EE8D0(v9);
  v12 = v11;
  swift_setDeallocating();
  v13 = *(v9 + 16);
  swift_arrayDestroy();
  sub_20DA7141C(v12, 3, v8, a2, a3);
}

Swift::Void __swiftcall HFHomeKitDispatcher.registerHomeStateStream()()
{
  v1 = v0;
  sub_20DD63B44();
  if (sub_20DD639E4())
  {
    MEMORY[0x20F324A90]();
    v2 = sub_20DD63AA4();

    [v0 addHomeManagerObserver_];
    swift_unknownObjectRelease();
    [v0 addHomeObserver_];
    swift_unknownObjectRelease();
    [v0 addAccessoryObserver_];
    swift_unknownObjectRelease();
    [v0 addMediaSessionObserver_];
    swift_unknownObjectRelease();
    [v0 addMediaObjectObserver_];
    swift_unknownObjectRelease();
    [v0 addResidentDeviceObserver_];
    swift_unknownObjectRelease();
    [v0 addLightObserver_];
    swift_unknownObjectRelease();
    [v0 addSymptomsHandlerObserver_];
    swift_unknownObjectRelease();
    [v0 addSoftwareUpdateObserver_];
    swift_unknownObjectRelease();
    [v0 addSoftwareUpdateControllerV2Observer_];
    v3 = swift_unknownObjectRelease();
    v4 = MEMORY[0x20F324A90](v3);
    v5 = _s21HomeFrameworkObserverCMa();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtCE4HomeCV13HomeDataModel9HomeState6Stream21HomeFrameworkObserver_stream] = v4;
    v11.receiver = v6;
    v11.super_class = v5;
    v7 = objc_msgSendSuper2(&v11, sel_init);
    [v1 addHomeObserver_];
    [v1 addSoftwareUpdateControllerV2Observer_];
    v8 = objc_opt_self();
    v9 = [v8 sharedInstance];
    [v9 addObserver_];

    v10 = [v8 sharedInstance];
    [v7 executionEnvironmentRunningStateDidChange_];

    [v1 setHomeStateStreamHomeFrameworkObserver_];
    [v1 setHomeStateStreamDelegatePackage_];
  }
}

Swift::Void __swiftcall HFHomeKitDispatcher.disconnectHomeStateStream()()
{
  sub_20DD63B44();
  if (sub_20DD639E4())
  {
    if ([v0 homeStateStreamDelegatePackage])
    {
      sub_20DD654E4();
      swift_unknownObjectRelease();
    }

    else
    {
      v3 = 0u;
      v4 = 0u;
    }

    v5 = v3;
    v6 = v4;
    if (*(&v4 + 1))
    {
      sub_20DD63A94();
      if (swift_dynamicCast())
      {
        [v0 removeHomeManagerObserver_];
        swift_unknownObjectRelease();
        [v0 removeHomeObserver_];
        swift_unknownObjectRelease();
        [v0 removeAccessoryObserver_];
        swift_unknownObjectRelease();
        [v0 removeMediaSessionObserver_];
        swift_unknownObjectRelease();
        [v0 removeMediaObjectObserver_];
        swift_unknownObjectRelease();
        [v0 removeResidentDeviceObserver_];
        swift_unknownObjectRelease();
        [v0 removeLightObserver_];
        swift_unknownObjectRelease();
        [v0 removeSymptomsHandlerObserver_];
        swift_unknownObjectRelease();
        [v0 removeSoftwareUpdateObserver_];
        swift_unknownObjectRelease();
        [v0 removeSoftwareUpdateControllerV2Observer_];

        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_20D9D76EC(&v5, &unk_27C843A80, &qword_20DD94100);
    }

    if ([v0 homeStateStreamHomeFrameworkObserver])
    {
      sub_20DD654E4();
      swift_unknownObjectRelease();
    }

    else
    {
      v3 = 0u;
      v4 = 0u;
    }

    v5 = v3;
    v6 = v4;
    if (*(&v4 + 1))
    {
      _s21HomeFrameworkObserverCMa();
      if (swift_dynamicCast())
      {
        [v0 removeHomeObserver_];
        [v0 removeSoftwareUpdateControllerV2Observer_];
        v1 = [objc_opt_self() sharedInstance];
        [v1 removeObserver_];
      }
    }

    else
    {
      sub_20D9D76EC(&v5, &unk_27C843A80, &qword_20DD94100);
    }

    [v0 setHomeStateStreamDelegatePackage_];
    [v0 setHomeStateStreamHomeFrameworkObserver_];
  }
}

Swift::Void __swiftcall HFHomeKitDispatcher.configureHomeStateStream(with:)(HMHomeManager with)
{
  v1 = sub_20DD639C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD63B44();
  if (sub_20DD639E4())
  {
    MEMORY[0x20F324A90]();
    (*(v2 + 104))(v5, *MEMORY[0x277D15390], v1);
    sub_20DD63AC4();

    (*(v2 + 8))(v5, v1);
  }
}

Swift::Void __swiftcall HFHomeKitDispatcher.configureHomeStateStream(with:)(HMHome with)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  sub_20DD63B44();
  if (sub_20DD639E4())
  {
    sub_20DD63BB4();
    v6 = sub_20DD65114();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    *(swift_allocObject() + 16) = with;
    v7 = with.super.isa;
    sub_20DD63B94();

    sub_20D9D76EC(v5, &qword_27C8443F0, &qword_20DD93820);
  }
}

uint64_t sub_20DA7471C(void *a1)
{
  sub_20DD63B44();
  MEMORY[0x20F324A90]();
  v2 = a1;
  sub_20DD639B4();
}

id sub_20DA749AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CD1C60]) initWithOptions:-1 cachePolicy:a2];
  [v4 setDiscretionary_];
  result = [v4 setAdaptive_];
  *a3 = v4;
  return result;
}

id sub_20DA74A40(void *a1, void **a2)
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

id sub_20DA74AE8(uint64_t a1, uint64_t a2, void *a3, void **a4)
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

uint64_t HFHomeActivityState.init(homeActivityState:transitionalStateETA:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a2 & 1) != 0 || a1 <= 3)
  {
    goto LABEL_2;
  }

  if (a1 > 5)
  {
    if (a1 == 6 || a1 == 7)
    {
      goto LABEL_9;
    }

LABEL_2:
    sub_20D9D76EC(a3, &unk_27C843810, &qword_20DD93F00);
    goto LABEL_3;
  }

  if (a1 == 4)
  {
    goto LABEL_2;
  }

LABEL_9:
  sub_20DA47868(a3, a4);
LABEL_3:
  type metadata accessor for HFHomeActivityState();

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for HFHomeActivityState()
{
  result = qword_27C844B10;
  if (!qword_27C844B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HFHomeActivityState.hm_homeActivityState.getter()
{
  v1 = type metadata accessor for HFHomeActivityState();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DA74E60(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return 3;
      }

      else
      {
        return 4;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    v7 = EnumCaseMultiPayload;
    result = 0;
    if (v7 == 2)
    {
      sub_20D9D76EC(v4, &unk_27C843810, &qword_20DD93F00);
      return 7;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20D9D76EC(v4, &unk_27C843810, &qword_20DD93F00);
    return 6;
  }

  else
  {
    sub_20D9D76EC(v4, &unk_27C843810, &qword_20DD93F00);
    return 5;
  }

  return result;
}

uint64_t sub_20DA74E60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HFHomeActivityState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HFHomeActivityState.title.getter()
{
  v1 = type metadata accessor for HFHomeActivityState();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DA74E60(v0, v4);
  if (swift_getEnumCaseMultiPayload() > 2)
  {
    v6 = sub_20DD64E74();
    v9 = HFLocalizedString(v6);

    v8 = sub_20DD64EB4();
  }

  else
  {
    v5 = sub_20DD64E74();
    v7 = HFLocalizedString(v5);

    v8 = sub_20DD64EB4();
    sub_20D9D76EC(v4, &unk_27C843810, &qword_20DD93F00);
  }

  return v8;
}

BOOL HFHomeActivityState.isTransitionalState.getter()
{
  v1 = type metadata accessor for HFHomeActivityState();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DA74E60(v0, v4);
  v5 = swift_getEnumCaseMultiPayload() & 0xFFFFFFFC;
  if (v5 != 4)
  {
    sub_20DA75200(v4);
  }

  return v5 != 4;
}

uint64_t sub_20DA75200(uint64_t a1)
{
  v2 = type metadata accessor for HFHomeActivityState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HFHomeActivityState.mainState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for HFHomeActivityState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DA74E60(v2, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6 || EnumCaseMultiPayload == 7)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_20D9D76EC(v8, &unk_27C843810, &qword_20DD93F00);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 4)
    {
      goto LABEL_14;
    }

LABEL_9:
    (*(v5 + 56))(a1, 1, 1, v4);
    return sub_20DA75200(v8);
  }

  sub_20D9D76EC(v8, &unk_27C843810, &qword_20DD93F00);
LABEL_14:
  swift_storeEnumTagMultiPayload();
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t HFHomeActivityState.nextState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for HFHomeActivityState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DA74E60(v2, v8);
  if (swift_getEnumCaseMultiPayload() > 2)
  {
    (*(v5 + 56))(a1, 1, 1, v4);
    return sub_20DA75200(v8);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(a1, 0, 1, v4);
    return sub_20D9D76EC(v8, &unk_27C843810, &qword_20DD93F00);
  }
}

uint64_t HFHomeActivityState.transitionalStateETA.getter()
{
  v1 = sub_20DD63554();
  v54 = *(v1 - 8);
  v55 = v1;
  v2 = *(v54 + 64);
  MEMORY[0x28223BE20](v1);
  v52 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_20DD63574();
  v51 = *(v53 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v50 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844AF0, &qword_20DD96860);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v48 - v8;
  v10 = sub_20DD636C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HFHomeActivityState();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v49 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v48 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = v48 - v27;
  sub_20DA74E60(v0, v21);
  if (swift_getEnumCaseMultiPayload() > 2)
  {
    sub_20DA75200(v21);
  }

  else
  {
    sub_20DA47868(v21, v28);
    sub_20DA47868(v28, v26);
    if ((*(v11 + 48))(v26, 1, v10) == 1)
    {
      sub_20D9D76EC(v26, &unk_27C843810, &qword_20DD93F00);
    }

    else
    {
      v30 = v14;
      (*(v11 + 32))(v14, v26, v10);
      HFHomeActivityState.nextState.getter(v9);
      if ((*(v16 + 48))(v9, 1, v15) != 1)
      {
        v31 = v49;
        sub_20DA75B04(v9, v49);
        v32 = sub_20DD64E74();
        v33 = HFLocalizedString(v32);

        v34 = sub_20DD64EB4();
        v48[1] = v35;
        v48[2] = v34;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_20DD94280;
        v37 = HFHomeActivityState.title.getter();
        v39 = v38;
        *(v36 + 56) = MEMORY[0x277D837D0];
        v40 = v30;
        v41 = sub_20DA52BE8();
        *(v36 + 64) = v41;
        *(v36 + 32) = v37;
        *(v36 + 40) = v39;
        v42 = v50;
        sub_20DD63564();
        v43 = v52;
        sub_20DD63544();
        v44 = sub_20DD636A4();
        v46 = v45;
        (*(v54 + 8))(v43, v55);
        (*(v51 + 8))(v42, v53);
        *(v36 + 96) = MEMORY[0x277D837D0];
        *(v36 + 104) = v41;
        *(v36 + 72) = v44;
        *(v36 + 80) = v46;
        v47 = sub_20DD64EC4();

        sub_20DA75200(v31);
        (*(v11 + 8))(v40, v10);
        return v47;
      }

      (*(v11 + 8))(v14, v10);
      sub_20D9D76EC(v9, &qword_27C844AF0, &qword_20DD96860);
    }
  }

  return 0;
}

uint64_t sub_20DA75B04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HFHomeActivityState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static HFHomeActivityState.allCases.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844AF8, &qword_20DD96318);
  v0 = *(type metadata accessor for HFHomeActivityState() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20DD96300;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  return v3;
}

uint64_t HFHomeActivityState.symbolName.getter()
{
  v1 = type metadata accessor for HFHomeActivityState();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DA74E60(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return 0x62756F642E646562;
      }

      else
      {
        return 0x656E616C70726961;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        return 0xD000000000000013;
      }

      return 0xD000000000000015;
    }
  }

  else
  {
    if ((EnumCaseMultiPayload - 1) < 2)
    {
      sub_20D9D76EC(v4, &unk_27C843810, &qword_20DD93F00);
      return 0xD000000000000013;
    }

    if (EnumCaseMultiPayload)
    {
      sub_20DA75200(v4);
      return 0;
    }

    else
    {
      sub_20D9D76EC(v4, &unk_27C843810, &qword_20DD93F00);
      return 0x6174732E6E6F6F6DLL;
    }
  }
}

unint64_t sub_20DA75E1C()
{
  result = qword_27C844B00;
  if (!qword_27C844B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C844B08, &qword_20DD96320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844B00);
  }

  return result;
}

uint64_t sub_20DA75E80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844AF8, &qword_20DD96318);
  v4 = *(*(a1 - 8) + 72);
  v5 = (*(*(a1 - 8) + 80) + 32) & ~*(*(a1 - 8) + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20DD96300;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  result = swift_storeEnumTagMultiPayload();
  *a2 = v6;
  return result;
}

void sub_20DA75FD4()
{
  sub_20DA76038();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_20DA76038()
{
  if (!qword_27C844B20)
  {
    sub_20DA47528();
    if (!v1)
    {
      atomic_store(v0, &qword_27C844B20);
    }
  }
}

id sub_20DA76080()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_27C84C668 = result;
  return result;
}

unint64_t HomeKitObjectSettingsStore.StorageLocation.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_20DA76110@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t static HomeKitObjectSettingsStore.value<A>(for:on:in:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  if (a4)
  {
    if (v7)
    {
      v14 = *a1;
LABEL_11:
      result = sub_20DD659B4();
      __break(1u);
      return result;
    }
  }

  else if (a3 != 1)
  {
    if (!a3)
    {
      v14 = *a1;
      v15 = v8;
      return sub_20DA762E8(&v14, a2, a5, a6);
    }

    v14 = a3;
    goto LABEL_11;
  }

  v16 = &unk_2825629C8;
  v17 = &unk_282541CB0;
  v18 = &unk_2825601D8;
  v10 = swift_dynamicCastObjCProtocolConditional();
  if (v10)
  {
    v11 = v10;
    v14 = v7;
    v15 = v8;
    swift_unknownObjectRetain();
    sub_20DA76774(v11, &v14, a5, a6);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_20DA76294();
    swift_allocError();
    *v13 = 0;
    return swift_willThrow();
  }
}

unint64_t sub_20DA76294()
{
  result = qword_27C844BF0;
  if (!qword_27C844BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844BF0);
  }

  return result;
}

uint64_t sub_20DA762E8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_20DD63744();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    *&v25 = *a1;
    result = sub_20DD659B4();
    __break(1u);
  }

  else
  {
    v13 = [a2 uniqueIdentifier];
    sub_20DD63714();

    if (qword_27C8424D8 != -1)
    {
      swift_once();
    }

    v14 = qword_27C84C668;
    v15 = sub_20DD64E74();
    v16 = [v14 dictionaryForKey_];

    if (v16)
    {
      v17 = sub_20DD64DC4();

      v18 = sub_20DD636E4();
      if (*(v17 + 16))
      {
        v27 = a4;
        v20 = sub_20D9CB170(v18, v19);
        v22 = v21;

        if (v22)
        {
          sub_20D9D7174(*(v17 + 56) + 32 * v20, &v25);
          (*(v9 + 8))(v12, v8);
        }

        else
        {

          (*(v9 + 8))(v12, v8);
          v25 = 0u;
          v26 = 0u;
        }

        a4 = v27;
      }

      else
      {

        (*(v9 + 8))(v12, v8);
        v25 = 0u;
        v26 = 0u;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A80, &qword_20DD94100);
      v24 = swift_dynamicCast();
      return (*(*(a3 - 8) + 56))(a4, v24 ^ 1u, 1, a3);
    }

    else
    {
      (*(v9 + 8))(v12, v8);
      return (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
    }
  }

  return result;
}

uint64_t sub_20DA76644(uint64_t a1, int a2, id a3)
{
  if (a1)
  {
    result = sub_20DD659B4();
    __break(1u);
  }

  else
  {
    v3 = [a3 applicationData];
    v4 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v5 = sub_20DD64E74();
    v6 = [v4 initWithString_];

    [v3 objectForKey_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844CA0, &unk_20DD96670);
    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20DA76774@<X0>(id a1@<X1>, uint64_t *a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2)
  {
    v12 = *a2;
    result = sub_20DD659B4();
    __break(1u);
  }

  else
  {
    v6 = [a1 applicationData];
    v7 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v8 = sub_20DD64E74();
    v9 = [v7 initWithString_];

    [v6 objectForKey_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844CA0, &unk_20DD96670);
    v10 = swift_dynamicCast();
    return (*(*(a3 - 8) + 56))(a4, v10 ^ 1u, 1, a3);
  }

  return result;
}

uint64_t static HomeKitObjectSettingsStore.set<A>(value:for:on:in:)(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, char a5, uint64_t a6)
{
  v9 = *a2;
  v10 = a2[1];
  if ((a5 & 1) == 0)
  {
    if (a4 != 1)
    {
      if (a4)
      {
        v18 = a4;
        goto LABEL_13;
      }

      v18 = *a2;
      v19 = v10;
      v16 = sub_20DA76A48(a1, &v18, a3, a6);
      if (!v7)
      {
        return v16;
      }

      return v6;
    }

LABEL_5:
    v20 = &unk_2825629C8;
    v21 = &unk_282541CB0;
    v22 = &unk_2825601D8;
    v12 = swift_dynamicCastObjCProtocolConditional();
    if (v12)
    {
      v13 = v12;
      v18 = v9;
      v19 = v10;
      swift_unknownObjectRetain();
      sub_20DA77244(a1, &v18, v13, a6);
      v6 = v14;
      swift_unknownObjectRelease();
    }

    else
    {
      sub_20DA76294();
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }

    return v6;
  }

  if (!v9)
  {
    goto LABEL_5;
  }

  v18 = *a2;
LABEL_13:
  result = sub_20DD659B4();
  __break(1u);
  return result;
}

uint64_t sub_20DA76A48(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v41 = a1;
  v42 = sub_20DD65494();
  v7 = *(v42 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v42);
  v11 = &v39 - v10;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v40 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20DD63744();
  v43 = *(v15 - 8);
  v44 = v15;
  v16 = *(v43 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a2)
  {
    v19 = [a3 uniqueIdentifier];
    sub_20DD63714();

    if (qword_27C8424D8 != -1)
    {
      swift_once();
    }

    v20 = qword_27C84C668;
    v21 = sub_20DD64E74();
    v22 = [v20 dictionaryForKey_];

    if (v22)
    {
      v23 = sub_20DD64DC4();
    }

    else
    {
      v23 = sub_20D9D4C24(MEMORY[0x277D84F90]);
    }

    v49 = v23;
    v24 = v42;
    (*(v7 + 16))(v11, v41, v42);
    if ((*(v12 + 48))(v11, 1, a4) == 1)
    {
      (*(v7 + 8))(v11, v24);
      v25 = sub_20DD636E4();
      sub_20DA275F0(v25, v26, &v47);

      sub_20D9F8608(&v47);
      if (*(v49 + 16))
      {
LABEL_9:
        v27 = qword_27C84C668;
        v28 = sub_20DD64DB4();

        v29 = sub_20DD64E74();
        [v27 setObject:v28 forKey:v29];

LABEL_12:
        v37 = [objc_opt_self() futureWithNoResult];
        (*(v43 + 8))(v18, v44);
        return v37;
      }
    }

    else
    {
      v30 = v40;
      (*(v12 + 32))(v40, v11, a4);
      v31 = sub_20DD636E4();
      v33 = v32;
      v48 = a4;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v47);
      (*(v12 + 16))(boxed_opaque_existential_1, v30, a4);
      sub_20D9D77C8(&v47, v46);
      v35 = v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v35;
      sub_20D9D01B0(v46, v31, v33, isUniquelyReferenced_nonNull_native);

      (*(v12 + 8))(v30, a4);
      v49 = v45;
      if (*(v45 + 16))
      {
        goto LABEL_9;
      }
    }

    v28 = qword_27C84C668;
    v29 = sub_20DD64E74();
    [v28 removeObjectForKey_];
    goto LABEL_12;
  }

  *&v47 = *a2;
  result = sub_20DD659B4();
  __break(1u);
  return result;
}

id sub_20DA76FAC(int a1, id a2, uint64_t a3, int a4, id a5)
{
  if (a3)
  {
    result = sub_20DD659B4();
    __break(1u);
  }

  else
  {
    v7 = [a5 applicationData];
    if (a2)
    {
      v8 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v9 = sub_20DD64E74();
      a2 = [v8 initWithString_];
    }

    v10 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v11 = sub_20DD64E74();
    v12 = [v10 initWithString_];

    [v7 setObject:a2 forKey:v12];
    v13 = swift_allocObject();
    *(v13 + 16) = a5;
    *(v13 + 24) = v7;
    v25 = sub_20DA78A60;
    v26 = v13;
    v21 = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_20DA4A9B0;
    v24 = &block_descriptor_13;
    v14 = _Block_copy(&v21);
    v15 = objc_opt_self();
    swift_unknownObjectRetain();
    v16 = v7;
    v17 = [v15 futureWithErrorOnlyHandlerAdapterBlock_];
    _Block_release(v14);

    v25 = _s4Home23ItemSelectionControllerPAAE23selectionCompleteFutureSo8NAFutureCyyXlGvg_0;
    v26 = 0;
    v21 = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_20DA77A10;
    v24 = &block_descriptor_14;
    v18 = _Block_copy(&v21);
    v19 = [v17 flatMap_];
    swift_unknownObjectRelease();

    _Block_release(v18);
    return v19;
  }

  return result;
}

void sub_20DA77244(uint64_t a1, uint64_t *a2, id a3, uint64_t a4)
{
  if (*a2)
  {
    v20 = *a2;
    sub_20DD659B4();
    __break(1u);
  }

  else
  {
    v8 = [a3 applicationData];
    v9 = sub_20DA774D0(a1, a4);
    if (v4)
    {
    }

    else
    {
      v10 = v9;
      v11 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v12 = sub_20DD64E74();
      v13 = [v11 initWithString_];

      [v8 setObject:v10 forKey:v13];
      v14 = swift_allocObject();
      *(v14 + 16) = a3;
      *(v14 + 24) = v8;
      v24 = sub_20DA78B1C;
      v25 = v14;
      v20 = MEMORY[0x277D85DD0];
      v21 = 1107296256;
      v22 = sub_20DA4A9B0;
      v23 = &block_descriptor_24;
      v15 = _Block_copy(&v20);
      v16 = objc_opt_self();
      swift_unknownObjectRetain();
      v17 = v8;
      v18 = [v16 futureWithErrorOnlyHandlerAdapterBlock_];
      _Block_release(v15);

      v24 = _s4Home23ItemSelectionControllerPAAE23selectionCompleteFutureSo8NAFutureCyyXlGvg_0;
      v25 = 0;
      v20 = MEMORY[0x277D85DD0];
      v21 = 1107296256;
      v22 = sub_20DA77A10;
      v23 = &block_descriptor_27;
      v19 = _Block_copy(&v20);
      [v18 flatMap_];
      swift_unknownObjectRelease();

      _Block_release(v19);
    }
  }
}

uint64_t sub_20DA774D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20DD65494();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v31 - v8;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v31 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v31 - v18;
  (*(v5 + 16))(v9, a1, v4);
  if ((*(v10 + 48))(v9, 1, a2) == 1)
  {
    (*(v5 + 8))(v9, v4);
    return 0;
  }

  (*(v10 + 32))(v19, v9, a2);
  v21 = *(v10 + 16);
  v21(v17, v19, a2);
  if (swift_dynamicCast())
  {
    v22 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v23 = sub_20DD64E74();

    v24 = [v22 initWithString_];

    v25 = *(v10 + 8);
    v25(v19, a2);
    v25(v17, a2);
    return v24;
  }

  if (swift_dynamicCast())
  {
    sub_20DA78AC0();
    v26 = sub_20DD65424();
LABEL_11:
    v27 = v26;
    v28 = *(v10 + 8);
    v28(v19, a2);
    v28(v17, a2);
    return v27;
  }

  if (swift_dynamicCast())
  {
    sub_20DA78AC0();
    v26 = sub_20DD65434();
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    sub_20DA78AC0();
    v26 = sub_20DD65414();
    goto LABEL_11;
  }

  v29 = *(v10 + 8);
  v29(v17, a2);
  v21(v14, v19, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844CB0, &unk_20DD955C0);
  if (swift_dynamicCast())
  {
    v29(v19, a2);
    return v31[2];
  }

  else
  {
    sub_20DA76294();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();
    return (v29)(v19, a2);
  }
}

void sub_20DA77944(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_20DA899CC;
  v7[3] = &block_descriptor_17;
  v6 = _Block_copy(v7);

  [a3 hf:a4 updateApplicationData:1 handleError:v6 completionHandler:?];
  _Block_release(v6);
}

id sub_20DA77A10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v4 = v2(v3);

  swift_unknownObjectRelease();

  return v4;
}

uint64_t HomeKitObjectSettingsStore.Errors.hashValue.getter()
{
  v1 = *v0;
  sub_20DD65A64();
  MEMORY[0x20F3269D0](v1);
  return sub_20DD65AA4();
}

id HomeKitObjectSettingsStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeKitObjectSettingsStore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_20DA77B90@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

uint64_t static HomeKitObjectSettingsStore.stringValueForSetting(_:on:)(uint64_t a1)
{
  if (a1)
  {
    goto LABEL_13;
  }

  if (qword_27C8424E0 != -1)
  {
    swift_once();
  }

  if (qword_27C84C670)
  {
LABEL_13:
    result = sub_20DD659B4();
    __break(1u);
  }

  else
  {
    v1 = qword_27C84C678;
    result = swift_dynamicCastObjCProtocolConditional();
    if (result)
    {
      v3 = result;
      swift_unknownObjectRetain();
      sub_20DA76644(0, v1, v3);
      v5 = v4;
      swift_unknownObjectRelease();
      if (v5)
      {
        sub_20DD64E74();

        if (swift_dynamicCast())
        {
          return v6;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t _s4Home0A22KitObjectSettingsStoreC8tileSize3forSo015HFTileResizableG0aSgSo06HFHomebC0_p_tFZ_0()
{
  if (qword_27C8424E0 != -1)
  {
    swift_once();
  }

  if (qword_27C84C670)
  {
    result = sub_20DD659B4();
    __break(1u);
  }

  else
  {
    v0 = qword_27C84C678;
    result = swift_dynamicCastObjCProtocolConditional();
    if (result)
    {
      v2 = result;
      swift_unknownObjectRetain();
      sub_20DA76644(0, v0, v2);
      v4 = v3;
      swift_unknownObjectRelease();
      if (v4)
      {
        v5 = sub_20DD64E74();

        return v5;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t _s4Home0A22KitObjectSettingsStoreC3set8tileSize3forSo8NAFutureCySo6NSNullCGSo015HFTileResizableH0aSg_So06HFHomebC0_ptFZ_0(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_20DD64EB4();
    v3 = v2;
  }

  else
  {
    v1 = 0;
    v3 = 0;
  }

  if (qword_27C8424E0 != -1)
  {
    swift_once();
  }

  if (qword_27C84C670)
  {
    result = sub_20DD659B4();
    __break(1u);
  }

  else
  {
    v4 = qword_27C84C678;
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      v6 = v5;
      swift_unknownObjectRetain();
      v11 = sub_20DA76FAC(v1, v3, 0, v4, v6);
      swift_unknownObjectRelease();

      return v11;
    }

    else
    {

      sub_20DA76294();
      v7 = swift_allocError();
      *v8 = 0;
      swift_willThrow();
      v9 = sub_20DD63494();
      v10 = [objc_opt_self() futureWithError_];

      return v10;
    }
  }

  return result;
}

uint64_t sub_20DA783A0(uint64_t a1)
{
  if (a1)
  {
    goto LABEL_11;
  }

  if (qword_27C8424E0 != -1)
  {
    swift_once();
  }

  if (qword_27C84C670)
  {
LABEL_11:
    result = sub_20DD659B4();
    __break(1u);
  }

  else
  {
    v1 = qword_27C84C678;
    result = swift_dynamicCastObjCProtocolConditional();
    if (result)
    {
      v3 = result;
      swift_unknownObjectRetain();
      sub_20DA76644(0, v1, v3);
      v5 = v4;
      swift_unknownObjectRelease();
      if (v5)
      {
        v6 = sub_20DD64E74();

        return v6;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_20DA784DC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if (a1)
    {
      swift_unknownObjectRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_20DA76294();
        v7 = swift_allocError();
        *v8 = 1;
LABEL_13:
        swift_willThrow();
        v10 = sub_20DD63494();
        v11 = [objc_opt_self() futureWithError_];

        return v11;
      }

      v3 = v14;
      v2 = v15;
    }

    else
    {
      v3 = 0;
      v2 = 0;
    }

    if (qword_27C8424E0 != -1)
    {
      swift_once();
    }

    if (!qword_27C84C670)
    {
      v4 = qword_27C84C678;
      v5 = swift_dynamicCastObjCProtocolConditional();
      if (v5)
      {
        v6 = v5;
        swift_unknownObjectRetain();
        v12 = sub_20DA76FAC(v3, v2, 0, v4, v6);
        swift_unknownObjectRelease();

        return v12;
      }

      sub_20DA76294();
      v7 = swift_allocError();
      *v9 = 0;
      goto LABEL_13;
    }
  }

  result = sub_20DD659B4();
  __break(1u);
  return result;
}

unint64_t sub_20DA78708()
{
  result = qword_27C844BF8;
  if (!qword_27C844BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844BF8);
  }

  return result;
}

unint64_t sub_20DA78760()
{
  result = qword_27C844C00;
  if (!qword_27C844C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844C00);
  }

  return result;
}

unint64_t sub_20DA787B8()
{
  result = qword_27C844C08[0];
  if (!qword_27C844C08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C844C08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeKitObjectSettingsStore.Errors(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeKitObjectSettingsStore.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20DA78978()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_20DA789CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_20DA78A14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_20DA78AC0()
{
  result = qword_27C8433B0;
  if (!qword_27C8433B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C8433B0);
  }

  return result;
}

id MatterAccessoryLikeItemProvider.__allocating_init(in:in:filter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[qword_27C84C680] = a1;
  v10 = &v9[qword_27C844CB8];
  *v10 = a3;
  *(v10 + 1) = a4;
  sub_20D9D7558(a2, &v9[qword_27C84C688], &unk_27C843A70, &qword_20DD94260);
  v13.receiver = v9;
  v13.super_class = v4;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  sub_20D9D76EC(a2, &unk_27C843A70, &qword_20DD94260);
  return v11;
}

void (*sub_20DA78C00(void *a1, void *a2, void (**a3)(void, void), uint64_t a4, uint64_t (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8))(char *, uint64_t)
{
  v156 = a6;
  v155 = a5;
  v166 = a4;
  v163 = a3;
  v168 = sub_20DD63FE4();
  v165 = *(v168 - 8);
  v14 = v165[8];
  v15 = MEMORY[0x28223BE20](v168);
  v158 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v154 = &v149 - v18;
  MEMORY[0x28223BE20](v17);
  v164 = &v149 - v19;
  v21 = a2[3];
  v20 = a2[4];
  v167 = a2;
  __swift_project_boxed_opaque_existential_0(a2, v21);
  v22 = MEMORY[0x277D84F90];
  v174 = sub_20D9D674C(MEMORY[0x277D84F90]);
  v171 = a7;
  v172 = a8;
  v153 = v8;
  v173 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D08, &qword_20DD96718);
  v23 = *(v20 + 8);
  sub_20DD64F84();
  v24 = v175;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v157 = v22;
  v174 = sub_20D9D6934(v22);
  v169 = v163;
  v170 = v166;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D10, &unk_20DD96720);
  v26 = *(v25 + 8);
  sub_20DD64F84();
  v166 = v9;
  v27 = v175;

  v29 = sub_20D9F96F8(v28);

  v31 = sub_20DA8940C(v30, v29);

  v33 = sub_20D9F96F8(v32);

  v35 = sub_20DA8940C(v34, v33);

  v159 = v24;
  v37 = sub_20D9F96F8(v36);

  v39 = sub_20DA7CF70(v38, v37);
  v160 = v27;

  if (qword_27C842418 != -1)
  {
LABEL_54:
    swift_once();
  }

  v40 = sub_20DD64C44();
  v41 = __swift_project_value_buffer(v40, qword_27C84C588);

  v42 = sub_20DD64C24();
  v43 = sub_20DD65354();

  v44 = os_log_type_enabled(v42, v43);
  v161 = v31;
  v162 = v39;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v163 = v35;
    v46 = v45;
    v47 = swift_slowAlloc();
    v175 = v47;
    *v46 = 136315394;
    v48 = sub_20DD65B04();
    v50 = sub_20D9E0B38(v48, v49, &v175);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2080;
    sub_20DA7F500(&qword_27C844380, MEMORY[0x277D15B60]);
    v51 = sub_20DD651F4();
    v53 = sub_20D9E0B38(v51, v52, &v175);

    *(v46 + 14) = v53;
    _os_log_impl(&dword_20D9BF000, v42, v43, "%s-diffItems: newKeys=%s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v47, -1, -1);
    MEMORY[0x20F327D10](v46, -1, -1);
  }

  v54 = sub_20DD64C24();
  v55 = sub_20DD65354();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v175 = v57;
    *v56 = 136315394;
    v58 = sub_20DD65B04();
    v60 = sub_20D9E0B38(v58, v59, &v175);

    *(v56 + 4) = v60;
    *(v56 + 12) = 2080;
    sub_20DA7F500(&qword_27C844380, MEMORY[0x277D15B60]);
    v61 = sub_20DD651F4();
    v63 = v62;

    v64 = sub_20D9E0B38(v61, v63, &v175);

    *(v56 + 14) = v64;
    _os_log_impl(&dword_20D9BF000, v54, v55, "%s-diffItems: removedKeys=%s", v56, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v57, -1, -1);
    MEMORY[0x20F327D10](v56, -1, -1);
  }

  else
  {
  }

  v65 = sub_20DD64C24();
  v66 = sub_20DD65354();

  v67 = os_log_type_enabled(v65, v66);
  v152 = v41;
  if (v67)
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v175 = v69;
    *v68 = 136315394;
    v70 = sub_20DD65B04();
    v72 = sub_20D9E0B38(v70, v71, &v175);

    *(v68 + 4) = v72;
    *(v68 + 12) = 2080;
    sub_20DA7F500(&qword_27C844380, MEMORY[0x277D15B60]);
    v73 = sub_20DD651F4();
    v75 = sub_20D9E0B38(v73, v74, &v175);

    *(v68 + 14) = v75;
    _os_log_impl(&dword_20D9BF000, v65, v66, "%s-diffItems: existingKeys=%s", v68, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v69, -1, -1);
    MEMORY[0x20F327D10](v68, -1, -1);
  }

  v76 = v161;
  v39 = v167[4];
  __swift_project_boxed_opaque_existential_0(v167, v167[3]);
  v174 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844CE0, &qword_20DD966A0);
  v77 = *(v39 + 8);
  v78 = v166;
  sub_20DD64F84();
  v166 = v78;
  v150 = v175;
  v79 = MEMORY[0x277D84F90];
  v175 = MEMORY[0x277D84F90];
  v80 = v76 + 56;
  v81 = 1 << *(v76 + 32);
  v82 = -1;
  if (v81 < 64)
  {
    v82 = ~(-1 << v81);
  }

  v83 = v82 & *(v76 + 56);
  v35 = (v81 + 63) >> 6;
  v167 = v165 + 2;
  v163 = (v165 + 1);

  v31 = 0;
  v151 = v79;
  while (1)
  {
    if (!v83)
    {
      v84 = v164;
      while (1)
      {
        v85 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        if (v85 >= v35)
        {
          break;
        }

        v83 = *(v80 + 8 * v85);
        ++v31;
        if (v83)
        {
          v31 = v85;
          goto LABEL_19;
        }
      }

      v98 = sub_20D9F922C(v151);

      v175 = MEMORY[0x277D84F90];
      v39 = v162 + 56;
      v99 = 1 << *(v162 + 32);
      v100 = -1;
      if (v99 < 64)
      {
        v100 = ~(-1 << v99);
      }

      v101 = v100 & *(v162 + 56);
      v31 = (v99 + 63) >> 6;

      v35 = 0;
      while (1)
      {
        v102 = v158;
        if (!v101)
        {
          break;
        }

LABEL_34:
        (v165[2])(v158, *(v162 + 48) + v165[9] * (__clz(__rbit64(v101)) | (v35 << 6)), v168);
        v104 = v159;
        if (!*(v159 + 16))
        {
          goto LABEL_52;
        }

        v105 = sub_20D9CB800(v102);
        if ((v106 & 1) == 0)
        {
          goto LABEL_53;
        }

        v107 = *v163;
        v108 = *(*(v104 + 56) + 8 * v105);
        v109 = v107(v102, v168);
        MEMORY[0x20F325F00](v109);
        if (*((v175 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v175 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v161 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20DD65014();
        }

        v101 &= v101 - 1;
        sub_20DD65054();
        v157 = v175;
      }

      while (1)
      {
        v103 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v103 >= v31)
        {

          v110 = sub_20D9F922C(v157);

          v111 = v166;
          sub_20DA7EFCC(v150, v98, v110);

          v112 = sub_20DD64C24();
          v113 = sub_20DD65354();

          v114 = os_log_type_enabled(v112, v113);
          v166 = v111;
          v164 = v98;
          if (v114)
          {
            v115 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            v175 = v116;
            *v115 = 136315394;
            v117 = sub_20DD65B04();
            v119 = sub_20D9E0B38(v117, v118, &v175);

            *(v115 + 4) = v119;
            *(v115 + 12) = 2080;
            type metadata accessor for MatterAccessoryLikeItem();
            sub_20DA7F500(&qword_27C843B68, type metadata accessor for MatterAccessoryLikeItem);
            v120 = sub_20DD651F4();
            v122 = sub_20D9E0B38(v120, v121, &v175);

            *(v115 + 14) = v122;
            _os_log_impl(&dword_20D9BF000, v112, v113, "%s-diffItems: newItems=%s", v115, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x20F327D10](v116, -1, -1);
            MEMORY[0x20F327D10](v115, -1, -1);
          }

          v123 = sub_20DD64C24();
          v124 = sub_20DD65354();

          if (os_log_type_enabled(v123, v124))
          {
            v125 = swift_slowAlloc();
            v126 = swift_slowAlloc();
            v175 = v126;
            *v125 = 136315394;
            v127 = sub_20DD65B04();
            v129 = sub_20D9E0B38(v127, v128, &v175);

            *(v125 + 4) = v129;
            *(v125 + 12) = 2080;
            type metadata accessor for MatterAccessoryLikeItem();
            sub_20DA7F500(&qword_27C843B68, type metadata accessor for MatterAccessoryLikeItem);
            v130 = sub_20DD651F4();
            v132 = sub_20D9E0B38(v130, v131, &v175);

            *(v125 + 14) = v132;
            _os_log_impl(&dword_20D9BF000, v123, v124, "%s-diffItems: stillExistingItems=%s", v125, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x20F327D10](v126, -1, -1);
            MEMORY[0x20F327D10](v125, -1, -1);
          }

          v133 = sub_20DD64C24();
          v134 = sub_20DD65354();

          if (os_log_type_enabled(v133, v134))
          {
            v135 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            v175 = v136;
            *v135 = 136315394;
            v137 = sub_20DD65B04();
            v139 = sub_20D9E0B38(v137, v138, &v175);

            *(v135 + 4) = v139;
            *(v135 + 12) = 2080;
            type metadata accessor for MatterAccessoryLikeItem();
            sub_20DA7F500(&qword_27C843B68, type metadata accessor for MatterAccessoryLikeItem);
            v140 = sub_20DD651F4();
            v142 = sub_20D9E0B38(v140, v141, &v175);

            *(v135 + 14) = v142;
            _os_log_impl(&dword_20D9BF000, v133, v134, "%s-diffItems: removedItems=%s", v135, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x20F327D10](v136, -1, -1);
            MEMORY[0x20F327D10](v135, -1, -1);
          }

          v143 = objc_allocWithZone(HFItemProviderReloadResults);
          type metadata accessor for MatterAccessoryLikeItem();
          sub_20DA7F500(&qword_27C843B68, type metadata accessor for MatterAccessoryLikeItem);
          v144 = sub_20DD651C4();

          v145 = sub_20DD651C4();

          v146 = sub_20DD651C4();

          v147 = [v143 initWithAddedItems:v144 removedItems:v145 existingItems:v146];

          return v147;
        }

        v101 = *(v39 + 8 * v103);
        ++v35;
        if (v101)
        {
          v35 = v103;
          goto LABEL_34;
        }
      }

LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v84 = v164;
LABEL_19:
    v86 = v165[9];
    v39 = v165[2];
    (v39)(v84, *(v76 + 48) + v86 * (__clz(__rbit64(v83)) | (v31 << 6)), v168);
    v87 = v160;
    if (!*(v160 + 16))
    {
      goto LABEL_50;
    }

    v88 = sub_20D9CB800(v84);
    if ((v89 & 1) == 0)
    {
      goto LABEL_51;
    }

    v90 = *(v87 + 56) + v88 * v86;
    v91 = v154;
    v92 = v168;
    (v39)(v154, v90, v168);
    v93 = v166;
    v94 = v155(v91);
    v166 = v93;
    if (v93)
    {
      break;
    }

    v39 = v94;
    v83 &= v83 - 1;
    v95 = *v163;
    (*v163)(v91, v92);
    v96 = v95(v164, v92);
    v76 = v161;
    if (v39)
    {
      MEMORY[0x20F325F00](v96);
      if (*((v175 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v175 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v97 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20DD65014();
      }

      sub_20DD65054();
      v151 = v175;
    }
  }

  v147 = *v163;
  (*v163)(v91, v92);

  v147(v164, v92);

  return v147;
}

uint64_t sub_20DA79D50(uint64_t *a1, void *a2, void (*a3)(void *), uint64_t a4, void *a5)
{
  v56 = a5;
  v58 = a1;
  v8 = sub_20DD63FE4();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v55 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v51 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - v16;
  a3(a2);
  if (qword_27C842418 != -1)
  {
    swift_once();
  }

  v18 = sub_20DD64C44();
  __swift_project_value_buffer(v18, qword_27C84C588);
  v19 = v9[2];
  v57 = v17;
  v19(v15, v17, v8);
  v20 = a2;
  v21 = sub_20DD64C24();
  v22 = sub_20DD65354();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v54 = v5;
    v24 = v23;
    v53 = swift_slowAlloc();
    v59 = v53;
    *v24 = 136315650;
    v25 = sub_20DD65B04();
    v56 = v20;
    v27 = sub_20D9E0B38(v25, v26, &v59);
    v52 = v21;
    v28 = v8;
    v29 = v27;

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    v19(v55, v15, v28);
    v30 = sub_20DD64ED4();
    v32 = v31;
    LODWORD(v55) = v22;
    v33 = v9[1];
    v33(v15, v28);
    v34 = sub_20D9E0B38(v30, v32, &v59);

    *(v24 + 14) = v34;
    *(v24 + 22) = 2080;
    v35 = v56;
    v36 = [v35 description];
    v37 = sub_20DD64EB4();
    v39 = v38;

    v20 = v56;
    v40 = v37;
    v8 = v28;
    v41 = sub_20D9E0B38(v40, v39, &v59);

    *(v24 + 24) = v41;
    v42 = v52;
    _os_log_impl(&dword_20D9BF000, v52, v55, "%s-diffItems: key is %s for %s", v24, 0x20u);
    v43 = v53;
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v43, -1, -1);
    MEMORY[0x20F327D10](v24, -1, -1);
  }

  else
  {

    v33 = v9[1];
    v33(v15, v8);
  }

  v44 = v20;
  v45 = v58;
  v46 = *v58;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v45;
  v48 = v44;
  v49 = v57;
  sub_20D9D19E0(v48, v57, isUniquelyReferenced_nonNull_native);
  *v45 = v59;
  return (v33)(v49, v8);
}

uint64_t sub_20DA7A13C(uint64_t a1, char *a2, void (*a3)(char *))
{
  v22[1] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D40, &unk_20DD94230);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - v10;
  v12 = sub_20DD63FE4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v22 - v18;
  a3(a2);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_20D9D76EC(v11, &qword_27C843D40, &unk_20DD94230);
  }

  (*(v13 + 32))(v19, v11, v12);
  v21 = *(v13 + 16);
  v21(v17, v19, v12);
  v21(v9, a2, v12);
  (*(v13 + 56))(v9, 0, 1, v12);
  sub_20D9F9E54(v9, v17);
  return (*(v13 + 8))(v19, v12);
}

uint64_t sub_20DA7A398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20DD63FE4();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_20DA7A468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath;
  v5 = sub_20DD63FE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

id MatterAccessoryLikeItemProvider.init(in:in:filter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[qword_27C84C680] = a1;
  v6 = &v4[qword_27C844CB8];
  *v6 = a3;
  *(v6 + 1) = a4;
  sub_20D9D7558(a2, &v4[qword_27C84C688], &unk_27C843A70, &qword_20DD94260);
  v9.receiver = v4;
  v9.super_class = type metadata accessor for MatterAccessoryLikeItemProvider();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_20D9D76EC(a2, &unk_27C843A70, &qword_20DD94260);
  return v7;
}

uint64_t type metadata accessor for MatterAccessoryLikeItemProvider()
{
  result = qword_27C844CF8;
  if (!qword_27C844CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20DA7A5E0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_20DD64C44();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844CC0, &qword_20DD96680) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v7 = sub_20DD64164();
  v2[18] = v7;
  v8 = *(v7 - 8);
  v2[19] = v8;
  v9 = *(v8 + 64) + 15;
  v2[20] = swift_task_alloc();
  v10 = sub_20DD63FE4();
  v2[21] = v10;
  v11 = *(v10 - 8);
  v2[22] = v11;
  v12 = *(v11 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v13 = sub_20DD64354();
  v2[28] = v13;
  v14 = *(v13 - 8);
  v2[29] = v14;
  v15 = *(v14 + 64) + 15;
  v2[30] = swift_task_alloc();
  v16 = sub_20DD63744();
  v2[31] = v16;
  v17 = *(v16 - 8);
  v2[32] = v17;
  v18 = *(v17 + 64) + 15;
  v2[33] = swift_task_alloc();
  v19 = sub_20DD63E94();
  v2[34] = v19;
  v20 = *(v19 - 8);
  v2[35] = v20;
  v21 = *(v20 + 64) + 15;
  v2[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA7A8D4, 0, 0);
}

uint64_t sub_20DA7A8D4()
{
  v1 = v0[33];
  v2 = *(v0[13] + qword_27C84C680);
  v0[37] = v2;
  v3 = [v2 uniqueIdentifier];
  sub_20DD63714();

  v4 = swift_task_alloc();
  v0[38] = v4;
  *v4 = v0;
  v4[1] = sub_20DA7A9A8;
  v5 = v0[36];
  v6 = v0[33];

  return sub_20DA7C578(v5, v6);
}

uint64_t sub_20DA7A9A8()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 264);
  v4 = *(*v0 + 256);
  v5 = *(*v0 + 248);
  v8 = *v0;

  v6 = *(v4 + 8);
  *(v1 + 312) = v6;
  *(v1 + 320) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);

  return MEMORY[0x2822009F8](sub_20DA7AB0C, 0, 0);
}

uint64_t sub_20DA7AB0C()
{
  v1 = *(v0 + 264);
  v2 = [*(v0 + 296) uniqueIdentifier];
  sub_20DD63714();

  v3 = swift_task_alloc();
  *(v0 + 328) = v3;
  *v3 = v0;
  v3[1] = sub_20DA7ABD0;
  v4 = *(v0 + 264);
  v5 = *(v0 + 240);

  return sub_20DA7BDD8(v5, v4);
}

uint64_t sub_20DA7ABD0()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);
  v3 = *(*v0 + 312);
  v4 = *(*v0 + 264);
  v5 = *(*v0 + 248);
  v7 = *v0;

  v3(v4, v5);

  return MEMORY[0x2822009F8](sub_20DA7AD30, 0, 0);
}

uint64_t sub_20DA7AD30()
{
  v89 = v0;
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[15];
  v7 = sub_20DD64344();
  result = (*(v2 + 8))(v1, v3);
  v9 = 0;
  v10 = 0;
  v11 = v7 + 56;
  v74 = v7;
  v12 = -1 << *(v7 + 32);
  v87 = MEMORY[0x277D84FA0];
  if (-v12 < 64)
  {
    v13 = ~(-1 << -v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 56);
  v15 = (63 - v12) >> 6;
  v65 = (v5 + 48);
  v60 = (v5 + 8);
  v72 = v4;
  v75 = (v4 + 8);
  v58 = (v5 + 32);
  v59 = (v6 + 8);
  v68 = v15;
  v70 = v7 + 56;
  while (v14)
  {
LABEL_13:
    v17 = v0[36];
    v19 = v0[26];
    v18 = v0[27];
    v20 = v0[21];
    v21 = v0[17];
    v78 = v0[18];
    v22 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v82 = *(v72 + 16);
    v82(v18, *(v74 + 48) + *(v72 + 72) * (v22 | (v10 << 6)), v20);
    (*(v72 + 32))(v19, v18, v20);
    v23 = sub_20DD63E84();
    v24 = sub_20DA7D510(v23);
    *(swift_task_alloc() + 16) = v19;
    sub_20DA2FE0C(sub_20DA7D724, v24, v21);
    v85 = v9;

    if ((*v65)(v21, 1, v78) == 1)
    {
      v26 = v0[25];
      v25 = v0[26];
      v27 = v0[24];
      v62 = v0[23];
      v28 = v0[21];
      v29 = v0[16];
      sub_20D9D76EC(v0[17], &qword_27C844CC0, &qword_20DD96680);
      v82(v27, v25, v28);
      sub_20D9E2D34(v26, v27);
      v79 = *v75;
      (*v75)(v26, v28);
      sub_20DD64BE4();
      v82(v62, v25, v28);
      v30 = sub_20DD64C24();
      v31 = sub_20DD65364();
      v32 = os_log_type_enabled(v30, v31);
      v33 = v0[23];
      v34 = v0[21];
      v35 = v0[16];
      v36 = v0[14];
      if (v32)
      {
        v83 = v0[14];
        v37 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v88[0] = v63;
        *v37 = 136315394;
        *(v37 + 4) = sub_20D9E0B38(0xD00000000000002ALL, 0x800000020DD9A280, v88);
        *(v37 + 12) = 2082;
        sub_20DA7F500(&qword_27C844CC8, MEMORY[0x277D15B60]);
        v57 = v31;
        v38 = sub_20DD65934();
        v61 = v35;
        v40 = v39;
        v41 = v34;
        v42 = v79;
        v79(v33, v41);
        v43 = sub_20D9E0B38(v38, v40, v88);

        *(v37 + 14) = v43;
        _os_log_impl(&dword_20D9BF000, v30, v57, "%s Failed to get static accessory for tilePath %{public}s", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F327D10](v63, -1, -1);
        MEMORY[0x20F327D10](v37, -1, -1);

        (*v59)(v61, v83);
      }

      else
      {

        v49 = v34;
        v42 = v79;
        v79(v33, v49);
        (*v59)(v35, v36);
      }

      result = (v42)(v0[26], v0[21]);
    }

    else
    {
      (*v58)(v0[20], v0[17], v0[18]);
      if (sub_20DD64144())
      {
        v44 = v0[25];
        v45 = v0[24];
        v46 = v0[21];
        v80 = v0[20];
        v47 = v0[18];
        v82(v45, v0[26], v46);
        sub_20D9E2D34(v44, v45);
        v48 = *v75;
        (*v75)(v44, v46);
        (*v60)(v80, v47);
        result = (v48)(v0[26], v0[21]);
      }

      else
      {
        (*v60)(v0[20], v0[18]);
        result = (*v75)(v0[26], v0[21]);
      }
    }

    v9 = v85;
    v15 = v68;
    v11 = v70;
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v16 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v16);
    ++v10;
    if (v14)
    {
      v10 = v16;
      goto LABEL_13;
    }
  }

  v50 = v0[35];
  v51 = v0[36];
  v64 = v0[34];
  v66 = v0[33];
  v67 = v0[30];
  v69 = v0[27];
  v71 = v0[26];
  v73 = v0[25];
  v76 = v0[24];
  v77 = v0[23];
  v81 = v0[20];
  v84 = v0[17];
  v86 = v0[16];
  v52 = v0[12];
  v53 = v0[13];

  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844CD0, &qword_20DD96698);
  v0[6] = sub_20DA7D780(&qword_27C844CD8, &qword_27C844CD0, &qword_20DD96698);
  v0[2] = v87;
  v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844CE0, &qword_20DD966A0);
  v0[11] = sub_20DA7D780(&qword_27C844CE8, &qword_27C844CE0, &qword_20DD966A0);
  v0[7] = v52;
  v54 = swift_task_alloc();
  *(v54 + 16) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844CF0, &qword_20DD966A8);

  v55 = sub_20DA78C00(v0 + 2, v0 + 7, sub_20DA7A398, 0, sub_20DA7D7D4, v54, sub_20DA7A468, 0);

  (*(v50 + 8))(v51, v64);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v56 = v0[1];

  return v56(v55);
}

id sub_20DA7B4E0(char *a1, uint64_t a2)
{
  v4 = sub_20DD63FE4();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v36 - v10;
  v12 = sub_20DD63744();
  v40 = *(v12 - 8);
  v13 = *(v40 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v41 = a2;
  v19 = *(a2 + qword_27C844CB8);
  if (v19)
  {
    v20 = *(a2 + qword_27C844CB8 + 8);
    if ((v19(a1) & 1) == 0)
    {
      return 0;
    }
  }

  v36 = v7;
  v21 = v41;
  v22 = [*(v41 + qword_27C84C680) accessories];
  sub_20DA7F3AC();
  v23 = sub_20DD64FD4();

  MEMORY[0x28223BE20](v24);
  v37 = a1;
  *(&v36 - 2) = a1;
  v25 = sub_20DA36A4C(sub_20DA7F3F8, (&v36 - 4), v23);

  if (!v25)
  {
    return 0;
  }

  sub_20D9D7558(v21 + qword_27C84C688, v11, &unk_27C843A70, &qword_20DD94260);
  v26 = v40;
  if ((*(v40 + 48))(v11, 1, v12) == 1)
  {
    sub_20D9D76EC(v11, &unk_27C843A70, &qword_20DD94260);
LABEL_12:
    v32 = v37;
    goto LABEL_13;
  }

  (*(v26 + 32))(v18, v11, v12);
  v28 = [v25 room];
  if (!v28)
  {
    (*(v26 + 8))(v18, v12);
    goto LABEL_12;
  }

  v29 = v28;
  v30 = [v28 uniqueIdentifier];
  sub_20DD63714();

  sub_20DA7F500(&qword_280E02288, MEMORY[0x277CC95F0]);
  LOBYTE(v30) = sub_20DD64E64();

  v31 = *(v26 + 8);
  v31(v16, v12);
  v31(v18, v12);
  v32 = v37;
  if ((v30 & 1) == 0)
  {

    return 0;
  }

LABEL_13:
  v33 = v36;
  (*(v38 + 16))(v36, v32, v39);
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = sub_20D9FED40(v33, &unk_20DD96738, v34, v25);

  return v35;
}

uint64_t sub_20DA7B96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D50, &qword_20DD94250) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA7BA0C, 0, 0);
}

uint64_t sub_20DA7BA0C()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_20DA7BBC8;
    v4 = v0[8];
    v5 = v0[6];

    return sub_20DA7BDD8(v4, v5);
  }

  else
  {
    v7 = v0[8];
    v8 = v0[5];
    v9 = sub_20DD64354();
    v10 = *(v9 - 8);
    (*(v10 + 56))(v7, 1, 1, v9);
    sub_20DD64324();
    if ((*(v10 + 48))(v7, 1, v9) != 1)
    {
      sub_20D9D76EC(v0[8], &qword_27C843D50, &qword_20DD94250);
    }

    v11 = v0[8];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_20DA7BBC8()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20DA7BCDC, 0, 0);
}

uint64_t sub_20DA7BCDC()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = sub_20DD64354();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 0, 1, v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_20DA7BDD8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D50, &qword_20DD94250) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA7BE80, 0, 0);
}

uint64_t sub_20DA7BE80()
{
  v0[6] = sub_20DD63C84();
  v0[7] = sub_20DD650F4();
  v0[8] = sub_20DD650E4();
  v2 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA7BF24, v2, v1);
}

uint64_t sub_20DA7BF24()
{
  v1 = v0[8];
  v2 = v0[6];

  v0[9] = sub_20DD63C64();

  return MEMORY[0x2822009F8](sub_20DA7BF98, 0, 0);
}

uint64_t sub_20DA7BF98()
{
  v1 = *(v0 + 56);
  *(v0 + 80) = sub_20DD650E4();
  v3 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA7C024, v3, v2);
}

uint64_t sub_20DA7C024()
{
  v2 = v0[9];
  v1 = v0[10];

  v0[11] = sub_20DD63C14();

  return MEMORY[0x2822009F8](sub_20DA7C098, 0, 0);
}

uint64_t sub_20DA7C098()
{
  if (*(v0[11] + 16))
  {
    v1 = sub_20D9CB38C(v0[3]);
    v2 = v0[5];
    if (v3)
    {
      v4 = v1;
      v5 = *(v0[11] + 56);
      v6 = sub_20DD64354();
      v7 = *(v6 - 8);
      (*(v7 + 16))(v2, v5 + *(v7 + 72) * v4, v6);

      (*(v7 + 56))(v2, 0, 1, v6);
      goto LABEL_7;
    }

    v9 = v0[11];
  }

  else
  {
    v2 = v0[5];
    v8 = v0[11];
  }

  v6 = sub_20DD64354();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
LABEL_7:
  v10 = v0[4];
  sub_20D9D7558(v0[5], v10, &qword_27C843D50, &qword_20DD94250);
  sub_20DD64354();
  v11 = *(v6 - 8);
  v12 = (*(v11 + 48))(v10, 1, v6);
  v13 = v0[4];
  if (v12 == 1)
  {
    v14 = v0[7];
    sub_20D9D76EC(v0[4], &qword_27C843D50, &qword_20DD94250);
    v0[12] = sub_20DD650E4();
    v16 = sub_20DD65094();

    return MEMORY[0x2822009F8](sub_20DA7C380, v16, v15);
  }

  else
  {
    v17 = v0[2];
    sub_20D9D76EC(v0[5], &qword_27C843D50, &qword_20DD94250);
    (*(v11 + 32))(v17, v13, v6);
    v19 = v0[4];
    v18 = v0[5];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_20DA7C380()
{
  v1 = v0[12];
  v2 = v0[6];

  v0[13] = sub_20DD63C64();

  return MEMORY[0x2822009F8](sub_20DA7C3F4, 0, 0);
}

uint64_t sub_20DA7C3F4()
{
  v1 = *(v0 + 56);
  *(v0 + 112) = sub_20DD650E4();
  v3 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA7C480, v3, v2);
}

uint64_t sub_20DA7C480()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[2];

  sub_20DD63BF4();

  return MEMORY[0x2822009F8](sub_20DA7C4F8, 0, 0);
}

uint64_t sub_20DA7C4F8()
{
  sub_20D9D76EC(v0[5], &qword_27C843D50, &qword_20DD94250);
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_20DA7C578(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_20DD63E94();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA7C638, 0, 0);
}

uint64_t sub_20DA7C638()
{
  v0[7] = sub_20DD63C84();
  v0[8] = sub_20DD650F4();
  v0[9] = sub_20DD650E4();
  v2 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA7C6DC, v2, v1);
}

uint64_t sub_20DA7C6DC()
{
  v1 = v0[9];
  v2 = v0[7];

  v0[10] = sub_20DD63C64();

  return MEMORY[0x2822009F8](sub_20DA7C750, 0, 0);
}

uint64_t sub_20DA7C750()
{
  v1 = *(v0 + 64);
  *(v0 + 88) = sub_20DD650E4();
  v3 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA7C7DC, v3, v2);
}

uint64_t sub_20DA7C7DC()
{
  v2 = v0[10];
  v1 = v0[11];

  v0[12] = sub_20DD63C04();

  return MEMORY[0x2822009F8](sub_20DA7C850, 0, 0);
}

uint64_t sub_20DA7C850()
{
  if (*(v0[12] + 16) && (v1 = sub_20D9CB38C(v0[3]), (v2 & 1) != 0))
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];
    v6 = v0[2];
    (*(v4 + 16))(v3, *(v0[12] + 56) + *(v4 + 72) * v1, v5);

    (*(v4 + 32))(v6, v3, v5);
    v7 = v0[6];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[8];

    v0[13] = sub_20DD650E4();
    v12 = sub_20DD65094();

    return MEMORY[0x2822009F8](sub_20DA7C9A8, v12, v11);
  }
}

uint64_t sub_20DA7C9A8()
{
  v1 = v0[13];
  v2 = v0[7];

  v0[14] = sub_20DD63C64();

  return MEMORY[0x2822009F8](sub_20DA7CA1C, 0, 0);
}

uint64_t sub_20DA7CA1C()
{
  v1 = *(v0 + 64);
  *(v0 + 120) = sub_20DD650E4();
  v3 = sub_20DD65094();

  return MEMORY[0x2822009F8](sub_20DA7CAA8, v3, v2);
}

uint64_t sub_20DA7CAA8()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[2];

  sub_20DD63BE4();

  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

id sub_20DA7CB20(void *a1)
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for MatterAccessoryLikeItemProvider();
  v1 = v9.receiver;
  v2 = objc_msgSendSuper2(&v9, sel_invalidationReasons);
  v3 = sub_20DD651E4();

  v10 = v3;
  v4 = sub_20DD64EB4();
  sub_20D9E3400(&v8, v4, v5);

  v6 = sub_20DD651C4();

  return v6;
}

id MatterAccessoryLikeItemProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_20DA7CCB4()
{
  v1 = *(v0 + qword_27C844CB8 + 8);
  sub_20D9C2E38(*(v0 + qword_27C844CB8));
  sub_20D9D76EC(v0 + qword_27C84C688, &unk_27C843A70, &qword_20DD94260);
  v2 = *(v0 + qword_27C84C680);
}

id MatterAccessoryLikeItemProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatterAccessoryLikeItemProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20DA7CD50(uint64_t a1)
{
  v2 = *(a1 + qword_27C844CB8 + 8);
  sub_20D9C2E38(*(a1 + qword_27C844CB8));
  sub_20D9D76EC(a1 + qword_27C84C688, &unk_27C843A70, &qword_20DD94260);
  v3 = *(a1 + qword_27C84C680);
}

uint64_t MatterAccessoryLikeItem.diffingKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath;
  v4 = sub_20DD63FE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_20DA7CE3C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_tilePath;
  v4 = sub_20DD63FE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t *sub_20DA7CEB8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_20DA7E7C8(v9, a2, a3, a4, a5);
    v11 = v10;
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

uint64_t sub_20DA7CF70(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_20DA7D110(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_20DA7F378(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x20F327D10](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_20DA7D110(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a2;
  v43 = a1;
  v6 = sub_20DD63FE4();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v51 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v59 = &v40 - v11;
  MEMORY[0x28223BE20](v10);
  v49 = &v40 - v13;
  v14 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a3 + 64);
  v18 = (v15 + 63) >> 6;
  v56 = v12 + 16;
  v57 = a4;
  v48 = v12 + 32;
  v53 = a4 + 56;
  v50 = v12;
  v58 = (v12 + 8);

  v42 = 0;
  v20 = 0;
  v46 = v18;
  v47 = a3 + 64;
  v44 = a3;
  while (v17)
  {
LABEL_12:
    v23 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v25 = v49;
    v24 = v50;
    v26 = *(v50 + 72);
    v27 = *(a3 + 48) + v26 * (v23 | (v20 << 6));
    v54 = *(v50 + 16);
    v55 = v26;
    v54(v49, v27, v6);
    (*(v24 + 32))(v59, v25, v6);
    v28 = v57;
    v29 = *(v57 + 40);
    sub_20DA7F500(&qword_27C844380, MEMORY[0x277D15B60]);
    v30 = sub_20DD64E24();
    v31 = -1 << *(v28 + 32);
    v32 = v30 & ~v31;
    v33 = v32 >> 6;
    v34 = 1 << v32;
    if (((1 << v32) & *(v53 + 8 * (v32 >> 6))) != 0)
    {
      v45 = v58 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v52 = ~v31;
      while (1)
      {
        v35 = v51;
        v54(v51, *(v57 + 48) + v32 * v55, v6);
        sub_20DA7F500(&qword_27C8434C0, MEMORY[0x277D15B60]);
        v36 = sub_20DD64E64();
        v21 = *v58;
        (*v58)(v35, v6);
        if (v36)
        {
          break;
        }

        v32 = (v32 + 1) & v52;
        v33 = v32 >> 6;
        v34 = 1 << v32;
        if (((1 << v32) & *(v53 + 8 * (v32 >> 6))) == 0)
        {
          a3 = v44;
          goto LABEL_6;
        }
      }

      result = (v21)(v59, v6);
      a3 = v44;
      v37 = v43[v33];
      v43[v33] = v37 | v34;
      v18 = v46;
      v14 = v47;
      if ((v37 & v34) == 0 && __OFADD__(v42++, 1))
      {
        __break(1u);
LABEL_21:

        v39 = v57;

        return sub_20D9F86AC(v43, v41, v42, v39);
      }
    }

    else
    {
      v21 = *v58;
LABEL_6:
      v18 = v46;
      result = (v21)(v59, v6);
      v14 = v47;
    }
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v18)
    {
      goto LABEL_21;
    }

    v17 = *(v14 + 8 * v22);
    ++v20;
    if (v17)
    {
      v20 = v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20DA7D510(uint64_t a1)
{
  v2 = sub_20DD64164();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  v10 = *(a1 + 16);
  v11 = sub_20DA7F500(&qword_27C844D18, MEMORY[0x277D15D40]);
  result = MEMORY[0x20F326190](v10, v2, v11);
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 16;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v9, *(v24 + 56) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      sub_20DA7D914(v7, v9);
      result = (*(v3 + 8))(v7, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20DA7D724()
{
  v1 = *(v0 + 16);
  v2 = sub_20DD64154();
  return (v2 == sub_20DD63FD4()) & ~v3;
}

uint64_t sub_20DA7D780(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_20DA7D838()
{
  sub_20DA34408();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_20DA7D914(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20DD64164();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_20DA7F500(&qword_27C844D18, MEMORY[0x277D15D40]);
  v36 = a2;
  v13 = sub_20DD64E24();
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
      sub_20DA7F500(&qword_27C844D20, MEMORY[0x277D15D40]);
      v23 = sub_20DD64E64();
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
    sub_20DA7DBF4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_20DA7DBF4(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_20DD64164();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v12 <= v11)
  {
    v13 = v11 + 1;
    if (a3)
    {
      sub_20DA7E3E0(v13);
    }

    else
    {
      sub_20DA7E0C4(v13);
    }

    v14 = *v3;
    v15 = *(*v3 + 40);
    sub_20DA7F500(&qword_27C844D18, MEMORY[0x277D15D40]);
    v16 = sub_20DD64E24();
    v17 = v14 + 56;
    v33 = v14;
    v18 = -1 << *(v14 + 32);
    a2 = v16 & ~v18;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v19 = ~v18;
      v22 = *(v7 + 16);
      v21 = v7 + 16;
      v20 = v22;
      v23 = *(v21 + 56);
      do
      {
        v20(v10, *(v33 + 48) + v23 * a2, v6);
        sub_20DA7F500(&qword_27C844D20, MEMORY[0x277D15D40]);
        v24 = sub_20DD64E64();
        (*(v21 - 8))(v10, v6);
        if (v24)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v19;
      }

      while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_20DA7DE8C();
  }

  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_20DD659D4();
  __break(1u);
  return result;
}

void *sub_20DA7DE8C()
{
  v1 = v0;
  v2 = sub_20DD64164();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D28, &qword_20DD96748);
  v7 = *v0;
  v8 = sub_20DD656A4();
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

uint64_t sub_20DA7E0C4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20DD64164();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D28, &qword_20DD96748);
  v10 = sub_20DD656B4();
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
      sub_20DA7F500(&qword_27C844D18, MEMORY[0x277D15D40]);
      result = sub_20DD64E24();
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

uint64_t sub_20DA7E3E0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_20DD64164();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D28, &qword_20DD96748);
  result = sub_20DD656B4();
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
      sub_20DA7F500(&qword_27C844D18, MEMORY[0x277D15D40]);
      result = sub_20DD64E24();
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

void sub_20DA7E7C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v38 = a3 + 56;
  v39 = 0;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v42 = a4 & 0xC000000000000001;
  v46 = a4 + 56;
  v40 = a5 & 0xC000000000000001;
  v47 = a5 + 56;
  v43 = v10;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v45 = (v9 - 1) & v9;
LABEL_13:
    v41 = v11 | (v6 << 6);
    v14 = *(*(a3 + 48) + 8 * v41);
    type metadata accessor for MatterAccessoryLikeItem();
    if (v42)
    {
      v15 = v14;
      v16 = sub_20DD65604();

      if (v16)
      {
        goto LABEL_5;
      }

LABEL_21:
      if (!v40)
      {
        goto LABEL_25;
      }

LABEL_22:
      v25 = v14;
      v26 = sub_20DD65604();

      v10 = v43;
      v9 = v45;
      if ((v26 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if (*(a4 + 16))
    {
      v17 = *(a4 + 40);
      v18 = v14;
      v19 = sub_20DD65444();
      v20 = -1 << *(a4 + 32);
      v21 = v19 & ~v20;
      if (((*(v46 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_21;
      }

      v22 = ~v20;
      while (1)
      {
        v23 = *(*(a4 + 48) + 8 * v21);
        v24 = sub_20DD65454();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v46 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

LABEL_5:

      v10 = v43;
      v9 = v45;
    }

    else
    {
      v27 = v14;
      if (v40)
      {
        goto LABEL_22;
      }

LABEL_25:
      if (*(a5 + 16))
      {
        v28 = *(a5 + 40);
        v29 = sub_20DD65444();
        v30 = -1 << *(a5 + 32);
        v31 = v29 & ~v30;
        if ((*(v47 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
        {
          v32 = ~v30;
          do
          {
            v33 = *(*(a5 + 48) + 8 * v31);
            v34 = sub_20DD65454();

            if (v34)
            {
              goto LABEL_5;
            }

            v31 = (v31 + 1) & v32;
          }

          while (((*(v47 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0);
        }
      }

      v10 = v43;
      v9 = v45;
LABEL_31:
      *(a1 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      if (__OFADD__(v39++, 1))
      {
        __break(1u);
LABEL_34:

        sub_20D9F8698(a1, a2, v39, a3);
        return;
      }
    }
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      goto LABEL_34;
    }

    v13 = *(v38 + 8 * v6);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v45 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_20DA7EB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1;
  v67 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = (8 * v10);

  v64 = a2;
  v66 = a3;
  if (v9 > 0xD)
  {
    goto LABEL_43;
  }

  while (2)
  {
    v51 = v10;
    v52 = v4;
    v50 = &v50;
    MEMORY[0x28223BE20](v12);
    v53 = &v50 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v53, v11);
    v55 = 0;
    v13 = 0;
    v14 = v7 + 56;
    v15 = 1 << *(v7 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v7 + 56);
    v18 = (v15 + 63) >> 6;
    v59 = a2 & 0xC000000000000001;
    v60 = v18;
    if (a2 < 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v63 = a2 + 56;
    v56 = a3 & 0xC000000000000001;
    v57 = v19;
    v20 = a3 & 0xFFFFFFFFFFFFFF8;
    if (a3 < 0)
    {
      v20 = a3;
    }

    v54 = v20;
    v65 = a3 + 56;
    v61 = v7;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v62 = (v17 - 1) & v17;
LABEL_19:
      v24 = v21 | (v13 << 6);
      v25 = *(v7 + 48);
      v58 = v24;
      v26 = *(v25 + 8 * v24);
      v11 = type metadata accessor for MatterAccessoryLikeItem();
      if (v59)
      {
        v27 = v26;
        v28 = sub_20DD65604();

        if (v28)
        {
          goto LABEL_11;
        }

LABEL_27:
        if (!v56)
        {
          goto LABEL_31;
        }

LABEL_28:
        v11 = v26;
        v35 = sub_20DD65604();

        v18 = v60;
        v7 = v61;
        v17 = v62;
        if ((v35 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      else if (v64[2])
      {
        v29 = v64[5];
        v4 = v64;
        v30 = v26;
        v31 = sub_20DD65444();
        v32 = -1 << *(v4 + 32);
        v33 = v31 & ~v32;
        if (((*(v63 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          goto LABEL_27;
        }

        v4 = ~v32;
        while (1)
        {
          v10 = *(v64[6] + 8 * v33);
          v34 = sub_20DD65454();

          if (v34)
          {
            break;
          }

          v33 = (v33 + 1) & v4;
          if (((*(v63 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

LABEL_11:

        v18 = v60;
        v7 = v61;
        v17 = v62;
      }

      else
      {
        v36 = v26;
        if (v56)
        {
          goto LABEL_28;
        }

LABEL_31:
        if (*(v66 + 16))
        {
          v37 = *(v66 + 40);
          v38 = sub_20DD65444();
          v39 = v66;
          v40 = -1 << *(v66 + 32);
          v41 = v38 & ~v40;
          if ((*(v65 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
          {
            v4 = ~v40;
            do
            {
              v10 = *(*(v39 + 48) + 8 * v41);
              v42 = sub_20DD65454();

              if (v42)
              {
                goto LABEL_11;
              }

              v41 = (v41 + 1) & v4;
              v39 = v66;
            }

            while (((*(v65 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) != 0);
          }
        }

        v18 = v60;
        v7 = v61;
        v17 = v62;
LABEL_37:
        *&v53[(v58 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v58;
        if (__OFADD__(v55++, 1))
        {
          __break(1u);
LABEL_40:
          v44 = sub_20D9F8698(v53, v51, v55, v7);

          goto LABEL_41;
        }
      }
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_40;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v62 = (v23 - 1) & v23;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_43:

    if (swift_stdlib_isStackAllocationSafe())
    {

      a2 = v64;
      a3 = v66;
      continue;
    }

    break;
  }

  v47 = swift_slowAlloc();
  v48 = v64;

  v49 = v66;

  v44 = sub_20DA7CEB8(v47, v10, v7, v48, v49);

  MEMORY[0x20F327D10](v47, -1, -1);

LABEL_41:
  v45 = *MEMORY[0x277D85DE8];
  return v44;
}

uint64_t sub_20DA7EFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_20DA7EB1C(a1, a2, a3);
  }

  v5 = MEMORY[0x277D84FA0];
  v41 = MEMORY[0x277D84FA0];

  sub_20DD65564();
  v39 = a3;
  if (sub_20DD655F4())
  {
    type metadata accessor for MatterAccessoryLikeItem();
    v6 = a2 + 56;
    v37 = a3 & 0xC000000000000001;
    v38 = a3 + 56;
    do
    {
      swift_dynamicCast();
      if ((a2 & 0xC000000000000001) != 0)
      {
        v7 = v40;
        v8 = sub_20DD65604();

        if (v8)
        {
          goto LABEL_4;
        }
      }

      else if (*(a2 + 16))
      {
        v9 = *(a2 + 40);
        v10 = sub_20DD65444();
        v11 = -1 << *(a2 + 32);
        v12 = v10 & ~v11;
        if ((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v13 = ~v11;
          do
          {
            v14 = *(*(a2 + 48) + 8 * v12);
            v15 = sub_20DD65454();

            if (v15)
            {
              goto LABEL_4;
            }

            v12 = (v12 + 1) & v13;
          }

          while (((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
        }
      }

      if (v37)
      {
        v16 = v40;
        v17 = sub_20DD65604();

        if ((v17 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (!*(v39 + 16) || (v18 = *(v39 + 40), v19 = sub_20DD65444(), v20 = -1 << *(v39 + 32), v21 = v19 & ~v20, ((*(v38 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0))
        {
LABEL_22:
          v25 = *(v5 + 16);
          if (*(v5 + 24) <= v25)
          {
            sub_20D9F7AF0(v25 + 1);
          }

          v5 = v41;
          v26 = *(v41 + 40);
          result = sub_20DD65444();
          v28 = v41 + 56;
          v29 = -1 << *(v41 + 32);
          v30 = result & ~v29;
          v31 = v30 >> 6;
          if (((-1 << v30) & ~*(v41 + 56 + 8 * (v30 >> 6))) != 0)
          {
            v32 = __clz(__rbit64((-1 << v30) & ~*(v41 + 56 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v33 = 0;
            v34 = (63 - v29) >> 6;
            do
            {
              if (++v31 == v34 && (v33 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v35 = v31 == v34;
              if (v31 == v34)
              {
                v31 = 0;
              }

              v33 |= v35;
              v36 = *(v28 + 8 * v31);
            }

            while (v36 == -1);
            v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          }

          *(v28 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
          *(*(v41 + 48) + 8 * v32) = v40;
          ++*(v41 + 16);
          continue;
        }

        v22 = ~v20;
        while (1)
        {
          v23 = *(*(v39 + 48) + 8 * v21);
          v24 = sub_20DD65454();

          if (v24)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v38 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_22;
          }
        }
      }

LABEL_4:
    }

    while (sub_20DD655F4());
  }

  return v5;
}

uint64_t sub_20DA7F378@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_20DA7D110(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_20DA7F3AC()
{
  result = qword_27C844290;
  if (!qword_27C844290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C844290);
  }

  return result;
}

uint64_t sub_20DA7F3F8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = sub_20DD65334();
  return (v4 == sub_20DD63FD4()) & ~v5;
}

uint64_t sub_20DA7F454(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20D9C76B4;

  return sub_20DA7B96C(a1, a2, v2);
}

uint64_t sub_20DA7F500(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HMAccessory.enableAdaptiveTemperature(to:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 88) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D30, &qword_20DD96758) - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();
  v4 = sub_20DD64594();
  *(v2 + 32) = v4;
  v5 = *(v4 - 8);
  *(v2 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA7F644, 0, 0);
}

uint64_t sub_20DA7F644()
{
  v27 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_20DD65304();
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    sub_20DA7FF74(*(v0 + 24));
    if (qword_27C8424E8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 16);
    v6 = sub_20DD64C44();
    __swift_project_value_buffer(v6, qword_27C84C690);
    v7 = v5;
    v8 = sub_20DD64C24();
    v9 = sub_20DD65364();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 16);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v12;
      *v11 = 136315650;
      *(v11 + 4) = sub_20D9E0B38(0xD00000000000001CLL, 0x800000020DD9A320, &v26);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_20D9E0B38(0xD00000000000001ELL, 0x800000020DD9A340, &v26);
      *(v11 + 22) = 2080;
      v13 = [v10 name];
      v14 = sub_20DD64EB4();
      v16 = v15;

      v17 = sub_20D9E0B38(v14, v16, &v26);

      *(v11 + 24) = v17;
      _os_log_impl(&dword_20D9BF000, v8, v9, "%s - %s: Error - No thermostat cluster found on accessory: %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v12, -1, -1);
      MEMORY[0x20F327D10](v11, -1, -1);
    }

    v18 = *(v0 + 48);
    v19 = *(v0 + 24);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    (*(*(v0 + 40) + 32))(*(v0 + 48), *(v0 + 24), *(v0 + 32));
    v22 = *(MEMORY[0x277D16DD8] + 4);
    v23 = swift_task_alloc();
    *(v0 + 56) = v23;
    *v23 = v0;
    v23[1] = sub_20DA7F950;
    v24 = *(v0 + 48);
    v25 = *(v0 + 88);

    return MEMORY[0x282170F78](v25);
  }
}

uint64_t sub_20DA7F950()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20DA7FC60, 0, 0);
  }

  else
  {
    v4 = *(MEMORY[0x277D16EE0] + 4);
    v5 = swift_task_alloc();
    v3[9] = v5;
    *v5 = v3;
    v5[1] = sub_20DA7FAC4;
    v6 = v3[2];

    return MEMORY[0x2821711E0](1);
  }
}

uint64_t sub_20DA7FAC4()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_20DA7FEEC;
  }

  else
  {
    v3 = sub_20DA7FBD8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DA7FBD8()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[6];
  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_20DA7FC60()
{
  v26 = v0;
  if (qword_27C8424E8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_20DD64C44();
  __swift_project_value_buffer(v2, qword_27C84C690);
  v3 = v1;
  v4 = sub_20DD64C24();
  v5 = sub_20DD65364();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];
  if (v6)
  {
    v11 = v0[2];
    v24 = v0[4];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315650;
    v23 = v8;
    *(v12 + 4) = sub_20D9E0B38(0xD00000000000001CLL, 0x800000020DD9A320, &v25);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_20D9E0B38(0xD00000000000001ELL, 0x800000020DD9A340, &v25);
    *(v12 + 22) = 2080;
    v14 = [v11 name];
    v15 = sub_20DD64EB4();
    v17 = v16;

    v18 = sub_20D9E0B38(v15, v17, &v25);

    *(v12 + 24) = v18;
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v13, -1, -1);
    MEMORY[0x20F327D10](v12, -1, -1);

    (*(v9 + 8))(v23, v24);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v19 = v0[6];
  v20 = v0[3];

  v21 = v0[1];

  return v21();
}

uint64_t sub_20DA7FEEC()
{
  v1 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_20DA7FF74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D30, &qword_20DD96758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DA7FFDC(void *a1, uint64_t a2, char a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v11;
  *(v12 + 32) = a1;
  v13 = sub_20DD65114();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20DD96780;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20DD96788;
  v15[5] = v14;
  v16 = a1;
  sub_20DAB35AC(0, 0, v10, &unk_20DD96790, v15);
}

uint64_t sub_20DA80160(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_20DA8021C;

  return HMAccessory.enableAdaptiveTemperature(to:)(a1);
}

uint64_t sub_20DA8021C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_20DD63494();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t HMAccessory.enableGridForecastAutomation(to:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 72) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D30, &qword_20DD96758) - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();
  v4 = sub_20DD64594();
  *(v2 + 32) = v4;
  v5 = *(v4 - 8);
  *(v2 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA8049C, 0, 0);
}

uint64_t sub_20DA8049C()
{
  v27 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_20DD65304();
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    sub_20DA7FF74(*(v0 + 24));
    if (qword_27C8424E8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 16);
    v6 = sub_20DD64C44();
    __swift_project_value_buffer(v6, qword_27C84C690);
    v7 = v5;
    v8 = sub_20DD64C24();
    v9 = sub_20DD65364();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 16);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v12;
      *v11 = 136315650;
      *(v11 + 4) = sub_20D9E0B38(0xD00000000000001CLL, 0x800000020DD9A320, &v26);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_20D9E0B38(0xD000000000000021, 0x800000020DD9A360, &v26);
      *(v11 + 22) = 2080;
      v13 = [v10 name];
      v14 = sub_20DD64EB4();
      v16 = v15;

      v17 = sub_20D9E0B38(v14, v16, &v26);

      *(v11 + 24) = v17;
      _os_log_impl(&dword_20D9BF000, v8, v9, "%s - %s: Error - No thermostat cluster found on accessory: %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v12, -1, -1);
      MEMORY[0x20F327D10](v11, -1, -1);
    }

    v18 = *(v0 + 48);
    v19 = *(v0 + 24);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    (*(*(v0 + 40) + 32))(*(v0 + 48), *(v0 + 24), *(v0 + 32));
    v22 = *(MEMORY[0x277D16D88] + 4);
    v23 = swift_task_alloc();
    *(v0 + 56) = v23;
    *v23 = v0;
    v23[1] = sub_20DA807A8;
    v24 = *(v0 + 48);
    v25 = *(v0 + 72);

    return MEMORY[0x282170F18](v25);
  }
}

uint64_t sub_20DA807A8()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_20DA808BC;
  }

  else
  {
    v3 = sub_20DA814E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DA808BC()
{
  v1 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_20DA80944(void *a1, uint64_t a2, char a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v11;
  *(v12 + 32) = a1;
  v13 = sub_20DD65114();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20DD96770;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20DD94D90;
  v15[5] = v14;
  v16 = a1;
  sub_20DAB35AC(0, 0, v10, &unk_20DD95520, v15);
}

uint64_t sub_20DA80AC8(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_20DA814E0;

  return HMAccessory.enableGridForecastAutomation(to:)(a1);
}

Swift::Bool __swiftcall HMAccessory.shouldShowPresetConfiguration()()
{
  v0 = sub_20DD645A4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D30, &qword_20DD96758);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_20DD64594();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD65304();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_20DA7FF74(v8);
    return 0;
  }

  (*(v10 + 32))(v13, v8, v9);
  (*(v1 + 104))(v4, *MEMORY[0x277D16E28], v0);
  v14 = sub_20DD64554();
  (*(v1 + 8))(v4, v0);
  v15 = sub_20DD64574();
  (*(v10 + 8))(v13, v9);
  if ((v15 & 1) == 0)
  {

    return 0;
  }

  if (!v14)
  {
    return 1;
  }

  v16 = *(v14 + 16);

  return v16 != 0;
}

BOOL sub_20DA80E58(void *a1)
{
  v1 = a1;
  v2 = HMAccessory.shouldShowPresetConfiguration()();

  return v2;
}

uint64_t sub_20DA80EA4(uint64_t (*a1)(uint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D30, &qword_20DD96758);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = sub_20DD64594();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD65304();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20DA7FF74(v5);
    v11 = 0;
  }

  else
  {
    v12 = (*(v7 + 32))(v10, v5, v6);
    v11 = a1(v12);
    (*(v7 + 8))(v10, v6);
  }

  return v11 & 1;
}

uint64_t sub_20DA81040(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D30, &qword_20DD96758);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_20DD64594();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  sub_20DD65304();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_20DA7FF74(v8);
    v15 = 0;
  }

  else
  {
    v16 = (*(v10 + 32))(v13, v8, v9);
    v15 = a3(v16);

    (*(v10 + 8))(v13, v9);
  }

  return v15 & 1;
}

uint64_t sub_20DA811E4()
{
  v0 = sub_20DD64C44();
  __swift_allocate_value_buffer(v0, qword_27C84C690);
  __swift_project_value_buffer(v0, qword_27C84C690);
  return sub_20DD64C34();
}

uint64_t sub_20DA8126C()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20D9D77C4;

  return sub_20DA80AC8(v2, v4, v3);
}

uint64_t objectdestroyTm_2()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20DA81360()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20D9D77C4;

  return sub_20DA80160(v2, v4, v3);
}

uint64_t sub_20DA81414(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D9C76B4;

  return sub_20DAB34C4(a1, v4, v5, v7);
}

id HFEvent.iconDescriptor.getter()
{
  v1 = sub_20DD64784();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20DD649D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v0, v6);
  if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277D17970])
  {
    (*(v7 + 96))(v10, v6);
    (*(v2 + 32))(v5, v10, v1);
    v11 = sub_20DA81708(v5);
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v11 = [objc_allocWithZone(HFImageIconDescriptor) initWithImageIdentifier_];
    (*(v7 + 8))(v10, v6);
  }

  return v11;
}

id sub_20DA81708(uint64_t a1)
{
  v241 = a1;
  v201 = sub_20DD64864();
  v240 = *(v201 - 8);
  v1 = *(v240 + 64);
  MEMORY[0x28223BE20](v201);
  v239 = &v191 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_20DD64894();
  v199 = *(v200 - 8);
  v3 = *(v199 + 64);
  MEMORY[0x28223BE20](v200);
  v198 = &v191 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_20DD648B4();
  v247 = *(v245 - 8);
  v5 = *(v247 + 64);
  MEMORY[0x28223BE20](v245);
  v246 = &v191 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_20DD64744();
  v204 = *(v205 - 8);
  v7 = *(v204 + 64);
  MEMORY[0x28223BE20](v205);
  v206 = &v191 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_20DD64764();
  v202 = *(v203 - 8);
  v9 = *(v202 + 64);
  MEMORY[0x28223BE20](v203);
  v210 = &v191 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_20DD64794();
  v208 = *(v211 - 8);
  v11 = *(v208 + 64);
  MEMORY[0x28223BE20](v211);
  v212 = &v191 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_20DD647B4();
  v207 = *(v209 - 8);
  v13 = *(v207 + 64);
  MEMORY[0x28223BE20](v209);
  v217 = &v191 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = sub_20DD64944();
  v228 = *(v230 - 8);
  v15 = *(v228 + 64);
  MEMORY[0x28223BE20](v230);
  v231 = &v191 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = sub_20DD64964();
  v227 = *(v229 - 8);
  v17 = *(v227 + 64);
  MEMORY[0x28223BE20](v229);
  v232 = &v191 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_20DD64634();
  v193 = *(v195 - 8);
  v19 = *(v193 + 64);
  MEMORY[0x28223BE20](v195);
  v196 = &v191 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_20DD64654();
  v192 = *(v194 - 8);
  v21 = *(v192 + 64);
  MEMORY[0x28223BE20](v194);
  v197 = &v191 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_20DD646A4();
  v221 = *(v223 - 8);
  v23 = *(v221 + 64);
  MEMORY[0x28223BE20](v223);
  v224 = &v191 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_20DD646C4();
  v220 = *(v222 - 8);
  v25 = *(v220 + 64);
  MEMORY[0x28223BE20](v222);
  v226 = &v191 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_20DD64714();
  v235 = *(v237 - 8);
  v27 = *(v235 + 64);
  MEMORY[0x28223BE20](v237);
  v238 = &v191 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_20DD64734();
  v234 = *(v236 - 8);
  v29 = *(v234 + 64);
  MEMORY[0x28223BE20](v236);
  v233 = &v191 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_20DD64974();
  v214 = *(v216 - 8);
  v31 = *(v214 + 64);
  MEMORY[0x28223BE20](v216);
  v218 = &v191 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_20DD64994();
  v213 = *(v215 - 8);
  v33 = *(v213 + 64);
  MEMORY[0x28223BE20](v215);
  v219 = &v191 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = sub_20DD64784();
  v243 = *(v242 - 8);
  v35 = *(v243 + 64);
  MEMORY[0x28223BE20](v242);
  v244 = &v191 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844D38, &unk_20DD96E60);
  v37 = *(*(v261 - 8) + 64);
  MEMORY[0x28223BE20](v261);
  v39 = &v191 - v38;
  v251 = 0;
  v40 = sub_20DD64674();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v44 = &v191 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_20DD64664();
  v46 = *(v45 + 16);
  if (v46)
  {
    v48 = *(v41 + 16);
    v47 = v41 + 16;
    v260 = v48;
    v49 = (*(v47 + 64) + 32) & ~*(v47 + 64);
    v225 = v45;
    v50 = v45 + v49;
    v253 = *(v47 + 56);
    v259 = (v47 + 72);
    LODWORD(v258) = *MEMORY[0x277D17670];
    LODWORD(v257) = *MEMORY[0x277D17658];
    v256 = *MEMORY[0x277D17678];
    v252 = *MEMORY[0x277D17680];
    v250 = *MEMORY[0x277D17668];
    v262[0] = (v47 - 8);
    v249[1] = *MEMORY[0x277CD0F30];
    v249[0] = *MEMORY[0x277CD0E60];
    v51 = MEMORY[0x277D84F90];
    v248 = xmmword_20DD94280;
    v254 = v47;
    while (1)
    {
      v52 = v260;
      (v260)(v44, v50, v40);
      v53 = *(v261 + 48);
      *v39 = 1;
      (v52)(&v39[v53], v44, v40);
      v54 = (*v259)(&v39[v53], v40);
      if (v54 == v258 || v54 == v257 || v54 == v256)
      {
        goto LABEL_13;
      }

      if (v54 != v252)
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
      v57 = swift_allocObject();
      *(v57 + 16) = v248;
      *(v57 + 32) = sub_20DD64EB4();
      *(v57 + 40) = v58;
      *(v57 + 48) = sub_20DD64EB4();
      *(v57 + 56) = v59;
      (*v262[0])(&v39[v53], v40);
LABEL_17:
      v60 = *(v57 + 16);
      v61 = *(v51 + 2);
      v62 = (v60 + v61);
      if (__OFADD__(v61, v60))
      {
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v62 <= *(v51 + 3) >> 1)
      {
        if (!*(v57 + 16))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v61 <= v62)
        {
          v67 = v60 + v61;
        }

        else
        {
          v67 = v61;
        }

        isUniquelyReferenced_nonNull_native = sub_20D9E0040(isUniquelyReferenced_nonNull_native, v67, 1, v51);
        v51 = isUniquelyReferenced_nonNull_native;
        if (!*(v57 + 16))
        {
LABEL_29:

          if (v60)
          {
            goto LABEL_135;
          }

          goto LABEL_30;
        }
      }

      if ((*(v51 + 3) >> 1) - *(v51 + 2) < v60)
      {
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
        goto LABEL_154;
      }

      swift_arrayInitWithCopy();

      if (v60)
      {
        v64 = *(v51 + 2);
        v65 = __OFADD__(v64, v60);
        v66 = v60 + v64;
        if (v65)
        {
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          if (isUniquelyReferenced_nonNull_native == *MEMORY[0x277D17890] || isUniquelyReferenced_nonNull_native == *MEMORY[0x277D178A0])
          {
            v168 = objc_allocWithZone(HFImageIconDescriptor);
            v169 = sub_20DD64E74();
            v166 = v57;
            v167 = v44;
            goto LABEL_175;
          }

          v157 = v40;
          if (isUniquelyReferenced_nonNull_native != *MEMORY[0x277D17888] && isUniquelyReferenced_nonNull_native != *MEMORY[0x277D17870])
          {
            v186 = objc_allocWithZone(HFImageIconDescriptor);
            v187 = v57;
            v188 = v44;
            v189 = sub_20DD64E74();
            v161 = [v186 initWithSystemImageNamed_];
            swift_unknownObjectRelease();

            (*(v157 + 8))(v46, v39);
            (*(v187 + 8))(v51, v188);
            return v161;
          }

LABEL_133:
          (*(v57 + 8))(v51, v44);
          v159 = objc_allocWithZone(HFImageIconDescriptor);
          v160 = sub_20DD64E74();
          v161 = [v159 initWithSystemImageNamed_];
          swift_unknownObjectRelease();

          (*(v157 + 8))(v46, v39);
          return v161;
        }

        *(v51 + 2) = v66;
      }

LABEL_30:
      isUniquelyReferenced_nonNull_native = sub_20DA9AE18(0);
      v57 = *(isUniquelyReferenced_nonNull_native + 16);
      v68 = *(v51 + 2);
      v69 = v68 + v57;
      if (__OFADD__(v68, v57))
      {
        goto LABEL_136;
      }

      if (v69 > *(v51 + 3) >> 1)
      {
        if (v68 <= v69)
        {
          v73 = v68 + v57;
        }

        else
        {
          v73 = *(v51 + 2);
        }

        v60 = isUniquelyReferenced_nonNull_native;
        v51 = sub_20D9E0040(1, v73, 1, v51);
        LODWORD(isUniquelyReferenced_nonNull_native) = v60;
        v68 = *(v51 + 2);
        if (!v60->data)
        {
LABEL_3:

          if (v57)
          {
            goto LABEL_137;
          }

          goto LABEL_4;
        }
      }

      else
      {
        v70 = *(isUniquelyReferenced_nonNull_native + 16);
        if (!v57)
        {
          goto LABEL_3;
        }
      }

      if (((*(v51 + 3) >> 1) - v68) < v57)
      {
        goto LABEL_153;
      }

      swift_arrayInitWithCopy();

      if (v57)
      {
        v71 = *(v51 + 2);
        v65 = __OFADD__(v71, v57);
        v72 = v71 + v57;
        if (v65)
        {
          goto LABEL_167;
        }

        *(v51 + 2) = v72;
      }

LABEL_4:
      (*v262[0])(v44, v40);
      v50 += v253;
      if (!--v46)
      {

        goto LABEL_46;
      }
    }

    if (v54 == v250)
    {
      (*v262[0])(&v39[v53], v40);
    }

    else
    {
LABEL_13:
      sub_20DA83E48(v39);
    }

    v57 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v51 = MEMORY[0x277D84F90];
LABEL_46:
  v74 = HFEvent.accessory.getter();
  v61 = 0x277DEF000;
  v39 = v245;
  v57 = v247;
  v46 = v246;
  if (!v74)
  {
    v40 = v247;

    v62 = 0;
    v262[0] = 0;
    v57 = v240;
    v51 = v239;
    goto LABEL_69;
  }

  v75 = v74;
  v76 = [v74 hf_visibleServices];

  v77 = sub_20DA83EB0();
  sub_20DA6C1EC();
  v78 = sub_20DD651E4();

  v258 = v78;
  v259 = v77;
  if ((v78 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    LODWORD(isUniquelyReferenced_nonNull_native) = sub_20DD65284();
    v78 = v263[2];
    v79 = v263[3];
    v44 = v263[4];
    v39 = v263[5];
    v62 = v263[6];
  }

  else
  {
    v80 = -1 << *(v78 + 32);
    v79 = v78 + 56;
    v44 = ~v80;
    v81 = -v80;
    if (v81 < 64)
    {
      v82 = ~(-1 << v81);
    }

    else
    {
      v82 = -1;
    }

    v62 = (v82 & *(v78 + 56));

    v39 = 0;
  }

  v257 = v44;
  v40 = (v44 + 64) >> 6;
  if ((v78 & 0x8000000000000000) == 0)
  {
    goto LABEL_58;
  }

LABEL_55:
  v83 = sub_20DD655F4();
  if (!v83)
  {
    v40 = v57;
LABEL_67:
    sub_20D9C51CC();

    v62 = 0;
    v262[0] = 0;
    v57 = v240;
    v51 = v239;
    v39 = v245;
LABEL_68:
    v61 = 0x277DEF000uLL;
    goto LABEL_69;
  }

  v262[1] = v83;
  swift_dynamicCast();
  v84 = v263[0];
  v85 = v39;
  v86 = v62;
  if (!v263[0])
  {
LABEL_89:
    v40 = v247;
    v46 = v246;
    goto LABEL_67;
  }

  while (1)
  {
    v260 = v39;
    v261 = v62;
    v44 = v78;
    v262[0] = v84;
    v89 = [v84 serviceType];
    v90 = sub_20DD64EB4();
    v92 = v91;

    v263[0] = v90;
    v263[1] = v92;
    MEMORY[0x28223BE20](v93);
    *(&v191 - 2) = v263;
    v94 = v251;
    LOBYTE(v90) = sub_20D9DFE38(sub_20DA83EFC, (&v191 - 4), v51);
    v251 = v94;

    if (v90)
    {
      break;
    }

    v39 = v85;
    v62 = v86;
    v57 = v247;
    v46 = v246;
    v78 = v44;
    if ((v44 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

LABEL_58:
    v87 = v39;
    v88 = v62;
    v85 = v39;
    if (!v62)
    {
      while (1)
      {
        v85 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
          break;
        }

        if (v85 >= v40)
        {
          v40 = v57;
          goto LABEL_67;
        }

        v88 = *(v79 + 8 * v85);
        v87 = (v87 + 1);
        if (v88)
        {
          goto LABEL_62;
        }
      }

      __break(1u);
      goto LABEL_152;
    }

LABEL_62:
    v86 = (v88 - 1) & v88;
    v84 = *(*(v78 + 48) + ((v85 << 9) | (8 * __clz(__rbit64(v88)))));
    if (!v84)
    {
      goto LABEL_89;
    }
  }

  sub_20D9C51CC();

  v133 = v262[0];
  v134 = [v262[0] hf_iconDescriptor];

  v46 = v246;
  v262[0] = v134;
  if (!v134)
  {
    v62 = 0;
    v262[0] = 0;
    v57 = v240;
    v51 = v239;
    v39 = v245;
    v40 = v247;
    goto LABEL_68;
  }

  v61 = 0x277DEF000uLL;
  objc_opt_self();
  v135 = swift_dynamicCastObjCClass();
  v57 = v240;
  v51 = v239;
  v39 = v245;
  v40 = v247;
  if (v135)
  {
    v136 = v135;
    swift_unknownObjectRetain();
    v62 = [v136 packageIdentifier];
    if (!v62)
    {
      sub_20DD64EB4();
      v62 = sub_20DD64E74();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0;
  }

LABEL_69:
  v95 = v243;
  v96 = v244;
  v97 = v242;
  (*(v243 + 16))(v244, v241, v242);
  v98 = (*(v95 + 88))(v96, v97);
  if (v98 == *MEMORY[0x277D17758])
  {
    (*(v95 + 96))(v96, v97);
    v99 = v234;
    v100 = v233;
    v101 = v236;
    (*(v234 + 32))(v233, v96, v236);
    v60 = @"HFCAPackageIconIdentifierContactSensor";
    v102 = v238;
    sub_20DD64724();
    v103 = v235;
    v104 = v237;
    v105 = (*(v235 + 88))(v102, v237);
    if (v105 == *MEMORY[0x277D17730])
    {
      goto LABEL_71;
    }

    if (v105 == *MEMORY[0x277D17720])
    {
      v106 = &HFCAPackageStateOn;
      goto LABEL_77;
    }

    if (v105 == *MEMORY[0x277D17728])
    {
LABEL_71:
      v106 = &HFCAPackageStateOff;
LABEL_77:
      v114 = *(v99 + 8);
      v115 = *v106;
      v116 = v100;
      goto LABEL_147;
    }

    v125 = *(v99 + 8);
    v115 = HFCAPackageStateOff;
    v125(v100, v101);
    (*(v103 + 8))(v238, v104);
    goto LABEL_102;
  }

  if (v98 == *MEMORY[0x277D17788])
  {
    v107 = v244;
    (*(v243 + 96))(v244, v242);
    v108 = v227;
    v101 = v229;
    (*(v227 + 32))(v232, v107, v229);
    v60 = @"HFCAPackageIconIdentifierDoor";
    v109 = v231;
    sub_20DD64954();
    v110 = v228;
    v111 = v230;
    v112 = (*(v228 + 88))(v109, v230);
    if (v112 == *MEMORY[0x277D178E0])
    {
      goto LABEL_74;
    }

    if (v112 == *MEMORY[0x277D178C0])
    {
      v113 = &HFCAPackageStateOn;
      goto LABEL_83;
    }

    if (v112 == *MEMORY[0x277D178C8] || v112 == *MEMORY[0x277D178D8] || v112 == *MEMORY[0x277D178D0])
    {
LABEL_74:
      v113 = &HFCAPackageStateOff;
LABEL_83:
      v114 = *(v108 + 8);
      v115 = *v113;
      v124 = v262;
LABEL_146:
      v116 = *(v124 - 32);
LABEL_147:
      v114(v116, v101);
      if (v62)
      {
        goto LABEL_148;
      }

LABEL_103:
      v138 = v115;
      v139 = v60;
LABEL_149:
      v161 = [objc_allocWithZone(*(v61 + 1648)) initWithPackageIdentifier:v139 state:v115];
      swift_unknownObjectRelease();

      return v161;
    }

    v137 = *(v108 + 8);
    v115 = HFCAPackageStateOff;
    v137(v232, v101);
    (*(v110 + 8))(v231, v111);
LABEL_102:
    if (!v62)
    {
      goto LABEL_103;
    }

    goto LABEL_148;
  }

  if (v98 == *MEMORY[0x277D17750])
  {
    v117 = v244;
    (*(v243 + 96))(v244, v242);
    v118 = v220;
    v101 = v222;
    (*(v220 + 32))(v226, v117, v222);
    v60 = @"HFCAPackageIconIdentifierGarageDoor";
    v119 = v224;
    sub_20DD646B4();
    v120 = v221;
    v121 = v223;
    v122 = (*(v221 + 88))(v119, v223);
    if (v122 == *MEMORY[0x277D176E8])
    {
LABEL_80:
      v123 = &HFCAPackageStateOff;
LABEL_97:
      v114 = *(v118 + 8);
      v115 = *v123;
      v124 = &v255;
      goto LABEL_146;
    }

    if (v122 != *MEMORY[0x277D176C0])
    {
      if (v122 == *MEMORY[0x277D176C8])
      {
        goto LABEL_80;
      }

      if (v122 != *MEMORY[0x277D176D8] && v122 != *MEMORY[0x277D176D0] && v122 != *MEMORY[0x277D176E0] && v122 != *MEMORY[0x277D176B8])
      {
        v147 = *(v118 + 8);
        v115 = HFCAPackageStateOff;
        v147(v226, v101);
        (*(v120 + 8))(v224, v121);
        goto LABEL_102;
      }
    }

    v123 = &HFCAPackageStateOn;
    goto LABEL_97;
  }

  if (v98 == *MEMORY[0x277D17790])
  {
    v126 = v244;
    (*(v243 + 96))(v244, v242);
    v127 = v213;
    v101 = v215;
    (*(v213 + 32))(v219, v126, v215);
    v60 = @"HFCAPackageIconIdentifierDoorLock";
    v128 = v218;
    sub_20DD64984();
    v129 = v214;
    v130 = v216;
    v131 = (*(v214 + 88))(v128, v216);
    if (v131 == *MEMORY[0x277D17928])
    {
LABEL_88:
      v132 = &HFCAPackageStateOff;
LABEL_113:
      v114 = *(v127 + 8);
      v115 = *v132;
      v124 = v249;
      goto LABEL_146;
    }

    if (v131 != *MEMORY[0x277D17930])
    {
      if (v131 == *MEMORY[0x277D17918])
      {
        goto LABEL_88;
      }

      if (v131 != *MEMORY[0x277D17938] && v131 != *MEMORY[0x277D17920] && v131 != *MEMORY[0x277D17910])
      {
        v155 = *(v127 + 8);
        v115 = HFCAPackageStateOff;
        v155(v219, v101);
        (*(v129 + 8))(v218, v130);
        goto LABEL_102;
      }
    }

    v132 = &HFCAPackageStateOn;
    goto LABEL_113;
  }

  if (v98 == *MEMORY[0x277D17768])
  {
    v140 = v244;
    (*(v243 + 96))(v244, v242);
    v141 = v207;
    v101 = v209;
    (*(v207 + 32))(v217, v140, v209);
    v60 = @"HFCAPackageIconIdentifierSecuritySystem";
    v142 = v212;
    sub_20DD647A4();
    v143 = v208;
    v144 = v211;
    v145 = (*(v208 + 88))(v142, v211);
    if (v145 != *MEMORY[0x277D177C0] && v145 != *MEMORY[0x277D177D0])
    {
      if (v145 == *MEMORY[0x277D177B8])
      {
LABEL_108:
        v146 = &HFCAPackageStateOn;
LABEL_145:
        v114 = *(v141 + 8);
        v115 = *v146;
        v124 = &v248;
        goto LABEL_146;
      }

      if (v145 != *MEMORY[0x277D177E0])
      {
        if (v145 != *MEMORY[0x277D177C8] && v145 != *MEMORY[0x277D177D8] && v145 != *MEMORY[0x277D177B0] && v145 != *MEMORY[0x277D177E8])
        {
          v175 = *(v141 + 8);
          v115 = HFCAPackageStateOff;
          v175(v217, v101);
          (*(v143 + 8))(v212, v144);
          goto LABEL_102;
        }

        goto LABEL_108;
      }
    }

    v146 = &HFCAPackageStateOff;
    goto LABEL_145;
  }

  if (v98 == *MEMORY[0x277D17760])
  {
    v148 = v244;
    (*(v243 + 96))(v244, v242);
    v40 = v202;
    v46 = v203;
    (*(v202 + 32))(v210, v148, v203);
    v60 = @"HFCAPackageIconIdentifierSmokeSensor";
    v149 = v206;
    sub_20DD64754();
    v150 = v204;
    v151 = v205;
    v152 = (*(v204 + 88))(v149, v205);
    if (v152 == *MEMORY[0x277D17740] || v152 == *MEMORY[0x277D17738])
    {
LABEL_138:
      v154 = HFCAPackageStateOff;
      v153 = *(v40 + 8);
    }

    else
    {
      v153 = *(v40 + 8);
      if (v152 != *MEMORY[0x277D17748])
      {
        v115 = HFCAPackageStateOff;
        v153(v210, v46);
        (*(v150 + 8))(v206, v151);
        if (v62)
        {
          goto LABEL_148;
        }

        goto LABEL_103;
      }

      v154 = HFCAPackageStateOn;
    }

    v115 = v154;
    v153(v210, v46);
    if (!v62)
    {
      goto LABEL_103;
    }

LABEL_148:
    v164 = v115;
    v62 = v62;

    v139 = v62;
    goto LABEL_149;
  }

  if (v98 != *MEMORY[0x277D17770])
  {
    if (v98 == *MEMORY[0x277D17778])
    {
      v162 = objc_allocWithZone(HFImageIconDescriptor);
      v163 = sub_20DD64E74();
      v161 = [v162 initWithSystemImageNamed_];
      swift_unknownObjectRelease();

      (*(v243 + 8))(v244, v242);
      return v161;
    }

    v170 = v244;
    v171 = v243;
    v172 = v242;
    if (v98 == *MEMORY[0x277D17780])
    {
      v173 = objc_allocWithZone(HFImageIconDescriptor);
      v174 = sub_20DD64E74();
      v161 = [v173 initWithSystemImageNamed_];
      swift_unknownObjectRelease();

      goto LABEL_158;
    }

    if (v98 != *MEMORY[0x277D17798])
    {
      v183 = HFEvent.accessory.getter();
      if (v183)
      {
        v184 = v183;
        v185 = [objc_opt_self() iconDescriptorForAccessory_];

        swift_unknownObjectRelease();
        (*(v171 + 8))(v170, v172);
        return v185;
      }

      v161 = [objc_allocWithZone(HFImageIconDescriptor) initWithImageIdentifier_];
      swift_unknownObjectRelease();
LABEL_158:

      (*(v171 + 8))(v170, v172);
      return v161;
    }

    (*(v243 + 96))(v244, v242);
    v176 = v192;
    v101 = v194;
    (*(v192 + 32))(v197, v170, v194);
    v60 = @"HFCAPackageIconIdentifierWindowVertical";
    v177 = v196;
    sub_20DD64644();
    v178 = v193;
    v179 = v195;
    v180 = (*(v193 + 88))(v177, v195);
    if (v180 != *MEMORY[0x277D175F8])
    {
      if (v180 == *MEMORY[0x277D175D8])
      {
        v181 = &HFCAPackageStateOn;
        goto LABEL_180;
      }

      if (v180 != *MEMORY[0x277D175E0] && v180 != *MEMORY[0x277D175F0] && v180 != *MEMORY[0x277D175E8])
      {
        v190 = *(v176 + 8);
        v115 = HFCAPackageStateOff;
        v190(v197, v101);
        (*(v178 + 8))(v196, v179);
        goto LABEL_102;
      }
    }

    v181 = &HFCAPackageStateOff;
LABEL_180:
    v114 = *(v176 + 8);
    v115 = *v181;
    v124 = &v229;
    goto LABEL_146;
  }

  v156 = v244;
  (*(v243 + 96))(v244, v242);
  v157 = v40;
  (*(v40 + 32))(v46, v156, v39);
  v158 = v198;
  sub_20DD648A4();
  sub_20DD64884();
  (*(v199 + 8))(v158, v200);
  v44 = v201;
  LODWORD(isUniquelyReferenced_nonNull_native) = (*(v57 + 88))(v51, v201);
  if (isUniquelyReferenced_nonNull_native == *MEMORY[0x277D17898])
  {
    goto LABEL_133;
  }

LABEL_154:
  if (isUniquelyReferenced_nonNull_native != *MEMORY[0x277D17848])
  {
    goto LABEL_168;
  }

  v166 = v57;
  v167 = v44;
  v168 = objc_allocWithZone(HFImageIconDescriptor);
  v169 = sub_20DD64E74();
LABEL_175:
  v182 = v169;
  v161 = [v168 initWithSystemImageNamed_];
  swift_unknownObjectRelease();

  (*(v40 + 8))(v46, v39);
  (*(v166 + 8))(v51, v167);
  return v161;
}