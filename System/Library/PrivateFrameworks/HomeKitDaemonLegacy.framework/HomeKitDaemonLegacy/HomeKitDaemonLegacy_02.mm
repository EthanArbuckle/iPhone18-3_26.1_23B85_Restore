unint64_t sub_25322EDDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3528, &unk_253D49500);
    v2 = sub_253CD10C8();
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
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_253205FF8(*(a1 + 56) + 32 * v15, v31);
        *&v30 = v17;
        *(&v30 + 1) = v18;
        v28[2] = v30;
        v29[0] = v31[0];
        v29[1] = v31[1];
        v19 = v30;
        sub_2531FF150(v29, &v24);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
        swift_dynamicCast();
        sub_2531FF150(&v25, v27);
        sub_2531FF150(v27, v28);
        sub_2531FF150(v28, &v26);
        result = sub_253217D84(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_2531FF150(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_2531FF150(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id sub_25322F120(uint64_t a1)
{
  v2 = sub_253CCFEE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(v9);

  v10 = sub_253CCFE98();
  (*(v3 + 8))(v6, v2);

  return v10;
}

void sub_25322F224(void *a1)
{
  v1 = [a1 startOfDayByAddingDayCount_];
  sub_253CCFEA8();
}

void sub_25322F314(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t), uint64_t a7, void (*a8)(uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v23 = a8;
  v12 = a5(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v17 = sub_253CD0968();
  v19 = v18;
  v20 = *&a1[OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup];
  swift_unknownObjectRetain_n();
  v21 = a1;
  a6(a3);
  v23(v17, v19, v16, v12, a7);
  swift_unknownObjectRelease();

  (*(v13 + 8))(v16, v12);
}

uint64_t sub_253230280()
{
  v1 = *(v0 + OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup);
  v2 = sub_253CD0388();
  result = sub_253CD03A8();
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = v2 + v4;
  if (__OFADD__(v2, v4))
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

id sub_2532304A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EventCounterGroupBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_253230550@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

id sub_25323059C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253CCFEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a3, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  v12 = type metadata accessor for EventCounterGroupBridge();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup] = a2;
  v14 = &v13[OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock];
  *v14 = sub_253230DEC;
  v14[1] = v11;
  v15 = objc_opt_self();

  v16 = [v15 sharedInstance];
  v19.receiver = v13;
  v19.super_class = v12;
  v17 = objc_msgSendSuper2(&v19, sel_initWithContext_serializedEventCounters_uptimeProvider_, a1, 0, v16);

  swift_unknownObjectRelease();

  (*(v7 + 8))(a3, v6);
  return v17;
}

id sub_253230794(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = type metadata accessor for EventCounterGroupBridge();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup] = a2;
  v9 = &v8[OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock];
  *v9 = sub_253230E60;
  v9[1] = v6;
  v10 = objc_opt_self();
  v11 = a3;

  v12 = [v10 sharedInstance];
  v15.receiver = v8;
  v15.super_class = v7;
  v13 = objc_msgSendSuper2(&v15, sel_initWithContext_serializedEventCounters_uptimeProvider_, a1, 0, v12);

  swift_unknownObjectRelease();

  return v13;
}

uint64_t sub_2532308C0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v51 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v42 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v50[0] = *v18;
    v50[1] = v19;
    v50[2] = v20;

    v21 = v20;
    a2(&v47, v50);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = *v51;
    v27 = sub_253217D84(v47, v48);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (*(v25 + 24) >= v30)
    {
      if ((v46 & 1) == 0)
      {
        sub_2532861E4();
      }
    }

    else
    {
      v32 = v51;
      sub_253284C04(v30, v46 & 1);
      v33 = *v32;
      v34 = sub_253217D84(v22, v23);
      if ((v31 & 1) != (v35 & 1))
      {
        goto LABEL_27;
      }

      v27 = v34;
    }

    v9 &= v9 - 1;
    v36 = *v51;
    if (v31)
    {
      v12 = *(v36[7] + 8 * v27);

      v13 = v36[7];
      v14 = *(v13 + 8 * v27);
      *(v13 + 8 * v27) = v12;
    }

    else
    {
      v36[(v27 >> 6) + 8] |= 1 << v27;
      v37 = (v36[6] + 16 * v27);
      *v37 = v22;
      v37[1] = v23;
      *(v36[7] + 8 * v27) = v24;
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v36[2] = v40;
    }

    a4 = 1;
    v11 = v15;
    v6 = v43;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      sub_25320C5EC();
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_253CD1158();
  __break(1u);
  return result;
}

void sub_253230B5C(void *a1, uint64_t a2)
{
  v3 = [a1 eventCounters];
  if (v3)
  {
    v4 = v3;
    sub_253230D20();
    v5 = sub_253CD08D8();

    v6 = 1 << *(v5 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v5 + 64);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    if (v8)
    {
      while (1)
      {
        v11 = v10;
LABEL_10:
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(v5 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        v17 = *(*(v5 + 56) + 8 * v13);

        v18 = v17;
        v19 = [v18 integerValue];
        v20 = sub_253CD0938();
        (*(a2 + 16))(a2, v20, v19);

        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        return;
      }

      if (v11 >= v9)
      {
        break;
      }

      v8 = *(v5 + 64 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_10;
      }
    }
  }
}

unint64_t sub_253230D20()
{
  result = qword_281530D08;
  if (!qword_281530D08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281530D08);
  }

  return result;
}

uint64_t sub_253230D6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3518, &qword_253D494F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_253230DEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_253CCFEE8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

unint64_t sub_2532310E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3070, &unk_253D48C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_253D49510;
  *(inited + 32) = 0x644965646F6ELL;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  *(inited + 56) = 0x746E696F70646E65;
  *(inited + 64) = 0xEA00000000006449;
  v2 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_endpointId);
  *(inited + 72) = v2;
  *(inited + 80) = 0x4972657473756C63;
  *(inited + 88) = 0xE900000000000064;
  v3 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_clusterId);
  *(inited + 96) = v3;
  *(inited + 104) = 0x7475626972747461;
  *(inited + 112) = 0xEB00000000644965;
  v4 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_attributeId);
  *(inited + 120) = v4;
  v5 = v2;
  v6 = v3;
  v7 = v4;
  v8 = sub_253218704(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A37E0, &qword_253D49550);
  swift_arrayDestroy();
  return v8;
}

id sub_253231360()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatterAccessoryWriteAttributeLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_253231458(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v30 = a6;
  v31 = sub_253CCFF58();
  v15 = *(v31 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v31);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v19 = &v8[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_coreAnalyticsEventName];
  *v19 = 0xD00000000000003BLL;
  *(v19 + 1) = 0x8000000253D4D890;
  *&v8[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_coreAnalyticsEventOptions] = 0;
  swift_unknownObjectWeakAssign();
  *&v8[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_nodeId] = a2;
  *&v8[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_endpointId] = a3;
  *&v8[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_clusterId] = a4;
  *&v8[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_attributeId] = a5;
  v20 = v30;
  sub_253205FF8(v30, &v8[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_value]);
  *&v8[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_timedWriteTimeout] = a7;
  v21 = a7;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = [a1 uuid];
  sub_253CCFF38();

  v26 = sub_253CCFF18();
  (*(v15 + 8))(v18, v31);
  v27 = type metadata accessor for MatterAccessoryWriteAttributeLogEvent();
  v32.receiver = v8;
  v32.super_class = v27;
  v28 = objc_msgSendSuper2(&v32, sel_initWithHomeUUID_, v26);

  __swift_destroy_boxed_opaque_existential_0(v20);
  return v28;
}

id sub_253231668(void *a1)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_253CCFF58();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B70, &qword_253D49578);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_253CCFEE8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v49 - v20;
  MEMORY[0x28223BE20](v19);
  v56 = sub_253CCFCF8();
  v53 = *(v56 - 8);
  v22 = *(v53 + 64);
  v23 = MEMORY[0x28223BE20](v56);
  v55 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v54 = &v49 - v25;
  v26 = [v2 startDate];
  sub_253CCFEA8();

  v27 = [v2 endDate];
  if (v27)
  {
    v28 = v27;
    sub_253CCFEA8();

    v29 = *(v14 + 32);
    v29(v12, v18, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    v29(v21, v12, v13);
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    v30 = [v2 startDate];
    sub_253CCFEA8();

    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_253232320(v12);
    }
  }

  v31 = v54;
  sub_253CCFCE8();
  (*(v53 + 16))(v55, v31, v56);
  v32 = v49;
  v33 = [v49 spiClientIdentifier];
  sub_253CCFF38();

  sub_253CCFF08();
  v34 = v52;
  v35 = *(v51 + 8);
  v35(v8, v52);
  v36 = [v32 atHomeLevel] == 2 || objc_msgSend(v32, sel_atHomeLevel) == 3;
  LODWORD(v51) = v36;
  v37 = HMDRequestSourceAsString(*&v2[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_source]);
  if (!v37)
  {
    sub_253CD0968();
    v37 = sub_253CD0938();
  }

  v38 = v50;
  sub_253CCFF48();
  sub_253CCFF08();
  v35(v38, v34);
  v39 = objc_allocWithZone(MEMORY[0x277CF1980]);
  v40 = v55;
  v41 = sub_253CCFCD8();
  v42 = sub_253CD0938();

  v43 = sub_253CD0938();
  v44 = sub_253CD0938();

  v45 = [v39 initWithDateInterval:v41 homeUniqueIdentifier:v42 homeOccupancy:v51 source:v37 clientName:v43 eventCorrelationIdentifier:v44];

  v46 = *(v53 + 8);
  v47 = v56;
  v46(v40, v56);
  v46(v54, v47);
  return v45;
}

uint64_t sub_253231CD0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_253CD07E8();
  v64 = *(v2 - 8);
  v65 = v2;
  v3 = v64[8];
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v55 - v8;
  MEMORY[0x28223BE20](v7);
  v63 = &v55 - v10;
  v11 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_clusterId);
  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v13 = [v11 isEqualToNumber_];

  if (!v13)
  {
    sub_253211D58(ObjectType, &off_2864FB720);
    v39 = sub_253CD07C8();
    v40 = sub_253CD0C78();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2531F8000, v39, v40, "Ignoring MatterAccessoryInvokeCommandLogEvent since MTRClusterIDType is not rvcOperationState", v41, 2u);
      MEMORY[0x259C040E0](v41, -1, -1);
    }

    (v64[1])(v6, v65);
    return MEMORY[0x277D84F90];
  }

  v14 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_commandId);
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  LODWORD(v14) = [v14 isEqualToNumber_];

  if (!v14)
  {
    sub_253211D58(ObjectType, &off_2864FB720);
    v42 = sub_253CD07C8();
    v43 = sub_253CD0C78();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2531F8000, v42, v43, "Ignoring MatterAccessoryInvokeCommandLogEvent MTRCommandIDType is not clusterRVCOperationalStateCommandResume", v44, 2u);
      MEMORY[0x259C040E0](v44, -1, -1);
    }

    (v64[1])(v9, v65);
    return MEMORY[0x277D84F90];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v45 = v63;
    sub_253211D58(ObjectType, &off_2864FB720);
    v46 = sub_253CD07C8();
    v47 = sub_253CD0C98();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2531F8000, v46, v47, "Unable to donate to Biome due to nil home", v48, 2u);
      MEMORY[0x259C040E0](v48, -1, -1);
    }

    (v64[1])(v45, v65);
    return MEMORY[0x277D84F90];
  }

  v64 = Strong;
  v17 = sub_253231668(Strong);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AE8, &unk_253D4B300);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_253D48D90;
  v66 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_nodeId);
  sub_2532322CC();
  sub_253CD0E08();
  v18 = [v11 description];
  if (!v18)
  {
    sub_253CD0968();
    v18 = sub_253CD0938();
  }

  v63 = objc_allocWithZone(MEMORY[0x277CF1960]);
  v61 = v17;
  v19 = sub_253CD0938();
  v62 = sub_253CD0938();

  v60 = sub_253CD0938();
  v59 = sub_253CD0938();
  v20 = sub_253CD0A38();
  v21 = sub_253CD0938();
  v22 = sub_253CD0938();
  v55 = v22;
  v23 = sub_253CD0938();
  v56 = v23;
  v24 = sub_253CD0938();
  v57 = v24;
  v25 = sub_253CD0938();
  v58 = v25;
  v26 = sub_253CD0A38();
  v27 = sub_253CD0938();
  v53 = v24;
  v54 = v25;
  v51 = v22;
  v52 = v23;
  v49 = v20;
  v50 = v21;
  v28 = v21;
  v29 = v20;
  v30 = v62;
  v31 = v61;
  v32 = v18;
  v33 = v18;
  v35 = v59;
  v34 = v60;
  v63 = [v63 initWithBase:v61 stringAccessoryState:v19 accessoryUniqueIdentifier:v62 serviceUniqueIdentifier:v32 serviceType:v60 characteristicType:v59 serviceGroupUniqueIdentifier:0 zoneUniqueIdentifiers:v49 roomUniqueIdentifier:v50 accessoryName:v51 serviceName:v52 roomName:v53 serviceGroupName:v54 zoneNames:v26 homeName:v27];

  v36 = v65;
  v37 = v64;
  *(v65 + 32) = v63;

  return v36;
}

unint64_t sub_2532322CC()
{
  result = qword_27F5A35F0;
  if (!qword_27F5A35F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A35F0);
  }

  return result;
}

uint64_t sub_253232320(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B70, &qword_253D49578);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2532323EC()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_253232A64();
  v1 = sub_253CD0A38();
  [Strong accessoryReachabilityDidChange_];
}

id sub_2532324D4()
{
  v2.receiver = v0;
  v2.super_class = _s15SwiftExtensionsCMa_1();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_253232620()
{
  v1 = [objc_allocWithZone(_s15SwiftExtensionsCMa_1()) init];
  [v0 setSwiftExtensions_];

  v2 = [v0 _swiftExtensions];
  v3 = [v0 notificationCenter];
  v4 = type metadata accessor for WidgetAccessoryReachabilityMonitor();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  v5[14] = MEMORY[0x277D84F98];
  v5[15] = 0;
  v5[16] = 0;
  v5[17] = v3;
  v14.receiver = v5;
  v14.super_class = v4;
  v6 = objc_msgSendSuper2(&v14, sel_init);
  v7 = *&v2[OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo26HMDWidgetTimelineRefresherP33_B408D5CF3978727312E626FC8FA64E1D15SwiftExtensions_reachabilityMonitor];
  *&v2[OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo26HMDWidgetTimelineRefresherP33_B408D5CF3978727312E626FC8FA64E1D15SwiftExtensions_reachabilityMonitor] = v6;

  v8 = [v0 _swiftExtensions];
  v9 = _s49WidgetAccessoryReachabilityMonitorDelegateAdaptorCMa();
  v10 = objc_allocWithZone(v9);
  swift_unknownObjectUnownedInit();
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  v12 = *&v8[OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo26HMDWidgetTimelineRefresherP33_B408D5CF3978727312E626FC8FA64E1D15SwiftExtensions_reachabilityMonitorDelegateAdapter];
  *&v8[OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo26HMDWidgetTimelineRefresherP33_B408D5CF3978727312E626FC8FA64E1D15SwiftExtensions_reachabilityMonitorDelegateAdapter] = v11;
}

void sub_2532327D4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = [v0 _swiftExtensions];
  v7 = *&v6[OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo26HMDWidgetTimelineRefresherP33_B408D5CF3978727312E626FC8FA64E1D15SwiftExtensions_reachabilityMonitor];

  if (v7)
  {
    v8 = [v1 _swiftExtensions];
    v9 = *&v8[OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo26HMDWidgetTimelineRefresherP33_B408D5CF3978727312E626FC8FA64E1D15SwiftExtensions_reachabilityMonitorDelegateAdapter];
    v10 = v9;

    if (v9)
    {
      v11 = sub_253CD0B58();
      (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v7;
      v12[5] = v10;
      v12[6] = &off_2864FB738;
      sub_25324690C(0, 0, v5, &unk_253D495E8, v12);
    }

    else
    {
    }
  }
}

unint64_t sub_253232A64()
{
  result = qword_281530EA0;
  if (!qword_281530EA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281530EA0);
  }

  return result;
}

uint64_t sub_253232AB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25320C438;

  return sub_253208F94(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_253232B78()
{
  v0 = sub_253CD07E8();
  __swift_allocate_value_buffer(v0, qword_27F5A3618);
  __swift_project_value_buffer(v0, qword_27F5A3618);
  v1 = *MEMORY[0x277D0F1A8];
  sub_253CD0968();
  return sub_253CD07D8();
}

uint64_t sub_253232BF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_defaultActor_initialize();
  *(v6 + 136) = sub_253CD02F8();
  *(v6 + 144) = sub_253233EE4(&qword_281531978, MEMORY[0x277D0EFE0]);
  __swift_allocate_boxed_opaque_existential_0((v6 + 112));
  sub_253CD02E8();
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = a1;
  *(v6 + 240) = a2;
  *(v6 + 248) = a3;
  *(v6 + 256) = a4;
  *(v6 + 264) = a5;
  *(v6 + 272) = 0;
  v12 = qword_27F5A2438;
  v13 = a1;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = sub_253CD07E8();
  __swift_project_value_buffer(v14, qword_27F5A3618);
  v15 = v13;
  v16 = sub_253CD07C8();
  v17 = sub_253CD0C78();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v18 = 136315650;
    v19 = sub_253CD0D38();
    v21 = sub_253277BA8(v19, v20, &v30);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    v22 = sub_253CD11F8();
    v24 = sub_253277BA8(v22, v23, &v30);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2080;
    v25 = sub_253CD11F8();
    v27 = sub_253277BA8(v25, v26, &v30);

    *(v18 + 24) = v27;
    _os_log_impl(&dword_2531F8000, v16, v17, "Configured to monitor queue %s, interval: %s, threshold: %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C040E0](v29, -1, -1);
    MEMORY[0x259C040E0](v18, -1, -1);
  }

  else
  {
  }

  return v6;
}

uint64_t sub_253232E7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10[-v3];
  v5 = v0[18];
  __swift_project_boxed_opaque_existential_0(v0 + 14, v0[17]);
  v6 = v0[30];
  v7 = v0[31];
  sub_253CD0B38();
  v8 = sub_253CD0B58();
  (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  v11[3] = swift_getAssociatedTypeWitness();
  v11[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v11);

  sub_253CD0188();

  sub_253206054(v4, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_253233C14(v11, (v0 + 19));
  return swift_endAccess();
}

uint64_t sub_25323306C()
{
  v1 = *(v0 + 16);
  sub_2532330CC();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2532330CC()
{
  v35 = sub_253CD0818();
  v1 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_253CCFEE8();
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v32);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v28 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  v33 = *(v0 + 232);
  v11 = sub_253CD0D38();
  v29 = v12;
  v30 = v11;
  v13 = *(v0 + 144);
  __swift_project_boxed_opaque_existential_0((v0 + 112), *(v0 + 136));
  aBlock = *(v0 + 256);
  sub_253CD1068();
  sub_253CD0B38();
  v14 = sub_253CD0B58();
  (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(&aBlock);
  sub_253CD0188();
  sub_253206054(v10, qword_27F5A2C48, &unk_253D48880);
  swift_beginAccess();
  sub_253233C14(&aBlock, v0 + 192);
  swift_endAccess();
  v15 = v28;
  sub_253CCFED8();
  v16 = swift_allocObject();
  swift_weakInit();
  v18 = v31;
  v17 = v32;
  v19 = v15;
  (*(v3 + 16))(v31, v15, v32);
  v20 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  (*(v3 + 32))(v21 + v20, v18, v17);
  v22 = (v21 + ((v4 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = v29;
  *v22 = v30;
  v22[1] = v23;
  AssociatedConformanceWitness = sub_253233C84;
  v40 = v21;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v37 = sub_25321E9B8;
  AssociatedTypeWitness = &block_descriptor_5;
  _Block_copy(&aBlock);
  v41 = MEMORY[0x277D84F90];
  sub_253233EE4(&qword_281530ED0, MEMORY[0x277D85198]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31E8, &qword_253D48EA0);
  sub_2532268F0();
  sub_253CD0E38();
  v24 = sub_253CD0878();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_253CD0868();

  sub_253CD0D18();

  return (*(v3 + 8))(v19, v17);
}

uint64_t sub_2532335D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - v8;
  v10 = sub_253CCFEE8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v40 = a3;
    sub_253CCFED8();
    sub_253CCFE88();
    sub_253CD1218();
    v17 = *(v16 + 256);
    v18 = *(v16 + 264);
    v19 = sub_253CD1208();
    v41 = v11;
    if (v19)
    {
      if (qword_27F5A2438 != -1)
      {
        swift_once();
      }

      v20 = sub_253CD07E8();
      __swift_project_value_buffer(v20, qword_27F5A3618);

      v21 = sub_253CD07C8();
      v22 = sub_253CD0C88();

      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_12;
      }

      v23 = swift_slowAlloc();
      v39 = v10;
      v24 = v23;
      v25 = swift_slowAlloc();
      v42 = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_253277BA8(v40, a4, &v42);
      *(v24 + 12) = 2080;
      v26 = sub_253CD11F8();
      v28 = sub_253277BA8(v26, v27, &v42);

      *(v24 + 14) = v28;
      v29 = "Healthy Queue: %s, delay: %s";
    }

    else
    {
      if (qword_27F5A2438 != -1)
      {
        swift_once();
      }

      v30 = sub_253CD07E8();
      __swift_project_value_buffer(v30, qword_27F5A3618);

      v21 = sub_253CD07C8();
      v22 = sub_253CD0C98();

      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_12;
      }

      v31 = swift_slowAlloc();
      v39 = v10;
      v24 = v31;
      v25 = swift_slowAlloc();
      v42 = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_253277BA8(v40, a4, &v42);
      *(v24 + 12) = 2080;
      v32 = sub_253CD11F8();
      v34 = sub_253277BA8(v32, v33, &v42);

      *(v24 + 14) = v34;
      v29 = "Slow Queue: %s, delay: %s";
    }

    _os_log_impl(&dword_2531F8000, v21, v22, v29, v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C040E0](v25, -1, -1);
    v35 = v24;
    v10 = v39;
    MEMORY[0x259C040E0](v35, -1, -1);
LABEL_12:

    v36 = sub_253CD0B58();
    (*(*(v36 - 8) + 56))(v9, 1, 1, v36);
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v37[4] = v16;

    sub_25324690C(0, 0, v9, &unk_253D49698, v37);

    return (*(v41 + 8))(v14, v10);
  }

  return result;
}

uint64_t sub_253233A74()
{
  v1 = v0[15];
  swift_beginAccess();
  sub_253233DE4(v1 + 192, (v0 + 2));
  if (v0[5])
  {
    sub_2532074E4((v0 + 2), (v0 + 7));
    sub_253206054((v0 + 2), &qword_27F5A3630, &unk_253D49680);
    v2 = v0[11];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
    sub_253CD0308();
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  }

  else
  {
    sub_253206054((v0 + 2), &qword_27F5A3630, &unk_253D49680);
  }

  v3 = v0[15];
  sub_253232E7C();
  v4 = v0[1];

  return v4();
}

uint64_t sub_253233B70()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  sub_253206054(v0 + 152, &qword_27F5A3630, &unk_253D49680);
  sub_253206054(v0 + 192, &qword_27F5A3630, &unk_253D49680);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_253233C14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3630, &unk_253D49680);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_253233C84()
{
  v1 = *(sub_253CCFEE8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_2532335D8(v3, v0 + v2, v5, v6);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_253233D30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25320C438;

  return sub_253233A54(a1, v4, v5, v6);
}

uint64_t sub_253233DE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3630, &unk_253D49680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_253233E54()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25320C7A8;

  return sub_25323304C(v0);
}

uint64_t sub_253233EE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_253233F2C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3648, &qword_253D496E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - v7;
  v9 = *(v2 + 120);
  *(v2 + 120) = a1;
  v10 = a1;

  v11 = *(v2 + 112);
  v12 = *(v11 + 16);

  if (v12)
  {
    v14 = 0;
    while (v14 < *(v11 + 16))
    {
      (*(v5 + 16))(v8, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14++, v4);
      v17[1] = v10;
      v15 = v10;
      sub_253CD0AE8();
      result = (*(v5 + 8))(v8, v4);
      if (v12 == v14)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v16 = *(v2 + 112);
    *(v2 + 112) = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2532340C0()
{
  if ([v0 discoveryController])
  {
    sub_253CD0E18();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    type metadata accessor for DiscoveryController(0);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_253226510(v5);
    return 0;
  }
}

id sub_253234174()
{
  v1 = [v0 lock];
  [v1 lock];

  if ([v0 delayedHomeManagerStorage])
  {
    sub_253CD0E18();
    swift_unknownObjectRelease();
    sub_2531FF150(v6, v7);
    sub_2531FF150(v7, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3650, &qword_253D496E8);
LABEL_5:
    swift_dynamicCast();
    v4 = [v0 lock];
    [v4 unlock];

    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3650, &qword_253D496E8);
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = MEMORY[0x277D84F90];
  *(v2 + 120) = 0;
  [v0 setDelayedHomeManagerStorage_];

  result = [v0 delayedHomeManagerStorage];
  if (result)
  {
    sub_253CD0E18();
    swift_unknownObjectRelease();
    sub_2531FF150(v6, v7);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t static MainDriverUtilities.mainDriver(_:finishDelayedHomeManager:)(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = __swift_project_boxed_opaque_existential_0(a1, v4);
  v6 = a2[3];
  v7 = __swift_project_boxed_opaque_existential_0(a2, v6);

  return sub_2532346EC(v5, v7, v2, v4, v6);
}

uint64_t sub_25323439C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  return MEMORY[0x2822009F8](sub_2532343BC, 0, 0);
}

uint64_t sub_2532343BC()
{
  v1 = v0[13];
  sub_253205FF8(v0[12], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
  sub_253200644(0, &qword_27F5A3638, off_27971A190);
  swift_dynamicCast();
  v2 = v0[10];
  v3 = sub_253234174();
  v0[14] = v3;

  sub_253205FF8(v1, (v0 + 6));
  sub_253200644(0, &qword_27F5A3640, off_27971A138);
  swift_dynamicCast();
  v0[15] = v0[11];

  return MEMORY[0x2822009F8](sub_2532344D0, v3, 0);
}

uint64_t sub_2532344D0()
{
  v1 = *(v0 + 120);
  sub_253233F2C(v1);

  v2 = *(v0 + 8);

  return v2();
}

id MainDriverUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MainDriverUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MainDriverUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MainDriverUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MainDriverUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2532346EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v18 - v11;
  v21[3] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  v20[3] = a5;
  v14 = __swift_allocate_boxed_opaque_existential_0(v20);
  (*(*(a5 - 8) + 16))(v14, a2, a5);
  v15 = sub_253CD0B58();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  sub_253205FF8(v21, v19);
  sub_253205FF8(v20, v18);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  sub_2531FF150(v19, (v16 + 32));
  sub_2531FF150(v18, (v16 + 64));
  sub_25324690C(0, 0, v12, &unk_253D496D0, v16);

  __swift_destroy_boxed_opaque_existential_0(v21);
  return __swift_destroy_boxed_opaque_existential_0(v20);
}

uint64_t sub_2532348E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25320C438;

  return sub_25323439C(a1, v4, v5, v1 + 32, v1 + 64);
}

id sub_253234994(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_lock((a1 + 16));
  v4 = *(a1 + 32);
  v5 = v4;
  os_unfair_lock_unlock((a1 + 16));
  if (!v4)
  {
    v6 = *(a1 + 88);
    v7 = *(a1 + 96);
    __swift_project_boxed_opaque_existential_0((a1 + 64), v6);
    v5 = (*(v7 + 24))(a1, v6, v7);
  }

  os_unfair_lock_lock((a1 + 16));
  v8 = *(a1 + 48);
  v9 = v8;
  os_unfair_lock_unlock((a1 + 16));
  if (!v8)
  {
    v10 = *(a1 + 88);
    v11 = *(a1 + 96);
    __swift_project_boxed_opaque_existential_0((a1 + 64), v10);
    v9 = (*(v11 + 40))(a1, v10, v11);
  }

  v12 = v5;
  v13 = v9;
  os_unfair_lock_lock(v2 + 4);
  os_unfair_lock_lock((a1 + 16));
  v14 = *(a1 + 24);
  v15 = v14;
  os_unfair_lock_unlock((a1 + 16));
  if (!v14)
  {
    v16 = [objc_allocWithZone(HMDAccountRegistry) initWithAppleAccountManager:v12 remoteAccountManager:v13];
    os_unfair_lock_lock((a1 + 16));
    v15 = v16;
    sub_253234FAC(a1 + 24);
    *(a1 + 24) = v16;
    os_unfair_lock_unlock((a1 + 16));
  }

  os_unfair_lock_unlock(v2 + 4);
  return v15;
}

id sub_253234B14(uint64_t a1)
{
  os_unfair_lock_lock(v1 + 4);
  os_unfair_lock_lock((a1 + 16));
  v3 = *(a1 + 40);
  v4 = v3;
  os_unfair_lock_unlock((a1 + 16));
  if (!v3)
  {
    v5 = [objc_allocWithZone(HMDIDSServiceManager) initWithDefaults];
    [v5 configure];
    os_unfair_lock_lock((a1 + 16));
    v6 = *(a1 + 40);
    v4 = v5;

    *(a1 + 40) = v5;
    os_unfair_lock_unlock((a1 + 16));
  }

  os_unfair_lock_unlock(v1 + 4);
  return v4;
}

uint64_t sub_253234BC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(os_unfair_lock_s *, uint64_t, uint64_t, id))
{
  v5 = v3;
  os_unfair_lock_lock((a1 + 16));
  v7 = *(a1 + 40);
  v8 = v7;
  os_unfair_lock_unlock((a1 + 16));
  if (!v7)
  {
    v9 = *(a1 + 88);
    v10 = *(a1 + 96);
    __swift_project_boxed_opaque_existential_0((a1 + 64), v9);
    v8 = (*(v10 + 32))(a1, v9, v10);
  }

  KeyPath = swift_getKeyPath();
  v12 = v8;
  os_unfair_lock_lock(v5 + 4);
  v13 = a3(v5 + 4, a1, KeyPath, v12);

  os_unfair_lock_unlock(v5 + 4);

  return v13;
}

id sub_253234DB0(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(a2 + 4);
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v9 = *v7;
  v6(v13, 0);
  os_unfair_lock_unlock(a2 + 4);
  if (v8)
  {
    return v9;
  }

  v11 = [objc_allocWithZone(HMDAppleAccountManager) initWithIDSServiceManager_];
  os_unfair_lock_lock(a2 + 4);
  v13[0] = v11;
  v12 = v11;
  swift_setAtWritableKeyPath();
  os_unfair_lock_unlock(a2 + 4);
  return v12;
}

id sub_253234E9C(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, void *a4)
{
  os_unfair_lock_lock(a2 + 4);
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v9 = *v7;
  v6(v13, 0);
  os_unfair_lock_unlock(a2 + 4);
  if (v8)
  {
    return v9;
  }

  v11 = [objc_allocWithZone(HMDRemoteAccountManager) initWithIDSService_];
  swift_unknownObjectRelease();
  os_unfair_lock_lock(a2 + 4);
  v13[0] = v11;
  v12 = v11;
  swift_setAtWritableKeyPath();
  os_unfair_lock_unlock(a2 + 4);
  return v12;
}

uint64_t sub_253234FAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3660, qword_253D49778);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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
    aBlock[4] = sub_2532352D4;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2532352F8;
    aBlock[3] = &block_descriptor_6;
    v4 = _Block_copy(aBlock);
    v5 = v0;

    [v2 registerAccountChangeEventHandler_];
    swift_unknownObjectRelease();
    _Block_release(v4);
  }
}

void sub_2532352F8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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
  return sub_253235420;
}

void sub_253235420(uint64_t a1, char a2)
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
      v3[4] = sub_253236720;
      v3[5] = v10;
      *v3 = MEMORY[0x277D85DD0];
      v3[1] = 1107296256;
      v3[2] = sub_2532352F8;
      v3[3] = &block_descriptor_7;
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
  v3[4] = sub_253236720;
  v3[5] = v17;
  *v3 = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_2532352F8;
  v3[3] = &block_descriptor_14;
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
    v5 = sub_253236640(v0, v1, v3, v4);

    swift_deallocPartialClassInstance();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_253235894(void *a1, int a2)
{
  v89 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_253CD07E8();
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
    sub_253211D58(ObjectType, &off_2864FB968);
    v28 = sub_253CD07C8();
    v29 = sub_253CD0C88();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2531F8000, v28, v29, "Ignoring change for shared iPad", v30, 2u);
      MEMORY[0x259C040E0](v30, -1, -1);
    }

    (*(v91 + 8))(v27, v90);
    return;
  }

  if (!a1)
  {
    sub_253211D58(ObjectType, &off_2864FB968);
    v44 = sub_253CD07C8();
    v45 = sub_253CD0C88();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 67109120;
      *(v46 + 4) = v89;
      _os_log_impl(&dword_2531F8000, v44, v45, "Ignoring change for nil account, change type: %u", v46, 8u);
      MEMORY[0x259C040E0](v46, -1, -1);
    }

    (*(v91 + 8))(v10, v90);
    return;
  }

  v31 = *MEMORY[0x277CEC688];
  v88 = a1;
  v32 = a1;
  if (![v32 aa:v31 isAccountClass:?])
  {
    sub_253211D58(ObjectType, &off_2864FB968);
    v47 = v32;
    v48 = sub_253CD07C8();
    v49 = sub_253CD0C88();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      *(v50 + 4) = v47;
      *v51 = v88;
      v52 = v47;
      _os_log_impl(&dword_2531F8000, v48, v49, "Ignoring change for non-primary account %@", v50, 0xCu);
      sub_2532365D8(v51);
      MEMORY[0x259C040E0](v51, -1, -1);
      MEMORY[0x259C040E0](v50, -1, -1);
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
        sub_253211D58(ObjectType, &off_2864FB968);
        v56 = v32;
        v57 = v32;
        v58 = sub_253CD07C8();
        v59 = sub_253CD0CB8();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *v60 = 138412290;
          *(v60 + 4) = v57;
          *v61 = v88;
          v62 = v57;
          _os_log_impl(&dword_2531F8000, v58, v59, "Account added %@", v60, 0xCu);
          sub_2532365D8(v61);
          MEMORY[0x259C040E0](v61, -1, -1);
          MEMORY[0x259C040E0](v60, -1, -1);
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
        sub_253211D58(ObjectType, &off_2864FB968);
        v65 = v32;
        v66 = sub_253CD07C8();
        v67 = sub_253CD0CB8();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = v32;
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v69 = 138412290;
          *(v69 + 4) = v65;
          *v70 = v88;
          v71 = v65;
          _os_log_impl(&dword_2531F8000, v66, v67, "Account modified %@", v69, 0xCu);
          sub_2532365D8(v70);
          MEMORY[0x259C040E0](v70, -1, -1);
          v72 = v69;
          v32 = v68;
          MEMORY[0x259C040E0](v72, -1, -1);
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
        sub_253211D58(ObjectType, &off_2864FB968);
        v34 = v32;
        v35 = sub_253CD07C8();
        v36 = sub_253CD0CB8();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = v32;
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *v38 = 138412290;
          *(v38 + 4) = v34;
          *v39 = v88;
          v40 = v34;
          _os_log_impl(&dword_2531F8000, v35, v36, "Account removed %@", v38, 0xCu);
          sub_2532365D8(v39);
          MEMORY[0x259C040E0](v39, -1, -1);
          v41 = v38;
          v32 = v37;
          MEMORY[0x259C040E0](v41, -1, -1);
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
        sub_253211D58(ObjectType, &off_2864FB968);
        v53 = sub_253CD07C8();
        v54 = sub_253CD0C98();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 67109120;
          *(v55 + 4) = v33;
          _os_log_impl(&dword_2531F8000, v53, v54, "Unexpected, unhandled account change case: %u", v55, 8u);
          MEMORY[0x259C040E0](v55, -1, -1);
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
      v79 = sub_253CD0968();
      v81 = v80;

      v82 = *MEMORY[0x277CB8C58];
      v83 = sub_253CD0968();
      if (v81)
      {
        if (v79 == v83 && v81 == v84)
        {
        }

        else
        {
          v86 = sub_253CD1118();

          if ((v86 & 1) == 0)
          {

            return;
          }
        }

        sub_253236248(v78);

        return;
      }

      v32 = v78;
    }

    else
    {
      v85 = *MEMORY[0x277CB8C58];
      sub_253CD0968();
    }

    return;
  }

  __break(1u);
}

id sub_253236248(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_253CD07E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  if (*(v2 + OBJC_IVAR___HMDAccountChangeObserver_isHomePod) == 1)
  {
    sub_253211D58(ObjectType, &off_2864FB968);
    v13 = a1;
    v14 = sub_253CD07C8();
    v15 = sub_253CD0CB8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_2531F8000, v14, v15, "IDSAccount change %@", v16, 0xCu);
      sub_2532365D8(v17);
      MEMORY[0x259C040E0](v17, -1, -1);
      MEMORY[0x259C040E0](v16, -1, -1);
    }

    (*(v6 + 8))(v12, v5);
    return [*(v2 + OBJC_IVAR___HMDAccountChangeObserver_notificationCenter) postNotificationName:@"HMDHomeManagerIDMSAccountUsernameDidUpdateNotification" object:0];
  }

  else
  {
    sub_253211D58(ObjectType, &off_2864FB968);
    v20 = sub_253CD07C8();
    v21 = sub_253CD0C88();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2531F8000, v20, v21, "Ignoring IDSAccount change on non-HomePod", v22, 2u);
      MEMORY[0x259C040E0](v22, -1, -1);
    }

    return (*(v6 + 8))(v10, v5);
  }
}

id sub_253236504(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2532365D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AC8, &qword_253D48890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_253236640(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = type metadata accessor for Account.ChangeObserver();
  v9 = objc_allocWithZone(v8);
  swift_unknownObjectWeakInit();
  *&v9[OBJC_IVAR___HMDAccountChangeObserver_eventSubscriber] = a1;
  *&v9[OBJC_IVAR___HMDAccountChangeObserver_notificationCenter] = a4;
  v10 = a4;
  v11 = [a2 productClass] == 6;
  v9[OBJC_IVAR___HMDAccountChangeObserver_isHomePod] = v11;
  v12 = [a3 isSharedIPad];
  v9[OBJC_IVAR___HMDAccountChangeObserver_isSharediPad] = v12;
  v14.receiver = v9;
  v14.super_class = v8;
  return objc_msgSendSuper2(&v14, sel_init);
}

HMDCameraStreamManagerDataSource __swiftcall HMDCameraStreamManagerDataSource.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for HMDCameraStreamManagerDataSource()
{
  result = qword_27F5A36F8;
  if (!qword_27F5A36F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5A36F8);
  }

  return result;
}

id sub_253236874()
{
  result = [objc_allocWithZone(HMDRegistry) init];
  qword_281530EB8 = result;
  return result;
}

unint64_t type metadata accessor for HMDRegistry()
{
  result = qword_27F5A3700;
  if (!qword_27F5A3700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5A3700);
  }

  return result;
}

id sub_253236AF8()
{
  if (qword_281531030 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281531038);
  if (off_281531040)
  {
    v0 = off_281531040;
  }

  else
  {
    v0 = sub_25322D2BC(0x65446E6F6D656144, 0xED0000746C756166);
    off_281531040 = v0;
  }

  os_unfair_lock_unlock(&dword_281531038);
  os_unfair_lock_lock(v0 + 4);
  v1 = *(v0 + 3);
  v2 = v1;
  os_unfair_lock_unlock(v0 + 4);
  if (!v1)
  {
    v3 = *(v0 + 11);
    v4 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v3);
    v2 = (*(v4 + 16))(v0, v3, v4);
  }

  return v2;
}

id sub_253236C18()
{
  if (qword_281531030 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281531038);
  if (off_281531040)
  {
    v0 = off_281531040;
  }

  else
  {
    v0 = sub_25322D2BC(0x65446E6F6D656144, 0xED0000746C756166);
    off_281531040 = v0;
  }

  os_unfair_lock_unlock(&dword_281531038);
  os_unfair_lock_lock(v0 + 4);
  v1 = *(v0 + 4);
  v2 = v1;
  os_unfair_lock_unlock(v0 + 4);
  if (!v1)
  {
    v3 = *(v0 + 11);
    v4 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v3);
    v2 = (*(v4 + 24))(v0, v3, v4);
  }

  return v2;
}

id sub_253236D38()
{
  if (qword_281531030 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281531038);
  if (off_281531040)
  {
    v0 = off_281531040;
  }

  else
  {
    v0 = sub_25322D2BC(0x65446E6F6D656144, 0xED0000746C756166);
    off_281531040 = v0;
  }

  os_unfair_lock_unlock(&dword_281531038);
  os_unfair_lock_lock(v0 + 4);
  v1 = *(v0 + 5);
  v2 = v1;
  os_unfair_lock_unlock(v0 + 4);
  if (!v1)
  {
    v3 = *(v0 + 11);
    v4 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v3);
    v2 = (*(v4 + 32))(v0, v3, v4);
  }

  return v2;
}

id sub_253236E58()
{
  if (qword_281531030 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281531038);
  if (off_281531040)
  {
    v0 = off_281531040;
  }

  else
  {
    v0 = sub_25322D2BC(0x65446E6F6D656144, 0xED0000746C756166);
    off_281531040 = v0;
  }

  os_unfair_lock_unlock(&dword_281531038);
  os_unfair_lock_lock(v0 + 4);
  v1 = *(v0 + 6);
  v2 = v1;
  os_unfair_lock_unlock(v0 + 4);
  if (!v1)
  {
    v3 = *(v0 + 11);
    v4 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_0(v0 + 8, v3);
    v2 = (*(v4 + 40))(v0, v3, v4);
  }

  return v2;
}

id sub_253237130(uint64_t a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v4 = *a3;
  v5 = [objc_opt_self() *a4];

  return v5;
}

unint64_t type metadata accessor for HMDHAPAccessoryDefaultDataSource()
{
  result = qword_27F5A3780;
  if (!qword_27F5A3780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5A3780);
  }

  return result;
}

uint64_t sub_2532372B4()
{
  v1 = *v0;
  sub_253CD11C8();
  MEMORY[0x259C01140](v1);
  return sub_253CD11E8();
}

uint64_t sub_2532372FC()
{
  v1 = *v0;
  sub_253CD11C8();
  MEMORY[0x259C01140](v1);
  return sub_253CD11E8();
}

uint64_t sub_253237340()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t _s9LifeCycleOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s9LifeCycleOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25323750C()
{
  result = qword_27F5A3790;
  if (!qword_27F5A3790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3790);
  }

  return result;
}

uint64_t sub_253237560()
{
  sub_2532375CC(v0 + 24);
  v1 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return swift_deallocClassInstance();
}

id sub_253237670(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v28 = a6;
  v13 = sub_253CCFF58();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v18 = &v7[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_coreAnalyticsEventName];
  *v18 = 0xD00000000000003ALL;
  *(v18 + 1) = 0x8000000253D4D850;
  *&v7[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_coreAnalyticsEventOptions] = 0;
  swift_unknownObjectWeakAssign();
  *&v7[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_nodeId] = a2;
  *&v7[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_endpointId] = a3;
  *&v7[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_clusterId] = a4;
  *&v7[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_commandId] = a5;
  *&v7[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_source] = v28;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = [a1 uuid];
  sub_253CCFF38();

  v23 = sub_253CCFF18();
  (*(v14 + 8))(v17, v13);
  v24 = type metadata accessor for MatterAccessoryInvokeCommandLogEvent();
  v29.receiver = v7;
  v29.super_class = v24;
  v25 = objc_msgSendSuper2(&v29, sel_initWithHomeUUID_, v23);

  return v25;
}

unint64_t sub_2532379D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3070, &unk_253D48C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_253D48C40;
  *(inited + 32) = 0x644965646F6ELL;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  *(inited + 56) = 0x746E696F70646E65;
  *(inited + 64) = 0xEA00000000006449;
  v2 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_endpointId);
  *(inited + 72) = v2;
  *(inited + 80) = 0x4972657473756C63;
  *(inited + 88) = 0xE900000000000064;
  v3 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_clusterId);
  *(inited + 96) = v3;
  *(inited + 104) = 0x49646E616D6D6F63;
  *(inited + 112) = 0xE900000000000064;
  v4 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_commandId);
  *(inited + 120) = v4;
  *(inited + 128) = 0x656372756F73;
  *(inited + 136) = 0xE600000000000000;
  v5 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_source);
  v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v7 = v2;
  v8 = v3;
  v9 = v4;
  *(inited + 144) = [v6 initWithUnsignedInteger_];
  v10 = sub_253218704(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A37E0, &qword_253D49550);
  swift_arrayDestroy();
  return v10;
}

id sub_253237C9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatterAccessoryInvokeCommandLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_253237D74(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_253237E20(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_253CD0ED8())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x259C00F30](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_253237F34(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_253CD0E88();
    v9 = v8;
    v10 = sub_253CD0F28();
    v12 = v11;
    v13 = MEMORY[0x259C00E10](v7, v9, v10, v11);
    sub_25323FB84(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_25323FB84(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v7 = sub_253CD0E48();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_25323DF88(v7, v9, v6 != 0, a1, a2, a3);
  v17 = v16;
  sub_25323FB84(v7, v9, v6 != 0);
  return v17;
}

uint64_t sub_253238068(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_253CD0E48();
  if (v3 == 1 << *(a1 + 32))
  {
    return 43;
  }

  v5 = *(a1 + 36);

  return sub_25323E1A0(v3, v5, 0, a1);
}

uint64_t sub_2532380E0()
{
  sub_253CD0FB8();
  v4 = type metadata accessor for HomeDeviceEntity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A37F0, &unk_253D499C8);
  v1 = sub_253CD00F8();
  MEMORY[0x259C00940](v1);

  MEMORY[0x259C00940](0x203A6469202CLL, 0xE600000000000000);
  sub_253CCFF58();
  sub_25323D848(&qword_281531980, MEMORY[0x277CC95F0]);
  v2 = sub_253CD10E8();
  MEMORY[0x259C00940](v2);

  MEMORY[0x259C00940](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x259C00940](*(v0 + *(v4 + 24)), *(v0 + *(v4 + 24) + 8));
  MEMORY[0x259C00940](0x203A65707974202CLL, 0xE800000000000000);
  LOBYTE(v4) = *(v0 + *(v4 + 28));
  sub_253CD1058();
  return 0;
}

uint64_t sub_253238270(NSObject *a1, char *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v145 = a4;
  v157 = a3;
  v149 = a1;
  v150 = a2;
  v6 = sub_253CCFF58();
  v153 = *(v6 - 8);
  v7 = *(v153 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v154 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v148 = &v132 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v138 = &v132 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v137 = &v132 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v142 = &v132 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v147 = &v132 - v19;
  MEMORY[0x28223BE20](v18);
  v146 = &v132 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A37F8, &qword_253D499D8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v136 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v139 = &v132 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v132 - v27;
  v160 = type metadata accessor for HomeDeviceEntity();
  v155 = *(v160 - 8);
  v29 = *(v155 + 64);
  v30 = MEMORY[0x28223BE20](v160);
  v133 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v134 = &v132 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v140 = &v132 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v141 = &v132 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v132 = &v132 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = (&v132 - v41);
  v43 = MEMORY[0x28223BE20](v40);
  v45 = (&v132 - v44);
  v46 = MEMORY[0x28223BE20](v43);
  v135 = &v132 - v47;
  MEMORY[0x28223BE20](v46);
  v156 = &v132 - v48;
  v161 = MEMORY[0x277D84FA0];
  v49 = [v4 services];
  sub_253200644(0, &qword_27F5A2B00, off_27971A228);
  v50 = sub_253CD0A58();

  if (v50 >> 62)
  {
    goto LABEL_68;
  }

  v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v143 = v42;
  v144 = v45;
  v151 = v6;
  if (v51)
  {
    v52 = 0;
    v158 = v50 & 0xFFFFFFFFFFFFFF8;
    v159 = v50 & 0xC000000000000001;
    v45 = (v155 + 48);
    v53 = MEMORY[0x277D84F90];
    v54 = (v155 + 56);
    v152 = v5;
    v42 = v51;
    while (1)
    {
      if (v159)
      {
        v55 = MEMORY[0x259C00F30](v52, v50);
      }

      else
      {
        if (v52 >= *(v158 + 16))
        {
          goto LABEL_66;
        }

        v55 = *(v50 + 8 * v52 + 32);
      }

      v56 = v55;
      v6 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        v51 = sub_253CD0ED8();
        goto LABEL_3;
      }

      if ([v55 isHidden])
      {

        (*v54)(v28, 1, 1, v160);
      }

      else
      {
        sub_25323987C(v157, v5, v28);

        if ((*v45)(v28, 1, v160) != 1)
        {
          sub_25323FC90(v28, v156, type metadata accessor for HomeDeviceEntity);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_2532837F4(0, v53[2] + 1, 1, v53);
          }

          v58 = v53[2];
          v57 = v53[3];
          if (v58 >= v57 >> 1)
          {
            v53 = sub_2532837F4(v57 > 1, v58 + 1, 1, v53);
          }

          v53[2] = v58 + 1;
          sub_25323FC90(v156, v53 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v58, type metadata accessor for HomeDeviceEntity);
          v5 = v152;
          goto LABEL_7;
        }
      }

      sub_253206054(v28, &qword_27F5A37F8, &qword_253D499D8);
LABEL_7:
      ++v52;
      if (v6 == v42)
      {
        goto LABEL_21;
      }
    }
  }

  v53 = MEMORY[0x277D84F90];
LABEL_21:

  sub_25323E1F0(v53);

  v59 = [v5 mediaProfile];
  v60 = v151;
  v62 = v143;
  v61 = v144;
  if (v59)
  {
    v63 = v59;
    v64 = v139;
    sub_25323B6C4(v149, v150, v5, v139);
    if ((*(v155 + 48))(v64, 1, v160) == 1)
    {

      sub_253206054(v64, &qword_27F5A37F8, &qword_253D499D8);
    }

    else
    {
      v65 = v64;
      v66 = v135;
      sub_25323FC90(v65, v135, type metadata accessor for HomeDeviceEntity);
      sub_2532222E0(v66, v62);
      sub_25328713C(v61, v62);

      sub_25323FB28(v61);
      sub_25323FB28(v66);
    }
  }

  v67 = [v5 cameraProfiles];
  sub_253200644(0, &qword_27F5A3800, off_27971A038);
  sub_25323FAB8(&unk_27F5A3C40, &qword_27F5A3800, off_27971A038);
  v68 = sub_253CD0BF8();

  if ((v68 & 0xC000000000000001) != 0)
  {
    v69 = sub_253CD0ED8();
  }

  else
  {
    v69 = *(v68 + 16);
  }

  if (v69)
  {
    v70 = [v5 cameraProfiles];
    v71 = sub_253CD0BF8();

    v72 = sub_253237F34(v71, &qword_27F5A3800, off_27971A038);

    if (v72)
    {
      v73 = v136;
      sub_25323C290(v149, v150, v5, v136);
      if ((*(v155 + 48))(v73, 1, v160) == 1)
      {

        sub_253206054(v73, &qword_27F5A37F8, &qword_253D499D8);
      }

      else
      {
        v74 = v73;
        v75 = v132;
        sub_25323FC90(v74, v132, type metadata accessor for HomeDeviceEntity);
        sub_2532222E0(v75, v62);
        sub_25328713C(v61, v62);

        sub_25323FB28(v61);
        sub_25323FB28(v75);
      }
    }
  }

  v76 = [v5 siriEndpointProfile];
  if (v76)
  {
    v77 = v76;
    v78 = [v5 uuid];
    sub_253CCFF38();

    v79 = [v77 uniqueIdentifier];
    sub_253CCFF38();

    sub_25323E2FC(&unk_2864F9368);

    v80 = *MEMORY[0x277CCF2A8];
    v81 = [v77 uniqueIdentifier];
    v82 = v142;
    sub_253CCFF38();

    v83 = sub_253CCFF18();
    v84 = *(v153 + 8);
    v84(v82, v60);
    v85 = hm_assistantIdentifier();

    if (v85)
    {
      v86 = sub_253CD0968();
      v88 = v87;
    }

    else
    {
      v86 = 0;
      v88 = 0;
    }

    v84(v146, v60);
    v89 = v160;
    v28 = v140;
    v90 = &v140[*(v160 + 20)];
    *v90 = v86;
    v90[1] = v88;
    (*(v153 + 32))(v28, v147, v60);
    v91 = &v28[*(v89 + 24)];
    v92 = v150;
    *v91 = v149;
    *(v91 + 1) = v92;
    v28[*(v89 + 28)] = 41;
    v93 = v141;
    sub_25323FC90(v28, v141, type metadata accessor for HomeDeviceEntity);
    sub_2532222E0(v93, v62);

    sub_25328713C(v61, v62);

    sub_25323FB28(v61);
    sub_25323FB28(v93);
  }

  v94 = [v5 lightProfiles];
  sub_253200644(0, &qword_27F5A3808, off_27971A178);
  sub_25323FAB8(&unk_27F5A3C30, &qword_27F5A3808, off_27971A178);
  v95 = sub_253CD0BF8();

  if ((v95 & 0xC000000000000001) != 0)
  {
    v96 = sub_253CD0ED8();
  }

  else
  {
    v96 = *(v95 + 16);
  }

  if (v96)
  {
    v97 = [v5 lightProfiles];
    v98 = sub_253CD0BF8();

    v99 = sub_253237F34(v98, &qword_27F5A3808, off_27971A178);

    if (v99)
    {
      if ([v99 isNaturalLightingSupported])
      {
        v100 = [v5 uuid];
        sub_253CCFF38();

        v101 = [v99 uniqueIdentifier];
        sub_253CCFF38();

        sub_25323E2FC(&unk_2864F9390);

        v102 = *MEMORY[0x277CCF2A8];
        v103 = [v99 uniqueIdentifier];
        v104 = v142;
        sub_253CCFF38();

        v105 = sub_253CCFF18();
        v106 = *(v153 + 8);
        v106(v104, v60);
        v107 = hm_assistantIdentifier();

        if (v107)
        {
          v108 = sub_253CD0968();
          v110 = v109;
        }

        else
        {
          v108 = 0;
          v110 = 0;
        }

        v106(v137, v60);
        v111 = v160;
        v28 = v133;
        v112 = &v133[*(v160 + 20)];
        *v112 = v108;
        v112[1] = v110;
        (*(v153 + 32))(v28, v138, v60);
        v113 = &v28[*(v111 + 24)];
        v114 = v150;
        *v113 = v149;
        *(v113 + 1) = v114;
        v28[*(v111 + 28)] = 17;
        v115 = v134;
        sub_25323FC90(v28, v134, type metadata accessor for HomeDeviceEntity);
        sub_2532222E0(v115, v62);

        sub_25328713C(v61, v62);

        sub_25323FB28(v61);
        sub_25323FB28(v115);
      }

      else
      {
      }
    }
  }

  v116 = [v5 bridge];
  if (v116)
  {

    v117 = [v5 identifiersForBridgedAccessories];
    sub_25323D848(&qword_281531988, MEMORY[0x277CC95F0]);
    v6 = v60;
    v118 = sub_253CD0BF8();

    v119 = 0;
    v45 = 0;
    v5 = (v118 + 56);
    v120 = 1 << *(v118 + 32);
    v121 = -1;
    if (v120 < 64)
    {
      v121 = ~(-1 << v120);
    }

    v50 = v121 & *(v118 + 56);
    v122 = (v120 + 63) >> 6;
    v159 = v153 + 16;
    v160 = v118;
    v158 = v153 + 32;
    v42 = (v153 + 8);
    while (v50)
    {
LABEL_60:
      v124 = v153;
      v125 = v148;
      (*(v153 + 16))(v148, *(v160 + 48) + *(v153 + 72) * (__clz(__rbit64(v50)) | (v119 << 6)), v6);
      v126 = v154;
      (*(v124 + 32))(v154, v125, v6);
      v127 = [v157 accessories];
      sub_253200644(0, &qword_281530EA0, off_279719FE0);
      v128 = sub_253CD0A58();

      MEMORY[0x28223BE20](v129);
      *(&v132 - 2) = v126;
      v28 = sub_253237E20(sub_25323FB08, (&v132 - 4), v128);

      if (v28)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v130 = sub_253238270(v149, v150, v157, v145);
          sub_2532392CC(v130);
        }
      }

      v50 &= v50 - 1;
      v6 = v151;
      (*v42)(v154);
    }

    while (1)
    {
      v123 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        goto LABEL_67;
      }

      if (v123 >= v122)
      {

        return v161;
      }

      v50 = *(v5 + v123);
      ++v119;
      if (v50)
      {
        v119 = v123;
        goto LABEL_60;
      }
    }
  }

  return v161;
}

uint64_t sub_2532392CC(uint64_t a1)
{
  v2 = type metadata accessor for HomeDeviceEntity();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  result = MEMORY[0x28223BE20](v8);
  v13 = &v21 - v12;
  v14 = 0;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  for (i = (v15 + 63) >> 6; v17; result = sub_25323FB28(v10))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_2532222E0(*(a1 + 48) + *(v3 + 72) * (v20 | (v19 << 6)), v13);
    sub_25323FC90(v13, v7, type metadata accessor for HomeDeviceEntity);
    sub_25328713C(v10, v7);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {
    }

    v17 = *(a1 + 56 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_253239490(NSObject *a1, char *a2)
{
  v3 = v2;
  v6 = sub_253CD07E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A37F8, &qword_253D499D8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v33 - v13;
  v15 = type metadata accessor for HomeDeviceEntity();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v3 hasMediaProfile])
  {
    v21 = *MEMORY[0x277D0F1A8];
    sub_253CD0968();
    sub_25323D5A8();
    sub_253CD07D8();
    v22 = v3;
    v23 = sub_253CD07C8();
    v24 = sub_253CD0C98();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&dword_2531F8000, v23, v24, "Unable to create HomeDeviceEntity for %@ as there is no media profile for it", v25, 0xCu);
      sub_253206054(v26, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v26, -1, -1);
      MEMORY[0x259C040E0](v25, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    return MEMORY[0x277D84FA0];
  }

  v20 = [v3 mediaProfile];
  sub_25323B6C4(a1, a2, v3, v14);

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_253206054(v14, &qword_27F5A37F8, &qword_253D499D8);
    return MEMORY[0x277D84FA0];
  }

  sub_25323FC90(v14, v19, type metadata accessor for HomeDeviceEntity);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F0, &qword_253D4B200);
  v29 = *(v16 + 72);
  v30 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_253D48DA0;
  sub_2532222E0(v19, v31 + v30);
  v32 = sub_25323E4B0(v31);
  swift_setDeallocating();
  sub_25323FB28(v31 + v30);
  swift_deallocClassInstance();
  sub_25323FB28(v19);
  return v32;
}

uint64_t sub_25323987C@<X0>(void *a1@<X2>, void *a2@<X4>, uint64_t a3@<X8>)
{
  v4 = v3;
  v197 = a2;
  v7 = sub_253CCFF58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v186 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v196 = &v186 - v14;
  MEMORY[0x28223BE20](v13);
  v199 = &v186 - v15;
  v16 = sub_253CD07E8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v186 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v201 = &v186 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v198 = &v186 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v200 = &v186 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v186 - v28;
  v204 = v4;
  v30 = [v4 name];
  if (!v30)
  {
    goto LABEL_12;
  }

  v192 = a1;
  v193 = v12;
  v194 = v8;
  v31 = v30;
  v32 = sub_253CD0968();
  v34 = v33;

  v35 = HIBYTE(v34) & 0xF;
  v195 = v32;
  v202 = v34;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35 || (v205 = [objc_opt_self() getSharedInstance]) == 0)
  {

LABEL_12:
    v53 = *MEMORY[0x277D0F1A8];
    sub_253CD0968();
    v39 = type metadata accessor for HomeDeviceEntity();
    sub_25323D5A8();
    sub_253CD07D8();
    v54 = v204;
    v55 = sub_253CD07C8();
    v56 = sub_253CD0C98();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412290;
      *(v57 + 4) = v54;
      *v58 = v54;
      v59 = v54;
      _os_log_impl(&dword_2531F8000, v55, v56, "Service does not have a name. %@", v57, 0xCu);
      sub_253206054(v58, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v58, -1, -1);
      MEMORY[0x259C040E0](v57, -1, -1);
    }

    (*(v17 + 8))(v21, v16);
    return (*(*(v39 - 8) + 56))(a3, 1, 1, v39);
  }

  v189 = v7;
  v190 = v16;
  v36 = [v204 type];
  if (!v36)
  {
    sub_253CD0968();
    v36 = sub_253CD0938();
  }

  v37 = [v205 shouldFilterServiceOfType_];

  v191 = v17;
  if (v37)
  {
    v38 = *MEMORY[0x277D0F1A8];
    sub_253CD0968();
    v39 = type metadata accessor for HomeDeviceEntity();
    sub_25323D5A8();
    sub_253CD07D8();
    v40 = v204;
    v41 = v202;

    v42 = sub_253CD07C8();
    v43 = sub_253CD0C78();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      v207[0] = v204;
      *v44 = 136315394;
      v45 = [v40 type];
      v46 = sub_253CD0968();
      v47 = a3;
      v49 = v48;

      v50 = sub_253277BA8(v46, v49, v207);
      a3 = v47;

      *(v44 + 4) = v50;
      *(v44 + 12) = 2080;
      v51 = sub_253277BA8(v195, v41, v207);

      *(v44 + 14) = v51;
      _os_log_impl(&dword_2531F8000, v42, v43, "Siri does not support %s. Ignoring %s.", v44, 0x16u);
      v52 = v204;
      swift_arrayDestroy();
      MEMORY[0x259C040E0](v52, -1, -1);
      MEMORY[0x259C040E0](v44, -1, -1);
    }

    else
    {
    }

    (*(v191 + 8))(v29, v190);
    return (*(*(v39 - 8) + 56))(a3, 1, 1, v39);
  }

  v188 = a3;
  v61 = [v204 characteristics];
  v187 = sub_253200644(0, &qword_27F5A3818, off_27971A070);
  v62 = sub_253CD0A58();

  v207[0] = MEMORY[0x277D84F90];
  if (v62 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_253CD0ED8())
  {
    v64 = 0;
    v17 = v62 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v62 & 0xC000000000000001) != 0)
      {
        v65 = MEMORY[0x259C00F30](v64, v62);
      }

      else
      {
        if (v64 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v65 = *(v62 + 8 * v64 + 32);
      }

      v66 = v65;
      v67 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      v206 = v65;
      if (sub_25323AD74(&v206, v205))
      {
        sub_253CD1008();
        v68 = *(v207[0] + 16);
        sub_253CD1038();
        sub_253CD1048();
        sub_253CD1018();
      }

      else
      {
      }

      ++v64;
      if (v67 == i)
      {
        v69 = v207[0];
        v17 = v191;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v69 = MEMORY[0x277D84F90];
LABEL_35:

  if (v69 < 0 || (v69 & 0x4000000000000000) != 0)
  {
    goto LABEL_94;
  }

  for (j = *(v69 + 16); j; j = sub_253CD0ED8())
  {
    v207[0] = MEMORY[0x277D84FA0];
    if (qword_27F5A2458 != -1)
    {
      swift_once();
    }

    v70 = qword_27F5B7868;
    v71 = [v204 serviceType];
    v72 = sub_253CD0968();
    v74 = v73;

    if (*(v70 + 16))
    {
      v75 = sub_253217D84(v72, v74);
      v77 = v76;

      if (v77)
      {
        sub_253287638(&v206, *(*(v70 + 56) + v75));
      }
    }

    else
    {
    }

    v78 = [v204 serviceType];
    if (!v78)
    {
      sub_253CD0968();
      v78 = sub_253CD0938();
    }

    v79 = [v205 getServiceTypeAlias_];

    if (v79)
    {
      v80 = sub_253CD0968();
      v82 = v81;

      if (*(v70 + 16))
      {
        v83 = sub_253217D84(v80, v82);
        v85 = v84;

        if (v85)
        {
          sub_253287638(&v206, *(*(v70 + 56) + v83));
        }
      }

      else
      {
      }
    }

    v86 = [v204 associatedServiceType];
    if (v86)
    {
      v87 = v86;
      v88 = sub_253CD0968();
      v90 = v89;

      if (*(v70 + 16))
      {
        v91 = sub_253217D84(v88, v90);
        v93 = v92;

        if (v93)
        {
          sub_253287638(&v206, *(*(v70 + 56) + v91));
        }
      }

      else
      {
      }
    }

    v94 = 0;
    v17 = v69 & 0xC000000000000001;
    v95 = MEMORY[0x277D84F90];
LABEL_57:
    v200 = v95;
    v96 = v94;
    while (1)
    {
      if (v17)
      {
        v97 = MEMORY[0x259C00F30](v96, v69);
      }

      else
      {
        if (v96 >= *(v69 + 16))
        {
          goto LABEL_93;
        }

        v97 = *(v69 + 8 * v96 + 32);
      }

      v98 = v97;
      v94 = v96 + 1;
      if (__OFADD__(v96, 1))
      {
        break;
      }

      if (qword_27F5A2448 != -1)
      {
        swift_once();
      }

      v99 = qword_27F5B7858;
      v100 = [v98 type];
      v101 = sub_253CD0968();
      v103 = v102;

      if (*(v99 + 16))
      {
        v104 = sub_253217D84(v101, v103);
        v106 = v105;

        if (v106)
        {
          v107 = *(*(v99 + 56) + v104);

          v95 = v200;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v95 = sub_253283844(0, *(v95 + 2) + 1, 1, v95);
          }

          v110 = *(v95 + 2);
          v109 = *(v95 + 3);
          if (v110 >= v109 >> 1)
          {
            v95 = sub_253283844((v109 > 1), v110 + 1, 1, v95);
          }

          *(v95 + 2) = v110 + 1;
          v95[v110 + 32] = v107;
          if (v94 == j)
          {
LABEL_77:
            v111 = v207[0];

            v113 = sub_253238068(v112);

            if (v113 == 43)
            {

              v114 = v201;
              goto LABEL_83;
            }

            v114 = v201;
            if (*(v95 + 2))
            {
              LODWORD(v201) = v113;
              j = v111;

              sub_25328EDFC(v95);

              v115 = *MEMORY[0x277D0F1A8];
              sub_253CD0968();
              v116 = type metadata accessor for HomeDeviceEntity();
              sub_25323D5A8();
              v117 = v198;
              sub_253CD07D8();
              v118 = v204;
              v119 = v197;

              v120 = sub_253CD07C8();
              v121 = sub_253CD0C88();

              if (os_log_type_enabled(v120, v121))
              {
                v122 = swift_slowAlloc();
                v123 = swift_slowAlloc();
                v200 = swift_slowAlloc();
                v206 = v200;
                *v122 = 138413314;
                v124 = [v119 category];
                *(v122 + 4) = v124;
                *v123 = v124;
                *(v122 + 12) = 2080;
                sub_25323FB90();
                v204 = v119;
                LODWORD(v197) = v121;

                v125 = sub_253CD0C08();
                v127 = v126;

                v128 = sub_253277BA8(v125, v127, &v206);

                *(v122 + 14) = v128;
                *(v122 + 22) = 2080;
                sub_25323FBE4();
                v129 = sub_253CD0C08();
                v131 = v130;

                v132 = sub_253277BA8(v129, v131, &v206);

                *(v122 + 24) = v132;
                *(v122 + 32) = 2080;
                v133 = [v118 &selRef_shouldEncodeNFCReaderKey];
                v134 = v199;
                sub_253CCFF38();

                sub_25323D848(&qword_281531980, MEMORY[0x277CC95F0]);
                v135 = v189;
                v136 = sub_253CD10E8();
                v138 = v137;
                (*(v194 + 8))(v134, v135);
                v139 = sub_253277BA8(v136, v138, &v206);

                *(v122 + 34) = v139;
                v119 = v204;
                *(v122 + 42) = 2112;
                *(v122 + 44) = v118;
                v123[1] = v118;
                v140 = v118;
                _os_log_impl(&dword_2531F8000, v120, v197, "Found %@, %s and %s for %s, %@", v122, 0x34u);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AC8, &qword_253D48890);
                swift_arrayDestroy();
                MEMORY[0x259C040E0](v123, -1, -1);
                v141 = v200;
                swift_arrayDestroy();
                MEMORY[0x259C040E0](v141, -1, -1);
                MEMORY[0x259C040E0](v122, -1, -1);

                (*(v191 + 8))(v198, v190);
              }

              else
              {

                (*(v191 + 8))(v117, v190);
              }

              v165 = v188;
              v166 = v196;
              v167 = [v119 uuid];
              sub_253CCFF38();

              v168 = [v118 spiClientIdentifier];
              sub_253CCFF38();

              v169 = [v118 urlString];
              v170 = v202;
              if (v169)
              {
                v171 = v169;
                v172 = sub_253CD0968();
                v174 = v173;
              }

              else
              {
                v172 = 0;
                v174 = 0;
              }

              v175 = sub_25323B19C(v192);
              sub_25328EE98(v175);

              v176 = v194;
              v177 = v189;
              (*(v194 + 8))(v166, v189);
              v178 = (v165 + v116[5]);
              *v178 = v172;
              v178[1] = v174;
              (*(v176 + 32))(v165, v193, v177);
              v179 = (v165 + v116[6]);
              *v179 = v195;
              v179[1] = v170;
              *(v165 + v116[7]) = v201;
              (*(*(v116 - 1) + 56))(v165, 0, 1, v116);
            }

            else
            {

LABEL_83:

              v142 = *MEMORY[0x277D0F1A8];
              sub_253CD0968();
              v143 = type metadata accessor for HomeDeviceEntity();
              sub_25323D5A8();
              sub_253CD07D8();
              v144 = v204;

              v145 = sub_253CD07C8();
              v146 = sub_253CD0C98();

              if (!os_log_type_enabled(v145, v146))
              {

                (*(v191 + 8))(v114, v190);
                (*(*(v143 - 8) + 56))(v188, 1, 1, v143);
              }

              v147 = swift_slowAlloc();
              v204 = swift_slowAlloc();
              v206 = v204;
              *v147 = 136315650;
              v148 = [v144 spiClientIdentifier];
              v149 = v199;
              sub_253CCFF38();

              sub_25323D848(&qword_281531980, MEMORY[0x277CC95F0]);
              j = v111;
              v150 = v189;
              v151 = sub_253CD10E8();
              v153 = v152;
              (*(v194 + 8))(v149, v150);
              v154 = sub_253277BA8(v151, v153, &v206);

              *(v147 + 4) = v154;
              *(v147 + 12) = 2080;
              v155 = [v144 serviceType];
              v156 = sub_253CD0968();
              v158 = v157;

              v159 = sub_253277BA8(v156, v158, &v206);

              *(v147 + 14) = v159;
              *(v147 + 22) = 2080;
              v160 = MEMORY[0x259C009D0](v69, v187);
              v162 = v161;

              v163 = sub_253277BA8(v160, v162, &v206);

              *(v147 + 24) = v163;
              _os_log_impl(&dword_2531F8000, v145, v146, "Could not figure out device type or capabilities for %s, %s, %s", v147, 0x20u);
              v164 = v204;
              swift_arrayDestroy();
              MEMORY[0x259C040E0](v164, -1, -1);
              MEMORY[0x259C040E0](v147, -1, -1);

              (*(v191 + 8))(v201, v190);
              (*(*(v143 - 8) + 56))(v188, 1, 1, v143);
            }
          }

          goto LABEL_57;
        }
      }

      else
      {
      }

      ++v96;
      if (v94 == j)
      {
        v95 = v200;
        goto LABEL_77;
      }
    }

    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    ;
  }

  v180 = *MEMORY[0x277D0F1A8];
  sub_253CD0968();
  v181 = type metadata accessor for HomeDeviceEntity();
  sub_25323D5A8();
  v182 = v200;
  sub_253CD07D8();
  v183 = sub_253CD07C8();
  v184 = sub_253CD0C88();
  if (os_log_type_enabled(v183, v184))
  {
    v185 = swift_slowAlloc();
    *v185 = 0;
    _os_log_impl(&dword_2531F8000, v183, v184, "Only consider the services that have one or more Siri controllable attributes", v185, 2u);
    MEMORY[0x259C040E0](v185, -1, -1);
  }

  (*(v17 + 8))(v182, v190);
  return (*(*(v181 - 8) + 56))(v188, 1, 1, v181);
}

uint64_t sub_25323AD74(id *a1, void *a2)
{
  v4 = sub_253CD07E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  v12 = *a1;
  v13 = [*a1 type];
  if (!v13)
  {
    sub_253CD0968();
    v13 = sub_253CD0938();
  }

  v14 = sub_253CD0968();
  v16 = v15;
  v17 = [a2 shouldFilterCharacteristicOfTypeFromApp_];

  if (v17)
  {

    v18 = *MEMORY[0x277D0F1A8];
    sub_253CD0968();
    type metadata accessor for HomeDeviceEntity();
    sub_25323D5A8();
    sub_253CD07D8();
    v19 = v12;
    v20 = sub_253CD07C8();
    v21 = sub_253CD0C88();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&dword_2531F8000, v20, v21, "Skipping %@ as it is not controllable by Siri", v22, 0xCu);
      sub_253206054(v23, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v23, -1, -1);
      MEMORY[0x259C040E0](v22, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
  }

  else
  {
    if (qword_27F5A2448 != -1)
    {
      swift_once();
    }

    if (*(qword_27F5B7858 + 16))
    {
      sub_253217D84(v14, v16);
      if (v25)
      {

        return 1;
      }
    }

    v27 = *MEMORY[0x277D0F1A8];
    sub_253CD0968();
    type metadata accessor for HomeDeviceEntity();
    sub_25323D5A8();
    sub_253CD07D8();

    v28 = sub_253CD07C8();
    v29 = sub_253CD0C88();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v30 = 136315138;
      v32 = sub_253277BA8(v14, v16, &v34);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_2531F8000, v28, v29, "Did not find mapping of %s to a HomeCapability", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x259C040E0](v31, -1, -1);
      MEMORY[0x259C040E0](v30, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v9, v4);
  }

  return 0;
}

void *sub_25323B19C(void *a1)
{
  v58 = sub_253CCFF58();
  v2 = *(v58 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v58);
  v57 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HomeGroupEntity();
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v49 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v48 = &v48 - v10;
  MEMORY[0x28223BE20](v9);
  v56 = &v48 - v11;
  v12 = [a1 serviceGroups];
  sub_253200644(0, &qword_281530E68, off_27971A230);
  v13 = sub_253CD0A58();

  if (v13 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_253CD0ED8())
  {
    v15 = 0;
    v54 = v13 & 0xFFFFFFFFFFFFFF8;
    v55 = v13 & 0xC000000000000001;
    v52 = v2 + 1;
    v60 = MEMORY[0x277D84F90];
    v53 = i;
    while (1)
    {
      if (v55)
      {
        v17 = MEMORY[0x259C00F30](v15, v13);
      }

      else
      {
        if (v15 >= *(v54 + 16))
        {
          goto LABEL_21;
        }

        v17 = *(v13 + 8 * v15 + 32);
      }

      v2 = v17;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v19 = v13;
      v20 = [v17 serviceUUIDs];
      v21 = sub_253CD0A58();

      v22 = [v59 uuid];
      v23 = v57;
      sub_253CCFF38();

      v24 = sub_253CCFF08();
      v26 = v25;
      v27 = (*v52)(v23, v58);
      v61[0] = v24;
      v61[1] = v26;
      MEMORY[0x28223BE20](v27);
      *(&v48 - 2) = v61;
      LOBYTE(v24) = sub_253237D74(sub_25323FC38, (&v48 - 4), v21);

      if (v24)
      {
        v28 = [v2 urlString];
        if (v28)
        {
          v29 = v28;
          v30 = sub_253CD0968();
          v32 = v31;
        }

        else
        {
          v30 = 0;
          v32 = 0;
        }

        v33 = v49;
        *v49 = v30;
        v33[1] = v32;
        v34 = [v2 spiClientIdentifier];
        v35 = v51;
        v36 = v33 + *(v51 + 20);
        sub_253CCFF38();

        v37 = [v2 name];
        v38 = sub_253CD0968();
        v40 = v39;

        v41 = (v33 + *(v35 + 24));
        *v41 = v38;
        v41[1] = v40;
        v42 = v33;
        v43 = v48;
        sub_25323FC90(v42, v48, type metadata accessor for HomeGroupEntity);
        sub_25323FC90(v43, v56, type metadata accessor for HomeGroupEntity);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_25328381C(0, v60[2] + 1, 1, v60);
        }

        v13 = v19;
        v45 = v60[2];
        v44 = v60[3];
        v2 = (v45 + 1);
        v16 = v53;
        if (v45 >= v44 >> 1)
        {
          v60 = sub_25328381C(v44 > 1, v45 + 1, 1, v60);
        }

        v46 = v60;
        v60[2] = v2;
        sub_25323FC90(v56, v46 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v45, type metadata accessor for HomeGroupEntity);
      }

      else
      {

        v13 = v19;
        v16 = v53;
      }

      ++v15;
      if (v18 == v16)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v60 = MEMORY[0x277D84F90];
LABEL_24:

  return v60;
}

uint64_t sub_25323B6C4@<X0>(NSObject *a1@<X0>, char *a2@<X1>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v5 = v4;
  v108 = a1;
  v109 = a2;
  v118 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_253CD07E8();
  v8 = *(v7 - 8);
  v116 = v7;
  v117 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v114 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v105 = &v104 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = (&v104 - v14);
  v16 = sub_253CCFF58();
  v111 = *(v16 - 8);
  v112 = v16;
  v17 = *(v111 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v107 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v104 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v104 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A37F8, &qword_253D499D8);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v104 - v27;
  v29 = [a3 category];
  v30 = [v29 categoryType];

  v31 = sub_253CD0968();
  v33 = v32;

  v34 = [v5 uniqueIdentifier];
  sub_253CCFF38();

  v35 = [a3 spiClientIdentifier];
  v113 = v22;
  sub_253CCFF38();

  v36 = [v5 urlString];
  if (v36)
  {
    v37 = v36;
    v106 = sub_253CD0968();
    v39 = v38;
  }

  else
  {
    v106 = 0;
    v39 = 0;
  }

  if (qword_27F5A2450 != -1)
  {
    swift_once();
  }

  v115 = v28;
  v40 = qword_27F5B7860;
  if (!*(qword_27F5B7860 + 16) || (v41 = sub_253217D84(v31, v33), (v42 & 1) == 0))
  {

    v47 = *MEMORY[0x277D0F1A8];
    sub_253CD0968();
    v48 = type metadata accessor for HomeDeviceEntity();
    sub_25323D5A8();
    sub_253CD07D8();

    v49 = sub_253CD07C8();
    v50 = sub_253CD0C98();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v119 = v52;
      *v51 = 136315138;
      v53 = sub_253277BA8(v31, v33, &v119);
      v108 = v15;
      v109 = v24;
      v55 = v111;
      v54 = v112;
      v56 = v5;
      v57 = v53;

      *(v51 + 4) = v57;
      v5 = v56;
      _os_log_impl(&dword_2531F8000, v49, v50, "Unable to map accessory category %s to a device type.", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      v58 = v116;
      MEMORY[0x259C040E0](v52, -1, -1);
      MEMORY[0x259C040E0](v51, -1, -1);

      (*(v117 + 8))(v108, v58);
LABEL_14:
      v59 = *(v55 + 8);
      v59(v113, v54);
      v59(v109, v54);
LABEL_17:
      v62 = v115;
      (*(*(v48 - 1) + 56))(v115, 1, 1, v48);
      goto LABEL_21;
    }

    (*(v117 + 8))(v15, v116);
LABEL_16:
    v60 = v112;
    v61 = *(v111 + 8);
    v61(v113, v112);
    v61(v24, v60);
    goto LABEL_17;
  }

  v43 = *(*(v40 + 56) + v41);
  v44 = *MEMORY[0x277CCE8B0];
  if (v31 != sub_253CD0968() || v33 != v45)
  {
    v63 = sub_253CD1118();

    if (v63)
    {
      v46 = &unk_2864F9228;
      goto LABEL_20;
    }

    v81 = *MEMORY[0x277CCE870];
    if (v31 == sub_253CD0968() && v33 == v82)
    {
      v46 = &unk_2864F9250;
      goto LABEL_11;
    }

    v83 = sub_253CD1118();

    if (v83)
    {
      v46 = &unk_2864F9250;
      goto LABEL_20;
    }

    v84 = *MEMORY[0x277CCE860];
    if (v31 == sub_253CD0968() && v33 == v85)
    {
LABEL_34:
      v46 = &unk_2864F9278;
      goto LABEL_11;
    }

    v86 = sub_253CD1118();

    if (v86)
    {
      goto LABEL_36;
    }

    v87 = *MEMORY[0x277CCE900];
    if (v31 == sub_253CD0968() && v33 == v88)
    {
      goto LABEL_34;
    }

    v89 = sub_253CD1118();

    if (v89)
    {
LABEL_36:
      v46 = &unk_2864F9278;
      goto LABEL_20;
    }

    v90 = *MEMORY[0x277CCE8B8];
    if (v31 == sub_253CD0968() && v33 == v91)
    {
      v46 = &unk_2864F92A0;
      goto LABEL_11;
    }

    v92 = sub_253CD1118();

    if (v92)
    {
      v46 = &unk_2864F92A0;
      goto LABEL_20;
    }

    v93 = *MEMORY[0x277D0F1A8];
    sub_253CD0968();
    v48 = type metadata accessor for HomeDeviceEntity();
    sub_25323D5A8();
    v94 = v105;
    sub_253CD07D8();

    v95 = sub_253CD07C8();
    v96 = sub_253CD0C98();

    v108 = v95;
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v119 = v98;
      *v97 = 136315138;
      v99 = sub_253277BA8(v31, v33, &v119);
      v109 = v24;
      v55 = v111;
      v54 = v112;
      v100 = v5;
      v101 = v99;

      *(v97 + 4) = v101;
      v5 = v100;
      v102 = v108;
      _os_log_impl(&dword_2531F8000, v108, v96, "Please add support for %s to HomeDeviceEntity.", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v98);
      v103 = v116;
      MEMORY[0x259C040E0](v98, -1, -1);
      MEMORY[0x259C040E0](v97, -1, -1);

      (*(v117 + 8))(v105, v103);
      goto LABEL_14;
    }

    (*(v117 + 8))(v94, v116);
    goto LABEL_16;
  }

  v46 = &unk_2864F9228;
LABEL_11:

LABEL_20:

  sub_25323E2FC(v46);

  v65 = v111;
  v64 = v112;
  v66 = v107;
  (*(v111 + 16))(v107, v24, v112);
  v67 = *(v65 + 8);
  v67(v113, v64);
  v67(v24, v64);
  v48 = type metadata accessor for HomeDeviceEntity();
  v68 = v115;
  v69 = &v115[v48[5]];
  *v69 = v106;
  v69[1] = v39;
  (*(v65 + 32))(v68, v66, v64);
  v70 = (v68 + v48[6]);
  v71 = v109;
  *v70 = v108;
  v70[1] = v71;
  *(v68 + v48[7]) = v43;
  v62 = v68;
  (*(*(v48 - 1) + 56))(v68, 0, 1, v48);

LABEL_21:
  type metadata accessor for HomeDeviceEntity();
  v72 = *(v48 - 1);
  if ((*(v72 + 48))(v62, 1, v48) == 1)
  {
    sub_253206054(v62, &qword_27F5A37F8, &qword_253D499D8);
    sub_253CD0C48();
    v73 = v5;
    v74 = sub_253CD07C8();
    v75 = sub_253CD0C98();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v76 = 138412290;
      *(v76 + 4) = v73;
      *v77 = v73;
      v78 = v73;
      _os_log_impl(&dword_2531F8000, v74, v75, "Unable to create HomeDeviceEntity for %@", v76, 0xCu);
      sub_253206054(v77, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v77, -1, -1);
      MEMORY[0x259C040E0](v76, -1, -1);
    }

    (*(v117 + 8))(v114, v116);
    v79 = 1;
  }

  else
  {
    sub_25323FC90(v62, v118, type metadata accessor for HomeDeviceEntity);
    v79 = 0;
  }

  return (*(v72 + 56))(v118, v79, 1, v48);
}

uint64_t sub_25323C290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v5 = v4;
  v97 = a1;
  v98 = a2;
  v107 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_253CD07E8();
  v105 = *(v7 - 8);
  v8 = *(v105 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v104 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v94[0] = v94 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v94 - v13;
  v15 = sub_253CCFF58();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v96 = v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v94 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v94 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A37F8, &qword_253D499D8);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v103 = v94 - v27;
  v94[1] = *MEMORY[0x277CCE8B8];
  v106 = sub_253CD0968();
  v29 = v28;
  v30 = [v5 uniqueIdentifier];
  v102 = v24;
  v31 = v22;
  sub_253CCFF38();

  v32 = [a3 spiClientIdentifier];
  sub_253CCFF38();

  v101 = v5;
  v33 = [v5 urlString];
  if (v33)
  {
    v34 = v33;
    v95 = sub_253CD0968();
    v36 = v35;
  }

  else
  {
    v95 = 0;
    v36 = 0;
  }

  v37 = v29;
  v38 = v106;
  if (qword_27F5A2450 != -1)
  {
    swift_once();
  }

  v39 = qword_27F5B7860;
  if (!*(qword_27F5B7860 + 16) || (v40 = sub_253217D84(v38, v29), (v41 & 1) == 0))
  {

    v46 = *MEMORY[0x277D0F1A8];
    sub_253CD0968();
    v47 = type metadata accessor for HomeDeviceEntity();
    sub_25323D5A8();
    sub_253CD07D8();

    v48 = sub_253CD07C8();
    v49 = sub_253CD0C98();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v99 = v7;
      v52 = v51;
      v108 = v51;
      *v50 = 136315138;
      v53 = sub_253277BA8(v106, v37, &v108);
      v106 = v31;
      v54 = v53;

      *(v50 + 4) = v54;
      _os_log_impl(&dword_2531F8000, v48, v49, "Unable to map accessory category %s to a device type.", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      v55 = v52;
      v7 = v99;
      MEMORY[0x259C040E0](v55, -1, -1);
      MEMORY[0x259C040E0](v50, -1, -1);

      (*(v105 + 8))(v14, v7);
      v56 = *(v16 + 8);
      v56(v106, v15);
LABEL_16:
      v56(v102, v15);
      v57 = v103;
      (*(*(v47 - 1) + 56))(v103, 1, 1, v47);
      goto LABEL_20;
    }

    (*(v105 + 8))(v14, v7);
LABEL_15:
    v56 = *(v16 + 8);
    v56(v31, v15);
    goto LABEL_16;
  }

  v99 = v7;
  v42 = *(*(v39 + 56) + v40);
  v43 = *MEMORY[0x277CCE8B0];
  if (v38 != sub_253CD0968() || v29 != v44)
  {
    v58 = sub_253CD1118();

    if (v58)
    {
      v45 = &unk_2864F92C8;
      goto LABEL_19;
    }

    v76 = *MEMORY[0x277CCE870];
    if (v38 == sub_253CD0968() && v29 == v77)
    {
      v45 = &unk_2864F92F0;
      goto LABEL_11;
    }

    v78 = sub_253CD1118();

    if (v78)
    {
      v45 = &unk_2864F92F0;
      goto LABEL_19;
    }

    v79 = *MEMORY[0x277CCE860];
    if (v38 == sub_253CD0968() && v29 == v80)
    {
LABEL_33:
      v45 = &unk_2864F9318;
      goto LABEL_11;
    }

    v81 = sub_253CD1118();

    if (v81)
    {
      goto LABEL_35;
    }

    v82 = *MEMORY[0x277CCE900];
    if (v38 == sub_253CD0968() && v29 == v83)
    {
      goto LABEL_33;
    }

    v84 = sub_253CD1118();

    if (v84)
    {
LABEL_35:
      v45 = &unk_2864F9318;
      goto LABEL_19;
    }

    if (v38 == sub_253CD0968() && v29 == v85)
    {
      v45 = &unk_2864F9340;
      goto LABEL_11;
    }

    v86 = sub_253CD1118();

    if (v86)
    {
      v45 = &unk_2864F9340;
      goto LABEL_19;
    }

    v87 = *MEMORY[0x277D0F1A8];
    sub_253CD0968();
    v47 = type metadata accessor for HomeDeviceEntity();
    sub_25323D5A8();
    v88 = v94[0];
    sub_253CD07D8();

    v89 = sub_253CD07C8();
    v90 = sub_253CD0C98();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v108 = v92;
      *v91 = 136315138;
      v93 = sub_253277BA8(v106, v37, &v108);

      *(v91 + 4) = v93;
      _os_log_impl(&dword_2531F8000, v89, v90, "Please add support for %s to HomeDeviceEntity.", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v92);
      MEMORY[0x259C040E0](v92, -1, -1);
      MEMORY[0x259C040E0](v91, -1, -1);
    }

    else
    {
    }

    v7 = v99;
    (*(v105 + 8))(v88, v99);
    goto LABEL_15;
  }

  v45 = &unk_2864F92C8;
LABEL_11:

LABEL_19:

  sub_25323E2FC(v45);

  v59 = v96;
  v60 = v102;
  (*(v16 + 16))(v96, v102, v15);
  v61 = *(v16 + 8);
  v61(v31, v15);
  v61(v60, v15);
  v47 = type metadata accessor for HomeDeviceEntity();
  v57 = v103;
  v62 = &v103[v47[5]];
  *v62 = v95;
  v62[1] = v36;
  (*(v16 + 32))(v57, v59, v15);
  v63 = (v57 + v47[6]);
  v64 = v98;
  *v63 = v97;
  v63[1] = v64;
  *(v57 + v47[7]) = v42;
  (*(*(v47 - 1) + 56))(v57, 0, 1, v47);

  v7 = v99;
LABEL_20:
  type metadata accessor for HomeDeviceEntity();
  v65 = *(v47 - 1);
  if ((*(v65 + 48))(v57, 1, v47) == 1)
  {
    sub_253206054(v57, &qword_27F5A37F8, &qword_253D499D8);
    sub_253CD0C48();
    v66 = v101;
    v67 = sub_253CD07C8();
    v68 = sub_253CD0C98();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = v7;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 138412290;
      *(v70 + 4) = v66;
      *v71 = v66;
      v72 = v66;
      _os_log_impl(&dword_2531F8000, v67, v68, "Unable to create HomeDeviceEntity for %@", v70, 0xCu);
      sub_253206054(v71, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v71, -1, -1);
      v73 = v70;
      v7 = v69;
      MEMORY[0x259C040E0](v73, -1, -1);
    }

    (*(v105 + 8))(v104, v7);
    v74 = 1;
  }

  else
  {
    sub_25323FC90(v57, v107, type metadata accessor for HomeDeviceEntity);
    v74 = 0;
  }

  return (*(v65 + 56))(v107, v74, 1, v47);
}

uint64_t sub_25323CDBC(id *a1)
{
  v2 = sub_253CCFF58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uuid];
  sub_253CCFF38();

  v8 = sub_253CCFF28();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

char *sub_25323CEC8()
{
  v1 = [v0 accessoryProfiles];
  if (v1)
  {
    v2 = v1;
    sub_253200644(0, &qword_27F5A2AF8, off_279719FE8);
    v3 = sub_253CD0A58();

    if (v3 >> 62)
    {
LABEL_23:
      v4 = sub_253CD0ED8();
      if (v4)
      {
LABEL_4:
        v5 = 0;
        v6 = MEMORY[0x277D84F90];
        v7 = &selRef_localizedMessageForSignificantEvents_cameraAccessory_;
        do
        {
          v8 = v5;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x259C00F30](v8, v3);
            }

            else
            {
              if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v9 = *(v3 + 8 * v8 + 32);
            }

            v10 = v9;
            v5 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            objc_opt_self();
            v11 = swift_dynamicCastObjCClass();
            if (v11)
            {
              break;
            }

            ++v8;
            if (v5 == v4)
            {
              goto LABEL_25;
            }
          }

          v12 = [v11 v7[369]];
          v13 = sub_253CD0968();
          v19 = v14;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_2532836C0(0, *(v6 + 2) + 1, 1, v6);
          }

          v16 = *(v6 + 2);
          v15 = *(v6 + 3);
          if (v16 >= v15 >> 1)
          {
            v6 = sub_2532836C0((v15 > 1), v16 + 1, 1, v6);
          }

          *(v6 + 2) = v16 + 1;
          v17 = &v6[16 * v16];
          *(v17 + 4) = v13;
          *(v17 + 5) = v19;
          v7 = &selRef_localizedMessageForSignificantEvents_cameraAccessory_;
        }

        while (v5 != v4);
        goto LABEL_25;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    v6 = MEMORY[0x277D84F90];
LABEL_25:

    return v6;
  }

  return MEMORY[0x277D84F90];
}

id sub_25323D0CC(void *a1, void *a2)
{
  v4 = sub_253CCFF58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v28 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  result = [a2 mediaGroupsAggregateConsumer];
  if (result)
  {
    v16 = result;
    v17 = [a1 audioGroupIdentifier];
    if (v17)
    {
      v18 = v17;
      sub_253CCFF38();

      (*(v5 + 32))(v14, v12, v4);
      v19 = [a1 parentIdentifier];
      sub_253CCFF38();

      LOBYTE(v19) = sub_253CCFF28();
      v20 = *(v5 + 8);
      v20(v9, v4);
      if ((v19 & 1) == 0)
      {
        v21 = sub_253CCFF18();
        v22 = [v16 groupWithIdentifier_];

        if (v22)
        {
          v23 = sub_25323D3CC(v22, a2);

          v20(v14, v4);
          return v23;
        }

        v24 = sub_253CCFF18();
        v25 = [v16 destinationControllerDataWithIdentifier_];

        if (v25)
        {
          v26 = [v25 identifier];
          sub_253CCFF38();

          v27 = sub_253CCFF08();
          v20(v9, v4);
          v20(v14, v4);
          return v27;
        }
      }

      v20(v14, v4);
    }

    return 0;
  }

  return result;
}

uint64_t sub_25323D3CC(void *a1, void *a2)
{
  v4 = sub_253CCFF58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 mediaGroupsAggregateConsumer];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = v9;
  v11 = [a1 identifier];
  sub_253CCFF38();

  v12 = sub_253CCFF18();
  (*(v5 + 8))(v8, v4);
  v13 = [v10 destinationWithParentIdentifier_];

  if (!v13)
  {

LABEL_6:
    v17 = [a1 identifier];
    sub_253CCFF38();

    v14 = sub_253CCFF08();
    (*(v5 + 8))(v8, v4);
    return v14;
  }

  v14 = sub_25323D0CC(v13, a2);
  v16 = v15;

  if (!v16)
  {
    goto LABEL_6;
  }

  return v14;
}

uint64_t sub_25323D5A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A37F0, &unk_253D499C8);
  v0 = sub_253CD0978();
  MEMORY[0x259C00940](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_25323D620()
{
  sub_253CD11C8();
  sub_253CCFF58();
  sub_25323D848(&qword_281531988, MEMORY[0x277CC95F0]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t sub_25323D6A8()
{
  sub_253CCFF58();
  sub_25323D848(&qword_281531988, MEMORY[0x277CC95F0]);

  return sub_253CD0908();
}

uint64_t sub_25323D72C()
{
  sub_253CD11C8();
  sub_253CCFF58();
  sub_25323D848(&qword_281531988, MEMORY[0x277CC95F0]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t type metadata accessor for HomeDeviceEntity()
{
  result = qword_27F5A3838;
  if (!qword_27F5A3838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25323D848(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_25323D890()
{
  v1 = v0;
  v80[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for HomeDeviceEntity();
  v3 = *(*(v2 - 1) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v77 - v7;
  v9 = sub_253CD07E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v77 - v15;
  if (qword_27F5A2460 != -1)
  {
    swift_once();
  }

  v17 = qword_27F5B7870;
  if (*(qword_27F5B7870 + 16) && (v18 = sub_253217F20(*(v1 + v2[7])), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 4 * v18);
    v21 = (v1 + v2[6]);
    v22 = *v21;
    v23 = v21[1];
    v24 = objc_allocWithZone(MEMORY[0x277D21000]);
    v25 = sub_253CD0938();
    v80[0] = 0;
    v26 = [v24 initWithName:v25 deviceType:v20 error:v80];

    v27 = v80[0];
    if (v26)
    {
      v28 = objc_allocWithZone(MEMORY[0x277D20FE0]);
      v80[0] = 0;
      v29 = v26;
      v30 = v27;
      v31 = [v28 initWithEntity:v29 entityType:4 error:v80];
      if (v31)
      {
        v78 = v31;
        v79 = v10;
        v32 = v80[0];

        v33 = sub_253CCFF08();
        v77 = v29;
        v34 = v33;
        v36 = v35;
        v37 = (v1 + v2[5]);
        v38 = *v37;
        v39 = v37[1];
        v40 = objc_allocWithZone(MEMORY[0x277D20FE8]);

        v69 = sub_253242358(v34, v36, v38, v39);
        v70 = v77;
        v71 = objc_allocWithZone(MEMORY[0x277CF94C8]);
        v80[0] = 0;
        v72 = v78;
        v73 = [v71 initWithContent:v78 metaContent:v69 error:v80];
        v74 = v80[0];
        if (v73)
        {

          result = v73;
          goto LABEL_13;
        }

        v75 = v74;
        v76 = v72;
        v53 = sub_253CCFE18();

        swift_willThrow();
        v10 = v79;
      }

      else
      {
        v54 = v80[0];
        v53 = sub_253CCFE18();

        swift_willThrow();
      }
    }

    else
    {
      v52 = v80[0];
      v53 = sub_253CCFE18();

      swift_willThrow();
    }

    v55 = *MEMORY[0x277D0F1A8];
    sub_253CD0968();
    sub_25323D5A8();
    sub_253CD07D8();
    sub_2532222E0(v1, v6);
    v56 = v53;
    v57 = sub_253CD07C8();
    v58 = sub_253CD0C98();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v79 = v10;
      v61 = v60;
      v62 = swift_slowAlloc();
      v80[0] = v62;
      *v59 = 136315394;
      v63 = sub_2532380E0();
      v78 = v9;
      v65 = v64;
      sub_25323FB28(v6);
      v66 = sub_253277BA8(v63, v65, v80);

      *(v59 + 4) = v66;
      *(v59 + 12) = 2112;
      v67 = v53;
      v68 = _swift_stdlib_bridgeErrorToNSError();
      *(v59 + 14) = v68;
      *v61 = v68;
      _os_log_impl(&dword_2531F8000, v57, v58, "Failed to create CCHomeService for %s: %@", v59, 0x16u);
      sub_253206054(v61, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v61, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x259C040E0](v62, -1, -1);
      MEMORY[0x259C040E0](v59, -1, -1);

      (*(v79 + 8))(v14, v78);
    }

    else
    {

      sub_25323FB28(v6);
      (*(v10 + 8))(v14, v9);
    }
  }

  else
  {
    v41 = *MEMORY[0x277D0F1A8];
    sub_253CD0968();
    sub_25323D5A8();
    sub_253CD07D8();
    sub_2532222E0(v1, v8);
    v42 = sub_253CD07C8();
    v43 = sub_253CD0C98();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v80[0] = v45;
      *v44 = 136315138;
      v46 = sub_2532380E0();
      v48 = v47;
      sub_25323FB28(v8);
      v49 = sub_253277BA8(v46, v48, v80);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_2531F8000, v42, v43, "Failed to create CCHomeService for %s as there is no cascade device type for it", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x259C040E0](v45, -1, -1);
      MEMORY[0x259C040E0](v44, -1, -1);
    }

    else
    {

      sub_25323FB28(v8);
    }

    (*(v10 + 8))(v16, v9);
  }

  result = 0;
LABEL_13:
  v51 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25323DF88(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
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

      MEMORY[0x259C00E60](a1, a2, v11);
      sub_253200644(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_253200644(0, a5, a6);
    if (sub_253CD0EB8() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_253CD0EC8();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_253CD0D78();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_253CD0D88();

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

uint64_t sub_25323E1A0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_25323E1F0(uint64_t a1)
{
  v2 = type metadata accessor for HomeDeviceEntity();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4);
  v10 = &v14 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    do
    {
      sub_2532222E0(v12, v6);
      sub_25328713C(v10, v6);
      result = sub_25323FB28(v10);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_25323E2FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3810, &unk_253D499E0);
    v3 = sub_253CD0F98();
    v4 = 0;
    v5 = v3 + 56;
    v21 = v1;
    v22 = a1 + 32;
    while (2)
    {
      v6 = *(v22 + v4);
      v7 = *(v3 + 40);
      sub_253CD11C8();
      sub_253243DB4(v6);
      sub_253CD09A8();

      result = sub_253CD11E8();
      v9 = ~(-1 << *(v3 + 32));
      for (i = result & v9; ; i = (i + 1) & v9)
      {
        v11 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v11) == 0)
        {
          break;
        }

        v12 = sub_253243DB4(*(*(v3 + 48) + i));
        v14 = v13;
        if (v12 == sub_253243DB4(v6) && v14 == v15)
        {

          goto LABEL_4;
        }

        v17 = sub_253CD1118();

        if (v17)
        {
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v11;
      *(*(v3 + 48) + i) = v6;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v21)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_25323E4B0(uint64_t a1)
{
  v2 = type metadata accessor for HomeDeviceEntity();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3830, &unk_253D499F0);
    v11 = sub_253CD0F98();
    v12 = 0;
    v13 = v11 + 56;
    v27 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v28 = v10;
    v14 = *(v3 + 72);
    while (2)
    {
      sub_2532222E0(v27 + v14 * v12, v9);
      v16 = *(v11 + 40);
      sub_253CD11C8();
      sub_253CCFF58();
      sub_25323D848(&qword_281531988, MEMORY[0x277CC95F0]);
      sub_253CD0908();
      v17 = sub_253CD11E8();
      v18 = ~(-1 << *(v11 + 32));
      for (i = v17 & v18; ; i = (i + 1) & v18)
      {
        v20 = *(v13 + 8 * (i >> 6));
        if (((1 << i) & v20) == 0)
        {
          break;
        }

        sub_2532222E0(*(v11 + 48) + i * v14, v7);
        v21 = sub_253CCFF28();
        sub_25323FB28(v7);
        if (v21)
        {
          sub_25323FB28(v9);
          v15 = v28;
          goto LABEL_4;
        }
      }

      *(v13 + 8 * (i >> 6)) = (1 << i) | v20;
      result = sub_25323FC90(v9, *(v11 + 48) + i * v14, type metadata accessor for HomeDeviceEntity);
      v23 = *(v11 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      v15 = v28;
      if (!v24)
      {
        *(v11 + 16) = v25;
LABEL_4:
        if (++v12 == v15)
        {
          return v11;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_25323E720(void *a1)
{
  v2 = sub_253CCFF58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = [a1 destinationIdentifier];
  if (v11)
  {
    v12 = v11;
    sub_253CCFF38();

    (*(v3 + 32))(v10, v6, v2);
    (*(v3 + 56))(v10, 0, 1, v2);
    sub_253206054(v10, &unk_27F5A2AD0, &unk_253D486A0);
    v13 = [a1 identifier];
    sub_253CCFF38();

    v14 = sub_253CCFF08();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v3 + 56))(v10, 1, 1, v2);
    sub_253206054(v10, &unk_27F5A2AD0, &unk_253D486A0);
    return 0;
  }

  return v14;
}

uint64_t sub_25323E938(uint64_t a1, _BYTE *a2, void *a3)
{
  v4 = v3;
  v120 = a1;
  v121 = a2;
  ObjectType = swift_getObjectType();
  v7 = sub_253CD07E8();
  v128 = *(v7 - 8);
  v129 = v7;
  v8 = *(v128 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v123 = &v113[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v118 = &v113[-v12];
  MEMORY[0x28223BE20](v11);
  v14 = &v113[-v13];
  v15 = sub_253CCFF58();
  v124 = *(v15 - 8);
  v125 = v15;
  v16 = *(v124 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v119 = &v113[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v113[-v20];
  MEMORY[0x28223BE20](v19);
  v23 = &v113[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A37F8, &qword_253D499D8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v113[-v26];
  v28 = type metadata accessor for HomeDeviceEntity();
  v126 = *(v28 - 8);
  v29 = *(v126 + 64);
  MEMORY[0x28223BE20](v28);
  v122 = &v113[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = [v3 audioDestination];
  if (v31)
  {
    v32 = v31;
    sub_25323D0CC(v31, a3);
  }

  else
  {
    v33 = [v3 audioDestinationControllerData];
    if (!v33)
    {
      goto LABEL_6;
    }

    v32 = v33;
    sub_25323E720(v33);
  }

LABEL_6:
  v130 = v28;
  v127 = v27;
  v34 = [v3 category];
  v35 = [v34 categoryType];

  v36 = sub_253CD0968();
  v38 = v37;

  v39 = [v4 spiClientIdentifier];
  sub_253CCFF38();

  v40 = [v4 uuid];
  sub_253CCFF38();

  v41 = [v4 urlString];
  if (v41)
  {
    v42 = v41;
    v43 = sub_253CD0968();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  sub_25323CEC8();

  if (qword_27F5A2450 != -1)
  {
    swift_once();
  }

  v46 = qword_27F5B7860;
  if (!*(qword_27F5B7860 + 16) || (v47 = sub_253217D84(v36, v38), (v48 & 1) == 0))
  {

    v56 = *MEMORY[0x277D0F1A8];
    sub_253CD0968();
    sub_25323D5A8();
    sub_253CD07D8();

    v57 = sub_253CD07C8();
    v58 = sub_253CD0C98();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v121 = v23;
      v61 = v60;
      v131 = v60;
      *v59 = 136315138;
      v62 = sub_253277BA8(v36, v38, &v131);

      *(v59 + 4) = v62;
      _os_log_impl(&dword_2531F8000, v57, v58, "Unable to map accessory category %s to a device type.", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      v64 = v128;
      v63 = v129;
      MEMORY[0x259C040E0](v61, -1, -1);
      MEMORY[0x259C040E0](v59, -1, -1);

      (*(v64 + 8))(v14, v63);
      v65 = v125;
      v66 = *(v124 + 8);
      v66(v21, v125);
      v66(v121, v65);
    }

    else
    {

      (*(v128 + 8))(v14, v129);
      v67 = v125;
      v68 = *(v124 + 8);
      v68(v21, v125);
      v68(v23, v67);
    }

    goto LABEL_20;
  }

  v117 = ObjectType;
  v114 = *(*(v46 + 56) + v47);
  v49 = *MEMORY[0x277CCE8B0];
  v50 = sub_253CD0968();
  v115 = v43;
  v116 = v21;
  if (v36 != v50 || v38 != v51)
  {
    v70 = v23;
    v71 = sub_253CD1118();

    if (v71)
    {
      v52 = v70;
      v53 = &unk_2864F93B8;
LABEL_23:
      v54 = v127;
      v55 = v130;
      goto LABEL_24;
    }

    v91 = *MEMORY[0x277CCE870];
    if (v36 == sub_253CD0968() && v38 == v92)
    {
      v52 = v70;
      v53 = &unk_2864F93E0;
      goto LABEL_16;
    }

    v93 = sub_253CD1118();

    if (v93)
    {
      v52 = v70;
      v53 = &unk_2864F93E0;
      goto LABEL_23;
    }

    v94 = *MEMORY[0x277CCE860];
    if (v36 == sub_253CD0968() && v38 == v95)
    {
LABEL_37:
      v52 = v70;
      v53 = &unk_2864F9408;
      goto LABEL_16;
    }

    v96 = sub_253CD1118();

    if (v96)
    {
      goto LABEL_39;
    }

    v97 = *MEMORY[0x277CCE900];
    if (v36 == sub_253CD0968() && v38 == v98)
    {
      goto LABEL_37;
    }

    v99 = sub_253CD1118();

    if (v99)
    {
LABEL_39:
      v52 = v70;
      v53 = &unk_2864F9408;
      goto LABEL_23;
    }

    v100 = *MEMORY[0x277CCE8B8];
    if (v36 == sub_253CD0968() && v38 == v101)
    {
      v52 = v70;
      v53 = &unk_2864F9430;
      goto LABEL_16;
    }

    v102 = sub_253CD1118();

    v103 = v38;
    if (v102)
    {
      v52 = v70;
      v53 = &unk_2864F9430;
      goto LABEL_23;
    }

    v104 = *MEMORY[0x277D0F1A8];
    sub_253CD0968();
    sub_25323D5A8();
    v105 = v118;
    sub_253CD07D8();

    v106 = sub_253CD07C8();
    v107 = sub_253CD0C98();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v131 = v109;
      *v108 = 136315138;
      v110 = sub_253277BA8(v36, v103, &v131);

      *(v108 + 4) = v110;
      _os_log_impl(&dword_2531F8000, v106, v107, "Please add support for %s to HomeDeviceEntity.", v108, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v109);
      MEMORY[0x259C040E0](v109, -1, -1);
      MEMORY[0x259C040E0](v108, -1, -1);
    }

    else
    {
    }

    (*(v128 + 8))(v105, v129);
    v111 = v125;
    v112 = *(v124 + 8);
    v112(v21, v125);
    v112(v70, v111);
LABEL_20:
    v69 = v126;
    v54 = v127;
    v55 = v130;
    (*(v126 + 56))(v127, 1, 1, v130);
    goto LABEL_25;
  }

  v52 = v23;
  v53 = &unk_2864F93B8;
LABEL_16:
  v54 = v127;
  v55 = v130;

LABEL_24:

  sub_25323E2FC(v53);

  v73 = v124;
  v72 = v125;
  v74 = v119;
  (*(v124 + 16))(v119, v52, v125);
  v75 = *(v73 + 8);
  v75(v116, v72);
  v75(v52, v72);
  v76 = (v54 + v55[5]);
  *v76 = v115;
  v76[1] = v45;
  (*(v73 + 32))(v54, v74, v72);
  v77 = (v54 + v55[6]);
  v78 = v121;
  *v77 = v120;
  v77[1] = v78;
  *(v54 + v55[7]) = v114;
  v69 = v126;
  (*(v126 + 56))(v54, 0, 1, v55);

LABEL_25:
  if ((*(v69 + 48))(v54, 1, v55) == 1)
  {
    sub_253206054(v54, &qword_27F5A37F8, &qword_253D499D8);
    sub_253CD0C48();
    v79 = v4;
    v80 = sub_253CD07C8();
    v81 = sub_253CD0C98();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v82 = 138412290;
      *(v82 + 4) = v79;
      *v83 = v79;
      v84 = v79;
      _os_log_impl(&dword_2531F8000, v80, v81, "Unable to create HomeDeviceEntity for %@", v82, 0xCu);
      sub_253206054(v83, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v83, -1, -1);
      MEMORY[0x259C040E0](v82, -1, -1);
    }

    (*(v128 + 8))(v123, v129);
    return MEMORY[0x277D84FA0];
  }

  else
  {
    v86 = v122;
    sub_25323FC90(v54, v122, type metadata accessor for HomeDeviceEntity);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F0, &qword_253D4B200);
    v87 = *(v69 + 72);
    v88 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_253D48DA0;
    sub_2532222E0(v86, v89 + v88);
    v90 = sub_25323E4B0(v89);
    swift_setDeallocating();
    sub_25323FB28(v89 + v88);
    swift_deallocClassInstance();
    sub_25323FB28(v86);
    return v90;
  }
}

uint64_t sub_25323F600(void *a1, void *a2)
{
  v4 = sub_253CD07E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  v12 = [a1 name];
  v13 = sub_253CD0968();
  v15 = v14;

  v16 = (v15 >> 56) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    v21 = *MEMORY[0x277D0F1A8];
    sub_253CD0968();
    type metadata accessor for HomeDeviceEntity();
    sub_25323D5A8();
    sub_253CD07D8();
    v22 = a1;
    v23 = sub_253CD07C8();
    v24 = sub_253CD0C98();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&dword_2531F8000, v23, v24, "No name found for accessory or it is empty: %@", v25, 0xCu);
      sub_253206054(v26, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v26, -1, -1);
      MEMORY[0x259C040E0](v25, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    return MEMORY[0x277D84FA0];
  }

  if (!a2)
  {

    v28 = *MEMORY[0x277D0F1A8];
    sub_253CD0968();
    type metadata accessor for HomeDeviceEntity();
    sub_25323D5A8();
    sub_253CD07D8();
    v29 = a1;
    v30 = sub_253CD07C8();
    v31 = sub_253CD0C98();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v29;
      *v33 = v29;
      v34 = v29;
      _os_log_impl(&dword_2531F8000, v30, v31, "Accessory does not belong to a home: %@", v32, 0xCu);
      sub_253206054(v33, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v33, -1, -1);
      MEMORY[0x259C040E0](v32, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    return MEMORY[0x277D84FA0];
  }

  v17 = a2;
  v18 = [a1 room];
  v38 = MEMORY[0x277D84FA0];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v19 = a1;
    v20 = sub_253238270(v13, v15, v17, v18);
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v19 = a1;
      v20 = sub_253239490(v13, v15);
    }

    else
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        goto LABEL_19;
      }

      v19 = a1;
      v20 = sub_25323E938(v13, v15, v17);
    }
  }

  v36 = v20;

  sub_2532392CC(v36);

  v17 = v18;
  v18 = v19;
LABEL_19:

  return v38;
}

uint64_t sub_25323FAB8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_253200644(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25323FB28(uint64_t a1)
{
  v2 = type metadata accessor for HomeDeviceEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25323FB84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_25323FB90()
{
  result = qword_27F5A3820;
  if (!qword_27F5A3820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3820);
  }

  return result;
}

unint64_t sub_25323FBE4()
{
  result = qword_27F5A3828;
  if (!qword_27F5A3828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3828);
  }

  return result;
}

uint64_t sub_25323FC38(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_253CD1118() & 1;
  }
}

uint64_t sub_25323FC90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_25323FD20()
{
  sub_253CCFF58();
  if (v0 <= 0x3F)
  {
    sub_25323FDBC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25323FDBC()
{
  if (!qword_27F5A3C60)
  {
    v0 = sub_253CD0DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5A3C60);
    }
  }
}

uint64_t sub_25323FE24(uint64_t a1)
{
  sub_253CD11C8();
  v2 = *(a1 + 20);
  sub_253CCFF58();
  sub_253240240(&qword_281531988, MEMORY[0x277CC95F0]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t sub_25323FEC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  sub_253CCFF58();
  sub_253240240(&qword_281531988, MEMORY[0x277CC95F0]);
  return sub_253CD0908();
}

uint64_t sub_25323FF40(uint64_t a1, uint64_t a2)
{
  sub_253CD11C8();
  v3 = *(a2 + 20);
  sub_253CCFF58();
  sub_253240240(&qword_281531988, MEMORY[0x277CC95F0]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t sub_25323FFE8()
{
  v1 = v0;
  sub_253CD0FB8();
  v2 = type metadata accessor for HomeEntity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3850, &unk_253D49B00);
  v3 = sub_253CD00F8();

  MEMORY[0x259C00940](0x203A6469202CLL, 0xE600000000000000);
  v4 = *(v2 + 20);
  sub_253CCFF58();
  sub_253240240(&qword_281531980, MEMORY[0x277CC95F0]);
  v5 = sub_253CD10E8();
  MEMORY[0x259C00940](v5);

  MEMORY[0x259C00940](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x259C00940](*(v1 + *(v2 + 24)), *(v1 + *(v2 + 24) + 8));
  return v3;
}

uint64_t sub_253240130()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3850, &unk_253D49B00);
  v0 = sub_253CD00F8();
  MEMORY[0x259C00940](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t type metadata accessor for HomeEntity()
{
  result = qword_2815316C0;
  if (!qword_2815316C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_253240240(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_253240288()
{
  v1 = v0;
  v56[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for HomeEntity();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_253CD07E8();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + *(v2 + 24));
  v11 = *v10;
  v12 = v10[1];
  v13 = objc_allocWithZone(MEMORY[0x277D20FD0]);
  v14 = sub_253CD0938();
  v56[0] = 0;
  v15 = [v13 initWithName:v14 error:v56];

  v16 = v56[0];
  v55 = v9;
  if (v15)
  {
    v17 = objc_allocWithZone(MEMORY[0x277D20FE0]);
    v56[0] = 0;
    v18 = v15;
    v19 = v16;
    v20 = [v17 initWithEntity:v18 entityType:1 error:v56];
    if (v20)
    {
      v21 = v20;
      v53 = v6;
      v22 = v56[0];

      v23 = v1 + *(v2 + 20);
      v24 = sub_253CCFF08();
      v26 = v25;
      v28 = *v1;
      v27 = v1[1];
      v29 = objc_allocWithZone(MEMORY[0x277D20FE8]);

      v48 = sub_253242358(v24, v26, v28, v27);
      v49 = objc_allocWithZone(MEMORY[0x277CF94C8]);
      v56[0] = 0;
      v50 = [v49 initWithContent:v21 metaContent:v48 error:v56];
      v51 = v56[0];
      if (v50)
      {

        result = v50;
        goto LABEL_11;
      }

      v52 = v51;
      v31 = sub_253CCFE18();

      swift_willThrow();
      v6 = v53;
    }

    else
    {
      v32 = v56[0];
      v31 = sub_253CCFE18();

      swift_willThrow();
    }

    v9 = v55;
  }

  else
  {
    v30 = v56[0];
    v31 = sub_253CCFE18();

    swift_willThrow();
  }

  v33 = *MEMORY[0x277D0F1A8];
  sub_253CD0968();
  sub_253240130();
  sub_253CD07D8();
  sub_253240768(v1, v5);
  v34 = v31;
  v35 = sub_253CD07C8();
  v36 = sub_253CD0C98();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v56[0] = v39;
    *v37 = 136315394;
    v40 = sub_25323FFE8();
    v42 = v41;
    sub_2532407CC(v5);
    v43 = sub_253277BA8(v40, v42, v56);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2112;
    v44 = v31;
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 14) = v45;
    *v38 = v45;
    _os_log_impl(&dword_2531F8000, v35, v36, "Failed to create CCHome for %s: %@", v37, 0x16u);
    sub_2532365D8(v38);
    MEMORY[0x259C040E0](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x259C040E0](v39, -1, -1);
    MEMORY[0x259C040E0](v37, -1, -1);

    (*(v54 + 8))(v55, v6);
  }

  else
  {

    sub_2532407CC(v5);
    (*(v54 + 8))(v9, v6);
  }

  result = 0;
LABEL_11:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_253240768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2532407CC(uint64_t a1)
{
  v2 = type metadata accessor for HomeEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_253240850()
{
  sub_25323FDBC();
  if (v0 <= 0x3F)
  {
    sub_253CCFF58();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for HomeGroupEntity()
{
  result = qword_27F5A3868;
  if (!qword_27F5A3868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_253240970(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = [a1 urlString];
  if (v6)
  {
    v7 = v6;
    v8 = sub_253CD0968();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a3 = v8;
  a3[1] = v10;
  v11 = [a1 spiClientIdentifier];
  v12 = type metadata accessor for HomeGroupEntity();
  v13 = a3 + *(v12 + 20);
  sub_253CCFF38();

  v14 = [a1 name];
  v15 = sub_253CD0968();
  v17 = v16;

  v18 = (a3 + *(v12 + 24));
  *v18 = v15;
  v18[1] = v17;
}

uint64_t sub_253240A68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_253CD07E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 home];
  if (v9)
  {
    sub_253240970(a1, v9, a2);
    v10 = type metadata accessor for HomeGroupEntity();
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 0, 1, v10);
  }

  else
  {
    v13 = *MEMORY[0x277D0F1A8];
    sub_253CD0968();
    v14 = type metadata accessor for HomeGroupEntity();
    sub_253240E60();
    sub_253CD07D8();
    v15 = a1;
    v16 = sub_253CD07C8();
    v17 = sub_253CD0C98();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_2531F8000, v16, v17, "serviceGroup %@ does not have a home", v18, 0xCu);
      sub_2532365D8(v19);
      MEMORY[0x259C040E0](v19, -1, -1);
      MEMORY[0x259C040E0](v18, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }
}

uint64_t sub_253240D18()
{
  v1 = v0;
  sub_253CD0FB8();
  v2 = type metadata accessor for HomeGroupEntity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3860, &unk_253D49BE0);
  v3 = sub_253CD00F8();

  MEMORY[0x259C00940](0x203A6469202CLL, 0xE600000000000000);
  v4 = *(v2 + 20);
  sub_253CCFF58();
  sub_253241090(&qword_281531980, MEMORY[0x277CC95F0]);
  v5 = sub_253CD10E8();
  MEMORY[0x259C00940](v5);

  MEMORY[0x259C00940](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x259C00940](*(v1 + *(v2 + 24)), *(v1 + *(v2 + 24) + 8));
  return v3;
}

uint64_t sub_253240E60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3860, &unk_253D49BE0);
  v0 = sub_253CD0978();
  MEMORY[0x259C00940](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_253240EDC(uint64_t a1)
{
  sub_253CD11C8();
  v2 = *(a1 + 20);
  sub_253CCFF58();
  sub_253241090(&qword_281531988, MEMORY[0x277CC95F0]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t sub_253240F78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  sub_253CCFF58();
  sub_253241090(&qword_281531988, MEMORY[0x277CC95F0]);
  return sub_253CD0908();
}

uint64_t sub_253240FF8(uint64_t a1, uint64_t a2)
{
  sub_253CD11C8();
  v3 = *(a2 + 20);
  sub_253CCFF58();
  sub_253241090(&qword_281531988, MEMORY[0x277CC95F0]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t sub_253241090(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2532410D8()
{
  v1 = v0;
  v56[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for HomeGroupEntity();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_253CD07E8();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + *(v2 + 24));
  v11 = *v10;
  v12 = v10[1];
  v13 = objc_allocWithZone(MEMORY[0x277D21028]);
  v14 = sub_253CD0938();
  v56[0] = 0;
  v15 = [v13 initWithName:v14 error:v56];

  v16 = v56[0];
  v55 = v9;
  if (v15)
  {
    v17 = objc_allocWithZone(MEMORY[0x277D20FE0]);
    v56[0] = 0;
    v18 = v15;
    v19 = v16;
    v20 = [v17 initWithEntity:v18 entityType:5 error:v56];
    if (v20)
    {
      v21 = v20;
      v53 = v6;
      v22 = v56[0];

      v23 = v1 + *(v2 + 20);
      v24 = sub_253CCFF08();
      v26 = v25;
      v28 = *v1;
      v27 = v1[1];
      v29 = objc_allocWithZone(MEMORY[0x277D20FE8]);

      v48 = sub_253242358(v24, v26, v28, v27);
      v49 = objc_allocWithZone(MEMORY[0x277CF94C8]);
      v56[0] = 0;
      v50 = [v49 initWithContent:v21 metaContent:v48 error:v56];
      v51 = v56[0];
      if (v50)
      {

        result = v50;
        goto LABEL_11;
      }

      v52 = v51;
      v31 = sub_253CCFE18();

      swift_willThrow();
      v6 = v53;
    }

    else
    {
      v32 = v56[0];
      v31 = sub_253CCFE18();

      swift_willThrow();
    }

    v9 = v55;
  }

  else
  {
    v30 = v56[0];
    v31 = sub_253CCFE18();

    swift_willThrow();
  }

  v33 = *MEMORY[0x277D0F1A8];
  sub_253CD0968();
  sub_253240E60();
  sub_253CD07D8();
  sub_2532415B8(v1, v5);
  v34 = v31;
  v35 = sub_253CD07C8();
  v36 = sub_253CD0C98();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v56[0] = v39;
    *v37 = 136315394;
    v40 = sub_253240D18();
    v42 = v41;
    sub_25324161C(v5);
    v43 = sub_253277BA8(v40, v42, v56);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2112;
    v44 = v31;
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 14) = v45;
    *v38 = v45;
    _os_log_impl(&dword_2531F8000, v35, v36, "Failed to create CCHomeRoom for %s: %@", v37, 0x16u);
    sub_2532365D8(v38);
    MEMORY[0x259C040E0](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x259C040E0](v39, -1, -1);
    MEMORY[0x259C040E0](v37, -1, -1);

    (*(v54 + 8))(v55, v6);
  }

  else
  {

    sub_25324161C(v5);
    (*(v54 + 8))(v9, v6);
  }

  result = 0;
LABEL_11:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2532415B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeGroupEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25324161C(uint64_t a1)
{
  v2 = type metadata accessor for HomeGroupEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2532416A0(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 urlString];
  if (v6)
  {
    v7 = v6;
    v8 = sub_253CD0968();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = type metadata accessor for RoomEntity();
  v12 = (a3 + *(v11 + 20));
  *v12 = v8;
  v12[1] = v10;
  v13 = [a1 spiClientIdentifier];
  sub_253CCFF38();

  v14 = [a1 name];
  v15 = sub_253CD0968();
  v17 = v16;

  v18 = (a3 + *(v11 + 24));
  *v18 = v15;
  v18[1] = v17;
}

uint64_t sub_253241798@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_253CD07E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 home];
  if (v9)
  {
    sub_2532416A0(a1, v9, a2);
    v10 = type metadata accessor for RoomEntity();
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 0, 1, v10);
  }

  else
  {
    v13 = *MEMORY[0x277D0F1A8];
    sub_253CD0968();
    v14 = type metadata accessor for RoomEntity();
    sub_253241B8C();
    sub_253CD07D8();
    v15 = a1;
    v16 = sub_253CD07C8();
    v17 = sub_253CD0C98();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_2531F8000, v16, v17, "room %@ has no home", v18, 0xCu);
      sub_2532365D8(v19);
      MEMORY[0x259C040E0](v19, -1, -1);
      MEMORY[0x259C040E0](v18, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }
}

uint64_t sub_253241A48()
{
  sub_253CD0FB8();
  v1 = type metadata accessor for RoomEntity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3880, &unk_253D49CD0);
  v2 = sub_253CD00F8();

  MEMORY[0x259C00940](0x203A6469202CLL, 0xE600000000000000);
  sub_253CCFF58();
  sub_253241E2C(&qword_281531980, MEMORY[0x277CC95F0]);
  v3 = sub_253CD10E8();
  MEMORY[0x259C00940](v3);

  MEMORY[0x259C00940](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x259C00940](*(v0 + *(v1 + 24)), *(v0 + *(v1 + 24) + 8));
  return v2;
}

uint64_t sub_253241B8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3880, &unk_253D49CD0);
  v0 = sub_253CD00F8();
  MEMORY[0x259C00940](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_253241C08()
{
  sub_253CD11C8();
  sub_253CCFF58();
  sub_253241E2C(&qword_281531988, MEMORY[0x277CC95F0]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t sub_253241C90()
{
  sub_253CCFF58();
  sub_253241E2C(&qword_281531988, MEMORY[0x277CC95F0]);

  return sub_253CD0908();
}

uint64_t sub_253241D14()
{
  sub_253CD11C8();
  sub_253CCFF58();
  sub_253241E2C(&qword_281531988, MEMORY[0x277CC95F0]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t type metadata accessor for RoomEntity()
{
  result = qword_281531608;
  if (!qword_281531608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_253241E2C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_253241E74()
{
  v1 = v0;
  v56[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for RoomEntity();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_253CD07E8();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + *(v2 + 24));
  v11 = *v10;
  v12 = v10[1];
  v13 = objc_allocWithZone(MEMORY[0x277D20FF0]);
  v14 = sub_253CD0938();
  v56[0] = 0;
  v15 = [v13 initWithName:v14 error:v56];

  v16 = v56[0];
  v55 = v9;
  if (v15)
  {
    v17 = objc_allocWithZone(MEMORY[0x277D20FE0]);
    v56[0] = 0;
    v18 = v15;
    v19 = v16;
    v20 = [v17 initWithEntity:v18 entityType:3 error:v56];
    if (v20)
    {
      v21 = v20;
      v53 = v6;
      v22 = v56[0];

      v23 = sub_253CCFF08();
      v25 = v24;
      v26 = (v1 + *(v2 + 20));
      v28 = *v26;
      v27 = v26[1];
      v29 = objc_allocWithZone(MEMORY[0x277D20FE8]);

      v48 = sub_253242358(v23, v25, v28, v27);
      v49 = objc_allocWithZone(MEMORY[0x277CF94C8]);
      v56[0] = 0;
      v50 = [v49 initWithContent:v21 metaContent:v48 error:v56];
      v51 = v56[0];
      if (v50)
      {

        result = v50;
        goto LABEL_11;
      }

      v52 = v51;
      v31 = sub_253CCFE18();

      swift_willThrow();
      v6 = v53;
    }

    else
    {
      v32 = v56[0];
      v31 = sub_253CCFE18();

      swift_willThrow();
    }

    v9 = v55;
  }

  else
  {
    v30 = v56[0];
    v31 = sub_253CCFE18();

    swift_willThrow();
  }

  v33 = *MEMORY[0x277D0F1A8];
  sub_253CD0968();
  sub_253241B8C();
  sub_253CD07D8();
  sub_253242460(v1, v5);
  v34 = v31;
  v35 = sub_253CD07C8();
  v36 = sub_253CD0C98();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v56[0] = v39;
    *v37 = 136315394;
    v40 = sub_253241A48();
    v42 = v41;
    sub_2532424C4(v5);
    v43 = sub_253277BA8(v40, v42, v56);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2112;
    v44 = v31;
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 14) = v45;
    *v38 = v45;
    _os_log_impl(&dword_2531F8000, v35, v36, "Failed to create CCHomeRoom for %s: %@", v37, 0x16u);
    sub_2532365D8(v38);
    MEMORY[0x259C040E0](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x259C040E0](v39, -1, -1);
    MEMORY[0x259C040E0](v37, -1, -1);

    (*(v54 + 8))(v55, v6);
  }

  else
  {

    sub_2532424C4(v5);
    (*(v54 + 8))(v9, v6);
  }

  result = 0;
LABEL_11:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_253242358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = sub_253CD0938();

  if (a4)
  {
    v7 = sub_253CD0938();
  }

  else
  {
    v7 = 0;
  }

  v13[0] = 0;
  v8 = [v4 initWithSourceItemIdentifier:v6 assistantHomeKitIdentifier:v7 error:v13];

  if (v8)
  {
    v9 = v13[0];
  }

  else
  {
    v10 = v13[0];
    sub_253CCFE18();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_253242460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoomEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2532424C4(uint64_t a1)
{
  v2 = type metadata accessor for RoomEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_253242548()
{
  sub_253CCFF58();
  if (v0 <= 0x3F)
  {
    sub_25323FDBC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2532425D4(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = [a1 urlString];
  if (v6)
  {
    v7 = v6;
    v8 = sub_253CD0968();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a3 = v8;
  a3[1] = v10;
  v11 = [a1 spiClientIdentifier];
  v12 = type metadata accessor for SceneEntity();
  v13 = a3 + *(v12 + 20);
  sub_253CCFF38();

  v14 = [a1 name];
  v15 = sub_253CD0968();
  v17 = v16;

  v18 = (a3 + *(v12 + 24));
  *v18 = v15;
  v18[1] = v17;
}

uint64_t sub_2532426CC()
{
  v1 = v0;
  sub_253CD0FB8();
  v2 = type metadata accessor for SceneEntity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3890, &unk_253D49DB0);
  v3 = sub_253CD00F8();

  MEMORY[0x259C00940](0x203A6469202CLL, 0xE600000000000000);
  v4 = *(v2 + 20);
  sub_253CCFF58();
  sub_253242D88(&qword_281531980, MEMORY[0x277CC95F0]);
  v5 = sub_253CD10E8();
  MEMORY[0x259C00940](v5);

  MEMORY[0x259C00940](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x259C00940](*(v1 + *(v2 + 24)), *(v1 + *(v2 + 24) + 8));
  return v3;
}

uint64_t sub_253242814()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3890, &unk_253D49DB0);
  v0 = sub_253CD0978();
  MEMORY[0x259C00940](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_253242890@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_253CD07E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 home];
  if (v9)
  {
    sub_2532425D4(a1, v9, a2);
    v10 = type metadata accessor for SceneEntity();
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 0, 1, v10);
  }

  else
  {
    v13 = *MEMORY[0x277D0F1A8];
    sub_253CD0968();
    v14 = type metadata accessor for SceneEntity();
    sub_253242814();
    sub_253CD07D8();
    v15 = a1;
    v16 = sub_253CD07C8();
    v17 = sub_253CD0C98();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_2531F8000, v16, v17, "Scene does not have valid home reference: %@", v18, 0xCu);
      sub_2532365D8(v19);
      MEMORY[0x259C040E0](v19, -1, -1);
      MEMORY[0x259C040E0](v18, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }
}

uint64_t sub_253242B40(uint64_t a1)
{
  sub_253CD11C8();
  v2 = *(a1 + 20);
  sub_253CCFF58();
  sub_253242D88(&qword_281531988, MEMORY[0x277CC95F0]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t sub_253242BDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  sub_253CCFF58();
  sub_253242D88(&qword_281531988, MEMORY[0x277CC95F0]);
  return sub_253CD0908();
}

uint64_t sub_253242C5C(uint64_t a1, uint64_t a2)
{
  sub_253CD11C8();
  v3 = *(a2 + 20);
  sub_253CCFF58();
  sub_253242D88(&qword_281531988, MEMORY[0x277CC95F0]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t type metadata accessor for SceneEntity()
{
  result = qword_281531570;
  if (!qword_281531570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_253242D88(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_253242DD0()
{
  v1 = v0;
  v56[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for SceneEntity();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_253CD07E8();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + *(v2 + 24));
  v11 = *v10;
  v12 = v10[1];
  v13 = objc_allocWithZone(MEMORY[0x277D20FF8]);
  v14 = sub_253CD0938();
  v56[0] = 0;
  v15 = [v13 initWithName:v14 error:v56];

  v16 = v56[0];
  v55 = v9;
  if (v15)
  {
    v17 = objc_allocWithZone(MEMORY[0x277D20FE0]);
    v56[0] = 0;
    v18 = v15;
    v19 = v16;
    v20 = [v17 initWithEntity:v18 entityType:6 error:v56];
    if (v20)
    {
      v21 = v20;
      v53 = v6;
      v22 = v56[0];

      v23 = v1 + *(v2 + 20);
      v24 = sub_253CCFF08();
      v26 = v25;
      v28 = *v1;
      v27 = v1[1];
      v29 = objc_allocWithZone(MEMORY[0x277D20FE8]);

      v48 = sub_253242358(v24, v26, v28, v27);
      v49 = objc_allocWithZone(MEMORY[0x277CF94C8]);
      v56[0] = 0;
      v50 = [v49 initWithContent:v21 metaContent:v48 error:v56];
      v51 = v56[0];
      if (v50)
      {

        result = v50;
        goto LABEL_11;
      }

      v52 = v51;
      v31 = sub_253CCFE18();

      swift_willThrow();
      v6 = v53;
    }

    else
    {
      v32 = v56[0];
      v31 = sub_253CCFE18();

      swift_willThrow();
    }

    v9 = v55;
  }

  else
  {
    v30 = v56[0];
    v31 = sub_253CCFE18();

    swift_willThrow();
  }

  v33 = *MEMORY[0x277D0F1A8];
  sub_253CD0968();
  sub_253242814();
  sub_253CD07D8();
  sub_2532432B0(v1, v5);
  v34 = v31;
  v35 = sub_253CD07C8();
  v36 = sub_253CD0C98();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v56[0] = v39;
    *v37 = 136315394;
    v40 = sub_2532426CC();
    v42 = v41;
    sub_253243314(v5);
    v43 = sub_253277BA8(v40, v42, v56);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2112;
    v44 = v31;
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 14) = v45;
    *v38 = v45;
    _os_log_impl(&dword_2531F8000, v35, v36, "Failed to create CCHomeScene for %s: %@", v37, 0x16u);
    sub_2532365D8(v38);
    MEMORY[0x259C040E0](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x259C040E0](v39, -1, -1);
    MEMORY[0x259C040E0](v37, -1, -1);

    (*(v54 + 8))(v55, v6);
  }

  else
  {

    sub_253243314(v5);
    (*(v54 + 8))(v9, v6);
  }

  result = 0;
LABEL_11:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2532432B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SceneEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_253243314(uint64_t a1)
{
  v2 = type metadata accessor for SceneEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_253243398()
{
  v1 = v0;
  sub_253CD0FB8();
  v2 = type metadata accessor for ZoneEntity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A38A0, &unk_253D49E90);
  v3 = sub_253CD00F8();

  MEMORY[0x259C00940](0x203A6469202CLL, 0xE600000000000000);
  v4 = *(v2 + 20);
  sub_253CCFF58();
  sub_2532437A4(&qword_281531980, MEMORY[0x277CC95F0]);
  v5 = sub_253CD10E8();
  MEMORY[0x259C00940](v5);

  MEMORY[0x259C00940](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x259C00940](*(v1 + *(v2 + 24)), *(v1 + *(v2 + 24) + 8));
  return v3;
}

uint64_t sub_2532434E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A38A0, &unk_253D49E90);
  v0 = sub_253CD00F8();
  MEMORY[0x259C00940](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_25324355C(uint64_t a1)
{
  sub_253CD11C8();
  v2 = *(a1 + 20);
  sub_253CCFF58();
  sub_2532437A4(&qword_281531988, MEMORY[0x277CC95F0]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t sub_2532435F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  sub_253CCFF58();
  sub_2532437A4(&qword_281531988, MEMORY[0x277CC95F0]);
  return sub_253CD0908();
}

uint64_t sub_253243678(uint64_t a1, uint64_t a2)
{
  sub_253CD11C8();
  v3 = *(a2 + 20);
  sub_253CCFF58();
  sub_2532437A4(&qword_281531988, MEMORY[0x277CC95F0]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t type metadata accessor for ZoneEntity()
{
  result = qword_27F5A38A8;
  if (!qword_27F5A38A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2532437A4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2532437EC()
{
  v1 = v0;
  v56[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for ZoneEntity();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_253CD07E8();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + *(v2 + 24));
  v11 = *v10;
  v12 = v10[1];
  v13 = objc_allocWithZone(MEMORY[0x277D21038]);
  v14 = sub_253CD0938();
  v56[0] = 0;
  v15 = [v13 initWithName:v14 error:v56];

  v16 = v56[0];
  v55 = v9;
  if (v15)
  {
    v17 = objc_allocWithZone(MEMORY[0x277D20FE0]);
    v56[0] = 0;
    v18 = v15;
    v19 = v16;
    v20 = [v17 initWithEntity:v18 entityType:2 error:v56];
    if (v20)
    {
      v21 = v20;
      v53 = v6;
      v22 = v56[0];

      v23 = v1 + *(v2 + 20);
      v24 = sub_253CCFF08();
      v26 = v25;
      v28 = *v1;
      v27 = v1[1];
      v29 = objc_allocWithZone(MEMORY[0x277D20FE8]);

      v48 = sub_253242358(v24, v26, v28, v27);
      v49 = objc_allocWithZone(MEMORY[0x277CF94C8]);
      v56[0] = 0;
      v50 = [v49 initWithContent:v21 metaContent:v48 error:v56];
      v51 = v56[0];
      if (v50)
      {

        result = v50;
        goto LABEL_11;
      }

      v52 = v51;
      v31 = sub_253CCFE18();

      swift_willThrow();
      v6 = v53;
    }

    else
    {
      v32 = v56[0];
      v31 = sub_253CCFE18();

      swift_willThrow();
    }

    v9 = v55;
  }

  else
  {
    v30 = v56[0];
    v31 = sub_253CCFE18();

    swift_willThrow();
  }

  v33 = *MEMORY[0x277D0F1A8];
  sub_253CD0968();
  sub_2532434E0();
  sub_253CD07D8();
  sub_253243CCC(v1, v5);
  v34 = v31;
  v35 = sub_253CD07C8();
  v36 = sub_253CD0C98();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v56[0] = v39;
    *v37 = 136315394;
    v40 = sub_253243398();
    v42 = v41;
    sub_253243D30(v5);
    v43 = sub_253277BA8(v40, v42, v56);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2112;
    v44 = v31;
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 14) = v45;
    *v38 = v45;
    _os_log_impl(&dword_2531F8000, v35, v36, "Failed to create CCHomeZone for %s: %@", v37, 0x16u);
    sub_2532365D8(v38);
    MEMORY[0x259C040E0](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x259C040E0](v39, -1, -1);
    MEMORY[0x259C040E0](v37, -1, -1);

    (*(v54 + 8))(v55, v6);
  }

  else
  {

    sub_253243D30(v5);
    (*(v54 + 8))(v9, v6);
  }

  result = 0;
LABEL_11:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_253243CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZoneEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_253243D30(uint64_t a1)
{
  v2 = type metadata accessor for ZoneEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_253243DB4(char a1)
{
  result = 0x7265776F70;
  switch(a1)
  {
    case 1:
      return 0x6669727550726961;
    case 2:
    case 13:
    case 39:
      return 0xD000000000000010;
    case 3:
      return 0x676E696772616863;
    case 4:
      return 0x5379726574746162;
    case 5:
    case 11:
    case 17:
    case 30:
    case 38:
      return 0xD000000000000012;
    case 6:
      return 0xD000000000000011;
    case 7:
      v4 = 1635020658;
      return v4 | 0x6E6F697400000000;
    case 8:
      return 0xD000000000000011;
    case 9:
      return 0x646F4D676E697773;
    case 10:
      return 0x65646F4D6E6166;
    case 12:
      return 0xD000000000000011;
    case 14:
      return 1801678700;
    case 15:
      return 0x6573696172;
    case 16:
      v4 = 1769172848;
      return v4 | 0x6E6F697400000000;
    case 18:
    case 29:
      return 0xD000000000000013;
    case 19:
      return 0x656E746867697262;
    case 20:
      return 0x726F6C6F63;
    case 21:
      return 0x4C6C61727574616ELL;
    case 22:
      return 0x696C617551726961;
    case 23:
      return 0x6E6544656E6F7A6FLL;
    case 24:
    case 33:
    case 34:
    case 43:
      return 0xD000000000000016;
    case 25:
    case 44:
      return 0xD000000000000015;
    case 26:
      v3 = 892489040;
      goto LABEL_42;
    case 27:
      v3 = 808537424;
LABEL_42:
      result = v3 | 0x736E654400000000;
      break;
    case 28:
    case 31:
    case 32:
      result = 0xD000000000000017;
      break;
    case 35:
      result = 0x6576654C6B616570;
      break;
    case 36:
      result = 0xD000000000000011;
      break;
    case 37:
      result = 0x657465446B61656CLL;
      break;
    case 40:
      result = 0x79746964696D7568;
      break;
    case 41:
      result = 0x74536E6F69746F6DLL;
      break;
    case 42:
      result = 0x746544656B6F6D73;
      break;
    case 45:
      result = 0x69666964696D7568;
      break;
    case 46:
      result = 0xD000000000000011;
      break;
    case 47:
      result = 0x6573556E69;
      break;
    case 48:
      result = 1886352499;
      break;
    case 49:
      result = 0x656D75736572;
      break;
    case 50:
      result = 0x6573756170;
      break;
    case 51:
      result = 0x676E696E61656C63;
      break;
    case 52:
      result = 0x7274536F65646976;
      break;
    case 53:
      result = 0x696C436F65646976;
      break;
    case 54:
      result = 0xD000000000000011;
      break;
    case 55:
      result = 0x4579616C70726961;
      break;
    case 56:
      result = 0x616964656DLL;
      break;
    case 57:
      result = 0x6D6F637265746E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_253244344()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A38B8, &qword_253D49ED0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_253D49EC0;
  v1 = *MEMORY[0x277CCF9F0];
  *(v0 + 32) = sub_253CD0968();
  *(v0 + 40) = v2;
  *(v0 + 48) = 0;
  v3 = *MEMORY[0x277CCF7F8];
  *(v0 + 56) = sub_253CD0968();
  *(v0 + 64) = v4;
  *(v0 + 72) = 2;
  v5 = *MEMORY[0x277CCFB00];
  *(v0 + 80) = sub_253CD0968();
  *(v0 + 88) = v6;
  *(v0 + 96) = 1;
  v7 = *MEMORY[0x277CCF7D0];
  *(v0 + 104) = sub_253CD0968();
  *(v0 + 112) = v8;
  *(v0 + 120) = 3;
  v9 = *MEMORY[0x277CCF780];
  *(v0 + 128) = sub_253CD0968();
  *(v0 + 136) = v10;
  *(v0 + 144) = 4;
  v11 = *MEMORY[0x277CCFAA8];
  *(v0 + 152) = sub_253CD0968();
  *(v0 + 160) = v12;
  *(v0 + 168) = 4;
  v13 = *MEMORY[0x277CCF818];
  *(v0 + 176) = sub_253CD0968();
  *(v0 + 184) = v14;
  *(v0 + 192) = 5;
  v15 = *MEMORY[0x277CCFB20];
  *(v0 + 200) = sub_253CD0968();
  *(v0 + 208) = v16;
  *(v0 + 216) = 6;
  v17 = *MEMORY[0x277CCFA20];
  *(v0 + 224) = sub_253CD0968();
  *(v0 + 232) = v18;
  *(v0 + 240) = 7;
  v19 = *MEMORY[0x277CCFA18];
  *(v0 + 248) = sub_253CD0968();
  *(v0 + 256) = v20;
  *(v0 + 264) = 8;
  v21 = *MEMORY[0x277CCFAF8];
  *(v0 + 272) = sub_253CD0968();
  *(v0 + 280) = v22;
  *(v0 + 288) = 9;
  v23 = *MEMORY[0x277CCFB10];
  *(v0 + 296) = sub_253CD0968();
  *(v0 + 304) = v24;
  *(v0 + 312) = 10;
  v25 = *MEMORY[0x277CCF868];
  *(v0 + 320) = sub_253CD0968();
  *(v0 + 328) = v26;
  *(v0 + 336) = 11;
  v27 = *MEMORY[0x277CCFB68];
  *(v0 + 344) = sub_253CD0968();
  *(v0 + 352) = v28;
  *(v0 + 360) = 12;
  v29 = *MEMORY[0x277CCF7F0];
  *(v0 + 368) = sub_253CD0968();
  *(v0 + 376) = v30;
  *(v0 + 384) = 13;
  v31 = *MEMORY[0x277CCF8C8];
  *(v0 + 392) = sub_253CD0968();
  *(v0 + 400) = v32;
  *(v0 + 408) = 13;
  v33 = *MEMORY[0x277CCF838];
  *(v0 + 416) = sub_253CD0968();
  *(v0 + 424) = v34;
  *(v0 + 432) = 14;
  v35 = *MEMORY[0x277CCFB40];
  *(v0 + 440) = sub_253CD0968();
  *(v0 + 448) = v36;
  *(v0 + 456) = 14;
  v37 = *MEMORY[0x277CCF800];
  *(v0 + 464) = sub_253CD0968();
  *(v0 + 472) = v38;
  *(v0 + 480) = 15;
  v39 = *MEMORY[0x277CCFB08];
  *(v0 + 488) = sub_253CD0968();
  *(v0 + 496) = v40;
  *(v0 + 504) = 15;
  v41 = *MEMORY[0x277CCF848];
  *(v0 + 512) = sub_253CD0968();
  *(v0 + 520) = v42;
  *(v0 + 528) = 16;
  v43 = *MEMORY[0x277CCFB50];
  *(v0 + 536) = sub_253CD0968();
  *(v0 + 544) = v44;
  *(v0 + 552) = 16;
  v45 = *MEMORY[0x277CCF858];
  *(v0 + 560) = sub_253CD0968();
  *(v0 + 568) = v46;
  *(v0 + 576) = 17;
  v47 = *MEMORY[0x277CCFB60];
  *(v0 + 584) = sub_253CD0968();
  *(v0 + 592) = v48;
  *(v0 + 600) = 17;
  v49 = *MEMORY[0x277CCF958];
  *(v0 + 608) = sub_253CD0968();
  *(v0 + 616) = v50;
  *(v0 + 624) = 18;
  v51 = *MEMORY[0x277CCF788];
  *(v0 + 632) = sub_253CD0968();
  *(v0 + 640) = v52;
  *(v0 + 648) = 19;
  v53 = *MEMORY[0x277CCFA30];
  *(v0 + 656) = sub_253CD0968();
  *(v0 + 664) = v54;
  *(v0 + 672) = 20;
  v55 = *MEMORY[0x277CCF8D8];
  *(v0 + 680) = sub_253CD0968();
  *(v0 + 688) = v56;
  *(v0 + 696) = 20;
  v57 = *MEMORY[0x277CCF770];
  *(v0 + 704) = sub_253CD0968();
  *(v0 + 712) = v58;
  *(v0 + 720) = 22;
  v59 = *MEMORY[0x277CCF9C8];
  *(v0 + 728) = sub_253CD0968();
  *(v0 + 736) = v60;
  *(v0 + 744) = 23;
  v61 = *MEMORY[0x277CCF998];
  *(v0 + 752) = sub_253CD0968();
  *(v0 + 760) = v62;
  *(v0 + 768) = 24;
  v63 = *MEMORY[0x277CCFAC0];
  *(v0 + 776) = sub_253CD0968();
  *(v0 + 784) = v64;
  *(v0 + 792) = 25;
  v65 = *MEMORY[0x277CCF9D8];
  *(v0 + 800) = sub_253CD0968();
  *(v0 + 808) = v66;
  *(v0 + 816) = 26;
  v67 = *MEMORY[0x277CCF9D0];
  *(v0 + 824) = sub_253CD0968();
  *(v0 + 832) = v68;
  *(v0 + 840) = 27;
  v69 = *MEMORY[0x277CCFBA0];
  *(v0 + 848) = sub_253CD0968();
  *(v0 + 856) = v70;
  *(v0 + 864) = 28;
  v71 = *MEMORY[0x277CCF7A0];
  *(v0 + 872) = sub_253CD0968();
  *(v0 + 880) = v72;
  *(v0 + 888) = 34;
  v73 = *MEMORY[0x277CCF7A8];
  *(v0 + 896) = sub_253CD0968();
  *(v0 + 904) = v74;
  *(v0 + 912) = 30;
  v75 = *MEMORY[0x277CCF7B0];
  *(v0 + 920) = sub_253CD0968();
  *(v0 + 928) = v76;
  *(v0 + 936) = 33;
  v77 = *MEMORY[0x277CCF7B8];
  *(v0 + 944) = sub_253CD0968();
  *(v0 + 952) = v78;
  *(v0 + 960) = 31;
  v79 = *MEMORY[0x277CCF7C0];
  *(v0 + 968) = sub_253CD0968();
  *(v0 + 976) = v80;
  *(v0 + 984) = 29;
  v81 = *MEMORY[0x277CCF7C8];
  *(v0 + 992) = sub_253CD0968();
  *(v0 + 1000) = v82;
  *(v0 + 1008) = 32;
  v83 = *MEMORY[0x277CCF938];
  *(v0 + 1016) = sub_253CD0968();
  *(v0 + 1024) = v84;
  *(v0 + 1032) = 37;
  v85 = *MEMORY[0x277CCF9A8];
  *(v0 + 1040) = sub_253CD0968();
  *(v0 + 1048) = v86;
  *(v0 + 1056) = 38;
  v87 = *MEMORY[0x277CCF7E8];
  *(v0 + 1064) = sub_253CD0968();
  *(v0 + 1072) = v88;
  *(v0 + 1080) = 39;
  v89 = *MEMORY[0x277CCF830];
  *(v0 + 1088) = sub_253CD0968();
  *(v0 + 1096) = v90;
  *(v0 + 1104) = 36;
  v91 = *MEMORY[0x277CCF850];
  *(v0 + 1112) = sub_253CD0968();
  *(v0 + 1120) = v92;
  *(v0 + 1128) = 40;
  v93 = *MEMORY[0x277CCF978];
  *(v0 + 1136) = sub_253CD0968();
  *(v0 + 1144) = v94;
  *(v0 + 1152) = 41;
  v95 = *MEMORY[0x277CCFA80];
  *(v0 + 1160) = sub_253CD0968();
  *(v0 + 1168) = v96;
  *(v0 + 1176) = 42;
  v97 = *MEMORY[0x277CCF828];
  *(v0 + 1184) = sub_253CD0968();
  *(v0 + 1192) = v98;
  *(v0 + 1200) = 43;
  v99 = *MEMORY[0x277CCFB30];
  *(v0 + 1208) = sub_253CD0968();
  *(v0 + 1216) = v100;
  *(v0 + 1224) = 44;
  v101 = *MEMORY[0x277CCF8E0];
  *(v0 + 1232) = sub_253CD0968();
  *(v0 + 1240) = v102;
  *(v0 + 1248) = 45;
  v103 = *MEMORY[0x277CCF888];
  *(v0 + 1256) = sub_253CD0968();
  *(v0 + 1264) = v104;
  *(v0 + 1272) = 46;
  v105 = *MEMORY[0x277CCF9B8];
  *(v0 + 1280) = sub_253CD0968();
  *(v0 + 1288) = v106;
  *(v0 + 1296) = 47;
  v107 = *MEMORY[0x277CCFA08];
  *(v0 + 1304) = sub_253CD0968();
  *(v0 + 1312) = v108;
  *(v0 + 1320) = 54;
  v109 = sub_253218968(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A38C0, &qword_253D49ED8);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F5B7858 = v109;
  return result;
}

uint64_t sub_253244A40(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_253243DB4(*a1);
  v5 = v4;
  if (v3 == sub_253243DB4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_253CD1118();
  }

  return v8 & 1;
}

uint64_t sub_253244AC8()
{
  v1 = *v0;
  sub_253CD11C8();
  sub_253243DB4(v1);
  sub_253CD09A8();

  return sub_253CD11E8();
}

uint64_t sub_253244B2C()
{
  sub_253243DB4(*v0);
  sub_253CD09A8();
}

uint64_t sub_253244B80()
{
  v1 = *v0;
  sub_253CD11C8();
  sub_253243DB4(v1);
  sub_253CD09A8();

  return sub_253CD11E8();
}

uint64_t sub_253244BE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_253244DE4();
  *a2 = result;
  return result;
}

uint64_t sub_253244C10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_253243DB4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for HomeCapability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC7)
  {
    goto LABEL_17;
  }

  if (a2 + 57 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 57) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 57;
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

      return (*a1 | (v4 << 8)) - 57;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 57;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3A;
  v8 = v6 - 58;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeCapability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 57 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 57) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC7)
  {
    v4 = 0;
  }

  if (a2 > 0xC6)
  {
    v5 = ((a2 - 199) >> 8) + 1;
    *result = a2 + 57;
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
    *result = a2 + 57;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_253244D90()
{
  result = qword_27F5A38C8;
  if (!qword_27F5A38C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A38C8);
  }

  return result;
}

uint64_t sub_253244DE4()
{
  v0 = sub_253CD1138();

  if (v0 >= 0x3A)
  {
    return 58;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_253244E38(char a1)
{
  result = 0x6669727550726961;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x79726574746162;
      break;
    case 3:
      result = 0x6172656D6163;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x53746361746E6F63;
      break;
    case 7:
      result = 0x6C6C6542726F6F64;
      break;
    case 8:
      result = 0x6B636F4C726F6F64;
      break;
    case 9:
      result = 7233894;
      break;
    case 10:
      result = 0x746563756166;
      break;
    case 11:
      result = 0x7265746C6966;
      break;
    case 12:
      result = 0x6F44656761726167;
      break;
    case 13:
      result = 0x6F43726574616568;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0x79746964696D7568;
      break;
    case 16:
      result = 0x736E65536B61656CLL;
      break;
    case 17:
      result = 0x6C7562746867696CLL;
      break;
    case 18:
      v3 = 0x53746867696CLL;
      goto LABEL_42;
    case 19:
      result = 0x65536E6F69746F6DLL;
      break;
    case 20:
    case 21:
      result = 0x657A69726F746F6DLL;
      break;
    case 22:
      result = 0x636E61707563636FLL;
      break;
    case 23:
      result = 0x74656C74756FLL;
      break;
    case 24:
      result = 0xD000000000000012;
      break;
    case 25:
      result = 0x7974697275636573;
      break;
    case 26:
      result = 0x7265776F6873;
      break;
    case 27:
      result = 1802398067;
      break;
    case 28:
      result = 1952541811;
      break;
    case 29:
      v3 = 0x53656B6F6D73;
LABEL_42:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
      break;
    case 30:
      result = 0x656C6B6E69727073;
      break;
    case 31:
      result = 0x686374697773;
      break;
    case 32:
      result = 0x69736976656C6574;
      break;
    case 33:
      result = 0xD000000000000011;
      break;
    case 34:
      result = 0x74736F6D72656874;
      break;
    case 35:
      result = 0x65766C6176;
      break;
    case 36:
      result = 0x6F43776F646E6977;
      break;
    case 37:
      result = 0x706F4D746F626F72;
      break;
    case 38:
      result = 0x646F50656D6F68;
      break;
    case 39:
      result = 0x5654656C707061;
      break;
    case 40:
      result = 0x72656B61657073;
      break;
    case 41:
      result = 0x6B63696B65646973;
      break;
    case 42:
      result = 0x736564616873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2532452CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A38D0, &qword_253D49FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_253D49FA0;
  v1 = *MEMORY[0x277CCE8E8];
  *(inited + 32) = sub_253CD0968();
  *(inited + 40) = v2;
  *(inited + 48) = 25;
  v3 = *MEMORY[0x277CCE888];
  *(inited + 56) = sub_253CD0968();
  *(inited + 64) = v4;
  *(inited + 72) = 20;
  v5 = *MEMORY[0x277CCE890];
  *(inited + 80) = sub_253CD0968();
  *(inited + 88) = v6;
  *(inited + 96) = 8;
  v7 = *MEMORY[0x277CCE898];
  *(inited + 104) = sub_253CD0968();
  *(inited + 112) = v8;
  *(inited + 120) = 9;
  v9 = *MEMORY[0x277CCE8A8];
  *(inited + 128) = sub_253CD0968();
  *(inited + 136) = v10;
  *(inited + 144) = 12;
  v11 = *MEMORY[0x277CCE8B8];
  *(inited + 152) = sub_253CD0968();
  *(inited + 160) = v12;
  *(inited + 168) = 3;
  v13 = *MEMORY[0x277CCE8C0];
  *(inited + 176) = sub_253CD0968();
  *(inited + 184) = v14;
  *(inited + 192) = 17;
  v15 = *MEMORY[0x277CCE8D0];
  *(inited + 200) = sub_253CD0968();
  *(inited + 208) = v16;
  *(inited + 216) = 23;
  v17 = *MEMORY[0x277CCE8D8];
  *(inited + 224) = sub_253CD0968();
  *(inited + 232) = v18;
  *(inited + 240) = 31;
  v19 = *MEMORY[0x277CCE910];
  *(inited + 248) = sub_253CD0968();
  *(inited + 256) = v20;
  *(inited + 264) = 31;
  v21 = *MEMORY[0x277CCE940];
  *(inited + 272) = sub_253CD0968();
  *(inited + 280) = v22;
  *(inited + 288) = 34;
  v23 = *MEMORY[0x277CCE948];
  *(inited + 296) = sub_253CD0968();
  *(inited + 304) = v24;
  *(inited + 312) = 7;
  v25 = *MEMORY[0x277CCE958];
  *(inited + 320) = sub_253CD0968();
  *(inited + 328) = v26;
  *(inited + 336) = 21;
  v27 = *MEMORY[0x277CCE960];
  *(inited + 344) = sub_253CD0968();
  *(inited + 352) = v28;
  *(inited + 360) = 36;
  v29 = *MEMORY[0x277CCE848];
  *(inited + 368) = sub_253CD0968();
  *(inited + 376) = v30;
  *(inited + 384) = 14;
  v31 = *MEMORY[0x277CCE850];
  *(inited + 392) = sub_253CD0968();
  *(inited + 400) = v32;
  *(inited + 408) = 13;
  v33 = *MEMORY[0x277CCE840];
  *(inited + 416) = sub_253CD0968();
  *(inited + 424) = v34;
  *(inited + 432) = 13;
  v35 = *MEMORY[0x277CCE858];
  *(inited + 440) = sub_253CD0968();
  *(inited + 448) = v36;
  *(inited + 456) = 14;
  v37 = *MEMORY[0x277CCE868];
  *(inited + 464) = sub_253CD0968();
  *(inited + 472) = v38;
  *(inited + 480) = 0;
  v39 = *MEMORY[0x277CCE870];
  *(inited + 488) = sub_253CD0968();
  *(inited + 496) = v40;
  *(inited + 504) = 39;
  v41 = *MEMORY[0x277CCE8B0];
  *(inited + 512) = sub_253CD0968();
  *(inited + 520) = v42;
  *(inited + 528) = 38;
  v43 = *MEMORY[0x277CCE900];
  *(inited + 536) = sub_253CD0968();
  *(inited + 544) = v44;
  *(inited + 552) = 40;
  v45 = *MEMORY[0x277CCE860];
  *(inited + 560) = sub_253CD0968();
  *(inited + 568) = v46;
  *(inited + 576) = 40;
  v47 = *MEMORY[0x277CCE908];
  *(inited + 584) = sub_253CD0968();
  *(inited + 592) = v48;
  *(inited + 600) = 30;
  v49 = *MEMORY[0x277CCE8F8];
  *(inited + 608) = sub_253CD0968();
  *(inited + 616) = v50;
  *(inited + 624) = 26;
  v51 = *MEMORY[0x277CCE8A0];
  *(inited + 632) = sub_253CD0968();
  *(inited + 640) = v52;
  *(inited + 648) = 27;
  v53 = *MEMORY[0x277CCE920];
  *(inited + 656) = sub_253CD0968();
  *(inited + 664) = v54;
  *(inited + 672) = 32;
  v55 = *MEMORY[0x277CCE930];
  *(inited + 680) = sub_253CD0968();
  *(inited + 688) = v56;
  *(inited + 696) = 32;
  v57 = *MEMORY[0x277CCE938];
  *(inited + 704) = sub_253CD0968();
  *(inited + 712) = v58;
  *(inited + 720) = 32;
  v59 = sub_253218954(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A38D8, &qword_253D49FC8);
  result = swift_arrayDestroy();
  qword_27F5B7860 = v59;
  return result;
}

uint64_t sub_2532456A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A38D0, &qword_253D49FC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_253D49FB0;
  v1 = *MEMORY[0x277CD0DD8];
  *(v0 + 32) = sub_253CD0968();
  *(v0 + 40) = v2;
  *(v0 + 48) = 0;
  v3 = *MEMORY[0x277CD0DE0];
  *(v0 + 56) = sub_253CD0968();
  *(v0 + 64) = v4;
  *(v0 + 72) = 1;
  v5 = *MEMORY[0x277CD0DE8];
  *(v0 + 80) = sub_253CD0968();
  *(v0 + 88) = v6;
  *(v0 + 96) = 2;
  v7 = *MEMORY[0x277CD0E10];
  *(v0 + 104) = sub_253CD0968();
  *(v0 + 112) = v8;
  *(v0 + 120) = 4;
  v9 = *MEMORY[0x277CD0E18];
  *(v0 + 128) = sub_253CD0968();
  *(v0 + 136) = v10;
  *(v0 + 144) = 5;
  v11 = *MEMORY[0x277CD0E20];
  *(v0 + 152) = sub_253CD0968();
  *(v0 + 160) = v12;
  *(v0 + 168) = 6;
  v13 = *MEMORY[0x277CD0E38];
  *(v0 + 176) = sub_253CD0968();
  *(v0 + 184) = v14;
  *(v0 + 192) = 7;
  v15 = *MEMORY[0x277CD0EB0];
  *(v0 + 200) = sub_253CD0968();
  *(v0 + 208) = v16;
  *(v0 + 216) = 8;
  v17 = *MEMORY[0x277CD0E40];
  *(v0 + 224) = sub_253CD0968();
  *(v0 + 232) = v18;
  *(v0 + 240) = 9;
  v19 = *MEMORY[0x277CD0F40];
  *(v0 + 248) = sub_253CD0968();
  *(v0 + 256) = v20;
  *(v0 + 264) = 9;
  v21 = *MEMORY[0x277CD0E48];
  *(v0 + 272) = sub_253CD0968();
  *(v0 + 280) = v22;
  *(v0 + 288) = 10;
  v23 = *MEMORY[0x277CD0E50];
  *(v0 + 296) = sub_253CD0968();
  *(v0 + 304) = v24;
  *(v0 + 312) = 11;
  v25 = *MEMORY[0x277CD0E58];
  *(v0 + 320) = sub_253CD0968();
  *(v0 + 328) = v26;
  *(v0 + 336) = 12;
  v27 = *MEMORY[0x277CD0E60];
  *(v0 + 344) = sub_253CD0968();
  *(v0 + 352) = v28;
  *(v0 + 360) = 13;
  v29 = *MEMORY[0x277CD0E68];
  *(v0 + 368) = sub_253CD0968();
  *(v0 + 376) = v30;
  *(v0 + 384) = 14;
  v31 = *MEMORY[0x277CD0E70];
  *(v0 + 392) = sub_253CD0968();
  *(v0 + 400) = v32;
  *(v0 + 408) = 15;
  v33 = *MEMORY[0x277CD0E90];
  *(v0 + 416) = sub_253CD0968();
  *(v0 + 424) = v34;
  *(v0 + 432) = 16;
  v35 = *MEMORY[0x277CD0EA0];
  *(v0 + 440) = sub_253CD0968();
  *(v0 + 448) = v36;
  *(v0 + 456) = 17;
  v37 = *MEMORY[0x277CD0E98];
  *(v0 + 464) = sub_253CD0968();
  *(v0 + 472) = v38;
  *(v0 + 480) = 18;
  v39 = *MEMORY[0x277CD0EC0];
  *(v0 + 488) = sub_253CD0968();
  *(v0 + 496) = v40;
  *(v0 + 504) = 19;
  v41 = *MEMORY[0x277CD0E30];
  *(v0 + 512) = sub_253CD0968();
  *(v0 + 520) = v42;
  *(v0 + 528) = 20;
  v43 = *MEMORY[0x277CD0F58];
  *(v0 + 536) = sub_253CD0968();
  *(v0 + 544) = v44;
  *(v0 + 552) = 21;
  v45 = *MEMORY[0x277CD0EC8];
  *(v0 + 560) = sub_253CD0968();
  *(v0 + 568) = v46;
  *(v0 + 576) = 22;
  v47 = *MEMORY[0x277CD0ED0];
  *(v0 + 584) = sub_253CD0968();
  *(v0 + 592) = v48;
  *(v0 + 600) = 23;
  v49 = *MEMORY[0x277CD0ED8];
  *(v0 + 608) = sub_253CD0968();
  *(v0 + 616) = v50;
  *(v0 + 624) = 25;
  v51 = *MEMORY[0x277CD0EE0];
  *(v0 + 632) = sub_253CD0968();
  *(v0 + 640) = v52;
  *(v0 + 648) = 28;
  v53 = *MEMORY[0x277CD0EE8];
  *(v0 + 656) = sub_253CD0968();
  *(v0 + 664) = v54;
  *(v0 + 672) = 29;
  v55 = *MEMORY[0x277CD0EF0];
  *(v0 + 680) = sub_253CD0968();
  *(v0 + 688) = v56;
  *(v0 + 696) = 40;
  v57 = *MEMORY[0x277CD0E80];
  *(v0 + 704) = sub_253CD0968();
  *(v0 + 712) = v58;
  *(v0 + 720) = 30;
  v59 = *MEMORY[0x277CD0F08];
  *(v0 + 728) = sub_253CD0968();
  *(v0 + 736) = v60;
  *(v0 + 744) = 31;
  v61 = *MEMORY[0x277CD0F28];
  *(v0 + 752) = sub_253CD0968();
  *(v0 + 760) = v62;
  *(v0 + 768) = 33;
  v63 = *MEMORY[0x277CD0F30];
  *(v0 + 776) = sub_253CD0968();
  *(v0 + 784) = v64;
  *(v0 + 792) = 34;
  v65 = *MEMORY[0x277CD0F38];
  *(v0 + 800) = sub_253CD0968();
  *(v0 + 808) = v66;
  *(v0 + 816) = 35;
  v67 = *MEMORY[0x277CD0F60];
  *(v0 + 824) = sub_253CD0968();
  *(v0 + 832) = v68;
  *(v0 + 840) = 36;
  v69 = *MEMORY[0x277CD0F20];
  *(v0 + 848) = sub_253CD0968();
  *(v0 + 856) = v70;
  *(v0 + 864) = 32;
  v71 = *MEMORY[0x277CD0DA8];
  *(v0 + 872) = sub_253CD0968();
  *(v0 + 880) = v72;
  *(v0 + 888) = 30;
  v73 = *MEMORY[0x277CD0DA0];
  *(v0 + 896) = sub_253CD0968();
  *(v0 + 904) = v74;
  *(v0 + 912) = 30;
  v75 = *MEMORY[0x277CD0DC0];
  *(v0 + 920) = sub_253CD0968();
  *(v0 + 928) = v76;
  *(v0 + 936) = 10;
  v77 = *MEMORY[0x277CD0DB0];
  *(v0 + 944) = sub_253CD0968();
  *(v0 + 952) = v78;
  *(v0 + 960) = 26;
  v79 = *MEMORY[0x277CD0DB8];
  *(v0 + 968) = sub_253CD0968();
  *(v0 + 976) = v80;
  *(v0 + 984) = 30;
  v81 = *MEMORY[0x277CD0E00];
  *(v0 + 992) = sub_253CD0968();
  *(v0 + 1000) = v82;
  *(v0 + 1008) = 3;
  v83 = *MEMORY[0x277CD0DF0];
  *(v0 + 1016) = sub_253CD0968();
  *(v0 + 1024) = v84;
  *(v0 + 1032) = 3;
  v85 = *MEMORY[0x277CD0E08];
  *(v0 + 1040) = sub_253CD0968();
  *(v0 + 1048) = v86;
  *(v0 + 1056) = 3;
  v87 = *MEMORY[0x277CD0DF8];
  *(v0 + 1064) = sub_253CD0968();
  *(v0 + 1072) = v88;
  *(v0 + 1080) = 3;
  v89 = sub_253218954(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A38D8, &qword_253D49FC8);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F5B7868 = v89;
  return result;
}

unint64_t sub_253245C60()
{
  result = sub_253218A70(&unk_2864F9458);
  qword_27F5B7870 = result;
  return result;
}

uint64_t sub_253245C88(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_253244E38(*a1);
  v5 = v4;
  if (v3 == sub_253244E38(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_253CD1118();
  }

  return v8 & 1;
}

uint64_t sub_253245D10()
{
  v1 = *v0;
  sub_253CD11C8();
  sub_253244E38(v1);
  sub_253CD09A8();

  return sub_253CD11E8();
}

uint64_t sub_253245D74()
{
  sub_253244E38(*v0);
  sub_253CD09A8();
}

uint64_t sub_253245DC8()
{
  v1 = *v0;
  sub_253CD11C8();
  sub_253244E38(v1);
  sub_253CD09A8();

  return sub_253CD11E8();
}

uint64_t sub_253245E28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25324602C();
  *a2 = result;
  return result;
}

uint64_t sub_253245E58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_253244E38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for HomeDeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD6)
  {
    goto LABEL_17;
  }

  if (a2 + 42 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 42) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 42;
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

      return (*a1 | (v4 << 8)) - 42;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 42;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2B;
  v8 = v6 - 43;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeDeviceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 42 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 42) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD6)
  {
    v4 = 0;
  }

  if (a2 > 0xD5)
  {
    v5 = ((a2 - 214) >> 8) + 1;
    *result = a2 + 42;
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
    *result = a2 + 42;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_253245FD8()
{
  result = qword_27F5A38E0;
  if (!qword_27F5A38E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A38E0);
  }

  return result;
}

uint64_t sub_25324602C()
{
  v0 = sub_253CD1138();

  if (v0 >= 0x2B)
  {
    return 43;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for HomeError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD0)
  {
    goto LABEL_17;
  }

  if (a2 + 48 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 48) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 48;
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

      return (*a1 | (v4 << 8)) - 48;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 48;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x31;
  v8 = v6 - 49;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 48 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 48) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD0)
  {
    v4 = 0;
  }

  if (a2 > 0xCF)
  {
    v5 = ((a2 - 208) >> 8) + 1;
    *result = a2 + 48;
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
    *result = a2 + 48;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2532461D0(char a1)
{
  result = 0x6544737365636361;
  switch(a1)
  {
    case 1:
    case 16:
    case 22:
      return 0xD000000000000016;
    case 2:
    case 15:
    case 23:
    case 30:
      v3 = 5;
      goto LABEL_27;
    case 3:
      v3 = 11;
      goto LABEL_27;
    case 4:
    case 32:
    case 42:
    case 46:
      return 0xD00000000000001CLL;
    case 5:
      return 0x6F4C656369766564;
    case 6:
      return 0x4D6E696274737564;
    case 7:
      return 0x466E696274737564;
    case 8:
      return 0xD000000000000010;
    case 9:
      return 0x6574746142776F6CLL;
    case 10:
      return 0x694D646150706F6DLL;
    case 11:
    case 20:
      return 0xD000000000000014;
    case 12:
      return 0xD000000000000013;
    case 13:
      return 0xD000000000000010;
    case 14:
    case 24:
    case 25:
      return 0xD000000000000011;
    case 17:
    case 40:
    case 41:
    case 48:
      return 0xD000000000000017;
    case 18:
    case 19:
    case 29:
      return 0xD000000000000012;
    case 21:
      return 0xD000000000000010;
    case 26:
      return 0xD000000000000010;
    case 27:
      return 0x6E61547265746177;
    case 28:
      return 0xD000000000000010;
    case 31:
    case 34:
    case 37:
      return 0xD00000000000002ELL;
    case 33:
      return 0xD000000000000018;
    case 35:
      return 0xD00000000000001FLL;
    case 36:
      return 0xD000000000000020;
    case 38:
      return 0xD000000000000025;
    case 39:
      return 0xD000000000000028;
    case 43:
      v3 = 9;
LABEL_27:
      result = v3 | 0xD000000000000010;
      break;
    case 44:
      result = 0x6C616E7265746E69;
      break;
    case 45:
      result = 0xD000000000000010;
      break;
    case 47:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_253246658(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2532461D0(*a1);
  v5 = v4;
  if (v3 == sub_2532461D0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_253CD1118();
  }

  return v8 & 1;
}

uint64_t sub_2532466E0()
{
  v1 = *v0;
  sub_253CD11C8();
  sub_2532461D0(v1);
  sub_253CD09A8();

  return sub_253CD11E8();
}

uint64_t sub_253246744()
{
  sub_2532461D0(*v0);
  sub_253CD09A8();
}

uint64_t sub_253246798()
{
  v1 = *v0;
  sub_253CD11C8();
  sub_2532461D0(v1);
  sub_253CD09A8();

  return sub_253CD11E8();
}

uint64_t sub_2532467F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2532468B8();
  *a2 = result;
  return result;
}

unint64_t sub_253246828@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2532461D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_253246858()
{
  result = qword_27F5A38E8;
  if (!qword_27F5A38E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A38E8);
  }

  return result;
}

uint64_t sub_2532468B8()
{
  v0 = sub_253CD1138();

  if (v0 >= 0x31)
  {
    return 49;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25324690C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2532168A0(a3, v27 - v11, qword_27F5A2C48, &unk_253D48880);
  v13 = sub_253CD0B58();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_253206054(v12, qword_27F5A2C48, &unk_253D48880);
  }

  else
  {
    sub_253CD0B48();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_253CD0AB8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_253CD0988() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_253206054(a3, qword_27F5A2C48, &unk_253D48880);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_253206054(a3, qword_27F5A2C48, &unk_253D48880);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_253246C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2532168A0(a3, v27 - v11, qword_27F5A2C48, &unk_253D48880);
  v13 = sub_253CD0B58();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_253206054(v12, qword_27F5A2C48, &unk_253D48880);
  }

  else
  {
    sub_253CD0B48();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_253CD0AB8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_253CD0988() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3938, &qword_253D4A338);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_253206054(a3, qword_27F5A2C48, &unk_253D48880);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_253206054(a3, qword_27F5A2C48, &unk_253D48880);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3938, &qword_253D4A338);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_253246F20()
{
  result = sub_253CD0938();
  qword_281532BE8 = result;
  return result;
}

uint64_t sub_253246F58()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  sub_253206054((v0 + 24), &qword_27F5A3630, &unk_253D49680);
  v2 = v0[29];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25324701C()
{
  v1[7] = v0;
  v1[8] = *v0;
  v2 = sub_253CD07E8();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v5 = type metadata accessor for CascadeIndexer.CascadeIndexingSession();
  v1[13] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v7 = sub_253CD0738();
  v1[15] = v7;
  v8 = *(v7 - 8);
  v1[16] = v8;
  v9 = *(v8 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2532471A8, v0, 0);
}

uint64_t sub_2532471A8()
{
  if (qword_2815314E0 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_253CD0768();
  __swift_project_value_buffer(v2, qword_281532BF8);
  sub_253CD0728();
  v3 = sub_253CD0758();
  v4 = sub_253CD0D58();
  if (sub_253CD0DA8())
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_253CD0718();
    _os_signpost_emit_with_name_impl(&dword_2531F8000, v3, v4, v7, "CascadeIndexer.indexAllHomes.signpost", "", v6, 2u);
    MEMORY[0x259C040E0](v6, -1, -1);
  }

  v8 = v0[17];
  v9 = v0[18];
  v10 = v0[15];
  v11 = v0[16];

  (*(v11 + 16))(v8, v9, v10);
  v12 = sub_253CD07A8();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[19] = sub_253CD0798();
  (*(v11 + 8))(v9, v10);
  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_25324738C;
  v16 = v0[14];

  return sub_253247F44(v16);
}

uint64_t sub_25324738C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_253247A7C;
  }

  else
  {
    v6 = sub_2532474B8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2532474B8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[7];
  v4 = *(v3 + 136);
  v5 = __swift_project_boxed_opaque_existential_0((v3 + 112), v4);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  (*(v6 + 16))(v8, v5, v4);
  v9 = *v8;
  v0[22] = *v8;
  v10 = *(v6 + 8);
  v11 = v9;
  v10(v8, v4);

  v0[5] = v2;
  v0[6] = &off_2864FBEB8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_2532515B0(v1, boxed_opaque_existential_0, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  v13 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v14 = swift_task_alloc();
  v0[23] = v14;
  *v14 = v0;
  v14[1] = sub_253247678;

  return sub_253250F9C(v11, v13);
}

uint64_t sub_253247678()
{
  v1 = *v0;
  v2 = (*v0)[23];
  v3 = (*v0)[22];
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_0(v1 + 2);
  v5 = swift_task_alloc();
  v1[24] = v5;
  *v5 = v4;
  v5[1] = sub_2532477D8;
  v6 = v1[14];

  return sub_253248480();
}

uint64_t sub_2532477D8()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2532478E8, v2, 0);
}

uint64_t sub_2532478E8()
{
  v1 = v0[12];
  sub_253211D58(v0[8], &off_2864FBD60);
  v2 = sub_253CD07C8();
  v3 = sub_253CD0C78();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[14];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2531F8000, v2, v3, "Finished marking the cascade donation as complete", v9, 2u);
    MEMORY[0x259C040E0](v9, -1, -1);
  }

  (*(v8 + 8))(v6, v7);
  sub_253251550(v5, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  v10 = v0[18];
  v11 = v0[19];
  v12 = v0[17];
  v13 = v0[14];
  v15 = v0[11];
  v14 = v0[12];
  sub_253247C68("CascadeIndexer.indexAllHomes.signpost", 37, 2);

  v16 = v0[1];

  return v16();
}

uint64_t sub_253247A7C()
{
  v1 = v0[21];
  v2 = v0[11];
  sub_253211D58(v0[8], &off_2864FBD60);
  v3 = v1;
  v4 = sub_253CD07C8();
  v5 = sub_253CD0C98();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[21];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2531F8000, v4, v5, "Error occurred during cascade donation: %@", v8, 0xCu);
    sub_253206054(v9, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v9, -1, -1);
    MEMORY[0x259C040E0](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[10] + 8))(v0[11], v0[9]);
  v12 = v0[18];
  v13 = v0[19];
  v14 = v0[17];
  v15 = v0[14];
  v17 = v0[11];
  v16 = v0[12];
  sub_253247C68("CascadeIndexer.indexAllHomes.signpost", 37, 2);

  v18 = v0[1];

  return v18();
}