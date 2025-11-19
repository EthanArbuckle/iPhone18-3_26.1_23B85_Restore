void sub_24871CE04(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_24871CE7C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24871812C;

  return MADTextEmbedder.embed(text:)(a1, a2);
}

uint64_t sub_24871CF20(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_248719560;

  return MADTextEmbedder.embed(texts:)(a1);
}

void sub_24871CFDC()
{
  sub_248730DF0();
  if (v0 <= 0x3F)
  {
    sub_2486CF4C4(319, &qword_27EEA6830, 0x277D26888);
    if (v1 <= 0x3F)
    {
      sub_24871D088();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24871D088()
{
  if (!qword_27EEA6838)
  {
    v0 = sub_248731550();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEA6838);
    }
  }
}

uint64_t sub_24871D0D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MADTextEmbedder();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24871D13C(int a1, void *a2)
{
  v5 = *(type metadata accessor for MADTextEmbedder() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6840, qword_248735D60) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24871C398(a1, a2, v2 + v6, v2 + v9, v10);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24871D270@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_24871D2A0(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  result = *a1;
  v6 = a1[1];
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_22;
    }

    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (v11)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v8 < 1)
    {
      goto LABEL_22;
    }
  }

  else if (v7)
  {
    LODWORD(v8) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v8 = v8;
    if (v8 < 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v8 = BYTE6(a4);
    if (!BYTE6(a4))
    {
LABEL_22:
      v15 = 0;
LABEL_26:
      v17 = v15;
      v18 = *a2 + v15 / 2;
      if (!__OFADD__(*a2, v17 / 2))
      {
        *a2 = v18;
        return result;
      }

      __break(1u);
      goto LABEL_29;
    }
  }

  if (v7)
  {
    if (v7 == 2)
    {
      v12 = *(a3 + 16);
    }

    else
    {
      v12 = a3;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v6 + 0x4000000000000000 < 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v13 = 2 * v6;
  if (v8 < v13)
  {
    v13 = v8;
  }

  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    goto LABEL_30;
  }

  if (v14 < v12)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v12 == v14)
  {
    goto LABEL_22;
  }

  if (result)
  {
    v16 = a2;
    result = sub_248730890();
    v15 = v14 - v12;
    if (__OFSUB__(v14, v12))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    a2 = v16;
    goto LABEL_26;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_24871D3E4(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  result = *a1;
  v6 = a1[1];
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_22;
    }

    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (v11)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v8 < 1)
    {
      goto LABEL_22;
    }
  }

  else if (v7)
  {
    LODWORD(v8) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v8 = v8;
    if (v8 < 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v8 = BYTE6(a4);
    if (!BYTE6(a4))
    {
LABEL_22:
      v15 = 0;
LABEL_26:
      v11 = __OFADD__(*a2, v15 / 4);
      v17 = *a2 + v15 / 4;
      if (!v11)
      {
        *a2 = v17;
        return result;
      }

      __break(1u);
      goto LABEL_29;
    }
  }

  if (v7)
  {
    if (v7 == 2)
    {
      v12 = *(a3 + 16);
    }

    else
    {
      v12 = a3;
    }
  }

  else
  {
    v12 = 0;
  }

  if ((v6 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v13 = 4 * v6;
  if (v8 < v13)
  {
    v13 = v8;
  }

  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    goto LABEL_30;
  }

  if (v14 < v12)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v12 == v14)
  {
    goto LABEL_22;
  }

  if (result)
  {
    v16 = a2;
    result = sub_248730890();
    v15 = v14 - v12;
    if (__OFSUB__(v14, v12))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    a2 = v16;
    goto LABEL_26;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_24871D538(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t *, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  if (result)
  {
    v10 = sub_248731290();
    *(v10 + 16) = v9;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = 0;
  v11[0] = v10 + 32;
  v11[1] = v9;
  result = a5(v11, &v12, a2, a3);
  if (v5)
  {
    if (v12 <= v9)
    {
      *(v10 + 16) = v12;

      return v10;
    }

    goto LABEL_12;
  }

  if (v12 <= v9)
  {
    *(v10 + 16) = v12;
    return v10;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_24871D610(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t SISchemaAnyEvent.topLevelPayload<A>(as:)()
{
  v1 = sub_24871DC14();
  v2 = [v0 anyEventType];
  if (v2 > 13)
  {
    if (v2 > 18)
    {
      switch(v2)
      {
        case 19:
          if (v1 && (v39 = [v1 payload]) != 0)
          {
            v40 = v39;
            v41 = sub_2487308C0();
            v43 = v42;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v41, v43);
          }

          else
          {
            v8 = 0;
          }

          v64 = MEMORY[0x277D59610];
          break;
        case 20:
          if (v1 && (v59 = [v1 payload]) != 0)
          {
            v60 = v59;
            v61 = sub_2487308C0();
            v63 = v62;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v61, v63);
          }

          else
          {
            v8 = 0;
          }

          v64 = MEMORY[0x277D56858];
          break;
        case 23:
          if (v1 && (v19 = [v1 payload]) != 0)
          {
            v20 = v19;
            v21 = sub_2487308C0();
            v23 = v22;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v21, v23);
          }

          else
          {
            v8 = 0;
          }

          v64 = MEMORY[0x277D587F0];
          break;
        default:
          goto LABEL_52;
      }
    }

    else
    {
      switch(v2)
      {
        case 14:
          if (v1 && (v29 = [v1 payload]) != 0)
          {
            v30 = v29;
            v31 = sub_2487308C0();
            v33 = v32;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v31, v33);
          }

          else
          {
            v8 = 0;
          }

          v64 = MEMORY[0x277D56C30];
          break;
        case 17:
          if (v1 && (v49 = [v1 payload]) != 0)
          {
            v50 = v49;
            v51 = sub_2487308C0();
            v53 = v52;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v51, v53);
          }

          else
          {
            v8 = 0;
          }

          v64 = MEMORY[0x277D57038];
          break;
        case 18:
          if (v1 && (v9 = [v1 payload]) != 0)
          {
            v10 = v9;
            v11 = sub_2487308C0();
            v13 = v12;

            v8 = sub_2487308A0();
            sub_2486CC7FC(v11, v13);
          }

          else
          {
            v8 = 0;
          }

          v64 = MEMORY[0x277D590F0];
          break;
        default:
          goto LABEL_52;
      }
    }
  }

  else if (v2 > 6)
  {
    switch(v2)
    {
      case 7:
        if (v1 && (v34 = [v1 payload]) != 0)
        {
          v35 = v34;
          v36 = sub_2487308C0();
          v38 = v37;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v36, v38);
        }

        else
        {
          v8 = 0;
        }

        v64 = MEMORY[0x277D5A9A8];
        break;
      case 9:
        if (v1 && (v54 = [v1 payload]) != 0)
        {
          v55 = v54;
          v56 = sub_2487308C0();
          v58 = v57;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v56, v58);
        }

        else
        {
          v8 = 0;
        }

        v64 = MEMORY[0x277D5A9D0];
        break;
      case 13:
        if (v1 && (v14 = [v1 payload]) != 0)
        {
          v15 = v14;
          v16 = sub_2487308C0();
          v18 = v17;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v16, v18);
        }

        else
        {
          v8 = 0;
        }

        v64 = MEMORY[0x277D57500];
        break;
      default:
        goto LABEL_52;
    }
  }

  else
  {
    switch(v2)
    {
      case 1:
        if (v1 && (v24 = [v1 payload]) != 0)
        {
          v25 = v24;
          v26 = sub_2487308C0();
          v28 = v27;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v26, v28);
        }

        else
        {
          v8 = 0;
        }

        v64 = MEMORY[0x277D5A800];
        break;
      case 4:
        if (v1 && (v44 = [v1 payload]) != 0)
        {
          v45 = v44;
          v46 = sub_2487308C0();
          v48 = v47;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v46, v48);
        }

        else
        {
          v8 = 0;
        }

        v64 = MEMORY[0x277D585A8];
        break;
      case 6:
        if (v1 && (v3 = [v1 payload]) != 0)
        {
          v4 = v3;
          v5 = sub_2487308C0();
          v7 = v6;

          v8 = sub_2487308A0();
          sub_2486CC7FC(v5, v7);
        }

        else
        {
          v8 = 0;
        }

        v64 = MEMORY[0x277D5A978];
        break;
      default:
LABEL_52:

        return 0;
    }
  }

  v65 = [objc_allocWithZone(v64) initWithData_];

  if (v65)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id sub_24871DC14()
{
  if ([v0 anyEventType] != 6)
  {
    return v0;
  }

  v1 = [v0 payload];
  if (v1)
  {
    v2 = v1;
    v3 = sub_2487308C0();
    v5 = v4;

    v6 = sub_2487308A0();
    sub_2486CC7FC(v3, v5);
  }

  else
  {
    v6 = 0;
  }

  v8 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

  v9 = [v8 event];
  return v9;
}

uint64_t sub_24871DCF8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_ueiEvents;
  swift_beginAccess();
  v3 = *(a1 + v2);

  v46 = sub_24871E328(v4);

  v5 = *(a1 + v2);

  v7 = sub_24871EFA8(v6, &selRef_punchOut);

  v8 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_orchEvents;
  swift_beginAccess();
  v9 = *(a1 + v8);

  v45 = sub_24871F134(v10, &selRef_ended);

  v11 = *(a1 + v2);

  v44 = sub_24871E6FC(v12);

  v13 = *(a1 + v2);

  v41 = sub_24871EA44(v14);

  v15 = *(a1 + v2);

  v17 = sub_24871EC04(v16);

  v18 = *(a1 + v8);

  v20 = sub_24871EDC4(v19);

  v21 = *(a1 + v8);

  v40 = sub_24871EFA8(v22, &selRef_requestMitigated);

  v23 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_asrEvents;
  swift_beginAccess();
  v24 = *(a1 + v23);

  v43 = sub_24871F134(v25, &selRef_cancelled);

  v26 = *(a1 + v2);

  v28 = sub_24871F304(v27);

  v29 = 0;
  v42 = v17;
  if ((v17 & 1) == 0 && !v20)
  {
    v29 = (!v43 && !v28) & ((v46 || v7) | v45 | v44);
  }

  v39 = v28;
  v30 = *(a1 + v2);

  v32 = sub_24871F52C(v31);

  v33 = *(a1 + v23);
  v34 = *(a1 + v2);

  v35 = sub_24871F860(v33, v34);

  v36 = v7;
  v37 = MEMORY[0x277D839B0];
  v48 = MEMORY[0x277D839B0];
  v47[0] = v46;
  swift_beginAccess();
  sub_2486C6800(v47, 0xD000000000000011, 0x8000000248739580);
  v48 = v37;
  v47[0] = v45;
  sub_2486C6800(v47, 0xD00000000000001CLL, 0x80000002487395A0);
  v48 = v37;
  v47[0] = v44 & 1;
  sub_2486C6800(v47, 0xD000000000000022, 0x80000002487395E0);
  v48 = v37;
  v47[0] = v41;
  sub_2486C6800(v47, 0xD00000000000001FLL, 0x8000000248739610);
  v48 = v37;
  v47[0] = v36;
  sub_2486C6800(v47, 0xD000000000000014, 0x80000002487395C0);
  v48 = v37;
  v47[0] = v42 & 1;
  sub_2486C6800(v47, 0xD000000000000020, 0x8000000248739630);
  v48 = v37;
  v47[0] = v20 || v40;
  sub_2486C6800(v47, 0xD000000000000027, 0x8000000248739660);
  v48 = v37;
  v47[0] = v43;
  sub_2486C6800(v47, 0xD000000000000018, 0x8000000248739690);
  v48 = v37;
  v47[0] = v39;
  sub_2486C6800(v47, 0xD000000000000018, 0x80000002487396B0);
  v48 = v37;
  v47[0] = v29 & 1;
  sub_2486C6800(v47, 0xD00000000000001ELL, 0x8000000248739560);
  v48 = v37;
  v47[0] = v32 & v35 & 1;
  sub_2486C6800(v47, 0xD00000000000001ELL, 0x8000000248739500);
  v48 = v37;
  v47[0] = v32;
  sub_2486C6800(v47, 0xD00000000000001CLL, 0x8000000248739520);
  v48 = v37;
  v47[0] = v35 & 1;
  sub_2486C6800(v47, 0xD00000000000001CLL, 0x8000000248739540);
  v48 = v37;
  v47[0] = (v29 | v32 & v35) & 1;
  sub_2486C6800(v47, 0xD000000000000015, 0x80000002487394E0);
  return swift_endAccess();
}

id ValidTurnFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ValidTurnFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ValidTurnFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ValidTurnFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ValidTurnFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_24871E328(unint64_t a1)
{
  v30 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_53:
    v3 = sub_248731790();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  v6 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = MEMORY[0x24C1D7600](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_48;
      }

      v7 = *(a1 + 8 * v4 + 32);
    }

    v8 = v7;
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v10 = [v7 uufrSaid];

    ++v4;
    if (v10)
    {
      MEMORY[0x24C1D71A0]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_248731260();
      }

      sub_2487312A0();
      v29 = v30;
      v4 = v9;
    }
  }

  v12 = 0;
  v30 = v6;
  v28 = v6;
  while (v3 != v12)
  {
    if (v5)
    {
      v13 = MEMORY[0x24C1D7600](v12, a1);
    }

    else
    {
      if (v12 >= *(v2 + 16))
      {
        goto LABEL_50;
      }

      v13 = *(a1 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_49;
    }

    v16 = [v13 uufrShown];

    ++v12;
    if (v16)
    {
      MEMORY[0x24C1D71A0]();
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_248731260();
      }

      sub_2487312A0();
      v28 = v6;
      v12 = v15;
    }
  }

  v18 = 0;
  v30 = v6;
  while (v3 != v18)
  {
    if (v5)
    {
      v19 = MEMORY[0x24C1D7600](v18, a1);
    }

    else
    {
      if (v18 >= *(v2 + 16))
      {
        goto LABEL_52;
      }

      v19 = *(a1 + 8 * v18 + 32);
    }

    v20 = v19;
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_51;
    }

    v22 = [v19 uufrPresented];

    ++v18;
    if (v22)
    {
      MEMORY[0x24C1D71A0]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_248731260();
      }

      sub_2487312A0();
      v6 = v30;
      v18 = v21;
    }
  }

  if (v29 >> 62)
  {
    v24 = sub_248731790();
  }

  else
  {
    v24 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v24)
  {

LABEL_43:

    return 1;
  }

  if (v28 >> 62)
  {
    v25 = sub_248731790();
  }

  else
  {
    v25 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v25)
  {
    goto LABEL_43;
  }

  if (v6 >> 62)
  {
    v27 = sub_248731790();
  }

  else
  {
    v27 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v27 != 0;
}

uint64_t sub_24871E6FC(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_248731790())
  {
    v4 = a1 & 0xC000000000000001;
    v5 = off_278F52000;
    if (i)
    {
      v6 = 0;
      v37 = MEMORY[0x277D84F90];
      do
      {
        v7 = v6;
        while (1)
        {
          if (v4)
          {
            v8 = MEMORY[0x24C1D7600](v7, a1);
          }

          else
          {
            if (v7 >= *(v2 + 16))
            {
              goto LABEL_54;
            }

            v8 = *(a1 + 8 * v7 + 32);
          }

          v9 = v8;
          v6 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

          v10 = [v8 v5[346]];
          if (v10)
          {
            v11 = v5;
            v12 = v10;
            v13 = [v10 keyboardInvocationContext];

            v5 = v11;
            if (v13)
            {
              break;
            }
          }

          ++v7;
          if (v6 == i)
          {
            goto LABEL_22;
          }
        }

        v14 = [v13 keyboardPresented];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = sub_2486C4700(0, *(v37 + 2) + 1, 1, v37);
        }

        v17 = *(v37 + 2);
        v16 = *(v37 + 3);
        if (v17 >= v16 >> 1)
        {
          v37 = sub_2486C4700((v16 > 1), v17 + 1, 1, v37);
        }

        *(v37 + 2) = v17 + 1;
        v37[v17 + 32] = v14;
      }

      while (v6 != i);
    }

    else
    {
      v37 = MEMORY[0x277D84F90];
    }

LABEL_22:
    v18 = *(v37 + 2);
    v19 = (v37 + 32);
    do
    {
      v20 = v18-- != 0;
      v21 = v20;
      if (!v20)
      {
        break;
      }

      v22 = *v19++;
    }

    while (v22 != 1);

    if (!i)
    {
      break;
    }

    v23 = 0;
    v24 = MEMORY[0x277D84F90];
LABEL_31:
    v25 = v23;
    while (1)
    {
      if (v4)
      {
        v26 = MEMORY[0x24C1D7600](v25, a1);
      }

      else
      {
        if (v25 >= *(v2 + 16))
        {
          goto LABEL_56;
        }

        v26 = *(a1 + 8 * v25 + 32);
      }

      v27 = v26;
      v23 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v28 = [v26 v5[346]];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 invocationSource];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_2486C46C4(0, *(v24 + 2) + 1, 1, v24);
        }

        v32 = *(v24 + 2);
        v31 = *(v24 + 3);
        if (v32 >= v31 >> 1)
        {
          v24 = sub_2486C46C4((v31 > 1), v32 + 1, 1, v24);
        }

        *(v24 + 2) = v32 + 1;
        *&v24[4 * v32 + 32] = v30;
        v5 = off_278F52000;
        if (v23 != i)
        {
          goto LABEL_31;
        }

        goto LABEL_47;
      }

      ++v25;
      if (v23 == i)
      {
        goto LABEL_47;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_47:
  v33 = *(v24 + 2);
  v34 = 32;
  while (v33)
  {
    v35 = *&v24[v34];
    v34 += 4;
    --v33;
    if (v35 == 11)
    {
      goto LABEL_52;
    }
  }

  v21 = 0;
LABEL_52:

  return v21;
}

BOOL sub_24871EA44(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_248731790();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = off_278F52000;
  do
  {
    v7 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1D7600](v7, a1);
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = [v8 invocation];
      if (v10)
      {
        break;
      }

      ++v7;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v11 = v6[347];
    v12 = v10;
    v13 = [v10 v11];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_2486C46C4(0, *(v5 + 2) + 1, 1, v5);
    }

    v15 = *(v5 + 2);
    v14 = *(v5 + 3);
    if (v15 >= v14 >> 1)
    {
      v5 = sub_2486C46C4((v14 > 1), v15 + 1, 1, v5);
    }

    *(v5 + 2) = v15 + 1;
    *&v5[4 * v15 + 32] = v13;
    v6 = off_278F52000;
  }

  while (v4 != v3);
LABEL_23:
  v16 = *(v5 + 2);
  v17 = 32;
  do
  {
    v18 = v16;
    if (v16-- == 0)
    {
      break;
    }

    v20 = *&v5[v17];
    v17 += 4;
  }

  while (v20 != 48);
  v21 = v18 != 0;

  return v21;
}

uint64_t sub_24871EC04(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_248731790();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = off_278F52000;
  do
  {
    v7 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1D7600](v7, a1);
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = [v8 ueiRequestCategorization];
      if (v10)
      {
        break;
      }

      ++v7;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v11 = v6[345];
    v12 = v10;
    v13 = [v10 v11];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_2486C46D8(0, *(v5 + 2) + 1, 1, v5);
    }

    v15 = *(v5 + 2);
    v14 = *(v5 + 3);
    if (v15 >= v14 >> 1)
    {
      v5 = sub_2486C46D8((v14 > 1), v15 + 1, 1, v5);
    }

    *(v5 + 2) = v15 + 1;
    *&v5[4 * v15 + 32] = v13;
    v6 = off_278F52000;
  }

  while (v4 != v3);
LABEL_23:
  v16 = *(v5 + 2);
  if (v16)
  {
    v17 = (v5 + 32);
    do
    {
      v18 = v16-- != 0;
      v19 = v18;
      if (!v18)
      {
        break;
      }

      v20 = *v17++;
    }

    while (v20 != 2);
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

BOOL sub_24871EDC4(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v3 = sub_248731790();
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1D7600](v6, a1);
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v9 = [v7 requestContext];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 cancelled];

        if (v11)
        {
          break;
        }
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_24;
      }
    }

    v12 = [v11 reason];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_2486C4A34(0, *(v5 + 2) + 1, 1, v5);
    }

    v15 = *(v5 + 2);
    v14 = *(v5 + 3);
    if (v15 >= v14 >> 1)
    {
      v5 = sub_2486C4A34((v14 > 1), v15 + 1, 1, v5);
    }

    *(v5 + 2) = v15 + 1;
    *&v5[4 * v15 + 32] = v12;
  }

  while (v4 != v3);
LABEL_24:
  v16 = *(v5 + 2);
  v17 = 32;
  do
  {
    v18 = v16;
    if (v16-- == 0)
    {
      break;
    }

    v20 = *&v5[v17];
    v17 += 4;
  }

  while (v20 != 1);
  v21 = v18 != 0;

  return v21;
}

BOOL sub_24871EFA8(unint64_t a1, SEL *a2)
{
  v15 = MEMORY[0x277D84F90];
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_19:
    v5 = sub_248731790();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1D7600](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_18;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v11 = [v8 *a2];

    ++v6;
    if (v11)
    {
      MEMORY[0x24C1D71A0]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_248731260();
      }

      sub_2487312A0();
      v7 = v15;
      v6 = v10;
    }
  }

  if (v7 >> 62)
  {
    v13 = sub_248731790();
  }

  else
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v13 != 0;
}

BOOL sub_24871F134(unint64_t a1, SEL *a2)
{
  v17 = MEMORY[0x277D84F90];
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_21:
    v4 = sub_248731790();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_22:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1D7600](v7, a1);
      }

      else
      {
        if (v7 >= *(v3 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = [v8 requestContext];
      if (v10)
      {
        break;
      }

LABEL_6:
      ++v7;
      if (v5 == v4)
      {
        goto LABEL_23;
      }
    }

    v11 = v10;
    v12 = [v10 *a2];

    if (!v12)
    {
      goto LABEL_6;
    }

    MEMORY[0x24C1D71A0]();
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v13 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_248731260();
    }

    sub_2487312A0();
    v6 = v17;
  }

  while (v5 != v4);
LABEL_23:
  if (v6 >> 62)
  {
    v14 = sub_248731790();
  }

  else
  {
    v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v14 != 0;
}

BOOL sub_24871F304(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_248731790();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = off_278F52000;
  do
  {
    v7 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1D7600](v7, a1);
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = [v8 invocation];
      if (v10)
      {
        break;
      }

      ++v7;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v11 = v10;
    [v10 v6[347]];

    sub_2487314F0();
    sub_2486D8A18();
    v12 = sub_248731590();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_2486C4700(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_2486C4700((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v5[v14 + 32] = v12 & 1;
    v6 = off_278F52000;
  }

  while (v4 != v3);
LABEL_23:
  v15 = *(v5 + 2);
  v16 = (v5 + 32);
  do
  {
    v17 = v15;
    if (v15-- == 0)
    {
      break;
    }

    v19 = *v16++;
  }

  while (v19 != 1);
  v20 = v17 != 0;

  return v20;
}

BOOL sub_24871F52C(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_41:
    v3 = sub_248731790();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = a1 & 0xC000000000000001;
  v5 = MEMORY[0x277D84F90];
  v30 = MEMORY[0x277D84F90];
  if (v3)
  {
    v6 = 0;
    v7 = off_278F52000;
    do
    {
      v8 = v6;
      while (1)
      {
        if (v4)
        {
          v9 = MEMORY[0x24C1D7600](v8, a1);
        }

        else
        {
          if (v8 >= *(v2 + 16))
          {
            goto LABEL_40;
          }

          v9 = *(a1 + 8 * v8 + 32);
        }

        v10 = v9;
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v11 = [v9 invocation];
        if (v11)
        {
          break;
        }

        ++v8;
        if (v6 == v3)
        {
          goto LABEL_19;
        }
      }

      v12 = v11;
      [v11 v7[347]];

      sub_2487314F0();
      sub_2486D8A18();
      v13 = sub_248731590();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2486C4700(0, *(v5 + 2) + 1, 1, v5);
      }

      v15 = *(v5 + 2);
      v14 = *(v5 + 3);
      if (v15 >= v14 >> 1)
      {
        v5 = sub_2486C4700((v14 > 1), v15 + 1, 1, v5);
      }

      *(v5 + 2) = v15 + 1;
      v5[v15 + 32] = v13 & 1;
      v7 = off_278F52000;
    }

    while (v6 != v3);
  }

LABEL_19:
  v16 = *(v5 + 2);
  v17 = (v5 + 32);
  do
  {
    v18 = v16;
    if (v16-- == 0)
    {
      break;
    }

    v20 = *v17++;
  }

  while (v20 != 1);

  v21 = 0;
  v31 = MEMORY[0x277D84F90];
  while (v3 != v21)
  {
    if (v4)
    {
      v22 = MEMORY[0x24C1D7600](v21, a1);
    }

    else
    {
      if (v21 >= *(v2 + 16))
      {
        goto LABEL_38;
      }

      v22 = *(a1 + 8 * v21 + 32);
    }

    v23 = v22;
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v25 = [v22 dictationContext];

    ++v21;
    if (v25)
    {
      MEMORY[0x24C1D71A0]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v26 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_248731260();
      }

      sub_2487312A0();
      v30 = v31;
      v21 = v24;
    }
  }

  if (v30 >> 62)
  {
    v27 = sub_248731790();
  }

  else
  {
    v27 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = v18 | v27;

  return v28 != 0;
}

uint64_t sub_24871F860(uint64_t isUniquelyReferenced_nonNull_native, unint64_t a2)
{
  v2 = a2;
  v3 = (a2 & 0xFFFFFFFFFFFFFF8);
  if (a2 >> 62)
  {
    goto LABEL_50;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v59 = isUniquelyReferenced_nonNull_native;
    v5 = v2 & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    v56 = v2;
    if (v4)
    {
      v7 = 0;
      v8 = MEMORY[0x277D84F90];
      do
      {
        v9 = v7;
        while (1)
        {
          if (v5)
          {
            isUniquelyReferenced_nonNull_native = MEMORY[0x24C1D7600](v9, v2);
          }

          else
          {
            if (v9 >= v3[2])
            {
              goto LABEL_47;
            }

            isUniquelyReferenced_nonNull_native = *(v2 + 8 * v9 + 32);
          }

          v10 = isUniquelyReferenced_nonNull_native;
          v7 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          v11 = [isUniquelyReferenced_nonNull_native ueiRequestCategorization];
          if (v11)
          {
            break;
          }

          ++v9;
          if (v7 == v4)
          {
            goto LABEL_21;
          }
        }

        v12 = v11;
        v13 = [v11 requestStatus];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_2486C46D8(0, *(v8 + 16) + 1, 1, v8);
          v8 = isUniquelyReferenced_nonNull_native;
        }

        v15 = *(v8 + 16);
        v14 = *(v8 + 24);
        if (v15 >= v14 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_2486C46D8((v14 > 1), v15 + 1, 1, v8);
          v8 = isUniquelyReferenced_nonNull_native;
        }

        *(v8 + 16) = v15 + 1;
        *(v8 + 4 * v15 + 32) = v13;
        v2 = v56;
      }

      while (v7 != v4);
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

LABEL_21:
    v57 = v3;
    v58 = v5;
    v16 = *(v8 + 16);
    v17 = 32;
    do
    {
      v18 = v16;
      v19 = v16-- != 0;
      v20 = v19;
      if (!v19)
      {
        break;
      }

      v21 = *(v8 + v17);
      v17 += 4;
    }

    while (v21 != 3);
    v54 = v20;

    v61 = v6;
    if (v59 >> 62)
    {
      break;
    }

    v60 = v59 & 0xFFFFFFFFFFFFFF8;
    v22 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v59 & 0xC000000000000001;
    if (!v22)
    {
      goto LABEL_52;
    }

LABEL_30:
    v2 = 0;
    v24 = MEMORY[0x277D84F90];
LABEL_31:
    v25 = v2;
    while (1)
    {
      if (v23)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x24C1D7600](v25, v59);
      }

      else
      {
        if (v25 >= *(v60 + 16))
        {
          goto LABEL_49;
        }

        isUniquelyReferenced_nonNull_native = *(v59 + 8 * v25 + 32);
      }

      v26 = isUniquelyReferenced_nonNull_native;
      v2 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v27 = [isUniquelyReferenced_nonNull_native requestContext];
      if (v27)
      {
        v3 = v27;
        v28 = [v27 ended];

        if (v28)
        {
          MEMORY[0x24C1D71A0]();
          if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v29 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_248731260();
          }

          isUniquelyReferenced_nonNull_native = sub_2487312A0();
          v24 = v61;
          if (v2 != v22)
          {
            goto LABEL_31;
          }

          goto LABEL_53;
        }
      }

      else
      {
      }

      ++v25;
      if (v2 == v22)
      {
        goto LABEL_53;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v30 = isUniquelyReferenced_nonNull_native;
    v4 = sub_248731790();
    isUniquelyReferenced_nonNull_native = v30;
  }

  v60 = v59 & 0xFFFFFFFFFFFFFF8;
  isUniquelyReferenced_nonNull_native = sub_248731790();
  v22 = isUniquelyReferenced_nonNull_native;
  v23 = v59 & 0xC000000000000001;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_30;
  }

LABEL_52:
  v24 = MEMORY[0x277D84F90];
LABEL_53:
  v31 = v56;
  if (v24 >> 62)
  {
LABEL_97:
    v53 = sub_248731790();
  }

  else
  {
    v53 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
  if (v4)
  {
    v33 = 0;
    do
    {
      v34 = v33;
      while (1)
      {
        if (v58)
        {
          v35 = MEMORY[0x24C1D7600](v34, v31);
        }

        else
        {
          if (v34 >= v57[2])
          {
            goto LABEL_96;
          }

          v35 = *(v31 + 8 * v34 + 32);
        }

        v36 = v35;
        v33 = (v34 + 1);
        if (__OFADD__(v34, 1))
        {
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        v37 = [v35 ueiRequestCategorization];
        if (v37)
        {
          break;
        }

        ++v34;
        if (v33 == v4)
        {
          goto LABEL_71;
        }
      }

      v38 = v37;
      v39 = [v37 requestStatus];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_2486C46D8(0, *(v32 + 2) + 1, 1, v32);
      }

      v41 = *(v32 + 2);
      v40 = *(v32 + 3);
      if (v41 >= v40 >> 1)
      {
        v32 = sub_2486C46D8((v40 > 1), v41 + 1, 1, v32);
      }

      *(v32 + 2) = v41 + 1;
      *&v32[4 * v41 + 32] = v39;
      v31 = v56;
    }

    while (v33 != v4);
  }

LABEL_71:
  v42 = *(v32 + 2);
  v43 = 32;
  do
  {
    v44 = v42;
    if (!v42)
    {
      break;
    }

    v45 = *&v32[v43];
    v43 += 4;
    --v42;
  }

  while (v45 != 1);

  v31 = 0;
  v62 = MEMORY[0x277D84F90];
  while (v22 != v31)
  {
    if (v23)
    {
      v46 = MEMORY[0x24C1D7600](v31, v59);
    }

    else
    {
      if (v31 >= *(v60 + 16))
      {
        goto LABEL_94;
      }

      v46 = *(v59 + 8 * v31 + 32);
    }

    v47 = v46;
    v48 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v4 = [v46 partialResultGenerated];

    ++v31;
    if (v4)
    {
      MEMORY[0x24C1D71A0]();
      if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v49 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_248731260();
      }

      sub_2487312A0();
      v55 = v62;
      v31 = v48;
    }
  }

  if (v55 >> 62)
  {
    v50 = sub_248731790();
  }

  else
  {
    v50 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v51 = (v53 | v50) != 0;
  if (!v44)
  {
    v51 = v54;
  }

  if (v18)
  {
    return v54;
  }

  else
  {
    return v51;
  }
}

id UserFocusSleepModeFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserFocusSleepModeFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserFocusSleepModeFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_24871FFA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v34 - v9;
  v11 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v12 = *(a1 + v11);
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v34 = v12;
    v15 = [v14 state];
    type metadata accessor for BMUserFocusSleepModeState(0);
    *(&v36 + 1) = v16;
    LODWORD(v35) = v15;
    swift_beginAccess();
    sub_2486C6800(&v35, 0xD000000000000018, 0x800000024873A530);
    swift_endAccess();
    v17 = [v14 changeReason];
    type metadata accessor for BMUserFocusSleepModeChangeReason(0);
    *(&v36 + 1) = v18;
    LODWORD(v35) = v17;
    swift_beginAccess();
    sub_2486C6800(&v35, 0xD00000000000001FLL, 0x800000024873A510);
    swift_endAccess();
    [v14 state];
    v19 = BMUserFocusSleepModeStateAsString();
    v20 = sub_248730FF0();
    v22 = v21;

    v23 = MEMORY[0x277D837D0];
    *(&v36 + 1) = MEMORY[0x277D837D0];
    *&v35 = v20;
    *(&v35 + 1) = v22;
    swift_beginAccess();
    sub_2486C6800(&v35, 0xD000000000000020, 0x800000024873A580);
    swift_endAccess();
    [v14 changeReason];
    v24 = BMUserFocusSleepModeChangeReasonAsString();
    v25 = sub_248730FF0();
    v27 = v26;

    *(&v36 + 1) = v23;
    *&v35 = v25;
    *(&v35 + 1) = v27;
    swift_beginAccess();
    sub_2486C6800(&v35, 0xD000000000000027, 0x800000024873A550);
    swift_endAccess();
    v28 = [v14 expectedEndDate];
    if (v28)
    {
      v29 = v28;
      sub_248730950();

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = sub_248730970();
    v32 = *(v31 - 8);
    (*(v32 + 56))(v7, v30, 1, v31);
    sub_2486E16DC(v7, v10);
    if ((*(v32 + 48))(v10, 1, v31) == 1)
    {
      sub_2486E1660(v10);
      v35 = 0u;
      v36 = 0u;
    }

    else
    {
      *(&v36 + 1) = v31;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v35);
      (*(v32 + 32))(boxed_opaque_existential_0, v10, v31);
    }

    swift_beginAccess();
    sub_2486C6800(&v35, 0xD000000000000022, 0x800000024873A5B0);
    swift_endAccess();
  }
}

id UserFocusSleepModeFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserFocusSleepModeFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_248720430(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_248720478(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t FunctionDefinition.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FunctionDefinition.functionBlock.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t FunctionDefinition.init(name:numArgs:functionBlock:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_248720590()
{
  v0 = sub_248730DF0();
  __swift_allocate_value_buffer(v0, qword_27EEA6858);
  __swift_project_value_buffer(v0, qword_27EEA6858);
  return sub_248730DE0();
}

uint64_t static UserDefinedFunctions.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EEA59C0 != -1)
  {
    swift_once();
  }

  v2 = sub_248730DF0();
  v3 = __swift_project_value_buffer(v2, qword_27EEA6858);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24872072C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v3 = a1();
  v5 = v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6880, &qword_248736058);
  a2[3] = result;
  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_2487207B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA64E0, &qword_248733800);
  *a4 = swift_allocObject();
  return a3(a1, a2);
}

uint64_t sub_248720828(uint64_t result, void *a2)
{
  if (*(result + 16))
  {
    sub_2486C5B68(result + 32, v13);
    if (swift_dynamicCast())
    {
      return sub_2487314C0();
    }

    else if (a2)
    {
      v3 = type metadata accessor for SQLDatabaseError();
      v4 = objc_allocWithZone(v3);
      v5 = sub_248730FC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2487335F0;
      v7 = *MEMORY[0x277CCA460];
      *(inited + 32) = sub_248730FF0();
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = v8;
      *(inited + 48) = 0xD000000000000030;
      *(inited + 56) = 0x800000024873D760;
      sub_2486D3554(inited);
      swift_setDeallocating();
      sub_2486C7940(inited + 32, &unk_27EEA5FE0, &qword_248735AA0);
      v9 = sub_248730F00();

      v12.receiver = v4;
      v12.super_class = v3;
      v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_code_userInfo_, v5, -1, v9);

      v11 = v10;
      result = 0;
      *a2 = v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_248720A20(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_2486C5B68(a1 + 32, v19);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (a2)
    {
      v8 = type metadata accessor for SQLDatabaseError();
      v9 = objc_allocWithZone(v8);
      v10 = sub_248730FC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2487335F0;
      v12 = *MEMORY[0x277CCA460];
      *(inited + 32) = sub_248730FF0();
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = v13;
      *(inited + 48) = 0xD000000000000039;
      *(inited + 56) = 0x800000024873D720;
      sub_2486D3554(inited);
      swift_setDeallocating();
      sub_2486C7940(inited + 32, &unk_27EEA5FE0, &qword_248735AA0);
      v14 = sub_248730F00();

      v17.receiver = v9;
      v17.super_class = v8;
      v15 = objc_msgSendSuper2(&v17, sel_initWithDomain_code_userInfo_, v10, -1, v14);

      v16 = v15;
      *a2 = v15;
    }

    return;
  }

  if (v2 == 1)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  sub_2486C5B68(a1 + 64, v19);
  if (swift_dynamicCast())
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D5A790]) initWithAnyEventType:v18 payload:0];
    v6 = [v5 unwrap];

    if (v6)
    {
      swift_dynamicCastObjCProtocolUnconditional();
      swift_getObjectType();

      v7 = [swift_getObjCClassFromMetadata() getInnerTypeStringByTag_];
      sub_248730FF0();

      return;
    }

    goto LABEL_12;
  }
}

uint64_t sub_248720D0C(uint64_t result, void *a2)
{
  if (*(result + 16))
  {
    sub_2486C5B68(result + 32, v13);
    if (swift_dynamicCast())
    {
      return sub_2487314E0();
    }

    else if (a2)
    {
      v3 = type metadata accessor for SQLDatabaseError();
      v4 = objc_allocWithZone(v3);
      v5 = sub_248730FC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2487335F0;
      v7 = *MEMORY[0x277CCA460];
      *(inited + 32) = sub_248730FF0();
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = v8;
      *(inited + 48) = 0xD00000000000003FLL;
      *(inited + 56) = 0x800000024873D6E0;
      sub_2486D3554(inited);
      swift_setDeallocating();
      sub_2486C7940(inited + 32, &unk_27EEA5FE0, &qword_248735AA0);
      v9 = sub_248730F00();

      v12.receiver = v4;
      v12.super_class = v3;
      v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_code_userInfo_, v5, -1, v9);

      v11 = v10;
      result = 0;
      *a2 = v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_248720F08(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v72 - v8;
  v10 = *(a1 + 16);
  if (v10 < 2)
  {
    __break(1u);
  }

  else
  {
    sub_2486C5B68(a1 + 64, v84);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_13;
    }

    v11 = v79;
    sub_2486C5B68(a1 + 32, v84);
    if (swift_dynamicCast())
    {
      v12 = v79;
      v13 = v80;
      v14 = sub_2487308A0();
      sub_2486CC7FC(v12, v13);
    }

    else
    {
      v14 = 0;
    }

    v15 = [objc_allocWithZone(MEMORY[0x277D5A790]) initWithAnyEventType:v11 payload:v14];

    v16 = [v15 unwrap];
    if (!v16)
    {
LABEL_13:
      if (v74)
      {
        v18 = type metadata accessor for SQLDatabaseError();
        v19 = objc_allocWithZone(v18);
        v20 = sub_248730FC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2487335F0;
        v22 = *MEMORY[0x277CCA460];
        *(inited + 32) = sub_248730FF0();
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 40) = v23;
        *(inited + 48) = 0xD000000000000033;
        *(inited + 56) = 0x800000024873D5F0;
        sub_2486D3554(inited);
        swift_setDeallocating();
        sub_2486C7940(inited + 32, &unk_27EEA5FE0, &qword_248735AA0);
        v24 = sub_248730F00();

        v83.receiver = v19;
        v83.super_class = v18;
        v25 = objc_msgSendSuper2(&v83, sel_initWithDomain_code_userInfo_, v20, -1, v24);

        v26 = v25;
        *v74 = v25;
      }

      goto LABEL_18;
    }

    if (v10 != 2)
    {
      sub_2486C5B68(a1 + 96, v84);
      v17 = MEMORY[0x277D837D0];
      if (swift_dynamicCast())
      {
        static UserDefinedFunctions.getValueAtPath(parsedPayload:inputKeyPath:error:functionName:)(v16, v79, v80, v74, 0x7465675F70, 0xE500000000000000, v84);

        if (!v85)
        {
          goto LABEL_41;
        }

        sub_248728C48(v84, &v79);
        if (v81)
        {
          type metadata accessor for UndefinedField();
          if (swift_dynamicCast())
          {

            goto LABEL_38;
          }
        }

        else
        {
          sub_2486C7940(&v79, &qword_27EEA64E0, &qword_248733800);
        }

        sub_248728C48(v84, &v79);
        if (v81)
        {
          if (swift_dynamicCast())
          {
            if (v76 == 0xD000000000000010 && 0x800000024873D1F0 == v77)
            {

              goto LABEL_38;
            }

            v42 = sub_248731880();

            if (v42)
            {
LABEL_38:
              if (v74)
              {
                v43 = type metadata accessor for SQLDatabaseError();
                v73 = objc_allocWithZone(v43);
                v44 = sub_248730FC0();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
                v45 = swift_initStackObject();
                *(v45 + 16) = xmmword_2487335F0;
                v46 = *MEMORY[0x277CCA460];
                *(v45 + 32) = sub_248730FF0();
                *(v45 + 72) = v17;
                *(v45 + 40) = v47;
                *(v45 + 48) = 0xD000000000000030;
                *(v45 + 56) = 0x800000024873D6A0;
                sub_2486D3554(v45);
                swift_setDeallocating();
                sub_2486C7940(v45 + 32, &unk_27EEA5FE0, &qword_248735AA0);
                v48 = sub_248730F00();

                v75.receiver = v73;
                v75.super_class = v43;
                v49 = objc_msgSendSuper2(&v75, sel_initWithDomain_code_userInfo_, v44, -1, v48);
LABEL_40:
                v50 = v49;

                v51 = v50;
                *v74 = v50;
              }

LABEL_41:

              *a3 = 0u;
              *(a3 + 16) = 0u;
              goto LABEL_42;
            }
          }
        }

        else
        {
          sub_2486C7940(&v79, &qword_27EEA64E0, &qword_248733800);
        }

        sub_248728C48(v84, &v79);
        if (v81)
        {
          v36 = MEMORY[0x277D849A8];
          if (swift_dynamicCast())
          {
            v37 = v76;
            *(a3 + 24) = v36;

            *a3 = v37;
LABEL_42:
            sub_2486C7940(v84, &qword_27EEA64E0, &qword_248733800);
            return;
          }
        }

        else
        {
          sub_2486C7940(&v79, &qword_27EEA64E0, &qword_248733800);
        }

        sub_248728C48(v84, &v79);
        if (v81)
        {
          v38 = MEMORY[0x277D84A28];
          if (swift_dynamicCast())
          {
            v39 = v76;
            *(a3 + 24) = v38;

            *a3 = v39;
            goto LABEL_42;
          }
        }

        else
        {
          sub_2486C7940(&v79, &qword_27EEA64E0, &qword_248733800);
        }

        sub_248728C48(v84, &v79);
        if (v81)
        {
          v40 = MEMORY[0x277D83A90];
          if (swift_dynamicCast())
          {
            v41 = v76;
            *(a3 + 24) = v40;

            *a3 = v41;
            goto LABEL_42;
          }
        }

        else
        {
          sub_2486C7940(&v79, &qword_27EEA64E0, &qword_248733800);
        }

        sub_248728C48(v84, &v79);
        if (v81)
        {
          v52 = MEMORY[0x277D839F8];
          if (swift_dynamicCast())
          {
            v53 = v76;
            *(a3 + 24) = v52;

            *a3 = v53;
            goto LABEL_42;
          }
        }

        else
        {
          sub_2486C7940(&v79, &qword_27EEA64E0, &qword_248733800);
        }

        sub_248728C48(v84, &v79);
        if (v81)
        {
          v54 = MEMORY[0x277D837D0];
          if (swift_dynamicCast())
          {
            v55 = v76;
            v56 = v77;
            *(a3 + 24) = v54;

            *a3 = v55;
            *(a3 + 8) = v56;
            goto LABEL_42;
          }
        }

        else
        {
          sub_2486C7940(&v79, &qword_27EEA64E0, &qword_248733800);
        }

        sub_248728C48(v84, &v79);
        if (v81)
        {
          if (swift_dynamicCast())
          {
            v57 = v16;
            v58 = v76;
            v59 = v77;
            v60 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            sub_24871D610(v58, v59);
            v61 = sub_2487308A0();
            v62 = [v60 initWithBytesAsData_];

            sub_2486CC7FC(v58, v59);
            sub_248731380();

            v63 = sub_2487309B0();
            v64 = *(v63 - 8);
            if ((*(v64 + 48))(v9, 1, v63) == 1)
            {
              sub_2486C7940(v9, &qword_27EEA5D90, &qword_2487333C0);
              *(a3 + 24) = MEMORY[0x277CC9318];

              *a3 = v58;
              *(a3 + 8) = v59;
            }

            else
            {
              v69 = sub_248730980();
              v71 = v70;
              (*(v64 + 8))(v9, v63);
              *(a3 + 24) = MEMORY[0x277D837D0];

              sub_2486CC7FC(v58, v59);
              *a3 = v69;
              *(a3 + 8) = v71;
            }

            goto LABEL_42;
          }
        }

        else
        {
          sub_2486C7940(&v79, &qword_27EEA64E0, &qword_248733800);
        }

        if (!v74)
        {
          goto LABEL_41;
        }

        v65 = type metadata accessor for SQLDatabaseError();
        v73 = objc_allocWithZone(v65);
        v44 = sub_248730FC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
        v66 = swift_initStackObject();
        *(v66 + 16) = xmmword_2487335F0;
        v67 = *MEMORY[0x277CCA460];
        *(v66 + 32) = sub_248730FF0();
        *(v66 + 72) = v17;
        *(v66 + 40) = v68;
        *(v66 + 48) = 0xD000000000000035;
        *(v66 + 56) = 0x800000024873D660;
        sub_2486D3554(v66);
        swift_setDeallocating();
        sub_2486C7940(v66 + 32, &unk_27EEA5FE0, &qword_248735AA0);
        v48 = sub_248730F00();

        v78.receiver = v73;
        v78.super_class = v65;
        v49 = objc_msgSendSuper2(&v78, sel_initWithDomain_code_userInfo_, v44, -1, v48);
        goto LABEL_40;
      }

      if (v74)
      {
        v27 = type metadata accessor for SQLDatabaseError();
        v73 = objc_allocWithZone(v27);
        v28 = sub_248730FC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
        v29 = v16;
        v30 = swift_initStackObject();
        *(v30 + 16) = xmmword_2487335F0;
        v31 = *MEMORY[0x277CCA460];
        *(v30 + 32) = sub_248730FF0();
        *(v30 + 72) = v17;
        *(v30 + 40) = v32;
        *(v30 + 48) = 0xD000000000000028;
        *(v30 + 56) = 0x800000024873D630;
        sub_2486D3554(v30);
        swift_setDeallocating();
        sub_2486C7940(v30 + 32, &unk_27EEA5FE0, &qword_248735AA0);
        v33 = sub_248730F00();

        v82.receiver = v73;
        v82.super_class = v27;
        v34 = objc_msgSendSuper2(&v82, sel_initWithDomain_code_userInfo_, v28, -1, v33);

        v16 = v29;
        v35 = v34;
        *v74 = v34;
      }

LABEL_18:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    }
  }

  __break(1u);
}

void static UserDefinedFunctions.getValueAtPath(parsedPayload:inputKeyPath:error:functionName:)(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_2486D8A18();
  swift_bridgeObjectRetain_n();
  v13 = a1;
  *&v124[0] = a2;
  *(&v124[0] + 1) = a3;
  *&v122 = 91;
  *(&v122 + 1) = 0xE100000000000000;
  LOBYTE(a1) = sub_248731590();

  if (a1)
  {
    *&v107 = a5;
    *(&v107 + 1) = a6;
    v108 = a4;
    v14 = MEMORY[0x277D84F70];
    v15 = MEMORY[0x277D837D0];
    while (1)
    {
      sub_2487273F0(91, 0xE100000000000000, a2, a3);
      if (v17 & 1) != 0 || (v18 = sub_2487273F0(93, 0xE100000000000000, a2, a3), (v19))
      {

        if (v108)
        {
          *&v124[0] = 0;
          *(&v124[0] + 1) = 0xE000000000000000;
          sub_248731650();

          v124[0] = v107;
          MEMORY[0x24C1D70A0](0xD00000000000002CLL, 0x800000024873D140);
          v115 = v13;
          v61 = *(&v124[0] + 1);
          v60 = *&v124[0];
          v62 = type metadata accessor for SQLDatabaseError();
          v63 = objc_allocWithZone(v62);
          v64 = sub_248730FC0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_2487335F0;
          v66 = *MEMORY[0x277CCA460];
          *(inited + 32) = sub_248730FF0();
          *(inited + 72) = v15;
          *(inited + 40) = v67;
          *(inited + 48) = __PAIR128__(v61, v60);
          sub_2486D3554(inited);
          swift_setDeallocating();
          sub_2486C7940(inited + 32, &unk_27EEA5FE0, &qword_248735AA0);
          v68 = sub_248730F00();
          v13 = v115;

          v121.receiver = v63;
          v121.super_class = v62;
          v69 = objc_msgSendSuper2(&v121, sel_initWithDomain_code_userInfo_, v64, -1, v68);

          v70 = v69;
          *v108 = v69;
        }

        goto LABEL_63;
      }

      v20 = v18;
      v21 = sub_2487311F0();
      v23 = v22;
      v109 = v21;
      v110 = v24;
      v111 = v25;
      MEMORY[0x24C1D7000]();
      v26 = sub_248730FC0();

      v27 = [v13 valueForKeyPath_];

      if (!v27)
      {

        goto LABEL_63;
      }

      sub_2487315A0();
      swift_unknownObjectRelease();
      sub_2486C5B68(v124, &v122);
      type metadata accessor for UndefinedField();
      if (swift_dynamicCast())
      {

LABEL_43:

LABEL_53:

        if (!v108)
        {
          __swift_destroy_boxed_opaque_existential_0(v124);

          goto LABEL_63;
        }

        *&v122 = 0;
        *(&v122 + 1) = 0xE000000000000000;
        sub_248731650();

        v122 = v107;
        MEMORY[0x24C1D70A0](0xD00000000000002BLL, 0x800000024873D210);
        v86 = v122;
        v87 = type metadata accessor for SQLDatabaseError();
        v88 = objc_allocWithZone(v87);
        v89 = sub_248730FC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
        v90 = swift_initStackObject();
        *(v90 + 16) = xmmword_2487335F0;
        v91 = *MEMORY[0x277CCA460];
        *(v90 + 32) = sub_248730FF0();
        *(v90 + 72) = v15;
        *(v90 + 40) = v92;
        *(v90 + 48) = v86;
        sub_2486D3554(v90);
        swift_setDeallocating();
        sub_2486C7940(v90 + 32, &unk_27EEA5FE0, &qword_248735AA0);
        v93 = sub_248730F00();

        v116.receiver = v88;
        v116.super_class = v87;
        v94 = objc_msgSendSuper2(&v116, sel_initWithDomain_code_userInfo_, v89, -1, v93);

        v95 = v94;
        *v108 = v94;

LABEL_62:
        __swift_destroy_boxed_opaque_existential_0(v124);
        goto LABEL_63;
      }

      sub_2486C5B68(v124, &v122);
      if (swift_dynamicCast())
      {
        if (v119 == 0xD000000000000010 && 0x800000024873D1F0 == v120)
        {

          goto LABEL_53;
        }

        v28 = sub_248731880();

        if (v28)
        {
          goto LABEL_43;
        }
      }

      sub_2486C5B68(v124, &v122);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6878, &qword_248735FA8);
      if (!swift_dynamicCast())
      {

        if (v108)
        {
          *&v122 = 0;
          *(&v122 + 1) = 0xE000000000000000;
          sub_248731650();
          MEMORY[0x24C1D70A0](v107, *(&v107 + 1));
          MEMORY[0x24C1D70A0](0xD000000000000025, 0x800000024873D170);
          v71 = MEMORY[0x24C1D7000](v109, v110, v111, v23);
          v73 = v72;

          MEMORY[0x24C1D70A0](v71, v73);

          MEMORY[0x24C1D70A0](0xD000000000000010, 0x800000024873D1A0);
          v74 = v13;
          v75 = v122;
          v76 = type metadata accessor for SQLDatabaseError();
          v77 = objc_allocWithZone(v76);
          v78 = sub_248730FC0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
          v79 = swift_initStackObject();
          *(v79 + 16) = xmmword_2487335F0;
          v80 = *MEMORY[0x277CCA460];
          *(v79 + 32) = sub_248730FF0();
          *(v79 + 72) = v15;
          *(v79 + 40) = v81;
          *(v79 + 48) = v75;
          sub_2486D3554(v79);
          swift_setDeallocating();
          sub_2486C7940(v79 + 32, &unk_27EEA5FE0, &qword_248735AA0);
          v82 = sub_248730F00();

          v118.receiver = v77;
          v118.super_class = v76;
          v83 = objc_msgSendSuper2(&v118, sel_initWithDomain_code_userInfo_, v78, -1, v82, v107);
          goto LABEL_61;
        }

LABEL_56:
        __swift_destroy_boxed_opaque_existential_0(v124);

        goto LABEL_63;
      }

      if (v20 >> 14 < sub_2487310F0() >> 14)
      {
        __break(1u);
LABEL_58:

        v13 = v14;
        v42 = v114;
LABEL_59:

        if (!v108)
        {
          goto LABEL_56;
        }

        *&v122 = 0;
        *(&v122 + 1) = 0xE000000000000000;
        sub_248731650();

        v122 = v107;
        MEMORY[0x24C1D70A0](0xD000000000000024, 0x800000024873D1C0);
        v96 = MEMORY[0x24C1D7000](v109, v110, v111, v42);
        v98 = v97;

        MEMORY[0x24C1D70A0](v96, v98);

        v74 = v13;
        v99 = v122;
        v100 = type metadata accessor for SQLDatabaseError();
        v101 = objc_allocWithZone(v100);
        v78 = sub_248730FC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
        v102 = swift_initStackObject();
        *(v102 + 16) = xmmword_2487335F0;
        v103 = *MEMORY[0x277CCA460];
        *(v102 + 32) = sub_248730FF0();
        *(v102 + 72) = MEMORY[0x277D837D0];
        *(v102 + 40) = v104;
        *(v102 + 48) = v99;
        sub_2486D3554(v102);
        swift_setDeallocating();
        sub_2486C7940(v102 + 32, &unk_27EEA5FE0, &qword_248735AA0);
        v82 = sub_248730F00();

        v117.receiver = v101;
        v117.super_class = v100;
        v83 = objc_msgSendSuper2(&v117, sel_initWithDomain_code_userInfo_, v78, -1, v82, v107);
LABEL_61:
        v105 = v83;

        v106 = v105;
        *v108 = v105;

        goto LABEL_62;
      }

      v113 = a3;
      v114 = v23;
      v14 = v13;
      v29 = a2;
      v30 = sub_2487311F0();
      v34 = v33;
      if (!((v30 ^ v31) >> 14))
      {
        goto LABEL_58;
      }

      v35 = v30;
      v36 = v31;
      v37 = v32;
      v38 = sub_2487284F0(v30, v31, v32, v33, 10);
      if ((v39 & 0x100) != 0)
      {
        v40 = sub_248727A3C(v35, v36, v37, v34, 10);
        v47 = v46;

        v13 = v14;
        v14 = MEMORY[0x277D84F70];
        v43 = v113;
        v42 = v23;
        v44 = v29;
        v45 = v119;
        if (v47)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v40 = v38;
        v41 = v39;

        v13 = v14;
        v14 = MEMORY[0x277D84F70];
        v43 = v113;
        v42 = v23;
        v44 = v29;
        v45 = v119;
        if (v41)
        {
          goto LABEL_59;
        }
      }

      if (v45 >> 62)
      {
        if (v40 >= sub_248731790())
        {
          goto LABEL_59;
        }
      }

      else if (v40 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      if ((v45 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x24C1D7600](v40, v45);
        v15 = MEMORY[0x277D837D0];
      }

      else
      {
        v15 = MEMORY[0x277D837D0];
        if (v40 < 0)
        {
          __break(1u);
LABEL_66:
          __break(1u);
          return;
        }

        if (v40 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v48 = *(v45 + 8 * v40 + 32);
      }

      if (sub_2487311A0() < 3)
      {

        a2 = 0;
        a3 = 0xE000000000000000;
      }

      else
      {
        v49 = sub_248731110();
        v50 = sub_2487274E0(v49, v44, v43);
        v52 = v51;
        v54 = v53;
        v56 = v55;

        a2 = MEMORY[0x24C1D7000](v50, v52, v54, v56);
        a3 = v57;
      }

      __swift_destroy_boxed_opaque_existential_0(v124);
      *&v124[0] = a2;
      *(&v124[0] + 1) = a3;
      *&v122 = 91;
      *(&v122 + 1) = 0xE100000000000000;
      v16 = sub_248731590();

      v13 = v48;
      if ((v16 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  v48 = v13;
LABEL_32:
  if (!a2 && a3 == 0xE000000000000000 || (sub_248731880() & 1) != 0)
  {

    *(a7 + 24) = sub_2486CF4C4(0, &qword_27EEA6870, 0x277D82BB8);
    *a7 = v48;
    return;
  }

  v58 = sub_248730FC0();

  v59 = [v48 valueForKeyPath_];

  if (v59)
  {
    sub_2487315A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v122 = 0u;
    v123 = 0u;
  }

  v124[0] = v122;
  v124[1] = v123;
  if (*(&v123 + 1))
  {
    v84 = sub_2486CF4C4(0, &qword_27EEA6870, 0x277D82BB8);
    if (swift_dynamicCast())
    {
      v85 = v119;
      *(a7 + 24) = v84;

      *a7 = v85;
      return;
    }
  }

  else
  {

    sub_2486C7940(v124, &qword_27EEA64E0, &qword_248733800);
  }

LABEL_63:
  *a7 = 0u;
  *(a7 + 16) = 0u;
}

uint64_t sub_248722854(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0);
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v36 - v8;
  if (*(a1 + 16))
  {
    sub_2486C5B68(a1 + 32, v41);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (a2)
      {
        v26 = type metadata accessor for SQLDatabaseError();
        v27 = objc_allocWithZone(v26);
        v28 = sub_248730FC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2487335F0;
        v30 = *MEMORY[0x277CCA460];
        *(inited + 32) = sub_248730FF0();
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 40) = v31;
        *(inited + 48) = 0xD00000000000002CLL;
        *(inited + 56) = 0x800000024873D590;
        sub_2486D3554(inited);
        swift_setDeallocating();
        sub_2486C7940(inited + 32, &unk_27EEA5FE0, &qword_248735AA0);
        v32 = sub_248730F00();

        v38.receiver = v27;
        v38.super_class = v26;
        v33 = objc_msgSendSuper2(&v38, sel_initWithDomain_code_userInfo_, v28, -1, v32);

        v34 = v33;
        result = 0;
        *a2 = v33;
        return result;
      }

      return 0;
    }

    v11 = v39;
    v10 = v40;
    v12 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    sub_24871D610(v11, v10);
    v13 = sub_2487308A0();
    v14 = [v12 initWithBytesAsData_];

    sub_2486CC7FC(v11, v10);
    sub_248731380();

    v15 = sub_2487309B0();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v9, 1, v15) == 1)
    {
      sub_2486C7940(v9, &qword_27EEA5D90, &qword_2487333C0);
      if (a2)
      {
        v17 = type metadata accessor for SQLDatabaseError();
        v18 = objc_allocWithZone(v17);
        v19 = sub_248730FC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
        v20 = swift_initStackObject();
        *(v20 + 16) = xmmword_2487335F0;
        v21 = *MEMORY[0x277CCA460];
        *(v20 + 32) = sub_248730FF0();
        *(v20 + 72) = MEMORY[0x277D837D0];
        *(v20 + 40) = v22;
        *(v20 + 48) = 0xD00000000000002DLL;
        *(v20 + 56) = 0x800000024873D5C0;
        sub_2486D3554(v20);
        swift_setDeallocating();
        sub_2486C7940(v20 + 32, &unk_27EEA5FE0, &qword_248735AA0);
        v23 = sub_248730F00();

        v37.receiver = v18;
        v37.super_class = v17;
        v24 = objc_msgSendSuper2(&v37, sel_initWithDomain_code_userInfo_, v19, -1, v23);

        v25 = v24;
        *a2 = v24;
      }

      sub_2486CC7FC(v11, v10);
      return 0;
    }

    v35 = sub_248730980();
    sub_2486CC7FC(v11, v10);
    (*(v16 + 8))(v9, v15);
    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_248722D00(uint64_t a1, void *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = sub_248731030();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) < 2uLL)
  {
    __break(1u);
  }

  sub_2486C5B68(a1 + 64, &v65);
  if (swift_dynamicCast())
  {
    v10 = LODWORD(v61[0]);
    sub_2486C5B68(a1 + 32, &v65);
    if (swift_dynamicCast())
    {
      v11 = *v61;
      v12 = sub_2487308A0();
      sub_2486CC7FC(v11, *(&v11 + 1));
    }

    else
    {
      v12 = 0;
    }

    v13 = [objc_allocWithZone(MEMORY[0x277D5A790]) initWithAnyEventType:v10 payload:v12];

    v14 = [v13 unwrap];
    if (v14)
    {
      v15 = [v14 formattedJsonBody];
      if (v15)
      {
        v16 = v15;
        sub_248730FF0();

        sub_248731020();
        v17 = sub_248731000();
        v19 = v18;

        (*(v5 + 8))(v9, v4);
        if (v19 >> 60 != 15)
        {
          v20 = objc_opt_self();
          v21 = sub_2487308A0();
          v61[0] = 0;
          v22 = [v20 JSONObjectWithData:v21 options:1 error:v61];

          v23 = v61[0];
          if (v22)
          {
            sub_2487315A0();
            swift_unknownObjectRelease();
            sub_2486C79A0(&v65, &v67);
            __swift_project_boxed_opaque_existential_1(&v67, v68);
            v24 = sub_248731870();
            *&v65 = 0;
            v25 = [v20 dataWithJSONObject:v24 options:1 error:&v65];
            swift_unknownObjectRelease();
            v26 = v65;
            if (v25)
            {
              v27 = sub_2487308C0();
              v29 = v28;

              sub_24871D610(v27, v29);
              v30 = sub_248728738(v27, v29);
              if (v31)
              {
                v32 = v30;
                sub_2486CC7FC(v27, v29);
              }

              else
              {
                v63 = v27;
                v64 = v29;
                sub_24871D610(v27, v29);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6888, &qword_248736060);
                if (swift_dynamicCast())
                {
                  sub_2486CD01C(v61, &v65);
                  __swift_project_boxed_opaque_existential_1(&v65, v66);
                  v57 = sub_248731800();
                  sub_2486CC7FC(v27, v29);
                  if (v57)
                  {
                    __swift_project_boxed_opaque_existential_1(&v65, v66);
                    sub_2487317F0();
                    sub_248702D3C(v17, v19);

                    sub_2486CC7FC(v27, v29);
                    v32 = v61[0];
                    __swift_destroy_boxed_opaque_existential_0(&v65);
LABEL_30:
                    __swift_destroy_boxed_opaque_existential_0(&v67);
                    result = v32;
                    goto LABEL_20;
                  }

                  __swift_destroy_boxed_opaque_existential_0(&v65);
                }

                else
                {
                  sub_2486CC7FC(v27, v29);
                  v62 = 0;
                  memset(v61, 0, sizeof(v61));
                  sub_2486C7940(v61, &qword_27EEA6890, &qword_248736068);
                }

                v32 = sub_248728448(v27, v29);
              }

              sub_248702D3C(v17, v19);

              sub_2486CC7FC(v27, v29);
              goto LABEL_30;
            }

            v55 = v26;
            v56 = sub_2487307E0();

            swift_willThrow();
            sub_248702D3C(v17, v19);

            __swift_destroy_boxed_opaque_existential_0(&v67);
            if (!a2)
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }

          v43 = v23;
          v44 = sub_2487307E0();

          swift_willThrow();
          sub_248702D3C(v17, v19);
        }
      }

      if (!a2)
      {
LABEL_18:

        goto LABEL_19;
      }

LABEL_17:
      v45 = type metadata accessor for SQLDatabaseError();
      v46 = objc_allocWithZone(v45);
      v47 = sub_248730FC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2487335F0;
      v49 = *MEMORY[0x277CCA460];
      *(inited + 32) = sub_248730FF0();
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = v50;
      *(inited + 48) = 0xD000000000000029;
      *(inited + 56) = 0x800000024873D560;
      sub_2486D3554(inited);
      swift_setDeallocating();
      sub_2486C7940(inited + 32, &unk_27EEA5FE0, &qword_248735AA0);
      v51 = sub_248730F00();

      v59.receiver = v46;
      v59.super_class = v45;
      v52 = objc_msgSendSuper2(&v59, sel_initWithDomain_code_userInfo_, v47, -1, v51);

      v53 = v52;
      *a2 = v52;
      goto LABEL_18;
    }
  }

  if (!a2)
  {
LABEL_19:
    result = 0;
    goto LABEL_20;
  }

  v33 = type metadata accessor for SQLDatabaseError();
  v34 = objc_allocWithZone(v33);
  v35 = sub_248730FC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_2487335F0;
  v37 = *MEMORY[0x277CCA460];
  *(v36 + 32) = sub_248730FF0();
  *(v36 + 72) = MEMORY[0x277D837D0];
  *(v36 + 40) = v38;
  *(v36 + 48) = 0xD000000000000034;
  *(v36 + 56) = 0x800000024873D520;
  sub_2486D3554(v36);
  swift_setDeallocating();
  sub_2486C7940(v36 + 32, &unk_27EEA5FE0, &qword_248735AA0);
  v39 = sub_248730F00();

  v60.receiver = v34;
  v60.super_class = v33;
  v40 = objc_msgSendSuper2(&v60, sel_initWithDomain_code_userInfo_, v35, -1, v39);

  v41 = v40;
  result = 0;
  *a2 = v40;
LABEL_20:
  v54 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_248723508(uint64_t a1, void *a2)
{
  v106 = *MEMORY[0x277D85DE8];
  v4 = sub_248731030();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9 < 2)
  {
    __break(1u);
    goto LABEL_66;
  }

  sub_2486C5B68(a1 + 64, v104);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v10 = v101;
  sub_2486C5B68(a1 + 32, v104);
  if (swift_dynamicCast())
  {
    v11 = v101;
    v12 = v102;
    v13 = sub_2487308A0();
    sub_2486CC7FC(v11, v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(MEMORY[0x277D5A790]) initWithAnyEventType:v10 payload:v13];

  v15 = [v14 unwrap];
  if (!v15)
  {
LABEL_13:
    if (!a2)
    {
LABEL_57:
      result = 0;
      goto LABEL_58;
    }

    v17 = type metadata accessor for SQLDatabaseError();
    v18 = objc_allocWithZone(v17);
    v19 = sub_248730FC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2487335F0;
    v21 = *MEMORY[0x277CCA460];
    *(inited + 32) = sub_248730FF0();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v22;
    *(inited + 48) = 0xD000000000000035;
    *(inited + 56) = 0x800000024873D3F0;
    sub_2486D3554(inited);
    swift_setDeallocating();
    sub_2486C7940(inited + 32, &unk_27EEA5FE0, &qword_248735AA0);
    v23 = sub_248730F00();

    v98.receiver = v18;
    v98.super_class = v17;
    v24 = objc_msgSendSuper2(&v98, sel_initWithDomain_code_userInfo_, v19, -1, v23);

    v25 = v24;
    result = 0;
    *a2 = v24;
    goto LABEL_58;
  }

  if (v9 == 2)
  {
LABEL_66:
    __break(1u);
  }

  sub_2486C5B68(a1 + 96, v104);
  v16 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (a2)
    {
      v27 = type metadata accessor for SQLDatabaseError();
      v28 = objc_allocWithZone(v27);
      v29 = sub_248730FC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
      v30 = swift_initStackObject();
      v92 = a2;
      v31 = v30;
      *(v30 + 16) = xmmword_2487335F0;
      v32 = *MEMORY[0x277CCA460];
      v31[4] = sub_248730FF0();
      v31[9] = v16;
      v31[5] = v33;
      v31[6] = 0xD00000000000002ALL;
      v31[7] = 0x800000024873D430;
      sub_2486D3554(v31);
      swift_setDeallocating();
      sub_2486C7940((v31 + 4), &unk_27EEA5FE0, &qword_248735AA0);
      v34 = sub_248730F00();

      v97.receiver = v28;
      v97.super_class = v27;
      v35 = objc_msgSendSuper2(&v97, sel_initWithDomain_code_userInfo_, v29, -1, v34);

      v36 = v35;
      *v92 = v35;
    }

    goto LABEL_57;
  }

  static UserDefinedFunctions.getValueAtPath(parsedPayload:inputKeyPath:error:functionName:)(v15, v101, v102, a2, 0x7465675F70, 0xE500000000000000, v104);

  if (v105)
  {
    sub_248728C48(v104, &v101);
    if (v103)
    {
      type metadata accessor for UndefinedField();
      if (swift_dynamicCast())
      {

        goto LABEL_53;
      }
    }

    else
    {
      sub_2486C7940(&v101, &qword_27EEA64E0, &qword_248733800);
    }

    sub_248728C48(v104, &v101);
    if (v103)
    {
      if (swift_dynamicCast())
      {
        if (__PAIR128__(0x800000024873D1F0, 0xD000000000000010) == v99)
        {

          goto LABEL_53;
        }

        v61 = sub_248731880();

        if (v61)
        {
LABEL_53:
          if (a2)
          {
            v62 = type metadata accessor for SQLDatabaseError();
            v63 = objc_allocWithZone(v62);
            v54 = sub_248730FC0();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
            v64 = swift_initStackObject();
            v92 = a2;
            v65 = v64;
            *(v64 + 16) = xmmword_2487335F0;
            v66 = *MEMORY[0x277CCA460];
            v65[4] = sub_248730FF0();
            v65[9] = v16;
            v65[5] = v67;
            v65[6] = 0xD000000000000032;
            v65[7] = 0x800000024873D4E0;
            sub_2486D3554(v65);
            swift_setDeallocating();
            sub_2486C7940((v65 + 4), &unk_27EEA5FE0, &qword_248735AA0);
            v59 = sub_248730F00();

            v93.receiver = v63;
            v93.super_class = v62;
            v60 = objc_msgSendSuper2(&v93, sel_initWithDomain_code_userInfo_, v54, -1, v59);
            goto LABEL_55;
          }

          goto LABEL_56;
        }
      }
    }

    else
    {
      sub_2486C7940(&v101, &qword_27EEA64E0, &qword_248733800);
    }

    sub_248728C48(v104, &v101);
    if (v103)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6898, &unk_248736080);
      if (swift_dynamicCast())
      {
        v37 = *(v99 + 16);
        if (!v37)
        {

LABEL_61:
          v71 = objc_opt_self();
          v72 = sub_248731230();

          v101 = 0;
          v73 = [v71 dataWithJSONObject:v72 options:0 error:&v101];

          v74 = v101;
          if (v73)
          {
            v75 = sub_2487308C0();
            v77 = v76;

            sub_248731020();
            v78 = sub_248731010();

            sub_2486CC7FC(v75, v77);
            sub_2486C7940(v104, &qword_27EEA64E0, &qword_248733800);
            result = v78;
            goto LABEL_58;
          }

          v79 = v74;
          v80 = sub_2487307E0();

          swift_willThrow();
          if (a2)
          {
            v81 = type metadata accessor for SQLDatabaseError();
            v91 = objc_allocWithZone(v81);
            v82 = sub_248730FC0();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
            v83 = swift_initStackObject();
            *(v83 + 16) = xmmword_2487335F0;
            v84 = *MEMORY[0x277CCA460];
            *(v83 + 32) = sub_248730FF0();
            *(v83 + 72) = v16;
            *(v83 + 40) = v85;
            *(v83 + 48) = 0xD000000000000033;
            *(v83 + 56) = 0x800000024873D4A0;
            sub_2486D3554(v83);
            swift_setDeallocating();
            sub_2486C7940(v83 + 32, &unk_27EEA5FE0, &qword_248735AA0);
            v86 = sub_248730F00();

            v94.receiver = v91;
            v94.super_class = v81;
            v87 = objc_msgSendSuper2(&v94, sel_initWithDomain_code_userInfo_, v82, -1, v86);

            v88 = v87;
            *a2 = v87;
          }

          goto LABEL_56;
        }

        v90 = v15;
        v38 = MEMORY[0x277D84F90];
        v89[1] = v99;
        v39 = v99 + 32;
        v91 = v8;
        v92 = a2;
        while (1)
        {
          sub_2486C5B68(v39, &v101);
          sub_2486C5B68(&v101, &v99);
          sub_2486CF4C4(0, &qword_27EEA63E0, 0x277D5A918);
          if (swift_dynamicCast())
          {
            v40 = v95;
            v41 = [v95 formattedJsonBody];
            if (v41)
            {
              v42 = v41;
              v43 = v16;
              v44 = sub_248730FF0();
              v46 = v45;

              v100 = v43;
              *&v99 = v44;
              *(&v99 + 1) = v46;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v38 = sub_2486C4DBC(0, *(v38 + 2) + 1, 1, v38);
              }

              v48 = *(v38 + 2);
              v47 = *(v38 + 3);
              v16 = v43;
              if (v48 >= v47 >> 1)
              {
                v38 = sub_2486C4DBC((v47 > 1), v48 + 1, 1, v38);
              }

              __swift_destroy_boxed_opaque_existential_0(&v101);
              *(v38 + 2) = v48 + 1;
              sub_2486C79A0(&v99, &v38[32 * v48 + 32]);
              a2 = v92;
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_0(&v101);
            }
          }

          else
          {
            sub_2486C5B68(&v101, &v99);
            if (swift_dynamicCast())
            {
              v100 = v16;
              v99 = v95;
LABEL_43:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v38 = sub_2486C4DBC(0, *(v38 + 2) + 1, 1, v38);
              }

              v51 = *(v38 + 2);
              v50 = *(v38 + 3);
              if (v51 >= v50 >> 1)
              {
                v38 = sub_2486C4DBC((v50 > 1), v51 + 1, 1, v38);
              }

              __swift_destroy_boxed_opaque_existential_0(&v101);
              *(v38 + 2) = v51 + 1;
              sub_2486C79A0(&v99, &v38[32 * v51 + 32]);
              goto LABEL_31;
            }

            sub_2486C5B68(&v101, &v99);
            v49 = sub_2486CF4C4(0, &qword_27EEA6388, 0x277CCABB0);
            if (swift_dynamicCast())
            {
              v100 = v49;
              *&v99 = v95;
              goto LABEL_43;
            }

            __swift_destroy_boxed_opaque_existential_0(&v101);
          }

LABEL_31:
          v39 += 32;
          if (!--v37)
          {

            v15 = v90;
            goto LABEL_61;
          }
        }
      }
    }

    else
    {
      sub_2486C7940(&v101, &qword_27EEA64E0, &qword_248733800);
    }

    if (a2)
    {
      v52 = type metadata accessor for SQLDatabaseError();
      v53 = objc_allocWithZone(v52);
      v54 = sub_248730FC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
      v55 = swift_initStackObject();
      v92 = a2;
      v56 = v55;
      *(v55 + 16) = xmmword_2487335F0;
      v57 = *MEMORY[0x277CCA460];
      v56[4] = sub_248730FF0();
      v56[9] = v16;
      v56[5] = v58;
      v56[6] = 0xD000000000000038;
      v56[7] = 0x800000024873D460;
      sub_2486D3554(v56);
      swift_setDeallocating();
      sub_2486C7940((v56 + 4), &unk_27EEA5FE0, &qword_248735AA0);
      v59 = sub_248730F00();

      v96.receiver = v53;
      v96.super_class = v52;
      v60 = objc_msgSendSuper2(&v96, sel_initWithDomain_code_userInfo_, v54, -1, v59);
LABEL_55:
      v68 = v60;

      v69 = v68;
      *v92 = v68;
    }

LABEL_56:

    sub_2486C7940(v104, &qword_27EEA64E0, &qword_248733800);
    goto LABEL_57;
  }

  sub_2486C7940(v104, &qword_27EEA64E0, &qword_248733800);
  result = 0;
LABEL_58:
  v70 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2487242A8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v96 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    sub_2486C5B68(a1 + 32, &v108);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (qword_27EEA59C0 != -1)
      {
        swift_once();
      }

      v18 = sub_248730DF0();
      __swift_project_value_buffer(v18, qword_27EEA6858);
      v19 = sub_248730DD0();
      v20 = sub_2487313C0();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_2486BF000, v19, v20, "pstr_get() returning nil because event payload is empty, check if eventFilter in your UnifiedSiriTurn class includes all necessary types.", v21, 2u);
        MEMORY[0x24C1D8100](v21, -1, -1);
      }

      goto LABEL_254;
    }

    v4 = v104;
    v5 = sub_248730880();
    v3 = v15;

    if (v3 >> 60 == 15)
    {
      goto LABEL_245;
    }

    if (v14 == 1)
    {
      __break(1u);
      goto LABEL_34;
    }

    sub_2486C5B68(a1 + 64, &v108);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_248702D3C(v5, v3);
LABEL_245:
      sub_2486C5B68(a1 + 32, &v108);
      v32 = MEMORY[0x277D837D0];
      v33 = swift_dynamicCast();
      if (v33)
      {
        v34 = v104;
      }

      else
      {
        v34 = 0;
      }

      if (a2)
      {
        if (v33)
        {
          v35 = v103;
        }

        else
        {
          v35 = 0;
        }

        v108 = 0;
        v109 = 0xE000000000000000;
        sub_248731650();
        MEMORY[0x24C1D70A0](0xD000000000000037, 0x800000024873D300);
        v103 = v35;
        v104 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6880, &qword_248736058);
        sub_248731710();

        v98 = a3;
        v36 = a2;
        v38 = v108;
        v37 = v109;
        v39 = type metadata accessor for SQLDatabaseError();
        v40 = objc_allocWithZone(v39);
        v41 = sub_248730FC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2487335F0;
        v43 = *MEMORY[0x277CCA460];
        *(inited + 32) = sub_248730FF0();
        *(inited + 72) = v32;
        *(inited + 40) = v44;
        *(inited + 48) = v38;
        *(inited + 56) = v37;
        sub_2486D3554(inited);
        swift_setDeallocating();
        sub_2486C7940(inited + 32, &unk_27EEA5FE0, &qword_248735AA0);
        v45 = sub_248730F00();

        v107.receiver = v40;
        v107.super_class = v39;
        v46 = objc_msgSendSuper2(&v107, sel_initWithDomain_code_userInfo_, v41, -1, v45);

        v47 = v46;
        *v36 = v46;
        a3 = v98;
      }

      else
      {
      }

      goto LABEL_254;
    }

    v97 = v13;
    v16 = sub_248730FC0();

    v4 = v16;
    if ([v4 isEqualToString:@"UNKNOWN_EVENT"])
    {
      v17 = 0;
      goto LABEL_237;
    }

    if ([v4 isEqualToString:@"UEI_CLIENT_EVENT"])
    {
      v17 = 1;
      goto LABEL_237;
    }

    if ([v4 isEqualToString:@"UEI_SERVER_EVENT"])
    {
      v17 = 2;
      goto LABEL_237;
    }

    if ([v4 isEqualToString:@"DAILY_DEVICE_STATUS"])
    {
      v17 = 3;
      goto LABEL_237;
    }

    if ([v4 isEqualToString:@"MT_CLIENT_EVENT"])
    {
      v17 = 4;
      goto LABEL_237;
    }

    if ([v4 isEqualToString:@"PROACTIVE_EVENT_TRACKER"])
    {
      v17 = 5;
      goto LABEL_237;
    }

    if ([v4 isEqualToString:@"ORDERED_ANY_EVENT"])
    {
      v17 = 6;
      goto LABEL_237;
    }

    if ([v4 isEqualToString:@"PROVISIONAL_EVENT"])
    {
      v17 = 7;
      goto LABEL_237;
    }
  }

  else
  {
    __break(1u);
  }

  if ([v4 isEqualToString:@"SIRI_UNDER_TEST_EVENT"])
  {
    v17 = 8;
    goto LABEL_237;
  }

  if ([v4 isEqualToString:@"REQUEST_LINK_EVENT"])
  {
    v17 = 9;
    goto LABEL_237;
  }

LABEL_34:
  if ([v4 isEqualToString:@"ABE_CLIENT_EVENT"])
  {
    v17 = 10;
  }

  else if ([v4 isEqualToString:@"ABE_SERVER_EVENT"])
  {
    v17 = 11;
  }

  else if ([v4 isEqualToString:@"FLOW_SERVER_EVENT"])
  {
    v17 = 12;
  }

  else if ([v4 isEqualToString:@"FLOW_CLIENT_EVENT"])
  {
    v17 = 13;
  }

  else if ([v4 isEqualToString:@"CAM_CLIENT_EVENT"])
  {
    v17 = 14;
  }

  else if ([v4 isEqualToString:@"UNIFIED_SIRI_PERFORMANCE_EVENT"])
  {
    v17 = 15;
  }

  else if ([v4 isEqualToString:@"GRR_CLIENT_EVENT"])
  {
    v17 = 16;
  }

  else if ([v4 isEqualToString:@"DIM_CLIENT_EVENT"])
  {
    v17 = 17;
  }

  else if ([v4 isEqualToString:@"NLX_CLIENT_EVENT"])
  {
    v17 = 18;
  }

  else if ([v4 isEqualToString:@"ORCH_CLIENT_EVENT"])
  {
    v17 = 19;
  }

  else if ([v4 isEqualToString:@"ASR_CLIENT_EVENT"])
  {
    v17 = 20;
  }

  else if ([v4 isEqualToString:@"DATA_UPLOAD_EVENT"])
  {
    v17 = 21;
  }

  else if ([v4 isEqualToString:@"IH_CLIENT_EVENT"])
  {
    v17 = 22;
  }

  else if ([v4 isEqualToString:@"MH_CLIENT_EVENT"])
  {
    v17 = 23;
  }

  else if ([v4 isEqualToString:@"TTS_CLIENT_EVENT"])
  {
    v17 = 24;
  }

  else if ([v4 isEqualToString:@"CLP_CLIENT_EVENT"])
  {
    v17 = 25;
  }

  else if ([v4 isEqualToString:@"RR_CLIENT_EVENT"])
  {
    v17 = 26;
  }

  else if ([v4 isEqualToString:@"CNV_CLIENT_EVENT"])
  {
    v17 = 27;
  }

  else if ([v4 isEqualToString:@"ANC_CLIENT_EVENT"])
  {
    v17 = 28;
  }

  else if ([v4 isEqualToString:@"ANC_SERVER_EVENT"])
  {
    v17 = 29;
  }

  else if ([v4 isEqualToString:@"DELETE_HISTORY_TRIGGER_SERVER_EVENT"])
  {
    v17 = 30;
  }

  else if ([v4 isEqualToString:@"HAL_CLIENT_EVENT"])
  {
    v17 = 31;
  }

  else if ([v4 isEqualToString:@"NET_CLIENT_EVENT"])
  {
    v17 = 32;
  }

  else if ([v4 isEqualToString:@"SAD_CLIENT_EVENT"])
  {
    v17 = 33;
  }

  else if ([v4 isEqualToString:@"DFI_DATA_EVENT"])
  {
    v17 = 34;
  }

  else if ([v4 isEqualToString:@"SERVER_ORDERED_ANY_EVENT"])
  {
    v17 = 35;
  }

  else if ([v4 isEqualToString:@"SERVER_REQUEST_LINK_EVENT"])
  {
    v17 = 36;
  }

  else if ([v4 isEqualToString:@"DODML_CLIENT_EVENT"])
  {
    v17 = 37;
  }

  else if ([v4 isEqualToString:@"PLUS_CLIENT_EVENT"])
  {
    v17 = 38;
  }

  else if ([v4 isEqualToString:@"EXP_SEARCH_CLIENT_EVENT"])
  {
    v17 = 39;
  }

  else if ([v4 isEqualToString:@"EXP_SIRI_CLIENT_EVENT"])
  {
    v17 = 40;
  }

  else if ([v4 isEqualToString:@"SRST_CLIENT_EVENT"])
  {
    v17 = 41;
  }

  else if ([v4 isEqualToString:@"POMMES_CLIENT_EVENT"])
  {
    v17 = 42;
  }

  else if ([v4 isEqualToString:@"MT_CLIENT_EVENT_V2"])
  {
    v17 = 43;
  }

  else if ([v4 isEqualToString:@"CDA_CLIENT_EVENT"])
  {
    v17 = 44;
  }

  else if ([v4 isEqualToString:@"MWT_CLIENT_EVENT"])
  {
    v17 = 45;
  }

  else if ([v4 isEqualToString:@"HOME_CLIENT_EVENT"])
  {
    v17 = 46;
  }

  else if ([v4 isEqualToString:@"OPT_IN_CHANGELOG_CLIENT_EVENT"])
  {
    v17 = 47;
  }

  else if ([v4 isEqualToString:@"OPT_IN_PROPAGATION_CLIENT_EVENT"])
  {
    v17 = 48;
  }

  else if ([v4 isEqualToString:@"PEGASUS_SERVER_EVENT"])
  {
    v17 = 49;
  }

  else if ([v4 isEqualToString:@"RSS_CLIENT_EVENT"])
  {
    v17 = 50;
  }

  else if ([v4 isEqualToString:@"EXP_SIRI_SERVER_EVENT"])
  {
    v17 = 51;
  }

  else if ([v4 isEqualToString:@"SUGGESTIONS_CLIENT_EVENT"])
  {
    v17 = 52;
  }

  else if ([v4 isEqualToString:@"FLOW_LINK_CLIENT_EVENT"])
  {
    v17 = 53;
  }

  else if ([v4 isEqualToString:@"RF_CLIENT_EVENT"])
  {
    v17 = 54;
  }

  else if ([v4 isEqualToString:@"SIRI_SERVER_ORDERED_ANY_EVENT"])
  {
    v17 = 55;
  }

  else if ([v4 isEqualToString:@"SIC_CLIENT_EVENT"])
  {
    v17 = 56;
  }

  else if ([v4 isEqualToString:@"INFERENCE_CLIENT_EVENT"])
  {
    v17 = 57;
  }

  else if ([v4 isEqualToString:@"CAAR_CLIENT_EVENT"])
  {
    v17 = 58;
  }

  else if ([v4 isEqualToString:@"RFG_CLIENT_EVENT"])
  {
    v17 = 59;
  }

  else if ([v4 isEqualToString:@"SMT_CLIENT_EVENT"])
  {
    v17 = 60;
  }

  else if ([v4 isEqualToString:@"SC_CLIENT_EVENT"])
  {
    v17 = 61;
  }

  else if ([v4 isEqualToString:@"SIRI_SETUP_CLIENT_EVENT"])
  {
    v17 = 62;
  }

  else if ([v4 isEqualToString:@"OPT_IN_CLIENT_EVENT"])
  {
    v17 = 63;
  }

  else if ([v4 isEqualToString:@"LOG_REDACTION_CLIENT_EVENT"])
  {
    v17 = 64;
  }

  else if ([v4 isEqualToString:@"PSE_CLIENT_EVENT"])
  {
    v17 = 65;
  }

  else if ([v4 isEqualToString:@"GROUPED_MESSAGES_CLIENT_EVENT"])
  {
    v17 = 66;
  }

  else if ([v4 isEqualToString:@"ACTIVATION_CLIENT_EVENT"])
  {
    v17 = 67;
  }

  else if ([v4 isEqualToString:@"IA_CLIENT_EVENT"])
  {
    v17 = 68;
  }

  else if ([v4 isEqualToString:@"NLG_CLIENT_EVENT"])
  {
    v17 = 69;
  }

  else if ([v4 isEqualToString:@"TTM_CLIENT_EVENT"])
  {
    v17 = 70;
  }

  else if ([v4 isEqualToString:@"TRP_REQUEST_LINK_CLIENT_EVENT"])
  {
    v17 = 71;
  }

  else if ([v4 isEqualToString:@"ODM_SIRI_CLIENT_EVENT"])
  {
    v17 = 72;
  }

  else if ([v4 isEqualToString:@"IDENTITY_CLIENT_EVENT"])
  {
    v17 = 73;
  }

  else if ([v4 isEqualToString:@"HOMEKIT_CLIENT_EVENT"])
  {
    v17 = 74;
  }

  else if ([v4 isEqualToString:@"READ_CLIENT_EVENT"])
  {
    v17 = 75;
  }

  else if ([v4 isEqualToString:@"OPAQUE_CLIENT_EVENT"])
  {
    v17 = 76;
  }

  else if ([v4 isEqualToString:@"GROUPED_MESSAGES_SERVER_EVENT"])
  {
    v17 = 77;
  }

  else if ([v4 isEqualToString:@"GROUPED_MESSAGES_GROUPING"])
  {
    v17 = 78;
  }

  else if ([v4 isEqualToString:@"GROUPED_MESSAGES_PRODUCER_METADATA"])
  {
    v17 = 79;
  }

  else if ([v4 isEqualToString:@"RTS_CLIENT_EVENT"])
  {
    v17 = 80;
  }

  else if ([v4 isEqualToString:@"ODD_SIRI_CLIENT_EVENT"])
  {
    v17 = 81;
  }

  else if ([v4 isEqualToString:@"SESSION_EVENT"])
  {
    v17 = 82;
  }

  else if ([v4 isEqualToString:@"SESSION_BYTE_EVENT"])
  {
    v17 = 83;
  }

  else if ([v4 isEqualToString:@"ODBATCH_CLIENT_EVENT"])
  {
    v17 = 84;
  }

  else if ([v4 isEqualToString:@"NLROUTER_CLIENT_EVENT"])
  {
    v17 = 85;
  }

  else if ([v4 isEqualToString:@"PFA_CLIENT_EVENT"])
  {
    v17 = 86;
  }

  else if ([v4 isEqualToString:@"SPEECH_DONATION_EVENT"])
  {
    v17 = 87;
  }

  else if ([v4 isEqualToString:@"SR_CLIENT_EVENT"])
  {
    v17 = 88;
  }

  else if ([v4 isEqualToString:@"IFT_CLIENT_EVENT"])
  {
    v17 = 89;
  }

  else if ([v4 isEqualToString:@"CM_CLIENT_EVENT"])
  {
    v17 = 90;
  }

  else if ([v4 isEqualToString:@"PNR_ON_DEVICE_CLIENT_EVENT"])
  {
    v17 = 91;
  }

  else if ([v4 isEqualToString:@"JR_CLIENT_EVENT"])
  {
    v17 = 92;
  }

  else if ([v4 isEqualToString:@"RG_CLIENT_EVENT"])
  {
    v17 = 93;
  }

  else if ([v4 isEqualToString:@"PR_CLIENT_EVENT"])
  {
    v17 = 94;
  }

  else if ([v4 isEqualToString:@"QUERY_DECORATION_CLIENT_EVENT"])
  {
    v17 = 95;
  }

  else if ([v4 isEqualToString:@"PG_CLIENT_EVENT"])
  {
    v17 = 96;
  }

  else if ([v4 isEqualToString:@"DIALOGENGINE_CLIENT_EVENT"])
  {
    v17 = 97;
  }

  else if ([v4 isEqualToString:@"UAF_CLIENT_EVENT"])
  {
    v17 = 98;
  }

  else if ([v4 isEqualToString:@"IF_PLATFORM_CLIENT_EVENT"])
  {
    v17 = 99;
  }

  else if ([v4 isEqualToString:@"IF_PLATFORM_REQUEST_CLIENT_EVENT"])
  {
    v17 = 100;
  }

  else if ([v4 isEqualToString:@"FL_CLIENT_EVENT"])
  {
    v17 = 101;
  }

  else if ([v4 isEqualToString:@"SEARCH_TOOL_CLIENT_EVENT"])
  {
    v17 = 102;
  }

  else if ([v4 isEqualToString:@"ODSAMPLE_CLIENT_EVENT"])
  {
    v17 = 103;
  }

  else if ([v4 isEqualToString:@"GAT_CLIENT_EVENT"])
  {
    v17 = 104;
  }

  else if ([v4 isEqualToString:@"EXECUTOR_CLIENT_EVENT"])
  {
    v17 = 106;
  }

  else if ([v4 isEqualToString:@"ODFUNNEL_SIRI_CLIENT_EVENT"])
  {
    v17 = 107;
  }

  else if ([v4 isEqualToString:@"GMS_CLIENT_EVENT"])
  {
    v17 = 108;
  }

  else if ([v4 isEqualToString:@"CLOUDKIT_CLIENT_EVENT"])
  {
    v17 = 109;
  }

  else if ([v4 isEqualToString:@"ASR_SPEECH_PROFILE_CLIENT_EVENT"])
  {
    v17 = 112;
  }

  else if ([v4 isEqualToString:@"ASV_CLIENT_EVENT"])
  {
    v17 = 113;
  }

  else
  {
    v17 = 0;
  }

LABEL_237:

  v22 = objc_allocWithZone(MEMORY[0x277D5A790]);
  sub_24871D610(v5, v3);
  v23 = v3;
  v24 = v5;
  v25 = sub_2487308A0();
  sub_248702D3C(v24, v23);
  v26 = [v22 initWithAnyEventType:v17 payload:v25];

  v27 = [v26 unwrap];
  if (!v27)
  {
    sub_248702D3C(v24, v23);
    goto LABEL_245;
  }

  v98 = v24;
  if (v14 >= 3)
  {
    sub_2486C5B68(a1 + 96, &v108);
    v28 = MEMORY[0x277D837D0];
    v29 = swift_dynamicCast();
    v30 = v98;
    v31 = v23;
    if (v29)
    {
      static UserDefinedFunctions.getValueAtPath(parsedPayload:inputKeyPath:error:functionName:)(v27, v103, v104, a2, 0x7465675F72747370, 0xE800000000000000, &v108);

      if (!v110)
      {
        goto LABEL_280;
      }

      sub_248728C48(&v108, &v103);
      if (v105)
      {
        type metadata accessor for UndefinedField();
        if (swift_dynamicCast())
        {

          goto LABEL_277;
        }
      }

      else
      {
        sub_2486C7940(&v103, &qword_27EEA64E0, &qword_248733800);
      }

      sub_248728C48(&v108, &v103);
      if (v105)
      {
        if (swift_dynamicCast())
        {
          if (v100 == 0xD000000000000010 && 0x800000024873D1F0 == v101)
          {

            goto LABEL_277;
          }

          v64 = sub_248731880();

          if (v64)
          {
LABEL_277:
            if (a2)
            {
              v65 = type metadata accessor for SQLDatabaseError();
              v97 = objc_allocWithZone(v65);
              v66 = sub_248730FC0();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
              v67 = swift_initStackObject();
              *(v67 + 16) = xmmword_2487335F0;
              v68 = *MEMORY[0x277CCA460];
              *(v67 + 32) = sub_248730FF0();
              *(v67 + 72) = v28;
              *(v67 + 40) = v69;
              *(v67 + 48) = 0xD000000000000033;
              *(v67 + 56) = 0x800000024873D3B0;
              sub_2486D3554(v67);
              swift_setDeallocating();
              sub_2486C7940(v67 + 32, &unk_27EEA5FE0, &qword_248735AA0);
              v70 = sub_248730F00();

              v30 = v98;
              v99.receiver = v97;
              v99.super_class = v65;
              v71 = objc_msgSendSuper2(&v99, sel_initWithDomain_code_userInfo_, v66, -1, v70);
LABEL_279:
              v72 = v71;

              v73 = v72;
              *a2 = v72;
            }

LABEL_280:
            sub_248702D3C(v30, v31);

            *a3 = 0u;
            *(a3 + 16) = 0u;
            goto LABEL_281;
          }
        }
      }

      else
      {
        sub_2486C7940(&v103, &qword_27EEA64E0, &qword_248733800);
      }

      sub_248728C48(&v108, &v103);
      if (v105)
      {
        v58 = MEMORY[0x277D849A8];
        if (swift_dynamicCast())
        {
          v59 = v100;
          *(a3 + 24) = v58;
          sub_248702D3C(v30, v23);

          *a3 = v59;
LABEL_281:
          sub_2486C7940(&v108, &qword_27EEA64E0, &qword_248733800);
          return;
        }
      }

      else
      {
        sub_2486C7940(&v103, &qword_27EEA64E0, &qword_248733800);
      }

      sub_248728C48(&v108, &v103);
      if (v105)
      {
        v60 = MEMORY[0x277D84A28];
        if (swift_dynamicCast())
        {
          v61 = v100;
          *(a3 + 24) = v60;
          sub_248702D3C(v30, v23);

          *a3 = v61;
          goto LABEL_281;
        }
      }

      else
      {
        sub_2486C7940(&v103, &qword_27EEA64E0, &qword_248733800);
      }

      sub_248728C48(&v108, &v103);
      if (v105)
      {
        v62 = MEMORY[0x277D83A90];
        if (swift_dynamicCast())
        {
          v63 = v100;
          *(a3 + 24) = v62;
          sub_248702D3C(v30, v23);

          *a3 = v63;
          goto LABEL_281;
        }
      }

      else
      {
        sub_2486C7940(&v103, &qword_27EEA64E0, &qword_248733800);
      }

      sub_248728C48(&v108, &v103);
      if (v105)
      {
        v74 = MEMORY[0x277D839F8];
        if (swift_dynamicCast())
        {
          v75 = v100;
          *(a3 + 24) = v74;
          sub_248702D3C(v30, v23);

          *a3 = v75;
          goto LABEL_281;
        }
      }

      else
      {
        sub_2486C7940(&v103, &qword_27EEA64E0, &qword_248733800);
      }

      sub_248728C48(&v108, &v103);
      if (v105)
      {
        v76 = MEMORY[0x277D837D0];
        if (swift_dynamicCast())
        {
          v77 = v100;
          v78 = v101;
          *(a3 + 24) = v76;
          sub_248702D3C(v30, v23);

          *a3 = v77;
          *(a3 + 8) = v78;
          goto LABEL_281;
        }
      }

      else
      {
        sub_2486C7940(&v103, &qword_27EEA64E0, &qword_248733800);
      }

      sub_248728C48(&v108, &v103);
      if (v105)
      {
        v79 = MEMORY[0x277CC9318];
        if (swift_dynamicCast())
        {
          v80 = v79;
          v96 = v27;
          v81 = v100;
          v82 = v101;
          v83 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          sub_24871D610(v81, v82);
          v84 = sub_2487308A0();
          v85 = [v83 initWithBytesAsData_];

          sub_2486CC7FC(v81, v82);
          v86 = v97;
          sub_248731380();

          v87 = sub_2487309B0();
          v88 = *(v87 - 8);
          if ((*(v88 + 48))(v86, 1, v87) == 1)
          {
            sub_2486C7940(v86, &qword_27EEA5D90, &qword_2487333C0);
            *(a3 + 24) = v80;
            sub_248702D3C(v98, v31);

            *a3 = v81;
            *(a3 + 8) = v82;
          }

          else
          {
            v93 = sub_248730980();
            v95 = v94;
            (*(v88 + 8))(v86, v87);
            *(a3 + 24) = MEMORY[0x277D837D0];
            sub_248702D3C(v98, v31);

            sub_2486CC7FC(v81, v82);
            *a3 = v93;
            *(a3 + 8) = v95;
          }

          goto LABEL_281;
        }
      }

      else
      {
        sub_2486C7940(&v103, &qword_27EEA64E0, &qword_248733800);
      }

      if (!a2)
      {
        goto LABEL_280;
      }

      v89 = type metadata accessor for SQLDatabaseError();
      v97 = objc_allocWithZone(v89);
      v66 = sub_248730FC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
      v90 = swift_initStackObject();
      *(v90 + 16) = xmmword_2487335F0;
      v91 = *MEMORY[0x277CCA460];
      *(v90 + 32) = sub_248730FF0();
      *(v90 + 72) = v28;
      *(v90 + 40) = v92;
      *(v90 + 48) = 0xD000000000000038;
      *(v90 + 56) = 0x800000024873D370;
      sub_2486D3554(v90);
      swift_setDeallocating();
      sub_2486C7940(v90 + 32, &unk_27EEA5FE0, &qword_248735AA0);
      v70 = sub_248730F00();

      v30 = v98;
      v102.receiver = v97;
      v102.super_class = v89;
      v71 = objc_msgSendSuper2(&v102, sel_initWithDomain_code_userInfo_, v66, -1, v70);
      goto LABEL_279;
    }

    if (a2)
    {
      v48 = type metadata accessor for SQLDatabaseError();
      v96 = objc_allocWithZone(v48);
      v49 = sub_248730FC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
      v50 = swift_initStackObject();
      *(v50 + 16) = xmmword_2487335F0;
      v51 = *MEMORY[0x277CCA460];
      v52 = sub_248730FF0();
      v97 = v31;
      v53 = v27;
      *(v50 + 32) = v52;
      *(v50 + 72) = v28;
      *(v50 + 40) = v54;
      *(v50 + 48) = 0xD00000000000002BLL;
      *(v50 + 56) = 0x800000024873D340;
      sub_2486D3554(v50);
      swift_setDeallocating();
      sub_2486C7940(v50 + 32, &unk_27EEA5FE0, &qword_248735AA0);
      v55 = sub_248730F00();

      v106.receiver = v96;
      v106.super_class = v48;
      v30 = v98;
      v56 = objc_msgSendSuper2(&v106, sel_initWithDomain_code_userInfo_, v49, -1, v55);

      v27 = v53;
      v31 = v97;
      v57 = v56;
      *a2 = v56;
    }

    sub_248702D3C(v30, v31);

LABEL_254:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  __break(1u);
}

uint64_t sub_248725D44(uint64_t a1, void *a2)
{
  v98 = *MEMORY[0x277D85DE8];
  v5 = sub_248731030();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
    __break(1u);
    goto LABEL_29;
  }

  sub_2486C5B68(a1 + 32, &v93);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_27EEA59C0 != -1)
    {
      swift_once();
    }

    v17 = sub_248730DF0();
    __swift_project_value_buffer(v17, qword_27EEA6858);
    v18 = sub_248730DD0();
    v19 = sub_2487313C0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2486BF000, v18, v19, "pstr_json() returning nil because event payload is empty, check if eventFilter in your UnifiedSiriTurn class includes all necessary types.", v20, 2u);
      MEMORY[0x24C1D8100](v20, -1, -1);
    }

    goto LABEL_261;
  }

  v86 = a2;
  v12 = sub_248730880();
  v2 = v13;

  if (v2 >> 60 != 15)
  {
    if (v11 == 1)
    {
      __break(1u);
      goto LABEL_34;
    }

    sub_2486C5B68(a1 + 64, &v93);
    v14 = MEMORY[0x277D837D0];
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_248702D3C(v12, v2);
      goto LABEL_246;
    }

    v85 = v2;
    v2 = v14;
    v15 = sub_248730FC0();

    v11 = v15;
    v16 = [v11 isEqualToString:@"UNKNOWN_EVENT"];
    v84 = v12;
    if (v16)
    {
      LODWORD(v83) = 0;
LABEL_238:

      v22 = objc_allocWithZone(MEMORY[0x277D5A790]);
      v24 = v84;
      v23 = v85;
      sub_24871D610(v84, v85);
      v25 = sub_2487308A0();
      sub_248702D3C(v24, v23);
      v26 = [v22 initWithAnyEventType:v83 payload:v25];

      v27 = [v26 unwrap];
      if (v27)
      {
        v28 = [v27 formattedJsonBody];
        if (v28)
        {
          v29 = v28;
          sub_248730FF0();

          sub_248731020();
          v30 = sub_248731000();
          v32 = v31;
          v24 = v84;

          (*(v6 + 8))(v10, v5);
          if (v32 >> 60 != 15)
          {
            v33 = objc_opt_self();
            v34 = sub_2487308A0();
            *&v89[0] = 0;
            v35 = [v33 JSONObjectWithData:v34 options:1 error:v89];

            v36 = *&v89[0];
            if (v35)
            {
              sub_2487315A0();
              swift_unknownObjectRelease();
              sub_2486C79A0(&v93, &v96);
              __swift_project_boxed_opaque_existential_1(&v96, v97);
              v37 = sub_248731870();
              *&v93 = 0;
              v38 = [v33 dataWithJSONObject:v37 options:1 error:&v93];
              swift_unknownObjectRelease();
              v39 = v93;
              if (v38)
              {
                v40 = v30;
                v41 = sub_2487308C0();
                v43 = v42;

                sub_24871D610(v41, v43);
                v44 = sub_248728738(v41, v43);
                if (v45)
                {
                  v46 = v44;
                  sub_2486CC7FC(v41, v43);
                  sub_248702D3C(v40, v32);

                  v47 = v24;
                  v48 = v85;
                }

                else
                {
                  v91 = v41;
                  v92 = v43;
                  sub_24871D610(v41, v43);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6888, &qword_248736060);
                  v79 = swift_dynamicCast();
                  v80 = v85;
                  if (v79)
                  {
                    v86 = 0;
                    sub_2486CD01C(v89, &v93);
                    __swift_project_boxed_opaque_existential_1(&v93, v94);
                    v81 = sub_248731800();
                    sub_2486CC7FC(v41, v43);
                    if (v81)
                    {
                      v83 = v95;
                      __swift_project_boxed_opaque_existential_1(&v93, v94);
                      sub_2487317F0();
                      sub_248702D3C(v40, v32);

                      sub_248702D3C(v84, v80);
                      sub_2486CC7FC(v41, v43);
                      v46 = *&v89[0];
                      __swift_destroy_boxed_opaque_existential_0(&v93);
LABEL_270:
                      __swift_destroy_boxed_opaque_existential_0(&v96);
                      result = v46;
                      goto LABEL_262;
                    }

                    __swift_destroy_boxed_opaque_existential_0(&v93);
                    v24 = v84;
                  }

                  else
                  {
                    sub_2486CC7FC(v41, v43);
                    v90 = 0;
                    memset(v89, 0, sizeof(v89));
                    sub_2486C7940(v89, &qword_27EEA6890, &qword_248736068);
                  }

                  v46 = sub_248728448(v41, v43);
                  sub_248702D3C(v40, v32);

                  v47 = v24;
                  v48 = v80;
                }

                sub_248702D3C(v47, v48);
                sub_2486CC7FC(v41, v43);
                goto LABEL_270;
              }

              v67 = v39;
              v68 = sub_2487307E0();

              swift_willThrow();
              sub_248702D3C(v30, v32);

              __swift_destroy_boxed_opaque_existential_0(&v96);
            }

            else
            {
              v65 = v36;
              v66 = sub_2487307E0();

              swift_willThrow();
              sub_248702D3C(v30, v32);
            }
          }
        }

        v69 = v86;
        if (v86)
        {
          v70 = type metadata accessor for SQLDatabaseError();
          v84 = objc_allocWithZone(v70);
          v71 = sub_248730FC0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_2487335F0;
          v73 = *MEMORY[0x277CCA460];
          *(inited + 32) = sub_248730FF0();
          *(inited + 72) = v2;
          *(inited + 40) = v74;
          *(inited + 48) = 0xD00000000000002CLL;
          *(inited + 56) = 0x800000024873D2D0;
          sub_2486D3554(inited);
          swift_setDeallocating();
          sub_2486C7940(inited + 32, &unk_27EEA5FE0, &qword_248735AA0);
          v75 = sub_248730F00();

          v87.receiver = v84;
          v87.super_class = v70;
          v76 = objc_msgSendSuper2(&v87, sel_initWithDomain_code_userInfo_, v71, -1, v75);

          v77 = v76;
          *v69 = v76;
        }

        sub_248702D3C(v24, v85);

        goto LABEL_261;
      }

      sub_248702D3C(v24, v23);
      goto LABEL_246;
    }

    if ([v11 isEqualToString:@"UEI_CLIENT_EVENT"])
    {
      v21 = 1;
LABEL_237:
      LODWORD(v83) = v21;
      goto LABEL_238;
    }

    if ([v11 isEqualToString:@"UEI_SERVER_EVENT"])
    {
      v21 = 2;
      goto LABEL_237;
    }

    if ([v11 isEqualToString:@"DAILY_DEVICE_STATUS"])
    {
      v21 = 3;
      goto LABEL_237;
    }

    if ([v11 isEqualToString:@"MT_CLIENT_EVENT"])
    {
      v21 = 4;
      goto LABEL_237;
    }

    if ([v11 isEqualToString:@"PROACTIVE_EVENT_TRACKER"])
    {
      v21 = 5;
      goto LABEL_237;
    }

    if ([v11 isEqualToString:@"ORDERED_ANY_EVENT"])
    {
      v21 = 6;
      goto LABEL_237;
    }

    if ([v11 isEqualToString:@"PROVISIONAL_EVENT"])
    {
      v21 = 7;
      goto LABEL_237;
    }

LABEL_29:
    if ([v11 isEqualToString:@"SIRI_UNDER_TEST_EVENT"])
    {
      v21 = 8;
      goto LABEL_237;
    }

    if ([v11 isEqualToString:@"REQUEST_LINK_EVENT"])
    {
      v21 = 9;
      goto LABEL_237;
    }

LABEL_34:
    if ([v11 isEqualToString:@"ABE_CLIENT_EVENT"])
    {
      v21 = 10;
    }

    else if ([v11 isEqualToString:@"ABE_SERVER_EVENT"])
    {
      v21 = 11;
    }

    else if ([v11 isEqualToString:@"FLOW_SERVER_EVENT"])
    {
      v21 = 12;
    }

    else if ([v11 isEqualToString:@"FLOW_CLIENT_EVENT"])
    {
      v21 = 13;
    }

    else if ([v11 isEqualToString:@"CAM_CLIENT_EVENT"])
    {
      v21 = 14;
    }

    else if ([v11 isEqualToString:@"UNIFIED_SIRI_PERFORMANCE_EVENT"])
    {
      v21 = 15;
    }

    else if ([v11 isEqualToString:@"GRR_CLIENT_EVENT"])
    {
      v21 = 16;
    }

    else if ([v11 isEqualToString:@"DIM_CLIENT_EVENT"])
    {
      v21 = 17;
    }

    else if ([v11 isEqualToString:@"NLX_CLIENT_EVENT"])
    {
      v21 = 18;
    }

    else if ([v11 isEqualToString:@"ORCH_CLIENT_EVENT"])
    {
      v21 = 19;
    }

    else if ([v11 isEqualToString:@"ASR_CLIENT_EVENT"])
    {
      v21 = 20;
    }

    else if ([v11 isEqualToString:@"DATA_UPLOAD_EVENT"])
    {
      v21 = 21;
    }

    else if ([v11 isEqualToString:@"IH_CLIENT_EVENT"])
    {
      v21 = 22;
    }

    else if ([v11 isEqualToString:@"MH_CLIENT_EVENT"])
    {
      v21 = 23;
    }

    else if ([v11 isEqualToString:@"TTS_CLIENT_EVENT"])
    {
      v21 = 24;
    }

    else if ([v11 isEqualToString:@"CLP_CLIENT_EVENT"])
    {
      v21 = 25;
    }

    else if ([v11 isEqualToString:@"RR_CLIENT_EVENT"])
    {
      v21 = 26;
    }

    else if ([v11 isEqualToString:@"CNV_CLIENT_EVENT"])
    {
      v21 = 27;
    }

    else if ([v11 isEqualToString:@"ANC_CLIENT_EVENT"])
    {
      v21 = 28;
    }

    else if ([v11 isEqualToString:@"ANC_SERVER_EVENT"])
    {
      v21 = 29;
    }

    else if ([v11 isEqualToString:@"DELETE_HISTORY_TRIGGER_SERVER_EVENT"])
    {
      v21 = 30;
    }

    else if ([v11 isEqualToString:@"HAL_CLIENT_EVENT"])
    {
      v21 = 31;
    }

    else if ([v11 isEqualToString:@"NET_CLIENT_EVENT"])
    {
      v21 = 32;
    }

    else if ([v11 isEqualToString:@"SAD_CLIENT_EVENT"])
    {
      v21 = 33;
    }

    else if ([v11 isEqualToString:@"DFI_DATA_EVENT"])
    {
      v21 = 34;
    }

    else if ([v11 isEqualToString:@"SERVER_ORDERED_ANY_EVENT"])
    {
      v21 = 35;
    }

    else if ([v11 isEqualToString:@"SERVER_REQUEST_LINK_EVENT"])
    {
      v21 = 36;
    }

    else if ([v11 isEqualToString:@"DODML_CLIENT_EVENT"])
    {
      v21 = 37;
    }

    else if ([v11 isEqualToString:@"PLUS_CLIENT_EVENT"])
    {
      v21 = 38;
    }

    else if ([v11 isEqualToString:@"EXP_SEARCH_CLIENT_EVENT"])
    {
      v21 = 39;
    }

    else if ([v11 isEqualToString:@"EXP_SIRI_CLIENT_EVENT"])
    {
      v21 = 40;
    }

    else if ([v11 isEqualToString:@"SRST_CLIENT_EVENT"])
    {
      v21 = 41;
    }

    else if ([v11 isEqualToString:@"POMMES_CLIENT_EVENT"])
    {
      v21 = 42;
    }

    else if ([v11 isEqualToString:@"MT_CLIENT_EVENT_V2"])
    {
      v21 = 43;
    }

    else if ([v11 isEqualToString:@"CDA_CLIENT_EVENT"])
    {
      v21 = 44;
    }

    else if ([v11 isEqualToString:@"MWT_CLIENT_EVENT"])
    {
      v21 = 45;
    }

    else if ([v11 isEqualToString:@"HOME_CLIENT_EVENT"])
    {
      v21 = 46;
    }

    else if ([v11 isEqualToString:@"OPT_IN_CHANGELOG_CLIENT_EVENT"])
    {
      v21 = 47;
    }

    else if ([v11 isEqualToString:@"OPT_IN_PROPAGATION_CLIENT_EVENT"])
    {
      v21 = 48;
    }

    else if ([v11 isEqualToString:@"PEGASUS_SERVER_EVENT"])
    {
      v21 = 49;
    }

    else if ([v11 isEqualToString:@"RSS_CLIENT_EVENT"])
    {
      v21 = 50;
    }

    else if ([v11 isEqualToString:@"EXP_SIRI_SERVER_EVENT"])
    {
      v21 = 51;
    }

    else if ([v11 isEqualToString:@"SUGGESTIONS_CLIENT_EVENT"])
    {
      v21 = 52;
    }

    else if ([v11 isEqualToString:@"FLOW_LINK_CLIENT_EVENT"])
    {
      v21 = 53;
    }

    else if ([v11 isEqualToString:@"RF_CLIENT_EVENT"])
    {
      v21 = 54;
    }

    else if ([v11 isEqualToString:@"SIRI_SERVER_ORDERED_ANY_EVENT"])
    {
      v21 = 55;
    }

    else if ([v11 isEqualToString:@"SIC_CLIENT_EVENT"])
    {
      v21 = 56;
    }

    else if ([v11 isEqualToString:@"INFERENCE_CLIENT_EVENT"])
    {
      v21 = 57;
    }

    else if ([v11 isEqualToString:@"CAAR_CLIENT_EVENT"])
    {
      v21 = 58;
    }

    else if ([v11 isEqualToString:@"RFG_CLIENT_EVENT"])
    {
      v21 = 59;
    }

    else if ([v11 isEqualToString:@"SMT_CLIENT_EVENT"])
    {
      v21 = 60;
    }

    else if ([v11 isEqualToString:@"SC_CLIENT_EVENT"])
    {
      v21 = 61;
    }

    else if ([v11 isEqualToString:@"SIRI_SETUP_CLIENT_EVENT"])
    {
      v21 = 62;
    }

    else if ([v11 isEqualToString:@"OPT_IN_CLIENT_EVENT"])
    {
      v21 = 63;
    }

    else if ([v11 isEqualToString:@"LOG_REDACTION_CLIENT_EVENT"])
    {
      v21 = 64;
    }

    else if ([v11 isEqualToString:@"PSE_CLIENT_EVENT"])
    {
      v21 = 65;
    }

    else if ([v11 isEqualToString:@"GROUPED_MESSAGES_CLIENT_EVENT"])
    {
      v21 = 66;
    }

    else if ([v11 isEqualToString:@"ACTIVATION_CLIENT_EVENT"])
    {
      v21 = 67;
    }

    else if ([v11 isEqualToString:@"IA_CLIENT_EVENT"])
    {
      v21 = 68;
    }

    else if ([v11 isEqualToString:@"NLG_CLIENT_EVENT"])
    {
      v21 = 69;
    }

    else if ([v11 isEqualToString:@"TTM_CLIENT_EVENT"])
    {
      v21 = 70;
    }

    else if ([v11 isEqualToString:@"TRP_REQUEST_LINK_CLIENT_EVENT"])
    {
      v21 = 71;
    }

    else if ([v11 isEqualToString:@"ODM_SIRI_CLIENT_EVENT"])
    {
      v21 = 72;
    }

    else if ([v11 isEqualToString:@"IDENTITY_CLIENT_EVENT"])
    {
      v21 = 73;
    }

    else if ([v11 isEqualToString:@"HOMEKIT_CLIENT_EVENT"])
    {
      v21 = 74;
    }

    else if ([v11 isEqualToString:@"READ_CLIENT_EVENT"])
    {
      v21 = 75;
    }

    else if ([v11 isEqualToString:@"OPAQUE_CLIENT_EVENT"])
    {
      v21 = 76;
    }

    else if ([v11 isEqualToString:@"GROUPED_MESSAGES_SERVER_EVENT"])
    {
      v21 = 77;
    }

    else if ([v11 isEqualToString:@"GROUPED_MESSAGES_GROUPING"])
    {
      v21 = 78;
    }

    else if ([v11 isEqualToString:@"GROUPED_MESSAGES_PRODUCER_METADATA"])
    {
      v21 = 79;
    }

    else if ([v11 isEqualToString:@"RTS_CLIENT_EVENT"])
    {
      v21 = 80;
    }

    else if ([v11 isEqualToString:@"ODD_SIRI_CLIENT_EVENT"])
    {
      v21 = 81;
    }

    else if ([v11 isEqualToString:@"SESSION_EVENT"])
    {
      v21 = 82;
    }

    else if ([v11 isEqualToString:@"SESSION_BYTE_EVENT"])
    {
      v21 = 83;
    }

    else if ([v11 isEqualToString:@"ODBATCH_CLIENT_EVENT"])
    {
      v21 = 84;
    }

    else if ([v11 isEqualToString:@"NLROUTER_CLIENT_EVENT"])
    {
      v21 = 85;
    }

    else if ([v11 isEqualToString:@"PFA_CLIENT_EVENT"])
    {
      v21 = 86;
    }

    else if ([v11 isEqualToString:@"SPEECH_DONATION_EVENT"])
    {
      v21 = 87;
    }

    else if ([v11 isEqualToString:@"SR_CLIENT_EVENT"])
    {
      v21 = 88;
    }

    else if ([v11 isEqualToString:@"IFT_CLIENT_EVENT"])
    {
      v21 = 89;
    }

    else if ([v11 isEqualToString:@"CM_CLIENT_EVENT"])
    {
      v21 = 90;
    }

    else if ([v11 isEqualToString:@"PNR_ON_DEVICE_CLIENT_EVENT"])
    {
      v21 = 91;
    }

    else if ([v11 isEqualToString:@"JR_CLIENT_EVENT"])
    {
      v21 = 92;
    }

    else if ([v11 isEqualToString:@"RG_CLIENT_EVENT"])
    {
      v21 = 93;
    }

    else if ([v11 isEqualToString:@"PR_CLIENT_EVENT"])
    {
      v21 = 94;
    }

    else if ([v11 isEqualToString:@"QUERY_DECORATION_CLIENT_EVENT"])
    {
      v21 = 95;
    }

    else if ([v11 isEqualToString:@"PG_CLIENT_EVENT"])
    {
      v21 = 96;
    }

    else if ([v11 isEqualToString:@"DIALOGENGINE_CLIENT_EVENT"])
    {
      v21 = 97;
    }

    else if ([v11 isEqualToString:@"UAF_CLIENT_EVENT"])
    {
      v21 = 98;
    }

    else if ([v11 isEqualToString:@"IF_PLATFORM_CLIENT_EVENT"])
    {
      v21 = 99;
    }

    else if ([v11 isEqualToString:@"IF_PLATFORM_REQUEST_CLIENT_EVENT"])
    {
      v21 = 100;
    }

    else if ([v11 isEqualToString:@"FL_CLIENT_EVENT"])
    {
      v21 = 101;
    }

    else if ([v11 isEqualToString:@"SEARCH_TOOL_CLIENT_EVENT"])
    {
      v21 = 102;
    }

    else if ([v11 isEqualToString:@"ODSAMPLE_CLIENT_EVENT"])
    {
      v21 = 103;
    }

    else if ([v11 isEqualToString:@"GAT_CLIENT_EVENT"])
    {
      v21 = 104;
    }

    else if ([v11 isEqualToString:@"EXECUTOR_CLIENT_EVENT"])
    {
      v21 = 106;
    }

    else if ([v11 isEqualToString:@"ODFUNNEL_SIRI_CLIENT_EVENT"])
    {
      v21 = 107;
    }

    else if ([v11 isEqualToString:@"GMS_CLIENT_EVENT"])
    {
      v21 = 108;
    }

    else if ([v11 isEqualToString:@"CLOUDKIT_CLIENT_EVENT"])
    {
      v21 = 109;
    }

    else if ([v11 isEqualToString:@"ASR_SPEECH_PROFILE_CLIENT_EVENT"])
    {
      v21 = 112;
    }

    else if ([v11 isEqualToString:@"ASV_CLIENT_EVENT"])
    {
      v21 = 113;
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_237;
  }

LABEL_246:
  sub_2486C5B68(a1 + 32, &v93);
  v49 = MEMORY[0x277D837D0];
  v50 = swift_dynamicCast();
  if (v50)
  {
    v51 = *(&v89[0] + 1);
  }

  else
  {
    v51 = 0;
  }

  v52 = v86;
  if (!v86)
  {

LABEL_261:
    result = 0;
    goto LABEL_262;
  }

  if (v50)
  {
    v53 = *&v89[0];
  }

  else
  {
    v53 = 0;
  }

  *&v93 = 0;
  *(&v93 + 1) = 0xE000000000000000;
  sub_248731650();
  MEMORY[0x24C1D70A0](0xD000000000000038, 0x800000024873D290);
  *&v89[0] = v53;
  *(&v89[0] + 1) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6880, &qword_248736058);
  sub_248731710();

  v54 = v93;
  v55 = type metadata accessor for SQLDatabaseError();
  v56 = objc_allocWithZone(v55);
  v57 = sub_248730FC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_2487335F0;
  v59 = *MEMORY[0x277CCA460];
  *(v58 + 32) = sub_248730FF0();
  *(v58 + 72) = v49;
  *(v58 + 40) = v60;
  *(v58 + 48) = v54;
  sub_2486D3554(v58);
  swift_setDeallocating();
  sub_2486C7940(v58 + 32, &unk_27EEA5FE0, &qword_248735AA0);
  v61 = sub_248730F00();

  v88.receiver = v56;
  v88.super_class = v55;
  v62 = objc_msgSendSuper2(&v88, sel_initWithDomain_code_userInfo_, v57, -1, v61);

  v63 = v62;
  result = 0;
  *v52 = v62;
LABEL_262:
  v78 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2487273F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_2487311D0() != a1 || v9 != a2)
  {
    v10 = sub_248731880();

    if (v10)
    {
      return v8;
    }

    v8 = sub_2487310F0();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_2487274E0(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_2487311F0();
  }

  __break(1u);
  return result;
}

id SISchemaInstrumentationMessage.value(forUndefinedKey:)@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for UndefinedField();
  result = [objc_allocWithZone(v2) init];
  a1[3] = v2;
  *a1 = result;
  return result;
}

id sub_24872756C()
{
  v0 = [objc_allocWithZone(type metadata accessor for UndefinedField()) init];

  return v0;
}

id SISchemaInstrumentationMessage.value(forKey:)@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_248730FC0();
  v13.receiver = v1;
  v13.super_class = MEMORY[0x277D5A918];
  v4 = objc_msgSendSuper2(&v13, sel_valueForKey_, v3);

  if (v4)
  {
    sub_2487315A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v14 = v11;
  v15 = v12;
  sub_248728C48(&v14, &v11);
  if (!*(&v12 + 1))
  {
    result = sub_2486C7940(&v11, &qword_27EEA64E0, &qword_248733800);
    goto LABEL_11;
  }

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_11:
    v10 = v15;
    *a1 = v14;
    a1[1] = v10;
    return result;
  }

  result = [v1 dictionaryRepresentation];
  if (result)
  {
    v6 = result;
    v7 = sub_248730F10();

    sub_248731600();
    if (*(v7 + 16) && (v8 = sub_2486C9640(&v11), (v9 & 1) != 0))
    {
      sub_2486C5B68(*(v7 + 56) + 32 * v8, a1);
      sub_2486CA134(&v11);
      sub_2486C7940(&v14, &qword_27EEA64E0, &qword_248733800);
    }

    else
    {

      sub_2486CA134(&v11);
      result = sub_2486C7940(&v14, &qword_27EEA64E0, &qword_248733800);
      *a1 = 0u;
      a1[1] = 0u;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_248727794(void *a1)
{
  sub_248730FF0();
  v2 = a1;
  SISchemaInstrumentationMessage.value(forKey:)(v11);

  v3 = v12;
  if (v12)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    MEMORY[0x28223BE20](v4, v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8);
    v9 = sub_248731870();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_2487278F8()
{
  v0 = sub_248731890();

  return v0;
}

id sub_248727990()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UndefinedField();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_2487279C8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FC8, &unk_248736070);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_248727A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_248728D7C();

  result = sub_2487311E0();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_248727FD4();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2487316A0();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_248727FD4()
{
  v0 = sub_2487311F0();
  v4 = sub_248728054(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_248728054(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2487310C0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_248731560();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2487279C8(v9, 0);
  v12 = sub_2487281AC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_2487310C0();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_2487316A0();
LABEL_4:

  return sub_2487310C0();
}

unint64_t sub_2487281AC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2487283CC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_248731190();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2487316A0();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2487283CC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_248731160();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_2487283CC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2487311B0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x24C1D70F0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_248728448(uint64_t a1, unint64_t a2)
{
  sub_24871D610(a1, a2);
  v4 = *(sub_2487285BC(a1, a2) + 16);
  v5 = sub_2487310B0();

  return v5;
}

uint64_t sub_2487284B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2487310B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2487284F0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_2487316A0();
  }

  result = sub_248728DD0(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_2487285BC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2487308E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
LABEL_12:
      sub_2486CC7FC(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      if (v12)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v11)
    {
      goto LABEL_10;
    }

    v12 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v15 = sub_2487279C8(v12, 0);
      v16 = sub_248730870();
      sub_2486CC7FC(a1, a2);
      v17 = *(v5 + 8);
      v5 += 8;
      v17(v10, v4);
      result = v15;
      if (v16 == v12)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v18 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v12 = v18;
      if (!v18)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_248728738(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    goto LABEL_16;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_2487307A0();
  if (a1)
  {
    a1 = sub_2487307C0();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_2487307A0() || !__OFSUB__(v5, sub_2487307C0()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_2487307B0();
LABEL_16:
  result = sub_2487310B0();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

char *_s26DeepThoughtBiomeFoundation20UserDefinedFunctionsO010predefinedG0SayAA18FunctionDefinitionVGyFZ_0()
{
  v0 = sub_2486C4B44(0, 1, 1, MEMORY[0x277D84F90]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_2486C4B44((v1 > 1), v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[40 * v2];
  *(v5 + 4) = 0xD000000000000015;
  *(v5 + 5) = 0x800000024873D7C0;
  *(v5 + 12) = 1;
  *(v5 + 7) = sub_2487206B4;
  *(v5 + 8) = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v0 = sub_2486C4B44((v1 > 1), v2 + 2, 1, v0);
  }

  *(v0 + 2) = v6;
  v7 = &v0[40 * v4];
  *(v7 + 4) = 0xD000000000000011;
  *(v7 + 5) = 0x800000024873D7E0;
  *(v7 + 12) = 2;
  *(v7 + 7) = sub_2487206CC;
  *(v7 + 8) = 0;
  v8 = *(v0 + 3);
  v9 = v2 + 3;
  if ((v2 + 3) > (v8 >> 1))
  {
    v0 = sub_2486C4B44((v8 > 1), v2 + 3, 1, v0);
  }

  *(v0 + 2) = v9;
  v10 = &v0[40 * v6];
  *(v10 + 4) = 0xD000000000000015;
  *(v10 + 5) = 0x800000024873D800;
  *(v10 + 12) = 1;
  *(v10 + 7) = sub_2487206E4;
  *(v10 + 8) = 0;
  v11 = *(v0 + 3);
  v12 = v2 + 4;
  if ((v2 + 4) > (v11 >> 1))
  {
    v0 = sub_2486C4B44((v11 > 1), v2 + 4, 1, v0);
  }

  *(v0 + 2) = v12;
  v13 = &v0[40 * v9];
  *(v13 + 4) = 0x7465675F70;
  *(v13 + 5) = 0xE500000000000000;
  *(v13 + 12) = 3;
  *(v13 + 7) = sub_248720780;
  *(v13 + 8) = 0;
  v14 = *(v0 + 3);
  v15 = v2 + 5;
  if ((v2 + 5) > (v14 >> 1))
  {
    v0 = sub_2486C4B44((v14 > 1), v2 + 5, 1, v0);
  }

  *(v0 + 2) = v15;
  v16 = &v0[40 * v12];
  *(v16 + 4) = 0x646975755F746567;
  *(v16 + 5) = 0xE800000000000000;
  *(v16 + 12) = 1;
  *(v16 + 7) = sub_2487206FC;
  *(v16 + 8) = 0;
  v17 = *(v0 + 3);
  v18 = v2 + 6;
  if ((v2 + 6) > (v17 >> 1))
  {
    v0 = sub_2486C4B44((v17 > 1), v2 + 6, 1, v0);
  }

  *(v0 + 2) = v18;
  v19 = &v0[40 * v15];
  *(v19 + 4) = 0x79617272615F70;
  *(v19 + 5) = 0xE700000000000000;
  *(v19 + 12) = 3;
  *(v19 + 7) = sub_248720714;
  *(v19 + 8) = 0;
  v20 = *(v0 + 3);
  if ((v2 + 7) > (v20 >> 1))
  {
    v0 = sub_2486C4B44((v20 > 1), v2 + 7, 1, v0);
  }

  *(v0 + 2) = v2 + 7;
  v21 = &v0[40 * v18];
  *(v21 + 4) = 0x7465675F72747370;
  *(v21 + 5) = 0xE800000000000000;
  *(v21 + 12) = 3;
  *(v21 + 7) = sub_248720798;
  *(v21 + 8) = 0;
  return v0;
}

uint64_t sub_248728C48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA64E0, &qword_248733800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_248728CCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_248728D14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_248728D7C()
{
  result = qword_27EEA68A0;
  if (!qword_27EEA68A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA68A0);
  }

  return result;
}

uint64_t sub_248728DD0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_2487283CC(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_248731180();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_2487283CC(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_2487283CC(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_248731180();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t StreamBookmarkStoreError.hashValue.getter()
{
  v1 = *v0;
  sub_248731910();
  MEMORY[0x24C1D78A0](v1);
  return sub_248731930();
}

uint64_t UserDefaultBookmarkStore.__allocating_init(defaults:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_248729310(uint64_t a1)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *(a1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name) & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v5 = objc_opt_self();
    swift_beginAccess();
    v27[0] = 0;
    v6 = [v5 archivedDataWithRootObject:a1 requiringSecureCoding:byte_27EEA6490 error:v27];
    v7 = v27[0];
    if (v6)
    {
      v8 = sub_2487308C0();
      v10 = v9;

      v11 = *(v1 + 16);
      v12 = sub_2487308A0();
      v13 = sub_248730FC0();
      [v11 setObject:v12 forKey:v13];

      sub_2486CC7FC(v8, v10);
    }

    else
    {
      v19 = v7;
      v20 = sub_2487307E0();

      swift_willThrow();
      if (qword_28150EE60 != -1)
      {
        swift_once();
      }

      v21 = sub_248730DF0();
      __swift_project_value_buffer(v21, qword_28150F088);
      v22 = sub_248730DD0();
      v23 = sub_2487313D0();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_2486BF000, v22, v23, "Failed to archive bookmark to UserDefaults", v24, 2u);
        MEMORY[0x24C1D8100](v24, -1, -1);
      }

      sub_248729660();
      swift_allocError();
      *v25 = 1;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v14 = sub_248730DF0();
    __swift_project_value_buffer(v14, qword_28150F088);
    v15 = sub_248730DD0();
    v16 = sub_2487313D0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2486BF000, v15, v16, "Bookmark name cannot be empty for storage", v17, 2u);
      MEMORY[0x24C1D8100](v17, -1, -1);
    }

    sub_248729660();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
  }

  v26 = *MEMORY[0x277D85DE8];
}

unint64_t sub_248729660()
{
  result = qword_27EEA68C8;
  if (!qword_27EEA68C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA68C8);
  }

  return result;
}

uint64_t sub_2487296B4()
{
  v2 = *(v0 + 16);
  v3 = sub_248730FC0();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_2487315A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_2486CF4C4(0, qword_28150EF68, 0x277CCAAC8);
      type metadata accessor for StreamsBookmark();
      v5 = sub_2487313F0();
      if (v1)
      {
        if (qword_28150EE60 != -1)
        {
          swift_once();
        }

        v6 = sub_248730DF0();
        __swift_project_value_buffer(v6, qword_28150F088);
        v7 = sub_248730DD0();
        v8 = sub_2487313D0();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&dword_2486BF000, v7, v8, "Failed to unarchive bookmark from UserDefaults", v9, 2u);
          MEMORY[0x24C1D8100](v9, -1, -1);
        }

        sub_248729660();
        swift_allocError();
        *v10 = 2;
        swift_willThrow();

        return sub_2486CC7FC(v17, v18);
      }

      else
      {
        v16 = v5;
        sub_2486CC7FC(v17, v18);
        return v16;
      }
    }
  }

  else
  {
    sub_2486EA0BC(v21);
  }

  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v12 = sub_248730DF0();
  __swift_project_value_buffer(v12, qword_28150F088);
  v13 = sub_248730DD0();
  v14 = sub_2487313D0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2486BF000, v13, v14, "Bookmark in UserDefaults not present or invalid", v15, 2u);
    MEMORY[0x24C1D8100](v15, -1, -1);
  }

  return 0;
}

uint64_t sub_24872999C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2486D873C;

  return sub_24872CA24();
}

uint64_t UserDefaultBookmarkStore.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_248729ADC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24870DDFC;

  return sub_24872CA24();
}

uint64_t sub_248729BB4()
{
  v0 = sub_248730850();
  __swift_allocate_value_buffer(v0, qword_27EEA68A8);
  __swift_project_value_buffer(v0, qword_27EEA68A8);
  return sub_2487307F0();
}

uint64_t static FlatFileStreamsBookmarkStore.defaultBookmarkPath.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EEA59C8 != -1)
  {
    swift_once();
  }

  v2 = sub_248730850();
  v3 = __swift_project_value_buffer(v2, qword_27EEA68A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_248729CDC()
{
  v0 = sub_248730850();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18 - v8;
  if (qword_27EEA59C8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_27EEA68A8);
  v11 = *(v1 + 16);
  v11(v9, v10, v0);
  v11(v6, v9, v0);
  if (qword_27EEA59B0 != -1)
  {
    swift_once();
  }

  v12 = qword_27EEA8158;
  v13 = type metadata accessor for FlatFileStreamsBookmarkStore();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  v16 = sub_24872CBA0(0xD000000000000023, 0x800000024873E1A0, v6, v12);

  result = (*(v1 + 8))(v9, v0);
  qword_27EEA68C0 = v16;
  return result;
}

uint64_t FlatFileStreamsBookmarkStore.__allocating_init(name:path:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_248730850();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a3, v6);
  if (qword_27EEA59B0 != -1)
  {
    swift_once();
  }

  v12 = qword_27EEA8158;
  v13 = type metadata accessor for FlatFileStreamsBookmarkStore();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  v16 = sub_24872CBA0(a1, a2, v11, v12);

  (*(v7 + 8))(a3, v6);
  return v16;
}

uint64_t static FlatFileStreamsBookmarkStore.shared.getter()
{
  if (qword_27EEA59D0 != -1)
  {
    swift_once();
  }
}

uint64_t FlatFileStreamsBookmarkStore.__allocating_init()()
{
  v0 = sub_248730850();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEA59C8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27EEA68A8);
  (*(v1 + 16))(v5, v6, v0);
  if (qword_27EEA59B0 != -1)
  {
    swift_once();
  }

  v7 = qword_27EEA8158;
  v8 = type metadata accessor for FlatFileStreamsBookmarkStore();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  v11 = sub_24872CBA0(0xD000000000000023, 0x800000024873E1A0, v5, v7);

  return v11;
}

uint64_t sub_24872A228(char *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = -1;
  v5 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lock;
  swift_beginAccess();
  pthread_rwlock_wrlock((v2 + v5));
  swift_endAccess();
  v6 = *&a1[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
  v7 = *&a1[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8];
  v8 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_bookmarks;
  swift_beginAccess();

  v9 = a1;
  v10 = *(v2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v2 + v8);
  *(v2 + v8) = 0x8000000000000000;
  sub_2486ECA34(v9, v6, v7, isUniquelyReferenced_nonNull_native);

  *(v2 + v8) = v20;
  result = swift_endAccess();
  v13 = *(v2 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_writeSequenceNumber);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_writeSequenceNumber) = v15;
    *(v4 + 16) = v15;
    swift_beginAccess();
    pthread_rwlock_unlock((v2 + v5));
    swift_endAccess();
    v16 = *(v2 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_bookmarkFileLock);
    v17 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lockPath;
    v18 = swift_allocObject();
    *(v18 + 16) = v9;
    *(v18 + 24) = v2;
    *(v18 + 32) = v4;
    v19 = v9;

    sub_248704F58(v2 + v17);
    sub_2487039C8(v2 + v17, 0, 0, 0, sub_24872D020, v18);
  }

  return result;
}

void sub_24872A410(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v8 = sub_248730DF0();
    __swift_project_value_buffer(v8, qword_28150F088);
    v9 = a3;

    oslog = sub_248730DD0();
    v10 = sub_2487313D0();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v36[0] = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_2486D3010(*&v9[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name], *&v9[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8], v36);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_2486D3010(a1, a2, v36);
      _os_log_impl(&dword_2486BF000, oslog, v10, "Failed to acquire a file lock to write bookmark data for %s: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1D8100](v12, -1, -1);
      MEMORY[0x24C1D8100](v11, -1, -1);
    }

    else
    {
    }

    return;
  }

  v15 = *&a3[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
  v16 = *&a3[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8];
  v17 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_writeSequenceNumberLog;
  swift_beginAccess();
  v18 = *(a4 + v17);
  if (*(v18 + 16))
  {
    v19 = *(a4 + v17);

    v20 = sub_2486C94CC(v15, v16);
    if (v21)
    {
      v22 = *(*(v18 + 56) + 8 * v20);

      swift_beginAccess();
      if (v22 >= *(a5 + 16))
      {
        if (qword_28150EE60 != -1)
        {
          swift_once();
        }

        v23 = sub_248730DF0();
        __swift_project_value_buffer(v23, qword_28150F088);
        v24 = a3;

        v25 = sub_248730DD0();
        v26 = sub_2487313C0();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v35 = v28;
          *v27 = 136315650;
          *(v27 + 4) = sub_2486D3010(v15, v16, &v35);
          *(v27 + 12) = 2048;
          swift_beginAccess();
          *(v27 + 14) = *(a5 + 16);

          *(v27 + 22) = 2048;
          *(v27 + 24) = v22;
          _os_log_impl(&dword_2486BF000, v25, v26, "Discarding a write for %s with a sequence number %ld, the current number is %ld", v27, 0x20u);
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x24C1D8100](v28, -1, -1);
          MEMORY[0x24C1D8100](v27, -1, -1);
        }

        else
        {
        }

        return;
      }
    }

    else
    {
    }
  }

  v29 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_filePath;
  swift_beginAccess();
  if (sub_24872E730((a4 + v29), a3, *(a5 + 16)))
  {
    swift_beginAccess();
    v30 = *(a5 + 16);
    swift_beginAccess();
    v31 = *(a4 + v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(a4 + v17);
    *(a4 + v17) = 0x8000000000000000;
    sub_2486EC470(v30, v15, v16, isUniquelyReferenced_nonNull_native);
    *(a4 + v17) = v34;
    swift_endAccess();
  }
}

uint64_t sub_24872A86C(char *a1)
{
  v2 = v1;
  v4 = sub_248730E70();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_248730EB0();
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = -1;
  v15 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lock;
  swift_beginAccess();
  pthread_rwlock_wrlock((v2 + v15));
  swift_endAccess();
  v16 = *&a1[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
  v17 = *&a1[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8];
  v18 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_bookmarks;
  swift_beginAccess();

  v19 = a1;
  v20 = *(v2 + v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v2 + v18);
  *(v2 + v18) = 0x8000000000000000;
  sub_2486ECA34(v19, v16, v17, isUniquelyReferenced_nonNull_native);

  *(v2 + v18) = v37;
  result = swift_endAccess();
  v23 = *(v2 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_writeSequenceNumber);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_writeSequenceNumber) = v25;
    *(v14 + 16) = v25;
    swift_beginAccess();
    pthread_rwlock_unlock((v2 + v15));
    swift_endAccess();
    dispatch_group_enter(*(v2 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_dispatchGroup));
    v26 = *(v2 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_queue);
    v27 = swift_allocObject();
    v27[2] = v2;
    v27[3] = v19;
    v27[4] = v14;
    aBlock[4] = sub_24872D02C;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24872EB14;
    aBlock[3] = &block_descriptor_5;
    v28 = _Block_copy(aBlock);
    v29 = v19;

    sub_248730E90();
    v37 = MEMORY[0x277D84F90];
    sub_24872EA74(&qword_27EEA6670, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6678, &qword_248735528);
    sub_24872EABC(&qword_27EEA6680, &qword_27EEA6678, &qword_248735528);
    v30 = v35;
    sub_2487315B0();
    MEMORY[0x24C1D73D0](0, v13, v8, v28);
    _Block_release(v28);
    (*(v34 + 8))(v8, v30);
    (*(v32 + 8))(v13, v33);
  }

  return result;
}

uint64_t sub_24872AC74(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_bookmarkFileLock);
  v7 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lockPath;
  v8 = *(a1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_queue);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;

  v10 = a2;

  sub_248704F58(a1 + v7);
  sub_2487039C8(a1 + v7, v8, 5, 0, sub_24872E724, v9);
}

void sub_24872AD50(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  if (!a2)
  {
    v17 = *&a4[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
    v18 = *&a4[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8];
    v19 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_writeSequenceNumberLog;
    swift_beginAccess();
    v20 = *(a3 + v19);
    if (*(v20 + 16))
    {
      v21 = *(a3 + v19);

      v22 = sub_2486C94CC(v17, v18);
      if (v23)
      {
        v24 = *(*(v20 + 56) + 8 * v22);

        swift_beginAccess();
        if (v24 >= *(a5 + 16))
        {
          if (qword_28150EE60 != -1)
          {
            swift_once();
          }

          v25 = sub_248730DF0();
          __swift_project_value_buffer(v25, qword_28150F088);
          v26 = a4;

          v27 = sub_248730DD0();
          v28 = sub_2487313C0();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v36 = v30;
            *v29 = 136315650;
            *(v29 + 4) = sub_2486D3010(v17, v18, &v36);
            *(v29 + 12) = 2048;
            swift_beginAccess();
            *(v29 + 14) = *(a5 + 16);

            *(v29 + 22) = 2048;
            *(v29 + 24) = v24;
            _os_log_impl(&dword_2486BF000, v27, v28, "Discarding a write for %s with a sequence number %ld, the current number is %ld", v29, 0x20u);
            __swift_destroy_boxed_opaque_existential_0(v30);
            MEMORY[0x24C1D8100](v30, -1, -1);
            MEMORY[0x24C1D8100](v29, -1, -1);
          }

          else
          {
          }

LABEL_19:
          dispatch_group_leave(*(a3 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_dispatchGroup));
          return;
        }
      }

      else
      {
      }
    }

    v31 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_filePath;
    swift_beginAccess();
    if (sub_24872E730((a3 + v31), a4, *(a5 + 16)))
    {
      swift_beginAccess();
      v32 = *(a5 + 16);
      swift_beginAccess();
      v33 = *(a3 + v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *(a3 + v19);
      *(a3 + v19) = 0x8000000000000000;
      sub_2486EC470(v32, v17, v18, isUniquelyReferenced_nonNull_native);
      *(a3 + v19) = v35;
      swift_endAccess();
    }

    goto LABEL_19;
  }

  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v9 = sub_248730DF0();
  __swift_project_value_buffer(v9, qword_28150F088);
  v10 = a4;

  v11 = sub_248730DD0();
  v12 = sub_2487313D0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_2486D3010(*&v10[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name], *&v10[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8], v37);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_2486D3010(a1, a2, v37);
    _os_log_impl(&dword_2486BF000, v11, v12, "Failed to acquire a file lock to write bookmark data for %s: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1D8100](v14, -1, -1);
    MEMORY[0x24C1D8100](v13, -1, -1);
  }

  v15 = *(a3 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_dispatchGroup);

  dispatch_group_leave(v15);
}

id sub_24872B1C8(uint64_t a1, unint64_t a2)
{
  v4 = sub_24872B738(a1, a2);
  if (v4)
  {
    v5 = v4;
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v6 = sub_248730DF0();
    __swift_project_value_buffer(v6, qword_28150F088);

    v7 = v5;
    v8 = sub_248730DD0();
    v9 = sub_2487313E0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_2486D3010(a1, a2, &v28);
      *(v10 + 12) = 2080;
      v12 = [v7 debugDescription];
      v13 = sub_248730FF0();
      v15 = v14;

      v16 = sub_2486D3010(v13, v15, &v28);

      *(v10 + 14) = v16;
      _os_log_impl(&dword_2486BF000, v8, v9, "Load %s bookmark: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1D8100](v11, -1, -1);
      MEMORY[0x24C1D8100](v10, -1, -1);
    }
  }

  else
  {
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v17 = sub_248730DF0();
    __swift_project_value_buffer(v17, qword_28150F088);

    v18 = sub_248730DD0();
    v19 = sub_2487313E0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_2486D3010(a1, a2, &v28);
      _os_log_impl(&dword_2486BF000, v18, v19, "No bookmark found for %s: create a new one", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x24C1D8100](v21, -1, -1);
      MEMORY[0x24C1D8100](v20, -1, -1);
    }

    v22 = MEMORY[0x277D84F90];
    v23 = sub_2486D3BA8(MEMORY[0x277D84F90]);
    v24 = type metadata accessor for StreamsBookmark();
    v25 = objc_allocWithZone(v24);
    v26 = &v25[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
    *v26 = a1;
    v26[1] = a2;
    *&v25[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals] = v23;

    *&v25[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals] = sub_2486D3BA8(v22);
    v29.receiver = v25;
    v29.super_class = v24;
    return objc_msgSendSuper2(&v29, sel_init);
  }

  return v7;
}

uint64_t sub_24872B528(char *a1, char a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v7 = *&a1[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
  v6 = *&a1[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8];

  if (a2)
  {
    sub_24872A228(a1);
    v8 = sub_24872B738(v7, v6);

    if (v8)
    {
      v9 = [v8 debugDescription];
      v10 = sub_248730FF0();
      v12 = v11;

      v13 = *(v5 + 24);
      *(v5 + 16) = v10;
      *(v5 + 24) = v12;
    }
  }

  else
  {
    sub_24872A86C(a1);
    v14 = swift_allocObject();
    v14[2] = v2;
    v14[3] = v7;
    v14[4] = v6;
    v14[5] = v5;

    sub_24872BE54(sub_24872D050, v14);
  }

  swift_beginAccess();
  v15 = *(v5 + 16);
  v16 = *(v5 + 24);

  return v15;
}

void *sub_24872B69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_24872B738(a2, a3);
  if (result)
  {
    v6 = result;
    v7 = [result debugDescription];
    v8 = sub_248730FF0();
    v10 = v9;

    swift_beginAccess();
    v11 = *(a4 + 24);
    *(a4 + 16) = v8;
    *(a4 + 24) = v10;
  }

  return result;
}

void *sub_24872B738(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lock;
  swift_beginAccess();
  pthread_rwlock_rdlock((v3 + v6));
  swift_endAccess();
  v7 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_bookmarks;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16))
  {

    v9 = sub_2486C94CC(a1, a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
      v12 = v11;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  swift_beginAccess();
  pthread_rwlock_unlock((v3 + v6));
  swift_endAccess();
  return v11;
}

uint64_t sub_24872B834()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_dispatchGroup);
  sub_248731400();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = *(v1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_bookmarkFileLock);
  v5 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lockPath;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v1;

  sub_248704F58(v1 + v5);
  sub_2487039C8(v1 + v5, 0, 0, 0, sub_24872D05C, v6);

  swift_beginAccess();
  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lock;
    swift_beginAccess();

    pthread_rwlock_wrlock((v1 + v8));
    swift_endAccess();
    v9 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_bookmarks;
    swift_beginAccess();
    v10 = *(v1 + v9);
    *(v1 + v9) = v7;

    swift_beginAccess();
    pthread_rwlock_unlock((v1 + v8));
    swift_endAccess();
  }
}

void sub_24872B9BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v6 = sub_248730DF0();
    __swift_project_value_buffer(v6, qword_28150F088);

    oslog = sub_248730DD0();
    v7 = sub_2487313D0();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_2486D3010(a1, a2, &v14);
      _os_log_impl(&dword_2486BF000, oslog, v7, "Failed to acquire a file lock to refresh bookmark data: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x24C1D8100](v9, -1, -1);
      MEMORY[0x24C1D8100](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v11 = sub_24872D8A8((a4 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_filePath));
    swift_beginAccess();
    v12 = *(a3 + 16);
    *(a3 + 16) = v11;
  }
}

uint64_t sub_24872BB74()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_dispatchGroup);
  sub_248731400();
  v3 = sub_2486D41E0(MEMORY[0x277D84F90]);
  v4 = *(v1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_bookmarkFileLock);
  v5 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lockPath;
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;

  sub_248704F58(v1 + v5);
  sub_2487039C8(v1 + v5, 0, 0, 0, sub_24872D0B4, v6);

  v7 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lock;
  swift_beginAccess();
  pthread_rwlock_wrlock((v1 + v7));
  swift_endAccess();
  v8 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_bookmarks;
  swift_beginAccess();
  v9 = *(v1 + v8);
  *(v1 + v8) = v3;

  swift_beginAccess();
  pthread_rwlock_unlock((v1 + v7));
  return swift_endAccess();
}

void sub_24872BCC0(uint64_t a1, unint64_t a2, uint64_t a3, char *a4)
{
  if (a2)
  {
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v6 = sub_248730DF0();
    __swift_project_value_buffer(v6, qword_28150F088);

    oslog = sub_248730DD0();
    v7 = sub_2487313D0();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_2486D3010(a1, a2, &v12);
      _os_log_impl(&dword_2486BF000, oslog, v7, "Failed to acquire a file lock to reset bookmark data: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x24C1D8100](v9, -1, -1);
      MEMORY[0x24C1D8100](v8, -1, -1);
    }
  }

  else
  {
    v10 = a3 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_filePath;

    sub_24872E0A4(v10, a4);
  }
}

uint64_t sub_24872BE54(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v4 = sub_248730E70();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_248730EB0();
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v27, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_248730E80();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v2 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_dispatchGroup);
  sub_2486CF4C4(0, &qword_27EEA6940, 0x277D85C78);
  (*(v15 + 104))(v19, *MEMORY[0x277D851C8], v14);
  v20 = sub_248731480();
  (*(v15 + 8))(v19, v14);
  v21 = swift_allocObject();
  *(v21 + 16) = v25;
  *(v21 + 24) = a2;
  aBlock[4] = sub_24872E6B4;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24872EB14;
  aBlock[3] = &block_descriptor_66;
  v22 = _Block_copy(aBlock);

  sub_248730E90();
  v29 = MEMORY[0x277D84F90];
  sub_24872EA74(&qword_27EEA6670, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6678, &qword_248735528);
  sub_24872EABC(&qword_27EEA6680, &qword_27EEA6678, &qword_248735528);
  sub_2487315B0();
  sub_248731410();
  _Block_release(v22);

  (*(v28 + 8))(v8, v4);
  (*(v9 + 8))(v13, v27);
}

uint64_t sub_24872C208(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_24872C24C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24872C270, 0, 0);
}

uint64_t sub_24872C270()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[4];
    sub_24872BE54(v1, v0[3]);
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = *(MEMORY[0x277D859E0] + 4);
    v6 = swift_task_alloc();
    v0[5] = v6;
    *v6 = v0;
    v6[1] = sub_24872C384;
    v7 = v0[4];
    v8 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v6, 0, 0, 0xD00000000000001DLL, 0x800000024873E1D0, sub_24872D0BC, v7, v8);
  }
}

uint64_t sub_24872C384()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2486D2C34, 0, 0);
}

uint64_t sub_24872C480(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6930, &unk_2487362A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v11 - v6;
  (*(v3 + 16))(&v11 - v6, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v7, v2);
  sub_24872BE54(sub_24872D83C, v9);
}

uint64_t FlatFileStreamsBookmarkStore.deinit()
{
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_filePath;
  v2 = sub_248730850();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lockPath, v2);

  v4 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_bookmarkFileLock);

  v5 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_bookmarks);

  v6 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_writeSequenceNumberLog);

  return v0;
}

uint64_t FlatFileStreamsBookmarkStore.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_filePath;
  v2 = sub_248730850();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lockPath, v2);

  v4 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_bookmarkFileLock);

  v5 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_bookmarks);

  v6 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_writeSequenceNumberLog);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t sub_24872C840(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24870DDFC;

  return sub_24872C24C(a1, a2);
}

uint64_t sub_24872C90C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_24872C93C()
{
  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v0 = sub_248730DF0();
  __swift_project_value_buffer(v0, qword_28150F088);
  oslog = sub_248730DD0();
  v1 = sub_2487313D0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2486BF000, oslog, v1, "Unsupported operation", v2, 2u);
    MEMORY[0x24C1D8100](v2, -1, -1);
  }
}

uint64_t sub_24872CA40()
{
  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v1 = sub_248730DF0();
  __swift_project_value_buffer(v1, qword_28150F088);
  v2 = sub_248730DD0();
  v3 = sub_2487313D0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2486BF000, v2, v3, "Unsupported operation", v4, 2u);
    MEMORY[0x24C1D8100](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t type metadata accessor for FlatFileStreamsBookmarkStore()
{
  result = qword_27EEA6920;
  if (!qword_27EEA6920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24872CBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a4;
  v9 = sub_248731440();
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v32 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_248731420();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v16 = sub_248730EB0();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v19 = sub_248730850();
  v31 = *(v19 - 8);
  v20 = v31;
  v21 = *(v31 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v37 = a2;

  MEMORY[0x24C1D70A0](1802330670, 0xE400000000000000);

  v30 = a3;
  sub_248730810();

  v25 = *(v20 + 32);
  v29 = v19;
  v25(v5 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_filePath, v24, v19);
  sub_248730810();
  v25(v5 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lockPath, v24, v19);
  sub_2486CF4C4(0, &qword_27EEA6940, 0x277D85C78);
  sub_248730EA0();
  v36 = MEMORY[0x277D84F90];
  sub_24872EA74(&qword_27EEA6948, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6950, &qword_2487362B8);
  sub_24872EABC(&qword_27EEA6958, &qword_27EEA6950, &qword_2487362B8);
  sub_2487315B0();
  (*(v33 + 104))(v32, *MEMORY[0x277D85260], v34);
  *(v5 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_queue) = sub_248731460();
  *(v5 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_dispatchGroup) = dispatch_group_create();
  v26 = v5 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lock;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0u;
  *(v26 + 48) = 0u;
  *(v26 + 64) = 0u;
  *(v26 + 80) = 0u;
  *(v26 + 96) = 0u;
  *(v26 + 112) = 0u;
  *(v26 + 128) = 0u;
  *(v26 + 144) = 0u;
  *(v26 + 160) = 0u;
  *(v26 + 176) = 0u;
  *(v26 + 192) = 0;
  swift_beginAccess();
  pthread_rwlock_init(v26, 0);
  swift_endAccess();
  *(v5 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_bookmarkFileLock) = v35;
  *(v5 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_writeSequenceNumber) = 0;

  v27 = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_writeSequenceNumberLog) = sub_2486D40E4(MEMORY[0x277D84F90]);
  *(v5 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_bookmarks) = sub_2486D41E0(v27);
  sub_24872B834();
  (*(v31 + 8))(v30, v29);
  return v5;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_19Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

unint64_t sub_24872D0C8()
{
  result = qword_27EEA6918;
  if (!qword_27EEA6918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6918);
  }

  return result;
}

uint64_t dispatch thunk of StreamsBookmarkStore.notifyOnComplete(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2486D873C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of UserDefaultBookmarkStore.notifyOnComplete(completion:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 120);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24870DDFC;

  return v10(a1, a2);
}

uint64_t sub_24872D4E8()
{
  result = sub_248730850();
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

uint64_t dispatch thunk of FlatFileStreamsBookmarkStore.notifyOnComplete(completion:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 320);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24870DDFC;

  return v10(a1, a2);
}

uint64_t sub_24872D83C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6930, &unk_2487362A0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_248731310();
}

uint64_t sub_24872D8A8(id a1)
{
  v2 = sub_248730850();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v68 - v8;
  v10 = sub_248730860();
  v26 = v25;
  v27 = v10;
  sub_2486CF4C4(0, qword_28150EF68, 0x277CCAAC8);
  type metadata accessor for StreamsBookmarkCollection();
  sub_24871D610(v27, v26);
  v71 = v27;
  v72 = v26;
  v28 = sub_2487313F0();
  if (!v28)
  {
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v29 = sub_248730DF0();
    __swift_project_value_buffer(v29, qword_28150F088);
    (*(v3 + 16))(v9, a1, v2);
    v30 = sub_248730DD0();
    v31 = sub_2487313D0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v75[0] = v33;
      *v32 = 136315138;
      sub_24872EA74(&qword_27EEA6660, MEMORY[0x277CC9260]);
      v34 = sub_248731850();
      v36 = v35;
      (*(v3 + 8))(v9, v2);
      v37 = sub_2486D3010(v34, v36, v75);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_2486BF000, v30, v31, "Cannot decode bookmarks read from path=%s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x24C1D8100](v33, -1, -1);
      MEMORY[0x24C1D8100](v32, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v9, v2);
    }

    v38 = sub_2486D41E0(MEMORY[0x277D84F90]);
    v40 = v71;
    v39 = v72;
    sub_2486CC7FC(v71, v72);
    sub_2486CC7FC(v40, v39);
    return v38;
  }

  v41 = v28;
  sub_2486CC7FC(v71, v72);
  v42 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation25StreamsBookmarkCollection_bookmarks;
  v43 = *&v41[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation25StreamsBookmarkCollection_bookmarks];
  v69 = v41;
  if (v43 >> 62)
  {
    v44 = sub_248731790();
  }

  else
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = type metadata accessor for StreamsBookmark();
  v38 = MEMORY[0x24C1D6EA0](v44, MEMORY[0x277D837D0], v45, MEMORY[0x277D837E0]);
  v46 = *&v69[v42];
  if (v46 >> 62)
  {
    v47 = sub_248731790();
    if (v47)
    {
      goto LABEL_17;
    }

LABEL_37:
    sub_2486CC7FC(v71, v72);

    return v38;
  }

  v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v47)
  {
    goto LABEL_37;
  }

LABEL_17:
  v74 = v46 & 0xC000000000000001;
  v70 = v46 & 0xFFFFFFFFFFFFFF8;

  v48 = 0;
  v73 = v46;
  while (1)
  {
    if (v74)
    {
      v52 = MEMORY[0x24C1D7600](v48, v46);
    }

    else
    {
      if (v48 >= *(v70 + 16))
      {
        goto LABEL_42;
      }

      v52 = *(v46 + 8 * v48 + 32);
    }

    v53 = v52;
    v2 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    v46 = v47;
    v3 = *&v52[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
    v54 = *&v52[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8];

    a1 = v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v38;
    v27 = sub_2486C94CC(v3, v54);
    v57 = v38[2];
    v58 = (v56 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      goto LABEL_40;
    }

    v60 = v56;
    if (v38[3] >= v59)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v56)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_2486E6FC4();
        if (v60)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_2486E5BB0(v59, isUniquelyReferenced_nonNull_native);
      v61 = sub_2486C94CC(v3, v54);
      if ((v60 & 1) != (v62 & 1))
      {
        result = sub_2487318B0();
        __break(1u);
        return result;
      }

      v27 = v61;
      if (v60)
      {
LABEL_18:

        v38 = v75[0];
        v49 = *(v75[0] + 56);
        v50 = *(v49 + 8 * v27);
        *(v49 + 8 * v27) = a1;

        goto LABEL_19;
      }
    }

    v38 = v75[0];
    *(v75[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
    v63 = (v38[6] + 16 * v27);
    *v63 = v3;
    v63[1] = v54;
    *(v38[7] + 8 * v27) = a1;

    v64 = v38[2];
    v65 = __OFADD__(v64, 1);
    v66 = v64 + 1;
    if (v65)
    {
      goto LABEL_41;
    }

    v38[2] = v66;
LABEL_19:
    ++v48;
    v47 = v46;
    v51 = v2 == v46;
    v46 = v73;
    if (v51)
    {

      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  swift_once();
  v11 = sub_248730DF0();
  __swift_project_value_buffer(v11, qword_28150F088);
  (*(v3 + 16))(v27, a1, v2);
  v12 = v46;
  v13 = sub_248730DD0();
  v14 = sub_2487313C0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v77[0] = v16;
    *v15 = 136315394;
    sub_24872EA74(&qword_27EEA6660, MEMORY[0x277CC9260]);
    v17 = sub_248731850();
    v19 = v18;
    (*(v3 + 8))(v27, v2);
    v20 = sub_2486D3010(v17, v19, v77);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v75[0] = v46;
    v75[1] = 0;
    v76 = 1;
    v21 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6938, &qword_2487362B0);
    v22 = sub_248731040();
    v24 = sub_2486D3010(v22, v23, v77);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_2486BF000, v13, v14, "Cannot read bookmarks from path=%s, error=%s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1D8100](v16, -1, -1);
    MEMORY[0x24C1D8100](v15, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v27, v2);
  }

  v38 = sub_2486D41E0(MEMORY[0x277D84F90]);

  return v38;
}

uint64_t sub_24872E0A4(uint64_t a1, char *a2)
{
  v60[5] = *MEMORY[0x277D85DE8];
  v4 = sub_248730850();
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = *(a2 + 2);
  if (v8)
  {
    v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = a1;
    v10 = sub_2486DE8A4(v8, 0);
    v11 = sub_2486FD1D0(v60, v10 + 4, v8, a2);
    v12 = v60[0];
    v13 = v60[1];
    v14 = v60[4];

    sub_2486CA188();
    if (v11 != v8)
    {
      __break(1u);
      swift_once();
      v24 = sub_248730DF0();
      __swift_project_value_buffer(v24, qword_28150F088);
      v13[2](v9, v12, v14);
      v25 = v10;
      v26 = sub_248730DD0();
      v27 = sub_2487313D0();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v55 = a2;
        v29 = v28;
        v54 = swift_slowAlloc();
        v60[0] = v54;
        *v29 = 136315394;
        sub_24872EA74(&qword_27EEA6660, MEMORY[0x277CC9260]);
        v30 = sub_248731850();
        v31 = v14;
        v33 = v32;
        (v13[1])(v9, v31);
        v34 = sub_2486D3010(v30, v33, v60);

        *(v29 + 4) = v34;
        *(v29 + 12) = 2080;
        v58 = v10;
        v35 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6688, qword_248735530);
        v36 = sub_248731040();
        v38 = sub_2486D3010(v36, v37, v60);

        *(v29 + 14) = v38;
        _os_log_impl(&dword_2486BF000, v26, v27, "Cannot write bookmark data to a file, path=%s, error=%s", v29, 0x16u);
        v39 = v54;
        swift_arrayDestroy();
        MEMORY[0x24C1D8100](v39, -1, -1);
        MEMORY[0x24C1D8100](v29, -1, -1);
        sub_2486CC7FC(v11, v8);
      }

      else
      {

        sub_2486CC7FC(v11, v8);
        (v13[1])(v9, v14);
      }

LABEL_15:
      result = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v15 = type metadata accessor for StreamsBookmarkCollection();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation25StreamsBookmarkCollection_bookmarks] = v10;
  v59.receiver = v16;
  v59.super_class = v15;
  v17 = objc_msgSendSuper2(&v59, sel_init);
  v18 = objc_opt_self();
  v60[0] = 0;
  v19 = [v18 archivedDataWithRootObject:v17 requiringSecureCoding:1 error:v60];
  v20 = v60[0];
  if (!v19)
  {
    v40 = v20;
    v41 = sub_2487307E0();

    swift_willThrow();
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v42 = sub_248730DF0();
    __swift_project_value_buffer(v42, qword_28150F088);
    v43 = v41;
    v44 = sub_248730DD0();
    v45 = sub_2487313D0();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v60[0] = v47;
      *v46 = 136315138;
      v58 = v41;
      v48 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6688, qword_248735530);
      v49 = sub_248731040();
      v51 = sub_2486D3010(v49, v50, v60);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_2486BF000, v44, v45, "Cannot encode bookmarks, error=%s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x24C1D8100](v47, -1, -1);
      MEMORY[0x24C1D8100](v46, -1, -1);
    }

    else
    {
    }

    goto LABEL_15;
  }

  v21 = sub_2487308C0();
  v23 = v22;

  sub_2487308D0();
  sub_2486CC7FC(v21, v23);

  result = 1;
LABEL_16:
  v53 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24872E6B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_7Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24872E730(void *a1, char *a2, uint64_t a3)
{
  v6 = sub_248730850();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24872D8A8(a1);
  v13 = *&a2[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
  v14 = *&a2[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8];

  v15 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = v12;
  sub_2486ECA34(v15, v13, v14, isUniquelyReferenced_nonNull_native);

  v17 = sub_24872E0A4(a1, v32);

  if (v17)
  {
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v18 = sub_248730DF0();
    __swift_project_value_buffer(v18, qword_28150F088);
    (*(v7 + 16))(v11, a1, v6);
    v19 = v15;
    v20 = sub_248730DD0();
    v21 = sub_2487313C0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      HIDWORD(v31) = v21;
      v23 = a3;
      v24 = v22;
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136315650;
      *(v24 + 4) = sub_2486D3010(v13, v14, &v32);
      *(v24 + 12) = 2048;
      *(v24 + 14) = v23;
      *(v24 + 22) = 2080;
      sub_24872EA74(&qword_27EEA6660, MEMORY[0x277CC9260]);
      v26 = sub_248731850();
      v28 = v27;
      (*(v7 + 8))(v11, v6);
      v29 = sub_2486D3010(v26, v28, &v32);

      *(v24 + 24) = v29;
      _os_log_impl(&dword_2486BF000, v20, BYTE4(v31), "Updated a bookmark, name=%s, sequenceNum=%ld, path=%s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1D8100](v25, -1, -1);
      MEMORY[0x24C1D8100](v24, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }
  }

  return v17 & 1;
}

uint64_t sub_24872EA74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24872EABC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

DeepThoughtBiomeFoundation::BiomeEventStreamType_optional __swiftcall BiomeEventStreamType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_24872EB58@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_24872EBB8(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_24872EBF8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 24);
  return result;
}

void sub_24872EC3C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  v5 = v2;
}

id sub_24872EC94()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t BiomeEventStream.__allocating_init(streamType:libraryFeatureExtractor:)(char *a1, uint64_t a2)
{
  result = swift_allocObject();
  v5 = *a1;
  *(result + 16) = 5;
  *(result + 24) = v5;
  *(result + 32) = a2;
  return result;
}

uint64_t BiomeEventStream.init(streamType:libraryFeatureExtractor:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 16) = 5;
  *(v2 + 24) = v3;
  *(v2 + 32) = a2;
  return v2;
}

uint64_t sub_24872ED44(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (qword_27EEA5998 != -1)
  {
    swift_once();
  }

  v4 = qword_27EEA8138;
  if (!*(qword_27EEA8138 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v5 = sub_2486C95D4(v3);
  if ((v6 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(*(v4 + 56) + 8 * v5);
  return sub_2486DEFCC(v3, v7, a1, v7);
}

uint64_t sub_24872EDFC(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v1 + 32);
  v5 = qword_27EEA5998;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_27EEA8138;
  if (*(qword_27EEA8138 + 16) && (v8 = sub_2486C95D4(v3), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    v11 = sub_2486DF2FC(v3, v10, a1, v6, v10);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  return v11;
}

uint64_t _s26DeepThoughtBiomeFoundation0C11EventStreamCfD_0()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_24872EF9C(_BYTE *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = swift_allocObject();
  LOBYTE(a1) = *a1;
  v9 = [objc_allocWithZone(a3(0)) init];
  *(v8 + 16) = 5;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 40) = v9;
  swift_beginAccess();
  *(v8 + 16) = a4;
  return v8;
}

uint64_t sub_24872F04C()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_24872F0D4(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = *a1;
  *(v6 + 16) = 5;
  *(v6 + 24) = v7;
  *(v6 + 32) = a2;
  swift_beginAccess();
  *(v6 + 16) = a3;
  return v6;
}

uint64_t sub_24872F154()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6980, &qword_2487366E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248733750;
  *(inited + 32) = 0;
  *(inited + 40) = type metadata accessor for AppInFocusBiomeEventStream();
  *(inited + 48) = 13;
  *(inited + 56) = type metadata accessor for AppIntentBiomeEventStream();
  *(inited + 64) = 12;
  *(inited + 72) = type metadata accessor for CarPlayConnectedBiomeEventStream();
  *(inited + 80) = 15;
  *(inited + 88) = type metadata accessor for DeviceScreenLockedBiomeEventStream();
  *(inited + 96) = 7;
  *(inited + 104) = type metadata accessor for LocationPointOfInterestCategoryBiomeEventStream();
  *(inited + 112) = 9;
  *(inited + 120) = type metadata accessor for LocationSemanticBiomeEventStream();
  *(inited + 128) = 2;
  *(inited + 136) = type metadata accessor for MediaNowPlayingBiomeEventStream();
  *(inited + 144) = 10;
  *(inited + 152) = type metadata accessor for MessagesReadBiomeEventStream();
  *(inited + 160) = 11;
  *(inited + 168) = type metadata accessor for NotificationUsageBiomeEventStream();
  *(inited + 176) = 6;
  *(inited + 184) = type metadata accessor for SiriExecutionBiomeEventStream();
  *(inited + 192) = 14;
  *(inited + 200) = type metadata accessor for SiriPostSiriEngagementBiomeEventStream();
  *(inited + 208) = 1;
  *(inited + 216) = type metadata accessor for SiriUIBiomeEventStream();
  *(inited + 224) = 16;
  *(inited + 232) = type metadata accessor for SiriVoiceTriggerStatisticsBiomeEventStream();
  *(inited + 240) = 8;
  *(inited + 248) = type metadata accessor for TextInputSessionBiomeEventStream();
  *(inited + 256) = 4;
  *(inited + 264) = type metadata accessor for UserFocusSleepModeBiomeEventStream();
  *(inited + 272) = 3;
  *(inited + 280) = type metadata accessor for UserFocusStatusChangeBiomeEventStream();
  v1 = sub_2486D42E4(inited);
  result = swift_setDeallocating();
  qword_27EEA81A0 = v1;
  return result;
}

uint64_t sub_24872F288()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6978, &qword_2487366E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248733750;
  *(inited + 32) = 0;
  *(inited + 40) = type metadata accessor for AppInFocusFeatureExtractor();
  *(inited + 48) = 13;
  *(inited + 56) = type metadata accessor for AppIntentFeatureExtractor();
  *(inited + 64) = 12;
  *(inited + 72) = type metadata accessor for CarPlayConnectedFeatureExtractor();
  *(inited + 80) = 15;
  *(inited + 88) = type metadata accessor for DeviceLockedEventFeatureExtractor();
  *(inited + 96) = 7;
  *(inited + 104) = type metadata accessor for LocationPointOfInterestCategoryFeatureExtractor();
  *(inited + 112) = 9;
  *(inited + 120) = type metadata accessor for LocationSemanticFeatureExtractor();
  *(inited + 128) = 2;
  *(inited + 136) = type metadata accessor for MediaNowPlayingFeatureExtractor();
  *(inited + 144) = 10;
  *(inited + 152) = type metadata accessor for MessagesReadFeatureExtractor();
  *(inited + 160) = 11;
  *(inited + 168) = type metadata accessor for NotificationUsageFeatureExtractor();
  *(inited + 176) = 6;
  *(inited + 184) = type metadata accessor for SiriExecutionFeatureExtractor();
  *(inited + 192) = 14;
  *(inited + 200) = type metadata accessor for SiriPostSiriEngagementFeatureExtractor();
  *(inited + 208) = 1;
  *(inited + 216) = type metadata accessor for SiriUIFeatureExtractor();
  *(inited + 224) = 16;
  *(inited + 232) = type metadata accessor for VoiceTriggerStatisticsEventFeatureExtractor();
  *(inited + 240) = 8;
  *(inited + 248) = type metadata accessor for TextInputSessionFeatureExtractor();
  *(inited + 256) = 4;
  *(inited + 264) = type metadata accessor for UserFocusSleepModeFeatureExtractor();
  *(inited + 272) = 3;
  *(inited + 280) = type metadata accessor for UserFocusStatusChangeFeatureExtractor();
  v1 = sub_2486D42F8(inited);
  result = swift_setDeallocating();
  qword_27EEA81A8 = v1;
  return result;
}

uint64_t BiomeAggregatedStream.__allocating_init(streamsToType:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_24872F444(uint64_t a1)
{
  v13 = sub_248731270();
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  while (v4)
  {
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = *(a1 + 56);
    v11 = (v7 << 9) | (8 * v9);
    if (*(v10 + v11))
    {
      v12 = *(v10 + v11);
      sub_2487312D0();

      swift_getWitnessTable();
      result = sub_2487312C0();
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return v13;
    }

    v4 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24872F580(void *a1)
{
  v3 = MEMORY[0x277D84F90];
  v4 = sub_2486D43E0(MEMORY[0x277D84F90]);
  v5 = v4;
  v6 = *(v1 + 16);
  v7 = *(v6 + 16);
  v51 = a1;
  if (v7)
  {
    v8 = v4;
    v3 = sub_2486DDA38(v7, 0);
    v9 = sub_2486FD324(&v53, v3 + 4, v7, v6);

    sub_2486CA188();
    if (v9 != v7)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      result = sub_2487318B0();
      __break(1u);
      return result;
    }

    v5 = v8;
  }

  v10 = v3[2];
  if (v10)
  {
    v11 = 0;
    v12 = 0x27EEA5000;
    v13 = &unk_27EEA8000;
    while (1)
    {
      if (v11 >= v3[2])
      {
        __break(1u);
        goto LABEL_40;
      }

      if (*(v6 + 16))
      {
        v16 = v3[v11 + 4];
        v17 = sub_2486C95D4(v16);
        if (v18)
        {
          v19 = *(*(v6 + 56) + v17);
          if (*(v12 + 2520) != -1)
          {
            swift_once();
          }

          v20 = v13[52];
          if (*(v20 + 16))
          {
            v21 = sub_2486C95D4(v16);
            if (v22)
            {
              break;
            }
          }
        }
      }

LABEL_9:
      if (v10 == ++v11)
      {
        goto LABEL_38;
      }
    }

    v23 = *(*(v20 + 56) + 8 * v21);
    if (qword_27EEA59E0 != -1)
    {
      swift_once();
    }

    v24 = qword_27EEA81A8;
    if (!*(qword_27EEA81A8 + 16) || (v25 = sub_2486C95D4(v16), (v26 & 1) == 0))
    {
LABEL_8:
      v13 = &unk_27EEA8000;
      goto LABEL_9;
    }

    v27 = *(*(v24 + 56) + 8 * v25);
    LOBYTE(v52) = v19;
    v28 = (*(v23 + 176))(&v52, [objc_allocWithZone(v27) init]);
    swift_beginAccess();
    v29 = *(v28 + 16);
    if (qword_27EEA5998 != -1)
    {
      swift_once();
    }

    v30 = qword_27EEA8138;
    if (*(qword_27EEA8138 + 16) && (v31 = sub_2486C95D4(v29), (v32 & 1) != 0))
    {
      v33 = *(*(v30 + 56) + 8 * v31);
      v34 = sub_2486DEFCC(v29, v33, v51, v33);
    }

    else
    {
      v34 = MEMORY[0x277D84F90];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v5;
    v37 = sub_2486C95D4(v16);
    v38 = v5;
    v39 = *(v5 + 16);
    v40 = (v36 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_41;
    }

    v42 = v36;
    if (*(v38 + 24) < v41)
    {
      sub_2486E5E54(v41, isUniquelyReferenced_nonNull_native);
      v43 = sub_2486C95D4(v16);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_43;
      }

      v37 = v43;
      v45 = v52;
      if ((v42 & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_6:
      v14 = v45[7];
      v15 = *(v14 + 8 * v37);
      *(v14 + 8 * v37) = v34;

      v5 = v45;
LABEL_7:
      v12 = 0x27EEA5000uLL;
      goto LABEL_8;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v45 = v52;
      if (v36)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_2486E7130();
      v45 = v52;
      if (v42)
      {
        goto LABEL_6;
      }
    }

LABEL_34:
    v45[(v37 >> 6) + 8] |= 1 << v37;
    *(v45[6] + 8 * v37) = v16;
    *(v45[7] + 8 * v37) = v34;

    v46 = v45[2];
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      goto LABEL_42;
    }

    v5 = v45;
    v45[2] = v48;
    goto LABEL_7;
  }

LABEL_38:

  v49 = sub_24872F964(v5);

  return v49;
}

uint64_t sub_24872F964(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6988, &qword_2487366F0);
    v2 = sub_2487317D0();
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
    v12 = (v9 << 9) | (8 * __clz(__rbit64(v5)));
    v13 = *(*(a1 + 48) + v12);
    v23 = *(*(a1 + 56) + v12);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6990, &qword_2487366F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6998, &unk_248736700);
    swift_dynamicCast();
    v14 = *(v2 + 40);
    sub_248731910();
    MEMORY[0x24C1D78A0](v13);
    result = sub_248731930();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    *(*(v2 + 48) + 8 * v10) = v13;
    *(*(v2 + 56) + 8 * v10) = v22;
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24872FBCC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6968, &unk_2487366C8);
    v2 = sub_2487317D0();
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
    v12 = (v9 << 9) | (8 * __clz(__rbit64(v5)));
    v13 = *(*(a1 + 48) + v12);
    v23 = *(*(a1 + 56) + v12);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5B20, &qword_248733060);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6970, &qword_2487366D8);
    swift_dynamicCast();
    v14 = *(v2 + 40);
    sub_248731910();
    MEMORY[0x24C1D78A0](v13);
    result = sub_248731930();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    *(*(v2 + 48) + 8 * v10) = v13;
    *(*(v2 + 56) + 8 * v10) = v22;
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24872FE34(void *a1)
{
  v3 = MEMORY[0x277D84F90];
  v4 = sub_2486D43F4(MEMORY[0x277D84F90]);
  v5 = v4;
  v6 = *(v1 + 16);
  v7 = *(v6 + 16);
  v53 = a1;
  if (v7)
  {
    v8 = v4;
    v3 = sub_2486DDA38(v7, 0);
    v9 = sub_2486FD324(&v56, v3 + 4, v7, v6);

    sub_2486CA188();
    if (v9 != v7)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      result = sub_2487318B0();
      __break(1u);
      return result;
    }

    v5 = v8;
  }

  v10 = v3[2];
  if (v10)
  {
    v11 = 0;
    v12 = 0x27EEA5000;
    v13 = &unk_27EEA8000;
    while (1)
    {
      if (v11 >= v3[2])
      {
        __break(1u);
        goto LABEL_40;
      }

      if (*(v6 + 16))
      {
        v16 = v3[v11 + 4];
        v17 = sub_2486C95D4(v16);
        if (v18)
        {
          v19 = *(*(v6 + 56) + v17);
          if (*(v12 + 2520) != -1)
          {
            swift_once();
          }

          v20 = v13[52];
          if (*(v20 + 16))
          {
            v21 = sub_2486C95D4(v16);
            if (v22)
            {
              break;
            }
          }
        }
      }

LABEL_9:
      if (v10 == ++v11)
      {
        goto LABEL_38;
      }
    }

    v23 = *(*(v20 + 56) + 8 * v21);
    if (qword_27EEA59E0 != -1)
    {
      swift_once();
    }

    v24 = qword_27EEA81A8;
    if (!*(qword_27EEA81A8 + 16) || (v25 = sub_2486C95D4(v16), (v26 & 1) == 0))
    {
LABEL_8:
      v13 = &unk_27EEA8000;
      goto LABEL_9;
    }

    v27 = v5;
    v28 = *(*(v24 + 56) + 8 * v25);
    LOBYTE(v55) = v19;
    v29 = (*(v23 + 176))(&v55, [objc_allocWithZone(v28) init]);
    swift_beginAccess();
    v30 = *(v29 + 16);
    swift_beginAccess();
    v31 = qword_27EEA5998;
    v32 = *(v29 + 32);
    if (v31 != -1)
    {
      swift_once();
    }

    v33 = qword_27EEA8138;
    if (*(qword_27EEA8138 + 16) && (v34 = sub_2486C95D4(v30), (v35 & 1) != 0))
    {
      v36 = *(*(v33 + 56) + 8 * v34);
      v54 = sub_2486DF2FC(v30, v36, v53, v32, v36);
    }

    else
    {
      v54 = MEMORY[0x277D84F90];
    }

    v37 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v27;
    v40 = sub_2486C95D4(v16);
    v41 = *(v37 + 16);
    v42 = (v39 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      goto LABEL_41;
    }

    v44 = v39;
    if (*(v37 + 24) < v43)
    {
      sub_2486E5E68(v43, isUniquelyReferenced_nonNull_native);
      v45 = sub_2486C95D4(v16);
      if ((v44 & 1) != (v46 & 1))
      {
        goto LABEL_43;
      }

      v40 = v45;
      v47 = v55;
      if ((v44 & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_6:
      v14 = v47[7];
      v15 = *(v14 + 8 * v40);
      *(v14 + 8 * v40) = v54;

      v5 = v47;
LABEL_7:
      v12 = 0x27EEA5000uLL;
      goto LABEL_8;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v47 = v55;
      if (v39)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_2486E7144();
      v47 = v55;
      if (v44)
      {
        goto LABEL_6;
      }
    }

LABEL_34:
    v47[(v40 >> 6) + 8] |= 1 << v40;
    *(v47[6] + 8 * v40) = v16;
    *(v47[7] + 8 * v40) = v54;

    v48 = v47[2];
    v49 = __OFADD__(v48, 1);
    v50 = v48 + 1;
    if (v49)
    {
      goto LABEL_42;
    }

    v5 = v47;
    v47[2] = v50;
    goto LABEL_7;
  }

LABEL_38:

  v51 = sub_24872FBCC(v5);

  return v51;
}

uint64_t BiomeAggregatedStream.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t BiomeAggregatedStream.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_2487302A4()
{
  result = qword_27EEA6960;
  if (!qword_27EEA6960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6960);
  }

  return result;
}