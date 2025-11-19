void sub_2546A16F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  handleAmbientLightEvent(_:_:_:_:)(a1);
}

void handleAmbientLightEvent(_:_:_:_:)(uint64_t a1)
{
  if (a1)
  {

    Current = CFAbsoluteTimeGetCurrent();
    if (Current - *(a1 + 48) < 10.0)
    {

      return;
    }

    *(a1 + 48) = Current;
    IOHIDEventGetDoubleValue();
    v13 = round(v12 * 100.0) / 100.0;
    IOHIDEventGetDoubleValue();
    v15 = round(v14 * 100.0) / 100.0;
    IOHIDEventGetDoubleValue();
    sub_2546A1950(v13, v15, round(v16 * 100.0) / 100.0);
    sub_2546A1AC4(0, &qword_281369640, 0x277CF1048);
    v17 = sub_2546B55A4();
    v18 = sub_2546B55A4();
    v19 = sub_2546B55A4();
    oslog = sub_2546A1B04(v17, v18, v19);
    AmbientLightMonitor.sendEvent(_:)(oslog);
  }

  else
  {
    if (qword_281369798 != -1)
    {
      sub_2546A322C();
    }

    v3 = sub_2546B53D4();
    sub_2546A1C48(v3, qword_2813697A0);
    oslog = sub_2546B53B4();
    v4 = sub_2546B5614();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      sub_2546A1C80(&dword_2546A0000, v6, v7, "AmbientLightMonitor handleAmbientLightEvent() target is nil", v8, v9, v10, v11, v20, oslog);
      MEMORY[0x259C16A90](v5, -1, -1);
    }
  }
}

void sub_2546A1950(double a1, double a2, double a3)
{
  v5 = v3;
  v11 = *(v3 + 56);
  v9 = (v3 + 56);
  v10 = v11;
  if (*(v11 + 16) > 4uLL)
  {
    v4 = *(v5 + 64);
    sub_2546A2DF4(&qword_27F60F5D0, &qword_2546B6300);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2546B6100;
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;
    *(v12 + 48) = a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 56) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_10;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
    sub_2546A2DF4(&qword_27F60F5D0, &qword_2546B6300);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2546B6100;
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
    *(v10 + 48) = a3;
    sub_2546A30F0();
    v12 = *(*v9 + 16);
    sub_2546A313C(v12);
    v13 = *v9;
    *(v13 + 16) = v12 + 1;
    *(v13 + 8 * v12 + 32) = v10;
    *v9 = v13;
    while (1)
    {
      v17 = *(v5 + 64);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        break;
      }

      __break(1u);
LABEL_10:
      sub_2546A317C(v10);
      v10 = v20;
      *v9 = v20;
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_11;
      }

LABEL_5:
      if (v4 >= *(v10 + 16))
      {
        goto LABEL_12;
      }

      v15 = v10 + 8 * v4;
      v16 = *(v15 + 32);
      *(v15 + 32) = v12;
      *v9 = v10;
    }

    *(v5 + 64) = v19 % 5;
  }
}

uint64_t sub_2546A1AC4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

id sub_2546A1B04(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAmbientLightColorComponent0:a1 ambientLightColorComponent1:a2 ambientLightColorComponent2:a3];

  return v6;
}

void AmbientLightMonitor.sendEvent(_:)(uint64_t a1)
{
  [*(v1 + 40) sendEvent_];
  if (qword_281369798 != -1)
  {
    sub_2546A322C();
  }

  v2 = sub_2546B53D4();
  sub_2546A1C48(v2, qword_2813697A0);
  oslog = sub_2546B53B4();
  v3 = sub_2546B5614();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    sub_2546A1C80(&dword_2546A0000, v5, v6, "Finished writing ambient light values to the biome stream", v7, v8, v9, v10, v11, oslog);
    MEMORY[0x259C16A90](v4, -1, -1);
  }
}

uint64_t sub_2546A1C48(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_2546A1C80(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

__n128 sub_2546A1CCC(__n128 *a1)
{
  result = *(v1 - 192);
  a1[1] = result;
  return result;
}

uint64_t sub_2546A1CEC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2546A1D24()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

char *sub_2546A1DA0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_2546ACF68(a3, result);
  }

  return result;
}

uint64_t sub_2546A1E24()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2546A1E64()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

HumanUnderstandingFoundation::AmbientLightType_optional __swiftcall AmbientLightType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2546A1EEC@<X0>(uint64_t *a1@<X8>)
{
  result = AmbientLightType.rawValue.getter();
  *a1 = result;
  return result;
}

void sub_2546A1F14()
{
  type metadata accessor for AmbientLightMonitor();
  v0 = swift_allocObject();
  sub_2546A1FB0(1);
  qword_281369788 = v0;
}

uint64_t static AmbientLightMonitor.shared.getter()
{
  if (qword_281369780 != -1)
  {
    swift_once();
  }
}

void sub_2546A1FB0(char a1)
{
  v2 = v1;
  v27 = sub_2546B5634();
  v3 = sub_2546A324C(v27);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_2546A3260();
  v10 = v9 - v8;
  v11 = sub_2546B5624();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  sub_2546A3260();
  v13 = sub_2546B5444();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_2546A3260();
  *(v1 + 16) = xmmword_2546B60F0;
  *(v1 + 80) = 0;
  *(v1 + 64) = 0;
  v15 = MEMORY[0x277D84F90];
  *(v1 + 48) = 0;
  *(v1 + 56) = v15;
  sub_2546A1AC4(0, &qword_281369648, 0x277D85C78);
  sub_2546B5434();
  sub_2546A3190(&unk_281369650, MEMORY[0x277D85230]);
  sub_2546A2DF4(&qword_27F60F5D8, qword_2546B6308);
  sub_2546A31D8(&unk_281369660, &qword_27F60F5D8, qword_2546B6308);
  sub_2546B5684();
  (*(v5 + 104))(v10, *MEMORY[0x277D85260], v27);
  *(v1 + 72) = sub_2546B5654();
  v16 = [BiomeLibrary() ContextualUnderstanding];
  swift_unknownObjectRelease();
  v17 = [v16 AmbientLight];
  swift_unknownObjectRelease();
  v2[4] = v17;
  v2[5] = [v17 source];
  if (a1)
  {
    v18 = *MEMORY[0x277CBECE8];
    v19 = IOHIDEventSystemClientCreateWithType();
    v20 = v2[10];
    v2[10] = v19;
    v21 = v19;

    if (v21)
    {
      v22 = v2[9];
      IOHIDEventSystemClientScheduleWithDispatchQueue();

      if (v2[10])
      {

        IOHIDEventSystemClientRegisterEventCallback();
        v23 = v2[10];
        if (v23)
        {
          v24 = v23;
          v25 = sub_2546B54B4();
          v26 = sub_2546B5564();
          IOHIDEventSystemClientSetProperty(v24, v25, v26);

          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

HumanUnderstandingFoundation::AmbientLightType __swiftcall AmbientLightMonitor.getCurrentAmbientLightType()()
{
  v71 = v0;
  v81 = sub_2546B5404();
  v2 = sub_2546A324C(v81);
  v79 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_2546A3260();
  v77 = (v7 - v6);
  v80 = sub_2546B5474();
  v8 = sub_2546A324C(v80);
  v78 = v9;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v8);
  v75 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = &v68 - v14;
  v15 = sub_2546B5424();
  v16 = sub_2546A324C(v15);
  v74 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_2546A3260();
  v22 = v21 - v20;
  v23 = sub_2546B5444();
  v24 = sub_2546A324C(v23);
  v72 = v25;
  v73 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  sub_2546A3260();
  v30 = v29 - v28;
  v31 = swift_allocObject();
  sub_2546A2D7C();
  v32 = MEMORY[0x277D84F90];
  *(v31 + 16) = sub_2546B54A4();
  v69 = v31 + 16;
  v33 = dispatch_semaphore_create(0);
  v34 = *(v1 + 72);
  v35 = swift_allocObject();
  v35[2] = v1;
  v35[3] = v31;
  v35[4] = v33;
  aBlock[4] = sub_2546A2DD0;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2546A2CC4;
  aBlock[3] = &unk_286683CE0;
  v36 = _Block_copy(aBlock);
  v37 = v34;

  v70 = v31;

  v38 = v33;
  sub_2546B5434();
  v82 = v32;
  sub_2546A3190(&qword_27F60F4E0, MEMORY[0x277D85198]);
  sub_2546A2DF4(&qword_27F60F4E8, &qword_2546B6140);
  sub_2546A31D8(&qword_27F60F4F0, &qword_27F60F4E8, &qword_2546B6140);
  sub_2546B5684();
  MEMORY[0x259C162A0](0, v30, v22, v36);
  _Block_release(v36);

  v39 = v38;
  (*(v74 + 8))(v22, v15);
  (*(v72 + 8))(v30, v73);

  v40 = v75;
  sub_2546B5454();
  v41 = v77;
  *v77 = 1;
  v42 = v79;
  v43 = v81;
  (*(v79 + 104))(v41, *MEMORY[0x277D85188], v81);
  v44 = v76;
  sub_2546B5464();
  (*(v42 + 8))(v41, v43);
  v45 = *(v78 + 8);
  v46 = v80;
  v45(v40, v80);
  sub_2546B5664();
  v45(v44, v46);
  if ((sub_2546B5414() & 1) == 0)
  {
    v51 = v69;
    swift_beginAccess();
    v52 = 0;
    v53 = 0;
    v54 = *v51;
    v55 = *v51;
    v56 = 1 << *(*v51 + 32);
    v57 = -1;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    v59 = *(v55 + 64);
    v58 = v55 + 64;
    v60 = v57 & v59;
    v61 = (v56 + 63) >> 6;
    v62 = 7;
    while (1)
    {
      LODWORD(v48) = v62;
      v63 = v52;
      if (!v60)
      {
        break;
      }

LABEL_14:
      v65 = __clz(__rbit64(v60));
      v60 &= v60 - 1;
      v66 = v65 | (v53 << 6);
      v62 = *(*(v54 + 48) + v66);
      v52 = *(*(v54 + 56) + 8 * v66);
      if (v63 >= v52 && (v52 != v63 || v62 >= v48))
      {
        v52 = v63;
        v62 = v48;
      }
    }

    while (1)
    {
      v64 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v64 >= v61)
      {

        goto LABEL_19;
      }

      v60 = *(v58 + 8 * v64);
      ++v53;
      if (v60)
      {
        v53 = v64;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  if (qword_281369798 != -1)
  {
LABEL_21:
    sub_2546A322C();
  }

  v47 = sub_2546B53D4();
  sub_2546A1C48(v47, qword_2813697A0);
  v48 = sub_2546B53B4();
  v49 = sub_2546B5614();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_2546A0000, v48, v49, "AmbientLightMonitor getCurrentAmbientLightType() timed out waiting for semaphore", v50, 2u);
    MEMORY[0x259C16A90](v50, -1, -1);
  }

  LOBYTE(v48) = 7;
LABEL_19:

  *v71 = v48;
  return result;
}

uint64_t sub_2546A29E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return sub_2546B5674();
  }

  v5 = 32;
  v27 = v2;
  while (1)
  {
    v6 = *(v2 + v5);
    v7 = *(v6 + 16);
    if (!v7)
    {
      break;
    }

    if (v7 == 1)
    {
      goto LABEL_23;
    }

    if (v7 < 3)
    {
      goto LABEL_24;
    }

    sub_2546A2C10(v28, *(v6 + 32), *(v6 + 40), *(v6 + 48));
    v8 = v28[0];
    swift_beginAccess();
    v9 = *(a2 + 16);
    if (*(v9 + 16) && (v10 = sub_2546A4FD8(v8), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
    }

    else
    {
      v12 = 0;
    }

    swift_endAccess();
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_25;
    }

    swift_beginAccess();
    v14 = *(a2 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    v16 = v8;
    v17 = sub_2546A4FD8(v8);
    if (__OFADD__(v15[2], (v18 & 1) == 0))
    {
      goto LABEL_26;
    }

    v19 = v17;
    v20 = v18;
    sub_2546A2DF4(&qword_27F60F5C8, &qword_2546B62F8);
    if (sub_2546B5764())
    {
      v21 = sub_2546A4FD8(v16);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_28;
      }

      v19 = v21;
    }

    if (v20)
    {
      *(v15[7] + 8 * v19) = v13;
    }

    else
    {
      v15[(v19 >> 6) + 8] |= 1 << v19;
      *(v15[6] + v19) = v16;
      *(v15[7] + 8 * v19) = v13;
      v23 = v15[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_27;
      }

      v15[2] = v25;
    }

    *(a2 + 16) = v15;
    swift_endAccess();
    v5 += 8;
    --v3;
    v2 = v27;
    if (!v3)
    {

      return sub_2546B5674();
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_2546B5834();
  __break(1u);
  return result;
}

void sub_2546A2C10(char *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  if (a3 >= 4.0)
  {
    if (a3 < 100.0 && a4 < a2 && a4 < a3)
    {
      v4 = 1;
    }

    else
    {
      v7 = a2 * 0.8;
      if (a3 >= 200.0 || v7 > a4)
      {
        if (a3 >= 1000.0 || v7 <= a4)
        {
          if (a3 >= 30000.0 || v7 <= a4)
          {
            if (a3 >= 10000.0)
            {
              v4 = 6;
            }

            else
            {
              v4 = 5;
            }
          }

          else
          {
            v4 = 4;
          }
        }

        else
        {
          v4 = 3;
        }
      }

      else
      {
        v4 = 2;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
}

uint64_t sub_2546A2CC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t AmbientLightMonitor.deinit()
{
  v1 = *(v0 + 56);

  return v0;
}

uint64_t AmbientLightMonitor.__deallocating_deinit()
{
  AmbientLightMonitor.deinit();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

unint64_t sub_2546A2D7C()
{
  result = qword_27F60F4D8;
  if (!qword_27F60F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60F4D8);
  }

  return result;
}

uint64_t sub_2546A2DDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2546A2DF4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2546A2E3C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2546A2E88()
{
  result = qword_27F60F4F8;
  if (!qword_27F60F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60F4F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AmbientLightType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AmbientLightType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        break;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

void type metadata accessor for IOHIDEventSystemClient()
{
  if (!qword_27F60F5C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F60F5C0);
    }
  }
}

void sub_2546A30F0()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    sub_2546A86FC();
    *v0 = v4;
  }
}

void sub_2546A313C(uint64_t a1)
{
  if (a1 + 1 > *(*v1 + 24) >> 1)
  {
    sub_2546A86FC();
    *v1 = v2;
  }
}

uint64_t sub_2546A3190(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2546A31D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2546A2E3C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2546A322C()
{

  return swift_once();
}

uint64_t BMContextualUnderstandingSoundAnalysis.asHierarchicalDictionary()()
{
  sub_2546A2DF4(&qword_27F60F640, &qword_2546B6348);
  v0 = sub_2546B54A4();
  v1 = BMContextualUnderstandingSoundAnalysis.asFlatDictionary()();
  v2 = sub_2546B54A4();
  v4 = v1 + 64;
  v3 = *(v1 + 64);
  v5 = *(v1 + 32);
  sub_2546A1CA0();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v82 = v1;

  v11 = 0;
  v80 = v1 + 64;
  v81 = v10;
  if (!v8)
  {
    goto LABEL_2;
  }

  do
  {
LABEL_6:
    v13 = __clz(__rbit64(v8)) | (v11 << 6);
    v14 = (*(v82 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2546A49D0(*(v82 + 56) + 32 * v13, &v93);
    v87 = v94;
    v85 = v93;

    if (!v15)
    {
LABEL_59:

      return v0;
    }

    v86 = v8;
    v93 = v85;
    v94 = v87;
    v91 = v16;
    v92 = v15;
    v17 = *(v2 + 16);

    v83 = v11;
    v84 = v0;
    if (v17)
    {
      v18 = v15;
      v8 = v2;
      v19 = sub_2546A5044(v16, v15);
      if (v20)
      {
        v21 = (*(v2 + 56) + 16 * v19);
        v11 = *v21;
        v8 = v21[1];
        swift_bridgeObjectRetain_n();
        goto LABEL_12;
      }
    }

    else
    {
      v18 = v15;
    }

    sub_2546A1CBC();
LABEL_12:
    v22 = sub_2546B54A4();
    if (v11 == 1953460082 && v8 == 0xE400000000000000)
    {
      v25 = v16;
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v24 = sub_2546A6BBC();

      if ((v24 & 1) == 0)
      {

        swift_beginAccess();
        while (1)
        {
          v26 = v8;
          sub_2546A2DF4(&qword_27F60F648, &qword_2546B6350);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_2546B6320;
          v88 = v16;
          *(inited + 32) = v16;
          *(inited + 40) = v18;
          sub_2546A49D0(&v93, inited + 48);
          v28 = sub_2546B54A4();
          v29 = sub_2546A2DF4(&qword_27F60F650, &qword_2546B6358);
          *&v89 = v28;
          *(&v90 + 1) = v29;
          swift_isUniquelyReferenced_nonNull_native();
          v30 = v11;
          v31 = v26;
          v32 = sub_2546A5044(v11, v26);
          if (__OFADD__(v22[2], (v33 & 1) == 0))
          {
            goto LABEL_61;
          }

          v34 = v32;
          v35 = v33;
          v11 = sub_2546A2DF4(&qword_27F60F658, &qword_2546B6360);
          if (sub_2546B5764())
          {
            v36 = sub_2546A6BE4();
            v38 = sub_2546A5044(v36, v37);
            if ((v35 & 1) != (v39 & 1))
            {
              goto LABEL_65;
            }

            v34 = v38;
          }

          if (v35)
          {
            sub_2546A5604(&v89, v22[7] + 32 * v34);
          }

          else
          {
            sub_2546A6B98(&v22[v34 >> 6]);
            v40 = (v22[6] + 16 * v34);
            *v40 = v30;
            v40[1] = v31;
            v41 = (v22[7] + 32 * v34);
            v42 = v90;
            *v41 = v89;
            v41[1] = v42;
            v43 = v22[2];
            v44 = __OFADD__(v43, 1);
            v45 = v43 + 1;
            if (v44)
            {
              goto LABEL_64;
            }

            v22[2] = v45;
          }

          v46 = sub_2546A5044(v88, v18);
          v48 = v47;

          if (v48)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v49 = v22[3];
            sub_2546B5764();
            v50 = *(v22[6] + 16 * v46 + 8);

            v51 = (v22[7] + 32 * v46);
            v52 = v51[1];
            v89 = *v51;
            v90 = v52;
            sub_2546B5784();
          }

          else
          {
            v89 = 0uLL;
            *&v90 = 0;
            *(&v90 + 1) = 1;
          }

          sub_2546A6B34(&v89, &qword_27F60F660, &qword_2546B6368);
          v91 = v30;
          v92 = v31;

          if (!v22[2])
          {
            goto LABEL_62;
          }

          v53 = sub_2546A6BE4();
          v55 = sub_2546A5044(v53, v54);
          if ((v56 & 1) == 0)
          {
            goto LABEL_63;
          }

          sub_2546A49D0(v22[7] + 32 * v55, &v89);
          sub_2546A6B34(&v93, &qword_27F60F640, &qword_2546B6348);
          v93 = v89;
          v94 = v90;
          if (!*(v2 + 16))
          {
            goto LABEL_68;
          }

          v57 = sub_2546A6BE4();
          sub_2546A5044(v57, v58);
          v8 = v59;

          if (v8)
          {
            if (*(v2 + 16) && (, v60 = sub_2546A6BE4(), v8 = sub_2546A5044(v60, v61), v63 = v62, , (v63 & 1) != 0))
            {
              v64 = (*(v2 + 56) + 16 * v8);
              v11 = *v64;
              v8 = v64[1];
            }

            else
            {
              sub_2546A1CBC();
            }
          }

          else
          {
LABEL_68:
            if (qword_27F60F4C0 != -1)
            {
              swift_once();
            }

            v65 = sub_2546B53D4();
            sub_2546A1C48(v65, qword_27F60FCE0);
            v8 = sub_2546B53B4();
            v66 = sub_2546B55F4();
            if (os_log_type_enabled(v8, v66))
            {
              v67 = swift_slowAlloc();
              v68 = swift_slowAlloc();
              *&v89 = v68;
              *v67 = 136315138;

              v69 = sub_2546A6BE4();
              v72 = sub_2546A4A68(v69, v70, v71);

              *(v67 + 4) = v72;
              _os_log_impl(&dword_2546A0000, v8, v66, "Soundname: %s is not contained in hierarchy dictionary", v67, 0xCu);
              sub_2546A55B8(v68);
              MEMORY[0x259C16A90](v68, -1, -1);
              MEMORY[0x259C16A90](v67, -1, -1);
            }

            sub_2546A1CBC();
          }

          if (v11 == 1953460082 && v8 == 0xE400000000000000)
          {
            break;
          }

          v74 = sub_2546A6BBC();

          v16 = v30;
          v18 = v31;
          if (v74)
          {

LABEL_52:
            v25 = v30;
            v18 = v31;
            goto LABEL_53;
          }
        }

        swift_bridgeObjectRelease_n();
        goto LABEL_52;
      }

      v25 = v16;

LABEL_53:
      v4 = v80;
    }

    v11 = v83;
    v10 = v81;
    v75 = v86;
    if (v22[2])
    {
    }

    else
    {
      sub_2546A2DF4(&qword_27F60F648, &qword_2546B6350);
      v76 = swift_initStackObject();
      *(v76 + 16) = xmmword_2546B6320;
      *(v76 + 32) = v25;
      *(v76 + 40) = v18;
      sub_2546A49D0(&v93, v76 + 48);
      v77 = sub_2546B54A4();

      v22 = v77;
      v75 = v86;
    }

    v8 = (v75 - 1) & v75;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v89 = v84;
    sub_2546A526C(v22, sub_2546A5234, 0, isUniquelyReferenced_nonNull_native, &v89);
    sub_2546A6B34(&v93, &qword_27F60F640, &qword_2546B6348);

    v0 = v89;
  }

  while (v8);
LABEL_2:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      goto LABEL_59;
    }

    v8 = *(v4 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = sub_2546B5834();
  __break(1u);
  return result;
}

uint64_t BMContextualUnderstandingSoundAnalysis.asFlatDictionary()()
{
  v1 = sub_2546A6C10();
  v2 = sub_2546A6C10();
  v3 = [v0 classifiedSounds];
  sub_2546A1AC4(0, &qword_27F60F668, 0x277CF1070);
  v4 = sub_2546B5574();

  v65 = sub_2546A4A44(v4);
  v5 = 0;
  v64 = v4 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v65 == v5)
    {

      v62 = sub_2546A3ECC(v1);

      return v62;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x259C16340](v5, v4);
    }

    else
    {
      if (v5 >= *(v64 + 16))
      {
        goto LABEL_40;
      }

      v6 = *(v4 + 8 * v5 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v8 = sub_2546A6910(v6);
    if (!v9)
    {
      goto LABEL_47;
    }

    v10 = v8;
    v11 = v9;
    v12 = 0.0;
    if (v1[2])
    {
      v13 = sub_2546A6BB0();
      v15 = sub_2546A5044(v13, v14);
      if (v16)
      {
        v12 = *(v1[7] + 8 * v15);
      }
    }

    v66 = v7;
    if (v2[2])
    {
      v17 = sub_2546A6BB0();
      v19 = sub_2546A5044(v17, v18);
      v20 = 1.0;
      v21 = 1.0;
      if (v22)
      {
        v21 = *(v2[7] + 8 * v19);
      }

      v12 = v12 * v21;
      if (v2[2])
      {
        v23 = sub_2546A6BB0();
        v25 = sub_2546A5044(v23, v24);
        if (v26)
        {
          v20 = *(v2[7] + 8 * v25) + 1.0;
        }
      }
    }

    else
    {
      v20 = 1.0;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v27 = sub_2546A6BB0();
    v29 = sub_2546A5044(v27, v28);
    if (__OFADD__(v2[2], (v30 & 1) == 0))
    {
      goto LABEL_41;
    }

    v31 = v29;
    v32 = v30;
    sub_2546A2DF4(&qword_27F60F670, &qword_2546B6370);
    if (sub_2546B5764())
    {
      v33 = sub_2546A6BB0();
      v35 = sub_2546A5044(v33, v34);
      if ((v32 & 1) != (v36 & 1))
      {
        goto LABEL_48;
      }

      v31 = v35;
    }

    if (v32)
    {
      *(v2[7] + 8 * v31) = v20;
    }

    else
    {
      sub_2546A6B98(&v2[v31 >> 6]);
      v37 = (v2[6] + 16 * v31);
      *v37 = v10;
      v37[1] = v11;
      *(v2[7] + 8 * v31) = v20;
      v38 = v2[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_45;
      }

      v2[2] = v40;
    }

    [v66 confidence];
    if (!v2[2])
    {
      goto LABEL_42;
    }

    v42 = v41;
    v43 = sub_2546A6BB0();
    v45 = sub_2546A5044(v43, v44);
    if ((v46 & 1) == 0)
    {
      goto LABEL_43;
    }

    v47 = *(v2[7] + 8 * v45);
    swift_isUniquelyReferenced_nonNull_native();
    v48 = sub_2546A6BB0();
    v50 = sub_2546A5044(v48, v49);
    v52 = v51;
    if (__OFADD__(v1[2], (v51 & 1) == 0))
    {
      goto LABEL_44;
    }

    v53 = v50;
    if (sub_2546B5764())
    {
      v54 = sub_2546A6BB0();
      v56 = sub_2546A5044(v54, v55);
      if ((v52 & 1) != (v57 & 1))
      {
        goto LABEL_48;
      }

      v53 = v56;
    }

    if (v52)
    {
      *(v1[7] + 8 * v53) = (v12 + v42) / v47;
    }

    else
    {
      sub_2546A6B98(&v1[v53 >> 6]);
      v58 = (v1[6] + 16 * v53);
      *v58 = v10;
      v58[1] = v11;
      *(v1[7] + 8 * v53) = v59;
      v60 = v1[2];
      v39 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v39)
      {
        goto LABEL_46;
      }

      v1[2] = v61;
    }

    ++v5;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_2546B5834();
  __break(1u);
  return result;
}

unint64_t sub_2546A3ECC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2546A2DF4(&qword_27F60F6A0, &qword_2546B65D0);
    v2 = sub_2546B57D4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v25 = *(*(a1 + 56) + 8 * v11);

    sub_2546A2DF4(&qword_27F60F640, &qword_2546B6348);
    swift_dynamicCast();
    v29 = v27;
    v30 = v28;
    v26 = v27;
    v27 = v28;
    result = sub_2546A5044(v14, v13);
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      v18 = v17[1];
      *v17 = v14;
      v17[1] = v13;

      result = sub_2546A5604(&v26, v2[7] + 32 * v15);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v2[6] + 16 * result);
      *v19 = v14;
      v19[1] = v13;
      v20 = (v2[7] + 32 * result);
      v21 = v27;
      *v20 = v26;
      v20[1] = v21;
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_20;
      }

      v2[2] = v24;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_2546A40FC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2546A2DF4(&qword_27F60F698, &qword_2546B6388);
    v2 = sub_2546B57D4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  sub_2546A1CA0();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v11 = 0;
  while (v7)
  {
    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = v13 | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = *(*(a1 + 56) + 8 * v14);

    sub_2546A2DF4(&qword_27F60F690, &qword_2546B6430);
    swift_dynamicCast();
    sub_2546A6974(&v28, v30);
    sub_2546A6974(v30, v31);
    sub_2546A6974(v31, &v29);
    result = sub_2546A5044(v17, v16);
    v19 = result;
    if (v20)
    {
      v21 = (v2[6] + 16 * result);
      v22 = v21[1];
      *v21 = v17;
      v21[1] = v16;

      v23 = (v2[7] + 32 * v19);
      sub_2546A55B8(v23);
      result = sub_2546A6974(&v29, v23);
      v11 = v12;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_17;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v24 = (v2[6] + 16 * result);
      *v24 = v17;
      v24[1] = v16;
      result = sub_2546A6974(&v29, (v2[7] + 32 * result));
      v25 = v2[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_18;
      }

      v2[2] = v27;
      v11 = v12;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v2;
    }

    v7 = *(a1 + 64 + 8 * v12);
    ++v11;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_2546A4338(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2546A2DF4(&qword_27F60F680, &qword_2546B6380);
    v2 = sub_2546B57D4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  sub_2546A1CA0();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v11 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(*(a1 + 56) + 8 * v13);
    sub_2546A1AC4(0, &qword_27F60F688, 0x277CBFEF8);

    v18 = v17;
    sub_2546A2DF4(&qword_27F60F690, &qword_2546B6430);
    swift_dynamicCast();
    v19 = sub_2546A5044(v16, v15);
    v20 = v19;
    if (v21)
    {
      v22 = (v2[6] + 16 * v19);
      v23 = v22[1];
      *v22 = v16;
      v22[1] = v15;

      v24 = v2[7];
      v25 = *(v24 + 8 * v20);
      *(v24 + 8 * v20) = v30;

      v10 = v11;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_17;
      }

      *(v2 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v19;
      v26 = (v2[6] + 16 * v19);
      *v26 = v16;
      v26[1] = v15;
      *(v2[7] + 8 * v19) = v30;
      v27 = v2[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_18;
      }

      v2[2] = v29;
      v10 = v11;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v7 = *(a1 + 64 + 8 * v11);
    ++v10;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t static BMContextualUnderstandingSoundAnalysis.soundHierarchyLabels()()
{
  v0 = sub_2546A6BF0();
  sub_2546A46E0(v0);
  v2 = v1;
  v3 = sub_2546A6BF0();
  v4 = sub_2546A45C4(v3);
  v5 = sub_2546A47E8(v4, v2);
  v6 = sub_2546A48EC(v5);

  return v6;
}

uint64_t sub_2546A45C4(uint64_t a1)
{
  result = MEMORY[0x259C16240](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 56) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_2546A5674(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_2546A46E0(uint64_t a1)
{
  v2 = 0;
  v15[2] = MEMORY[0x259C16240](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  sub_2546A1CA0();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  if ((v6 & v5) != 0)
  {
    do
    {
      v10 = v2;
LABEL_7:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
      v13 = *v12;
      v14 = v12[1];

      sub_2546A5674(v15, v13, v14);
    }

    while (v7);
  }

  while (1)
  {
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v7 = *(a1 + 64 + 8 * v10);
    ++v2;
    if (v7)
    {
      v2 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_2546A47E8(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_2546A5674(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2546A48EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_2546A8C64(*(a1 + 16), 0);
  v4 = sub_2546AC754(&v6, v3 + 4, v1, a1);

  sub_2546A1D98();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v6 = v3;
  sub_2546A57C0(&v6);
  return v6;
}

uint64_t sub_2546A49D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2546A2DF4(&qword_27F60F640, &qword_2546B6348);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2546A4A44(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

uint64_t sub_2546A4A68(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2546A4B2C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2546A6AD4(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_2546A55B8(v11);
  return v7;
}

unint64_t sub_2546A4B2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2546A4C2C(a5, a6);
    *a1 = v9;
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
    result = sub_2546B56F4();
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

uint64_t sub_2546A4C2C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2546A4C78(a1, a2);
  sub_2546A4D90(&unk_286683BD8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2546A4C78(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2546B5554())
  {
    result = sub_2546A4E74(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2546B56C4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2546B56F4();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2546A4D90(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_2546A4EE4(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2546A4E74(uint64_t a1, uint64_t a2)
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

  sub_2546A2DF4(&qword_27F60F6A8, &qword_2546B6390);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2546A4EE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2546A2DF4(&qword_27F60F6A8, &qword_2546B6390);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

unint64_t sub_2546A4FD8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_2546B5864();
  MEMORY[0x259C164D0](a1);
  v4 = sub_2546B5884();

  return sub_2546A50BC(a1, v4);
}

unint64_t sub_2546A5044(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2546B5864();
  sub_2546B5524();
  v6 = sub_2546B5884();

  return sub_2546A511C(a1, a2, v6);
}

unint64_t sub_2546A50BC(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_2546A511C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2546B5814() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2546A51D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2546B6330;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2546A5234@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2546AF670((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2546A526C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_2546B0058(v37);
  v35[3] = v37[0];
  v35[4] = v37[1];
  v35[5] = v37[2];
  v36 = v38;

  while (1)
  {
    sub_2546A6984(v35);
    v7 = *(&v35[0] + 1);
    if (!*(&v35[0] + 1))
    {
      sub_2546A1D98();
    }

    v8 = *&v35[0];
    v33 = v35[1];
    v34 = v35[2];
    v9 = *a5;
    v11 = sub_2546A5044(*&v35[0], *(&v35[0] + 1));
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_2546A2DF4(&qword_27F60F658, &qword_2546B6360);
        sub_2546B5774();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_2546AEC64(v14, a4 & 1);
      v16 = *a5;
      v17 = sub_2546A5044(v8, v7);
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_23;
      }

      v11 = v17;
      if (v15)
      {
LABEL_10:
        v19 = *a5;
        sub_2546A49D0(*(*a5 + 56) + 32 * v11, v31);
        sub_2546A49D0(v31, v32);
        sub_2546A2DF4(&qword_27F60F640, &qword_2546B6348);
        sub_2546A2DF4(&qword_27F60F650, &qword_2546B6358);
        if (swift_dynamicCast())
        {
          sub_2546A49D0(&v33, v32);
          if (swift_dynamicCast())
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v32[0] = v30;
            v21 = v39;
            sub_2546A526C(v30, sub_2546A5234, 0, isUniquelyReferenced_nonNull_native, v32);
            v39 = v21;
            v30 = v32[0];
            swift_dynamicCast();
LABEL_15:
            sub_2546A6B34(v31, &qword_27F60F640, &qword_2546B6348);
            sub_2546A6B34(&v33, &qword_27F60F640, &qword_2546B6348);

            sub_2546A5604(v32, *(v19 + 56) + 32 * v11);
            goto LABEL_19;
          }
        }

        sub_2546A49D0(&v33, v32);
        goto LABEL_15;
      }
    }

    v22 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v23 = (v22[6] + 16 * v11);
    *v23 = v8;
    v23[1] = v7;
    v24 = (v22[7] + 32 * v11);
    v25 = v34;
    *v24 = v33;
    v24[1] = v25;
    v26 = v22[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_22;
    }

    v22[2] = v28;
LABEL_19:
    a4 = 1;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_2546B5834();
  __break(1u);
  return result;
}

uint64_t sub_2546A55B8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2546A5604(uint64_t a1, uint64_t a2)
{
  v4 = sub_2546A2DF4(&qword_27F60F640, &qword_2546B6348);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_2546A5674(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2546B5864();
  sub_2546B5524();
  v9 = sub_2546B5884();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_2546B5814() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_2546A641C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_2546A57C0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2546ACF00(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2546A582C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_2546A582C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2546B57F4();
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
        v6 = sub_2546B5594();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2546A59E8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_2546A5920(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2546A5920(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_2546B5814();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2546A59E8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_2546B5814();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_2546B5814()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_2546B5814() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_2546A87E0();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_2546A87E0();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_2546A601C((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_2546A5EF0(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_2546A5EF0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2546AC640(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_2546A601C((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_2546A601C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_2546A8E50(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_2546B5814() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_2546A8E50(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_2546B5814() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_2546A61C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2546A2DF4(&qword_27F60F678, &qword_2546B6378);
  result = sub_2546B56B4();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_2546A51D0(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_2546B5864();
    sub_2546B5524();
    result = sub_2546B5884();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2546A641C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2546A61C0(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2546A66DC(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_2546B5864();
      sub_2546B5524();
      result = sub_2546B5884();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_2546B5814() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2546A6584();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2546B5824();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_2546A6584()
{
  v1 = v0;
  sub_2546A2DF4(&qword_27F60F678, &qword_2546B6378);
  v2 = *v0;
  v3 = sub_2546B56A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2546A66DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2546A2DF4(&qword_27F60F678, &qword_2546B6378);
  result = sub_2546B56B4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_2546B5864();

        sub_2546B5524();
        result = sub_2546B5884();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2546A6910(void *a1)
{
  v1 = [a1 soundName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2546B54C4();

  return v3;
}

_OWORD *sub_2546A6974(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2546A6984@<X0>(_OWORD *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  if (v6)
  {
    v19 = v1[2];
    v20 = a1;
    v7 = v1[3];
LABEL_7:
    v8 = (v6 - 1) & v6;
    v9 = __clz(__rbit64(v6)) | (v7 << 6);
    v10 = (*(v2 + 48) + 16 * v9);
    v11 = v10[1];
    v21 = *v10;
    sub_2546A49D0(*(v2 + 56) + 32 * v9, &v22);
    v12 = v22;
    v13 = v23;
    v14 = v24;
    v15 = v25;

    v4 = v19;
    a1 = v20;
LABEL_8:
    *v1 = v2;
    v1[1] = v3;
    v1[2] = v4;
    v1[3] = v5;
    v1[4] = v8;
    if (v11)
    {
      v18 = v1[5];
      v17 = v1[6];
      v22 = v21;
      v23 = v11;
      v24 = v12;
      v25 = v13;
      v26 = v14;
      v27 = v15;
      v18(&v22);
      return sub_2546A6B34(&v22, &qword_27F60F6B0, qword_2546B6398);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v7 >= ((v4 + 64) >> 6))
      {
        v13 = 0;
        v12 = 0;
        v11 = 0;
        v21 = 0;
        v14 = 0;
        v15 = 0;
        v8 = 0;
        goto LABEL_8;
      }

      v6 = *(v3 + 8 * v7);
      ++v5;
      if (v6)
      {
        v19 = v1[2];
        v20 = a1;
        v5 = v7;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2546A6AD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2546A6B34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2546A2DF4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2546A6BBC()
{

  return sub_2546B5814();
}

uint64_t sub_2546A6BF0()
{

  return sub_2546B54A4();
}

uint64_t sub_2546A6C10()
{

  return sub_2546B54A4();
}

__n128 sub_2546A6C30(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2546A6C3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2546A6C7C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id HUFeatureFlags.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HUFeatureFlags.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HUFeatureFlags.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2546A6DF0()
{
  type metadata accessor for FeatureManager();
  v0 = swift_allocObject();
  result = FeatureManager.init()();
  qword_27F60F6B8 = v0;
  return result;
}

uint64_t FeatureManager.__allocating_init()()
{
  v0 = swift_allocObject();
  FeatureManager.init()();
  return v0;
}

uint64_t static FeatureManager.defaultManager.getter()
{
  if (qword_27F60F4B0 != -1)
  {
    swift_once();
  }
}

uint64_t FeatureManager.init()()
{
  v1 = v0;
  v2 = sub_2546B5354();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  static Paths.featureManagerBaseDirectory()();
  v6 = type metadata accessor for FeatureRegistry();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v1 + 112) = FeatureRegistry.init(with:)(v5);
  return v1;
}

id sub_2546A6F64(uint64_t a1)
{
  sub_2546A2DF4(&qword_27F60F690, &qword_2546B6430);
  v2 = sub_2546B54A4();
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 40);
    while (1)
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v26 + 112);

      FeatureRegistry.feature(for:)(&v28);

      v8 = v29;
      if (v29)
      {
        v9 = v30;
        v10 = v28;
        v11 = sub_2546B54B4();
        v27 = [v9 featureValueForName_];

        sub_2546A7358(v10, v8);
      }

      else
      {
        v27 = 0;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v28 = v2;
      v12 = sub_2546A5044(v6, v5);
      if (__OFADD__(v2[2], (v13 & 1) == 0))
      {
        break;
      }

      v14 = v12;
      v15 = v13;
      sub_2546A2DF4(&qword_27F60F6C0, &qword_2546B6438);
      if (sub_2546B5764())
      {
        v16 = sub_2546A5044(v6, v5);
        if ((v15 & 1) != (v17 & 1))
        {
          goto LABEL_18;
        }

        v14 = v16;
      }

      if (v15)
      {

        v2 = v28;
        v18 = v28[7];
        v19 = *(v18 + 8 * v14);
        *(v18 + 8 * v14) = v27;
      }

      else
      {
        v2 = v28;
        v28[(v14 >> 6) + 8] |= 1 << v14;
        v20 = (v2[6] + 16 * v14);
        *v20 = v6;
        v20[1] = v5;
        *(v2[7] + 8 * v14) = v27;
        v21 = v2[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        v2[2] = v23;
      }

      v4 += 2;
      if (!--v3)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    result = sub_2546B5834();
    __break(1u);
  }

  else
  {
LABEL_15:
    sub_2546A40FC(v2);

    v24 = objc_allocWithZone(MEMORY[0x277CBFED0]);
    return sub_2546A7270();
  }

  return result;
}

uint64_t FeatureManager.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t FeatureManager.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

id sub_2546A7270()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2546B5484();

  v7[0] = 0;
  v2 = [v0 initWithDictionary:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_2546B52D4();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_2546A7358(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall FeatureRegistry.printRegistry()()
{
  v1 = sub_2546B5354();
  v2 = sub_2546A324C(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2546A2DF4(&qword_27F60F6C8, &qword_2546B64B0);
  v10 = swift_allocObject();
  v89 = xmmword_2546B6320;
  *(v10 + 16) = xmmword_2546B6320;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  sub_2546ACF78(v10);

  v12 = sub_2546AD00C();
  sub_2546ACF98(v12);
  *(v13 + 32) = 0xD000000000000028;
  *(v13 + 40) = v14;
  sub_2546ACF78(v13);

  v83 = v0;
  v15 = *(v0 + 16);

  v90[0] = sub_2546A91BC(v16, sub_2546A8DD4, sub_2546ACC1C);
  v17 = 0;
  sub_2546A9074(v90);
  v80 = v8;
  v87 = v1;

  v18 = *(v90[0] + 16);
  if (v18)
  {
    v85 = 0;
    v86 = v4;
    v88 = "ls ---------------------";
    v84 = v90[0];
    v19 = (v90[0] + 56);
    v20 = v9;
    do
    {
      v22 = *(v19 - 3);
      v21 = *(v19 - 2);
      v23 = *(v19 - 1);
      v24 = *v19;
      v25 = sub_2546ACFDC();
      sub_2546AD064(v25);
      v90[0] = 0;
      v90[1] = 0xE000000000000000;

      swift_unknownObjectRetain();
      sub_2546B56D4();

      strcpy(v90, "Signal: ");
      BYTE1(v90[1]) = 0;
      WORD1(v90[1]) = 0;
      HIDWORD(v90[1]) = -402653184;
      ObjectType = swift_getObjectType();
      v92 = v24;
      sub_2546A2DF4(&qword_27F60F6D0, &qword_2546B64B8);
      v26 = sub_2546B5504();
      MEMORY[0x259C16190](v26);

      MEMORY[0x259C16190](0xD000000000000012, v88 | 0x8000000000000000);
      MEMORY[0x259C16190](v22, v21);

      v27 = v90[0];
      v28 = v90[1];
      v25[3].n128_u64[1] = MEMORY[0x277D837D0];
      v25[2].n128_u64[0] = v27;
      v25[2].n128_u64[1] = v28;
      sub_2546ACF78(v25);
      swift_unknownObjectRelease();

      v19 += 4;
      --v18;
    }

    while (v18);

    v9 = v20;
    v11 = MEMORY[0x277D837D0];
    v17 = v85;
    v4 = v86;
  }

  else
  {
  }

  v29 = sub_2546AD00C();
  sub_2546ACF98(v29);
  *(v30 + 32) = 0xD000000000000028;
  *(v30 + 40) = v31;
  v82 = v31;
  sub_2546ACF78(v30);

  v32 = sub_2546AD00C();
  sub_2546AD064(v32);
  v33[7] = v11;
  v33[4] = 0;
  v33[5] = 0xE000000000000000;
  sub_2546ACF78(v33);

  v34 = sub_2546AD00C();
  sub_2546ACF98(v34);
  *(v35 + 32) = 0xD000000000000028;
  *(v35 + 40) = v36;
  sub_2546ACF78(v35);

  v37 = *(v83 + 24);

  v90[0] = sub_2546A91BC(v38, sub_2546A8D50, sub_2546ACA9C);
  sub_2546A8FD0(v90);
  v79 = v17;
  if (v17)
  {

LABEL_17:

    __break(1u);
    return;
  }

  v81 = v90[0];
  v39 = *(v90[0] + 16);
  v88 = v9;
  v40 = v80;
  if (v39)
  {
    v85 = (v4 + 8);
    v86 = "ls ---------------------";
    v41 = (v81 + 48);
    v84 = 0xD000000000000012;
    do
    {
      v43 = *(v41 - 2);
      v42 = *(v41 - 1);
      v44 = *v41;
      v41 += 3;
      v45 = sub_2546AD00C();
      sub_2546AD064(v45);
      v90[0] = 0;
      v90[1] = 0xE000000000000000;

      sub_2546B56D4();

      strcpy(v90, "Transformer: ");
      HIWORD(v90[1]) = -4864;
      v46 = [*(v44 + 16) modelDescription];
      v47 = [v46 modelURL];

      sub_2546B5334();
      v48 = sub_2546B52F4();
      v50 = v49;
      (*v85)(v40, v87);
      MEMORY[0x259C16190](v48, v50);

      MEMORY[0x259C16190](v84, v86 | 0x8000000000000000);
      v51 = v43;
      v11 = MEMORY[0x277D837D0];
      MEMORY[0x259C16190](v51, v42);

      v52 = v90[0];
      v53 = v90[1];
      v45[3].n128_u64[1] = v11;
      v45[2].n128_u64[0] = v52;
      v45[2].n128_u64[1] = v53;
      sub_2546ACF78(v45);

      --v39;
    }

    while (v39);
  }

  v54 = sub_2546AD00C();
  sub_2546AD064(v54);
  v55[7] = v11;
  v56 = v82;
  v55[4] = 0xD000000000000028;
  v55[5] = v56;
  sub_2546ACF78(v55);

  v57 = sub_2546AD00C();
  sub_2546AD064(v57);
  v58[7] = v11;
  v58[4] = 0;
  v58[5] = 0xE000000000000000;
  sub_2546ACF78(v58);

  v59 = sub_2546AD00C();
  sub_2546ACF98(v59);
  *(v60 + 32) = 0xD000000000000028;
  *(v60 + 40) = v61;
  sub_2546ACF78(v60);

  v62 = v83;
  swift_beginAccess();
  v63 = *(v62 + 32);

  ObjectType = sub_2546A91BC(v64, sub_2546A8CCC, sub_2546AC8F4);
  v65 = v79;
  sub_2546A8F2C(&ObjectType);
  if (v65)
  {

    goto LABEL_17;
  }

  v87 = ObjectType;
  v66 = *(ObjectType + 16);
  v67 = MEMORY[0x277D837D0];
  if (v66)
  {
    v68 = (v87 + 64);
    do
    {
      v70 = *(v68 - 2);
      v69 = *(v68 - 1);
      v71 = *v68;
      v68 += 6;
      v72 = sub_2546AD00C();
      sub_2546AD064(v72);

      swift_unknownObjectRetain();
      ObjectType = 0;
      v92 = 0xE000000000000000;
      sub_2546B56D4();

      ObjectType = 0xD000000000000013;
      v92 = 0x80000002546B74F0;

      MEMORY[0x259C16190](v70, v69);

      v73 = ObjectType;
      v74 = v92;
      v72[3].n128_u64[1] = v67;
      v72[2].n128_u64[0] = v73;
      v72[2].n128_u64[1] = v74;
      sub_2546ACF78(v72);
      swift_unknownObjectRelease();

      --v66;
    }

    while (v66);
  }

  v75 = sub_2546AD00C();
  sub_2546AD064(v75);
  v76[7] = v67;
  v76[4] = 0xD000000000000028;
  v76[5] = v82;
  sub_2546ACF78(v76);

  v77 = sub_2546AD00C();
  sub_2546AD064(v77);
  v78[7] = v67;
  v78[4] = 0;
  v78[5] = 0xE000000000000000;
  sub_2546ACF78(v78);
}

Swift::Void __swiftcall FeatureRegistry.printFeature(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  sub_2546AD0F4();
  v5 = sub_2546B5354();
  v6 = sub_2546A324C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = *(v1 + 32);
  v14 = MEMORY[0x277D837D0];
  if (*(v13 + 16) && (v15 = sub_2546A5044(countAndFlagsBits, object), (v16 & 1) != 0))
  {
    v17 = (*(v13 + 56) + 32 * v15);
    v18 = *v17;
    v19 = v17[1];
    v138 = v8;
    v139 = v18;
    v20 = v17[2];
    swift_endAccess();
    v21 = sub_2546A2DF4(&qword_27F60F6C8, &qword_2546B64B0);
    v22 = swift_allocObject();
    v140 = xmmword_2546B6320;
    *(v22 + 16) = xmmword_2546B6320;
    *(v22 + 56) = v14;
    *(v22 + 32) = 0;
    *(v22 + 40) = 0xE000000000000000;

    swift_unknownObjectRetain();
    sub_2546ACF78(v22);

    v23 = sub_2546ACFDC();
    sub_2546ACFB0(v23, "Feature --------------------------------");
    sub_2546ACF78(v24);

    v25 = sub_2546ACFDC();
    sub_2546A1CCC(v25);
    v142[0] = 0x203A656D614ELL;
    v142[1] = 0xE600000000000000;

    MEMORY[0x259C16190](v139, v19);
    v130[1] = v19;

    v26 = v142[0];
    v27 = v142[1];
    v23[3].n128_u64[1] = v14;
    v23[2].n128_u64[0] = v26;
    v23[2].n128_u64[1] = v27;
    sub_2546ACF78(v23);

    v28 = sub_2546ACFDC();
    sub_2546ACFB0(v28, "----------------------------------------");
    v131 = v29;
    sub_2546ACF78(v30);

    v31 = sub_2546ACFDC();
    sub_2546A1CCC(v31);
    v32[7] = v14;
    v32[4] = 0;
    v32[5] = 0xE000000000000000;
    sub_2546ACF78(v32);

    type metadata accessor for Transformer();
    v33 = swift_dynamicCastClass();
    v132 = v21;
    v130[2] = v20;
    if (v33)
    {
      v34 = v14;
      v35 = v33;
      v36 = sub_2546ACFDC();
      sub_2546AD028(v36);
      v38[7] = v34;
      v38[4] = v2;
      v38[5] = (v37 - 32) | 0x8000000000000000;
      swift_unknownObjectRetain();
      sub_2546ACF78(v36);

      v39 = sub_2546ACFDC();
      *&v40 = sub_2546AD028(v39).n128_u64[0];
      v142[0] = v2 - 22;
      v142[1] = 0x80000002546B75F0;
      v41 = [*(v35 + 16) modelDescription];
      v42 = [v41 modelURL];

      sub_2546B5334();
      v43 = sub_2546B52F4();
      v45 = v44;
      (*(v138 + 8))(v12, v5);
      MEMORY[0x259C16190](v43, v45);

      v46 = v142[0];
      v47 = v142[1];
      v39[3].n128_u64[1] = v34;
      v39[2].n128_u64[0] = v46;
      v39[2].n128_u64[1] = v47;
      sub_2546ACF78(v39);

      v48 = sub_2546ACFDC();
      *&v49 = sub_2546AD028(v48).n128_u64[0];
      strcpy(v142, "Inputs: ");
      BYTE1(v142[1]) = 0;
      WORD1(v142[1]) = 0;
      HIDWORD(v142[1]) = -402653184;
      v50 = [*(v35 + 16) modelDescription];
      v51 = [v50 inputDescriptionsByName];

      sub_2546AC8B0();
      v52 = sub_2546B5494();

      v141[0] = sub_2546A92C8(v52);
      v53 = 0;
      sub_2546A8EC0(v141);

      v54 = MEMORY[0x259C161E0](v141[0], v34);
      v2 = v34;
      v56 = v55;

      MEMORY[0x259C16190](v54, v56);

      v57 = v142[0];
      v58 = v142[1];
      v48[3].n128_u64[1] = v2;
      v48[2].n128_u64[0] = v57;
      v48[2].n128_u64[1] = v58;
      sub_2546ACF78(v48);

      v59 = sub_2546ACFDC();
      sub_2546AD028(v59);
      sub_2546AD0E0();
      v142[0] = v60;
      v142[1] = 0xE900000000000020;
      v61 = [*(v35 + 16) modelDescription];
      v62 = [v61 outputDescriptionsByName];

      v63 = sub_2546B5494();
      v141[0] = sub_2546A92C8(v63);
      sub_2546A8EC0(v141);

      v64 = MEMORY[0x259C161E0](v141[0], v2);
      v66 = v65;

      MEMORY[0x259C16190](v64, v66);

      v67 = v142[0];
      v68 = v142[1];
      v59[3].n128_u64[1] = v2;
      v59[2].n128_u64[0] = v67;
      v59[2].n128_u64[1] = v68;
      sub_2546ACF78(v59);

      v69 = sub_2546ACFDC();
      sub_2546A1CCC(v69);
      *(v70 + 56) = v2;
      sub_2546AD0F4();
      v71 = v131;
      *(v72 + 32) = v2;
      *(v72 + 40) = v71;
      sub_2546ACF78(v72);

      v73 = sub_2546ACFDC();
      sub_2546A1CCC(v73);
      v74[7] = v2;
      v74[4] = 0;
      v74[5] = 0xE000000000000000;
      sub_2546ACF78(v74);

      v75 = *(v35 + 24);
      type metadata accessor for MultiFeatureProvider();
      v76 = swift_dynamicCastClass();
      if (v76)
      {
        v77 = v76;
        v139 = 0;
        swift_beginAccess();
        v78 = *(v77 + 16);
        v79 = 1 << *(v78 + 32);
        v80 = -1;
        if (v79 < 64)
        {
          v80 = ~(-1 << v79);
        }

        v2 = v80 & *(v78 + 64);
        v81 = (v79 + 63) >> 6;
        swift_unknownObjectRetain();

        v82 = 0;
        v53 = MEMORY[0x277D84F90];
        while (v2)
        {
LABEL_14:
          v85 = __clz(__rbit64(v2));
          v2 &= v2 - 1;
          v86 = *(*(v78 + 56) + ((v82 << 9) | (8 * v85)));
          swift_getObjectType();
          v87 = sub_2546A9284(v86);
          if (v87)
          {
            v89 = v87;
            v90 = v88;
            swift_unknownObjectRetain();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v94 = v53[1].n128_u64[0];
              sub_2546A8A8C();
              v53 = v95;
            }

            v91 = v53[1].n128_u64[0];
            v92 = v91 + 1;
            if (v91 >= v53[1].n128_u64[1] >> 1)
            {
              v138 = v91 + 1;
              sub_2546A8A8C();
              v92 = v138;
              v53 = v96;
            }

            v53[1].n128_u64[0] = v92;
            v93 = &v53[v91];
            v93[2].n128_u64[0] = v89;
            v93[2].n128_u64[1] = v90;
          }
        }

        v14 = MEMORY[0x277D837D0];
        v83 = v53;
        while (1)
        {
          v84 = v82 + 1;
          if (__OFADD__(v82, 1))
          {
            goto LABEL_40;
          }

          if (v84 >= v81)
          {
            break;
          }

          v2 = *(v78 + 64 + 8 * v84);
          ++v82;
          if (v2)
          {
            v82 = v84;
            goto LABEL_14;
          }
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_2546AD0F4();
        v53 = v139;
      }

      else
      {
        swift_unknownObjectRelease();
        v83 = MEMORY[0x277D84F90];
        v14 = MEMORY[0x277D837D0];
      }
    }

    else
    {
      swift_getObjectType();
      v98 = sub_2546A9284(v20);
      if (v98)
      {
        v100 = v98;
        v101 = v99;
        sub_2546A2DF4(&qword_27F60F6E0, &qword_2546B64C0);
        v83 = swift_allocObject();
        sub_2546AD028(v83);
        *(v102 + 32) = v100;
        *(v102 + 40) = v101;
        swift_unknownObjectRetain();
        v53 = 0;
      }

      else
      {
        v53 = 0;
        v83 = MEMORY[0x277D84F90];
      }
    }

    v103 = sub_2546ACFDC();
    sub_2546ACFB0(v103, "Depends on Signals ---------------------");
    sub_2546ACF78(v104);

    v142[0] = v83;

    sub_2546A9118(v142);
    if (v53)
    {
      goto LABEL_41;
    }

    v105 = 0;
    v133 = *(v142[0] + 16);
    v134 = v142[0];
    v106 = (v142[0] + 40);
    while (v133 != v105)
    {
      if (v105 >= *(v134 + 16))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:

        while (1)
        {

          __break(1u);
        }
      }

      v138 = v105;
      v139 = 0;
      v108 = *(v106 - 1);
      v107 = *v106;
      v137 = v106;
      v109 = sub_2546ACFDC();
      sub_2546A1CCC(v109);
      strcpy(v142, "Signal Name: ");
      HIWORD(v142[1]) = -4864;
      ObjectType = swift_getObjectType();
      v144 = v107;
      swift_unknownObjectRetain();
      sub_2546A2DF4(&qword_27F60F6D0, &qword_2546B64B8);
      v110 = sub_2546B5504();
      MEMORY[0x259C16190](v110);

      v111 = v142[0];
      v112 = v142[1];
      v103[3].n128_u64[1] = v14;
      v103[2].n128_u64[0] = v111;
      v103[2].n128_u64[1] = v112;
      sub_2546ACF78(v103);

      v113 = sub_2546ACFDC();
      sub_2546AD028(v113);
      sub_2546AD0E0();
      ObjectType = v114;
      v144 = 0xE900000000000020;
      v136 = v108;
      v115 = [v108 featureNames];
      v116 = sub_2546B55D4();

      v117 = *(v116 + 16);
      if (v117)
      {
        v53 = v83;
        sub_2546A2DF4(&qword_27F60F6D8, &unk_2546B6660);
        v118 = sub_2546AD0C8();
        j__malloc_size(v118);
        sub_2546ACFF8();
        v118[2] = v117;
        v118[3] = v119;
        v135 = sub_2546AC754(v142, v118 + 4, v117, v116);
        v2 = v142[4];

        sub_2546AD070();
        sub_2546A1D98();
        if (v135 != v117)
        {
          goto LABEL_39;
        }

        sub_2546AD0F4();
        v14 = MEMORY[0x277D837D0];
      }

      else
      {
        v118 = MEMORY[0x277D84F90];
      }

      v142[0] = v118;
      v53 = v139;
      sub_2546A8EC0(v142);
      if (v53)
      {
        goto LABEL_41;
      }

      v103 = v142[0];
      v120 = MEMORY[0x259C161E0](v142[0], v14);
      v122 = v121;

      MEMORY[0x259C16190](v120, v122);

      v123 = ObjectType;
      v124 = v144;
      v113[3].n128_u64[1] = v14;
      v113[2].n128_u64[0] = v123;
      v113[2].n128_u64[1] = v124;
      sub_2546ACF78(v113);
      swift_unknownObjectRelease();

      v106 = v137 + 2;
      v105 = v138 + 1;
    }

    v125 = sub_2546ACFDC();
    sub_2546A1CCC(v125);
    v126[7] = v14;
    v127 = v131;
    v126[4] = v2;
    v126[5] = v127;
    sub_2546ACF78(v126);

    v128 = sub_2546ACFDC();
    sub_2546A1CCC(v128);
    v129[7] = v14;
    v129[4] = 0;
    v129[5] = 0xE000000000000000;
    sub_2546ACF78(v129);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_endAccess();
    sub_2546A2DF4(&qword_27F60F6C8, &qword_2546B64B0);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_2546B6320;
    *(v97 + 56) = v14;
    *(v97 + 32) = v2 + 37;
    *(v97 + 40) = 0x80000002546B7510;
    sub_2546ACF78(v97);
  }
}

void sub_2546A86FC()
{
  sub_2546AD088();
  if (v7)
  {
    sub_2546A1CDC();
    if (v9 != v10)
    {
      sub_2546AD07C();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_2546ACFCC();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_2546AD054(v8);
  if (v3)
  {
    sub_2546A2DF4(&qword_27F60F760, &qword_2546B6500);
    v11 = sub_2546AD0C8();
    sub_2546AD0AC(v11);
    sub_2546AD094(v12 / 8);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  sub_2546AD0A0();
  if (v1)
  {
    if (v3 != v0 || v5 + 8 * v2 <= v4)
    {
      v14 = sub_2546AD070();
      memmove(v14, v15, v16);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_2546A2DF4(&qword_27F60F768, &qword_2546B6508);
    sub_2546AD034();
  }
}

void sub_2546A87E0()
{
  sub_2546AD088();
  if (v3)
  {
    sub_2546A1CDC();
    if (v5 != v6)
    {
      sub_2546AD07C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_2546ACFCC();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_2546A2DF4(&qword_27F60F728, &qword_2546B64E0);
    v9 = sub_2546AD0C8();
    j__malloc_size(v9);
    sub_2546ACFF8();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_2546A88B4()
{
  sub_2546AD088();
  if (v7)
  {
    sub_2546A1CDC();
    if (v9 != v10)
    {
      sub_2546AD07C();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_2546ACFCC();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_2546AD054(v8);
  if (v3)
  {
    sub_2546A2DF4(&qword_27F60F710, &unk_2546B6650);
    v11 = sub_2546AD0C8();
    sub_2546AD0AC(v11);
    sub_2546AD094(v12 / 32);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  sub_2546AD0A0();
  if (v1)
  {
    if (v3 != v0 || v5 + 32 * v2 <= v4)
    {
      v14 = sub_2546AD070();
      memmove(v14, v15, v16);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_2546A2DF4(&qword_27F60F718, &qword_2546B65B0);
    sub_2546AD034();
  }
}

void sub_2546A8998()
{
  sub_2546AD088();
  if (v7)
  {
    sub_2546A1CDC();
    if (v9 != v10)
    {
      sub_2546AD07C();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_2546ACFCC();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_2546AD054(v8);
  if (v3)
  {
    sub_2546A2DF4(&qword_27F60F700, &qword_2546B64D8);
    v4 = 24;
    v11 = swift_allocObject();
    sub_2546AD0AC(v11);
    sub_2546AD094(v12 / 24);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  sub_2546AD0A0();
  if (v1)
  {
    if (v3 != v0 || v5 + 24 * v2 <= v4)
    {
      v14 = sub_2546AD070();
      memmove(v14, v15, v16);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_2546A2DF4(&qword_27F60F708, &unk_2546B6630);
    sub_2546AD034();
  }
}

void sub_2546A8A8C()
{
  sub_2546AD088();
  if (v7)
  {
    sub_2546A1CDC();
    if (v9 != v10)
    {
      sub_2546AD07C();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_2546ACFCC();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_2546AD054(v8);
  if (v3)
  {
    sub_2546A2DF4(&qword_27F60F6E0, &qword_2546B64C0);
    v11 = sub_2546AD0C8();
    j__malloc_size(v11);
    sub_2546ACFF8();
    v11[2] = v2;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  sub_2546AD0A0();
  if (v1)
  {
    if (v11 != v0 || v5 + 16 * v2 <= v4)
    {
      v14 = sub_2546AD070();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    sub_2546A2DF4(&qword_27F60F720, &qword_2546B6520);
    sub_2546AD034();
  }
}

void sub_2546A8B70()
{
  sub_2546AD088();
  if (v7)
  {
    sub_2546A1CDC();
    if (v9 != v10)
    {
      sub_2546AD07C();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_2546ACFCC();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_2546AD054(v8);
  if (v3)
  {
    sub_2546A2DF4(&qword_27F60F6F0, &qword_2546B64C8);
    v4 = 48;
    v11 = swift_allocObject();
    sub_2546AD0AC(v11);
    sub_2546AD094(v12 / 48);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  sub_2546AD0A0();
  if (v1)
  {
    if (v3 != v0 || v5 + 48 * v2 <= v4)
    {
      v14 = sub_2546AD070();
      memmove(v14, v15, v16);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_2546A2DF4(&qword_27F60F6F8, &qword_2546B64D0);
    sub_2546AD034();
  }
}

void *sub_2546A8C64(uint64_t a1, uint64_t a2)
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

  sub_2546A2DF4(&qword_27F60F6D8, &unk_2546B6660);
  v4 = sub_2546AD0C8();
  j__malloc_size(v4);
  sub_2546ACFF8();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_2546A8CCC(uint64_t a1, uint64_t a2)
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

  sub_2546A2DF4(&qword_27F60F730, &qword_2546B64E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 48);
  return v4;
}

void *sub_2546A8D50(uint64_t a1, uint64_t a2)
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

  sub_2546A2DF4(&qword_27F60F740, &qword_2546B64F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 24);
  return v4;
}

void *sub_2546A8DD4(uint64_t a1, uint64_t a2)
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

  sub_2546A2DF4(&qword_27F60F750, &qword_2546B64F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 32);
  return v4;
}

char *sub_2546A8E50(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_2546ACF68(a3, result);
  }

  return result;
}

char *sub_2546A8E70(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_2546ACF68(a3, result);
  }

  return result;
}

char *sub_2546A8E98(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_2546ACF68(a3, result);
  }

  return result;
}

uint64_t sub_2546A8EC0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2546ACF00(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2546A9384(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_2546A8F2C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2546ACF14(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2546A9478(v6, &qword_27F60F738, &unk_2546B6670, sub_2546A9ED0, sub_2546A9594);
  *a1 = v2;
  return result;
}

uint64_t sub_2546A8FD0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2546ACF28(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2546A9478(v6, &qword_27F60F748, &unk_2546B6680, sub_2546AA428, sub_2546A9680);
  *a1 = v2;
  return result;
}

uint64_t sub_2546A9074(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2546ACF3C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2546A9478(v6, &qword_27F60F758, &unk_2546B6690, sub_2546AA978, sub_2546A975C);
  *a1 = v2;
  return result;
}

uint64_t sub_2546A9118(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2546ACF50(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2546A9478(v6, &qword_27F60F720, &qword_2546B6520, sub_2546AAEB0, sub_2546A9830);
  *a1 = v2;
  return result;
}

uint64_t sub_2546A91BC(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v3, a1);

  sub_2546AD070();
  sub_2546A1D98();
  if (v7 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_2546A9284(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_2546A92C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_2546A8C64(*(a1 + 16), 0);
  v4 = sub_2546ACDA4(&v6, v3 + 4, v1, a1);

  sub_2546A1D98();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_2546A9384(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2546B57F4();
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
        v6 = sub_2546B5594();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2546A99C8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_2546A5920(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2546A9478(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_2546B57F4();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2546A2DF4(a2, a3);
        v14 = sub_2546B5594();
        *(v14 + 16) = v13;
      }

      v15[0] = v14 + 32;
      v15[1] = v13;
      a4(v15, v16, a1, v12);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

uint64_t sub_2546A9594(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 48 * a3 - 48;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 48 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_2546B5814();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *(v12 + 48);
        v10 = *(v12 + 56);
        v14 = *(v12 + 64);
        v15 = *(v12 + 88);
        v16 = *(v12 + 72);
        v17 = *(v12 + 16);
        *(v12 + 48) = *v12;
        *(v12 + 64) = v17;
        *(v12 + 80) = *(v12 + 32);
        *v12 = result;
        *(v12 + 8) = v10;
        *(v12 + 16) = v14;
        *(v12 + 24) = v16;
        *(v12 + 40) = v15;
        v12 -= 48;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 48;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2546A9680(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_2546B5814();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v12 + 32);
        v15 = *(v12 + 16);
        result = *(v12 + 24);
        *(v12 + 24) = *v12;
        *(v12 + 40) = v15;
        *v12 = result;
        *(v12 + 8) = v14;
        v10 = v14;
        v12 -= 24;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2546A975C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 32 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_2546B5814();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *(v12 + 32);
        v14 = *(v12 + 56);
        v15 = *(v12 + 40);
        v16 = *(v12 + 16);
        *(v12 + 32) = *v12;
        *(v12 + 48) = v16;
        *v12 = result;
        *(v12 + 8) = v15;
        *(v12 + 24) = v14;
        v10 = v15;
        v12 -= 32;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 32;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2546A9830(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v21 = a3;
      v7 = *(v4 + 16 * a3);
      v19 = v6;
      v20 = v5;
      while (1)
      {
        v9 = *v5;
        v8 = *(v5 + 8);
        swift_getObjectType();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        sub_2546A2DF4(&qword_27F60F6D0, &qword_2546B64B8);
        v10 = sub_2546B5504();
        v12 = v11;
        swift_getObjectType();
        if (v10 == sub_2546B5504() && v12 == v13)
        {
          break;
        }

        v15 = sub_2546B5814();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v15)
        {
          if (!v4)
          {
            __break(1u);
            return result;
          }

          v16 = *v5;
          *v5 = *(v5 + 16);
          *(v5 + 16) = v16;
          v5 -= 16;
          if (!__CFADD__(v6++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

LABEL_14:
      a3 = v21 + 1;
      v5 = v20 + 16;
      v6 = v19 - 1;
      if (v21 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2546A99C8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_2546B5814();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_2546B5814()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = (v9 + a4);
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = (v9 - v10);
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_2546B5814() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while ((v31 + 1) != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_2546A87E0();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_2546A87E0();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_2546ABB74((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_2546AB6AC(&v92, *a1, a3);
LABEL_102:
}

void sub_2546A9ED0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v96 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3;
        v10 = (*a3 + 48 * v6);
        v11 = *v10;
        v12 = v10[1];
        v13 = (*a3 + 48 * v8);
        if (v11 == *v13 && v12 == v13[1])
        {
          v15 = 0;
        }

        else
        {
          v15 = sub_2546B5814();
        }

        v6 = v8 + 2;
        v16 = (v9 + 48 * v8 + 104);
        while (v6 < v5)
        {
          if (*(v16 - 1) == *(v16 - 7) && *v16 == *(v16 - 6))
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if ((v15 ^ sub_2546B5814()))
          {
            break;
          }

          ++v6;
          v16 += 6;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v6 < v8)
        {
          goto LABEL_122;
        }

        if (v8 < v6)
        {
          v18 = 48 * v6 - 24;
          v19 = 48 * v8 + 40;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v23 = (v22 + v19);
              v24 = *(v22 + v19 - 40);
              v25 = v22 + v18;
              v26 = *(v23 - 3);
              v27 = *v23;
              v28 = *(v23 - 1);
              v29 = *(v25 + 8);
              v30 = *(v25 - 8);
              *(v23 - 5) = *(v25 - 24);
              *(v23 - 3) = v30;
              *(v23 - 1) = v29;
              *(v25 - 24) = v24;
              *(v25 - 8) = v26;
              *v25 = v28;
              *(v25 + 16) = v27;
            }

            ++v21;
            v18 -= 48;
            v19 += 48;
          }

          while (v21 < v20);
        }
      }

LABEL_28:
      v31 = a3[1];
      if (v6 < v31)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_121;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v8 + a4 >= v31)
          {
            v32 = a3[1];
          }

          else
          {
            v32 = v8 + a4;
          }

          if (v32 < v8)
          {
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
            return;
          }

          if (v6 != v32)
          {
            v33 = *a3;
            v34 = *a3 + 48 * v6 - 48;
            v35 = v8 - v6;
            do
            {
              v36 = (v33 + 48 * v6);
              v37 = *v36;
              v38 = v36[1];
              v39 = v35;
              v40 = v34;
              do
              {
                v41 = v37 == *v40 && v38 == *(v40 + 8);
                if (v41 || (sub_2546B5814() & 1) == 0)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_125;
                }

                v37 = *(v40 + 48);
                v38 = *(v40 + 56);
                v42 = *(v40 + 64);
                v43 = *(v40 + 88);
                v44 = *(v40 + 72);
                v45 = *(v40 + 16);
                *(v40 + 48) = *v40;
                *(v40 + 64) = v45;
                *(v40 + 80) = *(v40 + 32);
                *v40 = v37;
                *(v40 + 8) = v38;
                *(v40 + 16) = v42;
                *(v40 + 24) = v44;
                *(v40 + 40) = v43;
                v40 -= 48;
              }

              while (!__CFADD__(v39++, 1));
              ++v6;
              v34 += 48;
              --v35;
            }

            while (v6 != v32);
            v6 = v32;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = v7[2];
        sub_2546A87E0();
        v7 = v90;
      }

      v47 = v7[2];
      v48 = v47 + 1;
      if (v47 >= v7[3] >> 1)
      {
        sub_2546A87E0();
        v7 = v91;
      }

      v7[2] = v48;
      v49 = v7 + 4;
      v50 = &v7[2 * v47 + 4];
      *v50 = v8;
      v50[1] = v6;
      v94 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v47)
      {
        while (1)
        {
          v51 = v48 - 1;
          v52 = &v49[2 * v48 - 2];
          v53 = &v7[2 * v48];
          if (v48 >= 4)
          {
            break;
          }

          if (v48 == 3)
          {
            v54 = v7[4];
            v55 = v7[5];
            v64 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            v57 = v64;
LABEL_69:
            if (v57)
            {
              goto LABEL_110;
            }

            v69 = *v53;
            v68 = v53[1];
            v70 = __OFSUB__(v68, v69);
            v71 = v68 - v69;
            v72 = v70;
            if (v70)
            {
              goto LABEL_113;
            }

            v73 = v52[1];
            v74 = v73 - *v52;
            if (__OFSUB__(v73, *v52))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v71, v74))
            {
              goto LABEL_118;
            }

            if (v71 + v74 >= v56)
            {
              if (v56 < v74)
              {
                v51 = v48 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v48 < 2)
          {
            goto LABEL_112;
          }

          v76 = *v53;
          v75 = v53[1];
          v64 = __OFSUB__(v75, v76);
          v71 = v75 - v76;
          v72 = v64;
LABEL_84:
          if (v72)
          {
            goto LABEL_115;
          }

          v78 = *v52;
          v77 = v52[1];
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_117;
          }

          if (v79 < v71)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v51 - 1 >= v48)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v83 = v7;
          v84 = &v49[2 * v51 - 2];
          v85 = *v84;
          v86 = &v49[2 * v51];
          v87 = v86[1];
          sub_2546ABD38((*a3 + 48 * *v84), (*a3 + 48 * *v86), (*a3 + 48 * v87), v94);
          if (v4)
          {
            goto LABEL_103;
          }

          if (v87 < v85)
          {
            goto LABEL_105;
          }

          v88 = v83[2];
          if (v51 > v88)
          {
            goto LABEL_106;
          }

          *v84 = v85;
          v84[1] = v87;
          if (v51 >= v88)
          {
            goto LABEL_107;
          }

          v48 = v88 - 1;
          memmove(&v49[2 * v51], v86 + 2, 16 * (v88 - 1 - v51));
          v7 = v83;
          v83[2] = v88 - 1;
          if (v88 <= 2)
          {
            goto LABEL_98;
          }
        }

        v58 = &v49[2 * v48];
        v59 = *(v58 - 8);
        v60 = *(v58 - 7);
        v64 = __OFSUB__(v60, v59);
        v61 = v60 - v59;
        if (v64)
        {
          goto LABEL_108;
        }

        v63 = *(v58 - 6);
        v62 = *(v58 - 5);
        v64 = __OFSUB__(v62, v63);
        v56 = v62 - v63;
        v57 = v64;
        if (v64)
        {
          goto LABEL_109;
        }

        v65 = v53[1];
        v66 = v65 - *v53;
        if (__OFSUB__(v65, *v53))
        {
          goto LABEL_111;
        }

        v64 = __OFADD__(v56, v66);
        v67 = v56 + v66;
        if (v64)
        {
          goto LABEL_114;
        }

        if (v67 >= v61)
        {
          v81 = *v52;
          v80 = v52[1];
          v64 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v64)
          {
            goto LABEL_119;
          }

          if (v56 < v82)
          {
            v51 = v48 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v96 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_2546AB7D8(&v96, *a1, a3);
LABEL_103:
}

void sub_2546AA428(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_2546B5814();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_2546B5814()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = v24 + v21;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = (v9 + a4);
          }

          if (v31 < v9)
          {
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
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v94 = v9;
            v34 = (v9 - v7);
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == *(v39 + 8);
                if (v40 || (sub_2546B5814() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v41 = *(v39 + 32);
                v42 = *(v39 + 16);
                v36 = *(v39 + 24);
                *(v39 + 24) = *v39;
                *(v39 + 40) = v42;
                *v39 = v36;
                *(v39 + 8) = v41;
                v37 = v41;
                v39 -= 24;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v94;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = v8[2];
        sub_2546A87E0();
        v8 = v89;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_2546A87E0();
        v8 = v90;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v7;
      v95 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v44)
      {
        v93 = v8 + 4;
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_70:
            if (v54)
            {
              goto LABEL_110;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_113;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_118;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v45 < 2)
          {
            goto LABEL_112;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_85:
          if (v69)
          {
            goto LABEL_115;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_117;
          }

          if (v76 < v68)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v48 - 1 >= v45)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = v48;
          v83 = &v46[2 * v48];
          v84 = v83[1];
          sub_2546ABF2C((*a3 + 24 * *v80), (*a3 + 24 * *v83), *a3 + 24 * v84, v95);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v84 < v81)
          {
            goto LABEL_105;
          }

          v85 = v8;
          v86 = v8[2];
          if (v82 > v86)
          {
            goto LABEL_106;
          }

          *v80 = v81;
          v80[1] = v84;
          if (v82 >= v86)
          {
            goto LABEL_107;
          }

          v45 = v86 - 1;
          memmove(v83, v83 + 2, 16 * (v86 - 1 - v82));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          v46 = v93;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_2546AB910(&v97, *a1, a3);
LABEL_103:
}

void sub_2546AA978(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 32 * v10);
        v12 = (*a3 + 32 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_2546B5814();
        }

        v10 = v9 + 2;
        v15 = 32 * v9;
        v16 = v12 + 9;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 5) && *v16 == *(v16 - 4))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_2546B5814()))
          {
            break;
          }

          ++v10;
          v16 += 4;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 32 * v10 - 8;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = (v21 + v18);
              v24 = *v22;
              v25 = v22[3];
              v26 = *(v22 + 1);
              v27 = *(v23 - 1);
              *v22 = *(v23 - 3);
              *(v22 + 1) = v27;
              *(v23 - 3) = v24;
              *(v23 - 1) = v26;
              *v23 = v25;
            }

            ++v20;
            v18 -= 32;
            v15 += 32;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v28 = a3[1];
      if (v10 < v28)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v28)
          {
            v29 = a3[1];
          }

          else
          {
            v29 = (v9 + a4);
          }

          if (v29 < v9)
          {
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
            return;
          }

          if (v10 != v29)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v10 - 32;
            v93 = v9;
            v32 = (v9 - v10);
            do
            {
              v33 = v10;
              v34 = (v30 + 32 * v10);
              v35 = *v34;
              v36 = v34[1];
              v37 = v32;
              v38 = v31;
              do
              {
                v39 = v35 == *v38 && v36 == *(v38 + 8);
                if (v39 || (sub_2546B5814() & 1) == 0)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_124;
                }

                v35 = *(v38 + 32);
                v40 = *(v38 + 56);
                v41 = *(v38 + 40);
                v42 = *(v38 + 16);
                *(v38 + 32) = *v38;
                *(v38 + 48) = v42;
                *v38 = v35;
                *(v38 + 8) = v41;
                *(v38 + 24) = v40;
                v36 = v41;
                v38 -= 32;
              }

              while (!__CFADD__(v37++, 1));
              v10 = v33 + 1;
              v31 += 32;
              --v32;
            }

            while ((v33 + 1) != v29);
            v10 = v29;
            v9 = v93;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v92 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = v8[2];
        sub_2546A87E0();
        v8 = v88;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_2546A87E0();
        v8 = v89;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v92;
      v94 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_69:
            if (v54)
            {
              goto LABEL_109;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_112;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_117;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v45 < 2)
          {
            goto LABEL_111;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_84:
          if (v69)
          {
            goto LABEL_114;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_116;
          }

          if (v76 < v68)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v48 - 1 >= v45)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = &v46[2 * v48];
          v83 = v82[1];
          sub_2546AC120((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v94);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v83 < v81)
          {
            goto LABEL_104;
          }

          v84 = v8;
          v85 = v8[2];
          if (v48 > v85)
          {
            goto LABEL_105;
          }

          *v80 = v81;
          v80[1] = v83;
          if (v48 >= v85)
          {
            goto LABEL_106;
          }

          v45 = v85 - 1;
          memmove(&v46[2 * v48], v82 + 2, 16 * (v85 - 1 - v48));
          v84[2] = v85 - 1;
          v86 = v85 > 2;
          v8 = v84;
          v5 = 0;
          if (!v86)
          {
            goto LABEL_98;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_107;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_108;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_110;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_113;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_118;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v92;
      if (v92 >= v6)
      {
        v96 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_2546ABA48(&v96, *a1, a3);
LABEL_102:
}

void sub_2546AAEB0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_108:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_150;
    }

    v4 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v98 = v4;
LABEL_111:
      v4 = (v98 + 16);
      v99 = *(v98 + 2);
      while (v99 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_147;
        }

        v100 = v98;
        v101 = &v98[16 * v99];
        v102 = *v101;
        v103 = (v4 + 16 * v99);
        v104 = v103[1];
        sub_2546AC2E4((*a3 + 16 * *v101), (*a3 + 16 * *v103), (*a3 + 16 * v104), v5);
        if (v123)
        {
          break;
        }

        if (v104 < v102)
        {
          goto LABEL_135;
        }

        if (v99 - 2 >= *v4)
        {
          goto LABEL_136;
        }

        *v101 = v102;
        *(v101 + 1) = v104;
        v105 = *v4 - v99;
        if (*v4 < v99)
        {
          goto LABEL_137;
        }

        v99 = *v4 - 1;
        memmove(v103, v103 + 2, 16 * v105);
        *v4 = v99;
        v98 = v100;
      }

LABEL_119:

      return;
    }

LABEL_144:
    v98 = sub_2546AC640(v4);
    goto LABEL_111;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v113 = v6;
      v118 = v8;
      v10 = *a3 + 16 * v7;
      v5 = *v10;
      v11 = *(v10 + 8);
      v12 = (*a3 + 16 * v9);
      v14 = *v12;
      v13 = v12[1];
      swift_getObjectType();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_2546A2DF4(&qword_27F60F6D0, &qword_2546B64B8);
      v15 = sub_2546B5504();
      v17 = v16;
      swift_getObjectType();
      if (v15 == sub_2546B5504() && v17 == v18)
      {
        v115 = 0;
      }

      else
      {
        v115 = sub_2546B5814();
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v20 = v9 + 2;
      v107 = v9;
      v21 = v12 + 3;
      v110 = 16 * v9;
      v22 = 16 * v9 + 16;
      do
      {
        v23 = v20;
        v24 = v7;
        v4 = v22;
        if (v20 >= v113)
        {
          break;
        }

        v121 = v20;
        v26 = v21[1];
        v25 = v21[2];
        v5 = *(v21 - 1);
        v27 = *v21;
        swift_getObjectType();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v28 = sub_2546B5504();
        v30 = v29;
        swift_getObjectType();
        v32 = v28 == sub_2546B5504() && v30 == v31;
        v33 = v32 ? 0 : sub_2546B5814();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v34 = v115 ^ v33;
        v23 = v121;
        v20 = v121 + 1;
        v21 += 2;
        v7 = v24 + 1;
        v22 = v4 + 16;
      }

      while ((v34 & 1) == 0);
      if (v115)
      {
        v35 = v107;
        v8 = v118;
        if (v23 < v107)
        {
          goto LABEL_141;
        }

        if (v107 >= v23)
        {
          v7 = v23;
          v9 = v107;
          goto LABEL_31;
        }

        v36 = v110;
        do
        {
          if (v35 != v24)
          {
            v37 = *a3;
            if (!*a3)
            {
              goto LABEL_148;
            }

            v38 = *(v37 + v36);
            *(v37 + v36) = *(v37 + v4);
            *(v37 + v4) = v38;
          }

          ++v35;
          v4 -= 16;
          v36 += 16;
          v39 = v35 < v24--;
        }

        while (v39);
        v7 = v23;
      }

      else
      {
        v7 = v23;
        v8 = v118;
      }

      v9 = v107;
    }

LABEL_31:
    v40 = a3[1];
    if (v7 < v40)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_140;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v7 < v9)
    {
      goto LABEL_139;
    }

    v55 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v8 = v55;
    }

    else
    {
      v95 = v55[2];
      sub_2546A87E0();
      v8 = v96;
    }

    v4 = v8[2];
    v56 = v4 + 1;
    if (v4 >= v8[3] >> 1)
    {
      sub_2546A87E0();
      v8 = v97;
    }

    v8[2] = v56;
    v57 = v8 + 4;
    v58 = &v8[2 * v4 + 4];
    *v58 = v9;
    v58[1] = v7;
    v122 = *a1;
    if (!*a1)
    {
      goto LABEL_149;
    }

    if (v4)
    {
      v120 = v8;
      while (1)
      {
        v5 = v56 - 1;
        v59 = &v57[2 * v56 - 2];
        v60 = &v8[2 * v56];
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v61 = v8[4];
          v62 = v8[5];
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_74:
          if (v64)
          {
            goto LABEL_126;
          }

          v76 = *v60;
          v75 = v60[1];
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_129;
          }

          v80 = v59[1];
          v81 = v80 - *v59;
          if (__OFSUB__(v80, *v59))
          {
            goto LABEL_132;
          }

          if (__OFADD__(v78, v81))
          {
            goto LABEL_134;
          }

          if (v78 + v81 >= v63)
          {
            if (v63 < v81)
            {
              v5 = v56 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        if (v56 < 2)
        {
          goto LABEL_128;
        }

        v83 = *v60;
        v82 = v60[1];
        v71 = __OFSUB__(v82, v83);
        v78 = v82 - v83;
        v79 = v71;
LABEL_89:
        if (v79)
        {
          goto LABEL_131;
        }

        v85 = *v59;
        v84 = v59[1];
        v71 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v71)
        {
          goto LABEL_133;
        }

        if (v86 < v78)
        {
          v8 = v120;
          goto LABEL_103;
        }

LABEL_96:
        if (v5 - 1 >= v56)
        {
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
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
          goto LABEL_143;
        }

        if (!*a3)
        {
          goto LABEL_146;
        }

        v4 = &v57[2 * v5 - 2];
        v90 = *v4;
        v91 = &v57[2 * v5];
        v92 = v91[1];
        sub_2546AC2E4((*a3 + 16 * *v4), (*a3 + 16 * *v91), (*a3 + 16 * v92), v122);
        if (v123)
        {
          goto LABEL_119;
        }

        if (v92 < v90)
        {
          goto LABEL_121;
        }

        v93 = v7;
        v94 = v120[2];
        if (v5 > v94)
        {
          goto LABEL_122;
        }

        *v4 = v90;
        *(v4 + 8) = v92;
        if (v5 >= v94)
        {
          goto LABEL_123;
        }

        v56 = v94 - 1;
        memmove(&v57[2 * v5], v91 + 2, 16 * (v94 - 1 - v5));
        v8 = v120;
        v120[2] = v94 - 1;
        v39 = v94 > 2;
        v7 = v93;
        if (!v39)
        {
          goto LABEL_103;
        }
      }

      v65 = &v57[2 * v56];
      v66 = *(v65 - 8);
      v67 = *(v65 - 7);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_124;
      }

      v70 = *(v65 - 6);
      v69 = *(v65 - 5);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_125;
      }

      v72 = v60[1];
      v73 = v72 - *v60;
      if (__OFSUB__(v72, *v60))
      {
        goto LABEL_127;
      }

      v71 = __OFADD__(v63, v73);
      v74 = v63 + v73;
      if (v71)
      {
        goto LABEL_130;
      }

      if (v74 >= v68)
      {
        v88 = *v59;
        v87 = v59[1];
        v71 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v71)
        {
          goto LABEL_138;
        }

        if (v63 < v89)
        {
          v5 = v56 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_74;
    }

LABEL_103:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_108;
    }
  }

  v41 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_142;
  }

  if (v41 >= v40)
  {
    v41 = a3[1];
  }

  if (v41 < v9)
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (v7 == v41)
  {
    goto LABEL_53;
  }

  v119 = v8;
  v42 = *a3;
  v4 = *a3 + 16 * v7 - 16;
  v108 = v9;
  v43 = v9 - v7;
  v111 = v41;
LABEL_40:
  v114 = v4;
  v116 = v7;
  v44 = *(v42 + 16 * v7);
  v112 = v43;
  v45 = v43;
  while (1)
  {
    v5 = *v4;
    v46 = *(v4 + 8);
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_2546A2DF4(&qword_27F60F6D0, &qword_2546B64B8);
    v47 = sub_2546B5504();
    v49 = v48;
    swift_getObjectType();
    if (v47 == sub_2546B5504() && v49 == v50)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

LABEL_51:
      v7 = v116 + 1;
      v4 = v114 + 16;
      v43 = v112 - 1;
      if (v116 + 1 == v111)
      {
        v7 = v111;
        v8 = v119;
        v9 = v108;
        goto LABEL_53;
      }

      goto LABEL_40;
    }

    v52 = sub_2546B5814();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    if ((v52 & 1) == 0)
    {
      goto LABEL_51;
    }

    if (!v42)
    {
      break;
    }

    v53 = *v4;
    *v4 = *(v4 + 16);
    *(v4 + 16) = v53;
    v4 -= 16;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_51;
    }
  }

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
}

uint64_t sub_2546AB6AC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2546AC640(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_2546ABB74((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_2546AB7D8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2546AC640(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_2546ABD38((*a3 + 48 * *v4), (*a3 + 48 * *v9), (*a3 + 48 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_2546AB910(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2546AC640(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_2546ABF2C((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_2546ABA48(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2546AC640(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_2546AC120((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_2546ABB74(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_2546B5814() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 16;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v14;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_29:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (sub_2546B5814() & 1) != 0)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_46:
  v19 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v19])
  {
    memmove(v6, v4, 16 * v19);
  }

  return 1;
}

uint64_t sub_2546ABD38(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 48;
  v9 = (a3 - __dst) / 48;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[48 * v8] <= a4)
    {
      memmove(a4, __src, 48 * v8);
    }

    v11 = &v4[48 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_2546B5814() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 48;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 48;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 48;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    v15 = *v14;
    v16 = *(v14 + 2);
    *(v7 + 1) = *(v14 + 1);
    *(v7 + 2) = v16;
    *v7 = v15;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[48 * v9] <= a4)
  {
    memmove(a4, __dst, 48 * v9);
  }

  v11 = &v4[48 * v9];
LABEL_29:
  v18 = v6 - 48;
  for (v5 -= 48; v11 > v4 && v6 > v7; v5 -= 48)
  {
    v20 = *(v11 - 6) == *(v6 - 6) && *(v11 - 5) == *(v6 - 5);
    if (!v20 && (sub_2546B5814() & 1) != 0)
    {
      v13 = v5 + 48 == v6;
      v6 -= 48;
      if (!v13)
      {
        v23 = *v18;
        v24 = *(v18 + 2);
        *(v5 + 1) = *(v18 + 1);
        *(v5 + 2) = v24;
        *v5 = v23;
        v6 = v18;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 48)
    {
      v21 = *(v11 - 3);
      v22 = *(v11 - 1);
      *(v5 + 1) = *(v11 - 2);
      *(v5 + 2) = v22;
      *v5 = v21;
    }

    v11 -= 48;
  }

LABEL_46:
  v25 = (v11 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v25])
  {
    memmove(v6, v4, 48 * v25);
  }

  return 1;
}

uint64_t sub_2546ABF2C(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 24;
  v9 = (a3 - __dst) / 24;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[24 * v8] <= a4)
    {
      memmove(a4, __src, 24 * v8);
    }

    v11 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_2546B5814() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 24;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    v15 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v15;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[24 * v9] <= a4)
  {
    memmove(a4, __dst, 24 * v9);
  }

  v11 = &v4[24 * v9];
LABEL_29:
  v17 = v6 - 24;
  for (v5 -= 24; v11 > v4 && v6 > v7; v5 -= 24)
  {
    v19 = *(v11 - 3) == *(v6 - 3) && *(v11 - 2) == *(v6 - 2);
    if (!v19 && (sub_2546B5814() & 1) != 0)
    {
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 2);
        *v5 = v21;
        v6 = v17;
      }

      goto LABEL_29;
    }

    if (v11 != (v5 + 24))
    {
      v20 = *(v11 - 24);
      *(v5 + 16) = *(v11 - 1);
      *v5 = v20;
    }

    v11 -= 24;
  }

LABEL_46:
  v22 = (v11 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_2546AC120(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 32;
  v9 = (a3 - __dst) / 32;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[32 * v8] <= a4)
    {
      memmove(a4, __src, 32 * v8);
    }

    v11 = &v4[32 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_2546B5814() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 32;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 32;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 32;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    v15 = *(v14 + 1);
    *v7 = *v14;
    *(v7 + 1) = v15;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[32 * v9] <= a4)
  {
    memmove(a4, __dst, 32 * v9);
  }

  v11 = &v4[32 * v9];
LABEL_29:
  v17 = v6 - 32;
  for (v5 -= 32; v11 > v4 && v6 > v7; v5 -= 32)
  {
    v19 = *(v11 - 4) == *(v6 - 4) && *(v11 - 3) == *(v6 - 3);
    if (!v19 && (sub_2546B5814() & 1) != 0)
    {
      v13 = v5 + 32 == v6;
      v6 -= 32;
      if (!v13)
      {
        v21 = *(v17 + 1);
        *v5 = *v17;
        *(v5 + 1) = v21;
        v6 = v17;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 32)
    {
      v20 = *(v11 - 1);
      *v5 = *(v11 - 2);
      *(v5 + 1) = v20;
    }

    v11 -= 32;
  }

LABEL_46:
  v22 = (v11 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[32 * v22])
  {
    memmove(v6, v4, 32 * v22);
  }

  return 1;
}

uint64_t sub_2546AC2E4(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = (__dst - __src) / 16;
  v8 = (a3 - __dst) / 16;
  if (v7 < v8)
  {
    v9 = a4 == __src && &__src[16 * v7] > a4;
    v10 = __src;
    if (!v9)
    {
      memmove(a4, __src, 16 * v7);
    }

    v11 = &v4[16 * v7];
    v47 = v5;
    v45 = v11;
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v10;
        goto LABEL_47;
      }

      v14 = *v6;
      v13 = *(v6 + 1);
      v16 = *v4;
      v15 = *(v4 + 1);
      swift_getObjectType();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_2546A2DF4(&qword_27F60F6D0, &qword_2546B64B8);
      v17 = sub_2546B5504();
      v19 = v18;
      swift_getObjectType();
      v21 = v17 == sub_2546B5504() && v19 == v20;
      if (v21)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = sub_2546B5814();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v22)
        {
          v23 = v6;
          v24 = v10 == v6;
          v6 += 16;
          goto LABEL_20;
        }
      }

      v23 = v4;
      v24 = v10 == v4;
      v4 += 16;
LABEL_20:
      v5 = v47;
      v11 = v45;
      if (!v24)
      {
        *v10 = *v23;
      }

      v10 += 16;
    }
  }

  if (a4 != __dst || &__dst[16 * v8] <= a4)
  {
    memmove(a4, __dst, 16 * v8);
  }

  v11 = &v4[16 * v8];
  v26 = __src;
  v43 = v4;
LABEL_29:
  v27 = v6 - 16;
  while (1)
  {
    v5 -= 16;
    if (v11 <= v4 || v6 <= v26)
    {
      break;
    }

    v29 = v27;
    v46 = v11;
    v31 = *(v11 - 2);
    v30 = *(v11 - 1);
    v11 -= 16;
    v33 = *(v6 - 2);
    v32 = *(v6 - 1);
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_2546A2DF4(&qword_27F60F6D0, &qword_2546B64B8);
    v34 = sub_2546B5504();
    v36 = v35;
    swift_getObjectType();
    if (v34 == sub_2546B5504() && v36 == v37)
    {
      v39 = 0;
    }

    else
    {
      v39 = sub_2546B5814();
    }

    v27 = v29;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v4 = v43;
    v26 = __src;
    if (v39)
    {
      v21 = v5 + 16 == v6;
      v6 = v27;
      v11 = v46;
      if (!v21)
      {
        *v5 = *v27;
        v6 = v27;
      }

      goto LABEL_29;
    }

    if (v46 != v5 + 16)
    {
      *v5 = *v11;
    }
  }

LABEL_47:
  v40 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v40])
  {
    memmove(v6, v4, 16 * v40);
  }

  return 1;
}

char *sub_2546AC654(char *result, int64_t a2, char a3, char *a4)
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
    sub_2546A2DF4(&qword_27F60F728, &qword_2546B64E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_2546AC754(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2546AC8B0()
{
  result = qword_27F60F6E8;
  if (!qword_27F60F6E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F60F6E8);
  }

  return result;
}

uint64_t sub_2546AC8F4(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v26 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v16 << 6);
      v19 = (*(a4 + 48) + 16 * v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = *(a4 + 56) + 32 * v18;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      *v11 = v21;
      *(v11 + 8) = v20;
      *(v11 + 16) = v23;
      *(v11 + 24) = v24;
      *(v11 + 32) = v25;
      if (v15 == v10)
      {
        break;
      }

      v11 += 48;

      result = swift_unknownObjectRetain();
      v12 = v15;
      v13 = v16;
    }

    swift_unknownObjectRetain();
    v13 = v16;
LABEL_19:
    v7 = v26;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2546ACA9C(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v21 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9)) | (v16 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v15 == v10)
      {
        break;
      }

      v11 += 3;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v21;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}