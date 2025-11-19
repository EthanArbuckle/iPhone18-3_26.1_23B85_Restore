uint64_t sub_243AFA550()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243AFA588()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243AFA6C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id CSLogForCategory(uint64_t a1)
{
  if (CSLogForCategory_onceToken[0] != -1)
  {
    CSLogForCategory_cold_1();
  }

  v2 = CSLogForCategory_logObjects[a1];

  return v2;
}

uint64_t __CSLogForCategory_block_invoke()
{
  CSLogForCategory_logObjects[0] = os_log_create(CSLogSubsystem, "general");

  return MEMORY[0x2821F96F8]();
}

Swift::Bool __swiftcall String.cs_hasExtension(_:)(Swift::String a1)
{
  v3 = HIBYTE(a1._object) & 0xF;
  if ((a1._object & 0x2000000000000000) == 0)
  {
    v3 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  v5 = v1;
  v6 = sub_243B18DCC();
  if (sub_243B18DCC() >= v6)
  {
    return 0;
  }

  v7 = sub_243B18DCC();
  sub_243AFBC40(v7, v5, v4);

  sub_243AFBCFC();
  sub_243AFBD50();
  v8 = sub_243B18ECC();

  return v8 == 0;
}

uint64_t sub_243AFB86C(uint64_t a1, id *a2)
{
  result = sub_243B18D6C();
  *a2 = 0;
  return result;
}

uint64_t sub_243AFB8E4(uint64_t a1, id *a2)
{
  v3 = sub_243B18D7C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_243AFB964@<X0>(uint64_t *a1@<X8>)
{
  sub_243B18D8C();
  v2 = sub_243B18D5C();

  *a1 = v2;
  return result;
}

uint64_t sub_243AFB9A8()
{
  v1 = *v0;
  v2 = sub_243B18D8C();
  v3 = MEMORY[0x245D483C0](v2);

  return v3;
}

uint64_t sub_243AFB9E4()
{
  v1 = *v0;
  sub_243B18D8C();
  sub_243B18DBC();
}

uint64_t sub_243AFBA38()
{
  v1 = *v0;
  sub_243B18D8C();
  sub_243B18F7C();
  sub_243B18DBC();
  v2 = sub_243B18F8C();

  return v2;
}

uint64_t sub_243AFBAAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_243B18D8C();
  v6 = v5;
  if (v4 == sub_243B18D8C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_243B18F5C();
  }

  return v9 & 1;
}

uint64_t sub_243AFBB34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_243B18D5C();

  *a2 = v5;
  return result;
}

uint64_t sub_243AFBB7C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_243B18D8C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_243AFBBA8(uint64_t a1)
{
  v2 = sub_243AFBEA8(&qword_27EDA1728);
  v3 = sub_243AFBEA8(&qword_27EDA1730);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_243AFBC40(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = sub_243B18DDC();
  if (v5)
  {
    v4 = 15;
  }

  if (4 * v3 < v4 >> 14)
  {
    goto LABEL_12;
  }

  return MEMORY[0x2821FBFB0]();
}

unint64_t sub_243AFBCFC()
{
  result = qword_27EDA16E0;
  if (!qword_27EDA16E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA16E0);
  }

  return result;
}

unint64_t sub_243AFBD50()
{
  result = qword_27EDA16E8;
  if (!qword_27EDA16E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA16E8);
  }

  return result;
}

void sub_243AFBDF4(uint64_t a1, unint64_t *a2)
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

uint64_t sub_243AFBEA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_243AFBF20()
{
  result = sub_243AFBF40();
  qword_2815090B0 = result;
  return result;
}

id sub_243AFBF40()
{
  v36 = *MEMORY[0x277D85DE8];
  v0 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v1 = sub_243B18D5C();
  v34 = [v0 initWithServiceName_];

  v2 = [objc_opt_self() interfaceWithProtocol_];
  outCount = 0;
  protocol_copyMethodDescriptionList(&unk_2856C7F20, 1, 1, &outCount);
  v3 = outCount;
  if (outCount != 23)
  {
    if (qword_281509090 != -1)
    {
      swift_once();
    }

    v4 = sub_243B18D3C();
    __swift_project_value_buffer(v4, qword_281509098);
    v5 = sub_243B18D1C();
    v6 = sub_243B18EAC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134218240;
      *(v7 + 4) = 23;
      *(v7 + 12) = 2048;
      *(v7 + 14) = v3;
      _os_log_impl(&dword_243AF9000, v5, v6, "SPIHelper function count for allowed classes (%ld) doesn't match the number of functions in the protocol: %ld", v7, 0x16u);
      MEMORY[0x245D489D0](v7, -1, -1);
    }
  }

  v8 = CKErrorUserInfoClasses();
  sub_243B18E7C();

  v9 = sub_243B18E5C();
  [v2 setClasses:v9 forSelector:sel_sharingStatusForWithURLWrapper_withReply_ argumentIndex:1 ofReply:1];

  v10 = sub_243B18E5C();
  [v2 setClasses:v10 forSelector:sel_sharingStatusFor_withReply_ argumentIndex:1 ofReply:1];

  v11 = sub_243B18E5C();
  [v2 setClasses:v11 forSelector:sel_startFileSharingWithURLWrapper_emailAddresses_phoneNumbers_accessType_permissionType_allowOthersToInvite_withReply_ argumentIndex:2 ofReply:1];

  v12 = sub_243B18E5C();
  [v2 setClasses:v12 forSelector:sel_startFileSharingWithURLWrapper_emailAddresses_phoneNumbers_optionsGroups_withReply_ argumentIndex:2 ofReply:1];

  v13 = sub_243B18E5C();
  [v2 setClasses:v13 forSelector:sel_addToCloudKitSharing_containerSetupInfo_emailAddresses_phoneNumbers_accessType_permissionType_allowOthersToInvite_withReply_ argumentIndex:2 ofReply:1];

  v14 = sub_243B18E5C();
  [v2 setClasses:v14 forSelector:sel_addToCloudKitSharing_containerSetupInfo_emailAddresses_phoneNumbers_optionsGroups_withReply_ argumentIndex:2 ofReply:1];

  v15 = sub_243B18E5C();
  [v2 setClasses:v15 forSelector:sel_addToShareFromSharingURL_containerSetupInfo_emailAddresses_phoneNumbers_accessType_permissionType_allowOthersToInvite_withReply_ argumentIndex:2 ofReply:1];

  v16 = sub_243B18E5C();
  [v2 setClasses:v16 forSelector:sel_removeFromShareFromSharingURL_containerSetupInfo_withReply_ argumentIndex:1 ofReply:1];

  v17 = sub_243B18E5C();
  [v2 setClasses:v17 forSelector:sel_removeFromShare_containerSetupInfo_withReply_ argumentIndex:1 ofReply:1];

  v18 = sub_243B18E5C();
  [v2 setClasses:v18 forSelector:sel_removeFromShareForFileURL_withReply_ argumentIndex:1 ofReply:1];

  v19 = sub_243B18E5C();
  [v2 setClasses:v19 forSelector:sel_mailContentFromSharingURL_share_fileURL_appName_appIconData_withReply_ argumentIndex:2 ofReply:1];

  v20 = sub_243B18E5C();
  [v2 setClasses:v20 forSelector:sel_getMetadataFromShareFromSharingURL_containerSetupInfo_withReply_ argumentIndex:1 ofReply:1];

  v21 = sub_243B18E5C();
  [v2 setClasses:v21 forSelector:sel_updateShare_containerSetupInfo_withReply_ argumentIndex:2 ofReply:1];

  v22 = sub_243B18E5C();
  [v2 setClasses:v22 forSelector:sel_currentUserSharingStatusFor_withReply_ argumentIndex:1 ofReply:1];

  v23 = sub_243B18E5C();
  [v2 setClasses:v23 forSelector:sel_addParticipantsToShare_containerSetupInfo_emailAddresses_phoneNumbers_withReply_ argumentIndex:2 ofReply:1];

  v24 = sub_243B18E5C();
  [v2 setClasses:v24 forSelector:sel_addParticipantsToShareWithURLWrapper_share_emailAddresses_phoneNumbers_permissionType_allowOthersToInvite_withReply_ argumentIndex:2 ofReply:1];

  v25 = sub_243B18E5C();
  [v2 setClasses:v25 forSelector:sel_addParticipantsToShareWithURLWrapper_share_emailAddresses_phoneNumbers_optionsGroups_withReply_ argumentIndex:2 ofReply:1];

  v26 = sub_243B18E5C();
  [v2 setClasses:v26 forSelector:sel_addParticipantsToShare_containerSetupInfo_emailAddresses_phoneNumbers_permissionType_allowOthersToInvite_withReply_ argumentIndex:2 ofReply:1];

  v27 = sub_243B18E5C();
  [v2 setClasses:v27 forSelector:sel_addParticipantsToShare_containerSetupInfo_emailAddresses_phoneNumbers_optionsGroups_withReply_ argumentIndex:2 ofReply:1];

  v28 = sub_243B18E5C();
  [v2 setClasses:v28 forSelector:sel_existingShareForFileWithURLWrapper_withReply_ argumentIndex:2 ofReply:1];

  v29 = sub_243B18E5C();
  [v2 setClasses:v29 forSelector:sel_userNameAndEmailWithURLWrapper_containerSetupInfo_withReply_ argumentIndex:2 ofReply:1];

  v30 = sub_243B18E5C();
  [v2 setClasses:v30 forSelector:sel_forciblyShareFolder_emailAddresses_phoneNumbers_accessType_permissionType_allowOthersToInvite_withReply_ argumentIndex:2 ofReply:1];

  v31 = sub_243B18E5C();
  [v2 setClasses:v31 forSelector:sel_forciblyShareFolder_emailAddresses_phoneNumbers_optionsGroups_withReply_ argumentIndex:2 ofReply:1];

  [v34 setRemoteObjectInterface_];
  [v34 resume];

  v32 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t static InitiateSharing.functionCount(inProtocol:)(Protocol *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  outCount = 0;
  protocol_copyMethodDescriptionList(a1, 1, 1, &outCount);
  result = outCount;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_243AFC77C()
{
  result = sub_243AFC79C();
  qword_2815090B8 = result;
  return result;
}

uint64_t sub_243AFC79C()
{
  if (qword_281509058 != -1)
  {
    swift_once();
  }

  v0 = qword_2815090B0;
  aBlock[4] = sub_243AFC9A0;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243AFCB44;
  aBlock[3] = &block_descriptor_378;
  v1 = _Block_copy(aBlock);
  v2 = v0;
  v3 = [v2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v1);

  sub_243B18EDC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1798, &qword_243B19AD8);
  if (swift_dynamicCast())
  {
    return v9;
  }

  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v5 = sub_243B18D3C();
  __swift_project_value_buffer(v5, qword_281509098);
  v6 = sub_243B18D1C();
  v7 = sub_243B18EAC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_243AF9000, v6, v7, "Failed to create SPIHelper remote object proxy", v8, 2u);
    MEMORY[0x245D489D0](v8, -1, -1);
  }

  return 0;
}

void sub_243AFC9A0(void *a1)
{
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v2 = sub_243B18D3C();
  __swift_project_value_buffer(v2, qword_281509098);
  v3 = a1;
  oslog = sub_243B18D1C();
  v4 = sub_243B18EAC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1778, &qword_243B19AB8);
    v8 = sub_243B18D9C();
    v10 = sub_243B09C80(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_243AF9000, oslog, v4, "Received SPIHelper remoteObjectProxy error: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x245D489D0](v6, -1, -1);
    MEMORY[0x245D489D0](v5, -1, -1);
  }

  else
  {
  }
}

void sub_243AFCB44(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_243AFCBAC(uint64_t a1, void (*a2)(void, id), uint64_t a3)
{
  v53 = a2;
  v5 = sub_243B18C1C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_243B18C2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v47 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_243B18CDC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v48 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v50 = &v43 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v43 - v20;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v22 = sub_243B18D3C();
  __swift_project_value_buffer(v22, qword_281509098);
  v51 = *(v14 + 16);
  v52 = a1;
  v49 = v14 + 16;
  v51(v21, a1, v13);
  v23 = sub_243B18D1C();
  v24 = sub_243B18EBC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v45 = v8;
    v26 = v25;
    v27 = swift_slowAlloc();
    v46 = a3;
    v44 = v27;
    aBlock[0] = v27;
    *v26 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260]);
    v28 = sub_243B18F4C();
    v29 = v10;
    v30 = v9;
    v32 = v31;
    (*(v14 + 8))(v21, v13);
    v33 = sub_243B09C80(v28, v32, aBlock);
    v9 = v30;
    v10 = v29;

    *(v26 + 4) = v33;
    _os_log_impl(&dword_243AF9000, v23, v24, "callForSharingStatus url: %s", v26, 0xCu);
    v34 = v44;
    __swift_destroy_boxed_opaque_existential_0(v44);
    a3 = v46;
    MEMORY[0x245D489D0](v34, -1, -1);
    MEMORY[0x245D489D0](v26, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v21, v13);
  }

  v36 = v51;
  v35 = v52;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v37 = qword_2815090B8;
  if (qword_2815090B8)
  {
    sub_243B16EE4(0, &qword_27EDA1740, 0x277CC6438);
    v38 = v50;
    v36(v50, v35, v13);
    swift_unknownObjectRetain();
    v40 = sub_243B099B8(v38, 0);
    logWrapperMessage(for:isReadOnly:error:)(v35, 0, 0);
    v41 = swift_allocObject();
    *(v41 + 16) = v53;
    *(v41 + 24) = a3;
    aBlock[4] = sub_243B0A370;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFD490;
    aBlock[3] = &block_descriptor_6;
    v42 = _Block_copy(aBlock);

    [v37 sharingStatusForWithURLWrapper:v40 withReply:v42];

    _Block_release(v42);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v39 = v47;
    sub_243B18C5C();
    v40 = sub_243B18BFC();
    (*(v10 + 8))(v39, v9);
    v53(0, v40);
  }
}

uint64_t sub_243AFD340()
{
  swift_willThrow();
  v13 = v0;
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1778, &qword_243B19AB8);
  sub_243B16EE4(0, &qword_27EDA1780, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v2 = [v12 code];
    if (v2 == sub_243B18D4C())
    {
      v3 = [v12 domain];
      v4 = sub_243B18D8C();
      v6 = v5;

      v7 = *MEMORY[0x277CCA5B8];
      if (v4 == sub_243B18D8C() && v6 == v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = sub_243B18F5C();
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void sub_243AFD4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(uint64_t, void, void *), uint64_t a8)
{
  v101 = a8;
  v102 = a7;
  v97 = a6;
  v98 = a4;
  v105 = a3;
  v11 = sub_243B18C1C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v89 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_243B18C2C();
  v90 = *(v91 - 8);
  v14 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v88 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v93 = &v87 - v18;
  v19 = sub_243B18CDC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v92 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v95 = &v87 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v87 - v26;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v28 = sub_243B18D3C();
  __swift_project_value_buffer(v28, qword_281509098);
  v29 = *(v20 + 16);
  v100 = v20 + 16;
  v94 = v29;
  v29(v27, a1, v19);
  v30 = sub_243B18D1C();
  v31 = sub_243B18EBC();
  v32 = os_log_type_enabled(v30, v31);
  v96 = a2;
  v103 = v19;
  v104 = a1;
  v99 = v20;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v87 = a5;
    v35 = v34;
    aBlock[0] = v34;
    *v33 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260]);
    v36 = sub_243B18F4C();
    v38 = v37;
    (*(v20 + 8))(v27, v19);
    v39 = sub_243B09C80(v36, v38, aBlock);

    *(v33 + 4) = v39;
    _os_log_impl(&dword_243AF9000, v30, v31, "callForFileSharing url: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    v40 = v35;
    a5 = v87;
    MEMORY[0x245D489D0](v40, -1, -1);
    v41 = v33;
    a2 = v96;
    MEMORY[0x245D489D0](v41, -1, -1);
  }

  else
  {

    (*(v20 + 8))(v27, v19);
  }

  v42 = sub_243B18D1C();
  v43 = sub_243B18E8C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock[0] = v45;
    *v44 = 136315138;
    v46 = MEMORY[0x245D48400](a2, MEMORY[0x277D837D0]);
    v48 = sub_243B09C80(v46, v47, aBlock);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_243AF9000, v42, v43, "callForFileSharing emailAddresses: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x245D489D0](v45, -1, -1);
    MEMORY[0x245D489D0](v44, -1, -1);
  }

  v49 = v105;

  v50 = sub_243B18D1C();
  v51 = sub_243B18E8C();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v52 = 136315138;
    v54 = MEMORY[0x245D48400](v49, MEMORY[0x277D837D0]);
    v56 = sub_243B09C80(v54, v55, aBlock);

    *(v52 + 4) = v56;
    _os_log_impl(&dword_243AF9000, v50, v51, "callForFileSharing phoneNumbers: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x245D489D0](v53, -1, -1);
    MEMORY[0x245D489D0](v52, -1, -1);
  }

  v57 = sub_243B18D1C();
  v58 = sub_243B18E8C();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v59 = 136315138;
    v106 = v98;
    aBlock[0] = v60;
    type metadata accessor for ParticipantPermission(0);
    v61 = sub_243B18D9C();
    v63 = sub_243B09C80(v61, v62, aBlock);

    *(v59 + 4) = v63;
    _os_log_impl(&dword_243AF9000, v57, v58, "callForFileSharing accessType: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x245D489D0](v60, -1, -1);
    MEMORY[0x245D489D0](v59, -1, -1);
  }

  v64 = sub_243B18D1C();
  v65 = sub_243B18E8C();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v106 = a5;
    aBlock[0] = v67;
    *v66 = 136315138;
    type metadata accessor for ParticipantPermission(0);
    v68 = sub_243B18D9C();
    v70 = sub_243B09C80(v68, v69, aBlock);

    *(v66 + 4) = v70;
    _os_log_impl(&dword_243AF9000, v64, v65, "callForFileSharing permissionType: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x245D489D0](v67, -1, -1);
    MEMORY[0x245D489D0](v66, -1, -1);
  }

  v71 = v104;
  v72 = sub_243B18D1C();
  v73 = sub_243B18E8C();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 67109120;
    *(v74 + 4) = v97 & 1;
    _os_log_impl(&dword_243AF9000, v72, v73, "callForFileSharing allowOthersToInvite: %{BOOL}d", v74, 8u);
    MEMORY[0x245D489D0](v74, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v75 = qword_2815090B8;
  if (qword_2815090B8)
  {
    sub_243B16EE4(0, &qword_27EDA1740, 0x277CC6438);
    v76 = v95;
    v94(v95, v71, v103);
    swift_unknownObjectRetain();
    v81 = sub_243B099B8(v76, 0);
    logWrapperMessage(for:isReadOnly:error:)(v71, 0, 0);
    v82 = sub_243B18E2C();
    v83 = sub_243B18E2C();
    v84 = swift_allocObject();
    v85 = v101;
    *(v84 + 16) = v102;
    *(v84 + 24) = v85;
    aBlock[4] = sub_243B0A474;
    aBlock[5] = v84;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_12;
    v86 = _Block_copy(aBlock);

    [v75 startFileSharingWithURLWrapper:v81 emailAddresses:v82 phoneNumbers:v83 accessType:v98 permissionType:a5 allowOthersToInvite:v97 & 1 withReply:v86];

    _Block_release(v86);
    swift_unknownObjectRelease();
  }

  else
  {
    v77 = v93;
    (*(v99 + 56))(v93, 1, 1, v103);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v78 = v88;
    v79 = v91;
    sub_243B18C5C();
    v80 = sub_243B18BFC();
    (*(v90 + 8))(v78, v79);
    v102(v77, 0, v80);

    sub_243B0A49C(v77, &qword_27EDA1750, &qword_243B19A68);
  }
}

uint64_t sub_243AFE0C0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (a2)
  {
    sub_243B18CCC();
    v14 = sub_243B18CDC();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  }

  else
  {
    v15 = sub_243B18CDC();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  }

  v16 = a3;
  v17 = a4;
  v13(v11, a3, a4);

  return sub_243B0A49C(v11, &qword_27EDA1750, &qword_243B19A68);
}

void sub_243AFE26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_243B16F2C(a1, &v16 - v10, &qword_27EDA1750, &qword_243B19A68);
  v12 = sub_243B18CDC();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v14 = sub_243B18CAC();
    (*(v13 + 8))(v11, v12);
  }

  if (a3)
  {
    v15 = sub_243B18C6C();
  }

  else
  {
    v15 = 0;
  }

  (*(a4 + 16))(a4, v14, a2, v15);
}

void sub_243AFE3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void, void *), uint64_t a6)
{
  v90 = a6;
  v95 = a5;
  v96 = a3;
  v9 = sub_243B18C1C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v82[1] = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_243B18C2C();
  v83 = *(v12 - 8);
  v84 = v12;
  v13 = *(v83 + 64);
  MEMORY[0x28223BE20](v12);
  v82[0] = v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v86 = v82 - v17;
  v18 = sub_243B18CDC();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x28223BE20](v18);
  v85 = v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v88 = v82 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = v82 - v25;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v27 = sub_243B18D3C();
  __swift_project_value_buffer(v27, qword_281509098);
  v28 = v19[2];
  v93 = a1;
  v91 = v19 + 2;
  v28(v26, a1, v18);
  v29 = sub_243B18D1C();
  v30 = sub_243B18EBC();
  v31 = os_log_type_enabled(v29, v30);
  v89 = a2;
  v94 = a4;
  v92 = v19;
  v87 = v28;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v32 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260]);
    v34 = sub_243B18F4C();
    v36 = v35;
    v37 = v19[1];
    v38 = v18;
    v37(v26, v18);
    v39 = sub_243B09C80(v34, v36, aBlock);

    *(v32 + 4) = v39;
    _os_log_impl(&dword_243AF9000, v29, v30, "callForFileSharing url: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    v40 = v33;
    a2 = v89;
    MEMORY[0x245D489D0](v40, -1, -1);
    MEMORY[0x245D489D0](v32, -1, -1);
  }

  else
  {

    v41 = v19[1];
    v38 = v18;
    v41(v26, v18);
  }

  v42 = sub_243B18D1C();
  v43 = sub_243B18E8C();

  v44 = os_log_type_enabled(v42, v43);
  v45 = v96;
  if (v44)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock[0] = v47;
    *v46 = 136315138;
    v48 = MEMORY[0x245D48400](a2, MEMORY[0x277D837D0]);
    v50 = sub_243B09C80(v48, v49, aBlock);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_243AF9000, v42, v43, "callForFileSharing emailAddresses: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x245D489D0](v47, -1, -1);
    MEMORY[0x245D489D0](v46, -1, -1);
  }

  v51 = sub_243B18D1C();
  v52 = sub_243B18E8C();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock[0] = v54;
    *v53 = 136315138;
    v55 = MEMORY[0x245D48400](v45, MEMORY[0x277D837D0]);
    v57 = sub_243B09C80(v55, v56, aBlock);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_243AF9000, v51, v52, "callForFileSharing phoneNumbers: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x245D489D0](v54, -1, -1);
    MEMORY[0x245D489D0](v53, -1, -1);
  }

  v58 = v94;

  v59 = sub_243B18D1C();
  v60 = sub_243B18E8C();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    aBlock[0] = v62;
    *v61 = 136315138;
    v63 = sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v64 = MEMORY[0x245D48400](v58, v63);
    v66 = sub_243B09C80(v64, v65, aBlock);

    *(v61 + 4) = v66;
    _os_log_impl(&dword_243AF9000, v59, v60, "callForFileSharing optionsGroups: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x245D489D0](v62, -1, -1);
    MEMORY[0x245D489D0](v61, -1, -1);
  }

  v68 = v92;
  v67 = v93;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v69 = qword_2815090B8;
  if (qword_2815090B8)
  {
    sub_243B16EE4(0, &qword_27EDA1740, 0x277CC6438);
    v70 = v88;
    v87(v88, v67, v38);
    swift_unknownObjectRetain();
    v75 = sub_243B099B8(v70, 0);
    logWrapperMessage(for:isReadOnly:error:)(v67, 0, 0);
    v76 = sub_243B18E2C();
    v77 = sub_243B18E2C();
    sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v78 = sub_243B18E2C();
    v79 = swift_allocObject();
    v80 = v90;
    *(v79 + 16) = v95;
    *(v79 + 24) = v80;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v79;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_18;
    v81 = _Block_copy(aBlock);

    [v69 startFileSharingWithURLWrapper:v75 emailAddresses:v76 phoneNumbers:v77 optionsGroups:v78 withReply:v81];

    _Block_release(v81);
    swift_unknownObjectRelease();
  }

  else
  {
    v71 = v86;
    (v68[7])(v86, 1, 1, v38);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v72 = v82[0];
    v73 = v84;
    sub_243B18C5C();
    v74 = sub_243B18BFC();
    (*(v83 + 8))(v72, v73);
    v95(v71, 0, v74);

    sub_243B0A49C(v71, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243AFEEB8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(uint64_t, void, void *), uint64_t a9)
{
  v90 = a8;
  v91 = a5;
  v89 = a7;
  v92 = a6;
  v13 = sub_243B18C1C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v84 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_243B18C2C();
  v85 = *(v16 - 8);
  v86 = v16;
  v17 = *(v85 + 64);
  MEMORY[0x28223BE20](v16);
  v83 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v82 = &v82 - v21;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v22 = sub_243B18D3C();
  __swift_project_value_buffer(v22, qword_281509098);
  v23 = a1;
  v24 = sub_243B18D1C();
  v25 = sub_243B18EBC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v23;
    *v27 = v23;
    v28 = v23;
    _os_log_impl(&dword_243AF9000, v24, v25, "callForCloudKitAddToShare share: %@", v26, 0xCu);
    sub_243B0A49C(v27, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v27, -1, -1);
    MEMORY[0x245D489D0](v26, -1, -1);
  }

  v87 = v23;

  v29 = a2;
  v30 = sub_243B18D1C();
  v31 = sub_243B18EBC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v29;
    *v33 = v29;
    v34 = v29;
    _os_log_impl(&dword_243AF9000, v30, v31, "callForCloudKitAddToShare containerSetupInfo: %@", v32, 0xCu);
    sub_243B0A49C(v33, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v33, -1, -1);
    MEMORY[0x245D489D0](v32, -1, -1);
  }

  v35 = sub_243B18D1C();
  v36 = sub_243B18E8C();

  v37 = os_log_type_enabled(v35, v36);
  v38 = a3;
  v39 = a4;
  v88 = v38;
  if (v37)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    aBlock[0] = v41;
    *v40 = 136315138;
    v42 = MEMORY[0x245D48400](v38, MEMORY[0x277D837D0]);
    v44 = sub_243B09C80(v42, v43, aBlock);

    *(v40 + 4) = v44;
    a4 = v39;
    _os_log_impl(&dword_243AF9000, v35, v36, "callForCloudKitAddToShare emailAddresses: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x245D489D0](v41, -1, -1);
    MEMORY[0x245D489D0](v40, -1, -1);
  }

  v45 = sub_243B18D1C();
  v46 = sub_243B18E8C();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    aBlock[0] = v48;
    *v47 = 136315138;
    v49 = MEMORY[0x245D48400](a4, MEMORY[0x277D837D0]);
    v51 = sub_243B09C80(v49, v50, aBlock);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_243AF9000, v45, v46, "callForCloudKitAddToShare phoneNumbers: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x245D489D0](v48, -1, -1);
    MEMORY[0x245D489D0](v47, -1, -1);
  }

  v52 = sub_243B18D1C();
  v53 = sub_243B18E8C();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v54 = 136315138;
    v93 = v91;
    aBlock[0] = v55;
    type metadata accessor for ParticipantPermission(0);
    v56 = sub_243B18D9C();
    v58 = sub_243B09C80(v56, v57, aBlock);

    *(v54 + 4) = v58;
    _os_log_impl(&dword_243AF9000, v52, v53, "callForCloudKitAddToShare accessType: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x245D489D0](v55, -1, -1);
    MEMORY[0x245D489D0](v54, -1, -1);
  }

  v59 = sub_243B18D1C();
  v60 = sub_243B18E8C();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v61 = 136315138;
    v93 = v92;
    aBlock[0] = v62;
    type metadata accessor for ParticipantPermission(0);
    v63 = sub_243B18D9C();
    v65 = sub_243B09C80(v63, v64, aBlock);

    *(v61 + 4) = v65;
    _os_log_impl(&dword_243AF9000, v59, v60, "callForCloudKitAddToShare permissionType: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x245D489D0](v62, -1, -1);
    MEMORY[0x245D489D0](v61, -1, -1);
  }

  v66 = v89;
  v67 = v87;
  v68 = sub_243B18D1C();
  v69 = sub_243B18E8C();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 67109120;
    *(v70 + 4) = v66 & 1;
    _os_log_impl(&dword_243AF9000, v68, v69, "callForCloudKitAddToShare allowOthersToInvite: %{BOOL}d", v70, 8u);
    MEMORY[0x245D489D0](v70, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v71 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v72 = sub_243B18E2C();
    v73 = sub_243B18E2C();
    v74 = swift_allocObject();
    *(v74 + 16) = v90;
    *(v74 + 24) = a9;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v74;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_24;
    v75 = _Block_copy(aBlock);

    LOBYTE(v81) = v66 & 1;
    [v71 addToCloudKitSharing:v67 containerSetupInfo:v29 emailAddresses:v72 phoneNumbers:v73 accessType:v91 permissionType:v92 allowOthersToInvite:v81 withReply:v75];
    _Block_release(v75);
    swift_unknownObjectRelease();
  }

  else
  {
    v76 = sub_243B18CDC();
    v77 = v82;
    (*(*(v76 - 8) + 56))(v82, 1, 1, v76);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v78 = v83;
    v79 = v86;
    sub_243B18C5C();
    v80 = sub_243B18BFC();
    (*(v85 + 8))(v78, v79);
    v90(v77, 0, v80);

    sub_243B0A49C(v77, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243AFF964(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void, void *), uint64_t a7)
{
  v79 = a6;
  v80 = a7;
  v81 = a4;
  v11 = sub_243B18C1C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v74 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_243B18C2C();
  v75 = *(v14 - 8);
  v76 = v14;
  v15 = *(v75 + 64);
  MEMORY[0x28223BE20](v14);
  v73 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v72 = &v72 - v19;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v20 = sub_243B18D3C();
  __swift_project_value_buffer(v20, qword_281509098);
  v21 = a1;
  v22 = sub_243B18D1C();
  v23 = sub_243B18EBC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&dword_243AF9000, v22, v23, "callForCloudKitAddToShare share: %@", v24, 0xCu);
    sub_243B0A49C(v25, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v25, -1, -1);
    MEMORY[0x245D489D0](v24, -1, -1);
  }

  v27 = a2;
  v28 = sub_243B18D1C();
  v29 = sub_243B18EBC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v27;
    *v31 = v27;
    v32 = v27;
    _os_log_impl(&dword_243AF9000, v28, v29, "callForCloudKitAddToShare containerSetupInfo: %@", v30, 0xCu);
    sub_243B0A49C(v31, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v31, -1, -1);
    MEMORY[0x245D489D0](v30, -1, -1);
  }

  v77 = v27;
  v78 = v21;

  v33 = sub_243B18D1C();
  v34 = sub_243B18E8C();

  v35 = a3;
  v36 = a5;
  if (os_log_type_enabled(v33, v34))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315138;
    v39 = MEMORY[0x245D48400](v35, MEMORY[0x277D837D0]);
    v41 = sub_243B09C80(v39, v40, aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_243AF9000, v33, v34, "callForCloudKitAddToShare emailAddresses: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x245D489D0](v38, -1, -1);
    MEMORY[0x245D489D0](v37, -1, -1);
  }

  v42 = v81;

  v43 = sub_243B18D1C();
  v44 = sub_243B18E8C();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v45 = 136315138;
    v47 = MEMORY[0x245D48400](v42, MEMORY[0x277D837D0]);
    v49 = sub_243B09C80(v47, v48, aBlock);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_243AF9000, v43, v44, "callForCloudKitAddToShare phoneNumbers: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x245D489D0](v46, -1, -1);
    MEMORY[0x245D489D0](v45, -1, -1);
  }

  v50 = sub_243B18D1C();
  v51 = sub_243B18E8C();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v52 = 136315138;
    v54 = sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v55 = MEMORY[0x245D48400](v36, v54);
    v57 = sub_243B09C80(v55, v56, aBlock);

    *(v52 + 4) = v57;
    _os_log_impl(&dword_243AF9000, v50, v51, "callForCloudKitAddToShare optionsGroups: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x245D489D0](v53, -1, -1);
    MEMORY[0x245D489D0](v52, -1, -1);
  }

  v58 = v77;
  v59 = v78;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v60 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v61 = sub_243B18E2C();
    v62 = sub_243B18E2C();
    sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v63 = sub_243B18E2C();
    v64 = swift_allocObject();
    v65 = v80;
    *(v64 + 16) = v79;
    *(v64 + 24) = v65;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v64;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_30;
    v66 = _Block_copy(aBlock);

    [v60 addToCloudKitSharing:v59 containerSetupInfo:v58 emailAddresses:v61 phoneNumbers:v62 optionsGroups:v63 withReply:v66];
    _Block_release(v66);
    swift_unknownObjectRelease();
  }

  else
  {
    v67 = sub_243B18CDC();
    v68 = v72;
    (*(*(v67 - 8) + 56))(v72, 1, 1, v67);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v69 = v73;
    v70 = v76;
    sub_243B18C5C();
    v71 = sub_243B18BFC();
    (*(v75 + 8))(v69, v70);
    v79(v68, 0, v71);

    sub_243B0A49C(v68, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B00228(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(void, void, void *), uint64_t a9)
{
  v91 = a6;
  v92 = a8;
  v94 = a5;
  v89 = a2;
  v13 = sub_243B18C1C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v85[1] = v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_243B18C2C();
  v86 = *(v16 - 8);
  v87 = v16;
  v17 = *(v86 + 64);
  MEMORY[0x28223BE20](v16);
  v85[0] = v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_243B18CDC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v24 = sub_243B18D3C();
  __swift_project_value_buffer(v24, qword_281509098);
  v25 = *(v20 + 16);
  v88 = a1;
  v25(v23, a1, v19);
  v26 = sub_243B18D1C();
  v27 = sub_243B18EBC();
  v28 = os_log_type_enabled(v26, v27);
  v95 = a4;
  v93 = a3;
  v90 = a7;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v29 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260]);
    v31 = sub_243B18F4C();
    v33 = v32;
    (*(v20 + 8))(v23, v19);
    v34 = sub_243B09C80(v31, v33, aBlock);
    a3 = v93;

    *(v29 + 4) = v34;
    _os_log_impl(&dword_243AF9000, v26, v27, "callForSharingURLAddToShare sharingURL: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x245D489D0](v30, -1, -1);
    MEMORY[0x245D489D0](v29, -1, -1);
  }

  else
  {

    (*(v20 + 8))(v23, v19);
  }

  v35 = v89;
  v36 = sub_243B18D1C();
  v37 = sub_243B18EBC();

  v38 = os_log_type_enabled(v36, v37);
  v39 = v91;
  if (v38)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412290;
    *(v40 + 4) = v35;
    *v41 = v35;
    v42 = v35;
    _os_log_impl(&dword_243AF9000, v36, v37, "callForSharingURLAddToShare containerSetupInfo: %@", v40, 0xCu);
    sub_243B0A49C(v41, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v41, -1, -1);
    MEMORY[0x245D489D0](v40, -1, -1);
  }

  v43 = sub_243B18D1C();
  v44 = sub_243B18E8C();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v45 = 136315138;
    v47 = MEMORY[0x245D48400](a3, MEMORY[0x277D837D0]);
    v49 = sub_243B09C80(v47, v48, aBlock);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_243AF9000, v43, v44, "callForSharingURLAddToShare emailAddresses: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x245D489D0](v46, -1, -1);
    MEMORY[0x245D489D0](v45, -1, -1);
  }

  v50 = v95;

  v51 = sub_243B18D1C();
  v52 = sub_243B18E8C();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock[0] = v54;
    *v53 = 136315138;
    v55 = MEMORY[0x245D48400](v50, MEMORY[0x277D837D0]);
    v57 = sub_243B09C80(v55, v56, aBlock);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_243AF9000, v51, v52, "callForSharingURLAddToShare phoneNumbers: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x245D489D0](v54, -1, -1);
    MEMORY[0x245D489D0](v53, -1, -1);
  }

  v58 = sub_243B18D1C();
  v59 = sub_243B18E8C();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v60 = 136315138;
    v96 = v94;
    aBlock[0] = v61;
    type metadata accessor for ParticipantPermission(0);
    v62 = sub_243B18D9C();
    v64 = sub_243B09C80(v62, v63, aBlock);

    *(v60 + 4) = v64;
    _os_log_impl(&dword_243AF9000, v58, v59, "callForSharingURLAddToShare accessType: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x245D489D0](v61, -1, -1);
    MEMORY[0x245D489D0](v60, -1, -1);
  }

  v65 = sub_243B18D1C();
  v66 = sub_243B18E8C();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v96 = v39;
    aBlock[0] = v68;
    *v67 = 136315138;
    type metadata accessor for ParticipantPermission(0);
    v69 = sub_243B18D9C();
    v71 = sub_243B09C80(v69, v70, aBlock);

    *(v67 + 4) = v71;
    _os_log_impl(&dword_243AF9000, v65, v66, "callForSharingURLAddToShare permissionType: %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    MEMORY[0x245D489D0](v68, -1, -1);
    MEMORY[0x245D489D0](v67, -1, -1);
  }

  v72 = v90;
  v73 = sub_243B18D1C();
  v74 = sub_243B18E8C();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 67109120;
    *(v75 + 4) = v72 & 1;
    _os_log_impl(&dword_243AF9000, v73, v74, "callForSharingURLAddToShare allowOthersToInvite: %{BOOL}d", v75, 8u);
    MEMORY[0x245D489D0](v75, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v76 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v77 = sub_243B18CAC();
    v78 = sub_243B18E2C();
    v79 = sub_243B18E2C();
    v80 = swift_allocObject();
    *(v80 + 16) = v92;
    *(v80 + 24) = a9;
    aBlock[4] = sub_243B0A4FC;
    aBlock[5] = v80;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B00C60;
    aBlock[3] = &block_descriptor_36;
    v81 = _Block_copy(aBlock);

    LOBYTE(v84) = v72 & 1;
    [v76 addToShareFromSharingURL:v77 containerSetupInfo:v35 emailAddresses:v78 phoneNumbers:v79 accessType:v94 permissionType:v39 allowOthersToInvite:v84 withReply:v81];
    _Block_release(v81);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v82 = v85[0];
    v83 = v87;
    sub_243B18C5C();
    v79 = sub_243B18BFC();
    (*(v86 + 8))(v82, v83);
    v92(0, 0, v79);
  }
}

void sub_243B00C60(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a3;
  v9 = a4;
  v8(a2, a3, a4);
}

void sub_243B00E88(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_243B18C6C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1 & 1, a2);
}

void sub_243B00F08(uint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = sub_243B18C1C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_243B18C2C();
  v52 = *(v11 - 8);
  v12 = *(v52 + 64);
  MEMORY[0x28223BE20](v11);
  v50 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_243B18CDC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v19 = sub_243B18D3C();
  v20 = __swift_project_value_buffer(v19, qword_281509098);
  v21 = *(v15 + 16);
  v54 = a1;
  v21(v18, a1, v14);
  v53 = v20;
  v22 = sub_243B18D1C();
  v23 = sub_243B18EBC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v49 = a4;
    v25 = v24;
    v47 = swift_slowAlloc();
    aBlock[0] = v47;
    *v25 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260]);
    v26 = sub_243B18F4C();
    v48 = a2;
    v27 = v11;
    v28 = a3;
    v30 = v29;
    (*(v15 + 8))(v18, v14);
    v31 = sub_243B09C80(v26, v30, aBlock);
    a3 = v28;
    v11 = v27;
    a2 = v48;

    *(v25 + 4) = v31;
    _os_log_impl(&dword_243AF9000, v22, v23, "callForSharingURLRemoveShare sharingURL: %s", v25, 0xCu);
    v32 = v47;
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x245D489D0](v32, -1, -1);
    v33 = v25;
    a4 = v49;
    MEMORY[0x245D489D0](v33, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v18, v14);
  }

  v34 = a2;
  v35 = sub_243B18D1C();
  v36 = sub_243B18EBC();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = a2;
    v40 = v38;
    *v37 = 138412290;
    *(v37 + 4) = v34;
    *v38 = v39;
    v41 = v34;
    _os_log_impl(&dword_243AF9000, v35, v36, "callForSharingURLRemoveShare containerSetupInfo: %@", v37, 0xCu);
    sub_243B0A49C(v40, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v40, -1, -1);
    MEMORY[0x245D489D0](v37, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v42 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v43 = sub_243B18CAC();
    v44 = swift_allocObject();
    *(v44 + 16) = a3;
    *(v44 + 24) = a4;
    aBlock[4] = sub_243B0A524;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B014FC;
    aBlock[3] = &block_descriptor_42;
    v45 = _Block_copy(aBlock);

    [v42 removeFromShareFromSharingURL:v43 containerSetupInfo:v34 withReply:v45];
    _Block_release(v45);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v46 = v50;
    sub_243B18C5C();
    v43 = sub_243B18BFC();
    (*(v52 + 8))(v46, v11);
    a3(0, v43);
  }
}

void sub_243B014FC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_243B0158C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_243B18C6C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_243B015FC(void *a1, void *a2, void (*a3)(void, void *), uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v6 = sub_243B18C1C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_243B18C2C();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v12 = sub_243B18D3C();
  __swift_project_value_buffer(v12, qword_281509098);
  v13 = a1;
  v14 = sub_243B18D1C();
  v15 = sub_243B18EBC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_243AF9000, v14, v15, "callForRemoveShare share: %@", v16, 0xCu);
    sub_243B0A49C(v17, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v17, -1, -1);
    MEMORY[0x245D489D0](v16, -1, -1);
  }

  v19 = a2;
  v20 = sub_243B18D1C();
  v21 = sub_243B18EBC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = a2;
    v24 = v19;
    _os_log_impl(&dword_243AF9000, v20, v21, "callForRemoveShare containerSetupInfo: %@", v22, 0xCu);
    sub_243B0A49C(v23, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v23, -1, -1);
    MEMORY[0x245D489D0](v22, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v25 = qword_2815090B8;
  if (qword_2815090B8)
  {
    v26 = swift_allocObject();
    v27 = v33;
    *(v26 + 16) = v32;
    *(v26 + 24) = v27;
    aBlock[4] = sub_243B17060;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B014FC;
    aBlock[3] = &block_descriptor_48;
    v28 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v25 removeFromShare:v13 containerSetupInfo:v19 withReply:v28];
    _Block_release(v28);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    sub_243B18C5C();
    v29 = sub_243B18BFC();
    (*(v31 + 8))(v11, v8);
    v32(0, v29);
  }
}

void sub_243B01AA0(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v6 = sub_243B18C1C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_243B18C2C();
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v37 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_243B18CDC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v16 = sub_243B18D3C();
  __swift_project_value_buffer(v16, qword_281509098);
  (*(v12 + 16))(v15, a1, v11);
  v17 = sub_243B18D1C();
  v18 = sub_243B18EBC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = a2;
    v20 = v19;
    v21 = swift_slowAlloc();
    v36 = a3;
    v34 = v21;
    aBlock[0] = v21;
    *v20 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260]);
    v22 = sub_243B18F4C();
    v24 = v23;
    (*(v12 + 8))(v15, v11);
    v25 = sub_243B09C80(v22, v24, aBlock);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_243AF9000, v17, v18, "callForFileURLRemoveShare url: %s", v20, 0xCu);
    v26 = v34;
    __swift_destroy_boxed_opaque_existential_0(v34);
    a3 = v36;
    MEMORY[0x245D489D0](v26, -1, -1);
    v27 = v20;
    a2 = v35;
    MEMORY[0x245D489D0](v27, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v28 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v29 = sub_243B18CAC();
    v30 = swift_allocObject();
    *(v30 + 16) = a2;
    *(v30 + 24) = a3;
    aBlock[4] = sub_243B17060;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B014FC;
    aBlock[3] = &block_descriptor_54;
    v31 = _Block_copy(aBlock);

    [v28 removeFromShareForFileURL:v29 withReply:v31];
    _Block_release(v31);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v32 = v37;
    v33 = v39;
    sub_243B18C5C();
    v29 = sub_243B18BFC();
    (*(v38 + 8))(v32, v33);
    a2(0, v29);
  }
}

void sub_243B01FC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, void (*a8)(void, void, void, void, void *), uint64_t a9)
{
  v98 = a8;
  v99 = a4;
  v95 = a5;
  v100 = a3;
  v92 = a2;
  v12 = sub_243B18C1C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v84 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_243B18C2C();
  v85 = *(v86 - 8);
  v15 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v83 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v17 = *(*(v88 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v88);
  v90 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v87 = &v82 - v21;
  MEMORY[0x28223BE20](v20);
  v93 = &v82 - v22;
  v23 = sub_243B18CDC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v28 = sub_243B18D3C();
  __swift_project_value_buffer(v28, qword_281509098);
  (*(v24 + 16))(v27, a1, v23);
  v29 = sub_243B18D1C();
  v30 = sub_243B18EBC();
  v31 = os_log_type_enabled(v29, v30);
  v96 = a6;
  v97 = a7;
  v91 = a1;
  v94 = v23;
  v89 = v24;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v32 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260]);
    v34 = sub_243B18F4C();
    v36 = v35;
    v82 = *(v24 + 8);
    v82(v27, v23);
    v37 = sub_243B09C80(v34, v36, aBlock);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_243AF9000, v29, v30, "callForMailContent sharingURL: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x245D489D0](v33, -1, -1);
    MEMORY[0x245D489D0](v32, -1, -1);
  }

  else
  {

    v82 = *(v24 + 8);
    v82(v27, v23);
  }

  v38 = v92;
  v39 = sub_243B18D1C();
  v40 = sub_243B18EBC();

  v41 = os_log_type_enabled(v39, v40);
  v42 = v93;
  if (v41)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138412290;
    *(v43 + 4) = v38;
    *v44 = v38;
    v45 = v38;
    _os_log_impl(&dword_243AF9000, v39, v40, "callForMailContent share: %@", v43, 0xCu);
    sub_243B0A49C(v44, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v44, -1, -1);
    MEMORY[0x245D489D0](v43, -1, -1);
  }

  sub_243B16F2C(v100, v42, &qword_27EDA1750, &qword_243B19A68);
  v46 = sub_243B18D1C();
  v47 = sub_243B18EBC();
  v48 = os_log_type_enabled(v46, v47);
  v92 = v38;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v49 = 136315138;
    sub_243B16F2C(v42, v87, &qword_27EDA1750, &qword_243B19A68);
    v51 = sub_243B18D9C();
    v52 = v42;
    v53 = v51;
    v55 = v54;
    sub_243B0A49C(v52, &qword_27EDA1750, &qword_243B19A68);
    v56 = sub_243B09C80(v53, v55, aBlock);

    *(v49 + 4) = v56;
    _os_log_impl(&dword_243AF9000, v46, v47, "callForMailContent fileURL: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x245D489D0](v50, -1, -1);
    MEMORY[0x245D489D0](v49, -1, -1);
  }

  else
  {

    sub_243B0A49C(v42, &qword_27EDA1750, &qword_243B19A68);
  }

  v58 = v96;
  v57 = v97;
  v59 = v95;

  v60 = sub_243B18D1C();
  v61 = sub_243B18E8C();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock[0] = v63;
    *v62 = 136315138;
    *(v62 + 4) = sub_243B09C80(v99, v59, aBlock);
    _os_log_impl(&dword_243AF9000, v60, v61, "callForMailContent appName: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x245D489D0](v63, -1, -1);
    MEMORY[0x245D489D0](v62, -1, -1);
  }

  sub_243B0A54C(v58, v57);
  v64 = sub_243B18D1C();
  v65 = sub_243B18E9C();
  sub_243B0A5A0(v58, v57);
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    aBlock[0] = v67;
    *v66 = 136315138;
    v68 = sub_243B18CEC();
    v70 = sub_243B09C80(v68, v69, aBlock);

    *(v66 + 4) = v70;
    _os_log_impl(&dword_243AF9000, v64, v65, "callForMailContent appIconData: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x245D489D0](v67, -1, -1);
    MEMORY[0x245D489D0](v66, -1, -1);
  }

  v71 = v94;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v72 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v73 = sub_243B18CAC();
    v74 = v90;
    sub_243B16F2C(v100, v90, &qword_27EDA1750, &qword_243B19A68);
    if ((*(v89 + 48))(v74, 1, v71) == 1)
    {
      v75 = 0;
    }

    else
    {
      v75 = sub_243B18CAC();
      v82(v74, v71);
    }

    v79 = sub_243B18D5C();
    v78 = sub_243B18CFC();
    v80 = swift_allocObject();
    *(v80 + 16) = v98;
    *(v80 + 24) = a9;
    aBlock[4] = sub_243B0A5F4;
    aBlock[5] = v80;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B02A60;
    aBlock[3] = &block_descriptor_60;
    v81 = _Block_copy(aBlock);

    [v72 mailContentFromSharingURL:v73 share:v92 fileURL:v75 appName:v79 appIconData:v78 withReply:v81];
    _Block_release(v81);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v76 = v83;
    v77 = v86;
    sub_243B18C5C();
    v78 = sub_243B18BFC();
    (*(v85 + 8))(v76, v77);
    v98(0, 0, 0, 0, v78);
  }
}

uint64_t sub_243B02A60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    v8 = sub_243B18D8C();
    v10 = v9;
    if (v5)
    {
LABEL_3:
      v11 = sub_243B18D8C();
      v5 = v12;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:

  v13 = a4;
  v7(v8, v10, v11, v5, a4);
}

void sub_243B02D78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  if (a2)
  {
    v9 = sub_243B18D5C();
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (a4)
  {
LABEL_3:
    v8 = sub_243B18D5C();
  }

LABEL_4:
  if (a5)
  {
    v10 = sub_243B18C6C();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  (*(a6 + 16))(a6, v9, v8);
}

void sub_243B02E38(uint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = sub_243B18C1C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_243B18C2C();
  v52 = *(v11 - 8);
  v12 = *(v52 + 64);
  MEMORY[0x28223BE20](v11);
  v50 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_243B18CDC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v19 = sub_243B18D3C();
  v20 = __swift_project_value_buffer(v19, qword_281509098);
  v21 = *(v15 + 16);
  v54 = a1;
  v21(v18, a1, v14);
  v53 = v20;
  v22 = sub_243B18D1C();
  v23 = sub_243B18EBC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v49 = a4;
    v25 = v24;
    v47 = swift_slowAlloc();
    aBlock[0] = v47;
    *v25 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260]);
    v26 = sub_243B18F4C();
    v48 = a2;
    v27 = v11;
    v28 = a3;
    v30 = v29;
    (*(v15 + 8))(v18, v14);
    v31 = sub_243B09C80(v26, v30, aBlock);
    a3 = v28;
    v11 = v27;
    a2 = v48;

    *(v25 + 4) = v31;
    _os_log_impl(&dword_243AF9000, v22, v23, "callForMetadataFromShareURL sharingURL: %s", v25, 0xCu);
    v32 = v47;
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x245D489D0](v32, -1, -1);
    v33 = v25;
    a4 = v49;
    MEMORY[0x245D489D0](v33, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v18, v14);
  }

  v34 = a2;
  v35 = sub_243B18D1C();
  v36 = sub_243B18EBC();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = a2;
    v40 = v38;
    *v37 = 138412290;
    *(v37 + 4) = v34;
    *v38 = v39;
    v41 = v34;
    _os_log_impl(&dword_243AF9000, v35, v36, "callForMetadataFromShareURL containerSetupInfo: %@", v37, 0xCu);
    sub_243B0A49C(v40, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v40, -1, -1);
    MEMORY[0x245D489D0](v37, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v42 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v43 = sub_243B18CAC();
    v44 = swift_allocObject();
    *(v44 + 16) = a3;
    *(v44 + 24) = a4;
    aBlock[4] = sub_243B0A61C;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B0342C;
    aBlock[3] = &block_descriptor_66;
    v45 = _Block_copy(aBlock);

    [v42 getMetadataFromShareFromSharingURL:v43 containerSetupInfo:v34 withReply:v45];
    _Block_release(v45);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v46 = v50;
    sub_243B18C5C();
    v43 = sub_243B18BFC();
    (*(v52 + 8))(v46, v11);
    a3(0, v43);
  }
}

void sub_243B0342C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_243B034D0(void *a1, uint64_t a2, uint64_t a3, void *a4, const void *a5, void (*a6)(char *, void *, void *))
{
  v10 = sub_243B18CDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a5);
  sub_243B18CCC();
  _Block_copy(v15);
  v16 = a4;
  v17 = a1;
  a6(v14, a4, v15);
  _Block_release(v15);
  _Block_release(v15);

  return (*(v11 + 8))(v14, v10);
}

void sub_243B03608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_243B18C6C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_243B03678(void *a1, void *a2, void (*a3)(char *, void, void *), uint64_t a4)
{
  v39 = a3;
  v40 = a4;
  v6 = sub_243B18C1C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_243B18C2C();
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v37 - v15;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v17 = sub_243B18D3C();
  __swift_project_value_buffer(v17, qword_281509098);
  v18 = a1;
  v19 = sub_243B18D1C();
  v20 = sub_243B18EBC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_243AF9000, v19, v20, "callForUpdateShare share: %@", v21, 0xCu);
    sub_243B0A49C(v22, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v22, -1, -1);
    MEMORY[0x245D489D0](v21, -1, -1);
  }

  v24 = a2;
  v25 = sub_243B18D1C();
  v26 = sub_243B18EBC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = a2;
    v29 = v24;
    _os_log_impl(&dword_243AF9000, v25, v26, "callForUpdateShare containerSetupInfo: %@", v27, 0xCu);
    sub_243B0A49C(v28, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v28, -1, -1);
    MEMORY[0x245D489D0](v27, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v30 = qword_2815090B8;
  if (qword_2815090B8)
  {
    v31 = swift_allocObject();
    v32 = v40;
    *(v31 + 16) = v39;
    *(v31 + 24) = v32;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_72;
    v33 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v30 updateShare:v18 containerSetupInfo:v24 withReply:v33];
    _Block_release(v33);
    return swift_unknownObjectRelease();
  }

  else
  {
    v35 = sub_243B18CDC();
    (*(*(v35 - 8) + 56))(v16, 1, 1, v35);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    sub_243B18C5C();
    v36 = sub_243B18BFC();
    (*(v38 + 8))(v12, v9);
    v39(v16, 0, v36);

    return sub_243B0A49C(v16, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B03BCC(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, void *, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v11, a4, v10);
  _Block_release(v10);
  _Block_release(v10);
}

void sub_243B03C78(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v6 = sub_243B18C1C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_243B18C2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v13 = sub_243B18D3C();
  __swift_project_value_buffer(v13, qword_281509098);
  v14 = a1;
  v15 = sub_243B18D1C();
  v16 = sub_243B18EBC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v8;
    v18 = v9;
    v19 = a3;
    v20 = a2;
    v21 = v17;
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v14;
    *v22 = v14;
    v23 = v14;
    _os_log_impl(&dword_243AF9000, v15, v16, "callForCurrentUserSharingStatus share: %@", v21, 0xCu);
    sub_243B0A49C(v22, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v22, -1, -1);
    v24 = v21;
    a2 = v20;
    a3 = v19;
    v9 = v18;
    v8 = v30;
    MEMORY[0x245D489D0](v24, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v25 = qword_2815090B8;
  if (qword_2815090B8)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = a2;
    *(v26 + 24) = a3;
    aBlock[4] = sub_243B0A644;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B04060;
    aBlock[3] = &block_descriptor_78;
    v27 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v25 currentUserSharingStatusFor:v14 withReply:v27];
    _Block_release(v27);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    sub_243B18C5C();
    v28 = sub_243B18BFC();
    (*(v9 + 8))(v12, v8);
    a2(0, v28);
  }
}

void sub_243B04068(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_243B04170(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, void), uint64_t a6)
{
  v66 = a4;
  v68 = a3;
  v10 = sub_243B18C1C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v63 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_243B18C2C();
  v64 = *(v13 - 8);
  v14 = *(v64 + 64);
  MEMORY[0x28223BE20](v13);
  v62 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v61 = &v61 - v18;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v19 = sub_243B18D3C();
  __swift_project_value_buffer(v19, qword_281509098);
  v20 = a1;
  v21 = sub_243B18D1C();
  v22 = sub_243B18EBC();
  v67 = v20;

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = v67;
    *(v23 + 4) = v67;
    *v24 = v25;
    v26 = v25;
    _os_log_impl(&dword_243AF9000, v21, v22, "callForAddParticipantsToShare share: %@", v23, 0xCu);
    sub_243B0A49C(v24, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v24, -1, -1);
    MEMORY[0x245D489D0](v23, -1, -1);
  }

  v27 = a2;
  v28 = sub_243B18D1C();
  v29 = sub_243B18EBC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v27;
    *v31 = v27;
    v32 = v27;
    _os_log_impl(&dword_243AF9000, v28, v29, "callForAddParticipantsToShare containerSetupInfo: %@", v30, 0xCu);
    sub_243B0A49C(v31, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v31, -1, -1);
    MEMORY[0x245D489D0](v30, -1, -1);
  }

  v65 = v27;

  v33 = v68;

  v34 = sub_243B18D1C();
  v35 = sub_243B18E8C();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136315138;
    v38 = MEMORY[0x245D48400](v33, MEMORY[0x277D837D0]);
    v40 = v13;
    v41 = a5;
    v42 = a6;
    v43 = sub_243B09C80(v38, v39, aBlock);

    *(v36 + 4) = v43;
    a6 = v42;
    a5 = v41;
    v13 = v40;
    _os_log_impl(&dword_243AF9000, v34, v35, "callForAddParticipantsToShare emailAddresses: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x245D489D0](v37, -1, -1);
    MEMORY[0x245D489D0](v36, -1, -1);
  }

  v44 = v66;

  v45 = sub_243B18D1C();
  v46 = sub_243B18E8C();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    aBlock[0] = v48;
    *v47 = 136315138;
    v49 = MEMORY[0x245D48400](v44, MEMORY[0x277D837D0]);
    v51 = sub_243B09C80(v49, v50, aBlock);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_243AF9000, v45, v46, "callForAddParticipantsToShare phoneNumbers: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x245D489D0](v48, -1, -1);
    MEMORY[0x245D489D0](v47, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v52 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v53 = sub_243B18E2C();
    v54 = sub_243B18E2C();
    v55 = swift_allocObject();
    *(v55 + 16) = a5;
    *(v55 + 24) = a6;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v55;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_84;
    v56 = _Block_copy(aBlock);

    [v52 addParticipantsToShare:v67 containerSetupInfo:v65 emailAddresses:v53 phoneNumbers:v54 withReply:v56];
    _Block_release(v56);
    swift_unknownObjectRelease();
  }

  else
  {
    v57 = sub_243B18CDC();
    v58 = v61;
    (*(*(v57 - 8) + 56))(v61, 1, 1, v57);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v59 = v62;
    sub_243B18C5C();
    v60 = sub_243B18BFC();
    (*(v64 + 8))(v59, v13);
    a5(v58, 0, v60);

    sub_243B0A49C(v58, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B049C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(uint64_t, void, void *), uint64_t a8)
{
  v72 = a7;
  v73 = a8;
  v74 = a5;
  v75 = a4;
  v70 = a2;
  v11 = sub_243B18C1C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v67 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_243B18C2C();
  v68 = *(v14 - 8);
  v69 = v14;
  v15 = *(v68 + 64);
  MEMORY[0x28223BE20](v14);
  v66 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v65 = &v65 - v19;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v20 = sub_243B18D3C();
  __swift_project_value_buffer(v20, qword_281509098);
  v21 = a1;
  v22 = sub_243B18D1C();
  v23 = sub_243B18EBC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&dword_243AF9000, v22, v23, "callForAddParticipantsToShare urlWrapper: %@", v24, 0xCu);
    sub_243B0A49C(v25, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v25, -1, -1);
    MEMORY[0x245D489D0](v24, -1, -1);
  }

  v27 = sub_243B18D1C();
  v28 = sub_243B18E8C();

  v29 = os_log_type_enabled(v27, v28);
  v71 = a6;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136315138;
    v32 = MEMORY[0x245D48400](a3, MEMORY[0x277D837D0]);
    v34 = sub_243B09C80(v32, v33, aBlock);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_243AF9000, v27, v28, "callForAddParticipantsToShare emailAddresses: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x245D489D0](v31, -1, -1);
    MEMORY[0x245D489D0](v30, -1, -1);
  }

  v35 = v75;

  v36 = sub_243B18D1C();
  v37 = sub_243B18E8C();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v38 = 136315138;
    v40 = MEMORY[0x245D48400](v35, MEMORY[0x277D837D0]);
    v42 = sub_243B09C80(v40, v41, aBlock);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_243AF9000, v36, v37, "callForAddParticipantsToShare phoneNumbers: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x245D489D0](v39, -1, -1);
    MEMORY[0x245D489D0](v38, -1, -1);
  }

  v43 = sub_243B18D1C();
  v44 = sub_243B18E8C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 136315138;
    v76 = v74;
    aBlock[0] = v46;
    type metadata accessor for ParticipantPermission(0);
    v47 = sub_243B18D9C();
    v49 = sub_243B09C80(v47, v48, aBlock);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_243AF9000, v43, v44, "callForAddParticipantsToShare permissionType: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x245D489D0](v46, -1, -1);
    MEMORY[0x245D489D0](v45, -1, -1);
  }

  v50 = v71;
  v51 = sub_243B18D1C();
  v52 = sub_243B18E8C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 67109120;
    *(v53 + 4) = v50 & 1;
    _os_log_impl(&dword_243AF9000, v51, v52, "callForAddParticipantsToShare allowOthersToInvite: %{BOOL}d", v53, 8u);
    MEMORY[0x245D489D0](v53, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v54 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v55 = sub_243B18E2C();
    v56 = sub_243B18E2C();
    v57 = swift_allocObject();
    v58 = v73;
    *(v57 + 16) = v72;
    *(v57 + 24) = v58;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v57;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_90;
    v59 = _Block_copy(aBlock);

    [v54 addParticipantsToShareWithURLWrapper:v21 share:v70 emailAddresses:v55 phoneNumbers:v56 permissionType:v74 allowOthersToInvite:v50 & 1 withReply:v59];
    _Block_release(v59);
    swift_unknownObjectRelease();
  }

  else
  {
    v60 = sub_243B18CDC();
    v61 = v65;
    (*(*(v60 - 8) + 56))(v65, 1, 1, v60);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v62 = v66;
    v63 = v69;
    sub_243B18C5C();
    v64 = sub_243B18BFC();
    (*(v68 + 8))(v62, v63);
    v72(v61, 0, v64);

    sub_243B0A49C(v61, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B051F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void, void *), uint64_t a7)
{
  v72 = a6;
  v73 = a7;
  v69 = a2;
  v11 = sub_243B18C1C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v66 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_243B18C2C();
  v67 = *(v14 - 8);
  v68 = v14;
  v15 = *(v67 + 64);
  MEMORY[0x28223BE20](v14);
  v65 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v64 = &v63 - v19;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v20 = sub_243B18D3C();
  __swift_project_value_buffer(v20, qword_281509098);
  v21 = a1;
  v22 = sub_243B18D1C();
  v23 = sub_243B18EBC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&dword_243AF9000, v22, v23, "callForAddParticipantsToShare urlWrapper: %@", v24, 0xCu);
    sub_243B0A49C(v25, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v25, -1, -1);
    MEMORY[0x245D489D0](v24, -1, -1);
  }

  v70 = v21;

  v27 = sub_243B18D1C();
  v28 = sub_243B18E8C();

  v29 = os_log_type_enabled(v27, v28);
  v74 = a4;
  v71 = a3;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136315138;
    v32 = MEMORY[0x245D48400](a3, MEMORY[0x277D837D0]);
    v34 = sub_243B09C80(v32, v33, aBlock);
    a4 = v74;

    *(v30 + 4) = v34;
    _os_log_impl(&dword_243AF9000, v27, v28, "callForAddParticipantsToShare emailAddresses: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x245D489D0](v31, -1, -1);
    MEMORY[0x245D489D0](v30, -1, -1);
  }

  v35 = sub_243B18D1C();
  v36 = sub_243B18E8C();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315138;
    v39 = MEMORY[0x245D48400](a4, MEMORY[0x277D837D0]);
    v41 = sub_243B09C80(v39, v40, aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_243AF9000, v35, v36, "callForAddParticipantsToShare phoneNumbers: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x245D489D0](v38, -1, -1);
    MEMORY[0x245D489D0](v37, -1, -1);
  }

  v42 = sub_243B18D1C();
  v43 = sub_243B18E8C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock[0] = v45;
    *v44 = 136315138;
    v46 = sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v47 = MEMORY[0x245D48400](a5, v46);
    v49 = sub_243B09C80(v47, v48, aBlock);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_243AF9000, v42, v43, "callForAddParticipantsToShare optionsGroups: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x245D489D0](v45, -1, -1);
    MEMORY[0x245D489D0](v44, -1, -1);
  }

  v50 = v70;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v51 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v52 = sub_243B18E2C();
    v53 = sub_243B18E2C();
    sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v54 = sub_243B18E2C();
    v55 = swift_allocObject();
    v56 = v73;
    *(v55 + 16) = v72;
    *(v55 + 24) = v56;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v55;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_96;
    v57 = _Block_copy(aBlock);

    [v51 addParticipantsToShareWithURLWrapper:v50 share:v69 emailAddresses:v52 phoneNumbers:v53 optionsGroups:v54 withReply:v57];
    _Block_release(v57);
    swift_unknownObjectRelease();
  }

  else
  {
    v58 = sub_243B18CDC();
    v59 = v64;
    (*(*(v58 - 8) + 56))(v64, 1, 1, v58);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v60 = v65;
    v61 = v68;
    sub_243B18C5C();
    v62 = sub_243B18BFC();
    (*(v67 + 8))(v60, v61);
    v72(v59, 0, v62);

    sub_243B0A49C(v59, &qword_27EDA1750, &qword_243B19A68);
  }
}

uint64_t sub_243B059D8(void *a1, int a2, void *a3, void *a4, int a5, int a6, int a7, void *aBlock, void (*a9)(id, id, uint64_t, uint64_t, uint64_t, void *))
{
  v12 = _Block_copy(aBlock);
  v13 = sub_243B18E3C();
  v14 = sub_243B18E3C();
  sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
  v15 = sub_243B18E3C();
  _Block_copy(v12);
  v16 = a3;
  v17 = a4;
  v18 = a1;
  a9(v16, v17, v13, v14, v15, v12);
  _Block_release(v12);
  _Block_release(v12);
}

void sub_243B05B0C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(uint64_t, void, void *), uint64_t a8)
{
  v84 = a7;
  v85 = a8;
  v83 = a6;
  v86 = a5;
  v12 = sub_243B18C1C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v77 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_243B18C2C();
  v78 = *(v15 - 8);
  v79 = v15;
  v16 = *(v78 + 64);
  MEMORY[0x28223BE20](v15);
  v76 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v75 = &v75 - v20;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v21 = sub_243B18D3C();
  __swift_project_value_buffer(v21, qword_281509098);
  v22 = a1;
  v23 = sub_243B18D1C();
  v24 = sub_243B18EBC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&dword_243AF9000, v23, v24, "callForAddParticipantsToShare share: %@", v25, 0xCu);
    sub_243B0A49C(v26, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v26, -1, -1);
    MEMORY[0x245D489D0](v25, -1, -1);
  }

  v28 = a2;
  v29 = sub_243B18D1C();
  v30 = sub_243B18EBC();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&dword_243AF9000, v29, v30, "callForAddParticipantsToShare containerSetupInfo: %@", v31, 0xCu);
    sub_243B0A49C(v32, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v32, -1, -1);
    MEMORY[0x245D489D0](v31, -1, -1);
  }

  v80 = v28;
  v82 = v22;

  v34 = sub_243B18D1C();
  v35 = sub_243B18E8C();

  v36 = os_log_type_enabled(v34, v35);
  v37 = a3;
  v38 = a4;
  v81 = v37;
  if (v36)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v41 = MEMORY[0x245D48400](v37, MEMORY[0x277D837D0]);
    v43 = sub_243B09C80(v41, v42, aBlock);

    *(v39 + 4) = v43;
    a4 = v38;
    _os_log_impl(&dword_243AF9000, v34, v35, "callForAddParticipantsToShare emailAddresses: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x245D489D0](v40, -1, -1);
    MEMORY[0x245D489D0](v39, -1, -1);
  }

  v44 = sub_243B18D1C();
  v45 = sub_243B18E8C();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock[0] = v47;
    *v46 = 136315138;
    v48 = MEMORY[0x245D48400](a4, MEMORY[0x277D837D0]);
    v50 = sub_243B09C80(v48, v49, aBlock);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_243AF9000, v44, v45, "callForAddParticipantsToShare phoneNumbers: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x245D489D0](v47, -1, -1);
    MEMORY[0x245D489D0](v46, -1, -1);
  }

  v51 = sub_243B18D1C();
  v52 = sub_243B18E8C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 136315138;
    v87 = v86;
    aBlock[0] = v54;
    type metadata accessor for ParticipantPermission(0);
    v55 = sub_243B18D9C();
    v57 = sub_243B09C80(v55, v56, aBlock);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_243AF9000, v51, v52, "callForAddParticipantsToShare permissionType: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x245D489D0](v54, -1, -1);
    MEMORY[0x245D489D0](v53, -1, -1);
  }

  v58 = v83;
  v59 = v80;
  v60 = sub_243B18D1C();
  v61 = sub_243B18E8C();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 67109120;
    *(v62 + 4) = v58 & 1;
    _os_log_impl(&dword_243AF9000, v60, v61, "callForAddParticipantsToShare allowOthersToInvite: %{BOOL}d", v62, 8u);
    MEMORY[0x245D489D0](v62, -1, -1);
  }

  v63 = v82;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v64 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v65 = sub_243B18E2C();
    v66 = sub_243B18E2C();
    v67 = swift_allocObject();
    v68 = v85;
    *(v67 + 16) = v84;
    *(v67 + 24) = v68;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v67;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_102;
    v69 = _Block_copy(aBlock);

    [v64 addParticipantsToShare:v63 containerSetupInfo:v59 emailAddresses:v65 phoneNumbers:v66 permissionType:v86 allowOthersToInvite:v58 & 1 withReply:v69];
    _Block_release(v69);
    swift_unknownObjectRelease();
  }

  else
  {
    v70 = sub_243B18CDC();
    v71 = v75;
    (*(*(v70 - 8) + 56))(v75, 1, 1, v70);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v72 = v76;
    v73 = v79;
    sub_243B18C5C();
    v74 = sub_243B18BFC();
    (*(v78 + 8))(v72, v73);
    v84(v71, 0, v74);

    sub_243B0A49C(v71, &qword_27EDA1750, &qword_243B19A68);
  }
}

uint64_t sub_243B06418(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, void (*a10)(id, id, uint64_t, uint64_t, uint64_t, uint64_t, void *))
{
  v15 = _Block_copy(a9);
  v16 = sub_243B18E3C();
  v17 = sub_243B18E3C();
  _Block_copy(v15);
  v18 = a3;
  v19 = a4;
  v20 = a1;
  a10(v18, v19, v16, v17, a7, a8, v15);
  _Block_release(v15);
  _Block_release(v15);
}

void sub_243B06520(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void, void *), uint64_t a7)
{
  v79 = a6;
  v80 = a7;
  v81 = a4;
  v11 = sub_243B18C1C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v74 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_243B18C2C();
  v75 = *(v14 - 8);
  v76 = v14;
  v15 = *(v75 + 64);
  MEMORY[0x28223BE20](v14);
  v73 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v72 = &v72 - v19;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v20 = sub_243B18D3C();
  __swift_project_value_buffer(v20, qword_281509098);
  v21 = a1;
  v22 = sub_243B18D1C();
  v23 = sub_243B18EBC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&dword_243AF9000, v22, v23, "callForAddParticipantsToShare share: %@", v24, 0xCu);
    sub_243B0A49C(v25, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v25, -1, -1);
    MEMORY[0x245D489D0](v24, -1, -1);
  }

  v27 = a2;
  v28 = sub_243B18D1C();
  v29 = sub_243B18EBC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v27;
    *v31 = v27;
    v32 = v27;
    _os_log_impl(&dword_243AF9000, v28, v29, "callForAddParticipantsToShare containerSetupInfo: %@", v30, 0xCu);
    sub_243B0A49C(v31, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v31, -1, -1);
    MEMORY[0x245D489D0](v30, -1, -1);
  }

  v77 = v27;
  v78 = v21;

  v33 = sub_243B18D1C();
  v34 = sub_243B18E8C();

  v35 = a3;
  v36 = a5;
  if (os_log_type_enabled(v33, v34))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315138;
    v39 = MEMORY[0x245D48400](v35, MEMORY[0x277D837D0]);
    v41 = sub_243B09C80(v39, v40, aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_243AF9000, v33, v34, "callForAddParticipantsToShare emailAddresses: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x245D489D0](v38, -1, -1);
    MEMORY[0x245D489D0](v37, -1, -1);
  }

  v42 = v81;

  v43 = sub_243B18D1C();
  v44 = sub_243B18E8C();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v45 = 136315138;
    v47 = MEMORY[0x245D48400](v42, MEMORY[0x277D837D0]);
    v49 = sub_243B09C80(v47, v48, aBlock);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_243AF9000, v43, v44, "callForAddParticipantsToShare phoneNumbers: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x245D489D0](v46, -1, -1);
    MEMORY[0x245D489D0](v45, -1, -1);
  }

  v50 = sub_243B18D1C();
  v51 = sub_243B18E8C();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v52 = 136315138;
    v54 = sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v55 = MEMORY[0x245D48400](v36, v54);
    v57 = sub_243B09C80(v55, v56, aBlock);

    *(v52 + 4) = v57;
    _os_log_impl(&dword_243AF9000, v50, v51, "callForAddParticipantsToShare optionsGroups: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x245D489D0](v53, -1, -1);
    MEMORY[0x245D489D0](v52, -1, -1);
  }

  v58 = v77;
  v59 = v78;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v60 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v61 = sub_243B18E2C();
    v62 = sub_243B18E2C();
    sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v63 = sub_243B18E2C();
    v64 = swift_allocObject();
    v65 = v80;
    *(v64 + 16) = v79;
    *(v64 + 24) = v65;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v64;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_108;
    v66 = _Block_copy(aBlock);

    [v60 addParticipantsToShare:v59 containerSetupInfo:v58 emailAddresses:v61 phoneNumbers:v62 optionsGroups:v63 withReply:v66];
    _Block_release(v66);
    swift_unknownObjectRelease();
  }

  else
  {
    v67 = sub_243B18CDC();
    v68 = v72;
    (*(*(v67 - 8) + 56))(v72, 1, 1, v67);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v69 = v73;
    v70 = v76;
    sub_243B18C5C();
    v71 = sub_243B18BFC();
    (*(v75 + 8))(v69, v70);
    v79(v68, 0, v71);

    sub_243B0A49C(v68, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B06DE4(uint64_t a1, void (*a2)(char *, void, void *), uint64_t a3)
{
  v54 = a3;
  v56 = a2;
  v4 = sub_243B18C1C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_243B18C2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v48 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v46 - v13;
  v15 = sub_243B18CDC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v50 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v53 = &v46 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v46 - v22;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v24 = sub_243B18D3C();
  __swift_project_value_buffer(v24, qword_281509098);
  v25 = *(v16 + 16);
  v55 = a1;
  v51 = v25;
  v52 = v16 + 16;
  v25(v23, a1, v15);
  v26 = sub_243B18D1C();
  v27 = sub_243B18EBC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v47 = v14;
    v29 = v28;
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v29 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260]);
    v30 = sub_243B18F4C();
    v31 = v7;
    v33 = v32;
    (*(v16 + 8))(v23, v15);
    v34 = sub_243B09C80(v30, v33, aBlock);
    v7 = v31;

    *(v29 + 4) = v34;
    _os_log_impl(&dword_243AF9000, v26, v27, "callForExistingShareForFile url: %s", v29, 0xCu);
    v35 = v46;
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x245D489D0](v35, -1, -1);
    v36 = v29;
    v14 = v47;
    MEMORY[0x245D489D0](v36, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v23, v15);
  }

  v37 = v55;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v38 = qword_2815090B8;
  if (qword_2815090B8)
  {
    sub_243B16EE4(0, &qword_27EDA1740, 0x277CC6438);
    v39 = v53;
    v51(v53, v37, v15);
    swift_unknownObjectRetain();
    v42 = sub_243B099B8(v39, 0);
    logWrapperMessage(for:isReadOnly:error:)(v37, 0, 0);
    v43 = swift_allocObject();
    v44 = v54;
    *(v43 + 16) = v56;
    *(v43 + 24) = v44;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v43;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_114;
    v45 = _Block_copy(aBlock);

    [v38 existingShareForFileWithURLWrapper:v42 withReply:v45];

    _Block_release(v45);
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v16 + 56))(v14, 1, 1, v15);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v40 = v48;
    sub_243B18C5C();
    v41 = sub_243B18BFC();
    (*(v8 + 8))(v40, v7);
    v56(v14, 0, v41);

    sub_243B0A49C(v14, &qword_27EDA1750, &qword_243B19A68);
  }
}

uint64_t sub_243B07570(void *a1, uint64_t a2, uint64_t a3, const void *a4, void (*a5)(char *, void *))
{
  v8 = sub_243B18CDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a4);
  sub_243B18CCC();
  _Block_copy(v13);
  v14 = a1;
  a5(v12, v13);
  _Block_release(v13);
  _Block_release(v13);

  return (*(v9 + 8))(v12, v8);
}

void sub_243B07694(uint64_t a1, void *a2, void (*a3)(void, void, void *), uint64_t a4)
{
  v71 = a3;
  v7 = sub_243B18C1C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v65 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_243B18C2C();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  MEMORY[0x28223BE20](v10);
  v64 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_243B18CDC();
  v13 = *(v72 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v72);
  v61[1] = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v62 = v61 - v18;
  MEMORY[0x28223BE20](v17);
  v63 = v61 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v70 = v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v61 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = v61 - v27;
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v29 = sub_243B18D3C();
  v30 = __swift_project_value_buffer(v29, qword_281509098);
  sub_243B16F2C(a1, v28, &qword_27EDA1750, &qword_243B19A68);
  v69 = v30;
  v31 = sub_243B18D1C();
  v32 = sub_243B18EBC();
  v33 = os_log_type_enabled(v31, v32);
  v73 = v13;
  v68 = a1;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v61[0] = a2;
    v35 = v34;
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v35 = 136315138;
    sub_243B16F2C(v28, v26, &qword_27EDA1750, &qword_243B19A68);
    v37 = sub_243B18D9C();
    v39 = v38;
    sub_243B0A49C(v28, &qword_27EDA1750, &qword_243B19A68);
    v40 = sub_243B09C80(v37, v39, aBlock);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_243AF9000, v31, v32, "callForUserNameAndEmail url: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x245D489D0](v36, -1, -1);
    v41 = v35;
    a2 = v61[0];
    MEMORY[0x245D489D0](v41, -1, -1);
  }

  else
  {

    sub_243B0A49C(v28, &qword_27EDA1750, &qword_243B19A68);
  }

  v42 = a2;
  v43 = sub_243B18D1C();
  v44 = sub_243B18EBC();

  v45 = os_log_type_enabled(v43, v44);
  v46 = v72;
  if (v45)
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 138412290;
    *(v47 + 4) = v42;
    *v48 = a2;
    v49 = v42;
    _os_log_impl(&dword_243AF9000, v43, v44, "callForUserNameAndEmail containerSetupInfo: %@", v47, 0xCu);
    sub_243B0A49C(v48, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v48, -1, -1);
    MEMORY[0x245D489D0](v47, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v50 = qword_2815090B8;
  v51 = v73;
  v52 = v70;
  if (qword_2815090B8)
  {
    sub_243B16F2C(v68, v70, &qword_27EDA1750, &qword_243B19A68);
    if ((*(v51 + 48))(v52, 1, v46) == 1)
    {
      swift_unknownObjectRetain();
      sub_243B0A49C(v52, &qword_27EDA1750, &qword_243B19A68);
      v53 = 0;
    }

    else
    {
      v57 = v63;
      (*(v51 + 32))(v63, v52, v46);
      sub_243B16EE4(0, &qword_27EDA1740, 0x277CC6438);
      v58 = v62;
      (*(v51 + 16))(v62, v57, v46);
      swift_unknownObjectRetain();
      v53 = sub_243B099B8(v58, 0);
      logWrapperMessage(for:isReadOnly:error:)(v57, 0, 0);
      (*(v73 + 8))(v57, v46);
    }

    v59 = swift_allocObject();
    *(v59 + 16) = v71;
    *(v59 + 24) = a4;
    aBlock[4] = sub_243B0A66C;
    aBlock[5] = v59;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B07F58;
    aBlock[3] = &block_descriptor_120;
    v60 = _Block_copy(aBlock);

    [v50 userNameAndEmailWithURLWrapper:v53 containerSetupInfo:v42 withReply:v60];

    _Block_release(v60);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v54 = v64;
    v55 = v67;
    sub_243B18C5C();
    v56 = sub_243B18BFC();
    (*(v66 + 8))(v54, v55);
    v71(0, 0, v56);
  }
}

void sub_243B07F58(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(a2, a3, a4);
}

void sub_243B08174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_243B18C6C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

void sub_243B081F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(uint64_t, void, void *), uint64_t a8)
{
  v84 = a4;
  v85 = a7;
  v87 = a6;
  v89 = a5;
  v90 = a2;
  v11 = sub_243B18C1C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v81 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_243B18C2C();
  v82 = *(v14 - 8);
  v15 = *(v82 + 64);
  MEMORY[0x28223BE20](v14);
  v80 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v79 = &v75 - v19;
  v20 = sub_243B18CDC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v25 = sub_243B18D3C();
  v26 = __swift_project_value_buffer(v25, qword_281509098);
  v27 = *(v21 + 16);
  v83 = a1;
  v27(v24, a1, v20);
  v28 = sub_243B18D1C();
  v29 = sub_243B18EBC();
  v30 = os_log_type_enabled(v28, v29);
  v88 = a3;
  v86 = v20;
  v78 = v21;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v77 = v26;
    v32 = v31;
    v76 = swift_slowAlloc();
    aBlock[0] = v76;
    *v32 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260]);
    v33 = sub_243B18F4C();
    v34 = a8;
    v36 = v35;
    (*(v21 + 8))(v24, v20);
    v37 = sub_243B09C80(v33, v36, aBlock);
    a8 = v34;
    a3 = v88;

    *(v32 + 4) = v37;
    _os_log_impl(&dword_243AF9000, v28, v29, "callForForciblyShareFolder folderURL: %s", v32, 0xCu);
    v38 = v76;
    __swift_destroy_boxed_opaque_existential_0(v76);
    MEMORY[0x245D489D0](v38, -1, -1);
    MEMORY[0x245D489D0](v32, -1, -1);
  }

  else
  {

    (*(v21 + 8))(v24, v20);
  }

  v39 = v90;

  v40 = sub_243B18D1C();
  v41 = sub_243B18E8C();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v42 = 136315138;
    v44 = MEMORY[0x245D48400](v39, MEMORY[0x277D837D0]);
    v46 = sub_243B09C80(v44, v45, aBlock);

    *(v42 + 4) = v46;
    _os_log_impl(&dword_243AF9000, v40, v41, "callForForciblyShareFolder emailAddresses: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x245D489D0](v43, -1, -1);
    MEMORY[0x245D489D0](v42, -1, -1);
  }

  v47 = sub_243B18D1C();
  v48 = sub_243B18E8C();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v49 = 136315138;
    v51 = MEMORY[0x245D48400](a3, MEMORY[0x277D837D0]);
    v53 = sub_243B09C80(v51, v52, aBlock);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_243AF9000, v47, v48, "callForForciblyShareFolder phoneNumbers: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x245D489D0](v50, -1, -1);
    MEMORY[0x245D489D0](v49, -1, -1);
  }

  v54 = sub_243B18D1C();
  v55 = sub_243B18E8C();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v56 = 136315138;
    v91 = v89;
    aBlock[0] = v57;
    type metadata accessor for ParticipantPermission(0);
    v58 = sub_243B18D9C();
    v60 = sub_243B09C80(v58, v59, aBlock);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_243AF9000, v54, v55, "callForForciblyShareFolder permissionType: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x245D489D0](v57, -1, -1);
    MEMORY[0x245D489D0](v56, -1, -1);
  }

  v61 = v87;
  v62 = v86;
  v63 = sub_243B18D1C();
  v64 = sub_243B18E8C();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 67109120;
    *(v65 + 4) = v61 & 1;
    _os_log_impl(&dword_243AF9000, v63, v64, "callForForciblyShareFolder allowOthersToInvite: %{BOOL}d", v65, 8u);
    MEMORY[0x245D489D0](v65, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v66 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v67 = sub_243B18CAC();
    v68 = sub_243B18E2C();
    v69 = sub_243B18E2C();
    v70 = swift_allocObject();
    *(v70 + 16) = v85;
    *(v70 + 24) = a8;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v70;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_126;
    v71 = _Block_copy(aBlock);

    [v66 forciblyShareFolder:v67 emailAddresses:v68 phoneNumbers:v69 accessType:v84 permissionType:v89 allowOthersToInvite:v61 & 1 withReply:v71];
    _Block_release(v71);
    swift_unknownObjectRelease();
  }

  else
  {
    v72 = v79;
    (*(v78 + 56))(v79, 1, 1, v62);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v73 = v80;
    sub_243B18C5C();
    v74 = sub_243B18BFC();
    (*(v82 + 8))(v73, v14);
    v85(v72, 0, v74);

    sub_243B0A49C(v72, &qword_27EDA1750, &qword_243B19A68);
  }
}

uint64_t sub_243B08B58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, const void *a9, void (*a10)(char *, uint64_t, uint64_t, uint64_t, uint64_t, void, void *))
{
  v23 = a8;
  v22 = a7;
  v12 = sub_243B18CDC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a9);
  sub_243B18CCC();
  v18 = sub_243B18E3C();
  v19 = sub_243B18E3C();
  _Block_copy(v17);
  v20 = a1;
  a10(v16, v18, v19, a6, v22, v23, v17);
  _Block_release(v17);
  _Block_release(v17);

  return (*(v13 + 8))(v16, v12);
}

void sub_243B08CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void, void *), uint64_t a6)
{
  v81 = a5;
  v82 = a4;
  v10 = sub_243B18C1C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v76 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_243B18C2C();
  v77 = *(v13 - 8);
  v78 = v13;
  v14 = *(v77 + 64);
  MEMORY[0x28223BE20](v13);
  v75 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v74 = &v71 - v18;
  v19 = sub_243B18CDC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v24 = sub_243B18D3C();
  __swift_project_value_buffer(v24, qword_281509098);
  v25 = *(v20 + 16);
  v79 = a1;
  v25(v23, a1, v19);
  v26 = sub_243B18D1C();
  v27 = sub_243B18EBC();
  v28 = os_log_type_enabled(v26, v27);
  v83 = a2;
  v80 = v19;
  v73 = v20;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v71 = a6;
    v72 = a3;
    v30 = v29;
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260]);
    v32 = sub_243B18F4C();
    v34 = v33;
    (*(v20 + 8))(v23, v19);
    v35 = sub_243B09C80(v32, v34, aBlock);
    a2 = v83;

    *(v30 + 4) = v35;
    _os_log_impl(&dword_243AF9000, v26, v27, "callForForciblyShareFolder folderURL: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x245D489D0](v31, -1, -1);
    v36 = v30;
    a6 = v71;
    a3 = v72;
    MEMORY[0x245D489D0](v36, -1, -1);
  }

  else
  {

    (*(v20 + 8))(v23, v19);
  }

  v37 = sub_243B18D1C();
  v38 = sub_243B18E8C();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v41 = MEMORY[0x245D48400](a2, MEMORY[0x277D837D0]);
    v43 = sub_243B09C80(v41, v42, aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_243AF9000, v37, v38, "callForForciblyShareFolder emailAddresses: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x245D489D0](v40, -1, -1);
    MEMORY[0x245D489D0](v39, -1, -1);
  }

  v44 = sub_243B18D1C();
  v45 = sub_243B18E8C();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock[0] = v47;
    *v46 = 136315138;
    v48 = MEMORY[0x245D48400](a3, MEMORY[0x277D837D0]);
    v50 = sub_243B09C80(v48, v49, aBlock);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_243AF9000, v44, v45, "callForForciblyShareFolder phoneNumbers: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x245D489D0](v47, -1, -1);
    MEMORY[0x245D489D0](v46, -1, -1);
  }

  v51 = v82;

  v52 = sub_243B18D1C();
  v53 = sub_243B18E8C();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    aBlock[0] = v55;
    *v54 = 136315138;
    v56 = sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v57 = MEMORY[0x245D48400](v51, v56);
    v59 = sub_243B09C80(v57, v58, aBlock);

    *(v54 + 4) = v59;
    _os_log_impl(&dword_243AF9000, v52, v53, "callForAddParticipantsToShare optionsGroups: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x245D489D0](v55, -1, -1);
    MEMORY[0x245D489D0](v54, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v60 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v61 = sub_243B18CAC();
    v62 = sub_243B18E2C();
    v63 = sub_243B18E2C();
    sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v64 = sub_243B18E2C();
    v65 = swift_allocObject();
    *(v65 + 16) = v81;
    *(v65 + 24) = a6;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v65;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_132;
    v66 = _Block_copy(aBlock);

    [v60 forciblyShareFolder:v61 emailAddresses:v62 phoneNumbers:v63 optionsGroups:v64 withReply:v66];
    _Block_release(v66);
    swift_unknownObjectRelease();
  }

  else
  {
    v67 = v74;
    (*(v73 + 56))(v74, 1, 1);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v68 = v75;
    v69 = v78;
    sub_243B18C5C();
    v70 = sub_243B18BFC();
    (*(v77 + 8))(v68, v69);
    v81(v67, 0, v70);

    sub_243B0A49C(v67, &qword_27EDA1750, &qword_243B19A68);
  }
}

uint64_t sub_243B095E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, void (*a8)(char *, uint64_t, uint64_t, uint64_t, void *))
{
  v11 = sub_243B18CDC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(a7);
  sub_243B18CCC();
  v17 = sub_243B18E3C();
  v18 = sub_243B18E3C();
  sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
  v19 = sub_243B18E3C();
  _Block_copy(v16);
  v20 = a1;
  a8(v15, v17, v18, v19, v16);
  _Block_release(v16);
  _Block_release(v16);

  return (*(v12 + 8))(v15, v11);
}

id InitiateSharing.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InitiateSharing.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InitiateSharing();
  return objc_msgSendSuper2(&v2, sel_init);
}

id InitiateSharing.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InitiateSharing();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static InitiateSharing.hashableClassSet(_:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1768, &qword_243B19A78);
      [v2 addObject_];
      swift_unknownObjectRelease();
      --v3;
    }

    while (v3);
  }

  v6 = v2;
  sub_243B18E6C();

  result = sub_243B18F1C();
  __break(1u);
  return result;
}

id sub_243B099B8(uint64_t a1, char a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_243B18CAC();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() wrapperWithURL:v4 readonly:a2 & 1 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_243B18CDC();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_243B18C7C();

    swift_willThrow();
    v11 = sub_243B18CDC();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_243B09B50(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_243B18F7C();
  sub_243B18DBC();
  v6 = sub_243B18F8C();

  return sub_243B09BC8(a1, a2, v6);
}

unint64_t sub_243B09BC8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_243B18F5C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_243B09C80(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_243B09D4C(v11, 0, 0, 1, a1, a2);
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
    sub_243B16E84(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_243B09D4C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_243B09E58(a5, a6);
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
    result = sub_243B18F0C();
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

uint64_t sub_243B09E58(uint64_t a1, unint64_t a2)
{
  v4 = sub_243B09EA4(a1, a2);
  sub_243B09FD4(&unk_2856C3B50);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_243B09EA4(uint64_t a1, unint64_t a2)
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

  v6 = sub_243B0A0C0(v5, 0);
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

  result = sub_243B18F0C();
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
        v10 = sub_243B18DFC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_243B0A0C0(v10, 0);
        result = sub_243B18EFC();
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

uint64_t sub_243B09FD4(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_243B0A134(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_243B0A0C0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1770, &qword_243B19AB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_243B0A134(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1770, &qword_243B19AB0);
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

unint64_t sub_243B0A228(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1788, &qword_243B19AC0);
    v3 = sub_243B18F2C();
    v4 = a1 + 32;

    while (1)
    {
      sub_243B16F2C(v4, &v13, &qword_27EDA1790, &unk_243B19AC8);
      v5 = v13;
      v6 = v14;
      result = sub_243B09B50(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_243B16F94(&v15, (v3[7] + 32 * result));
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243B0A370()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_243B0A398(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_243B0A474()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_243B0A49C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_243B0A4FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_243B0A524()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_243B0A54C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_243B0A5A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_243B0A5F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_243B0A61C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_243B0A644()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_243B0A66C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_243B0AB60(uint64_t a1, void (**a2)(const void *, void, id))
{
  v51 = a1;
  v3 = sub_243B18C1C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_243B18C2C();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_243B18CDC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v48 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v19 = swift_allocObject();
  v49 = a2;
  v50 = v19;
  *(v19 + 16) = a2;
  _Block_copy(a2);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v20 = sub_243B18D3C();
  __swift_project_value_buffer(v20, qword_281509098);
  v21 = *(v10 + 16);
  v21(v18, v51, v9);
  v22 = sub_243B18D1C();
  v23 = sub_243B18EBC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v44 = v6;
    v25 = v24;
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v25 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260]);
    v26 = sub_243B18F4C();
    v43 = v21;
    v27 = v16;
    v29 = v28;
    (*(v10 + 8))(v18, v9);
    v30 = sub_243B09C80(v26, v29, aBlock);
    v16 = v27;
    v21 = v43;

    *(v25 + 4) = v30;
    _os_log_impl(&dword_243AF9000, v22, v23, "callForSharingStatus url: %s", v25, 0xCu);
    v31 = v42;
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x245D489D0](v31, -1, -1);
    v32 = v25;
    v6 = v44;
    MEMORY[0x245D489D0](v32, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v18, v9);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v33 = qword_2815090B8;
  if (qword_2815090B8)
  {
    sub_243B16EE4(0, &qword_27EDA1740, 0x277CC6438);
    v21(v16, v51, v9);
    swift_unknownObjectRetain();
    v37 = sub_243B099B8(v16, 0);
    logWrapperMessage(for:isReadOnly:error:)(v51, 0, 0);
    v38 = swift_allocObject();
    v39 = v50;
    *(v38 + 16) = sub_243B16E68;
    *(v38 + 24) = v39;
    aBlock[4] = sub_243B1705C;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFD490;
    aBlock[3] = &block_descriptor_375;
    v40 = _Block_copy(aBlock);

    [v33 sharingStatusForWithURLWrapper:v37 withReply:v40];

    _Block_release(v40);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v34 = v46;
    v35 = v47;
    sub_243B18C5C();
    v36 = sub_243B18BFC();
    (*(v6 + 8))(v34, v35);
    v37 = sub_243B18C6C();
    v49[2](v49, 0, v37);
  }
}

void sub_243B0B37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (**a7)(const void *, void *, void, void *))
{
  v110 = a6;
  v111 = a4;
  v112 = a5;
  v118 = a3;
  v115 = a2;
  v9 = sub_243B18C1C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v102 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_243B18C2C();
  v103 = *(v104 - 8);
  v12 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v101 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v97 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v98 = &v94 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v100 = &v94 - v21;
  MEMORY[0x28223BE20](v20);
  v105 = &v94 - v22;
  v23 = sub_243B18CDC();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = MEMORY[0x28223BE20](v23);
  v106 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v109 = &v94 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v94 - v30;
  v117 = swift_allocObject();
  *(v117 + 16) = a7;
  v107 = a7;
  _Block_copy(a7);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v32 = sub_243B18D3C();
  v33 = __swift_project_value_buffer(v32, qword_281509098);
  v34 = v24[2];
  v114 = a1;
  v34(v31, a1, v23);
  v35 = sub_243B18D1C();
  v36 = sub_243B18EBC();
  v37 = os_log_type_enabled(v35, v36);
  v116 = v24;
  v113 = v24 + 2;
  v108 = v34;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v96 = v33;
    v39 = v38;
    v95 = swift_slowAlloc();
    aBlock[0] = v95;
    *v39 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260]);
    v40 = sub_243B18F4C();
    v42 = v41;
    v99 = v24[1];
    v99(v31, v23);
    v43 = sub_243B09C80(v40, v42, aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_243AF9000, v35, v36, "callForFileSharing url: %s", v39, 0xCu);
    v44 = v95;
    __swift_destroy_boxed_opaque_existential_0(v95);
    MEMORY[0x245D489D0](v44, -1, -1);
    MEMORY[0x245D489D0](v39, -1, -1);
  }

  else
  {

    v99 = v24[1];
    v99(v31, v23);
  }

  v45 = v115;

  v46 = sub_243B18D1C();
  v47 = sub_243B18E8C();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    aBlock[0] = v49;
    *v48 = 136315138;
    v50 = MEMORY[0x245D48400](v45, MEMORY[0x277D837D0]);
    v52 = sub_243B09C80(v50, v51, aBlock);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_243AF9000, v46, v47, "callForFileSharing emailAddresses: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x245D489D0](v49, -1, -1);
    MEMORY[0x245D489D0](v48, -1, -1);
  }

  v53 = sub_243B18D1C();
  v54 = sub_243B18E8C();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v55 = 136315138;
    v57 = MEMORY[0x245D48400](v118, MEMORY[0x277D837D0]);
    v59 = sub_243B09C80(v57, v58, aBlock);

    *(v55 + 4) = v59;
    _os_log_impl(&dword_243AF9000, v53, v54, "callForFileSharing phoneNumbers: %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x245D489D0](v56, -1, -1);
    MEMORY[0x245D489D0](v55, -1, -1);
  }

  v60 = sub_243B18D1C();
  v61 = sub_243B18E8C();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v62 = 136315138;
    v119 = v111;
    aBlock[0] = v63;
    type metadata accessor for ParticipantPermission(0);
    v64 = sub_243B18D9C();
    v66 = sub_243B09C80(v64, v65, aBlock);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_243AF9000, v60, v61, "callForFileSharing accessType: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x245D489D0](v63, -1, -1);
    MEMORY[0x245D489D0](v62, -1, -1);
  }

  v67 = sub_243B18D1C();
  v68 = sub_243B18E8C();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v69 = 136315138;
    v119 = v112;
    aBlock[0] = v70;
    type metadata accessor for ParticipantPermission(0);
    v71 = sub_243B18D9C();
    v73 = sub_243B09C80(v71, v72, aBlock);

    *(v69 + 4) = v73;
    _os_log_impl(&dword_243AF9000, v67, v68, "callForFileSharing permissionType: %s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v70);
    MEMORY[0x245D489D0](v70, -1, -1);
    MEMORY[0x245D489D0](v69, -1, -1);
  }

  v74 = v116;
  v75 = v114;
  v76 = sub_243B18D1C();
  v77 = sub_243B18E8C();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 67109120;
    *(v78 + 4) = v110 & 1;
    _os_log_impl(&dword_243AF9000, v76, v77, "callForFileSharing allowOthersToInvite: %{BOOL}d", v78, 8u);
    MEMORY[0x245D489D0](v78, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v79 = qword_2815090B8;
  if (qword_2815090B8)
  {
    sub_243B16EE4(0, &qword_27EDA1740, 0x277CC6438);
    v80 = v109;
    v108(v109, v75, v23);
    swift_unknownObjectRetain();
    v87 = sub_243B099B8(v80, 0);
    logWrapperMessage(for:isReadOnly:error:)(v75, 0, 0);
    v89 = sub_243B18E2C();
    v90 = sub_243B18E2C();
    v91 = swift_allocObject();
    v92 = v117;
    *(v91 + 16) = sub_243B1706C;
    *(v91 + 24) = v92;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v91;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_358;
    v93 = _Block_copy(aBlock);

    [v79 startFileSharingWithURLWrapper:v87 emailAddresses:v89 phoneNumbers:v90 accessType:v111 permissionType:v112 allowOthersToInvite:v110 & 1 withReply:v93];

    _Block_release(v93);

    swift_unknownObjectRelease();
  }

  else
  {
    v81 = v105;
    (v74[7])(v105, 1, 1, v23);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v82 = v101;
    v83 = v104;
    sub_243B18C5C();
    v84 = sub_243B18BFC();
    (*(v103 + 8))(v82, v83);
    v85 = v100;
    sub_243B16F2C(v81, v100, &qword_27EDA1750, &qword_243B19A68);
    if ((v74[6])(v85, 1, v23) == 1)
    {
      v86 = 0;
    }

    else
    {
      v86 = sub_243B18CAC();
      v99(v85, v23);
    }

    v88 = sub_243B18C6C();
    v107[2](v107, v86, 0, v88);

    sub_243B0A49C(v81, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B0C174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void, void))
{
  v108 = a2;
  v109 = a3;
  v8 = sub_243B18C1C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v95 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_243B18C2C();
  v96 = *(v11 - 8);
  v97 = v11;
  v12 = *(v96 + 64);
  MEMORY[0x28223BE20](v11);
  v94 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v91 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v100 = &v88 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v93 = &v88 - v21;
  MEMORY[0x28223BE20](v20);
  v98 = &v88 - v22;
  v23 = sub_243B18CDC();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = MEMORY[0x28223BE20](v23);
  v99 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v102 = &v88 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v88 - v30;
  v106 = swift_allocObject();
  *(v106 + 16) = a5;
  _Block_copy(a5);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v32 = sub_243B18D3C();
  __swift_project_value_buffer(v32, qword_281509098);
  v33 = v24[2];
  v104 = v24 + 2;
  v105 = a1;
  v103 = v33;
  v33(v31, a1, v23);
  v34 = sub_243B18D1C();
  v35 = sub_243B18EBC();
  v36 = os_log_type_enabled(v34, v35);
  v107 = v23;
  v101 = v24;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v90 = a4;
    v89 = a5;
    v38 = v37;
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v38 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260]);
    v40 = sub_243B18F4C();
    v42 = v41;
    v92 = v24[1];
    v92(v31, v23);
    v43 = sub_243B09C80(v40, v42, aBlock);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_243AF9000, v34, v35, "callForFileSharing url: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x245D489D0](v39, -1, -1);
    a5 = v89;
    a4 = v90;
    MEMORY[0x245D489D0](v38, -1, -1);
  }

  else
  {

    v92 = v24[1];
    v92(v31, v23);
  }

  v44 = v108;

  v45 = sub_243B18D1C();
  v46 = sub_243B18E8C();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    aBlock[0] = v48;
    *v47 = 136315138;
    v49 = MEMORY[0x245D48400](v44, MEMORY[0x277D837D0]);
    v51 = sub_243B09C80(v49, v50, aBlock);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_243AF9000, v45, v46, "callForFileSharing emailAddresses: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x245D489D0](v48, -1, -1);
    MEMORY[0x245D489D0](v47, -1, -1);
  }

  v52 = v109;

  v53 = sub_243B18D1C();
  v54 = sub_243B18E8C();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v55 = 136315138;
    v57 = MEMORY[0x245D48400](v52, MEMORY[0x277D837D0]);
    v59 = sub_243B09C80(v57, v58, aBlock);

    *(v55 + 4) = v59;
    _os_log_impl(&dword_243AF9000, v53, v54, "callForFileSharing phoneNumbers: %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x245D489D0](v56, -1, -1);
    MEMORY[0x245D489D0](v55, -1, -1);
  }

  v60 = v107;

  v61 = sub_243B18D1C();
  v62 = sub_243B18E8C();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    aBlock[0] = v64;
    *v63 = 136315138;
    v65 = sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v66 = MEMORY[0x245D48400](a4, v65);
    v68 = sub_243B09C80(v66, v67, aBlock);

    *(v63 + 4) = v68;
    _os_log_impl(&dword_243AF9000, v61, v62, "callForFileSharing optionsGroups: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x245D489D0](v64, -1, -1);
    MEMORY[0x245D489D0](v63, -1, -1);
  }

  v69 = v105;
  v70 = v103;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v71 = qword_2815090B8;
  if (qword_2815090B8)
  {
    sub_243B16EE4(0, &qword_27EDA1740, 0x277CC6438);
    v72 = v102;
    v70(v102, v69, v60);
    swift_unknownObjectRetain();
    v80 = sub_243B099B8(v72, 0);
    logWrapperMessage(for:isReadOnly:error:)(v69, 0, 0);
    v82 = sub_243B18E2C();
    v83 = sub_243B18E2C();
    sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v84 = sub_243B18E2C();
    v85 = swift_allocObject();
    v86 = v106;
    *(v85 + 16) = sub_243B1706C;
    *(v85 + 24) = v86;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v85;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_347;
    v87 = _Block_copy(aBlock);

    [v71 startFileSharingWithURLWrapper:v80 emailAddresses:v82 phoneNumbers:v83 optionsGroups:v84 withReply:v87];

    _Block_release(v87);

    swift_unknownObjectRelease();
  }

  else
  {
    v73 = v101;
    v74 = v98;
    (v101[7])(v98, 1, 1, v60);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v75 = v94;
    v76 = v97;
    sub_243B18C5C();
    v77 = sub_243B18BFC();
    (*(v96 + 8))(v75, v76);
    v78 = v93;
    sub_243B16F2C(v74, v93, &qword_27EDA1750, &qword_243B19A68);
    if ((v73[6])(v78, 1, v60) == 1)
    {
      v79 = 0;
    }

    else
    {
      v79 = sub_243B18CAC();
      v92(v78, v60);
    }

    v81 = sub_243B18C6C();
    (a5)[2](a5, v79, 0, v81);

    sub_243B0A49C(v74, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B0CE44(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void (**a8)(const void *, void *, void, void *))
{
  v100 = a7;
  v102 = a5;
  v103 = a6;
  v13 = sub_243B18C1C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v92 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_243B18C2C();
  v93 = *(v16 - 8);
  v94 = v16;
  v17 = *(v93 + 64);
  MEMORY[0x28223BE20](v16);
  v91 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v95 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v96 = &v90 - v23;
  v101 = swift_allocObject();
  *(v101 + 16) = a8;
  v97 = a8;
  _Block_copy(a8);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v24 = sub_243B18D3C();
  __swift_project_value_buffer(v24, qword_281509098);
  v25 = a1;
  v26 = sub_243B18D1C();
  v27 = sub_243B18EBC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v30 = v25;
    _os_log_impl(&dword_243AF9000, v26, v27, "callForCloudKitAddToShare share: %@", v28, 0xCu);
    sub_243B0A49C(v29, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v29, -1, -1);
    MEMORY[0x245D489D0](v28, -1, -1);
  }

  v98 = v25;

  v31 = a2;
  v32 = sub_243B18D1C();
  v33 = sub_243B18EBC();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v31;
    *v35 = v31;
    v36 = v31;
    _os_log_impl(&dword_243AF9000, v32, v33, "callForCloudKitAddToShare containerSetupInfo: %@", v34, 0xCu);
    sub_243B0A49C(v35, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v35, -1, -1);
    MEMORY[0x245D489D0](v34, -1, -1);
  }

  v37 = sub_243B18D1C();
  v38 = sub_243B18E8C();

  v39 = os_log_type_enabled(v37, v38);
  v40 = a3;
  v41 = a4;
  v99 = v40;
  if (v39)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v42 = 136315138;
    v44 = MEMORY[0x245D48400](v40, MEMORY[0x277D837D0]);
    v46 = sub_243B09C80(v44, v45, aBlock);

    *(v42 + 4) = v46;
    a4 = v41;
    _os_log_impl(&dword_243AF9000, v37, v38, "callForCloudKitAddToShare emailAddresses: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x245D489D0](v43, -1, -1);
    MEMORY[0x245D489D0](v42, -1, -1);
  }

  v47 = sub_243B18D1C();
  v48 = sub_243B18E8C();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v49 = 136315138;
    v51 = MEMORY[0x245D48400](a4, MEMORY[0x277D837D0]);
    v53 = sub_243B09C80(v51, v52, aBlock);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_243AF9000, v47, v48, "callForCloudKitAddToShare phoneNumbers: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x245D489D0](v50, -1, -1);
    MEMORY[0x245D489D0](v49, -1, -1);
  }

  v54 = sub_243B18D1C();
  v55 = sub_243B18E8C();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v56 = 136315138;
    v104 = v102;
    aBlock[0] = v57;
    type metadata accessor for ParticipantPermission(0);
    v58 = sub_243B18D9C();
    v60 = sub_243B09C80(v58, v59, aBlock);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_243AF9000, v54, v55, "callForCloudKitAddToShare accessType: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x245D489D0](v57, -1, -1);
    MEMORY[0x245D489D0](v56, -1, -1);
  }

  v61 = sub_243B18D1C();
  v62 = sub_243B18E8C();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v63 = 136315138;
    v104 = v103;
    aBlock[0] = v64;
    type metadata accessor for ParticipantPermission(0);
    v65 = sub_243B18D9C();
    v67 = sub_243B09C80(v65, v66, aBlock);

    *(v63 + 4) = v67;
    _os_log_impl(&dword_243AF9000, v61, v62, "callForCloudKitAddToShare permissionType: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x245D489D0](v64, -1, -1);
    MEMORY[0x245D489D0](v63, -1, -1);
  }

  v68 = v98;
  v69 = sub_243B18D1C();
  v70 = sub_243B18E8C();
  v71 = os_log_type_enabled(v69, v70);
  v72 = v100;
  if (v71)
  {
    v73 = swift_slowAlloc();
    *v73 = 67109120;
    *(v73 + 4) = v72 & 1;
    _os_log_impl(&dword_243AF9000, v69, v70, "callForCloudKitAddToShare allowOthersToInvite: %{BOOL}d", v73, 8u);
    MEMORY[0x245D489D0](v73, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v74 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v75 = sub_243B18E2C();
    v76 = sub_243B18E2C();
    v77 = swift_allocObject();
    v78 = v101;
    *(v77 + 16) = sub_243B1706C;
    *(v77 + 24) = v78;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v77;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_336;
    v79 = _Block_copy(aBlock);

    LOBYTE(v89) = v72 & 1;
    [v74 addToCloudKitSharing:v68 containerSetupInfo:v31 emailAddresses:v75 phoneNumbers:v76 accessType:v102 permissionType:v103 allowOthersToInvite:v89 withReply:v79];
    _Block_release(v79);

    swift_unknownObjectRelease();
  }

  else
  {
    v80 = sub_243B18CDC();
    v81 = *(v80 - 8);
    v82 = v96;
    (*(v81 + 56))(v96, 1, 1, v80);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v83 = v91;
    v84 = v94;
    sub_243B18C5C();
    v85 = sub_243B18BFC();
    (*(v93 + 8))(v83, v84);
    v86 = v95;
    sub_243B16F2C(v82, v95, &qword_27EDA1750, &qword_243B19A68);
    v87 = 0;
    if ((*(v81 + 48))(v86, 1, v80) != 1)
    {
      v87 = sub_243B18CAC();
      (*(v81 + 8))(v86, v80);
    }

    v88 = sub_243B18C6C();
    v97[2](v97, v87, 0, v88);

    sub_243B0A49C(v82, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B0D900(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(const void *, void *, void, void *))
{
  v89 = a4;
  v11 = sub_243B18C1C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v80 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_243B18C2C();
  v81 = *(v14 - 8);
  v82 = v14;
  v15 = *(v81 + 64);
  MEMORY[0x28223BE20](v14);
  v79 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v83 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v84 = &v78 - v21;
  v88 = swift_allocObject();
  *(v88 + 16) = a6;
  v85 = a6;
  _Block_copy(a6);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v22 = sub_243B18D3C();
  __swift_project_value_buffer(v22, qword_281509098);
  v23 = a1;
  v24 = sub_243B18D1C();
  v25 = sub_243B18EBC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v23;
    *v27 = v23;
    v28 = v23;
    _os_log_impl(&dword_243AF9000, v24, v25, "callForCloudKitAddToShare share: %@", v26, 0xCu);
    sub_243B0A49C(v27, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v27, -1, -1);
    MEMORY[0x245D489D0](v26, -1, -1);
  }

  v29 = a2;
  v30 = sub_243B18D1C();
  v31 = sub_243B18EBC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v29;
    *v33 = v29;
    v34 = v29;
    _os_log_impl(&dword_243AF9000, v30, v31, "callForCloudKitAddToShare containerSetupInfo: %@", v32, 0xCu);
    sub_243B0A49C(v33, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v33, -1, -1);
    MEMORY[0x245D489D0](v32, -1, -1);
  }

  v86 = v29;
  v87 = v23;

  v35 = sub_243B18D1C();
  v36 = sub_243B18E8C();

  v37 = a3;
  v38 = a5;
  if (os_log_type_enabled(v35, v36))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v41 = MEMORY[0x245D48400](v37, MEMORY[0x277D837D0]);
    v43 = sub_243B09C80(v41, v42, aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_243AF9000, v35, v36, "callForCloudKitAddToShare emailAddresses: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x245D489D0](v40, -1, -1);
    MEMORY[0x245D489D0](v39, -1, -1);
  }

  v44 = v89;

  v45 = sub_243B18D1C();
  v46 = sub_243B18E8C();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    aBlock[0] = v48;
    *v47 = 136315138;
    v49 = MEMORY[0x245D48400](v44, MEMORY[0x277D837D0]);
    v51 = sub_243B09C80(v49, v50, aBlock);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_243AF9000, v45, v46, "callForCloudKitAddToShare phoneNumbers: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x245D489D0](v48, -1, -1);
    MEMORY[0x245D489D0](v47, -1, -1);
  }

  v52 = sub_243B18D1C();
  v53 = sub_243B18E8C();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    aBlock[0] = v55;
    *v54 = 136315138;
    v56 = sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v57 = MEMORY[0x245D48400](v38, v56);
    v59 = sub_243B09C80(v57, v58, aBlock);

    *(v54 + 4) = v59;
    _os_log_impl(&dword_243AF9000, v52, v53, "callForCloudKitAddToShare optionsGroups: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x245D489D0](v55, -1, -1);
    MEMORY[0x245D489D0](v54, -1, -1);
  }

  v61 = v86;
  v60 = v87;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v62 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v63 = sub_243B18E2C();
    v64 = sub_243B18E2C();
    sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v65 = sub_243B18E2C();
    v66 = swift_allocObject();
    v67 = v88;
    *(v66 + 16) = sub_243B1706C;
    *(v66 + 24) = v67;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v66;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_325;
    v68 = _Block_copy(aBlock);

    [v62 addToCloudKitSharing:v60 containerSetupInfo:v61 emailAddresses:v63 phoneNumbers:v64 optionsGroups:v65 withReply:v68];
    _Block_release(v68);

    swift_unknownObjectRelease();
  }

  else
  {
    v69 = sub_243B18CDC();
    v70 = *(v69 - 8);
    v71 = v84;
    (*(v70 + 56))(v84, 1, 1, v69);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v72 = v79;
    v73 = v82;
    sub_243B18C5C();
    v74 = sub_243B18BFC();
    (*(v81 + 8))(v72, v73);
    v75 = v83;
    sub_243B16F2C(v71, v83, &qword_27EDA1750, &qword_243B19A68);
    v76 = 0;
    if ((*(v70 + 48))(v75, 1, v69) != 1)
    {
      v76 = sub_243B18CAC();
      (*(v70 + 8))(v75, v69);
    }

    v77 = sub_243B18C6C();
    v85[2](v85, v76, 0, v77);

    sub_243B0A49C(v71, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B0E2B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, const void *a8)
{
  v98 = a7;
  v99 = a5;
  v100 = a6;
  v96 = a4;
  v12 = sub_243B18C1C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v91 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_243B18C2C();
  v92 = *(v15 - 8);
  v93 = v15;
  v16 = *(v92 + 64);
  MEMORY[0x28223BE20](v15);
  v90 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_243B18CDC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = swift_allocObject();
  *(v97 + 16) = a8;
  v94 = a8;
  _Block_copy(a8);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v23 = sub_243B18D3C();
  __swift_project_value_buffer(v23, qword_281509098);
  v24 = *(v19 + 16);
  v95 = a1;
  v24(v22, a1, v18);
  v25 = sub_243B18D1C();
  v26 = sub_243B18EBC();
  v27 = os_log_type_enabled(v25, v26);
  v101 = a3;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v89 = a2;
    v29 = v28;
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v29 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260]);
    v31 = sub_243B18F4C();
    v33 = v32;
    (*(v19 + 8))(v22, v18);
    v34 = sub_243B09C80(v31, v33, aBlock);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_243AF9000, v25, v26, "callForSharingURLAddToShare sharingURL: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    v35 = v30;
    a3 = v101;
    MEMORY[0x245D489D0](v35, -1, -1);
    v36 = v29;
    a2 = v89;
    MEMORY[0x245D489D0](v36, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v22, v18);
  }

  v37 = a2;
  v38 = sub_243B18D1C();
  v39 = sub_243B18EBC();

  v40 = os_log_type_enabled(v38, v39);
  v41 = v99;
  v42 = v96;
  if (v40)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138412290;
    *(v43 + 4) = v37;
    *v44 = v37;
    v45 = v37;
    _os_log_impl(&dword_243AF9000, v38, v39, "callForSharingURLAddToShare containerSetupInfo: %@", v43, 0xCu);
    sub_243B0A49C(v44, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v44, -1, -1);
    MEMORY[0x245D489D0](v43, -1, -1);
  }

  v46 = sub_243B18D1C();
  v47 = sub_243B18E8C();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    aBlock[0] = v49;
    *v48 = 136315138;
    v50 = MEMORY[0x245D48400](a3, MEMORY[0x277D837D0]);
    v52 = sub_243B09C80(v50, v51, aBlock);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_243AF9000, v46, v47, "callForSharingURLAddToShare emailAddresses: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x245D489D0](v49, -1, -1);
    MEMORY[0x245D489D0](v48, -1, -1);
  }

  v53 = sub_243B18D1C();
  v54 = sub_243B18E8C();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v55 = 136315138;
    v57 = MEMORY[0x245D48400](v42, MEMORY[0x277D837D0]);
    v59 = sub_243B09C80(v57, v58, aBlock);

    *(v55 + 4) = v59;
    _os_log_impl(&dword_243AF9000, v53, v54, "callForSharingURLAddToShare phoneNumbers: %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x245D489D0](v56, -1, -1);
    MEMORY[0x245D489D0](v55, -1, -1);
  }

  v60 = sub_243B18D1C();
  v61 = sub_243B18E8C();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v102 = v41;
    aBlock[0] = v63;
    *v62 = 136315138;
    type metadata accessor for ParticipantPermission(0);
    v64 = sub_243B18D9C();
    v66 = sub_243B09C80(v64, v65, aBlock);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_243AF9000, v60, v61, "callForSharingURLAddToShare accessType: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x245D489D0](v63, -1, -1);
    MEMORY[0x245D489D0](v62, -1, -1);
  }

  v67 = sub_243B18D1C();
  v68 = sub_243B18E8C();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v69 = 136315138;
    v102 = v100;
    aBlock[0] = v70;
    type metadata accessor for ParticipantPermission(0);
    v71 = sub_243B18D9C();
    v73 = sub_243B09C80(v71, v72, aBlock);

    *(v69 + 4) = v73;
    _os_log_impl(&dword_243AF9000, v67, v68, "callForSharingURLAddToShare permissionType: %s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v70);
    MEMORY[0x245D489D0](v70, -1, -1);
    MEMORY[0x245D489D0](v69, -1, -1);
  }

  v74 = v98;
  v75 = sub_243B18D1C();
  v76 = sub_243B18E8C();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 67109120;
    *(v77 + 4) = v74 & 1;
    _os_log_impl(&dword_243AF9000, v75, v76, "callForSharingURLAddToShare allowOthersToInvite: %{BOOL}d", v77, 8u);
    MEMORY[0x245D489D0](v77, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v78 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v79 = sub_243B18CAC();
    v80 = sub_243B18E2C();
    v81 = sub_243B18E2C();
    v82 = swift_allocObject();
    v83 = v97;
    *(v82 + 16) = sub_243B16E60;
    *(v82 + 24) = v83;
    aBlock[4] = sub_243B1713C;
    aBlock[5] = v82;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B00C60;
    aBlock[3] = &block_descriptor_314;
    v84 = _Block_copy(aBlock);

    LOBYTE(v87) = v74 & 1;
    [v78 addToShareFromSharingURL:v79 containerSetupInfo:v37 emailAddresses:v80 phoneNumbers:v81 accessType:v41 permissionType:v100 allowOthersToInvite:v87 withReply:v84];
    _Block_release(v84);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v85 = v90;
    v86 = v93;
    sub_243B18C5C();
    v80 = sub_243B18BFC();
    (*(v92 + 8))(v85, v86);
    v81 = sub_243B18C6C();
    (*(v94 + 2))(v94, 0, 0, v81);
  }
}

void sub_243B0ED4C(uint64_t a1, void *a2, void (**a3)(const void *, void, void *))
{
  v50 = a2;
  v5 = sub_243B18C1C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_243B18C2C();
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  MEMORY[0x28223BE20](v8);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_243B18CDC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  v48 = a3;
  _Block_copy(a3);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v17 = sub_243B18D3C();
  __swift_project_value_buffer(v17, qword_281509098);
  v18 = *(v12 + 16);
  v49 = a1;
  v18(v15, a1, v11);
  v19 = sub_243B18D1C();
  v20 = sub_243B18EBC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v43 = v16;
    v23 = v22;
    aBlock[0] = v22;
    *v21 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260]);
    v24 = sub_243B18F4C();
    v26 = v25;
    (*(v12 + 8))(v15, v11);
    v27 = sub_243B09C80(v24, v26, aBlock);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_243AF9000, v19, v20, "callForSharingURLRemoveShare sharingURL: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v28 = v23;
    v16 = v43;
    MEMORY[0x245D489D0](v28, -1, -1);
    MEMORY[0x245D489D0](v21, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  v29 = v50;
  v30 = v50;
  v31 = sub_243B18D1C();
  v32 = sub_243B18EBC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v30;
    *v34 = v29;
    v35 = v30;
    _os_log_impl(&dword_243AF9000, v31, v32, "callForSharingURLRemoveShare containerSetupInfo: %@", v33, 0xCu);
    sub_243B0A49C(v34, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v34, -1, -1);
    MEMORY[0x245D489D0](v33, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v36 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v37 = sub_243B18CAC();
    v38 = swift_allocObject();
    *(v38 + 16) = sub_243B17070;
    *(v38 + 24) = v16;
    aBlock[4] = sub_243B17060;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B014FC;
    aBlock[3] = &block_descriptor_304;
    v39 = _Block_copy(aBlock);

    [v36 removeFromShareFromSharingURL:v37 containerSetupInfo:v30 withReply:v39];
    _Block_release(v39);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v40 = v44;
    v41 = v47;
    sub_243B18C5C();
    v42 = sub_243B18BFC();
    (*(v46 + 8))(v40, v41);
    v37 = sub_243B18C6C();
    v48[2](v48, 0, v37);
  }
}

void sub_243B0F37C(void *a1, void *a2, void (**a3)(void, void, void))
{
  v6 = sub_243B18C1C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v33[1] = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_243B18C2C();
  v34 = *(v9 - 8);
  v35 = v9;
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  _Block_copy(a3);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v14 = sub_243B18D3C();
  __swift_project_value_buffer(v14, qword_281509098);
  v15 = a1;
  v16 = sub_243B18D1C();
  v17 = sub_243B18EBC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&dword_243AF9000, v16, v17, "callForRemoveShare share: %@", v18, 0xCu);
    sub_243B0A49C(v19, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v19, -1, -1);
    MEMORY[0x245D489D0](v18, -1, -1);
  }

  v21 = a2;
  v22 = sub_243B18D1C();
  v23 = sub_243B18EBC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = a2;
    v26 = v21;
    _os_log_impl(&dword_243AF9000, v22, v23, "callForRemoveShare containerSetupInfo: %@", v24, 0xCu);
    sub_243B0A49C(v25, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v25, -1, -1);
    MEMORY[0x245D489D0](v24, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v27 = qword_2815090B8;
  if (qword_2815090B8)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = sub_243B17070;
    *(v28 + 24) = v13;
    aBlock[4] = sub_243B17060;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B014FC;
    aBlock[3] = &block_descriptor_293;
    v29 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v27 removeFromShare:v15 containerSetupInfo:v21 withReply:v29];
    _Block_release(v29);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v30 = v35;
    sub_243B18C5C();
    v31 = sub_243B18BFC();
    (*(v34 + 8))(v12, v30);
    v32 = sub_243B18C6C();
    (a3)[2](a3, 0, v32);
  }
}

void sub_243B0F864(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = sub_243B18C1C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_243B18C2C();
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v39 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_243B18CDC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  _Block_copy(a2);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v17 = sub_243B18D3C();
  __swift_project_value_buffer(v17, qword_281509098);
  v18 = *(v12 + 16);
  v41 = a1;
  v18(v15, a1, v11);
  v19 = sub_243B18D1C();
  v20 = sub_243B18EBC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v38 = a2;
    v22 = v21;
    v37[0] = swift_slowAlloc();
    aBlock[0] = v37[0];
    *v22 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260]);
    v23 = sub_243B18F4C();
    v37[1] = v7;
    v24 = v16;
    v25 = v8;
    v27 = v26;
    (*(v12 + 8))(v15, v11);
    v28 = sub_243B09C80(v23, v27, aBlock);
    v8 = v25;
    v16 = v24;

    *(v22 + 4) = v28;
    _os_log_impl(&dword_243AF9000, v19, v20, "callForFileURLRemoveShare url: %s", v22, 0xCu);
    v29 = v37[0];
    __swift_destroy_boxed_opaque_existential_0(v37[0]);
    MEMORY[0x245D489D0](v29, -1, -1);
    v30 = v22;
    a2 = v38;
    MEMORY[0x245D489D0](v30, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v31 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v32 = sub_243B18CAC();
    v33 = swift_allocObject();
    *(v33 + 16) = sub_243B16E58;
    *(v33 + 24) = v16;
    aBlock[4] = sub_243B17060;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B014FC;
    aBlock[3] = &block_descriptor_282;
    v34 = _Block_copy(aBlock);

    [v31 removeFromShareForFileURL:v32 withReply:v34];
    _Block_release(v34);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v35 = v39;
    sub_243B18C5C();
    v36 = sub_243B18BFC();
    (*(v40 + 8))(v35, v8);
    v32 = sub_243B18C6C();
    (a2)[2](a2, 0, v32);
  }
}

void sub_243B0FDCC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, const void *a8)
{
  v98 = a6;
  v99 = a7;
  v101 = a3;
  v95 = a2;
  v12 = sub_243B18C1C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v85 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_243B18C2C();
  v86 = *(v87 - 8);
  v15 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v84 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v17 = *(*(v90 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v90);
  v93 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v89 = &v83 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v83 - v22;
  v24 = sub_243B18CDC();
  v25 = *(v24 - 8);
  v26 = v25[8];
  MEMORY[0x28223BE20](v24);
  v28 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = swift_allocObject();
  *(v100 + 16) = a8;
  v88 = a8;
  _Block_copy(a8);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v29 = sub_243B18D3C();
  __swift_project_value_buffer(v29, qword_281509098);
  v30 = v25[2];
  v94 = a1;
  v30(v28, a1, v24);
  v31 = sub_243B18D1C();
  v32 = sub_243B18EBC();
  v33 = os_log_type_enabled(v31, v32);
  v96 = a4;
  v97 = a5;
  v91 = v25;
  v92 = v24;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260]);
    v36 = sub_243B18F4C();
    v37 = v24;
    v39 = v38;
    v83 = v25[1];
    v83(v28, v37);
    v40 = sub_243B09C80(v36, v39, aBlock);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_243AF9000, v31, v32, "callForMailContent sharingURL: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x245D489D0](v35, -1, -1);
    MEMORY[0x245D489D0](v34, -1, -1);
  }

  else
  {

    v83 = v25[1];
    v83(v28, v24);
  }

  v41 = v95;
  v42 = sub_243B18D1C();
  v43 = sub_243B18EBC();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412290;
    *(v44 + 4) = v41;
    *v45 = v41;
    v46 = v41;
    _os_log_impl(&dword_243AF9000, v42, v43, "callForMailContent share: %@", v44, 0xCu);
    sub_243B0A49C(v45, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v45, -1, -1);
    MEMORY[0x245D489D0](v44, -1, -1);
  }

  sub_243B16F2C(v101, v23, &qword_27EDA1750, &qword_243B19A68);
  v47 = sub_243B18D1C();
  v48 = sub_243B18EBC();
  v49 = os_log_type_enabled(v47, v48);
  v95 = v41;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    aBlock[0] = v51;
    *v50 = 136315138;
    sub_243B16F2C(v23, v89, &qword_27EDA1750, &qword_243B19A68);
    v52 = sub_243B18D9C();
    v54 = v53;
    sub_243B0A49C(v23, &qword_27EDA1750, &qword_243B19A68);
    v55 = sub_243B09C80(v52, v54, aBlock);

    *(v50 + 4) = v55;
    _os_log_impl(&dword_243AF9000, v47, v48, "callForMailContent fileURL: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x245D489D0](v51, -1, -1);
    MEMORY[0x245D489D0](v50, -1, -1);
  }

  else
  {

    sub_243B0A49C(v23, &qword_27EDA1750, &qword_243B19A68);
  }

  v57 = v98;
  v56 = v99;
  v59 = v96;
  v58 = v97;

  v60 = sub_243B18D1C();
  v61 = sub_243B18E8C();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock[0] = v63;
    *v62 = 136315138;
    *(v62 + 4) = sub_243B09C80(v59, v58, aBlock);
    _os_log_impl(&dword_243AF9000, v60, v61, "callForMailContent appName: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x245D489D0](v63, -1, -1);
    MEMORY[0x245D489D0](v62, -1, -1);
  }

  sub_243B0A54C(v57, v56);
  v64 = sub_243B18D1C();
  v65 = sub_243B18E9C();
  sub_243B0A5A0(v57, v56);
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    aBlock[0] = v67;
    *v66 = 136315138;
    v68 = sub_243B18CEC();
    v70 = sub_243B09C80(v68, v69, aBlock);

    *(v66 + 4) = v70;
    _os_log_impl(&dword_243AF9000, v64, v65, "callForMailContent appIconData: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x245D489D0](v67, -1, -1);
    MEMORY[0x245D489D0](v66, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v71 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v72 = sub_243B18CAC();
    v73 = v93;
    sub_243B16F2C(v101, v93, &qword_27EDA1750, &qword_243B19A68);
    v74 = v92;
    if ((v91[6])(v73, 1, v92) == 1)
    {
      v75 = 0;
    }

    else
    {
      v75 = sub_243B18CAC();
      v83(v73, v74);
    }

    v78 = sub_243B18D5C();
    v79 = sub_243B18CFC();
    v80 = swift_allocObject();
    v81 = v100;
    *(v80 + 16) = sub_243B16E50;
    *(v80 + 24) = v81;
    aBlock[4] = sub_243B17078;
    aBlock[5] = v80;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B02A60;
    aBlock[3] = &block_descriptor_272;
    v82 = _Block_copy(aBlock);

    [v71 mailContentFromSharingURL:v72 share:v95 fileURL:v75 appName:v78 appIconData:v79 withReply:v82];
    _Block_release(v82);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v76 = v84;
    v77 = v87;
    sub_243B18C5C();
    v78 = sub_243B18BFC();
    (*(v86 + 8))(v76, v77);
    v79 = sub_243B18C6C();
    (*(v88 + 2))(v88, 0, 0, v79);
  }
}

void sub_243B10898(uint64_t a1, void *a2, void (**a3)(const void *, void, void *))
{
  v50 = a2;
  v5 = sub_243B18C1C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_243B18C2C();
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  MEMORY[0x28223BE20](v8);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_243B18CDC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  v48 = a3;
  _Block_copy(a3);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v17 = sub_243B18D3C();
  __swift_project_value_buffer(v17, qword_281509098);
  v18 = *(v12 + 16);
  v49 = a1;
  v18(v15, a1, v11);
  v19 = sub_243B18D1C();
  v20 = sub_243B18EBC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v43 = v16;
    v23 = v22;
    aBlock[0] = v22;
    *v21 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260]);
    v24 = sub_243B18F4C();
    v26 = v25;
    (*(v12 + 8))(v15, v11);
    v27 = sub_243B09C80(v24, v26, aBlock);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_243AF9000, v19, v20, "callForMetadataFromShareURL sharingURL: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v28 = v23;
    v16 = v43;
    MEMORY[0x245D489D0](v28, -1, -1);
    MEMORY[0x245D489D0](v21, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  v29 = v50;
  v30 = v50;
  v31 = sub_243B18D1C();
  v32 = sub_243B18EBC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v30;
    *v34 = v29;
    v35 = v30;
    _os_log_impl(&dword_243AF9000, v31, v32, "callForMetadataFromShareURL containerSetupInfo: %@", v33, 0xCu);
    sub_243B0A49C(v34, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v34, -1, -1);
    MEMORY[0x245D489D0](v33, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v36 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v37 = sub_243B18CAC();
    v38 = swift_allocObject();
    *(v38 + 16) = sub_243B16E48;
    *(v38 + 24) = v16;
    aBlock[4] = sub_243B17068;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B0342C;
    aBlock[3] = &block_descriptor_262;
    v39 = _Block_copy(aBlock);

    [v36 getMetadataFromShareFromSharingURL:v37 containerSetupInfo:v30 withReply:v39];
    _Block_release(v39);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v40 = v44;
    v41 = v47;
    sub_243B18C5C();
    v42 = sub_243B18BFC();
    (*(v46 + 8))(v40, v41);
    v37 = sub_243B18C6C();
    v48[2](v48, 0, v37);
  }
}

uint64_t sub_243B10EC8(void *a1, void *a2, void (**a3)(const void *, void *, void, void *))
{
  v6 = sub_243B18C1C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v44[1] = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_243B18C2C();
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v46 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v48 = v44 - v17;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v47 = a3;
  _Block_copy(a3);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v19 = sub_243B18D3C();
  __swift_project_value_buffer(v19, qword_281509098);
  v20 = a1;
  v21 = sub_243B18D1C();
  v22 = sub_243B18EBC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&dword_243AF9000, v21, v22, "callForUpdateShare share: %@", v23, 0xCu);
    sub_243B0A49C(v24, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v24, -1, -1);
    MEMORY[0x245D489D0](v23, -1, -1);
  }

  v26 = a2;
  v27 = sub_243B18D1C();
  v28 = sub_243B18EBC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = a2;
    v31 = v26;
    _os_log_impl(&dword_243AF9000, v27, v28, "callForUpdateShare containerSetupInfo: %@", v29, 0xCu);
    sub_243B0A49C(v30, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v30, -1, -1);
    MEMORY[0x245D489D0](v29, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v32 = qword_2815090B8;
  if (qword_2815090B8)
  {
    v33 = swift_allocObject();
    *(v33 + 16) = sub_243B1706C;
    *(v33 + 24) = v18;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_252;
    v34 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v32 updateShare:v20 containerSetupInfo:v26 withReply:v34];
    _Block_release(v34);

    return swift_unknownObjectRelease();
  }

  else
  {
    v36 = sub_243B18CDC();
    v37 = *(v36 - 8);
    v38 = v48;
    (*(v37 + 56))(v48, 1, 1, v36);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    sub_243B18C5C();
    v39 = sub_243B18BFC();
    (*(v45 + 8))(v12, v9);
    v40 = v38;
    v41 = v46;
    sub_243B16F2C(v40, v46, &qword_27EDA1750, &qword_243B19A68);
    v42 = 0;
    if ((*(v37 + 48))(v41, 1, v36) != 1)
    {
      v42 = sub_243B18CAC();
      (*(v37 + 8))(v41, v36);
    }

    v43 = sub_243B18C6C();
    v47[2](v47, v42, 0, v43);

    sub_243B0A49C(v48, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B11530(void *a1, void (**a2)(void, void, void))
{
  v4 = sub_243B18C1C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_243B18C2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  _Block_copy(a2);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v12 = sub_243B18D3C();
  __swift_project_value_buffer(v12, qword_281509098);
  v13 = a1;
  v14 = sub_243B18D1C();
  v15 = sub_243B18EBC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = v10;
    v17 = v7;
    v18 = v16;
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v13;
    *v19 = v13;
    v20 = v13;
    _os_log_impl(&dword_243AF9000, v14, v15, "callForCurrentUserSharingStatus share: %@", v18, 0xCu);
    sub_243B0A49C(v19, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v19, -1, -1);
    v21 = v18;
    v7 = v17;
    v10 = v28;
    MEMORY[0x245D489D0](v21, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v22 = qword_2815090B8;
  if (qword_2815090B8)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = sub_243B17074;
    *(v23 + 24) = v11;
    aBlock[4] = sub_243B17064;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B04060;
    aBlock[3] = &block_descriptor_241;
    v24 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v22 currentUserSharingStatusFor:v13 withReply:v24];
    _Block_release(v24);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    sub_243B18C5C();
    v25 = sub_243B18BFC();
    (*(v7 + 8))(v10, v6);
    v26 = sub_243B18C6C();
    (a2)[2](a2, 0, v26);
  }
}

void sub_243B1196C(void *a1, void *a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void, void))
{
  v73 = a4;
  v74 = a3;
  v8 = sub_243B18C1C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v66[1] = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_243B18C2C();
  v67 = *(v11 - 8);
  v68 = v11;
  v12 = *(v67 + 64);
  MEMORY[0x28223BE20](v11);
  v66[0] = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v69 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v71 = v66 - v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  _Block_copy(a5);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v20 = sub_243B18D3C();
  __swift_project_value_buffer(v20, qword_281509098);
  v21 = a1;
  v22 = sub_243B18D1C();
  v23 = sub_243B18EBC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&dword_243AF9000, v22, v23, "callForAddParticipantsToShare share: %@", v24, 0xCu);
    sub_243B0A49C(v25, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v25, -1, -1);
    MEMORY[0x245D489D0](v24, -1, -1);
  }

  v27 = a2;
  v28 = sub_243B18D1C();
  v29 = sub_243B18EBC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v27;
    *v31 = v27;
    v32 = v27;
    _os_log_impl(&dword_243AF9000, v28, v29, "callForAddParticipantsToShare containerSetupInfo: %@", v30, 0xCu);
    sub_243B0A49C(v31, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v31, -1, -1);
    MEMORY[0x245D489D0](v30, -1, -1);
  }

  v72 = v27;
  v70 = v21;

  v33 = v74;

  v34 = sub_243B18D1C();
  v35 = sub_243B18E8C();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136315138;
    v38 = MEMORY[0x245D48400](v33, MEMORY[0x277D837D0]);
    v40 = a5;
    v41 = v19;
    v42 = sub_243B09C80(v38, v39, aBlock);

    *(v36 + 4) = v42;
    v19 = v41;
    a5 = v40;
    _os_log_impl(&dword_243AF9000, v34, v35, "callForAddParticipantsToShare emailAddresses: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x245D489D0](v37, -1, -1);
    MEMORY[0x245D489D0](v36, -1, -1);
  }

  v43 = v73;

  v44 = sub_243B18D1C();
  v45 = sub_243B18E8C();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock[0] = v47;
    *v46 = 136315138;
    v48 = MEMORY[0x245D48400](v43, MEMORY[0x277D837D0]);
    v50 = sub_243B09C80(v48, v49, aBlock);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_243AF9000, v44, v45, "callForAddParticipantsToShare phoneNumbers: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x245D489D0](v47, -1, -1);
    MEMORY[0x245D489D0](v46, -1, -1);
  }

  v51 = v72;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v52 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v53 = sub_243B18E2C();
    v54 = sub_243B18E2C();
    v55 = swift_allocObject();
    *(v55 + 16) = sub_243B1706C;
    *(v55 + 24) = v19;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v55;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_231;
    v56 = _Block_copy(aBlock);

    [v52 addParticipantsToShare:v70 containerSetupInfo:v51 emailAddresses:v53 phoneNumbers:v54 withReply:v56];
    _Block_release(v56);

    swift_unknownObjectRelease();
  }

  else
  {
    v57 = sub_243B18CDC();
    v58 = *(v57 - 8);
    v59 = v71;
    (*(v58 + 56))(v71, 1, 1, v57);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v60 = v66[0];
    v61 = v68;
    sub_243B18C5C();
    v62 = sub_243B18BFC();
    (*(v67 + 8))(v60, v61);
    v63 = v69;
    sub_243B16F2C(v59, v69, &qword_27EDA1750, &qword_243B19A68);
    v64 = 0;
    if ((*(v58 + 48))(v63, 1, v57) != 1)
    {
      v64 = sub_243B18CAC();
      (*(v58 + 8))(v63, v57);
    }

    v65 = sub_243B18C6C();
    (a5)[2](a5, v64, 0, v65);

    sub_243B0A49C(v71, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B121F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (**a7)(const void *, void *, void, void *))
{
  v77 = a6;
  v80 = a5;
  v76 = a2;
  v11 = sub_243B18C1C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v70[1] = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_243B18C2C();
  v71 = *(v14 - 8);
  v72 = v14;
  v15 = *(v71 + 64);
  MEMORY[0x28223BE20](v14);
  v70[0] = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v73 = v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v74 = v70 - v21;
  v78 = swift_allocObject();
  *(v78 + 16) = a7;
  v75 = a7;
  _Block_copy(a7);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v22 = sub_243B18D3C();
  __swift_project_value_buffer(v22, qword_281509098);
  v23 = a1;
  v24 = sub_243B18D1C();
  v25 = sub_243B18EBC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v23;
    *v27 = v23;
    v28 = v23;
    _os_log_impl(&dword_243AF9000, v24, v25, "callForAddParticipantsToShare urlWrapper: %@", v26, 0xCu);
    sub_243B0A49C(v27, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v27, -1, -1);
    MEMORY[0x245D489D0](v26, -1, -1);
  }

  v29 = sub_243B18D1C();
  v30 = sub_243B18E8C();

  v31 = os_log_type_enabled(v29, v30);
  v79 = a4;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v32 = 136315138;
    v34 = MEMORY[0x245D48400](a3, MEMORY[0x277D837D0]);
    v36 = sub_243B09C80(v34, v35, aBlock);
    a4 = v79;

    *(v32 + 4) = v36;
    _os_log_impl(&dword_243AF9000, v29, v30, "callForAddParticipantsToShare emailAddresses: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x245D489D0](v33, -1, -1);
    MEMORY[0x245D489D0](v32, -1, -1);
  }

  v37 = sub_243B18D1C();
  v38 = sub_243B18E8C();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v41 = MEMORY[0x245D48400](a4, MEMORY[0x277D837D0]);
    v43 = sub_243B09C80(v41, v42, aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_243AF9000, v37, v38, "callForAddParticipantsToShare phoneNumbers: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x245D489D0](v40, -1, -1);
    MEMORY[0x245D489D0](v39, -1, -1);
  }

  v44 = sub_243B18D1C();
  v45 = sub_243B18E8C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 136315138;
    v81 = v80;
    aBlock[0] = v47;
    type metadata accessor for ParticipantPermission(0);
    v48 = sub_243B18D9C();
    v50 = sub_243B09C80(v48, v49, aBlock);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_243AF9000, v44, v45, "callForAddParticipantsToShare permissionType: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x245D489D0](v47, -1, -1);
    MEMORY[0x245D489D0](v46, -1, -1);
  }

  v51 = v77;
  v52 = sub_243B18D1C();
  v53 = sub_243B18E8C();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 67109120;
    *(v54 + 4) = v51 & 1;
    _os_log_impl(&dword_243AF9000, v52, v53, "callForAddParticipantsToShare allowOthersToInvite: %{BOOL}d", v54, 8u);
    MEMORY[0x245D489D0](v54, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v55 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v56 = sub_243B18E2C();
    v57 = sub_243B18E2C();
    v58 = swift_allocObject();
    v59 = v78;
    *(v58 + 16) = sub_243B1706C;
    *(v58 + 24) = v59;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v58;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_220;
    v60 = _Block_copy(aBlock);

    [v55 addParticipantsToShareWithURLWrapper:v23 share:v76 emailAddresses:v56 phoneNumbers:v57 permissionType:v80 allowOthersToInvite:v51 & 1 withReply:v60];
    _Block_release(v60);

    swift_unknownObjectRelease();
  }

  else
  {
    v61 = sub_243B18CDC();
    v62 = *(v61 - 8);
    v63 = v74;
    (*(v62 + 56))(v74, 1, 1, v61);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v64 = v70[0];
    v65 = v72;
    sub_243B18C5C();
    v66 = sub_243B18BFC();
    (*(v71 + 8))(v64, v65);
    v67 = v73;
    sub_243B16F2C(v63, v73, &qword_27EDA1750, &qword_243B19A68);
    v68 = 0;
    if ((*(v62 + 48))(v67, 1, v61) != 1)
    {
      v68 = sub_243B18CAC();
      (*(v62 + 8))(v67, v61);
    }

    v69 = sub_243B18C6C();
    v75[2](v75, v68, 0, v69);

    sub_243B0A49C(v63, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B12B10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(const void *, void *, void, void *))
{
  v79 = a2;
  v11 = sub_243B18C1C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v72[1] = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_243B18C2C();
  v73 = *(v14 - 8);
  v74 = v14;
  v15 = *(v73 + 64);
  MEMORY[0x28223BE20](v14);
  v72[0] = v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v75 = v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v76 = v72 - v21;
  v81 = swift_allocObject();
  *(v81 + 16) = a6;
  v77 = a6;
  _Block_copy(a6);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v22 = sub_243B18D3C();
  __swift_project_value_buffer(v22, qword_281509098);
  v23 = a1;
  v24 = sub_243B18D1C();
  v25 = sub_243B18EBC();

  v26 = os_log_type_enabled(v24, v25);
  v82 = a4;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v23;
    *v28 = v23;
    v29 = v23;
    _os_log_impl(&dword_243AF9000, v24, v25, "callForAddParticipantsToShare urlWrapper: %@", v27, 0xCu);
    sub_243B0A49C(v28, &qword_27EDA1760, &qword_243B19A70);
    v30 = v28;
    a4 = v82;
    MEMORY[0x245D489D0](v30, -1, -1);
    MEMORY[0x245D489D0](v27, -1, -1);
  }

  v78 = v23;

  v31 = sub_243B18D1C();
  v32 = sub_243B18E8C();

  v33 = os_log_type_enabled(v31, v32);
  v34 = a5;
  v80 = a3;
  if (v33)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v35 = 136315138;
    v37 = MEMORY[0x245D48400](a3, MEMORY[0x277D837D0]);
    v39 = sub_243B09C80(v37, v38, aBlock);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_243AF9000, v31, v32, "callForAddParticipantsToShare emailAddresses: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    v40 = v36;
    a4 = v82;
    MEMORY[0x245D489D0](v40, -1, -1);
    MEMORY[0x245D489D0](v35, -1, -1);
  }

  v41 = sub_243B18D1C();
  v42 = sub_243B18E8C();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v43 = 136315138;
    v45 = MEMORY[0x245D48400](a4, MEMORY[0x277D837D0]);
    v47 = sub_243B09C80(v45, v46, aBlock);

    *(v43 + 4) = v47;
    _os_log_impl(&dword_243AF9000, v41, v42, "callForAddParticipantsToShare phoneNumbers: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x245D489D0](v44, -1, -1);
    MEMORY[0x245D489D0](v43, -1, -1);
  }

  v48 = sub_243B18D1C();
  v49 = sub_243B18E8C();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    aBlock[0] = v51;
    *v50 = 136315138;
    v52 = sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v53 = MEMORY[0x245D48400](v34, v52);
    v55 = sub_243B09C80(v53, v54, aBlock);

    *(v50 + 4) = v55;
    _os_log_impl(&dword_243AF9000, v48, v49, "callForAddParticipantsToShare optionsGroups: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x245D489D0](v51, -1, -1);
    MEMORY[0x245D489D0](v50, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v56 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v57 = sub_243B18E2C();
    v58 = sub_243B18E2C();
    sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v59 = sub_243B18E2C();
    v60 = swift_allocObject();
    v61 = v81;
    *(v60 + 16) = sub_243B1706C;
    *(v60 + 24) = v61;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v60;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_209;
    v62 = _Block_copy(aBlock);

    [v56 addParticipantsToShareWithURLWrapper:v78 share:v79 emailAddresses:v57 phoneNumbers:v58 optionsGroups:v59 withReply:v62];
    _Block_release(v62);

    swift_unknownObjectRelease();
  }

  else
  {
    v63 = sub_243B18CDC();
    v64 = *(v63 - 8);
    v65 = v76;
    (*(v64 + 56))(v76, 1, 1, v63);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v66 = v72[0];
    v67 = v74;
    sub_243B18C5C();
    v68 = sub_243B18BFC();
    (*(v73 + 8))(v66, v67);
    v69 = v75;
    sub_243B16F2C(v65, v75, &qword_27EDA1750, &qword_243B19A68);
    v70 = 0;
    if ((*(v64 + 48))(v69, 1, v63) != 1)
    {
      v70 = sub_243B18CAC();
      (*(v64 + 8))(v69, v63);
    }

    v71 = sub_243B18C6C();
    v77[2](v77, v70, 0, v71);

    sub_243B0A49C(v65, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B13400(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (**a7)(const void *, void *, void, void *))
{
  v92 = a6;
  v94 = a5;
  v12 = sub_243B18C1C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v83 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_243B18C2C();
  v84 = *(v15 - 8);
  v85 = v15;
  v16 = *(v84 + 64);
  MEMORY[0x28223BE20](v15);
  v82 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v86 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v87 = &v81 - v22;
  v93 = swift_allocObject();
  *(v93 + 16) = a7;
  v88 = a7;
  _Block_copy(a7);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v23 = sub_243B18D3C();
  __swift_project_value_buffer(v23, qword_281509098);
  v24 = a1;
  v25 = sub_243B18D1C();
  v26 = sub_243B18EBC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&dword_243AF9000, v25, v26, "callForAddParticipantsToShare share: %@", v27, 0xCu);
    sub_243B0A49C(v28, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v28, -1, -1);
    MEMORY[0x245D489D0](v27, -1, -1);
  }

  v30 = a2;
  v31 = sub_243B18D1C();
  v32 = sub_243B18EBC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v30;
    *v34 = v30;
    v35 = v30;
    _os_log_impl(&dword_243AF9000, v31, v32, "callForAddParticipantsToShare containerSetupInfo: %@", v33, 0xCu);
    sub_243B0A49C(v34, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v34, -1, -1);
    MEMORY[0x245D489D0](v33, -1, -1);
  }

  v89 = v30;
  v91 = v24;

  v36 = sub_243B18D1C();
  v37 = sub_243B18E8C();

  v38 = os_log_type_enabled(v36, v37);
  v39 = a3;
  v40 = a4;
  v90 = v39;
  if (v38)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136315138;
    v43 = MEMORY[0x245D48400](v39, MEMORY[0x277D837D0]);
    v45 = sub_243B09C80(v43, v44, aBlock);

    *(v41 + 4) = v45;
    a4 = v40;
    _os_log_impl(&dword_243AF9000, v36, v37, "callForAddParticipantsToShare emailAddresses: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x245D489D0](v42, -1, -1);
    MEMORY[0x245D489D0](v41, -1, -1);
  }

  v46 = sub_243B18D1C();
  v47 = sub_243B18E8C();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    aBlock[0] = v49;
    *v48 = 136315138;
    v50 = MEMORY[0x245D48400](a4, MEMORY[0x277D837D0]);
    v52 = sub_243B09C80(v50, v51, aBlock);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_243AF9000, v46, v47, "callForAddParticipantsToShare phoneNumbers: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x245D489D0](v49, -1, -1);
    MEMORY[0x245D489D0](v48, -1, -1);
  }

  v53 = sub_243B18D1C();
  v54 = sub_243B18E8C();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 136315138;
    v95 = v94;
    aBlock[0] = v56;
    type metadata accessor for ParticipantPermission(0);
    v57 = sub_243B18D9C();
    v59 = sub_243B09C80(v57, v58, aBlock);

    *(v55 + 4) = v59;
    _os_log_impl(&dword_243AF9000, v53, v54, "callForAddParticipantsToShare permissionType: %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x245D489D0](v56, -1, -1);
    MEMORY[0x245D489D0](v55, -1, -1);
  }

  v60 = v92;
  v61 = v89;
  v62 = sub_243B18D1C();
  v63 = sub_243B18E8C();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 67109120;
    *(v64 + 4) = v60 & 1;
    _os_log_impl(&dword_243AF9000, v62, v63, "callForAddParticipantsToShare allowOthersToInvite: %{BOOL}d", v64, 8u);
    MEMORY[0x245D489D0](v64, -1, -1);
  }

  v65 = v91;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v66 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v67 = sub_243B18E2C();
    v68 = sub_243B18E2C();
    v69 = swift_allocObject();
    v70 = v93;
    *(v69 + 16) = sub_243B1706C;
    *(v69 + 24) = v70;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v69;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_198;
    v71 = _Block_copy(aBlock);

    [v66 addParticipantsToShare:v65 containerSetupInfo:v61 emailAddresses:v67 phoneNumbers:v68 permissionType:v94 allowOthersToInvite:v60 & 1 withReply:v71];
    _Block_release(v71);

    swift_unknownObjectRelease();
  }

  else
  {
    v72 = sub_243B18CDC();
    v73 = *(v72 - 8);
    v74 = v87;
    (*(v73 + 56))(v87, 1, 1, v72);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v75 = v82;
    v76 = v85;
    sub_243B18C5C();
    v77 = sub_243B18BFC();
    (*(v84 + 8))(v75, v76);
    v78 = v86;
    sub_243B16F2C(v74, v86, &qword_27EDA1750, &qword_243B19A68);
    v79 = 0;
    if ((*(v73 + 48))(v78, 1, v72) != 1)
    {
      v79 = sub_243B18CAC();
      (*(v73 + 8))(v78, v72);
    }

    v80 = sub_243B18C6C();
    v88[2](v88, v79, 0, v80);

    sub_243B0A49C(v74, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B13DF8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(const void *, void *, void, void *))
{
  v89 = a4;
  v11 = sub_243B18C1C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v80 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_243B18C2C();
  v81 = *(v14 - 8);
  v82 = v14;
  v15 = *(v81 + 64);
  MEMORY[0x28223BE20](v14);
  v79 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v83 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v84 = &v78 - v21;
  v88 = swift_allocObject();
  *(v88 + 16) = a6;
  v85 = a6;
  _Block_copy(a6);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v22 = sub_243B18D3C();
  __swift_project_value_buffer(v22, qword_281509098);
  v23 = a1;
  v24 = sub_243B18D1C();
  v25 = sub_243B18EBC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v23;
    *v27 = v23;
    v28 = v23;
    _os_log_impl(&dword_243AF9000, v24, v25, "callForAddParticipantsToShare share: %@", v26, 0xCu);
    sub_243B0A49C(v27, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v27, -1, -1);
    MEMORY[0x245D489D0](v26, -1, -1);
  }

  v29 = a2;
  v30 = sub_243B18D1C();
  v31 = sub_243B18EBC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v29;
    *v33 = v29;
    v34 = v29;
    _os_log_impl(&dword_243AF9000, v30, v31, "callForAddParticipantsToShare containerSetupInfo: %@", v32, 0xCu);
    sub_243B0A49C(v33, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v33, -1, -1);
    MEMORY[0x245D489D0](v32, -1, -1);
  }

  v86 = v29;
  v87 = v23;

  v35 = sub_243B18D1C();
  v36 = sub_243B18E8C();

  v37 = a3;
  v38 = a5;
  if (os_log_type_enabled(v35, v36))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v41 = MEMORY[0x245D48400](v37, MEMORY[0x277D837D0]);
    v43 = sub_243B09C80(v41, v42, aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_243AF9000, v35, v36, "callForAddParticipantsToShare emailAddresses: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x245D489D0](v40, -1, -1);
    MEMORY[0x245D489D0](v39, -1, -1);
  }

  v44 = v89;

  v45 = sub_243B18D1C();
  v46 = sub_243B18E8C();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    aBlock[0] = v48;
    *v47 = 136315138;
    v49 = MEMORY[0x245D48400](v44, MEMORY[0x277D837D0]);
    v51 = sub_243B09C80(v49, v50, aBlock);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_243AF9000, v45, v46, "callForAddParticipantsToShare phoneNumbers: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x245D489D0](v48, -1, -1);
    MEMORY[0x245D489D0](v47, -1, -1);
  }

  v52 = sub_243B18D1C();
  v53 = sub_243B18E8C();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    aBlock[0] = v55;
    *v54 = 136315138;
    v56 = sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v57 = MEMORY[0x245D48400](v38, v56);
    v59 = sub_243B09C80(v57, v58, aBlock);

    *(v54 + 4) = v59;
    _os_log_impl(&dword_243AF9000, v52, v53, "callForAddParticipantsToShare optionsGroups: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x245D489D0](v55, -1, -1);
    MEMORY[0x245D489D0](v54, -1, -1);
  }

  v61 = v86;
  v60 = v87;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v62 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v63 = sub_243B18E2C();
    v64 = sub_243B18E2C();
    sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v65 = sub_243B18E2C();
    v66 = swift_allocObject();
    v67 = v88;
    *(v66 + 16) = sub_243B1706C;
    *(v66 + 24) = v67;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v66;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_187;
    v68 = _Block_copy(aBlock);

    [v62 addParticipantsToShare:v60 containerSetupInfo:v61 emailAddresses:v63 phoneNumbers:v64 optionsGroups:v65 withReply:v68];
    _Block_release(v68);

    swift_unknownObjectRelease();
  }

  else
  {
    v69 = sub_243B18CDC();
    v70 = *(v69 - 8);
    v71 = v84;
    (*(v70 + 56))(v84, 1, 1, v69);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v72 = v79;
    v73 = v82;
    sub_243B18C5C();
    v74 = sub_243B18BFC();
    (*(v81 + 8))(v72, v73);
    v75 = v83;
    sub_243B16F2C(v71, v83, &qword_27EDA1750, &qword_243B19A68);
    v76 = 0;
    if ((*(v70 + 48))(v75, 1, v69) != 1)
    {
      v76 = sub_243B18CAC();
      (*(v70 + 8))(v75, v69);
    }

    v77 = sub_243B18C6C();
    v85[2](v85, v76, 0, v77);

    sub_243B0A49C(v71, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B147B0(uint64_t a1, void (**a2)(void, void, void, void))
{
  v4 = sub_243B18C1C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v63 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_243B18C2C();
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = *(v64 + 64);
  MEMORY[0x28223BE20](v7);
  v62 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v59 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v67 = &v57 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v61 = &v57 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v57 - v18;
  v20 = sub_243B18CDC();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = MEMORY[0x28223BE20](v20);
  v66 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v69 = &v57 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v57 - v27;
  v72 = swift_allocObject();
  *(v72 + 16) = a2;
  _Block_copy(a2);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v29 = sub_243B18D3C();
  __swift_project_value_buffer(v29, qword_281509098);
  v30 = v21[2];
  v70 = v21 + 2;
  v71 = a1;
  v68 = v30;
  v30(v28, a1, v20);
  v31 = sub_243B18D1C();
  v32 = v21;
  v33 = sub_243B18EBC();
  if (os_log_type_enabled(v31, v33))
  {
    v34 = swift_slowAlloc();
    v58 = v19;
    v35 = v34;
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v35 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260]);
    v37 = sub_243B18F4C();
    v38 = a2;
    v40 = v39;
    v60 = v32[1];
    v60(v28, v20);
    v41 = sub_243B09C80(v37, v40, aBlock);
    a2 = v38;

    *(v35 + 4) = v41;
    _os_log_impl(&dword_243AF9000, v31, v33, "callForExistingShareForFile url: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x245D489D0](v36, -1, -1);
    v42 = v35;
    v19 = v58;
    MEMORY[0x245D489D0](v42, -1, -1);
  }

  else
  {

    v60 = v21[1];
    v60(v28, v20);
  }

  v43 = v32;
  v44 = v71;
  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v45 = qword_2815090B8;
  if (qword_2815090B8)
  {
    sub_243B16EE4(0, &qword_27EDA1740, 0x277CC6438);
    v46 = v69;
    v68(v69, v44, v20);
    swift_unknownObjectRetain();
    v52 = sub_243B099B8(v46, 0);
    logWrapperMessage(for:isReadOnly:error:)(v44, 0, 0);
    v54 = swift_allocObject();
    v55 = v72;
    *(v54 + 16) = sub_243B1706C;
    *(v54 + 24) = v55;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v54;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_176;
    v56 = _Block_copy(aBlock);

    [v45 existingShareForFileWithURLWrapper:v52 withReply:v56];

    _Block_release(v56);

    swift_unknownObjectRelease();
  }

  else
  {
    (v32[7])(v19, 1, 1, v20);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v47 = v62;
    v48 = v65;
    sub_243B18C5C();
    v49 = sub_243B18BFC();
    (*(v64 + 8))(v47, v48);
    v50 = v61;
    sub_243B16F2C(v19, v61, &qword_27EDA1750, &qword_243B19A68);
    if ((v43[6])(v50, 1, v20) == 1)
    {
      v51 = 0;
    }

    else
    {
      v51 = sub_243B18CAC();
      v60(v50, v20);
    }

    v53 = sub_243B18C6C();
    (a2)[2](a2, v51, 0, v53);

    sub_243B0A49C(v19, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B15104(uint64_t a1, void *a2, const void *a3)
{
  v6 = sub_243B18C1C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_243B18C2C();
  v67 = *(v9 - 8);
  v68 = v9;
  v10 = *(v67 + 64);
  MEMORY[0x28223BE20](v9);
  v65 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_243B18CDC();
  v73 = *(v12 - 8);
  v74 = v12;
  v13 = *(v73 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v62[1] = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v64 = v62 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = v62 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v71 = v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v62 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = v62 - v27;
  v72 = swift_allocObject();
  *(v72 + 16) = a3;
  v69 = a3;
  _Block_copy(a3);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v29 = sub_243B18D3C();
  __swift_project_value_buffer(v29, qword_281509098);
  v70 = a1;
  sub_243B16F2C(a1, v28, &qword_27EDA1750, &qword_243B19A68);
  v30 = sub_243B18D1C();
  v31 = sub_243B18EBC();
  v32 = os_log_type_enabled(v30, v31);
  v63 = v19;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v62[0] = a2;
    v34 = v33;
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 136315138;
    sub_243B16F2C(v28, v26, &qword_27EDA1750, &qword_243B19A68);
    v36 = sub_243B18D9C();
    v38 = v37;
    sub_243B0A49C(v28, &qword_27EDA1750, &qword_243B19A68);
    v39 = sub_243B09C80(v36, v38, aBlock);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_243AF9000, v30, v31, "callForUserNameAndEmail url: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x245D489D0](v35, -1, -1);
    v40 = v34;
    a2 = v62[0];
    MEMORY[0x245D489D0](v40, -1, -1);
  }

  else
  {

    sub_243B0A49C(v28, &qword_27EDA1750, &qword_243B19A68);
  }

  v41 = a2;
  v42 = sub_243B18D1C();
  v43 = sub_243B18EBC();

  v44 = os_log_type_enabled(v42, v43);
  v46 = v73;
  v45 = v74;
  if (v44)
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 138412290;
    *(v47 + 4) = v41;
    *v48 = a2;
    v49 = v41;
    _os_log_impl(&dword_243AF9000, v42, v43, "callForUserNameAndEmail containerSetupInfo: %@", v47, 0xCu);
    sub_243B0A49C(v48, &qword_27EDA1760, &qword_243B19A70);
    MEMORY[0x245D489D0](v48, -1, -1);
    MEMORY[0x245D489D0](v47, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v50 = qword_2815090B8;
  v51 = v71;
  if (qword_2815090B8)
  {
    sub_243B16F2C(v70, v71, &qword_27EDA1750, &qword_243B19A68);
    if ((*(v46 + 48))(v51, 1, v45) == 1)
    {
      swift_unknownObjectRetain();
      sub_243B0A49C(v51, &qword_27EDA1750, &qword_243B19A68);
      v52 = 0;
    }

    else
    {
      v57 = v63;
      (*(v46 + 32))(v63, v51, v45);
      sub_243B16EE4(0, &qword_27EDA1740, 0x277CC6438);
      v58 = v64;
      (*(v46 + 16))(v64, v57, v45);
      swift_unknownObjectRetain();
      v52 = sub_243B099B8(v58, 0);
      logWrapperMessage(for:isReadOnly:error:)(v57, 0, 0);
      (*(v46 + 8))(v57, v45);
    }

    v59 = swift_allocObject();
    v60 = v72;
    *(v59 + 16) = sub_243B16E40;
    *(v59 + 24) = v60;
    aBlock[4] = sub_243B17138;
    aBlock[5] = v59;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243B07F58;
    aBlock[3] = &block_descriptor_165;
    v61 = _Block_copy(aBlock);

    [v50 userNameAndEmailWithURLWrapper:v52 containerSetupInfo:v41 withReply:v61];

    _Block_release(v61);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v53 = v65;
    v54 = v68;
    sub_243B18C5C();
    v55 = sub_243B18BFC();
    (*(v67 + 8))(v53, v54);
    v56 = sub_243B18C6C();
    (*(v69 + 2))(v69, 0, 0, v56);
  }
}

void sub_243B15A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (**a7)(const void *, void *, void, void *))
{
  v94 = a6;
  v92 = a5;
  v93 = a3;
  v90 = a4;
  v10 = sub_243B18C1C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v83 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_243B18C2C();
  v85 = *(v13 - 8);
  v86 = v13;
  v14 = *(v85 + 64);
  MEMORY[0x28223BE20](v13);
  v82 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v84 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v87 = &v81 - v20;
  v21 = sub_243B18CDC();
  v22 = *(v21 - 8);
  v23 = v22[8];
  MEMORY[0x28223BE20](v21);
  v25 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = swift_allocObject();
  *(v95 + 16) = a7;
  v88 = a7;
  _Block_copy(a7);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v26 = sub_243B18D3C();
  __swift_project_value_buffer(v26, qword_281509098);
  v27 = v22[2];
  v89 = a1;
  v27(v25, a1, v21);
  v28 = sub_243B18D1C();
  v29 = sub_243B18EBC();
  v30 = os_log_type_enabled(v28, v29);
  v96 = a2;
  v91 = v22;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    aBlock[0] = v32;
    *v31 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260]);
    v33 = sub_243B18F4C();
    v35 = v34;
    v81 = v22[1];
    v81(v25, v21);
    v36 = sub_243B09C80(v33, v35, aBlock);
    a2 = v96;

    *(v31 + 4) = v36;
    _os_log_impl(&dword_243AF9000, v28, v29, "callForForciblyShareFolder folderURL: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x245D489D0](v32, -1, -1);
    MEMORY[0x245D489D0](v31, -1, -1);
  }

  else
  {

    v81 = v22[1];
    v81(v25, v21);
  }

  v37 = sub_243B18D1C();
  v38 = sub_243B18E8C();

  v39 = os_log_type_enabled(v37, v38);
  v40 = v92;
  if (v39)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136315138;
    v43 = MEMORY[0x245D48400](a2, MEMORY[0x277D837D0]);
    v45 = sub_243B09C80(v43, v44, aBlock);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_243AF9000, v37, v38, "callForForciblyShareFolder emailAddresses: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x245D489D0](v42, -1, -1);
    MEMORY[0x245D489D0](v41, -1, -1);
  }

  v46 = v93;

  v47 = sub_243B18D1C();
  v48 = sub_243B18E8C();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v49 = 136315138;
    v51 = MEMORY[0x245D48400](v46, MEMORY[0x277D837D0]);
    v53 = sub_243B09C80(v51, v52, aBlock);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_243AF9000, v47, v48, "callForForciblyShareFolder phoneNumbers: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x245D489D0](v50, -1, -1);
    MEMORY[0x245D489D0](v49, -1, -1);
  }

  v54 = sub_243B18D1C();
  v55 = sub_243B18E8C();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v97 = v40;
    aBlock[0] = v57;
    *v56 = 136315138;
    type metadata accessor for ParticipantPermission(0);
    v58 = sub_243B18D9C();
    v60 = sub_243B09C80(v58, v59, aBlock);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_243AF9000, v54, v55, "callForForciblyShareFolder permissionType: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x245D489D0](v57, -1, -1);
    MEMORY[0x245D489D0](v56, -1, -1);
  }

  v61 = v91;
  v62 = sub_243B18D1C();
  v63 = sub_243B18E8C();
  v64 = os_log_type_enabled(v62, v63);
  v65 = v94;
  if (v64)
  {
    v66 = swift_slowAlloc();
    *v66 = 67109120;
    *(v66 + 4) = v65 & 1;
    _os_log_impl(&dword_243AF9000, v62, v63, "callForForciblyShareFolder allowOthersToInvite: %{BOOL}d", v66, 8u);
    MEMORY[0x245D489D0](v66, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v67 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v68 = sub_243B18CAC();
    v69 = sub_243B18E2C();
    v70 = sub_243B18E2C();
    v71 = swift_allocObject();
    v72 = v95;
    *(v71 + 16) = sub_243B1706C;
    *(v71 + 24) = v72;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v71;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_155;
    v73 = _Block_copy(aBlock);

    [v67 forciblyShareFolder:v68 emailAddresses:v69 phoneNumbers:v70 accessType:v90 permissionType:v40 allowOthersToInvite:v65 & 1 withReply:v73];
    _Block_release(v73);

    swift_unknownObjectRelease();
  }

  else
  {
    v74 = v87;
    (v61[7])(v87, 1, 1, v21);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v75 = v82;
    v76 = v86;
    sub_243B18C5C();
    v77 = sub_243B18BFC();
    (*(v85 + 8))(v75, v76);
    v78 = v84;
    sub_243B16F2C(v74, v84, &qword_27EDA1750, &qword_243B19A68);
    if ((v61[6])(v78, 1, v21) == 1)
    {
      v79 = 0;
    }

    else
    {
      v79 = sub_243B18CAC();
      v81(v78, v21);
    }

    v80 = sub_243B18C6C();
    v88[2](v88, v79, 0, v80);

    sub_243B0A49C(v74, &qword_27EDA1750, &qword_243B19A68);
  }
}

void sub_243B16454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(const void *, void *, void, void *))
{
  v90 = a3;
  v9 = sub_243B18C1C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v83 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_243B18C2C();
  v85 = *(v12 - 8);
  v86 = v12;
  v13 = *(v85 + 64);
  MEMORY[0x28223BE20](v12);
  v82 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v84 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v87 = &v79 - v19;
  v20 = sub_243B18CDC();
  v21 = *(v20 - 8);
  v22 = v21[8];
  MEMORY[0x28223BE20](v20);
  v24 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = swift_allocObject();
  *(v92 + 16) = a5;
  v88 = a5;
  _Block_copy(a5);
  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v25 = sub_243B18D3C();
  __swift_project_value_buffer(v25, qword_281509098);
  v26 = v21[2];
  v89 = a1;
  v26(v24, a1, v20);
  v27 = sub_243B18D1C();
  v28 = sub_243B18EBC();
  v29 = os_log_type_enabled(v27, v28);
  v93 = a2;
  v91 = a4;
  v81 = v21;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136315138;
    sub_243B0A398(&qword_27EDA1748, MEMORY[0x277CC9260]);
    v32 = sub_243B18F4C();
    v33 = v21;
    v35 = v34;
    v80 = v33[1];
    v80(v24, v20);
    v36 = sub_243B09C80(v32, v35, aBlock);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_243AF9000, v27, v28, "callForForciblyShareFolder folderURL: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v37 = v31;
    a2 = v93;
    MEMORY[0x245D489D0](v37, -1, -1);
    MEMORY[0x245D489D0](v30, -1, -1);
  }

  else
  {

    v80 = v21[1];
    v80(v24, v20);
  }

  v38 = sub_243B18D1C();
  v39 = sub_243B18E8C();

  v40 = os_log_type_enabled(v38, v39);
  v41 = v90;
  if (v40)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v42 = 136315138;
    v44 = MEMORY[0x245D48400](a2, MEMORY[0x277D837D0]);
    v46 = sub_243B09C80(v44, v45, aBlock);

    *(v42 + 4) = v46;
    _os_log_impl(&dword_243AF9000, v38, v39, "callForForciblyShareFolder emailAddresses: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x245D489D0](v43, -1, -1);
    MEMORY[0x245D489D0](v42, -1, -1);
  }

  v47 = sub_243B18D1C();
  v48 = sub_243B18E8C();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v49 = 136315138;
    v51 = MEMORY[0x245D48400](v41, MEMORY[0x277D837D0]);
    v53 = sub_243B09C80(v51, v52, aBlock);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_243AF9000, v47, v48, "callForForciblyShareFolder phoneNumbers: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x245D489D0](v50, -1, -1);
    MEMORY[0x245D489D0](v49, -1, -1);
  }

  v54 = v91;

  v55 = sub_243B18D1C();
  v56 = sub_243B18E8C();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v57 = 136315138;
    v59 = sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v60 = MEMORY[0x245D48400](v54, v59);
    v62 = sub_243B09C80(v60, v61, aBlock);

    *(v57 + 4) = v62;
    _os_log_impl(&dword_243AF9000, v55, v56, "callForAddParticipantsToShare optionsGroups: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x245D489D0](v58, -1, -1);
    MEMORY[0x245D489D0](v57, -1, -1);
  }

  if (qword_281509060 != -1)
  {
    swift_once();
  }

  v63 = qword_2815090B8;
  if (qword_2815090B8)
  {
    swift_unknownObjectRetain();
    v64 = sub_243B18CAC();
    v65 = sub_243B18E2C();
    v66 = sub_243B18E2C();
    sub_243B16EE4(0, &qword_27EDA1758, 0x277CDC6D0);
    v67 = sub_243B18E2C();
    v68 = swift_allocObject();
    v69 = v92;
    *(v68 + 16) = sub_243B16E38;
    *(v68 + 24) = v69;
    aBlock[4] = sub_243B17134;
    aBlock[5] = v68;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243AFE0C0;
    aBlock[3] = &block_descriptor_144;
    v70 = _Block_copy(aBlock);

    [v63 forciblyShareFolder:v64 emailAddresses:v65 phoneNumbers:v66 optionsGroups:v67 withReply:v70];
    _Block_release(v70);

    swift_unknownObjectRelease();
  }

  else
  {
    v71 = v81;
    v72 = v87;
    (v81[7])(v87, 1, 1, v20);
    sub_243B18C0C();
    sub_243B0A228(MEMORY[0x277D84F90]);
    sub_243B0A398(&qword_27EDA1738, MEMORY[0x277CC8620]);
    v73 = v82;
    v74 = v86;
    sub_243B18C5C();
    v75 = sub_243B18BFC();
    (*(v85 + 8))(v73, v74);
    v76 = v84;
    sub_243B16F2C(v72, v84, &qword_27EDA1750, &qword_243B19A68);
    if ((v71[6])(v76, 1, v20) == 1)
    {
      v77 = 0;
    }

    else
    {
      v77 = sub_243B18CAC();
      v80(v76, v20);
    }

    v78 = sub_243B18C6C();
    v88[2](v88, v77, 0, v78);

    sub_243B0A49C(v72, &qword_27EDA1750, &qword_243B19A68);
  }
}

uint64_t sub_243B16E84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_243B16EE4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_243B16F2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_243B16F94(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void logWrapperMessage(for:isReadOnly:error:)(uint64_t a1, char a2, void *a3)
{
  v6 = sub_243B18CDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = (MEMORY[0x28223BE20])();
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v66 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v66 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v66 - v18;
  if (a2)
  {
    if (a3)
    {
      if (qword_281509090 != -1)
      {
        swift_once();
      }

      v20 = sub_243B18D3C();
      __swift_project_value_buffer(v20, qword_281509098);
      (*(v7 + 16))(v11, a1, v6);
      v21 = a3;
      v22 = sub_243B18D1C();
      v23 = sub_243B18EAC();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v67 = v25;
        *v24 = 136315394;
        sub_243B18454();
        v26 = sub_243B18F4C();
        v28 = v27;
        (*(v7 + 8))(v11, v6);
        v29 = sub_243B09C80(v26, v28, &v67);

        *(v24 + 4) = v29;
        *(v24 + 12) = 2080;
        v66 = a3;
        v30 = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA17A0, &qword_243B19B00);
        v31 = sub_243B18D9C();
        v33 = sub_243B09C80(v31, v32, &v67);

        *(v24 + 14) = v33;
        _os_log_impl(&dword_243AF9000, v22, v23, "Failed to create read-only FPSandboxingURLWrapper for URL %s: %s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D489D0](v25, -1, -1);
        v34 = v24;
LABEL_12:
        MEMORY[0x245D489D0](v34, -1, -1);

        return;
      }

      (*(v7 + 8))(v11, v6);
      return;
    }

    if (qword_281509090 != -1)
    {
      swift_once();
    }

    v48 = sub_243B18D3C();
    __swift_project_value_buffer(v48, qword_281509098);
    (*(v7 + 16))(v14, a1, v6);
    v49 = sub_243B18D1C();
    v50 = sub_243B18EBC();
    if (!os_log_type_enabled(v49, v50))
    {

      (*(v7 + 8))(v14, v6);
      return;
    }

    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v67 = v52;
    *v51 = 136315138;
    sub_243B18454();
    v53 = sub_243B18F4C();
    v55 = v54;
    (*(v7 + 8))(v14, v6);
    v56 = sub_243B09C80(v53, v55, &v67);

    *(v51 + 4) = v56;
    _os_log_impl(&dword_243AF9000, v49, v50, "Created read-only FPSandboxingURLWrapper for URL %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x245D489D0](v52, -1, -1);
    v57 = v51;
LABEL_21:
    MEMORY[0x245D489D0](v57, -1, -1);

    return;
  }

  if (!a3)
  {
    if (qword_281509090 != -1)
    {
      swift_once();
    }

    v58 = sub_243B18D3C();
    __swift_project_value_buffer(v58, qword_281509098);
    (*(v7 + 16))(v19, a1, v6);
    v49 = sub_243B18D1C();
    v59 = sub_243B18EBC();
    if (!os_log_type_enabled(v49, v59))
    {

      (*(v7 + 8))(v19, v6);
      return;
    }

    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v67 = v61;
    *v60 = 136315138;
    sub_243B18454();
    v62 = sub_243B18F4C();
    v64 = v63;
    (*(v7 + 8))(v19, v6);
    v65 = sub_243B09C80(v62, v64, &v67);

    *(v60 + 4) = v65;
    _os_log_impl(&dword_243AF9000, v49, v59, "Created read/write FPSandboxingURLWrapper for URL %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x245D489D0](v61, -1, -1);
    v57 = v60;
    goto LABEL_21;
  }

  if (qword_281509090 != -1)
  {
    swift_once();
  }

  v35 = sub_243B18D3C();
  __swift_project_value_buffer(v35, qword_281509098);
  (*(v7 + 16))(v17, a1, v6);
  v36 = a3;
  v22 = sub_243B18D1C();
  v37 = sub_243B18EBC();

  if (os_log_type_enabled(v22, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v67 = v39;
    *v38 = 136315394;
    sub_243B18454();
    v40 = sub_243B18F4C();
    v42 = v41;
    (*(v7 + 8))(v17, v6);
    v43 = sub_243B09C80(v40, v42, &v67);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2080;
    v66 = a3;
    v44 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA17A0, &qword_243B19B00);
    v45 = sub_243B18D9C();
    v47 = sub_243B09C80(v45, v46, &v67);

    *(v38 + 14) = v47;
    _os_log_impl(&dword_243AF9000, v22, v37, "Failed to create read/write FPSandboxingURLWrapper for URL %s: %s\nTrying read-only instead...", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D489D0](v39, -1, -1);
    v34 = v38;
    goto LABEL_12;
  }

  (*(v7 + 8))(v17, v6);
}

id sub_243B17924(char a1)
{
  v3 = sub_243B18CDC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243B16EE4(0, &qword_27EDA1740, 0x277CC6438);
  (*(v4 + 16))(v7, v1, v3);
  return sub_243B099B8(v7, a1);
}

void URL.evictionSafeResourceValues(forKeys:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA17A8, &qword_243B19B08);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v25[0] = 0;
  v9 = sub_243B18C4C();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v8, 1, 1, v9);
  v11 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) init];
  v12 = sub_243B18CAC();
  v13 = swift_allocObject();
  v13[2] = v8;
  v13[3] = a1;
  v13[4] = v25;
  v14 = swift_allocObject();
  v14[2] = sub_243B184AC;
  v14[3] = v13;
  aBlock[4] = sub_243B184B8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243B17EF0;
  aBlock[3] = &block_descriptor_0;
  v15 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v11 coordinateReadingItemAtURL:v12 options:4 error:aBlock byAccessor:v15];
  _Block_release(v15);

  v16 = aBlock[0];
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  if (v16)
  {
    goto LABEL_5;
  }

  if (v25[0])
  {
    v25[0];
LABEL_5:
    swift_willThrow();
    sub_243B18568(v8);
    v17 = v25[0];

LABEL_6:
    v18 = *MEMORY[0x277D85DE8];
    return;
  }

  v19 = v23;
  sub_243B184F8(v8, v23);
  if ((*(v10 + 48))(v19, 1, v9) != 1)
  {
    (*(v10 + 32))(v22, v19, v9);
    sub_243B18568(v8);
    v20 = v25[0];

    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_243B17D94(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA17A8, &qword_243B19B08);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  sub_243B18CBC();
  v7 = sub_243B18C4C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  return sub_243B188BC(v6, a2);
}

uint64_t sub_243B17EF0(uint64_t a1)
{
  v2 = sub_243B18CDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_243B18CCC();
  v8(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t URL.cs_extensionlessLastPathComponent.getter()
{
  v0 = sub_243B18C4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA17B0, &qword_243B19B10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_243B19AF0;
  v6 = *MEMORY[0x277CBE8D0];
  *(inited + 32) = *MEMORY[0x277CBE8D0];
  v7 = v6;
  v8 = sub_243B185D0(inited);
  swift_setDeallocating();
  sub_243B187C4(inited + 32);
  URL.evictionSafeResourceValues(forKeys:)(v8, v4);

  result = sub_243B18C3C();
  if (v10)
  {
    v11 = result;
    v12 = v10;
    (*(v1 + 8))(v4, v0);
    if (v11 == sub_243B18C9C() && v12 == v13)
    {
    }

    else
    {
      v15 = sub_243B18F5C();

      if ((v15 & 1) == 0)
      {
        return v11;
      }
    }

    v16 = sub_243B18C8C();
    v41 = 46;
    v42 = 0xE100000000000000;
    MEMORY[0x245D483A0](v16);

    v18 = v41;
    v17 = v42;
    v19 = HIBYTE(v42) & 0xF;
    if ((v42 & 0x2000000000000000) == 0)
    {
      v19 = v41 & 0xFFFFFFFFFFFFLL;
    }

    if (!v19)
    {
      goto LABEL_14;
    }

    v20 = sub_243B18DCC();
    if (sub_243B18DCC() >= v20)
    {
      goto LABEL_14;
    }

    v21 = sub_243B18DCC();
    v22 = sub_243AFBC40(v21, v11, v12);
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v41 = v22;
    v42 = v24;
    v43 = v26;
    v44 = v28;
    v40[0] = v18;
    v40[1] = v17;
    sub_243AFBCFC();
    sub_243AFBD50();
    v29 = sub_243B18ECC();

    if (v29)
    {
LABEL_14:

      return v11;
    }

    v30 = sub_243B18DCC();
    v31 = sub_243B18DCC();

    result = v30 - v31;
    if (!__OFSUB__(v30, v31))
    {
      v33 = sub_243B18820(result, v11, v12, v32);
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v11 = MEMORY[0x245D48360](v33, v35, v37, v39);
      goto LABEL_14;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_243B18454()
{
  result = qword_27EDA1748;
  if (!qword_27EDA1748)
  {
    sub_243B18CDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDA1748);
  }

  return result;
}

uint64_t sub_243B184AC(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_243B17D94(a1, v1[2]);
}

uint64_t sub_243B184B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243B184F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA17A8, &qword_243B19B08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B18568(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA17A8, &qword_243B19B08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243B185D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA17B8, &qword_243B19B20);
    v3 = sub_243B18EEC();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_243B18D8C();
      sub_243B18F7C();
      v29 = v7;
      sub_243B18DBC();
      v9 = sub_243B18F8C();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_243B18D8C();
        v20 = v19;
        if (v18 == sub_243B18D8C() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_243B18F5C();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_243B187C4(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243B18820(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_243B18DDC();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t sub_243B188BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA17A8, &qword_243B19B08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_243B18A14(uint64_t a1, uint64_t *a2)
{
  v3 = sub_243B18D3C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);

  return sub_243B18D2C();
}

uint64_t sub_243B18AC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_243B18D3C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Bool.asString.getter(char a1)
{
  if (a1)
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}