uint64_t objectdestroyTm_7()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_229800500(uint64_t a1, void *a2)
{
  v5 = *(sub_22A4DB7DC() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + v7);
  v11 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_2297F64D4(a1, a2, v8, v9, v2 + v6, v10, v11);
}

void sub_229800614(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 accessory];
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  v8 = [v6 home];
  if (!v8)
  {

LABEL_12:
    MEMORY[0x28223BE20](v6);
    v23 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    sub_22A4DBCEC();
    sub_22A4DBD1C();

    return;
  }

  v9 = v8;
  v10 = [v7 description];
  sub_22A4DD5EC();

  v11 = [v9 isCurrentDeviceConfirmedPrimaryResident];
  if (v11)
  {
    v12 = [a1 path];
    v26 = v9;
    v13 = [v12 cluster];

    v25[1] = v25;
    MEMORY[0x28223BE20](v14);
    v15 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    sub_22A4DBCEC();
    v16 = v13;
    v17 = v26;
    sub_22A4DBD1C();

    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = v18;
      v20 = v7;
      if ([v16 unsignedIntValue] == 257)
      {
        v21 = [v17 lockNotificationManager];
        [v21 handleDoorLockEventReport:a1 forAccessory:v19 flow:a2];

        v20 = v21;
      }
    }

    v22 = [objc_msgSend(objc_opt_self() featuresDataSource)];
    swift_unknownObjectRelease();
    if (v22)
    {
      [v3 submitLogEventForEventReport_];
    }
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    v24 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    sub_22A4DBCEC();
    sub_22A4DBD1C();
  }
}

uint64_t sub_229800B20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881620, &unk_22A5846F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v37 - v6;
  v8 = sub_22A4DBC5C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 ifaceName];
  if (v13)
  {
    v14 = v13;
    v15 = sub_22A4DD5EC();

    v16 = [a1 type];
    if (v16)
    {
      v39 = v15;
      v17 = v16;
      v18 = sub_22A4DD5EC();
      v20 = v19;

      v21 = [a1 macAddress];
      if (v21)
      {
        v22 = v21;
        v38 = a2;
        v23 = sub_22A4DD5EC();
        v37[1] = v24;
        v37[2] = v23;

        if (v18 == 0x74656E7265687465 && v20 == 0xE800000000000000 || (sub_22A4DE60C() & 1) != 0)
        {

          v25 = MEMORY[0x277D0EFC0];
        }

        else if (v18 == 0x3132303865656569 && v20 == 0xE900000000000031)
        {

          v25 = MEMORY[0x277D0EFC8];
        }

        else
        {
          v36 = sub_22A4DE60C();

          v25 = MEMORY[0x277D0EFB8];
          if (v36)
          {
            v25 = MEMORY[0x277D0EFC8];
          }
        }

        v26 = v38;
        (*(v9 + 104))(v12, *v25, v8);
        v27 = [a1 ipv4Addresses];
        if (!v27 || (v40 = 0, v28 = v27, sub_22A4DD82C(), v28, !v40))
        {
        }

        v29 = [a1 ipv6Addresses];
        if (!v29 || (v40 = 0, v30 = v29, sub_22A4DD82C(), v30, !v40))
        {
        }

        v31 = sub_22A4DBB8C();
        (*(*(v31 - 8) + 56))(v7, 1, 1, v31);
        sub_22A4DBABC();
        v32 = sub_22A4DBAEC();
        return (*(*(v32 - 8) + 56))(v26, 0, 1, v32);
      }
    }
  }

  v34 = sub_22A4DBAEC();
  v35 = *(*(v34 - 8) + 56);

  return v35(a2, 1, 1, v34);
}

uint64_t sub_229800F88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 ifaceName];
  if (v4)
  {
    v5 = v4;
    sub_22A4DD5EC();

    [a1 isPrimary];
    v6 = [a1 confirmedIfaceName];
    if (v6)
    {
      v7 = v6;
      sub_22A4DD5EC();
    }

    v9 = [a1 ipv4Addresses];
    if (v9)
    {
      v10 = v9;
      sub_22A4DD82C();
    }

    v11 = [a1 routerIPv4];
    if (v11)
    {
      v12 = v11;
      sub_22A4DD5EC();
    }

    v13 = [a1 networkSignatureV4];
    if (v13)
    {
      v14 = v13;
      sub_22A4DD5EC();
    }

    v15 = [a1 ipv6Addresses];
    if (v15)
    {
      v16 = v15;
      sub_22A4DD82C();
    }

    v17 = [a1 routerIPv6];
    if (v17)
    {
      v18 = v17;
      sub_22A4DD5EC();
    }

    v19 = [a1 networkSignatureV6];
    if (v19)
    {
      v20 = v19;
      sub_22A4DD5EC();
    }

    sub_22A4DBC1C();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v21 = sub_22A4DBC3C();
  v22 = *(*(v21 - 8) + 56);

  return v22(a2, v8, 1, v21);
}

id sub_229801258()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881620, &unk_22A5846F0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v48 - v2;
  v4 = sub_22A4DBB8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DBC5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  v17 = [objc_allocWithZone(MEMORY[0x277CD1718]) init];
  if (v17)
  {
    v49 = v8;
    v50 = v5;
    sub_22A4DBA8C();
    v18 = sub_22A4DD5AC();

    [v17 setMacAddress_];

    sub_22A4DBACC();
    v19 = sub_22A4DD5AC();

    [v17 setIfaceName_];

    sub_22A4DBADC();
    (*(v10 + 16))(v14, v16, v9);
    v20 = (*(v10 + 88))(v14, v9);
    v21 = *MEMORY[0x277D0EFB8];
    v51 = v4;
    if (v20 == v21 || v20 == *MEMORY[0x277D0EFC0])
    {
      (*(v10 + 8))(v16, v9);
    }

    else
    {
      v22 = *MEMORY[0x277D0EFC8];
      v23 = *(v10 + 8);
      v24 = v20;
      v23(v16, v9);
      if (v24 != v22)
      {
        v23(v14, v9);
      }
    }

    v25 = v49;
    v26 = sub_22A4DD5AC();

    [v17 setType_];

    v27 = sub_22A4DBA9C();
    sub_229869FC0(v27);

    v28 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    v29 = sub_22A4DD81C();

    v30 = [v28 initWithArray_];

    [v17 setIpv4Addresses_];
    v31 = sub_22A4DBAAC();
    sub_229869FC0(v31);

    v32 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    v33 = sub_22A4DD81C();

    v34 = [v32 initWithArray_];

    [v17 setIpv6Addresses_];
    sub_22A4DBA7C();
    v36 = v50;
    v35 = v51;
    if ((*(v50 + 48))(v3, 1, v51) == 1)
    {
      sub_229804A34(v3);
    }

    else
    {
      (*(v36 + 32))(v25, v3, v35);
      v37 = [objc_allocWithZone(MEMORY[0x277CD1710]) init];
      if (v37)
      {
        v38 = v37;
        v39 = sub_22A4DBB5C();
        v41 = v40;
        v42 = sub_22A4DB61C();
        sub_2295798D4(v39, v41);
        [v38 setSsid_];

        v43 = sub_22A4DBB7C();
        v45 = v44;
        v46 = sub_22A4DB61C();
        sub_2295798D4(v43, v45);
        [v38 setBssid_];

        [v17 setWifiInfo_];
      }

      (*(v36 + 8))(v25, v35);
    }
  }

  return v17;
}

id sub_229801800()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD1720]) init];
  if (v0)
  {
    sub_22A4DBBBC();
    v1 = sub_22A4DD5AC();

    [v0 setIfaceName_];

    [v0 setIsPrimary_];
    sub_22A4DBC0C();
    if (v2)
    {
      v3 = sub_22A4DD5AC();

      [v0 setConfirmedIfaceName_];
    }

    v4 = sub_22A4DBBCC();
    sub_229869FC0(v4);

    v5 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    v6 = sub_22A4DD81C();

    v7 = [v5 initWithArray_];

    [v0 setIpv4Addresses_];
    v8 = sub_22A4DBBDC();
    sub_229869FC0(v8);

    v9 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    v10 = sub_22A4DD81C();

    v11 = [v9 initWithArray_];

    [v0 setIpv6Addresses_];
    sub_22A4DBBEC();
    if (v12)
    {
      v13 = sub_22A4DD5AC();

      [v0 setNetworkSignatureV4_];
    }

    sub_22A4DBB9C();
    if (v14)
    {
      v15 = sub_22A4DD5AC();

      [v0 setRouterIPv4_];
    }

    sub_22A4DBBFC();
    if (v16)
    {
      v17 = sub_22A4DD5AC();

      [v0 setNetworkSignatureV6_];
    }

    sub_22A4DBBAC();
    if (v18)
    {
      v19 = sub_22A4DD5AC();

      [v0 setRouterIPv6_];
    }
  }

  return v0;
}

void __swiftcall InterfaceInfo.init(name:type:hwAddr:)(HomeKitDaemon::InterfaceInfo *__return_ptr retstr, Swift::String name, Swift::String type, Swift::String hwAddr)
{
  retstr->name = name;
  retstr->type = type;
  retstr->hwAddr = hwAddr;
}

id NetworkInfoController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NetworkInfoController.init()()
{
  type metadata accessor for NetworkInfoSCDataSource();
  v1 = swift_allocObject();
  v2 = sub_2298047A4(v1);
  swift_getObjectType();
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x30);
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x34);
  swift_deallocPartialClassInstance();
  return v2;
}

Swift::Void __swiftcall NetworkInfoController.start()()
{
  v1 = *MEMORY[0x277CBECE8];
  v2 = sub_22A4DD5AC();
  v3 = SCDynamicStoreCreate(v1, v2, 0, 0);

  v4 = *(v0 + OBJC_IVAR___HMDNetworkInfoController_store);
  *(v0 + OBJC_IVAR___HMDNetworkInfoController_store) = v3;
}

void sub_229801D68()
{
  v313 = sub_22A4DBC3C();
  v316 = *(v313 - 8);
  v1 = *(v316 + 64);
  MEMORY[0x28223BE20](v313);
  v309 = &v308 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22A4DBAEC();
  v4 = *(v3 - 8);
  v324 = v3;
  v325 = v4;
  isa = v4[2].isa;
  MEMORY[0x28223BE20](v3);
  v7 = &v308 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881620, &unk_22A5846F0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v322 = &v308 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v347 = &v308 - v12;
  v13 = sub_22A4DBC5C();
  length = v13[-1].length;
  v15 = *(length + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v337 = &v308 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v308 - v18;
  v20 = *(v0 + OBJC_IVAR___HMDNetworkInfoController_store);
  if (!v20)
  {
    v111 = sub_22A4DD05C();
    v112 = sub_22A4DDCEC();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&dword_229538000, v111, v112, "No store", v113, 2u);
      MEMORY[0x22AAD4E50](v113, -1, -1);
    }

    goto LABEL_90;
  }

  v327 = v0;
  v349 = v20;
  sub_229804A9C();
  v23 = *(v21 + 16);
  if (!v23)
  {

    v111 = sub_22A4DD05C();
    v125 = sub_22A4DDCEC();
    if (os_log_type_enabled(v111, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&dword_229538000, v111, v125, "Couldn't obtain interfaces", v126, 2u);
      MEMORY[0x22AAD4E50](v126, -1, -1);
    }

LABEL_90:
    return;
  }

  v326 = OBJC_IVAR___HMDNetworkInfoController_logger;
  LODWORD(v338) = *MEMORY[0x277D0EFC8];
  v25 = *(length + 104);
  v24 = (length + 104);
  v343 = (v24 - 96);
  v344 = v25;
  v312 = *MEMORY[0x277D0EFC0];
  v342 = *MEMORY[0x277CE1648];
  v323 = *MEMORY[0x277CE1688];
  v341 = *MEMORY[0x277CBECE8];
  v315 = *MEMORY[0x277CE1728];
  v321 = *MEMORY[0x277CE1690];
  v314 = *MEMORY[0x277CE1758];
  v345 = v24;
  v311 = *MEMORY[0x277CE1660];
  v318 = v325 + 1;
  v319 = (v24 - 88);
  v308 = v21;
  v26 = (v21 + 72);
  v27 = MEMORY[0x277D84F90];
  *&v22 = 136316162;
  v310 = v22;
  v320 = v7;
  NetworkGlobalEntity = v13;
  v346 = v19;
  do
  {
    v339 = v27;
    v28 = *(v26 - 4);
    v350 = *(v26 - 5);
    v351 = v28;
    v29 = *(v26 - 3);
    v30 = *(v26 - 2);
    v32 = *(v26 - 1);
    v31 = *v26;
    v344(v19, v338, v13);
    v352 = v30;
    v33 = v29 == 0x3132303845454549 && v30 == 0xE900000000000031;
    v34 = v29;
    v336 = v26;
    v340 = v32;
    if (!v33)
    {
      if ((sub_22A4DE60C() & 1) == 0)
      {
        v35 = v29 == 0x74656E7265687445 && v352 == 0xE800000000000000;
        if (!v35 && (sub_22A4DE60C() & 1) == 0)
        {
          (*v343)(v19, v13);
          v27 = v339;
          goto LABEL_58;
        }
      }

      if (v29 == 0x74656E7265687445 && v352 == 0xE800000000000000)
      {
        goto LABEL_19;
      }
    }

    if (sub_22A4DE60C())
    {
LABEL_19:
      v37 = *v343;

      v37(v19, v13);
      v38 = v13;
      v344(v19, v312, v13);
    }

    else
    {
      v38 = v13;
    }

    NetworkServiceEntity = v34;
    v39 = MEMORY[0x277D84F90];
    *&v362 = MEMORY[0x277D84F90];
    *&v354 = MEMORY[0x277D84F90];
    v40 = sub_22A4DD5AC();
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v341, v342, v40, v323);

    v334 = NetworkInterfaceEntity;
    v42 = sub_229804D9C(v349, NetworkInterfaceEntity);
    v43 = sub_22976F210(v42);

    v348 = v31;
    if (v43)
    {
      v44 = sub_22A4DD5EC();
      if (*(v43 + 16))
      {
        v46 = sub_229543DBC(v44, v45);
        v48 = v47;

        if (v48)
        {
          v49 = *(*(v43 + 56) + 8 * v46);

          swift_beginAccess();
          *&v362 = v49;
        }

        else
        {

          v49 = v39;
        }

        v38 = NetworkGlobalEntity;
      }

      else
      {

        v49 = v39;
      }
    }

    else
    {
      v49 = v39;
    }

    v50 = sub_22A4DD5AC();
    v51 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v341, v342, v50, v321);

    v332 = v51;
    v52 = sub_229804D9C(v349, v51);
    v53 = sub_22976F234(v52);

    v335 = v23;
    if (v53)
    {
      v54 = sub_22A4DD5EC();
      if (*(v53 + 16))
      {
        v56 = sub_229543DBC(v54, v55);
        v58 = v57;

        if (v58)
        {
          v59 = *(*(v53 + 56) + 8 * v56);

          v60 = sub_22986AF98(v59);

          if (v60)
          {
            v39 = v60;
          }

          else
          {
            v39 = MEMORY[0x277D84F90];
          }

          swift_beginAccess();
          *&v354 = v39;
        }

        else
        {

          v39 = MEMORY[0x277D84F90];
        }

        v61 = NetworkGlobalEntity;
      }

      else
      {

        v61 = v38;
      }
    }

    else
    {
      v61 = v38;
    }

    v331 = v39;
    v333 = v49;
    v62 = sub_22A4DBB8C();
    v63 = *(*(v62 - 8) + 56);
    v63(v347, 1, 1, v62);
    v64 = v337;
    v344(v337, v338, v61);
    v65 = sub_22A4DBC4C();
    v330 = *v343;
    v330(v64, v61);
    if (v65)
    {
      v66 = sub_22A4DD5AC();
      v67 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v341, v342, v66, v311);

      v68 = sub_229804D9C(v349, v67);
      if (*(v68 + 16) && (v69 = sub_229543DBC(0x4449535342, 0xE500000000000000), (v70 & 1) != 0) && (v353[0] = *(*(v68 + 56) + 8 * v69), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
      {
        v71 = v370;
        if (*(v68 + 16))
        {
          v72 = sub_229543DBC(1145656147, 0xE400000000000000);
          if (v73)
          {
            v74 = *(*(v68 + 56) + 8 * v72);
            swift_unknownObjectRetain();

            v353[0] = v74;
            if (swift_dynamicCast())
            {
              v75 = v322;
              sub_22A4DBB6C();

              v76 = v347;
              sub_229804A34(v347);
              v63(v75, 0, 1, v62);
              sub_229804F54(v75, v76);
            }

            else
            {

              sub_2295798D4(v71, *(&v71 + 1));
            }

            v61 = NetworkGlobalEntity;
            goto LABEL_50;
          }
        }

        sub_2295798D4(v71, *(&v71 + 1));
      }

      else
      {
      }

      v61 = NetworkGlobalEntity;
    }

LABEL_50:

    v77 = sub_22A4DD05C();
    v78 = sub_22A4DDCDC();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v317 = swift_slowAlloc();
      *&v370 = v317;
      *v79 = v310;

      v81 = MEMORY[0x277D837D0];
      v82 = MEMORY[0x22AAD0A20](v80, MEMORY[0x277D837D0]);
      v84 = v83;

      v85 = sub_2295A3E30(v82, v84, &v370);

      *(v79 + 4) = v85;
      *(v79 + 12) = 2080;

      v87 = v352;
      v88 = MEMORY[0x22AAD0A20](v86, v81);
      v90 = v89;

      v91 = sub_2295A3E30(v88, v90, &v370);

      *(v79 + 14) = v91;
      *(v79 + 22) = 2080;

      v92 = sub_2295A3E30(v340, v348, &v370);

      *(v79 + 24) = v92;
      *(v79 + 32) = 2080;
      v93 = v351;

      v94 = sub_2295A3E30(v350, v93, &v370);

      *(v79 + 34) = v94;
      *(v79 + 42) = 2080;

      v95 = sub_2295A3E30(NetworkServiceEntity, v87, &v370);

      *(v79 + 44) = v95;
      _os_log_impl(&dword_229538000, v77, v78, "ObtainedIP: %s  %s mac: %s name: %s type: %s", v79, 0x34u);
      v96 = v317;
      swift_arrayDestroy();
      v97 = v320;
      MEMORY[0x22AAD4E50](v96, -1, -1);
      v61 = NetworkGlobalEntity;
      MEMORY[0x22AAD4E50](v79, -1, -1);

      v98 = v346;
      v23 = v335;
    }

    else
    {

      v98 = v346;
      v23 = v335;
      v97 = v320;
    }

    v99 = v61;
    (*v319)(v337, v98, v61);
    sub_229804EE4(v347, v322);

    v100 = v97;
    sub_22A4DBABC();

    v27 = v339;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_22958AD60(0, v27[2] + 1, 1, v27);
    }

    v102 = v27[2];
    v101 = v27[3];
    v13 = v99;
    if (v102 >= v101 >> 1)
    {
      v27 = sub_22958AD60(v101 > 1, v102 + 1, 1, v27);
    }

    v19 = v346;

    sub_229804A34(v347);
    v330(v19, v13);
    v27[2] = v102 + 1;
    (v325[1].isa)(v27 + ((LOBYTE(v325[2].data) + 32) & ~LOBYTE(v325[2].data)) + v325[2].info * v102, v100, v324);

    v26 = v336;
LABEL_58:
    v26 += 6;
    --v23;
  }

  while (v23);

  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(v341, v342, v323);
  v103 = sub_229804D9C(v349, NetworkGlobalEntity);
  v104 = v103;
  if (*(v103 + 16) && (v105 = sub_229543DBC(0x537972616D697250, 0xEE00656369767265), (v106 & 1) != 0))
  {
    v107 = *(*(v104 + 56) + 8 * v105);
    swift_unknownObjectRetain();

    *&v362 = v107;
    v108 = swift_dynamicCast();
    v109 = v370;
    if (!v108)
    {
      v109 = 0;
    }

    v347 = v109;
    if (v108)
    {
      v110 = *(&v370 + 1);
    }

    else
    {
      v110 = 0;
    }
  }

  else
  {

    v347 = 0;
    v110 = 0;
  }

  v114 = sub_22A4DD05C();
  v115 = sub_22A4DDCCC();

  v116 = os_log_type_enabled(v114, v115);
  v339 = v27;
  if (v116)
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *&v370 = v118;
    *v117 = 136315138;
    if (v110)
    {
      v119 = v347;
    }

    else
    {
      v119 = 7104878;
    }

    if (v110)
    {
      v120 = v110;
    }

    else
    {
      v120 = 0xE300000000000000;
    }

    v121 = sub_2295A3E30(v119, v120, &v370);

    *(v117 + 4) = v121;
    _os_log_impl(&dword_229538000, v114, v115, "primaryServiceName %s", v117, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v118);
    MEMORY[0x22AAD4E50](v118, -1, -1);
    MEMORY[0x22AAD4E50](v117, -1, -1);
  }

  v333 = *MEMORY[0x277CE1628];
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(v341, v342, v333, v323);
  v122 = SCDynamicStoreCopyKeyList(v349, NetworkServiceEntity);
  v123 = MEMORY[0x277D84F90];
  if (v122)
  {
    v124 = v122;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      *&v370 = 0;
      type metadata accessor for CFString(0);
      sub_22A4DD82C();

      if (v370)
      {
        v123 = v370;
      }
    }

    else
    {
    }
  }

  v127 = sub_22A4DD05C();
  v128 = sub_22A4DDCCC();
  v129 = os_log_type_enabled(v127, v128);
  v348 = v123;
  if (v129)
  {
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    *&v370 = v131;
    *v130 = 136315138;
    type metadata accessor for CFString(0);
    v133 = MEMORY[0x22AAD0A20](v123, v132);
    v135 = sub_2295A3E30(v133, v134, &v370);

    *(v130 + 4) = v135;
    v123 = v348;
    _os_log_impl(&dword_229538000, v127, v128, "v4ServiceKeys %s", v130, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v131);
    MEMORY[0x22AAD4E50](v131, -1, -1);
    MEMORY[0x22AAD4E50](v130, -1, -1);
  }

  if (v123 >> 62)
  {
    goto LABEL_254;
  }

  v136 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_96:
  v344 = v110;
  if (!v136)
  {
    v352 = MEMORY[0x277D84F90];
LABEL_160:

    v325 = SCDynamicStoreKeyCreateNetworkServiceEntity(v341, v342, v333, v321);
    v188 = SCDynamicStoreCopyKeyList(v349, v325);
    v189 = MEMORY[0x277D84F90];
    if (v188)
    {
      v190 = v188;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        *&v370 = 0;
        type metadata accessor for CFString(0);
        sub_22A4DD82C();

        if (v370)
        {
          v191 = v370;
        }

        else
        {
          v191 = v189;
        }
      }

      else
      {

        v191 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v191 = MEMORY[0x277D84F90];
    }

    v192 = sub_22A4DD05C();
    v193 = sub_22A4DDCCC();
    v194 = os_log_type_enabled(v192, v193);
    v334 = v191;
    if (v194)
    {
      v195 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      *&v370 = v196;
      *v195 = 136315138;
      type metadata accessor for CFString(0);
      v198 = MEMORY[0x22AAD0A20](v191, v197);
      v200 = sub_2295A3E30(v198, v199, &v370);
      v191 = v334;

      *(v195 + 4) = v200;
      _os_log_impl(&dword_229538000, v192, v193, "v6serviceKeys %s", v195, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v196);
      MEMORY[0x22AAD4E50](v196, -1, -1);
      MEMORY[0x22AAD4E50](v195, -1, -1);
    }

    v201 = v352;
    v202 = MEMORY[0x277CE16F0];
    if (v191 >> 62)
    {
      v274 = MEMORY[0x277CE16F0];
      v275 = sub_22A4DE0EC();
      v202 = v274;
      v203 = v275;
      if (v275)
      {
        goto LABEL_171;
      }
    }

    else
    {
      v203 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v203)
      {
LABEL_171:
        v123 = 0;
        v350 = *v202;
        v351 = v191 & 0xC000000000000001;
        v345 = (v191 + 32);
        v346 = v191 & 0xFFFFFFFFFFFFFF8;
        v332 = "ntroller";
        v323 = "NetworkSignature";
        v333 = *MEMORY[0x277CE1780];
        v348 = v203;
        do
        {
          if (v351)
          {
            v204 = MEMORY[0x22AAD13F0](v123, v191);
          }

          else
          {
            if (v123 >= *(v346 + 16))
            {
              goto LABEL_252;
            }

            v204 = *&v345[8 * v123];
          }

          v205 = v204;
          if (__OFADD__(v123++, 1))
          {
            __break(1u);
LABEL_252:
            __break(1u);
LABEL_253:
            __break(1u);
LABEL_254:
            v136 = sub_22A4DE0EC();
            goto LABEL_96;
          }

          v207 = SCDynamicStoreCopyValue(v349, v204);
          v352 = v201;
          if (v207)
          {
            v208 = v207;
            TypeID = CFDictionaryGetTypeID();
            if (TypeID == CFGetTypeID(v208) && (*&v370 = v208, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881628, &qword_22A584700), (swift_dynamicCast() & 1) != 0))
            {
              swift_unknownObjectRelease();
              v210 = v362;
            }

            else
            {
              v210 = sub_22956AED0(v189);
              swift_unknownObjectRelease();
            }
          }

          else
          {
            v210 = MEMORY[0x277D84F98];
          }

          v211 = sub_22A4DD5EC();
          if (*(v210 + 16))
          {
            v213 = sub_229543DBC(v211, v212);
            v215 = v214;

            if (v215)
            {
              *&v362 = *(*(v210 + 56) + 8 * v213);
              swift_unknownObjectRetain();
              if (swift_dynamicCast())
              {
                v216 = v370;
                if (v110)
                {
                  *&v370 = sub_22A4DD5EC();
                  *(&v370 + 1) = v217;
                  *&v362 = v347;
                  *(&v362 + 1) = v110;
                  sub_22962F254();

                  LODWORD(v340) = sub_22A4DDFFC();

                  if (*(v210 + 16))
                  {
                    goto LABEL_190;
                  }

LABEL_201:
                  v342 = 0;
                  v343 = 0;
LABEL_210:
                  v336 = 0;
                  v341 = 0;
                }

                else
                {
                  LODWORD(v340) = 0;
                  if (!*(v210 + 16))
                  {
                    goto LABEL_201;
                  }

LABEL_190:
                  v218 = sub_229543DBC(0xD000000000000010, v332 | 0x8000000000000000);
                  if (v219)
                  {
                    *&v362 = *(*(v210 + 56) + 8 * v218);
                    swift_unknownObjectRetain();
                    v220 = swift_dynamicCast();
                    if (v220)
                    {
                      v221 = v370;
                    }

                    else
                    {
                      v221 = 0;
                    }

                    if (v220)
                    {
                      v222 = *(&v370 + 1);
                    }

                    else
                    {
                      v222 = 0;
                    }

                    v342 = v222;
                    v343 = v221;
                    if (!*(v210 + 16))
                    {
                      goto LABEL_210;
                    }
                  }

                  else
                  {
                    v342 = 0;
                    v343 = 0;
                    if (!*(v210 + 16))
                    {
                      goto LABEL_210;
                    }
                  }

                  v223 = sub_229543DBC(0xD000000000000016, v323 | 0x8000000000000000);
                  if ((v224 & 1) == 0)
                  {
                    goto LABEL_210;
                  }

                  *&v362 = *(*(v210 + 56) + 8 * v223);
                  swift_unknownObjectRetain();
                  v225 = swift_dynamicCast();
                  v226 = v370;
                  if (!v225)
                  {
                    v226 = 0;
                  }

                  v336 = v226;
                  if (v225)
                  {
                    v227 = *(&v370 + 1);
                  }

                  else
                  {
                    v227 = 0;
                  }

                  v341 = v227;
                }

                v228 = sub_22A4DD5EC();
                if (*(v210 + 16))
                {
                  v230 = sub_229543DBC(v228, v229);
                  v232 = v231;

                  if (v232)
                  {
                    *&v362 = *(*(v210 + 56) + 8 * v230);
                    swift_unknownObjectRetain();
                    v233 = swift_dynamicCast();
                    v234 = v370;
                    if (!v233)
                    {
                      v234 = 0;
                    }

                    v335 = v234;
                    if (v233)
                    {
                      v235 = *(&v370 + 1);
                    }

                    else
                    {
                      v235 = 0;
                    }

                    v338 = v235;
LABEL_221:
                    v236 = MEMORY[0x277D84F90];
                    v237 = sub_22A4DD5EC();
                    if (*(v210 + 16))
                    {
                      v239 = sub_229543DBC(v237, v238);
                      v241 = v240;

                      if (v241)
                      {
                        v242 = *(*(v210 + 56) + 8 * v239);
                        swift_unknownObjectRetain();

                        *&v370 = v242;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
                        if (swift_dynamicCast())
                        {
                          v337 = v362;
                          v201 = v352;
                          v236 = MEMORY[0x277D84F90];
                          goto LABEL_229;
                        }
                      }

                      else
                      {
                      }

                      v236 = MEMORY[0x277D84F90];
                    }

                    else
                    {
                    }

                    v337 = v236;
                    v201 = v352;
LABEL_229:
                    LOBYTE(v370) = v340 & 1;
                    *(&v370 + 1) = v216;
                    v371 = *(&v216 + 1);
                    *&v372 = 0;
                    v373 = 0u;
                    v374 = 0u;
                    *(&v372 + 1) = v236;
                    *&v375[0] = v236;
                    memset(v375 + 8, 0, 32);
                    v243 = *(v201 + 2);
                    if (v243)
                    {
                      v244 = 0;
                      v245 = 0;
                      while (1)
                      {
                        v246 = &v201[v244];
                        v247 = *&v201[v244 + 40] == v216 && *&v201[v244 + 48] == *(&v216 + 1);
                        if (v247 || (sub_22A4DE60C() & 1) != 0)
                        {
                          break;
                        }

                        ++v245;
                        v244 += 120;
                        if (v243 == v245)
                        {
                          goto LABEL_237;
                        }
                      }

                      v248 = *(v246 + 2);
                      v249 = *(v246 + 3);
                      v250 = *(v246 + 5);
                      v356 = *(v246 + 4);
                      v357 = v250;
                      v354 = v248;
                      v355 = v249;
                      v251 = *(v246 + 6);
                      v252 = *(v246 + 7);
                      v253 = *(v246 + 8);
                      v361 = *(v246 + 18);
                      v359 = v252;
                      v360 = v253;
                      v358 = v251;
                      v366 = v374;
                      v367 = v375[0];
                      v368 = v375[1];
                      v369 = *&v375[2];
                      v362 = v370;
                      v363 = v371;
                      v364 = v372;
                      v365 = v373;
                      sub_229804E7C(&v354, v353);
                      sub_229804EB4(&v362);
                      v340 = *(&v359 + 1);
                      v254 = v360;
                      v255 = v361;
                      v330 = *(&v355 + 1);
                      v331 = *(&v360 + 1);
                      v256 = v356;
                      v374 = v358;
                      v375[0] = v359;
                      v375[1] = v360;
                      *&v375[2] = v361;
                      v370 = v354;
                      v371 = v355;
                      v372 = v356;
                      v373 = v357;
                      sub_2296F0858(v337);
                      if (v256)
                      {

                        v257 = v330;
                        v258 = v256;
                        v259 = v343;
                        v110 = v344;
                      }

                      else
                      {
                        v259 = v343;
                        v110 = v344;
                        v258 = v341;
                        v257 = v336;
                      }

                      *(&v371 + 1) = v257;
                      *&v372 = v258;
                      v201 = v352;
                      if (v255)
                      {

                        *(&v375[1] + 1) = v331;
                        *&v375[2] = v255;
                        if (v254)
                        {
                          goto LABEL_243;
                        }

LABEL_245:
                        v254 = v338;
                        v203 = v348;
                        v260 = v335;
                      }

                      else
                      {
                        *(&v375[1] + 1) = v259;
                        *&v375[2] = v342;
                        if (!v254)
                        {
                          goto LABEL_245;
                        }

LABEL_243:

                        v260 = v340;
                        v203 = v348;
                      }

                      *(&v375[0] + 1) = v260;
                      *&v375[1] = v254;
                      v366 = v374;
                      v367 = v375[0];
                      v368 = v375[1];
                      v369 = *&v375[2];
                      v362 = v370;
                      v363 = v371;
                      v364 = v372;
                      v365 = v373;
                      sub_229804E7C(&v362, &v354);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v201 = sub_2295AFE78(v201);
                      }

                      if (v245 >= *(v201 + 2))
                      {
                        goto LABEL_253;
                      }

                      v261 = &v201[v244];
                      v262 = *&v201[v244 + 32];
                      v263 = *&v201[v244 + 48];
                      v264 = *&v201[v244 + 80];
                      v356 = *&v201[v244 + 64];
                      v357 = v264;
                      v354 = v262;
                      v355 = v263;
                      v265 = *&v201[v244 + 96];
                      v266 = *&v201[v244 + 112];
                      v267 = *&v201[v244 + 128];
                      v361 = *&v201[v244 + 144];
                      v359 = v266;
                      v360 = v267;
                      v358 = v265;
                      v268 = v362;
                      v269 = v363;
                      v270 = v365;
                      *(v261 + 4) = v364;
                      *(v261 + 5) = v270;
                      *(v261 + 2) = v268;
                      *(v261 + 3) = v269;
                      v271 = v366;
                      v272 = v367;
                      v273 = v368;
                      *(v261 + 18) = v369;
                      *(v261 + 7) = v272;
                      *(v261 + 8) = v273;
                      *(v261 + 6) = v271;
                      sub_229804EB4(&v354);
                    }

                    else
                    {
LABEL_237:
                      sub_2296F0858(v337);
                      *(&v371 + 1) = v336;
                      *&v372 = v341;
                      *(&v375[1] + 1) = v343;
                      *&v375[2] = v342;
                      *(&v375[0] + 1) = v335;
                      *&v375[1] = v338;

                      v110 = v344;
                      v203 = v348;
                    }

                    v366 = v374;
                    v367 = v375[0];
                    v368 = v375[1];
                    v369 = *&v375[2];
                    v362 = v370;
                    v363 = v371;
                    v364 = v372;
                    v365 = v373;
                    sub_229804EB4(&v362);
                    v189 = MEMORY[0x277D84F90];
                    v191 = v334;
                    continue;
                  }
                }

                else
                {
                }

                v335 = 0;
                v338 = 0;
                goto LABEL_221;
              }
            }

            v201 = v352;
            v203 = v348;
          }

          else
          {

            v201 = v352;
          }
        }

        while (v123 != v203);
      }
    }

    v276 = *(v201 + 2);
    v352 = v201;
    if (v276)
    {
      *&v370 = MEMORY[0x277D84F90];
      sub_229583794(0, v276, 0);
      v277 = v370;
      v338 = v316 + 32;
      v278 = (v201 + 72);
      v279 = v309;
      do
      {
        v350 = v276;
        v351 = v277;
        LODWORD(v348) = *(v278 - 40);
        v280 = *(v278 - 4);
        v281 = *(v278 - 3);
        v282 = *(v278 - 1);
        v346 = *(v278 - 2);
        v347 = v280;
        v283 = *v278;
        v284 = v278[1];
        v285 = v278[2];
        v344 = v278[3];
        v345 = v284;
        v286 = v278[4];
        v287 = v278[5];
        v288 = v278[6];
        v289 = v278[7];
        v342 = v281;
        v343 = v288;
        v290 = v278[8];
        v291 = v278[9];
        v340 = v283;
        v341 = v290;

        v277 = v351;
        sub_22A4DBC1C();
        *&v370 = v277;
        v293 = *(v277 + 16);
        v292 = *(v277 + 24);
        if (v293 >= v292 >> 1)
        {
          sub_229583794(v292 > 1, v293 + 1, 1);
          v279 = v309;
          v277 = v370;
        }

        v278 += 15;
        *(v277 + 16) = v293 + 1;
        (*(v316 + 32))(v277 + ((*(v316 + 80) + 32) & ~*(v316 + 80)) + *(v316 + 72) * v293, v279, v313);
        v276 = v350 - 1;
      }

      while (v350 != 1);
    }

    v294 = sub_22A4DD05C();
    v295 = sub_22A4DDCCC();
    if (os_log_type_enabled(v294, v295))
    {
      v296 = swift_slowAlloc();
      v297 = swift_slowAlloc();
      *&v370 = v297;
      *v296 = 136315394;

      v299 = MEMORY[0x22AAD0A20](v298, v324);
      v301 = v300;

      v302 = sub_2295A3E30(v299, v301, &v370);

      *(v296 + 4) = v302;
      *(v296 + 12) = 2080;

      v304 = MEMORY[0x22AAD0A20](v303, v313);
      v306 = v305;

      v307 = sub_2295A3E30(v304, v306, &v370);

      *(v296 + 14) = v307;
      _os_log_impl(&dword_229538000, v294, v295, "%s %s", v296, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v297, -1, -1);
      MEMORY[0x22AAD4E50](v296, -1, -1);
    }

    return;
  }

  if (v136 >= 1)
  {
    v137 = 0;
    v138 = *MEMORY[0x277CE16F0];
    v350 = v123 & 0xC000000000000001;
    v351 = v138;
    v334 = "ntroller";
    v332 = "NetworkSignature";
    v335 = *MEMORY[0x277CE1748];
    v352 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v350)
      {
        v139 = MEMORY[0x22AAD13F0](v137, v123);
        if (v110)
        {
          goto LABEL_103;
        }
      }

      else
      {
        v139 = *(v123 + 8 * v137 + 32);
        if (v110)
        {
LABEL_103:
          *&v370 = sub_22A4DD5EC();
          *(&v370 + 1) = v140;
          *&v362 = v347;
          *(&v362 + 1) = v110;
          sub_22962F254();

          v141 = sub_22A4DDFFC();

          goto LABEL_106;
        }
      }

      v141 = 0;
LABEL_106:
      v142 = SCDynamicStoreCopyValue(v349, v139);
      if (v142)
      {
        v143 = v142;
        v144 = CFDictionaryGetTypeID();
        if (v144 == CFGetTypeID(v143))
        {
          *&v370 = v143;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881628, &qword_22A584700);
          if (swift_dynamicCast())
          {
            swift_unknownObjectRelease();
            v145 = v362;
            goto LABEL_112;
          }
        }

        swift_unknownObjectRelease();
      }

      v145 = MEMORY[0x277D84F98];
LABEL_112:
      v146 = sub_22A4DD5EC();
      if (*(v145 + 16))
      {
        v148 = sub_229543DBC(v146, v147);
        v150 = v149;

        if (v150)
        {
          *&v362 = *(*(v145 + 56) + 8 * v148);
          swift_unknownObjectRetain();
          if (swift_dynamicCast())
          {
            v346 = *(&v370 + 1);
            v151 = v370;
            v123 = v348;
            if (!*(v145 + 16))
            {
              v343 = 0;
              v345 = 0;
              goto LABEL_135;
            }

            v152 = sub_229543DBC(0xD000000000000010, v334 | 0x8000000000000000);
            if (v153)
            {
              *&v362 = *(*(v145 + 56) + 8 * v152);
              swift_unknownObjectRetain();
              v154 = swift_dynamicCast();
              v155 = v370;
              if (!v154)
              {
                v155 = 0;
              }

              v345 = v155;
              if (v154)
              {
                v156 = *(&v370 + 1);
              }

              else
              {
                v156 = 0;
              }

              v343 = v156;
              if (!*(v145 + 16))
              {
LABEL_135:
                v336 = 0;
                v337 = 0;
                goto LABEL_136;
              }
            }

            else
            {
              v345 = 0;
              v343 = 0;
              if (!*(v145 + 16))
              {
                goto LABEL_135;
              }
            }

            v157 = sub_229543DBC(0xD000000000000016, v332 | 0x8000000000000000);
            if ((v158 & 1) == 0)
            {
              goto LABEL_135;
            }

            *&v362 = *(*(v145 + 56) + 8 * v157);
            swift_unknownObjectRetain();
            v159 = swift_dynamicCast();
            if (v159)
            {
              v160 = v370;
            }

            else
            {
              v160 = 0;
            }

            if (v159)
            {
              v161 = *(&v370 + 1);
            }

            else
            {
              v161 = 0;
            }

            v336 = v161;
            v337 = v160;
LABEL_136:
            v162 = sub_22A4DD5EC();
            if (*(v145 + 16))
            {
              v164 = sub_229543DBC(v162, v163);
              v166 = v165;

              if (v166)
              {
                *&v362 = *(*(v145 + 56) + 8 * v164);
                swift_unknownObjectRetain();
                v167 = swift_dynamicCast();
                v168 = v370;
                if (!v167)
                {
                  v168 = 0;
                }

                v340 = v168;
                if (v167)
                {
                  v169 = *(&v370 + 1);
                }

                else
                {
                  v169 = 0;
                }

                v338 = v169;
              }

              else
              {
                v340 = 0;
                v338 = 0;
              }

              v123 = v348;
            }

            else
            {

              v340 = 0;
              v338 = 0;
            }

            v170 = sub_22A4DD5EC();
            if (*(v145 + 16))
            {
              v172 = sub_229543DBC(v170, v171);
              v174 = v173;

              if ((v174 & 1) == 0)
              {

                v177 = MEMORY[0x277D84F90];
                v123 = v348;
                goto LABEL_154;
              }

              v175 = *(*(v145 + 56) + 8 * v172);
              swift_unknownObjectRetain();

              *&v370 = v175;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
              v176 = swift_dynamicCast();
              v123 = v348;
              if (v176)
              {
                v177 = v362;
LABEL_154:
                v178 = v151;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v352 = sub_22958AC3C(0, *(v352 + 2) + 1, 1, v352);
                }

                v180 = *(v352 + 2);
                v179 = *(v352 + 3);
                if (v180 >= v179 >> 1)
                {
                  v352 = sub_22958AC3C((v179 > 1), v180 + 1, 1, v352);
                }

                v181 = v352;
                *(v352 + 2) = v180 + 1;
                v182 = &v181[120 * v180];
                v182[32] = v141 & 1;
                v183 = *(&v370 + 3);
                *(v182 + 33) = v370;
                *(v182 + 9) = v183;
                v184 = v346;
                *(v182 + 5) = v178;
                *(v182 + 6) = v184;
                v185 = v336;
                *(v182 + 7) = v337;
                *(v182 + 8) = v185;
                v186 = v340;
                *(v182 + 9) = v177;
                *(v182 + 10) = v186;
                v110 = v344;
                v187 = v345;
                *(v182 + 11) = v338;
                *(v182 + 12) = v187;
                *(v182 + 13) = v343;
                *(v182 + 14) = MEMORY[0x277D84F90];
                *(v182 + 120) = 0u;
                *(v182 + 136) = 0u;
                goto LABEL_100;
              }
            }

            else
            {
            }

            v177 = MEMORY[0x277D84F90];
            goto LABEL_154;
          }
        }

        v123 = v348;
      }

      else
      {
      }

LABEL_100:
      if (v136 == ++v137)
      {
        goto LABEL_160;
      }
    }
  }

  __break(1u);
}

unint64_t NetworkInfoController.obtainNetworkInfoProto()()
{
  v50 = sub_22A4DBC3C();
  v46 = *(v50 - 8);
  v0 = *(v46 + 64);
  MEMORY[0x28223BE20](v50);
  v2 = v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22A4DBAEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229801D68();
  v10 = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84F90];
  v11 = *(v8 + 16);
  v47 = v9;
  if (v11)
  {
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v49 = v13;
    v14 = *(v12 + 64);
    v45[1] = v8;
    v15 = v8 + ((v14 + 32) & ~v14);
    v16 = *(v12 + 56);
    v17 = (v12 - 8);
    v48 = MEMORY[0x277D84F90];
    do
    {
      v18 = v12;
      v49(v7, v15, v3);
      v19 = sub_229801258();
      v20 = (*v17)(v7, v3);
      if (v19)
      {
        MEMORY[0x22AAD09E0](v20);
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v48 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22A4DD85C();
        }

        sub_22A4DD87C();
        v48 = v51;
      }

      v15 += v16;
      --v11;
      v12 = v18;
    }

    while (v11);

    v21 = v47;
    v22 = v48;
    v10 = MEMORY[0x277D84F90];
  }

  else
  {
    v21 = v9;

    v22 = MEMORY[0x277D84F90];
  }

  v51 = v10;
  v23 = *(v21 + 16);
  if (v23)
  {
    v24 = *(v46 + 16);
    v48 = v22;
    v49 = v24;
    v25 = v21 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v26 = *(v46 + 72);
    v27 = (v46 + 8);
    v28 = MEMORY[0x277D84F90];
    do
    {
      v29 = v50;
      v49(v2, v25, v50);
      v30 = sub_229801800();
      v31 = (*v27)(v2, v29);
      if (v30)
      {
        MEMORY[0x22AAD09E0](v31);
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v32 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22A4DD85C();
        }

        sub_22A4DD87C();
        v28 = v51;
      }

      v25 += v26;
      --v23;
    }

    while (v23);

    v33 = v28;
    v22 = v48;
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881610, &qword_22A5845C0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x496B726F7774654ELL;
  *(inited + 16) = xmmword_22A5761A0;
  *(inited + 40) = 0xEB000000006F666ELL;
  if (v22 >> 62)
  {

    v43 = sub_22A4DE3AC();
    swift_bridgeObjectRelease_n();
    v22 = v43;
  }

  else
  {
    v35 = v22 & 0xFFFFFFFFFFFFFF8;

    sub_22A4DE61C();
    if (swift_dynamicCastMetatype() || (v39 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_21:
    }

    else
    {
      v40 = (v35 + 32);
      while (*v40)
      {
        ++v40;
        if (!--v39)
        {
          goto LABEL_21;
        }
      }

      v22 = v35 | 1;
    }
  }

  *(inited + 48) = v22;
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x800000022A58BC30;
  if (v33 >> 62)
  {

    v44 = sub_22A4DE3AC();
    swift_bridgeObjectRelease_n();
    v33 = v44;
  }

  else
  {
    v36 = v33 & 0xFFFFFFFFFFFFFF8;

    sub_22A4DE61C();
    if (swift_dynamicCastMetatype() || (v41 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_24:
    }

    else
    {
      v42 = (v36 + 32);
      while (*v42)
      {
        ++v42;
        if (!--v41)
        {
          goto LABEL_24;
        }
      }

      v33 = v36 | 1;
    }
  }

  *(inited + 72) = v33;
  v37 = sub_22956B960(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881618, qword_22A5845C8);
  swift_arrayDestroy();
  return v37;
}

id NetworkInfoController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkInfoController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2298047A4(uint64_t a1)
{
  v2 = type metadata accessor for NetworkInfoSCDataSource();
  v16[3] = v2;
  v16[4] = &off_283CE6A30;
  v16[0] = a1;
  v3 = type metadata accessor for NetworkInfoController();
  v4 = objc_allocWithZone(v3);
  v5 = __swift_mutable_project_boxed_opaque_existential_0(v16, v2);
  v6 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = *v8;
  v15[3] = v2;
  v15[4] = &off_283CE6A30;
  v15[0] = v10;
  v11 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_22A4DD06C();
  *&v4[OBJC_IVAR___HMDNetworkInfoController_store] = 0;
  sub_22957F1C4(v15, &v4[OBJC_IVAR___HMDNetworkInfoController_dataSource]);
  v14.receiver = v4;
  v14.super_class = v3;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v15);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return v12;
}

uint64_t type metadata accessor for NetworkInfoController()
{
  result = qword_2814023A8;
  if (!qword_2814023A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_229804990()
{
  result = sub_22A4DD07C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_229804A34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881620, &unk_22A5846F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_229804A9C()
{
  v0 = SCNetworkInterfaceCopyAll();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for SCNetworkInterface(0);
    sub_22A4DD82C();
  }
}

unint64_t sub_229804D9C(const __SCDynamicStore *a1, const __CFString *a2)
{
  v2 = SCDynamicStoreCopyValue(a1, a2);
  if (v2)
  {
    v3 = v2;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v3) && (swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881628, &qword_22A584700), swift_dynamicCast()))
    {
      swift_unknownObjectRelease();
      return v8;
    }

    else
    {
      v6 = sub_22956AED0(MEMORY[0x277D84F90]);
      swift_unknownObjectRelease();
      return v6;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];

    return sub_22956AED0(v7);
  }
}

uint64_t sub_229804EE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881620, &unk_22A5846F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_229804F54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881620, &unk_22A5846F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_229804FF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_229805038(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2298050B4()
{
  v1 = OBJC_IVAR____TtCOO13HomeKitDaemon16DeviceMediaState16FrameworkAdapter24MediaRemotePlaybackState_notificationTask;
  if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon16DeviceMediaState16FrameworkAdapter24MediaRemotePlaybackState_notificationTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon16DeviceMediaState16FrameworkAdapter24MediaRemotePlaybackState_notificationTask);

    sub_22A4DDA7C();
  }

  MRMediaRemoteSetWantsNowPlayingNotifications();
  sub_2296792B0(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon16DeviceMediaState16FrameworkAdapter24MediaRemotePlaybackState_updateStream);
  v3 = *(v0 + v1);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s24MediaRemotePlaybackStateCMa()
{
  result = qword_27D881638;
  if (!qword_27D881638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2298051DC()
{
  sub_2296791B4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t HMAccessorySleepWakeState.description.getter(uint64_t a1)
{
  v1 = 0x656B617741;
  v2 = 0x746C7561666564;
  if (a1 == 1)
  {
    v2 = 0x7065656C53;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t sub_229805310()
{
  v1 = *v0;
  v2 = 0x656B617741;
  v3 = 0x746C7561666564;
  if (*v0 == 1)
  {
    v3 = 0x7065656C53;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t sub_229805390@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2298053C0(uint64_t a1)
{
  v2 = sub_229805C78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2298053FC(uint64_t a1)
{
  v2 = sub_229805C78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_229805438()
{
  v1 = 0x615065766F6D6572;
  if (*v0 != 1)
  {
    v1 = 1953719668;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73736150646461;
  }
}

uint64_t sub_229805494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_229806750(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2298054BC(uint64_t a1)
{
  v2 = sub_229805AD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2298054F8(uint64_t a1)
{
  v2 = sub_229805AD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_229805540(uint64_t a1)
{
  v2 = sub_229805BD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22980557C(uint64_t a1)
{
  v2 = sub_229805BD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2298055B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22A4DE60C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_229805638(uint64_t a1)
{
  v2 = sub_229805B28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_229805674(uint64_t a1)
{
  v2 = sub_229805B28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeUtilPassCommand.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v36 = a5;
  v31 = a4;
  v34 = a2;
  v35 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881648, &qword_22A5848E0);
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v30 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881650, &qword_22A5848E8);
  v28 = *(v9 - 8);
  v29 = v9;
  v10 = *(v28 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881658, &qword_22A5848F0);
  v27 = *(v13 - 8);
  v14 = *(v27 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881660, &qword_22A5848F8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v26 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_229805AD4();
  sub_22A4DE80C();
  if (!v36)
  {
    LOBYTE(v37) = 1;
    sub_229805BD0();
    sub_22A4DE50C();
    LOBYTE(v37) = v34 & 1;
    v38 = v35;
    v39 = v31;
    sub_229805C24();
    v23 = v29;
    sub_22A4DE59C();
    v24 = v28;
    goto LABEL_5;
  }

  if (v36 == 1)
  {
    LOBYTE(v37) = 2;
    sub_229805B28();
    v12 = v30;
    sub_22A4DE50C();
    v37 = v34;
    v38 = v35;
    sub_229805B7C();
    v23 = v33;
    sub_22A4DE59C();
    v24 = v32;
LABEL_5:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  LOBYTE(v37) = 0;
  sub_229805C78();
  sub_22A4DE50C();
  (*(v27 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

unint64_t sub_229805AD4()
{
  result = qword_27D881668;
  if (!qword_27D881668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881668);
  }

  return result;
}

unint64_t sub_229805B28()
{
  result = qword_27D881670;
  if (!qword_27D881670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881670);
  }

  return result;
}

unint64_t sub_229805B7C()
{
  result = qword_27D881678;
  if (!qword_27D881678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881678);
  }

  return result;
}

unint64_t sub_229805BD0()
{
  result = qword_27D881680;
  if (!qword_27D881680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881680);
  }

  return result;
}

unint64_t sub_229805C24()
{
  result = qword_27D881688;
  if (!qword_27D881688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881688);
  }

  return result;
}

unint64_t sub_229805C78()
{
  result = qword_27D881690;
  if (!qword_27D881690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881690);
  }

  return result;
}

unint64_t HomeUtilPassCommand.init(from:)(uint64_t *a1)
{
  result = sub_22980686C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

unint64_t sub_229805CF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22980686C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_229805D4C()
{
  if (*v0)
  {
    result = 0x656D614E656D6F68;
  }

  else
  {
    result = 7105633;
  }

  *v0;
  return result;
}

uint64_t sub_229805D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v5 || (sub_22A4DE60C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D614E656D6F68 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22A4DE60C();

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

uint64_t sub_229805E5C(uint64_t a1)
{
  v2 = sub_229806ED0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_229805E98(uint64_t a1)
{
  v2 = sub_229806ED0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemovePassesCommand.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881698, &qword_22A584900);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_229806ED0();
  sub_22A4DE80C();
  v15 = 0;
  sub_22A4DE55C();
  if (!v4)
  {
    v14 = 1;
    sub_22A4DE51C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_229806090@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_229806F24(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_2298060FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D614E74736574 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22A4DE60C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_229806184(uint64_t a1)
{
  v2 = sub_2298070D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2298061C0(uint64_t a1)
{
  v2 = sub_2298070D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TestCommand.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8816A8, &qword_22A584908);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2298070D0();
  sub_22A4DE80C();
  sub_22A4DE51C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t TestCommand.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8816B8, &qword_22A584910);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2298070D0();
  sub_22A4DE7FC();
  if (!v1)
  {
    v9 = sub_22A4DE46C();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_229806498@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8816B8, &qword_22A584910);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2298070D0();
  sub_22A4DE7FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = sub_22A4DE46C();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_229806614(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8816A8, &qword_22A584908);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2298070D0();
  sub_22A4DE80C();
  sub_22A4DE51C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_229806750(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736150646461 && a2 == 0xE700000000000000;
  if (v4 || (sub_22A4DE60C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x615065766F6D6572 && a2 == 0xEC00000073657373 || (sub_22A4DE60C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953719668 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22A4DE60C();

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

unint64_t sub_22980686C(uint64_t *a1)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881750, &qword_22A585128);
  v43 = *(v41 - 8);
  v2 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  v44 = &v37 - v3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881758, &qword_22A585130);
  v42 = *(v40 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881760, &qword_22A585138);
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881768, &qword_22A585140);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v47 = a1;
  v18 = __swift_project_boxed_opaque_existential_0(a1, v16);
  sub_229805AD4();
  v19 = v45;
  sub_22A4DE7FC();
  if (!v19)
  {
    v38 = 0;
    v20 = v12;
    v45 = v15;
    v21 = sub_22A4DE4FC();
    v22 = *(v21 + 16);
    if (!v22 || ((v23 = *(v21 + 32), v22 == 1) ? (v24 = v23 == 3) : (v24 = 1), v24))
    {
      v25 = sub_22A4DE24C();
      swift_allocError();
      v27 = v26;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881770, &qword_22A585148) + 48);
      *v27 = &type metadata for HomeUtilPassCommand;
      v18 = v45;
      sub_22A4DE45C();
      sub_22A4DE23C();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v20 + 8))(v18, v11);
LABEL_17:
      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    if (*(v21 + 32))
    {
      if (v23 == 1)
      {
        LOBYTE(v46) = 1;
        sub_229805BD0();
        v29 = v6;
        v30 = v45;
        v18 = v45;
        v31 = v38;
        sub_22A4DE44C();
        if (!v31)
        {
          sub_22980796C();
          v35 = v40;
          sub_22A4DE4EC();
          (*(v42 + 8))(v29, v35);
          (*(v12 + 8))(v30, v11);
          swift_unknownObjectRelease();
          v18 = v46;
          goto LABEL_18;
        }

        (*(v12 + 8))(v30, v11);
        goto LABEL_17;
      }

      LOBYTE(v46) = 2;
      sub_229805B28();
      v18 = v45;
      v33 = v38;
      sub_22A4DE44C();
      if (!v33)
      {
        sub_229807918();
        v36 = v41;
        sub_22A4DE4EC();
        (*(v43 + 8))(0, v36);
        (*(v12 + 8))(v45, v11);
        swift_unknownObjectRelease();
        v18 = v46;
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    LOBYTE(v46) = 0;
    sub_229805C78();
    v18 = v45;
    v32 = v38;
    sub_22A4DE44C();
    if (v32)
    {
LABEL_16:
      (*(v12 + 8))(v18, v11);
      goto LABEL_17;
    }

    (*(v39 + 8))(v10, v7);
    (*(v12 + 8))(v18, v11);
    swift_unknownObjectRelease();
    v18 = 0;
  }

LABEL_18:
  __swift_destroy_boxed_opaque_existential_0(v47);
  return v18;
}

unint64_t sub_229806ED0()
{
  result = qword_27D8816A0;
  if (!qword_27D8816A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8816A0);
  }

  return result;
}

uint64_t sub_229806F24(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881748, &qword_22A585120);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_0(a1, v8);
  sub_229806ED0();
  sub_22A4DE7FC();
  if (!v1)
  {
    v10[15] = 0;
    LOBYTE(v8) = sub_22A4DE4AC();
    v10[14] = 1;
    sub_22A4DE46C();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8 & 1;
}

unint64_t sub_2298070D0()
{
  result = qword_27D8816B0;
  if (!qword_27D8816B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8816B0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeKitDaemon0A15UtilPassCommandO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_229807154(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_22980719C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_2298071E4(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_229807210(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_22980726C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_229807344()
{
  result = qword_27D8816C0;
  if (!qword_27D8816C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8816C0);
  }

  return result;
}

unint64_t sub_22980739C()
{
  result = qword_27D8816C8;
  if (!qword_27D8816C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8816C8);
  }

  return result;
}

unint64_t sub_2298073F4()
{
  result = qword_27D8816D0;
  if (!qword_27D8816D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8816D0);
  }

  return result;
}

unint64_t sub_22980744C()
{
  result = qword_27D8816D8;
  if (!qword_27D8816D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8816D8);
  }

  return result;
}

unint64_t sub_2298074A4()
{
  result = qword_27D8816E0;
  if (!qword_27D8816E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8816E0);
  }

  return result;
}

unint64_t sub_2298074FC()
{
  result = qword_27D8816E8;
  if (!qword_27D8816E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8816E8);
  }

  return result;
}

unint64_t sub_229807554()
{
  result = qword_27D8816F0;
  if (!qword_27D8816F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8816F0);
  }

  return result;
}

unint64_t sub_2298075AC()
{
  result = qword_27D8816F8;
  if (!qword_27D8816F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8816F8);
  }

  return result;
}

unint64_t sub_229807604()
{
  result = qword_27D881700;
  if (!qword_27D881700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881700);
  }

  return result;
}

unint64_t sub_22980765C()
{
  result = qword_27D881708;
  if (!qword_27D881708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881708);
  }

  return result;
}

unint64_t sub_2298076B4()
{
  result = qword_27D881710;
  if (!qword_27D881710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881710);
  }

  return result;
}

unint64_t sub_22980770C()
{
  result = qword_27D881718;
  if (!qword_27D881718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881718);
  }

  return result;
}

unint64_t sub_229807764()
{
  result = qword_27D881720;
  if (!qword_27D881720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881720);
  }

  return result;
}

unint64_t sub_2298077BC()
{
  result = qword_27D881728;
  if (!qword_27D881728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881728);
  }

  return result;
}

unint64_t sub_229807814()
{
  result = qword_27D881730;
  if (!qword_27D881730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881730);
  }

  return result;
}

unint64_t sub_22980786C()
{
  result = qword_27D881738;
  if (!qword_27D881738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881738);
  }

  return result;
}

unint64_t sub_2298078C4()
{
  result = qword_27D881740;
  if (!qword_27D881740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881740);
  }

  return result;
}

unint64_t sub_229807918()
{
  result = qword_27D881778;
  if (!qword_27D881778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881778);
  }

  return result;
}

unint64_t sub_22980796C()
{
  result = qword_27D881780;
  if (!qword_27D881780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881780);
  }

  return result;
}

uint64_t sub_2298079DC(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_22A4DB7DC();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229807AA0, 0, 0);
}

uint64_t sub_229807AA0()
{
  v1 = [*(v0 + 160) accessory];
  *(v0 + 192) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 home];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 administratorHandler];
      *(v0 + 200) = v5;

      if (v5)
      {
        v6 = *(v0 + 176);
        v7 = *(v0 + 184);
        v8 = *(v0 + 160);
        v9 = *(v0 + 168);
        v10 = *(v0 + 152);
        v29 = *(v0 + 144);
        v11 = *MEMORY[0x277CD2550];
        *(v0 + 208) = *MEMORY[0x277CD2550];
        v30 = v11;
        v12 = [v2 messageTargetUUID];
        sub_22A4DB79C();

        v13 = objc_allocWithZone(MEMORY[0x277D0F820]);
        v14 = sub_22A4DB77C();
        v15 = [v13 initWithTarget_];
        *(v0 + 216) = v15;

        (*(v6 + 8))(v7, v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22A5761A0;
        v17 = *MEMORY[0x277CD25F8];
        *(inited + 32) = sub_22A4DD5EC();
        *(inited + 40) = v18;
        v19 = [v8 instanceID];
        *(inited + 72) = sub_229678A8C();
        *(inited + 48) = v19;
        v20 = *MEMORY[0x277CD2620];
        *(inited + 80) = sub_22A4DD5EC();
        *(inited + 88) = v21;
        *(inited + 120) = MEMORY[0x277D837D0];
        *(inited + 96) = v29;
        *(inited + 104) = v10;

        v22 = sub_22956AC5C(inited);
        *(v0 + 224) = v22;
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
        swift_arrayDestroy();
        v23 = swift_task_alloc();
        *(v0 + 232) = v23;
        *v23 = v0;
        v23[1] = sub_229807DFC;

        return sub_2297983DC(v30, v15, v22);
      }
    }
  }

  v25 = objc_opt_self();
  v26 = sub_22A4DD5AC();
  [v25 hmErrorWithCode:3 description:v26 reason:0 suggestion:0 underlyingError:0];

  swift_willThrow();
  v27 = *(v0 + 184);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_229807DFC()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v9 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = sub_229807F98;
  }

  else
  {
    v6 = v2[27];
    v5 = v2[28];
    v7 = v2[26];

    v4 = sub_229807F24;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229807F24()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_229807F98()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];

  v6 = v0[30];
  v7 = v0[23];

  v8 = v0[1];

  return v8();
}

uint64_t sub_229808024(uint64_t a1, uint64_t a2)
{
  v3[48] = a2;
  v3[49] = v2;
  v3[47] = a1;
  return MEMORY[0x2822009F8](sub_229808048, 0, 0);
}

uint64_t sub_229808048()
{
  v31 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);
  if (v1)
  {
    v3 = *(v0 + 376);
  }

  else
  {
    v3 = 0x53555F6E65;
  }

  if (v1)
  {
    v4 = *(v0 + 384);
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = sub_229773768(v2);
  if (v5)
  {
    v6 = v5;
    if (*(v5 + 16) && (v7 = sub_229543DBC(v3, v4), (v8 & 1) != 0))
    {
      sub_2295404B0(*(v6 + 56) + 32 * v7, v0 + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      if (swift_dynamicCast())
      {
        v9 = *(v0 + 392);
        v10 = *(v0 + 344);
        *(v0 + 336) = v10;
        v11 = sub_229809210(v3, v4);
        if (v12)
        {
          v13 = MEMORY[0x277D837D0];
          *(v0 + 72) = MEMORY[0x277D837D0];
          *(v0 + 48) = v11;
          *(v0 + 56) = v12;
          sub_229543C58(v0 + 48, v0 + 304);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v30 = v10;
          v15 = *(v0 + 328);
          v16 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 304, v15);
          v17 = *(v15 - 8);
          v18 = *(v17 + 64) + 15;
          v19 = swift_task_alloc();
          (*(v17 + 16))(v19, v16, v15);
          sub_2297FF768(v19, 0x656D614E656D6F48, 0xE800000000000000, isUniquelyReferenced_nonNull_native, &v30, v13);
          __swift_destroy_boxed_opaque_existential_0((v0 + 304));

          *(v0 + 336) = v30;
        }

        else
        {
          sub_2297FCFD4(0x656D614E656D6F48, 0xE800000000000000, (v0 + 80));
          sub_22953EAE4(v0 + 80, &unk_27D87FC20, &unk_22A578810);
        }

        v22 = [*(v0 + 392) accessories];
        sub_229562F68(0, &qword_281401C30, off_278665FE8);
        v23 = sub_22A4DD83C();
        *(v0 + 400) = v23;

        *(v0 + 352) = v23;
        v24 = swift_task_alloc();
        *(v0 + 408) = v24;
        *(v24 + 16) = v3;
        *(v24 + 24) = v4;
        v25 = *(MEMORY[0x277D0F010] + 4);
        v26 = swift_task_alloc();
        *(v0 + 416) = v26;
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D548, &unk_22A578880);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3A8, &qword_22A576E88);
        *(v0 + 424) = v28;
        v29 = sub_229579858(&qword_27D881788, &qword_27D87D548, &unk_22A578880);
        *v26 = v0;
        v26[1] = sub_229808424;

        return MEMORY[0x282167810](&unk_22A5851E0, v24, v27, v28, v29);
      }
    }

    else
    {
    }
  }

  v20 = *(v0 + 8);

  return v20(0);
}

uint64_t sub_229808424(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 416);
  v6 = *v2;
  v4[54] = a1;
  v4[55] = v1;

  v7 = v3[51];
  v8 = v3[50];
  if (v1)
  {
    v9 = v4[48];

    v10 = v4[42];

    v11 = sub_2298091E0;
  }

  else
  {

    v11 = sub_2298085AC;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_2298085AC(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = v5;
  v6 = 0;
  v7 = *(v5 + 432);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
LABEL_2:
  *(v5 + 448) = v9;
  while (v8 != v6)
  {
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
      return MEMORY[0x282167810](isUniquelyReferenced_nonNull_native, a2, a3, a4, a5);
    }

    v10 = *(v7 + 32 + 8 * v6++);
    if (v10)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_22958A770(0, v9[2] + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_22958A770((v11 > 1), v12 + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v9[2] = v12 + 1;
      v9[v12 + 4] = v10;
      goto LABEL_2;
    }
  }

  v13 = *(v5 + 432);

  if (v9[2])
  {
    *(v5 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    *(v5 + 112) = v9;
    sub_229543C58(v5 + 112, v5 + 144);

    v14 = *(v5 + 336);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v31 = v14;
    v16 = *(v5 + 168);
    v17 = __swift_mutable_project_boxed_opaque_existential_0(v5 + 144, v16);
    v18 = *(v16 - 8);
    v19 = *(v18 + 64) + 15;
    v20 = swift_task_alloc();
    (*(v18 + 16))(v20, v17, v16);
    sub_2297FED58(*v20, 0x726F737365636341, 0xEB00000000736569, v15, &v31);
    __swift_destroy_boxed_opaque_existential_0((v5 + 144));

    *(v5 + 336) = v31;
  }

  v21 = *(v5 + 384);
  if (v21)
  {
    v22 = *(v5 + 384);
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  if (v21)
  {
    v23 = *(v5 + 376);
  }

  else
  {
    v23 = 0x53555F6E65;
  }

  v24 = [*(v5 + 392) rooms];
  sub_229562F68(0, &unk_2814017A0, off_278666308);
  v25 = sub_22A4DD83C();
  *(v5 + 456) = v25;

  *(v5 + 360) = v25;
  v26 = swift_task_alloc();
  *(v5 + 464) = v26;
  *(v26 + 16) = v23;
  *(v26 + 24) = v22;
  v27 = *(MEMORY[0x277D0F010] + 4);
  v28 = swift_task_alloc();
  *(v5 + 472) = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3D0, &qword_22A576EA8);
  a5 = sub_229579858(&qword_27D881790, &qword_27D87C3D0, &qword_22A576EA8);
  *v28 = v5;
  v28[1] = sub_22980890C;
  a4 = *(v5 + 424);
  isUniquelyReferenced_nonNull_native = &unk_22A5851F0;
  a2 = v26;
  a3 = v29;

  return MEMORY[0x282167810](isUniquelyReferenced_nonNull_native, a2, a3, a4, a5);
}

uint64_t sub_22980890C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 472);
  v6 = *v2;
  v4[60] = a1;
  v4[61] = v1;

  v7 = v3[58];
  v8 = v3[57];
  if (v1)
  {
    v9 = v4[56];
    v10 = v4[48];

    v11 = v4[42];

    v12 = sub_2295926CC;
  }

  else
  {

    v12 = sub_229808AA0;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_229808AA0(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = v5;
  v6 = 0;
  v7 = *(v5 + 480);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  while (v8 != v6)
  {
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return MEMORY[0x282167810](isUniquelyReferenced_nonNull_native, a2, a3, a4, a5);
    }

    v10 = *(v7 + 32 + 8 * v6++);
    if (v10)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_22958A770(0, v9[2] + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_22958A770((v11 > 1), v12 + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v9[2] = v12 + 1;
      v9[v12 + 4] = v10;
    }
  }

  v13 = *(v5 + 480);

  if (v9[2])
  {
    *(v5 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    *(v5 + 176) = v9;
    sub_229543C58(v5 + 176, v5 + 208);

    v14 = *(v5 + 336);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v33 = v14;
    v16 = *(v5 + 232);
    v17 = __swift_mutable_project_boxed_opaque_existential_0(v5 + 208, v16);
    v18 = *(v16 - 8);
    v19 = *(v18 + 64) + 15;
    v20 = swift_task_alloc();
    (*(v18 + 16))(v20, v17, v16);
    sub_2297FED58(*v20, 0x736D6F6F52, 0xE500000000000000, v15, &v33);
    __swift_destroy_boxed_opaque_existential_0((v5 + 208));

    *(v5 + 336) = v33;
  }

  isUniquelyReferenced_nonNull_native = [*(v5 + 392) actionSets];
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_23;
  }

  v21 = isUniquelyReferenced_nonNull_native;
  v22 = *(v5 + 448);
  v24 = *(v5 + 376);
  v23 = *(v5 + 384);

  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  if (v23)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0x53555F6E65;
  }

  sub_229562F68(0, &qword_281401C20, off_278666020);
  v27 = sub_22A4DD83C();
  *(v5 + 496) = v27;

  *(v5 + 368) = v27;
  v28 = swift_task_alloc();
  *(v5 + 504) = v28;
  *(v28 + 16) = v26;
  *(v28 + 24) = v25;
  v29 = *(MEMORY[0x277D0F010] + 4);
  v30 = swift_task_alloc();
  *(v5 + 512) = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D558, &unk_22A578890);
  a5 = sub_229579858(&qword_27D881798, &qword_27D87D558, &unk_22A578890);
  *v30 = v5;
  v30[1] = sub_229808E0C;
  a4 = *(v5 + 424);
  isUniquelyReferenced_nonNull_native = &unk_22A585200;
  a2 = v28;
  a3 = v31;

  return MEMORY[0x282167810](isUniquelyReferenced_nonNull_native, a2, a3, a4, a5);
}

uint64_t sub_229808E0C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 512);
  v5 = *(*v2 + 504);
  v6 = *(*v2 + 496);
  *(*v2 + 384);
  v7 = *v2;
  v3[65] = a1;
  v3[66] = v1;

  if (v1)
  {
    v8 = v3[42];

    v9 = sub_2298091F8;
  }

  else
  {
    v9 = sub_229808FA4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

void sub_229808FA4()
{
  v19 = v0;
  v1 = 0;
  v2 = v0[65];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v5 = *(v2 + 32 + 8 * v1++);
    if (v5)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_22958A770(0, v4[2] + 1, 1, v4);
      }

      v7 = v4[2];
      v6 = v4[3];
      if (v7 >= v6 >> 1)
      {
        v4 = sub_22958A770((v6 > 1), v7 + 1, 1, v4);
      }

      v4[2] = v7 + 1;
      v4[v7 + 4] = v5;
    }
  }

  v8 = v0[65];

  if (v4[2])
  {
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    v0[30] = v4;
    sub_229543C58(v0 + 30, v0 + 34);
    v9 = v0[42];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v9;
    v11 = v0[37];
    v12 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 34), v11);
    v13 = *(v11 - 8);
    v14 = *(v13 + 64) + 15;
    v15 = swift_task_alloc();
    (*(v13 + 16))(v15, v12, v11);
    sub_2297FED58(*v15, 0x73656E656353, 0xE600000000000000, isUniquelyReferenced_nonNull_native, &v18);
    __swift_destroy_boxed_opaque_existential_0(v0 + 34);

    v16 = v18;
  }

  else
  {

    v16 = v0[42];
  }

  v17 = v0[1];

  v17(v16);
}

uint64_t sub_229809210(uint64_t a1, uint64_t a2)
{
  v5 = sub_229773768(v2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (!*(v5 + 16))
  {
    goto LABEL_11;
  }

  v7 = sub_229543DBC(a1, a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_2295404B0(*(v6 + 56) + 32 * v7, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v12 + 16) || (v9 = sub_229543DBC(0x656D614E656D6F48, 0xE800000000000000), (v10 & 1) == 0))
  {
LABEL_11:

    return 0;
  }

  sub_2295404B0(*(v12 + 56) + 32 * v9, v13);

  if (swift_dynamicCast())
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22980934C(uint64_t a1)
{
  v2[96] = v1;
  v2[95] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0) - 8) + 64) + 15;
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v4 = sub_22A4DB7DC();
  v2[99] = v4;
  v5 = *(v4 - 8);
  v2[100] = v5;
  v6 = *(v5 + 64) + 15;
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22980946C, 0, 0);
}

uint64_t sub_22980946C()
{
  v1 = *(v0 + 760);
  v2 = MEMORY[0x277D837D0];
  if (!*(v1 + 16) || (v3 = *(v0 + 760), v4 = sub_229543DBC(0x656D614E656D6F48, 0xE800000000000000), (v5 & 1) == 0))
  {
    v18 = *(v0 + 768);
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    sub_22953EAE4(v0 + 528, &unk_27D87FC20, &unk_22A578810);
    type metadata accessor for HMError(0);
    *(v0 + 704) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6E6F73616552;
    *(inited + 16) = xmmword_22A576180;
    *(inited + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v20 = [v18 shortDescription];
    v21 = sub_22A4DD5EC();
    v23 = v22;

    MEMORY[0x22AAD08C0](v21, v23);

    *(inited + 72) = v2;
    *(inited + 48) = 0xD000000000000016;
    *(inited + 56) = 0x800000022A597AD0;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v24 = *(v0 + 712);
LABEL_22:
    swift_willThrow();
    v51 = *(v0 + 824);
    v52 = *(v0 + 816);
    v53 = *(v0 + 808);
    v54 = *(v0 + 784);
    v55 = *(v0 + 776);

    v56 = *(v0 + 8);
LABEL_23:

    return v56();
  }

  v6 = *(v0 + 760);
  sub_2295404B0(*(v6 + 56) + 32 * v4, v0 + 528);
  sub_22953EAE4(v0 + 528, &unk_27D87FC20, &unk_22A578810);
  if (!*(v1 + 16) || (v7 = *(v0 + 760), v8 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265), (v9 & 1) == 0) || (sub_2295404B0(*(v6 + 56) + 32 * v8, v0 + 400), *(v0 + 832) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90), (swift_dynamicCast() & 1) == 0))
  {
LABEL_21:
    v42 = *(v0 + 768);
    v43 = *(v0 + 760);
    type metadata accessor for HMError(0);
    *(v0 + 648) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v44 = swift_initStackObject();
    *(v44 + 32) = 0x6E6F73616552;
    *(v44 + 16) = xmmword_22A576180;
    *(v44 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v45 = [v42 shortDescription];
    v46 = sub_22A4DD5EC();
    v48 = v47;

    MEMORY[0x22AAD08C0](v46, v48);

    MEMORY[0x22AAD08C0](7235872, 0xE300000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v49 = sub_22A4DD4AC();
    MEMORY[0x22AAD08C0](v49);

    *(v44 + 72) = v2;
    *(v44 + 48) = 0xD000000000000027;
    *(v44 + 56) = 0x800000022A597AF0;
    sub_22956AD8C(v44);
    swift_setDeallocating();
    sub_22953EAE4(v44 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v50 = *(v0 + 680);
    goto LABEL_22;
  }

  v10 = *(v0 + 824);
  v11 = *(v0 + 800);
  v155 = *(v0 + 576);
  v156 = *(v0 + 792);
  v12 = *(v0 + 584);
  v13 = [*(v0 + 768) uuid];
  sub_22A4DB79C();

  v14 = sub_22A4DB76C();
  v16 = v15;
  v17 = *(v11 + 8);
  *(v0 + 840) = v17;
  *(v0 + 848) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v10, v156);
  if (v14 != v155 || v16 != v12)
  {
    v25 = sub_22A4DE60C();

    if (v25)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_11:
  if (!*(v1 + 16) || (v26 = *(v0 + 760), v27 = sub_229543DBC(0x726F737365636341, 0xEB00000000736569), (v28 & 1) == 0) || (sub_2295404B0(*(v6 + 56) + 32 * v27, v0 + 496), *(v0 + 856) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0), (swift_dynamicCast() & 1) == 0))
  {
    v57 = *(v0 + 768);
    type metadata accessor for HMError(0);
    *(v0 + 632) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v58 = swift_initStackObject();
    *(v58 + 32) = 0x6E6F73616552;
    *(v58 + 16) = xmmword_22A576180;
    *(v58 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v59 = [v57 shortDescription];
    v60 = sub_22A4DD5EC();
    v62 = v61;

    MEMORY[0x22AAD08C0](v60, v62);

    *(v58 + 72) = MEMORY[0x277D837D0];
    *(v58 + 48) = 0xD000000000000028;
    *(v58 + 56) = 0x800000022A597B20;
    sub_22956AD8C(v58);
    swift_setDeallocating();
    sub_22953EAE4(v58 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v63 = *(v0 + 640);
    goto LABEL_22;
  }

  result = *(v0 + 624);
  *(v0 + 864) = result;
  v30 = *(result + 16);
  *(v0 + 872) = v30;
  if (v30)
  {
    *(v0 + 880) = 0;
    if (*(result + 16))
    {
      v31 = *(result + 32);
      *(v0 + 888) = v31;
      if (*(v31 + 16))
      {

        v32 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
        if (v33)
        {
          v34 = *(v0 + 832);
          sub_2295404B0(*(v31 + 56) + 32 * v32, v0 + 336);
          if (swift_dynamicCast())
          {
            v35 = *(v0 + 800);
            v36 = *(v0 + 792);
            v37 = *(v0 + 784);
            v38 = *(v0 + 592);
            v39 = *(v0 + 600);
            sub_22A4DB75C();

            if ((*(v35 + 48))(v37, 1, v36) == 1)
            {
              v40 = *(v0 + 864);
              v41 = *(v0 + 784);

              sub_22953EAE4(v41, &unk_27D87D2A0, &unk_22A578BD0);
LABEL_45:
              v99 = *(v0 + 768);
              type metadata accessor for HMError(0);
              *(v0 + 608) = 3;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
              v100 = swift_initStackObject();
              *(v100 + 32) = 0x6E6F73616552;
              *(v100 + 16) = xmmword_22A576180;
              *(v100 + 40) = 0xE600000000000000;
              sub_22A4DE1FC();
              MEMORY[0x22AAD08C0](0xD000000000000031, 0x800000022A597B50);
              v101 = [v99 shortDescription];
              v102 = sub_22A4DD5EC();
              v104 = v103;

              MEMORY[0x22AAD08C0](v102, v104);

              *(v100 + 72) = MEMORY[0x277D837D0];
              *(v100 + 48) = 0;
              *(v100 + 56) = 0xE000000000000000;
              sub_22956AD8C(v100);
              swift_setDeallocating();
              sub_22953EAE4(v100 + 32, &qword_27D87CDA0, &unk_22A57A930);
              sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError);
              sub_22A4DB3CC();
              v105 = *(v0 + 616);
              goto LABEL_22;
            }

            v90 = *(v0 + 848);
            v91 = *(v0 + 840);
            v92 = *(v0 + 816);
            v93 = *(v0 + 792);
            v94 = *(v0 + 768);
            (*(*(v0 + 800) + 32))(v92, *(v0 + 784), v93);
            v95 = sub_22A4DB77C();
            v96 = [v94 accessoryWithUUID_];
            *(v0 + 896) = v96;

            v91(v92, v93);
            if (v96)
            {
              v97 = swift_task_alloc();
              *(v0 + 904) = v97;
              *v97 = v0;
              v97[1] = sub_22980A9EC;

              return sub_229623DB4(v31);
            }
          }

          v98 = *(v0 + 864);
        }

        else
        {

          v89 = *(v0 + 864);
        }
      }

      goto LABEL_45;
    }

    __break(1u);
    goto LABEL_67;
  }

  v64 = *(v0 + 760);

  if (!*(v64 + 16) || (v65 = *(v0 + 760), v66 = sub_229543DBC(0x736D6F6F52, 0xE500000000000000), (v67 & 1) == 0) || (v68 = *(v0 + 856), v69 = *(v0 + 832), sub_2295404B0(*(*(v0 + 760) + 56) + 32 * v66, v0 + 464), (swift_dynamicCast() & 1) == 0))
  {
    v82 = *(v0 + 768);
    type metadata accessor for HMError(0);
    *(v0 + 664) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v83 = swift_allocObject();
    *(v83 + 32) = 0x6E6F73616552;
    *(v83 + 16) = xmmword_22A576180;
    *(v83 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v84 = [v82 shortDescription];
    v85 = sub_22A4DD5EC();
    v87 = v86;

    MEMORY[0x22AAD08C0](v85, v87);

    *(v83 + 72) = MEMORY[0x277D837D0];
    *(v83 + 48) = 0xD000000000000022;
    *(v83 + 56) = 0x800000022A597B90;
    sub_22956AD8C(v83);
    swift_setDeallocating();
    sub_22953EAE4(v83 + 32, &qword_27D87CDA0, &unk_22A57A930);
    swift_deallocClassInstance();
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v88 = *(v0 + 656);
    goto LABEL_22;
  }

  result = *(v0 + 672);
  *(v0 + 920) = result;
  v70 = *(result + 16);
  *(v0 + 928) = v70;
  if (v70)
  {
    *(v0 + 936) = 0;
    if (!*(result + 16))
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v71 = *(result + 32);
    *(v0 + 944) = v71;
    if (*(v71 + 16))
    {

      v72 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
      if (v73)
      {
        v74 = *(v0 + 832);
        sub_2295404B0(*(v71 + 56) + 32 * v72, v0 + 432);
        if (swift_dynamicCast())
        {
          v75 = *(v0 + 800);
          v76 = *(v0 + 792);
          v77 = *(v0 + 776);
          v78 = *(v0 + 560);
          v79 = *(v0 + 568);
          sub_22A4DB75C();

          if ((*(v75 + 48))(v77, 1, v76) == 1)
          {
            v80 = *(v0 + 920);
            v81 = *(v0 + 776);

            sub_22953EAE4(v81, &unk_27D87D2A0, &unk_22A578BD0);
LABEL_63:
            v135 = *(v0 + 768);
            type metadata accessor for HMError(0);
            *(v0 + 696) = 3;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
            v136 = swift_allocObject();
            *(v136 + 32) = 0x6E6F73616552;
            *(v136 + 16) = xmmword_22A576180;
            *(v136 + 40) = 0xE600000000000000;
            sub_22A4DE1FC();

            v137 = [v135 shortDescription];
            v138 = sub_22A4DD5EC();
            v140 = v139;

            MEMORY[0x22AAD08C0](v138, v140);

            *(v136 + 72) = MEMORY[0x277D837D0];
            *(v136 + 48) = 0xD00000000000002CLL;
            *(v136 + 56) = 0x800000022A597BC0;
            sub_22956AD8C(v136);
            swift_setDeallocating();
            sub_22953EAE4(v136 + 32, &qword_27D87CDA0, &unk_22A57A930);
            swift_deallocClassInstance();
            sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError);
            sub_22A4DB3CC();
            v141 = *(v0 + 688);
            goto LABEL_22;
          }

          v126 = *(v0 + 848);
          v127 = *(v0 + 840);
          v128 = *(v0 + 808);
          v129 = *(v0 + 792);
          v130 = *(v0 + 768);
          (*(*(v0 + 800) + 32))(v128, *(v0 + 776), v129);
          v131 = sub_22A4DB77C();
          v132 = [v130 roomWithUUID_];
          *(v0 + 952) = v132;

          v127(v128, v129);
          if (v132)
          {
            v133 = swift_task_alloc();
            *(v0 + 960) = v133;
            *v133 = v0;
            v133[1] = sub_22980B9D0;

            return sub_22958E42C(v71);
          }
        }

        v134 = *(v0 + 920);
      }

      else
      {

        v125 = *(v0 + 920);
      }
    }

    goto LABEL_63;
  }

  v106 = *(v0 + 760);

  if (!*(v106 + 16) || (v107 = *(v0 + 760), v108 = sub_229543DBC(0x73656E656353, 0xE600000000000000), (v109 & 1) == 0) || (v110 = *(v0 + 856), v111 = *(v0 + 832), sub_2295404B0(*(*(v0 + 760) + 56) + 32 * v108, v0 + 368), (swift_dynamicCast() & 1) == 0))
  {
    v118 = *(v0 + 768);
    type metadata accessor for HMError(0);
    *(v0 + 728) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v119 = swift_allocObject();
    *(v119 + 32) = 0x6E6F73616552;
    *(v119 + 16) = xmmword_22A576180;
    *(v119 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v120 = [v118 shortDescription];
    v121 = sub_22A4DD5EC();
    v123 = v122;

    MEMORY[0x22AAD08C0](v121, v123);

    *(v119 + 72) = MEMORY[0x277D837D0];
    *(v119 + 48) = 0xD000000000000024;
    *(v119 + 56) = 0x800000022A597BF0;
    sub_22956AD8C(v119);
    swift_setDeallocating();
    sub_22953EAE4(v119 + 32, &qword_27D87CDA0, &unk_22A57A930);
    swift_deallocClassInstance();
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v124 = *(v0 + 720);
    goto LABEL_22;
  }

  result = *(v0 + 736);
  *(v0 + 976) = result;
  v112 = *(result + 16);
  *(v0 + 984) = v112;
  if (!v112)
  {
    v142 = *(v0 + 824);
    v143 = *(v0 + 816);
    v144 = *(v0 + 808);
    v145 = *(v0 + 784);
    v146 = *(v0 + 776);

    v56 = *(v0 + 8);
    goto LABEL_23;
  }

  *(v0 + 992) = 0;
  if (!*(result + 16))
  {
LABEL_68:
    __break(1u);
    return result;
  }

  v113 = *(v0 + 768);
  v114 = *(result + 32);
  *(v0 + 1000) = v114;

  v116 = sub_2298150B0(v115, &selRef_actionSetWithUUID_);
  *(v0 + 1008) = v116;
  if (!v116)
  {
    v147 = *(v0 + 976);
    v148 = *(v0 + 768);

    type metadata accessor for HMError(0);
    *(v0 + 752) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v149 = swift_allocObject();
    *(v149 + 32) = 0x6E6F73616552;
    *(v149 + 16) = xmmword_22A576180;
    *(v149 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000032, 0x800000022A597C20);
    v150 = [v148 shortDescription];
    v151 = sub_22A4DD5EC();
    v153 = v152;

    MEMORY[0x22AAD08C0](v151, v153);

    *(v149 + 72) = MEMORY[0x277D837D0];
    *(v149 + 48) = 0;
    *(v149 + 56) = 0xE000000000000000;
    sub_22956AD8C(v149);
    swift_setDeallocating();
    sub_22953EAE4(v149 + 32, &qword_27D87CDA0, &unk_22A57A930);
    swift_deallocClassInstance();
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v154 = *(v0 + 744);
    goto LABEL_22;
  }

  v117 = swift_task_alloc();
  *(v0 + 1016) = v117;
  *v117 = v0;
  v117[1] = sub_22980C428;

  return sub_22958C5E4(v114);
}

uint64_t sub_22980A9EC()
{
  v2 = *v1;
  v3 = *(*v1 + 904);
  v8 = *v1;
  *(*v1 + 912) = v0;

  if (v0)
  {
    v4 = *(v2 + 888);
    v5 = *(v2 + 864);

    v6 = sub_22980C8D4;
  }

  else
  {
    v6 = sub_22980AB14;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22980AB14()
{
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);

  if (v2 + 1 != v3)
  {
    v24 = *(v0 + 880) + 1;
    *(v0 + 880) = v24;
    result = *(v0 + 864);
    if (v24 >= *(result + 16))
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v25 = *(result + 8 * v24 + 32);
    *(v0 + 888) = v25;
    if (*(v25 + 16))
    {

      v26 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
      if (v27)
      {
        v28 = *(v0 + 832);
        sub_2295404B0(*(v25 + 56) + 32 * v26, v0 + 336);
        if (swift_dynamicCast())
        {
          v29 = *(v0 + 800);
          v30 = *(v0 + 792);
          v31 = *(v0 + 784);
          v32 = *(v0 + 592);
          v33 = *(v0 + 600);
          sub_22A4DB75C();

          if ((*(v29 + 48))(v31, 1, v30) == 1)
          {
            v34 = *(v0 + 864);
            v35 = *(v0 + 784);

            sub_22953EAE4(v35, &unk_27D87D2A0, &unk_22A578BD0);
LABEL_26:
            v53 = MEMORY[0x277D837D0];
            v54 = *(v0 + 768);
            type metadata accessor for HMError(0);
            *(v0 + 608) = 3;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
            inited = swift_initStackObject();
            *(inited + 32) = 0x6E6F73616552;
            *(inited + 16) = xmmword_22A576180;
            *(inited + 40) = 0xE600000000000000;
            sub_22A4DE1FC();
            MEMORY[0x22AAD08C0](0xD000000000000031, 0x800000022A597B50);
            v56 = [v54 shortDescription];
            v57 = sub_22A4DD5EC();
            v59 = v58;

            MEMORY[0x22AAD08C0](v57, v59);

            *(inited + 72) = v53;
            *(inited + 48) = 0;
            *(inited + 56) = 0xE000000000000000;
            sub_22956AD8C(inited);
            swift_setDeallocating();
            sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
            sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError);
            sub_22A4DB3CC();
            v60 = *(v0 + 616);
            goto LABEL_27;
          }

          v44 = *(v0 + 848);
          v45 = *(v0 + 840);
          v46 = *(v0 + 816);
          v47 = *(v0 + 792);
          v48 = *(v0 + 768);
          (*(*(v0 + 800) + 32))(v46, *(v0 + 784), v47);
          v49 = sub_22A4DB77C();
          v50 = [v48 accessoryWithUUID_];
          *(v0 + 896) = v50;

          v45(v46, v47);
          if (v50)
          {
            v51 = swift_task_alloc();
            *(v0 + 904) = v51;
            *v51 = v0;
            v51[1] = sub_22980A9EC;

            return sub_229623DB4(v25);
          }
        }

        v52 = *(v0 + 864);
      }

      else
      {

        v43 = *(v0 + 864);
      }
    }

    goto LABEL_26;
  }

  v4 = *(v0 + 864);
  v5 = *(v0 + 760);

  if (!*(v5 + 16) || (v6 = *(v0 + 760), v7 = sub_229543DBC(0x736D6F6F52, 0xE500000000000000), (v8 & 1) == 0) || (v9 = *(v0 + 856), v10 = *(v0 + 832), sub_2295404B0(*(*(v0 + 760) + 56) + 32 * v7, v0 + 464), (swift_dynamicCast() & 1) == 0))
  {
    v36 = *(v0 + 768);
    type metadata accessor for HMError(0);
    *(v0 + 664) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v37 = swift_allocObject();
    *(v37 + 32) = 0x6E6F73616552;
    *(v37 + 16) = xmmword_22A576180;
    *(v37 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v38 = [v36 shortDescription];
    v39 = sub_22A4DD5EC();
    v41 = v40;

    MEMORY[0x22AAD08C0](v39, v41);

    *(v37 + 72) = MEMORY[0x277D837D0];
    *(v37 + 48) = 0xD000000000000022;
    *(v37 + 56) = 0x800000022A597B90;
    sub_22956AD8C(v37);
    swift_setDeallocating();
    sub_22953EAE4(v37 + 32, &qword_27D87CDA0, &unk_22A57A930);
    swift_deallocClassInstance();
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v42 = *(v0 + 656);
LABEL_27:
    swift_willThrow();
    v61 = *(v0 + 824);
    v62 = *(v0 + 816);
    v63 = *(v0 + 808);
    v64 = *(v0 + 784);
    v65 = *(v0 + 776);

    v66 = *(v0 + 8);
LABEL_28:

    return v66();
  }

  result = *(v0 + 672);
  *(v0 + 920) = result;
  v12 = *(result + 16);
  *(v0 + 928) = v12;
  if (v12)
  {
    *(v0 + 936) = 0;
    if (*(result + 16))
    {
      v13 = *(result + 32);
      *(v0 + 944) = v13;
      if (*(v13 + 16))
      {

        v14 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
        if (v15)
        {
          v16 = *(v0 + 832);
          sub_2295404B0(*(v13 + 56) + 32 * v14, v0 + 432);
          if (swift_dynamicCast())
          {
            v17 = *(v0 + 800);
            v18 = *(v0 + 792);
            v19 = *(v0 + 776);
            v20 = *(v0 + 560);
            v21 = *(v0 + 568);
            sub_22A4DB75C();

            if ((*(v17 + 48))(v19, 1, v18) == 1)
            {
              v22 = *(v0 + 920);
              v23 = *(v0 + 776);

              sub_22953EAE4(v23, &unk_27D87D2A0, &unk_22A578BD0);
LABEL_48:
              v96 = *(v0 + 768);
              type metadata accessor for HMError(0);
              *(v0 + 696) = 3;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
              v97 = swift_allocObject();
              *(v97 + 32) = 0x6E6F73616552;
              *(v97 + 16) = xmmword_22A576180;
              *(v97 + 40) = 0xE600000000000000;
              sub_22A4DE1FC();

              v98 = [v96 shortDescription];
              v99 = sub_22A4DD5EC();
              v101 = v100;

              MEMORY[0x22AAD08C0](v99, v101);

              *(v97 + 72) = MEMORY[0x277D837D0];
              *(v97 + 48) = 0xD00000000000002CLL;
              *(v97 + 56) = 0x800000022A597BC0;
              sub_22956AD8C(v97);
              swift_setDeallocating();
              sub_22953EAE4(v97 + 32, &qword_27D87CDA0, &unk_22A57A930);
              swift_deallocClassInstance();
              sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError);
              sub_22A4DB3CC();
              v102 = *(v0 + 688);
              goto LABEL_27;
            }

            v87 = *(v0 + 848);
            v88 = *(v0 + 840);
            v89 = *(v0 + 808);
            v90 = *(v0 + 792);
            v91 = *(v0 + 768);
            (*(*(v0 + 800) + 32))(v89, *(v0 + 776), v90);
            v92 = sub_22A4DB77C();
            v93 = [v91 roomWithUUID_];
            *(v0 + 952) = v93;

            v88(v89, v90);
            if (v93)
            {
              v94 = swift_task_alloc();
              *(v0 + 960) = v94;
              *v94 = v0;
              v94[1] = sub_22980B9D0;

              return sub_22958E42C(v13);
            }
          }

          v95 = *(v0 + 920);
        }

        else
        {

          v86 = *(v0 + 920);
        }
      }

      goto LABEL_48;
    }

    goto LABEL_52;
  }

  v67 = *(v0 + 760);

  if (!*(v67 + 16) || (v68 = *(v0 + 760), v69 = sub_229543DBC(0x73656E656353, 0xE600000000000000), (v70 & 1) == 0) || (v71 = *(v0 + 856), v72 = *(v0 + 832), sub_2295404B0(*(*(v0 + 760) + 56) + 32 * v69, v0 + 368), (swift_dynamicCast() & 1) == 0))
  {
    v79 = *(v0 + 768);
    type metadata accessor for HMError(0);
    *(v0 + 728) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v80 = swift_allocObject();
    *(v80 + 32) = 0x6E6F73616552;
    *(v80 + 16) = xmmword_22A576180;
    *(v80 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v81 = [v79 shortDescription];
    v82 = sub_22A4DD5EC();
    v84 = v83;

    MEMORY[0x22AAD08C0](v82, v84);

    *(v80 + 72) = MEMORY[0x277D837D0];
    *(v80 + 48) = 0xD000000000000024;
    *(v80 + 56) = 0x800000022A597BF0;
    sub_22956AD8C(v80);
    swift_setDeallocating();
    sub_22953EAE4(v80 + 32, &qword_27D87CDA0, &unk_22A57A930);
    swift_deallocClassInstance();
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v85 = *(v0 + 720);
    goto LABEL_27;
  }

  result = *(v0 + 736);
  *(v0 + 976) = result;
  v73 = *(result + 16);
  *(v0 + 984) = v73;
  if (!v73)
  {
    v103 = *(v0 + 824);
    v104 = *(v0 + 816);
    v105 = *(v0 + 808);
    v106 = *(v0 + 784);
    v107 = *(v0 + 776);

    v66 = *(v0 + 8);
    goto LABEL_28;
  }

  *(v0 + 992) = 0;
  if (!*(result + 16))
  {
LABEL_53:
    __break(1u);
    return result;
  }

  v74 = *(v0 + 768);
  v75 = *(result + 32);
  *(v0 + 1000) = v75;

  v77 = sub_2298150B0(v76, &selRef_actionSetWithUUID_);
  *(v0 + 1008) = v77;
  if (!v77)
  {
    v108 = *(v0 + 976);
    v109 = *(v0 + 768);

    type metadata accessor for HMError(0);
    *(v0 + 752) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v110 = swift_allocObject();
    *(v110 + 32) = 0x6E6F73616552;
    *(v110 + 16) = xmmword_22A576180;
    *(v110 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000032, 0x800000022A597C20);
    v111 = [v109 shortDescription];
    v112 = sub_22A4DD5EC();
    v114 = v113;

    MEMORY[0x22AAD08C0](v112, v114);

    *(v110 + 72) = MEMORY[0x277D837D0];
    *(v110 + 48) = 0;
    *(v110 + 56) = 0xE000000000000000;
    sub_22956AD8C(v110);
    swift_setDeallocating();
    sub_22953EAE4(v110 + 32, &qword_27D87CDA0, &unk_22A57A930);
    swift_deallocClassInstance();
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v115 = *(v0 + 744);
    goto LABEL_27;
  }

  v78 = swift_task_alloc();
  *(v0 + 1016) = v78;
  *v78 = v0;
  v78[1] = sub_22980C428;

  return sub_22958C5E4(v75);
}

uint64_t sub_22980B9D0()
{
  v2 = *v1;
  v3 = *(*v1 + 960);
  v8 = *v1;
  *(*v1 + 968) = v0;

  if (v0)
  {
    v4 = *(v2 + 944);
    v5 = *(v2 + 920);

    v6 = sub_22980C980;
  }

  else
  {
    v6 = sub_22980BAF8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22980BAF8()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 936);
  v3 = *(v0 + 928);

  if (v2 + 1 == v3)
  {
    v4 = *(v0 + 920);
    v5 = *(v0 + 760);

    if (*(v5 + 16))
    {
      v6 = *(v0 + 760);
      v7 = sub_229543DBC(0x73656E656353, 0xE600000000000000);
      if (v8)
      {
        v9 = *(v0 + 856);
        v10 = *(v0 + 832);
        sub_2295404B0(*(*(v0 + 760) + 56) + 32 * v7, v0 + 368);
        if (swift_dynamicCast())
        {
          result = *(v0 + 736);
          *(v0 + 976) = result;
          v12 = *(result + 16);
          *(v0 + 984) = v12;
          if (!v12)
          {
            v61 = *(v0 + 824);
            v62 = *(v0 + 816);
            v63 = *(v0 + 808);
            v64 = *(v0 + 784);
            v65 = *(v0 + 776);

            v60 = *(v0 + 8);
            goto LABEL_27;
          }

          *(v0 + 992) = 0;
          if (*(result + 16))
          {
            v13 = *(v0 + 768);
            v14 = *(result + 32);
            *(v0 + 1000) = v14;

            v16 = sub_2298150B0(v15, &selRef_actionSetWithUUID_);
            *(v0 + 1008) = v16;
            if (v16)
            {
              v17 = swift_task_alloc();
              *(v0 + 1016) = v17;
              *v17 = v0;
              v17[1] = sub_22980C428;

              return sub_22958C5E4(v14);
            }

            v66 = *(v0 + 976);
            v67 = *(v0 + 768);

            type metadata accessor for HMError(0);
            *(v0 + 752) = 3;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
            v68 = swift_allocObject();
            *(v68 + 32) = 0x6E6F73616552;
            *(v68 + 16) = xmmword_22A576180;
            *(v68 + 40) = 0xE600000000000000;
            sub_22A4DE1FC();
            MEMORY[0x22AAD08C0](0xD000000000000032, 0x800000022A597C20);
            v69 = [v67 shortDescription];
            v70 = sub_22A4DD5EC();
            v72 = v71;

            MEMORY[0x22AAD08C0](v70, v72);

            *(v68 + 72) = MEMORY[0x277D837D0];
            *(v68 + 48) = 0;
            *(v68 + 56) = 0xE000000000000000;
            sub_22956AD8C(v68);
            swift_setDeallocating();
            sub_22953EAE4(v68 + 32, &qword_27D87CDA0, &unk_22A57A930);
            swift_deallocClassInstance();
            sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError);
            sub_22A4DB3CC();
            v73 = *(v0 + 744);
            goto LABEL_26;
          }

LABEL_33:
          __break(1u);
          return result;
        }
      }
    }

    v30 = *(v0 + 768);
    type metadata accessor for HMError(0);
    *(v0 + 728) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v31 = swift_allocObject();
    *(v31 + 32) = 0x6E6F73616552;
    *(v31 + 16) = xmmword_22A576180;
    *(v31 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v32 = [v30 shortDescription];
    v33 = sub_22A4DD5EC();
    v35 = v34;

    MEMORY[0x22AAD08C0](v33, v35);

    *(v31 + 72) = MEMORY[0x277D837D0];
    *(v31 + 48) = 0xD000000000000024;
    *(v31 + 56) = 0x800000022A597BF0;
    sub_22956AD8C(v31);
    swift_setDeallocating();
    sub_22953EAE4(v31 + 32, &qword_27D87CDA0, &unk_22A57A930);
    swift_deallocClassInstance();
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v36 = *(v0 + 720);
LABEL_26:
    swift_willThrow();
    v55 = *(v0 + 824);
    v56 = *(v0 + 816);
    v57 = *(v0 + 808);
    v58 = *(v0 + 784);
    v59 = *(v0 + 776);

    v60 = *(v0 + 8);
LABEL_27:

    return v60();
  }

  v18 = *(v0 + 936) + 1;
  *(v0 + 936) = v18;
  result = *(v0 + 920);
  if (v18 >= *(result + 16))
  {
    __break(1u);
    goto LABEL_33;
  }

  v19 = *(result + 8 * v18 + 32);
  *(v0 + 944) = v19;
  if (!*(v19 + 16))
  {
    goto LABEL_24;
  }

  v20 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
  if ((v21 & 1) == 0)
  {

    v37 = *(v0 + 920);
LABEL_24:

    goto LABEL_25;
  }

  v22 = *(v0 + 832);
  sub_2295404B0(*(v19 + 56) + 32 * v20, v0 + 432);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v23 = *(v0 + 800);
  v24 = *(v0 + 792);
  v25 = *(v0 + 776);
  v26 = *(v0 + 560);
  v27 = *(v0 + 568);
  sub_22A4DB75C();

  if ((*(v23 + 48))(v25, 1, v24) == 1)
  {
    v28 = *(v0 + 920);
    v29 = *(v0 + 776);

    sub_22953EAE4(v29, &unk_27D87D2A0, &unk_22A578BD0);
LABEL_25:
    v47 = MEMORY[0x277D837D0];
    v48 = *(v0 + 768);
    type metadata accessor for HMError(0);
    *(v0 + 696) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v49 = swift_allocObject();
    *(v49 + 32) = 0x6E6F73616552;
    *(v49 + 16) = xmmword_22A576180;
    *(v49 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v50 = [v48 shortDescription];
    v51 = sub_22A4DD5EC();
    v53 = v52;

    MEMORY[0x22AAD08C0](v51, v53);

    *(v49 + 72) = v47;
    *(v49 + 48) = 0xD00000000000002CLL;
    *(v49 + 56) = 0x800000022A597BC0;
    sub_22956AD8C(v49);
    swift_setDeallocating();
    sub_22953EAE4(v49 + 32, &qword_27D87CDA0, &unk_22A57A930);
    swift_deallocClassInstance();
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v54 = *(v0 + 688);
    goto LABEL_26;
  }

  v38 = *(v0 + 848);
  v39 = *(v0 + 840);
  v40 = *(v0 + 808);
  v41 = *(v0 + 792);
  v42 = *(v0 + 768);
  (*(*(v0 + 800) + 32))(v40, *(v0 + 776), v41);
  v43 = sub_22A4DB77C();
  v44 = [v42 roomWithUUID_];
  *(v0 + 952) = v44;

  v39(v40, v41);
  if (!v44)
  {
LABEL_23:
    v46 = *(v0 + 920);

    goto LABEL_24;
  }

  v45 = swift_task_alloc();
  *(v0 + 960) = v45;
  *v45 = v0;
  v45[1] = sub_22980B9D0;

  return sub_22958E42C(v19);
}

uint64_t sub_22980C428()
{
  v2 = *v1;
  v3 = *(*v1 + 1016);
  v8 = *v1;
  *(*v1 + 1024) = v0;

  if (v0)
  {
    v4 = *(v2 + 1000);
    v5 = *(v2 + 976);

    v6 = sub_22980CA2C;
  }

  else
  {
    v6 = sub_22980C550;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_22980C550()
{
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[124];
  v4 = v0[123];

  if (v3 + 1 == v4)
  {
    v5 = v0[122];
    v6 = v0[103];
    v7 = v0[102];
    v8 = v0[101];
    v9 = v0[98];
    v10 = v0[97];

    v11 = v0[1];
LABEL_9:

    v11();
    return;
  }

  v12 = v0[124] + 1;
  v0[124] = v12;
  v13 = v0[122];
  if (v12 >= *(v13 + 16))
  {
    __break(1u);
    return;
  }

  v14 = v0[96];
  v15 = *(v13 + 8 * v12 + 32);
  v0[125] = v15;

  v17 = sub_2298150B0(v16, &selRef_actionSetWithUUID_);
  v0[126] = v17;
  if (!v17)
  {
    v19 = v0[122];
    v20 = v0[96];

    type metadata accessor for HMError(0);
    v0[94] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v21 = swift_allocObject();
    *(v21 + 32) = 0x6E6F73616552;
    *(v21 + 16) = xmmword_22A576180;
    *(v21 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000032, 0x800000022A597C20);
    v22 = [v20 shortDescription];
    v23 = sub_22A4DD5EC();
    v25 = v24;

    MEMORY[0x22AAD08C0](v23, v25);

    *(v21 + 72) = MEMORY[0x277D837D0];
    *(v21 + 48) = 0;
    *(v21 + 56) = 0xE000000000000000;
    sub_22956AD8C(v21);
    swift_setDeallocating();
    sub_22953EAE4(v21 + 32, &qword_27D87CDA0, &unk_22A57A930);
    swift_deallocClassInstance();
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v26 = v0[93];
    swift_willThrow();
    v27 = v0[103];
    v28 = v0[102];
    v29 = v0[101];
    v30 = v0[98];
    v31 = v0[97];

    v11 = v0[1];
    goto LABEL_9;
  }

  v18 = swift_task_alloc();
  v0[127] = v18;
  *v18 = v0;
  v18[1] = sub_22980C428;

  sub_22958C5E4(v15);
}

uint64_t sub_22980C8D4()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 824);
  v3 = *(v0 + 816);
  v4 = *(v0 + 808);
  v5 = *(v0 + 784);
  v6 = *(v0 + 776);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22980C980()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 824);
  v3 = *(v0 + 816);
  v4 = *(v0 + 808);
  v5 = *(v0 + 784);
  v6 = *(v0 + 776);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22980CA2C()
{
  v1 = *(v0 + 1024);
  v2 = *(v0 + 824);
  v3 = *(v0 + 816);
  v4 = *(v0 + 808);
  v5 = *(v0 + 784);
  v6 = *(v0 + 776);

  v7 = *(v0 + 8);

  return v7();
}

void *sub_22980CAD8()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 name];
  v8 = sub_22A4DD5EC();
  v10 = v9;

  v11 = MEMORY[0x277D837D0];
  v94 = MEMORY[0x277D837D0];
  v92 = v8;
  v93 = v10;
  sub_229543C58(&v92, v90);
  v12 = MEMORY[0x277D84F98];
  LOBYTE(v8) = swift_isUniquelyReferenced_nonNull_native();
  v89 = v12;
  v13 = v91;
  v14 = __swift_mutable_project_boxed_opaque_existential_0(v90, v91);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  sub_2297FE940(*v17, v17[1], 0x656D614E656D6F48, 0xE800000000000000, v8, &v89);
  __swift_destroy_boxed_opaque_existential_0(v90);
  v19 = v89;
  v20 = [v1 uuid];
  sub_22A4DB79C();

  v21 = sub_22A4DB76C();
  v23 = v22;
  (*(v3 + 8))(v6, v2);
  v94 = v11;
  v92 = v21;
  v93 = v23;
  sub_229543C58(&v92, v90);
  LOBYTE(v6) = swift_isUniquelyReferenced_nonNull_native();
  v89 = v19;
  v24 = v91;
  v25 = __swift_mutable_project_boxed_opaque_existential_0(v90, v91);
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_2297FE940(*v28, v28[1], 0x696669746E656449, 0xEA00000000007265, v6, &v89);
  __swift_destroy_boxed_opaque_existential_0(v90);
  v30 = v89;
  v88 = v1;
  v31 = [v1 accessories];
  sub_229562F68(0, &qword_281401C30, off_278665FE8);
  v32 = sub_22A4DD83C();

  if (v32 >> 62)
  {
    v33 = sub_22A4DE0EC();
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v33)
  {
    v92 = MEMORY[0x277D84F90];
    result = sub_229583714(0, v33 & ~(v33 >> 63), 0);
    if (v33 < 0)
    {
      __break(1u);
      goto LABEL_44;
    }

    v35 = 0;
    v36 = v92;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x22AAD13F0](v35, v32);
      }

      else
      {
        v37 = *(v32 + 8 * v35 + 32);
      }

      v38 = v37;
      v39 = sub_229624F78();

      v92 = v36;
      v41 = *(v36 + 16);
      v40 = *(v36 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_229583714((v40 > 1), v41 + 1, 1);
        v36 = v92;
      }

      ++v35;
      *(v36 + 16) = v41 + 1;
      *(v36 + 8 * v41 + 32) = v39;
    }

    while (v33 != v35);
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
  v94 = v87;
  v92 = v36;
  sub_229543C58(&v92, v90);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v89 = v30;
  v43 = v91;
  v44 = __swift_mutable_project_boxed_opaque_existential_0(v90, v91);
  v45 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v47 = (&v86 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47);
  sub_2297FED58(*v47, 0x726F737365636341, 0xEB00000000736569, isUniquelyReferenced_nonNull_native, &v89);
  __swift_destroy_boxed_opaque_existential_0(v90);
  v49 = v89;
  v50 = [v88 rooms];
  sub_229562F68(0, &unk_2814017A0, off_278666308);
  v51 = sub_22A4DD83C();

  if (!(v51 >> 62))
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
      goto LABEL_16;
    }

LABEL_27:

    v54 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v52 = sub_22A4DE0EC();
  if (!v52)
  {
    goto LABEL_27;
  }

LABEL_16:
  v92 = MEMORY[0x277D84F90];
  result = sub_229583714(0, v52 & ~(v52 >> 63), 0);
  if (v52 < 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v53 = 0;
  v54 = v92;
  do
  {
    if ((v51 & 0xC000000000000001) != 0)
    {
      v55 = MEMORY[0x22AAD13F0](v53, v51);
    }

    else
    {
      v55 = *(v51 + 8 * v53 + 32);
    }

    v56 = v55;
    v57 = sub_22958E994();

    v92 = v54;
    v59 = *(v54 + 16);
    v58 = *(v54 + 24);
    if (v59 >= v58 >> 1)
    {
      sub_229583714((v58 > 1), v59 + 1, 1);
      v54 = v92;
    }

    ++v53;
    *(v54 + 16) = v59 + 1;
    *(v54 + 8 * v59 + 32) = v57;
  }

  while (v52 != v53);

LABEL_28:
  v94 = v87;
  v92 = v54;
  sub_229543C58(&v92, v90);
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v89 = v49;
  v61 = v91;
  v62 = __swift_mutable_project_boxed_opaque_existential_0(v90, v91);
  v63 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v65 = (&v86 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v66 + 16))(v65);
  sub_2297FED58(*v65, 0x736D6F6F52, 0xE500000000000000, v60, &v89);
  __swift_destroy_boxed_opaque_existential_0(v90);
  v67 = v89;
  result = [v88 actionSets];
  v68 = MEMORY[0x277D84F90];
  if (result)
  {
    v69 = result;
    sub_229562F68(0, &qword_281401C20, off_278666020);
    v70 = sub_22A4DD83C();

    if (v70 >> 62)
    {
      v71 = sub_22A4DE0EC();
      if (v71)
      {
LABEL_31:
        v92 = v68;
        result = sub_229583714(0, v71 & ~(v71 >> 63), 0);
        if ((v71 & 0x8000000000000000) == 0)
        {
          v72 = 0;
          v73 = v92;
          do
          {
            if ((v70 & 0xC000000000000001) != 0)
            {
              v74 = MEMORY[0x22AAD13F0](v72, v70);
            }

            else
            {
              v74 = *(v70 + 8 * v72 + 32);
            }

            v75 = v74;
            v76 = sub_22958CD88();

            v92 = v73;
            v78 = *(v73 + 16);
            v77 = *(v73 + 24);
            if (v78 >= v77 >> 1)
            {
              sub_229583714((v77 > 1), v78 + 1, 1);
              v73 = v92;
            }

            ++v72;
            *(v73 + 16) = v78 + 1;
            *(v73 + 8 * v78 + 32) = v76;
          }

          while (v71 != v72);

          goto LABEL_42;
        }

        goto LABEL_45;
      }
    }

    else
    {
      v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v71)
      {
        goto LABEL_31;
      }
    }

    v73 = MEMORY[0x277D84F90];
LABEL_42:
    v94 = v87;
    v92 = v73;
    sub_229543C58(&v92, v90);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v89 = v67;
    v80 = v91;
    v81 = __swift_mutable_project_boxed_opaque_existential_0(v90, v91);
    v82 = *(*(v80 - 8) + 64);
    MEMORY[0x28223BE20](v81);
    v84 = (&v86 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v85 + 16))(v84);
    sub_2297FED58(*v84, 0x73656E656353, 0xE600000000000000, v79, &v89);
    __swift_destroy_boxed_opaque_existential_0(v90);
    return v89;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_22980D4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[78] = v3;
  v4[77] = a3;
  v4[76] = a2;
  v4[75] = a1;
  v5 = sub_22A4DD07C();
  v4[79] = v5;
  v6 = *(v5 - 8);
  v4[80] = v6;
  v7 = *(v6 + 64) + 15;
  v4[81] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0) - 8) + 64) + 15;
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v9 = sub_22A4DB7DC();
  v4[85] = v9;
  v10 = *(v9 - 8);
  v4[86] = v10;
  v11 = *(v10 + 64) + 15;
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22980D658, 0, 0);
}

uint64_t sub_22980D658()
{
  v1 = 0xEB00000000736569;
  if (*(*(v0 + 600) + 16))
  {
    v2 = sub_229543DBC(0x726F737365636341, 0xEB00000000736569);
    if (v3)
    {
      sub_2295404B0(*(*(v0 + 600) + 56) + 32 * v2, v0 + 136);
      *(v0 + 720) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      if (swift_dynamicCast())
      {
        result = *(v0 + 592);
        *(v0 + 728) = result;
        v5 = *(result + 16);
        *(v0 + 736) = v5;
        if (v5)
        {
          v6 = 0;
          while (1)
          {
            *(v0 + 744) = v6;
            v13 = *(v0 + 728);
            if (v6 >= *(v13 + 16))
            {
              __break(1u);
              goto LABEL_62;
            }

            v14 = *(v13 + 8 * v6 + 32);
            *(v0 + 752) = v14;
            if (*(v14 + 16))
            {

              v15 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
              if (v16)
              {
                v17 = *(v0 + 720);
                sub_2295404B0(*(v14 + 56) + 32 * v15, v0 + 488);
                if (swift_dynamicCast())
                {
                  v18 = *(v0 + 688);
                  v19 = *(v0 + 680);
                  v20 = *(v0 + 672);
                  v21 = *(v0 + 552);
                  v22 = *(v0 + 560);
                  sub_22A4DB75C();

                  if ((*(v18 + 48))(v20, 1, v19) == 1)
                  {
                    v23 = *(v0 + 672);

                    result = sub_22953EAE4(v23, &unk_27D87D2A0, &unk_22A578BD0);
                    goto LABEL_8;
                  }

                  v7 = *(v0 + 712);
                  v8 = *(v0 + 688);
                  v9 = *(v0 + 680);
                  v10 = *(v0 + 624);
                  (*(v8 + 32))(v7, *(v0 + 672), v9);
                  v11 = sub_22A4DB77C();
                  v12 = [v10 accessoryWithUUID_];
                  *(v0 + 760) = v12;

                  (*(v8 + 8))(v7, v9);
                  if (v12)
                  {
                    v81 = swift_task_alloc();
                    *(v0 + 768) = v81;
                    *v81 = v0;
                    v81[1] = sub_22980E234;
                    v82 = *(v0 + 616);
                    v83 = *(v0 + 608);

                    return sub_229625AB0(v14, v83, v82);
                  }
                }
              }
            }

LABEL_8:
            v6 = *(v0 + 744) + 1;
            if (v6 == *(v0 + 736))
            {
              v24 = *(v0 + 728);

              v1 = 0xEB00000000736569;
              goto LABEL_17;
            }
          }
        }
      }
    }
  }

LABEL_17:
  if (*(*(v0 + 600) + 16))
  {
    v25 = sub_229543DBC(0x736D6F6F52, 0xE500000000000000);
    if (v26)
    {
      sub_2295404B0(*(*(v0 + 600) + 56) + 32 * v25, v0 + 168);
      *(v0 + 784) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      if (swift_dynamicCast())
      {
        result = *(v0 + 584);
        *(v0 + 792) = result;
        v27 = *(result + 16);
        *(v0 + 800) = v27;
        if (v27)
        {
          v28 = 0;
          v29 = 0x696669746E656449;
          while (1)
          {
            *(v0 + 808) = v28;
            v30 = *(v0 + 792);
            if (v28 >= *(v30 + 16))
            {
              break;
            }

            v31 = *(v30 + 8 * v28 + 32);
            *(v0 + 816) = v31;
            if (*(v31 + 16))
            {

              v32 = sub_229543DBC(v29, 0xEA00000000007265);
              if (v33 & 1) != 0 && (v34 = *(v0 + 784), sub_2295404B0(*(v31 + 56) + 32 * v32, v0 + 424), (swift_dynamicCast()))
              {
                v35 = *(v0 + 688);
                v36 = *(v0 + 680);
                v37 = *(v0 + 664);
                v38 = *(v0 + 536);
                v39 = *(v0 + 544);
                sub_22A4DB75C();

                if ((*(v35 + 48))(v37, 1, v36) == 1)
                {
                  v40 = *(v0 + 664);

                  result = sub_22953EAE4(v40, &unk_27D87D2A0, &unk_22A578BD0);
                }

                else
                {
                  v41 = v29;
                  v42 = v1;
                  v43 = *(v0 + 704);
                  v44 = *(v0 + 688);
                  v45 = *(v0 + 680);
                  v46 = *(v0 + 624);
                  (*(v44 + 32))(v43, *(v0 + 664), v45);
                  v47 = sub_22A4DB77C();
                  v48 = [v46 roomWithUUID_];
                  *(v0 + 824) = v48;

                  (*(v44 + 8))(v43, v45);
                  if (v48)
                  {
                    v84 = sub_22981667C(v31, sub_22959E60C);
                    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
                    *(v0 + 120) = sub_229562F68(0, &unk_2814017A0, off_278666308);
                    *(v0 + 128) = &off_283CDD0E8;
                    *(v0 + 96) = v48;
                    v85 = v0 + 96;
                    *(v0 + 480) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
                    *(v0 + 456) = v84;
                    v86 = v48;
                    v87 = swift_task_alloc();
                    *(v0 + 832) = v87;
                    *v87 = v0;
                    v87[1] = sub_22980EE84;
                    v77 = *(v0 + 616);
                    v78 = *(v0 + 608);
                    v79 = v0 + 456;
LABEL_60:
                    v80 = v85;
                    goto LABEL_52;
                  }

                  v1 = v42;
                  v29 = v41;
                }
              }

              else
              {
              }
            }

            v28 = *(v0 + 808) + 1;
            if (v28 == *(v0 + 800))
            {
              v49 = *(v0 + 792);
              goto LABEL_33;
            }
          }

LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

LABEL_33:
      }
    }
  }

  if (*(*(v0 + 600) + 16))
  {
    v50 = sub_229543DBC(0x73656E656353, 0xE600000000000000);
    if (v51)
    {
      sub_2295404B0(*(*(v0 + 600) + 56) + 32 * v50, v0 + 200);
      *(v0 + 848) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      if (swift_dynamicCast())
      {
        result = *(v0 + 576);
        *(v0 + 856) = result;
        v52 = *(result + 16);
        *(v0 + 864) = v52;
        if (v52)
        {
          v53 = 0;
          v54 = MEMORY[0x277D837D0];
          while (1)
          {
            *(v0 + 872) = v53;
            v55 = *(v0 + 856);
            if (v53 >= *(v55 + 16))
            {
              break;
            }

            v56 = *(v55 + 8 * v53 + 32);
            *(v0 + 880) = v56;
            if (*(v56 + 16))
            {

              v57 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
              if (v58 & 1) != 0 && (v59 = *(v0 + 848), sub_2295404B0(*(v56 + 56) + 32 * v57, v0 + 360), (swift_dynamicCast()))
              {
                v60 = *(v0 + 688);
                v61 = *(v0 + 680);
                v62 = *(v0 + 656);
                v63 = *(v0 + 520);
                v64 = *(v0 + 528);
                sub_22A4DB75C();

                if ((*(v60 + 48))(v62, 1, v61) == 1)
                {
                  v65 = *(v0 + 656);

                  result = sub_22953EAE4(v65, &unk_27D87D2A0, &unk_22A578BD0);
                  v1 = 0xEB00000000736569;
                }

                else
                {
                  v66 = v54;
                  v67 = *(v0 + 696);
                  v68 = *(v0 + 688);
                  v91 = *(v0 + 680);
                  v69 = *(v0 + 624);
                  (*(v68 + 32))(v67, *(v0 + 656));
                  v70 = sub_22A4DB77C();
                  v71 = [v69 actionSetWithUUID_];
                  *(v0 + 888) = v71;

                  (*(v68 + 8))(v67, v91);
                  if (v71)
                  {
                    v88 = sub_22981667C(v56, sub_229628A88);
                    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
                    *(v0 + 80) = sub_229562F68(0, &qword_281401C20, off_278666020);
                    *(v0 + 88) = &off_283CDD088;
                    *(v0 + 56) = v71;
                    v85 = v0 + 56;
                    *(v0 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
                    *(v0 + 392) = v88;
                    v89 = v71;
                    v90 = swift_task_alloc();
                    *(v0 + 896) = v90;
                    *v90 = v0;
                    v90[1] = sub_22980F8BC;
                    v77 = *(v0 + 616);
                    v78 = *(v0 + 608);
                    v79 = v0 + 392;
                    goto LABEL_60;
                  }

                  v1 = 0xEB00000000736569;
                  v54 = v66;
                }
              }

              else
              {
              }
            }

            v53 = *(v0 + 872) + 1;
            if (v53 == *(v0 + 864))
            {
              v72 = *(v0 + 856);

              goto LABEL_51;
            }
          }

LABEL_63:
          __break(1u);
          return result;
        }
      }
    }
  }

LABEL_51:
  v73 = *(v0 + 624);
  *(v0 + 568) = sub_22981667C(*(v0 + 600), sub_229628A88);
  sub_2297FCFD4(0x726F737365636341, v1, (v0 + 232));
  sub_22953EAE4(v0 + 232, &unk_27D87FC20, &unk_22A578810);
  sub_2297FCFD4(0x736D6F6F52, 0xE500000000000000, (v0 + 264));
  sub_22953EAE4(v0 + 264, &unk_27D87FC20, &unk_22A578810);
  sub_2297FCFD4(0x73656E656353, 0xE600000000000000, (v0 + 296));
  sub_22953EAE4(v0 + 296, &unk_27D87FC20, &unk_22A578810);
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  *(v0 + 40) = sub_229562F68(0, &qword_2814017B0, off_278666198);
  *(v0 + 48) = &off_283CE7050;
  *(v0 + 16) = v73;
  v74 = *(v0 + 568);
  *(v0 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  *(v0 + 328) = v74;
  v75 = v73;
  v76 = swift_task_alloc();
  *(v0 + 912) = v76;
  *v76 = v0;
  v76[1] = sub_22980FFA8;
  v77 = *(v0 + 616);
  v78 = *(v0 + 608);
  v79 = v0 + 328;
  v80 = v0 + 16;
LABEL_52:

  return sub_229709F5C(v80, v79, v78, v77);
}

uint64_t sub_22980E234()
{
  v2 = *v1;
  v3 = *(*v1 + 768);
  v4 = *v1;
  v2[97] = v0;

  v5 = v2[94];
  if (v0)
  {
    v6 = v2[91];

    v7 = sub_2298102CC;
  }

  else
  {

    v7 = sub_22980E37C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22980E37C()
{
  v86 = *(v1 + 776);
  v3 = *(v1 + 744) + 1;
  if (v3 == *(v1 + 736))
  {
LABEL_2:
    v4 = *(v1 + 728);

    if (*(*(v1 + 600) + 16))
    {
      v5 = sub_229543DBC(0x736D6F6F52, 0xE500000000000000);
      if (v6)
      {
        sub_2295404B0(*(*(v1 + 600) + 56) + 32 * v5, v1 + 168);
        *(v1 + 784) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
        if (swift_dynamicCast())
        {
          result = *(v1 + 584);
          *(v1 + 792) = result;
          v8 = *(result + 16);
          *(v1 + 800) = v8;
          if (v8)
          {
            v9 = 0;
            v10 = MEMORY[0x277D837D0];
            while (1)
            {
              *(v1 + 808) = v9;
              v11 = *(v1 + 792);
              if (v9 >= *(v11 + 16))
              {
                break;
              }

              v2 = *(v11 + 8 * v9 + 32);
              *(v1 + 816) = v2;
              if (*(v2 + 16))
              {

                v12 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
                if (v13 & 1) != 0 && (v14 = *(v1 + 784), sub_2295404B0(*(v2 + 56) + 32 * v12, v1 + 424), (swift_dynamicCast()))
                {
                  v15 = *(v1 + 688);
                  v16 = *(v1 + 680);
                  v17 = *(v1 + 664);
                  v18 = *(v1 + 536);
                  v19 = *(v1 + 544);
                  sub_22A4DB75C();

                  if ((*(v15 + 48))(v17, 1, v16) == 1)
                  {
                    v20 = *(v1 + 664);

                    result = sub_22953EAE4(v20, &unk_27D87D2A0, &unk_22A578BD0);
                  }

                  else
                  {
                    v21 = v10;
                    v22 = *(v1 + 704);
                    v23 = *(v1 + 688);
                    v24 = *(v1 + 680);
                    v25 = *(v1 + 624);
                    (*(v23 + 32))(v22, *(v1 + 664), v24);
                    v26 = sub_22A4DB77C();
                    v0 = [v25 roomWithUUID_];
                    *(v1 + 824) = v0;

                    (*(v23 + 8))(v22, v24);
                    if (v0)
                    {
                      goto LABEL_54;
                    }

                    v10 = v21;
                  }
                }

                else
                {
                }
              }

              v9 = *(v1 + 808) + 1;
              if (v9 == *(v1 + 800))
              {
                v39 = *(v1 + 792);
                goto LABEL_28;
              }
            }

            __break(1u);
            goto LABEL_58;
          }

LABEL_28:
        }
      }
    }

    v40 = 0x73656E656353;
    if (*(*(v1 + 600) + 16))
    {
      v41 = sub_229543DBC(0x73656E656353, 0xE600000000000000);
      if (v42)
      {
        sub_2295404B0(*(*(v1 + 600) + 56) + 32 * v41, v1 + 200);
        *(v1 + 848) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
        if (swift_dynamicCast())
        {
          result = *(v1 + 576);
          *(v1 + 856) = result;
          v43 = *(result + 16);
          *(v1 + 864) = v43;
          if (v43)
          {
            v44 = 0;
            v45 = MEMORY[0x277D837D0];
            v46 = 0x696669746E656449;
            while (1)
            {
              *(v1 + 872) = v44;
              v47 = *(v1 + 856);
              if (v44 >= *(v47 + 16))
              {
                break;
              }

              v48 = *(v47 + 8 * v44 + 32);
              *(v1 + 880) = v48;
              if (*(v48 + 16))
              {

                v49 = sub_229543DBC(v46, 0xEA00000000007265);
                if (v50 & 1) != 0 && (v51 = *(v1 + 848), sub_2295404B0(*(v48 + 56) + 32 * v49, v1 + 360), (swift_dynamicCast()))
                {
                  v52 = *(v1 + 688);
                  v53 = *(v1 + 680);
                  v54 = *(v1 + 656);
                  v55 = *(v1 + 520);
                  v56 = *(v1 + 528);
                  sub_22A4DB75C();

                  if ((*(v52 + 48))(v54, 1, v53) == 1)
                  {
                    v57 = *(v1 + 656);

                    result = sub_22953EAE4(v57, &unk_27D87D2A0, &unk_22A578BD0);
                  }

                  else
                  {
                    v58 = v46;
                    v59 = v40;
                    v60 = v45;
                    v61 = *(v1 + 696);
                    v62 = *(v1 + 688);
                    v85 = *(v1 + 680);
                    v63 = *(v1 + 624);
                    (*(v62 + 32))(v61, *(v1 + 656));
                    v64 = sub_22A4DB77C();
                    v65 = [v63 actionSetWithUUID_];
                    *(v1 + 888) = v65;

                    (*(v62 + 8))(v61, v85);
                    if (v65)
                    {
                      v82 = sub_22981667C(v48, sub_229628A88);
                      sub_229562F68(0, &qword_27D87D4D8, off_278666048);
                      *(v1 + 80) = sub_229562F68(0, &qword_281401C20, off_278666020);
                      *(v1 + 88) = &off_283CDD088;
                      *(v1 + 56) = v65;
                      v79 = v1 + 56;
                      *(v1 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
                      *(v1 + 392) = v82;
                      v83 = v65;
                      v84 = swift_task_alloc();
                      *(v1 + 896) = v84;
                      *v84 = v1;
                      v84[1] = sub_22980F8BC;
                      v71 = *(v1 + 616);
                      v72 = *(v1 + 608);
                      v73 = v1 + 392;
                      goto LABEL_56;
                    }

                    v45 = v60;
                    v40 = v59;
                    v46 = v58;
                  }
                }

                else
                {
                }
              }

              v44 = *(v1 + 872) + 1;
              if (v44 == *(v1 + 864))
              {
                v66 = *(v1 + 856);

                goto LABEL_46;
              }
            }

LABEL_58:
            __break(1u);
            return result;
          }
        }
      }
    }

LABEL_46:
    v67 = *(v1 + 624);
    *(v1 + 568) = sub_22981667C(*(v1 + 600), sub_229628A88);
    sub_2297FCFD4(0x726F737365636341, 0xEB00000000736569, (v1 + 232));
    sub_22953EAE4(v1 + 232, &unk_27D87FC20, &unk_22A578810);
    sub_2297FCFD4(0x736D6F6F52, 0xE500000000000000, (v1 + 264));
    sub_22953EAE4(v1 + 264, &unk_27D87FC20, &unk_22A578810);
    sub_2297FCFD4(v40, 0xE600000000000000, (v1 + 296));
    sub_22953EAE4(v1 + 296, &unk_27D87FC20, &unk_22A578810);
    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
    *(v1 + 40) = sub_229562F68(0, &qword_2814017B0, off_278666198);
    *(v1 + 48) = &off_283CE7050;
    *(v1 + 16) = v67;
    v68 = *(v1 + 568);
    *(v1 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
    *(v1 + 328) = v68;
    v69 = v67;
    v70 = swift_task_alloc();
    *(v1 + 912) = v70;
    *v70 = v1;
    v70[1] = sub_22980FFA8;
    v71 = *(v1 + 616);
    v72 = *(v1 + 608);
    v73 = v1 + 328;
    v74 = v1 + 16;
    goto LABEL_47;
  }

  while (1)
  {
    *(v1 + 744) = v3;
    v31 = *(v1 + 728);
    if (v3 >= *(v31 + 16))
    {
      break;
    }

    v32 = *(v31 + 8 * v3 + 32);
    *(v1 + 752) = v32;
    if (*(v32 + 16))
    {

      v0 = v32;
      v33 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
      if (v34)
      {
        v0 = *(v1 + 720);
        sub_2295404B0(*(v32 + 56) + 32 * v33, v1 + 488);
        if (swift_dynamicCast())
        {
          v35 = *(v1 + 688);
          v36 = *(v1 + 680);
          v2 = *(v1 + 672);
          v37 = *(v1 + 552);
          v38 = *(v1 + 560);
          sub_22A4DB75C();

          if ((*(v35 + 48))(v2, 1, v36) == 1)
          {
            v0 = *(v1 + 672);

            sub_22953EAE4(v0, &unk_27D87D2A0, &unk_22A578BD0);
            goto LABEL_20;
          }

          v2 = *(v1 + 712);
          v27 = *(v1 + 688);
          v28 = *(v1 + 680);
          v29 = *(v1 + 624);
          (*(v27 + 32))(v2, *(v1 + 672), v28);
          v30 = sub_22A4DB77C();
          v0 = [v29 accessoryWithUUID_];
          *(v1 + 760) = v0;

          (*(v27 + 8))(v2, v28);
          if (v0)
          {
            v75 = swift_task_alloc();
            *(v1 + 768) = v75;
            *v75 = v1;
            v75[1] = sub_22980E234;
            v76 = *(v1 + 616);
            v77 = *(v1 + 608);

            return sub_229625AB0(v32, v77, v76);
          }
        }
      }
    }

LABEL_20:
    v3 = *(v1 + 744) + 1;
    if (v3 == *(v1 + 736))
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_54:
  v78 = sub_22981667C(v2, sub_22959E60C);
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  *(v1 + 120) = sub_229562F68(0, &unk_2814017A0, off_278666308);
  *(v1 + 128) = &off_283CDD0E8;
  *(v1 + 96) = v0;
  v79 = v1 + 96;
  *(v1 + 480) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  *(v1 + 456) = v78;
  v80 = v0;
  v81 = swift_task_alloc();
  *(v1 + 832) = v81;
  *v81 = v1;
  v81[1] = sub_22980EE84;
  v71 = *(v1 + 616);
  v72 = *(v1 + 608);
  v73 = v1 + 456;
LABEL_56:
  v74 = v79;
LABEL_47:

  return sub_229709F5C(v74, v73, v72, v71);
}

uint64_t sub_22980EE84()
{
  v2 = *v1;
  v3 = *(*v1 + 832);
  v7 = *v1;
  *(*v1 + 840) = v0;

  if (v0)
  {
    v4 = *(v2 + 792);

    v5 = sub_22980F7C8;
  }

  else
  {
    sub_22953EAE4(v2 + 456, &unk_27D87FC20, &unk_22A578810);
    __swift_destroy_boxed_opaque_existential_0((v2 + 96));
    v5 = sub_22980EFC0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22980EFC0()
{
  v2 = *(v0 + 824);
  v3 = *(v0 + 816);

  v60 = *(v0 + 840);
  v4 = *(v0 + 808) + 1;
  if (v4 == *(v0 + 800))
  {
LABEL_2:
    v5 = 0x73656E656353;
    v6 = *(v0 + 792);

    if (*(*(v0 + 600) + 16))
    {
      v7 = sub_229543DBC(0x73656E656353, 0xE600000000000000);
      if (v8)
      {
        sub_2295404B0(*(*(v0 + 600) + 56) + 32 * v7, v0 + 200);
        *(v0 + 848) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
        if (swift_dynamicCast())
        {
          result = *(v0 + 576);
          *(v0 + 856) = result;
          v10 = *(result + 16);
          *(v0 + 864) = v10;
          if (v10)
          {
            v11 = 0;
            v12 = MEMORY[0x277D837D0];
            v13 = 0x696669746E656449;
            while (1)
            {
              *(v0 + 872) = v11;
              v14 = *(v0 + 856);
              if (v11 >= *(v14 + 16))
              {
                break;
              }

              v1 = *(v14 + 8 * v11 + 32);
              *(v0 + 880) = v1;
              if (*(v1 + 16))
              {

                v15 = sub_229543DBC(v13, 0xEA00000000007265);
                if (v16 & 1) != 0 && (v17 = *(v0 + 848), sub_2295404B0(*(v1 + 56) + 32 * v15, v0 + 360), (swift_dynamicCast()))
                {
                  v18 = *(v0 + 688);
                  v19 = *(v0 + 680);
                  v20 = *(v0 + 656);
                  v21 = *(v0 + 520);
                  v22 = *(v0 + 528);
                  sub_22A4DB75C();

                  if ((*(v18 + 48))(v20, 1, v19) == 1)
                  {
                    v23 = *(v0 + 656);

                    result = sub_22953EAE4(v23, &unk_27D87D2A0, &unk_22A578BD0);
                  }

                  else
                  {
                    v24 = v13;
                    v25 = v5;
                    v26 = v12;
                    v27 = *(v0 + 696);
                    v28 = *(v0 + 688);
                    v59 = *(v0 + 680);
                    v29 = *(v0 + 624);
                    (*(v28 + 32))(v27, *(v0 + 656));
                    v30 = sub_22A4DB77C();
                    v2 = [v29 actionSetWithUUID_];
                    *(v0 + 888) = v2;

                    (*(v28 + 8))(v27, v59);
                    if (v2)
                    {
                      goto LABEL_36;
                    }

                    v12 = v26;
                    v5 = v25;
                    v13 = v24;
                  }
                }

                else
                {
                }
              }

              v11 = *(v0 + 872) + 1;
              if (v11 == *(v0 + 864))
              {
                v43 = *(v0 + 856);
                goto LABEL_28;
              }
            }

            __break(1u);
            return result;
          }

LABEL_28:
        }
      }
    }

    v44 = *(v0 + 624);
    *(v0 + 568) = sub_22981667C(*(v0 + 600), sub_229628A88);
    sub_2297FCFD4(0x726F737365636341, 0xEB00000000736569, (v0 + 232));
    sub_22953EAE4(v0 + 232, &unk_27D87FC20, &unk_22A578810);
    sub_2297FCFD4(0x736D6F6F52, 0xE500000000000000, (v0 + 264));
    sub_22953EAE4(v0 + 264, &unk_27D87FC20, &unk_22A578810);
    sub_2297FCFD4(v5, 0xE600000000000000, (v0 + 296));
    sub_22953EAE4(v0 + 296, &unk_27D87FC20, &unk_22A578810);
    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
    *(v0 + 40) = sub_229562F68(0, &qword_2814017B0, off_278666198);
    *(v0 + 48) = &off_283CE7050;
    *(v0 + 16) = v44;
    v45 = *(v0 + 568);
    *(v0 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
    *(v0 + 328) = v45;
    v46 = v44;
    v47 = swift_task_alloc();
    *(v0 + 912) = v47;
    *v47 = v0;
    v47[1] = sub_22980FFA8;
    v48 = *(v0 + 616);
    v49 = *(v0 + 608);
    v50 = v0 + 328;
    v51 = v0 + 16;
    goto LABEL_30;
  }

  while (1)
  {
    *(v0 + 808) = v4;
    v35 = *(v0 + 792);
    if (v4 >= *(v35 + 16))
    {
      break;
    }

    v36 = *(v35 + 8 * v4 + 32);
    *(v0 + 816) = v36;
    if (*(v36 + 16))
    {

      v2 = v36;
      v37 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
      if (v38)
      {
        v2 = *(v0 + 784);
        sub_2295404B0(*(v36 + 56) + 32 * v37, v0 + 424);
        if (swift_dynamicCast())
        {
          v39 = *(v0 + 688);
          v40 = *(v0 + 680);
          v1 = *(v0 + 664);
          v41 = *(v0 + 536);
          v42 = *(v0 + 544);
          sub_22A4DB75C();

          if ((*(v39 + 48))(v1, 1, v40) == 1)
          {
            v2 = *(v0 + 664);

            sub_22953EAE4(v2, &unk_27D87D2A0, &unk_22A578BD0);
            goto LABEL_20;
          }

          v1 = *(v0 + 704);
          v31 = *(v0 + 688);
          v32 = *(v0 + 680);
          v33 = *(v0 + 624);
          (*(v31 + 32))(v1, *(v0 + 664), v32);
          v34 = sub_22A4DB77C();
          v2 = [v33 roomWithUUID_];
          *(v0 + 824) = v2;

          (*(v31 + 8))(v1, v32);
          if (v2)
          {
            v52 = sub_22981667C(v36, sub_22959E60C);
            sub_229562F68(0, &qword_27D87D4D8, off_278666048);
            *(v0 + 120) = sub_229562F68(0, &unk_2814017A0, off_278666308);
            *(v0 + 128) = &off_283CDD0E8;
            *(v0 + 96) = v2;
            v53 = v0 + 96;
            *(v0 + 480) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
            *(v0 + 456) = v52;
            v54 = v2;
            v55 = swift_task_alloc();
            *(v0 + 832) = v55;
            *v55 = v0;
            v55[1] = sub_22980EE84;
            v48 = *(v0 + 616);
            v49 = *(v0 + 608);
            v50 = v0 + 456;
            goto LABEL_34;
          }
        }
      }
    }

LABEL_20:
    v4 = *(v0 + 808) + 1;
    if (v4 == *(v0 + 800))
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_36:
  v56 = sub_22981667C(v1, sub_229628A88);
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  *(v0 + 80) = sub_229562F68(0, &qword_281401C20, off_278666020);
  *(v0 + 88) = &off_283CDD088;
  *(v0 + 56) = v2;
  v53 = v0 + 56;
  *(v0 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  *(v0 + 392) = v56;
  v57 = v2;
  v58 = swift_task_alloc();
  *(v0 + 896) = v58;
  *v58 = v0;
  v58[1] = sub_22980F8BC;
  v48 = *(v0 + 616);
  v49 = *(v0 + 608);
  v50 = v0 + 392;
LABEL_34:
  v51 = v53;
LABEL_30:

  return sub_229709F5C(v51, v50, v49, v48);
}

uint64_t sub_22980F7C8()
{
  v1 = v0[103];
  v2 = v0[102];

  sub_22953EAE4((v0 + 57), &unk_27D87FC20, &unk_22A578810);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  v3 = v0[105];
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[87];
  v7 = v0[84];
  v8 = v0[83];
  v9 = v0[82];
  v10 = v0[81];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22980F8BC()
{
  v2 = *v1;
  v3 = *(*v1 + 896);
  v7 = *v1;
  *(*v1 + 904) = v0;

  if (v0)
  {
    v4 = *(v2 + 856);

    v5 = sub_22980FEB4;
  }

  else
  {
    sub_22953EAE4(v2 + 392, &unk_27D87FC20, &unk_22A578810);
    __swift_destroy_boxed_opaque_existential_0((v2 + 56));
    v5 = sub_22980F9F8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_22980F9F8()
{
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);

  v33 = *(v0 + 904);
  for (i = *(v0 + 872) + 1; i != *(v0 + 864); i = *(v0 + 872) + 1)
  {
    *(v0 + 872) = i;
    v19 = *(v0 + 856);
    if (i >= *(v19 + 16))
    {
      __break(1u);
      return;
    }

    v20 = *(v19 + 8 * i + 32);
    *(v0 + 880) = v20;
    if (*(v20 + 16))
    {

      v21 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
      if (v22)
      {
        v23 = *(v0 + 848);
        sub_2295404B0(*(v20 + 56) + 32 * v21, v0 + 360);
        if (swift_dynamicCast())
        {
          v24 = *(v0 + 688);
          v25 = *(v0 + 680);
          v26 = *(v0 + 656);
          v27 = *(v0 + 520);
          v28 = *(v0 + 528);
          sub_22A4DB75C();

          if ((*(v24 + 48))(v26, 1, v25) == 1)
          {
            v29 = *(v0 + 656);

            sub_22953EAE4(v29, &unk_27D87D2A0, &unk_22A578BD0);
            continue;
          }

          v13 = *(v0 + 696);
          v14 = *(v0 + 688);
          v15 = *(v0 + 680);
          v16 = *(v0 + 624);
          (*(v14 + 32))(v13, *(v0 + 656), v15);
          v17 = sub_22A4DB77C();
          v18 = [v16 actionSetWithUUID_];
          *(v0 + 888) = v18;

          (*(v14 + 8))(v13, v15);
          if (v18)
          {
            v30 = sub_22981667C(v20, sub_229628A88);
            sub_229562F68(0, &qword_27D87D4D8, off_278666048);
            *(v0 + 80) = sub_229562F68(0, &qword_281401C20, off_278666020);
            *(v0 + 88) = &off_283CDD088;
            *(v0 + 56) = v18;
            *(v0 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
            *(v0 + 392) = v30;
            v31 = v18;
            v32 = swift_task_alloc();
            *(v0 + 896) = v32;
            *v32 = v0;
            v32[1] = sub_22980F8BC;
            v9 = *(v0 + 616);
            v10 = *(v0 + 608);
            v11 = v0 + 392;
            v12 = v0 + 56;
            goto LABEL_3;
          }
        }
      }
    }
  }

  v4 = *(v0 + 856);

  v5 = *(v0 + 624);
  *(v0 + 568) = sub_22981667C(*(v0 + 600), sub_229628A88);
  sub_2297FCFD4(0x726F737365636341, 0xEB00000000736569, (v0 + 232));
  sub_22953EAE4(v0 + 232, &unk_27D87FC20, &unk_22A578810);
  sub_2297FCFD4(0x736D6F6F52, 0xE500000000000000, (v0 + 264));
  sub_22953EAE4(v0 + 264, &unk_27D87FC20, &unk_22A578810);
  sub_2297FCFD4(0x73656E656353, 0xE600000000000000, (v0 + 296));
  sub_22953EAE4(v0 + 296, &unk_27D87FC20, &unk_22A578810);
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  *(v0 + 40) = sub_229562F68(0, &qword_2814017B0, off_278666198);
  *(v0 + 48) = &off_283CE7050;
  *(v0 + 16) = v5;
  v6 = *(v0 + 568);
  *(v0 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  *(v0 + 328) = v6;
  v7 = v5;
  v8 = swift_task_alloc();
  *(v0 + 912) = v8;
  *v8 = v0;
  v8[1] = sub_22980FFA8;
  v9 = *(v0 + 616);
  v10 = *(v0 + 608);
  v11 = v0 + 328;
  v12 = v0 + 16;
LABEL_3:

  sub_229709F5C(v12, v11, v10, v9);
}

uint64_t sub_22980FEB4()
{
  v1 = v0[111];
  v2 = v0[110];

  sub_22953EAE4((v0 + 49), &unk_27D87FC20, &unk_22A578810);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v3 = v0[113];
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[87];
  v7 = v0[84];
  v8 = v0[83];
  v9 = v0[82];
  v10 = v0[81];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22980FFA8()
{
  v2 = *v1;
  v3 = *(*v1 + 912);
  v6 = *v1;
  *(*v1 + 920) = v0;

  if (v0)
  {
    v4 = sub_229810398;
  }

  else
  {
    sub_22953EAE4(v2 + 328, &unk_27D87FC20, &unk_22A578810);
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v4 = sub_2298100DC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2298100DC()
{
  v1 = v0[81];
  v2 = v0[78];
  v3 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_22A4DD06C();
  v4 = v2;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[78];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_229538000, v5, v6, "%@ Did save home demo configuration", v8, 0xCu);
    sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  v11 = v0[89];
  v12 = v0[88];
  v13 = v0[87];
  v14 = v0[84];
  v15 = v0[83];
  v16 = v0[82];
  v17 = v0[81];
  v18 = v5;
  v19 = v0[80];
  v20 = v0[79];

  (*(v19 + 8))(v17, v20);

  v21 = v0[1];

  return v21();
}

uint64_t sub_2298102CC()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 696);
  v5 = *(v0 + 672);
  v6 = *(v0 + 664);
  v7 = *(v0 + 656);
  v8 = *(v0 + 648);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_229810398()
{
  sub_22953EAE4((v0 + 41), &unk_27D87FC20, &unk_22A578810);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[115];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[87];
  v5 = v0[84];
  v6 = v0[83];
  v7 = v0[82];
  v8 = v0[81];

  v9 = v0[1];

  return v9();
}

uint64_t sub_22981047C()
{
  v1[10] = v0;
  v2 = sub_22A4DD07C();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22981053C, 0, 0);
}

uint64_t sub_22981053C()
{
  v1 = [*(v0 + 80) rooms];
  sub_229562F68(0, &unk_2814017A0, off_278666308);
  v2 = sub_22A4DD83C();
  *(v0 + 112) = v2;

  *(v0 + 56) = v2;
  v3 = *(MEMORY[0x277D0F008] + 4);
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3D0, &qword_22A576EA8);
  v6 = sub_229579858(&qword_27D881790, &qword_27D87C3D0, &qword_22A576EA8);
  *v4 = v0;
  v4[1] = sub_229810688;

  return MEMORY[0x282167808](&unk_22A585220, 0, v5, v6);
}

uint64_t sub_229810688()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_2298112FC;
  }

  else
  {
    v4 = sub_2298107B8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2298107B8()
{
  v1 = [*(v0 + 80) actionSets];
  if (v1)
  {
    v5 = v1;
    sub_229562F68(0, &qword_281401C20, off_278666020);
    v6 = sub_22A4DD83C();
    *(v0 + 136) = v6;

    *(v0 + 64) = v6;
    v7 = *(MEMORY[0x277D0F008] + 4);
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D558, &unk_22A578890);
    v4 = sub_229579858(&qword_27D881798, &qword_27D87D558, &unk_22A578890);
    *v8 = v0;
    v8[1] = sub_22981090C;
    v1 = &unk_22A585228;
    v2 = 0;
    v3 = v9;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282167808](v1, v2, v3, v4);
}

uint64_t sub_22981090C()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_229811360;
  }

  else
  {
    v4 = sub_229810A3C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229810A3C()
{
  v1 = [*(v0 + 80) accessories];
  sub_229562F68(0, &qword_281401C30, off_278665FE8);
  v2 = sub_22A4DD83C();
  *(v0 + 160) = v2;

  *(v0 + 72) = v2;
  v3 = *(MEMORY[0x277D0F008] + 4);
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D548, &unk_22A578880);
  v6 = sub_229579858(&qword_27D881788, &qword_27D87D548, &unk_22A578880);
  *v4 = v0;
  v4[1] = sub_229810B88;

  return MEMORY[0x282167808](&unk_22A585230, 0, v5, v6);
}

uint64_t sub_229810B88()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v6 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_2298113C4;
  }

  else
  {
    v4 = sub_229810CB8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229810CB8()
{
  v1 = v0[10];
  v2 = sub_229809210(0x53555F6E65, 0xE500000000000000);
  v0[23] = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = swift_task_alloc();
    v0[24] = v6;
    *v6 = v0;
    v6[1] = sub_229810E44;
    v7 = v0[10];

    return sub_22974C028(v4, v5);
  }

  else
  {
    v9 = v0[10];
    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
    v0[5] = sub_229562F68(0, &qword_2814017B0, off_278666198);
    v0[6] = &off_283CE7050;
    v0[2] = v9;
    v10 = v9;
    v11 = swift_task_alloc();
    v0[26] = v11;
    *v11 = v0;
    v11[1] = sub_229811050;

    return sub_22970A4FC((v0 + 2), 0);
  }
}

uint64_t sub_229810E44()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_229811428;
  }

  else
  {
    v3 = sub_229810F58;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229810F58()
{
  v1 = v0[23];

  v2 = v0[10];
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  v0[5] = sub_229562F68(0, &qword_2814017B0, off_278666198);
  v0[6] = &off_283CE7050;
  v0[2] = v2;
  v3 = v2;
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_229811050;

  return sub_22970A4FC((v0 + 2), 0);
}

uint64_t sub_229811050()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v6 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_229811494;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v4 = sub_22981116C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22981116C()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_22A4DD06C();
  v4 = v2;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[10];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_229538000, v5, v6, "%@ Did reset demo configuration", v8, 0xCu);
    sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[11];

  (*(v12 + 8))(v11, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_2298112FC()
{
  v1 = v0[16];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_229811360()
{
  v1 = v0[19];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2298113C4()
{
  v1 = v0[22];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_229811428()
{
  v1 = v0[23];

  v2 = v0[25];
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_229811494()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[27];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_229811500(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v6 = sub_22A4DD07C();
  v3[23] = v6;
  v7 = *(v6 - 8);
  v3[24] = v7;
  v8 = *(v7 + 64) + 15;
  v3[25] = swift_task_alloc();
  v9 = swift_task_alloc();
  v3[26] = v9;
  *v9 = v3;
  v9[1] = sub_229811608;

  return sub_229808024(a1, a2);
}

uint64_t sub_229811608(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v5 = *v2;
  *(*v2 + 216) = a1;

  if (v1)
  {
    v6 = *(v3 + 200);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_229811758, 0, 0);
  }
}

uint64_t sub_229811758()
{
  v66 = v0;
  if (*(v0 + 216))
  {
    v1 = *(v0 + 176);
    v2 = sub_229809210(*(v0 + 160), *(v0 + 168));
    *(v0 + 224) = v3;
    if (v3)
    {
      v4 = v2;
      v5 = v3;
      v6 = [*(v0 + 176) name];
      v7 = sub_22A4DD5EC();
      v9 = v8;

      if (v7 == v4 && v5 == v9)
      {
      }

      else
      {
        v11 = sub_22A4DE60C();

        if ((v11 & 1) == 0)
        {
          v12 = swift_task_alloc();
          *(v0 + 232) = v12;
          *v12 = v0;
          v12[1] = sub_229811E6C;
          v13 = *(v0 + 176);

          return sub_22974C028(v4, v5);
        }
      }
    }

    if (*(*(v0 + 216) + 16))
    {
      v33 = sub_229543DBC(0x726F737365636341, 0xEB00000000736569);
      if (v34)
      {
        sub_2295404B0(*(*(v0 + 216) + 56) + 32 * v33, v0 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
        if (swift_dynamicCast())
        {
          v37 = *(v0 + 168);
          v36 = *(v0 + 176);
          v38 = *(v0 + 160);
          v39 = *(v0 + 144);
          *(v0 + 248) = v39;
          *(v0 + 152) = v39;
          v40 = swift_task_alloc();
          *(v0 + 256) = v40;
          v40[2] = v36;
          v40[3] = v38;
          v40[4] = v37;
          v41 = *(MEMORY[0x277D0F008] + 4);
          v42 = swift_task_alloc();
          *(v0 + 264) = v42;
          v43 = sub_229579858(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0);
          *v42 = v0;
          v42[1] = sub_2298123DC;
          v44 = &unk_22A5851D0;
LABEL_27:

          return MEMORY[0x282167808](v44, v40, v35, v43);
        }
      }
    }

    if (*(*(v0 + 216) + 16))
    {
      v45 = sub_229543DBC(0x736D6F6F52, 0xE500000000000000);
      if (v46)
      {
        sub_2295404B0(*(*(v0 + 216) + 56) + 32 * v45, v0 + 48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
        if (swift_dynamicCast())
        {
          v48 = *(v0 + 168);
          v47 = *(v0 + 176);
          v49 = *(v0 + 160);
          v50 = *(v0 + 128);
          *(v0 + 280) = v50;
          *(v0 + 136) = v50;
          v40 = swift_task_alloc();
          *(v0 + 288) = v40;
          v40[2] = v47;
          v40[3] = v49;
          v40[4] = v48;
          v51 = *(MEMORY[0x277D0F008] + 4);
          v52 = swift_task_alloc();
          *(v0 + 296) = v52;
          v43 = sub_229579858(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0);
          *v52 = v0;
          v52[1] = sub_22981282C;
          v44 = &unk_22A5851C0;
          goto LABEL_27;
        }
      }
    }

    if (*(*(v0 + 216) + 16) && (v53 = sub_229543DBC(0x73656E656353, 0xE600000000000000), (v54 & 1) != 0))
    {
      sub_2295404B0(*(*(v0 + 216) + 56) + 32 * v53, v0 + 80);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      if (swift_dynamicCast())
      {
        v56 = *(v0 + 168);
        v55 = *(v0 + 176);
        v57 = *(v0 + 160);
        v58 = *(v0 + 112);
        *(v0 + 312) = v58;
        *(v0 + 120) = v58;
        v40 = swift_task_alloc();
        *(v0 + 320) = v40;
        v40[2] = v55;
        v40[3] = v57;
        v40[4] = v56;
        v59 = *(MEMORY[0x277D0F008] + 4);
        v60 = swift_task_alloc();
        *(v0 + 328) = v60;
        v43 = sub_229579858(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0);
        *v60 = v0;
        v60[1] = sub_229812B4C;
        v44 = &unk_22A5851B0;
        goto LABEL_27;
      }
    }

    else
    {
    }
  }

  else
  {
    v15 = *(v0 + 200);
    v16 = *(v0 + 168);
    v17 = *(v0 + 176);
    v18 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    sub_22A4DD06C();
    v19 = v17;

    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCCC();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 192);
    v24 = *(v0 + 200);
    v25 = *(v0 + 184);
    if (v22)
    {
      v64 = *(v0 + 200);
      v27 = *(v0 + 168);
      v26 = *(v0 + 176);
      v28 = *(v0 + 160);
      v63 = *(v0 + 184);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v65 = v31;
      *v29 = 138412546;
      *(v29 + 4) = v26;
      *v30 = v26;
      *(v29 + 12) = 2080;
      v32 = v26;
      *(v29 + 14) = sub_2295A3E30(v28, v27, &v65);
      _os_log_impl(&dword_229538000, v20, v21, "%@ No demo configuration found for %s", v29, 0x16u);
      sub_22953EAE4(v30, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AAD4E50](v31, -1, -1);
      MEMORY[0x22AAD4E50](v29, -1, -1);

      (*(v23 + 8))(v64, v63);
    }

    else
    {

      (*(v23 + 8))(v24, v25);
    }
  }

  v61 = *(v0 + 200);

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_229811E6C()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_229812C9C;
  }

  else
  {
    v3 = sub_229811F80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229811F80()
{
  v1 = v0[28];

  if (*(v0[27] + 16))
  {
    v2 = sub_229543DBC(0x726F737365636341, 0xEB00000000736569);
    if (v3)
    {
      sub_2295404B0(*(v0[27] + 56) + 32 * v2, (v0 + 2));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      if (swift_dynamicCast())
      {
        v6 = v0[21];
        v5 = v0[22];
        v7 = v0[20];
        v8 = v0[18];
        v0[31] = v8;
        v0[19] = v8;
        v9 = swift_task_alloc();
        v0[32] = v9;
        v9[2] = v5;
        v9[3] = v7;
        v9[4] = v6;
        v10 = *(MEMORY[0x277D0F008] + 4);
        v11 = swift_task_alloc();
        v0[33] = v11;
        v12 = sub_229579858(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0);
        *v11 = v0;
        v11[1] = sub_2298123DC;
        v13 = &unk_22A5851D0;
LABEL_13:

        return MEMORY[0x282167808](v13, v9, v4, v12);
      }
    }
  }

  if (*(v0[27] + 16))
  {
    v14 = sub_229543DBC(0x736D6F6F52, 0xE500000000000000);
    if (v15)
    {
      sub_2295404B0(*(v0[27] + 56) + 32 * v14, (v0 + 6));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      if (swift_dynamicCast())
      {
        v17 = v0[21];
        v16 = v0[22];
        v18 = v0[20];
        v19 = v0[16];
        v0[35] = v19;
        v0[17] = v19;
        v9 = swift_task_alloc();
        v0[36] = v9;
        v9[2] = v16;
        v9[3] = v18;
        v9[4] = v17;
        v20 = *(MEMORY[0x277D0F008] + 4);
        v21 = swift_task_alloc();
        v0[37] = v21;
        v12 = sub_229579858(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0);
        *v21 = v0;
        v21[1] = sub_22981282C;
        v13 = &unk_22A5851C0;
        goto LABEL_13;
      }
    }
  }

  if (*(v0[27] + 16) && (v22 = sub_229543DBC(0x73656E656353, 0xE600000000000000), (v23 & 1) != 0))
  {
    sub_2295404B0(*(v0[27] + 56) + 32 * v22, (v0 + 10));

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    if (swift_dynamicCast())
    {
      v25 = v0[21];
      v24 = v0[22];
      v26 = v0[20];
      v27 = v0[14];
      v0[39] = v27;
      v0[15] = v27;
      v9 = swift_task_alloc();
      v0[40] = v9;
      v9[2] = v24;
      v9[3] = v26;
      v9[4] = v25;
      v28 = *(MEMORY[0x277D0F008] + 4);
      v29 = swift_task_alloc();
      v0[41] = v29;
      v12 = sub_229579858(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0);
      *v29 = v0;
      v29[1] = sub_229812B4C;
      v13 = &unk_22A5851B0;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v30 = v0[25];

  v31 = v0[1];

  return v31();
}

uint64_t sub_2298123DC()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v10 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = v2[32];
    v5 = v2[27];

    v6 = sub_229812D10;
  }

  else
  {
    v7 = v2[31];
    v8 = v2[32];

    v6 = sub_229812514;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_229812514()
{
  if (*(v0[27] + 16))
  {
    v1 = sub_229543DBC(0x736D6F6F52, 0xE500000000000000);
    if (v2)
    {
      sub_2295404B0(*(v0[27] + 56) + 32 * v1, (v0 + 6));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      if (swift_dynamicCast())
      {
        v5 = v0[21];
        v4 = v0[22];
        v6 = v0[20];
        v7 = v0[16];
        v0[35] = v7;
        v0[17] = v7;
        v8 = swift_task_alloc();
        v0[36] = v8;
        v8[2] = v4;
        v8[3] = v6;
        v8[4] = v5;
        v9 = *(MEMORY[0x277D0F008] + 4);
        v10 = swift_task_alloc();
        v0[37] = v10;
        v11 = sub_229579858(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0);
        *v10 = v0;
        v10[1] = sub_22981282C;
        v12 = &unk_22A5851C0;
LABEL_9:

        return MEMORY[0x282167808](v12, v8, v3, v11);
      }
    }
  }

  if (*(v0[27] + 16) && (v13 = sub_229543DBC(0x73656E656353, 0xE600000000000000), (v14 & 1) != 0))
  {
    sub_2295404B0(*(v0[27] + 56) + 32 * v13, (v0 + 10));

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    if (swift_dynamicCast())
    {
      v16 = v0[21];
      v15 = v0[22];
      v17 = v0[20];
      v18 = v0[14];
      v0[39] = v18;
      v0[15] = v18;
      v8 = swift_task_alloc();
      v0[40] = v8;
      v8[2] = v15;
      v8[3] = v17;
      v8[4] = v16;
      v19 = *(MEMORY[0x277D0F008] + 4);
      v20 = swift_task_alloc();
      v0[41] = v20;
      v11 = sub_229579858(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0);
      *v20 = v0;
      v20[1] = sub_229812B4C;
      v12 = &unk_22A5851B0;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v21 = v0[25];

  v22 = v0[1];

  return v22();
}

uint64_t sub_22981282C()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v10 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = v2[36];
    v5 = v2[27];

    v6 = sub_229812D7C;
  }

  else
  {
    v7 = v2[35];
    v8 = v2[36];

    v6 = sub_229812964;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_229812964()
{
  if (*(v0[27] + 16) && (v1 = sub_229543DBC(0x73656E656353, 0xE600000000000000), (v2 & 1) != 0))
  {
    sub_2295404B0(*(v0[27] + 56) + 32 * v1, (v0 + 10));

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    if (swift_dynamicCast())
    {
      v5 = v0[21];
      v4 = v0[22];
      v6 = v0[20];
      v7 = v0[14];
      v0[39] = v7;
      v0[15] = v7;
      v8 = swift_task_alloc();
      v0[40] = v8;
      v8[2] = v4;
      v8[3] = v6;
      v8[4] = v5;
      v9 = *(MEMORY[0x277D0F008] + 4);
      v10 = swift_task_alloc();
      v0[41] = v10;
      v11 = sub_229579858(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0);
      *v10 = v0;
      v10[1] = sub_229812B4C;

      return MEMORY[0x282167808](&unk_22A5851B0, v8, v3, v11);
    }
  }

  else
  {
  }

  v12 = v0[25];

  v13 = v0[1];

  return v13();
}

uint64_t sub_229812B4C()
{
  v2 = *(*v1 + 328);
  v3 = *v1;
  v3[42] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_229812DE8, 0, 0);
  }

  else
  {
    v4 = v3[39];
    v5 = v3[40];

    v6 = v3[25];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_229812C9C()
{
  v2 = v0[27];
  v1 = v0[28];

  v3 = v0[30];
  v4 = v0[25];

  v5 = v0[1];

  return v5();
}

uint64_t sub_229812D10()
{
  v1 = v0[31];

  v2 = v0[34];
  v3 = v0[25];

  v4 = v0[1];

  return v4();
}

uint64_t sub_229812D7C()
{
  v1 = v0[35];

  v2 = v0[38];
  v3 = v0[25];

  v4 = v0[1];

  return v4();
}

uint64_t sub_229812DE8()
{
  v1 = v0[39];
  v2 = v0[40];

  v3 = v0[42];
  v4 = v0[25];

  v5 = v0[1];

  return v5();
}

uint64_t sub_229812E5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v33 = a4;
  v31 = a3;
  ObjectType = swift_getObjectType();
  v35 = sub_22A4DD26C();
  v38 = *(v35 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22A4DD29C();
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22A4DB7DC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &ObjectType - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = [v5 workQueue];
  (*(v15 + 16))(v17, a2, v14);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v5;
  *(v20 + 24) = a1;
  (*(v15 + 32))(v20 + v18, v17, v14);
  v21 = (v20 + v19);
  v22 = v33;
  *v21 = v31;
  v21[1] = v22;
  *(v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  aBlock[4] = sub_229816B9C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_42;
  v23 = _Block_copy(aBlock);
  v24 = v5;
  v25 = a1;

  sub_22A4DD28C();
  v39 = MEMORY[0x277D84F90];
  sub_22953E140(&qword_281401CF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
  v27 = v34;
  v26 = v35;
  sub_22A4DE03C();
  v28 = v32;
  MEMORY[0x22AAD0F80](0, v13, v27, v23);
  _Block_release(v23);

  (*(v38 + 8))(v27, v26);
  (*(v36 + 8))(v13, v37);
}

void sub_22981324C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *a1, uint64_t a2), void *a5, uint64_t a6)
{
  v32 = a2;
  v33 = a4;
  v31[1] = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v31 - v11;
  v13 = [objc_opt_self() allMessageDestinations];
  v14 = [objc_allocWithZone(MEMORY[0x277D0F818]) initWithName:@"HomeUtilAddDemoModeAccessory" destination:v13 payload:0];

  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = v14;
  v15[4] = a6;
  v38 = sub_229816C3C;
  v39 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_2297986BC;
  v37 = &block_descriptor_41;
  v16 = _Block_copy(&aBlock);
  v17 = a1;
  v18 = v14;

  [v18 setResponseHandler_];
  _Block_release(v16);
  v19 = sub_22A4DB7DC();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v12, 1, 1, v19);
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  v21 = sub_22A4DDEBC();
  v22 = 0;
  if ((*(v20 + 48))(v12, 1, v19) != 1)
  {
    v22 = sub_22A4DB77C();
    (*(v20 + 8))(v12, v19);
  }

  v23 = [objc_allocWithZone(HMDAccessoryNetworkCredential) initWithNetworkRouterUUID:v22 clientIdentifier:v21 wiFiPSK:0];

  v24 = objc_allocWithZone(HMDNewPairedAccessoryServerInfo);
  v25 = v23;
  v26 = sub_22A4DB77C();
  v27 = [v24 initWithServer:v32 home:v17 primaryAccessoryUUID:v26 certificationStatus:2 hostAccessory:0 networkCredential:v25 pairingEvent:0];

  v38 = v33;
  v39 = a5;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_2295AAF60;
  v37 = &block_descriptor_44_0;
  v28 = _Block_copy(&aBlock);
  v29 = v18;
  v30 = v27;

  [v17 _processNewlyPairedAccessoryServerInfo_message_completionHandler_];
  _Block_release(v28);
}

uint64_t sub_229813610(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v55[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v55[-v14];
  if (a1)
  {
    v16 = a1;
    sub_2297A46D4();
    v17 = a1;
    v18 = a3;
    v19 = a4;
    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCEC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v59 = v9;
      v24 = v23;
      v25 = swift_slowAlloc();
      v57 = v25;
      *v22 = 136315650;
      v60 = 91;
      v61 = 0xE100000000000000;
      v62 = v25;
      v26 = [v18 logIdentifier];
      v27 = sub_22A4DD5EC();
      v58 = v8;
      v28 = v27;
      v30 = v29;

      v56 = v21;
      MEMORY[0x22AAD08C0](v28, v30);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v31 = sub_2295A3E30(v60, v61, &v62);

      *(v22 + 4) = v31;
      *(v22 + 12) = 2112;
      *(v22 + 14) = v19;
      *v24 = v19;
      *(v22 + 22) = 2112;
      v32 = a1;
      v33 = v19;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 24) = v34;
      v24[1] = v34;
      _os_log_impl(&dword_229538000, v20, v56, "%s Responded to %@ with %@", v22, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v24, -1, -1);
      v35 = v57;
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x22AAD4E50](v35, -1, -1);
      MEMORY[0x22AAD4E50](v22, -1, -1);

      return (*(v59 + 8))(v15, v58);
    }

    else
    {

      return (*(v9 + 8))(v15, v8);
    }
  }

  else
  {
    v59 = v9;
    sub_2297A46D4();

    v37 = a3;
    v38 = a4;
    v39 = sub_22A4DD05C();
    v40 = sub_22A4DDCCC();

    if (os_log_type_enabled(v39, v40))
    {
      v56 = v40;
      v58 = v8;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v57 = v43;
      *v41 = 136315650;
      v60 = 91;
      v61 = 0xE100000000000000;
      v62 = v43;
      v44 = [v37 logIdentifier];
      v45 = sub_22A4DD5EC();
      v47 = v46;

      MEMORY[0x22AAD08C0](v45, v47);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v48 = sub_2295A3E30(v60, v61, &v62);

      *(v41 + 4) = v48;
      *(v41 + 12) = 2112;
      *(v41 + 14) = v38;
      *v42 = v38;
      *(v41 + 22) = 2080;
      v49 = v38;
      if (!a2)
      {
        sub_22956AC5C(MEMORY[0x277D84F90]);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v50 = sub_22A4DD4AC();
      v52 = v51;

      v53 = sub_2295A3E30(v50, v52, &v62);

      *(v41 + 24) = v53;
      _os_log_impl(&dword_229538000, v39, v56, "%s Responded to %@ with %s", v41, 0x20u);
      sub_22953EAE4(v42, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v42, -1, -1);
      v54 = v57;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v54, -1, -1);
      MEMORY[0x22AAD4E50](v41, -1, -1);

      return (*(v59 + 8))(v13, v58);
    }

    else
    {

      return (*(v59 + 8))(v13, v8);
    }
  }
}

uint64_t sub_229813B9C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();
  v3 = sub_22A4DB7DC();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_22A4DD07C();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229813CD0, 0, 0);
}

uint64_t sub_229813CD0()
{
  v67 = v0;
  v1 = [*(v0 + 16) isDemoAccessory];
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  if (v1)
  {
    v5 = *(v0 + 80);
    sub_2297A46D4();
    v6 = v3;
    v7 = v4;
    v8 = sub_22A4DD05C();
    v9 = sub_22A4DDCEC();

    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v13 = *(v0 + 64);
    if (v10)
    {
      v62 = *(v0 + 80);
      v14 = *(v0 + 24);
      v60 = *(v0 + 16);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136315394;
      v64 = v16;
      v65 = 91;
      v66 = 0xE100000000000000;
      v17 = [v14 logIdentifier];
      v18 = sub_22A4DD5EC();
      v20 = v19;

      MEMORY[0x22AAD08C0](v18, v20);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v21 = sub_2295A3E30(91, 0xE100000000000000, &v64);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2080;
      v22 = [v60 shortDescription];
      v23 = sub_22A4DD5EC();
      v25 = v24;

      v26 = sub_2295A3E30(v23, v25, &v64);

      *(v15 + 14) = v26;
      _os_log_impl(&dword_229538000, v8, v9, "%s Unable to remove non-demo accessory: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v16, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);

      (*(v12 + 8))(v62, v13);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }

    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
    v47 = *(v0 + 80);
    v46 = *(v0 + 88);
    v48 = *(v0 + 56);

    v49 = *(v0 + 8);

    return v49();
  }

  else
  {
    v27 = *(v0 + 88);
    sub_2297A46D4();
    v28 = v3;
    v29 = v4;
    v30 = sub_22A4DD05C();
    v31 = sub_22A4DDCCC();

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 88);
    v34 = *(v0 + 64);
    v35 = *(v0 + 72);
    if (v32)
    {
      v63 = *(v0 + 88);
      v37 = *(v0 + 16);
      v36 = *(v0 + 24);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v38 = 136315394;
      v64 = v61;
      v65 = 91;
      v66 = 0xE100000000000000;
      v40 = [v36 logIdentifier];
      v41 = sub_22A4DD5EC();
      v59 = v34;
      v43 = v42;

      MEMORY[0x22AAD08C0](v41, v43);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v44 = sub_2295A3E30(91, 0xE100000000000000, &v64);

      *(v38 + 4) = v44;
      *(v38 + 12) = 2112;
      *(v38 + 14) = v37;
      *v39 = v37;
      v45 = v37;
      _os_log_impl(&dword_229538000, v30, v31, "%s Removing non-demo accessory: %@", v38, 0x16u);
      sub_22953EAE4(v39, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v39, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x22AAD4E50](v61, -1, -1);
      MEMORY[0x22AAD4E50](v38, -1, -1);

      (*(v35 + 8))(v63, v59);
    }

    else
    {

      (*(v35 + 8))(v33, v34);
    }

    v51 = *(v0 + 56);
    v53 = *(v0 + 24);
    v52 = *(v0 + 32);
    v54 = [*(v0 + 16) uuid];
    sub_22A4DB79C();

    v55 = swift_task_alloc();
    *(v0 + 96) = v55;
    v55[2] = v53;
    v55[3] = v51;
    v55[4] = v52;
    v56 = *(MEMORY[0x277D85A40] + 4);
    v57 = swift_task_alloc();
    *(v0 + 104) = v57;
    *v57 = v0;
    v57[1] = sub_229814274;
    v58 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v57, 0, 0, 0xD000000000000016, 0x800000022A597AB0, sub_229816318, v55, v58);
  }
}

uint64_t sub_229814274()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_22981442C;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_229814390;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229814390()
{
  v1 = v0[10];
  v2 = v0[11];
  (*(v0[6] + 8))(v0[7], v0[5]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22981442C()
{
  v1 = v0[12];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];

  (*(v3 + 8))(v2, v4);
  v5 = v0[14];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

BOOL sub_229814508()
{
  v1 = [v0 accessories];
  sub_229562F68(0, &qword_281401C30, off_278665FE8);
  v2 = sub_22A4DD83C();

  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_22A4DE0EC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x22AAD13F0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 isDemoAccessory];

    v4 = v5 + 1;
  }

  while (!v8);

  return v3 != v5;
}

void sub_2298146C4()
{
  v51[0] = swift_getObjectType();
  v0 = sub_22A4DD07C();
  v52 = *(v0 - 8);
  v53 = v0;
  v1 = *(v52 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D3E0, &unk_22A578560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A585160;
  *(inited + 32) = sub_22A4DD5AC();
  *(inited + 40) = sub_22A4DD5AC();
  *(inited + 48) = sub_22A4DD5AC();
  *(inited + 56) = sub_22A4DD5AC();
  *(inited + 64) = sub_22A4DD5AC();
  *(inited + 72) = sub_22A4DD5AC();
  *(inited + 80) = sub_22A4DD5AC();
  v5 = sub_22A4DD5AC();
  v6 = *MEMORY[0x277CD0678];
  v7 = MEMORY[0x277CCFEE8];
  *(inited + 88) = v5;
  *(inited + 96) = v6;
  v8 = *v7;
  v9 = *MEMORY[0x277CD2788];
  *(inited + 104) = *v7;
  *(inited + 112) = v9;
  v10 = *MEMORY[0x277CD2520];
  v11 = *MEMORY[0x277CD20A0];
  *(inited + 120) = *MEMORY[0x277CD2520];
  *(inited + 128) = v11;
  v12 = *MEMORY[0x277CD0518];
  v13 = *MEMORY[0x277CCF1E8];
  *(inited + 136) = *MEMORY[0x277CD0518];
  *(inited + 144) = v13;
  v57 = inited;
  v14 = v6;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  if (isRetailDemoModeV2Enabled())
  {
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_22A57A9A0;
    v22 = *MEMORY[0x277CD2078];
    v23 = *MEMORY[0x277CD24F8];
    *(v21 + 32) = *MEMORY[0x277CD2078];
    *(v21 + 40) = v23;
    v24 = *MEMORY[0x277CD20B0];
    v25 = *MEMORY[0x277CD2530];
    *(v21 + 48) = *MEMORY[0x277CD20B0];
    *(v21 + 56) = v25;
    v26 = *MEMORY[0x277CD2070];
    v27 = *MEMORY[0x277CD24F0];
    *(v21 + 64) = *MEMORY[0x277CD2070];
    *(v21 + 72) = v27;
    v28 = v22;
    v29 = v23;
    v30 = v24;
    v31 = v25;
    v32 = v26;
    v33 = v27;
    sub_2296F0760(v21);
  }

  sub_2297A46D4();
  v34 = v51[1];
  v35 = sub_22A4DD05C();
  v36 = sub_22A4DDCCC();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 136315138;
    v54 = 91;
    v55 = 0xE100000000000000;
    v56 = v38;
    v39 = [v34 logIdentifier];
    v40 = sub_22A4DD5EC();
    v42 = v41;

    MEMORY[0x22AAD08C0](v40, v42);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v43 = sub_2295A3E30(v54, v55, &v56);

    *(v37 + 4) = v43;
    _os_log_impl(&dword_229538000, v35, v36, "%s Deregistering for messages in locked demo mode", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AAD4E50](v38, -1, -1);
    MEMORY[0x22AAD4E50](v37, -1, -1);
  }

  (*(v52 + 8))(v3, v53);
  v44 = v57;
  v45 = *(v57 + 16);
  if (v45)
  {
    v46 = 0;
    while (v46 < *(v44 + 16))
    {
      v47 = *(v44 + 32 + 8 * v46);
      v48 = [v34 administratorHandler];
      [v48 deregisterForMessage:v47 receiver:v34];

      v49 = [v34 msgDispatcher];
      if (!v49)
      {
        goto LABEL_12;
      }

      v50 = v49;
      ++v46;
      [v49 deregisterForMessage:v47 receiver:v34];

      if (v45 == v46)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_10:
  }
}

id sub_229814C20()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 appData];
  if (!result)
  {
    v8 = [v1 uuid];
    sub_22A4DB79C();

    v9 = objc_allocWithZone(HMDApplicationData);
    v10 = sub_22A4DB77C();
    v11 = [v9 initWithParentUUID_];

    (*(v3 + 8))(v6, v2);
    return v11;
  }

  return result;
}

uint64_t sub_229814D60(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a2;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_229592790;

  return sub_229623634(a3, a4);
}

uint64_t sub_229814E0C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a2;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_229814EB8;

  return sub_22958C334(a3, a4);
}

uint64_t sub_229814EB8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_229816C50, 0, 0);
  }
}

uint64_t sub_229815004(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a2;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_229814EB8;

  return sub_22958C334(a3, a4);
}

id sub_2298150B0(uint64_t a1, SEL *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21[-v8];
  v10 = sub_22A4DB7DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 16))
  {
    v15 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
    if (v16)
    {
      sub_2295404B0(*(a1 + 56) + 32 * v15, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      if (swift_dynamicCast())
      {
        sub_22A4DB75C();

        if ((*(v11 + 48))(v9, 1, v10) == 1)
        {
          sub_22953EAE4(v9, &unk_27D87D2A0, &unk_22A578BD0);
        }

        else
        {
          (*(v11 + 32))(v14, v9, v10);
          v17 = sub_22A4DB77C();
          v18 = [v4 *a2];

          (*(v11 + 8))(v14, v10);
          result = v18;
          if (v18)
          {
            return result;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_2298152F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[26] = a4;
  v5[27] = v4;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v8 = swift_task_alloc();
  v5[28] = v8;
  *v8 = v5;
  v8[1] = sub_2298153A4;

  return sub_229808024(a3, a4);
}

uint64_t sub_2298153A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 224);
  v7 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v5 = sub_22981586C;
  }

  else
  {
    v5 = sub_2298154B8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2298154B8()
{
  v20 = v0;
  if (*(v0 + 232))
  {
    v1 = *(v0 + 232);
  }

  else
  {
    v2 = *(v0 + 216);
    v1 = sub_22980CAD8();
  }

  v3 = *(v0 + 240);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);

  v6 = sub_22981667C(v1, sub_229628A88);
  swift_bridgeObjectRelease_n();
  *(v0 + 176) = v6;
  sub_2297FCFD4(0x726F737365636341, 0xEB00000000736569, (v0 + 16));
  sub_22953EAE4(v0 + 16, &unk_27D87FC20, &unk_22A578810);
  sub_2297FCFD4(0x736D6F6F52, 0xE500000000000000, (v0 + 48));
  sub_22953EAE4(v0 + 48, &unk_27D87FC20, &unk_22A578810);
  sub_2297FCFD4(0x73656E656353, 0xE600000000000000, (v0 + 80));
  sub_22953EAE4(v0 + 80, &unk_27D87FC20, &unk_22A578810);
  *(v0 + 136) = MEMORY[0x277D837D0];
  *(v0 + 112) = v5;
  *(v0 + 120) = v4;
  sub_229543C58(v0 + 112, v0 + 144);

  v7 = *(v0 + 176);
  LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
  v19 = v7;
  v8 = *(v0 + 168);
  v9 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 144, v8);
  v10 = *(v8 - 8);
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  (*(v10 + 16))(v12, v9, v8);
  sub_2297FE940(*v12, v12[1], 0x656D614E656D6F48, 0xE800000000000000, v4, &v19);
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));

  v13 = v19;
  *(v0 + 248) = v19;
  v14 = swift_task_alloc();
  *(v0 + 256) = v14;
  *v14 = v0;
  v14[1] = sub_229815750;
  v15 = *(v0 + 208);
  v16 = *(v0 + 216);
  v17 = *(v0 + 200);

  return sub_22980D4C8(v13, v17, v15);
}

uint64_t sub_229815750()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_229815884;
  }

  else
  {
    v5 = *(v2 + 248);

    v4 = sub_229566EE4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229815884()
{
  v1 = v0[31];

  v2 = v0[33];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2298158E8(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_229586D38;

  return sub_22958F178();
}

uint64_t sub_229815978(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_229586D38;

  return sub_22958D9EC();
}

uint64_t sub_229815A08(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_229586D38;

  return sub_22962746C();
}

uint64_t sub_229815A98(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v5 = *a1;
  v4[4] = a4;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_229815AC0, 0, 0);
}

uint64_t sub_229815AC0()
{
  v1 = v0[2];
  v2 = sub_2298150B0(v0[5], &selRef_accessoryWithUUID_);
  v0[6] = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_229598D74;
    v5 = v0[3];
    v4 = v0[4];

    return sub_229626978(v5, v4);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_229815BA4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v5 = *a1;
  v4[4] = a4;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_229815BCC, 0, 0);
}

uint64_t sub_229815BCC()
{
  v1 = *(v0 + 16);
  v2 = sub_2298150B0(*(v0 + 40), &selRef_roomWithUUID_);
  *(v0 + 48) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = sub_22958E2F0(*(v0 + 24), *(v0 + 32));
    *(v0 + 56) = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      v8 = [v3 name];
      v9 = sub_22A4DD5EC();
      v11 = v10;

      if (v9 == v6 && v7 == v11)
      {
      }

      else
      {
        v13 = sub_22A4DE60C();

        if ((v13 & 1) == 0)
        {
          v14 = swift_task_alloc();
          *(v0 + 64) = v14;
          *v14 = v0;
          v14[1] = sub_229815D5C;

          return sub_22989B8C4(v6, v7);
        }
      }
    }
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_229815D5C()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_229815EDC;
  }

  else
  {
    v3 = sub_229815E70;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229815E70()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229815EDC()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_229815F44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v5 = *a1;
  v4[4] = a4;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_229815F6C, 0, 0);
}

uint64_t sub_229815F6C()
{
  v1 = *(v0 + 16);
  v2 = sub_2298150B0(*(v0 + 40), &selRef_actionSetWithUUID_);
  *(v0 + 48) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = sub_22958C4A4(*(v0 + 24), *(v0 + 32));
    *(v0 + 56) = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      v8 = [v3 name];
      v9 = sub_22A4DD5EC();
      v11 = v10;

      if (v9 == v6 && v7 == v11)
      {
      }

      else
      {
        v13 = sub_22A4DE60C();

        if ((v13 & 1) == 0)
        {
          v14 = swift_task_alloc();
          *(v0 + 64) = v14;
          *v14 = v0;
          v14[1] = sub_2298160FC;

          return sub_22989CCDC(v6, v7);
        }
      }
    }
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2298160FC()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_229816C60;
  }

  else
  {
    v3 = sub_229816C54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229816234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_229569B30;

  return sub_2298152F4(a1, a2, a3, a4);
}

uint64_t sub_229816324(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_229815F44(a1, v4, v5, v6);
}

uint64_t sub_2298163D4(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229569B30;

  return sub_229815BA4(a1, v4, v5, v6);
}

uint64_t sub_229816484(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_229815A98(a1, v4, v5, v6);
}

unint64_t *sub_229816534(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_2298167E8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_2298165BC(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_22981667C(a1, sub_229628A88);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22981661C(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_22981667C(a1, sub_22959E60C);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22981667C(uint64_t a1, uint64_t (*a2)(void *))
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_2298167E8(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_229816534(v11, v6, v4, a2);
  result = MEMORY[0x22AAD4E50](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_2298167E8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v21 = 0;
  v22 = a4;
  v19 = a2;
  v20 = result;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v24 + 48) + 16 * v13);
    v15 = v14[1];
    v23[0] = *v14;
    v23[1] = v15;
    MEMORY[0x28223BE20](result);
    v18[2] = v23;

    v16 = sub_22986A5E0(v22, v18, &unk_283CDA2E8);

    if ((v16 & 1) == 0)
    {
      *(v20 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_229772BD4(v20, v19, v21, v24);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_229772BD4(v20, v19, v21, v24);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_229816980(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_229586D38;

  return sub_229814D60(a1, a2, v7, v6);
}

uint64_t sub_229816A34(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_229586D38;

  return sub_229814E0C(a1, a2, v7, v6);
}

uint64_t sub_229816AE8(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_229586D38;

  return sub_229815004(a1, a2, v7, v6);
}

void sub_229816B9C()
{
  v1 = *(sub_22A4DB7DC() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + v3;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v0 + v4);

  sub_22981324C(v5, v6, v0 + v2, v8, v9, v10);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HMDHomeActivityStateContributorType()
{
  v1 = HMDHomeActivityStateContributorTypeAsString(*v0);
  v2 = sub_22A4DD5EC();

  return v2;
}

void Account.ChangeObserver.delegate.setter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (Strong)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = *&v0[OBJC_IVAR___HMDAccountChangeObserver_eventSubscriber];
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    aBlock[4] = sub_229816F74;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_229816F98;
    aBlock[3] = &block_descriptor_43;
    v4 = _Block_copy(aBlock);
    v5 = v0;

    [v2 registerAccountChangeEventHandler_];
    swift_unknownObjectRelease();
    _Block_release(v4);
  }
}

void sub_229816F98(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

void (*Account.ChangeObserver.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___HMDAccountChangeObserver_delegate;
  *(v3 + 80) = v1;
  *(v3 + 88) = v5;
  swift_beginAccess();
  *(v4 + 72) = swift_unknownObjectWeakLoadStrong();
  return sub_2298170A8;
}

void sub_2298170A8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = (*a1 + 72);
  v6 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    if (Strong)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = v3[10];
      v9 = *&v8[OBJC_IVAR___HMDAccountChangeObserver_eventSubscriber];
      v10 = swift_allocObject();
      *(v10 + 16) = v8;
      v3[4] = sub_229818340;
      v3[5] = v10;
      *v3 = MEMORY[0x277D85DD0];
      v3[1] = 1107296256;
      v3[2] = sub_229816F98;
      v3[3] = &block_descriptor_7_0;
      v11 = _Block_copy(v3);
      v12 = v3[5];
      v13 = v8;
      swift_unknownObjectRetain();

      [v9 registerAccountChangeEventHandler_];
      swift_unknownObjectRelease();
      _Block_release(v11);
    }

    v14 = *v4;
    goto LABEL_8;
  }

  if (Strong)
  {
    swift_unknownObjectRelease();
LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v15 = v3[10];
  v16 = *&v15[OBJC_IVAR___HMDAccountChangeObserver_eventSubscriber];
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v3[4] = sub_229818340;
  v3[5] = v17;
  *v3 = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_229816F98;
  v3[3] = &block_descriptor_14_1;
  v18 = _Block_copy(v3);
  v19 = v3[5];
  v20 = v15;

  [v16 registerAccountChangeEventHandler_];
  swift_unknownObjectRelease();
  _Block_release(v18);
LABEL_9:

  free(v3);
}

id Account.ChangeObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Account.ChangeObserver.init()()
{
  swift_getObjectType();
  v0 = [objc_opt_self() sharedSubscriber];
  v1 = [objc_opt_self() productInfo];
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v3 = result;
    v4 = [objc_opt_self() defaultCenter];
    v5 = sub_229818260(v0, v1, v3, v4);

    swift_deallocPartialClassInstance();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22981751C(void *a1, int a2)
{
  v89 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v90 = v5;
  v91 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v87 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v87 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v87 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v87 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v87 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v87 - v26;
  if (*(v2 + OBJC_IVAR___HMDAccountChangeObserver_isSharediPad) == 1)
  {
    sub_229541CB0(ObjectType, &off_283CE7268);
    v28 = sub_22A4DD05C();
    v29 = sub_22A4DDCDC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_229538000, v28, v29, "Ignoring change for shared iPad", v30, 2u);
      MEMORY[0x22AAD4E50](v30, -1, -1);
    }

    (*(v91 + 8))(v27, v90);
    return;
  }

  if (!a1)
  {
    sub_229541CB0(ObjectType, &off_283CE7268);
    v44 = sub_22A4DD05C();
    v45 = sub_22A4DDCDC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 67109120;
      *(v46 + 4) = v89;
      _os_log_impl(&dword_229538000, v44, v45, "Ignoring change for nil account, change type: %u", v46, 8u);
      MEMORY[0x22AAD4E50](v46, -1, -1);
    }

    (*(v91 + 8))(v10, v90);
    return;
  }

  v31 = *MEMORY[0x277CEC688];
  v88 = a1;
  v32 = a1;
  if (![v32 aa:v31 isAccountClass:?])
  {
    sub_229541CB0(ObjectType, &off_283CE7268);
    v47 = v32;
    v48 = sub_22A4DD05C();
    v49 = sub_22A4DDCDC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      *(v50 + 4) = v47;
      *v51 = v88;
      v52 = v47;
      _os_log_impl(&dword_229538000, v48, v49, "Ignoring change for non-primary account %@", v50, 0xCu);
      sub_2295A1C40(v51);
      MEMORY[0x22AAD4E50](v51, -1, -1);
      MEMORY[0x22AAD4E50](v50, -1, -1);
    }

    else
    {
      v52 = v48;
      v48 = v47;
    }

    (*(v91 + 8))(v13, v90);
    return;
  }

  v33 = v89;
  if (v89 <= 3)
  {
    v87 = v2;
    switch(v89)
    {
      case 1:
        sub_229541CB0(ObjectType, &off_283CE7268);
        v56 = v32;
        v57 = v32;
        v58 = sub_22A4DD05C();
        v59 = sub_22A4DDD0C();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *v60 = 138412290;
          *(v60 + 4) = v57;
          *v61 = v88;
          v62 = v57;
          _os_log_impl(&dword_229538000, v58, v59, "Account added %@", v60, 0xCu);
          sub_2295A1C40(v61);
          MEMORY[0x22AAD4E50](v61, -1, -1);
          MEMORY[0x22AAD4E50](v60, -1, -1);
        }

        (*(v91 + 8))(v25, v90);
        v63 = v87;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        v32 = v56;
        if (!Strong)
        {
          goto LABEL_36;
        }

        [Strong accountChangeObserver:v63 observedAddedAccount:{v57, v87}];
        break;
      case 2:
        sub_229541CB0(ObjectType, &off_283CE7268);
        v65 = v32;
        v66 = sub_22A4DD05C();
        v67 = sub_22A4DDD0C();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = v32;
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v69 = 138412290;
          *(v69 + 4) = v65;
          *v70 = v88;
          v71 = v65;
          _os_log_impl(&dword_229538000, v66, v67, "Account modified %@", v69, 0xCu);
          sub_2295A1C40(v70);
          MEMORY[0x22AAD4E50](v70, -1, -1);
          v72 = v69;
          v32 = v68;
          MEMORY[0x22AAD4E50](v72, -1, -1);
        }

        (*(v91 + 8))(v22, v90);
        v73 = v87;
        swift_beginAccess();
        v74 = swift_unknownObjectWeakLoadStrong();
        if (!v74)
        {
          goto LABEL_36;
        }

        [v74 accountChangeObserver:v73 observedModifiedAccount:{v65, v87}];
        break;
      case 3:
        sub_229541CB0(ObjectType, &off_283CE7268);
        v34 = v32;
        v35 = sub_22A4DD05C();
        v36 = sub_22A4DDD0C();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = v32;
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *v38 = 138412290;
          *(v38 + 4) = v34;
          *v39 = v88;
          v40 = v34;
          _os_log_impl(&dword_229538000, v35, v36, "Account removed %@", v38, 0xCu);
          sub_2295A1C40(v39);
          MEMORY[0x22AAD4E50](v39, -1, -1);
          v41 = v38;
          v32 = v37;
          MEMORY[0x22AAD4E50](v41, -1, -1);
        }

        (*(v91 + 8))(v19, v90);
        v42 = v87;
        swift_beginAccess();
        v43 = swift_unknownObjectWeakLoadStrong();
        if (!v43)
        {
          goto LABEL_36;
        }

        [v43 accountChangeObserver:v42 observedDeletedAccount:{v34, v87}];
        break;
      default:
LABEL_24:
        sub_229541CB0(ObjectType, &off_283CE7268);
        v53 = sub_22A4DD05C();
        v54 = sub_22A4DDCEC();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 67109120;
          *(v55 + 4) = v33;
          _os_log_impl(&dword_229538000, v53, v54, "Unexpected, unhandled account change case: %u", v55, 8u);
          MEMORY[0x22AAD4E50](v55, -1, -1);
        }

        (*(v91 + 8))(v16, v90);
        goto LABEL_36;
    }

    swift_unknownObjectRelease();
    goto LABEL_36;
  }

  if ((v89 - 4) >= 2)
  {
    goto LABEL_24;
  }

LABEL_36:
  v75 = [v32 accountType];
  if (v75)
  {
    v76 = v75;
    v77 = [v75 identifier];

    if (v77)
    {
      v78 = v32;
      v79 = sub_22A4DD5EC();
      v81 = v80;

      v82 = *MEMORY[0x277CB8C58];
      v83 = sub_22A4DD5EC();
      if (v81)
      {
        if (v79 == v83 && v81 == v84)
        {
        }

        else
        {
          v86 = sub_22A4DE60C();

          if ((v86 & 1) == 0)
          {

            return;
          }
        }

        sub_229817ED0(v78);

        return;
      }

      v32 = v78;
    }

    else
    {
      v85 = *MEMORY[0x277CB8C58];
      sub_22A4DD5EC();
    }

    return;
  }

  __break(1u);
}