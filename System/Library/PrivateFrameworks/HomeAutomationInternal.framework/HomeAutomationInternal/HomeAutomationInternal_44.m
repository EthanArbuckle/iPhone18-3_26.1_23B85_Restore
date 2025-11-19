void *sub_252C63D74(uint64_t a1, const void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540260, &qword_252E3C090);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_252E57850;
  *(v5 + 32) = type metadata accessor for SetRvcAttributeTypeHandler();
  *(v5 + 40) = &off_2864B0BA8;
  *(v5 + 48) = type metadata accessor for RemoveHomeIfNoMatchingEntities();
  *(v5 + 56) = &off_2864B99C0;
  *(v5 + 64) = type metadata accessor for PauseSpeakersWhenTurningOffHandler();
  *(v5 + 72) = &off_2864B01E8;
  *(v5 + 80) = type metadata accessor for TurnOffWhenBlackHandler();
  *(v5 + 88) = &off_2864BD040;
  *(v5 + 96) = type metadata accessor for ChineseGetPM25Handler();
  *(v5 + 104) = &off_2864B0E08;
  *(v5 + 112) = type metadata accessor for AddDefaultDeltaValueHandler();
  *(v5 + 120) = &off_2864BEF90;
  *(v5 + 128) = type metadata accessor for AddDefaultUnitHandler();
  *(v5 + 136) = &off_2864BAC98;
  *(v5 + 144) = type metadata accessor for AddDefaultFanSpeedHandler();
  *(v5 + 152) = &off_2864C0018;
  *(v5 + 160) = type metadata accessor for WaterSystemRequestHandler();
  *(v5 + 168) = &off_2864BFFF8;
  *(v5 + 176) = type metadata accessor for SprinklerModifyGetPowerToInUseHandler();
  *(v5 + 184) = &off_2864B1A38;
  *(v5 + 192) = type metadata accessor for ModifyClimateModeHandler();
  *(v5 + 200) = &off_2864B98F8;
  *(v5 + 208) = type metadata accessor for TargetModeHandler();
  *(v5 + 216) = &off_2864B9B88;
  *(v5 + 224) = type metadata accessor for ModifyTaskTypeForPositionRequestsHandler();
  *(v5 + 232) = &off_2864B82C0;
  *(v5 + 240) = type metadata accessor for SetMaxMinForPositionRequestsHandler();
  *(v5 + 248) = &off_2864B4D90;
  *(v5 + 256) = type metadata accessor for SetAirQualityHandler();
  *(v5 + 264) = &off_2864C0B78;
  *(v5 + 272) = type metadata accessor for SetThresholdForModifyHumidityRequestHandler();
  *(v5 + 280) = &off_2864B8FB8;
  *(v5 + 288) = type metadata accessor for PickPrimaryServiceFromAccessoryHandler();
  *(v5 + 296) = &off_2864BDBF0;
  *(v5 + 304) = type metadata accessor for ToggleHandler();
  *(v5 + 312) = &off_2864B6E60;
  *(v5 + 320) = type metadata accessor for PickDefaultTypeHandler();
  *(v5 + 328) = &off_2864BC850;
  *(v5 + 336) = type metadata accessor for TurnOffWhenEqualsOrLessThanZeroHandler();
  *(v5 + 344) = &off_2864B2388;
  *(v5 + 352) = type metadata accessor for AddDefaultSwingModeHandler();
  *(v5 + 360) = &off_2864B6E40;
  *(v5 + 368) = type metadata accessor for ModifyGetTaskTypeForClimateHandler();
  *(v5 + 376) = &off_2864B58F0;
  *(v5 + 384) = type metadata accessor for ModifyGetCarbonDetectedHandler();
  *(v5 + 392) = &off_2864B6B70;
  *(v5 + 400) = type metadata accessor for ExcludeCamerasWhenSetPowerForAllDevices();
  *(v5 + 408) = &off_2864B2DB0;
  *(v5 + 416) = type metadata accessor for ExcludeNonCommonTypesFromGenericSetPowerRequestHandler();
  *(v5 + 424) = &off_2864BB940;
  v2[66] = v5;
  v2[2] = a1;
  memcpy(v2 + 3, a2, 0x1F8uLL);
  return v2;
}

uint64_t sub_252C63FE0(uint64_t a1)
{
  v2[496] = v1;
  v2[495] = a1;
  v3 = sub_252E36AB4();
  v2[497] = v3;
  v4 = *(v3 - 8);
  v2[498] = v4;
  v5 = *(v4 + 64) + 15;
  v2[499] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C640A4, 0, 0);
}

uint64_t sub_252C640A4()
{
  v89 = v0;
  v1 = *(v0 + 3968);
  type metadata accessor for SELFPerformanceLogger();
  swift_allocObject();
  v72 = sub_252D2D190(207, 0x6E776F6E6B6E75, 0xE700000000000000);
  v2 = *(v1 + 528);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 3968);
    v5 = (v2 + 32);
    v6 = MEMORY[0x277D84F90];
    do
    {
      v83 = *v5;
      v9 = *(v4 + 16);
      memcpy((v0 + 520), (v4 + 24), 0x1F8uLL);
      memcpy(__dst, (v4 + 24), sizeof(__dst));
      v10 = *(*(&v83 + 1) + 8);
      v11 = v9;
      sub_2529353AC(v0 + 520, v0 + 1024);
      LOBYTE(v9) = v10(v11, __dst);

      memcpy((v0 + 16), __dst, 0x1F8uLL);
      sub_252935408(v0 + 16);
      if (v9)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA6E0(0, *(v6 + 16) + 1, 1);
        }

        v8 = *(v6 + 16);
        v7 = *(v6 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_2529AA6E0((v7 > 1), v8 + 1, 1);
        }

        *(v6 + 16) = v8 + 1;
        *(v6 + 16 * v8 + 32) = v83;
      }

      ++v5;
      --v3;
    }

    while (v3);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v12 = *(v6 + 16);
  if (v12)
  {
    v76 = *(v0 + 3968);
    v13 = qword_27F53F5D0;
    v14 = *(v76 + 16);
    if (v13 != -1)
    {
      v71 = v14;
      swift_once();
      v14 = v71;
    }

    v79 = v14;
    v74 = qword_27F544F58;
    v73 = (*(v0 + 3984) + 8);
    v82 = v12 - 1;
    v15 = 32;
    v75 = v6;
    while (1)
    {
      v16 = *(v0 + 3992);
      v17 = v74;
      v77 = v15;
      v84 = *(v6 + v15);
      sub_252E36A94();
      sub_252E375D4();
      v81 = v17;
      sub_252E36A84();
      v18 = *(*(&v84 + 1) + 24);
      *(v0 + 3904) = v84;
      __swift_allocate_boxed_opaque_existential_0((v0 + 3880));
      v18();
      sub_252929E74(v0 + 3880, v0 + 3920);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5446F8, qword_252E57868);
      v19 = sub_252E36F94();
      v21 = v20;
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v22 = sub_252E36AD4();
      __swift_project_value_buffer(v22, qword_27F544DA8);
      *__dst = 0;
      *&__dst[8] = 0xE000000000000000;
      sub_252E379F4();

      *__dst = 0xD00000000000001ALL;
      *&__dst[8] = 0x8000000252E8D2F0;

      MEMORY[0x2530AD570](v19, v21);

      sub_252CC3D90(*__dst, *&__dst[8], 0xD00000000000007FLL, 0x8000000252E8D310);

      *__dst = 0;
      *&__dst[8] = 0xE000000000000000;
      sub_252E379F4();

      *__dst = 0x206C616974696E49;
      *&__dst[8] = 0xEF20746E65746E69;
      v23 = v79;
      v24 = [v23 description];
      v25 = sub_252E36F34();
      v80 = v19;
      v27 = v26;

      MEMORY[0x2530AD570](v25, v27);

      sub_252CC3D90(*__dst, *&__dst[8], 0xD00000000000007FLL, 0x8000000252E8D310);

      memcpy((v0 + 2536), (v76 + 24), 0x1F8uLL);
      memcpy((v0 + 2032), (v76 + 24), 0x1F8uLL);
      GEOLocationCoordinate2DMake(v0 + 2032);
      memcpy(__dst, (v0 + 2032), sizeof(__dst));
      v28 = *(*(&v84 + 1) + 16);
      sub_2529353AC(v0 + 2536, v0 + 3040);
      v29 = v28(v23, __dst, v84, *(&v84 + 1));
      v31 = v30;
      memcpy((v0 + 1528), __dst, 0x1F8uLL);
      sub_25293847C(v0 + 1528, &qword_27F5404C8, &unk_252E3FD60);
      v78 = v29;
      *__dst = 0;
      *&__dst[8] = 0xE000000000000000;
      if (v31)
      {
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E8D3C0);
        v32 = v80;
        MEMORY[0x2530AD570](v80, v21);
        sub_252CC4050(*__dst, *&__dst[8], 0xD00000000000007FLL, 0x8000000252E8D310, 0x2865747563657865, 0xE900000000000029, 92);
        v33 = v23;
      }

      else
      {
        v34 = v29;
        sub_252E379F4();

        *__dst = 0xD000000000000024;
        *&__dst[8] = 0x8000000252E8D390;

        v32 = v80;
        MEMORY[0x2530AD570](v80, v21);

        MEMORY[0x2530AD570](2112093, 0xE300000000000000);
        v35 = [v34 description];
        v36 = sub_252E36F34();
        v38 = v37;

        MEMORY[0x2530AD570](v36, v38);

        sub_252CC3D90(*__dst, *&__dst[8], 0xD00000000000007FLL, 0x8000000252E8D310);

        v33 = v34;
      }

      v39 = *(v0 + 3992);
      v40 = *(v0 + 3976);

      v86 = 1;
      v87 = 1;
      v88 = 1;
      *(v0 + 3712) = 0;
      *(v0 + 3720) = 1;
      *(v0 + 3728) = 0u;
      *(v0 + 3744) = 0u;
      *(v0 + 3760) = 0u;
      *(v0 + 3776) = 0;
      *(v0 + 3784) = v32;
      *(v0 + 3792) = v21;
      *(v0 + 3800) = 0;
      *(v0 + 3808) = 1;
      *(v0 + 3824) = 0;
      *(v0 + 3832) = 0;
      *(v0 + 3816) = 0;
      *(v0 + 3840) = 1;
      *(v0 + 3841) = 2;
      *(v0 + 3856) = 0;
      *(v0 + 3864) = 0;
      *(v0 + 3848) = 0;
      *(v0 + 3872) = 1;
      GEOLocationCoordinate2DMake(v0 + 3712);
      v41 = *(v0 + 3856);
      *&__dst[128] = *(v0 + 3840);
      *&__dst[144] = v41;
      __dst[160] = *(v0 + 3872);
      v42 = *(v0 + 3792);
      *&__dst[64] = *(v0 + 3776);
      *&__dst[80] = v42;
      v43 = *(v0 + 3824);
      *&__dst[96] = *(v0 + 3808);
      *&__dst[112] = v43;
      v44 = *(v0 + 3728);
      *__dst = *(v0 + 3712);
      *&__dst[16] = v44;
      v45 = *(v0 + 3760);
      *&__dst[32] = *(v0 + 3744);
      *&__dst[48] = v45;
      _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v81, v39, "ModifyRequest", 13, 2, __dst);
      sub_252927D3C(v78);
      v46 = *&__dst[144];
      *(v0 + 3672) = *&__dst[128];
      *(v0 + 3688) = v46;
      *(v0 + 3704) = __dst[160];
      v47 = *&__dst[80];
      *(v0 + 3608) = *&__dst[64];
      *(v0 + 3624) = v47;
      v48 = *&__dst[112];
      *(v0 + 3640) = *&__dst[96];
      *(v0 + 3656) = v48;
      v49 = *&__dst[16];
      *(v0 + 3544) = *__dst;
      *(v0 + 3560) = v49;
      v50 = *&__dst[48];
      *(v0 + 3576) = *&__dst[32];
      *(v0 + 3592) = v50;
      sub_25293847C(v0 + 3544, &qword_27F5407B0, &unk_252E42860);
      (*v73)(v39, v40);
      __swift_destroy_boxed_opaque_existential_1((v0 + 3880));
      v6 = v75;
      if (!v82)
      {
        break;
      }

      v79 = v33;
      --v82;
      v15 = v77 + 16;
    }

    v51 = *(v76 + 16);
    *(v76 + 16) = v33;
    v52 = v33;

    if (v72)
    {
      v53 = *(v76 + 16);

      v54 = [v53 userTask];
      if (v54)
      {
        v55 = v54;
        v56 = [v54 taskType];

        v57 = v56 - 1;
        if ((v56 - 1) > 5)
        {
          v58 = 0xE700000000000000;
          v54 = 0x6E776F6E6B6E75;
        }

        else
        {
          v54 = qword_252E57938[v57];
          v58 = qword_252E57968[v57];
        }
      }

      else
      {
        v58 = 0;
      }

      sub_252D2D83C(v54, v58);
    }

    v66 = *(v0 + 3960);
    sub_252E33B24();
  }

  else
  {

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v59 = sub_252E36AD4();
    __swift_project_value_buffer(v59, qword_27F544DA8);
    sub_252CC3D90(0xD000000000000041, 0x8000000252E8D400, 0xD00000000000007FLL, 0x8000000252E8D310);
    if (v72)
    {
      v60 = *(*(v0 + 3968) + 16);

      v61 = [v60 userTask];
      if (v61)
      {
        v62 = v61;
        v63 = [v61 taskType];

        v64 = v63 - 1;
        if ((v63 - 1) > 5)
        {
          v65 = 0xE700000000000000;
          v61 = 0x6E776F6E6B6E75;
        }

        else
        {
          v61 = qword_252E57938[v64];
          v65 = qword_252E57968[v64];
        }
      }

      else
      {
        v65 = 0;
      }

      sub_252D2D83C(v61, v65);
    }

    v67 = *(v0 + 3960);
    sub_252E33B24();
  }

  v68 = *(v0 + 3992);

  v69 = *(v0 + 8);

  return v69();
}

uint64_t ControlHomeModifyingFlow.deinit()
{
  memcpy(__dst, (v0 + 24), sizeof(__dst));
  sub_252935408(__dst);
  v1 = *(v0 + 528);

  return v0;
}

uint64_t ControlHomeModifyingFlow.__deallocating_deinit()
{
  memcpy(__dst, (v0 + 24), sizeof(__dst));
  sub_252935408(__dst);
  v1 = *(v0 + 528);

  return swift_deallocClassInstance();
}

uint64_t sub_252C64C2C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252C63FE0(a1);
}

id sub_252C64CC8@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = 8;
  v3 = *(v2 + 16);
  *(a1 + 8) = v3;
  return v3;
}

uint64_t dispatch thunk of ControlHomeModifyingFlow.execute()(uint64_t a1)
{
  v4 = *(*v1 + 184);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25293B808;

  return v8(a1);
}

uint64_t HomeAttributeType.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 0x64656C62616E65;
    case 2:
      return 0x656E746867697262;
    case 3:
      return 6649192;
    case 4:
      return 0x6974617275746173;
    case 5:
      return 0x6C6156726F6C6F63;
    case 6:
      return 0x74617265706D6574;
    case 7:
      return 0x79746964696D7568;
    case 8:
      return 1801678700;
    case 9:
      v2 = 1769172848;
      goto LABEL_40;
    case 10:
      return 0x6573696172;
    case 11:
      v2 = 1635020658;
      goto LABEL_40;
    case 12:
    case 21:
    case 39:
    case 42:
    case 51:
      return 0xD000000000000011;
    case 13:
    case 23:
    case 33:
      return 0xD000000000000013;
    case 14:
    case 30:
    case 36:
    case 67:
      return 0xD000000000000012;
    case 15:
      return 0xD000000000000010;
    case 16:
      return 0x4C6C6F72746E6F63;
    case 17:
      return 0xD000000000000010;
    case 18:
      return 0xD000000000000010;
    case 19:
      return 0xD000000000000010;
    case 20:
    case 55:
    case 56:
      v3 = 10;
      return v3 | 0xD000000000000010;
    case 22:
      return 0x646F4D676E697773;
    case 24:
    case 29:
    case 35:
    case 53:
      v3 = 5;
      return v3 | 0xD000000000000010;
    case 25:
      return 0x4D6D6172676F7270;
    case 26:
      v2 = 1634891108;
      goto LABEL_40;
    case 27:
      return 0x7265776F70;
    case 28:
      return 0xD000000000000010;
    case 31:
      return 0x746544656B6F6D73;
    case 32:
    case 37:
    case 54:
      return 0xD000000000000016;
    case 34:
      return 0xD000000000000017;
    case 38:
      return 0x44746361746E6F63;
    case 40:
      return 0x657465446B61656CLL;
    case 41:
      return 0x65446E6F69746F6DLL;
    case 43:
      return 0x4C79726574746162;
    case 44:
      return 0x676E696772616863;
    case 45:
      return 0x6574746142776F6CLL;
    case 46:
      return 0x6573556E69;
    case 47:
      return 0xD000000000000018;
    case 48:
      return 0x68437265746C6966;
    case 49:
      return 0x694C7265746C6966;
    case 50:
      return 0x76654C7265746177;
    case 52:
      return 0x6146737574617473;
    case 57:
      return 0xD00000000000001ELL;
    case 58:
      return 0x6E6544656E6F7A6FLL;
    case 59:
      return 0xD000000000000010;
    case 60:
      return 0x746E756F63;
    case 61:
      v2 = 1633906540;
LABEL_40:
      result = v2 | 0x6E6F697400000000;
      break;
    case 62:
      result = 0x726F746E65766E69;
      break;
    case 63:
      result = 0x696C696261706163;
      break;
    case 64:
      result = 1852141679;
      break;
    case 65:
      result = 0x616964656DLL;
      break;
    case 66:
      result = 0xD000000000000010;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

uint64_t sub_252C65520(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84F90];
    do
    {
      v4 = *v2++;
      v5 = HomeAttributeType.description.getter(v4);
      v7 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_2529F7A80(0, *(v3 + 2) + 1, 1, v3);
      }

      v9 = *(v3 + 2);
      v8 = *(v3 + 3);
      if (v9 >= v8 >> 1)
      {
        v3 = sub_2529F7A80((v8 > 1), v9 + 1, 1, v3);
      }

      *(v3 + 2) = v9 + 1;
      v10 = &v3[16 * v9];
      *(v10 + 4) = v5;
      *(v10 + 5) = v7;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v11 = MEMORY[0x2530AD730](v3, MEMORY[0x277D837D0]);
  v13 = v12;

  MEMORY[0x2530AD570](v11, v13);

  return 0;
}

uint64_t sub_252C65640(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x737569736C6563;
  v3 = 7894380;
  v4 = 0x73646E6F636573;
  if (a1 != 5)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (a1 != 4)
  {
    v3 = v4;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 == 2)
  {
    v1 = 0x65686E6572686166;
  }

  if (a1 == 1)
  {
    v1 = 0x746E6563726570;
  }

  if (a1 <= 2)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t HomeUserTask.description.getter()
{
  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v1 = sub_252E37FB4();
  MEMORY[0x2530AD570](v1);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  sub_252E376B4();
  v2 = sub_252E37D94();
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E8D5D0);
  v3 = [v0 taskType];
  v4 = 0xE700000000000000;
  v5 = 0x6E776F6E6B6E75;
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      v8 = 0xE300000000000000;
      v7 = 7628135;
    }

    else
    {
      if (v3 == 6)
      {
        v5 = 0x656C67676F74;
        v4 = 0xE600000000000000;
      }

      v9 = v3 == 5;
      if (v3 == 5)
      {
        v7 = 0x6567726154746567;
      }

      else
      {
        v7 = v5;
      }

      if (v9)
      {
        v8 = 0xE900000000000074;
      }

      else
      {
        v8 = v4;
      }
    }
  }

  else if (v3 == 1)
  {
    v7 = 7628147;
    v8 = 0xE300000000000000;
  }

  else
  {
    if (v3 == 3)
    {
      v5 = 0x6573616572636564;
      v4 = 0xE800000000000000;
    }

    v6 = v3 == 2;
    if (v3 == 2)
    {
      v7 = 0x6573616572636E69;
    }

    else
    {
      v7 = v5;
    }

    if (v6)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v4;
    }
  }

  MEMORY[0x2530AD570](v7, v8);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E8D5F0);
  v10 = HomeAttributeType.description.getter([v0 attribute]);
  MEMORY[0x2530AD570](v10);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E69DD0);
  [v0 value];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD0, &unk_252E3E540);
  v11 = sub_252E36F94();
  MEMORY[0x2530AD570](v11);

  MEMORY[0x2530AD570](0x202020202020200ALL, 0xEA00000000007D20);
  return 0;
}

uint64_t HomeAttributeValue.description.getter()
{
  v1 = v0;
  v2 = [v0 type];
  if (v2 <= 3)
  {
    switch(v2)
    {
      case 1:
        sub_252E379F4();
        MEMORY[0x2530AD570](60, 0xE100000000000000);
        swift_getObjectType();
        v15 = sub_252E37FB4();
        MEMORY[0x2530AD570](v15);

        MEMORY[0x2530AD570](8250, 0xE200000000000000);
        v68 = sub_252E376B4();
        v16 = sub_252E37D94();
        MEMORY[0x2530AD570](v16);

        MEMORY[0x2530AD570](0xD00000000000003BLL, 0x8000000252E8D8D0);
        v17 = [v0 BOOLValue];
        v18 = v17 == 0;
        if (v17)
        {
          v7 = 1702195828;
        }

        else
        {
          v7 = 0x65736C6166;
        }

        if (v18)
        {
          v6 = 0xE500000000000000;
        }

        else
        {
          v6 = 0xE400000000000000;
        }

        goto LABEL_68;
      case 2:
        v34 = 0x6E776F6E6B6E75;
        sub_252E379F4();
        MEMORY[0x2530AD570](60, 0xE100000000000000);
        swift_getObjectType();
        v42 = sub_252E37FB4();
        MEMORY[0x2530AD570](v42);

        MEMORY[0x2530AD570](8250, 0xE200000000000000);
        v74 = sub_252E376B4();
        v43 = sub_252E37D94();
        MEMORY[0x2530AD570](v43);

        MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E8D850);
        [v0 doubleValue];
        sub_252E37374();
        goto LABEL_53;
      case 3:
        sub_252E379F4();
        MEMORY[0x2530AD570](60, 0xE100000000000000);
        swift_getObjectType();
        v8 = sub_252E37FB4();
        MEMORY[0x2530AD570](v8);

        MEMORY[0x2530AD570](8250, 0xE200000000000000);
        v66 = sub_252E376B4();
        v9 = sub_252E37D94();
        MEMORY[0x2530AD570](v9);

        MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E8D7F0);
        v10 = [v0 stringValue];
        if (v10)
        {
          v11 = v10;
          sub_252E36F34();
        }

        v34 = 0x6E776F6E6B6E75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
        v37 = sub_252E36F94();
LABEL_52:
        MEMORY[0x2530AD570](v37);

LABEL_53:
        MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E8D830);
        v62 = [v0 unit];
        v6 = 0xE700000000000000;
        if (v62 <= 2)
        {
          if (v62 == 1)
          {
            v34 = 0x746E6563726570;
          }

          else if (v62 == 2)
          {
            v34 = 0x65686E6572686166;
            v6 = 0xEA00000000007469;
          }

          goto LABEL_65;
        }

        switch(v62)
        {
          case 3:
            v63 = 0x7569736C6563;
            break;
          case 4:
            v6 = 0xE300000000000000;
            v34 = 7894380;
            goto LABEL_65;
          case 5:
            v63 = 0x646E6F636573;
            break;
          default:
LABEL_65:
            v7 = v34;
LABEL_68:
            v61 = v6;
            goto LABEL_69;
        }

        v34 = v63 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
        goto LABEL_65;
    }

    goto LABEL_22;
  }

  if (v2 <= 5)
  {
    if (v2 != 4)
    {
      sub_252E379F4();
      MEMORY[0x2530AD570](60, 0xE100000000000000);
      swift_getObjectType();
      v3 = sub_252E37FB4();
      MEMORY[0x2530AD570](v3);

      MEMORY[0x2530AD570](8250, 0xE200000000000000);
      v65 = sub_252E376B4();
      v4 = sub_252E37D94();
      MEMORY[0x2530AD570](v4);

      MEMORY[0x2530AD570](0xD000000000000039, 0x8000000252E8D7B0);
      v5 = [v0 limitValue];
      if (v5 == 2)
      {
        v6 = 0xE300000000000000;
        v7 = 7889261;
      }

      else if (v5 == 1)
      {
        v6 = 0xE300000000000000;
        v7 = 7235949;
      }

      else
      {
        v7 = 0x6E776F6E6B6E75;
        v6 = 0xE700000000000000;
      }

      goto LABEL_68;
    }

    v34 = 0x6E776F6E6B6E75;
    sub_252E379F4();
    MEMORY[0x2530AD570](60, 0xE100000000000000);
    swift_getObjectType();
    v35 = sub_252E37FB4();
    MEMORY[0x2530AD570](v35);

    MEMORY[0x2530AD570](8250, 0xE200000000000000);
    v72 = sub_252E376B4();
    v36 = sub_252E37D94();
    MEMORY[0x2530AD570](v36);

    MEMORY[0x2530AD570](0xD00000000000003BLL, 0x8000000252E8D890);
    [v0 integerValue];
    v37 = sub_252E37D94();
    goto LABEL_52;
  }

  if (v2 != 6)
  {
    if (v2 == 8)
    {
      sub_252E379F4();
      MEMORY[0x2530AD570](60, 0xE100000000000000);
      swift_getObjectType();
      v12 = sub_252E37FB4();
      MEMORY[0x2530AD570](v12);

      MEMORY[0x2530AD570](8250, 0xE200000000000000);
      v67 = sub_252E376B4();
      v13 = sub_252E37D94();
      MEMORY[0x2530AD570](v13);

      MEMORY[0x2530AD570](0xD00000000000003FLL, 0x8000000252E8D730);
      v14 = [v0 cleaningJob];
      if (v14)
      {
        goto LABEL_32;
      }

      goto LABEL_34;
    }

LABEL_22:
    sub_252E379F4();
    MEMORY[0x2530AD570](60, 0xE100000000000000);
    swift_getObjectType();
    v19 = sub_252E37FB4();
    MEMORY[0x2530AD570](v19);

    MEMORY[0x2530AD570](8250, 0xE200000000000000);
    v69 = sub_252E376B4();
    v20 = sub_252E37D94();
    MEMORY[0x2530AD570](v20);

    MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E8D610);
    v21 = HomeAttributeValueType.description.getter([v0 type]);
    MEMORY[0x2530AD570](v21);

    MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E8D630);
    v22 = [v0 BOOLValue];
    v23 = v22 == 0;
    if (v22)
    {
      v24 = 1702195828;
    }

    else
    {
      v24 = 0x65736C6166;
    }

    if (v23)
    {
      v25 = 0xE500000000000000;
    }

    else
    {
      v25 = 0xE400000000000000;
    }

    MEMORY[0x2530AD570](v24, v25);

    MEMORY[0x2530AD570](0xD000000000000020, 0x8000000252E8D650);
    v70 = [v0 integerValue];
    v26 = sub_252E36FB4();
    MEMORY[0x2530AD570](v26);

    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E8D680);
    [v0 doubleValue];
    v71 = v27;
    v28 = sub_252E36FB4();
    MEMORY[0x2530AD570](v28);

    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E8D6A0);
    v29 = [v0 stringValue];
    if (v29)
    {
      v30 = v29;
      v31 = sub_252E36F34();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v44 = sub_252E36FB4();
    MEMORY[0x2530AD570](v44);

    MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E8D6C0);
    v45 = [v1 limitValue];
    v46 = 0xE700000000000000;
    v47 = 7235949;
    if (v45 == 1)
    {
      v46 = 0xE300000000000000;
    }

    else
    {
      v47 = 0x6E776F6E6B6E75;
    }

    v48 = v45 == 2;
    if (v45 == 2)
    {
      v49 = 7889261;
    }

    else
    {
      v49 = v47;
    }

    if (v48)
    {
      v50 = 0xE300000000000000;
    }

    else
    {
      v50 = v46;
    }

    MEMORY[0x2530AD570](v49, v50);

    MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E8D6E0);
    v51 = [v1 rangeValue];
    if (v51)
    {
      v52 = v51;
      v53 = [v51 description];

      v54 = sub_252E36F34();
      v56 = v55;
    }

    else
    {
      v54 = 0;
      v56 = 0;
    }

    v57 = sub_252E36F94();
    MEMORY[0x2530AD570](v57);

    MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E8D700);
    v58 = [v1 cleaningJob];
    if (v58)
    {
      v59 = v58;
      v60 = [v58 description];

      sub_252E36F34();
    }

    goto LABEL_50;
  }

  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v38 = sub_252E37FB4();
  MEMORY[0x2530AD570](v38);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  v73 = sub_252E376B4();
  v39 = sub_252E37D94();
  MEMORY[0x2530AD570](v39);

  MEMORY[0x2530AD570](0xD000000000000039, 0x8000000252E8D770);
  v14 = [v0 rangeValue];
  if (v14)
  {
LABEL_32:
    v40 = v14;
    v41 = [v14 description];

    sub_252E36F34();
  }

LABEL_34:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
LABEL_50:
  v7 = sub_252E36F94();
LABEL_69:
  MEMORY[0x2530AD570](v7, v61);

  MEMORY[0x2530AD570](0x202020202020200ALL, 0xEE007D2020202020);
  return 0;
}

id sub_252C66740(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_252E36F04();

  return v5;
}

uint64_t HomeAttributeRange.description.getter()
{
  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v1 = sub_252E37FB4();
  MEMORY[0x2530AD570](v1);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  sub_252E376B4();
  v2 = sub_252E37D94();
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E8D910);
  [v0 lowerValue];
  sub_252E37374();
  MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E8D940);
  [v0 upperValue];
  sub_252E37374();
  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E8D970);
  return 0;
}

uint64_t sub_252C66950(uint64_t a1)
{
  v72 = sub_252E32E84();
  v2 = *(v72 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 128);
  if (!*(v5 + 16))
  {
    return 1;
  }

  v6 = *(a1 + 80);
  v81 = *(a1 + 64);
  v82 = v6;
  v7 = *(a1 + 112);
  v83 = *(a1 + 96);
  v84 = v7;
  v8 = *(a1 + 16);
  v77 = *a1;
  v78 = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v85 = v5;
  v79 = v9;
  v80 = v10;
  memcpy(v86, (a1 + 136), sizeof(v86));
  v11 = sub_252BAC7E4();
  type metadata accessor for HomeStore();
  v12 = static HomeStore.shared.getter();
  v13 = HomeStore.scenes(matching:)(v11);
  LOBYTE(a1) = v14;

  if ((a1 & 1) == 0)
  {
    v15 = v13 & 0xFFFFFFFFFFFFFF8;
    if (v13 >> 62)
    {
      goto LABEL_57;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {

      v11 = 0;
      v63 = v13 + 32;
      v64 = v13 & 0xC000000000000001;
      v70 = (v2 + 8);
      v17 = MEMORY[0x277D84F90];
      v61 = v15;
      v62 = v13;
      v60 = i;
      while (1)
      {
        if (v11 == i)
        {
          sub_252929F10(v13, 0);
          return 1;
        }

        if (v64)
        {
          v19 = MEMORY[0x2530ADF00](v11, v13);
          v20 = __OFADD__(v11++, 1);
          if (v20)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v11 >= *(v15 + 16))
          {
            goto LABEL_56;
          }

          v18 = *(v63 + 8 * v11);

          v20 = __OFADD__(v11++, 1);
          if (v20)
          {
            goto LABEL_55;
          }
        }

        v68 = v11;
        v67 = v19;
        v21 = [*(v19 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
        v22 = sub_25292A2F8();
        sub_2529E6100();
        v23 = sub_252E373A4();

        v76 = v17;
        v66 = v23;
        v69 = v22;
        if ((v23 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          sub_252E37874();
          sub_252E373E4();
          v13 = *(&v77 + 1);
          v11 = v77;
          v24 = *(&v78 + 1);
          a1 = v78;
          v2 = v79;
        }

        else
        {
          v25 = -1 << *(v23 + 32);
          a1 = ~v25;
          v26 = -v25;
          v27 = v26 < 64 ? ~(-1 << v26) : -1;
          v2 = v27 & *(v23 + 56);

          v24 = 0;
          v11 = v23;
          v13 = v23 + 56;
        }

        v65 = a1;
        v15 = (a1 + 64) >> 6;
        v73 = v13;
        if ((v11 & 0x8000000000000000) == 0)
        {
          break;
        }

        while (1)
        {
          v33 = sub_252E37904();
          if (!v33)
          {
            break;
          }

          v74 = v33;
          swift_dynamicCast();
          v32 = v75;
          v30 = v24;
          v31 = v2;
          if (!v75)
          {
            break;
          }

LABEL_25:
          v34 = v11;
          type metadata accessor for Action();
          v35 = swift_allocObject();
          *(v35 + 16) = v32;
          v36 = v32;
          v37 = [v36 uniqueIdentifier];
          v38 = v71;
          sub_252E32E64();

          v39 = sub_252E32E24();
          v41 = v40;
          (*v70)(v38, v72);
          *(v35 + 24) = v39;
          *(v35 + 32) = v41;
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {

            *(v35 + 40) = 1;
            v11 = v34;
            v13 = v73;
          }

          else
          {
            objc_opt_self();
            v11 = v34;
            if (swift_dynamicCastObjCClass())
            {

              *(v35 + 40) = 2;
              v13 = v73;
            }

            else
            {
              objc_opt_self();
              v42 = swift_dynamicCastObjCClass();
              v13 = v73;
              if (v42)
              {

                v43 = 3;
              }

              else
              {
                objc_opt_self();
                v44 = swift_dynamicCastObjCClass();

                if (!v44)
                {
                  *(v35 + 40) = 0;
                  goto LABEL_34;
                }

                v43 = 4;
              }

              *(v35 + 40) = v43;
            }
          }

LABEL_34:
          MEMORY[0x2530AD700]();
          if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v45 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          a1 = &v76;
          sub_252E372D4();
          v17 = v76;
          v24 = v30;
          v2 = v31;
          if ((v11 & 0x8000000000000000) == 0)
          {
            goto LABEL_17;
          }
        }

LABEL_40:
        sub_25291AE30();

        if (v17 >> 62)
        {
          a1 = sub_252E378C4();
        }

        else
        {
          a1 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v15 = v61;
        v13 = v62;
        i = v60;
        v11 = v68;

        v17 = MEMORY[0x277D84F90];
        if (!a1)
        {
          sub_252929F10(v13, 0);
          if (qword_27F53F520 != -1)
          {
            swift_once();
          }

          v47 = sub_252E36AD4();
          __swift_project_value_buffer(v47, qword_27F544E08);
          v48 = sub_252E36AC4();
          v49 = sub_252E374C4();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&dword_252917000, v48, v49, "Founds scene with empty actions. Invalidating candidate", v50, 2u);
            goto LABEL_62;
          }

          goto LABEL_64;
        }
      }

LABEL_17:
      v28 = v24;
      v29 = v2;
      v30 = v24;
      if (v2)
      {
LABEL_21:
        v31 = (v29 - 1) & v29;
        v32 = *(*(v11 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
        if (!v32)
        {
          goto LABEL_40;
        }

        goto LABEL_25;
      }

      while (1)
      {
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v30 >= v15)
        {
          v2 = 0;
          goto LABEL_40;
        }

        v29 = *(v13 + 8 * v30);
        ++v28;
        if (v29)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      ;
    }
  }

  sub_252929F10(v13, a1 & 1);
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v51 = sub_252E36AD4();
  __swift_project_value_buffer(v51, qword_27F544E08);

  v48 = sub_252E36AC4();
  v52 = sub_252E374C4();

  if (os_log_type_enabled(v48, v52))
  {
    v50 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *&v77 = v53;
    *v50 = 136315138;
    v54 = type metadata accessor for HomeFilter();
    v55 = MEMORY[0x2530AD730](v11, v54);
    v57 = v56;

    v58 = sub_252BE2CE0(v55, v57, &v77);

    *(v50 + 4) = v58;
    _os_log_impl(&dword_252917000, v48, v52, "Couldn't get matching scenes for filters %s. Invalidating candidate", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v53);
    MEMORY[0x2530AED00](v53, -1, -1);
LABEL_62:
    MEMORY[0x2530AED00](v50, -1, -1);
  }

  else
  {
  }

LABEL_64:

  return 0;
}

uint64_t sub_252C6712C(char *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = a1;
  v3 = 32;
  v4 = MEMORY[0x277D84F90];
  v5 = *(a1 + 2);
  while (1)
  {
    memcpy(__dst, &v2[v3], sizeof(__dst));
    memcpy(__src, &v2[v3], sizeof(__src));
    sub_2529353AC(__dst, v20);
    sub_252A13A70();
    if ((v6 & 1) != 0 && !*(__dst[13] + 16) && !*(__dst[20] + 16) && !*(__dst[28] + 16) && !*(__dst[19] + 16) && !*(__dst[21] + 16) && !*(__dst[14] + 16))
    {
      break;
    }

    sub_252935408(__dst);
LABEL_11:
    v3 += 504;
    if (!--v5)
    {
      return v4;
    }
  }

  v7 = *(__dst[15] + 16);
  sub_252935408(__dst);
  if (v7 || LOBYTE(__dst[39]) == 2 || (__dst[39] & 1) == 0)
  {
    goto LABEL_11;
  }

  if (qword_27F53F520 != -1)
  {
LABEL_42:
    swift_once();
  }

  v8 = sub_252E36AD4();
  __swift_project_value_buffer(v8, qword_27F544E08);
  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000056, 0x8000000252E8D990);
  v9 = MEMORY[0x2530AD730](v2, &type metadata for HomeAutomationIntent);
  MEMORY[0x2530AD570](v9);

  sub_252CC3D90(__src[0], __src[1], 0xD000000000000095, 0x8000000252E8D9F0);

  v10 = 0;
  v11 = v2 + 32;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v2 = &v11[504 * v10];
    for (i = v10; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      memcpy(__src, v2, sizeof(__src));
      v10 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_41;
      }

      memcpy(v20, v2, sizeof(v20));
      sub_2529353AC(__src, v18);
      sub_252A13A70();
      if (v13 & 1) != 0 && !*(__src[13] + 16) && !*(__src[20] + 16) && !*(__src[28] + 16) && !*(__src[19] + 16) && !*(__src[21] + 16) && !*(__src[14] + 16) && !*(__src[15] + 16) && LOBYTE(__src[39]) != 2 && (__src[39])
      {
        break;
      }

      sub_252935408(__src);
      v2 += 504;
      if (v10 == v1)
      {
        return v4;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2529AA480(0, *(v4 + 16) + 1, 1);
      v4 = v19;
    }

    v16 = *(v4 + 16);
    v15 = *(v4 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_2529AA480((v15 > 1), v16 + 1, 1);
      v4 = v19;
    }

    *(v4 + 16) = v16 + 1;
    memcpy((v4 + 504 * v16 + 32), __src, 0x1F8uLL);
  }

  while (v10 != v1);
  return v4;
}

uint64_t sub_252C674B8(__int128 *a1)
{
  v2 = *(a1 + 17);
  v3 = *(a1 + 24);
  if ((sub_2529A78B0(10, v3) || sub_2529A78B0(9, v3)) && sub_2529A78C8(1, v2))
  {
    v13 = a1[6];
    v14 = a1[7];
    v9 = a1[2];
    v10 = a1[3];
    v11 = a1[4];
    v12 = a1[5];
    v7 = *a1;
    v8 = a1[1];
    v15 = *(a1 + 16);
    v16 = a1[9];
    v17 = a1[10];
    v18 = a1[11];
    memcpy(v19, a1 + 200, sizeof(v19));
    sub_252A13A70();
    v5 = v4 ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_252C67588(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252C67630(a1);
}

uint64_t sub_252C67630(void *__src)
{
  *(v1 + 520) = __src;
  memcpy((v1 + 16), __src, 0x1F8uLL);

  return MEMORY[0x2822009F8](sub_252C676A4, 0, 0);
}

uint64_t sub_252C676A4()
{
  v82 = v1;
  memcpy(__dst, *(v1 + 520), 0x1F8uLL);
  v3 = sub_252BAC7E4();
  v4 = v3;
  if (v3 >> 62)
  {
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    __dst[0] = MEMORY[0x277D84F90];
    sub_252E37AB4();
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_41;
    }

    v7 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      type metadata accessor for HomeFilter.Builder();
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 7;
      *(v10 + 48) = 0u;
      *(v10 + 64) = 0u;
      *(v10 + 80) = 0u;
      *(v10 + 96) = 0u;
      *(v10 + 112) = 0u;
      *(v10 + 128) = 0u;
      *(v10 + 144) = 0u;
      *(v10 + 160) = 0u;
      *(v10 + 175) = 0;
      v11 = sub_252B72040(v9);

      v12 = (*(*v11 + 624))(4);

      (*(*v12 + 760))(v13);

      sub_252E37A94();
      v14 = *(__dst[0] + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    while (v5 != v7);
    v15 = __dst[0];
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  type metadata accessor for HomeStore();
  v16 = static HomeStore.shared.getter();
  v0 = HomeStore.accessories(matching:supporting:)(v4, 0);
  v18 = v17;

  if (v18)
  {
    sub_252929F10(v0, 1);

LABEL_16:
    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v22 = sub_252E36AD4();
    __swift_project_value_buffer(v22, qword_27F544E08);
    v23 = 0xD000000000000041;
    v24 = 0x8000000252E8DA90;
    v25 = 26;
    goto LABEL_19;
  }

  v19 = static HomeStore.shared.getter();
  v2 = HomeStore.accessories(matching:supporting:)(v15, 0);
  v21 = v20;

  if (v21)
  {
    sub_252929F10(v2, 1);

    sub_252929F10(v0, 0);
    goto LABEL_16;
  }

  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      sub_252E37DD4();
      type metadata accessor for Entity();
      v29 = v2;
      goto LABEL_27;
    }

LABEL_43:
    sub_252929F10(v2, 0);
    if (v5)
    {
      __dst[0] = v6;
      sub_252E37AB4();
      if (v5 < 0)
      {
        __break(1u);
        goto LABEL_68;
      }

      v50 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v51 = MEMORY[0x2530ADF00](v50, v4);
        }

        else
        {
          v51 = *(v4 + 8 * v50 + 32);
        }

        v52 = v51;
        ++v50;
        type metadata accessor for HomeFilter.Builder();
        v53 = swift_allocObject();
        *(v53 + 16) = 0;
        *(v53 + 24) = 0;
        *(v53 + 32) = 0;
        *(v53 + 40) = 7;
        *(v53 + 48) = 0u;
        *(v53 + 64) = 0u;
        *(v53 + 80) = 0u;
        *(v53 + 96) = 0u;
        *(v53 + 112) = 0u;
        *(v53 + 128) = 0u;
        *(v53 + 144) = 0u;
        *(v53 + 160) = 0u;
        *(v53 + 175) = 0;
        v54 = sub_252B72040(v52);

        v55 = (*(*v54 + 624))(27);

        (*(*v55 + 760))(v56);

        sub_252E37A94();
        v57 = *(__dst[0] + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      while (v5 != v50);

      v58 = __dst[0];
    }

    else
    {

      v58 = MEMORY[0x277D84F90];
    }

    v59 = static HomeStore.shared.getter();
    v60 = HomeStore.accessories(matching:supporting:)(v58, 0);
    v62 = v61;

    if (v62)
    {
      sub_252929F10(v60, 1);
      sub_252929F10(v0, 0);
      if (qword_27F53F520 == -1)
      {
LABEL_54:
        v63 = sub_252E36AD4();
        __swift_project_value_buffer(v63, qword_27F544E08);
        v23 = 0xD00000000000002ALL;
        v24 = 0x8000000252E8DC00;
        v25 = 49;
LABEL_19:
        sub_252CC4050(v23, v24, 0xD00000000000008FLL, 0x8000000252E8DAE0, 0xD000000000000010, 0x8000000252E8DB70, v25);
LABEL_20:
        v26 = MEMORY[0x277D84F90];
        goto LABEL_21;
      }

LABEL_68:
      swift_once();
      goto LABEL_54;
    }

    if (v60 >> 62)
    {
      if (sub_252E378C4())
      {
        type metadata accessor for Entity();

        v64 = sub_252E37B14();
        sub_252929F10(v60, 0);
LABEL_58:
        if (v0 >> 62)
        {
          type metadata accessor for Entity();

          v65 = sub_252E37B14();
          sub_252929F10(v0, 0);
        }

        else
        {

          sub_252E37DD4();
          type metadata accessor for Entity();
          v65 = v0;
        }

        v66 = sub_252AD3504(v64, v65);

        if (v66)
        {
          sub_252929F10(v0, 0);
          sub_252929F10(v60, 0);
          if (qword_27F53F520 != -1)
          {
            swift_once();
          }

          v67 = sub_252E36AD4();
          __swift_project_value_buffer(v67, qword_27F544E08);
          v68 = sub_252E36AC4();
          v69 = sub_252E374C4();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            *v70 = 0;
            _os_log_impl(&dword_252917000, v68, v69, "Found motorizedDoors in same room as door locks, creating candidate", v70, 2u);
            MEMORY[0x2530AED00](v70, -1, -1);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_252E3C290;
          _s7BuilderCMa_1();
          swift_allocObject();
          sub_252E1E238();
          memcpy(__dst, (v1 + 16), 0x1F8uLL);
          v71 = sub_252E1EBE8(__dst);

          v72 = *(v71 + 152);
          *(v71 + 152) = &unk_2864A76D8;

          v39 = &unk_2864A7700;
          goto LABEL_35;
        }
      }
    }

    else if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      sub_252E37DD4();
      type metadata accessor for Entity();
      v64 = v60;
      goto LABEL_58;
    }

    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v73 = sub_252E36AD4();
    __swift_project_value_buffer(v73, qword_27F544E08);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E8DB90);
    v74 = type metadata accessor for Accessory();
    v75 = MEMORY[0x2530AD730](v0, v74);
    v77 = v76;
    sub_252929F10(v0, 0);
    MEMORY[0x2530AD570](v75, v77);

    MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E8DC30);
    v78 = MEMORY[0x2530AD730](v60, v74);
    v80 = v79;
    sub_252929F10(v60, 0);
    MEMORY[0x2530AD570](v78, v80);

    MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E8DBE0);
    v48 = __dst[0];
    v49 = __dst[1];
    goto LABEL_74;
  }

LABEL_41:
  if (!sub_252E378C4())
  {
    goto LABEL_43;
  }

  type metadata accessor for Entity();

  v29 = sub_252E37B14();
  sub_252929F10(v2, 0);
LABEL_27:
  if (v0 >> 62)
  {
    type metadata accessor for Entity();

    v30 = sub_252E37B14();
    sub_252929F10(v0, 0);
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for Entity();
    v30 = v0;
  }

  v31 = sub_252AD3504(v29, v30);

  if ((v31 & 1) == 0)
  {
    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v40 = sub_252E36AD4();
    __swift_project_value_buffer(v40, qword_27F544E08);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E8DB90);
    v41 = type metadata accessor for Accessory();
    v42 = MEMORY[0x2530AD730](v0, v41);
    v44 = v43;
    sub_252929F10(v0, 0);
    MEMORY[0x2530AD570](v42, v44);

    MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E8DBC0);
    v45 = MEMORY[0x2530AD730](v2, v41);
    v47 = v46;
    sub_252929F10(v2, 0);
    MEMORY[0x2530AD570](v45, v47);

    MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E8DBE0);
    v48 = __dst[0];
    v49 = __dst[1];
LABEL_74:
    sub_252CC3D90(v48, v49, 0xD00000000000008FLL, 0x8000000252E8DAE0);

    goto LABEL_20;
  }

  sub_252929F10(v0, 0);
  sub_252929F10(v2, 0);
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v32 = sub_252E36AD4();
  __swift_project_value_buffer(v32, qword_27F544E08);
  v33 = sub_252E36AC4();
  v34 = sub_252E374C4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_252917000, v33, v34, "Found garageDoorEntities in same room as door locks, creating candidate", v35, 2u);
    MEMORY[0x2530AED00](v35, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_252E3C290;
  _s7BuilderCMa_1();
  swift_allocObject();
  sub_252E1E238();
  memcpy(__dst, (v1 + 16), 0x1F8uLL);
  v37 = sub_252E1EBE8(__dst);

  v38 = *(v37 + 152);
  *(v37 + 152) = &unk_2864A7688;

  v39 = &unk_2864A76B0;
LABEL_35:
  sub_252E1F258(v39);

  sub_252E1E4F8(v36 + 32);

  v26 = v36;
LABEL_21:
  v27 = *(v1 + 8);

  return v27(v26);
}

void sub_252C6847C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544CB8);
    sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E8DD60, 0xD000000000000083, 0x8000000252E8DC80);
    goto LABEL_55;
  }

  v5 = a2;
  v6 = [v5 type];
  if (a1 > 9)
  {
    if (a1 != 10)
    {
      if (a1 == 13)
      {
        if (v6 == 3)
        {
          v10 = [v5 stringValue];
          if (v10)
          {
            v11 = v10;
            v12 = sub_252E36F34();
            v14 = v13;

            if (qword_27F53F460 != -1)
            {
              swift_once();
            }

            v15 = off_27F544728;
            if (*(off_27F544728 + 2))
            {
              v16 = sub_252A44A10(v12, v14);
              v18 = v17;

              if (v18)
              {
                v8 = *(v15[7] + 8 * v16);
                goto LABEL_41;
              }
            }

            else
            {
            }

            goto LABEL_54;
          }
        }

        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        v24 = sub_252E36AD4();
        __swift_project_value_buffer(v24, qword_27F544CB8);
        v25 = "lue to double equivalent";
        v26 = 0xD000000000000037;
        goto LABEL_53;
      }

      goto LABEL_23;
    }

    if (v6 != 1)
    {
      if (qword_27F53F4B0 != -1)
      {
        swift_once();
      }

      v28 = sub_252E36AD4();
      __swift_project_value_buffer(v28, qword_27F544CB8);
      v25 = " type for attribute position";
      v26 = 0xD000000000000029;
      goto LABEL_53;
    }

    if (qword_27F53F440 != -1)
    {
      swift_once();
    }

    v20 = off_27F544708;
LABEL_33:
    v21 = [v5 BOOLValue];
    if (v20[2])
    {
      v22 = sub_252A456F0(v21);
      if (v23)
      {
        v8 = *(v20[7] + 8 * v22);
        goto LABEL_41;
      }
    }

    goto LABEL_54;
  }

  if (a1 == 8)
  {
    if (v6 != 1)
    {
      if (qword_27F53F4B0 != -1)
      {
        swift_once();
      }

      v27 = sub_252E36AD4();
      __swift_project_value_buffer(v27, qword_27F544CB8);
      v25 = " type for attribute raise";
      v26 = 0xD000000000000028;
      goto LABEL_53;
    }

    if (qword_27F53F450 != -1)
    {
      swift_once();
    }

    v20 = qword_27F544718;
    goto LABEL_33;
  }

  if (a1 == 9)
  {
    if (v6 != 4)
    {
      if ([v5 type] == 2)
      {
        [v5 doubleValue];
        if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v7 <= -9.22337204e18)
          {
            __break(1u);
          }

          else if (v7 < 9.22337204e18)
          {
            v8 = v7;
LABEL_41:
            *(a3 + 24) = MEMORY[0x277D83B88];
LABEL_42:

            *a3 = v8;
            return;
          }

          __break(1u);
          goto LABEL_76;
        }

        __break(1u);
      }

      else if (qword_27F53F4B0 == -1)
      {
LABEL_52:
        v31 = sub_252E36AD4();
        __swift_project_value_buffer(v31, qword_27F544CB8);
        v25 = "ute securitySystemState";
        v26 = 0xD00000000000002CLL;
        goto LABEL_53;
      }

      swift_once();
      goto LABEL_52;
    }

LABEL_40:
    v8 = [v5 integerValue];
    goto LABEL_41;
  }

LABEL_23:
  if (v6 == 1)
  {
    v19 = [v5 BOOLValue];
    *(a3 + 24) = MEMORY[0x277D839B0];

    *a3 = v19;
    return;
  }

  if ([v5 type] == 4)
  {
    goto LABEL_40;
  }

  if ([v5 type] == 2)
  {
    [v5 doubleValue];
    v30 = v29;
    *(a3 + 24) = MEMORY[0x277D839F8];

    *a3 = v30;
    return;
  }

  if ([v5 type] != 5)
  {
    if ([v5 type] == 6)
    {
      v39 = [v5 rangeValue];
      if (v39)
      {
        v8 = v39;
        *(a3 + 24) = type metadata accessor for HomeAttributeRange();
        goto LABEL_42;
      }

      goto LABEL_54;
    }

    if ([v5 type] == 3)
    {
      v44 = [v5 stringValue];
      if (v44)
      {
        v45 = v44;
        v46 = sub_252E36F34();
        v48 = v47;

        *(a3 + 24) = MEMORY[0x277D837D0];
        *a3 = v46;
        *(a3 + 8) = v48;
        return;
      }

      goto LABEL_54;
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v49 = sub_252E36AD4();
    __swift_project_value_buffer(v49, qword_27F544CB8);
    v25 = "Received nil HomeAttributeValue";
    v26 = 0xD00000000000003ELL;
LABEL_53:
    sub_252CC3D90(v26, v25 | 0x8000000000000000, 0xD000000000000083, 0x8000000252E8DC80);
LABEL_54:

LABEL_55:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  if (qword_27F53F4B0 != -1)
  {
LABEL_76:
    swift_once();
  }

  v32 = sub_252E36AD4();
  __swift_project_value_buffer(v32, qword_27F544CB8);
  sub_252CC3D90(0xD000000000000028, 0x8000000252E8DDC0, 0xD000000000000083, 0x8000000252E8DC80);
  v33 = type metadata accessor for HomeAttributeValue();
  v34 = objc_allocWithZone(v33);
  v35 = sub_252E36F04();
  v36 = [v34 initWithIdentifier:0 displayString:v35];

  v37 = v36;
  [v37 setType_];
  [v37 setLimitValue_];

  LOBYTE(v35) = _s22HomeAutomationInternal0A14AttributeValueC2eeoiySbAC_ACtFZ_0(v5, v37);
  if (v35)
  {
    *(a3 + 24) = MEMORY[0x277D839F8];

    v38 = 0x4059000000000000;
  }

  else
  {
    v40 = objc_allocWithZone(v33);
    v41 = sub_252E36F04();
    v42 = [v40 initWithIdentifier:0 displayString:v41];

    v43 = v42;
    [v43 setType_];
    [v43 setLimitValue_];

    _s22HomeAutomationInternal0A14AttributeValueC2eeoiySbAC_ACtFZ_0(v5, v43);
    *(a3 + 24) = MEMORY[0x277D839F8];

    v38 = 0x3FF0000000000000;
  }

  *a3 = v38;
}

uint64_t sub_252C68CC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544730, &qword_252E57A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3EF90;
  *(inited + 32) = 0;
  v1 = type metadata accessor for HomeAttributeValue();
  v2 = objc_allocWithZone(v1);
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  v5 = v4;
  [v5 setBoolValue_];
  [v5 setType_];

  *(inited + 40) = v5;
  *(inited + 48) = vdupq_n_s64(1uLL);
  v6 = objc_allocWithZone(v1);
  v7 = sub_252E36F04();
  v8 = [v6 initWithIdentifier:0 displayString:v7];

  v9 = v8;
  [v9 setBoolValue_];
  [v9 setType_];

  *(inited + 64) = v9;
  *(inited + 72) = xmmword_252E3C290;
  v10 = objc_allocWithZone(v1);
  v11 = sub_252E36F04();
  v12 = [v10 initWithIdentifier:0 displayString:v11];

  v13 = v12;
  [v13 setBoolValue_];
  [v13 setType_];

  *(inited + 88) = v13;
  *(inited + 96) = xmmword_252E3C130;
  v14 = objc_allocWithZone(v1);
  v15 = sub_252E36F04();
  v16 = [v14 initWithIdentifier:0 displayString:v15];

  v17 = v16;
  [v17 setBoolValue_];
  [v17 setType_];

  *(inited + 112) = v17;
  *(inited + 120) = xmmword_252E57A60;
  v18 = objc_allocWithZone(v1);
  v19 = sub_252E36F04();
  v20 = [v18 initWithIdentifier:0 displayString:v19];

  v21 = v20;
  [v21 setBoolValue_];
  [v21 setType_];

  *(inited + 136) = v21;
  *(inited + 144) = 7;
  v22 = sub_252CC57EC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544738, &qword_252E57A98);
  result = swift_arrayDestroy();
  off_27F544700 = v22;
  return result;
}

void *sub_252C68FAC()
{
  result = sub_252CC6E48(&unk_2864A9C90);
  off_27F544708 = result;
  return result;
}

uint64_t sub_252C68FD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544740, &qword_252E57AA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3EF80;
  *(inited + 32) = 0;
  v1 = type metadata accessor for HomeAttributeValue();
  v2 = objc_allocWithZone(v1);
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  v5 = v4;
  [v5 setBoolValue_];
  [v5 setType_];

  *(inited + 40) = v5;
  *(inited + 48) = vdupq_n_s64(1uLL);
  v6 = objc_allocWithZone(v1);
  v7 = sub_252E36F04();
  v8 = [v6 initWithIdentifier:0 displayString:v7];

  v9 = v8;
  [v9 setBoolValue_];
  [v9 setType_];

  *(inited + 64) = v9;
  *(inited + 72) = xmmword_252E3C290;
  v10 = objc_allocWithZone(v1);
  v11 = sub_252E36F04();
  v12 = [v10 initWithIdentifier:0 displayString:v11];

  v13 = v12;
  [v13 setBoolValue_];
  [v13 setType_];

  *(inited + 88) = v13;
  *(inited + 96) = xmmword_252E57A70;
  v14 = objc_allocWithZone(v1);
  v15 = sub_252E36F04();
  v16 = [v14 initWithIdentifier:0 displayString:v15];

  v17 = v16;
  [v17 setBoolValue_];
  [v17 setType_];

  *(inited + 112) = v17;
  *(inited + 120) = 7;
  v18 = sub_252CC5814(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544748, &qword_252E57AA8);
  result = swift_arrayDestroy();
  off_27F544710 = v18;
  return result;
}

unint64_t sub_252C69250()
{
  result = sub_252CC6E34(&unk_2864A9C50);
  qword_27F544718 = result;
  return result;
}

uint64_t sub_252C69278()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544750, &qword_252E57AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3EF80;
  *(inited + 32) = 1;
  type metadata accessor for HomeAttributeValue();
  *(inited + 40) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D52415F59415741, 0xE800000000000000, 0);
  *(inited + 48) = xmmword_252E3C290;
  *(inited + 64) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x52415F544847494ELL, 0xE90000000000004DLL, 0);
  *(inited + 72) = xmmword_252E57A80;
  *(inited + 88) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D52415F59415453, 0xE800000000000000, 0);
  *(inited + 96) = xmmword_252E57A60;
  *(inited + 112) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x52545F4D52414C41, 0xEF44455245474749, 0);
  *(inited + 120) = 1;
  v1 = sub_252CC583C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544758, &qword_252E57AB8);
  result = swift_arrayDestroy();
  off_27F544720 = v1;
  return result;
}

uint64_t sub_252C693DC()
{
  v0 = sub_252CC6F34(&unk_2864A9CD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544760, &unk_252E57AC0);
  result = swift_arrayDestroy();
  off_27F544728 = v0;
  return result;
}

id sub_252C69438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_252DE99A0(a4, a5);
  v9 = *MEMORY[0x277CCF800];
  if (sub_252E36F34() == a1 && v10 == a2)
  {
    goto LABEL_26;
  }

  v12 = sub_252E37DB4();

  if (v12)
  {
    goto LABEL_27;
  }

  v13 = *MEMORY[0x277CCFB08];
  if (sub_252E36F34() == a1 && v14 == a2)
  {
LABEL_26:

LABEL_27:
    sub_252AEA788(a3, &v70);
    if (v72)
    {
      if (swift_dynamicCast())
      {
        if (qword_27F53F438 != -1)
        {
          swift_once();
        }

        v24 = off_27F544700;
        if (!*(off_27F544700 + 2))
        {
          goto LABEL_63;
        }

        v25 = (sub_252A488EC)();
        if ((v27 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_33;
      }

      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v16 = sub_252E37DB4();

  if (v16)
  {
    goto LABEL_27;
  }

  v17 = *MEMORY[0x277CCF838];
  if (sub_252E36F34() == a1 && v18 == a2)
  {
    goto LABEL_18;
  }

  v20 = sub_252E37DB4();

  if (v20)
  {
    goto LABEL_19;
  }

  v21 = *MEMORY[0x277CCFB40];
  if (sub_252E36F34() == a1 && v22 == a2)
  {
LABEL_18:

    goto LABEL_19;
  }

  v33 = sub_252E37DB4();

  if ((v33 & 1) == 0)
  {
    v34 = *MEMORY[0x277CCF848];
    if (sub_252E36F34() == a1 && v35 == a2)
    {
      goto LABEL_38;
    }

    v36 = sub_252E37DB4();

    if (v36)
    {
      goto LABEL_40;
    }

    v40 = *MEMORY[0x277CCFB50];
    if (sub_252E36F34() == a1 && v41 == a2)
    {
LABEL_38:

LABEL_40:
      sub_252AEA788(a3, &v70);
      if (!v72)
      {
        goto LABEL_58;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_42;
    }

    v42 = sub_252E37DB4();

    if (v42)
    {
      goto LABEL_40;
    }

    v43 = *MEMORY[0x277CCF858];
    if (sub_252E36F34() == a1 && v44 == a2)
    {
      goto LABEL_49;
    }

    v45 = sub_252E37DB4();

    if ((v45 & 1) == 0)
    {
      v55 = *MEMORY[0x277CCFB60];
      if (sub_252E36F34() == a1 && v56 == a2)
      {
LABEL_49:

        goto LABEL_51;
      }

      v57 = sub_252E37DB4();

      if ((v57 & 1) == 0)
      {
        sub_252AEA788(a3, &v70);
        if (v72)
        {
          if ((swift_dynamicCast() & 1) != 0 && v8 != 1)
          {
            v58 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
            v59 = sub_252E36F04();
            v60 = [v58 initWithIdentifier:0 displayString:v59];

            v32 = v60;
            [v32 setBoolValue_];
            [v32 setType_];
            goto LABEL_43;
          }
        }

        else
        {
          sub_252982F10(&v70);
        }

        sub_252AEA788(a3, &v70);
        if (v72)
        {
          if (swift_dynamicCast())
          {
LABEL_42:
            v37 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
            v38 = sub_252E36F04();
            v39 = [v37 initWithIdentifier:0 displayString:v38];

            v32 = v39;
            [v32 setIntegerValue_];
            [v32 setUnit_];
            [v32 setType_];
LABEL_43:

            return v32;
          }
        }

        else
        {
          sub_252982F10(&v70);
        }

        sub_252AEA788(a3, &v70);
        if (v72)
        {
          if (swift_dynamicCast())
          {
            v61 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
            v62 = sub_252E36F04();
            v63 = [v61 initWithIdentifier:0 displayString:v62];

            v32 = v63;
            [v32 setDoubleValue_];
            [v32 setUnit_];
            [v32 setType_];
            goto LABEL_43;
          }
        }

        else
        {
          sub_252982F10(&v70);
        }

        sub_252AEA788(a3, &v70);
        if (v72)
        {
          if (swift_dynamicCast())
          {
            type metadata accessor for HomeAttributeValue();
            return HomeAttributeValue.__allocating_init(stringValue:unit:)(v66, v68, v8);
          }
        }

        else
        {
          sub_252982F10(&v70);
        }

        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        v64 = sub_252E36AD4();
        __swift_project_value_buffer(v64, qword_27F544CB8);
        v70 = 0;
        v71 = 0xE000000000000000;
        sub_252E379F4();

        sub_252AEA788(a3, &v70);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E80, &qword_252E3DFA0);
        v65 = sub_252E36F94();
        MEMORY[0x2530AD570](v65);

        MEMORY[0x2530AD570](0x203A657079740ALL, 0xE700000000000000);
        MEMORY[0x2530AD570](0x6C616E6F6974704FLL, 0xED00003E796E413CLL);
        v49 = 0xD000000000000022;
        v50 = 0x8000000252E8DC50;
        goto LABEL_62;
      }
    }

LABEL_51:
    sub_252AEA788(a3, &v70);
    if (v72)
    {
      if (swift_dynamicCast())
      {
        if (qword_27F53F458 != -1)
        {
          swift_once();
        }

        v24 = off_27F544720;
        if (!*(off_27F544720 + 2))
        {
          goto LABEL_63;
        }

        v25 = (sub_252A488EC)();
        if ((v46 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_33;
      }

      goto LABEL_59;
    }

    goto LABEL_58;
  }

LABEL_19:
  sub_252AEA788(a3, &v70);
  if (!v72)
  {
LABEL_58:
    sub_252982F10(&v70);
    goto LABEL_59;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_59:
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v47 = sub_252E36AD4();
    __swift_project_value_buffer(v47, qword_27F544CB8);
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_252E379F4();
    v67 = v70;
    v69 = v71;
    MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E8DD10);
    sub_252AEA788(a3, &v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E80, &qword_252E3DFA0);
    v48 = sub_252E36F94();
    MEMORY[0x2530AD570](v48);

    MEMORY[0x2530AD570](0x203A657079740ALL, 0xE700000000000000);
    MEMORY[0x2530AD570](a1, a2);
    MEMORY[0x2530AD570](0xD00000000000002DLL, 0x8000000252E8DD30);
    v49 = v67;
    v50 = v69;
LABEL_62:
    sub_252CC3D90(v49, v50, 0xD000000000000083, 0x8000000252E8DC80);

    goto LABEL_63;
  }

  v23 = v66;
  if (qword_27F53F448 != -1)
  {
    swift_once();
    v23 = v66;
  }

  v24 = off_27F544710;
  if (!*(off_27F544710 + 2))
  {
    goto LABEL_63;
  }

  v25 = sub_252A488EC(v23);
  if ((v26 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_33:
  v28 = v24[7] + 16 * v25;
  v30 = *v28;
  v29 = *(v28 + 8);
  v31 = *v28;
  if (!v30)
  {
LABEL_63:
    v51 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v52 = sub_252E36F04();
    v53 = [v51 initWithIdentifier:0 displayString:v52];

    v32 = v53;
    [v32 setBoolValue_];
    [v32 setType_];

    return v32;
  }

  return v31;
}

id sub_252C69EA4(void *a1, uint64_t a2)
{
  v4 = [a1 characteristicType];
  v5 = sub_252E36F34();
  v7 = v6;

  v8 = [a1 metadata];
  if (v8 && (v9 = v8, v10 = [v8 units], v9, v10))
  {
    v11 = sub_252E36F34();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  sub_252AEA788(a2, &v18);
  if (v19)
  {
    sub_252A00AF4(&v18, v20);
  }

  else
  {
    if ([a1 value])
    {
      sub_252E377F4();
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    v20[0] = v16;
    v20[1] = v17;
    if (v19)
    {
      sub_252982F10(&v18);
    }
  }

  v14 = sub_252C69438(v5, v7, v20, v11, v13);

  sub_252982F10(v20);
  return v14;
}

uint64_t sub_252C6A028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_252C6A050, 0, 0);
}

uint64_t sub_252C6A050()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v13 = v0[6];
  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544D18);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E85410, 0xD000000000000091, 0x8000000252E8DEC0);
  v2 = *(v13 + 24);
  v12 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_252963EC4;
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  return v12(v9, v10, v7, v8, v5);
}

uint64_t sub_252C6A22C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ExcludeNonCommonTypesFromGenericSetPowerRequestHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_252C6A260(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  v4 = [v2 taskType];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [a1 userTask];
  if (!v5)
  {
LABEL_10:
    sub_252C515AC();
    return 0;
  }

  v6 = v5;
  v7 = [v5 attribute];

  if (v7 == 27 && (sub_252C4DD64() & 1) != 0)
  {
    type metadata accessor for ServiceCollectionDecorator();
    swift_allocObject();
    sub_252B7DA9C(a1);
    if (sub_252B7DC00() & 1) == 0 || (v8 = sub_252B7FC4C(&unk_2864AE828), v8 == 2) || (v8 & 1) != 0 || (v10 = sub_252B7FA40(&unk_2864AE828), v10 != 2) && (v10)
    {

      return 1;
    }

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544DA8);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003BLL, 0x8000000252E8DFC0);
    sub_252E37AE4();
    sub_252CC3D90(0, 0xE000000000000000, 0xD0000000000000A8, 0x8000000252E8E000);
  }

  return 0;
}

uint64_t sub_252C6A488(void *a1)
{
  v2 = [a1 filters];
  if (v2)
  {
    type metadata accessor for HomeFilter();
    sub_252E37264();

    type metadata accessor for ServiceCollectionDecorator();
    swift_initStackObject();
    v42 = a1;
    v3 = *(sub_252B7DA9C(v42) + 16);

    if (v3 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v5 = 0;
      v6 = MEMORY[0x277D84F90];
      while ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v5, v3);
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_24;
        }

LABEL_8:
        v9 = [*(v7 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
        v10 = sub_252E36F34();
        v12 = v11;

        if (qword_27F53F8B8 != -1)
        {
          swift_once();
        }

        v13 = off_27F546230;
        if (*(off_27F546230 + 2) && (v14 = sub_252A44A10(v10, v12), (v15 & 1) != 0))
        {
          v16 = *(v13[7] + 8 * v14);
        }

        else
        {
          v16 = 0;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_2529F7B8C(0, *(v6 + 2) + 1, 1, v6);
        }

        v18 = *(v6 + 2);
        v17 = *(v6 + 3);
        if (v18 >= v17 >> 1)
        {
          v6 = sub_2529F7B8C((v17 > 1), v18 + 1, 1, v6);
        }

        *(v6 + 2) = v18 + 1;
        *&v6[8 * v18 + 32] = v16;
        ++v5;
        if (v8 == i)
        {
          goto LABEL_28;
        }
      }

      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v7 = *(v3 + 8 * v5 + 32);

      v8 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_8;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    v6 = MEMORY[0x277D84F90];
LABEL_28:

    v21 = *(v6 + 2);
    v22 = MEMORY[0x277D84F90];
    if (v21)
    {
      v23 = (v6 + 32);
      v24 = &unk_2864AE000;
      v25 = qword_2864AE848;
      do
      {
        v29 = *v23++;
        v28 = v29;
        if (v25 != v29)
        {
          v30 = vdupq_n_s64(v28);
          if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_s64(xmmword_2864AE850, v30), vceqq_s64(unk_2864AE860, v30)), xmmword_252E419B0)) & 0xF) == 0 && qword_2864AE870 != v28)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2529AA420(0, *(v22 + 16) + 1, 1);
              v24 = &unk_2864AE000;
            }

            v27 = *(v22 + 16);
            v26 = *(v22 + 24);
            if (v27 >= v26 >> 1)
            {
              sub_2529AA420((v26 > 1), v27 + 1, 1);
              v24 = &unk_2864AE000;
            }

            *(v22 + 16) = v27 + 1;
            *(v22 + 8 * v27 + 32) = v28;
            v25 = v24[265];
          }
        }

        --v21;
      }

      while (v21);
    }

    v32 = *(v22 + 16);
    if (v32)
    {
      v43 = MEMORY[0x277D84F90];
      sub_252E37AB4();
      type metadata accessor for HomeFilter.Builder();
      v33 = 32;
      do
      {
        v34 = *(v22 + v33);
        inited = swift_initStackObject();
        *(inited + 16) = 0;
        *(inited + 24) = 0;
        *(inited + 32) = 0;
        *(inited + 40) = 7;
        *(inited + 175) = 0;
        *(inited + 48) = 0u;
        *(inited + 64) = 0u;
        *(inited + 80) = 0u;
        *(inited + 96) = 0u;
        *(inited + 112) = 0u;
        *(inited + 128) = 0u;
        *(inited + 144) = 0u;
        *(inited + 160) = 0u;
        *(inited + 176) = 1;
        *(inited + 72) = v34;
        sub_252B719E4();
        swift_setDeallocating();
        HomeFilter.Builder.deinit();
        swift_deallocClassInstance();
        sub_252E37A94();
        v36 = *(v43 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        v33 += 8;
        --v32;
      }

      while (v32);

      v37 = v43;
    }

    else
    {

      v37 = MEMORY[0x277D84F90];
    }

    sub_25297A8D8(v37);
    v38 = [v42 userTask];
    v39 = [v42 time];
    v40 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
    [v40 setUserTask_];
    v41 = sub_252E37254();

    [v40 setFilters_];

    [v40 setTime_];
    return v40;
  }

  else
  {
    sub_2529318DC();
    result = swift_allocError();
    *v20 = 8;
  }

  return result;
}

uint64_t sub_252C6AA3C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = result + 32;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = (v3 + 504 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      result = memcpy(__dst, v5, sizeof(__dst));
      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_22;
      }

      memcpy(v11, v5, sizeof(v11));
      sub_2529353AC(__dst, v10);
      if (sub_252A13FE0() & 1) != 0 || (memcpy(v10, __dst, sizeof(v10)), (sub_252A13BEC()) || (memcpy(v11, __dst, sizeof(v11)), (sub_252A143D4()))
      {
        if (*(__dst[19] + 16) > 1uLL || *(__dst[21] + 16) > 1uLL)
        {
          break;
        }
      }

      result = sub_252935408(__dst);
      v5 += 504;
      if (v2 == v1)
      {
        return v4;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2529AA480(0, *(v4 + 16) + 1, 1);
      v4 = v13;
    }

    v9 = *(v4 + 16);
    v8 = *(v4 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_2529AA480((v8 > 1), v9 + 1, 1);
      v4 = v13;
    }

    *(v4 + 16) = v9 + 1;
    result = memcpy((v4 + 504 * v9 + 32), __dst, 0x1F8uLL);
  }

  while (v2 != v1);
  return v4;
}

uint64_t sub_252C6AC08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = a1 + 32;
  v54 = a1 + 32;
  v55 = *(a1 + 16);
  while (1)
  {
    memcpy(__dst, (v3 + 504 * v2), 0x1F8uLL);
    v4 = __dst[19];
    if (*(__dst[19] + 16))
    {
      break;
    }

LABEL_4:
    if (++v2 == v1)
    {
      return MEMORY[0x277D84F90];
    }
  }

  type metadata accessor for HomeStore();

  sub_2529353AC(__dst, __src);
  v5 = static HomeStore.shared.getter();
  memcpy(__src, __dst, sizeof(__src));
  v6 = sub_252BAC7E4();
  v7 = HomeStore.accessories(matching:supporting:)(v6, 0);
  v9 = v8;

  if (v9)
  {
    sub_252929F10(v7, 1);

    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544E08);
    sub_252CC3D90(0xD000000000000047, 0x8000000252E8E0B0, 0xD00000000000009DLL, 0x8000000252E8E100);
    sub_252935408(__dst);
    goto LABEL_4;
  }

  v56 = v4;
  if (v7 >> 62)
  {
    result = sub_252E378C4();
    v12 = result;
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v12 == v13)
    {
      sub_252929F10(v7, 0);
      v23 = sub_252C75848(v14);

      v24 = sub_252C75848(v56);

      v25 = sub_2529A9538(v23, v24);

      if (v25)
      {
        memcpy(__src, __dst, sizeof(__src));
        if (sub_252A13FE0())
        {
          result = sub_252935408(__dst);
          v3 = v54;
          v1 = v55;
LABEL_33:
          v27 = 0;
          v53 = MEMORY[0x277D84F90];
          while (1)
          {
LABEL_37:
            if (v27 >= v1)
            {
              goto LABEL_72;
            }

            result = memcpy(__src, (v3 + 504 * v27), sizeof(__src));
            if (__OFADD__(v27++, 1))
            {
              goto LABEL_73;
            }

            v32 = __src[19];
            if (!*(__src[19] + 16))
            {
              goto LABEL_36;
            }

            sub_2529353AC(__src, v58);
            v33 = static HomeStore.shared.getter();
            memcpy(v58, __src, sizeof(v58));
            v34 = sub_252BAC7E4();
            v35 = HomeStore.accessories(matching:supporting:)(v34, 0);
            v37 = v36;

            if (v37)
            {
              break;
            }

            v57 = v32;
            if (v35 >> 62)
            {
              result = sub_252E378C4();
              v39 = result;
            }

            else
            {
              v39 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v40 = 0;
            v41 = MEMORY[0x277D84F90];
            while (v39 != v40)
            {
              if ((v35 & 0xC000000000000001) != 0)
              {
                result = MEMORY[0x2530ADF00](v40, v35);
                v43 = v40 + 1;
                if (__OFADD__(v40, 1))
                {
                  goto LABEL_70;
                }
              }

              else
              {
                if (v40 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_71;
                }

                v42 = *(v35 + 8 * v40 + 32);

                v43 = v40 + 1;
                if (__OFADD__(v40, 1))
                {
                  goto LABEL_70;
                }
              }

              v44 = sub_252D4DFC8();

              ++v40;
              if (v44)
              {
                v46 = *(v44 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
                v45 = *(v44 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  result = sub_2529F7A80(0, *(v41 + 16) + 1, 1, v41);
                  v41 = result;
                }

                v48 = *(v41 + 16);
                v47 = *(v41 + 24);
                if (v48 >= v47 >> 1)
                {
                  result = sub_2529F7A80((v47 > 1), v48 + 1, 1, v41);
                  v41 = result;
                }

                *(v41 + 16) = v48 + 1;
                v49 = v41 + 16 * v48;
                *(v49 + 32) = v46;
                *(v49 + 40) = v45;
                v40 = v43;
              }
            }

            sub_252929F10(v35, 0);
            v28 = sub_252C75848(v41);

            v29 = sub_252C75848(v57);

            v30 = sub_2529A9538(v28, v29);

            if ((v30 & 1) == 0)
            {
              result = sub_252935408(__src);
              v3 = v54;
              v1 = v55;
              goto LABEL_36;
            }

            v50 = v53;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2529AA480(0, *(v53 + 16) + 1, 1);
              v50 = v53;
            }

            v52 = *(v50 + 16);
            v51 = *(v50 + 24);
            if (v52 >= v51 >> 1)
            {
              sub_2529AA480((v51 > 1), v52 + 1, 1);
              v50 = v53;
            }

            *(v50 + 16) = v52 + 1;
            v53 = v50;
            result = memcpy((v50 + 504 * v52 + 32), __src, 0x1F8uLL);
            v3 = v54;
            v1 = v55;
            if (v27 == v55)
            {
              return v53;
            }
          }

          sub_252929F10(v35, 1);

          if (qword_27F53F520 != -1)
          {
            swift_once();
          }

          v38 = sub_252E36AD4();
          __swift_project_value_buffer(v38, qword_27F544E08);
          sub_252CC3D90(0xD000000000000047, 0x8000000252E8E0B0, 0xD00000000000009DLL, 0x8000000252E8E100);
          result = sub_252935408(__src);
LABEL_36:
          if (v27 == v1)
          {
            return v53;
          }

          goto LABEL_37;
        }

        memcpy(v58, __dst, sizeof(v58));
        v26 = sub_252A13BEC();
        result = sub_252935408(__dst);
        v3 = v54;
        v1 = v55;
        if (v26)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_252935408(__dst);
        v3 = v54;
        v1 = v55;
      }

      goto LABEL_4;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    result = MEMORY[0x2530ADF00](v13, v7);
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_68;
    }

LABEL_17:
    v17 = sub_252D4DFC8();

    ++v13;
    if (v17)
    {
      v19 = *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v18 = *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2529F7A80(0, *(v14 + 16) + 1, 1, v14);
        v14 = result;
      }

      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_2529F7A80((v20 > 1), v21 + 1, 1, v14);
        v14 = result;
      }

      *(v14 + 16) = v21 + 1;
      v22 = v14 + 16 * v21;
      *(v22 + 32) = v19;
      *(v22 + 40) = v18;
      v13 = v16;
    }
  }

  if (v13 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_69;
  }

  v15 = *(v7 + 8 * v13 + 32);

  v16 = v13 + 1;
  if (!__OFADD__(v13, 1))
  {
    goto LABEL_17;
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_252C6B350(unint64_t a1)
{
  v117 = sub_252E36324();
  v2 = *(v117 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v117);
  v5 = v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v99 = v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (v97 - v11);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v97 - v14;
  MEMORY[0x28223BE20](v13);
  v106 = v97 - v16;
  v97[2] = type metadata accessor for HomeAutomationEntityResponses();
  result = swift_allocObject();
  v18 = MEMORY[0x277D84F90];
  *(result + 16) = 0;
  *(result + 24) = v18;
  if (a1)
  {
    v97[1] = result;
    v119 = v18;
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_48;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v21 = 0;
      v105 = a1 & 0xC000000000000001;
      v98 = (a1 + 32);
      v114 = (v2 + 56);
      v116 = v2 + 32;
      v103 = v5;
      v104 = v12;
      v108 = a1;
      v101 = v19;
      v102 = v15;
      v100 = i;
      while (1)
      {
        if (v105)
        {
          v22 = MEMORY[0x2530ADF00](v21, a1);
        }

        else
        {
          if (v21 >= *(v19 + 16))
          {
            goto LABEL_47;
          }

          v22 = *&v98[8 * v21];
        }

        v115 = v22;
        v23 = __OFADD__(v21, 1);
        v24 = v21 + 1;
        if (v23)
        {
          break;
        }

        v110 = v24;
        v25 = type metadata accessor for HomeAutomationEntityResponse.Builder(0);
        v26 = *(v25 + 48);
        v27 = *(v25 + 52);
        v28 = swift_allocObject();
        v29 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
        v30 = *v114;
        v31 = 1;
        v32 = v117;
        (*v114)(v28 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName, 1, 1, v117);
        v30(v28 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v32);
        v111 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room;
        *(v28 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
        *(v28 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = v18;
        v112 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home;
        *(v28 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
        v107 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type;
        v113 = v30;
        v30(v28 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v32);
        *(v28 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v18;
        *(v28 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v18;
        v33 = [v115 homeEntityName];
        if (v33)
        {
          v34 = v33;
          sub_252E36F34();

          v35 = v106;
          sub_252E37024();

          v31 = 0;
        }

        else
        {
          v35 = v106;
        }

        v36 = 1;
        v113(v35, v31, 1, v117);
        swift_beginAccess();
        sub_252956BAC(v35, v28 + v29);
        swift_endAccess();
        sub_25293847C(v35, &qword_27F540298, &unk_252E3C270);
        v37 = [v115 room];
        if (v37)
        {
          v38 = v37;
          sub_252E36F34();

          sub_252E37024();

          v36 = 0;
        }

        v39 = v15;
        v40 = v36;
        v41 = v117;
        v42 = v15;
        v43 = v113;
        v113(v39, v40, 1, v117);
        v44 = type metadata accessor for HomeAutomationHomeLocation.Builder(0);
        v45 = *(v44 + 48);
        v46 = *(v44 + 52);
        v47 = swift_allocObject();
        v48 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
        v43(v47 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v41);
        swift_beginAccess();
        sub_252956BAC(v42, v47 + v48);
        swift_endAccess();
        sub_25293847C(v42, &qword_27F540298, &unk_252E3C270);
        v49 = type metadata accessor for HomeAutomationHomeLocation(0);
        v50 = *(v49 + 48);
        v51 = *(v49 + 52);
        v52 = swift_allocObject();
        *(v52 + 16) = 0;
        sub_252956C1C(v47 + v48, v52 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
        swift_setDeallocating();
        sub_25293847C(v47 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
        v53 = *(*v47 + 48);
        v54 = *(*v47 + 52);
        swift_deallocClassInstance();
        v109 = v52;
        *(v28 + v111) = v52;
        v55 = [v115 home];
        if (v55)
        {
          v56 = v55;
          sub_252E36F34();

          v57 = v104;
          sub_252E37024();

          v58 = 0;
          v5 = v103;
        }

        else
        {
          v5 = v103;
          v57 = v104;
          v58 = 1;
        }

        v59 = v117;
        v15 = v113;
        v113(v57, v58, 1, v117);
        v60 = *(v44 + 48);
        v61 = *(v44 + 52);
        v62 = swift_allocObject();
        v63 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
        (v15)(v62 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v59);
        swift_beginAccess();
        sub_252956BAC(v57, v62 + v63);
        swift_endAccess();
        sub_25293847C(v57, &qword_27F540298, &unk_252E3C270);
        v64 = *(v49 + 48);
        v65 = *(v49 + 52);
        v66 = swift_allocObject();
        *(v66 + 16) = 0;
        sub_252956C1C(v62 + v63, v66 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
        swift_setDeallocating();
        sub_25293847C(v62 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
        v67 = *(*v62 + 48);
        v68 = *(*v62 + 52);
        swift_deallocClassInstance();
        v111 = v66;
        *(v28 + v112) = v66;
        v69 = [v115 zones];
        a1 = v108;
        if (v69)
        {
          v70 = v69;
          v19 = sub_252E37264();

          v18 = *(v19 + 16);
          if (v18)
          {
            v12 = 0;
            v71 = (v19 + 40);
            v72 = MEMORY[0x277D84F90];
            while (v12 < *(v19 + 16))
            {
              v74 = *(v71 - 1);
              v73 = *v71;

              sub_252E37024();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v72 = sub_2529F7F74(0, v72[2] + 1, 1, v72);
              }

              v15 = v72[2];
              v75 = v72[3];
              a1 = v15 + 1;
              if (v15 >= v75 >> 1)
              {
                v72 = sub_2529F7F74(v75 > 1, v15 + 1, 1, v72);
              }

              v12 = (v12 + 1);
              v72[2] = a1;
              (*(v2 + 32))(v72 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v15, v5, v117);
              v71 += 2;
              if (v18 == v12)
              {
                goto LABEL_29;
              }
            }

            __break(1u);
            break;
          }

          v72 = MEMORY[0x277D84F90];
LABEL_29:

          sub_252AD6B10(v72);

          a1 = v108;
        }

        v76 = [v115 deviceTypes];
        v15 = v102;
        v18 = MEMORY[0x277D84F90];
        if (v76)
        {
          v77 = v76;
          v78 = sub_252E37264();

          if (*(v78 + 16))
          {
            v79 = *(v78 + 32);

            v80 = sub_252E25FC4(v79);
            if (v81)
            {
              goto LABEL_38;
            }

            if (qword_27F53F2A0 != -1)
            {
              v95 = v80;
              swift_once();
              v80 = v95;
            }

            v82 = off_27F541CD0;
            if (*(off_27F541CD0 + 2) && (v83 = sub_252A488EC(v80), (v84 & 1) != 0))
            {
              v118 = *(v82[7] + v83);
              AccessoryTypeSemantic.rawValue.getter();
              sub_252E362F4();
              v85 = 0;
            }

            else
            {
LABEL_38:
              v85 = 1;
            }

            v86 = v99;
            v113(v99, v85, 1, v117);
            v87 = v107;
            swift_beginAccess();
            sub_252956BAC(v86, v28 + v87);
            swift_endAccess();
            sub_25293847C(v86, &qword_27F540298, &unk_252E3C270);
          }

          else
          {
          }
        }

        v88 = type metadata accessor for HomeAutomationEntityResponse(0);
        v89 = *(v88 + 48);
        v90 = *(v88 + 52);
        swift_allocObject();
        sub_2529605C0(v28);
        MEMORY[0x2530AD700]();
        if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v94 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();

        swift_setDeallocating();
        v12 = &qword_27F540298;
        sub_25293847C(v28 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName, &qword_27F540298, &unk_252E3C270);
        sub_25293847C(v28 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, &qword_27F540298, &unk_252E3C270);

        v91 = *(v28 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones);

        sub_25293847C(v28 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, &qword_27F540298, &unk_252E3C270);
        v92 = *(*v28 + 48);
        v93 = *(*v28 + 52);
        swift_deallocClassInstance();
        v21 = v110;
        v19 = v101;
        if (v110 == v100)
        {
          v96 = v119;

          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      ;
    }

    v96 = MEMORY[0x277D84F90];
LABEL_50:
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v96;
  }

  return result;
}

uint64_t sub_252C6BEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_252E34014();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C6BFA4, 0, 0);
}

uint64_t sub_252C6BFA4()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = *(v2 + 96);
  __swift_project_boxed_opaque_existential_1((v2 + 72), v3);
  sub_252AD7CC4();
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_252C6C090;
  v5 = v0[14];
  v6 = v0[9];
  v7 = v0[10];

  return sub_252BDB88C((v0 + 2), v6, v7, v5, 0, 0, 0, v3);
}

uint64_t sub_252C6C090()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_252C6C314;
  }

  else
  {
    v6 = sub_252C6C200;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252C6C200()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[14];
  v9 = v0[7];
  (*(v4 + 112))(v7, v0 + 2, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_252C6C314()
{
  v1 = v0[14];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_252C6C378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_252E34014();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C6C440, 0, 0);
}

uint64_t sub_252C6C440()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = *(v2 + 96);
  __swift_project_boxed_opaque_existential_1((v2 + 72), v3);
  sub_252AD7CC4();
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_252C6C52C;
  v5 = v0[14];
  v6 = v0[9];
  v7 = v0[10];

  return sub_252BDB88C((v0 + 2), v6, v7, v5, 0, 0, 0, v3);
}

uint64_t sub_252C6C52C()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_252C6CB24;
  }

  else
  {
    v6 = sub_252C6CB28;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252C6C69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_252C6C6C0, 0, 0);
}

uint64_t sub_252C6C6C0()
{
  v1 = [*(v0 + 32) matchedEntities];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeEntity();
    v3 = sub_252E37264();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 40);
  v5 = sub_252C6B350(v3);
  *(v0 + 48) = v5;

  v6 = swift_allocObject();
  *(v0 + 56) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;

  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_252C37970;
  v8 = *(v0 + 40);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);

  return sub_252C6C378(v9, v10, &unk_252E57C28, v6);
}

uint64_t sub_252C6C828(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252C6C848, 0, 0);
}

uint64_t sub_252C6C848()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_252C37C68;
  v5 = v0[2];
  v4 = v0[3];

  return sub_252C15854(0, v2, v4, v5);
}

uint64_t sub_252C6C974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252C6C69C(a1, a2, a3);
}

void *sub_252C6CA28@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for DiscoverCountResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252C6CA8C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_252C6C828(v2, v3);
}

id HomeAttributeValue.localized.getter()
{
  v0 = sub_252C6DD64();
  if ([v20 unit] != v0 && (objc_msgSend(v20, sel_unit) == 3 || objc_msgSend(v20, sel_unit) == 2))
  {
    if (v0 == 2)
    {
      [v20 doubleValue];
      v10 = sub_252C70710(2, v9);
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v11 = sub_252E36AD4();
      __swift_project_value_buffer(v11, qword_27F544D60);
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E8C1A0);
      [v20 doubleValue];
      sub_252E37374();
      MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E8E290);
      sub_252E37374();
      sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ALL, 0x8000000252E8E210);

      v12 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v13 = sub_252E36F04();
      v14 = [v12 initWithIdentifier:0 displayString:v13];

      v8 = v14;
      [v8 setDoubleValue_];
      [v8 setUnit_];
      goto LABEL_15;
    }

    if (v0 == 3)
    {
      [v20 doubleValue];
      v3 = sub_252C70710(3, v2);
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v4 = sub_252E36AD4();
      __swift_project_value_buffer(v4, qword_27F544D60);
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E8C1A0);
      [v20 doubleValue];
      sub_252E37374();
      MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E8E2B0);
      sub_252E37374();
      sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ALL, 0x8000000252E8E210);

      v5 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v6 = sub_252E36F04();
      v7 = [v5 initWithIdentifier:0 displayString:v6];

      v8 = v7;
      [v8 setDoubleValue_];
      [v8 setUnit_];
LABEL_15:
      [v8 setType_];

      return v8;
    }

    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544D60);
    sub_252E379F4();

    v16 = [v20 description];
    v17 = sub_252E36F34();
    v19 = v18;

    MEMORY[0x2530AD570](v17, v19);

    sub_252CC3D90(0xD00000000000002ELL, 0x8000000252E8E1E0, 0xD00000000000007ALL, 0x8000000252E8E210);
  }

  return v20;
}

uint64_t sub_252C6D070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = sub_252CC5174(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544780, &unk_252E57D98);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

uint64_t sub_252C6D0EC()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252C6D1F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252C70D0C();
  *a2 = result;
  return result;
}

void sub_252C6D224(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x474E4954414548;
  v5 = 0x5455415F54414548;
  v6 = 0xE90000000000004FLL;
  if (v2 != 5)
  {
    v5 = 0x5455415F4C4F4F43;
    v6 = 0xE90000000000004FLL;
  }

  v7 = 1162626121;
  if (v2 != 3)
  {
    v7 = 1330926913;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v6 = 0xE400000000000000;
  }

  v8 = 0xE700000000000000;
  v9 = 0x474E494C4F4F43;
  if (v2 != 1)
  {
    v9 = 4605519;
    v8 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_252C6D2F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x65676E6172;
  }

  else
  {
    v4 = 0x65676E6152746F6ELL;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x65676E6172;
  }

  else
  {
    v6 = 0x65676E6152746F6ELL;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_252C6D398()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C6D418()
{
  *v0;
  sub_252E37044();
}

uint64_t sub_252C6D484()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C6D500@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_252E37B74();

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

  *a2 = v7;
  return result;
}

void sub_252C6D560(uint64_t *a1@<X8>)
{
  v2 = 0x65676E6152746F6ELL;
  if (*v1)
  {
    v2 = 0x65676E6172;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_252C6D59C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_252C6D5D4(void *a1, char a2)
{
  if (a2)
  {
    v3 = a1;
    return a1;
  }

  v5 = a1;
  v6 = [v5 entityResponses];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x277D84F90];
    type metadata accessor for HomeEntityResponse();
    v9 = sub_252E37264();

    v10 = v9;
    v76 = v8;
    if (v9 >> 62)
    {
      goto LABEL_79;
    }

    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v68 = v5;
      v69 = v10;
      v13 = 0;
      v14 = v10 & 0xC000000000000001;
      v73 = v10 + 32;
      v74 = v10 & 0xFFFFFFFFFFFFFF8;
      v71 = v10 & 0xC000000000000001;
      v72 = v11;
      while (1)
      {
        if (v14)
        {
          v10 = MEMORY[0x2530ADF00](v13, v69);
        }

        else
        {
          if (v13 >= *(v74 + 16))
          {
            goto LABEL_78;
          }

          v10 = *(v73 + 8 * v13);
        }

        v15 = v10;
        if (__OFADD__(v13++, 1))
        {
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          v65 = v10;
          v11 = sub_252E378C4();
          v10 = v65;
          goto LABEL_6;
        }

        v17 = [v10 entity];
        if (v17)
        {
          v18 = v17;
          v19 = [v17 deviceTypes];
          if (!v19)
          {

            goto LABEL_33;
          }

          v20 = v19;
          v21 = sub_252E37264();

          v22 = *(v21 + 16);
          if (v22)
          {
            sub_2529AA420(0, v22, 0);
            v23 = v12;
            v5 = 32;
            do
            {
              v24 = sub_252E25FC4(*(v21 + v5));
              if (v25)
              {
                v26 = 0;
              }

              else
              {
                v26 = v24;
              }

              v28 = *(v23 + 16);
              v27 = *(v23 + 24);
              if (v28 >= v27 >> 1)
              {
                sub_2529AA420((v27 > 1), v28 + 1, 1);
              }

              *(v23 + 16) = v28 + 1;
              *(v23 + 8 * v28 + 32) = v26;
              v5 += 8;
              --v22;
            }

            while (v22);

            v12 = MEMORY[0x277D84F90];
            v14 = v71;
            v11 = v72;
            v34 = *(v23 + 16);
            if (!v34)
            {
              goto LABEL_38;
            }

            goto LABEL_34;
          }
        }

        else
        {
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v29 = sub_252E36AD4();
          __swift_project_value_buffer(v29, qword_27F544D60);
          sub_252E379F4();

          v5 = 0xD000000000000025;
          v30 = [v15 description];
          v31 = sub_252E36F34();
          v33 = v32;

          MEMORY[0x2530AD570](v31, v33);

          sub_252CC3D90(0xD000000000000025, 0x8000000252E75B90, 0xD00000000000008CLL, 0x8000000252E6E8A0);
        }

LABEL_33:
        v23 = v12;
        v34 = *(v12 + 16);
        if (!v34)
        {
          goto LABEL_38;
        }

LABEL_34:
        v35 = 32;
        while (v34)
        {
          v36 = *(v23 + v35);
          v35 += 8;
          --v34;
          if (v36 == 3)
          {
LABEL_61:

            sub_252E37A94();
            v57 = *(v76 + 16);
            sub_252E37AC4();
            sub_252E37AD4();
            v10 = sub_252E37AA4();
            goto LABEL_9;
          }
        }

LABEL_38:

        v37 = [v15 entity];
        if (!v37)
        {
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v49 = sub_252E36AD4();
          __swift_project_value_buffer(v49, qword_27F544D60);
          sub_252E379F4();

          v5 = 0xD000000000000025;
          v50 = [v15 description];
          v51 = sub_252E36F34();
          v53 = v52;

          MEMORY[0x2530AD570](v51, v53);

          sub_252CC3D90(0xD000000000000025, 0x8000000252E75B90, 0xD00000000000008CLL, 0x8000000252E6E8A0);
LABEL_56:

LABEL_57:
          v43 = v12;
          v54 = *(v12 + 16);
          if (v54)
          {
            goto LABEL_58;
          }

          goto LABEL_8;
        }

        v38 = v37;
        v39 = [v37 deviceTypes];
        if (!v39)
        {

          goto LABEL_57;
        }

        v40 = v39;
        v41 = sub_252E37264();

        v42 = *(v41 + 16);
        if (!v42)
        {

          goto LABEL_56;
        }

        sub_2529AA420(0, v42, 0);
        v43 = v12;
        v5 = 32;
        do
        {
          v44 = sub_252E25FC4(*(v41 + v5));
          if (v45)
          {
            v46 = 0;
          }

          else
          {
            v46 = v44;
          }

          v48 = *(v43 + 16);
          v47 = *(v43 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_2529AA420((v47 > 1), v48 + 1, 1);
          }

          *(v43 + 16) = v48 + 1;
          *(v43 + 8 * v48 + 32) = v46;
          v5 += 8;
          --v42;
        }

        while (v42);

        v12 = MEMORY[0x277D84F90];
        v14 = v71;
        v11 = v72;
        v54 = *(v43 + 16);
        if (v54)
        {
LABEL_58:
          v55 = 32;
          while (v54)
          {
            v56 = *(v43 + v55);
            v55 += 8;
            --v54;
            if (v56 == 29)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_9;
        }

LABEL_8:

LABEL_9:
        if (v13 == v11)
        {
          v12 = v76;
          v5 = v68;
          break;
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  type metadata accessor for MutableControlHomeIntentResponse();
  swift_initStackObject();
  sub_2529904E4(a1);
  v58 = sub_252D6D96C(v5);
  sub_252927D3C(a1);
  v59 = MEMORY[0x277D84F90];
  if (!v12)
  {
    goto LABEL_82;
  }

  if (!(v12 >> 62))
  {
    v60 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v60)
    {
      goto LABEL_70;
    }

LABEL_81:

LABEL_82:
    v66 = *(v58 + 24);
    *(v58 + 24) = v59;

    v67 = sub_252D6BB10();
    sub_252927D3C(a1);

    return v67;
  }

  v60 = sub_252E378C4();
  if (!v60)
  {
    goto LABEL_81;
  }

LABEL_70:
  v75 = v59;
  result = sub_252E37AB4();
  if ((v60 & 0x8000000000000000) == 0)
  {
    v61 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v62 = MEMORY[0x2530ADF00](v61, v12);
      }

      else
      {
        v62 = *(v12 + 8 * v61 + 32);
      }

      v63 = v62;
      ++v61;
      type metadata accessor for MutableHomeEntityResponse();
      swift_allocObject();
      sub_252D6D668(v63);

      sub_252E37A94();
      v64 = *(v75 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    while (v60 != v61);

    v59 = v75;
    goto LABEL_82;
  }

  __break(1u);
  return result;
}

uint64_t sub_252C6DD64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540FE8, qword_252E3FAB0);
  v24[0] = *(v0 - 8);
  v1 = *(v24[0] + 64);
  MEMORY[0x28223BE20](v0);
  v3 = v24 - v2;
  v4 = sub_252E33A24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();

  sub_252E35F84();
  if (!sub_252E35F54())
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544D60);
    sub_252CC4050(0xD000000000000072, 0x8000000252E6CB50, 0xD000000000000079, 0x8000000252E6CBD0, 0xD000000000000010, 0x8000000252E6CC50, 68);
    sub_252E35F74();
  }

  sub_252E35F04();

  sub_252E33E64();

  v10 = sub_252E33A14();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  if (v12)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544D60);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_252E379F4();

    v27 = 0xD000000000000015;
    v28 = 0x8000000252E8E520;
    MEMORY[0x2530AD570](v10, v12);
    sub_252CC3D90(v27, v28, 0xD00000000000007ALL, 0x8000000252E8E210);

    v27 = v10;
    v28 = v12;
    v25 = 67;
    v26 = 0xE100000000000000;
    sub_252947DBC();
    v14 = sub_252E377C4();
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544D60);
    sub_252CC3D90(0xD00000000000003FLL, 0x8000000252E8E4E0, 0xD00000000000007ALL, 0x8000000252E8E210);
    v16 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v16 + 328), &v27);

    v17 = v29;
    v18 = v30;
    __swift_project_boxed_opaque_existential_1(&v27, v29);
    v19 = [objc_opt_self() celsius];
    sub_252C70C58();
    sub_252E329E4();
    v20 = (*(v18 + 8))(v3, v17, v18);
    v22 = v21;
    (*(v24[0] + 8))(v3, v0);
    v25 = v20;
    v26 = v22;
    v24[1] = 67;
    v24[2] = 0xE100000000000000;
    sub_252947DBC();
    v14 = sub_252E377C4();

    __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  if (v14)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

id sub_252C6E240(void *a1)
{
  v1 = [a1 userTask];
  if (!v1 || (v2 = v1, v3 = [v1 value], v2, !v3) || (v4 = objc_msgSend(v3, sel_unit), v3, !v4))
  {
    v4 = sub_252C6DD64();
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544D60);
  sub_252E379F4();

  v6 = sub_252C65640(v4);
  MEMORY[0x2530AD570](v6);

  sub_252CC3D90(0xD000000000000010, 0x8000000252E8E330, 0xD00000000000007ALL, 0x8000000252E8E210);

  return v4;
}

BOOL sub_252C6E3CC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x2530ADF00](v3, a1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v7 = (*(*v5 + 336))();

      v8 = *(v7 + 16);
      v9 = *(v4 + 2);
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= *(v4 + 3) >> 1)
      {
        if (*(v7 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v4 = sub_2529F7A6C(isUniquelyReferenced_nonNull_native, v12, 1, v4);
        if (*(v7 + 16))
        {
LABEL_18:
          v13 = *(v4 + 2);
          if ((*(v4 + 3) >> 1) - v13 < v8)
          {
            goto LABEL_28;
          }

          memcpy(&v4[8 * v13 + 32], (v7 + 32), 8 * v8);

          if (v8)
          {
            v14 = *(v4 + 2);
            v15 = __OFADD__(v14, v8);
            v16 = v14 + v8;
            if (v15)
            {
              goto LABEL_29;
            }

            *(v4 + 2) = v16;
          }

          goto LABEL_5;
        }
      }

      if (v8)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v3;
      if (v6 == i)
      {
        goto LABEL_32;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    v5 = *(a1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_32:
  v17 = *(v4 + 2);
  v18 = (v4 + 32);
  v19 = 32;
  v20 = v17;
  do
  {
    if (!v20)
    {
      v23 = 0;
      goto LABEL_40;
    }

    v21 = *&v4[v19];
    v19 += 8;
    --v20;
  }

  while (v21 != 19);
  do
  {
    v23 = v17 == 0;
    if (!v17)
    {
      break;
    }

    v22 = *v18++;
    --v17;
  }

  while (v22 != 17);
LABEL_40:

  return v23;
}

BOOL sub_252C6E60C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x2530ADF00](v3, a1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v7 = (*(*v5 + 336))();

      v8 = *(v7 + 16);
      v9 = *(v4 + 2);
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= *(v4 + 3) >> 1)
      {
        if (*(v7 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v4 = sub_2529F7A6C(isUniquelyReferenced_nonNull_native, v12, 1, v4);
        if (*(v7 + 16))
        {
LABEL_18:
          v13 = *(v4 + 2);
          if ((*(v4 + 3) >> 1) - v13 < v8)
          {
            goto LABEL_28;
          }

          memcpy(&v4[8 * v13 + 32], (v7 + 32), 8 * v8);

          if (v8)
          {
            v14 = *(v4 + 2);
            v15 = __OFADD__(v14, v8);
            v16 = v14 + v8;
            if (v15)
            {
              goto LABEL_29;
            }

            *(v4 + 2) = v16;
          }

          goto LABEL_5;
        }
      }

      if (v8)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v3;
      if (v6 == i)
      {
        goto LABEL_32;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    v5 = *(a1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_32:
  v17 = *(v4 + 2);
  v18 = (v4 + 32);
  v19 = 32;
  v20 = v17;
  do
  {
    if (!v20)
    {
      v23 = 0;
      goto LABEL_40;
    }

    v21 = *&v4[v19];
    v19 += 8;
    --v20;
  }

  while (v21 != 17);
  do
  {
    v23 = v17 == 0;
    if (!v17)
    {
      break;
    }

    v22 = *v18++;
    --v17;
  }

  while (v22 != 19);
LABEL_40:

  return v23;
}

uint64_t sub_252C6E84C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (!a2)
  {
    return 7;
  }

  if (*a3 != -1)
  {
    v8 = a1;
    v9 = a2;
    v10 = a4;
    swift_once();
    a4 = v10;
    a1 = v8;
    a2 = v9;
  }

  v4 = *a4;
  if (*(*a4 + 16) && (v5 = sub_252A44A10(a1, a2), (v6 & 1) != 0))
  {
    return *(*(v4 + 56) + v5);
  }

  else
  {
    return 7;
  }
}

uint64_t sub_252C6E8D8(unint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v8 = sub_252DA0F40(0xE, a2);
  if (v8 >> 62)
  {
    v17 = v8;
    v18 = sub_252E378C4();
    v8 = v17;
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x2530ADF00](0);
LABEL_6:
      v10 = v9;

      v11 = [v10 userTask];

      if (!v11)
      {
        goto LABEL_20;
      }

      v12 = [v11 value];

      if (v12)
      {
        v13 = [v12 stringValue];

        if (v13)
        {
          v14 = sub_252E36F34();
          v12 = v15;

          v16 = v14;
LABEL_22:
          v27 = sub_252C6E84C(v16, v12, a3, a4);
LABEL_23:

          return v27;
        }

        goto LABEL_20;
      }

      goto LABEL_21;
    }

    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v8 + 32);
      goto LABEL_6;
    }

    __break(1u);
LABEL_26:
    result = sub_252E378C4();
    if (!result)
    {
      goto LABEL_27;
    }

    goto LABEL_13;
  }

  v19 = sub_252DA0F40(0xF, a2);
  a1 = v19;
  if (v19 >> 62)
  {
    goto LABEL_26;
  }

  result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_27:
    v27 = 7;
    goto LABEL_23;
  }

LABEL_13:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x2530ADF00](0, a1);
LABEL_16:
    v22 = v21;

    v12 = [v22 userTask];

    if (v12)
    {
      v23 = [v12 value];

      if (v23)
      {
        v24 = [v23 stringValue];

        if (v24)
        {
          v25 = sub_252E36F34();
          v12 = v26;

          v16 = v25;
          goto LABEL_22;
        }
      }

LABEL_20:
      v16 = 0;
      v12 = 0;
      goto LABEL_22;
    }

LABEL_21:
    v16 = 0;
    goto LABEL_22;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(a1 + 32);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_252C6EB60(void *a1, unint64_t a2)
{
  v5 = sub_252DA10F8();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      v8 = v6-- != 0;
      v9 = v8;
      if (!v8)
      {
        break;
      }

      v10 = *v7++;
    }

    while (v10 != 3);
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v11) = sub_252C6E8D8(a2, 5, &qword_27F53F470, &qword_27F544770);
  v12 = [a1 userTask];
  if (!v12)
  {
    sub_252C515AC();
    goto LABEL_19;
  }

  v13 = v12;
  if ([v12 taskType] == 4)
  {

    goto LABEL_16;
  }

  v14 = [v13 taskType];

  if (v14 != 5)
  {
LABEL_19:
    if (!sub_252C4B5D4())
    {
LABEL_195:
      v2 = 0;
      goto LABEL_196;
    }

    v16 = sub_252DA0F40(6, 1);
    if (v16 >> 62)
    {
      v37 = v16;
      v38 = sub_252E378C4();
      v16 = v37;
      if (v38)
      {
        goto LABEL_22;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_22:
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x2530ADF00](0);
      }

      else
      {
        if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_142;
        }

        v17 = *(v16 + 32);
      }

      v18 = v17;

      v19 = [v18 userTask];

      if (v19)
      {
        v20 = [v19 value];

        if (v20)
        {

          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v21 = sub_252E36AD4();
          __swift_project_value_buffer(v21, qword_27F544D60);
          sub_252CC3D90(0xD00000000000004ELL, 0x8000000252E8E450, 0xD00000000000007ALL, 0x8000000252E8E210);
          return 0;
        }
      }

LABEL_108:
      v39 = sub_252DA0F40(0x13, 1);
      if (v39 >> 62)
      {
        v43 = v39;
        v44 = sub_252E378C4();
        v39 = v43;
        if (v44)
        {
LABEL_110:
          if ((v39 & 0xC000000000000001) == 0)
          {
            if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_145;
            }

            v40 = *(v39 + 32);
LABEL_113:
            v41 = v40;

            v42 = [v41 userTask];

            if (v42)
            {
              v2 = [v42 value];

              goto LABEL_118;
            }

LABEL_117:
            v2 = 0;
LABEL_118:
            v45 = sub_252DA0F40(0x11, 1);
            if (v45 >> 62)
            {
              v48 = v45;
              v49 = sub_252E378C4();
              v45 = v48;
              if (v49)
              {
                goto LABEL_120;
              }
            }

            else if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_120:
              if ((v45 & 0xC000000000000001) != 0)
              {
                v46 = MEMORY[0x2530ADF00](0);
LABEL_123:
                v47 = v46;

                v11 = [v47 userTask];

                if (v11)
                {
                  v15 = [v11 value];

                  if (!v2)
                  {
                    goto LABEL_157;
                  }

                  goto LABEL_129;
                }

LABEL_128:
                v15 = 0;
                if (!v2)
                {
LABEL_157:
                  v2 = v15;
                  goto LABEL_196;
                }

LABEL_129:
                if (!v15)
                {
                  goto LABEL_196;
                }

                v26 = sub_252DA0F40(6, 4);
                if (!(v26 >> 62))
                {
                  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
LABEL_149:

                    v53 = 0.0;
                    goto LABEL_150;
                  }

                  goto LABEL_132;
                }

LABEL_148:
                v58 = v26;
                v59 = sub_252E378C4();
                v26 = v58;
                if (!v59)
                {
                  goto LABEL_149;
                }

LABEL_132:
                if ((v26 & 0xC000000000000001) != 0)
                {
                  v50 = MEMORY[0x2530ADF00](0);
                  goto LABEL_135;
                }

                if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v50 = *(v26 + 32);
LABEL_135:
                  v51 = v50;

                  v52 = [v51 userTask];

                  v53 = 0.0;
                  if (v52)
                  {
                    v54 = [v52 value];

                    if (v54)
                    {
                      [v54 doubleValue];
                      v53 = v55;
                    }
                  }

LABEL_150:
                  v60 = [a1 userTask];
                  v61 = 0.0;
                  if (v60)
                  {
                    v62 = v60;
                    v63 = [v60 value];

                    if (v63)
                    {
                      [v63 doubleValue];
                      v61 = v64;
                    }
                  }

                  v65 = [a1 userTask];
                  if (v65)
                  {
                    v66 = v65;
                    v67 = [v65 taskType];

                    if (v67 != 2 && v53 >= v61)
                    {
                      goto LABEL_156;
                    }
                  }

                  else
                  {
                    sub_252C515AC();
                    if (v53 >= v61)
                    {
LABEL_156:

                      goto LABEL_157;
                    }
                  }

                  goto LABEL_196;
                }

                __break(1u);
LABEL_166:
                v30 = MEMORY[0x2530ADF00](0);
                goto LABEL_93;
              }

              if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v46 = *(v45 + 32);
                goto LABEL_123;
              }

LABEL_145:
              __break(1u);
              goto LABEL_166;
            }

            goto LABEL_128;
          }

LABEL_142:
          v40 = MEMORY[0x2530ADF00](0);
          goto LABEL_113;
        }
      }

      else if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_110;
      }

      goto LABEL_117;
    }

    goto LABEL_108;
  }

LABEL_16:
  v15 = 0x474E4954414548;
  if (!v9)
  {
    goto LABEL_35;
  }

  if (v11 > 3u)
  {
    if (v11 > 5u)
    {
      if (v11 != 6)
      {
        goto LABEL_88;
      }
    }

    else if (v11 == 4)
    {

      goto LABEL_35;
    }
  }

  v2 = sub_252E37DB4();

  if ((v2 & 1) == 0)
  {
    if (v11 > 2u && v11 <= 4u && v11 != 3)
    {
      goto LABEL_185;
    }

    goto LABEL_87;
  }

LABEL_35:
  v23 = sub_252C6E8D8(a2, 4, &qword_27F53F468, &qword_27F544768);
  v24 = v23;
  if (v23 <= 3u)
  {
    if (v23 > 1u)
    {
      if (v23 == 2)
      {
        v2 = 0xE300000000000000;
      }

      else
      {
        v2 = 0xE400000000000000;
      }
    }

    else
    {
      if (!v23)
      {

LABEL_54:
        v26 = sub_252DA0F40(0x13, 4);
        if (v26 >> 62)
        {
          v56 = v26;
          v57 = sub_252E378C4();
          v26 = v56;
          if (!v57)
          {
            goto LABEL_185;
          }
        }

        else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_185;
        }

        if ((v26 & 0xC000000000000001) != 0)
        {
          goto LABEL_166;
        }

        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_92;
        }

        __break(1u);
        goto LABEL_148;
      }

      v2 = 0xE700000000000000;
    }

LABEL_53:
    v25 = sub_252E37DB4();

    if (v25)
    {
      goto LABEL_54;
    }

    if (v24 == 1)
    {

LABEL_68:
      v26 = sub_252DA0F40(0x11, 4);
      if (v26 >> 62)
      {
        v70 = v26;
        v71 = sub_252E378C4();
        v26 = v70;
        if (!v71)
        {
          goto LABEL_185;
        }
      }

      else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_185;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        goto LABEL_166;
      }

      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_92;
      }

      __break(1u);
      goto LABEL_170;
    }

    v27 = sub_252E37DB4();

    if (v27)
    {
      goto LABEL_68;
    }

    if (v24 == 3)
    {
    }

    else
    {
      v28 = sub_252E37DB4();

      if ((v28 & 1) == 0)
      {
        goto LABEL_186;
      }
    }

    if (v11 > 3u)
    {
      if (v11 > 5u)
      {
        if (v11 != 6)
        {
          goto LABEL_186;
        }
      }

      else if (v11 != 4)
      {

        goto LABEL_98;
      }
    }

    v33 = sub_252E37DB4();

    if ((v33 & 1) == 0)
    {
      goto LABEL_172;
    }

LABEL_98:
    v26 = sub_252DA0F40(0x13, 4);
    if (!(v26 >> 62))
    {
      if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_171:

        goto LABEL_172;
      }

LABEL_100:
      if ((v26 & 0xC000000000000001) != 0)
      {
        goto LABEL_210;
      }

      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v34 = *(v26 + 32);
        goto LABEL_103;
      }

      __break(1u);
      goto LABEL_212;
    }

LABEL_170:
    v72 = v26;
    v73 = sub_252E378C4();
    v26 = v72;
    if (!v73)
    {
      goto LABEL_171;
    }

    goto LABEL_100;
  }

  if (v23 <= 5u)
  {
    if (v23 == 4)
    {
      v2 = 0xE400000000000000;
    }

    else
    {
      v2 = 0xE90000000000004FLL;
    }

    goto LABEL_53;
  }

  if (v23 == 6)
  {
    v2 = 0xE90000000000004FLL;
    goto LABEL_53;
  }

  if (!v9)
  {
    goto LABEL_186;
  }

  if (v11 > 3u)
  {
    if (v11 > 5u)
    {
      if (v11 != 6)
      {
        goto LABEL_88;
      }
    }

    else if (v11 == 4)
    {
      goto LABEL_185;
    }
  }

LABEL_87:
  v29 = sub_252E37DB4();

  if (v29)
  {
    goto LABEL_186;
  }

LABEL_88:
  v26 = sub_252DA0F40(6, 5);
  if (v26 >> 62)
  {
    v68 = v26;
    v69 = sub_252E378C4();
    v26 = v68;
    if (!v69)
    {
      goto LABEL_185;
    }
  }

  else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_185;
  }

  if ((v26 & 0xC000000000000001) != 0)
  {
    goto LABEL_166;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_166;
  }

LABEL_92:
  v30 = *(v26 + 32);
LABEL_93:
  v31 = v30;

  v32 = [v31 userTask];

  if (v32)
  {
    v2 = [v32 value];

    if (v2)
    {
      goto LABEL_196;
    }
  }

  while (1)
  {
LABEL_186:
    v80 = sub_252DA0F40(6, 5);
    if (v80 >> 62)
    {
      v84 = v80;
      v85 = sub_252E378C4();
      v80 = v84;
      if (!v85)
      {
LABEL_194:

        goto LABEL_195;
      }
    }

    else if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_194;
    }

    if ((v80 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v81 = *(v80 + 32);
      goto LABEL_191;
    }

    __break(1u);
LABEL_210:
    v34 = MEMORY[0x2530ADF00](0);
LABEL_103:
    v35 = v34;

    v36 = [v35 userTask];

    if (v36)
    {
      v2 = [v36 value];

      if (v2)
      {
        goto LABEL_196;
      }
    }

LABEL_172:
    if (v11 > 5u)
    {

      goto LABEL_176;
    }

    v74 = sub_252E37DB4();

    if (v74)
    {
LABEL_176:
      result = sub_252DA0F40(0x13, 4);
      if (result >> 62)
      {
        v78 = result;
        v79 = sub_252E378C4();
        result = v78;
        if (!v79)
        {
          goto LABEL_185;
        }

LABEL_178:
        if ((result & 0xC000000000000001) != 0)
        {
LABEL_212:
          v75 = MEMORY[0x2530ADF00](0);
        }

        else
        {
          if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v75 = *(result + 32);
        }

        v76 = v75;

        v77 = [v76 userTask];

        if (v77)
        {
          v2 = [v77 value];

          if (v2)
          {
            goto LABEL_196;
          }
        }
      }

      else
      {
        if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_178;
        }

LABEL_185:
      }
    }
  }

  v81 = MEMORY[0x2530ADF00](0);
LABEL_191:
  v82 = v81;

  v83 = [v82 userTask];

  if (!v83)
  {
    goto LABEL_195;
  }

  v2 = [v83 value];

LABEL_196:
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v86 = sub_252E36AD4();
  __swift_project_value_buffer(v86, qword_27F544D60);
  sub_252E379F4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD0, &unk_252E3E540);
  v87 = sub_252E37714();
  MEMORY[0x2530AD570](v87);

  MEMORY[0x2530AD570](44, 0xE100000000000000);
  sub_252CC3D90(0xD000000000000022, 0x8000000252E8E420, 0xD00000000000007ALL, 0x8000000252E8E210);

  if (!v2)
  {
    return 0;
  }

  v88 = [a1 userTask];
  if (v88)
  {
    v89 = v88;
    if ([v88 taskType] == 4)
    {

      v90 = 5;
      goto LABEL_207;
    }

    v91 = [v89 taskType];

    if (v91 == 5)
    {
      v90 = 5;
      goto LABEL_207;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v90 = 1;
LABEL_207:
  v92 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v93 = v2;
  v94 = sub_252E36F04();
  v95 = [v92 initWithIdentifier:0 displayString:v94];

  v96 = v95;
  [v96 setTaskType_];
  [v96 setAttribute_];
  [v96 setValue_];

  v97 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
  v98 = v96;
  v99 = sub_252E36F04();
  v100 = [v97 initWithIdentifier:0 displayString:v99];

  v101 = v100;
  [v101 setTaskOutcome_];
  [v101 setUserTask_];

  return v101;
}

id sub_252C6FEAC(void *a1, void *a2)
{
  v63 = a2;
  v3 = sub_252E36AD4();
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v53 - v9;
  v11 = sub_252C6EB60(a1, v63);
  if (!v11)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v3, qword_27F544D60);
    sub_252CC3D90(0xD000000000000050, 0x8000000252E8E350, 0xD00000000000007ALL, 0x8000000252E8E210);
    v47 = v63;

    return v47;
  }

  v12 = v11;
  v61 = v10;
  v62 = v8;
  type metadata accessor for MutableHomeUserTaskResponse();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = v12;
  v15 = [v14 userTask];
  if (v15)
  {
    v16 = v15;
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v17 = sub_252D6CA80(v16);
    v18 = *(v13 + 16);
    *(v13 + 16) = v17;
  }

  *(v13 + 24) = [v14 taskOutcome];
  type metadata accessor for MutableHomeEntityResponse();
  swift_initStackObject();
  v19 = v63;
  v20 = sub_252D6D668(v19);

  swift_beginAccess();
  v21 = *(v20 + 24);
  if (v21 >> 62)
  {
LABEL_52:
    v22 = sub_252E378C4();
    if (v22)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
LABEL_6:
      v63 = v3;
      v60 = v14;
      v3 = (v21 & 0xC000000000000001);
      v23 = v4;
      v4 = v21 & 0xFFFFFFFFFFFFFF8;
      v58 = (v23 + 16);
      v57 = "tTemperatureValue added: ";
      v56 = "al value without localization ";
      v59 = v23;
      v55 = (v23 + 8);

      v24 = 0;
      v14 = 0;
      v54 = 0xD000000000000036;
LABEL_7:
      v25 = v14;
      do
      {
        if (v3)
        {
          v26 = MEMORY[0x2530ADF00](v25, v21);
          v14 = (v25 + 1);
          if (__OFADD__(v25, 1))
          {
            goto LABEL_49;
          }
        }

        else
        {
          if (v25 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_52;
          }

          v26 = *(v21 + 8 * v25 + 32);

          v14 = (v25 + 1);
          if (__OFADD__(v25, 1))
          {
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }
        }

        v27 = *(v26 + 16);
        if (v27 && *(v27 + 24) == 6 && *(v27 + 16) == 5)
        {
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v28 = v63;
          v29 = __swift_project_value_buffer(v63, qword_27F544D60);
          (*v58)(v61, v29, v28);
          v67 = 0;
          v68 = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](v54, v57 | 0x8000000000000000);
          v30 = *(v26 + 16);
          if (v30)
          {
            swift_beginAccess();
            v31 = *(v30 + 32);
          }

          else
          {
            v32 = 0;
          }

          v64 = v32;
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B0, &unk_252E4BE00);
          v33 = sub_252E36F94();
          MEMORY[0x2530AD570](v33);

          MEMORY[0x2530AD570](0x3A6F74202020200ALL, 0xE900000000000020);
          v34 = *(v13 + 16);
          if (v34)
          {
            swift_beginAccess();
            v35 = *(v34 + 32);
          }

          else
          {
            v36 = 0;
          }

          v64 = v36;
          v37 = sub_252E36F94();
          MEMORY[0x2530AD570](v37);

          v38 = v61;
          sub_252CC3D90(v67, v68, 0xD00000000000007ALL, v56 | 0x8000000000000000);

          (*v55)(v38, v63);
          v39 = *(v26 + 16);

          if (!v39)
          {
            v24 = 1;
            if (v14 != v22)
            {
              goto LABEL_7;
            }

            goto LABEL_50;
          }

          v40 = *(v13 + 16);
          if (v40)
          {
            swift_beginAccess();
            v53 = *(v40 + 32);
          }

          else
          {
            v53 = 0;
          }

          v24 = 1;
          swift_beginAccess();
          v41 = *(v39 + 32);
          *(v39 + 32) = v53;

          if (v14 == v22)
          {
LABEL_50:

            v14 = v60;
            goto LABEL_48;
          }

          goto LABEL_7;
        }

        ++v25;
      }

      while (v14 != v22);

      v14 = v60;
      v3 = v63;
      v4 = v59;
      if (v24)
      {
        goto LABEL_48;
      }
    }
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v3, qword_27F544D60);
  v43 = v62;
  (*(v4 + 16))(v62, v42, v3);
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_252E379F4();

  v64 = 0xD000000000000029;
  v65 = 0x8000000252E8E3B0;
  v44 = *(v13 + 16);
  if (v44)
  {
    swift_beginAccess();
    v45 = *(v44 + 32);
  }

  else
  {
    v46 = 0;
  }

  v66 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B0, &unk_252E4BE00);
  v49 = sub_252E36F94();
  MEMORY[0x2530AD570](v49);

  sub_252CC3D90(v64, v65, 0xD00000000000007ALL, 0x8000000252E8E210);

  (*(v4 + 8))(v43, v3);
  swift_beginAccess();

  MEMORY[0x2530AD700](v50);
  if (*((*(v20 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v20 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v52 = *((*(v20 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_252E372A4();
  }

  sub_252E372D4();
  swift_endAccess();
LABEL_48:
  v51 = sub_252D6C15C();

  return v51;
}

double sub_252C70710(uint64_t a1, double a2)
{
  if (a1 == 3)
  {
    v2 = (a2 + -32.0) * 5.0 / 9.0;
    return round(v2 * 100.0) / 100.0;
  }

  if (a1 == 2)
  {
    v2 = a2 * 9.0 / 5.0 + 32.0;
    return round(v2 * 100.0) / 100.0;
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544C70);
  sub_252E379F4();

  v7 = sub_252C65640(a1);
  MEMORY[0x2530AD570](v7);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E8E4C0);
  sub_252CC3D90(0xD000000000000012, 0x8000000252E8E4A0, 0xD00000000000007ALL, 0x8000000252E8E210);

  return a2;
}

unint64_t sub_252C708D8()
{
  result = qword_27F544778;
  if (!qword_27F544778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544778);
  }

  return result;
}

unint64_t sub_252C70950(unint64_t a1, void *a2, void *a3)
{
  if (a1 >> 62)
  {
LABEL_37:
    v26 = a1;
    v3 = sub_252E378C4();
    a1 = v26;
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return 0;
    }
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  v7 = a1 + 32;
  v8 = &off_279711000;
  v32 = a1 & 0xC000000000000001;
  v33 = v3;
  v31 = a1 & 0xFFFFFFFFFFFFFF8;
  v29 = a1;
  v30 = a1 + 32;
  while (1)
  {
    if (v5)
    {
      a1 = MEMORY[0x2530ADF00](v4, v29);
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_36;
      }

      a1 = *(v7 + 8 * v4);
    }

    v9 = a1;
    if (__OFADD__(v4++, 1))
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v11 = [a1 v8[220]];
    if (v11)
    {
      break;
    }

LABEL_5:

    if (v4 == v3)
    {
      return 0;
    }
  }

  v12 = v11;
  type metadata accessor for HomeUserTaskResponse();
  v13 = sub_252E37264();

  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = v9;
    if (v14)
    {
      goto LABEL_13;
    }

    goto LABEL_4;
  }

  a1 = sub_252E378C4();
  v14 = a1;
  v34 = v9;
  if (!a1)
  {
LABEL_4:

    v3 = v33;
    v9 = v34;
    v6 = v31;
    v5 = v32;
    v7 = v30;
    v8 = &off_279711000;
    goto LABEL_5;
  }

LABEL_13:
  v15 = 0;
  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      a1 = MEMORY[0x2530ADF00](v15, v13);
    }

    else
    {
      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      a1 = *(v13 + 8 * v15 + 32);
    }

    v16 = a1;
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v37 = a1;
    v18 = sub_252DA58F4(&v37, a2, a3);

    if (v18)
    {
      break;
    }

    ++v15;
    if (v17 == v14)
    {
      goto LABEL_4;
    }
  }

  result = sub_252DA0F40(a2, a3);
  if (result >> 62)
  {
    v27 = result;
    v28 = sub_252E378C4();
    result = v27;
    if (!v28)
    {
      goto LABEL_40;
    }

LABEL_27:
    if ((result & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x2530ADF00](0);
    }

    else
    {
      if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v20 = *(result + 32);
    }

    v21 = v20;

    v22 = [v21 userTask];

    if (!v22)
    {
      goto LABEL_41;
    }

    v23 = [v22 value];

    if (!v23)
    {
      return 0;
    }

    [v23 doubleValue];
    v25 = v24;

    return v25;
  }

  else
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

LABEL_40:

LABEL_41:

    return 0;
  }
}

unint64_t sub_252C70C58()
{
  result = qword_27F544788;
  if (!qword_27F544788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F544788);
  }

  return result;
}

unint64_t sub_252C70CB8()
{
  result = qword_27F544790;
  if (!qword_27F544790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544790);
  }

  return result;
}

uint64_t sub_252C70D0C()
{
  v0 = sub_252E37B74();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252C70D6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252C71B04(a1);
}

BOOL sub_252C70E14(void *a1)
{
  if (*(a1[13] + 16))
  {
    return 1;
  }

  if (*(a1[16] + 16))
  {
    return 1;
  }

  if (*(a1[19] + 16))
  {
    return 1;
  }

  if (*(a1[28] + 16))
  {
    return 1;
  }

  if (*(a1[6] + 16))
  {
    return 1;
  }

  if (*(a1[20] + 16))
  {
    return 1;
  }

  return *(a1[21] + 16) != 0;
}

char *sub_252C70EA0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v74 = sub_252E32A64();
  v6 = *(v74 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v74);
  v64 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HomeStore();
  v9 = static HomeStore.shared.getter();
  v10 = sub_2529DA8E4();

  v79 = MEMORY[0x277D84F90];
  if (v10 >> 62)
  {
LABEL_43:
    v11 = sub_252E378C4();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D84F90];
  v69 = a1;
  if (v11)
  {
    v13 = 0;
    v14 = v10 & 0xC000000000000001;
    v76 = v10 & 0xFFFFFFFFFFFFFF8;
    v67 = (v6 + 1);
    v6 = &OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType;
    v68 = a2;
    v62 = v10;
    v63 = a3;
    v61 = v11;
    v75 = v10 & 0xC000000000000001;
    while (1)
    {
      if (v14)
      {
        v15 = MEMORY[0x2530ADF00](v13, v10);
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          v43 = v79;
          v12 = MEMORY[0x277D84F90];
          goto LABEL_30;
        }
      }

      else
      {
        if (v13 >= *(v76 + 16))
        {
          __break(1u);
          goto LABEL_43;
        }

        v15 = *(v10 + 8 * v13 + 32);

        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_27;
        }
      }

      if (*(v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) == a3)
      {
        break;
      }

LABEL_6:
      ++v13;
      if (v16 == v11)
      {
        goto LABEL_28;
      }
    }

    v17 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v18 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
    v19 = v17 == a1 && v18 == a2;
    if (v19 || (v20 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), v21 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8), (sub_252E37DB4() & 1) != 0))
    {

LABEL_24:
      v14 = v75;
      v6 = &OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType;
      goto LABEL_6;
    }

    v77 = v17;
    v78 = v18;
    v22 = v64;
    sub_252E32A44();
    v73 = sub_252947DBC();
    v23 = sub_252E37784();
    v71 = *v67;
    v71(v22, v74);
    v77 = v23;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    v72 = sub_2529508A0();
    v24 = sub_252E36EA4();
    v26 = v25;

    v77 = v24;
    v78 = v26;
    sub_252E32A34();
    v27 = sub_252E37784();
    v28 = v74;
    v29 = v71;
    v71(v22, v74);

    v77 = v27;
    sub_252E36EA4();

    v30 = sub_252E36FA4();
    v65 = v31;
    v66 = v30;

    v77 = v69;
    v78 = v68;
    sub_252E32A44();
    v32 = sub_252E37784();
    v29(v22, v28);
    v77 = v32;
    v33 = sub_252E36EA4();
    v35 = v34;

    v77 = v33;
    v78 = v35;
    sub_252E32A34();
    v36 = sub_252E37784();
    v71(v22, v74);

    v77 = v36;
    sub_252E36EA4();

    v37 = sub_252E36FA4();
    v39 = v38;
    v40 = v65;

    if (v66 == v37 && v40 == v39)
    {

      v10 = v62;
      a3 = v63;
      v11 = v61;
    }

    else
    {
      v41 = sub_252E37DB4();

      v10 = v62;
      a3 = v63;
      v11 = v61;
      if ((v41 & 1) == 0)
      {

        goto LABEL_23;
      }
    }

    sub_252E37A94();
    v42 = *(v79 + 16);
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
LABEL_23:
    a2 = v68;
    a1 = v69;
    goto LABEL_24;
  }

  v43 = MEMORY[0x277D84F90];
LABEL_30:

  if (v43 < 0 || (v43 & 0x4000000000000000) != 0)
  {
    v44 = sub_252E378C4();
    if (v44)
    {
      goto LABEL_33;
    }

LABEL_45:

    goto LABEL_46;
  }

  v44 = *(v43 + 16);
  if (!v44)
  {
    goto LABEL_45;
  }

LABEL_33:
  v77 = v12;
  result = sub_2529AA3A0(0, v44 & ~(v44 >> 63), 0);
  if (v44 < 0)
  {
    __break(1u);
    return result;
  }

  v46 = a2;
  v47 = 0;
  v12 = v77;
  do
  {
    if ((v43 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x2530ADF00](v47, v43);
    }

    else
    {
      v48 = *(v43 + 8 * v47 + 32);
    }

    v50 = *(v48 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v49 = *(v48 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    v77 = v12;
    v52 = *(v12 + 16);
    v51 = *(v12 + 24);
    if (v52 >= v51 >> 1)
    {
      sub_2529AA3A0((v51 > 1), v52 + 1, 1);
      v12 = v77;
    }

    ++v47;
    *(v12 + 16) = v52 + 1;
    v53 = v12 + 16 * v52;
    *(v53 + 32) = v50;
    *(v53 + 40) = v49;
  }

  while (v44 != v47);

  a2 = v46;
LABEL_46:
  v54 = sub_252C75848(v12);

  v55 = *(v54 + 16);
  if (!v55)
  {
LABEL_49:

    v56 = MEMORY[0x277D84F90];
    goto LABEL_50;
  }

  v56 = sub_252DFA3E0(*(v54 + 16), 0);
  v57 = sub_252E082D0(&v77, v56 + 4, v55, v54);
  sub_25297DEB0();
  if (v57 != v55)
  {
    __break(1u);
    goto LABEL_49;
  }

LABEL_50:
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v58 = sub_252E36AD4();
  __swift_project_value_buffer(v58, qword_27F544E08);
  v77 = 0;
  v78 = 0xE000000000000000;
  sub_252E379F4();

  v77 = 0xD000000000000018;
  v78 = 0x8000000252E8E620;
  v59 = MEMORY[0x2530AD730](v56, MEMORY[0x277D837D0]);
  MEMORY[0x2530AD570](v59);

  MEMORY[0x2530AD570](0x20726F6620, 0xE500000000000000);
  MEMORY[0x2530AD570](v69, a2);
  sub_252CC3D90(v77, v78, 0xD00000000000008ALL, 0x8000000252E8E590);

  return v56;
}

uint64_t sub_252C71628(uint64_t a1, uint64_t a2)
{
  v19 = *(a1 + 16);
  if (v19)
  {
    v2 = 0;
    v3 = *(a2 + 16);
    v17 = (a2 + 40);
    v18 = a1 + 32;
    v4 = MEMORY[0x277D84F90];
    v16 = v3;
    while (!v3)
    {
LABEL_3:
      if (++v2 == v19)
      {
        return v4;
      }
    }

    v20 = v2;
    v5 = *(v18 + 8 * v2);

    v6 = v17;
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C290;
      *(inited + 32) = v7;
      *(inited + 40) = v8;
      v10 = *(v5 + 16);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v12 = *(v5 + 24) >> 1, v13 = v5, v12 <= v10))
      {
        result = sub_2529F7A80(result, v10 + 1, 1, v5);
        v13 = result;
        v12 = *(result + 24) >> 1;
      }

      if (v12 <= *(v13 + 16))
      {
        break;
      }

      swift_arrayInitWithCopy();

      ++*(v13 + 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2529F8300(0, v4[2] + 1, 1, v4);
      }

      v15 = v4[2];
      v14 = v4[3];
      if (v15 >= v14 >> 1)
      {
        v4 = sub_2529F8300((v14 > 1), v15 + 1, 1, v4);
      }

      v4[2] = v15 + 1;
      v4[v15 + 4] = v13;
      v6 += 2;
      if (!--v3)
      {

        v2 = v20;
        v3 = v16;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_252C71838(uint64_t a1, uint64_t a2)
{
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544E08);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E8E540);
  sub_252E37AE4();
  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E8E570);
  v5 = MEMORY[0x2530AD730](a1, MEMORY[0x277D837D0]);
  MEMORY[0x2530AD570](v5);

  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008ALL, 0x8000000252E8E590);

  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = (a1 + 40);
  do
  {
    v12 = *(v9 - 1);
    v11 = *v9;

    v13 = sub_252C70EA0(v12, v11, a2);
    v14 = v13[2];
    v15 = v14 != 0;
    if (v8)
    {
      if (v14)
      {
      }

      else
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
        v13 = swift_allocObject();
        *(v13 + 1) = xmmword_252E3C290;
        v13[4] = v12;
        v13[5] = v11;
      }

      v10 = sub_252C71628(v8, v13);

      v8 = v10;
    }

    else
    {
      if (v14)
      {
      }

      else
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
        v13 = swift_allocObject();
        *(v13 + 1) = xmmword_252E3C290;
        v13[4] = v12;
        v13[5] = v11;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416E8, &qword_252E409A8);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_252E3C290;
      *(v8 + 32) = v13;
    }

    v7 |= v15;
    v9 += 2;
    --v6;
  }

  while (v6);
  if ((v7 & 1) == 0)
  {

    return 0;
  }

  return v8;
}

uint64_t sub_252C71B04(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 288) = *a1;
  *(v1 + 304) = v2;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *(v1 + 320) = *(a1 + 32);
  *(v1 + 336) = v4;
  v5 = *(a1 + 88);
  *(v1 + 352) = *(a1 + 72);
  *(v1 + 368) = v5;
  v6 = *(a1 + 104);
  *(v1 + 488) = v3;
  *(v1 + 496) = v6;
  *(v1 + 456) = *(a1 + 112);
  *(v1 + 504) = *(a1 + 128);
  *(v1 + 472) = *(a1 + 136);
  *(v1 + 512) = *(a1 + 152);
  *(v1 + 528) = *(a1 + 168);
  v7 = *(a1 + 208);
  *(v1 + 400) = *(a1 + 192);
  *(v1 + 416) = v7;
  *(v1 + 384) = *(a1 + 176);
  *(v1 + 536) = *(a1 + 224);
  memcpy((v1 + 16), (a1 + 232), 0x110uLL);

  return MEMORY[0x2822009F8](sub_252C71BEC, 0, 0);
}

uint64_t sub_252C71BEC()
{
  v189 = v0;
  v176 = (v0 + 472);
  v177 = (v0 + 456);
  v1 = *(v0 + 496);
  v2 = MEMORY[0x277D84F90];
  v185 = MEMORY[0x277D84F90];
  if (!*(v1 + 16) || (v3 = sub_252C71838(v1, 3)) == 0)
  {
    v22 = *(v0 + 520);
    if (*(v22 + 16) && (v23 = sub_252C71838(v22, 4)) != 0)
    {
      v24 = *(v23 + 16);
      if (v24)
      {
        __src[0] = v2;
        v25 = v23;
        sub_2529AA480(0, v24, 0);
        v179 = v2;
        _s7BuilderCMa_1();
        v153 = v25;
        v26 = v25;
        v170 = v24 - 1;
        for (i = 32; ; i = v156 + 8)
        {
          v28 = *(v0 + 536);
          v29 = *(v0 + 528);
          v31 = *(v0 + 496);
          v30 = *(v0 + 504);
          v32 = *(v0 + 488);
          v156 = i;
          v33 = *(v26 + i);
          swift_allocObject();
          v163 = *(v0 + 512);
          sub_252E1E238();
          v34 = *(v0 + 304);
          v188[0] = *(v0 + 288);
          v188[1] = v34;
          v35 = *(v0 + 336);
          v188[2] = *(v0 + 320);
          *(&v188[3] + 8) = v35;
          v36 = *(v0 + 368);
          *(&v188[4] + 8) = *(v0 + 352);
          *(&v188[5] + 8) = v36;
          *&v188[3] = v32;
          *(&v188[6] + 1) = v31;
          v188[7] = *v177;
          *(&v188[8] + 8) = *v176;
          *(&v188[9] + 8) = v163;
          *&v188[8] = v30;
          *(&v188[10] + 1) = v29;
          v37 = *(v0 + 400);
          v188[11] = *(v0 + 384);
          v188[12] = v37;
          v188[13] = *(v0 + 416);
          *&v188[14] = v28;
          memcpy(&v188[14] + 8, (v0 + 16), 0x110uLL);

          v38 = sub_252E1EBE8(v188);

          v19 = v179;
          if (v33[2])
          {
            v39 = v33[4];
            v40 = v33[5];
            swift_beginAccess();
            v41 = *(v38 + 176);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v38 + 176) = v41;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v41 = sub_2529F7A80(0, *(v41 + 2) + 1, 1, v41);
              *(v38 + 176) = v41;
            }

            v44 = *(v41 + 2);
            v43 = *(v41 + 3);
            if (v44 >= v43 >> 1)
            {
              v41 = sub_2529F7A80((v43 > 1), v44 + 1, 1, v41);
            }

            *(v41 + 2) = v44 + 1;
            v45 = &v41[16 * v44];
            *(v45 + 4) = v39;
            *(v45 + 5) = v40;
            *(v38 + 176) = v41;
            swift_endAccess();
          }

          sub_252E1E4F8(v188);

          __src[0] = v179;
          v47 = *(v179 + 16);
          v46 = *(v179 + 24);
          if (v47 >= v46 >> 1)
          {
            sub_2529AA480((v46 > 1), v47 + 1, 1);
            v19 = __src[0];
          }

          *(v19 + 16) = v47 + 1;
          memcpy((v19 + 504 * v47 + 32), v188, 0x1F8uLL);
          v26 = v153;
          if (!v170)
          {
            break;
          }

          v179 = v19;
          --v170;
        }

        goto LABEL_69;
      }
    }

    else
    {
      v48 = *(v0 + 536);
      if (*(v48 + 16) && (v49 = sub_252C71838(v48, 2)) != 0)
      {
        v50 = *(v49 + 16);
        if (v50)
        {
          v157 = v49;
          sub_2529AA480(0, v50, 0);
          v180 = v2;
          _s7BuilderCMa_1();
          v51 = v157;
          v171 = v50 - 1;
          for (j = 32; ; j += 8)
          {
            v53 = *(v0 + 536);
            v54 = *(v0 + 528);
            v55 = *(v0 + 496);
            v56 = *(v0 + 504);
            v57 = *(v0 + 488);
            v58 = *(v51 + j);
            swift_allocObject();
            v164 = *(v0 + 512);
            sub_252E1E238();
            v59 = *(v0 + 304);
            v188[0] = *(v0 + 288);
            v188[1] = v59;
            v60 = *(v0 + 336);
            v188[2] = *(v0 + 320);
            *(&v188[3] + 8) = v60;
            v61 = *(v0 + 368);
            *(&v188[4] + 8) = *(v0 + 352);
            *(&v188[5] + 8) = v61;
            *&v188[3] = v57;
            *(&v188[6] + 1) = v55;
            v188[7] = *v177;
            *(&v188[8] + 8) = *v176;
            *(&v188[9] + 8) = v164;
            *&v188[8] = v56;
            *(&v188[10] + 1) = v54;
            v62 = *(v0 + 400);
            v188[11] = *(v0 + 384);
            v188[12] = v62;
            v188[13] = *(v0 + 416);
            *&v188[14] = v53;
            memcpy(&v188[14] + 8, (v0 + 16), 0x110uLL);

            v63 = sub_252E1EBE8(v188);

            v64 = *(v63 + 240);
            *(v63 + 240) = v58;

            sub_252E1E4F8(__src);

            v19 = v180;
            v66 = *(v180 + 16);
            v65 = *(v180 + 24);
            if (v66 >= v65 >> 1)
            {
              sub_2529AA480((v65 > 1), v66 + 1, 1);
              v19 = v180;
            }

            *(v19 + 16) = v66 + 1;
            memcpy((v19 + 504 * v66 + 32), __src, 0x1F8uLL);
            if (!v171)
            {
              break;
            }

            v180 = v19;
            --v171;
            v51 = v157;
          }

          goto LABEL_69;
        }
      }

      else
      {
        v67 = *(v0 + 488);
        if (*(v67 + 16) && (v68 = sub_252C71838(v67, 1)) != 0)
        {
          v69 = *(v68 + 16);
          if (v69)
          {
            __src[0] = v2;
            v70 = v68;
            sub_2529AA480(0, v69, 0);
            v181 = v2;
            _s7BuilderCMa_1();
            v154 = v70;
            v71 = v70;
            v172 = v69 - 1;
            for (k = 32; ; k = v158 + 8)
            {
              v73 = *(v0 + 536);
              v74 = *(v0 + 528);
              v76 = *(v0 + 496);
              v75 = *(v0 + 504);
              v77 = *(v0 + 488);
              v158 = k;
              v78 = *(v71 + k);
              swift_allocObject();
              v165 = *(v0 + 512);
              sub_252E1E238();
              v79 = *(v0 + 304);
              v188[0] = *(v0 + 288);
              v188[1] = v79;
              v80 = *(v0 + 336);
              v188[2] = *(v0 + 320);
              *(&v188[3] + 8) = v80;
              v81 = *(v0 + 368);
              *(&v188[4] + 8) = *(v0 + 352);
              *(&v188[5] + 8) = v81;
              *&v188[3] = v77;
              *(&v188[6] + 1) = v76;
              v188[7] = *v177;
              *(&v188[8] + 8) = *v176;
              *(&v188[9] + 8) = v165;
              *&v188[8] = v75;
              *(&v188[10] + 1) = v74;
              v82 = *(v0 + 400);
              v188[11] = *(v0 + 384);
              v188[12] = v82;
              v188[13] = *(v0 + 416);
              *&v188[14] = v73;
              memcpy(&v188[14] + 8, (v0 + 16), 0x110uLL);

              v83 = sub_252E1EBE8(v188);

              v19 = v181;
              if (v78[2])
              {
                v84 = v78[4];
                v85 = v78[5];
                swift_beginAccess();
                v86 = *(v83 + 64);

                v87 = swift_isUniquelyReferenced_nonNull_native();
                *(v83 + 64) = v86;
                if ((v87 & 1) == 0)
                {
                  v86 = sub_2529F7A80(0, *(v86 + 2) + 1, 1, v86);
                  *(v83 + 64) = v86;
                }

                v89 = *(v86 + 2);
                v88 = *(v86 + 3);
                if (v89 >= v88 >> 1)
                {
                  v86 = sub_2529F7A80((v88 > 1), v89 + 1, 1, v86);
                }

                *(v86 + 2) = v89 + 1;
                v90 = &v86[16 * v89];
                *(v90 + 4) = v84;
                *(v90 + 5) = v85;
                *(v83 + 64) = v86;
                swift_endAccess();
              }

              sub_252E1E4F8(v188);

              __src[0] = v181;
              v92 = *(v181 + 16);
              v91 = *(v181 + 24);
              if (v92 >= v91 >> 1)
              {
                sub_2529AA480((v91 > 1), v92 + 1, 1);
                v19 = __src[0];
              }

              *(v19 + 16) = v92 + 1;
              memcpy((v19 + 504 * v92 + 32), v188, 0x1F8uLL);
              v71 = v154;
              if (!v172)
              {
                break;
              }

              v181 = v19;
              --v172;
            }

            goto LABEL_69;
          }
        }

        else
        {
          v93 = *(v0 + 512);
          if (*(v93 + 16) && (v94 = sub_252C71838(v93, 7)) != 0)
          {
            v95 = *(v94 + 16);
            if (v95)
            {
              v159 = v94;
              sub_2529AA480(0, v95, 0);
              v182 = v2;
              _s7BuilderCMa_1();
              v96 = v159;
              v166 = v95 - 1;
              for (m = 32; ; m += 8)
              {
                v98 = *(v0 + 536);
                v99 = *(v0 + 528);
                v100 = *(v0 + 496);
                v101 = *(v0 + 504);
                v102 = *(v0 + 488);
                v103 = *(v96 + m);
                swift_allocObject();
                v173 = *(v0 + 512);
                sub_252E1E238();
                v104 = *(v0 + 304);
                v188[0] = *(v0 + 288);
                v188[1] = v104;
                v105 = *(v0 + 336);
                v188[2] = *(v0 + 320);
                *(&v188[3] + 8) = v105;
                v106 = *(v0 + 368);
                *(&v188[4] + 8) = *(v0 + 352);
                *(&v188[5] + 8) = v106;
                *&v188[3] = v102;
                *(&v188[6] + 1) = v100;
                v188[7] = *v177;
                *(&v188[8] + 8) = *v176;
                *(&v188[9] + 8) = v173;
                *&v188[8] = v101;
                *(&v188[10] + 1) = v99;
                v107 = *(v0 + 400);
                v188[11] = *(v0 + 384);
                v188[12] = v107;
                v188[13] = *(v0 + 416);
                *&v188[14] = v98;
                memcpy(&v188[14] + 8, (v0 + 16), 0x110uLL);

                v108 = sub_252E1EBE8(v188);

                v109 = *(v108 + 168);
                *(v108 + 168) = v103;

                sub_252E1E4F8(__src);

                v19 = v182;
                v111 = *(v182 + 16);
                v110 = *(v182 + 24);
                if (v111 >= v110 >> 1)
                {
                  sub_2529AA480((v110 > 1), v111 + 1, 1);
                  v19 = v182;
                }

                *(v19 + 16) = v111 + 1;
                memcpy((v19 + 504 * v111 + 32), __src, 0x1F8uLL);
                if (!v166)
                {
                  break;
                }

                v182 = v19;
                --v166;
                v96 = v159;
              }

              goto LABEL_69;
            }
          }

          else
          {
            v112 = *(v0 + 528);
            if (*(v112 + 16) && (v113 = sub_252C71838(v112, 7)) != 0)
            {
              v114 = *(v113 + 16);
              if (v114)
              {
                v160 = v113;
                sub_2529AA480(0, v114, 0);
                v183 = v2;
                _s7BuilderCMa_1();
                v115 = v160;
                v174 = v114 - 1;
                for (n = 32; ; n += 8)
                {
                  v117 = *(v0 + 536);
                  v118 = *(v0 + 528);
                  v119 = *(v0 + 496);
                  v120 = *(v0 + 504);
                  v121 = *(v0 + 488);
                  v122 = *(v115 + n);
                  swift_allocObject();
                  v167 = *(v0 + 512);
                  sub_252E1E238();
                  v123 = *(v0 + 304);
                  v188[0] = *(v0 + 288);
                  v188[1] = v123;
                  v124 = *(v0 + 336);
                  v188[2] = *(v0 + 320);
                  *(&v188[3] + 8) = v124;
                  v125 = *(v0 + 368);
                  *(&v188[4] + 8) = *(v0 + 352);
                  *(&v188[5] + 8) = v125;
                  *&v188[3] = v121;
                  *(&v188[6] + 1) = v119;
                  v188[7] = *v177;
                  *(&v188[8] + 8) = *v176;
                  *(&v188[9] + 8) = v167;
                  *&v188[8] = v120;
                  *(&v188[10] + 1) = v118;
                  v126 = *(v0 + 400);
                  v188[11] = *(v0 + 384);
                  v188[12] = v126;
                  v188[13] = *(v0 + 416);
                  *&v188[14] = v117;
                  memcpy(&v188[14] + 8, (v0 + 16), 0x110uLL);

                  v127 = sub_252E1EBE8(v188);

                  v128 = *(v127 + 184);
                  *(v127 + 184) = v122;

                  sub_252E1E4F8(__src);

                  v19 = v183;
                  v130 = *(v183 + 16);
                  v129 = *(v183 + 24);
                  if (v130 >= v129 >> 1)
                  {
                    sub_2529AA480((v129 > 1), v130 + 1, 1);
                    v19 = v183;
                  }

                  *(v19 + 16) = v130 + 1;
                  memcpy((v19 + 504 * v130 + 32), __src, 0x1F8uLL);
                  if (!v174)
                  {
                    break;
                  }

                  v183 = v19;
                  --v174;
                  v115 = v160;
                }

                goto LABEL_69;
              }
            }

            else
            {
              v131 = *(v0 + 504);
              if (!*(v131 + 16))
              {
                v133 = MEMORY[0x277D84F90];
                goto LABEL_73;
              }

              v132 = sub_252C71838(v131, 5);
              v133 = MEMORY[0x277D84F90];
              if (!v132)
              {
                goto LABEL_73;
              }

              v134 = *(v132 + 16);
              if (v134)
              {
                v186 = MEMORY[0x277D84F90];
                v161 = v132;
                sub_2529AA480(0, v134, 0);
                v184 = v186;
                _s7BuilderCMa_1();
                v135 = v161;
                v175 = v134 - 1;
                for (ii = 32; ; ii += 8)
                {
                  v137 = *(v0 + 536);
                  v138 = *(v0 + 528);
                  v139 = *(v0 + 496);
                  v140 = *(v0 + 504);
                  v141 = *(v0 + 488);
                  v142 = *(v135 + ii);
                  swift_allocObject();
                  v168 = *(v0 + 512);
                  sub_252E1E238();
                  v143 = *(v0 + 304);
                  v188[0] = *(v0 + 288);
                  v188[1] = v143;
                  v144 = *(v0 + 336);
                  v188[2] = *(v0 + 320);
                  *(&v188[3] + 8) = v144;
                  v145 = *(v0 + 368);
                  *(&v188[4] + 8) = *(v0 + 352);
                  *(&v188[5] + 8) = v145;
                  *&v188[3] = v141;
                  *(&v188[6] + 1) = v139;
                  v188[7] = *v177;
                  *(&v188[8] + 8) = *v176;
                  *(&v188[9] + 8) = v168;
                  *&v188[8] = v140;
                  *(&v188[10] + 1) = v138;
                  v146 = *(v0 + 400);
                  v188[11] = *(v0 + 384);
                  v188[12] = v146;
                  v188[13] = *(v0 + 416);
                  *&v188[14] = v137;
                  memcpy(&v188[14] + 8, (v0 + 16), 0x110uLL);

                  v147 = sub_252E1EBE8(v188);

                  v148 = *(v147 + 144);
                  *(v147 + 144) = v142;

                  sub_252E1E4F8(__src);

                  v19 = v184;
                  v150 = *(v184 + 16);
                  v149 = *(v184 + 24);
                  if (v150 >= v149 >> 1)
                  {
                    sub_2529AA480((v149 > 1), v150 + 1, 1);
                    v19 = v184;
                  }

                  *(v19 + 16) = v150 + 1;
                  memcpy((v19 + 504 * v150 + 32), __src, 0x1F8uLL);
                  if (!v175)
                  {
                    break;
                  }

                  v184 = v19;
                  --v175;
                  v135 = v161;
                }

                goto LABEL_69;
              }
            }
          }
        }
      }
    }

LABEL_71:

    v19 = MEMORY[0x277D84F90];
    goto LABEL_72;
  }

  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_71;
  }

  v155 = v3;
  sub_2529AA480(0, v4, 0);
  v178 = v2;
  _s7BuilderCMa_1();
  v5 = v155;
  v169 = v4 - 1;
  for (jj = 32; ; jj += 8)
  {
    v7 = *(v0 + 536);
    v8 = *(v0 + 528);
    v9 = *(v0 + 496);
    v10 = *(v0 + 504);
    v11 = *(v0 + 488);
    v12 = *(v5 + jj);
    swift_allocObject();
    v162 = *(v0 + 512);
    sub_252E1E238();
    v13 = *(v0 + 304);
    v188[0] = *(v0 + 288);
    v188[1] = v13;
    v14 = *(v0 + 336);
    v188[2] = *(v0 + 320);
    *(&v188[3] + 8) = v14;
    v15 = *(v0 + 368);
    *(&v188[4] + 8) = *(v0 + 352);
    *(&v188[5] + 8) = v15;
    *&v188[3] = v11;
    *(&v188[6] + 1) = v9;
    v188[7] = *v177;
    *(&v188[8] + 8) = *v176;
    *(&v188[9] + 8) = v162;
    *&v188[8] = v10;
    *(&v188[10] + 1) = v8;
    v16 = *(v0 + 400);
    v188[11] = *(v0 + 384);
    v188[12] = v16;
    v188[13] = *(v0 + 416);
    *&v188[14] = v7;
    memcpy(&v188[14] + 8, (v0 + 16), 0x110uLL);

    v17 = sub_252E1EBE8(v188);

    v18 = *(v17 + 120);
    *(v17 + 120) = v12;

    sub_252E1E4F8(__src);

    v19 = v178;
    v21 = *(v178 + 16);
    v20 = *(v178 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_2529AA480((v20 > 1), v21 + 1, 1);
      v19 = v178;
    }

    *(v19 + 16) = v21 + 1;
    memcpy((v19 + 504 * v21 + 32), __src, 0x1F8uLL);
    if (!v169)
    {
      break;
    }

    v178 = v19;
    --v169;
    v5 = v155;
  }

LABEL_69:

LABEL_72:
  sub_25297AA34(v19);
  v133 = v185;
LABEL_73:
  v151 = *(v0 + 8);

  return v151(v133);
}

uint64_t sub_252C72AE0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8);
  v3[5] = v4;
  v3[6] = *(v4 + 64);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C72BC0, 0, 0);
}

uint64_t sub_252C72BC0()
{
  v1 = v0[3];
  sub_252C4BEAC();
  if (v2)
  {
    v3 = v0[8];
    sub_252E37024();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[4];
  v10 = v0[2];
  v11 = sub_252E36324();
  (*(*(v11 - 8) + 56))(v6, v4, 1, v11);
  v12 = v9[12];
  v13 = v9[13];
  __swift_project_boxed_opaque_existential_1(v9 + 9, v12);
  sub_252956C1C(v6, v5);
  v14 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  sub_2529439A0(v5, v15 + v14);

  sub_252943BD0(sub_252C72FC8, v15, 1, v12, v13);
  sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);

  v16 = v0[1];

  return v16();
}

uint64_t sub_252C72D84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);

  v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v4 + 16), v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = sub_252E33914();
  sub_252BFE230(v5 & 1, a2);

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

BOOL sub_252C72E54(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  return *(a2 + v2) == 110;
}

uint64_t sub_252C72EB8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252C72AE0(a1, a2);
}

void *sub_252C72F64@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for RemoteAccessNotSetUpResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252C72FC8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_252C72D84(v2, v3);
}

uint64_t sub_252C73074()
{
  type metadata accessor for TurnOnSwingModeHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252C730A4(void *a1)
{
  type metadata accessor for HomeStore();
  v2 = static HomeStore.shared.getter();
  v3 = v2[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v3 != 2 && (v3 & 1) == 0 || (v4 = [a1 filters]) == 0)
  {

    return 0;
  }

  v5 = v4;
  type metadata accessor for HomeFilter();
  v6 = sub_252E37264();

  v7 = [a1 userTask];
  v8 = HomeStore.services(matching:supporting:)(v6, v7);
  LOBYTE(v5) = v9;

  if (v5)
  {
    v10 = v8;
    v11 = 1;
LABEL_109:
    sub_252929F10(v10, v11);
    return 0;
  }

  v12 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
    goto LABEL_107;
  }

  v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
LABEL_108:
    v10 = v8;
    v11 = 0;
    goto LABEL_109;
  }

LABEL_9:
  v14 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v15 = sub_252E36F04();
  v16 = [v14 initWithIdentifier:0 displayString:v15];

  v17 = v16;
  [v17 setBoolValue_];
  [v17 setType_];

  v18 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v19 = sub_252E36F04();
  v20 = [v18 initWithIdentifier:0 displayString:v19];

  v21 = v20;
  [v21 setTaskType_];
  [v21 setAttribute_];
  [v21 setValue_];

  v22 = v8;
  v8 = 0;
  v92 = MEMORY[0x277D84F90];
  v23 = v22 & 0xC000000000000001;
  v81 = v22;
  v24 = v22 + 32;
  v90 = *MEMORY[0x277CCF8D8];
  v89 = *MEMORY[0x277CCFA30];
  v25 = *MEMORY[0x277CCF788];
  v26 = &off_279711000;
  v84 = v13;
  v85 = v12;
  v82 = v22 + 32;
  v83 = v22 & 0xC000000000000001;
  v86 = v21;
  do
  {
    if (v23)
    {
      v88 = MEMORY[0x2530ADF00](v8, v81);
      v27 = __OFADD__(v8++, 1);
      if (v27)
      {
        goto LABEL_103;
      }
    }

    else
    {
      if (v8 >= *(v12 + 16))
      {
        goto LABEL_104;
      }

      v88 = *(v24 + 8 * v8);

      v27 = __OFADD__(v8++, 1);
      if (v27)
      {
        goto LABEL_103;
      }
    }

    if ([v21 v26[203]] == 5)
    {
      v87 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
      v28 = [*(v88 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) characteristics];
      sub_252BAC798();
      v29 = sub_252E37264();

      if (v29 >> 62)
      {
        v30 = sub_252E378C4();
      }

      else
      {
        v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v31 = 0;
      while (1)
      {
        if (v30 == v31)
        {
          goto LABEL_67;
        }

        if ((v29 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x2530ADF00](v31, v29);
        }

        else
        {
          if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_98;
          }

          v32 = *(v29 + 8 * v31 + 32);
        }

        v33 = v32;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        v34 = [v32 characteristicType];
        v12 = sub_252E36F34();
        v36 = v35;

        if (v12 == sub_252E36F34() && v36 == v37)
        {

LABEL_35:

          v40 = [*(v88 + v87) characteristics];
          v41 = sub_252E37264();

          if (v41 >> 62)
          {
            v42 = sub_252E378C4();
          }

          else
          {
            v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v43 = 0;
          while (v42 != v43)
          {
            if ((v41 & 0xC000000000000001) != 0)
            {
              v44 = MEMORY[0x2530ADF00](v43, v41);
            }

            else
            {
              if (v43 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_100;
              }

              v44 = *(v41 + 8 * v43 + 32);
            }

            v45 = v44;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_99;
            }

            v12 = [v44 characteristicType];
            v46 = sub_252E36F34();
            v48 = v47;

            if (v46 == sub_252E36F34() && v48 == v49)
            {

LABEL_52:

              v51 = [*(v88 + v87) characteristics];
              v52 = sub_252E37264();

              if (v52 >> 62)
              {
                v53 = sub_252E378C4();
              }

              else
              {
                v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v54 = 0;
              while (v53 != v54)
              {
                if ((v52 & 0xC000000000000001) != 0)
                {
                  v55 = MEMORY[0x2530ADF00](v54, v52);
                }

                else
                {
                  if (v54 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_102;
                  }

                  v55 = *(v52 + 8 * v54 + 32);
                }

                v56 = v55;
                if (__OFADD__(v54, 1))
                {
                  goto LABEL_101;
                }

                v57 = [v55 characteristicType];
                v58 = sub_252E36F34();
                v60 = v59;

                if (v58 == sub_252E36F34() && v60 == v61)
                {

LABEL_69:

                  v12 = v85;
                  v21 = v86;
                  v23 = v83;
                  v13 = v84;
                  v24 = v82;
                  v26 = &off_279711000;
                  goto LABEL_70;
                }

                v12 = sub_252E37DB4();

                ++v54;
                if (v12)
                {
                  goto LABEL_69;
                }
              }

              break;
            }

            v12 = sub_252E37DB4();

            ++v43;
            if (v12)
            {
              goto LABEL_52;
            }
          }

LABEL_67:

          v12 = v85;
          v21 = v86;
          v23 = v83;
          v13 = v84;
          v24 = v82;
          v26 = &off_279711000;
          goto LABEL_11;
        }

        v12 = sub_252E37DB4();

        ++v31;
        if (v12)
        {
          goto LABEL_35;
        }
      }

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
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      v13 = sub_252E378C4();
      if (!v13)
      {
        goto LABEL_108;
      }

      goto LABEL_9;
    }

    sub_252DE8C4C(v21, v88);
    if (v39)
    {

LABEL_70:
      sub_252E37A94();
      v63 = *(v92 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    else
    {
    }

LABEL_11:
    ;
  }

  while (v8 != v13);
  sub_252929F10(v81, 0);
  if (v92 < 0 || (v92 & 0x4000000000000000) != 0)
  {
    v64 = sub_252E378C4();
    if (v64)
    {
      goto LABEL_80;
    }

LABEL_112:

    return 0;
  }

  v64 = *(v92 + 16);
  if (!v64)
  {
    goto LABEL_112;
  }

LABEL_80:
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v65.n128_f64[0] = HomeFilter.Builder.init()();
  v67 = v66;
  v68 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v69 = v68;
    while (1)
    {
      if ((v92 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x2530ADF00](v69, v92, v65);
        v68 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          goto LABEL_105;
        }
      }

      else
      {
        if (v69 >= *(v92 + 16))
        {
          goto LABEL_106;
        }

        v12 = *(v92 + 8 * v69 + 32);

        v68 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          goto LABEL_105;
        }
      }

      v70 = [*(v12 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) assistantIdentifier];
      if (v70)
      {
        break;
      }

      ++v69;
      if (v68 == v64)
      {
        goto LABEL_96;
      }
    }

    v71 = v70;
    v72 = sub_252E36F34();
    v91 = v73;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2529F7A80(0, *(v8 + 16) + 1, 1, v8);
    }

    v75 = *(v8 + 16);
    v74 = *(v8 + 24);
    v12 = v75 + 1;
    if (v75 >= v74 >> 1)
    {
      v8 = sub_2529F7A80((v74 > 1), v75 + 1, 1, v8);
    }

    *(v8 + 16) = v12;
    v76 = v8 + 16 * v75;
    *(v76 + 32) = v72;
    *(v76 + 40) = v91;
  }

  while (v68 != v64);
LABEL_96:

  v77 = (*(*v67 + 568))(v8);

  v79 = (*(*v77 + 760))(v78);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  result = swift_allocObject();
  *(result + 16) = xmmword_252E3C130;
  *(result + 32) = v79;
  return result;
}

void sub_252C73AA0(void *a1, void (*a2)(void))
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = [a1 userTask];
  if (!v4)
  {
    goto LABEL_13;
  }

  v35 = v4;
  v5 = [a1 filters];
  if (!v5)
  {

LABEL_13:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v27 = sub_252E36AD4();
    __swift_project_value_buffer(v27, qword_27F544C70);
    sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD000000000000083, 0x8000000252E8E6D0, 0xD000000000000021, 0x8000000252E68B10, 32);
    v28 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v29 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v28[v29] = 5;
    [v28 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v30 = sub_252E37254();
    [v28 setEntityResponses_];

    (a2)(v28);
    goto LABEL_21;
  }

  v6 = v5;
  type metadata accessor for HomeFilter();
  v7 = sub_252E37264();

  v8 = sub_252C730A4(a1);
  if (v8)
  {
    v10 = v8;
    v11 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401C8, &unk_252E3BFF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_252E3C130;
    *(v13 + 32) = v35;
    *(inited + 40) = v13;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_252E3C130;
    *(v14 + 32) = v11;
    v34 = v35;

    v33 = v11;
    v15 = sub_2529F7C10(1, 2, 1, inited);
    v15[2] = 2;
    v15[6] = v10;
    v15[7] = v14;
    v38 = MEMORY[0x277D84F90];
    sub_2529AA440(0, 2, 0);
    v16 = v38;
    *v36 = *(v15 + 2);
    v17 = *(v38 + 16);
    v18 = *(v38 + 24);
    v19 = v17 + 1;

    if (v17 >= v18 >> 1)
    {
      sub_2529AA440((v18 > 1), v17 + 1, 1);
      v16 = v38;
    }

    *(v16 + 16) = v19;
    *(v16 + 16 * v17 + 32) = *v36;
    *v37 = *(v15 + 3);
    v20 = *(v16 + 24);

    if (v19 >= v20 >> 1)
    {
      sub_2529AA440((v20 > 1), v17 + 2, 1);
    }

    *(v16 + 16) = v17 + 2;
    *(v16 + 16 * v19 + 32) = *v37;

    v21 = sub_252B4D7EC(v16, 0, 1);
    v23 = v22;

    if (v23)
    {
      v24 = v21;
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v25 = sub_252E36AD4();
      __swift_project_value_buffer(v25, qword_27F544C70);
      MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
      sub_252E37AE4();
      sub_252CC4050(0, 0xE000000000000000, 0xD000000000000083, 0x8000000252E8E6D0, 0xD000000000000021, 0x8000000252E68B10, 50);

      v26 = parse(error:with:)(v21, a1);
      a2();

      sub_252927D3C(v21);
    }

    else
    {
      (a2)(v21);

      sub_252927D3C(v21);
    }

    sub_252927D3C(v21);
LABEL_21:
    v32 = *MEMORY[0x277D85DE8];
    return;
  }

  _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();

  sub_252DE14FC(a1, a2);
  v31 = *MEMORY[0x277D85DE8];
}

uint64_t sub_252C7409C(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    goto LABEL_60;
  }

  v3 = v2;
  v4 = [v2 attribute];

  if (v4 != 22)
  {
    return 0;
  }

  v5 = [a1 userTask];
  v6 = [v5 value];

  v7 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v8 = sub_252E36F04();
  v9 = [v7 initWithIdentifier:0 displayString:v8];

  v10 = v9;
  [v10 setBoolValue_];
  [v10 setType_];

  if (!v6)
  {

    return 0;
  }

  v11 = sub_252E37694();

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for HomeStore();
  v12 = static HomeStore.shared.getter();
  v13 = v12[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v13 != 2 && (v13 & 1) == 0 || (v14 = [a1 filters]) == 0)
  {

    return 0;
  }

  v15 = v14;
  type metadata accessor for HomeFilter();
  v16 = sub_252E37264();

  v17 = [a1 userTask];
  v18 = HomeStore.accessories(matching:supporting:)(v16, v17);
  v20 = v19;

  if (v20)
  {
    v21 = v18;
    v22 = 1;
LABEL_64:
    sub_252929F10(v21, v22);
    return 0;
  }

  v23 = [a1 userTask];
  if (!v23)
  {
LABEL_59:
    sub_252929F10(v18, 0);
LABEL_60:
    sub_252C515AC();
    return 0;
  }

  v24 = v23;
  v25 = [v23 taskType];

  if (v25 != 1)
  {
LABEL_63:
    v21 = v18;
    v22 = 0;
    goto LABEL_64;
  }

  if (v18 >> 62)
  {
LABEL_70:
    v26 = sub_252E378C4();
  }

  else
  {
    v26 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = 0;
  v28 = v18 & 0xC000000000000001;
  v29 = v18 + 32;
  v70 = v26;
  while (1)
  {
    if (v27 == v26)
    {
      goto LABEL_63;
    }

    if (v28)
    {
      v30 = MEMORY[0x2530ADF00](v27, v18);
      v31 = __OFADD__(v27++, 1);
      if (v31)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    else
    {
      if (v27 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_70;
      }

      v30 = *(v29 + 8 * v27);

      v31 = __OFADD__(v27++, 1);
      if (v31)
      {
        goto LABEL_58;
      }
    }

    v32 = (*v30 + 256);
    v33 = *v32;
    if ((*v32)() == 39)
    {
      goto LABEL_68;
    }

    v34 = (*v30 + 272);
    v35 = *v34;
    v36 = (*v34)();
    v37 = v36;
    if (*(v36 + 16))
    {
      v38 = *(v36 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](39);
      v39 = sub_252E37F14();
      v40 = -1 << *(v37 + 32);
      v41 = v39 & ~v40;
      if ((*(v37 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
      {
        v42 = ~v40;
        while (*(*(v37 + 48) + 8 * v41) != 39)
        {
          v41 = (v41 + 1) & v42;
          if (((*(v37 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

LABEL_65:
        sub_252929F10(v18, 0);

LABEL_66:

        return 1;
      }
    }

LABEL_27:

    v44 = (v33)(v43);
    if (v44 == 38)
    {
      v46 = &unk_2864AC3F8;
      goto LABEL_31;
    }

    v45 = MEMORY[0x277D84FA0];
    if (v44 == 41)
    {
      v46 = &unk_2864AC420;
LABEL_31:
      v45 = sub_2529FC004(v46);
    }

    if (*(v45 + 16))
    {
      v47 = *(v45 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](39);
      v48 = sub_252E37F14();
      v49 = -1 << *(v45 + 32);
      v50 = v48 & ~v49;
      if ((*(v45 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
      {
        v51 = ~v49;
        while (*(*(v45 + 48) + 8 * v50) != 39)
        {
          v50 = (v50 + 1) & v51;
          if (((*(v45 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        goto LABEL_65;
      }
    }

LABEL_37:

    if (sub_252D4FE78(39) || v33() == 5)
    {
LABEL_68:
      sub_252929F10(v18, 0);
      goto LABEL_66;
    }

    v52 = v35();
    v53 = v52;
    if (*(v52 + 16))
    {
      v54 = *(v52 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](5);
      v55 = sub_252E37F14();
      v56 = -1 << *(v53 + 32);
      v57 = v55 & ~v56;
      if ((*(v53 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
      {
        break;
      }
    }

LABEL_44:

    v60 = (v33)(v59);
    if (v60 == 38)
    {
      v62 = &unk_2864AC448;
      goto LABEL_48;
    }

    v61 = MEMORY[0x277D84FA0];
    if (v60 == 41)
    {
      v62 = &unk_2864AC470;
LABEL_48:
      v61 = sub_2529FC004(v62);
    }

    if (*(v61 + 16))
    {
      v63 = *(v61 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](5);
      v64 = sub_252E37F14();
      v65 = -1 << *(v61 + 32);
      v66 = v64 & ~v65;
      if ((*(v61 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66))
      {
        v67 = ~v65;
        while (*(*(v61 + 48) + 8 * v66) != 5)
        {
          v66 = (v66 + 1) & v67;
          if (((*(v61 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        goto LABEL_67;
      }
    }

LABEL_54:

    v68 = sub_252D4FE78(5);

    v28 = v18 & 0xC000000000000001;
    v26 = v70;
    v29 = v18 + 32;
    if (v68)
    {
      sub_252929F10(v18, 0);
      return 1;
    }
  }

  v58 = ~v56;
  while (*(*(v53 + 48) + 8 * v57) != 5)
  {
    v57 = (v57 + 1) & v58;
    if (((*(v53 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

LABEL_67:
  sub_252929F10(v18, 0);

  return 1;
}

uint64_t sub_252C74774(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_252A54248();
  result = MEMORY[0x2530AD880](v2, &type metadata for StateSemantic, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_252DA7E00(&v12, *(*(a1 + 48) + (v11 | (v10 << 6)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252C7486C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_252C75FB8();
  result = MEMORY[0x2530AD880](v2, &type metadata for HomeAttributeModeType, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_252DA74DC(&v12, *(*(a1 + 56) + ((v10 << 9) | (8 * v11)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *Array<A>.contains(_:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v4 = sub_252E378C4();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v38 = MEMORY[0x277D84F90];
    result = sub_2529AA380(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v37 = a1;
    v7 = 0;
    v5 = v38;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, a2);
      }

      else
      {
        v8 = *(a2 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 name];
      if (v10)
      {
        v11 = v10;
        v12 = sub_252E36F34();
        v14 = v13;
      }

      else
      {

        v12 = 0;
        v14 = 0;
      }

      v16 = *(v38 + 16);
      v15 = *(v38 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2529AA380((v15 > 1), v16 + 1, 1);
      }

      ++v7;
      *(v38 + 16) = v16 + 1;
      v17 = v38 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
    }

    while (v4 != v7);
    a1 = v37;
  }

  v18 = sub_252C75A1C(v5);

  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = a1 + 32;
    v22 = v18 + 56;
    while (1)
    {
      v23 = (v21 + 16 * v20);
      v24 = v23[1];
      if (!*(v18 + 16))
      {
        break;
      }

      v25 = *v23;
      v26 = *(v18 + 40);
      sub_252E37EC4();
      sub_252E37EE4();
      swift_bridgeObjectRetain_n();
      sub_252E37044();
      v27 = sub_252E37F14();
      v28 = -1 << *(v18 + 32);
      v29 = v27 & ~v28;
      if (((*(v22 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
      {
LABEL_30:

        goto LABEL_31;
      }

      ++v20;
      v30 = ~v28;
      v31 = *(v18 + 48);
      while (1)
      {
        v32 = (v31 + 16 * v29);
        v33 = v32[1];
        if (v33)
        {
          v34 = *v32 == v25 && v33 == v24;
          if (v34 || (sub_252E37DB4() & 1) != 0)
          {
            break;
          }
        }

        v29 = (v29 + 1) & v30;
        if (((*(v22 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      swift_bridgeObjectRelease_n();
      if (v20 == v19)
      {
        goto LABEL_29;
      }
    }

    v36 = v23[1];

LABEL_31:

    v35 = 0;
  }

  else
  {
LABEL_29:
    v35 = 1;
  }

  return v35;
}

{
  if (a2 >> 62)
  {
    v4 = sub_252E378C4();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v38 = MEMORY[0x277D84F90];
    result = sub_2529AA380(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v37 = a1;
    v7 = 0;
    v5 = v38;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, a2);
      }

      else
      {
        v8 = *(a2 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 name];
      if (v10)
      {
        v11 = v10;
        v12 = sub_252E36F34();
        v14 = v13;
      }

      else
      {

        v12 = 0;
        v14 = 0;
      }

      v16 = *(v38 + 16);
      v15 = *(v38 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2529AA380((v15 > 1), v16 + 1, 1);
      }

      ++v7;
      *(v38 + 16) = v16 + 1;
      v17 = v38 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
    }

    while (v4 != v7);
    a1 = v37;
  }

  v18 = sub_252C75A1C(v5);

  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = a1 + 32;
    v22 = v18 + 56;
    while (1)
    {
      v23 = (v21 + 16 * v20);
      v24 = v23[1];
      if (!*(v18 + 16))
      {
        break;
      }

      v25 = *v23;
      v26 = *(v18 + 40);
      sub_252E37EC4();
      sub_252E37EE4();
      swift_bridgeObjectRetain_n();
      sub_252E37044();
      v27 = sub_252E37F14();
      v28 = -1 << *(v18 + 32);
      v29 = v27 & ~v28;
      if (((*(v22 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
      {
LABEL_30:

        goto LABEL_31;
      }

      ++v20;
      v30 = ~v28;
      v31 = *(v18 + 48);
      while (1)
      {
        v32 = (v31 + 16 * v29);
        v33 = v32[1];
        if (v33)
        {
          v34 = *v32 == v25 && v33 == v24;
          if (v34 || (sub_252E37DB4() & 1) != 0)
          {
            break;
          }
        }

        v29 = (v29 + 1) & v30;
        if (((*(v22 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      swift_bridgeObjectRelease_n();
      if (v20 == v19)
      {
        goto LABEL_29;
      }
    }

    v36 = v23[1];

LABEL_31:

    v35 = 0;
  }

  else
  {
LABEL_29:
    v35 = 1;
  }

  return v35;
}

uint64_t HomeAttributeTargetArea.description.getter()
{
  v1 = v0;
  sub_252E379F4();
  MEMORY[0x2530AD570](8315, 0xE200000000000000);
  v2 = [v0 name];
  if (v2)
  {
    v3 = v2;
    v4 = sub_252E36F34();
    v6 = v5;
  }

  else
  {
    v6 = 0xE600000000000000;
    v4 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v4, v6);

  MEMORY[0x2530AD570](0x444961657261202CLL, 0xEA0000000000203ALL);
  [v1 areaID];
  sub_252E37374();
  MEMORY[0x2530AD570](0x3A444970616D202CLL, 0xE900000000000020);
  [v1 mapID];
  sub_252E37374();
  MEMORY[0x2530AD570](32032, 0xE200000000000000);
  return 0;
}

uint64_t HomeAttributeTargetArea.indentedDescription.getter()
{
  v1 = v0;
  sub_252E379F4();
  v2 = [v0 name];
  if (v2)
  {
    v3 = v2;
    v4 = sub_252E36F34();
    v6 = v5;
  }

  else
  {
    v6 = 0xE600000000000000;
    v4 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v4, v6);

  MEMORY[0x2530AD570](0x4961657261207B20, 0xEB00000000203A44);
  [v1 areaID];
  sub_252E37374();
  MEMORY[0x2530AD570](0x3A444970616D202CLL, 0xE900000000000020);
  [v1 mapID];
  sub_252E37374();
  MEMORY[0x2530AD570](32032, 0xE200000000000000);
  v7 = sub_252AD24A4();

  return v7;
}