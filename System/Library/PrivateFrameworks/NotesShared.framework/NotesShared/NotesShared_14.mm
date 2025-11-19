uint64_t ICTTTextEditFilter.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = type metadata accessor for ICTTTextEditFilter.Model();
  v11 = *(v10 + 32);
  v12 = sub_2150A3960();
  v13 = *(*(v12 - 8) + 56);
  v13(a2 + v11, 1, 1, v12);
  v28 = *(v10 + 36);
  v13(a2 + v28, 1, 1, v12);
  v14 = [a1 allowedUserIDs];
  if (v14)
  {
    v15 = v14;
    v16 = sub_2150A52E0();
  }

  else
  {
    v16 = 0;
  }

  *a2 = v16;
  v17 = [a1 allowedAttachmentIDs];
  if (v17)
  {
    v18 = v17;
    v19 = sub_2150A52E0();
  }

  else
  {
    v19 = 0;
  }

  *(a2 + 8) = v19;
  *(a2 + 16) = [a1 allowsMissingTimestamps];
  *(a2 + 17) = [a1 allowsMissingUsers];
  v20 = [a1 fromDate];
  if (v20)
  {
    v21 = v20;
    sub_2150A3930();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = 1;
  v13(v9, v22, 1, v12);
  sub_214FCD4B8(v9, a2 + v11);
  v24 = [a1 toDate];
  if (v24)
  {
    v25 = v24;
    sub_2150A3930();

    v23 = 0;
    a1 = v25;
  }

  v13(v7, v23, 1, v12);
  return sub_214FCD4B8(v7, a2 + v28);
}

{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v33 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA433E0);
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v31 - v9;
  v11 = type metadata accessor for ICTTTextEditFilter.Model();
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 40);
  v16 = sub_2150A3960();
  v17 = *(*(v16 - 8) + 56);
  v40 = v15;
  v17(&v14[v15], 1, 1, v16);
  v39 = *(v12 + 44);
  v37 = v14;
  v17(&v14[v39], 1, 1, v16);
  v18 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_214FCD528();
  v19 = v36;
  sub_2150A6590();
  if (v19)
  {
    v21 = v40;
    v22 = v37;
    __swift_destroy_boxed_opaque_existential_0(v38);

    sub_214F5D43C(v22 + v21);
    return sub_214F5D43C(v22 + v39);
  }

  else
  {
    v36 = v7;
    v20 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA433D0);
    v41 = 0;
    sub_214FCD57C(&qword_27CA433E8);
    sub_2150A5F60();
    v23 = v37;
    *v37 = v42;
    v41 = 1;
    sub_2150A5F60();
    *(v23 + 8) = v42;
    LOBYTE(v42) = 2;
    v24 = sub_2150A5F90();
    v25 = v40;
    *(v23 + 16) = v24 & 1;
    LOBYTE(v42) = 3;
    *(v23 + 17) = sub_2150A5F90() & 1;
    LOBYTE(v42) = 4;
    v26 = sub_214FCD5E8(&qword_27CA424D0);
    v27 = v36;
    v31[1] = v26;
    sub_2150A5F60();
    sub_214FCD4B8(v27, v23 + v25);
    LOBYTE(v42) = 5;
    v28 = v20;
    v29 = v35;
    sub_2150A5F60();
    (*(v34 + 8))(v10, v29);
    sub_214FCD4B8(v28, v23 + v39);
    sub_214FCD62C(v23, v32, type metadata accessor for ICTTTextEditFilter.Model);
    __swift_destroy_boxed_opaque_existential_0(v38);
    return sub_214FCD694(v23, type metadata accessor for ICTTTextEditFilter.Model);
  }
}

id ICTTTextEditFilter.Model.filter.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v28 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v28 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v14 = *v0;
  v13 = v0[1];
  v15 = *(v0 + 16);
  v16 = *(v0 + 17);
  v17 = type metadata accessor for ICTTTextEditFilter.Model();
  sub_214F5D4A4(v0 + *(v17 + 32), v12);
  sub_214F5D4A4(v0 + *(v17 + 36), v10);
  v18 = [objc_allocWithZone(ICTTTextEditFilter) init];
  v19 = v18;
  if (v14)
  {
    v20 = sub_2150A52D0();
  }

  else
  {
    v20 = 0;
  }

  [v18 setAllowedUserIDs_];

  if (v13)
  {
    v21 = sub_2150A52D0();
  }

  else
  {
    v21 = 0;
  }

  [v18 setAllowedAttachmentIDs_];

  [v18 setAllowsMissingTimestamps_];
  [v18 setAllowsMissingUsers_];
  sub_214F5D4A4(v12, v7);
  v22 = sub_2150A3960();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  v25 = 0;
  if (v24(v7, 1, v22) != 1)
  {
    v25 = sub_2150A38F0();
    (*(v23 + 8))(v7, v22);
  }

  [v18 setFromDate_];

  sub_214F5D4A4(v10, v4);
  if (v24(v4, 1, v22) == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_2150A38F0();
    (*(v23 + 8))(v4, v22);
  }

  [v18 setToDate_];

  sub_214F5D43C(v10);
  sub_214F5D43C(v12);
  return v18;
}

unint64_t sub_214FCCAE4()
{
  v1 = *v0;
  v2 = 0x556465776F6C6C61;
  v3 = 0x657461446D6F7266;
  if (v1 != 4)
  {
    v3 = 0x657461446F74;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0xD000000000000017;
  if (v1 == 1)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_214FCCBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214FCD928(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214FCCBD8(uint64_t a1)
{
  v2 = sub_214FCD528();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214FCCC14(uint64_t a1)
{
  v2 = sub_214FCD528();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ICTTTextEditFilter.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA433C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214FCD528();
  sub_2150A65B0();
  v12 = *v3;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA433D0);
  sub_214FCD57C(&qword_27CA433D8);
  sub_2150A6050();
  if (!v2)
  {
    v12 = v3[1];
    v11 = 1;
    sub_2150A6050();
    LOBYTE(v12) = 2;
    sub_2150A6070();
    LOBYTE(v12) = 3;
    sub_2150A6070();
    type metadata accessor for ICTTTextEditFilter.Model();
    LOBYTE(v12) = 4;
    sub_2150A3960();
    sub_214FCD5E8(&qword_27CA424A0);
    sub_2150A6050();
    LOBYTE(v12) = 5;
    sub_2150A6050();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t type metadata accessor for ICTTTextEditFilter.Model()
{
  result = qword_27CA433F0;
  if (!qword_27CA433F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214FCD4B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_214FCD528()
{
  result = qword_27CA433C8;
  if (!qword_27CA433C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA433C8);
  }

  return result;
}

uint64_t sub_214FCD57C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA433D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214FCD5E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2150A3960();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214FCD62C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214FCD694(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_214FCD71C()
{
  sub_214FCD7AC();
  if (v0 <= 0x3F)
  {
    sub_214F938E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_214FCD7AC()
{
  if (!qword_27CA43400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA433D0);
    v0 = sub_2150A57E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA43400);
    }
  }
}

unint64_t sub_214FCD824()
{
  result = qword_27CA43408;
  if (!qword_27CA43408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43408);
  }

  return result;
}

unint64_t sub_214FCD87C()
{
  result = qword_27CA43410;
  if (!qword_27CA43410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43410);
  }

  return result;
}

unint64_t sub_214FCD8D4()
{
  result = qword_27CA43418;
  if (!qword_27CA43418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43418);
  }

  return result;
}

uint64_t sub_214FCD928(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x556465776F6C6C61 && a2 == 0xEE00734449726573;
  if (v4 || (sub_2150A6270() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002150E6120 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002150E6140 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002150E6160 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657461446D6F7266 && a2 == 0xE800000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657461446F74 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_2150A6270();

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

uint64_t static ActivityEventObject.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *a1 == 0;
  if (*a1)
  {
    v7 = 1702129518;
  }

  else
  {
    v7 = 0x7265646C6F66;
  }

  if (v6)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = 1702129518;
  }

  else
  {
    v9 = 0x7265646C6F66;
  }

  if (*a2)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {

    if (v2 != v4)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = sub_2150A6270();

    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }

    if (v2 != v4)
    {
      goto LABEL_24;
    }
  }

  if (v3 == v5)
  {
    return 1;
  }

LABEL_24:

  return sub_2150A6270();
}

NotesShared::ActivityEventObject_optional __swiftcall ActivityEventObject.init(cloudSyncingObject:)(ICCloudSyncingObject *cloudSyncingObject)
{
  v3 = v1;
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      if (qword_27CA41670 != -1)
      {
        swift_once();
      }

      v27 = sub_2150A3F30();
      __swift_project_value_buffer(v27, qword_27CA43420);
      v20 = cloudSyncingObject;
      v21 = sub_2150A3F10();
      v22 = sub_2150A5550();

      if (os_log_type_enabled(&v21->super.super, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        v28 = [(ICCloudSyncingObject *)v20 objectID];
        *(v23 + 4) = v28;
        *v24 = v28;
        v26 = "Object type is not supported — returning nil {objectID: %@}";
        goto LABEL_17;
      }

LABEL_18:
      cloudSyncingObject = v21;
      goto LABEL_19;
    }
  }

  v9 = [(ICCloudSyncingObject *)cloudSyncingObject identifier];
  if (!v9)
  {
LABEL_9:
    if (qword_27CA41670 != -1)
    {
      swift_once();
    }

    v19 = sub_2150A3F30();
    __swift_project_value_buffer(v19, qword_27CA43420);
    v20 = cloudSyncingObject;
    v21 = sub_2150A3F10();
    v22 = sub_2150A5550();

    if (os_log_type_enabled(&v21->super.super, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = [(ICCloudSyncingObject *)v20 objectID];
      *(v23 + 4) = v25;
      *v24 = v25;
      v26 = "Object must have an identifier — returning nil {objectID: %@}";
LABEL_17:
      _os_log_impl(&dword_214D51000, &v21->super.super, v22, v26, v23, 0xCu);
      sub_214FA9D98(v24);
      MEMORY[0x216064AF0](v24, -1, -1);
      MEMORY[0x216064AF0](v23, -1, -1);
      v20 = v21;
LABEL_19:

      *v3 = 0;
      v3[1] = 0;
      v3[2] = 0;
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v10 = v9;
  v11 = sub_2150A4AD0();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    goto LABEL_9;
  }

  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  sub_2150A3990();

  (*(v5 + 8))(v7, v4);

  *v3 = v8 == 0;
  v3[1] = v11;
  v3[2] = v13;
LABEL_20:
  result.value.recordName._object = v17;
  result.value.recordName._countAndFlagsBits = v16;
  result.is_nil = v18;
  result.value.type = v15;
  return result;
}

uint64_t sub_214FCDFD8()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA43420);
  v1 = __swift_project_value_buffer(v0, qword_27CA43420);
  if (qword_280C24278 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C24280);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

NotesShared::ActivityEventObject::Types_optional __swiftcall ActivityEventObject.Types.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2150A5EE0();

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

  *v2 = v5;
  return result;
}

uint64_t ActivityEventObject.Types.rawValue.getter()
{
  if (*v0)
  {
    return 1702129518;
  }

  else
  {
    return 0x7265646C6F66;
  }
}

uint64_t sub_214FCE134(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1702129518;
  }

  else
  {
    v3 = 0x7265646C6F66;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1702129518;
  }

  else
  {
    v5 = 0x7265646C6F66;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2150A6270();
  }

  return v8 & 1;
}

uint64_t sub_214FCE1D0()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214FCE248()
{
  sub_2150A4BB0();
}

uint64_t sub_214FCE2AC()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214FCE320@<X0>(char *a1@<X8>)
{
  v2 = sub_2150A5EE0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_214FCE380(uint64_t *a1@<X8>)
{
  v2 = 1702129518;
  if (!*v1)
  {
    v2 = 0x7265646C6F66;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ActivityEventObject.recordName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ActivityEventObject.recordName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

NotesShared::ActivityEventObject __swiftcall ActivityEventObject.init(type:recordName:)(NotesShared::ActivityEventObject::Types type, Swift::String recordName)
{
  object = recordName._object;
  countAndFlagsBits = recordName._countAndFlagsBits;
  v5 = type;
  v6 = v2;
  v7 = sub_2150A3A00();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v5;
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  sub_2150A3990();
  (*(v8 + 8))(v10, v7);

  *v6 = v11;
  *(v6 + 8) = countAndFlagsBits;
  *(v6 + 16) = object;
  result.recordName._object = v14;
  result.recordName._countAndFlagsBits = v13;
  result.type = v12;
  return result;
}

uint64_t sub_214FCE624()
{
  if (*v0)
  {
    return 0x614E64726F636572;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_214FCE65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2150A6270() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x614E64726F636572 && a2 == 0xEA0000000000656DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2150A6270();

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

uint64_t sub_214FCE740(uint64_t a1)
{
  v2 = sub_214FCF080();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214FCE77C(uint64_t a1)
{
  v2 = sub_214FCF080();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityEventObject.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43438);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214FCF080();
  sub_2150A65B0();
  v14 = v8;
  v13 = 0;
  sub_214FCF0D4();
  sub_2150A60A0();
  if (!v2)
  {
    v12 = 1;
    sub_2150A6060();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ActivityEventObject.hash(into:)()
{
  sub_2150A4BB0();

  return sub_2150A4BB0();
}

uint64_t ActivityEventObject.hashValue.getter()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t ActivityEventObject.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43450);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v8 = sub_2150A3A00();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  sub_2150A3990();
  (*(v9 + 8))(v11, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214FCF080();
  sub_2150A6590();
  if (!v2)
  {
    v12 = v18;
    v21 = 0;
    sub_214FCF128();
    sub_2150A5FC0();
    v19 = v22;
    v20 = 1;
    v14 = sub_2150A5F80();
    v16 = v15;
    (*(v5 + 8))(v7, v4);

    *v12 = v19;
    *(v12 + 8) = v14;
    *(v12 + 16) = v16;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_214FCED38()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t sub_214FCEDCC()
{
  sub_2150A4BB0();

  return sub_2150A4BB0();
}

uint64_t sub_214FCEE50()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t sub_214FCEEE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *a1 == 0;
  if (*a1)
  {
    v7 = 1702129518;
  }

  else
  {
    v7 = 0x7265646C6F66;
  }

  if (v6)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = 1702129518;
  }

  else
  {
    v9 = 0x7265646C6F66;
  }

  if (*a2)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {

    if (v2 != v4)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = sub_2150A6270();

    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }

    if (v2 != v4)
    {
      goto LABEL_24;
    }
  }

  if (v3 == v5)
  {
    return 1;
  }

LABEL_24:

  return sub_2150A6270();
}

NotesShared::ActivityEventObject::Types_optional __swiftcall ActivityEventObject.Types.init(cloudSyncingObject:)(ICCloudSyncingObject *cloudSyncingObject)
{
  v3 = v1;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
  }

  else
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();

    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  *v3 = v5;
  return result;
}

unint64_t sub_214FCF080()
{
  result = qword_27CA43440;
  if (!qword_27CA43440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43440);
  }

  return result;
}

unint64_t sub_214FCF0D4()
{
  result = qword_27CA43448;
  if (!qword_27CA43448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43448);
  }

  return result;
}

unint64_t sub_214FCF128()
{
  result = qword_27CA43458;
  if (!qword_27CA43458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43458);
  }

  return result;
}

unint64_t sub_214FCF180()
{
  result = qword_27CA43460;
  if (!qword_27CA43460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43460);
  }

  return result;
}

unint64_t sub_214FCF1D8()
{
  result = qword_280C23B88[0];
  if (!qword_280C23B88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C23B88);
  }

  return result;
}

unint64_t sub_214FCF260()
{
  result = qword_27CA43468;
  if (!qword_27CA43468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43468);
  }

  return result;
}

unint64_t sub_214FCF2B8()
{
  result = qword_27CA43470;
  if (!qword_27CA43470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43470);
  }

  return result;
}

unint64_t sub_214FCF310()
{
  result = qword_27CA43478;
  if (!qword_27CA43478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43478);
  }

  return result;
}

unint64_t sub_214FCF364()
{
  result = qword_27CA43480;
  if (!qword_27CA43480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43480);
  }

  return result;
}

uint64_t RetryingLazy.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
  result = type metadata accessor for RetryingLazy();
  v8 = (a4 + *(result + 28));
  *v8 = a1;
  v8[1] = a2;
  return result;
}

uint64_t RetryingLazy.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v19 = a2;
  v5 = *(a1 + 16);
  v6 = sub_2150A57E0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v13 = *(v7 + 16);
  v13(&v18 - v11, v3, v6);
  v14 = *(v5 - 8);
  if ((*(v14 + 48))(v12, 1, v5) == 1)
  {
    v15 = (*(v7 + 8))(v12, v6);
    (*(v3 + *(a1 + 28)))(v15);
    (*(v7 + 40))(v3, v10, v6);
    return (v13)(v19, v3, v6);
  }

  else
  {
    v17 = v19;
    (*(v14 + 32))(v19, v12, v5);
    return (*(v14 + 56))(v17, 0, 1, v5);
  }
}

unint64_t sub_214FCF670()
{
  result = sub_2150A57E0();
  if (v1 <= 0x3F)
  {
    result = sub_214F590B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_214FCF6F8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1, v5);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void sub_214FCF868(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  if (!v6)
  {
    ++v9;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v8)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      v17 = a1;
      bzero(a1, v10);
      a1 = v17;
      *v17 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v10) = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v14)
  {
    goto LABEL_39;
  }

  *(a1 + v10) = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v7 < 0x7FFFFFFF)
  {
    v22 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v22 = a2 & 0x7FFFFFFF;
      v22[1] = 0;
    }

    else
    {
      *v22 = a2 - 1;
    }
  }

  else if (v7 >= a2)
  {
    v23 = *(v5 + 56);

    v23();
  }

  else
  {
    if (v9 <= 3)
    {
      v18 = ~(-1 << (8 * v9));
    }

    else
    {
      v18 = -1;
    }

    if (v9)
    {
      v19 = v18 & (~v7 + a2);
      if (v9 <= 3)
      {
        v20 = v9;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v9);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

void AccountID.Authority.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if ([a1 isLocalAccount])
  {
    swift_unknownObjectRelease();
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = [a1 emailAddress];
    if (v6)
    {
      v7 = v6;
      v4 = sub_2150A4AD0();
      v5 = v8;
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v4 = 0;
      v5 = 0xE000000000000000;
    }
  }

  *a2 = v4;
  a2[1] = v5;
}

{
  if ([a1 isLocalAccount])
  {

    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = [a1 userRecordName];
    v4 = sub_2150A4AD0();
    v5 = v7;
  }

  *a2 = v4;
  a2[1] = v5;
}

__n128 AccountID.init(authority:contextType:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 *a2@<X1>, __n128 *a3@<X8>)
{
  v3 = *a2;
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = v3;
  return result;
}

uint64_t AccountID.Authority.init(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if ([a1 isLocalAccount])
  {
    result = swift_unknownObjectRelease();
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = [objc_opt_self() emailAddressForAccount_];
    v5 = sub_2150A4AD0();
    v6 = v8;

    result = swift_unknownObjectRelease();
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t AccountID.authority.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t AccountID.authority.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t AccountID.hash(into:)()
{
  if (*(v0 + 8))
  {
    MEMORY[0x216063080](1);
    sub_2150A4BB0();
  }

  else
  {
    MEMORY[0x216063080](0);
  }

  sub_2150A4BB0();
}

uint64_t AccountID.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_2150A64B0();
  if (v1)
  {
    MEMORY[0x216063080](1);
    sub_2150A4BB0();
  }

  else
  {
    MEMORY[0x216063080](0);
  }

  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214FCFE48()
{
  if (*(v0 + 8))
  {
    MEMORY[0x216063080](1);
    sub_2150A4BB0();
  }

  else
  {
    MEMORY[0x216063080](0);
  }

  sub_2150A4BB0();
}

uint64_t sub_214FCFEFC()
{
  v1 = *(v0 + 8);
  sub_2150A64B0();
  if (v1)
  {
    MEMORY[0x216063080](1);
    sub_2150A4BB0();
  }

  else
  {
    MEMORY[0x216063080](0);
  }

  sub_2150A4BB0();

  return sub_2150A64E0();
}

unint64_t AccountID.debugDescription.getter()
{

  sub_2150A5B20();

  v0 = sub_2150A4B50();
  MEMORY[0x2160617E0](v0);

  MEMORY[0x2160617E0](0x7865746E6F63202CLL, 0xEF203A6570795474);
  v1 = sub_2150A4B50();
  MEMORY[0x2160617E0](v1);

  return 0xD000000000000015;
}

uint64_t static AccountID.entityIdentifier(for:)@<X0>(uint64_t *a1@<X8>)
{
  v123 = a1;
  v1 = sub_2150A3050();
  v109 = *(v1 - 8);
  v110 = v1;
  MEMORY[0x28223BE20](v1);
  v108 = &v97 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_2150A3120();
  v111 = *(v105 - 8);
  v3 = MEMORY[0x28223BE20](v105);
  v113 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v104 = &v97 - v5;
  v117 = sub_2150A42C0();
  v122 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v116 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_2150A4340();
  v115 = *(v112 - 8);
  v7 = MEMORY[0x28223BE20](v112);
  v106 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v97 - v9;
  v11 = sub_2150A42D0();
  v114 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA41F78);
  MEMORY[0x28223BE20](v14);
  v118 = &v97 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D48);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v97 - v17;
  v19 = sub_2150A4360();
  v120 = *(v19 - 8);
  v121 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v119 = &v97 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA420B0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v97 - v25;
  v27 = sub_2150A3240();
  v28 = MEMORY[0x28223BE20](v27);
  v107 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v97 - v30;
  v33 = v32;
  v35 = v34;
  sub_2150A3210();
  if ((*(v35 + 48))(v26, 1, v33) == 1)
  {
    result = sub_214F302D4(v26, &qword_27CA420B0);
LABEL_10:
    v49 = 0;
    v50 = 0;
    v51 = 1;
    goto LABEL_11;
  }

  (*(v35 + 32))(v31, v26, v33);
  sub_2150A31F0();
  if (!v37)
  {
    result = (*(v35 + 8))(v31, v33);
    goto LABEL_10;
  }

  v103 = v31;
  v101 = v33;
  v102 = v35;
  v38 = sub_2150A4A90();
  v39 = ICIsNotesURLScheme(v38);

  if ((v39 & 1) == 0)
  {
    (*(v102 + 8))(v103, v101);

    goto LABEL_10;
  }

  v40 = sub_2150A3190();
  v41 = v119;
  MEMORY[0x216060F30](v40);
  v42 = sub_2150A42E0();
  (*(*(v42 - 8) + 56))(v18, 1, 1, v42);
  sub_2150A4300();
  (*(v120 + 16))(v22, v41, v121);
  sub_2150A42B0();
  v43 = v114;
  v44 = v118;
  (*(v114 + 16))(v118, v13, v11);
  sub_214F5E6FC(&qword_280C24258, MEMORY[0x277D854A8]);
  sub_2150A53D0();
  (*(v43 + 8))(v13, v11);
  v45 = v116;
  sub_2150A5400();
  v46 = sub_214F5E6FC(&unk_280C24268, MEMORY[0x277D85498]);
  v47 = v117;
  v114 = v46;
  LOBYTE(v41) = sub_2150A4A80();
  v48 = v122 + 8;
  v100 = *(v122 + 8);
  v100(v45, v47);
  if (v41)
  {
LABEL_6:

    sub_214F302D4(v44, qword_27CA41F78);
    (*(v120 + 8))(v119, v121);
    result = (*(v102 + 8))(v103, v101);
    goto LABEL_10;
  }

  v122 = v48;
  v53 = sub_2150A5470();
  v54 = v115;
  v55 = *(v115 + 16);
  v56 = v112;
  v99 = v115 + 16;
  v98 = v55;
  v55(v10);
  v53(&v126, 0);
  sub_2150A5410();
  v57 = sub_2150A4330();
  v59 = v58;
  v60 = *(v54 + 8);
  v115 = v54 + 8;
  v60(v10, v56);
  v61 = v60;
  if (v57 == 0x746E756F636361 && v59 == 0xE700000000000000)
  {

    v44 = v118;
  }

  else
  {
    v62 = sub_2150A6270();

    v44 = v118;
    if ((v62 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v63 = v103;
  v64 = sub_2150A3170();
  if (!v65)
  {

    v78 = v116;
    sub_2150A5400();
    v79 = v117;
    v80 = sub_2150A4A80();
    v100(v78, v79);
    if ((v80 & 1) == 0)
    {
      v88 = sub_2150A5470();
      v89 = v106;
      v90 = v112;
      v98(v106);
      v88(&v126, 0);
      sub_2150A5410();
      v49 = sub_2150A4330();
      v51 = v91;
      v61(v89, v90);
      sub_214F302D4(v44, qword_27CA41F78);
      (*(v120 + 8))(v119, v121);
      result = (*(v102 + 8))(v63, v101);
      v50 = 0;
      goto LABEL_11;
    }

    sub_214F302D4(v44, qword_27CA41F78);
    (*(v120 + 8))(v119, v121);
    result = (*(v102 + 8))(v63, v101);
    goto LABEL_10;
  }

  v66 = v65;
  v67 = v64;
  v126 = v64;
  v127 = v65;
  v124 = sub_2150A4AD0();
  v125 = v68;
  sub_214D6E6C4();
  v69 = sub_2150A58B0();

  if (!v69)
  {

    result = sub_2150A3150();
    if (result)
    {
      v81 = result;
      v82 = *(result + 16);
      v83 = v105;
      if (v82)
      {
        v84 = 0;
        v85 = (v111 + 8);
        while (1)
        {
          if (v84 >= *(v81 + 16))
          {
            __break(1u);
            goto LABEL_37;
          }

          (*(v111 + 16))(v113, v81 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v84, v83);
          if (sub_2150A3100() == 1701869940 && v86 == 0xE400000000000000)
          {
            break;
          }

          v87 = sub_2150A6270();

          if (v87)
          {
            goto LABEL_33;
          }

          ++v84;
          result = (*v85)(v113, v83);
          if (v82 == v84)
          {
            goto LABEL_30;
          }
        }

LABEL_33:

        v92 = v111 + 32;
        v93 = v104;
        (*(v111 + 32))(v104, v113, v83);
        sub_2150A3110();
        v95 = v94;
        (*(v92 - 24))(v93, v83);
        v44 = v118;
        v63 = v103;
        if (!v95)
        {
          goto LABEL_35;
        }

        v96 = sub_2150A5EE0();

        sub_214F302D4(v44, qword_27CA41F78);
        (*(v120 + 8))(v119, v121);
        result = (*(v102 + 8))(v63, v101);
        v49 = 0;
        v51 = 0;
        v50 = v96 == 1;
        goto LABEL_11;
      }

LABEL_30:

      v44 = v118;
      v63 = v103;
    }

LABEL_35:
    sub_214F302D4(v44, qword_27CA41F78);
    (*(v120 + 8))(v119, v121);
    result = (*(v102 + 8))(v63, v101);
    v49 = 0;
    v51 = 0;
    v50 = 0;
LABEL_11:
    v52 = v123;
    *v123 = v49;
    v52[1] = v51;
    *(v52 + 16) = v50;
    return result;
  }

  v70 = v107;
  sub_2150A3230();

  MEMORY[0x21605FD40](v67, v66);
  sub_2150A31B0();
  sub_2150A31C0();
  sub_2150A31D0();
  sub_2150A31E0();
  result = sub_2150A3220();
  if (v71)
  {
    v72 = result;
    v73 = v71;

    v126 = v72;
    v127 = v73;
    v74 = v108;
    sub_2150A3000();
    v49 = sub_2150A5880();
    v51 = v75;
    (*(v109 + 8))(v74, v110);

    v76 = *(v102 + 8);
    v77 = v101;
    v76(v70, v101);
    sub_214F302D4(v44, qword_27CA41F78);
    (*(v120 + 8))(v119, v121);
    result = (v76)(v63, v77);
    v50 = 1;
    goto LABEL_11;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t AccountID.Authority.description.getter()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = sub_2150A4AD0();
  }

  return v1;
}

unint64_t AccountID.Authority.debugDescription.getter()
{
  v1 = 0xD000000000000019;
  if (*(v0 + 8))
  {

    sub_2150A5B20();

    v2 = sub_2150A4B50();
    MEMORY[0x2160617E0](v2);

    return 0xD00000000000001BLL;
  }

  return v1;
}

uint64_t AccountID.Authority.hash(into:)()
{
  if (!*(v0 + 8))
  {
    return MEMORY[0x216063080](0);
  }

  MEMORY[0x216063080](1);

  return sub_2150A4BB0();
}

uint64_t AccountID.Authority.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_2150A64B0();
  if (v1)
  {
    MEMORY[0x216063080](1);
    sub_2150A4BB0();
  }

  else
  {
    MEMORY[0x216063080](0);
  }

  return sub_2150A64E0();
}

uint64_t sub_214FD125C()
{
  v1 = *(v0 + 8);
  sub_2150A64B0();
  if (v1)
  {
    MEMORY[0x216063080](1);
    sub_2150A4BB0();
  }

  else
  {
    MEMORY[0x216063080](0);
  }

  return sub_2150A64E0();
}

uint64_t sub_214FD12CC()
{
  if (!*(v0 + 8))
  {
    return MEMORY[0x216063080](0);
  }

  MEMORY[0x216063080](1);

  return sub_2150A4BB0();
}

uint64_t sub_214FD1344()
{
  v1 = *(v0 + 8);
  sub_2150A64B0();
  if (v1)
  {
    MEMORY[0x216063080](1);
    sub_2150A4BB0();
  }

  else
  {
    MEMORY[0x216063080](0);
  }

  return sub_2150A64E0();
}

uint64_t sub_214FD13B0()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = sub_2150A4AD0();
  }

  return v1;
}

uint64_t _s11NotesShared9AccountIDV9AuthorityO2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_2150A6270();
}

uint64_t _s11NotesShared9AccountIDV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v3)
  {
    if (!v5)
    {

      return 0;
    }

    v7 = *a1 == *a2 && v3 == v5;
    if (!v7 && (sub_2150A6270() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    if (v5)
    {
      return 0;
    }
  }

  if (v4)
  {
    v9 = 1819112552;
  }

  else
  {
    v9 = 0x6E7265646F6DLL;
  }

  if (v4)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6)
  {
    v11 = 1819112552;
  }

  else
  {
    v11 = 0x6E7265646F6DLL;
  }

  if (v6)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE600000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {

    return 1;
  }

  else
  {
    v14 = sub_2150A6270();

    return v14 & 1;
  }
}

unint64_t sub_214FD1624(void *a1)
{
  a1[1] = sub_214FD165C();
  a1[2] = sub_214FD16B0();
  result = sub_214FD1704();
  a1[3] = result;
  return result;
}

unint64_t sub_214FD165C()
{
  result = qword_27CA43488;
  if (!qword_27CA43488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43488);
  }

  return result;
}

unint64_t sub_214FD16B0()
{
  result = qword_27CA43490;
  if (!qword_27CA43490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43490);
  }

  return result;
}

unint64_t sub_214FD1704()
{
  result = qword_27CA43498;
  if (!qword_27CA43498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43498);
  }

  return result;
}

unint64_t sub_214FD175C()
{
  result = qword_27CA434A0;
  if (!qword_27CA434A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA434A0);
  }

  return result;
}

unint64_t sub_214FD17B4()
{
  result = qword_27CA434A8;
  if (!qword_27CA434A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA434A8);
  }

  return result;
}

uint64_t sub_214FD1808(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_214FD1864(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_214FD18B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_214FD1908(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_214FD195C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_214FD1974(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t static GroupSessionProvider<>.sharedGroupSessionProvider(for:share:container:)(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for EditNoteActivity();
  MEMORY[0x28223BE20](v6 - 8);
  sub_214FD1A98(a1, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA434B0);
  swift_allocObject();

  v8 = a2;
  v9 = a3;
  return sub_2150A3C40();
}

uint64_t sub_214FD1A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditNoteActivity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static GroupSessionProvider<>.personalGroupSessionProvider(for:)(uint64_t a1)
{
  v2 = type metadata accessor for EditNoteActivity();
  MEMORY[0x28223BE20](v2 - 8);
  sub_214FD1A98(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA434B8);
  swift_allocObject();

  return sub_2150A3C50();
}

NotesShared::NoteID __swiftcall NoteID.init(contextType:managedIdentifier:)(NotesShared::ManagedEntityContextType_optional contextType, Swift::String managedIdentifier)
{
  *v2 = *contextType.value;
  *(v2 + 8) = managedIdentifier;
  result.managedIdentifier = managedIdentifier;
  result.contextType = contextType;
  return result;
}

uint64_t NoteID.managedIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t NoteID.managedIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t NoteID.hash(into:)()
{
  if (*v0 == 2)
  {
    sub_2150A64D0();
  }

  else
  {
    sub_2150A64D0();
    sub_2150A4BB0();
  }

  return sub_2150A4BB0();
}

uint64_t NoteID.hashValue.getter()
{
  v1 = *v0;
  sub_2150A64B0();
  sub_2150A64D0();
  if (v1 != 2)
  {
    sub_2150A4BB0();
  }

  sub_2150A4BB0();
  return sub_2150A64E0();
}

unint64_t sub_214FD1E2C(uint64_t a1)
{
  *(a1 + 8) = sub_214FD1E5C();
  result = sub_214FD1EB0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214FD1E5C()
{
  result = qword_27CA434C0;
  if (!qword_27CA434C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA434C0);
  }

  return result;
}

unint64_t sub_214FD1EB0()
{
  result = qword_27CA434C8;
  if (!qword_27CA434C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA434C8);
  }

  return result;
}

unint64_t sub_214FD1F04(void *a1)
{
  a1[1] = sub_214FD1F3C();
  a1[2] = sub_214FD1F90();
  result = sub_214FD1FE4();
  a1[3] = result;
  return result;
}

unint64_t sub_214FD1F3C()
{
  result = qword_27CA434D0;
  if (!qword_27CA434D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA434D0);
  }

  return result;
}

unint64_t sub_214FD1F90()
{
  result = qword_27CA434D8;
  if (!qword_27CA434D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA434D8);
  }

  return result;
}

unint64_t sub_214FD1FE4()
{
  result = qword_27CA434E0;
  if (!qword_27CA434E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA434E0);
  }

  return result;
}

unint64_t sub_214FD203C()
{
  result = qword_280C233B8[0];
  if (!qword_280C233B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C233B8);
  }

  return result;
}

void *sub_214FD2090(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v31 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v30 = type metadata accessor for NoteEditActivityEvent(0);
  v25 = *(v30 - 8);
  v8 = MEMORY[0x28223BE20](v30);
  v29 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v24 = &v22 - v10;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2150A59D0())
  {
    v12 = 0;
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    v28 = a3 & 0xC000000000000001;
    v13 = (v25 + 48);
    v14 = MEMORY[0x277D84F90];
    v23 = a3;
    v26 = i;
    while (1)
    {
      if (v28)
      {
        v15 = MEMORY[0x216062780](v12, a3);
      }

      else
      {
        if (v12 >= *(v27 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(a3 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v32 = v15;
      v31(&v32);
      if (v3)
      {

        return v14;
      }

      if ((*v13)(v7, 1, v30) == 1)
      {
        sub_214F302D4(v7, &qword_27CA436D0);
      }

      else
      {
        v18 = v24;
        sub_214FE3258(v7, v24, type metadata accessor for NoteEditActivityEvent);
        sub_214FE3258(v18, v29, type metadata accessor for NoteEditActivityEvent);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_21505FBF0(0, v14[2] + 1, 1, v14);
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          v14 = sub_21505FBF0(v19 > 1, v20 + 1, 1, v14);
        }

        v14[2] = v20 + 1;
        sub_214FE3258(v29, v14 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20, type metadata accessor for NoteEditActivityEvent);
        a3 = v23;
      }

      ++v12;
      if (v17 == v26)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_214FD23D8(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_2150A3750();
  v10 = MEMORY[0x28223BE20](v9);
  v32 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v29 = &v25 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = *(v12 + 72);
  v26 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = a3 + v26;
  v30 = (v12 + 32);
  v31 = (v12 + 48);
  v17 = MEMORY[0x277D84F90];
  v27 = v9;
  v28 = a1;
  v25 = v15;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v31)(v8, 1, v9) == 1)
    {
      sub_214F302D4(v8, &qword_27CA41D40);
    }

    else
    {
      v18 = v29;
      v19 = *v30;
      (*v30)(v29, v8, v9);
      v19(v32, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_215060348(0, v17[2] + 1, 1, v17);
      }

      v21 = v17[2];
      v20 = v17[3];
      if (v21 >= v20 >> 1)
      {
        v17 = sub_215060348(v20 > 1, v21 + 1, 1, v17);
      }

      v17[2] = v21 + 1;
      v22 = v25;
      v23 = v17 + v26 + v21 * v25;
      v9 = v27;
      v19(v23, v32, v27);
      v15 = v22;
      a1 = v28;
    }

    v16 += v15;
    if (!--v14)
    {
      return v17;
    }
  }

  return v17;
}

uint64_t sub_214FD26AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_214F43C14(a3, v25 - v10, &qword_27CA41E50);
  v12 = sub_2150A5120();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_214F302D4(v11, &qword_27CA41E50);
  }

  else
  {
    sub_2150A5110();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2150A5010();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2150A4B60() + 32;
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

      sub_214F302D4(a3, &qword_27CA41E50);

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

  sub_214F302D4(a3, &qword_27CA41E50);
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

uint64_t sub_214FD29AC()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_280C242C0);
  v1 = __swift_project_value_buffer(v0, qword_280C242C0);
  if (qword_280C24298 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C242A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_214FD2A74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA435B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C25D0;
  v1 = *MEMORY[0x277CD9418];
  *(inited + 32) = *MEMORY[0x277CD9418];
  sub_214D55670(0, &qword_280C230E8);
  v2 = v1;
  *(inited + 40) = sub_2150A5760();
  v3 = sub_214FA5624(inited);
  swift_setDeallocating();
  result = sub_214F302D4(inited + 32, &qword_27CA435C0);
  qword_27CA434E8 = v3;
  return result;
}

uint64_t sub_214FD2B70()
{
  sub_2150A64B0();
  sub_2150A49B0();
  return sub_2150A64E0();
}

uint64_t sub_214FD2BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_214FE2C40();

  return MEMORY[0x28211C010](a1, a2, v4);
}

void *sub_214FD2C20@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_214FD2C38(uint64_t a1)
{
  v2 = sub_214FE2C40();

  return MEMORY[0x28211C020](a1, v2);
}

uint64_t sub_214FD2C74(uint64_t a1)
{
  v2 = sub_214FE2C40();

  return MEMORY[0x28211C018](a1, v2);
}

uint64_t sub_214FD2CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_214FE2C40();

  return MEMORY[0x28211C008](a1, a2, v4);
}

uint64_t SystemPaperSyncArchive.databaseArchive.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___ICSystemPaperSyncArchive_databaseArchive;
  v4 = sub_2150A3750();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id SystemPaperSyncArchive.__allocating_init(databaseArchive:assetArchives:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___ICSystemPaperSyncArchive_databaseArchive;
  v7 = sub_2150A3750();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  *&v5[OBJC_IVAR___ICSystemPaperSyncArchive_assetArchives] = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

id SystemPaperSyncArchive.init(databaseArchive:assetArchives:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___ICSystemPaperSyncArchive_databaseArchive;
  v6 = sub_2150A3750();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  *&v2[OBJC_IVAR___ICSystemPaperSyncArchive_assetArchives] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for SystemPaperSyncArchive();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  (*(v7 + 8))(a1, v6);
  return v8;
}

uint64_t type metadata accessor for SystemPaperSyncArchive()
{
  result = qword_280C23848;
  if (!qword_280C23848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214FD32EC()
{
  sub_2150A5B20();

  v1 = sub_2150A3750();
  sub_214FE300C(&qword_280C24468, 255, MEMORY[0x277CC9260]);
  v2 = sub_2150A6100();
  MEMORY[0x2160617E0](v2);

  MEMORY[0x2160617E0](0x3A7374657373410ALL, 0xE900000000000020);
  v3 = MEMORY[0x216061AA0](*(v0 + OBJC_IVAR___ICSystemPaperSyncArchive_assetArchives), v1);
  MEMORY[0x2160617E0](v3);

  return 0x6573616261746144;
}

id SystemPaperSyncArchive.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemPaperSyncArchive();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *static ICSystemPaperDocument.paperFastPath.getter()
{
  swift_beginAccess();
  v0 = off_280C239B0;
  sub_214D748C8(off_280C239B0);
  return v0;
}

uint64_t sub_214FD35D4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_280C239B0;
  v3 = qword_280C239B8;
  if (off_280C239B0)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_214FE2C14;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *a1 = v5;
  a1[1] = v4;
  return sub_214D748C8(v2);
}

uint64_t sub_214FD366C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_214FE2BDC;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  swift_beginAccess();
  v5 = off_280C239B0;
  off_280C239B0 = v4;
  qword_280C239B8 = v3;
  sub_214D748C8(v1);
  return sub_214D6AB7C(v5);
}

uint64_t static ICSystemPaperDocument.activePaper(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v4 = off_280C239B0;
  if (off_280C239B0)
  {

    v4(a1);
    return sub_214D6AB7C(v4);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA434F0);
    return (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
  }
}

id ICSystemPaperDocument.coherenceContext.getter()
{
  result = [*(v0 + OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment) managedObjectContext];
  if (result)
  {
    v2 = result;
    MEMORY[0x28223BE20](result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43500);
    sub_2150A56D0();

    return v3;
  }

  return result;
}

void sub_214FD39C8(char *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  v8 = sub_2150A3750();
  v42 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&a1[OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment];
  v12 = [v11 note];
  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = v12;
  if (([v12 isPasswordProtectedAndLocked] & 1) == 0)
  {
    v15 = [v11 attachmentModel];
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      v39 = ObjectType;
      v40 = v15;
      v41 = a2;
      v18 = [objc_opt_self() sharedContext];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 hasContextOptions_];

        if (v20)
        {
          if ([objc_opt_self() isMainThread])
          {
            v21 = [v17 paperCoherenceContextURL];
            sub_2150A36F0();

            if ([v13 isPasswordProtected])
            {
              v23 = sub_214FE300C(&qword_27CA43518, v22, type metadata accessor for ICSystemPaperDocument);
              v24 = a1;
              a2 = v41;
              v25 = v39;
            }

            else
            {
              v25 = 0;
              v23 = 0;
              a1 = 0;
              v44 = 0;
              v45 = 0;
              a2 = v41;
            }

            v35 = v42;
            v46 = v25;
            v47 = v23;
            v43 = a1;
            sub_2150A4890();
            (*(v35 + 56))(v7, 1, 1, v8);
            v36 = v48;
            v37 = sub_2150A4860();
            if (v36)
            {

              sub_214F302D4(v7, &qword_27CA41D40);
              (*(v35 + 8))(v10, v8);
              sub_214F302D4(&v43, &qword_27CA43510);
              v14 = 0;
              goto LABEL_21;
            }

            v14 = v37;

            sub_214F302D4(v7, &qword_27CA41D40);
            (*(v35 + 8))(v10, v8);
            goto LABEL_20;
          }
        }
      }

      v26 = [v13 isPasswordProtected];
      a2 = v41;
      if (v26)
      {
        v28 = sub_214FE300C(&qword_27CA43518, v27, type metadata accessor for ICSystemPaperDocument);
        v29 = a1;
        v30 = v39;
      }

      else
      {
        v30 = 0;
        v28 = 0;
        a1 = 0;
        v44 = 0;
        v45 = 0;
      }

      v34 = v40;
      v46 = v30;
      v47 = v28;
      v43 = a1;
      sub_2150A4890();
      v14 = MEMORY[0x216061410](1, &v43);
    }

    else
    {

      if ([v13 isPasswordProtected])
      {
        v32 = sub_214FE300C(&qword_27CA43518, v31, type metadata accessor for ICSystemPaperDocument);
        v33 = a1;
      }

      else
      {
        ObjectType = 0;
        v32 = 0;
        a1 = 0;
        v44 = 0;
        v45 = 0;
      }

      v46 = ObjectType;
      v47 = v32;
      v43 = a1;
      sub_2150A4890();
      v14 = MEMORY[0x216061410](1, &v43);
    }

LABEL_20:
    sub_214F302D4(&v43, &qword_27CA43510);
    goto LABEL_21;
  }

LABEL_4:
  v14 = 0;
LABEL_21:
  *a2 = v14;
}

id ICSystemPaperDocument.__allocating_init(paperAttachment:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ICSystemPaperDocument.init(paperAttachment:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_214FD3FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436B0);
  MEMORY[0x28223BE20](v5);
  v7 = v43 - v6;
  v50 = sub_2150A3750();
  v48 = *(v50 - 8);
  v8 = MEMORY[0x28223BE20](v50);
  v47 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v51 = v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43520);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v43 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v43 - v18;
  v20 = [*(v2 + OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment) managedObjectContext];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA434F0);
  v22 = *(v21 - 8);
  v25 = *(v22 + 56);
  v24 = v22 + 56;
  v23 = v25;
  if (v20)
  {
    v46 = a1;
    v49 = a2;
    v26 = v19;
    v43[5] = v24;
    v44 = v23;
    v27 = (v23)(v19, 1, 1, v21);
    MEMORY[0x28223BE20](v27);
    v43[-2] = v2;
    sub_2150A56D0();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436B8);
    if ((*(*(v28 - 1) + 48))(v7, 1, v28) == 1)
    {

      sub_214F302D4(v7, &qword_27CA436B0);
    }

    else
    {
      v45 = v20;
      v31 = &v7[v28[12]];
      v32 = *v31;
      v43[3] = *(v31 + 1);
      v33 = v7[v28[16]];
      v34 = &v7[v28[20]];
      v35 = *v34;
      v36 = *(v34 + 1);
      v43[1] = v32;
      v43[2] = v35;
      v37 = v48;
      v38 = v51;
      v39 = v7;
      v40 = v50;
      (*(v48 + 32))(v51, v39, v50);
      v43[4] = v36;
      if ((v33 & 1) == 0)
      {
        if (qword_280C239A8 != -1)
        {
          swift_once();
        }

        v41 = v51;
        sub_214FD52BC(v46, v51, v14);
        v29 = v49;
        v42 = v45;

        (*(v37 + 8))(v41, v40);
        sub_214F302D4(v26, &qword_27CA43520);
        sub_214FB6CE4(v14, v26, &qword_27CA43520);
        return sub_214FB6CE4(v26, v29, &qword_27CA43520);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DF0);
      sub_2150A4740();

      (*(v37 + 8))(v38, v40);
      sub_214F302D4(v26, &qword_27CA43520);
      v44(v17, 0, 1, v21);
      sub_214FB6CE4(v17, v26, &qword_27CA43520);
    }

    v29 = v49;
    return sub_214FB6CE4(v26, v29, &qword_27CA43520);
  }

  return (v23)(a2, 1, 1, v21);
}

uint64_t _s11NotesShared21ICSystemPaperDocumentC05paperE04with9Coherence7CapsuleVy0D3Kit0dE0VGSgAF9CRContextC_tF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436B0);
  MEMORY[0x28223BE20](v5);
  v7 = v43 - v6;
  v50 = sub_2150A3750();
  v48 = *(v50 - 8);
  v8 = MEMORY[0x28223BE20](v50);
  v47 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v51 = v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43540);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v43 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v43 - v18;
  v20 = [*(v2 + OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment) managedObjectContext];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43548);
  v22 = *(v21 - 8);
  v25 = *(v22 + 56);
  v24 = v22 + 56;
  v23 = v25;
  if (v20)
  {
    v46 = a1;
    v49 = a2;
    v26 = v19;
    v43[5] = v24;
    v44 = v23;
    v27 = (v23)(v19, 1, 1, v21);
    MEMORY[0x28223BE20](v27);
    v43[-2] = v2;
    sub_2150A56D0();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436B8);
    if ((*(*(v28 - 1) + 48))(v7, 1, v28) == 1)
    {

      sub_214F302D4(v7, &qword_27CA436B0);
    }

    else
    {
      v45 = v20;
      v31 = &v7[v28[12]];
      v32 = *v31;
      v43[3] = *(v31 + 1);
      v33 = v7[v28[16]];
      v34 = &v7[v28[20]];
      v35 = *v34;
      v36 = *(v34 + 1);
      v43[1] = v32;
      v43[2] = v35;
      v37 = v48;
      v38 = v51;
      v39 = v7;
      v40 = v50;
      (*(v48 + 32))(v51, v39, v50);
      v43[4] = v36;
      if ((v33 & 1) == 0)
      {
        if (qword_280C239A8 != -1)
        {
          swift_once();
        }

        v41 = v51;
        sub_214FD54EC(v46, v51, v14);
        v29 = v49;
        v42 = v45;

        (*(v37 + 8))(v41, v40);
        sub_214F302D4(v26, &qword_27CA43540);
        sub_214FB6CE4(v14, v26, &qword_27CA43540);
        return sub_214FB6CE4(v26, v29, &qword_27CA43540);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436A8);
      sub_2150A4740();

      (*(v37 + 8))(v38, v40);
      sub_214F302D4(v26, &qword_27CA43540);
      v44(v17, 0, 1, v21);
      sub_214FB6CE4(v17, v26, &qword_27CA43540);
    }

    v29 = v49;
    return sub_214FB6CE4(v26, v29, &qword_27CA43540);
  }

  return (v23)(a2, 1, 1, v21);
}

uint64_t sub_214FD508C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment);
  v4 = [v3 paperBundleModel];
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v3 note];
  if (!v6)
  {
    v7 = v5;
    goto LABEL_6;
  }

  v7 = v6;
  if ([v7 isPasswordProtectedAndLocked])
  {

LABEL_6:
LABEL_7:
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436B8);
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436B8);
  v20 = (a2 + v10[12]);
  v21 = v10[16];
  v22 = (a2 + v10[20]);
  v11 = [v5 paperBundleURL];
  sub_2150A36F0();

  v12 = [v7 loggingDescription];
  v13 = sub_2150A4AD0();
  v15 = v14;

  *v20 = v13;
  v20[1] = v15;
  *(a2 + v21) = [v3 isPasswordProtected];
  v16 = [v3 loggingDescription];
  v17 = sub_2150A4AD0();
  v19 = v18;

  *v22 = v17;
  v22[1] = v19;
  return (*(*(v10 - 1) + 56))(a2, 0, 1, v10);
}

void sub_214FD52BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = sub_2150A3A00();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  v13 = *(v5 + 16);
  v18 = a2;
  v19 = v5;
  v20 = a1;
  v21 = v12;
  os_unfair_lock_lock((v13 + 32));
  sub_214FE3054((v13 + 16));
  if (!v4)
  {
    os_unfair_lock_unlock((v13 + 32));
    v14 = *(v5 + 24);
    aBlock[4] = google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214F34100;
    aBlock[3] = &block_descriptor_77;
    v15 = _Block_copy(aBlock);

    dispatch_sync(v14, v15);
    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      MEMORY[0x28223BE20](isEscapingClosureAtFileLocation);
      *&v17[-16] = a2;
      *&v17[-8] = v12;
      os_unfair_lock_lock((v13 + 32));
      sub_214FE3098((v13 + 16), a3);
      os_unfair_lock_unlock((v13 + 32));
      (*(v10 + 8))(v12, v9);
      return;
    }

    __break(1u);
  }

  os_unfair_lock_unlock((v13 + 32));
  __break(1u);
}

void sub_214FD54EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = sub_2150A3A00();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  v13 = *(v5 + 16);
  v18 = a2;
  v19 = v5;
  v20 = a1;
  v21 = v12;
  os_unfair_lock_lock((v13 + 32));
  sub_214FE2F18((v13 + 16));
  if (!v4)
  {
    os_unfair_lock_unlock((v13 + 32));
    v14 = *(v5 + 24);
    aBlock[4] = google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214F34100;
    aBlock[3] = &block_descriptor_67;
    v15 = _Block_copy(aBlock);

    dispatch_sync(v14, v15);
    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      MEMORY[0x28223BE20](isEscapingClosureAtFileLocation);
      *&v17[-16] = a2;
      *&v17[-8] = v12;
      os_unfair_lock_lock((v13 + 32));
      sub_214FE2F5C((v13 + 16), a3);
      os_unfair_lock_unlock((v13 + 32));
      (*(v10 + 8))(v12, v9);
      return;
    }

    __break(1u);
  }

  os_unfair_lock_unlock((v13 + 32));
  __break(1u);
}

uint64_t sub_214FD571C()
{
  type metadata accessor for ICSystemPaperDocument.PaperBundleReader();
  v0 = swift_allocObject();
  result = sub_214FD6510();
  qword_280C26CC8 = v0;
  return result;
}

uint64_t sub_214FD5758(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a7;
  v50 = a8;
  v48 = a6;
  v59 = a5;
  v51 = a4;
  v47 = a3;
  v60 = a2;
  v56 = sub_2150A3A00();
  v9 = *(v56 - 8);
  v10 = MEMORY[0x28223BE20](v56);
  v58 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v42 - v12;
  v13 = sub_2150A4400();
  v54 = *(v13 - 8);
  v55 = v13;
  MEMORY[0x28223BE20](v13);
  v52 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2150A4490();
  v15 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2150A3750();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = *a1;
  if (!*(*a1 + 16) || (v22 = sub_214FB1B98(v60), (v23 & 1) == 0))
  {
    v63 = MEMORY[0x277D84FA0];
LABEL_6:
    v25 = v47;
    v44 = *(v47 + 24);
    (*(v19 + 16))(&v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v60, v18);
    v26 = *(v19 + 80);
    v46 = v9;
    v45 = v15;
    v43 = v17;
    v27 = v25;
    v28 = (v26 + 24) & ~v26;
    v29 = swift_allocObject();
    v30 = v51;
    *(v29 + 16) = v51;
    (*(v19 + 32))(v29 + v28, &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
    *(v29 + ((v20 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    aBlock[4] = v49;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_214F44018;
    aBlock[3] = v50;
    v31 = _Block_copy(aBlock);
    v32 = v30;

    v33 = v43;
    sub_2150A4440();
    v61 = MEMORY[0x277D84F90];
    sub_214FE300C(&qword_280C24570, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA41A28);
    sub_214F43BCC(&qword_280C24550, &unk_27CA41A28);
    v34 = v52;
    v35 = v55;
    sub_2150A5930();
    MEMORY[0x216062180](0, v33, v34, v31);
    v9 = v46;
    _Block_release(v31);
    (*(v54 + 8))(v34, v35);
    (*(v45 + 8))(v33, v53);

    goto LABEL_7;
  }

  v63 = *(*(v21 + 56) + 8 * v22);
  v24 = *(v63 + 16);

  if (!v24)
  {
    goto LABEL_6;
  }

LABEL_7:
  v36 = v58;
  v37 = v56;
  (*(v9 + 16))(v58, v59, v56);
  v38 = v57;
  sub_214FBFE64(v57, v36);
  (*(v9 + 8))(v38, v37);
  v39 = v63;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = *a1;
  result = sub_214FEC4D8(v39, v60, isUniquelyReferenced_nonNull_native);
  *a1 = aBlock[0];
  return result;
}

uint64_t sub_214FD5CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DF0);
  v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA434F0);
  __swift_allocate_boxed_opaque_existential_1(v7);
  v4 = sub_2150A4740();
  v8 = 0;
  v5 = *(a3 + 16);
  MEMORY[0x28223BE20](v4);
  os_unfair_lock_lock(v5 + 8);
  sub_214FE3334(&v5[4]);
  os_unfair_lock_unlock(v5 + 8);
  return sub_214F302D4(v7, &qword_27CA436C0);
}

uint64_t sub_214FD5E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436A8);
  v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43548);
  __swift_allocate_boxed_opaque_existential_1(v7);
  v4 = sub_2150A4740();
  v8 = 0;
  v5 = *(a3 + 16);
  MEMORY[0x28223BE20](v4);
  os_unfair_lock_lock(v5 + 8);
  sub_214FE2FF0(&v5[4]);
  os_unfair_lock_unlock(v5 + 8);
  return sub_214F302D4(v7, &qword_27CA436C0);
}

uint64_t sub_214FD5F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2150A3750();
  MEMORY[0x28223BE20](v5);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v8 + 16))(v7, a2);
  sub_214F43C14(a3, v11, &qword_27CA436C0);
  return sub_214F30AD8(v11, v7);
}

uint64_t sub_214FD605C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a5;
  v31 = a4;
  v33 = a6;
  v9 = sub_2150A3750();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42360);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  v16 = a1[1];
  if (*(v16 + 16) && (v17 = sub_214FB1B98(a2), (v18 & 1) != 0))
  {
    sub_214F43C14(*(v16 + 56) + 40 * v17, v40, &qword_27CA436C0);
  }

  else
  {
    memset(v40, 0, sizeof(v40));
    v41 = -1;
  }

  v19 = *a1;
  if (*(*a1 + 16))
  {
    v20 = sub_214FB1B98(a2);
    if (v21)
    {
      *&v35[0] = *(*(v19 + 56) + 8 * v20);

      sub_214FE1400(a3, v15);
      sub_214F302D4(v15, &unk_27CA42360);
      v22 = *&v35[0];
      if (*(*&v35[0] + 16))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v37 = *a1;
        sub_214FEC4D8(v22, a2, isUniquelyReferenced_nonNull_native);
        *a1 = v37;
      }

      else
      {

        v24 = *(v10 + 16);
        v24(v12, a2, v9);
        sub_214F30918(0, v12);
        v24(v12, a2, v9);
        v37 = 0u;
        v38 = 0u;
        v39 = -1;
        sub_214F30AD8(&v37, v12);
      }
    }
  }

  sub_214F43C14(v40, v35, &qword_27CA41E10);
  if (v36 == 255)
  {
    sub_214F302D4(v40, &qword_27CA41E10);
    sub_214F302D4(v35, &qword_27CA41E10);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v31);
    return (*(*(v26 - 8) + 56))(v33, 1, 1, v26);
  }

  else
  {
    v37 = v35[0];
    v38 = v35[1];
    v39 = v36;
    sub_214F43C14(&v37, v35, &qword_27CA436C0);
    if (v36)
    {
      v42 = *&v35[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
      swift_willThrowTypedImpl();
      sub_214F302D4(&v37, &qword_27CA436C0);
      return sub_214F302D4(v40, &qword_27CA41E10);
    }

    else
    {
      sub_214F302D4(&v37, &qword_27CA436C0);
      sub_214F302D4(v40, &qword_27CA41E10);
      sub_214D72488(v35, &v34);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(v31);
      v28 = v33;
      v29 = swift_dynamicCast();
      return (*(*(v27 - 8) + 56))(v28, v29 ^ 1u, 1, v27);
    }
  }
}

uint64_t sub_214FD64D0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_214FD6510()
{
  v1 = sub_2150A55A0();
  v15 = *(v1 - 8);
  v16 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2150A5590();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2150A4490();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = MEMORY[0x277D84F90];
  v7 = sub_214FA571C(MEMORY[0x277D84F90]);
  v8 = sub_214FA5904(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436C8);
  v9 = swift_allocObject();
  *(v9 + 32) = 0;
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  *(v0 + 16) = v9;
  v13[1] = sub_214D55670(0, &qword_280C24508);
  sub_2150A4440();
  v17 = v6;
  sub_214FE300C(&qword_280C24510, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC8);
  sub_214F43BCC(&unk_280C24530, &qword_27CA41DC8);
  sub_2150A5930();
  (*(v15 + 104))(v3, *MEMORY[0x277D85260], v16);
  v10 = sub_2150A55D0();
  v11 = v14;
  *(v14 + 24) = v10;
  return v11;
}

id ICSystemPaperDocument.archiveBundleForSync()()
{
  v183 = *MEMORY[0x277D85DE8];
  v162 = sub_2150A3A00();
  v161 = *(v162 - 1);
  MEMORY[0x28223BE20](v162);
  v160 = v154 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_2150A3750();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v164 = v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v163 = v154 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v166 = v154 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = v154 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v159 = v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v167 = v154 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v171 = (v154 - v18);
  MEMORY[0x28223BE20](v17);
  v20 = v154 - v19;
  v170 = v3[7];
  v170(v154 - v19, 1, 1, v2);
  v176 = MEMORY[0x277D84F90];
  v21 = *(v0 + OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment);
  v22 = [v21 ic_loggingIdentifier];
  v173 = sub_2150A4AD0();
  v174 = v23;

  v24 = [v21 paperBundleModel];
  if (!v24)
  {
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v39 = sub_2150A3F30();
    __swift_project_value_buffer(v39, qword_280C242C0);
    v40 = v174;

    v41 = sub_2150A3F10();
    v42 = sub_2150A5560();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock = v44;
      *v43 = 136315138;
      v45 = sub_214F7723C(v173, v40, &aBlock);

      *(v43 + 4) = v45;
      _os_log_impl(&dword_214D51000, v41, v42, "Cannot archive paper bundle %s because attachment model is missing", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x216064AF0](v44, -1, -1);
      MEMORY[0x216064AF0](v43, -1, -1);
    }

    else
    {
    }

    sub_214FD7DE0();
    swift_allocError();
    *v55 = 0;
    swift_willThrow();
    goto LABEL_26;
  }

  v25 = v24;
  v172 = v20;
  v156 = objc_opt_self();
  v26 = [v156 defaultManager];
  v169 = v25;
  v27 = [v25 paperBundleURL];
  sub_2150A36F0();

  sub_2150A3700();
  v158 = v3;
  v28 = v3[1];
  v155 = v11;
  v168 = v2;
  v29 = v2;
  v30 = (v3 + 1);
  v157 = v28;
  v28(v11, v29);
  v31 = sub_2150A4A90();

  LODWORD(v25) = [v26 fileExistsAtPath_];

  if (!v25)
  {
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v46 = sub_2150A3F30();
    __swift_project_value_buffer(v46, qword_280C242C0);
    v47 = v174;

    v48 = sub_2150A3F10();
    v49 = sub_2150A5560();

    v50 = os_log_type_enabled(v48, v49);
    v20 = v172;
    if (v50)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock = v52;
      *v51 = 136315138;
      v53 = sub_214F7723C(v173, v47, &aBlock);

      *(v51 + 4) = v53;
      v54 = "Cannot archive paper bundle %s because the paper bundle does not exist";
LABEL_23:
      _os_log_impl(&dword_214D51000, v48, v49, v54, v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x216064AF0](v52, -1, -1);
      MEMORY[0x216064AF0](v51, -1, -1);
LABEL_25:

      sub_214FD7DE0();
      swift_allocError();
      *v62 = 0;
      swift_willThrow();

LABEL_26:
      v63 = 0;
LABEL_27:

      sub_214F302D4(v20, &qword_27CA41D40);
      sub_214D6AB7C(v63);
      return v63;
    }

LABEL_24:

    goto LABEL_25;
  }

  v32 = [v21 cloudAccount];
  if (!v32)
  {
    v56 = v171;
    v170(v171, 1, 1, v168);
LABEL_19:
    sub_214F302D4(v56, &qword_27CA41D40);
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v58 = sub_2150A3F30();
    __swift_project_value_buffer(v58, qword_280C242C0);
    v59 = v174;

    v48 = sub_2150A3F10();
    v49 = sub_2150A5560();

    v60 = os_log_type_enabled(v48, v49);
    v20 = v172;
    if (v60)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock = v52;
      *v51 = 136315138;
      v61 = sub_214F7723C(v173, v59, &aBlock);

      *(v51 + 4) = v61;
      v54 = "Cannot archive paper bundle %s because we cannot determine an appropriate temporary directory";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v33 = v32;
  v34 = [v32 temporaryDirectoryURL];

  v35 = v168;
  if (v34)
  {
    v36 = v167;
    sub_2150A36F0();

    v37 = 0;
    v38 = v158;
  }

  else
  {
    v37 = 1;
    v38 = v158;
    v36 = v167;
  }

  v170(v36, v37, 1, v35);
  v56 = v171;
  sub_214FB6CE4(v36, v171, &qword_27CA41D40);
  v57 = v38[6];
  if (v57(v56, 1, v35) == 1)
  {
    goto LABEL_19;
  }

  v65 = v38 + 4;
  v66 = v166;
  v171 = v38[4];
  (v171)(v166, v56, v35);
  v67 = [v156 defaultManager];
  v68 = v165;
  NSFileManager.createDirectory(at:withIntermediateDirectories:)(v66, 1);
  if (v68)
  {

    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v69 = sub_2150A3F30();
    __swift_project_value_buffer(v69, qword_280C242C0);
    v70 = v174;

    v71 = sub_2150A3F10();
    v72 = sub_2150A5560();

    v73 = os_log_type_enabled(v71, v72);
    v20 = v172;
    if (v73)
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v170 = v30;
      v76 = v75;
      aBlock = v75;
      *v74 = 136315138;
      v77 = sub_214F7723C(v173, v70, &aBlock);

      *(v74 + 4) = v77;
      v66 = v166;
      _os_log_impl(&dword_214D51000, v71, v72, "Cannot archive paper bundle %s because we cannot create a temporary directory", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);
      MEMORY[0x216064AF0](v76, -1, -1);
      MEMORY[0x216064AF0](v74, -1, -1);
    }

    else
    {
    }

    v117 = v157;
    sub_214FD7DE0();
    swift_allocError();
    *v118 = 0;
    swift_willThrow();

    v117(v66, v168);
    v63 = 0;
    goto LABEL_27;
  }

  v154[0] = v57;
  v156 = v38 + 6;

  v78 = v160;
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  v79 = v38;
  v80 = sub_2150A3990();
  v82 = v81;
  (v161)[1](v78, v162);
  aBlock = v80;
  v178 = v82;
  MEMORY[0x2160617E0](95, 0xE100000000000000);
  v162 = aBlock;
  v161 = v178;
  v167 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) init];
  v83 = [v169 paperBundleURL];
  v84 = v155;
  sub_2150A36F0();

  v165 = sub_2150A36B0();
  v85 = v168;
  v170 = v30;
  v157(v84, v168);
  v160 = v79[2];
  (v160)(v84, v66, v85);
  v158 = v79 + 2;
  v86 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v87 = (v4 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = (v87 + 23) & 0xFFFFFFFFFFFFFFF8;
  v89 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
  v90 = (v89 + 23) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  v154[1] = v65;
  (v171)(v91 + v86, v84, v168);
  v92 = (v91 + v87);
  v93 = v161;
  *v92 = v162;
  v92[1] = v93;
  v94 = v173;
  *(v91 + v88) = v172;
  v95 = (v91 + v89);
  v96 = v174;
  *v95 = v94;
  v95[1] = v96;
  *(v91 + v90) = &v176;
  v97 = swift_allocObject();
  *(v97 + 16) = sub_214FE1060;
  *(v97 + 24) = v91;
  v181 = sub_214FE1128;
  v182 = v97;
  aBlock = MEMORY[0x277D85DD0];
  v178 = 1107296256;
  v179 = sub_214FAA924;
  v180 = &block_descriptor_10;
  v98 = _Block_copy(&aBlock);

  aBlock = 0;
  v99 = v165;
  [v167 coordinateReadingItemAtURL:v165 options:0 error:&aBlock byAccessor:v98];
  _Block_release(v98);

  v100 = aBlock;
  LOBYTE(v99) = swift_isEscapingClosureAtFileLocation();

  if (v99)
  {
    __break(1u);
LABEL_56:
    swift_once();
    goto LABEL_37;
  }

  v101 = v164;
  v86 = v159;
  v102 = v171;
  v165 = v100;
  if (!v100)
  {
    goto LABEL_42;
  }

  if (qword_280C242B8 != -1)
  {
    goto LABEL_56;
  }

LABEL_37:
  v103 = sub_2150A3F30();
  __swift_project_value_buffer(v103, qword_280C242C0);
  v104 = v174;

  v105 = v100;
  v106 = sub_2150A3F10();
  v107 = sub_2150A5560();
  v108 = v105;

  if (os_log_type_enabled(v106, v107))
  {
    v109 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    aBlock = v161;
    *v109 = 136315394;
    *(v109 + 4) = sub_214F7723C(v173, v104, &aBlock);
    *(v109 + 12) = 2080;
    v162 = v108;
    v110 = [v108 localizedDescription];
    v111 = sub_2150A4AD0();
    v113 = v112;

    v114 = sub_214F7723C(v111, v113, &aBlock);

    *(v109 + 14) = v114;
    _os_log_impl(&dword_214D51000, v106, v107, "Failed to archive paper bundle %s to disk for sync due to file coordination error: %s", v109, 0x16u);
    v115 = v161;
    swift_arrayDestroy();
    MEMORY[0x216064AF0](v115, -1, -1);
    v116 = v109;
    v101 = v164;
    MEMORY[0x216064AF0](v116, -1, -1);

    v102 = v171;
  }

  else
  {

    v102 = v171;
    v101 = v164;
  }

LABEL_42:
  sub_214F43C14(v172, v86, &qword_27CA41D40);
  if ((v154[0])(v86, 1, v168) == 1)
  {
    sub_214F302D4(v86, &qword_27CA41D40);
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v119 = sub_2150A3F30();
    __swift_project_value_buffer(v119, qword_280C242C0);
    v120 = v174;

    v121 = sub_2150A3F10();
    v122 = sub_2150A5560();

    v123 = os_log_type_enabled(v121, v122);
    v20 = v172;
    if (v123)
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      aBlock = v125;
      *v124 = 136315138;
      v126 = sub_214F7723C(v173, v120, &aBlock);

      *(v124 + 4) = v126;
      _os_log_impl(&dword_214D51000, v121, v122, "No database archive was produced when archiving a paper bundle %s for sync", v124, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v125);
      MEMORY[0x216064AF0](v125, -1, -1);
      MEMORY[0x216064AF0](v124, -1, -1);
    }

    else
    {
    }

    v144 = v166;
    v145 = v157;
    sub_214FD7DE0();
    swift_allocError();
    *v146 = 0;
    swift_willThrow();

    v145(v144, v168);
    v63 = sub_214FE1060;
    goto LABEL_27;
  }

  v127 = v163;
  v102(v163, v86, v168);
  if (qword_280C242B8 != -1)
  {
    swift_once();
  }

  v128 = sub_2150A3F30();
  __swift_project_value_buffer(v128, qword_280C242C0);
  (v160)(v101, v127, v168);
  v129 = v174;

  v130 = sub_2150A3F10();
  v131 = sub_2150A5550();

  if (os_log_type_enabled(v130, v131))
  {
    v132 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    aBlock = v171;
    *v132 = 136315650;
    v133 = sub_214F7723C(v173, v129, &aBlock);

    *(v132 + 4) = v133;
    *(v132 + 12) = 2080;
    sub_214FE300C(&qword_280C24468, 255, MEMORY[0x277CC9260]);
    v134 = sub_2150A6100();
    v136 = v135;
    v157(v101, v168);
    v137 = sub_214F7723C(v134, v136, &aBlock);

    *(v132 + 14) = v137;
    *(v132 + 22) = 2080;
    swift_beginAccess();

    v139 = MEMORY[0x216061AA0](v138, v168);
    v141 = v140;

    v142 = sub_214F7723C(v139, v141, &aBlock);

    *(v132 + 24) = v142;
    _os_log_impl(&dword_214D51000, v130, v131, "Successfully archived paper bundle %s:\nDatabase: %s\nAssets: %s", v132, 0x20u);
    v143 = v171;
    swift_arrayDestroy();
    MEMORY[0x216064AF0](v143, -1, -1);
    MEMORY[0x216064AF0](v132, -1, -1);
  }

  else
  {

    v157(v101, v168);
  }

  v147 = v155;
  v148 = v168;
  v149 = v160;
  (v160)(v155, v163, v168);
  swift_beginAccess();
  v150 = v176;
  v151 = type metadata accessor for SystemPaperSyncArchive();
  v152 = objc_allocWithZone(v151);
  v149(&v152[OBJC_IVAR___ICSystemPaperSyncArchive_databaseArchive], v147, v148);
  *&v152[OBJC_IVAR___ICSystemPaperSyncArchive_assetArchives] = v150;
  v175.receiver = v152;
  v175.super_class = v151;

  v63 = objc_msgSendSuper2(&v175, sel_init);

  v153 = v157;
  v157(v147, v148);
  v153(v163, v148);
  v153(v166, v148);

  sub_214F302D4(v172, &qword_27CA41D40);

  return v63;
}

unint64_t sub_214FD7DE0()
{
  result = qword_27CA43508;
  if (!qword_27CA43508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43508);
  }

  return result;
}

void sub_214FD7E34(uint64_t a1, void (*a2)(char *, void, uint64_t, uint64_t), void *a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v75 = a8;
  v76 = a6;
  v79 = a7;
  v80 = a2;
  v71 = a5;
  v81 = a3;
  v84[2] = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v69 - v11;
  v13 = sub_2150A3750();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v73 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v69 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v69 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v69 - v23;
  v72 = a1;
  sub_2150A36C0();
  v25 = sub_2150A3690();
  v27 = v26;
  v84[0] = v81;
  v84[1] = a4;
  v74 = a4;

  MEMORY[0x2160617E0](v25, v27);

  sub_2150A36C0();

  sub_2150A36D0();
  v28 = *(v14 + 8);
  v70 = v19;
  v82 = v28;
  v83 = v14 + 8;
  v28(v19, v13);
  v29 = *(v14 + 16);
  v77 = v24;
  v30 = v24;
  v31 = v29;
  v29(v12, v30, v13);
  v69 = *(v14 + 56);
  v69(v12, 0, 1, v13);
  v78 = v22;
  v32 = v13;
  v33 = sub_2150A36B0();
  v34 = 0;
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    v34 = sub_2150A36B0();
    v82(v12, v13);
  }

  v35 = [objc_allocWithZone(MEMORY[0x277D36190]) initWithDestinationURL:v33 baseURL:v34];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B0);
  v36 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_2150C25D0;
  v38 = v77;
  v31(v37 + v36, v77, v32);
  v39 = sub_2150A4EB0();

  v84[0] = 0;
  v40 = [v35 writeURLs:v39 error:v84];

  if (v40)
  {
    v41 = v84[0];
    v42 = v82;
    v82(v38, v32);

    v43 = v71;
    sub_214F302D4(v71, &qword_27CA41D40);
    (*(v14 + 32))(v43, v78, v32);
    v69(v43, 0, 1, v32);
    v44 = v70;
    sub_2150A36C0();
    v45 = v73;
    sub_2150A36D0();
    v42(v44, v32);
    v46 = [objc_opt_self() defaultManager];
    v47 = sub_2150A5520();

    if (!v47 || (v48 = [v47 allObjects], v49 = sub_2150A4ED0(), v48, v50 = sub_21502DE5C(v49), v51 = , !v50))
    {

      v50 = MEMORY[0x277D84F90];
    }

    MEMORY[0x28223BE20](v51);
    v52 = v81;
    *(&v69 - 6) = v80;
    *(&v69 - 5) = v52;
    v53 = v76;
    *(&v69 - 4) = v74;
    *(&v69 - 3) = v53;
    *(&v69 - 2) = v54;
    v55 = sub_214FD23D8(sub_214FE2ED8, (&v69 - 8), v50);

    sub_215068C0C(v55);

    v82(v45, v32);
  }

  else
  {
    v56 = v84[0];
    v57 = sub_2150A35D0();

    swift_willThrow();
    v58 = v82;
    v82(v78, v32);
    v58(v38, v32);
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v59 = sub_2150A3F30();
    __swift_project_value_buffer(v59, qword_280C242C0);
    v60 = v79;

    v61 = v57;
    v62 = sub_2150A3F10();
    v63 = sub_2150A5560();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v84[0] = v65;
      *v64 = 136315394;
      *(v64 + 4) = sub_214F7723C(v76, v60, v84);
      *(v64 + 12) = 2080;
      swift_getErrorValue();
      v66 = sub_2150A6440();
      v68 = sub_214F7723C(v66, v67, v84);

      *(v64 + 14) = v68;
      _os_log_impl(&dword_214D51000, v62, v63, "Failed archiving the database directory for paper bundle %s: %s", v64, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v65, -1, -1);
      MEMORY[0x216064AF0](v64, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t static ICSystemPaperDocument.assetsDirectory(at:)()
{
  v0 = sub_2150A3750();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A36C0();
  sub_2150A36D0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_214FD8754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v51 = a6;
  v50 = a5;
  v54 = a3;
  v55 = a2;
  v56 = a7;
  v57[2] = *MEMORY[0x277D85DE8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - v10;
  v12 = sub_2150A3750();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  v19 = sub_2150A3690();
  v21 = v20;
  v57[0] = v54;
  v57[1] = a4;

  MEMORY[0x2160617E0](v19, v21);

  sub_2150A36C0();

  sub_2150A36D0();
  v22 = v16;
  v23 = v12;
  v52 = *(v13 + 8);
  v52(v22, v12);
  sub_2150A36E0();
  v54 = *(v13 + 56);
  v55 = v13 + 56;
  (v54)(v11, 0, 1, v12);
  v53 = v18;
  v24 = sub_2150A36B0();
  v25 = 0;
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v25 = sub_2150A36B0();
    v52(v11, v12);
  }

  v26 = [objc_allocWithZone(MEMORY[0x277D36190]) initWithDestinationURL:v24 baseURL:v25];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B0);
  v27 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2150C25D0;
  (*(v13 + 16))(v28 + v27, a1, v12);
  v29 = sub_2150A4EB0();

  v57[0] = 0;
  v30 = [v26 writeURLs:v29 error:v57];

  if (v30)
  {
    v31 = v57[0];

    v32 = v56;
    (*(v13 + 32))(v56, v53, v23);
    v33 = 0;
  }

  else
  {
    v34 = v57[0];
    v35 = v23;
    v36 = sub_2150A35D0();

    swift_willThrow();
    v37 = v35;
    v52(v53, v35);
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v38 = sub_2150A3F30();
    __swift_project_value_buffer(v38, qword_280C242C0);
    v39 = v51;

    v40 = v36;
    v41 = sub_2150A3F10();
    v42 = sub_2150A5560();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v57[0] = v44;
      *v43 = 136315394;
      *(v43 + 4) = sub_214F7723C(v50, v39, v57);
      *(v43 + 12) = 2080;
      swift_getErrorValue();
      v45 = sub_2150A6440();
      v47 = sub_214F7723C(v45, v46, v57);

      *(v43 + 14) = v47;
      _os_log_impl(&dword_214D51000, v41, v42, "Failed archiving a paper bundle %s asset: %s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v44, -1, -1);
      MEMORY[0x216064AF0](v43, -1, -1);
    }

    else
    {
    }

    v33 = 1;
    v32 = v56;
    v23 = v37;
  }

  return (v54)(v32, v33, 1, v23);
}

void ICSystemPaperDocument.writeNewVersionFromSyncArchive(_:)(void *a1)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v3 = sub_2150A3A00();
  v199 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v198 = v187 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_2150A3750();
  v201 = *(v208 - 8);
  v5 = MEMORY[0x28223BE20](v208);
  v195 = v187 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v205 = v187 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v187 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v200 = v187 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v196 = v187 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v197 = v187 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v187 - v19;
  v191 = v21;
  MEMORY[0x28223BE20](v18);
  v23 = v187 - v22;
  v24 = *(v1 + OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment);
  v25 = [v24 ic_loggingIdentifier];
  v204 = sub_2150A4AD0();
  v27 = v26;

  if (qword_280C242B8 != -1)
  {
    swift_once();
  }

  v28 = sub_2150A3F30();
  v29 = __swift_project_value_buffer(v28, qword_280C242C0);

  v30 = a1;
  v206 = v29;
  v31 = sub_2150A3F10();
  v32 = sub_2150A5550();

  v33 = os_log_type_enabled(v31, v32);
  v207 = v27;
  *&v192 = v11;
  v194 = v30;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v202 = v23;
    v193 = v3;
    v35 = v34;
    v36 = v30;
    v37 = swift_slowAlloc();
    v38 = v20;
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v35 = 136315394;
    *(v35 + 4) = sub_214F7723C(v204, v27, aBlock);
    *(v35 + 12) = 2112;
    *(v35 + 14) = v36;
    *v37 = v36;
    v40 = v36;
    _os_log_impl(&dword_214D51000, v31, v32, "Writing new version of paper bundle %s from archive: %@", v35, 0x16u);
    sub_214F302D4(v37, &qword_27CA41DF0);
    MEMORY[0x216064AF0](v37, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v39);
    v41 = v39;
    v20 = v38;
    MEMORY[0x216064AF0](v41, -1, -1);
    v42 = v35;
    v3 = v193;
    v23 = v202;
    MEMORY[0x216064AF0](v42, -1, -1);
  }

  v43 = [v24 paperBundleURL];
  if (v43)
  {
    v44 = v43;
    sub_2150A36F0();

    v45 = [v24 cloudAccount];
    v46 = v207;
    if (v45)
    {
      v202 = v23;
      v47 = v45;
      v48 = [v45 systemPaperTemporaryDirectoryURL];

      v49 = v200;
      sub_2150A36F0();

      v50 = v198;
      _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
      sub_2150A3990();
      (*(v199 + 8))(v50, v3);
      v51 = v196;
      sub_2150A36C0();

      v52 = v201;
      v53 = v201 + 8;
      v54 = *(v201 + 8);
      v55 = v49;
      v56 = v208;
      v54(v55, v208);
      v57 = v197;
      sub_2150A36D0();
      v54(v51, v56);
      v59 = v52 + 32;
      v58 = *(v52 + 32);
      v58(v20, v57, v56);
      v60 = objc_opt_self();
      v61 = [v60 defaultManager];
      v62 = v203;
      NSFileManager.createDirectory(at:withIntermediateDirectories:)(v20, 1);
      v193 = v53;
      v196 = v54;
      v203 = v62;
      if (v62)
      {

        v63 = sub_2150A3F10();
        v64 = sub_2150A5560();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = v46;
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          aBlock[0] = v67;
          *v66 = 136315138;
          v68 = sub_214F7723C(v204, v65, aBlock);

          *(v66 + 4) = v68;
          v54 = v196;
          _os_log_impl(&dword_214D51000, v63, v64, "Cannot write new paper bundle %s version because we cannot create a temporary bundle", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v67);
          MEMORY[0x216064AF0](v67, -1, -1);
          MEMORY[0x216064AF0](v66, -1, -1);
        }

        else
        {
        }

        v93 = v202;
        sub_214FD7DE0();
        swift_allocError();
        *v94 = 0;
        swift_willThrow();

        v95 = v208;
        v54(v20, v208);
        v54(v93, v95);
      }

      else
      {
        v190 = v60;
        v189 = v58;

        v82 = v192;
        sub_2150A36C0();
        v83 = objc_allocWithZone(MEMORY[0x277D36188]);
        v84 = sub_2150A36B0();
        v85 = sub_2150A36B0();
        v86 = [v83 initWithSourceURL:v84 destinationURL:v85];

        [v86 setOverwrite_];
        [v86 setSkipsInvisibleHeaders_];
        [v86 setWritesTemporaryFilesInsideDestination_];
        aBlock[0] = 0;
        if ([v86 unarchiveResultURLs:0 error:aBlock])
        {
          v187[1] = v59;
          v87 = aBlock[0];
          v88 = [v190 defaultManager];
          v89 = sub_2150A36B0();
          aBlock[0] = 0;
          v90 = [v88 removeItemAtURL:v89 error:aBlock];

          if (v90)
          {
            v91 = aBlock[0];
            v92 = v196;
            (v196)(v82, v208);
          }

          else
          {
            v116 = aBlock[0];
            v117 = sub_2150A35D0();

            swift_willThrow();
            v92 = v196;
            (v196)(v82, v208);
            v203 = 0;
          }

          v118 = v195;
          v188 = v20;
          sub_2150A36C0();
          sub_2150A36D0();
          v92(v200, v208);
          v120 = *&v194[OBJC_IVAR___ICSystemPaperSyncArchive_assetArchives];
          v121 = *(v120 + 16);
          v122 = &selRef_bundleWithIdentifier_;
          if (v121)
          {
            v198 = *(v201 + 16);
            v123 = v120 + ((*(v201 + 80) + 32) & ~*(v201 + 80));
            v199 = v201 + 16;
            v197 = *(v201 + 72);
            *&v119 = 136315394;
            v192 = v119;
            (v198)(v118, v123, v208);
            while (1)
            {
              v125 = objc_allocWithZone(MEMORY[0x277D36188]);
              v126 = sub_2150A36B0();
              v127 = sub_2150A36B0();
              v128 = [v125 initWithSourceURL:v126 destinationURL:v127];

              [v128 setOverwrite_];
              [v128 setSkipsInvisibleHeaders_];
              [v128 setWritesTemporaryFilesInsideDestination_];
              aBlock[0] = 0;
              if ([v128 unarchiveResultURLs:0 error:aBlock])
              {
                v129 = aBlock[0];
                v130 = [v190 v122[433]];
                v131 = sub_2150A36B0();
                aBlock[0] = 0;
                v132 = [v130 removeItemAtURL:v131 error:aBlock];

                if (v132)
                {
                  v124 = aBlock[0];
                  v92(v118, v208);
                }

                else
                {
                  v133 = aBlock[0];
                  v134 = sub_2150A35D0();

                  swift_willThrow();
                  v92(v118, v208);
                  v203 = 0;
                }
              }

              else
              {
                v135 = aBlock[0];
                v136 = sub_2150A35D0();

                swift_willThrow();
                v203 = 0;

                v137 = v207;

                v138 = v136;
                v139 = sub_2150A3F10();
                v140 = sub_2150A5560();

                if (os_log_type_enabled(v139, v140))
                {
                  v141 = swift_slowAlloc();
                  v194 = swift_slowAlloc();
                  aBlock[0] = v194;
                  *v141 = v192;
                  *(v141 + 4) = sub_214F7723C(v204, v137, aBlock);
                  *(v141 + 12) = 2080;
                  swift_getErrorValue();
                  v142 = sub_2150A6440();
                  v144 = sub_214F7723C(v142, v143, aBlock);

                  *(v141 + 14) = v144;
                  v145 = v208;
                  _os_log_impl(&dword_214D51000, v139, v140, "Failed to write new paper bundle %s asset version: %s", v141, 0x16u);
                  v146 = v194;
                  swift_arrayDestroy();
                  MEMORY[0x216064AF0](v146, -1, -1);
                  v147 = v141;
                  v118 = v195;
                  MEMORY[0x216064AF0](v147, -1, -1);

                  v148 = v118;
                  v149 = v145;
                }

                else
                {

                  v148 = v118;
                  v149 = v208;
                }

                v92 = v196;
                (v196)(v148, v149);
              }

              v123 += v197;
              --v121;
              v122 = &selRef_bundleWithIdentifier_;
              if (!v121)
              {
                break;
              }

              (v198)(v118, v123, v208);
            }
          }

          v150 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) init];
          v151 = v202;
          v152 = sub_2150A36B0();
          v153 = v201 + 16;
          v154 = v200;
          v155 = v188;
          v156 = v208;
          (*(v201 + 16))(v200, v188, v208);
          v157 = (*(v153 + 64) + 16) & ~*(v153 + 64);
          v158 = (v191 + v157 + 7) & 0xFFFFFFFFFFFFFFF8;
          v159 = swift_allocObject();
          v160 = v156;
          v161 = v150;
          v189(v159 + v157, v154, v160);
          v162 = (v159 + v158);
          v163 = v207;
          *v162 = v204;
          v162[1] = v163;
          v164 = swift_allocObject();
          v164[2] = sub_214FE1130;
          v164[3] = v159;
          aBlock[4] = sub_214FE334C;
          aBlock[5] = v164;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_214FAA924;
          aBlock[3] = &block_descriptor_13;
          v165 = _Block_copy(aBlock);

          aBlock[0] = 0;
          [v150 coordinateWritingItemAtURL:v152 options:0 error:aBlock byAccessor:v165];
          _Block_release(v165);

          v166 = aBlock[0];
          LOBYTE(v165) = swift_isEscapingClosureAtFileLocation();

          if (v165)
          {
            __break(1u);
          }

          if (v166)
          {
            v167 = v207;

            v168 = v166;
            v169 = sub_2150A3F10();
            v170 = sub_2150A5560();

            if (os_log_type_enabled(v169, v170))
            {
              v171 = swift_slowAlloc();
              v206 = swift_slowAlloc();
              aBlock[0] = v206;
              *v171 = 136315394;
              v172 = sub_214F7723C(v204, v167, aBlock);

              *(v171 + 4) = v172;
              *(v171 + 12) = 2080;
              v173 = [v168 localizedDescription];
              v174 = sub_2150A4AD0();
              v176 = v175;

              v177 = sub_214F7723C(v174, v176, aBlock);

              *(v171 + 14) = v177;
              _os_log_impl(&dword_214D51000, v169, v170, "Failed to archive paper bundle %s to disk for sync due to file coordination error: %s", v171, 0x16u);
              v178 = v206;
              swift_arrayDestroy();
              MEMORY[0x216064AF0](v178, -1, -1);
              MEMORY[0x216064AF0](v171, -1, -1);

              v179 = v208;
              v180 = v196;
              (v196)(v205, v208);
              v180(v188, v179);
              v180(v202, v179);
            }

            else
            {

              v185 = v208;
              v186 = v196;
              (v196)(v205, v208);
              v186(v155, v185);
              v186(v151, v185);
            }
          }

          else
          {

            v183 = v208;
            v184 = v196;
            (v196)(v205, v208);
            v184(v155, v183);
            v184(v151, v183);
          }
        }

        else
        {
          v98 = aBlock[0];
          v99 = sub_2150A35D0();

          swift_willThrow();
          v100 = v196;
          (v196)(v82, v208);
          v101 = v207;

          v102 = v99;
          v103 = sub_2150A3F10();
          v104 = sub_2150A5560();

          v105 = os_log_type_enabled(v103, v104);
          v106 = v202;
          if (v105)
          {
            v107 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            aBlock[0] = v108;
            *v107 = 136315394;
            v109 = sub_214F7723C(v204, v101, aBlock);

            *(v107 + 4) = v109;
            *(v107 + 12) = 2080;
            swift_getErrorValue();
            v110 = sub_2150A6440();
            v112 = v20;
            v113 = sub_214F7723C(v110, v111, aBlock);

            *(v107 + 14) = v113;
            v20 = v112;
            _os_log_impl(&dword_214D51000, v103, v104, "Cannot write new paper bundle %s version we failed to extract the database: %s", v107, 0x16u);
            swift_arrayDestroy();
            v114 = v108;
            v106 = v202;
            MEMORY[0x216064AF0](v114, -1, -1);
            v115 = v107;
            v100 = v196;
            MEMORY[0x216064AF0](v115, -1, -1);
          }

          else
          {
          }

          sub_214FD7DE0();
          swift_allocError();
          *v181 = 0;
          swift_willThrow();

          v182 = v208;
          v100(v20, v208);
          v100(v106, v182);
        }
      }
    }

    else
    {

      v75 = sub_2150A3F10();
      v76 = sub_2150A5560();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = v46;
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        aBlock[0] = v79;
        *v78 = 136315138;
        v80 = sub_214F7723C(v204, v77, aBlock);

        *(v78 + 4) = v80;
        _os_log_impl(&dword_214D51000, v75, v76, "Cannot write new paper bundle %s version because we cannot determine an appropriate temporary bundle", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v79);
        MEMORY[0x216064AF0](v79, -1, -1);
        MEMORY[0x216064AF0](v78, -1, -1);
      }

      else
      {
      }

      v96 = v201;
      sub_214FD7DE0();
      swift_allocError();
      *v97 = 0;
      swift_willThrow();
      (*(v96 + 8))(v23, v208);
    }
  }

  else
  {
    v69 = v207;

    v70 = sub_2150A3F10();
    v71 = sub_2150A5560();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      aBlock[0] = v73;
      *v72 = 136315138;
      v74 = sub_214F7723C(v204, v69, aBlock);

      *(v72 + 4) = v74;
      _os_log_impl(&dword_214D51000, v70, v71, "Cannot write new paper bundle %s version because attachment paper bundle url is nil", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x216064AF0](v73, -1, -1);
      MEMORY[0x216064AF0](v72, -1, -1);
    }

    else
    {
    }

    sub_214FD7DE0();
    swift_allocError();
    *v81 = 0;
    swift_willThrow();
  }
}

void sub_214FDA430(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v59 = a3;
  v60 = a4;
  v61 = a2;
  v62[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2150A3750();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = &selRef_bundleWithIdentifier_;
  v10 = [v8 defaultManager];
  sub_2150A3700();
  v11 = sub_2150A4A90();

  v12 = [v10 fileExistsAtPath_];

  if (v12)
  {
    v13 = [v8 defaultManager];
    v14 = sub_2150A36B0();
    type metadata accessor for URLResourceKey(0);
    v15 = sub_2150A4EB0();
    v62[0] = 0;
    v16 = [v13 contentsOfDirectoryAtURL:v14 includingPropertiesForKeys:v15 options:0 error:v62];

    v17 = v62[0];
    if (v16)
    {
      v18 = sub_2150A4ED0();
      v19 = v17;

      v20 = *(v18 + 16);

      v9 = &selRef_bundleWithIdentifier_;
      if (v20)
      {
        v21 = objc_opt_self();
        v22 = sub_2150A36B0();
        v62[0] = 0;
        v23 = [v21 removeOtherVersionsOfItemAtURL:v22 error:v62];

        v24 = v60;
        if (v23)
        {
          v25 = v62[0];
        }

        else
        {
          v53 = v62[0];
          v54 = sub_2150A35D0();

          swift_willThrow();
        }

        v55 = sub_2150A36B0();
        v56 = sub_2150A36B0();
        v62[0] = 0;
        v57 = [v21 ic:v55 addVersionOfItemAtURL:v56 withContentsOfURL:1 options:v62 error:?];

        v40 = v62[0];
        if (v57)
        {
          v58 = v62[0];

          return;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v26 = v62[0];
      v27 = sub_2150A35D0();

      swift_willThrow();
      v9 = &selRef_bundleWithIdentifier_;
    }
  }

  v28 = [v8 v9[433]];
  sub_2150A36E0();
  NSFileManager.createDirectory(at:withIntermediateDirectories:)(v7, 1);
  (*(v5 + 8))(v7, v4);

  v29 = v9;
  v30 = [v8 v9[433]];
  v31 = sub_2150A36B0();
  v62[0] = 0;
  v32 = [v30 removeItemAtURL:v31 error:v62];

  if (v32)
  {
    v33 = v62[0];
  }

  else
  {
    v34 = v62[0];
    v35 = sub_2150A35D0();

    swift_willThrow();
  }

  v36 = [v8 v29 + 1595];
  v37 = sub_2150A36B0();
  v38 = sub_2150A36B0();
  v62[0] = 0;
  v39 = [v36 moveItemAtURL:v37 toURL:v38 error:v62];

  v40 = v62[0];
  if (!v39)
  {
    v24 = v60;
LABEL_15:
    v61 = v40;
    v42 = v40;
    v43 = sub_2150A35D0();

    swift_willThrow();
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v44 = sub_2150A3F30();
    __swift_project_value_buffer(v44, qword_280C242C0);

    v45 = v43;
    v46 = sub_2150A3F10();
    v47 = sub_2150A5560();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v62[0] = v49;
      *v48 = 136315394;
      *(v48 + 4) = sub_214F7723C(v59, v24, v62);
      *(v48 + 12) = 2080;
      swift_getErrorValue();
      v50 = sub_2150A6440();
      v52 = sub_214F7723C(v50, v51, v62);

      *(v48 + 14) = v52;
      _os_log_impl(&dword_214D51000, v46, v47, "Failed to write new paper bundle %s version: %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v49, -1, -1);
      MEMORY[0x216064AF0](v48, -1, -1);
    }

    else
    {
    }

    return;
  }

  v41 = v40;
}

void ICSystemPaperDocument.copyAndArchivePaperBundle(to:)(char *a1)
{
  v3 = v1;
  v141 = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v115 - v6;
  v8 = sub_2150A3A00();
  v126 = *(v8 - 8);
  v127 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2150A3750();
  v131 = *(v11 - 8);
  v132 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v125 = &v115 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v122 = &v115 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v130 = &v115 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v115 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v115 - v24;
  v124 = v3;
  v26 = *&v3[OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment];
  v27 = [v26 paperBundleModel];
  if (v27)
  {
    v28 = v27;
    v117 = v7;
    v116 = v14;
    v128 = v2;
    v129 = v25;
    v29 = objc_opt_self();
    v30 = [v29 defaultManager];
    v118 = a1;
    v31 = sub_2150A36B0();
    v32 = [v30 ic:v31 temporaryDirectoryAppropriateForDestination:?];

    if (v32)
    {
      v33 = v28;
      v34 = v129;
      sub_2150A36F0();

      v35 = [v29 defaultManager];
      v119 = v33;
      v36 = [v33 paperBundleURL];
      sub_2150A36F0();

      sub_2150A3700();
      v37 = *(v131 + 8);
      v121 = v131 + 8;
      v120 = v37;
      v37(v23, v132);
      v38 = sub_2150A4A90();

      v39 = [v35 fileExistsAtPath_];

      if (v39)
      {
        _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
        sub_2150A3990();
        (*(v126 + 8))(v10, v127);
        v40 = v130;
        sub_2150A36C0();

        v41 = [v26 attachmentType];
        v42 = v128;
        v43 = v34;
        if ((v41 - 14) >= 2)
        {
          v44 = v119;
          if (v41 != 13)
          {
            sub_2150A5E10();
            __break(1u);
            return;
          }

          v69 = [v119 paperBundleURL];
          v46 = v122;
          sub_2150A36F0();

          if ([v26 isPasswordProtected])
          {
            v71 = sub_214FE300C(&qword_27CA43518, v70, type metadata accessor for ICSystemPaperDocument);
            v72 = v124;
            v73 = v124;
            v74 = ObjectType;
          }

          else
          {
            v74 = 0;
            v71 = 0;
            v72 = 0;
            v137 = 0;
            v138 = 0;
          }

          v139 = v74;
          v140 = v71;
          v135 = 0;
          v136 = v72;
          v133 = 0u;
          v134 = 0u;
          v67 = &qword_27CA42DF0;
          v68 = &unk_2150C4DE0;
        }

        else
        {
          v44 = v119;
          v45 = [v119 paperBundleURL];
          v46 = v125;
          sub_2150A36F0();

          if ([v26 isPasswordProtected])
          {
            v48 = sub_214FE300C(&qword_27CA43518, v47, type metadata accessor for ICSystemPaperDocument);
            v49 = v124;
            v50 = v124;
            v51 = ObjectType;
          }

          else
          {
            v51 = 0;
            v48 = 0;
            v49 = 0;
            v137 = 0;
            v138 = 0;
          }

          v139 = v51;
          v140 = v48;
          v135 = 0;
          v136 = v49;
          v133 = 0u;
          v134 = 0u;
          v67 = &unk_27CA436A8;
          v68 = &unk_2150C7660;
        }

        sub_214FDB994(v46, &v136, v40, &v133, v67, v68);
        if (v42)
        {

          sub_214F302D4(&v133, &qword_27CA43510);
          v75 = v132;
          v76 = v120;
          v120(v46, v132);
          v76(v40, v75);
          v76(v43, v75);
          sub_214F302D4(&v136, &qword_27CA43510);
        }

        else
        {
          v128 = v29;
          sub_214F302D4(&v133, &qword_27CA43510);
          v77 = v46;
          v78 = v132;
          v120(v77, v132);
          sub_214F302D4(&v136, &qword_27CA43510);
          v79 = v131;
          v80 = *(v131 + 16);
          v81 = v117;
          v80(v117, v130, v78);
          (*(v79 + 56))(v81, 0, 1, v78);
          v82 = sub_2150A36B0();
          if ((*(v79 + 48))(v81, 1, v78) == 1)
          {
            v83 = 0;
          }

          else
          {
            v83 = sub_2150A36B0();
            v120(v81, v78);
          }

          v84 = [objc_allocWithZone(MEMORY[0x277D36190]) initWithDestinationURL:v82 baseURL:v83];

          [v84 setUsesCompression_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B0);
          v85 = (*(v131 + 80) + 32) & ~*(v131 + 80);
          v86 = swift_allocObject();
          *(v86 + 16) = xmmword_2150C25D0;
          v87 = v130;
          v80((v86 + v85), v130, v78);
          v88 = sub_2150A4EB0();

          v136 = 0;
          v89 = [v84 writeURLs:v88 error:&v136];

          if (v89)
          {
            v132 = v84;
            v90 = qword_280C242B8;
            v91 = v136;
            if (v90 != -1)
            {
              swift_once();
            }

            v92 = sub_2150A3F30();
            __swift_project_value_buffer(v92, qword_280C242C0);
            v93 = v116;
            v80(v116, v118, v78);
            v94 = sub_2150A3F10();
            v95 = sub_2150A5550();
            v96 = os_log_type_enabled(v94, v95);
            v97 = v119;
            if (v96)
            {
              v98 = swift_slowAlloc();
              v99 = swift_slowAlloc();
              v136 = v99;
              *v98 = 136315138;
              sub_214FE300C(&qword_280C24468, 255, MEMORY[0x277CC9260]);
              v100 = sub_2150A6100();
              v102 = v101;
              v120(v93, v78);
              v103 = sub_214F7723C(v100, v102, &v136);
              v97 = v119;

              *(v98 + 4) = v103;
              _os_log_impl(&dword_214D51000, v94, v95, "Successfully archived paper bundle to %s", v98, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v99);
              MEMORY[0x216064AF0](v99, -1, -1);
              MEMORY[0x216064AF0](v98, -1, -1);
            }

            else
            {

              v120(v93, v78);
            }

            v106 = [v128 defaultManager];
            v107 = v130;
            v108 = sub_2150A36B0();
            v136 = 0;
            v109 = [v106 removeItemAtURL:v108 error:&v136];

            v110 = v132;
            if (v109)
            {
              v111 = v136;
            }

            else
            {
              v112 = v136;
              v113 = sub_2150A35D0();

              swift_willThrow();
            }

            v105 = v107;
          }

          else
          {
            v104 = v136;
            sub_2150A35D0();

            swift_willThrow();
            v105 = v87;
          }

          v114 = v120;
          v120(v105, v78);
          v114(v129, v78);
        }
      }

      else
      {
        if (qword_280C242B8 != -1)
        {
          swift_once();
        }

        v60 = sub_2150A3F30();
        __swift_project_value_buffer(v60, qword_280C242C0);
        v61 = sub_2150A3F10();
        v62 = sub_2150A5560();
        v63 = os_log_type_enabled(v61, v62);
        v64 = v132;
        v65 = v119;
        if (v63)
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&dword_214D51000, v61, v62, "Cannot archive paper bundle because the paper bundle does not exist", v66, 2u);
          MEMORY[0x216064AF0](v66, -1, -1);
        }

        v120(v129, v64);
      }
    }

    else
    {
      if (qword_280C242B8 != -1)
      {
        swift_once();
      }

      v56 = sub_2150A3F30();
      __swift_project_value_buffer(v56, qword_280C242C0);
      v57 = sub_2150A3F10();
      v58 = sub_2150A5560();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_214D51000, v57, v58, "Cannot archive paper bundle because we cannot create a temporary directory", v59, 2u);
        MEMORY[0x216064AF0](v59, -1, -1);
      }
    }
  }

  else
  {
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v52 = sub_2150A3F30();
    __swift_project_value_buffer(v52, qword_280C242C0);
    v53 = sub_2150A3F10();
    v54 = sub_2150A5560();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_214D51000, v53, v54, "Cannot archive paper bundle because attachment model is missing", v55, 2u);
      MEMORY[0x216064AF0](v55, -1, -1);
    }
  }
}

void sub_214FDB994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v33 = a6;
  v34 = a3;
  v9 = sub_2150A3750();
  v32 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  v13 = [v12 sharedState];
  [v13 beginBlockingDeauthentication];

  sub_2150A4890();
  v14 = MEMORY[0x216061410](1, a2);
  v15 = MEMORY[0x216061410](1, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v17 = v34;
  v16 = v35;
  sub_2150A4730();
  if (v16)
  {

    v18 = [v12 sharedState];
  }

  else
  {
    v33 = 0;
    v19 = v32;
    v35 = v12;
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v20 = sub_2150A3F30();
    __swift_project_value_buffer(v20, qword_280C242C0);
    v21 = v11;
    (*(v19 + 16))(v11, v17, v9);
    v22 = sub_2150A3F10();
    v23 = sub_2150A5550();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36 = v34;
      *v24 = 136315138;
      sub_214FE300C(&qword_280C24468, 255, MEMORY[0x277CC9260]);
      v25 = sub_2150A6100();
      v26 = v21;
      v28 = v27;
      (*(v19 + 8))(v26, v9);
      v29 = sub_214F7723C(v25, v28, &v36);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_214D51000, v22, v23, "Wrote copied PaperKit bundle to: %s", v24, 0xCu);
      v30 = v34;
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x216064AF0](v30, -1, -1);
      MEMORY[0x216064AF0](v24, -1, -1);
    }

    else
    {

      (*(v19 + 8))(v21, v9);
    }

    v18 = [v35 sharedState];
  }

  v31 = v18;
  [v31 endBlockingDeauthentication];
}

void ICSystemPaperDocument.restorePaperBundle(from:)()
{
  v2 = v0;
  v101 = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v3 = sub_2150A3A00();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_2150A3750();
  v7 = *(v90 - 8);
  v8 = MEMORY[0x28223BE20](v90);
  v87 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v84 = &v80 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v80 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v91 = &v80 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v80 - v17;
  v86 = *&v2[OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment];
  v92 = [v86 paperBundleModel];
  if (v92)
  {
    v88 = v18;
    v89 = v7;
    v83 = v1;
    v82 = objc_opt_self();
    v19 = [v82 defaultManager];
    v20 = sub_2150A36B0();
    v21 = [v19 ic:v20 temporaryDirectoryAppropriateForDestination:?];

    if (v21)
    {
      v22 = v88;
      sub_2150A36F0();

      _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
      sub_2150A3990();
      (*(v4 + 8))(v6, v3);
      v23 = v91;
      sub_2150A36C0();

      v24 = objc_allocWithZone(MEMORY[0x277D36188]);
      v25 = v23;
      v26 = sub_2150A36B0();
      v27 = sub_2150A36B0();
      v28 = [v24 initWithSourceURL:v26 destinationURL:v27];

      [v28 setWritesTemporaryFilesInsideDestination_];
      [v28 setOverwrite_];
      [v28 setSkipsInvisibleHeaders_];
      *&v98 = 0;
      if (![v28 unarchiveResultURLs:0 error:&v98])
      {
        v53 = v98;
        sub_2150A35D0();

        swift_willThrow();
        v54 = v90;
        v55 = *(v89 + 8);
        v55(v25, v90);
        v55(v22, v54);
        return;
      }

      v81 = v28;
      v29 = qword_280C242B8;
      v30 = v98;
      v31 = v90;
      if (v29 != -1)
      {
        swift_once();
      }

      v32 = sub_2150A3F30();
      __swift_project_value_buffer(v32, qword_280C242C0);
      v33 = v89;
      (*(v89 + 16))(v14, v25, v31);
      v34 = sub_2150A3F10();
      v35 = sub_2150A5550();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *&v98 = v80;
        *v36 = 136315138;
        sub_214FE300C(&qword_280C24468, 255, MEMORY[0x277CC9260]);
        v37 = sub_2150A6100();
        v39 = v38;
        v40 = *(v33 + 8);
        v40(v14, v31);
        v41 = sub_214F7723C(v37, v39, &v98);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_214D51000, v34, v35, "Unarchived paper bundle to temporary directory: %s", v36, 0xCu);
        v42 = v80;
        __swift_destroy_boxed_opaque_existential_0(v80);
        MEMORY[0x216064AF0](v42, -1, -1);
        MEMORY[0x216064AF0](v36, -1, -1);
      }

      else
      {

        v40 = *(v33 + 8);
        v40(v14, v31);
      }

      v56 = v83;
      v58 = v86;
      v57 = v87;
      v59 = [v86 attachmentType];
      v60 = v91;
      v61 = v92;
      if ((v59 - 14) >= 2)
      {
        if (v59 != 13)
        {
          sub_2150A5E10();
          __break(1u);
          return;
        }

        v100 = 0;
        v98 = 0u;
        v99 = 0u;
        v69 = [v92 paperBundleURL];
        v57 = v84;
        sub_2150A36F0();

        if ([v58 isPasswordProtected])
        {
          v71 = sub_214FE300C(&qword_27CA43518, v70, type metadata accessor for ICSystemPaperDocument);
          v72 = v2;
          v73 = ObjectType;
        }

        else
        {
          v73 = 0;
          v71 = 0;
          v2 = 0;
          v94 = 0;
          v95 = 0;
        }

        v96 = v73;
        v97 = v71;
        v93 = v2;
        v67 = &qword_27CA42DF0;
        v68 = &unk_2150C4DE0;
      }

      else
      {
        v100 = 0;
        v98 = 0u;
        v99 = 0u;
        v62 = [v92 paperBundleURL];
        sub_2150A36F0();

        if ([v58 isPasswordProtected])
        {
          v64 = sub_214FE300C(&qword_27CA43518, v63, type metadata accessor for ICSystemPaperDocument);
          v65 = v2;
          v66 = ObjectType;
        }

        else
        {
          v66 = 0;
          v64 = 0;
          v2 = 0;
          v94 = 0;
          v95 = 0;
        }

        v96 = v66;
        v97 = v64;
        v93 = v2;
        v67 = &unk_27CA436A8;
        v68 = &unk_2150C7660;
      }

      sub_214FDB994(v60, &v98, v57, &v93, v67, v68);
      if (v56)
      {

        v40(v57, v31);
        sub_214F302D4(&v98, &qword_27CA43510);
        v40(v60, v31);
        v40(v88, v31);
        sub_214F302D4(&v93, &qword_27CA43510);
      }

      else
      {
        v40(v57, v31);
        sub_214F302D4(&v98, &qword_27CA43510);
        sub_214F302D4(&v93, &qword_27CA43510);
        v74 = [v82 defaultManager];
        v75 = sub_2150A36B0();
        *&v98 = 0;
        v76 = [v74 removeItemAtURL:v75 error:&v98];

        if (v76)
        {
          v77 = v98;
        }

        else
        {
          v78 = v98;
          v79 = sub_2150A35D0();

          swift_willThrow();
        }

        v40(v60, v31);
        v40(v88, v31);
      }
    }

    else
    {
      if (qword_280C242B8 != -1)
      {
        swift_once();
      }

      v47 = sub_2150A3F30();
      __swift_project_value_buffer(v47, qword_280C242C0);
      v48 = sub_2150A3F10();
      v49 = sub_2150A5560();
      v50 = os_log_type_enabled(v48, v49);
      v51 = v92;
      if (v50)
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_214D51000, v48, v49, "Cannot archive paper bundle because we cannot create a temporary directory", v52, 2u);
        MEMORY[0x216064AF0](v52, -1, -1);
      }
    }
  }

  else
  {
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v43 = sub_2150A3F30();
    __swift_project_value_buffer(v43, qword_280C242C0);
    v44 = sub_2150A3F10();
    v45 = sub_2150A5560();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_214D51000, v44, v45, "Cannot restore paper bundle because attachment model is missing", v46, 2u);
      MEMORY[0x216064AF0](v46, -1, -1);
    }
  }
}

uint64_t sub_214FDC898(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v7 = sub_2150A3750();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A36F0();
  v11 = a1;
  a5(v10);
  (*(v8 + 8))(v10, v7);

  return 1;
}

void static ICSystemPaperDocument.writePaperBundle<A>(_:model:url:)()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedState];
  [v1 beginBlockingDeauthentication];

  sub_2150A4770();
  sub_2150A4750();
  v2 = [v0 sharedState];
  [v2 endBlockingDeauthentication];
}

uint64_t ICSystemPaperDocument.encrypt(_:)(uint64_t a1, unint64_t a2)
{
  sub_214FE3D14(*(v2 + OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment));
  sub_214FCA120(a1, a2);
  sub_214FE1214(0, 0xF000000000000000);
  sub_214FE1228(0, 0xF000000000000000);
  return a1;
}

uint64_t ICSystemPaperDocument.encrypt(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v16[-v9];
  v11 = *(v2 + OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment);
  v12 = sub_2150A3750();
  v13 = *(v12 - 8);
  (*(v13 + 56))(v10, 1, 1, v12);
  v17 = a1;
  v18 = v10;
  sub_214FE3D14(v11);
  sub_214F43C14(v10, v8, &qword_27CA41D40);
  v14 = *(v13 + 48);
  if (v14(v8, 1, v12) == 1)
  {
    (*(v13 + 16))(a2, a1, v12);
    if (v14(v8, 1, v12) != 1)
    {
      sub_214F302D4(v8, &qword_27CA41D40);
    }
  }

  else
  {
    (*(v13 + 32))(a2, v8, v12);
  }

  return sub_214F302D4(v10, &qword_27CA41D40);
}

void ICSystemPaperDocument.updateGraphDestinations(usingInlineAttachmentIdentifierMap:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43520);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_2150A3750();
  v37 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = *&v3[OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment];
  v18 = [v17 managedObjectContext];
  if (v18)
  {
    v19 = v18;
    v35 = a1;
    v36 = v11;
    MEMORY[0x28223BE20](v18);
    *(&v34 - 2) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43500);
    sub_2150A56D0();

    v20 = v38;
    if (v38)
    {
      v21 = [v17 paperBundleModel];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 paperBundleURL];

        sub_2150A36F0();
        v24 = v37;
        v25 = v14;
        v26 = v36;
        (*(v37 + 32))(v16, v25, v36);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DF0);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA434F0);
        (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
        v28 = sub_2150A4720();
        sub_214F302D4(v10, &qword_27CA43520);
        v29 = swift_allocObject();
        v29[2] = a2;
        v29[3] = a3;
        v30 = v35;
        v29[4] = v4;
        v29[5] = v30;
        v29[6] = v28;
        sub_214D748C8(a2);
        v31 = v4;

        sub_2150A4760();

        (*(v24 + 8))(v16, v26);
        return;
      }
    }
  }

  if (a2)
  {
    sub_214FD7DE0();
    v32 = swift_allocError();
    *v33 = 0;
    a2();
  }
}

void sub_214FDD4B8(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[1] = a6;
  v24 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43520);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA434F0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v23 - v15;
  sub_214F43C14(a1, v12, &qword_27CA43520);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_214F302D4(v12, &qword_27CA43520);
    v17 = v24;
    if (v24)
    {
      sub_214FD7DE0();
      v18 = swift_allocError();
      *v19 = 0;
      v17();
    }
  }

  else
  {
    v20 = (*(v14 + 32))(v16, v12, v13);
    MEMORY[0x28223BE20](v20);
    v23[-2] = a4;
    v23[-1] = a5;
    sub_2150A47D0();
    v21 = swift_allocObject();
    v22 = v24;
    *(v21 + 16) = v24;
    *(v21 + 24) = a3;
    sub_214D748C8(v22);
    sub_2150A46D0();

    (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_214FDD764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a2;
  v64 = a3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43640);
  v68 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v48 - v4;
  v59 = sub_2150A4580();
  v67 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43648);
  MEMORY[0x28223BE20](v6 - 8);
  v74 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43650);
  v49 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v57 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43658);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v65 = &v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43660);
  MEMORY[0x28223BE20](v13 - 8);
  v66 = &v48 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43668);
  v73 = *(v71 - 1);
  MEMORY[0x28223BE20](v71);
  v16 = &v48 - v15;
  v70 = sub_2150A44D0();
  v17 = *(v70 - 1);
  MEMORY[0x28223BE20](v70);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43670);
  v48 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - v21;
  v62 = a1;
  sub_2150A4800();
  sub_2150A44A0();
  v23 = v19;
  v24 = v20;
  (*(v17 + 8))(v23, v70);
  v25 = v66;
  v26 = v71;
  sub_2150A4630();
  (*(v73 + 1))(v16, v26);
  v73 = v22;
  sub_2150A4660();
  v27 = v11 + 48;
  v71 = *(v11 + 48);
  if ((v71)(v25, 1, v10) != 1)
  {
    v30 = *(v11 + 32);
    v29 = v11 + 32;
    v70 = v30;
    v69 = (v49 + 6);
    v52 = (v49 + 4);
    v51 = (v67 + 8);
    v50 = v68 + 1;
    ++v49;
    v68 = (v29 - 24);
    v31 = v65;
    v56 = v10;
    v55 = v29;
    v54 = v24;
    v53 = v27;
    v30(v65, v25, v10);
    while (1)
    {
      v32 = v74;
      sub_2150A46B0();
      if ((*v69)(v32, 1, v8) == 1)
      {
        (*v68)(v31, v10);
        sub_214F302D4(v74, &qword_27CA43648);
      }

      else
      {
        v33 = v57;
        (*v52)(v57, v74, v8);
        v34 = v58;
        v35 = v62;
        sub_2150A47A0();
        v36 = v60;
        sub_2150A4570();
        v37 = (*v51)(v34, v59);
        MEMORY[0x28223BE20](v37);
        v39 = v63;
        v38 = v64;
        *(&v48 - 4) = v35;
        *(&v48 - 3) = v39;
        *(&v48 - 2) = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43678);
        v40 = v8;
        v41 = v61;
        v42 = v72;
        v43 = sub_2150A4640();
        v67 = v43;
        v72 = v42;
        (*v50)(v36, v41);
        v44 = sub_2150A4790();
        v45 = sub_2150A4560();
        sub_2150A4670();
        v45(v75, 0);
        v44(v76, 0);
        v77 = v43;
        v46 = sub_2150A4790();
        v47 = sub_2150A4560();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43680);
        sub_214F43BCC(&qword_27CA43688, &qword_27CA43680);
        v8 = v40;
        v31 = v65;
        v25 = v66;
        sub_2150A4650();
        v47(v75, 0);
        v10 = v56;
        v46(v76, 0);
        (*v49)(v33, v8);
        (*v68)(v31, v10);
        v24 = v54;
      }

      sub_2150A4660();
      if ((v71)(v25, 1, v10) == 1)
      {
        break;
      }

      v70(v31, v25, v10);
    }
  }

  return (*(v48 + 8))(v73, v24);
}

uint64_t sub_214FDE0B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43690);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v18 - v6;
  v8 = sub_2150A4600();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43678);
  sub_2150A47A0();
  sub_214FDE2E8(a2, v14);
  (*(v9 + 8))(v12, v8);
  v15 = sub_2150A48B0();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = sub_214FE300C(&qword_27CA43698, 255, MEMORY[0x277CD9590]);
  return MEMORY[0x216061340](a1, v14, v7, v8, v16);
}

uint64_t sub_214FDE2E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436A0);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = sub_2150A45D0();
  v8 = sub_2150A45E0();
  if (!*(a1 + 16))
  {

    goto LABEL_5;
  }

  sub_214F30094(v8, v9);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_5:
    _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
    sub_2150A3990();
    (*(v5 + 8))(v7, v4);
    goto LABEL_6;
  }

LABEL_6:
  sub_2150A45F0();
  return sub_2150A45C0();
}

Swift::Void __swiftcall ICSystemPaperDocument.removeStrokesFromStyleInventory()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43528);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v74 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43530);
  v87 = *(v5 - 8);
  v88 = v5;
  MEMORY[0x28223BE20](v5);
  v86 = &v74 - v6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43538);
  MEMORY[0x28223BE20](v89);
  v8 = &v74 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43540);
  MEMORY[0x28223BE20](v9 - 8);
  v90 = &v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43548);
  v12 = *(v11 - 8);
  v91 = v11;
  v92 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v85 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v74 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43550);
  MEMORY[0x28223BE20](v17 - 8);
  v81 = &v74 - v18;
  v19 = sub_2150A44D0();
  v78 = *(v19 - 8);
  v79 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43558);
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v77 = &v74 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43520);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v74 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA434F0);
  v83 = *(v26 - 8);
  v84 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = &v74 - v27;
  v29 = *&v0[OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment];
  v30 = [v29 managedObjectContext];
  if (v30)
  {
    v31 = v30;
    v75 = v8;
    v76 = v16;
    v74 = v4;
    MEMORY[0x28223BE20](v30);
    *(&v74 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43500);
    sub_2150A56D0();

    v32 = v93;
    if (v93)
    {
      v33 = [v29 attachmentType];
      if ((v33 - 14) >= 2)
      {
        if (v33 == 13)
        {
          sub_214FD3FE0(v32, v25);
          v38 = v83;
          v39 = v84;
          if ((*(v83 + 48))(v25, 1, v84) == 1)
          {

            sub_214F302D4(v25, &qword_27CA43520);
          }

          else
          {
            (*(v38 + 32))(v28, v25, v39);
            sub_2150A4810();
            v67 = v81;
            sub_2150A44B0();
            (*(v78 + 8))(v21, v79);
            v68 = v80;
            v69 = v82;
            if ((*(v80 + 48))(v67, 1, v82) == 1)
            {
              (*(v38 + 8))(v28, v39);

              sub_214F302D4(v67, &qword_27CA43550);
            }

            else
            {
              v70 = v38;
              v71 = v77;
              (*(v68 + 32))(v77, v67, v69);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43570);
              v72 = (*(v68 + 80) + 32) & ~*(v68 + 80);
              v73 = swift_allocObject();
              *(v73 + 16) = xmmword_2150C25D0;
              (*(v68 + 16))(v73 + v72, v71, v69);
              sub_214FE19BC(v28, v73);

              (*(v68 + 8))(v71, v69);
              (*(v70 + 8))(v28, v39);
            }
          }
        }

        else
        {
          if (qword_280C242B8 != -1)
          {
            swift_once();
          }

          v56 = sub_2150A3F30();
          __swift_project_value_buffer(v56, qword_280C242C0);
          v57 = v1;
          v58 = sub_2150A3F10();
          v59 = sub_2150A5560();

          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v93 = v61;
            *v60 = 136315138;
            v62 = [v29 shortLoggingDescription];
            v63 = sub_2150A4AD0();
            v65 = v64;

            v66 = sub_214F7723C(v63, v65, &v93);

            *(v60 + 4) = v66;
            _os_log_impl(&dword_214D51000, v58, v59, "Can't remove strokes from style inventory - unsupported attachment type: %s", v60, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v61);
            MEMORY[0x216064AF0](v61, -1, -1);
            MEMORY[0x216064AF0](v60, -1, -1);
          }
        }
      }

      else
      {
        v34 = v90;
        _s11NotesShared21ICSystemPaperDocumentC05paperE04with9Coherence7CapsuleVy0D3Kit0dE0VGSgAF9CRContextC_tF_0(v32, v90);
        v35 = v32;
        v37 = v91;
        v36 = v92;
        if ((*(v92 + 48))(v34, 1, v91) == 1)
        {

          sub_214F302D4(v34, &qword_27CA43540);
        }

        else
        {
          v84 = *(v36 + 32);
          v40 = v76;
          v84(v76, v34, v37);
          swift_getKeyPath();
          v41 = v86;
          v90 = v35;
          sub_2150A47C0();

          v42 = v88;
          v43 = *(v87 + 32);
          v44 = v74;
          v43(v74, v41, v88);
          v45 = v92;
          v46 = v85;
          v47 = v40;
          v48 = v91;
          (*(v92 + 16))(v85, v47, v91);
          v49 = (*(v45 + 80) + 16) & ~*(v45 + 80);
          v50 = swift_allocObject();
          v84(v50 + v49, v46, v48);
          v51 = v75;
          v43(v75, v44, v42);
          v52 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43560) + 44));
          *v52 = sub_214FE2754;
          v52[1] = v50;
          v53 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43568) + 36));
          *v53 = sub_214FE1268;
          v53[1] = 0;
          v54 = (v51 + *(v89 + 44));
          *v54 = sub_214FE12D8;
          v54[1] = 0;
          v55 = v76;
          sub_214FE1DF4(v76, v51);

          sub_214F302D4(v51, &qword_27CA43538);
          (*(v92 + 8))(v55, v48);
        }
      }
    }
  }
}

uint64_t sub_214FDF068(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43530);
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - v3, a1);
  return sub_2150A4530();
}

uint64_t sub_214FDF138@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v55 = a2;
  v56 = a1;
  v2 = sub_2150A44D0();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  v47 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43610);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = &v47 - v5;
  v6 = sub_2150A4620();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43618);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v47 - v9;
  v11 = sub_2150A44F0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43620);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43550);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v53 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v47 - v21;
  sub_2150A4680();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43628);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v17, 1, v23) == 1)
  {
    sub_214F302D4(v17, &qword_27CA43620);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43558);
    (*(*(v25 - 8) + 56))(v22, 1, 1, v25);
    v26 = v22;
  }

  else
  {
    sub_2150A4550();
    sub_214FE300C(&qword_27CA435D0, 255, MEMORY[0x277CD94D0]);
    sub_2150A47B0();
    (*(v24 + 8))(v17, v23);
    sub_2150A44E0();
    (*(v12 + 8))(v14, v11);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43558);
    v28 = *(v27 - 8);
    v26 = v22;
    if ((*(v28 + 48))(v22, 1, v27) != 1)
    {
      v43 = v55;
      (*(v28 + 32))(v55, v22, v27);
      return (*(v28 + 56))(v43, 0, 1, v27);
    }
  }

  sub_2150A4690();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43630);
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v10, 1, v29) == 1)
  {
    sub_214F302D4(v10, &qword_27CA43618);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43558);
    v32 = v53;
    (*(*(v31 - 8) + 56))(v53, 1, 1, v31);
    v33 = v54;
LABEL_7:
    sub_2150A46A0();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43638);
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v33, 1, v38) == 1)
    {
      sub_214F302D4(v33, &qword_27CA43610);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43558);
      (*(*(v40 - 8) + 56))(v55, 1, 1, v40);
    }

    else
    {
      sub_2150A4550();
      sub_214FE300C(&qword_27CA435D0, 255, MEMORY[0x277CD94D0]);
      v41 = v47;
      sub_2150A47B0();
      (*(v39 + 8))(v33, v38);
      sub_2150A44B0();
      (*(v48 + 8))(v41, v49);
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43558);
    if ((*(*(v42 - 8) + 48))(v32, 1, v42) != 1)
    {
      sub_214F302D4(v32, &qword_27CA43550);
    }

    goto LABEL_14;
  }

  sub_2150A4550();
  sub_214FE300C(&qword_27CA435D0, 255, MEMORY[0x277CD94D0]);
  v34 = v50;
  sub_2150A47B0();
  (*(v30 + 8))(v10, v29);
  v32 = v53;
  sub_2150A4610();
  (*(v51 + 8))(v34, v52);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43558);
  v36 = *(v35 - 8);
  v37 = (*(v36 + 48))(v32, 1, v35);
  v33 = v54;
  if (v37 == 1)
  {
    goto LABEL_7;
  }

  v45 = v55;
  (*(v36 + 32))(v55, v32, v35);
  (*(v36 + 56))(v45, 0, 1, v35);
LABEL_14:
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43558);
  result = (*(*(v46 - 8) + 48))(v26, 1, v46);
  if (result != 1)
  {
    return sub_214F302D4(v26, &qword_27CA43550);
  }

  return result;
}

uint64_t ICSystemPaperDocument.toFallbackPDFData()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v47 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43540);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43548);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - v12;
  v14 = [*(v0 + OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment) managedObjectContext];
  if (!v14 || (v15 = v14, v51 = v13, v52 = v8, MEMORY[0x28223BE20](v14), *(&v47 - 2) = v0, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43500), sub_2150A56D0(), v15, (v16 = v53) == 0))
  {
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v22 = sub_2150A3F30();
    __swift_project_value_buffer(v22, qword_280C242C0);
    v23 = sub_2150A3F10();
    v24 = sub_2150A5560();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_214D51000, v23, v24, "ICSystemPaperDocument.toFallbackPDFData: Failed to create coherence context.", v25, 2u);
      MEMORY[0x216064AF0](v25, -1, -1);
    }

    return 0;
  }

  _s11NotesShared21ICSystemPaperDocumentC05paperE04with9Coherence7CapsuleVy0D3Kit0dE0VGSgAF9CRContextC_tF_0(v53, v6);
  v17 = v52;
  if ((*(v52 + 48))(v6, 1, v7) == 1)
  {
    sub_214F302D4(v6, &qword_27CA43540);
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v18 = sub_2150A3F30();
    __swift_project_value_buffer(v18, qword_280C242C0);
    v19 = sub_2150A3F10();
    v20 = sub_2150A5560();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_214D51000, v19, v20, "ICSystemPaperDocument.toFallbackPDFData: Failed to create paper document.", v21, 2u);
      MEMORY[0x216064AF0](v21, -1, -1);
    }

    return 0;
  }

  v50 = *(v17 + 32);
  v27 = v51;
  v50(v51, v6, v7);
  v48 = dispatch_semaphore_create(0);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v49 = (v28 + 16);
  sub_2150A50C0();
  v29 = sub_2150A5120();
  (*(*(v29 - 8) + 56))(v3, 0, 1, v29);
  (*(v17 + 16))(v11, v27, v7);
  v30 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v31 = (v9 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 4) = v28;
  v50(&v33[v30], v11, v7);
  *&v33[v31] = v16;
  v34 = v48;
  *&v33[v32] = v48;
  v50 = v28;

  v35 = v34;
  v36 = v16;
  sub_214FD26AC(0, 0, v3, &unk_2150C72F0, v33);

  sub_2150A5690();
  v37 = objc_autoreleasePoolPush();
  v38 = v49;
  swift_beginAccess();
  v39 = *v38;
  if (*v38)
  {
    v40 = qword_27CA41680;
    v41 = v39;
    if (v40 != -1)
    {
      swift_once();
    }

    sub_214FE0678(qword_27CA434E8);
    v42 = sub_2150A4910();

    v43 = [v41 dataRepresentationWithOptions_];

    v44 = v52;
    if (v43)
    {
      v45 = sub_2150A37B0();
    }

    else
    {
      v45 = 0;
    }
  }

  else
  {
    v45 = 0;
    v44 = v52;
  }

  v46 = v51;
  objc_autoreleasePoolPop(v37);

  (*(v44 + 8))(v46, v7);

  return v45;
}

uint64_t sub_214FE01F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA435C8);
  v7[9] = swift_task_alloc();
  v8 = sub_2150A4550();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214FE02F4, 0, 0);
}

uint64_t sub_214FE02F4()
{
  v1 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43548);
  sub_2150A4810();
  v2 = sub_2150A4500();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = sub_214FE300C(&qword_27CA435D0, 255, MEMORY[0x277CD94D0]);
  *v3 = v0;
  v3[1] = sub_214FE0440;
  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[6];
  v7 = v0[7];

  return MEMORY[0x282128208](v7, v8, v5, v6, v4);
}

uint64_t sub_214FE0440(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 112) = a1;

  sub_214F302D4(v5, &qword_27CA435C8);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_214FE05CC, 0, 0);
}

uint64_t sub_214FE05CC()
{
  v1 = v0[14];
  v2 = v0[5];
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;

  sub_2150A56A0();

  v4 = v0[1];

  return v4();
}

uint64_t sub_214FE0678(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA435B0);
    v2 = sub_2150A5EA0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 9) | (8 * __clz(__rbit64(v5)));
    v15 = *(*(a1 + 56) + v13);
    *&v32[0] = *(*(a1 + 48) + v13);
    v14 = *&v32[0];
    type metadata accessor for PDFDocumentWriteOption(0);
    v16 = v14;
    v15;
    swift_dynamicCast();
    sub_214D55670(0, &qword_280C230E8);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_214D72488(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_214D72488(v31, v32);
    result = sub_2150A5A50();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_214D72488(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_214FE0954(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA435A0);
  v2 = MEMORY[0x28223BE20](v42);
  v41 = (&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v40 = &v38 - v4;
  v43 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA435A8);
    v5 = sub_2150A5EA0();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v6 = v43 + 64;
  v7 = 1 << *(v43 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v43 + 64);
  v10 = (v7 + 63) >> 6;
  v38 = v5 + 8;

  v12 = 0;
  v39 = v6;
  while (v9)
  {
    v16 = v12;
LABEL_14:
    v17 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v18 = v17 | (v16 << 6);
    v19 = *(v43 + 56);
    v20 = (*(v43 + 48) + 16 * v18);
    v21 = *v20;
    v22 = v20[1];
    v23 = type metadata accessor for PersistedActivityEvent();
    v24 = v19 + *(*(v23 - 8) + 72) * v18;
    v25 = v42;
    v26 = v40;
    sub_214FE2C94(v24, &v40[*(v42 + 48)]);
    *v26 = v21;
    v26[1] = v22;
    v27 = v26;
    v28 = v41;
    sub_214FB6CE4(v27, v41, &qword_27CA435A0);
    v29 = *(v25 + 48);
    v30 = *v28;
    v31 = v28[1];
    v45 = v23;
    v46 = &protocol witness table for PersistedActivityEvent;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
    sub_214FE3258(v28 + v29, boxed_opaque_existential_1, type metadata accessor for PersistedActivityEvent);
    sub_214D7A458(&v44, v48);
    sub_214D7A458(v48, v49);
    sub_214D7A458(v49, &v47);

    result = sub_214F30094(v30, v31);
    if (v33)
    {
      v13 = (v5[6] + 16 * result);
      *v13 = v30;
      v13[1] = v31;
      v14 = result;

      v15 = v5[7] + 40 * v14;
      __swift_destroy_boxed_opaque_existential_0(v15);
      result = sub_214D7A458(&v47, v15);
    }

    else
    {
      if (v5[2] >= v5[3])
      {
        goto LABEL_20;
      }

      *(v38 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v34 = (v5[6] + 16 * result);
      *v34 = v30;
      v34[1] = v31;
      result = sub_214D7A458(&v47, v5[7] + 40 * result);
      v35 = v5[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_21;
      }

      v5[2] = v37;
    }

    v12 = v16;
    v6 = v39;
  }

  while (1)
  {
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v16 >= v10)
    {

      return v5;
    }

    v9 = *(v6 + 8 * v16);
    ++v12;
    if (v9)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id ICSystemPaperDocument.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICSystemPaperDocument.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_214FE0E28(uint64_t a1, unint64_t a2)
{
  sub_214FE3D14(*(*v2 + OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment));
  sub_214FCA120(a1, a2);
  sub_214FE1214(0, 0xF000000000000000);
  sub_214FE1228(0, 0xF000000000000000);
  return a1;
}

uint64_t sub_214FE0F68(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_214FBE7E4;

  return v6(a1);
}

void sub_214FE1060(uint64_t a1)
{
  v3 = *(sub_2150A3750() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);
  v13 = *(v1 + v7 + 8);
  v14 = *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_214FD7E34(a1, (v1 + v4), v9, v10, v11, v12, v13, v14);
}

void sub_214FE1130(uint64_t a1)
{
  v3 = *(sub_2150A3750() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  sub_214FDA430(a1, (v1 + v4), v6, v7);
}

uint64_t sub_214FE1214(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_214FCA120(a1, a2);
  }

  return a1;
}

uint64_t sub_214FE1228(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_214F7EDE4(a1, a2);
  }

  return a1;
}

uint64_t sub_214FE12D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43550);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_214F43C14(a1, &v10 - v5, &qword_27CA43550);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43558);
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v6, 1, v7);
  if (result != 1)
  {
    return (*(v8 + 32))(a2, v6, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_214FE1400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2150A3A00();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_214FE300C(&qword_280C241B0, 255, MEMORY[0x277CC95F0]);
  v31 = a1;
  v10 = sub_2150A49A0();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_214FE300C(&qword_280C241A8, 255, MEMORY[0x277CC95F0]);
      v19 = sub_2150A4A80();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_215078FB4();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_214FE16B0(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_214FE16B0(int64_t a1)
{
  v3 = sub_2150A3A00();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_2150A5950();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_214FE300C(&qword_280C241B0, 255, MEMORY[0x277CC95F0]);
        v24 = sub_2150A49A0();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_214FE19BC(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v25 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA435D8);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43558);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43550);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA435E0);
  v29[3] = v11;
  v29[4] = sub_214F43BCC(&qword_280C23170, &qword_27CA435E0);
  v29[0] = a2;
  v12 = __swift_project_boxed_opaque_existential_1(v29, v11);
  MEMORY[0x28223BE20](v12);
  v14 = (&v24 - v13);
  (*(v15 + 16))(&v24 - v13);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  *boxed_opaque_existential_1 = *v14;
  boxed_opaque_existential_1[1] = 0;
  v17 = (v5 + 48);
  v18 = (v5 + 32);
  v19 = (v5 + 8);

  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v26, AssociatedTypeWitness);
    sub_2150A5850();
    if ((*v17)(v10, 1, v4) == 1)
    {
      break;
    }

    (*v18)(v7, v10, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA434F0);
    sub_214F43BCC(&qword_280C23190, &qword_27CA43558);
    sub_2150A47E0();
    v20 = objc_allocWithZone(sub_2150A45B0());
    v21 = sub_2150A45A0();
    v22 = [v21 strokes];
    if (!v22)
    {
      sub_2150A48C0();
      sub_2150A4ED0();
      v22 = sub_2150A4EB0();
    }

    [objc_opt_self() removeStrokesFromStyleInventory_];

    (*v19)(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_0(v26);
  return __swift_destroy_boxed_opaque_existential_0(v29);
}

uint64_t sub_214FE1DF4(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA435D8);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43558);
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43550);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43530);
  v11 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v33 = &v32 - v12;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43560) - 8;
  MEMORY[0x28223BE20](v35);
  v14 = &v32 - v13;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43568) - 8;
  MEMORY[0x28223BE20](v34);
  v16 = &v32 - v15;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43538);
  v44 = v32;
  v45 = sub_214F43BCC(&qword_27CA435E8, &qword_27CA43538);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
  sub_214F43C14(a2, boxed_opaque_existential_1, &qword_27CA43538);
  v18 = __swift_project_boxed_opaque_existential_1(v43, v44);
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = __swift_allocate_boxed_opaque_existential_1(v40);
  sub_214FB6CE4(v20, v16, &qword_27CA43568);
  sub_214FB6CE4(v16, v14, &qword_27CA43560);
  (*(v11 + 32))(v33, v14, v36);
  sub_214F43BCC(&qword_27CA435F0, &qword_27CA43530);
  sub_2150A4D60();
  v23 = *(v35 + 52);
  *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA435F8) + 44)) = *&v14[v23];
  v24 = *(v34 + 44);
  *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43600) + 36)) = *&v16[v24];
  v25 = *(v32 + 44);
  *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43608) + 44)) = *&v20[v25];
  v26 = (v37 + 6);
  v27 = (v37 + 4);
  for (++v37; ; (*v37)(v7, v5))
  {
    __swift_mutable_project_boxed_opaque_existential_1(v40, AssociatedTypeWitness);
    sub_2150A5850();
    if ((*v26)(v10, 1, v5) == 1)
    {
      break;
    }

    (*v27)(v7, v10, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43548);
    sub_214F43BCC(&qword_280C23190, &qword_27CA43558);
    sub_2150A47E0();
    v28 = objc_allocWithZone(sub_2150A45B0());
    v29 = sub_2150A45A0();
    v30 = [v29 strokes];
    if (!v30)
    {
      sub_2150A48C0();
      sub_2150A4ED0();
      v30 = sub_2150A4EB0();
    }

    [objc_opt_self() removeStrokesFromStyleInventory_];
  }

  __swift_destroy_boxed_opaque_existential_0(v40);
  return __swift_destroy_boxed_opaque_existential_0(v43);
}

void _s11NotesShared21ICSystemPaperDocumentC12closeContext3forySo6ICNoteC_tFZ_0(void *a1)
{
  v2 = sub_2150A3750();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 paperCoherenceContextURL];
  if (v6)
  {
    v7 = v6;
    sub_2150A36F0();

    sub_2150A4890();
    v8 = sub_2150A4870();
    if (v8)
    {
      v9 = v8;
      sub_2150A4880();
    }

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    if (qword_280C242B8 != -1)
    {
      swift_once();
    }

    v10 = sub_2150A3F30();
    __swift_project_value_buffer(v10, qword_280C242C0);
    v11 = a1;
    v21 = sub_2150A3F10();
    v12 = sub_2150A5560();

    if (os_log_type_enabled(v21, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315138;
      v15 = [v11 loggingDescription];
      v16 = sub_2150A4AD0();
      v18 = v17;

      v19 = sub_214F7723C(v16, v18, &v22);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_214D51000, v21, v12, "No paperCoherenceContextURL available {attachment: %s}", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x216064AF0](v14, -1, -1);
      MEMORY[0x216064AF0](v13, -1, -1);
    }

    else
    {
      v20 = v21;
    }
  }
}

uint64_t sub_214FE2754@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43548) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_214FDF138(v4, a1);
}

uint64_t sub_214FE27E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43548) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_214F53FB0;

  return sub_214FE01F8(a1, v8, v9, v10, v1 + v6, v11, v12);
}

unint64_t sub_214FE2934()
{
  result = qword_27CA43578;
  if (!qword_27CA43578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43578);
  }

  return result;
}

unint64_t sub_214FE298C()
{
  result = qword_27CA43580;
  if (!qword_27CA43580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43580);
  }

  return result;
}

unint64_t sub_214FE29E4()
{
  result = qword_27CA43588;
  if (!qword_27CA43588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43588);
  }

  return result;
}

unint64_t sub_214FE2A3C()
{
  result = qword_27CA43590;
  if (!qword_27CA43590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43590);
  }

  return result;
}

uint64_t sub_214FE2AAC()
{
  result = sub_2150A3750();
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

uint64_t sub_214FE2BDC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_214FE2C40()
{
  result = qword_27CA43598;
  if (!qword_27CA43598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43598);
  }

  return result;
}

uint64_t sub_214FE2C94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistedActivityEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214FE2CF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214F557A8;

  return sub_214FE0F68(a1, v4);
}

uint64_t sub_214FE2DB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214F53FB0;

  return sub_214FE0F68(a1, v4);
}

uint64_t sub_214FE2E84()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x216064AF0);
  }

  return result;
}

uint64_t sub_214FE300C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t objectdestroy_69Tm()
{
  v1 = sub_2150A3750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_214FE31B4(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = *(sub_2150A3750() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4, v1 + v3, v5);
}

uint64_t sub_214FE3258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void __swiftcall ICQuery.filterSelection(_:accountObjectID:)(ICFilterSelection *__return_ptr retstr, NSManagedObjectContext _, NSManagedObjectID accountObjectID)
{
  swift_beginAccess();

  ICQueryType.filterSelection(managedObjectContext:accountObjectID:)(v5, _, accountObjectID);
}

void __swiftcall ICQuery.tagSelection(_:)(ICTagSelection *__return_ptr retstr, NSManagedObjectContext_optional a2)
{
  isa = a2.value.super.isa;
  swift_beginAccess();

  v4.value.super.isa = isa;
  ICQueryType.tagSelection(managedObjectContext:)(v3, v4);
}

uint64_t static ICEncryptionDelegateSupport.encrypt(attachment:data:)(void *a1, uint64_t a2, unint64_t a3)
{
  sub_214FE3D14(a1);
  sub_214FCA120(a2, a3);
  sub_214FE1214(0, 0xF000000000000000);
  sub_214FE1228(0, 0xF000000000000000);
  return a2;
}

void *static ICEncryptionDelegateSupport.decrypt(attachment:data:)(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  if (([a1 ic_isDeallocating] & 1) == 0)
  {
    v6 = [v5 managedObjectContext];
    if (v6)
    {
      v7 = v6;
      if (([v6 ic_isDeallocating] & 1) != 0 || (v8 = objc_msgSend(v7, sel_persistentStoreCoordinator)) == 0)
      {
        v9 = v7;
      }

      else
      {
        v9 = v8;
        v10 = [v8 persistentStores];
        sub_214FE4C20();
        v11 = sub_2150A4ED0();

        if (v11 >> 62)
        {
          v12 = sub_2150A59D0();
        }

        else
        {
          v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v12)
        {
          MEMORY[0x28223BE20](v13);
          sub_214FE3D14(v5);

          sub_214FCA120(a2, a3);
          v5 = a2;
          sub_214FE1214(0, 0xF000000000000000);
          sub_214FE1228(0, 0xF000000000000000);
          return v5;
        }
      }
    }
  }

  if (qword_27CA41690 != -1)
  {
    swift_once();
  }

  v14 = sub_2150A3F30();
  __swift_project_value_buffer(v14, qword_27CA436D8);
  v15 = sub_2150A3F10();
  v16 = sub_2150A5560();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_214D51000, v15, v16, "Failed decrypting because attachment is transitioning", v17, 2u);
    MEMORY[0x216064AF0](v17, -1, -1);
  }

  sub_214FE3FD4();
  swift_allocError();
  *v18 = 0;
  swift_willThrow();
  sub_214FE1228(0, 0xF000000000000000);
  return v5;
}

uint64_t static ICEncryptionDelegateSupport.encrypt(attachment:url:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v16[-v10];
  v12 = sub_2150A3750();
  v13 = *(v12 - 8);
  (*(v13 + 56))(v11, 1, 1, v12);
  v17 = a2;
  v18 = v11;
  sub_214FE3D14(a1);
  sub_214FE4C9C(v11, v9);
  v14 = *(v13 + 48);
  if (v14(v9, 1, v12) == 1)
  {
    (*(v13 + 16))(a3, a2, v12);
    if (v14(v9, 1, v12) != 1)
    {
      sub_214F5C454(v9);
    }
  }

  else
  {
    (*(v13 + 32))(a3, v9, v12);
  }

  return sub_214F5C454(v11);
}

uint64_t sub_214FE3B7C()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA436D8);
  v1 = __swift_project_value_buffer(v0, qword_27CA436D8);
  if (qword_27CA414D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27CA42888);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_214FE3C4C()
{
  v0 = [objc_opt_self() sharedContext];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 workerManagedObjectContext];
  }

  else
  {
    v2 = 0;
  }

  qword_27CA436F0 = v2;
}

void sub_214FE3D14(void *a1)
{
  if (([objc_opt_self() isMainThread] & 1) == 0 && (v2 = objc_msgSend(a1, sel_managedObjectContext)) != 0 && (v3 = v2, v4 = objc_msgSend(v2, sel_concurrencyType), v3, v4 == 2))
  {
    v5 = [a1 managedObjectContext];
    if (v5)
    {
      v6 = v5;
      MEMORY[0x28223BE20](v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43710);
      sub_2150A56D0();
    }
  }

  else
  {
    v7 = [a1 managedObjectContext];
    if (v7)
    {
      v8 = v7;
      MEMORY[0x28223BE20](v7);
      sub_2150A56D0();
    }
  }
}

unint64_t sub_214FE3FD4()
{
  result = qword_27CA436F8;
  if (!qword_27CA436F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA436F8);
  }

  return result;
}

void sub_214FE4028(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, SEL *a5, const char *a6)
{
  if ([a1 isAuthenticated])
  {
    v10 = [a1 cryptoStrategy];
    if (v10 && (v11 = v10, v12 = sub_2150A3790(), v13 = [v11 *a5], v12, swift_unknownObjectRelease(), v13))
    {
      v14 = sub_2150A37B0();
      v16 = v15;

      v17 = *a4;
      v18 = a4[1];
      *a4 = v14;
      a4[1] = v16;
      sub_214FE1228(v17, v18);
    }

    else
    {
      if (qword_27CA41690 != -1)
      {
        swift_once();
      }

      v19 = sub_2150A3F30();
      __swift_project_value_buffer(v19, qword_27CA436D8);
      v20 = a1;
      v21 = sub_2150A3F10();
      v22 = sub_2150A5560();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v30 = v24;
        *v23 = 136315138;
        v25 = [v20 loggingDescription];
        v26 = sub_2150A4AD0();
        v28 = v27;

        v29 = sub_214F7723C(v26, v28, &v30);

        *(v23 + 4) = v29;
        _os_log_impl(&dword_214D51000, v21, v22, a6, v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x216064AF0](v24, -1, -1);
        MEMORY[0x216064AF0](v23, -1, -1);
      }
    }
  }
}

void sub_214FE4254(void *a1, uint64_t a2, uint64_t a3)
{
  v70 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v63 - v10;
  v12 = sub_2150A3750();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v63 - v17;
  if (![a1 isAuthenticated])
  {
    return;
  }

  v19 = [a1 cloudAccount];
  if (!v19)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_8:
    sub_214F5C454(v11);
LABEL_9:
    if (qword_27CA41690 != -1)
    {
      swift_once();
    }

    v23 = sub_2150A3F30();
    __swift_project_value_buffer(v23, qword_27CA436D8);
    v24 = a1;
    v25 = sub_2150A3F10();
    v26 = sub_2150A5560();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v71 = v28;
      *v27 = 136315138;
      v29 = [v24 loggingDescription];
      v30 = sub_2150A4AD0();
      v32 = v31;

      v33 = sub_214F7723C(v30, v32, &v71);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_214D51000, v25, v26, "Failed creating temporary file for encrypting sidecar file for PaperKit attachment: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x216064AF0](v28, -1, -1);
      MEMORY[0x216064AF0](v27, -1, -1);
    }

    return;
  }

  v68 = a3;
  v69 = v3;
  v20 = v19;
  v21 = [v19 temporaryDirectoryURL];

  if (v21)
  {
    sub_2150A36F0();

    v22 = *(v13 + 56);
    v22(v9, 0, 1, v12);
  }

  else
  {
    v22 = *(v13 + 56);
    v22(v9, 1, 1, v12);
  }

  sub_214F48094(v9, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_8;
  }

  v34 = *(v13 + 32);
  v65 = v13 + 32;
  v66 = v22;
  v64 = v34;
  v34(v18, v11, v12);
  v67 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2150C29C0;
  *(v35 + 32) = sub_2150A3700();
  *(v35 + 40) = v36;
  v37 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v38 = [v37 UUIDString];

  v39 = sub_2150A4AD0();
  v41 = v40;

  *(v35 + 48) = v39;
  *(v35 + 56) = v41;
  v42 = sub_2150A4EB0();

  v43 = [v67 fileURLWithPathComponents_];

  if (!v43)
  {
    (*(v13 + 8))(v18, v12);
    goto LABEL_9;
  }

  sub_2150A36F0();

  v44 = [a1 cryptoStrategy];
  if (v44 && (v45 = v44, v46 = sub_2150A36B0(), v47 = sub_2150A36B0(), v48 = [v45 encryptSidecarFileFromURL:v46 toURL:v47], swift_unknownObjectRelease(), v46, v47, (v48 & 1) != 0))
  {
    (*(v13 + 8))(v18, v12);
    v49 = v68;
    sub_214F5C454(v68);
    v64(v49, v16, v12);
    v66(v49, 0, 1, v12);
  }

  else
  {
    if (qword_27CA41690 != -1)
    {
      swift_once();
    }

    v50 = sub_2150A3F30();
    __swift_project_value_buffer(v50, qword_27CA436D8);
    v51 = a1;
    v52 = sub_2150A3F10();
    v53 = sub_2150A5560();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v71 = v70;
      *v54 = 136315138;
      v55 = [v51 loggingDescription];
      LODWORD(v68) = v53;
      v56 = v55;
      v57 = sub_2150A4AD0();
      v59 = v58;

      v60 = sub_214F7723C(v57, v59, &v71);

      *(v54 + 4) = v60;
      _os_log_impl(&dword_214D51000, v52, v68, "Failed encrypting sidecar file for PaperKit attachment: %s", v54, 0xCu);
      v61 = v70;
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x216064AF0](v61, -1, -1);
      MEMORY[0x216064AF0](v54, -1, -1);
    }

    v62 = *(v13 + 8);
    v62(v16, v12);
    v62(v18, v12);
  }
}

void sub_214FE498C(void *a1@<X0>, void **a2@<X1>, _BYTE *a3@<X8>)
{
  if ([a1 ic_obtainPermanentObjectIDIfNecessary])
  {
    v6 = [a1 objectID];
    v7 = *a2;
    *a2 = v6;
  }

  else
  {
    if (qword_27CA41690 != -1)
    {
      swift_once();
    }

    v8 = sub_2150A3F30();
    __swift_project_value_buffer(v8, qword_27CA436D8);
    v9 = a1;
    v10 = sub_2150A3F10();
    v11 = sub_2150A5560();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v14 = [v9 loggingDescription];
      v15 = sub_2150A4AD0();
      v17 = v16;

      v18 = sub_214F7723C(v15, v17, &v19);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_214D51000, v10, v11, "Cannot obtain permanent object ID for PaperKit attachment: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x216064AF0](v13, -1, -1);
      MEMORY[0x216064AF0](v12, -1, -1);
    }
  }

  *a3 = 0;
}

void sub_214FE4B5C(uint64_t a1, void (*a2)(void))
{
  if (qword_27CA41698 != -1)
  {
    swift_once();
  }

  if (qword_27CA436F0)
  {
    v4 = [qword_27CA436F0 objectWithID_];
    if (v4)
    {
      v5 = v4;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        a2();
      }
    }
  }
}

unint64_t sub_214FE4C20()
{
  result = qword_27CA43700;
  if (!qword_27CA43700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA43700);
  }

  return result;
}

uint64_t sub_214FE4C9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_214FE4D30()
{
  result = qword_27CA43708;
  if (!qword_27CA43708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43708);
  }

  return result;
}

uint64_t sub_214FE4DD4@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = 0;
  }

  return result;
}

uint64_t sub_214FE4E3C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v50 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43960);
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v52 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v51 = &v36 - v9;
  v46 = sub_2150A3A00();
  v10 = *(v46 - 8);
  result = MEMORY[0x28223BE20](v46);
  v49 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 1)
  {
    goto LABEL_43;
  }

  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v13 != 2)
    {
      v14 = 0;
      goto LABEL_12;
    }

    v16 = *(v50 + 16);
    v15 = *(v50 + 24);
    v17 = __OFSUB__(v15, v16);
    v14 = v15 - v16;
    if (!v17)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v13)
  {
    v14 = BYTE6(a2);
LABEL_12:
    v18 = ceil(v14 / a3);
    if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v18 <= -9.22337204e18)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v18 >= 9.22337204e18)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v19 = v18;
    if (v18 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43968);
      v20 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_2150C25D0;
      v22 = (v21 + v20);
      v23 = v50;
      *v22 = v50;
      v22[1] = a2;
      swift_storeEnumTagMultiPayload();
      sub_214FCA120(v23, a2);
      return v21;
    }

    v38 = v3;
    _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
    v37 = v10;
    if (v19 < 1)
    {
      v21 = MEMORY[0x277D84F90];
LABEL_38:
      (*(v37 + 8))(v49, v46);
      return v21;
    }

    v24 = 0;
    v39 = v50 >> 32;
    v40 = BYTE6(a2);
    v41 = (v10 + 16);
    v21 = MEMORY[0x277D84F90];
    v43 = a2 >> 62;
    v44 = a2;
    v42 = a3;
    v45 = v19;
    while (1)
    {
      result = v24 * a3;
      if ((v24 * a3) >> 64 != (v24 * a3) >> 63)
      {
        break;
      }

      if (v13 > 1)
      {
        if (v13 == 2)
        {
          v25 = *(v50 + 24);
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = v40;
        if (v13)
        {
          v25 = v39;
        }
      }

      if (__OFADD__(result, a3))
      {
        goto LABEL_41;
      }

      if (result + a3 >= v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = result + a3;
      }

      if (v26 < result)
      {
        goto LABEL_42;
      }

      v27 = sub_2150A37D0();
      v29 = v28;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43718);
      v31 = v30[12];
      v32 = v30[16];
      v33 = v51;
      v34 = (v51 + v30[20]);
      (*v41)(v51, v49, v46);
      *(v33 + v31) = v24;
      *(v33 + v32) = v19;
      *v34 = v27;
      v34[1] = v29;
      swift_storeEnumTagMultiPayload();
      sub_214F43C14(v33, v52, &qword_27CA43960);
      sub_214FCA120(v27, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_215060474(0, *(v21 + 16) + 1, 1, v21);
      }

      v13 = *(v21 + 16);
      v35 = *(v21 + 24);
      a3 = v42;
      if (v13 >= v35 >> 1)
      {
        v21 = sub_215060474(v35 > 1, v13 + 1, 1, v21);
      }

      v19 = v45;
      sub_214F7EDE4(v27, v29);
      sub_214FEF108(v51);
      *(v21 + 16) = v13 + 1;
      sub_214FEF170(v52, v21 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v13);
      ++v24;
      LODWORD(v13) = v43;
      if (v19 == v24)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  LODWORD(v14) = HIDWORD(v50) - v50;
  if (!__OFSUB__(HIDWORD(v50), v50))
  {
    v14 = v14;
    goto LABEL_12;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_214FE5310(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v48 = a1;
  v47 = type metadata accessor for MessageChunking.Message();
  v5 = *(v47 - 8);
  v6 = MEMORY[0x28223BE20](v47);
  v44 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v43 = &v35 - v8;
  v45 = sub_2150A3A00();
  result = MEMORY[0x28223BE20](v45);
  v46 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 1)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(a2);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v12 != 2)
  {
    v13 = 0;
    goto LABEL_12;
  }

  v15 = *(v48 + 16);
  v14 = *(v48 + 24);
  v16 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v16)
  {
    __break(1u);
LABEL_9:
    LODWORD(v13) = HIDWORD(v48) - v48;
    if (__OFSUB__(HIDWORD(v48), v48))
    {
LABEL_41:
      __break(1u);
      return result;
    }

    v13 = v13;
  }

LABEL_12:
  v17 = ceil(v13 / a3);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v18 = v17;
  if (v17 == 1)
  {
    sub_2150A6110();
    swift_allocObject();
    v19 = sub_2150A4EF0();
    v20 = v48;
    *v21 = v48;
    v21[1] = a2;
    swift_storeEnumTagMultiPayload();
    sub_214F59104();
    sub_214FCA120(v20, a2);
    return v19;
  }

  v36 = v10;
  v42 = a2;
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  v50 = sub_2150A4F40();
  if (v18 >= 1)
  {
    v22 = 0;
    v37 = v48 >> 32;
    v38 = BYTE6(v42);
    v40 = (v5 + 16);
    v41 = (v36 + 16);
    v39 = (v5 + 8);
    while (1)
    {
      result = v22 * a3;
      if ((v22 * a3) >> 64 != (v22 * a3) >> 63)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v23 = *(v48 + 24);
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = v38;
        if (v12)
        {
          v23 = v37;
        }
      }

      if (__OFADD__(result, a3))
      {
        goto LABEL_35;
      }

      if (result + a3 >= v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = result + a3;
      }

      if (v24 < result)
      {
        goto LABEL_36;
      }

      v49 = sub_2150A37D0();
      v26 = v25;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43718);
      v28 = v27[12];
      v29 = a3;
      v30 = v27[16];
      v31 = v12;
      v32 = v43;
      v33 = &v43[v27[20]];
      (*v41)(v43, v46, v45);
      *&v32[v28] = v22;
      *&v32[v30] = v18;
      a3 = v29;
      *v33 = v49;
      v33[1] = v26;
      v12 = v31;
      v34 = v47;
      swift_storeEnumTagMultiPayload();
      (*v40)(v44, v32, v34);
      sub_2150A4FD0();
      sub_2150A4F90();
      (*v39)(v32, v34);
      if (v18 == ++v22)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_32:
  (*(v36 + 8))(v46, v45);
  return v50;
}

uint64_t static MessageChunking.encodeAndChunk<A>(_:size:)(uint64_t a1, uint64_t a2)
{
  sub_2150A3530();
  swift_allocObject();
  sub_2150A3520();
  v4 = sub_2150A3510();
  if (v2)
  {
    v6 = v2;
  }

  else
  {
    v7 = v4;
    v8 = v5;
    v6 = sub_214FE5310(v4, v5, a2);
    sub_214F7EDE4(v7, v8);
  }

  return v6;
}

uint64_t sub_214FE5874()
{
  v0 = sub_2150A5EE0();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_214FE58C8(char a1)
{
  if (a1)
  {
    return 1953653104;
  }

  else
  {
    return 1886220131;
  }
}

BOOL sub_214FE58E8()
{
  v0 = sub_2150A5EE0();

  return v0 != 0;
}

uint64_t sub_214FE5930()
{
  v0 = sub_2150A5EE0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_214FE5998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_214FE5A0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_214FE5A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_214FE5AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_214FE5B58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214FE5874();
  *a1 = result;
  return result;
}

uint64_t sub_214FE5B88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_214FE58C8(*v1);
  *a1 = result;
  a1[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_214FE5BD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214FE5874();
  *a1 = result;
  return result;
}

uint64_t sub_214FE5C00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214F7F128();
  *a1 = result;
  return result;
}

uint64_t sub_214FE5C34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_214FE5C88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_214FE5CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_214FE5D50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_214FE5DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_214FE5E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_214FE5E9C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_214FE58E8();
  *a1 = result;
  return result;
}

BOOL sub_214FE5EF4@<W0>(_BYTE *a1@<X8>)
{
  result = sub_214FE58E8();
  *a1 = result;
  return result;
}

uint64_t sub_214FE5F20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214F94834();
  *a1 = result & 1;
  return result;
}

uint64_t sub_214FE5F58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_214FE5FAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_214FE6000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_214FE6074(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_214FE60E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_214FE6150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_214FE61C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214FE5930();
  *a1 = result;
  return result;
}

uint64_t sub_214FE61F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_214FE5980(*v1);
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

uint64_t sub_214FE6240@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214FE597C();
  *a1 = result;
  return result;
}

uint64_t sub_214FE6268@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214FEF0B4();
  *a1 = result;
  return result;
}

uint64_t sub_214FE629C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_214FE62F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t static MessageChunking.Message.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2150A3A00();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MessageChunking.Message();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v49 - v11);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v55 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v16 = &v49 - v15;
  v17 = (&v49 + *(v14 + 48) - v15);
  v58 = v7;
  v18 = *(v7 + 16);
  v18(&v49 - v15, a1, v6);
  v18(v17, a2, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18(v10, v16, v6);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43718);
    v20 = v19[12];
    v21 = *&v10[v20];
    v22 = v19[16];
    v52 = *&v10[v22];
    v53 = v21;
    v23 = v19[20];
    v24 = *&v10[v23];
    v25 = *&v10[v23 + 8];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v55 = v25;
      v50 = *(v17 + v20);
      v51 = v24;
      v49 = *(v17 + v22);
      v27 = *(v17 + v23);
      v26 = *(v17 + v23 + 8);
      v29 = v56;
      v28 = v57;
      v30 = v54;
      (*(v56 + 32))(v54, v17, v57);
      v31 = sub_2150A39B0();
      v32 = *(v29 + 8);
      v32(v10, v28);
      if (v31)
      {
        v33 = v27;
        v34 = v51;
        if (v53 == v50)
        {
          v35 = v26;
          v36 = v55;
          if (v52 == v49)
          {
            v37 = v33;
            v38 = v33;
            v39 = v35;
            v40 = sub_214FEEB80(v51, v55, v38, v35);
            sub_214F7EDE4(v37, v39);
            sub_214F7EDE4(v34, v36);
            v32(v54, v28);
LABEL_16:
            v43 = v58;
            goto LABEL_17;
          }

          v32(v54, v28);
          sub_214F7EDE4(v33, v26);
          v46 = v34;
          v47 = v36;
LABEL_15:
          sub_214F7EDE4(v46, v47);
          v40 = 0;
          goto LABEL_16;
        }

        v32(v54, v28);
        sub_214F7EDE4(v33, v26);
        v46 = v34;
      }

      else
      {
        v32(v30, v28);
        sub_214F7EDE4(v27, v26);
        v46 = v51;
      }

      v47 = v55;
      goto LABEL_15;
    }

    sub_214F7EDE4(v24, v25);
    (*(v56 + 8))(v10, v57);
  }

  else
  {
    v18(v12, v16, v6);
    v41 = *v12;
    v42 = v12[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v44 = *v17;
      v45 = v17[1];
      v40 = sub_214FEEB80(v41, v42, *v17, v45);
      sub_214F7EDE4(v44, v45);
      sub_214F7EDE4(v41, v42);
      goto LABEL_16;
    }

    sub_214F7EDE4(v41, v42);
  }

  v40 = 0;
  v43 = v55;
  v6 = TupleTypeMetadata2;
LABEL_17:
  (*(v43 + 8))(v16, v6);
  return v40 & 1;
}

uint64_t MessageChunking.Message.encode(to:)(void *a1, uint64_t a2)
{
  v45 = type metadata accessor for MessageChunking.Message.PartialCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v54 = sub_2150A60C0();
  v46 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = v39 - v4;
  v44 = sub_2150A3A00();
  v51 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v49 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MessageChunking.Message.CompleteCodingKeys();
  v39[1] = swift_getWitnessTable();
  v39[2] = v6;
  v7 = sub_2150A60C0();
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v40 = v39 - v9;
  v10 = *(a2 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = (v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MessageChunking.Message.CodingKeys();
  swift_getWitnessTable();
  v47 = sub_2150A60C0();
  v52 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v14 = v39 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2150A65B0();
  (*(v10 + 16))(v12, v48, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43718);
    v48 = *(v12 + v15[12]);
    v16 = *(v12 + v15[16]);
    v17 = (v12 + v15[20]);
    v19 = *v17;
    v18 = v17[1];
    v20 = v12;
    v21 = v44;
    (*(v51 + 32))(v49, v20, v44);
    LOBYTE(v55) = 1;
    v22 = v47;
    sub_2150A6010();
    LOBYTE(v55) = 0;
    sub_214FEF250(&qword_280C241B8, MEMORY[0x277CC95F0]);
    v23 = v50;
    sub_2150A60A0();
    if (v23)
    {
      sub_214F7EDE4(v19, v18);
      (*(v46 + 8))(v53, v54);
      (*(v51 + 8))(v49, v21);
      return (*(v52 + 8))(v14, v22);
    }

    v45 = v16;
    v31 = v19;
    v50 = v14;
    v32 = v49;
    LOBYTE(v55) = 1;
    sub_2150A6090();
    v34 = v22;
    LOBYTE(v55) = 2;
    sub_2150A6090();
    v35 = v18;
    v36 = v31;
    v55 = v31;
    v56 = v35;
    v57 = 3;
    sub_214FEED30();
    sub_2150A60A0();
    v38 = v50;
    v37 = v51;
    (*(v46 + 8))(v53, v54);
    (*(v37 + 8))(v32, v21);
    (*(v52 + 8))(v38, v34);
    v29 = v36;
    v30 = v35;
  }

  else
  {
    v24 = *v12;
    v25 = v12[1];
    LOBYTE(v55) = 0;
    v26 = v40;
    v27 = v47;
    sub_2150A6010();
    v55 = v24;
    v56 = v25;
    sub_214FEED30();
    v28 = v42;
    sub_2150A60A0();
    (*(v41 + 8))(v26, v28);
    (*(v52 + 8))(v14, v27);
    v29 = v24;
    v30 = v25;
  }

  return sub_214F7EDE4(v29, v30);
}

uint64_t MessageChunking.Message.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v66 = a2;
  v3 = type metadata accessor for MessageChunking.Message.PartialCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v64 = v3;
  v58 = sub_2150A5FE0();
  v59 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v68 = &v52 - v4;
  v5 = type metadata accessor for MessageChunking.Message.CompleteCodingKeys();
  v60 = swift_getWitnessTable();
  v61 = v5;
  v57 = sub_2150A5FE0();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v62 = &v52 - v6;
  type metadata accessor for MessageChunking.Message.CodingKeys();
  v70 = swift_getWitnessTable();
  v69 = sub_2150A5FE0();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v8 = &v52 - v7;
  v9 = type metadata accessor for MessageChunking.Message();
  v65 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v52 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v52 - v16;
  v18 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v19 = v71;
  sub_2150A6590();
  if (!v19)
  {
    v53 = v15;
    v55 = v12;
    v54 = v17;
    v20 = v69;
    v70 = v9;
    v71 = v8;
    *&v72 = sub_2150A5FD0();
    sub_2150A4FD0();
    swift_getWitnessTable();
    *&v74 = sub_2150A5920();
    *(&v74 + 1) = v21;
    *&v75 = v22;
    *(&v75 + 1) = v23;
    sub_2150A5910();
    swift_getWitnessTable();
    sub_2150A5420();
    v24 = v72;
    if (v72 == 2 || (v52 = v74, v72 = v74, v73 = v75, (sub_2150A5450() & 1) == 0))
    {
      v26 = sub_2150A5C20();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8);
      v29 = v71;
      *v28 = v70;
      sub_2150A5F20();
      sub_2150A5BF0();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
      (*(v67 + 8))(v29, v20);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v24)
      {
        LOBYTE(v72) = 1;
        v25 = v71;
        sub_2150A5F10();
        sub_2150A3A00();
        LOBYTE(v72) = 0;
        sub_214FEF250(&qword_27CA43008, MEMORY[0x277CC95F0]);
        v34 = v58;
        sub_2150A5FC0();
        v35 = v67;
        LOBYTE(v72) = 1;
        v38 = sub_2150A5FB0();
        v39 = v59;
        v41 = v38;
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43718);
        *&v55[*(v42 + 48)] = v41;
        LOBYTE(v72) = 2;
        v43 = sub_2150A5FB0();
        v44 = *(v42 + 64);
        v45 = v55;
        *&v55[v44] = v43;
        LOBYTE(v72) = 3;
        sub_214FEED84();
        v46 = v68;
        sub_2150A5FC0();
        (*(v39 + 8))(v46, v34);
        (*(v35 + 8))(v25, v69);
        swift_unknownObjectRelease();
        v47 = v45;
        v48 = v70;
        swift_storeEnumTagMultiPayload();
        v49 = *(v65 + 32);
        v50 = v54;
        v49(v54, v47, v48);
        v51 = v66;
      }

      else
      {
        LOBYTE(v72) = 0;
        v30 = v62;
        v31 = v71;
        sub_2150A5F10();
        v32 = v65;
        v51 = v66;
        sub_214FEED84();
        v36 = v57;
        sub_2150A5FC0();
        v37 = v67;
        (*(v56 + 8))(v30, v36);
        (*(v37 + 8))(v31, v20);
        swift_unknownObjectRelease();
        v40 = v53;
        *v53 = v72;
        v48 = v70;
        swift_storeEnumTagMultiPayload();
        v49 = *(v32 + 32);
        v50 = v54;
        v49(v54, v40, v48);
      }

      v49(v51, v50, v48);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v76);
}