unint64_t sub_249E6B65C()
{
  result = qword_27EF242A0;
  if (!qword_27EF242A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF242A0);
  }

  return result;
}

uint64_t type metadata accessor for OneshotTimer()
{
  result = qword_28130E048;
  if (!qword_28130E048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_249E6B6EC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_249E7AA88();
  v8 = sub_249E7A5E8();
  (*(a5 + 16))(a5, v7, v8, a1);
}

void sub_249E6B770()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___DIOneshotTimer_timer];
  swift_getObjectType();
  if (sub_249E7AEC8())
  {
    v3 = v0;
    v4 = sub_249E7A698();
    v5 = sub_249E7ADE8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = OUTLINED_FUNCTION_6();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v3;
      v8 = v3;
      _os_log_impl(&dword_249DEE000, v4, v5, "Timer is already canceled %@", v6, 0xCu);
      sub_249DF4A68(v7);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }
  }

  sub_249E7AEE8();
  v9 = v1;
  oslog = sub_249E7A698();
  v10 = sub_249E7AE28();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = OUTLINED_FUNCTION_6();
    *v11 = 138412290;
    *(v11 + 4) = v9;
    *v12 = v9;
    v13 = v9;
    _os_log_impl(&dword_249DEE000, oslog, v10, "Timer cancelled %@", v11, 0xCu);
    sub_249DF4A68(v12);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }
}

uint64_t sub_249E6B940()
{
  v1 = *&v0[OBJC_IVAR___DIOneshotTimer_timer];
  swift_getObjectType();
  v2 = sub_249E7AEC8();
  v3 = v0;
  v4 = sub_249E7A698();
  v5 = sub_249E7AE28();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_6();
    *v6 = 67109378;
    *(v6 + 4) = v2 & 1;
    *(v6 + 8) = 2112;
    *(v6 + 10) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_249DEE000, v4, v5, "Timer isCancelled: %{BOOL}d, %@", v6, 0x12u);
    sub_249DF4A68(v7);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  return v2 & 1;
}

uint64_t sub_249E6BB34()
{
  sub_249E7B128();
  MEMORY[0x24C204750](60, 0xE100000000000000);
  sub_249E7B1F8();
  MEMORY[0x24C204750](8236, 0xE200000000000000);
  MEMORY[0x24C204750](*(v0 + OBJC_IVAR___DIOneshotTimer_label), *(v0 + OBJC_IVAR___DIOneshotTimer_label + 8));
  MEMORY[0x24C204750](8236, 0xE200000000000000);
  sub_249E7A628();
  sub_249E6C814(&qword_28130D350, MEMORY[0x277CC95F0]);
  v1 = sub_249E7B2D8();
  MEMORY[0x24C204750](v1);

  MEMORY[0x24C204750](0xD000000000000012, 0x8000000249E833A0);
  v2 = *(v0 + OBJC_IVAR___DIOneshotTimer_timeInterval);
  sub_249E7AD18();
  MEMORY[0x24C204750](0x696C64616544202CLL, 0xED0000203D20656ELL);
  sub_249E7A978();
  v3 = sub_249E7B2D8();
  MEMORY[0x24C204750](v3);

  return 0;
}

uint64_t sub_249E6BD14@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277D85168];
  v3 = sub_249E7A918();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_249E6BD8C(uint64_t a1, void (*a2)(uint64_t, uint64_t, char *, double))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (sub_249E6B940())
    {
    }

    else
    {
      v5 = v4;
      v6 = sub_249E7A698();
      v7 = sub_249E7AE28();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        *(v8 + 4) = v5;
        *v9 = v4;
        v10 = v5;
        _os_log_impl(&dword_249DEE000, v6, v7, "Timer fired: %@", v8, 0xCu);
        sub_249DF4A68(v9);
        MEMORY[0x24C205870](v9, -1, -1);
        MEMORY[0x24C205870](v8, -1, -1);
      }

      sub_249E6B770();
      v11 = *&v5[OBJC_IVAR___DIOneshotTimer_label];
      v12 = *&v5[OBJC_IVAR___DIOneshotTimer_label + 8];
      v13 = OBJC_IVAR___DIOneshotTimer_identifier;
      v14 = *&v5[OBJC_IVAR___DIOneshotTimer_timeInterval];

      a2(v11, v12, &v5[v13], v14);
    }
  }
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249E6BF54()
{
  sub_249E7A928();
  sub_249E6C814(&qword_28130D2D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
  sub_249E550C0(&qword_28130D2A0, &unk_27EF23D50, &unk_249E80260);
  return sub_249E7B018();
}

id OneshotTimer.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_249E7A6B8();
  v36 = OUTLINED_FUNCTION_3(v2);
  v37 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_0();
  v35 = v7 - v6;
  v8 = sub_249E7A928();
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  v17 = sub_249E7A958();
  v18 = OUTLINED_FUNCTION_3(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v25 = v24 - v23;
  v26 = *&v0[OBJC_IVAR___DIOneshotTimer_timer];
  swift_getObjectType();
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_249E52140;
  aBlock[3] = &block_descriptor_6;
  v27 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  sub_249E7A938();
  sub_249E6BF54();
  sub_249E7AED8();
  _Block_release(v27);
  swift_unknownObjectRelease();
  (*(v11 + 8))(v16, v8);
  (*(v20 + 8))(v25, v17);
  sub_249E6B770();
  (*(v37 + 16))(v35, v1 + OBJC_IVAR___DIOneshotTimer_logger, v36);
  v28 = v1;
  v29 = sub_249E7A698();
  v30 = sub_249E7AE28();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = OUTLINED_FUNCTION_6();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&dword_249DEE000, v29, v30, "Timer destroyed %@", v31, 0xCu);
    sub_249DF4A68(v32);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  (*(v37 + 8))(v35, v36);
  v38.receiver = v28;
  v38.super_class = type metadata accessor for OneshotTimer();
  return objc_msgSendSuper2(&v38, sel_dealloc);
}

id OneshotTimer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_249E6C684()
{
  result = sub_249E7A628();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_249E7A988();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_249E7A6B8();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_249E6C814(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_8()
{
  result = v0;
  v3 = *(v1 - 176);
  v4 = *(v1 - 232);
  return result;
}

uint64_t sub_249E6C8D4(void (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return sub_249E7AAC8();
}

_BYTE *storeEnumTagSinglePayload for MessageDecodableError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

BOOL sub_249E6CB08()
{
  v0 = sub_249E7B268();

  return v0 != 0;
}

BOOL sub_249E6CB78@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_249E6CB08();
  *a2 = result;
  return result;
}

unint64_t sub_249E6CBAC@<X0>(void *a1@<X8>)
{
  result = sub_249E6CB50();
  *a1 = 0xD000000000000014;
  a1[1] = v3;
  return result;
}

unint64_t sub_249E6CBE4()
{
  result = qword_27EF242F0;
  if (!qword_27EF242F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF242F0);
  }

  return result;
}

uint64_t type metadata accessor for DropInStateEvent()
{
  result = qword_28130E638;
  if (!qword_28130E638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E6CCE8(uint64_t a1, uint64_t a2)
{
  if ((sub_249E7A5F8() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DropInStateEvent();
  v5 = v4[5];
  if ((sub_249E7A5F8() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v6 = v4[7];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_249E7B318() & 1) == 0)
  {
    return 0;
  }

  v11 = v4[8];

  return sub_249E7A578();
}

uint64_t sub_249E6CDB4(uint64_t a1)
{
  result = sub_249E6CEA4(&qword_27EF24300);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_249E6CDF8(uint64_t a1)
{
  result = sub_249E6CEA4(&qword_27EF24308);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_249E6CE3C(uint64_t a1)
{
  *(a1 + 8) = sub_249E6CEA4(&qword_27EF24310);
  result = sub_249E6CEA4(qword_27EF24318);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_249E6CEA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DropInStateEvent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249E6CEE8(uint64_t a1)
{
  result = sub_249E6CEA4(&qword_27EF24308);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_249E6CF2C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Loader.CacheEntry();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_249E7A6B8();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_249E6D010()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Loader.CacheEntry();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-v9];
  v11 = *(v1 + 104);
  swift_beginAccess();
  (*(v4 + 16))(v10, v0 + v11, v3);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v4 + 8))(v10, v3);
  }

  else
  {
    v12 = *v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
    sub_249E7AC98();
  }

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  (*(v4 + 40))(v0 + v11, v8, v3);
  swift_endAccess();
  v13 = v0[15];
  sub_249DF2D58(v0[14]);
  (*(v4 + 8))(v0 + v11, v3);
  v14 = *(*v0 + 112);
  v15 = sub_249E7A6B8();
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_249E6D274()
{
  sub_249E6D010();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_249E6D2D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EF237C0, &qword_249E7E220);
  result = sub_249E7ACA8();
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_249E6D370(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_249E6D494(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

_BYTE *sub_249E6D660(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_249E6D730()
{
  sub_249E7B408();
  sub_249E5FABC();
  return sub_249E7B438();
}

void sub_249E6D76C()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v0;
  v4 = v3;
  v5 = sub_249E7A998();
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_4();
  v11 = *(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
  *v1 = v11;
  (*(v8 + 104))(v1, *MEMORY[0x277D85200], v5);
  v12 = v11;
  LOBYTE(v11) = sub_249E7A9B8();
  (*(v8 + 8))(v1, v5);
  if (v11)
  {
    v13 = sub_249E7A698();
    v14 = sub_249E7AE28();
    if (OUTLINED_FUNCTION_201(v14))
    {
      OUTLINED_FUNCTION_70();
      v15 = swift_slowAlloc();
      v16 = OUTLINED_FUNCTION_4_0();
      v38 = v16;
      *v15 = 136315138;
      v17 = sub_249E6DA94(v4);
      v19 = sub_249E3A958(v17, v18, &v38);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_249DEE000, v13, v14, "End conversation with reason: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      v20 = OUTLINED_FUNCTION_7_9();
      MEMORY[0x24C205870](v20);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v21 = *(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_audioPowerManager);
    if (v21)
    {
      v22 = v21;
      sub_249E62AD8();

      v23 = *(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation);
      if (v23)
      {
        v24 = *((*MEMORY[0x277D85000] & *v2) + 0x1D8);
        v25 = v23;
        v24();
      }

      else
      {
        v26 = *(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeCall);
        if (!v26)
        {
LABEL_12:
          sub_249E73838();
          *(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_someoneJoined) = 0;
          sub_249E71F48();
          OUTLINED_FUNCTION_6_1();
          return;
        }

        v25 = v26;
        v27 = sub_249E7A698();
        sub_249E7AE28();

        if (OUTLINED_FUNCTION_272())
        {
          OUTLINED_FUNCTION_70();
          swift_slowAlloc();
          OUTLINED_FUNCTION_17_4();
          v28 = swift_slowAlloc();
          *v14 = 138412290;
          *(v14 + 4) = v25;
          *v28 = v26;
          v29 = v25;
          OUTLINED_FUNCTION_11_6();
          _os_log_impl(v30, v31, v32, v33, v34, v35);
          sub_249E2A8CC(v28, &unk_27EF23C30, &qword_249E7DA20);
          v36 = OUTLINED_FUNCTION_7_9();
          MEMORY[0x24C205870](v36);
          v37 = OUTLINED_FUNCTION_9_9();
          MEMORY[0x24C205870](v37);
        }

        [*(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter) disconnectCall_];
        sub_249E6E4DC(0);
      }

      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_249E6DA94(char a1)
{
  result = 0x6F4C206465646E45;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0x66654C2074736F48;
      break;
    case 3:
      result = 0xD000000000000021;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

void sub_249E6DB74()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v0;
  v89 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_28_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v9);
  v88 = &v84 - v10;
  v11 = sub_249E7A628();
  v12 = OUTLINED_FUNCTION_3(v11);
  v91 = v13;
  v92 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v90 = v17 - v16;
  v18 = sub_249E7A998();
  v19 = OUTLINED_FUNCTION_3(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_4();
  v24 = *&v2[OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue];
  *v1 = v24;
  v25 = *MEMORY[0x277D85200];
  OUTLINED_FUNCTION_77();
  v26(v1);
  v27 = v24;
  LOBYTE(v24) = sub_249E7A9B8();
  (*(v21 + 8))(v1, v18);
  if (v24)
  {
    v28 = v5;
    v29 = sub_249E7A698();
    v30 = sub_249E7AE28();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_4_0();
      v87 = v6;
      v32 = v31;
      OUTLINED_FUNCTION_26_3();
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v93[0] = v86;
      *v32 = 136315650;
      v33 = [v28 UUID];
      v34 = v90;
      sub_249E7A608();

      OUTLINED_FUNCTION_5_13();
      sub_249E78F10(v35, v36);
      v37 = v92;
      v38 = sub_249E7B2D8();
      v40 = v39;
      (*(v91 + 8))(v34, v37);
      v41 = sub_249E3A958(v38, v40, v93);

      *(v32 + 4) = v41;
      *(v32 + 12) = 2080;
      v42 = sub_249E6DA94(v89);
      v44 = sub_249E3A958(v42, v43, v93);

      *(v32 + 14) = v44;
      *(v32 + 22) = 2112;
      *(v32 + 24) = v28;
      v45 = v85;
      *v85 = v28;
      v46 = v28;
      _os_log_impl(&dword_249DEE000, v29, v30, "End conversation: %s with reason: %s\n%@", v32, 0x20u);
      sub_249E2A8CC(v45, &unk_27EF23C30, &qword_249E7DA20);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    sub_249E6EE20();
    if (v47)
    {
      v48 = *&v2[OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation];
      if (v48)
      {
        v49 = v48;
        sub_249E6E2C0(0);
        if (swift_unknownObjectWeakLoadStrong())
        {
          OUTLINED_FUNCTION_126();
          sub_249E1DB78();
          swift_unknownObjectRelease();
        }

        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24478, &qword_249E811E0);
        sub_249E7AA18();
        swift_endAccess();
        v50 = *&v2[OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeCall];
        if (v50)
        {
          v51 = v50;
          v52 = sub_249E7A698();
          v53 = sub_249E7AE28();

          if (os_log_type_enabled(v52, v53))
          {
            OUTLINED_FUNCTION_70();
            v54 = swift_slowAlloc();
            OUTLINED_FUNCTION_26_3();
            v55 = swift_slowAlloc();
            *v54 = 138412290;
            *(v54 + 4) = v51;
            *v55 = v50;
            v56 = v51;
            OUTLINED_FUNCTION_25_1();
            _os_log_impl(v57, v58, v59, v60, v61, 0xCu);
            sub_249E2A8CC(v55, &unk_27EF23C30, &qword_249E7DA20);
            OUTLINED_FUNCTION_65();
            MEMORY[0x24C205870]();
            v62 = OUTLINED_FUNCTION_7_9();
            MEMORY[0x24C205870](v62);
          }

          [*&v2[OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter] disconnectCall_];
          sub_249E6E4DC(0);
        }
      }

      sub_249E73838();
      v2[OBJC_IVAR____TtC10DropInCore17CallCenterManager_someoneJoined] = 0;
      sub_249E71F48();
    }

    else
    {
      v63 = v28;
      v64 = v2;
      v65 = sub_249E7A698();
      v66 = sub_249E7AE28();

      if (os_log_type_enabled(v65, v66))
      {
        v89 = v66;
        v67 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v93[0] = v87;
        *v67 = 136315394;
        v68 = [v63 UUID];
        v69 = v90;
        sub_249E7A608();

        OUTLINED_FUNCTION_5_13();
        sub_249E78F10(v70, v71);
        v72 = v92;
        v73 = sub_249E7B2D8();
        v75 = v74;
        (*(v91 + 8))(v69, v72);
        v76 = sub_249E3A958(v73, v75, v93);

        *(v67 + 4) = v76;
        *(v67 + 12) = 2080;
        v77 = *&v64[OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation];
        if (v77)
        {
          v78 = [v77 &off_278FBA2F8];
          v79 = v88;
          sub_249E7A608();

          v80 = 0;
        }

        else
        {
          v80 = 1;
          v79 = v88;
        }

        __swift_storeEnumTagSinglePayload(v79, v80, 1, v92);
        v81 = sub_249E7AAC8();
        v83 = sub_249E3A958(v81, v82, v93);

        *(v67 + 14) = v83;
        _os_log_impl(&dword_249DEE000, v65, v89, "Conversation to end %s is different from active conversation %s. Ignoring.", v67, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
      }
    }

    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_249E6E2E4()
{
  v1 = sub_249E7A998();
  v2 = OUTLINED_FUNCTION_3(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = *&v0[OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue];
  *(v8 - v7) = v10;
  v11 = *MEMORY[0x277D85200];
  OUTLINED_FUNCTION_77();
  v12(v9);
  v13 = v10;
  LOBYTE(v10) = sub_249E7A9B8();
  result = (*(v4 + 8))(v9, v1);
  if (v10)
  {
    v15 = v0;
    v16 = sub_249E7A698();
    v17 = sub_249E7AE28();

    if (OUTLINED_FUNCTION_272())
    {
      OUTLINED_FUNCTION_70();
      v18 = swift_slowAlloc();
      v19 = OUTLINED_FUNCTION_4_0();
      *v18 = 136315138;
      v25 = *&v15[OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation];
      v26 = v19;
      v20 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24468, &qword_249E811D8);
      v21 = sub_249E7AAC8();
      v23 = sub_249E3A958(v21, v22, &v26);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_249DEE000, v16, v17, "Active Conversation: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      v24 = OUTLINED_FUNCTION_9_9();
      MEMORY[0x24C205870](v24);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    return *&v15[OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation] != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_249E6E500(void *a1, void *a2, uint64_t *a3, uint64_t *a4, const char *a5)
{
  v10 = *(v5 + *a2);
  *(v5 + *a2) = a1;
  v11 = a1;

  sub_249E72028(a2, a3, a4, a5);
}

uint64_t sub_249E6E598()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_58_0(v2);
  v3 = *(MEMORY[0x277D859E0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v0 + 32) = v4;
  *v4 = v5;
  v4[1] = sub_249E6E67C;
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822007B8]();
}

uint64_t sub_249E6E67C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = *(v1 + 32);
  v3 = *(v1 + 24);
  v4 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v5 = v4;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_249E6E7C0(void *a1)
{
  v4 = sub_249E7A998();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_4();
  v10 = *(v1 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
  *v2 = v10;
  (*(v7 + 104))(v2, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_249E7A9B8();
  result = (*(v7 + 8))(v2, v4);
  if (v10)
  {
    if (!*(v1 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation))
    {
      v13 = a1;
      sub_249E6E2C0(a1);
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        sub_249E1C36C();
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_249E6E908(void *a1)
{
  v3 = v1;
  v64 = sub_249E7A658();
  v5 = OUTLINED_FUNCTION_3(v64);
  v65 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_7();
  v63 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_76_0();
  v11 = sub_249E7A998();
  v12 = OUTLINED_FUNCTION_3(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v19 = v18 - v17;
  v20 = *(v3 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
  *(v18 - v17) = v20;
  v21 = *MEMORY[0x277D85200];
  OUTLINED_FUNCTION_77();
  v22(v19);
  v23 = v20;
  v24 = sub_249E7A9B8();
  result = (*(v14 + 8))(v19, v11);
  if (v24)
  {
    v26 = a1;
    sub_249E7A648();
    v27 = sub_249E7A678();
    v28 = sub_249E7AF08();

    if (sub_249E7AFB8())
    {
      OUTLINED_FUNCTION_70();
      v29 = swift_slowAlloc();
      OUTLINED_FUNCTION_26_3();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      v32 = sub_249E7A638();
      _os_signpost_emit_with_name_impl(&dword_249DEE000, v27, v28, v32, "JoiningConversation", "%@", v29, 0xCu);
      sub_249E2A8CC(v30, &unk_27EF23C30, &qword_249E7DA20);
      v33 = OUTLINED_FUNCTION_9_9();
      MEMORY[0x24C205870](v33);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v34 = *(v65 + 8);
    (v34)(v2, v64);
    v35 = [*(v3 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter) joinConversationWithConversationRequest_];
    v36 = v35;
    if (v35)
    {
      v62 = v34;
      v37 = v35;
      v38 = sub_249E7A698();
      v39 = sub_249E7AE28();

      if (os_log_type_enabled(v38, v39))
      {
        OUTLINED_FUNCTION_70();
        swift_slowAlloc();
        OUTLINED_FUNCTION_17_4();
        v40 = swift_slowAlloc();
        *v34 = 138412290;
        *(v34 + 4) = v37;
        *v40 = v36;
        v41 = v37;
        OUTLINED_FUNCTION_11_6();
        _os_log_impl(v42, v43, v44, v45, v46, v47);
        sub_249E2A8CC(v40, &unk_27EF23C30, &qword_249E7DA20);
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
        v48 = OUTLINED_FUNCTION_9_9();
        MEMORY[0x24C205870](v48);
      }

      v49 = v26;
      v50 = v63;
      sub_249E7A648();
      v51 = sub_249E7A678();
      v52 = sub_249E7AF08();

      if (sub_249E7AFB8())
      {
        OUTLINED_FUNCTION_70();
        swift_slowAlloc();
        OUTLINED_FUNCTION_17_4();
        v53 = swift_slowAlloc();
        *v63 = 138412290;
        *(v63 + 4) = v49;
        *v53 = v49;
        v54 = v49;
        v55 = sub_249E7A638();
        _os_signpost_emit_with_name_impl(&dword_249DEE000, v51, v52, v55, "JoinedConversation", "%@", v63, 0xCu);
        sub_249E2A8CC(v53, &unk_27EF23C30, &qword_249E7DA20);
        v56 = OUTLINED_FUNCTION_7_9();
        MEMORY[0x24C205870](v56);
        v50 = v63;
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
      }

      v62(v50, v64);
      v57 = v37;
      sub_249E6E4DC(v36);
      *(v3 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_someoneJoined) = 0;
      sub_249E71F48();
    }

    else
    {
      v58 = sub_249E7A698();
      v59 = sub_249E7AE08();
      if (os_log_type_enabled(v58, v59))
      {
        OUTLINED_FUNCTION_32_2();
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_249DEE000, v58, v59, "Failed to join Conversation", v60, 2u);
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
      }

      sub_249E0881C();
      OUTLINED_FUNCTION_81_0();
      swift_allocError();
      *v61 = 3;
      swift_willThrow();
    }

    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_249E6EE20()
{
  OUTLINED_FUNCTION_15_0();
  v84 = v2;
  v3 = sub_249E7A628();
  v4 = OUTLINED_FUNCTION_3(v3);
  v81 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v80 = v9 - v8;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23750, &qword_249E7E130);
  OUTLINED_FUNCTION_28_0(v83);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v12);
  v14 = &v78[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v16 = OUTLINED_FUNCTION_37(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_7();
  v20 = v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v78[-v23];
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_76_0();
  v25 = sub_249E7A998();
  v26 = OUTLINED_FUNCTION_3(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_0();
  v33 = v32 - v31;
  v34 = *&v0[OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue];
  *(v32 - v31) = v34;
  (*(v28 + 104))(v32 - v31, *MEMORY[0x277D85200], v25);
  v35 = v34;
  LOBYTE(v34) = sub_249E7A9B8();
  (*(v28 + 8))(v33, v25);
  if (v34)
  {
    v36 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation;
    v82 = v0;
    v37 = *&v0[OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation];
    if (v37)
    {
      v38 = [v37 UUID];
      sub_249E7A608();

      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v40 = v84;
    v41 = v20;
    __swift_storeEnumTagSinglePayload(v1, v39, 1, v3);
    v42 = [v40 UUID];
    sub_249E7A608();

    __swift_storeEnumTagSinglePayload(v24, 0, 1, v3);
    v43 = *(v83 + 48);
    sub_249E79390(v1, v14, &qword_27EF234B0, &qword_249E7D910);
    sub_249E79390(v24, &v14[v43], &qword_27EF234B0, &qword_249E7D910);
    OUTLINED_FUNCTION_0_11(v14);
    if (v50)
    {
      OUTLINED_FUNCTION_79();
      sub_249E2A8CC(v44, v45, v46);
      OUTLINED_FUNCTION_79();
      sub_249E2A8CC(v47, v48, v49);
      OUTLINED_FUNCTION_0_11(&v14[v43]);
      if (v50)
      {
        sub_249E2A8CC(v14, &qword_27EF234B0, &qword_249E7D910);
LABEL_18:
        OUTLINED_FUNCTION_6_1();
        return;
      }
    }

    else
    {
      sub_249E79390(v14, v41, &qword_27EF234B0, &qword_249E7D910);
      OUTLINED_FUNCTION_0_11(&v14[v43]);
      if (!v50)
      {
        v83 = v36;
        v71 = v80;
        v72 = v81;
        (*(v81 + 32))(v80, &v14[v43], v3);
        OUTLINED_FUNCTION_5_13();
        sub_249E78F10(v73, v74);
        v75 = sub_249E7AA78();
        v40 = v84;
        v79 = v75;
        v76 = v41;
        v77 = *(v72 + 8);
        v77(v71, v3);
        sub_249E2A8CC(v24, &qword_27EF234B0, &qword_249E7D910);
        sub_249E2A8CC(v1, &qword_27EF234B0, &qword_249E7D910);
        v77(v76, v3);
        v36 = v83;
        sub_249E2A8CC(v14, &qword_27EF234B0, &qword_249E7D910);
        if (v79)
        {
          goto LABEL_18;
        }

LABEL_14:
        v57 = v40;
        v58 = v82;
        v59 = v82;
        v60 = sub_249E7A698();
        v61 = sub_249E7AE28();

        if (OUTLINED_FUNCTION_92_0())
        {
          v62 = swift_slowAlloc();
          OUTLINED_FUNCTION_26_3();
          swift_slowAlloc();
          v63 = OUTLINED_FUNCTION_24();
          *v62 = 138412546;
          *(v62 + 4) = v57;
          *v3 = v57;
          *(v62 + 12) = 2080;
          v85 = *&v58[v36];
          v86 = v63;
          v64 = v85;
          v65 = v57;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24468, &qword_249E811D8);
          v66 = sub_249E7AAC8();
          v68 = sub_249E3A958(v66, v67, &v86);

          *(v62 + 14) = v68;
          _os_log_impl(&dword_249DEE000, v60, v61, "Not the active conversation. Other = %@. Active Conversation = %s", v62, 0x16u);
          sub_249E2A8CC(v3, &unk_27EF23C30, &qword_249E7DA20);
          v69 = OUTLINED_FUNCTION_7_9();
          MEMORY[0x24C205870](v69);
          __swift_destroy_boxed_opaque_existential_0(v63);
          v70 = OUTLINED_FUNCTION_9_9();
          MEMORY[0x24C205870](v70);
          OUTLINED_FUNCTION_65();
          MEMORY[0x24C205870]();
        }

        goto LABEL_18;
      }

      OUTLINED_FUNCTION_79();
      sub_249E2A8CC(v51, v52, v53);
      OUTLINED_FUNCTION_79();
      sub_249E2A8CC(v54, v55, v56);
      (*(v81 + 8))(v41, v3);
    }

    sub_249E2A8CC(v14, &qword_27EF23750, &qword_249E7E130);
    goto LABEL_14;
  }

  __break(1u);
}

void sub_249E6F400(void *a1)
{
  v3 = v1;
  if ([a1 streamToken])
  {
    v5 = a1;
    v6 = sub_249E7A698();
    sub_249E7AE28();

    if (OUTLINED_FUNCTION_92_0())
    {
      OUTLINED_FUNCTION_70();
      swift_slowAlloc();
      OUTLINED_FUNCTION_17_4();
      v7 = swift_slowAlloc();
      *v2 = 138412290;
      *(v2 + 4) = v5;
      *v7 = v5;
      v8 = v5;
      OUTLINED_FUNCTION_11_6();
      _os_log_impl(v9, v10, v11, v12, v13, v14);
      sub_249E2A8CC(v7, &unk_27EF23C30, &qword_249E7DA20);
      v15 = OUTLINED_FUNCTION_7_9();
      MEMORY[0x24C205870](v15);
      v16 = OUTLINED_FUNCTION_9_9();
      MEMORY[0x24C205870](v16);
    }

    v17 = [v5 streamToken];
    v18 = *(v3 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_audioPowerManager);
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      sub_249E62444(v19);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_249E6F564()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v0;
  v4 = v3;
  v5 = sub_249E7A928();
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_4();
  v24 = sub_249E7A958();
  v9 = OUTLINED_FUNCTION_3(v24);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_52_2();
  v23 = *(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
  OUTLINED_FUNCTION_22();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_14_4(v12);
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = v4 & 1;
  v25[4] = sub_249E79538;
  v25[5] = v13;
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v25[2] = v14;
  v25[3] = &block_descriptor_78;
  v15 = _Block_copy(v25);

  sub_249E7A938();
  OUTLINED_FUNCTION_1_12();
  sub_249E78F10(v16, v17);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_94_0(v18);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_22_4();
  _Block_release(v15);
  v19 = OUTLINED_FUNCTION_6_7();
  v20(v19);
  v21 = OUTLINED_FUNCTION_7_7();
  v22(v21);
  OUTLINED_FUNCTION_21_3();

  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E6F78C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_8_0();
}

uint64_t sub_249E6F7A4()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(OUTLINED_FUNCTION_58_0(v3) + 24) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_249E6F890;
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_249E6F890()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (!v0)
  {
    v9 = *(v3 + 24);
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_249E6F9B4()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_9_0();
  v3 = *(v0 + 40);

  return v2();
}

uint64_t sub_249E6FA24()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_58_0(v2);
  v3 = *(MEMORY[0x277D85A40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v0 + 32) = v4;
  *v4 = v5;
  v4[1] = sub_249E6FB08;
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_249E6FB08()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (!v0)
  {
    v9 = *(v3 + 24);
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_249E6FC24()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2(0);
}

uint64_t sub_249E6FC8C(char a1)
{
  result = 0x4D64696C61766E69;
  switch(a1)
  {
    case 1:
    case 7:
      result = 0xD000000000000014;
      break;
    case 2:
      return result;
    case 3:
      v3 = 1701670760;
      goto LABEL_8;
    case 4:
      v3 = 1919251317;
LABEL_8:
      result = v3 | 0x46746F4E00000000;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 8:
      result = 0xD000000000000025;
      break;
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 12:
      result = 0xD00000000000001DLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

unint64_t sub_249E6FE04(char a1)
{
  result = 0x666C65536C696ELL;
  switch(a1)
  {
    case 1:
      result = 0x69766F72506C696ELL;
      break;
    case 2:
      result = 0x6F64756573506F6ELL;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000023;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0x6576697463416F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_249E6FF00()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_64_0();
  sub_249E79390(v11, v12, &unk_27EF236B0, &qword_249E7DFD0);
  v13 = sub_249E7AC78();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_249E2A8CC(v0, &unk_27EF236B0, &qword_249E7DFD0);
  }

  else
  {
    sub_249E7AC68();
    (*(*(v13 - 8) + 8))(v0, v13);
  }

  v16 = *(v2 + 16);
  v15 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v16)
  {
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_249E2A8CC(v4, &unk_27EF236B0, &qword_249E7DFD0);
    OUTLINED_FUNCTION_91_0();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_249E7AC28();
  swift_unknownObjectRelease();
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_249E7AAF8();

  OUTLINED_FUNCTION_91_0();

  sub_249E2A8CC(v4, &unk_27EF236B0, &qword_249E7DFD0);

LABEL_9:
  OUTLINED_FUNCTION_6_1();
}

void sub_249E70148()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_64_0();
  sub_249E79390(v15, v16, &unk_27EF236B0, &qword_249E7DFD0);
  v17 = sub_249E7AC78();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v17);

  if (EnumTagSinglePayload == 1)
  {
    sub_249E2A8CC(v0, &unk_27EF236B0, &qword_249E7DFD0);
  }

  else
  {
    sub_249E7AC68();
    (*(*(v17 - 8) + 8))(v0, v17);
  }

  v19 = *(v6 + 16);
  v20 = *(v6 + 24);
  swift_unknownObjectRetain();

  if (!v19)
  {
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_249E2A8CC(v8, &unk_27EF236B0, &qword_249E7DFD0);
    sub_249DF691C(0, v4, v2);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_249E7AC28();
  swift_unknownObjectRelease();
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_249E7AAF8();
  sub_249DF691C(0, v4, v2);

  swift_task_create();

  sub_249E2A8CC(v8, &unk_27EF236B0, &qword_249E7DFD0);

LABEL_9:
  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E703C8()
{
  OUTLINED_FUNCTION_11();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_249E7A6B8();
  v1[10] = v4;
  OUTLINED_FUNCTION_34_0(v4);
  v1[11] = v5;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E70498, v0, 0);
}

uint64_t sub_249E70498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_63_1();
  v17 = *(v16 + 112);
  v18 = *(v15 + 16);
  v19 = OUTLINED_FUNCTION_54_2();
  v18(v19);
  v20 = sub_249E7A698();
  v21 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_120(v21))
  {
    OUTLINED_FUNCTION_32_2();
    v22 = swift_slowAlloc();
    OUTLINED_FUNCTION_6_0(v22);
    OUTLINED_FUNCTION_35_1(&dword_249DEE000, v23, v24, "Loading element");
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v25 = v14[14];
  v26 = v14[10];
  v27 = v14[11];
  v28 = v14[7];

  v29 = *(v27 + 8);
  v30 = OUTLINED_FUNCTION_126();
  v29(v30);
  if (v28)
  {
    v32 = v14[7];
    v31 = v14[8];
    v33 = v14[9];
  }

  else
  {
    v33 = v14[9];
    v32 = *(v33 + 112);
    if (!v32)
    {
      v93 = OUTLINED_FUNCTION_81();
      __swift_instantiateConcreteTypeFromMangledNameV2(v93, v94);
      OUTLINED_FUNCTION_33_1(&qword_27EF24488);
      OUTLINED_FUNCTION_81_0();
      swift_allocError();
      swift_willThrow();
      OUTLINED_FUNCTION_71();

      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_72();

      return v96(v95, v96, v97, v98, v99, v100, v101, v102, a9, a10, a11, a12, a13, a14);
    }

    v31 = *(v33 + 120);
  }

  OUTLINED_FUNCTION_69_0();
  v34 = *(v33 + 128);
  v14[16] = v34;
  if (*(v33 + 136))
  {
    a10 = v29;
    if (*(v33 + 136) == 1)
    {
      v35 = v14[12];
      v36 = v14[10];
      v38 = v14[7];
      v37 = v14[8];
      v39 = OUTLINED_FUNCTION_54_2();
      v18(v39);
      v40 = OUTLINED_FUNCTION_96();
      v41 = sub_249E7AE28();
      if (OUTLINED_FUNCTION_201(v41))
      {
        OUTLINED_FUNCTION_32_2();
        v42 = swift_slowAlloc();
        OUTLINED_FUNCTION_82_0(v42);
        OUTLINED_FUNCTION_25_1();
        _os_log_impl(v43, v44, v45, v46, v47, 2u);
        v48 = OUTLINED_FUNCTION_7_9();
        MEMORY[0x24C205870](v48);
      }

      v50 = v14[11];
      v49 = v14[12];
      v51 = v14[10];

      OUTLINED_FUNCTION_74_0();
      v52();
      v54 = v14[13];
      v53 = v14[14];
      v55 = v14[12];

      OUTLINED_FUNCTION_41_2();
      OUTLINED_FUNCTION_72();

      return v58(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14);
    }

    v69 = OUTLINED_FUNCTION_53_2();
    v18(v69);
    sub_249DF1A08(v32);
    v70 = sub_249E7A698();
    v71 = sub_249E7AE28();
    if (os_log_type_enabled(v70, v71))
    {
      OUTLINED_FUNCTION_32_2();
      v72 = swift_slowAlloc();
      OUTLINED_FUNCTION_82_0(v72);
      OUTLINED_FUNCTION_89(&dword_249DEE000, v73, v74, "Starting task");
      v75 = OUTLINED_FUNCTION_7_9();
      MEMORY[0x24C205870](v75);
    }

    v76 = v14[13];
    v77 = v14[10];
    v78 = v14[11];
    v79 = v14[9];

    OUTLINED_FUNCTION_74_0();
    v80();
    sub_249E715BC(a9, v31);
    OUTLINED_FUNCTION_60_0(v81);
    sub_249DF2CB0(v31, v76);
    v82 = *(MEMORY[0x277D857C8] + 4);
    v83 = swift_task_alloc();
    v14[20] = v83;
    sub_249DF691C(0, &unk_28130D1E0, 0x277D44160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
    OUTLINED_FUNCTION_73_0();
    *v83 = v84;
    v83[1] = sub_249E709F4;
    OUTLINED_FUNCTION_75_0();
  }

  else
  {
    v65 = v14[8];
    sub_249DF1A08(v14[7]);
    sub_249DF2C94(v34, 0);
    v66 = *(MEMORY[0x277D857C8] + 4);
    v67 = swift_task_alloc();
    v14[17] = v67;
    sub_249DF691C(0, &unk_28130D1E0, 0x277D44160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
    OUTLINED_FUNCTION_73_0();
    *v67 = v68;
    v67[1] = sub_249E708E0;
    OUTLINED_FUNCTION_79_0();
  }

  OUTLINED_FUNCTION_72();

  return MEMORY[0x282200430](v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E708E0()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v5 = *(v1 + 136);
  *v4 = *v2;
  *(v3 + 144) = v0;

  OUTLINED_FUNCTION_49_2();
  v7 = *(v6 + 72);
  OUTLINED_FUNCTION_50_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_249E709F4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v5 = *(v1 + 160);
  *v4 = *v2;
  *(v3 + 168) = v0;

  OUTLINED_FUNCTION_49_2();
  v7 = *(v6 + 72);
  OUTLINED_FUNCTION_50_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_249E70B08()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[9];

  v4 = v0[6];
  v5 = *(v3 + 128);
  *(v3 + 128) = v4;
  v6 = *(v3 + 136);
  *(v3 + 136) = 1;
  v7 = v4;
  sub_249DF2CB0(v5, v6);
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[12];

  v11 = OUTLINED_FUNCTION_41_2();

  return v12(v11);
}

uint64_t sub_249E70BC0()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[9];
  v5 = *(v4 + 128);
  *(v4 + 128) = 0;
  v6 = *(v4 + 136);
  *(v4 + 136) = 2;
  sub_249DF2CB0(v5, v6);
  swift_willThrow();

  v7 = v0[21];
  OUTLINED_FUNCTION_71();

  OUTLINED_FUNCTION_9_0();

  return v8();
}

uint64_t sub_249E70C6C()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[15];
  v2 = v0[16];

  sub_249DF2CB0(v2, 0);
  v3 = v0[5];
  OUTLINED_FUNCTION_71();

  v4 = OUTLINED_FUNCTION_85_0();

  return v5(v4);
}

uint64_t sub_249E70CF0()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[15];
  v2 = v0[16];

  sub_249DF2CB0(v2, 0);
  v3 = v0[18];
  OUTLINED_FUNCTION_71();

  OUTLINED_FUNCTION_9_0();

  return v4();
}

uint64_t sub_249E70D74(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_249E7A6B8();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E70E50, v2, 0);
}

uint64_t sub_249E70E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_63_1();
  v17 = *(v16 + 112);
  v18 = *(v15 + 16);
  v19 = OUTLINED_FUNCTION_54_2();
  v18(v19);
  v20 = sub_249E7A698();
  v21 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_120(v21))
  {
    OUTLINED_FUNCTION_32_2();
    v22 = swift_slowAlloc();
    OUTLINED_FUNCTION_6_0(v22);
    OUTLINED_FUNCTION_35_1(&dword_249DEE000, v23, v24, "Loading element");
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v25 = v14[14];
  v26 = v14[10];
  v27 = v14[11];
  v28 = v14[7];

  v29 = *(v27 + 8);
  v30 = OUTLINED_FUNCTION_126();
  v29(v30);
  if (v28)
  {
    v32 = v14[7];
    v31 = v14[8];
    v33 = v14[9];
  }

  else
  {
    v33 = v14[9];
    v32 = *(v33 + 112);
    if (!v32)
    {
      v93 = OUTLINED_FUNCTION_81();
      __swift_instantiateConcreteTypeFromMangledNameV2(v93, v94);
      OUTLINED_FUNCTION_33_1(&unk_27EF24450);
      OUTLINED_FUNCTION_81_0();
      swift_allocError();
      swift_willThrow();
      OUTLINED_FUNCTION_71();

      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_72();

      return v96(v95, v96, v97, v98, v99, v100, v101, v102, a9, a10, a11, a12, a13, a14);
    }

    v31 = *(v33 + 120);
  }

  OUTLINED_FUNCTION_69_0();
  v34 = *(v33 + 128);
  v14[16] = v34;
  if (*(v33 + 136))
  {
    a10 = v29;
    if (*(v33 + 136) == 1)
    {
      v35 = v14[12];
      v36 = v14[10];
      v38 = v14[7];
      v37 = v14[8];
      v39 = OUTLINED_FUNCTION_54_2();
      v18(v39);
      v40 = OUTLINED_FUNCTION_96();
      v41 = sub_249E7AE28();
      if (OUTLINED_FUNCTION_201(v41))
      {
        OUTLINED_FUNCTION_32_2();
        v42 = swift_slowAlloc();
        OUTLINED_FUNCTION_82_0(v42);
        OUTLINED_FUNCTION_25_1();
        _os_log_impl(v43, v44, v45, v46, v47, 2u);
        v48 = OUTLINED_FUNCTION_7_9();
        MEMORY[0x24C205870](v48);
      }

      v50 = v14[11];
      v49 = v14[12];
      v51 = v14[10];

      OUTLINED_FUNCTION_74_0();
      v52();
      v54 = v14[13];
      v53 = v14[14];
      v55 = v14[12];

      OUTLINED_FUNCTION_41_2();
      OUTLINED_FUNCTION_72();

      return v58(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14);
    }

    v69 = OUTLINED_FUNCTION_53_2();
    v18(v69);
    sub_249DF1A08(v32);
    v70 = sub_249E7A698();
    v71 = sub_249E7AE28();
    if (os_log_type_enabled(v70, v71))
    {
      OUTLINED_FUNCTION_32_2();
      v72 = swift_slowAlloc();
      OUTLINED_FUNCTION_82_0(v72);
      OUTLINED_FUNCTION_89(&dword_249DEE000, v73, v74, "Starting task");
      v75 = OUTLINED_FUNCTION_7_9();
      MEMORY[0x24C205870](v75);
    }

    v76 = v14[13];
    v77 = v14[10];
    v78 = v14[11];
    v79 = v14[9];

    OUTLINED_FUNCTION_74_0();
    v80();
    sub_249E71700(a9, v31);
    OUTLINED_FUNCTION_60_0(v81);
    sub_249DF2CB0(v31, v76);
    v82 = *(MEMORY[0x277D857C8] + 4);
    v83 = swift_task_alloc();
    v14[20] = v83;
    sub_249DF691C(0, &unk_28130D1D0, 0x277D6EEB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
    OUTLINED_FUNCTION_73_0();
    *v83 = v84;
    v83[1] = sub_249E713AC;
    OUTLINED_FUNCTION_75_0();
  }

  else
  {
    v65 = v14[8];
    sub_249DF1A08(v14[7]);
    sub_249DF2C94(v34, 0);
    v66 = *(MEMORY[0x277D857C8] + 4);
    v67 = swift_task_alloc();
    v14[17] = v67;
    sub_249DF691C(0, &unk_28130D1D0, 0x277D6EEB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
    OUTLINED_FUNCTION_73_0();
    *v67 = v68;
    v67[1] = sub_249E71298;
    OUTLINED_FUNCTION_79_0();
  }

  OUTLINED_FUNCTION_72();

  return MEMORY[0x282200430](v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_249E71298()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v5 = *(v1 + 136);
  *v4 = *v2;
  *(v3 + 144) = v0;

  OUTLINED_FUNCTION_49_2();
  v7 = *(v6 + 72);
  OUTLINED_FUNCTION_50_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_249E713AC()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v5 = *(v1 + 160);
  *v4 = *v2;
  *(v3 + 168) = v0;

  OUTLINED_FUNCTION_49_2();
  v7 = *(v6 + 72);
  OUTLINED_FUNCTION_50_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_249E714E8(unint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  swift_beginAccess();
  if (!*(v3 + 136))
  {
    v7 = *(v3 + 128);
    sub_249DF691C(0, a1, a2);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
    sub_249E7AC98();
    (a3)(v7, 0);
    v8 = *(v3 + 136);
  }

  v9 = *(v3 + 128);
  *(v3 + 128) = 0;
  *(v3 + 136) = 2;
  return a3(v9);
}

void sub_249E715BC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_249E7AC78();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = sub_249E42168(qword_28130D4C8, &unk_27EF24490, &unk_249E7FA60);
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = v10;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = v2;
  swift_retain_n();

  sub_249E70148();
}

void sub_249E71700(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_249E7AC78();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = sub_249E42168(&unk_28130D4B8, &qword_27EF24460, &qword_249E811B0);
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = v10;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = v2;
  swift_retain_n();

  sub_249E70148();
}

uint64_t sub_249E71844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a3;
  v7 = sub_249E7A6B8();
  v5[6] = v7;
  v8 = *(v7 - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E7190C, a5, 0);
}

uint64_t sub_249E7190C()
{
  OUTLINED_FUNCTION_23();
  sub_249E7ACD8();
  OUTLINED_FUNCTION_20_4();
  v2 = *(v1 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v0 + 72) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_62_1(v3);

  return v6(v5);
}

uint64_t sub_249E71A08()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v5 = *(v1 + 72);
  *v4 = *v2;
  *(v3 + 80) = v0;

  OUTLINED_FUNCTION_49_2();
  v7 = *(v6 + 40);
  OUTLINED_FUNCTION_50_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_249E71B1C()
{
  OUTLINED_FUNCTION_23();
  (*(v0[7] + 16))(v0[8], v0[5] + *(*v0[5] + 112), v0[6]);
  v1 = sub_249E7A698();
  v2 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_120(v2))
  {
    OUTLINED_FUNCTION_32_2();
    v3 = swift_slowAlloc();
    OUTLINED_FUNCTION_6_0(v3);
    OUTLINED_FUNCTION_35_1(&dword_249DEE000, v4, v5, "Task completed");
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];

  v9 = *(v7 + 8);
  v10 = OUTLINED_FUNCTION_126();
  v11(v10);
  v12 = v0[2];

  v13 = OUTLINED_FUNCTION_85_0();

  return v14(v13);
}

uint64_t sub_249E71C14()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  OUTLINED_FUNCTION_9_0();

  return v3();
}

uint64_t sub_249E71C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a3;
  v7 = sub_249E7A6B8();
  v5[6] = v7;
  v8 = *(v7 - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E71D38, a5, 0);
}

uint64_t sub_249E71D38()
{
  OUTLINED_FUNCTION_23();
  sub_249E7ACD8();
  OUTLINED_FUNCTION_20_4();
  v2 = *(v1 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_75();
  *(v0 + 72) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_62_1(v3);

  return v6(v5);
}

uint64_t sub_249E71E34()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v5 = *(v1 + 72);
  *v4 = *v2;
  *(v3 + 80) = v0;

  OUTLINED_FUNCTION_49_2();
  v7 = *(v6 + 40);
  OUTLINED_FUNCTION_50_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_249E71F48()
{
  v1 = v0;
  oslog = sub_249E7A698();
  v2 = sub_249E7AE28();
  if (os_log_type_enabled(oslog, v2))
  {
    OUTLINED_FUNCTION_26_3();
    v3 = swift_slowAlloc();
    *v3 = 67109120;
    *(v3 + 4) = *(&v1->isa + OBJC_IVAR____TtC10DropInCore17CallCenterManager_someoneJoined);

    _os_log_impl(&dword_249DEE000, oslog, v2, "Did Set Someone Joined to %{BOOL}d", v3, 8u);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    v4 = oslog;
  }

  else
  {

    v4 = v1;
  }
}

void sub_249E72028(void *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  v9 = v4;
  oslog = sub_249E7A698();
  v10 = sub_249E7AE28();

  if (os_log_type_enabled(oslog, v10))
  {
    OUTLINED_FUNCTION_70();
    v11 = swift_slowAlloc();
    v12 = OUTLINED_FUNCTION_4_0();
    *v11 = 136315138;
    v19 = *&v9[*a1];
    v20 = v12;
    v13 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v14 = sub_249E7AAC8();
    v16 = sub_249E3A958(v14, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_249DEE000, oslog, v10, a4, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v17 = OUTLINED_FUNCTION_7_9();
    MEMORY[0x24C205870](v17);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {
  }
}

uint64_t sub_249E7218C()
{
  OUTLINED_FUNCTION_22();
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24460, &qword_249E811B0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_249E498AC(&unk_249E81258, v0);
}

void sub_249E72208(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter);
  v3 = [v2 conversationManager];
  [v3 addDelegate:a1 queue:*(a1 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue)];

  v4 = [v2 conversationManager];
  [v4 refreshActiveConversations];
}

uint64_t sub_249E722B8()
{
  OUTLINED_FUNCTION_11();
  v0[12] = v1;
  v2 = sub_249E7A928();
  v0[13] = v2;
  OUTLINED_FUNCTION_34_0(v2);
  v0[14] = v3;
  v5 = *(v4 + 64) + 15;
  v0[15] = swift_task_alloc();
  v6 = sub_249E7A958();
  v0[16] = v6;
  OUTLINED_FUNCTION_34_0(v6);
  v0[17] = v7;
  v9 = *(v8 + 64) + 15;
  v0[18] = swift_task_alloc();
  v10 = sub_249E7AC78();
  v0[19] = v10;
  OUTLINED_FUNCTION_34_0(v10);
  v0[20] = v11;
  v13 = *(v12 + 64) + 15;
  v0[21] = swift_task_alloc();
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

void sub_249E72410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v26 = v22[12];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v22[22] = Strong;
  if (Strong)
  {
    v28 = Strong;
    v29 = sub_249E7A698();
    v30 = sub_249E7AE28();
    if (os_log_type_enabled(v29, v30))
    {
      v32 = v22[20];
      v31 = v22[21];
      v33 = v22[19];
      OUTLINED_FUNCTION_70();
      swift_slowAlloc();
      v62 = OUTLINED_FUNCTION_24();
      a11 = v62;
      *v23 = 136315138;
      sub_249E7ACC8();
      OUTLINED_FUNCTION_31_3();
      sub_249E78F10(v34, v35);
      v36 = sub_249E7B2D8();
      v38 = v37;
      (*(v32 + 8))(v31, v33);
      v39 = sub_249E3A958(v36, v38, &a11);

      *(v23 + 4) = v39;
      OUTLINED_FUNCTION_67(&dword_249DEE000, v29, v30, "Task Priority = %s");
      __swift_destroy_boxed_opaque_existential_0(v62);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      v40 = OUTLINED_FUNCTION_7_9();
      MEMORY[0x24C205870](v40);
    }

    v41 = *(v28 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_conversationProviderLoader);
    v22[23] = v41;
    if (v41)
    {

      v42 = swift_task_alloc();
      v22[24] = v42;
      *v42 = v22;
      OUTLINED_FUNCTION_80(v42);
      OUTLINED_FUNCTION_72();

      v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, sub_249E70D74, a11, a12, a13, a14);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v51 = v22[21];
    v52 = v22[18];
    v53 = v22[15];

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_249E7265C()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  v5 = v4;
  OUTLINED_FUNCTION_6_2();
  *v6 = v5;
  v8 = *(v7 + 192);
  v9 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v10 = v9;
  *(v5 + 200) = v0;

  if (!v0)
  {
    v11 = *(v5 + 184);
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_249E72770()
{
  v2 = v0[18];
  v3 = v0[15];
  v19 = v0[17];
  v20 = v0[16];
  v4 = v0[13];
  v17 = v0[22];
  v18 = v0[14];
  v16 = *&v17[OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue];
  OUTLINED_FUNCTION_22();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_14_4(v5);
  swift_unknownObjectWeakInit();
  v0[6] = sub_249E797D0;
  v0[7] = v1;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_249E52140;
  v0[5] = &block_descriptor_123;
  v6 = _Block_copy(v0 + 2);

  sub_249E7A938();
  v0[11] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_1_12();
  sub_249E78F10(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
  OUTLINED_FUNCTION_4_12();
  sub_249E42168(v9, &unk_27EF23D50, &unk_249E80260);
  sub_249E7B018();
  MEMORY[0x24C204A90](0, v2, v3, v6);
  _Block_release(v6);
  (*(v18 + 8))(v3, v4);
  (*(v19 + 8))(v2, v20);

  v10 = v0[7];

  v11 = v0[21];
  v12 = v0[18];
  v13 = v0[15];

  OUTLINED_FUNCTION_9_0();

  return v14();
}

uint64_t sub_249E729BC()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 120);

  OUTLINED_FUNCTION_9_0();
  v6 = *(v0 + 200);

  return v5();
}

void sub_249E72A4C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter;
    v3 = [*(Strong + OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter) currentCalls];
    v4 = sub_249DF691C(0, &unk_28130D180, 0x277D6EDE0);
    v5 = sub_249E7ABE8();

    v6 = sub_249E7A698();
    v7 = sub_249E7AE28();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v35 = v9;
      *v8 = 136315138;
      v10 = MEMORY[0x24C204800](v5, v4);
      v12 = sub_249E3A958(v10, v11, &v35);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_249DEE000, v6, v7, "Current Calls: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x24C205870](v9, -1, -1);
      MEMORY[0x24C205870](v8, -1, -1);
    }

    v13 = sub_249E51FB4(v5);
    v14 = 0;
    v33 = v5 & 0xFFFFFFFFFFFFFF8;
    v34 = v5 & 0xC000000000000001;
    v31 = v13;
    v32 = v5;
    while (1)
    {
      if (v13 == v14)
      {

        return;
      }

      if (v34)
      {
        v15 = MEMORY[0x24C204D50](v14, v5);
      }

      else
      {
        if (v14 >= *(v33 + 16))
        {
          goto LABEL_19;
        }

        v15 = *(v5 + 8 * v14 + 32);
      }

      v16 = v15;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v17 = *&v1[v2];
      v18 = sub_249E2E1F4(v15);
      if (v18)
      {
        v19 = v18;
        v20 = v16;
        v21 = sub_249E7A698();
        v22 = sub_249E7AE28();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = v1;
          v25 = v2;
          v26 = swift_slowAlloc();
          *v23 = 138412290;
          *(v23 + 4) = v20;
          *v26 = v20;
          v27 = v20;
          _os_log_impl(&dword_249DEE000, v21, v22, "Ending Call %@", v23, 0xCu);
          sub_249E2A8CC(v26, &unk_27EF23C30, &qword_249E7DA20);
          v28 = v26;
          v2 = v25;
          v1 = v24;
          v13 = v31;
          MEMORY[0x24C205870](v28, -1, -1);
          v29 = v23;
          v5 = v32;
          MEMORY[0x24C205870](v29, -1, -1);
        }

        v30 = [v17 conversationManager];
        sub_249E2DE24(v19);

        [v17 disconnectCall_];
        v16 = v19;
      }

      ++v14;
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }
}

id sub_249E72DC4()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x277D6F0A0] object:0];

  v3 = [v1 defaultCenter];
  [v3 removeObserver:v0 name:*MEMORY[0x277D6EFF0] object:0];

  v5.receiver = v0;
  v5.super_class = type metadata accessor for CallCenterManager();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t type metadata accessor for CallCenterManager()
{
  result = qword_28130DA58;
  if (!qword_28130DA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_249E73060()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v0;
  v4 = v3;
  v5 = sub_249E7A928();
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_4();
  v24 = sub_249E7A958();
  v9 = OUTLINED_FUNCTION_3(v24);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_52_2();
  v23 = *(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
  OUTLINED_FUNCTION_22();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_14_4(v12);
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = v4;
  v25[4] = sub_249E79440;
  v25[5] = v13;
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v25[2] = v14;
  v25[3] = &block_descriptor_60;
  v15 = _Block_copy(v25);

  sub_249E7A938();
  OUTLINED_FUNCTION_1_12();
  sub_249E78F10(v16, v17);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_94_0(v18);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_22_4();
  _Block_release(v15);
  v19 = OUTLINED_FUNCTION_6_7();
  v20(v19);
  v21 = OUTLINED_FUNCTION_7_7();
  v22(v21);
  OUTLINED_FUNCTION_21_3();

  OUTLINED_FUNCTION_6_1();
}

void sub_249E73284(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x1D0))(a2);
  }
}

void sub_249E73318()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_249E7A928();
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_4();
  v27 = sub_249E7A958();
  v11 = OUTLINED_FUNCTION_3(v27);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_52_2();
  v26 = *(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
  OUTLINED_FUNCTION_22();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_14_4(v14);
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  *(v15 + 24) = v6;
  *(v15 + 32) = v4;
  v28[4] = sub_249E79434;
  v28[5] = v15;
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v28[2] = v16;
  v28[3] = &block_descriptor_53_0;
  v17 = _Block_copy(v28);

  v18 = v6;
  sub_249E7A938();
  OUTLINED_FUNCTION_1_12();
  sub_249E78F10(v19, v20);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_94_0(v21);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_22_4();
  _Block_release(v17);
  v22 = OUTLINED_FUNCTION_6_7();
  v23(v22);
  v24 = OUTLINED_FUNCTION_7_7();
  v25(v24);
  OUTLINED_FUNCTION_21_3();

  OUTLINED_FUNCTION_6_1();
}

void sub_249E73544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x1D8))(a2, a3);
  }
}

uint64_t sub_249E735EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF244A0, &qword_249E81218);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_249E6E798();
}

uint64_t sub_249E73780(uint64_t (*a1)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter;
    v5 = *(Strong + OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter);
    sub_249E2E2EC();

    v6 = *&v3[v4];
    sub_249E2E5EC();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return a1(v8 & 1);
}

void sub_249E73838()
{
  v1 = v0;
  v2 = sub_249E7A998();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = *(v1 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
  *(v9 - v8) = v11;
  v12 = *MEMORY[0x277D85200];
  OUTLINED_FUNCTION_77();
  v13(v10);
  v14 = v11;
  LOBYTE(v11) = sub_249E7A9B8();
  (*(v5 + 8))(v10, v2);
  if (v11)
  {
    v15 = sub_249E7A698();
    v16 = sub_249E7AE28();
    if (OUTLINED_FUNCTION_201(v16))
    {
      OUTLINED_FUNCTION_32_2();
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_249DEE000, v15, v16, "Invalidating Conversation Timer", v17, 2u);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v18 = *(v1 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_conversationTimer);
    *(v1 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_conversationTimer) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_249E739F0()
{
  result = sub_249E7A6B8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_249E7A688();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_249E73B08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23690, &qword_249E7DF10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_249E73C58();
}

void sub_249E73C58()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_249E7A928();
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_4();
  v28 = sub_249E7A958();
  v13 = OUTLINED_FUNCTION_3(v28);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_52_2();
  v27 = *(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
  OUTLINED_FUNCTION_22();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_14_4(v16);
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v6;
  *(v17 + 24) = v4;
  *(v17 + 32) = v1;
  *(v17 + 40) = v8;
  v29[4] = sub_249E797C0;
  v29[5] = v17;
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v29[2] = v18;
  v29[3] = &block_descriptor_117;
  v19 = _Block_copy(v29);

  sub_249E7A938();
  OUTLINED_FUNCTION_1_12();
  sub_249E78F10(v20, v21);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_94_0(v22);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_22_4();
  _Block_release(v19);
  v23 = OUTLINED_FUNCTION_6_7();
  v24(v23);
  v25 = OUTLINED_FUNCTION_7_7();
  v26(v25);
  OUTLINED_FUNCTION_21_3();

  OUTLINED_FUNCTION_6_1();
}

void sub_249E73E90(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_6:
    a1(Strong);
    return;
  }

  v7 = Strong;
  v8 = *(Strong + OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeCall);
  if (v8)
  {
    v9 = v8;
    v10 = a4 & 1;
    [v9 setUplinkMuted_];
    v11 = sub_249E7A698();
    v12 = sub_249E7AE28();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = v10;
      _os_log_impl(&dword_249DEE000, v11, v12, "Set Uplink Muted Status to %{BOOL}d", v13, 8u);
      MEMORY[0x24C205870](v13, -1, -1);
    }

    Strong = 0;
    goto LABEL_6;
  }

  v14 = sub_249E7A698();
  v15 = sub_249E7AE08();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_249DEE000, v14, v15, "Failed to Set Uplink Muted Status. No Active Call", v16, 2u);
    MEMORY[0x24C205870](v16, -1, -1);
  }

  sub_249E0881C();
  v17 = swift_allocError();
  *v18 = 6;

  a1(v17);
}

uint64_t sub_249E74088(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF244B0, &qword_249E81230);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_249E74278();
}

uint64_t sub_249E741F4(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF244B0, &qword_249E81230);
    return sub_249E7AC38();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF244B0, &qword_249E81230);
    return sub_249E7AC48();
  }
}

void sub_249E74278()
{
  OUTLINED_FUNCTION_15_0();
  v29 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_249E7A928();
  v12 = OUTLINED_FUNCTION_3(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_4();
  v31 = sub_249E7A958();
  v15 = OUTLINED_FUNCTION_3(v31);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_52_2();
  v30 = *(v0 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
  OUTLINED_FUNCTION_22();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_14_4(v18);
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = v10;
  v19[3] = v8;
  v19[4] = v3;
  v32[4] = v6;
  v32[5] = v19;
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v32[2] = v20;
  v32[3] = v29;
  v21 = _Block_copy(v32);

  sub_249E7A938();
  OUTLINED_FUNCTION_1_12();
  sub_249E78F10(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
  OUTLINED_FUNCTION_4_12();
  sub_249E42168(v24, &unk_27EF23D50, &unk_249E80260);
  sub_249E7B018();
  MEMORY[0x24C204A90](0, v2, v1, v21);
  _Block_release(v21);
  v25 = OUTLINED_FUNCTION_6_7();
  v26(v25);
  v27 = OUTLINED_FUNCTION_7_7();
  v28(v27);
  OUTLINED_FUNCTION_21_3();

  OUTLINED_FUNCTION_6_1();
}

void sub_249E744D8(void (*a1)(uint64_t, void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_6:
    a1(Strong, 0);
    return;
  }

  v3 = Strong;
  v4 = *(Strong + OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeCall);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 isUplinkMuted];
    v7 = sub_249E7A698();
    v8 = sub_249E7AE28();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = v6;
      _os_log_impl(&dword_249DEE000, v7, v8, "Uplink Muted Status is %{BOOL}d", v9, 8u);
      MEMORY[0x24C205870](v9, -1, -1);
    }

    Strong = v6;
    goto LABEL_6;
  }

  v10 = sub_249E7A698();
  v11 = sub_249E7AE08();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_249DEE000, v10, v11, "Failed to Set Uplink Muted Status. No Active Call", v12, 2u);
    MEMORY[0x24C205870](v12, -1, -1);
  }

  sub_249E0881C();
  v13 = swift_allocError();
  *v14 = 6;

  a1(0, v13);
}

void sub_249E746D0(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_249E7472C(a2 & 1);
  }
}

void sub_249E7472C(char a1)
{
  v2 = v1;
  v4 = sub_249E7A5B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  v12 = sub_249E7A998();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v34 = v17;
  LOBYTE(v17) = sub_249E7A9B8();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v18 = sub_249E7A698();
    v19 = sub_249E7AE28();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_249DEE000, v18, v19, "Starting Conversation Timer", v20, 2u);
      MEMORY[0x24C205870](v20, -1, -1);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_249E7A598();
      v21 = a1 & 1;
      sub_249E3C8E0(v21);
      sub_249E7A528();
      v22 = *(v5 + 8);
      v22(v9, v4);
      sub_249E1FA50(v2, v11, v21, v23, v24, v25, v26, v27, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
      swift_unknownObjectRelease();
      v22(v11, v4);
    }

    else
    {
      LOBYTE(v21) = a1 & 1;
    }

    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = v21;
    v30 = objc_allocWithZone(type metadata accessor for ConversationTimer());
    v31 = sub_249E3C76C(v21, v34, sub_249E79544, v29);
    v32 = *(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_conversationTimer);
    *(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_conversationTimer) = v31;
  }

  else
  {
    __break(1u);
  }
}

void sub_249E74A84(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;

    v10 = sub_249E7A698();
    v11 = sub_249E7AE28();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_249E3A958(a1, a2, &v24);
      _os_log_impl(&dword_249DEE000, v10, v11, "Conversation timer fired. Max time limit for %s reached. Ending call.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C205870](v13, -1, -1);
      MEMORY[0x24C205870](v12, -1, -1);
    }

    v14 = MEMORY[0x277D85000];
    if (a5)
    {
      v15 = 5;
    }

    else
    {
      v16 = sub_249E7A698();
      v17 = sub_249E7AE08();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_249DEE000, v16, v17, "Timed out waiting for participant to join conversation", v18, 2u);
        MEMORY[0x24C205870](v18, -1, -1);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_249E0881C();
        v19 = swift_allocError();
        *v20 = 5;
        sub_249E1E598();
        swift_unknownObjectRelease();
      }

      v15 = (*((*v14 & *v9) + 0x198))();
    }

    (*((*v14 & *v9) + 0x1A8))(v15);
    v21 = *(v9 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation);
    if (v21)
    {
      v22 = *((*v14 & *v9) + 0x1B0);
      v23 = v21;
      v22();
    }
  }
}

void sub_249E74D84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_92_0())
  {
    OUTLINED_FUNCTION_70();
    swift_slowAlloc();
    OUTLINED_FUNCTION_17_4();
    v5 = swift_slowAlloc();
    *v2 = 138412290;
    *(v2 + 4) = v3;
    *v5 = v3;
    v6 = v3;
    OUTLINED_FUNCTION_11_6();
    _os_log_impl(v7, v8, v9, v10, v11, v12);
    sub_249E2A8CC(v5, &unk_27EF23C30, &qword_249E7DA20);
    v13 = OUTLINED_FUNCTION_7_9();
    MEMORY[0x24C205870](v13);
    v14 = OUTLINED_FUNCTION_9_9();
    MEMORY[0x24C205870](v14);
  }

  v15 = v3;
  v16 = sub_249E7A698();
  v17 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_201(v17))
  {
    OUTLINED_FUNCTION_70();
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    v19 = [v15 activeRemoteParticipants];
    sub_249DF691C(0, &qword_28130D1C8, 0x277D6EEA8);
    sub_249E79328();
    v20 = sub_249E7AD58();

    v21 = sub_249E6972C(v20);

    *(v18 + 4) = v21;

    OUTLINED_FUNCTION_11_6();
    _os_log_impl(v22, v23, v24, v25, v26, v27);
    v28 = OUTLINED_FUNCTION_9_9();
    MEMORY[0x24C205870](v28);
  }

  else
  {

    v16 = v15;
  }

  v29 = v15;
  v30 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_92_0())
  {
    OUTLINED_FUNCTION_70();
    v31 = swift_slowAlloc();
    v32 = OUTLINED_FUNCTION_4_0();
    v47 = v32;
    *v31 = 136315138;
    v33 = [v29 initiator];
    v34 = [v33 debugDescription];

    v35 = sub_249E7AAA8();
    v37 = v36;

    v38 = sub_249E3A958(v35, v37, &v47);

    *(v31 + 4) = v38;
    OUTLINED_FUNCTION_11_6();
    _os_log_impl(v39, v40, v41, v42, v43, v44);
    __swift_destroy_boxed_opaque_existential_0(v32);
    v45 = OUTLINED_FUNCTION_7_9();
    MEMORY[0x24C205870](v45);
    v46 = OUTLINED_FUNCTION_9_9();
    MEMORY[0x24C205870](v46);
  }

  sub_249E6EE20();
}

void sub_249E750C8(uint64_t a1, uint64_t a2)
{

  oslog = sub_249E7A698();
  v3 = sub_249E7AE28();

  if (os_log_type_enabled(oslog, v3))
  {
    OUTLINED_FUNCTION_70();
    v4 = swift_slowAlloc();
    v5 = OUTLINED_FUNCTION_4_0();
    v11 = v5;
    *v4 = 136315138;
    v6 = sub_249DF691C(0, &qword_27EF238C0, 0x277D6EE60);
    v7 = MEMORY[0x24C204800](a2, v6);
    v9 = sub_249E3A958(v7, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_249DEE000, oslog, v3, "Updated Incoming Pending Conversations: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }
}

void sub_249E75284()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0;
  v3 = v2;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_28_0(v86);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v6);
  v85 = &v81 - v7;
  v8 = sub_249E7A628();
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  v17 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_logger;
  v18 = v3;
  v87 = v17;
  v19 = sub_249E7A698();
  v20 = sub_249E7AE28();
  v21 = os_log_type_enabled(v19, v20);
  v84 = v8;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v82 = v20;
    v23 = v22;
    v83 = swift_slowAlloc();
    v88 = v83;
    *v23 = 67109890;
    *(v23 + 4) = sub_249E2D838() & 1;

    *(v23 + 8) = 2080;
    v24 = TUConversationState.description.getter([v18 state]);
    v26 = sub_249E3A958(v24, v25, &v88);

    *(v23 + 10) = v26;
    *(v23 + 18) = 2080;
    v27 = [v18 UUID];
    sub_249E7A608();

    OUTLINED_FUNCTION_5_13();
    sub_249E78F10(v28, v29);
    v30 = sub_249E7B2D8();
    v32 = v31;
    (*(v11 + 8))(v16, v8);
    v33 = sub_249E3A958(v30, v32, &v88);

    *(v23 + 20) = v33;
    *(v23 + 28) = 2080;
    v34 = [v18 provider];
    v35 = [v34 identifier];

    sub_249E7AAA8();
    v36 = OUTLINED_FUNCTION_126();
    v39 = sub_249E3A958(v36, v37, v38);

    *(v23 + 30) = v39;
    _os_log_impl(&dword_249DEE000, v19, v82, "State Changed For Conversation. IsDropInConversation = %{BOOL}d, State = %s, Conversation = %s, Provider = %s", v23, 0x26u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {
  }

  v40 = v18;
  v41 = sub_249E7A698();
  v42 = sub_249E7AE28();

  if (os_log_type_enabled(v41, v42))
  {
    OUTLINED_FUNCTION_70();
    v43 = swift_slowAlloc();
    v44 = OUTLINED_FUNCTION_4_0();
    v88 = v44;
    *v43 = 136315138;
    v45 = [v40 initiator];
    v46 = [v45 debugDescription];

    v47 = sub_249E7AAA8();
    v49 = v48;

    v50 = sub_249E3A958(v47, v49, &v88);

    *(v43 + 4) = v50;
    _os_log_impl(&dword_249DEE000, v41, v42, "Conversation initiator: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v51 = v40;
  v52 = sub_249E7A698();
  v53 = sub_249E7AE28();

  if (os_log_type_enabled(v52, v53))
  {
    OUTLINED_FUNCTION_70();
    swift_slowAlloc();
    v54 = OUTLINED_FUNCTION_24();
    v88 = v54;
    *v40 = 136315138;
    v55 = [v51 activeRemoteParticipants];
    sub_249DF691C(0, &qword_28130D1C8, 0x277D6EEA8);
    sub_249E79328();
    sub_249E7AD58();

    v56 = sub_249E7AD68();
    v58 = v57;

    v59 = sub_249E3A958(v56, v58, &v88);

    *(v40 + 1) = v59;
    OUTLINED_FUNCTION_67(&dword_249DEE000, v52, v53, "Active Remote Participants = %s");
    __swift_destroy_boxed_opaque_existential_0(v54);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    v60 = OUTLINED_FUNCTION_7_9();
    MEMORY[0x24C205870](v60);
  }

  v61 = v1;
  v62 = sub_249E7A698();
  v63 = sub_249E7AE28();

  if (os_log_type_enabled(v62, v63))
  {
    OUTLINED_FUNCTION_70();
    v64 = swift_slowAlloc();
    v65 = OUTLINED_FUNCTION_4_0();
    v88 = v65;
    *v64 = 136315138;
    v66 = *&v61[OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation];
    if (v66)
    {
      v67 = [v66 UUID];
      v68 = v85;
      sub_249E7A608();

      v69 = 0;
    }

    else
    {
      v69 = 1;
      v68 = v85;
    }

    __swift_storeEnumTagSinglePayload(v68, v69, 1, v84);
    v70 = sub_249E7AAC8();
    v72 = sub_249E3A958(v70, v71, &v88);

    *(v64 + 4) = v72;
    OUTLINED_FUNCTION_11_6();
    _os_log_impl(v73, v74, v75, v76, v77, v78);
    __swift_destroy_boxed_opaque_existential_0(v65);
    v79 = OUTLINED_FUNCTION_7_9();
    MEMORY[0x24C205870](v79);
    v80 = OUTLINED_FUNCTION_9_9();
    MEMORY[0x24C205870](v80);
  }

  OUTLINED_FUNCTION_6_1();
}

void sub_249E7595C()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  OUTLINED_FUNCTION_28_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - v7;
  v9 = sub_249E7A628();
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v17 = v16 - v15;
  v18 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_logger;
  v19 = v2;
  v54 = v18;
  v55 = v0;
  v20 = sub_249E7A698();
  v21 = sub_249E7AE28();

  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_70();
    v22 = swift_slowAlloc();
    v53 = v3;
    v23 = v22;
    v24 = OUTLINED_FUNCTION_4_0();
    v52 = v8;
    v25 = v24;
    v56 = v24;
    *v23 = 136315138;
    v26 = [v19 UUID];
    sub_249E7A608();

    OUTLINED_FUNCTION_5_13();
    sub_249E78F10(v27, v28);
    sub_249E7B2D8();
    v29 = v17;
    v30 = v9;
    (*(v12 + 8))(v29, v9);
    v31 = OUTLINED_FUNCTION_83();
    v34 = sub_249E3A958(v31, v32, v33);

    *(v23 + 4) = v34;
    _os_log_impl(&dword_249DEE000, v20, v21, "Removed Active Conversation: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v8 = v52;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {
    v30 = v9;
  }

  v35 = v55;
  v36 = sub_249E7A698();
  v37 = sub_249E7AE28();

  if (os_log_type_enabled(v36, v37))
  {
    OUTLINED_FUNCTION_70();
    swift_slowAlloc();
    v38 = OUTLINED_FUNCTION_24();
    v56 = v38;
    *v20 = 136315138;
    v39 = *&v35[OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation];
    if (v39)
    {
      v40 = [v39 UUID];
      sub_249E7A608();

      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    __swift_storeEnumTagSinglePayload(v8, v41, 1, v30);
    v42 = sub_249E7AAC8();
    v44 = sub_249E3A958(v42, v43, &v56);

    *(v20 + 4) = v44;
    OUTLINED_FUNCTION_25_1();
    _os_log_impl(v45, v46, v47, v48, v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    v50 = OUTLINED_FUNCTION_7_9();
    MEMORY[0x24C205870](v50);
  }

  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E75D1C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  OUTLINED_FUNCTION_37(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = a1;
  v11 = sub_249E7A698();
  v12 = sub_249E7AE08();

  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_70();
    v13 = swift_slowAlloc();
    OUTLINED_FUNCTION_26_3();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    OUTLINED_FUNCTION_25_1();
    _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
    sub_249E2A8CC(v14, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    v21 = OUTLINED_FUNCTION_7_9();
    MEMORY[0x24C205870](v21);
  }

  v22 = [*(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter) conversationManager];
  [v22 refreshActiveConversations];

  sub_249E7AC58();
  v23 = sub_249E7AC78();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v23);
  OUTLINED_FUNCTION_22();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v24;
  sub_249E5ED90(0, 0, v9, &unk_249E81190, v25);
}

uint64_t sub_249E75F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_249E7AC78();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E75FD4, 0, 0);
}

uint64_t sub_249E75FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v26 = v22[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v22[9] = Strong;
  if (Strong)
  {
    v28 = Strong;
    v22[10] = OBJC_IVAR____TtC10DropInCore17CallCenterManager_logger;
    v29 = sub_249E7A698();
    v30 = sub_249E7AE28();
    if (os_log_type_enabled(v29, v30))
    {
      v61 = v30;
      v32 = v22[7];
      v31 = v22[8];
      v33 = v22[6];
      OUTLINED_FUNCTION_70();
      swift_slowAlloc();
      v62 = OUTLINED_FUNCTION_24();
      a11 = v62;
      *v23 = 136315138;
      sub_249E7ACC8();
      OUTLINED_FUNCTION_31_3();
      sub_249E78F10(v34, v35);
      v36 = sub_249E7B2D8();
      v38 = v37;
      (*(v32 + 8))(v31, v33);
      v39 = sub_249E3A958(v36, v38, &a11);

      *(v23 + 4) = v39;
      OUTLINED_FUNCTION_67(&dword_249DEE000, v29, v61, "Task Priority = %s");
      __swift_destroy_boxed_opaque_existential_0(v62);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      v40 = OUTLINED_FUNCTION_7_9();
      MEMORY[0x24C205870](v40);
    }

    v41 = sub_249E7A698();
    v42 = sub_249E7AE28();
    if (OUTLINED_FUNCTION_201(v42))
    {
      OUTLINED_FUNCTION_32_2();
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_249DEE000, v41, v42, "Purging Conversation Provider", v43, 2u);
      v44 = OUTLINED_FUNCTION_9_9();
      MEMORY[0x24C205870](v44);
    }

    v48 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_conversationProviderLoader;
    v22[11] = OBJC_IVAR____TtC10DropInCore17CallCenterManager_conversationProviderLoader;
    v49 = *(v28 + v48);
    v22[12] = v49;
    if (v49)
    {

      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_72();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2822009F8](v45, v46, v47);
  }

  else
  {
    v51 = v22[8];

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_249E76230()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 96);
  sub_249E714E8(&unk_28130D1D0, 0x277D6EEB0, sub_249E79A0C);

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

void sub_249E762BC()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[9] + v0[10];
  v2 = sub_249E7A698();
  v3 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_120(v3))
  {
    OUTLINED_FUNCTION_32_2();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_6_0(v4);
    OUTLINED_FUNCTION_35_1(&dword_249DEE000, v5, v6, "Reloading Conversation Provider");
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v7 = v0[11];
  v8 = v0[9];

  v9 = *(v8 + v7);
  v0[13] = v9;
  if (v9)
  {

    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v11 = OUTLINED_FUNCTION_80(v10);

    sub_249E70D74(v11, v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_249E763CC()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  v5 = v4;
  OUTLINED_FUNCTION_6_2();
  *v6 = v5;
  v8 = *(v7 + 112);
  v9 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v10 = v9;
  *(v5 + 120) = v0;

  if (!v0)
  {
    v11 = *(v5 + 104);
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_249E764E0()
{
  OUTLINED_FUNCTION_82();
  v2 = v0[15];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];

  v6 = v2;
  v7 = sub_249E7A698();
  sub_249E7AE08();

  v8 = OUTLINED_FUNCTION_272();
  v9 = v0[15];
  v10 = v0[9];
  if (v8)
  {
    OUTLINED_FUNCTION_70();
    swift_slowAlloc();
    OUTLINED_FUNCTION_17_4();
    v11 = swift_slowAlloc();
    *v1 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v13;
    *v11 = v13;
    OUTLINED_FUNCTION_11_6();
    _os_log_impl(v14, v15, v16, v17, v18, v19);
    sub_249E2A8CC(v11, &unk_27EF23C30, &qword_249E7DA20);
    v20 = OUTLINED_FUNCTION_7_9();
    MEMORY[0x24C205870](v20);
    v21 = OUTLINED_FUNCTION_9_9();
    MEMORY[0x24C205870](v21);
  }

  else
  {
  }

  v22 = v0[8];

  OUTLINED_FUNCTION_9_0();

  return v23();
}

uint64_t sub_249E76694(float a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_249E1EE5C(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_249E7670C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_249E7A928();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  MEMORY[0x28223BE20](v4);
  v47 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_249E7A958();
  v46 = *(v48 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v45 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_249E7A468();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_logger;
  (*(v10 + 16))(v13, a1, v9);
  v15 = sub_249E7A698();
  v16 = sub_249E7AE28();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v44 = v1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v43[1] = v14;
    v20 = v19;
    aBlock[0] = v19;
    *v18 = 136315138;
    sub_249E78F10(qword_28130D370, MEMORY[0x277CC8900]);
    v21 = sub_249E7B2D8();
    v23 = v22;
    (*(v10 + 8))(v13, v9);
    v24 = sub_249E3A958(v21, v23, aBlock);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_249DEE000, v15, v16, "Uplink Muted changed with notification: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x24C205870](v20, -1, -1);
    v25 = v18;
    v2 = v44;
    MEMORY[0x24C205870](v25, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  sub_249E7A458();
  if (v52)
  {
    sub_249DF691C(0, &unk_28130D180, 0x277D6EDE0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v26 = v55;
    v27 = [v55 callCenter];
    if (v27)
    {
      v28 = v27;
      sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
      v29 = *(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter);
      if (sub_249E7AF78())
      {
        v44 = *(v2 + OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue);
        v30 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v31 = swift_allocObject();
        *(v31 + 16) = v30;
        *(v31 + 24) = v26;
        v53 = sub_249E78EF0;
        v54 = v31;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_249E52140;
        v52 = &block_descriptor_10;
        v32 = _Block_copy(aBlock);

        v33 = v26;
        v34 = v45;
        sub_249E7A938();
        v55 = MEMORY[0x277D84F90];
        sub_249E78F10(&qword_28130D2D0, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
        sub_249E42168(&qword_28130D2A0, &unk_27EF23D50, &unk_249E80260);
        v35 = v47;
        v36 = v50;
        sub_249E7B018();
        MEMORY[0x24C204A90](0, v34, v35, v32);
        _Block_release(v32);

        (*(v49 + 8))(v35, v36);
        (*(v46 + 8))(v34, v48);

        return;
      }
    }

    v37 = v26;
    v38 = sub_249E7A698();
    v39 = sub_249E7AE28();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = [v37 callCenter];
      *(v40 + 4) = v42;
      *v41 = v42;
      _os_log_impl(&dword_249DEE000, v38, v39, "Ignoring TUCall from different call center: %@", v40, 0xCu);
      sub_249E2A8CC(v41, &unk_27EF23C30, &qword_249E7DA20);
      MEMORY[0x24C205870](v41, -1, -1);
      MEMORY[0x24C205870](v40, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_249E2A8CC(aBlock, &unk_27EF23C40, &qword_249E7D8E0);
  }
}

void sub_249E76DEC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_249E76E48(a2);
  }
}

void sub_249E76E48(void *a1)
{
  v2 = v1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v4 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v6 = &v58 - v5;
  v7 = sub_249E7A628();
  v62 = *(v7 - 8);
  v8 = *(v62 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v58 - v12;
  v14 = sub_249E7A998();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *&v2[OBJC_IVAR____TtC10DropInCore17CallCenterManager_serialQueue];
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x277D85200], v14);
  v20 = v19;
  LOBYTE(v19) = sub_249E7A9B8();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if ([a1 status] != 1)
  {
    v30 = a1;
    v31 = sub_249E7A698();
    v32 = sub_249E7AE28();

    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_16;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v30;
    *v34 = v30;
    v35 = v30;
    v36 = "Ignoring uplink mute changed. Call is not active: %@";
LABEL_15:
    _os_log_impl(&dword_249DEE000, v31, v32, v36, v33, 0xCu);
    sub_249E2A8CC(v34, &unk_27EF23C30, &qword_249E7DA20);
    MEMORY[0x24C205870](v34, -1, -1);
    MEMORY[0x24C205870](v33, -1, -1);
    goto LABEL_16;
  }

  if (![a1 isConversation])
  {
    v37 = a1;
    v31 = sub_249E7A698();
    v32 = sub_249E7AE28();

    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_16;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v37;
    *v34 = v37;
    v38 = v37;
    v36 = "Ignoring uplink mute changed. Call is not conversation: %@";
    goto LABEL_15;
  }

  v21 = *&v2[OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter];
  v22 = sub_249E2E1F4(a1);
  if (!v22)
  {
    v39 = a1;
    v31 = sub_249E7A698();
    v32 = sub_249E7AE28();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v39;
      *v34 = v39;
      v40 = v39;
      v36 = "Ignoring uplink mute changed. Failed to find active conversation for call: %@";
      goto LABEL_15;
    }

LABEL_16:

    return;
  }

  v23 = v22;
  v60 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation;
  v24 = *&v2[OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeConversation];
  if (v24)
  {
    v25 = v24;
    v26 = [v23 UUID];
    sub_249E7A608();

    v59 = v25;
    v27 = [v25 UUID];
    sub_249E7A608();

    LOBYTE(v27) = sub_249E7A5F8();
    v28 = *(v62 + 8);
    v28(v11, v7);
    v28(v13, v7);
    if (v27)
    {
      v29 = v59;
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_249E1F358(v2, [a1 isUplinkMuted]);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }
  }

  v41 = v23;
  v42 = v2;
  v43 = sub_249E7A698();
  v44 = sub_249E7AE28();

  if (os_log_type_enabled(v43, v44))
  {
    LODWORD(v59) = v44;
    v45 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v63 = v58;
    *v45 = 136315394;
    v46 = [v41 UUID];
    sub_249E7A608();

    sub_249E78F10(&qword_28130D350, MEMORY[0x277CC95F0]);
    v47 = sub_249E7B2D8();
    v49 = v48;
    (*(v62 + 8))(v13, v7);
    v50 = sub_249E3A958(v47, v49, &v63);

    *(v45 + 4) = v50;
    *(v45 + 12) = 2080;
    v51 = *&v2[v60];
    if (v51)
    {
      v52 = [v51 UUID];
      sub_249E7A608();

      v53 = 0;
    }

    else
    {
      v53 = 1;
    }

    __swift_storeEnumTagSinglePayload(v6, v53, 1, v7);
    v54 = sub_249E7AAC8();
    v56 = sub_249E3A958(v54, v55, &v63);

    *(v45 + 14) = v56;
    _os_log_impl(&dword_249DEE000, v43, v59, "Ignoring uplink mute changed. Conversation UUID mismatch. callUUID=%s, activeConverationUUID=%s", v45, 0x16u);
    v57 = v58;
    swift_arrayDestroy();
    MEMORY[0x24C205870](v57, -1, -1);
    MEMORY[0x24C205870](v45, -1, -1);
  }

  else
  {
  }
}

void sub_249E775C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_249E7A468();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_logger;
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_249E7A698();
  v11 = sub_249E7AE28();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v42 = v9;
    v13 = v12;
    v41 = swift_slowAlloc();
    v44[0] = v41;
    *v13 = 136315138;
    sub_249E78F10(qword_28130D370, MEMORY[0x277CC8900]);
    v14 = sub_249E7B2D8();
    v15 = v2;
    v17 = v16;
    (*(v5 + 8))(v8, v4);
    v18 = sub_249E3A958(v14, v17, v44);
    v2 = v15;

    *(v13 + 4) = v18;
    _os_log_impl(&dword_249DEE000, v10, v11, "Call status changed with notification: %s", v13, 0xCu);
    v19 = v41;
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x24C205870](v19, -1, -1);
    MEMORY[0x24C205870](v13, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  sub_249E7A458();
  if (!v44[3])
  {
    sub_249E2A8CC(v44, &unk_27EF23C40, &qword_249E7D8E0);
    return;
  }

  sub_249DF691C(0, &unk_28130D180, 0x277D6EDE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v20 = v43;
  v21 = [v43 callCenter];
  if (v21)
  {
    v22 = v21;
    sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
    v23 = *&v2[OBJC_IVAR____TtC10DropInCore17CallCenterManager_callCenter];
    if (sub_249E7AF78())
    {
      v24 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeCall;
      v25 = *&v2[OBJC_IVAR____TtC10DropInCore17CallCenterManager_activeCall];
      if (v25)
      {
        v20 = v20;
        v26 = v25;
        v27 = sub_249E7AF78();

        if ((v27 & 1) == 0)
        {
LABEL_15:

          return;
        }

        if ([v20 status] == 5 || objc_msgSend(v20, sel_status) == 6)
        {
          v28 = v2;
          v29 = sub_249E7A698();
          v30 = sub_249E7AE28();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            *v31 = 138412290;
            v33 = *&v2[v24];
            *(v31 + 4) = v33;
            *v32 = v33;
            v34 = v33;
            _os_log_impl(&dword_249DEE000, v29, v30, "Active call was disconnected ending conversation. Active Call: %@", v31, 0xCu);
            sub_249E2A8CC(v32, &unk_27EF23C30, &qword_249E7DA20);
            MEMORY[0x24C205870](v32, -1, -1);
            MEMORY[0x24C205870](v31, -1, -1);
          }

          (*((*MEMORY[0x277D85000] & *v28) + 0x1A8))(0);
          goto LABEL_15;
        }
      }

      goto LABEL_22;
    }
  }

  v22 = v20;
  v35 = sub_249E7A698();
  v36 = sub_249E7AE28();

  if (!os_log_type_enabled(v35, v36))
  {

    return;
  }

  v37 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  *v37 = 138412290;
  v39 = [v22 callCenter];
  *(v37 + 4) = v39;
  *v38 = v39;
  _os_log_impl(&dword_249DEE000, v35, v36, "Ignoring TUCall from different call center: %@", v37, 0xCu);
  sub_249E2A8CC(v38, &unk_27EF23C30, &qword_249E7DA20);
  MEMORY[0x24C205870](v38, -1, -1);
  MEMORY[0x24C205870](v37, -1, -1);

LABEL_22:
}

uint64_t sub_249E77B68(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = sub_249E7A468();
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_52_2();
  sub_249E7A448();
  v13 = a1;
  a4(v4);

  return (*(v10 + 8))(v4, v7);
}

uint64_t sub_249E77C40(uint64_t a1, uint64_t a2)
{
  v2[57] = a1;
  v2[58] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24200, &qword_249E80860);
  v2[59] = v3;
  v4 = *(v3 - 8);
  v2[60] = v4;
  v5 = *(v4 + 64) + 15;
  v2[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E77D0C, 0, 0);
}

uint64_t sub_249E77D0C()
{
  v23 = v0;
  v1 = v0[58];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[62] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_249E7A8A8();
    v6 = v5;
    v0[63] = v4;
    v0[64] = v5;
    v0[65] = OBJC_IVAR____TtC10DropInCore17CallCenterManager_logger;

    v7 = sub_249E7A698();
    v8 = sub_249E7AE28();

    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_70();
      v9 = swift_slowAlloc();
      v10 = OUTLINED_FUNCTION_4_0();
      v22 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_249E3A958(v4, v6, &v22);
      OUTLINED_FUNCTION_90_0(&dword_249DEE000, v11, v12, "Looking up Conversation Provider with Service Name %s");
      __swift_destroy_boxed_opaque_existential_0(v10);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v13 = OBJC_IVAR____TtC10DropInCore17CallCenterManager_conversationProviderManager;
    v0[66] = OBJC_IVAR____TtC10DropInCore17CallCenterManager_conversationProviderManager;
    v14 = *(v3 + v13);
    v0[67] = v14;
    v15 = v14;
    v16 = sub_249E7AA88();
    v0[68] = v16;
    v0[2] = v0;
    v0[7] = v0 + 55;
    v0[3] = sub_249E77FB8;
    v17 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF244B8, &qword_249E81268);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_249E78C60;
    v0[29] = &block_descriptor_128;
    v0[30] = v17;
    [v15 conversationProviderForIdentifier:v16 completionHandler:v0 + 26];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_249E0881C();
    OUTLINED_FUNCTION_81_0();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    v19 = v0[61];

    OUTLINED_FUNCTION_9_0();

    return v20();
  }
}

uint64_t sub_249E77FB8()
{
  OUTLINED_FUNCTION_11();
  v7 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v2 = v1;
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E78088()
{
  v60 = v0;
  v3 = *(v0 + 544);
  v4 = *(v0 + 440);

  v5 = *(v0 + 520);
  if (v4)
  {
    v6 = *(v0 + 496);
    v7 = v4;
    v8 = sub_249E7A698();
    sub_249E7AE28();

    if (OUTLINED_FUNCTION_272())
    {
      OUTLINED_FUNCTION_70();
      swift_slowAlloc();
      OUTLINED_FUNCTION_17_4();
      v9 = swift_slowAlloc();
      *v1 = 138412290;
      *(v1 + 4) = v7;
      *v9 = v4;
      v10 = v7;
      OUTLINED_FUNCTION_11_6();
      _os_log_impl(v11, v12, v13, v14, v15, v16);
      sub_249E2A8CC(v9, &unk_27EF23C30, &qword_249E7DA20);
      v17 = OUTLINED_FUNCTION_7_9();
      MEMORY[0x24C205870](v17);
      v18 = OUTLINED_FUNCTION_9_9();
      MEMORY[0x24C205870](v18);
    }

    *(v0 + 576) = v7;
    v19 = *(v0 + 528);
    v20 = *(v0 + 504);
    v21 = *(v0 + 512);
    v22 = *(v0 + 496);

    v23 = *(v22 + v19);
    *(v0 + 584) = v23;
    v24 = v23;
    v25 = sub_249E7AA88();
    *(v0 + 592) = v25;

    *(v0 + 144) = v0;
    OUTLINED_FUNCTION_30_2();
    swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C98, &qword_249E7F9A0);
    *(v0 + 336) = MEMORY[0x277D85DD0];
    *(v0 + 344) = 1107296256;
    OUTLINED_FUNCTION_29_2();
    [v24 registerForCallbacksForProvider:v25 completionHandler:v0 + 336];
    v26 = v0 + 144;
  }

  else
  {
    v27 = *(v0 + 512);
    v28 = *(v0 + 496);

    v29 = sub_249E7A698();
    v30 = sub_249E7AE28();

    if (os_log_type_enabled(v29, v30))
    {
      v32 = *(v0 + 504);
      v31 = *(v0 + 512);
      OUTLINED_FUNCTION_70();
      swift_slowAlloc();
      v33 = OUTLINED_FUNCTION_24();
      v59 = v33;
      *v2 = 136315138;
      *(v2 + 4) = sub_249E3A958(v32, v31, &v59);
      OUTLINED_FUNCTION_67(&dword_249DEE000, v29, v30, "Attempting to Register Conversation Provider with Service Name %s");
      __swift_destroy_boxed_opaque_existential_0(v33);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      v34 = OUTLINED_FUNCTION_7_9();
      MEMORY[0x24C205870](v34);
    }

    v35 = *(v0 + 504);
    v36 = *(v0 + 512);
    v38 = *(v0 + 480);
    v37 = *(v0 + 488);
    v39 = *(v0 + 472);
    sub_249DF691C(0, &unk_28130D1B0, 0x277D6EEB8);

    OUTLINED_FUNCTION_83();
    v40 = sub_249E78CAC();
    *(v0 + 552) = v40;
    v41 = sub_249E7AA88();
    [v40 setPseudonymFeatureID_];

    [v40 setWantsLeaveOnInvalidation_];
    sub_249E7A828();
    OUTLINED_FUNCTION_68_0(&qword_28130D338);
    OUTLINED_FUNCTION_68_0(&qword_28130D330);
    OUTLINED_FUNCTION_68_0(&qword_28130D328);
    sub_249E7A6E8();
    v42 = (*(v38 + 8))(v37, v39);
    if (*(v0 + 608) == 1)
    {
      v43 = *(v0 + 520);
      v44 = (*((*MEMORY[0x277D85000] & **(v0 + 496)) + 0x188))(v42);
      v46 = v45;

      v47 = sub_249E7A698();
      LOBYTE(v43) = sub_249E7AE28();

      if (os_log_type_enabled(v47, v43))
      {
        OUTLINED_FUNCTION_70();
        v48 = swift_slowAlloc();
        v49 = OUTLINED_FUNCTION_4_0();
        v59 = v49;
        *v48 = 136315138;
        *(v0 + 424) = v44;
        *(v0 + 432) = v46;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23FA0, &unk_249E7DF00);
        v50 = sub_249E7AAC8();
        v52 = sub_249E3A958(v50, v51, &v59);

        *(v48 + 4) = v52;
        OUTLINED_FUNCTION_90_0(&dword_249DEE000, v53, v54, "Using client bundle ID: %s");
        __swift_destroy_boxed_opaque_existential_0(v49);
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
      }

      if (v46)
      {
        v55 = sub_249E7AA88();
      }

      else
      {
        v55 = 0;
      }

      [v40 setBundleID_];
    }

    v56 = *(*(v0 + 496) + *(v0 + 528));
    *(v0 + 560) = v56;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 448;
    *(v0 + 88) = sub_249E786A4;
    v57 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF244C0, &unk_249E81270);
    *(v0 + 272) = MEMORY[0x277D85DD0];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_249E1937C;
    *(v0 + 296) = &block_descriptor_131;
    *(v0 + 304) = v57;
    [v56 registerConversationProviderForConfiguration:v40 completionHandler:v0 + 272];
    v26 = v0 + 80;
  }

  return MEMORY[0x282200938](v26);
}

uint64_t sub_249E786A4()
{
  OUTLINED_FUNCTION_11();
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 568) = v3;
  if (v3)
  {
    v4 = *(v1 + 512);
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_249E787B4()
{
  OUTLINED_FUNCTION_82();
  v1 = *(v0 + 560);
  v2 = *(v0 + 520);
  v3 = *(v0 + 496);
  v4 = *(v0 + 448);

  v5 = v4;
  v6 = sub_249E7A698();
  sub_249E7AE28();

  if (OUTLINED_FUNCTION_272())
  {
    OUTLINED_FUNCTION_70();
    swift_slowAlloc();
    OUTLINED_FUNCTION_17_4();
    v7 = swift_slowAlloc();
    *v3 = 138412290;
    *(v3 + 4) = v5;
    *v7 = v5;
    OUTLINED_FUNCTION_11_6();
    _os_log_impl(v8, v9, v10, v11, v12, v13);
    sub_249E2A8CC(v7, &unk_27EF23C30, &qword_249E7DA20);
    v14 = OUTLINED_FUNCTION_7_9();
    MEMORY[0x24C205870](v14);
    v15 = OUTLINED_FUNCTION_9_9();
    MEMORY[0x24C205870](v15);

    v16 = *(v0 + 552);
  }

  else
  {

    v16 = v5;
  }

  *(v0 + 576) = v5;
  v17 = *(v0 + 528);
  v18 = *(v0 + 504);
  v19 = *(v0 + 512);
  v20 = *(v0 + 496);

  v21 = *(v20 + v17);
  *(v0 + 584) = v21;
  v22 = v21;
  v23 = sub_249E7AA88();
  *(v0 + 592) = v23;

  *(v0 + 144) = v0;
  OUTLINED_FUNCTION_30_2();
  swift_continuation_init();
  *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C98, &qword_249E7F9A0);
  *(v0 + 336) = MEMORY[0x277D85DD0];
  *(v0 + 344) = 1107296256;
  OUTLINED_FUNCTION_29_2();
  [v22 registerForCallbacksForProvider:v23 completionHandler:v0 + 336];

  return MEMORY[0x282200938](v0 + 144);
}

uint64_t sub_249E789AC()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v1 = *v0;
  *(v2 + 600) = *(v2 + 176);
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_249E78AB0()
{
  OUTLINED_FUNCTION_82();
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 488);
  v5 = *(v0 + 456);

  *v5 = v3;

  OUTLINED_FUNCTION_9_0();

  return v6();
}

uint64_t sub_249E78B40()
{
  OUTLINED_FUNCTION_82();
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[62];
  swift_willThrow();

  v5 = v0[71];
  v6 = v0[61];

  OUTLINED_FUNCTION_9_0();

  return v7();
}

uint64_t sub_249E78BCC()
{
  OUTLINED_FUNCTION_82();
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[62];
  swift_willThrow();

  v6 = v0[75];
  v7 = v0[61];

  OUTLINED_FUNCTION_9_0();

  return v8();
}

uint64_t sub_249E78C60(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_249DF5DE4(v3, a2);
}

id sub_249E78CAC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_249E7AA88();

  v2 = [v0 initWithServiceName_];

  return v2;
}

uint64_t sub_249E78D20()
{
  v0 = sub_249E7B268();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_249E78D6C(char a1)
{
  result = 0x666C65536C696ELL;
  switch(a1)
  {
    case 1:
      result = 0x69766F72506C696ELL;
      break;
    case 2:
      result = 0x6F64756573506F6ELL;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000023;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0x6576697463416F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_249E78E8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_249E78D20();
  *a2 = result;
  return result;
}

unint64_t sub_249E78EBC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_249E78D6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249E78F10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_249E78F58()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_3(v4);
  *v5 = v6;
  v5[1] = sub_249E042BC;
  OUTLINED_FUNCTION_79();

  return sub_249E75F14(v7, v8, v9, v3);
}

uint64_t sub_249E78FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_249E790C4;

  return sub_249E71844(a2, a3, a4, a5, a6);
}

uint64_t sub_249E790C4()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  v5 = v4;
  OUTLINED_FUNCTION_6_2();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_249E791BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_249E799E8;

  return sub_249E71C70(a2, a3, a4, a5, a6);
}

uint64_t sub_249E79284()
{
  OUTLINED_FUNCTION_87_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_34_3(v1);

  return v4(v3);
}

unint64_t sub_249E79328()
{
  result = qword_28130D1C0;
  if (!qword_28130D1C0)
  {
    sub_249DF691C(255, &qword_28130D1C8, 0x277D6EEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130D1C0);
  }

  return result;
}

uint64_t sub_249E79390(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_28_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_83();
  v9(v8);
  return a2;
}

uint64_t objectdestroy_28Tm_0()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_81();

  return MEMORY[0x2821FE8E8](v2, v3, 7);
}

uint64_t objectdestroy_40Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_249E79494()
{
  OUTLINED_FUNCTION_87_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_34_3(v1);

  return v4(v3);
}

uint64_t sub_249E79550()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_249E73780(*(v0 + 16));
}

uint64_t sub_249E79564()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF244A0, &qword_249E81218);
  OUTLINED_FUNCTION_37(v0);
  v2 = *(v1 + 80);

  return sub_249E73734();
}

uint64_t sub_249E795E4(int a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF244B0, &qword_249E81230);
  OUTLINED_FUNCTION_37(v4);
  v6 = *(v5 + 80);

  return sub_249E741F4(a1, a2);
}

void sub_249E7966C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_249E744D8(*(v0 + 16));
}

uint64_t sub_249E79678(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_249E73B08(a1);
}

uint64_t objectdestroy_92Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_28_0(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_249E79700(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23690, &qword_249E7DF10);
  OUTLINED_FUNCTION_37(v2);
  v4 = *(v3 + 80);

  return sub_249E05F84(a1);
}

uint64_t objectdestroy_85Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = OUTLINED_FUNCTION_81();

  return MEMORY[0x2821FE8E8](v3, v4, 7);
}

uint64_t sub_249E797D8()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_3(v3);
  *v4 = v5;
  v4[1] = sub_249E042BC;

  return sub_249E77C40(v2, v0);
}

_BYTE *storeEnumTagSinglePayload for CallCenterManager.CallCenterManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_249E79964()
{
  result = qword_27EF244C8;
  if (!qword_27EF244C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF244C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_5()
{

  return sub_249E7B018();
}

void OUTLINED_FUNCTION_22_4()
{
  v2 = *(v0 - 160);

  JUMPOUT(0x24C204A90);
}

void OUTLINED_FUNCTION_29_2()
{
  v1[44] = sub_249E4518C;
  v1[45] = v0;
  v1[46] = v2;
}

uint64_t OUTLINED_FUNCTION_33_1(unint64_t *a1)
{

  return sub_249E42168(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_34_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void OUTLINED_FUNCTION_35_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_53_2()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  return v0[13];
}

uint64_t OUTLINED_FUNCTION_58_0(uint64_t result)
{
  *(v2 + 24) = result;
  *(result + 16) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_0(uint64_t a1)
{
  *(v1 + 152) = a1;
  v4 = *(v2 + 128);
  *(v2 + 128) = a1;
  v5 = *(v2 + 136);
  *(v2 + 136) = 0;
}

uint64_t OUTLINED_FUNCTION_62_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return v2 + 16;
}

void OUTLINED_FUNCTION_63_1()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = **(v0 + 72);
}

void OUTLINED_FUNCTION_67(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_68_0(unint64_t *a1)
{

  return sub_249E42168(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_69_0()
{
  *(v1 + 120) = v0;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_71()
{
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
}

void OUTLINED_FUNCTION_87_0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

void OUTLINED_FUNCTION_89(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

void OUTLINED_FUNCTION_90_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_91_0()
{

  return swift_task_create();
}

BOOL OUTLINED_FUNCTION_92_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_94_0(unint64_t *a1)
{

  return sub_249E42168(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_96()
{
  sub_249DF1A08(v1);
  sub_249DF2C94(v0, 1);

  return sub_249E7A698();
}

uint64_t sub_249E79F30()
{
  v1 = OBJC_IVAR____TtC10DropInCore22PhoneCallVolumeBooster_logger;
  v2 = sub_249E7A6B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_249E79FA0()
{
  sub_249E79F30();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for PhoneCallVolumeBooster()
{
  result = qword_27EF244D8;
  if (!qword_27EF244D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E7A020()
{
  result = sub_249E7A6B8();
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

void sub_249E7A0D4()
{
  v0 = sub_249E7A5B8();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_249E7A3D8(319, &qword_28130D348, MEMORY[0x277CC95F0]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_249E7A3D8(319, qword_28130D470, type metadata accessor for Pseudonym);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_249E7A6B8();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_initClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_249E7A278()
{
  v1 = qword_28130DB90;
  v2 = sub_249E7A5B8();
  OUTLINED_FUNCTION_21(v2);
  (*(v3 + 8))(v0 + v1);
  OUTLINED_FUNCTION_1_13(qword_28130E758);
  OUTLINED_FUNCTION_1_13(qword_28130E740);

  OUTLINED_FUNCTION_1_13(qword_28130E748);
  sub_249E044D0(v0 + qword_28130E750, &qword_27EF236D0, &qword_249E7E010);
  v4 = *(v0 + qword_28130E730);

  v5 = qword_28130DB88;
  v6 = sub_249E7A6B8();
  OUTLINED_FUNCTION_21(v6);
  (*(v7 + 8))(v0 + v5);
  sub_249DF77C0(v0 + qword_28130DB98);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_249E7A394()
{
  sub_249E7A278();

  return MEMORY[0x282200960](v0);
}

void sub_249E7A3D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_249E7AFC8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_13@<X0>(uint64_t a1@<X8>)
{

  return sub_249E044D0(v2 + a1, v1, v3);
}