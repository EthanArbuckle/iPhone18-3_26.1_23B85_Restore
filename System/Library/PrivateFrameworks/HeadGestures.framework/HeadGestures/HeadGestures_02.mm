uint64_t sub_25111CE0C(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E0E8, &qword_251132AA8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v84[-v10];
  v12 = sub_251130B38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v84[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v84[-v18];

  v20 = sub_251117968(a1, a2);
  v21 = OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_isGateOpen;
  if (*(v4 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_isGateOpen) == 1)
  {
    swift_beginAccess();
    v22 = *(v4 + 16);
    v23 = *(v4 + 32);
    if (*(v22 + 16))
    {
      v24 = sub_25112F9FC(v20);
      if (v25)
      {
        v23 = *(*(v22 + 56) + 48 * v24 + 8);
      }
    }

    if (v23 > a3)
    {
      LOBYTE(v20) = 0;
    }
  }

  else
  {
    v37 = OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_timeLastPoolClosed;
    swift_beginAccess();
    sub_2510F64EC(v4 + v37, v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_2510F655C(v11);
    }

    else
    {
      (*(v13 + 32))(v19, v11, v12);
      sub_251130B28();
      sub_251130A98();
      v51 = v50;
      v52 = *(v13 + 8);
      v52(v17, v12);
      v53 = *(v4 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_motionLastPoolClosed);
      if (*(v4 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_motionLastPoolClosed))
      {
        swift_beginAccess();
        v54 = *(v4 + 16);
        v55 = *(v4 + 64);
        if (*(v54 + 16) && (v56 = sub_25112F9FC(v53), (v57 & 1) != 0))
        {
          v58 = *(*(v54 + 56) + 48 * v56 + 40);

          v52(v19, v12);

          if (v51 < v58)
          {
            return 0;
          }
        }

        else
        {
          v52(v19, v12);
          if (v51 < v55)
          {
            return 0;
          }
        }
      }

      else
      {
        v52(v19, v12);
      }
    }

    if (!sub_25112BF44(v20, *(v4 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_motionList)))
    {
      return 0;
    }

    swift_beginAccess();
    v66 = *(v4 + 16);
    v67 = *(v4 + 24);
    if (*(v66 + 16))
    {
      v68 = sub_25112F9FC(v20);
      if (v69)
      {
        v67 = *(*(v66 + 56) + 48 * v68);
      }
    }

    if (v67 > a3)
    {
      return 0;
    }

    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v70 = sub_251130BE8();
    __swift_project_value_buffer(v70, qword_27F421A38);
    v71 = sub_251130BC8();
    v72 = sub_251131178();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v85 = v74;
      v75 = 0x756F72676B636142;
      *v73 = 136315138;
      v76 = 0xE200000000000000;
      v77 = 28494;
      v78 = 0xEA00000000007468;
      v79 = 0x67695220746C6954;
      if (v20 != 3)
      {
        v79 = 0x6E776F6E6B6E55;
        v78 = 0xE700000000000000;
      }

      if (v20 != 2)
      {
        v77 = v79;
        v76 = v78;
      }

      v80 = 0xE300000000000000;
      if (v20)
      {
        v75 = 7562585;
      }

      else
      {
        v80 = 0xEA0000000000646ELL;
      }

      if (v20 <= 1u)
      {
        v81 = v75;
      }

      else
      {
        v81 = v77;
      }

      if (v20 <= 1u)
      {
        v82 = v80;
      }

      else
      {
        v82 = v76;
      }

      v83 = sub_2510FAC50(v81, v82, &v85);

      *(v73 + 4) = v83;
      _os_log_impl(&dword_2510F2000, v71, v72, "[AG] Opening gate for '%s' prediction", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x25306CC10](v74, -1, -1);
      MEMORY[0x25306CC10](v73, -1, -1);
    }

    *(v4 + v21) = 1;
    *(v4 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_gestureForThePool) = v20;
  }

  v26 = OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_predictionsInPool;
  swift_beginAccess();
  v27 = *(v4 + v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v26) = v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = sub_251109B2C(0, *(v27 + 2) + 1, 1, v27);
    *(v4 + v26) = v27;
  }

  v30 = *(v27 + 2);
  v29 = *(v27 + 3);
  if (v30 >= v29 >> 1)
  {
    v27 = sub_251109B2C((v29 > 1), v30 + 1, 1, v27);
  }

  *(v27 + 2) = v30 + 1;
  v31 = &v27[16 * v30];
  v31[32] = v20;
  *(v31 + 5) = a3;
  *(v4 + v26) = v27;
  swift_endAccess();
  if (sub_25111B2EC())
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v32 = sub_251130BE8();
    __swift_project_value_buffer(v32, qword_27F421A38);
    v33 = sub_251130BC8();
    v34 = sub_251131178();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_28;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "[AG]Closing gate since recent predictions are consistent";
    goto LABEL_26;
  }

  v38 = OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_gestureForThePool;
  v39 = *(v4 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_gestureForThePool);
  swift_beginAccess();
  v40 = *(v4 + 16);
  v41 = *(v4 + 48);
  if (*(v40 + 16))
  {
    v42 = sub_25112F9FC(v39);
    if (v43)
    {
      v41 = *(*(v40 + 56) + 48 * v42 + 24);
    }
  }

  if (sub_25111B234(0, v41))
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v44 = sub_251130BE8();
    __swift_project_value_buffer(v44, qword_27F421A38);
    v33 = sub_251130BC8();
    v34 = sub_251131178();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_28;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "[AG]Closing gate since pool has max number of background windows";
LABEL_26:
    v45 = v34;
    v46 = v33;
    v47 = v35;
    v48 = 2;
LABEL_27:
    _os_log_impl(&dword_2510F2000, v46, v45, v36, v47, v48);
    MEMORY[0x25306CC10](v35, -1, -1);
LABEL_28:

    return sub_25111A518();
  }

  v59 = *(*(v4 + v26) + 16);
  v60 = *(v4 + 16);
  v61 = *(v4 + 40);
  if (*(v60 + 16))
  {
    v62 = sub_25112F9FC(*(v4 + v38));
    if (v63)
    {
      v61 = *(*(v60 + 56) + 48 * v62 + 16);
    }
  }

  if (v59 == v61)
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v64 = sub_251130BE8();
    __swift_project_value_buffer(v64, qword_27F421A38);

    v33 = sub_251130BC8();
    v65 = sub_251131178();
    if (!os_log_type_enabled(v33, v65))
    {

      return sub_25111A518();
    }

    v35 = swift_slowAlloc();
    *v35 = 134217984;
    *(v35 + 4) = *(*(v4 + v26) + 16);

    v36 = "[AG]Closing gate since there are %ld predictions in pool";
    v45 = v65;
    v46 = v33;
    v47 = v35;
    v48 = 12;
    goto LABEL_27;
  }

  return 0;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_25111D718(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25111D738(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

unint64_t sub_25111D780()
{
  result = qword_27F41E930;
  if (!qword_27F41E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E930);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HGAggregationParameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HGAggregationParameters.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25111D928()
{
  result = qword_27F41E940;
  if (!qword_27F41E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E940);
  }

  return result;
}

unint64_t sub_25111D980()
{
  result = qword_27F41E948;
  if (!qword_27F41E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E948);
  }

  return result;
}

unint64_t sub_25111D9D8()
{
  result = qword_27F41E950;
  if (!qword_27F41E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E950);
  }

  return result;
}

void *sub_25111DA2C(void *a1)
{
  v2 = v1;
  v3 = MEMORY[0x277D84F98];
  v1[4] = 0;
  v1[5] = v3;
  v1[6] = 0;
  v1[2] = a1;
  v1[3] = 0;
  v4 = qword_27F41DFB0;
  v5 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_251130BE8();
  __swift_project_value_buffer(v6, qword_27F421A38);
  v7 = sub_251130BC8();
  v8 = sub_251131168();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2510F2000, v7, v8, "[HGModel] using v2 model", v9, 2u);
    MEMORY[0x25306CC10](v9, -1, -1);
  }

  return v2;
}

void sub_25111DB34()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  sub_251106168();
  if (v2)
  {
    sub_251130F78();
    sub_251130F78();
    sub_251130F78();
    precompiled_compute_operation = e5rt_execution_stream_operation_create_precompiled_compute_operation();

    if (precompiled_compute_operation)
    {
      sub_251120E74();
      v4 = swift_allocError();
      *v5 = precompiled_compute_operation;
      *(v5 + 4) = 0;
    }

    else
    {
      sub_251120EC8();
      v4 = swift_allocError();
      *v14 = 0;
    }

    swift_willThrow();

    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v6 = sub_251130BE8();
    __swift_project_value_buffer(v6, qword_27F421A38);
    v7 = sub_251130BC8();
    v8 = sub_251131188();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2510F2000, v7, v8, "[HGEspressoV2Model] loadModel Error: Failed to load E5 model", v9, 2u);
      MEMORY[0x25306CC10](v9, -1, -1);
    }

    v15 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v10 = sub_251130BE8();
    __swift_project_value_buffer(v10, qword_27F421A38);
    oslog = sub_251130BC8();
    v11 = sub_251131188();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2510F2000, oslog, v11, "[HGEspressoV2Model] loadModel Error: invalid model path.", v12, 2u);
      MEMORY[0x25306CC10](v12, -1, -1);
    }

    v13 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_25111E5C0(uint64_t a1, uint64_t a2, char a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(v3 + 24))
  {
    if (a3)
    {
      v6 = sub_251120F54;
    }

    else
    {
      v6 = sub_251120F24;
    }

    swift_retain_n();
    v7 = *(v6(a1, a2) + 16);
    v8 = e5rt_io_port_retain_tensor_desc();
    if (v8)
    {
      v9 = v8;
      sub_251120E74();
      v10 = swift_allocError();
      *v11 = v9;
      *(v11 + 4) = 0;
    }

    else
    {
      sub_251120EC8();
      v10 = swift_allocError();
      *v14 = 0;
    }

    swift_willThrow();
  }

  result = 0;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25111E880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void *))
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 16);
  v13[0] = 0;
  v6 = sub_251130F78();
  v7 = a4(v5, v6 + 32, v13);

  if (v7)
  {
    sub_251120E74();
    swift_allocError();
    *v8 = v7;
    *(v8 + 4) = 0;
  }

  else
  {
    v10 = v13[0];
    if (v13[0])
    {
      type metadata accessor for E5RTIOPort();
      result = swift_allocObject();
      *(result + 16) = v10;
      goto LABEL_6;
    }

    sub_251120EC8();
    swift_allocError();
    *v12 = 0;
  }

  result = swift_willThrow();
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25111E994(void *a1)
{
  v123 = *MEMORY[0x277D85DE8];
  result = *(v1 + 32);
  if (!result)
  {
    goto LABEL_41;
  }

  v117 = 1;
  v112 = result;

  v4 = sub_25113072C(&unk_286331338);
  swift_arrayDestroy();
  v6 = v4 + 56;
  v5 = *(v4 + 56);
  v116 = v4;
  v7 = 1 << *(v4 + 32);
  v8 = v114;
  v9 = -1;
  if (v7 < 64)
  {
    v9 = ~(-1 << v7);
  }

  v10 = v9 & v5;
  swift_beginAccess();
  v11 = 0;
  v113 = 0;
  v12 = (v7 + 63) >> 6;
  *&v13 = 136315138;
  v111 = v13;
  v115 = a1;
  while (v10)
  {
LABEL_11:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = (*(v116 + 48) + ((v11 << 10) | (16 * v15)));
    v17 = *v16;
    v18 = v16[1];

    v19 = sub_251107B58(v17, v18);
    if (v19 && (v20 = v19, v21 = [v19 multiArrayValue], v20, v21))
    {
      v22 = v8[5];
      if (!*(v22 + 16))
      {
        goto LABEL_21;
      }

      v23 = v8[5];

      v24 = sub_25112EA1C(v17, v18);
      if ((v25 & 1) == 0)
      {

LABEL_21:

        goto LABEL_5;
      }

      v26 = v21;
      v27 = *(*(v22 + 56) + 8 * v24);

      v110 = v108;
      MEMORY[0x28223BE20](v28);
      v108[-4] = v27;
      v108[-3] = v17;
      v29 = v26;
      v108[-2] = v18;
      v108[-1] = &v117;
      v30 = v113;
      sub_251131128();
      if (v30)
      {
        v108[1] = v27;
        v109 = v29;

        if (qword_27F41DFB0 != -1)
        {
          swift_once();
        }

        v31 = sub_251130BE8();
        __swift_project_value_buffer(v31, qword_27F421A38);
        v32 = v30;
        v33 = sub_251130BC8();
        v34 = sub_251131188();

        v35 = os_log_type_enabled(v33, v34);
        v36 = v109;
        if (v35)
        {
          v37 = swift_slowAlloc();
          v113 = v30;
          v38 = v37;
          v39 = swift_slowAlloc();
          v118 = v39;
          *v38 = v111;
          swift_getErrorValue();
          v110 = v33;
          v40 = sub_251131548();
          v42 = sub_2510FAC50(v40, v41, &v118);

          *(v38 + 4) = v42;
          v43 = v110;
          _os_log_impl(&dword_2510F2000, v110, v34, "[HGEspressoV2Model]:loadData Error %s", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v39);
          MEMORY[0x25306CC10](v39, -1, -1);
          MEMORY[0x25306CC10](v38, -1, -1);
        }

        else
        {
        }

        v8 = v114;
        v113 = 0;
        v117 = 0;
      }

      else
      {
        v113 = 0;

        v8 = v114;
      }
    }

    else
    {
LABEL_5:
    }
  }

  while (2)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v14 < v12)
    {
      v10 = *(v6 + 8 * v14);
      ++v11;
      if (v10)
      {
        v11 = v14;
        goto LABEL_11;
      }

      continue;
    }

    break;
  }

  if ((v117 & 1) == 0)
  {
    goto LABEL_29;
  }

  v44 = *(v112 + 16);
  v45 = e5rt_execution_stream_execute_sync();
  if (v45)
  {
    v46 = v45;
    sub_251120E74();
    v47 = swift_allocError();
    *v48 = v46;
    *(v48 + 4) = 0;
    swift_willThrow();
    goto LABEL_35;
  }

  v49 = v8[6];
  if (!v49)
  {
LABEL_29:

    goto LABEL_40;
  }

  v122 = xmmword_2511348A0;
  v50 = *(v49 + 16);
  v118 = 0;

  data_ptr = e5rt_buffer_object_get_data_ptr();
  if (data_ptr)
  {
    v52 = data_ptr;
    sub_251120E74();
    v47 = swift_allocError();
    *v53 = v52;
    goto LABEL_33;
  }

  v8 = v118;
  if (!v118)
  {
    sub_251120EC8();
    v47 = swift_allocError();
    *v66 = 0;
    goto LABEL_34;
  }

  v118 = 0;
  size = e5rt_buffer_object_get_size();
  if (!size)
  {
LABEL_48:
    v67 = v8 + v118;
    v68 = v8;
    v69 = v113;
    sub_251120350(&v122, v68, v67);
    v70 = v122;
    v71 = *(&v122 + 1) >> 62;
    if ((*(&v122 + 1) >> 62) > 1)
    {
      if (v71 != 2)
      {
        goto LABEL_74;
      }

      v77 = *(v122 + 16);
      v78 = *(v122 + 24);
      v79 = sub_251130918();
      if (v79)
      {
        v80 = sub_251130938();
        v70 = v77 - v80;
        if (__OFSUB__(v77, v80))
        {
          goto LABEL_93;
        }

        v79 += v70;
      }

      v81 = __OFSUB__(v78, v77);
      v82 = v78 - v77;
      if (!v81)
      {
        goto LABEL_63;
      }

      __break(1u);
    }

    else if (!v71)
    {
      v118 = v122;
      v119 = DWORD2(v122);
      v120 = WORD6(v122);
      v72 = (*(&v122 + 1) >> 50) & 0x3FLL;
      if (v72)
      {
        v73 = sub_25111F8B8((*(&v122 + 1) >> 50) & 0x3FLL, 0);
        v74 = 4 * v72;
        v75 = v73 + 8;
        v76 = &v118;
LABEL_72:
        memcpy(v75, v76, v74);
LABEL_75:
        if (*(v73 + 2) != 3)
        {
          if (qword_27F41DFB0 != -1)
          {
            swift_once();
          }

          v96 = sub_251130BE8();
          __swift_project_value_buffer(v96, qword_27F421A38);

          v97 = sub_251130BC8();
          v98 = sub_251131188();

          if (os_log_type_enabled(v97, v98))
          {
            v99 = swift_slowAlloc();
            v100 = swift_slowAlloc();
            v118 = v100;
            *v99 = v111;
            v101 = MEMORY[0x25306BE80](v73, MEMORY[0x277D83A90]);
            v103 = v102;

            v104 = sub_2510FAC50(v101, v103, &v118);

            *(v99 + 4) = v104;
            _os_log_impl(&dword_2510F2000, v97, v98, "[HGEspressoV2Model]:prediction Error, invalid output %s", v99, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v100);
            MEMORY[0x25306CC10](v100, -1, -1);
            MEMORY[0x25306CC10](v99, -1, -1);
          }

          else
          {
          }

          sub_251106114(v122, *(&v122 + 1));
          goto LABEL_40;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E968, &qword_251134928);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_251133110;
        *(inited + 32) = 0x756F72676B636142;
        *(inited + 40) = 0xEA0000000000646ELL;
        *(inited + 48) = v73[8];
        *(inited + 56) = 7562585;
        *(inited + 64) = 0xE300000000000000;
        *(inited + 72) = v73[9];
        *(inited + 80) = 28494;
        *(inited + 88) = 0xE200000000000000;
        *(inited + 96) = v73[10];
        v92 = sub_251120D50(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E970, &qword_251134930);
        swift_arrayDestroy();
        v116 = v92;
        v93 = *(v92 + 16);
        if (v93)
        {
          v113 = v69;
          v94 = sub_25111F93C(v93, 0);
          v95 = sub_251120668(&v118, v94 + 4, v93, v116);
          v114 = v121;
          v115 = v95;

          sub_251120F1C();
          if (v115 != v93)
          {
            goto LABEL_91;
          }

          v69 = v113;
        }

        else
        {
          v94 = MEMORY[0x277D84F90];
        }

        v118 = v94;
        sub_25111F9CC(&v118);
        if (v69)
        {
LABEL_96:

          __break(1u);
          return result;
        }

        v69 = v118;
        if (v118[2])
        {

          if (v69[2])
          {
            v105 = v69[4];
            v106 = v69[5];

            type metadata accessor for HGMLOutput();
            swift_allocObject();
            v107 = sub_25112E424(v116);

            sub_251106114(v122, *(&v122 + 1));
            result = v107;
            goto LABEL_41;
          }

          __break(1u);
LABEL_91:
          __break(1u);
        }

LABEL_95:

        __break(1u);
        goto LABEL_96;
      }

      goto LABEL_74;
    }

    v83 = v70;
    v84 = v70 >> 32;
    v82 = v84 - v83;
    if (v84 >= v83)
    {
      v85 = sub_251130918();
      if (!v85)
      {
        sub_251130928();
        goto LABEL_74;
      }

      v86 = v85;
      v87 = sub_251130938();
      if (!__OFSUB__(v83, v87))
      {
        v79 = v83 - v87 + v86;
LABEL_63:
        v88 = sub_251130928();
        if (v79)
        {
          v89 = v88 >= v82 ? v82 : v88;
          if ((v89 + 3) >= 7)
          {
            if (v89 >= 0)
            {
              v90 = v89;
            }

            else
            {
              v90 = v89 + 3;
            }

            v73 = sub_25111F8B8(v90 >> 2, 0);
            v75 = v73 + 8;
            v74 = v90 & 0xFFFFFFFFFFFFFFFCLL;
            v76 = v79;
            goto LABEL_72;
          }
        }

LABEL_74:
        v73 = MEMORY[0x277D84F90];
        goto LABEL_75;
      }

LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v65 = size;
  sub_251120E74();
  v47 = swift_allocError();
  *v53 = v65;
LABEL_33:
  *(v53 + 4) = 0;
LABEL_34:
  swift_willThrow();

  sub_251106114(v122, *(&v122 + 1));
LABEL_35:
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v54 = sub_251130BE8();
  __swift_project_value_buffer(v54, qword_27F421A38);
  v55 = v47;
  v56 = sub_251130BC8();
  v57 = sub_251131188();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v118 = v59;
    *v58 = v111;
    swift_getErrorValue();
    v60 = sub_251131548();
    v62 = sub_2510FAC50(v60, v61, &v118);

    *(v58 + 4) = v62;
    _os_log_impl(&dword_2510F2000, v56, v57, "[HGEspressoV2Model]:prediction Error %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x25306CC10](v59, -1, -1);
    MEMORY[0x25306CC10](v58, -1, -1);
  }

  else
  {
  }

LABEL_40:
  result = 0;
LABEL_41:
  v63 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25111F574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a3 + 16);
  v9 = 0;
  data_ptr = e5rt_buffer_object_get_data_ptr();
  if (data_ptr)
  {
    v5 = data_ptr;
    sub_251120E74();
    swift_allocError();
    *v6 = v5;
    *(v6 + 4) = 0;
  }

  else
  {
    sub_251120EC8();
    swift_allocError();
    *v8 = 0;
  }

  swift_willThrow();
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25111F7F4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return swift_deallocClassInstance();
}

void *sub_25111F8B8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6C8, &qword_251133580);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_25111F93C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E8E0, &qword_251134628);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

uint64_t sub_25111F9CC(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2511207C4(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_2511314F8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 8);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[3 * i + 6];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 2) >= v11)
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 3;
          v16 = *(v13 + 2);
          *(v13 + 4) = v15;
          *(v13 + 1) = v14;
          *(v13 - 1) = v16;
          v13[1] = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E8E8, &unk_251134630);
      v7 = sub_251131088();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_25111FB3C(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_25111FB3C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_25112033C(v7);
      v7 = result;
    }

    v85 = (v7 + 16);
    v86 = *(v7 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v7 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_251120100((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v9) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v27 + v10);
            v22 = (v27 + v18);
            v23 = *v21;
            v24 = v21[1];
            v25 = v21[2];
            v26 = *v22;
            *v21 = *(v22 - 1);
            v21[2] = v26;
            *(v22 - 2) = v23;
            *(v22 - 1) = v24;
            *v22 = v25;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_251109A28(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v38 = *(v7 + 16);
    v37 = *(v7 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_251109A28((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v39;
    v40 = v7 + 32;
    v41 = (v7 + 32 + 16 * v38);
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 32);
          v44 = *(v7 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v7 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v40 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v7 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v40 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
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

        v80 = (v40 + 16 * (v42 - 1));
        v81 = *v80;
        v82 = (v40 + 16 * v42);
        v83 = v82[1];
        sub_251120100((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v7 + 16);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove((v40 + 16 * v42), v82 + 2, 16 * (v84 - 1 - v42));
        *(v7 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v40 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v7 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v40 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6 + 16);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*(v33 - 1) >= v31)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *v33;
    v35 = *(v33 + 1);
    *v33 = *(v33 - 3);
    v33[2] = *(v33 - 1);
    *(v33 - 2) = v35;
    *(v33 - 1) = v31;
    *(v33 - 3) = v34;
    v33 -= 3;
    if (__CFADD__(v32++, 1))
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

uint64_t sub_251120100(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v6 - 1) < *(v12 - 1))
      {
        v19 = v6 - 3;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 3, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 3;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 3;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t *sub_251120350(uint64_t *result, const void *a2, uint64_t a3)
{
  v4 = result;
  v23 = *MEMORY[0x277D85DE8];
  v6 = *result;
  v5 = result[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (v7)
    {

      sub_251106114(v6, v5);
      __dst = v6;
      v22 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_2511348B0;
      sub_251106114(0, 0xC000000000000000);
      result = sub_2511205C4(&__dst, a2, a3);
      v8 = __dst;
      v9 = v22 | 0x4000000000000000;
    }

    else
    {
      result = sub_251106114(v6, v5);
      __dst = v6;
      LOWORD(v22) = v5;
      BYTE2(v22) = BYTE2(v5);
      BYTE3(v22) = BYTE3(v5);
      BYTE4(v22) = BYTE4(v5);
      BYTE5(v22) = BYTE5(v5);
      BYTE6(v22) = BYTE6(v5);
      if (a2)
      {
        result = memcpy(&__dst, a2, a3 - a2);
      }

      v8 = __dst;
      v9 = v22 | ((WORD2(v22) | (BYTE6(v22) << 16)) << 32);
    }

    *v4 = v8;
    v4[1] = v9;
    goto LABEL_14;
  }

  if (v7 != 2)
  {
LABEL_14:
    v19 = *MEMORY[0x277D85DE8];
    return result;
  }

  v11 = *result;

  sub_251106114(v6, v5);
  __dst = v6;
  v22 = v5 & 0x3FFFFFFFFFFFFFFFLL;
  *v4 = xmmword_2511348B0;
  sub_251106114(0, 0xC000000000000000);
  sub_2511309F8();
  v12 = v22;
  v13 = *(__dst + 16);
  result = sub_251130918();
  if (result)
  {
    v14 = result;
    v15 = sub_251130938();
    v16 = __OFSUB__(v13, v15);
    v17 = v13 - v15;
    if (v16)
    {
      __break(1u);
    }

    result = sub_251130928();
    if (a2)
    {
      result = memmove(v14 + v17, a2, a3 - a2);
    }

    *v4 = __dst;
    v4[1] = v12 | 0x8000000000000000;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_2511205C4(int *a1, const void *a2, uint64_t a3)
{
  result = sub_251130A08();
  v7 = *a1;
  if (a1[1] < v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = *(a1 + 1);

  result = sub_251130918();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v9 = result;
  result = sub_251130938();
  v10 = __OFSUB__(v7, result);
  v11 = v7 - result;
  if (v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_251130928();
  if (a2)
  {
    memmove((v9 + v11), a2, a3 - a2);
  }
}

void *sub_251120668(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_2511207D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E978, &qword_251134938);
    v3 = sub_2511313F8();
    v4 = a1 + 32;

    while (1)
    {
      sub_251120F84(v4, &v13, &qword_27F41E980, &unk_251134940);
      v5 = v13;
      v6 = v14;
      result = sub_25112EA1C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2510FC400(&v15, (v3[7] + 32 * result));
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

unint64_t sub_251120908(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E990, &unk_251134970);
    v3 = sub_2511313F8();
    v4 = a1 + 32;

    while (1)
    {
      sub_251120F84(v4, &v11, &qword_27F41E850, &qword_251134000);
      v5 = v11;
      result = sub_25112EB00(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2510FC400(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_251120A30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E9A8, &qword_251134C30);
    v3 = sub_2511313F8();
    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 48);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;
      result = sub_25112F9FC(v5);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v14 = (v3[7] + 48 * result);
      *v14 = v6;
      v14[1] = v7;
      v14[2] = v8;
      v14[3] = v9;
      v14[4] = v10;
      v14[5] = v11;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_251120B48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E9A0, &qword_251134990);
    v3 = sub_2511313F8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_25112F9FC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_251120C28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E998, &unk_251134980);
    v3 = sub_2511313F8();
    v4 = a1 + 32;

    while (1)
    {
      sub_251120F84(v4, v13, &qword_27F41E528, &qword_251133348);
      result = sub_25112EC18(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
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

unint64_t sub_251120D50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E988, &unk_251134960);
    v3 = sub_2511313F8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25112EA1C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

void sub_251120E54(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  sub_25111F574(a1, a2, v2[2]);
}

unint64_t sub_251120E74()
{
  result = qword_27F41E958;
  if (!qword_27F41E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E958);
  }

  return result;
}

unint64_t sub_251120EC8()
{
  result = qword_27F41E960;
  if (!qword_27F41E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E960);
  }

  return result;
}

uint64_t sub_251120F84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251120FEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HGManagerInternal_id;
  swift_beginAccess();
  v5 = sub_251130B88();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_251121078(uint64_t a1, uint64_t *a2)
{
  v4 = sub_251130B88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR___HGManagerInternal_id;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_251121190@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___HGManagerInternal_id;
  swift_beginAccess();
  v4 = sub_251130B88();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_251121218(uint64_t a1)
{
  v3 = OBJC_IVAR___HGManagerInternal_id;
  swift_beginAccess();
  v4 = sub_251130B88();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_251121308(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x676E6970706F7453;
  if (v2 != 1)
  {
    v4 = 0x676E696E6E7552;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x646570706F7453;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x676E6970706F7453;
  if (*a2 != 1)
  {
    v8 = 0x676E696E6E7552;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x646570706F7453;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_251131518();
  }

  return v11 & 1;
}

uint64_t sub_25112140C()
{
  v1 = *v0;
  sub_251131598();
  sub_251130F88();

  return sub_2511315B8();
}

uint64_t sub_2511214B0()
{
  *v0;
  *v0;
  sub_251130F88();
}

uint64_t sub_251121540()
{
  v1 = *v0;
  sub_251131598();
  sub_251130F88();

  return sub_2511315B8();
}

uint64_t sub_2511215E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25112477C();
  *a2 = result;
  return result;
}

void sub_251121610(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x676E6970706F7453;
  if (v2 != 1)
  {
    v5 = 0x676E696E6E7552;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x646570706F7453;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_2511216BC()
{
  v1 = OBJC_IVAR___HGManagerInternal_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_251121770(uint64_t a1)
{
  v3 = OBJC_IVAR___HGManagerInternal_configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_2511217C8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HGManagerInternal_configuration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id HGManager.__allocating_init(delegate:config:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_2511247C8(a1, a2);
  swift_unknownObjectRelease();

  return v6;
}

id HGManager.init(delegate:config:)(uint64_t a1, void *a2)
{
  v3 = sub_2511247C8(a1, a2);
  swift_unknownObjectRelease();

  return v3;
}

id sub_251121984()
{
  v1 = sub_251130B88();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v6 = sub_251130BE8();
  __swift_project_value_buffer(v6, qword_27F421A38);
  v7 = sub_251130BC8();
  v8 = sub_251131198();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2510F2000, v7, v8, "==========▶️===========", v9, 2u);
    MEMORY[0x25306CC10](v9, -1, -1);
  }

  v10 = v0;
  v11 = sub_251130BC8();
  v12 = sub_251131198();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26[0] = v14;
    *v13 = 136315650;
    v15 = OBJC_IVAR___HGManagerInternal_id;
    swift_beginAccess();
    (*(v2 + 16))(v5, &v10[v15], v1);
    sub_251124BF4(&qword_27F41E360);
    v16 = sub_251131508();
    v18 = v17;
    (*(v2 + 8))(v5, v1);
    v19 = sub_2510FAC50(v16, v18, v26);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = 0xE700000000000000;
    *(v13 + 14) = sub_2510FAC50(0x29287472617473, 0xE700000000000000, v26);
    *(v13 + 22) = 2080;
    if (v10[OBJC_IVAR___HGManagerInternal_status])
    {
      if (v10[OBJC_IVAR___HGManagerInternal_status] == 1)
      {
        v20 = 0xE800000000000000;
        v21 = 0x676E6970706F7453;
      }

      else
      {
        v21 = 0x676E696E6E7552;
      }
    }

    else
    {
      v21 = 0x646570706F7453;
    }

    v22 = sub_2510FAC50(v21, v20, v26);

    *(v13 + 24) = v22;
    _os_log_impl(&dword_2510F2000, v11, v12, "[HGManager]%s: %s status: %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25306CC10](v14, -1, -1);
    MEMORY[0x25306CC10](v13, -1, -1);
  }

  v23 = *&v10[OBJC_IVAR___HGManagerInternal_lock];
  [v23 lock];
  sub_251121D58(v10);
  return [v23 unlock];
}

void sub_251121D58(unsigned __int8 *a1)
{
  v3 = sub_251130B88();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v94 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v12 = OBJC_IVAR___HGManagerInternal_status;
  v13 = a1[OBJC_IVAR___HGManagerInternal_status];
  v105 = v14;
  v106 = v11;
  v104 = v94 - v15;
  if (v13 > 1)
  {

    goto LABEL_7;
  }

  v16 = sub_251131518();

  if (v16)
  {
LABEL_7:
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v17 = sub_251130BE8();
    __swift_project_value_buffer(v17, qword_27F421A38);
    v18 = a1;
    v19 = sub_251130BC8();
    v20 = sub_251131188();
    if (!os_log_type_enabled(v19, v20))
    {

      return;
    }

    LODWORD(v101) = v20;
    v102 = v19;
    v103 = v1;
    v21 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v107[0] = v100;
    *v21 = 136315394;
    v22 = OBJC_IVAR___HGManagerInternal_id;
    swift_beginAccess();
    v24 = v105;
    v23 = v106;
    v25 = &v18[v22];
    v26 = v104;
    v99 = *(v105 + 16);
    (v99)(v104, v25, v106);
    v98 = sub_251124BF4(&qword_27F41E360);
    v27 = sub_251131508();
    v29 = v28;
    v105 = *(v24 + 8);
    (v105)(v26, v23);
    v30 = sub_2510FAC50(v27, v29, v107);

    *(v21 + 4) = v30;
    *(v21 + 12) = 2080;
    v31 = *&v18[OBJC_IVAR___HGManagerInternal_session];
    if (v31)
    {
      v32 = *&v18[OBJC_IVAR___HGManagerInternal_session];

      (v99)(v10, v31 + OBJC_IVAR____TtC12HeadGestures9HGSession_id, v23);

      v33 = sub_251131508();
      v35 = v34;
      (v105)(v10, v23);
      v36 = sub_2510FAC50(v33, v35, v107);

      *(v21 + 14) = v36;
      v37 = v102;
      _os_log_impl(&dword_2510F2000, v102, v101, "[HGManager]%s: EXISTING LIVE SESSION %s, ignore command...", v21, 0x16u);
      v38 = v100;
      swift_arrayDestroy();
      MEMORY[0x25306CC10](v38, -1, -1);
      MEMORY[0x25306CC10](v21, -1, -1);

      return;
    }

    __break(1u);
    goto LABEL_28;
  }

  if (!a1[v12] || a1[v12] != 1)
  {
    v39 = sub_251131518();

    if (v39)
    {
      goto LABEL_14;
    }

    v56 = OBJC_IVAR___HGManagerInternal_configuration;
    swift_beginAccess();
    v57 = *&a1[v56];
    v58 = type metadata accessor for HGSession();
    v59 = *(v58 + 48);
    v60 = *(v58 + 52);
    swift_allocObject();
    v61 = v57;
    v62 = sub_251103124(v61);

    v63 = OBJC_IVAR___HGManagerInternal_session;
    v64 = *&a1[OBJC_IVAR___HGManagerInternal_session];
    *&a1[OBJC_IVAR___HGManagerInternal_session] = v62;

    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v65 = sub_251130BE8();
    __swift_project_value_buffer(v65, qword_27F421A38);
    v66 = a1;
    v67 = sub_251130BC8();
    v68 = sub_251131198();
    if (os_log_type_enabled(v67, v68))
    {
      LODWORD(v98) = v68;
      v99 = v67;
      v100 = v56;
      v103 = v1;
      v69 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v108 = v97;
      *v69 = 136315650;
      v101 = v63;
      v70 = OBJC_IVAR___HGManagerInternal_id;
      swift_beginAccess();
      v71 = v104;
      v72 = v105;
      v73 = *(v105 + 16);
      v74 = v66 + v70;
      v102 = v66;
      v75 = v106;
      v95 = v73;
      v96 = v105 + 16;
      v73(v104, v74, v106);
      v94[1] = sub_251124BF4(&qword_27F41E360);
      v76 = sub_251131508();
      v78 = v77;
      v105 = *(v72 + 8);
      (v105)(v71, v75);
      v79 = sub_2510FAC50(v76, v78, &v108);

      *(v69 + 4) = v79;
      *(v69 + 12) = 2080;
      v80 = *&a1[v101];
      if (!v80)
      {
LABEL_29:

        __break(1u);
        return;
      }

      v81 = *&a1[v101];

      v95(v7, v80 + OBJC_IVAR____TtC12HeadGestures9HGSession_id, v75);

      v82 = sub_251131508();
      v84 = v83;
      (v105)(v7, v75);
      v85 = sub_2510FAC50(v82, v84, &v108);

      *(v69 + 14) = v85;
      *(v69 + 22) = 2080;
      v86 = *&a1[v100];
      v87 = sub_2510F8400();
      v89 = v88;

      v90 = sub_2510FAC50(v87, v89, &v108);

      *(v69 + 24) = v90;
      v91 = v99;
      _os_log_impl(&dword_2510F2000, v99, v98, "[HGManager]%s: starting new session %s with config: %s", v69, 0x20u);
      v92 = v97;
      swift_arrayDestroy();
      MEMORY[0x25306CC10](v92, -1, -1);
      MEMORY[0x25306CC10](v69, -1, -1);

      v63 = v101;
    }

    else
    {
    }

    if (*&a1[v63])
    {
      Strong = swift_unknownObjectWeakLoadStrong();

      sub_2510FF8B8(Strong);

      swift_unknownObjectRelease();
      a1[v12] = 2;
      return;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_14:
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v40 = sub_251130BE8();
  __swift_project_value_buffer(v40, qword_27F421A38);
  v41 = a1;
  v42 = sub_251130BC8();
  v43 = sub_251131198();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v107[0] = v103;
    *v44 = 136315138;
    v45 = OBJC_IVAR___HGManagerInternal_id;
    swift_beginAccess();
    v46 = v105;
    v47 = v106;
    v48 = &v41[v45];
    v49 = v104;
    (*(v105 + 16))(v104, v48, v106);
    sub_251124BF4(&qword_27F41E360);
    v50 = sub_251131508();
    LODWORD(v102) = v43;
    v51 = v50;
    v53 = v52;
    (*(v46 + 8))(v49, v47);
    v54 = sub_2510FAC50(v51, v53, v107);

    *(v44 + 4) = v54;
    _os_log_impl(&dword_2510F2000, v42, v102, "[HGManager]%s: Received impatient start, will restart once HG fully stopped", v44, 0xCu);
    v55 = v103;
    __swift_destroy_boxed_opaque_existential_0(v103);
    MEMORY[0x25306CC10](v55, -1, -1);
    MEMORY[0x25306CC10](v44, -1, -1);
  }

  v41[OBJC_IVAR___HGManagerInternal_impatientStart] = 1;
}

void sub_251122774(uint64_t a1, uint64_t a2)
{
  v81 = a1;
  v82 = a2;
  v3 = sub_251130B88();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v80 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v83 = &v73 - v8;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v9 = sub_251130BE8();
  __swift_project_value_buffer(v9, qword_27F421A38);
  v10 = v2;
  v11 = sub_251130BC8();
  v12 = sub_251131198();

  p_name = (&OBJC_PROTOCOL___MLFeatureProvider + 8);
  if (os_log_type_enabled(v11, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v84[0] = v15;
    *v14 = 136315650;
    v16 = OBJC_IVAR___HGManagerInternal_id;
    swift_beginAccess();
    v17 = v10 + v16;
    v18 = v83;
    (v4[2])(v83, v17, v3);
    sub_251124BF4(&qword_27F41E360);
    v19 = sub_251131508();
    v20 = v3;
    v22 = v21;
    v79 = v4;
    v23 = v4[1];
    v24 = v20;
    v23(v18, v20);
    v25 = sub_2510FAC50(v19, v22, v84);

    *(v14 + 4) = v25;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2510FAC50(0x74697728706F7473, 0xEB00000000293A68, v84);
    *(v14 + 22) = 2080;
    if (*(v10 + OBJC_IVAR___HGManagerInternal_status))
    {
      if (*(v10 + OBJC_IVAR___HGManagerInternal_status) == 1)
      {
        v26 = 0xE800000000000000;
        v27 = 0x676E6970706F7453;
      }

      else
      {
        v26 = 0xE700000000000000;
        v27 = 0x676E696E6E7552;
      }
    }

    else
    {
      v26 = 0xE700000000000000;
      v27 = 0x646570706F7453;
    }

    v28 = sub_2510FAC50(v27, v26, v84);

    *(v14 + 24) = v28;
    _os_log_impl(&dword_2510F2000, v11, v12, "[HGManager]%s: %s status: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25306CC10](v15, -1, -1);
    MEMORY[0x25306CC10](v14, -1, -1);

    v3 = v24;
    v4 = v79;
    p_name = &OBJC_PROTOCOL___MLFeatureProvider.name;
  }

  else
  {
  }

  v29 = *(v10 + OBJC_IVAR___HGManagerInternal_lock);
  [v29 lock];
  v30 = p_name[311];
  if (v30[v10] && v30[v10] != 1)
  {

LABEL_18:
    v45 = v4;
    v46 = v3;
    v47 = v10;
    v48 = sub_251130BC8();
    v49 = sub_251131198();
    if (os_log_type_enabled(v48, v49))
    {
      v76 = v49;
      v77 = v48;
      v78 = v30;
      v79 = v29;
      v50 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v85 = v75;
      *v50 = 136315394;
      v51 = OBJC_IVAR___HGManagerInternal_id;
      swift_beginAccess();
      v52 = &v47[v51];
      v53 = v83;
      v54 = v46;
      v74 = v45[2];
      v74(v83, v52, v46);
      v73 = sub_251124BF4(&qword_27F41E360);
      v55 = sub_251131508();
      v57 = v56;
      v58 = v45[1];
      v58(v53, v54);
      v59 = sub_2510FAC50(v55, v57, &v85);

      *(v50 + 4) = v59;
      *(v50 + 12) = 2080;
      v60 = *&v47[OBJC_IVAR___HGManagerInternal_session];
      if (!v60)
      {
LABEL_25:

        __break(1u);
        return;
      }

      v61 = *&v47[OBJC_IVAR___HGManagerInternal_session];

      v62 = v80;
      v74(v80, (v60 + OBJC_IVAR____TtC12HeadGestures9HGSession_id), v54);

      v63 = sub_251131508();
      v65 = v64;
      v58(v62, v54);
      v66 = sub_2510FAC50(v63, v65, &v85);

      *(v50 + 14) = v66;
      v67 = v77;
      _os_log_impl(&dword_2510F2000, v77, v76, "[HGManager]%s: stopping session %s", v50, 0x16u);
      v68 = v75;
      swift_arrayDestroy();
      MEMORY[0x25306CC10](v68, -1, -1);
      MEMORY[0x25306CC10](v50, -1, -1);

      v30 = v78;
      v29 = v79;
    }

    else
    {
    }

    v30[v10] = 1;
    [v29 unlock];
    if (*&v47[OBJC_IVAR___HGManagerInternal_session])
    {
      v69 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v70 = swift_allocObject();
      v72 = v81;
      v71 = v82;
      v70[2] = v69;
      v70[3] = v72;
      v70[4] = v71;

      sub_25110300C(v72);
      sub_2510FFE54(sub_251124B68, v70);

      return;
    }

    __break(1u);
    goto LABEL_25;
  }

  v31 = sub_251131518();

  if (v31)
  {
    goto LABEL_18;
  }

  v32 = v10;
  v33 = sub_251130BC8();
  v34 = sub_251131188();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v85 = v36;
    *v35 = 136315138;
    v37 = OBJC_IVAR___HGManagerInternal_id;
    swift_beginAccess();
    v38 = v29;
    v39 = v83;
    (v4[2])(v83, &v32[v37], v3);
    sub_251124BF4(&qword_27F41E360);
    v40 = sub_251131508();
    v42 = v41;
    v43 = v39;
    v29 = v38;
    (v4[1])(v43, v3);
    v44 = sub_2510FAC50(v40, v42, &v85);

    *(v35 + 4) = v44;
    _os_log_impl(&dword_2510F2000, v33, v34, "[HGManager]%s: NO LIVE SESSION, ignore command...", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x25306CC10](v36, -1, -1);
    MEMORY[0x25306CC10](v35, -1, -1);
  }

  [v29 unlock];
}

void sub_25112300C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v85 = sub_251130B88();
  v84 = *(v85 - 8);
  v5 = v84[8];
  v6 = MEMORY[0x28223BE20](v85);
  v83 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v80 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v80 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v80 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v80 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v80 - v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = v13;
    v24 = v21;
    v25 = a2;
    v26 = Strong;
    v27 = *(Strong + OBJC_IVAR___HGManagerInternal_lock);

    a2 = v25;
    v21 = v24;
    v13 = v23;
    [v27 lock];
    sub_251123810();
    [v27 unlock];
  }

  if (a2)
  {

    a2(v28);
    swift_beginAccess();
    v29 = swift_unknownObjectWeakLoadStrong();
    if (v29)
    {
      v80[0] = a2;
      v80[1] = a3;
      v81 = v10;
      v82 = v13;
      v30 = OBJC_IVAR___HGManagerInternal_id;
      v31 = v29;
      swift_beginAccess();
      v32 = v84;
      v33 = v84[2];
      v34 = &v31[v30];
      v35 = v85;
      v33(v19, v34, v85);

      (v32[4])(v21, v19, v35);
      if (qword_27F41DFB0 != -1)
      {
        swift_once();
      }

      v36 = sub_251130BE8();
      __swift_project_value_buffer(v36, qword_27F421A38);
      v33(v16, v21, v85);
      v37 = sub_251130BC8();
      v38 = sub_251131178();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v87 = v40;
        *v39 = 136315138;
        sub_251124BF4(&qword_27F41E360);
        v41 = sub_251131508();
        v43 = v42;
        v44 = v16;
        v45 = v84[1];
        v45(v44, v85);
        v46 = sub_2510FAC50(v41, v43, &v87);

        *(v39 + 4) = v46;
        _os_log_impl(&dword_2510F2000, v37, v38, "[HGManager]%s: Client provided stop completion handler finish execution.", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x25306CC10](v40, -1, -1);
        MEMORY[0x25306CC10](v39, -1, -1);
        sub_251102FFC(v80[0]);

        v45(v21, v85);
      }

      else
      {
        sub_251102FFC(v80[0]);

        v47 = v84[1];
        v48 = v85;
        v47(v16, v85);
        v47(v21, v48);
      }

      v13 = v82;
      v10 = v81;
    }

    else
    {
      sub_251102FFC(a2);
    }
  }

  swift_beginAccess();
  v49 = swift_unknownObjectWeakLoadStrong();
  if (v49)
  {
    p_name = &OBJC_PROTOCOL___MLFeatureProvider.name;
    v51 = v49[OBJC_IVAR___HGManagerInternal_impatientStart];

    if (v51 == 1)
    {
      swift_beginAccess();
      v52 = swift_unknownObjectWeakLoadStrong();
      if (v52)
      {
        v53 = OBJC_IVAR___HGManagerInternal_id;
        v54 = v10;
        v55 = v52;
        swift_beginAccess();
        v56 = v84;
        v57 = v84[2];
        v58 = &v55[v53];
        v59 = v85;
        v57(v54, v58, v85);

        (v56[4])(v13, v54, v59);
        if (qword_27F41DFB0 != -1)
        {
          swift_once();
        }

        v60 = sub_251130BE8();
        __swift_project_value_buffer(v60, qword_27F421A38);
        v61 = v83;
        v57(v83, v13, v85);
        v62 = sub_251130BC8();
        v63 = sub_251131198();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v66 = v85;
          v67 = v65;
          v86[0] = v65;
          *v64 = 136315138;
          sub_251124BF4(&qword_27F41E360);
          v68 = sub_251131508();
          v70 = v69;
          v82 = v13;
          v71 = v61;
          v72 = v84[1];
          v72(v71, v66);
          v73 = sub_2510FAC50(v68, v70, v86);

          *(v64 + 4) = v73;
          _os_log_impl(&dword_2510F2000, v62, v63, "[HGManager]%s: Restarting HG due to impatientStart request received.", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v67);
          v74 = v67;
          p_name = (&OBJC_PROTOCOL___MLFeatureProvider + 8);
          MEMORY[0x25306CC10](v74, -1, -1);
          MEMORY[0x25306CC10](v64, -1, -1);

          v72(v82, v66);
        }

        else
        {

          v75 = v84[1];
          v76 = v85;
          v75(v61, v85);
          v75(v13, v76);
        }
      }

      swift_beginAccess();
      v77 = swift_unknownObjectWeakLoadStrong();
      if (v77)
      {
        v78 = v77;
        sub_251121984();
      }

      swift_beginAccess();
      v79 = swift_unknownObjectWeakLoadStrong();
      if (v79)
      {
        p_name[312][v79] = 0;
      }
    }
  }
}

void sub_251123810()
{
  v0 = sub_251130B88();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v35 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = v35 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = *&Strong[OBJC_IVAR___HGManagerInternal_session];
    *&Strong[OBJC_IVAR___HGManagerInternal_session] = 0;
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = OBJC_IVAR___HGManagerInternal_id;
    v15 = v13;
    swift_beginAccess();
    v16 = *(v1 + 16);
    v16(v8, &v15[v14], v0);

    (*(v1 + 32))(v10, v8, v0);
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v17 = sub_251130BE8();
    v18 = __swift_project_value_buffer(v17, qword_27F421A38);
    v37 = v10;
    v16(v5, v10, v0);
    v19 = sub_251130BC8();
    v20 = sub_251131198();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v36 = v1;
      v22 = v21;
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136315138;
      sub_251124BF4(&qword_27F41E360);
      v24 = sub_251131508();
      v35[1] = v18;
      v26 = v25;
      v27 = *(v36 + 8);
      v27(v5, v0);
      v28 = sub_2510FAC50(v24, v26, &v38);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_2510F2000, v19, v20, "[HGManager]%s: HG ALL STOPPED", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x25306CC10](v23, -1, -1);
      MEMORY[0x25306CC10](v22, -1, -1);
    }

    else
    {

      v27 = *(v1 + 8);
      v27(v5, v0);
    }

    v29 = sub_251130BC8();
    v30 = sub_251131198();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v37;
    if (v31)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2510F2000, v29, v30, "==========⏹️===========", v33, 2u);
      MEMORY[0x25306CC10](v33, -1, -1);
    }

    v27(v32, v0);
  }

  swift_beginAccess();
  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v34[OBJC_IVAR___HGManagerInternal_status] = 0;
  }
}

id sub_251123CF4(char a1)
{
  v3 = sub_251130B88();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v8 = sub_251130BE8();
  __swift_project_value_buffer(v8, qword_27F421A38);
  v9 = v1;
  v10 = sub_251130BC8();
  v11 = sub_251131198();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25[0] = v24;
    *v12 = 136315650;
    v13 = OBJC_IVAR___HGManagerInternal_id;
    swift_beginAccess();
    (*(v4 + 16))(v7, &v9[v13], v3);
    sub_251124BF4(&qword_27F41E360);
    v14 = sub_251131508();
    v16 = v15;
    (*(v4 + 8))(v7, v3);
    v17 = sub_2510FAC50(v14, v16, v25);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2510FAC50(0xD00000000000001BLL, 0x80000002511377A0, v25);
    *(v12 + 22) = 2080;
    if (a1)
    {
      v18 = 1702131021;
    }

    else
    {
      v18 = 0x6574756D6E55;
    }

    if (a1)
    {
      v19 = 0xE400000000000000;
    }

    else
    {
      v19 = 0xE600000000000000;
    }

    v20 = sub_2510FAC50(v18, v19, v25);

    *(v12 + 24) = v20;
    _os_log_impl(&dword_2510F2000, v10, v11, "[HGManager]%s: %s trying to %s", v12, 0x20u);
    v21 = v24;
    swift_arrayDestroy();
    MEMORY[0x25306CC10](v21, -1, -1);
    MEMORY[0x25306CC10](v12, -1, -1);
  }

  v22 = *&v9[OBJC_IVAR___HGManagerInternal_lock];
  [v22 lock];
  sub_25112403C(v9, a1 & 1);
  return [v22 unlock];
}

void sub_25112403C(char *a1, int a2)
{
  v5 = sub_251130B88();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&a1[OBJC_IVAR___HGManagerInternal_session];
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR____TtC12HeadGestures9HGSession_audioPlayer);
    if (v11)
    {
      v12 = *(v11 + 16);
      v13 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_enableAudioFeedback;
      swift_beginAccess();
      *(v12 + v13) = (a2 & 1) == 0;
    }

    HIDWORD(v41) = a2;
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v14 = sub_251130BE8();
    __swift_project_value_buffer(v14, qword_27F421A38);
    v15 = a1;
    v16 = sub_251130BC8();
    v17 = sub_251131198();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v42 = v2;
      v19 = v18;
      v20 = swift_slowAlloc();
      v44 = v20;
      *v19 = 136315394;
      v21 = OBJC_IVAR___HGManagerInternal_id;
      swift_beginAccess();
      (*(v6 + 16))(v9, &v15[v21], v5);
      sub_251124BF4(&qword_27F41E360);
      v22 = sub_251131508();
      v24 = v23;
      (*(v6 + 8))(v9, v5);
      v25 = sub_2510FAC50(v22, v24, &v44);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2080;
      if ((v41 & 0x100000000) != 0)
      {
        v26 = 0x646574754DLL;
      }

      else
      {
        v26 = 0x646574756D6E55;
      }

      if ((v41 & 0x100000000) != 0)
      {
        v27 = 0xE500000000000000;
      }

      else
      {
        v27 = 0xE700000000000000;
      }

      v28 = sub_2510FAC50(v26, v27, &v44);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_2510F2000, v16, v17, "[HGManager]%s: AudioFeedback %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25306CC10](v20, -1, -1);
      MEMORY[0x25306CC10](v19, -1, -1);
    }
  }

  else
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v29 = sub_251130BE8();
    __swift_project_value_buffer(v29, qword_27F421A38);
    v30 = a1;
    v31 = sub_251130BC8();
    v32 = sub_251131188();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v42 = v2;
      v34 = v33;
      v35 = swift_slowAlloc();
      v43 = v35;
      *v34 = 136315138;
      v36 = OBJC_IVAR___HGManagerInternal_id;
      swift_beginAccess();
      (*(v6 + 16))(v9, &v30[v36], v5);
      sub_251124BF4(&qword_27F41E360);
      v37 = sub_251131508();
      v39 = v38;
      (*(v6 + 8))(v9, v5);
      v40 = sub_2510FAC50(v37, v39, &v43);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_2510F2000, v31, v32, "[HGManager]%s: NO LIVE SESSION, ignore command...", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x25306CC10](v35, -1, -1);
      MEMORY[0x25306CC10](v34, -1, -1);
    }
  }
}

id HGManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HGManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HGManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2511246F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR___HGManagerInternal_id;
  swift_beginAccess();
  v5 = sub_251130B88();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_25112477C()
{
  v0 = sub_251131428();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

id sub_2511247C8(uint64_t a1, void *a2)
{
  v3 = v2;
  v31 = sub_251130B88();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___HGManagerInternal_id;
  v10 = v3;
  sub_251130B78();
  *&v10[OBJC_IVAR___HGManagerInternal_session] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR___HGManagerInternal_lock;
  v12 = &off_2796AC000;
  *&v10[v11] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v10[OBJC_IVAR___HGManagerInternal_impatientStart] = 0;
  v10[OBJC_IVAR___HGManagerInternal_status] = 0;
  *&v10[OBJC_IVAR___HGManagerInternal_configuration] = a2;
  swift_unknownObjectWeakAssign();
  v13 = qword_27F41DFB0;
  v14 = a2;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = sub_251130BE8();
  __swift_project_value_buffer(v15, qword_27F421A38);
  v16 = v10;
  v17 = sub_251130BC8();
  v18 = sub_251131198();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = 136315138;
    swift_beginAccess();
    v21 = &v3[v9];
    v22 = v31;
    (*(v5 + 16))(v8, v21, v31);

    sub_251124BF4(&qword_27F41E360);
    v23 = sub_251131508();
    v25 = v24;
    (*(v5 + 8))(v8, v22);
    v26 = sub_2510FAC50(v23, v25, &v32);

    *(v19 + 4) = v26;
    _os_log_impl(&dword_2510F2000, v17, v18, "[HGManager]%s: Initialized manager", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v27 = v20;
    v12 = &off_2796AC000;
    MEMORY[0x25306CC10](v27, -1, -1);
    MEMORY[0x25306CC10](v19, -1, -1);
  }

  else
  {
  }

  v28 = type metadata accessor for HGManager();
  v33.receiver = v16;
  v33.super_class = v28;
  return objc_msgSendSuper2(&v33, v12[118]);
}

uint64_t sub_251124AE8()
{
  MEMORY[0x25306CC70](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251124B20()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t type metadata accessor for HGManager()
{
  result = qword_27F41E9C8;
  if (!qword_27F41E9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251124BF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_251130B88();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_251124C40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___HGManagerInternal_configuration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_251124CB4()
{
  result = sub_251130B88();
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

unint64_t sub_251124FA8()
{
  result = qword_27F41E9D8;
  if (!qword_27F41E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E9D8);
  }

  return result;
}

uint64_t sub_251124FFC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251125070()
{
  v1 = OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager9HGCAEvent_timestamp;
  v2 = sub_251130B38();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25112510C()
{
  v30 = sub_2511315E8();
  v29 = *(v30 - 8);
  v1 = *(v29 + 64);
  MEMORY[0x28223BE20](v30);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v36 + 1) = &type metadata for HGCoreAnalyticsManager.HGCAReport;
  v4 = swift_allocObject();
  *&v35 = v4;
  v5 = v0[1];
  v4[1] = *v0;
  v4[2] = v5;
  v6 = v0[3];
  v4[3] = v0[2];
  v4[4] = v6;
  sub_2511265DC(v0, &v37);
  sub_2511315C8();
  v28 = v3;
  sub_2511315D8();
  sub_2511313A8();

  sub_251131408();
  if (!v39)
  {
    v7 = MEMORY[0x277D84F98];
LABEL_19:
    (*(v29 + 8))(v28, v30);

    return v7;
  }

  v7 = MEMORY[0x277D84F98];
  while (1)
  {
    v35 = v37;
    sub_2510FC400(&v38, &v36);
    sub_2511266B4(&v35, &v32);
    v8 = v33;
    if (!v33)
    {
      sub_251126724(&v35);
      __swift_destroy_boxed_opaque_existential_0(v34);
      goto LABEL_4;
    }

    v9 = v32;
    __swift_destroy_boxed_opaque_existential_0(v34);
    sub_2511266B4(&v35, &v32);

    sub_25112678C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_251126724(&v35);

      goto LABEL_4;
    }

    v10 = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v7;
    v12 = sub_25112EA1C(v9, v8);
    v14 = v7[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v7[3] >= v17)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = v12;
        sub_2511282A4();
        v12 = v23;
        if (v18)
        {
LABEL_14:
          v20 = v12;

          v7 = v32;
          v21 = v32[7];
          v22 = *(v21 + 8 * v20);
          *(v21 + 8 * v20) = v10;

          sub_251126724(&v35);
          goto LABEL_4;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_251126FE8(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_25112EA1C(v9, v8);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_22;
      }
    }

    if (v18)
    {
      goto LABEL_14;
    }

LABEL_16:
    v7 = v32;
    v32[(v12 >> 6) + 8] |= 1 << v12;
    v24 = (v7[6] + 16 * v12);
    *v24 = v9;
    v24[1] = v8;
    *(v7[7] + 8 * v12) = v10;

    sub_251126724(&v35);
    v25 = v7[2];
    v16 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v16)
    {
      goto LABEL_21;
    }

    v7[2] = v26;
LABEL_4:
    sub_251131408();
    if (!v39)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_251131538();
  __break(1u);
  return result;
}

void sub_25112549C()
{
  type metadata accessor for HGCoreAnalyticsManager();
  v0 = swift_allocObject();
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 processName];

  v3 = sub_251130F18();
  v5 = v4;

  v0[2] = v3;
  v0[3] = v5;
  v0[4] = MEMORY[0x277D84F90];
  qword_27F421A00 = v0;
}

void sub_251125540()
{
  if (sub_251125790())
  {
    v1 = sub_251130EE8();
    sub_25112678C();
    v2 = sub_251130E78();

    AnalyticsSendEvent();

    swift_beginAccess();
    v3 = *(v0 + 32);
    *(v0 + 32) = MEMORY[0x277D84F90];

    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v4 = sub_251130BE8();
    __swift_project_value_buffer(v4, qword_27F421A38);
    v5 = sub_251130BC8();
    v6 = sub_251131198();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2510F2000, v5, v6, "[CoreAnalytics] CAEvent sent...", v7, 2u);
      MEMORY[0x25306CC10](v7, -1, -1);
    }
  }

  else
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v8 = sub_251130BE8();
    __swift_project_value_buffer(v8, qword_27F421A38);
    oslog = sub_251130BC8();
    v9 = sub_251131198();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2510F2000, oslog, v9, "[CoreAnalytics] CAEvent is missing information. skip sending...", v10, 2u);
      MEMORY[0x25306CC10](v10, -1, -1);
    }
  }
}

uint64_t sub_251125790()
{
  v1 = sub_251130B38();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v68 - v7;
  v85 = MEMORY[0x277D84F90];
  v86 = MEMORY[0x277D84F90];
  v84 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v9 = v0[4];
  if (v9 >> 62)
  {
    goto LABEL_88;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v10)
  {
    v71 = v8;
    v72 = v6;
    v73 = v2;
    v74 = v1;
    v70 = v0;
    v6 = 0;
    v1 = 0;
    v8 = 0;
    v80 = 0;
    v79 = 0;
    v2 = v9 & 0xFFFFFFFFFFFFFF8;
    v76 = MEMORY[0x277D84F90];
    v78 = MEMORY[0x277D84F90];
    v77 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25306C180](v6, v9);
        v12 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_82;
        }
      }

      else
      {
        if (v6 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_83;
        }

        v11 = *(v9 + 8 * v6 + 32);

        v12 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          v10 = sub_2511313C8();
          goto LABEL_3;
        }
      }

      type metadata accessor for HGCoreAnalyticsManager.HGCAStartEvent(0);
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v0 = v13;

        v1 = v0;
      }

      else
      {
        type metadata accessor for HGCoreAnalyticsManager.HGCAStopEvent(0);
        v14 = swift_dynamicCastClass();
        if (v14)
        {
          v0 = v14;

          v8 = v0;
        }

        else
        {
          type metadata accessor for HGCoreAnalyticsManager.HGCAGestureDetectionEvent(0);
          v15 = swift_dynamicCastClass();
          if (!v15)
          {
            type metadata accessor for HGCoreAnalyticsManager.HGCAMotionDataReceivedEvent(0);
            v16 = swift_dynamicCastClass();
            if (!v16)
            {
              v75 = v8;
              type metadata accessor for HGCoreAnalyticsManager.HGCAPipelineResetEventEvent(0);
              if (swift_dynamicCastClass())
              {

                v0 = &v86;
                MEMORY[0x25306BE60](v17);
                if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v77 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_251131078();
                }

                sub_251131098();
                v18 = v86;
                v19 = (&v89 + 8);
                goto LABEL_32;
              }

              type metadata accessor for HGCoreAnalyticsManager.HGCAInterpolatedDataEvent(0);
              if (swift_dynamicCastClass())
              {

                v0 = &v85;
                MEMORY[0x25306BE60](v20);
                if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v76 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_251131078();
                }

                sub_251131098();
                v18 = v85;
                v19 = &v89;
                goto LABEL_32;
              }

              type metadata accessor for HGCoreAnalyticsManager.HGCASamplingRateEvent(0);
              if (swift_dynamicCastClass())
              {

                v0 = &v84;
                MEMORY[0x25306BE60](v21);
                if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v78 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_251131078();
                }

                sub_251131098();
                v18 = v84;
                v19 = &v90;
LABEL_32:
                *(v19 - 32) = v18;
              }

              v8 = v75;
              goto LABEL_6;
            }

            if (!v79)
            {
              v79 = v16;
              goto LABEL_6;
            }

LABEL_18:

            goto LABEL_6;
          }

          if (v80)
          {
            goto LABEL_18;
          }

          v80 = v15;
        }
      }

LABEL_6:
      ++v6;
      if (v12 == v10)
      {

        if (!v1)
        {
          v43 = MEMORY[0x277D84F98];
          goto LABEL_79;
        }

        v22 = v79;
        v23 = v78;
        if (!v8 || !v79 || !v80)
        {
          v43 = MEMORY[0x277D84F98];
          goto LABEL_79;
        }

        v24 = v8;
        v68 = OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager9HGCAEvent_timestamp;
        v25 = v73;
        v26 = *(v73 + 16);
        v69 = v26;
        v27 = v71;
        v28 = v74;
        v26(v71, v1 + OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager9HGCAEvent_timestamp, v74);
        v29 = v72;
        v26(v72, v24 + OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager9HGCAEvent_timestamp, v28);

        v78 = v23;
        v75 = v24;

        sub_251130B18();
        v30 = *(v25 + 8);
        v30(v29, v28);
        v30(v27, v28);
        v31 = v69;
        v69(v27, v1 + v68, v28);
        v32 = OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager9HGCAEvent_timestamp;
        v31(v29, v22 + OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager9HGCAEvent_timestamp, v28);

        sub_251130B18();
        v30(v29, v28);
        v30(v27, v28);
        v33 = v22 + v32;
        v34 = v78;
        v35 = v69;
        v69(v27, v33, v28);

        v35(v29, v80 + OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager9HGCAEvent_timestamp, v28);
        sub_251130B18();
        v30(v29, v28);
        v30(v27, v28);
        v2 = v34 >> 62;
        if (v34 >> 62)
        {
          v0 = sub_2511313C8();
        }

        else
        {
          v0 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v36 = v76;
        if (v0)
        {
          v6 = 0;
          v8 = v78 & 0xC000000000000001;
          v37 = v78 & 0xFFFFFFFFFFFFFF8;
          v9 = v78 + 32;
          v38 = 0.0;
          do
          {
            if (v8)
            {
              result = MEMORY[0x25306C180](v6, v78);
              v42 = __OFADD__(v6++, 1);
              if (v42)
              {
                __break(1u);
                return result;
              }

              v40 = *(result + OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager21HGCASamplingRateEvent_currentSamplingRate);
              swift_unknownObjectRelease();
            }

            else
            {
              if ((v6 & 0x8000000000000000) != 0)
              {
                goto LABEL_86;
              }

              if (v6 >= *(v37 + 16))
              {
                goto LABEL_87;
              }

              v39 = *(v9 + 8 * v6++);
              v40 = *(v39 + OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager21HGCASamplingRateEvent_currentSamplingRate);
            }

            v38 = v38 + v40;
          }

          while (v6 != v0);
        }

        if (v2)
        {
          sub_2511313C8();
        }

        else
        {
          v44 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v77 >> 62)
        {
          v74 = 0x3EE4F8B588E368F1;
          v0 = sub_2511313C8();
        }

        else
        {
          v0 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v2 = v36 & 0xFFFFFFFFFFFFFF8;
        if (v36 >> 62)
        {
          v6 = sub_2511313C8();
        }

        else
        {
          v6 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v8 = 0;
        v45 = 0;
        v9 = v36 & 0xC000000000000001;
        while (v6 != v8)
        {
          if (v9)
          {
            v47 = MEMORY[0x25306C180](v8, v36);
            if (__OFADD__(v8, 1))
            {
              goto LABEL_73;
            }
          }

          else
          {
            if (v8 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_84;
            }

            v46 = *(v36 + 8 * v8 + 32);

            if (__OFADD__(v8, 1))
            {
LABEL_73:
              __break(1u);
              break;
            }
          }

          v48 = *(v47 + OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager25HGCAInterpolatedDataEvent_intepolationAmount);

          ++v8;
          v42 = __OFADD__(v45, v48);
          v45 += v48;
          if (v42)
          {
            goto LABEL_85;
          }
        }

        if ((*(v80 + OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager25HGCAGestureDetectionEvent_detectedGesture) & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v49 = v70[2];
          v50 = v70[3];
          v51 = sub_251130EE8();
          v52 = sub_2511310B8();
          v53 = sub_251131118();
          v54 = sub_2511310B8();
          v55 = sub_2511310B8();
          v56 = sub_251131118();
          v57 = sub_2511310B8();
          v58 = sub_2511310B8();
          *&v87 = v51;
          *(&v87 + 1) = v52;
          *&v88 = v53;
          *(&v88 + 1) = v54;
          *&v89 = v55;
          *(&v89 + 1) = v56;
          *&v90 = v57;
          *(&v90 + 1) = v58;
          if (qword_27F41DFB0 == -1)
          {
LABEL_76:
            v59 = sub_251130BE8();
            __swift_project_value_buffer(v59, qword_27F421A38);
            sub_2511265DC(&v87, v83);
            v60 = sub_251130BC8();
            v61 = sub_251131178();
            sub_251126614(&v87);
            if (os_log_type_enabled(v60, v61))
            {
              v62 = swift_slowAlloc();
              v63 = swift_slowAlloc();
              v82 = v63;
              *v62 = 136315138;
              v83[0] = v87;
              v83[1] = v88;
              v83[2] = v89;
              v83[3] = v90;
              sub_2511265DC(&v87, v81);
              v64 = sub_251130F68();
              v66 = sub_2510FAC50(v64, v65, &v82);

              *(v62 + 4) = v66;
              _os_log_impl(&dword_2510F2000, v60, v61, "[Core Analytics] sending report: %s", v62, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v63);
              MEMORY[0x25306CC10](v63, -1, -1);
              MEMORY[0x25306CC10](v62, -1, -1);
            }

            v43 = sub_25112510C();

            sub_251126614(&v87);

            goto LABEL_79;
          }
        }

        swift_once();
        goto LABEL_76;
      }
    }
  }

  v43 = MEMORY[0x277D84F98];
LABEL_79:
  v67 = *(v43 + 16);

  if (!v67)
  {

    v43 = 0;
  }

  return v43;
}

uint64_t sub_251126320()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_2511263AC()
{
  result = sub_251130B38();
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

uint64_t sub_251126644()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2511266B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EA60, &qword_251134C08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251126724(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EA60, &qword_251134C08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25112678C()
{
  result = qword_27F41EA68;
  if (!qword_27F41EA68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F41EA68);
  }

  return result;
}

uint64_t sub_2511267D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E990, &unk_251134970);
  result = sub_2511313E8();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_2510FC400(v22, v34);
      }

      else
      {
        sub_2510FC4E8(v22, v34);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      sub_251131598();
      type metadata accessor for CFString(0);
      sub_251128830();
      sub_251130BA8();
      result = sub_2511315B8();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_2510FC400(v34, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_251126AB0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_2511313E8();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = a2;
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + v22);
      v24 = *(*(v7 + 56) + v22);
      v25 = *(v10 + 40);
      sub_251131598();
      MEMORY[0x25306C3C0](v23);
      result = sub_2511315B8();
      v26 = -1 << *(v10 + 32);
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

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + v18) = v23;
      *(*(v10 + 56) + v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_33;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v35;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v10;
  return result;
}

uint64_t sub_251126D28(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E9A8, &qword_251134C30);
  result = sub_2511313E8();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = a2;
    v39 = v3;
    v40 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + v21);
      v23 = (*(v5 + 56) + 48 * v21);
      v24 = v23[5];
      v25 = v23[3];
      v41 = v23[4];
      v26 = v23[2];
      v28 = *v23;
      v27 = v23[1];
      v29 = *(v8 + 40);
      sub_251131598();
      MEMORY[0x25306C3C0](v22);
      result = sub_2511315B8();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v22;
      v17 = (*(v8 + 56) + 48 * v16);
      *v17 = v28;
      v17[1] = v27;
      v17[2] = v26;
      v17[3] = v25;
      v5 = v40;
      v17[4] = v41;
      v17[5] = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_33;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_251126FE8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EA70, &qword_251134C10);
  v39 = a2;
  result = sub_2511313E8();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_251131598();
      sub_251130F88();
      result = sub_2511315B8();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25112728C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EA88, &qword_251134C28);
  v7 = sub_2511313E8();
  v8 = v7;
  if (!*(v5 + 16))
  {
    goto LABEL_33;
  }

  v34 = a2;
  v35 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = v7 + 64;
  while (v13)
  {
    v21 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_18:
    v24 = v21 | (v9 << 6);
    v25 = *(*(v5 + 48) + v24);
    v26 = *(*(v5 + 56) + 8 * v24);
    v27 = *(v8 + 40);
    sub_251131598();
    sub_251130F88();

    v16 = sub_2511315B8();
    v17 = -1 << *(v8 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v15 + 8 * (v18 >> 6))) != 0)
    {
      v20 = __clz(__rbit64((-1 << v18) & ~*(v15 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = 0;
      v29 = (63 - v17) >> 6;
      do
      {
        if (++v19 == v29 && (v28 & 1) != 0)
        {
          goto LABEL_36;
        }

        v30 = v19 == v29;
        if (v19 == v29)
        {
          v19 = 0;
        }

        v28 |= v30;
        v31 = *(v15 + 8 * v19);
      }

      while (v31 == -1);
      v20 = __clz(__rbit64(~v31)) + (v19 << 6);
    }

    *(v15 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v8 + 48) + v20) = v25;
    *(*(v8 + 56) + 8 * v20) = v26;
    ++*(v8 + 16);
  }

  v22 = v9;
  while (1)
  {
    v9 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      JUMPOUT(0x251127668);
    }

    if (v9 >= v14)
    {
      break;
    }

    v23 = v10[v9];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v13 = (v23 - 1) & v23;
      goto LABEL_18;
    }
  }

  if (v34)
  {
    v32 = 1 << *(v5 + 32);
    v3 = v35;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
LABEL_33:

    goto LABEL_34;
  }

  v3 = v35;
LABEL_34:
  *v3 = v8;
  return result;
}

uint64_t sub_2511276A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E9A0, &qword_251134990);
  result = sub_2511313E8();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_251131598();
      MEMORY[0x25306C3C0](v21);
      result = sub_2511315B8();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_25112792C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EA78, &unk_251134C18);
  v38 = a2;
  result = sub_2511313E8();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_251131598();
      sub_251130F88();
      result = sub_2511315B8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_251127BD4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E8F0, &qword_251134650);
  result = sub_2511313E8();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_251131598();
      MEMORY[0x25306C3C0](v21);
      result = sub_2511315B8();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

id sub_251127E54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E990, &unk_251134970);
  v2 = *v0;
  v3 = sub_2511313D8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_2510FC4E8(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_2510FC400(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_251127FFC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2511313D8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + v16);
      *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_251128138()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E9A8, &qword_251134C30);
  v2 = *v0;
  v3 = sub_2511313D8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v22 + 40) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 48 * v14;
      v18 = *(v17 + 32);
      v19 = *(v17 + 40);
      v20 = *v17;
      v21 = *(v17 + 16);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v22 = *(v4 + 56) + 48 * v14;
      *v22 = v20;
      *(v22 + 16) = v21;
      *(v22 + 32) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_2511282A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EA70, &qword_251134C10);
  v2 = *v0;
  v3 = sub_2511313D8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_251128438(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2511313D8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 8 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 8 * v16);
      *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_251128574()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EA78, &unk_251134C18);
  v2 = *v0;
  v3 = sub_2511313D8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_2511286E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E8F0, &qword_251134650);
  v2 = *v0;
  v3 = sub_2511313D8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

unint64_t sub_251128830()
{
  result = qword_27F41EA80;
  if (!qword_27F41EA80)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41EA80);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25112889C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2511288E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_251128950(uint64_t result, double a2)
{
  v4 = *v2;
  if (*(*v2 + 16) == result)
  {
    if (!result)
    {
      __break(1u);
      return result;
    }

    sub_251128DC0(0, 1, sub_251109514, sub_251128BC0);
    v4 = *v2;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_251109514(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
  }

  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  if (v6 >= v5 >> 1)
  {
    result = sub_251109514((v5 > 1), v6 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v6 + 1;
  *(v4 + 8 * v6 + 32) = a2;
  *v2 = v4;
  return result;
}

unint64_t sub_251128A3C(unint64_t result, unint64_t a2, float a3)
{
  v4 = result;
  v6 = *v3;
  if (*(*v3 + 2) != result || a2 == 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (result < a2)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  sub_251128DC0(0, a2, sub_251109820, sub_251128D18);
  v6 = *v3;
LABEL_8:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_251109820(0, *(v6 + 2) + 1, 1, v6);
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    v6 = sub_251109820((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v10;
  *&v6[4 * v9 + 32] = a3;
  *v3 = v6;
  if (v10 != v4)
  {
    return 0;
  }

  sub_251128C68();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EAA8, "jw");
  sub_251128CB4();
  return sub_251131138();
}

unint64_t sub_251128BC0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_251128C68()
{
  result = qword_27F41EAA0;
  if (!qword_27F41EAA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F41EAA0);
  }

  return result;
}

unint64_t sub_251128CB4()
{
  result = qword_27F41EAB0;
  if (!qword_27F41EAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F41EAA8, "jw");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41EAB0);
  }

  return result;
}

unint64_t sub_251128D18(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 4 * result + 4 * a3;
  v10 = (v6 + 32 + 4 * a2);
  if (result != v10 || result >= v10 + 4 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 4 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_251128DC0(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_251128E98()
{
  v1 = sub_251130B38();
  v34 = *(v1 - 8);
  v35 = v1;
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v1);
  v33 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2511311D8();
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v32);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2511311A8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_251130E38();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  *(v0 + 16) = 0;
  v12 = sub_2510F65C4();
  v30[1] = "tor";
  v30[2] = v12;
  sub_251130E28();
  v36 = MEMORY[0x277D84F90];
  sub_25112A2B8(&qword_27F41E0F8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E100, &qword_251132AB0);
  sub_2510F6658(&qword_27F41E108, &qword_27F41E100, &qword_251132AB0);
  sub_2511312A8();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v32);
  v13 = sub_251131208();
  v14 = v31;
  *(v31 + 40) = v13;
  v15 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v16 = sub_251130EE8();
  [v15 setDateFormat_];

  v17 = [objc_opt_self() processInfo];
  v18 = [v17 processName];

  v19 = sub_251130F18();
  v21 = v20;

  v36 = v19;
  v37 = v21;
  MEMORY[0x25306BDC0](45, 0xE100000000000000);
  v22 = v33;
  sub_251130B28();
  v23 = sub_251130AA8();
  (*(v34 + 8))(v22, v35);
  v24 = [v15 stringFromDate_];

  v25 = sub_251130F18();
  v27 = v26;

  MEMORY[0x25306BDC0](v25, v27);

  MEMORY[0x25306BDC0](1987273518, 0xE400000000000000);

  v28 = v37;
  result = v14;
  *(v14 + 24) = v36;
  *(v14 + 32) = v28;
  return result;
}

uint64_t sub_2511292E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EAB8, "J{");
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EAC0, "^{");
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v16 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E418, &qword_251133248);
  sub_2510F6658(&qword_27F41E420, &qword_27F41E418, &qword_251133248);
  sub_251130D38();

  sub_2510F6658(&qword_27F41EAC8, &qword_27F41EAB8, "J{");
  swift_retain_n();
  sub_251130CF8();

  (*(v3 + 8))(v6, v2);
  sub_2510F6658(&qword_27F41EAD0, &qword_27F41EAC0, "^{");
  v12 = sub_251130D88();
  (*(v8 + 8))(v11, v7);
  v16 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EAD8, "z{");
  sub_2510F6658(qword_27F41EAE0, &qword_27F41EAD8, "z{");
  v13 = sub_251130CD8();

  return v13;
}

double sub_251129640@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_251130E18();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_251130E38();
  v29 = *(v30 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v30);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[4];
  v14 = a1[6];
  v39 = a1[5];
  v40[0] = v14;
  *(v40 + 9) = *(a1 + 105);
  v15 = a1[1];
  v34 = *a1;
  v35 = v15;
  v16 = a1[3];
  v36 = a1[2];
  v37 = v16;
  v38 = v13;
  v17 = *(a2 + 40);
  v18 = swift_allocObject();
  v19 = a1[5];
  *(v18 + 88) = a1[4];
  *(v18 + 104) = v19;
  *(v18 + 120) = a1[6];
  *(v18 + 129) = *(a1 + 105);
  v20 = a1[1];
  *(v18 + 24) = *a1;
  *(v18 + 40) = v20;
  v21 = a1[3];
  *(v18 + 56) = a1[2];
  *(v18 + 16) = a2;
  *(v18 + 72) = v21;
  aBlock[4] = sub_25112A298;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2511147B8;
  aBlock[3] = &block_descriptor_14;
  v22 = _Block_copy(aBlock);
  v23 = v17;

  sub_251130E28();
  v32 = MEMORY[0x277D84F90];
  sub_25112A2B8(&qword_27F41E080, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E088, &qword_251132A30);
  sub_2510F6658(&qword_27F41E090, &qword_27F41E088, &qword_251132A30);
  sub_2511312A8();
  MEMORY[0x25306C010](0, v12, v9, v22);
  _Block_release(v22);

  (*(v31 + 8))(v9, v6);
  (*(v29 + 8))(v12, v30);

  v24 = v39;
  v25 = v40[0];
  a3[4] = v38;
  a3[5] = v24;
  a3[6] = v25;
  *(a3 + 105) = *(v40 + 9);
  v26 = v35;
  *a3 = v34;
  a3[1] = v26;
  result = *&v36;
  v28 = v37;
  a3[2] = v36;
  a3[3] = v28;
  return result;
}

void sub_2511299D8(uint64_t a1)
{
  v2 = sub_251130F58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = v7;
    sub_251111F98();
    sub_251130F48();
    v9 = sub_251130F28();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    if (v11 >> 60 == 15)
    {
    }

    else
    {
      sub_25112A2A4(v9, v11);
      sub_251105D5C(v9, v11, v8, 0);

      sub_251106100(v9, v11);
      sub_251106100(v9, v11);
    }
  }
}

void sub_251129B40(uint64_t a1, void *a2)
{
  v3 = sub_251130F58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = HGGetTemporaryRawDataDirectory();
  v9 = sub_251130F18();
  v11 = v10;

  v13 = a2[3];
  v12 = a2[4];
  v14 = qword_27F41DF98;

  if (v14 != -1)
  {
    swift_once();
  }

  sub_251130F48();
  v15 = sub_251130F28();
  v17 = v16;
  (*(v4 + 8))(v7, v3);
  v18 = sub_251105410(v9, v11, v13, v12, v15, v17);
  sub_251106100(v15, v17);

  v19 = a2[2];
  a2[2] = v18;
}

uint64_t sub_251129CE8(uint64_t a1)
{
  v2 = sub_251130E18();
  v16 = *(v2 - 8);
  v3 = *(v16 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_251130E38();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 40);
  aBlock[4] = sub_25112A240;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2511147B8;
  aBlock[3] = &block_descriptor_6;
  v11 = _Block_copy(aBlock);
  v12 = v10;

  sub_251130E28();
  v17 = MEMORY[0x277D84F90];
  sub_25112A2B8(&qword_27F41E080, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E088, &qword_251132A30);
  sub_2510F6658(&qword_27F41E090, &qword_27F41E088, &qword_251132A30);
  sub_2511312A8();
  MEMORY[0x25306C010](0, v9, v5, v11);
  _Block_release(v11);

  (*(v16 + 8))(v5, v2);
  (*(v6 + 8))(v9, v15);
}

void sub_251129FAC(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_5;
  }

  v16[0] = 0;
  if ([v2 closeAndReturnError_])
  {
    v3 = *(a1 + 16);
    v4 = v16[0];
LABEL_5:
    *(a1 + 16) = 0;
    goto LABEL_6;
  }

  v6 = v16[0];
  v7 = sub_251130978();

  swift_willThrow();
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v8 = sub_251130BE8();
  __swift_project_value_buffer(v8, qword_27F421A38);
  v9 = v7;
  v3 = sub_251130BC8();
  v10 = sub_251131188();

  if (!os_log_type_enabled(v3, v10))
  {

    goto LABEL_7;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v16[0] = v12;
  *v11 = 136315138;
  swift_getErrorValue();
  v13 = sub_251131548();
  v15 = sub_2510FAC50(v13, v14, v16);

  *(v11 + 4) = v15;
  _os_log_impl(&dword_2510F2000, v3, v10, "[HGDataCollector] Failed to close file handle, error %s", v11, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v12);
  MEMORY[0x25306CC10](v12, -1, -1);
  MEMORY[0x25306CC10](v11, -1, -1);

LABEL_6:
LABEL_7:
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25112A1BC()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25112A260()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 145, 7);
}

uint64_t sub_25112A2A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_251106058(a1, a2);
  }

  return a1;
}

uint64_t sub_25112A2B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t RawRepresentableWrapper.rawValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a2, v2, AssociatedTypeWitness);
}

uint64_t RawRepresentableWrapper.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v18 - v10;
  v12 = sub_251131278();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v18 - v14;
  (*(v8 + 16))(v11, v3, AssociatedTypeWitness);
  sub_251131018();
  v16 = *(v5 - 8);
  result = (*(v16 + 48))(v15, 1, v5);
  if (result != 1)
  {
    return (*(v16 + 32))(a2, v15, v5);
  }

  __break(1u);
  return result;
}

uint64_t RawRepresentableWrapper.init(_:)(uint64_t a1, uint64_t a2)
{
  sub_251131008();
  v4 = *(*(a2 - 8) + 8);

  return v4(a1, a2);
}

uint64_t sub_25112A5A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_251131518();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_25112A624()
{
  sub_251131598();
  MEMORY[0x25306C3C0](0);
  return sub_2511315B8();
}

uint64_t sub_25112A690()
{
  sub_251131598();
  MEMORY[0x25306C3C0](0);
  return sub_2511315B8();
}

uint64_t sub_25112A6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_25112A5A4(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_25112A71C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_25112A61C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25112A74C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25112A7A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_25112A860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  return static RawRepresentableWrapper<>.== infix(_:_:)();
}

uint64_t RawRepresentableWrapper<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  swift_getAssociatedTypeWitness();

  return sub_251130EB8();
}

uint64_t RawRepresentableWrapper<>.hashValue.getter(uint64_t a1)
{
  sub_251131598();
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  sub_251130EB8();
  return sub_2511315B8();
}

uint64_t sub_25112A95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_251131598();
  RawRepresentableWrapper<>.hash(into:)(v6, a2);
  return sub_2511315B8();
}

uint64_t RawRepresentableWrapper<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v12[3] = a3;
  v4 = *(a2 + 24);
  v12[1] = *(a2 + 16);
  type metadata accessor for RawRepresentableWrapper.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_2511314E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251131608();
  swift_getAssociatedTypeWitness();
  sub_2511314D8();
  return (*(v6 + 8))(v9, v5);
}

uint64_t RawRepresentableWrapper<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v26 = a2;
  v22 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v28 = &v21 - v5;
  type metadata accessor for RawRepresentableWrapper.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_251131498();
  v23 = *(v6 - 8);
  v24 = v6;
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = type metadata accessor for RawRepresentableWrapper();
  v21 = *(v10 - 8);
  v11 = *(v21 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v29;
  sub_2511315F8();
  if (!v15)
  {
    v29 = v10;
    v16 = v23;
    v17 = v24;
    v18 = v25;
    v19 = AssociatedTypeWitness;
    sub_251131478();
    (*(v16 + 8))(v9, v17);
    (*(v18 + 32))(v13, v28, v19);
    (*(v21 + 32))(v22, v13, v29);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_25112AECC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 - 8);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  return RawRepresentableWrapper<>.init(from:)(a1, v4, a4);
}

uint64_t sub_25112AEF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25112AF78(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v9)
  {
LABEL_23:
    v15 = *(v8 + 48);

    return v15(a1);
  }

  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v13 = ((a2 - v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 < 2)
    {
LABEL_22:
      if (v9)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_22;
  }

LABEL_11:
  v14 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v14 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v9 + (v10 | v14) + 1;
}

void sub_25112B10C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (a3 <= v10)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v11] = v14;
              }

              else
              {
                *&a1[v11] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v11] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v9 + 56);

  v18(a1, a2);
}

BOOL sub_25112B3CC(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_25112B3FC@<X0>(void *__src@<X0>, char *a2@<X8>)
{
  memcpy(__dst, __src, 0x131uLL);
  result = sub_25112B458(__dst);
  if (result)
  {
    v4 = result;
  }

  else
  {
    v4 = 5;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_25112B458(uint64_t a1)
{
  v3 = sub_251130B38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_251130B08();
  v14 = v1;
  v15 = a1;
  v16 = v7;
  v8 = sub_25112B5D8(sub_25112BE3C, v13, &unk_2863317E0);
  v9 = *(v8 + 2);
  if (!v9)
  {

LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v10 = v8[32];

  if (v9 != 1 || (sub_25112B97C(v10) & 1) == 0)
  {
    goto LABEL_6;
  }

  *(v1 + 64) = v10;
  v11 = OBJC_IVAR____TtC12HeadGestures23HGPartGestureRecognizer_lastGesturePartRecognizedAt;
  swift_beginAccess();
  (*(v4 + 24))(v1 + v11, v7, v3);
  swift_endAccess();
LABEL_7:
  (*(v4 + 8))(v7, v3);
  return v10;
}

char *sub_25112B5D8(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a3 + 32);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *v6++;
    BYTE1(v13) = v8;
    a1(&v13, &v13 + 1);
    if (v3)
    {
      break;
    }

    v9 = v13;
    if (v13 != 5)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_251109C30(0, *(v7 + 2) + 1, 1, v7);
      }

      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        v7 = sub_251109C30((v10 > 1), v11 + 1, 1, v7);
      }

      *(v7 + 2) = v11 + 1;
      v7[v11 + 32] = v9;
    }

    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

BOOL sub_25112B6F8(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 200))
  {
    return 0;
  }

  if (*(a2 + 288))
  {
    return 0;
  }

  v4 = *(a2 + 176);
  v5 = *(a2 + 192);
  v7 = *(a2 + 240);
  v6 = *(a2 + 248);
  v8 = *(a2 + 256);
  v9 = *(a2 + 264);
  v10 = *(a2 + 272);
  v11 = *(a2 + 280);
  if ((*(v2 + 16) & 1) == 0)
  {
    v12 = a1;
    v13 = sub_25112B97C(a1);
    a1 = v12;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v14 = 1.0;
        if (v11 > 0.75)
        {
          v8 = v11;
LABEL_18:
          result = *(v2 + 48) < v5 * v14;
          goto LABEL_22;
        }

        result = 0;
        v8 = v11;
      }

      else
      {
        v14 = -1.0;
        if (v8 < -0.75)
        {
          goto LABEL_18;
        }

        result = 0;
      }

LABEL_22:
      v16 = fabs(v8);
      v17 = fmax(v16 * 0.8, 2.1);
      v18 = v16 * 0.35;
      if (v18 >= 0.95)
      {
        if (v10 < v17)
        {
LABEL_26:
          v19 = v6 > -v17;
          if (v9 >= v18)
          {
            goto LABEL_40;
          }

          goto LABEL_31;
        }

        v19 = 0;
        v20 = 0;
      }

      else
      {
        if (v10 < v17)
        {
          v18 = 0.95;
          goto LABEL_26;
        }

        v19 = 0;
        v20 = 0;
        v18 = 0.95;
      }

      if (v9 >= v18)
      {
        goto LABEL_47;
      }

LABEL_31:
      v21 = v7 <= -v18;
      goto LABEL_44;
    }

    v15 = -1.0;
    if (v7 < -0.75)
    {
      goto LABEL_16;
    }

    result = 0;
    goto LABEL_33;
  }

  if (!a1)
  {
    return 0;
  }

  v15 = 1.0;
  if (v9 > 0.75)
  {
    v7 = v9;
LABEL_16:
    result = *(v2 + 56) < v4 * v15;
    goto LABEL_33;
  }

  result = 0;
  v7 = v9;
LABEL_33:
  v22 = fabs(v7);
  v23 = 0.75;
  v24 = fmax(v22 * 0.45, 0.75);
  v25 = v22 * 0.55;
  if (v25 < 0.75)
  {
    if (v10 >= v24)
    {
      v19 = 0;
      v20 = 0;
      v25 = 0.75;
      goto LABEL_42;
    }

LABEL_38:
    v19 = v6 > -v24;
    if (v11 >= v23)
    {
LABEL_40:
      v20 = 0;
      goto LABEL_47;
    }

    v25 = v23;
    goto LABEL_43;
  }

  if (v10 < v24)
  {
    v23 = v25;
    goto LABEL_38;
  }

  v19 = 0;
  v20 = 0;
LABEL_42:
  if (v11 < v25)
  {
LABEL_43:
    v21 = v8 <= -v25;
LABEL_44:
    v20 = !v21 && v19;
  }

LABEL_47:
  if (*(v2 + 16) == 1)
  {
    return v20 && result;
  }

  return result;
}

uint64_t sub_25112B97C(unsigned __int8 a1)
{
  v3 = sub_251130B38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v41 - v10;
  v12 = *(v1 + 24);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  if (v16)
  {
    v17 = 0;
    v18 = __clz(__rbit64(v16));
    v19 = (v16 - 1) & v16;
    v20 = (v14 + 63) >> 6;
LABEL_9:
    v23 = *(v12 + 48);
    v24 = *(v12 + 56);
    v25 = *(v23 + v18);
    v26 = *(v24 + 8 * v18);
    if (!v19)
    {
      goto LABEL_11;
    }

    do
    {
      v27 = v17;
LABEL_15:
      result = v19 - 1;
      v28 = __clz(__rbit64(v19)) | (v27 << 6);
      v19 &= v19 - 1;
      if (v26 < *(v24 + 8 * v28))
      {
        v25 = *(v23 + v28);
        v26 = *(v24 + 8 * v28);
      }
    }

    while (v19);
    while (1)
    {
LABEL_11:
      v27 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v27 >= v20)
      {
        break;
      }

      v19 = *(v13 + 8 * v27);
      ++v17;
      if (v19)
      {
        v17 = v27;
        goto LABEL_15;
      }
    }

    if (v25 == 2)
    {
      v32 = &byte_286331670;
      v33 = qword_286331660;
      do
      {
        if (!v33)
        {
          break;
        }

        v34 = *v32++;
        --v33;
      }

      while (v34 != a1);
    }

    else if (v25 == 1)
    {
      v29 = &byte_286331648;
      v30 = qword_286331638;
      do
      {
        if (!v30)
        {
          break;
        }

        v31 = *v29++;
        --v30;
      }

      while (v31 != a1);
    }

    v35 = *(v1 + 64);
    if (v35 != 5 && v35 == a1)
    {
      v37 = *(v1 + 32);
    }

    v38 = OBJC_IVAR____TtC12HeadGestures23HGPartGestureRecognizer_lastGesturePartRecognizedAt;
    swift_beginAccess();
    (*(v4 + 16))(v8, v1 + v38, v3);
    sub_251130AC8();
    v39 = *(v4 + 8);
    v39(v8, v3);
    v40 = sub_251130AB8();
    v39(v11, v3);
    return (v40 & 1) == 0;
  }

  else
  {
    v21 = 0;
    v20 = (v14 + 63) >> 6;
    while (v20 - 1 != v21)
    {
      v17 = v21 + 1;
      v22 = *(v12 + 72 + 8 * v21);
      v16 -= 64;
      ++v21;
      if (v22)
      {
        v19 = (v22 - 1) & v22;
        v18 = __clz(__rbit64(v22)) - v16;
        goto LABEL_9;
      }
    }

LABEL_36:
    __break(1u);
  }

  return result;
}

uint64_t sub_25112BC7C()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC12HeadGestures23HGPartGestureRecognizer_lastGesturePartRecognizedAt;
  v3 = sub_251130B38();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HGPartGestureRecognizer()
{
  result = qword_27F41EBE8;
  if (!qword_27F41EBE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25112BD74()
{
  result = sub_251130B38();
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

BOOL sub_25112BE3C@<W0>(unsigned __int8 *a1@<X0>, char *a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = *a1;
  v7 = v2[2];
  result = sub_25112B6F8(*a1, v4);
  if (result)
  {
    v9 = v6;
  }

  else
  {
    v9 = 5;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_25112BE94(uint64_t a1)
{
  *(v1 + 16) = 1;
  *(v1 + 24) = sub_251120B48(&unk_2863311E0);
  *(v1 + 32) = xmmword_251133130;
  *(v1 + 48) = xmmword_251133140;
  *(v1 + 64) = 5;
  sub_251130A88();
  *(v1 + 32) = *(a1 + OBJC_IVAR___HGConfigurationInternal_gesturePartRepeatTimeout);
  *(v1 + 48) = *(a1 + OBJC_IVAR___HGConfigurationInternal_gesturePartAcceptableShakeVelocity);
  *(v1 + 56) = *(a1 + OBJC_IVAR___HGConfigurationInternal_gesturePartAcceptableNodVelocity);
  return v1;
}

uint64_t sub_25112BF48()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D07970];

  return sub_25112C558(v1);
}

uint64_t sub_25112BFDC()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D077D0];

  return sub_25112C558(v1);
}

uint64_t sub_25112C070()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D07990];

  return sub_25112C558(v1);
}

uint64_t sub_25112C104()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D078D8];

  return sub_25112C558(v1);
}

uint64_t sub_25112C1F0(int64_t a1, unint64_t a2, uint64_t (*a3)(unint64_t, void, char *))
{
  if (a1 < 0)
  {
    goto LABEL_24;
  }

  v4 = a3;
  v5 = a2;
  v7 = a1;
  v6 = MEMORY[0x277D84F90];
  if (a1)
  {
    v22 = MEMORY[0x277D84F90];
    sub_25111B9A4(0, a1, 0);
    v3 = v22;
    v8 = *(v22 + 16);
    do
    {
      v9 = *(v22 + 24);
      if (v8 >= v9 >> 1)
      {
        sub_25111B9A4((v9 > 1), v8 + 1, 1);
      }

      *(v22 + 16) = v8 + 1;
      *(v22 + 8 * v8++ + 32) = 0;
      --v7;
    }

    while (v7);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v10 = v4(v5, *(v3 + 2), v3 + 32);
    if (v10)
    {
      v11 = v10;
      sub_251120E74();
      swift_allocError();
      *v12 = v11;
      *(v12 + 4) = 0;
      swift_willThrow();

      return v11;
    }

    v4 = *(v3 + 2);
    if (!v4)
    {
      break;
    }

    sub_25111B8E4(0, v4, 0);
    v14 = 0;
    v11 = v6;
    while (v14 < *(v3 + 2))
    {
      if (!*&v3[8 * v14 + 32])
      {

        sub_251120E74();
        swift_allocError();
        *v21 = 3;
        *(v21 + 4) = 1;
        swift_willThrow();

        return v11;
      }

      v15 = sub_251130FB8();
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      v5 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v6 = v15;
        v20 = v16;
        sub_25111B8E4((v17 > 1), v18 + 1, 1);
        v16 = v20;
        v15 = v6;
      }

      ++v14;
      *(v11 + 16) = v5;
      v19 = v11 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      if (v4 == v14)
      {

        return v11;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v3 = sub_25112C74C(v3);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25112C454()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D07890];

  return sub_25112C558(v1);
}

uint64_t sub_25112C4E8()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D078A8];

  return sub_25112C558(v1);
}

uint64_t sub_25112C558(uint64_t (*a1)(void *))
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = *(v1 + 16);
  v2 = a1(v7);
  if (v2)
  {
    v5 = v2;
    sub_251120E74();
    swift_allocError();
    *v6 = v5;
    *(v6 + 4) = 0;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    result = swift_deallocClassInstance();
    v4 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t sub_25112C6BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_25112C700(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for E5RTUtils.DomainError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for E5RTUtils.DomainError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_25112C7C0(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25112C7DC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25112C838(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25112C894(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_25112C900@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for HGAudioPlayer(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_251130EE8();
  v5 = sub_251130EE8();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_2511309B8();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_2511309E8();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

id sub_25112CA40(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2511309A8();
  v14[0] = 0;
  v5 = [v2 initForReading:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_2511309E8();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_251130978();

    swift_willThrow();
    v11 = sub_2511309E8();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

id sub_25112CB8C()
{
  v0 = sub_2511309E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v19[-v7];
  MEMORY[0x28223BE20](v6);
  v10 = &v19[-v9];
  type metadata accessor for HGAudioPlayer(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_251130EE8();
  v14 = sub_251130EE8();
  v15 = [v12 URLForResource:v13 withExtension:v14];

  if (!v15)
  {
    return 0;
  }

  sub_2511309B8();

  (*(v1 + 32))(v10, v8, v0);
  (*(v1 + 16))(v5, v10, v0);
  v16 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v17 = sub_25112CA40(v5);
  (*(v1 + 8))(v10, v0);
  return v17;
}

uint64_t sub_25112CDCC(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = 0;
    goto LABEL_8;
  }

  v1 = a1;
  v2 = [v1 processingFormat];
  v3 = [v1 length];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
  }

  if (HIDWORD(v3))
  {
    goto LABEL_10;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v2 frameCapacity:v3];

  if (v4)
  {
    v16 = 0;
    v5 = [v1 readIntoBuffer:v4 error:&v16];
    v2 = v16;
    if (v5)
    {
      v6 = v16;

LABEL_8:
      v7 = *MEMORY[0x277D85DE8];
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  v9 = v2;
  v10 = sub_251130978();

  swift_willThrow();
  v19 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E1E0, &qword_251132E40);
  sub_25112D38C();
  swift_dynamicCast();
  v11 = v18;
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_251131358();

  v16 = 0xD000000000000020;
  v17 = 0x8000000251137EC0;
  v12 = [v11 localizedDescription];
  v13 = sub_251130F18();
  v15 = v14;

  MEMORY[0x25306BDC0](v13, v15);

  result = sub_2511313B8();
  __break(1u);
  return result;
}

id sub_25112CFEC(uint64_t a1, char a2)
{
  if (qword_27F41DFA8 != -1)
  {
    swift_once();
  }

  v4 = *(qword_27F421A30 + 16);
  v5 = sub_251130EE8();
  [v4 BOOLForKey_];

  if (a1 == 1)
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  if (a1 == 2)
  {
    if (a2)
    {
LABEL_6:
      v6 = 1936030047;
      v7 = 0xE400000000000000;
LABEL_9:
      MEMORY[0x25306BDC0](v6, v7);
      v8 = sub_25112CB8C();

      return v8;
    }

LABEL_8:
    v6 = 7302751;
    v7 = 0xE300000000000000;
    goto LABEL_9;
  }

  return 0;
}

void sub_25112D144(char a1@<W0>, void *a2@<X8>)
{
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v4 = sub_251130BE8();
  __swift_project_value_buffer(v4, qword_27F421A38);
  v5 = sub_251130BC8();
  v6 = sub_251131178();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_2510F2000, v5, v6, "[HGAudioAssetManager] using inverted tones: %{BOOL}d", v7, 8u);
    MEMORY[0x25306CC10](v7, -1, -1);
  }

  v8 = sub_25112CB8C();
  v9 = sub_25112CDCC(v8);

  v21 = v9;
  v10 = sub_25112CB8C();
  v11 = sub_25112CDCC(v10);

  v12 = v11;
  v13 = sub_25112CFEC(1, a1 & 1);
  v14 = sub_25112CDCC(v13);

  v15 = v14;
  v16 = sub_25112CFEC(2, a1 & 1);
  v17 = sub_25112CDCC(v16);

  v18 = v17;
  v19 = sub_25112CB8C();
  v20 = sub_25112CDCC(v19);

  *a2 = v9;
  a2[1] = v11;
  a2[2] = v14;
  a2[3] = v17;
  a2[4] = v20;
}

unint64_t sub_25112D38C()
{
  result = qword_27F41EBF8;
  if (!qword_27F41EBF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F41EBF8);
  }

  return result;
}

void sub_25112D3D8()
{
  type metadata accessor for HGDefaults();
  swift_allocObject();
  sub_25112D6F4();
  qword_27F421A30 = v0;
}

unint64_t sub_25112D414(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
    case 25:
      result = 0xD00000000000001ALL;
      break;
    case 3:
    case 4:
    case 16:
    case 18:
      result = 0xD000000000000020;
      break;
    case 5:
    case 7:
    case 22:
    case 23:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD00000000000002BLL;
      break;
    case 8:
    case 17:
      result = 0xD000000000000021;
      break;
    case 9:
    case 15:
      result = 0xD000000000000024;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD00000000000001ELL;
      break;
    case 12:
      result = 0xD00000000000001DLL;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
    case 21:
      result = 0xD000000000000027;
      break;
    case 19:
      result = 0xD000000000000018;
      break;
    case 20:
      result = 0xD00000000000002ALL;
      break;
    case 24:
      result = 0xD000000000000022;
      break;
    case 26:
      result = 0xD00000000000002CLL;
      break;
    case 27:
      result = 0xD000000000000029;
      break;
    case 28:
      result = 0xD000000000000025;
      break;
    default:
      return result;
  }

  return result;
}

void sub_25112D6F4()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_251130EE8();
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    *(v0 + 16) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EC00, &unk_251135360);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_251135330;
    *(v4 + 32) = 0xD000000000000014;
    v5 = MEMORY[0x277D839F8];
    *(v4 + 40) = 0x8000000251135960;
    *(v4 + 48) = 0x3FE6666666666666;
    *(v4 + 72) = v5;
    *(v4 + 80) = 0xD000000000000016;
    *(v4 + 88) = 0x8000000251135980;
    *(v4 + 96) = 0x3FF0000000000000;
    *(v4 + 120) = v5;
    *(v4 + 128) = 0xD00000000000001ALL;
    *(v4 + 136) = 0x8000000251135940;
    *(v4 + 144) = 0x3FE999999999999ALL;
    *(v4 + 168) = v5;
    *(v4 + 176) = 0xD000000000000020;
    *(v4 + 184) = 0x80000002511363F0;
    *(v4 + 192) = 0;
    *(v4 + 216) = v5;
    *(v4 + 224) = 0xD000000000000020;
    *(v4 + 232) = 0x8000000251136420;
    *(v4 + 240) = 0;
    *(v4 + 264) = v5;
    *(v4 + 272) = 0xD00000000000002BLL;
    *(v4 + 280) = 0x8000000251136FF0;
    *(v4 + 288) = 0x4010000000000000;
    *(v4 + 312) = v5;
    *(v4 + 320) = 0xD000000000000023;
    *(v4 + 328) = 0x8000000251136450;
    *(v4 + 336) = 0x3FE999999999999ALL;
    *(v4 + 360) = v5;
    *(v4 + 368) = 0xD000000000000023;
    *(v4 + 376) = 0x80000002511356B0;
    *(v4 + 384) = 0x3FD999999999999ALL;
    *(v4 + 408) = v5;
    *(v4 + 416) = 0xD000000000000021;
    *(v4 + 424) = 0x80000002511356E0;
    *(v4 + 432) = 0x4008000000000000;
    *(v4 + 456) = v5;
    *(v4 + 464) = 0xD000000000000024;
    *(v4 + 472) = 0x8000000251137E60;
    v6 = MEMORY[0x277D839B0];
    *(v4 + 480) = 0;
    *(v4 + 504) = v6;
    *(v4 + 512) = 0xD000000000000013;
    *(v4 + 520) = 0x80000002511362A0;
    *(v4 + 552) = v6;
    *(v4 + 528) = 1;
    *(v4 + 560) = 0xD00000000000001ELL;
    *(v4 + 568) = 0x80000002511373B0;
    *(v4 + 600) = v5;
    *(v4 + 576) = 0x3FD999999999999ALL;
    *(v4 + 608) = 0xD00000000000001DLL;
    *(v4 + 616) = 0x80000002511373D0;
    *(v4 + 648) = v5;
    *(v4 + 624) = 0x3FD999999999999ALL;
    *(v4 + 656) = 0xD000000000000015;
    *(v4 + 664) = 0x80000002511373F0;
    v7 = MEMORY[0x277D83B88];
    *(v4 + 696) = MEMORY[0x277D83B88];
    *(v4 + 672) = 8;
    *(v4 + 704) = 0xD000000000000027;
    *(v4 + 712) = 0x8000000251137410;
    *(v4 + 744) = v7;
    *(v4 + 720) = 4;
    *(v4 + 752) = 0xD000000000000024;
    *(v4 + 760) = 0x8000000251137440;
    *(v4 + 792) = v7;
    *(v4 + 768) = 3;
    *(v4 + 800) = 0xD000000000000020;
    *(v4 + 808) = 0x8000000251137470;
    *(v4 + 840) = v5;
    *(v4 + 816) = 0x3FC999999999999ALL;
    *(v4 + 848) = 0xD000000000000021;
    *(v4 + 856) = 0x80000002511375B0;
    *(v4 + 888) = v5;
    *(v4 + 864) = 0x3FE3333333333333;
    *(v4 + 896) = 0xD000000000000020;
    *(v4 + 904) = 0x80000002511375E0;
    *(v4 + 936) = v5;
    *(v4 + 912) = 0x3FE3333333333333;
    *(v4 + 944) = 0xD000000000000018;
    *(v4 + 952) = 0x8000000251137610;
    *(v4 + 984) = v7;
    *(v4 + 960) = 8;
    *(v4 + 992) = 0xD00000000000002ALL;
    *(v4 + 1000) = 0x8000000251137630;
    *(v4 + 1032) = v7;
    *(v4 + 1008) = 4;
    *(v4 + 1040) = 0xD000000000000027;
    *(v4 + 1048) = 0x8000000251137660;
    *(v4 + 1080) = v7;
    *(v4 + 1056) = 3;
    *(v4 + 1088) = 0xD000000000000023;
    *(v4 + 1096) = 0x8000000251137690;
    *(v4 + 1128) = v5;
    *(v4 + 1104) = 0x4000000000000000;
    *(v4 + 1136) = 0xD000000000000023;
    *(v4 + 1144) = 0x80000002511374A0;
    *(v4 + 1176) = v5;
    *(v4 + 1152) = 0x3FE999999999999ALL;
    *(v4 + 1184) = 0xD000000000000022;
    *(v4 + 1192) = 0x80000002511374D0;
    *(v4 + 1224) = v5;
    *(v4 + 1200) = 0x3FE999999999999ALL;
    *(v4 + 1232) = 0xD00000000000001ALL;
    *(v4 + 1240) = 0x8000000251137500;
    *(v4 + 1272) = v7;
    *(v4 + 1248) = 8;
    *(v4 + 1280) = 0xD00000000000002CLL;
    *(v4 + 1288) = 0x8000000251137520;
    *(v4 + 1320) = v7;
    *(v4 + 1296) = 4;
    *(v4 + 1328) = 0xD000000000000029;
    *(v4 + 1336) = 0x8000000251137550;
    *(v4 + 1368) = v7;
    *(v4 + 1344) = 3;
    *(v4 + 1376) = 0xD000000000000025;
    *(v4 + 1384) = 0x8000000251137580;
    *(v4 + 1416) = v5;
    *(v4 + 1392) = 0x4000000000000000;
    v8 = v3;
    sub_2511207D8(v4);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E980, &unk_251134940);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v9 = sub_251130E78();

    [v8 registerDefaults_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25112DC58()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25112DCB4()
{
  v0 = sub_251130BE8();
  __swift_allocate_value_buffer(v0, qword_27F421A38);
  __swift_project_value_buffer(v0, qword_27F421A38);
  return sub_251130BD8();
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

id sub_25112DD98()
{
  v6[1] = *MEMORY[0x277D85DE8];
  sub_2510FE944(0, &qword_27F41E510, 0x277CCABB0);
  v0 = sub_251130E78();

  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() featureValueWithDictionary:v0 error:v6];

  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_251130978();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_25112DEA0()
{
  sub_251131358();
  MEMORY[0x25306BDC0](0xD000000000000019, 0x8000000251137FA0);
  v1 = *(v0 + 16);
  v2 = sub_251130EE8();
  v3 = [v1 featureValueForName_];

  if (v3)
  {
    v4 = [v3 stringValue];

    v5 = sub_251130F18();
    v7 = v6;

    MEMORY[0x25306BDC0](v5, v7);

    MEMORY[0x25306BDC0](0xD000000000000015, 0x8000000251137FC0);
    v8 = sub_251130EE8();
    v9 = [v1 featureValueForName_];

    if (v9)
    {
      v10 = [v9 dictionaryValue];

      sub_2510FE944(0, &qword_27F41E510, 0x277CCABB0);
      v11 = sub_251130E88();

      sub_25112E0F0(v11);

      v12 = sub_251130E98();
      v14 = v13;

      MEMORY[0x25306BDC0](v12, v14);

      MEMORY[0x25306BDC0](125, 0xE100000000000000);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_25112E0F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E988, &unk_251134960);
    v2 = sub_2511313F8();
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

  do
  {
LABEL_10:
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
  }

  while (!v5);
  while (1)
  {
    v13 = __clz(__rbit64(v5)) | (v12 << 6);
    sub_25112F94C(*(a1 + 48) + 40 * v13, v30);
    v32 = *(*(a1 + 56) + 8 * v13);
    v25 = v30[0];
    v26 = v30[1];
    v27 = v31;
    v14 = v32;
    swift_dynamicCast();
    v23 = 0;
    v24 = 1;
    result = MEMORY[0x25306BEE0](v14, &v23);
    if (v24)
    {
      break;
    }

    v5 &= v5 - 1;
    v15 = v23;

    v16 = v28;
    v17 = v29;
    result = sub_25112EA1C(v28, v29);
    if (v18)
    {
      v9 = (v2[6] + 16 * result);
      v10 = v9[1];
      *v9 = v16;
      v9[1] = v17;
      v11 = result;

      *(v2[7] + 8 * v11) = v15;
      v8 = v12;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_21;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v2[6] + 16 * result);
      *v19 = v16;
      v19[1] = v17;
      *(v2[7] + 8 * result) = v15;
      v20 = v2[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_22;
      }

      v2[2] = v22;
      v8 = v12;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v12 = v8;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_25112E424(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EC00, &unk_251135360);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000010;
  *(inited + 16) = xmmword_251135370;
  *(inited + 40) = 0x8000000251135550;
  v5 = sub_2510FE944(0, &qword_27F41E518, 0x277CBFEF8);
  sub_25112E63C(a1);

  *(inited + 48) = sub_25112DD98();
  *(inited + 72) = v5;
  *(inited + 80) = 0x62614C7373616C63;
  *(inited + 88) = 0xEA00000000006C65;
  v6 = sub_251130EE8();

  v7 = [objc_opt_self() featureValueWithString_];

  *(inited + 120) = v5;
  *(inited + 96) = v7;
  sub_2511207D8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E980, &unk_251134940);
  swift_arrayDestroy();
  v8 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  *(v2 + 16) = sub_25112E934();
  return v2;
}

uint64_t sub_25112E63C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E998, &unk_251134980);
    v2 = sub_2511313F8();
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
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = *(*(a1 + 56) + 8 * v13);
    v28 = *v14;
    v29 = v14[1];

    swift_dynamicCast();
    v16 = sub_2511310B8();
    v17 = *(v2 + 40);
    result = sub_2511312D8();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
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
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    *(*(v2 + 56) + 8 * v10) = v16;
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

uint64_t sub_25112E8A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_25112E934()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_251130E78();

  v7[0] = 0;
  v2 = [v0 initWithDictionary:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_251130978();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t sub_25112EA1C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_251131598();
  sub_251130F88();
  v6 = sub_2511315B8();

  return sub_25112ECE4(a1, a2, v6);
}

unint64_t sub_25112EA98(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_251131598();
  MEMORY[0x25306C3C0](a1);
  v4 = sub_2511315B8();
  return sub_25112ED9C(a1, v4);
}

unint64_t sub_25112EB00(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_251131598();
  type metadata accessor for CFString(0);
  sub_251128830();
  sub_251130BA8();
  v4 = sub_2511315B8();

  return sub_25112EE0C(a1, v4);
}

unint64_t sub_25112EB84(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_251130F18();
  sub_251131598();
  sub_251130F88();
  v4 = sub_2511315B8();

  return sub_25112EEE8(a1, v4);
}

unint64_t sub_25112EC18(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2511312D8();

  return sub_25112EFEC(a1, v5);
}

unint64_t sub_25112EC5C(char a1)
{
  v3 = *(v1 + 40);
  sub_251131598();
  sub_251111BFC(a1);
  sub_251130F88();

  v4 = sub_2511315B8();

  return sub_25112F0B4(a1, v4);
}

unint64_t sub_25112ECE4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_251131518())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25112ED9C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25112EE0C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_251128830();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_251130B98();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25112EEE8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_251130F18();
      v9 = v8;
      if (v7 == sub_251130F18() && v9 == v10)
      {
        break;
      }

      v12 = sub_251131518();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25112EFEC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25112F94C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25306C100](v9, a1);
      sub_25112F9A8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25112F0B4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEF706D617473656DLL;
      v8 = 0x6954726F736E6553;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000011;
          v7 = 0x8000000251135580;
          break;
        case 2:
          v7 = 0xE400000000000000;
          v8 = 1482908481;
          break;
        case 3:
          v7 = 0xE400000000000000;
          v8 = 1499685697;
          break;
        case 4:
          v7 = 0xE400000000000000;
          v8 = 1516462913;
          break;
        case 5:
          v7 = 0xE500000000000000;
          v8 = 0x586F727947;
          break;
        case 6:
          v7 = 0xE500000000000000;
          v8 = 0x596F727947;
          break;
        case 7:
          v7 = 0xE500000000000000;
          v8 = 0x5A6F727947;
          break;
        case 8:
          v7 = 0xE400000000000000;
          v8 = 1819045714;
          break;
        case 9:
          v7 = 0xE500000000000000;
          v8 = 0x6863746950;
          break;
        case 0xA:
          v7 = 0xE300000000000000;
          v8 = 7823705;
          break;
        case 0xB:
          v7 = 0xE200000000000000;
          v8 = 30801;
          break;
        case 0xC:
          v7 = 0xE200000000000000;
          v8 = 31057;
          break;
        case 0xD:
          v7 = 0xE200000000000000;
          v8 = 31313;
          break;
        case 0xE:
          v7 = 0xE200000000000000;
          v8 = 30545;
          break;
        case 0xF:
          v8 = 0x6E696769724F7369;
          v7 = 0xEA00000000006C61;
          break;
        default:
          break;
      }

      v9 = 0x6954726F736E6553;
      v10 = 0xEF706D617473656DLL;
      switch(a1)
      {
        case 1:
          v10 = 0x8000000251135580;
          if (v8 == 0xD000000000000011)
          {
            goto LABEL_48;
          }

          goto LABEL_49;
        case 2:
          v10 = 0xE400000000000000;
          if (v8 != 1482908481)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 3:
          v10 = 0xE400000000000000;
          if (v8 != 1499685697)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 4:
          v10 = 0xE400000000000000;
          if (v8 != 1516462913)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 5:
          v10 = 0xE500000000000000;
          if (v8 != 0x586F727947)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 6:
          v10 = 0xE500000000000000;
          if (v8 != 0x596F727947)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 7:
          v10 = 0xE500000000000000;
          if (v8 != 0x5A6F727947)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 8:
          v10 = 0xE400000000000000;
          if (v8 != 1819045714)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 9:
          v10 = 0xE500000000000000;
          if (v8 != 0x6863746950)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 10:
          v10 = 0xE300000000000000;
          v9 = 7823705;
          goto LABEL_47;
        case 11:
          v10 = 0xE200000000000000;
          if (v8 != 30801)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 12:
          v10 = 0xE200000000000000;
          if (v8 != 31057)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 13:
          v10 = 0xE200000000000000;
          if (v8 != 31313)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 14:
          v10 = 0xE200000000000000;
          if (v8 != 30545)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 15:
          v10 = 0xEA00000000006C61;
          if (v8 != 0x6E696769724F7369)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        default:
LABEL_47:
          if (v8 != v9)
          {
            goto LABEL_49;
          }

LABEL_48:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_49:
          v11 = sub_251131518();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

void sub_25112F514(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = sub_251130EE8();
  v4 = &off_2796AC000;
  v45 = v2;
  v5 = [v2 featureValueForName_];

  if (!v5)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  v6 = [v5 dictionaryValue];

  sub_2510FE944(0, &qword_27F41E510, 0x277CCABB0);
  v7 = sub_251130E88();

  v8 = sub_25112E0F0(v7);

  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v46 = v8;

  v14 = 0;
  while (1)
  {
    if (!v12)
    {
      while (1)
      {
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v15 >= v13)
        {
          goto LABEL_17;
        }

        v12 = *(v9 + 8 * v15);
        ++v14;
        if (v12)
        {
          v14 = v15;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_10:
    v16 = __clz(__rbit64(v12)) | (v14 << 6);
    v17 = (*(v46 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v46 + 56) + 8 * v16);
    v21 = *(a2 + 16);

    v22 = sub_251130EE8();
    v23 = v4;
    v24 = [v21 v4[213]];

    if (!v24)
    {
      goto LABEL_24;
    }

    v25 = [v24 dictionaryValue];

    v26 = sub_251130E88();
    v27 = sub_25112E0F0(v26);

    if (!*(v27 + 16))
    {
      break;
    }

    v28 = sub_25112EA1C(v18, v19);
    if ((v29 & 1) == 0)
    {
      break;
    }

    v12 &= v12 - 1;
    v30 = *(*(v27 + 56) + 8 * v28);

    v4 = v23;
    if (vabdd_f64(v30, v20) > 0.01)
    {
      goto LABEL_17;
    }
  }

  v4 = v23;
LABEL_17:

  v31 = sub_251130EE8();
  v32 = v4;
  v33 = [v45 v4[213]];

  if (!v33)
  {
    goto LABEL_26;
  }

  v34 = [v33 stringValue];

  v35 = sub_251130F18();
  v37 = v36;

  v38 = *(a2 + 16);
  v39 = sub_251130EE8();
  v40 = [v38 v32 + 1400];

  if (!v40)
  {
    goto LABEL_27;
  }

  v41 = [v40 stringValue];

  v42 = sub_251130F18();
  v44 = v43;

  if (v35 == v42 && v37 == v44)
  {
  }

  else
  {
    sub_251131518();
  }
}

void sub_25112FA00(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

unint64_t sub_25112FAF4()
{
  sub_251131358();

  v1 = [*(v0 + OBJC_IVAR____TtC12HeadGestures27HGBuiltinMotionDataProvider_cmMotionManager) isDeviceMotionActive];
  v2 = v1 == 0;
  if (v1)
  {
    v3 = 5457241;
  }

  else
  {
    v3 = 20302;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  MEMORY[0x25306BDC0](v3, v4);

  return 0xD000000000000016;
}

void sub_25112FBA4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC12HeadGestures27HGBuiltinMotionDataProvider_cmMotionManager];
  if (([v2 isDeviceMotionActive] & 1) == 0)
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v3 = sub_251130BE8();
    __swift_project_value_buffer(v3, qword_27F421A38);
    v4 = sub_251130BC8();
    v5 = sub_251131178();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_2510FAC50(0x29287472617473, 0xE700000000000000, v12);
      _os_log_impl(&dword_2510F2000, v4, v5, "HGBuiltinMotionDataProvider:%s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x25306CC10](v7, -1, -1);
      MEMORY[0x25306CC10](v6, -1, -1);
    }

    [v2 setDeviceMotionUpdateInterval_];
    v8 = *&v1[OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_operationQueue];
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    v12[4] = sub_2511304AC;
    v12[5] = v9;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_25112FA00;
    v12[3] = &block_descriptor_7;
    v10 = _Block_copy(v12);
    v11 = v1;

    [v2 startDeviceMotionUpdatesToQueue:v8 withHandler:v10];
    _Block_release(v10);
  }
}

void sub_25112FDE4(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_251130B38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = a2;
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v13 = sub_251130BE8();
    __swift_project_value_buffer(v13, qword_27F421A38);
    v14 = a2;
    v15 = sub_251130BC8();
    v16 = sub_251131188();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v49 = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_251131548();
      v21 = sub_2510FAC50(v19, v20, &v49);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_2510F2000, v15, v16, "HGBuiltinMotionDataProviderError: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x25306CC10](v18, -1, -1);
      MEMORY[0x25306CC10](v17, -1, -1);
    }

    else
    {
    }
  }

  else if (a1)
  {
    v22 = v9;
    v23 = a1;
    sub_251130B08();
    sub_251130AE8();
    v25 = v24;
    (*(v7 + 8))(v11, v22);
    sub_251112740(v23, &v42, v25);

    v26 = *(a3 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_motionDataSubject);
    v53 = v46;
    v54 = v47;
    v55[0] = v48[0];
    *(v55 + 9) = *(v48 + 9);
    v49 = v42;
    v50 = v43;
    v51 = v44;
    v52 = v45;
    sub_251130C28();
    v39 = v46;
    v40 = v47;
    v41[0] = v48[0];
    *(v41 + 9) = *(v48 + 9);
    v35 = v42;
    v36 = v43;
    v37 = v44;
    v38 = v45;
    nullsub_1(&v35);
    v27 = (a3 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion);
    v28 = *(a3 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 80);
    v53 = *(a3 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 64);
    v54 = v28;
    v55[0] = *(a3 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 96);
    *(v55 + 9) = *(a3 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 105);
    v29 = *(a3 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 16);
    v49 = *(a3 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion);
    v50 = v29;
    v30 = *(a3 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 48);
    v51 = *(a3 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 32);
    v52 = v30;
    v31 = v38;
    v27[2] = v37;
    v27[3] = v31;
    v32 = v36;
    *v27 = v35;
    v27[1] = v32;
    *(v27 + 105) = *(v41 + 9);
    v33 = v41[0];
    v27[5] = v40;
    v27[6] = v33;
    v27[4] = v39;
    sub_2511082D0(&v49);
  }
}

id sub_25113016C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12HeadGestures27HGBuiltinMotionDataProvider_cmMotionManager);
  result = [v1 isDeviceMotionActive];
  if (result)
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v3 = sub_251130BE8();
    __swift_project_value_buffer(v3, qword_27F421A38);
    v4 = sub_251130BC8();
    v5 = sub_251131178();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_2510FAC50(0x2928706F7473, 0xE600000000000000, &v8);
      _os_log_impl(&dword_2510F2000, v4, v5, "HGBuiltinMotionDataProviderError:%s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x25306CC10](v7, -1, -1);
      MEMORY[0x25306CC10](v6, -1, -1);
    }

    return [v1 stopDeviceMotionUpdates];
  }

  return result;
}

id sub_251130384()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HGBuiltinMotionDataProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HGBuiltinMotionDataProvider()
{
  result = qword_27F41EC08;
  if (!qword_27F41EC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251130474()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25113072C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41EC18, &qword_251135518);
    v3 = sub_251131328();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_251131598();

      sub_251130F88();
      result = sub_2511315B8();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_251131518();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
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