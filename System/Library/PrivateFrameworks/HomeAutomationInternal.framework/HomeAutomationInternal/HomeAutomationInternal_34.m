id sub_252B9D2D4()
{
  type metadata accessor for HomeEntity();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_252E36F04();
  v3 = [v1 initWithIdentifier:0 displayString:v2];

  v4 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal7Trigger_delegate) configuredName];
  if (v4)
  {
    v5 = v4;
    sub_252E36F34();

    v6 = sub_252E36F04();
  }

  else
  {
    v6 = 0;
  }

  [v3 setHomeEntityName_];

  [v3 setType_];
  sub_252E32E24();
  v7 = sub_252E36F04();

  [v3 setEntityIdentifier_];

  v8 = sub_252BEAC3C();
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v10 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    v11 = sub_252E36F04();
  }

  else
  {
    v11 = 0;
  }

  [v3 setHome_];

  return v3;
}

void *sub_252B9D4B0@<X0>(void *a1@<X8>)
{
  type metadata accessor for AsyncGenericErrorResponseHandler();
  swift_allocObject();
  result = sub_252D46D94();
  *a1 = result;
  return result;
}

uint64_t sub_252B9D4EC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_252B9D510, 0, 0);
}

uint64_t sub_252B9D510()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_2529515FC(4, 0, 0x45636972656E6567, 0xEC000000726F7272);
  v3 = v1[6];
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);

  sub_252943B8C(sub_252B9D608, v1, v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_252B9D64C(unint64_t a1)
{
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544D60);
  sub_252E379F4();
  v3 = HomeAttributeType.description.getter(a1);
  v5 = v4;

  MEMORY[0x2530AD570](0x6461657220736920, 0xEF203A796C6E6F20);
  v12 = vdupq_n_s64(a1);
  v6 = ((vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3AD0, v12), vceqq_s64(unk_2864A3AE0, v12)), vuzp1q_s32(vceqq_s64(xmmword_2864A3AF0, v12), vceqq_s64(unk_2864A3B00, v12))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3B10, v12), vceqq_s64(unk_2864A3B20, v12)), vuzp1q_s32(vceqq_s64(xmmword_2864A3B30, v12), vceqq_s64(unk_2864A3B40, v12))))) | vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3B50, v12), vceqq_s64(unk_2864A3B60, v12)), vuzp1q_s32(vceqq_s64(xmmword_2864A3B70, v12), vceqq_s64(unk_2864A3B80, v12)))))) & 1) == 0;
  if (v6)
  {
    v7 = 0x65736C6166;
  }

  else
  {
    v7 = 1702195828;
  }

  if (v6)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v7, v8);

  sub_252CC3D90(v3, v5, 0xD000000000000091, 0x8000000252E84DB0);

  v9 = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3AD0, v12), vceqq_s64(unk_2864A3AE0, v12)), vuzp1q_s32(vceqq_s64(xmmword_2864A3AF0, v12), vceqq_s64(unk_2864A3B00, v12))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3B10, v12), vceqq_s64(unk_2864A3B20, v12)), vuzp1q_s32(vceqq_s64(xmmword_2864A3B30, v12), vceqq_s64(unk_2864A3B40, v12))));
  v9.i8[0] = vmaxvq_u8(v9);
  v10 = v9.i32[0];
  *v9.i8 = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3B50, v12), vceqq_s64(unk_2864A3B60, v12)), vuzp1q_s32(vceqq_s64(xmmword_2864A3B70, v12), vceqq_s64(unk_2864A3B80, v12))));
  v9.i8[0] = vmaxv_u8(*v9.i8);
  return (v10 | v9.i32[0]) & 1;
}

uint64_t HomeAttributeValueType.description.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return 0x65676E6172;
      }

      if (a1 == 8)
      {
        return 0x676E696E61656C63;
      }

      goto LABEL_18;
    }

    if (a1 == 4)
    {
      return 0x72656765746E69;
    }

    else
    {
      return 0x74696D696CLL;
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 0x6E776F6E6B6E75;
      }

      if (a1 == 1)
      {
        return 0x6E61656C6F6F62;
      }

LABEL_18:
      result = sub_252E37DF4();
      __break(1u);
      return result;
    }

    if (a1 == 2)
    {
      return 0x656C62756F64;
    }

    else
    {
      return 0x676E69727473;
    }
  }
}

BOOL sub_252B9DA28(void *a1)
{
  if (sub_252C4B5D4())
  {
    v2 = [a1 userTask];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 attribute];

      return v4 == 7;
    }

    sub_252C515AC();
  }

  return 0;
}

uint64_t sub_252B9DAB4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SetThresholdForModifyHumidityRequestHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

id sub_252B9DAE8(void *a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  v7 = [a1 userTask];
  v65 = v3;
  v66 = v2;
  v64 = v6;
  if (v7)
  {
    v8 = v7;
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v67 = sub_252D6CA80(v8);
  }

  else
  {
    v67 = 0;
  }

  type metadata accessor for HomeStore();
  v9 = static HomeStore.shared.getter();
  v10 = [v69 filters];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for HomeFilter();
    v12 = sub_252E37264();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = type metadata accessor for HomeUserTask();
  v14 = objc_allocWithZone(v13);
  v15 = sub_252E36F04();
  v16 = &off_279711000;
  v17 = [v14 initWithIdentifier:0 displayString:v15];

  v18 = v17;
  [v18 setTaskType_];
  [v18 setAttribute_];
  [v18 setValue_];

  v19 = HomeStore.accessories(matching:supporting:)(v12, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
    v26 = v19 & 0xFFFFFFFFFFFFFF8;
    if (v19 >> 62)
    {
LABEL_73:
      v27 = sub_252E378C4();
      if (!v27)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v27 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        goto LABEL_48;
      }
    }

    v68 = v26;
    v28 = 0;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v28, v19);
        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (v28 >= *(v68 + 16))
        {
          goto LABEL_70;
        }

        v30 = *(v19 + 8 * v28 + 32);

        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }
      }

      v31 = [v69 filters];
      if (v31)
      {
        v32 = v31;
        type metadata accessor for HomeFilter();
        v33 = sub_252E37264();
      }

      else
      {
        v33 = MEMORY[0x277D84F90];
      }

      v34 = sub_252D51310(v33);

      v35 = sub_252C75958(v34);

      v36 = sub_252D51460(&unk_2864ADE18);
      v16 = sub_252C75958(v36);

      v37 = sub_2529F9A94(v16, v35);

      v18 = (v37 & 0xC000000000000001) != 0 ? sub_252E378C4() : *(v37 + 16);

      if (v18)
      {
        break;
      }

      ++v28;
      if (v29 == v27)
      {
        goto LABEL_48;
      }
    }

    sub_252929F10(v19, 0);
    v27 = v67;
    if (v67)
    {
      v67[3] = 23;
    }

LABEL_50:
    v16 = v65;
    v18 = v66;
    v19 = v64;
    if (qword_27F53F500 != -1)
    {
      goto LABEL_71;
    }

    goto LABEL_51;
  }

  sub_252929F10(v19, 1);
  v22 = static HomeStore.shared.getter();
  v23 = [v69 filters];
  if (v23)
  {
    v24 = v23;
    type metadata accessor for HomeFilter();
    v25 = sub_252E37264();
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v38 = objc_allocWithZone(v13);
  v39 = sub_252E36F04();
  v40 = [v38 &off_279711370 + 6];

  v18 = v40;
  [v18 setTaskType_];
  [v18 setAttribute_];
  [v18 setValue_];

  v19 = HomeStore.accessories(matching:supporting:)(v25, v18);
  v16 = v41;

  if (v16)
  {
    v42 = v19;
    v43 = 1;
LABEL_49:
    sub_252929F10(v42, v43);
    v27 = v67;
    goto LABEL_50;
  }

  v26 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v19 >> 62)
  {
    v27 = sub_252E378C4();
    if (v27)
    {
      goto LABEL_33;
    }

LABEL_48:
    v42 = v19;
    v43 = 0;
    goto LABEL_49;
  }

  v27 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
    goto LABEL_48;
  }

LABEL_33:
  v68 = v19 & 0xFFFFFFFFFFFFFF8;
  v44 = 0;
  while ((v19 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2530ADF00](v44, v19);
    v45 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_69;
    }

LABEL_40:
    v47 = [v69 filters];
    if (v47)
    {
      v48 = v47;
      type metadata accessor for HomeFilter();
      v49 = sub_252E37264();
    }

    else
    {
      v49 = MEMORY[0x277D84F90];
    }

    v50 = sub_252D51310(v49);

    v51 = sub_252C75958(v50);

    v16 = sub_252D51460(&unk_2864ADE40);
    v26 = sub_252C75958(v16);

    v52 = sub_2529F9A94(v26, v51);

    if ((v52 & 0xC000000000000001) != 0)
    {
      v18 = sub_252E378C4();
    }

    else
    {
      v18 = *(v52 + 16);
    }

    if (v18)
    {
      sub_252929F10(v19, 0);
      v27 = v67;
      if (v67)
      {
        v67[3] = 24;
      }

      goto LABEL_50;
    }

    ++v44;
    if (v45 == v27)
    {
      goto LABEL_48;
    }
  }

  if (v44 >= *(v68 + 16))
  {
    __break(1u);
    goto LABEL_73;
  }

  v46 = *(v19 + 8 * v44 + 32);

  v45 = v44 + 1;
  if (!__OFADD__(v44, 1))
  {
    goto LABEL_40;
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  swift_once();
LABEL_51:
  v53 = __swift_project_value_buffer(v18, qword_27F544DA8);
  (*(v16 + 16))(v19, v53, v18);
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E84EA0);
  if (v27)
  {
    v54 = *(v27 + 24);
  }

  else
  {
    v54 = 0;
  }

  v70 = v54;
  v71 = v27 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540728, qword_252E4B870);
  v55 = sub_252E36F94();
  MEMORY[0x2530AD570](v55);

  sub_252CC3D90(v72, v73, 0xD0000000000000A4, 0x8000000252E84EE0);

  (*(v16 + 8))(v19, v18);
  if (v27)
  {

    v56 = sub_252D6CB58();
  }

  else
  {
    v56 = 0;
  }

  v57 = [v69 filters];
  if (v57)
  {
    v58 = v57;
    type metadata accessor for HomeFilter();
    v59 = sub_252E37264();
  }

  else
  {
    v59 = 0;
  }

  v60 = [v69 time];
  v61 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v61 setUserTask_];
  if (v59)
  {
    type metadata accessor for HomeFilter();
    v62 = sub_252E37254();
  }

  else
  {
    v62 = 0;
  }

  [v61 setFilters_];

  [v61 setTime_];

  return v61;
}

uint64_t sub_252B9E3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x8000000252E85030 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v6 = 27;
LABEL_5:
    result = sub_252D9E9A0(v6);
LABEL_6:
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = result & 1;
    return result;
  }

  if (a1 == 0xD00000000000001BLL && 0x8000000252E85050 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v6 = 2;
    goto LABEL_5;
  }

  if (a1 == 0xD000000000000016 && 0x8000000252E85070 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v6 = 5;
    goto LABEL_5;
  }

  if (a1 == 0xD00000000000001FLL && 0x8000000252E85090 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v6 = 14;
    goto LABEL_5;
  }

  if (a1 == 0xD000000000000015 && 0x8000000252E850B0 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252D9F3E0(1);
    goto LABEL_6;
  }

  if (a1 == 0xD000000000000014 && 0x8000000252E850D0 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252D9F3E0(7);
    goto LABEL_6;
  }

  if (a1 == 0xD000000000000016 && 0x8000000252E850F0 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252D9F3E0(3);
    goto LABEL_6;
  }

  if (a1 == 0xD000000000000012 && 0x8000000252E85110 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252D9F3E0(29);
    goto LABEL_6;
  }

  if (a1 == 0xD000000000000015 && 0x8000000252E85130 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v8 = sub_252D9DBCC();
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
    *(a3 + 24) = result;
    *a3 = v8;
  }

  else
  {

    return sub_252C86824(a1, a2, a3);
  }

  return result;
}

uint64_t sub_252B9E738(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v4 = (a1 + 512);
  v5 = -1;
  while (v3 != ++v5)
  {
    if (!*(*(v4 - 10) + 16) && !*(*(v4 - 9) + 16) && !*(*(v4 - 8) + 16) && !*(*(v4 - 7) + 16) && !*(*(v4 - 6) + 16) && !*(*(v4 - 5) + 16) && !*(*(v4 - 4) + 16) && !*(*(v4 - 3) + 16) && !*(*(v4 - 2) + 16) && !*(*(v4 - 1) + 16))
    {
      v6 = *v4;
      v4 += 63;
      if (!*(v6 + 16))
      {
        continue;
      }
    }

    v7 = a1 + 512;
    v8 = *(a1 + 16);
    while (*(*(v7 - 80) + 16) || *(*(v7 - 72) + 16) || *(*(v7 - 64) + 16) || *(*(v7 - 56) + 16) || *(*(v7 - 48) + 16) || *(*(v7 - 40) + 16) || *(*(v7 - 32) + 16) || *(*(v7 - 24) + 16) || *(*(v7 - 16) + 16) || *(*(v7 - 8) + 16) || *(*v7 + 16))
    {
      v7 += 504;
      if (!--v8)
      {
        goto LABEL_41;
      }
    }

    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = (a1 + v9);
      if (*(*(a1 + v9 + 432) + 16) || *(v11[55] + 16) || *(v11[56] + 16) || *(v11[57] + 16) || *(v11[58] + 16) || *(v11[59] + 16) || *(v11[60] + 16) || *(v11[61] + 16) || *(v11[62] + 16) || *(v11[63] + 16) || *(v11[64] + 16))
      {
        break;
      }

      ++v10;
      v9 += 504;
      if (v3 == v10)
      {

        v10 = v3;
        goto LABEL_47;
      }
    }

    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_59;
    }

    if (v13 != v3)
    {
      v1 = 504;
      goto LABEL_63;
    }

LABEL_45:
    if (v3 < v10)
    {
      __break(1u);
    }

    else if ((v10 & 0x8000000000000000) == 0)
    {
LABEL_47:
      v13 = v10;
      if (!__OFADD__(v3, v10 - v3))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22[0] = v2;
        if (!isUniquelyReferenced_nonNull_native || v10 > *(v2 + 3) >> 1)
        {
          if (v3 <= v10)
          {
            v15 = v10;
          }

          else
          {
            v15 = v3;
          }

          v2 = sub_2529F7FB0(isUniquelyReferenced_nonNull_native, v15, 1, v2);
          v22[0] = v2;
        }

        sub_252B7B280(v10, v3, 0);
        return v2;
      }

LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      while (1)
      {
        memcpy(__dst, &v2[v9 + 536], sizeof(__dst));
        memcpy(&v2[v9 + 536], __src, 0x1F8uLL);
        result = sub_252935408(__dst);
        v3 = *(v2 + 2);
        while (2)
        {
          ++v10;
          while (1)
          {
            ++v13;
            v9 += 504;
            if (v13 == v3)
            {
              goto LABEL_45;
            }

LABEL_63:
            if (v13 >= v3)
            {
              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
              return result;
            }

            v16 = &v2[v9];
            if (!*(*&v2[v9 + 936] + 16) && !*(*(v16 + 118) + 16) && !*(*(v16 + 119) + 16))
            {
              v17 = &v2[v9];
              if (!*(*(v16 + 120) + 16) && !*(*(v17 + 121) + 16) && !*(*(v17 + 122) + 16) && !*(*(v17 + 123) + 16) && !*(*(v17 + 124) + 16) && !*(*(v17 + 125) + 16) && !*(*(v17 + 126) + 16) && !*(*(v17 + 127) + 16))
              {
                break;
              }
            }
          }

          if (v13 == v10)
          {
            continue;
          }

          break;
        }

        if (v10 >= v3)
        {
          goto LABEL_82;
        }

        memcpy(__src, &v2[v10 * v1 + 32], sizeof(__src));
        memcpy(v22, v17 + 536, sizeof(v22));
        sub_2529353AC(__src, __dst);
        sub_2529353AC(v22, __dst);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_252D57AC0(v2);
        }

        v18 = &v2[v10 * v1];
        memcpy(v19, v18 + 32, sizeof(v19));
        memcpy(v18 + 32, v22, 0x1F8uLL);
        result = sub_252935408(v19);
        if (v13 >= *(v2 + 2))
        {
          goto LABEL_83;
        }
      }
    }

    __break(1u);
    goto LABEL_58;
  }

LABEL_41:

  return v2;
}

uint64_t sub_252B9EB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540338, &qword_252E3C340) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v4[12] = *(v7 + 64);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B9ECAC, 0, 0);
}

uint64_t sub_252B9ECAC()
{
  v1 = *(v0 + 56);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v54 = *(v0 + 56);
    v3 = sub_252C285F0();
    v4 = v3;
    v56 = v2;
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
LABEL_25:
      v6 = sub_252E378C4();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    while (v6 != v7)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, v4);
      }

      else
      {
        if (v7 >= *(v5 + 16))
        {
          goto LABEL_24;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v11 = sub_252DA124C(0);

      ++v7;
      if (v11)
      {
        MEMORY[0x2530AD700]();
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v2 = v56;
        v7 = v10;
      }
    }

    v1 = v54;
  }

  type metadata accessor for HomeAutomationPolledEntityResponses();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = v2;
  swift_beginAccess();
  v14 = sub_252BC6360(&unk_27F543C09, 0);
  swift_endAccess();

  if (!v1)
  {
    v17 = 0;
    v16 = 0;
    goto LABEL_28;
  }

  v15 = *(v0 + 56);
  LODWORD(v1) = sub_252C2DF04(4);
  v16 = sub_252C2DF04(28);
  v17 = sub_252C2DF04(27);
  v18 = v15;
  v19 = sub_252C2A5D8();
  if (v19 >> 62)
  {
    v34 = sub_252E378C4();

    if (v34)
    {
      goto LABEL_19;
    }

LABEL_27:

    goto LABEL_28;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v20)
  {
    goto LABEL_27;
  }

LABEL_19:
  v21 = *(v0 + 80);
  v22 = *(v0 + 88);
  v23 = *(v0 + 72);
  sub_252B9F1AC(v18, v23);
  if ((*(v22 + 48))(v23, 1, v21) != 1)
  {
    v26 = *(v0 + 104);
    v25 = *(v0 + 112);
    v27 = *(v0 + 88);
    v28 = *(v0 + 96);
    v29 = *(v0 + 64);
    v55 = *(v0 + 40);
    sub_25294B588(*(v0 + 72), v25);
    v30 = v29[12];
    v31 = v29[13];
    __swift_project_boxed_opaque_existential_1(v29 + 9, v30);
    sub_25295A464(v25, v26);
    v32 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v33 = swift_allocObject();
    sub_25294B588(v26, v33 + v32);
    sub_252943B8C(sub_252BA02BC, v33, v30, v31);
    sub_25293847C(*(v0 + 112), &qword_27F540330, &unk_252E3C7F0);

LABEL_33:

    goto LABEL_35;
  }

  v24 = *(v0 + 72);

  sub_25293847C(v24, &qword_27F540338, &qword_252E3C340);
LABEL_28:
  if ((sub_252B9FEC8(*(v0 + 48)) & 1) == 0)
  {
    goto LABEL_32;
  }

  v35 = *(v14 + 24);
  if (v35 >> 62)
  {
    if (v35 < 0)
    {
      v53 = *(v14 + 24);
    }

    v36 = sub_252E378C4();
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((v36 == 0) | (v1 | v16 | v17) & 1)
  {
LABEL_32:
    v37 = *(v0 + 64);
    v38 = *(v0 + 40);
    v39 = v37[12];
    v40 = v37[13];
    __swift_project_boxed_opaque_existential_1(v37 + 9, v39);
    sub_252944924(v39, v40);
    goto LABEL_33;
  }

  v41 = *(v0 + 64);
  v42 = *(v0 + 40);
  v43 = *(v0 + 48);
  v44 = v41[12];
  v45 = v41[13];
  __swift_project_boxed_opaque_existential_1(v41 + 9, v44);
  v46 = swift_allocObject();
  v46[2] = v41;
  v46[3] = v14;
  v46[4] = v43;

  v47 = v43;
  sub_252943B8C(sub_252BA02B0, v46, v44, v45);

LABEL_35:
  v49 = *(v0 + 104);
  v48 = *(v0 + 112);
  v50 = *(v0 + 72);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_252B9F1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_252E36324();
  v96 = *(v4 - 8);
  v97 = v4;
  v5 = *(v96 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v88 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v92 = v86 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v89 = v86 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v93 = v86 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v90 = v86 - v15;
  MEMORY[0x28223BE20](v14);
  v94 = v86 - v16;
  v17 = sub_252C2A5D8();
  if (v17 >> 62)
  {
    goto LABEL_22;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v18)
  {
LABEL_23:
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v39 = sub_252E36AD4();
    __swift_project_value_buffer(v39, qword_27F544D18);
    sub_252CC3D90(0xD00000000000003ELL, 0x8000000252E85250, 0xD00000000000008FLL, 0x8000000252E6B430);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
    v41 = *(*(v40 - 8) + 56);

    return v41(a2, 1, 1, v40);
  }

  while (1)
  {
    v86[0] = a2;
    v86[1] = a1;
    v19 = sub_252C2E2D8();
    v20 = v19;
    if (v19 >> 62)
    {
      break;
    }

    a2 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a2)
    {
      goto LABEL_29;
    }

LABEL_5:
    v21 = 0;
    v22 = v20 & 0xC000000000000001;
    a1 = v20 & 0xFFFFFFFFFFFFFF8;
    v91 = (v96 + 32);
    v95 = MEMORY[0x277D84F90];
    v87 = v20 & 0xFFFFFFFFFFFFFF8;
    v23 = v90;
    while (1)
    {
      if (v22)
      {
        v24 = MEMORY[0x2530ADF00](v21, v20);
      }

      else
      {
        if (v21 >= *(a1 + 16))
        {
          goto LABEL_21;
        }

        v24 = *(v20 + 8 * v21 + 32);
      }

      v25 = v24;
      v26 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v27 = [v24 entity];
      if (v27 && (v28 = v27, v29 = [v27 homeEntityName], v28, v29))
      {
        v30 = v20;
        v31 = v22;
        v32 = a2;
        sub_252E36F34();

        sub_252E37024();

        v33 = *v91;
        (*v91)(v94, v23, v97);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_2529F7F74(0, *(v95 + 2) + 1, 1, v95);
        }

        v35 = *(v95 + 2);
        v34 = *(v95 + 3);
        if (v35 >= v34 >> 1)
        {
          v95 = sub_2529F7F74(v34 > 1, v35 + 1, 1, v95);
        }

        v37 = v95;
        v36 = v96;
        *(v95 + 2) = v35 + 1;
        v33(&v37[((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v35], v94, v97);
        a2 = v32;
        v22 = v31;
        v20 = v30;
        a1 = v87;
      }

      else
      {
      }

      ++v21;
      if (v26 == a2)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v38 = sub_252E378C4();

    if (!v38)
    {
      goto LABEL_23;
    }
  }

  a2 = sub_252E378C4();
  if (a2)
  {
    goto LABEL_5;
  }

LABEL_29:
  v95 = MEMORY[0x277D84F90];
LABEL_30:

  v43 = sub_252C2E2FC();
  v44 = v43;
  if (v43 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v46 = 0;
    v47 = v44 & 0xFFFFFFFFFFFFFF8;
    v91 = (v96 + 32);
    v94 = MEMORY[0x277D84F90];
    v90 = (v44 & 0xFFFFFFFFFFFFFF8);
    v48 = v89;
    while (1)
    {
      if ((v44 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x2530ADF00](v46, v44);
      }

      else
      {
        if (v46 >= *(v47 + 16))
        {
          goto LABEL_48;
        }

        v49 = *(v44 + 8 * v46 + 32);
      }

      v50 = v49;
      v51 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      v52 = [v49 entity];
      if (v52 && (v53 = v52, v54 = [v52 homeEntityName], v53, v54))
      {
        sub_252E36F34();

        sub_252E37024();

        v55 = *v91;
        (*v91)(v93, v48, v97);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_2529F7F74(0, *(v94 + 2) + 1, 1, v94);
        }

        v57 = *(v94 + 2);
        v56 = *(v94 + 3);
        if (v57 >= v56 >> 1)
        {
          v94 = sub_2529F7F74(v56 > 1, v57 + 1, 1, v94);
        }

        v58 = v93;
        v59 = v94;
        *(v94 + 2) = v57 + 1;
        v55(&v59[((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v57], v58, v97);
        v47 = v90;
      }

      else
      {
      }

      ++v46;
      if (v51 == i)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  v94 = MEMORY[0x277D84F90];
LABEL_51:

  v60 = sub_252C2E688();
  v61 = v60;
  if (v60 >> 62)
  {
    goto LABEL_70;
  }

  for (j = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_252E378C4())
  {
    v63 = 0;
    v64 = v61 & 0xFFFFFFFFFFFFFF8;
    v91 = (v96 + 32);
    v93 = MEMORY[0x277D84F90];
    v90 = (v61 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v61 & 0xC000000000000001) != 0)
      {
        v65 = MEMORY[0x2530ADF00](v63, v61);
      }

      else
      {
        if (v63 >= *(v64 + 16))
        {
          goto LABEL_69;
        }

        v65 = *(v61 + 8 * v63 + 32);
      }

      v66 = v65;
      v67 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      v68 = [v65 entity];
      if (v68 && (v69 = v68, v70 = [v68 homeEntityName], v69, v70))
      {
        v71 = j;
        sub_252E36F34();

        v72 = v88;
        sub_252E37024();

        v73 = *v91;
        (*v91)(v92, v72, v97);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_2529F7F74(0, *(v93 + 2) + 1, 1, v93);
        }

        v75 = *(v93 + 2);
        v74 = *(v93 + 3);
        j = v71;
        if (v75 >= v74 >> 1)
        {
          v93 = sub_2529F7F74(v74 > 1, v75 + 1, 1, v93);
        }

        v76 = v92;
        v77 = v93;
        *(v93 + 2) = v75 + 1;
        v64 = v90;
        v73(&v77[((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v75], v76, v97);
      }

      else
      {
      }

      ++v63;
      if (v67 == j)
      {
        goto LABEL_72;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    ;
  }

  v93 = MEMORY[0x277D84F90];
LABEL_72:

  v78 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v79 = *(v78 + 22);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_252E3C280;
  *(v80 + 32) = 0xD000000000000011;
  *(v80 + 40) = 0x8000000252E851F0;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v80 + 48) = v95;
  *(v80 + 72) = v81;
  *(v80 + 80) = 0xD000000000000016;
  v82 = v94;
  *(v80 + 88) = 0x8000000252E85210;
  *(v80 + 96) = v82;
  *(v80 + 120) = v81;
  *(v80 + 128) = 0xD000000000000015;
  *(v80 + 168) = v81;
  v83 = v93;
  *(v80 + 136) = 0x8000000252E85230;
  *(v80 + 144) = v83;
  v84 = v86[0];
  sub_252E362B4();

  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  return (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
}

uint64_t sub_252B9FBE0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 16);
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  *(swift_allocObject() + 16) = MEMORY[0x277D84F90];
  v6 = *(a2 + 24);
  type metadata accessor for HomeAutomationEntityResponses();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v7 + 24) = v6;

  v8 = sub_252B680FC();
  swift_beginAccess();
  v9 = *(v8 + 16);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 504 * v10 - 472);
    memcpy(v15, v11, sizeof(v15));
    memmove(__dst, v11, 0x1F8uLL);
    GEOLocationCoordinate2DMake(__dst);
    sub_2529353AC(v15, __src);

    memcpy(__src, __dst, sizeof(__src));
  }

  else
  {

    sub_25293DEE0(__src);
  }

  memcpy(__dst, __src, sizeof(__dst));
  v12 = a3;
  v13 = sub_252953488(a3, __dst, 0);

  sub_252BFE564(v7, v13);
}

uint64_t sub_252B9FDB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252B9EB90(a1, a2, a3);
}

void *sub_252B9FE64@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for WatchPostExecutionResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252B9FEC8(void *a1)
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
  v10 = v9;

  if (v10)
  {
    v11 = v8;
    v12 = 1;
LABEL_36:
    sub_252929F10(v11, v12);
    return 0;
  }

  if (!(v8 >> 62))
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_9;
    }

LABEL_35:
    v11 = v8;
    v12 = 0;
    goto LABEL_36;
  }

LABEL_34:
  v13 = sub_252E378C4();
  if (!v13)
  {
    goto LABEL_35;
  }

LABEL_9:
  v14 = 0;
  v32 = v8 & 0xC000000000000001;
  while (1)
  {
    if (v32)
    {
      v15 = MEMORY[0x2530ADF00](v14, v8);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v14 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v15 = *(v8 + 32 + 8 * v14);

      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    if (qword_27F53F410 != -1)
    {
      swift_once();
    }

    v17 = qword_27F575A48;
    v18 = [*(v15 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
    v19 = sub_252E36F34();
    v21 = v20;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v22 = off_27F546230;
    if (*(off_27F546230 + 2) && (v23 = sub_252A44A10(v19, v21), (v24 & 1) != 0))
    {
      v25 = *(v22[7] + 8 * v23);
    }

    else
    {
      v25 = 0;
    }

    if (*(v17 + 16))
    {
      v26 = *(v17 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v25);
      v27 = sub_252E37F14();
      v28 = -1 << *(v17 + 32);
      v29 = v27 & ~v28;
      if ((*(v17 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        break;
      }
    }

LABEL_10:

    if (v14 == v13)
    {
      goto LABEL_35;
    }
  }

  v30 = ~v28;
  while (*(*(v17 + 48) + 8 * v29) != v25)
  {
    v29 = (v29 + 1) & v30;
    if (((*(v17 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  sub_252929F10(v8, 0);
  return 1;
}

uint64_t sub_252BA01F4()
{
  v0 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v0 + 16), v4);

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  if ((sub_252E338C4() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_6:
    v2 = 0;
    return v2 & 1;
  }

  v1 = *(sub_252B680FC() + 50);

  __swift_destroy_boxed_opaque_existential_1(v4);
  if ((v1 & 1) == 0 || !sub_252C4B5D4())
  {
    goto LABEL_6;
  }

  v2 = sub_252C4E58C(&unk_2864A9AA8) ^ 1;
  return v2 & 1;
}

uint64_t sub_252BA02BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25295A464(v4, a1);
}

BOOL sub_252BA034C(__int128 *a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a1 + 18);
  v5 = *(a1 + 19);
  v7 = *(a1 + 20);
  v6 = *(a1 + 21);
  v8 = *(a1 + 28);
  v38 = a1[4];
  v40 = a1[5];
  v9 = *(a1 + 13);
  v30 = *a1;
  v32 = a1[1];
  v34 = a1[2];
  v36 = a1[3];
  v42 = *(a1 + 12);
  v44 = a1[7];
  v46 = a1[11];
  v48 = a1[12];
  v50 = a1[13];
  memcpy(v52, a1 + 232, sizeof(v52));
  v10 = sub_252A0E3E4();
  v11 = *(v5 + 16);
  if (v10)
  {
    if (v11 >= 2)
    {
      v29 = 1;
LABEL_12:
      v39 = a1[4];
      v41 = a1[5];
      v31 = *a1;
      v33 = a1[1];
      v35 = a1[2];
      v37 = a1[3];
      v43 = *(a1 + 12);
      v45 = a1[7];
      v49 = a1[12];
      v51 = a1[13];
      v47 = a1[11];
      memcpy(v52, a1 + 232, sizeof(v52));
      v28 = sub_252A14800();
      goto LABEL_14;
    }

    v12 = *(v6 + 16) > 1uLL || *(v9 + 16) > 1uLL || *(v8 + 16) > 1uLL;
    v29 = v12;
  }

  else
  {
    v29 = 0;
    if (v11 > 1)
    {
      goto LABEL_12;
    }
  }

  if (*(v6 + 16) >= 2uLL)
  {
    goto LABEL_12;
  }

  v28 = 0;
LABEL_14:
  v13 = *(v3 + 16) > 1uLL || *(v4 + 16) > 1uLL;
  v27 = v13;
  v14 = *(v2 + 16);
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_27F544E08);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002ELL, 0x8000000252E85290);
  if (v29)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v29)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v16, v17);

  MEMORY[0x2530AD570](0xD000000000000030, 0x8000000252E852C0);
  if (v28)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (v28)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v18, v19);

  MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E85300);
  if (v27)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (v27)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v20, v21);

  MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E85340);
  v22 = v14 > 1;
  v23 = v14 > 1;
  if (v22)
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (v22)
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v24, v25);

  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000009CLL, 0x8000000252E85370);

  return ((v29 | v28 | v27 | v23) & 1) == 0;
}

uint64_t sub_252BA06E4()
{
  v1 = *(v0 + 24);
  v24 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
LABEL_3:
    v3 = 0;
    v22 = v1 & 0xFFFFFFFFFFFFFF8;
    v23 = v1 & 0xC000000000000001;
    v19 = v1;
    v21 = (v1 + 32);
    v1 = &OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
    v20 = v2;
    do
    {
      if (v23)
      {
        v5 = MEMORY[0x2530ADF00](v3, v19);
        v6 = __OFADD__(v3++, 1);
        if (v6)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v3 >= *(v22 + 16))
        {
          goto LABEL_34;
        }

        v4 = v21[v3];

        v6 = __OFADD__(v3++, 1);
        if (v6)
        {
          goto LABEL_33;
        }
      }

      v7 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      if (v7 >> 62)
      {
        v8 = sub_252E378C4();
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v8)
      {
        v9 = 0;
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x2530ADF00](v9, v7);
            v11 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_32;
            }

            v10 = *(v7 + 8 * v9 + 32);

            v11 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              v2 = sub_252E378C4();
              if (!v2)
              {
                goto LABEL_36;
              }

              goto LABEL_3;
            }
          }

          v12 = sub_252A481A4(v10 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
          if ((v13 & 1) != 0 || v12 != 27)
          {
          }

          else
          {
            v14 = *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);

            if (v14)
            {
              v15 = *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);

              if (v15)
              {

                sub_252E37A94();
                v16 = *(v24 + 16);
                sub_252E37AC4();
                sub_252E37AD4();
                sub_252E37AA4();
                goto LABEL_5;
              }
            }
          }

          ++v9;
        }

        while (v11 != v8);
      }

LABEL_5:
      ;
    }

    while (v3 != v20);
    v17 = v24;
  }

  else
  {
LABEL_36:
    v17 = MEMORY[0x277D84F90];
  }

  type metadata accessor for HomeAutomationAirPurifierResponses();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v17;
  return result;
}

uint64_t sub_252BA0974()
{
  v1 = sub_25299C0F0(47, 0x4556495443414E49, 0xE800000000000000);
  v2 = v1;
  if (v1 >> 62)
  {
    if (sub_252E378C4())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v4 = *(v0 + 24);
  v25 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_39;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
LABEL_7:
    v6 = 0;
    v23 = v4 & 0xFFFFFFFFFFFFFF8;
    v24 = v4 & 0xC000000000000001;
    v20 = v4;
    v22 = (v4 + 32);
    v4 = &OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
    v21 = v5;
    do
    {
      if (v24)
      {
        v8 = MEMORY[0x2530ADF00](v6, v20);
        v9 = __OFADD__(v6++, 1);
        if (v9)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v6 >= *(v23 + 16))
        {
          goto LABEL_38;
        }

        v7 = v22[v6];

        v9 = __OFADD__(v6++, 1);
        if (v9)
        {
          goto LABEL_37;
        }
      }

      v10 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      if (v10 >> 62)
      {
        v11 = sub_252E378C4();
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v11)
      {
        v12 = 0;
        do
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x2530ADF00](v12, v10);
            v14 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_36;
            }

            v13 = *(v10 + 8 * v12 + 32);

            v14 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              v5 = sub_252E378C4();
              if (!v5)
              {
                goto LABEL_40;
              }

              goto LABEL_7;
            }
          }

          v15 = sub_252A481A4(v13 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute);
          if ((v16 & 1) != 0 || v15 != 27)
          {
          }

          else
          {
            v17 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);

            if (v17)
            {
              v18 = *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);

              if ((v18 & 1) == 0)
              {

                sub_252E37A94();
                v19 = *(v25 + 16);
                sub_252E37AC4();
                sub_252E37AD4();
                sub_252E37AA4();
                goto LABEL_9;
              }
            }
          }

          ++v12;
        }

        while (v14 != v11);
      }

LABEL_9:
      ;
    }

    while (v6 != v21);
    v2 = v25;
  }

  else
  {
LABEL_40:
    v2 = MEMORY[0x277D84F90];
  }

LABEL_3:
  type metadata accessor for HomeAutomationAirPurifierResponses();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v2;
  return result;
}

uint64_t sub_252BA0C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25294B954;

  return sub_252BA0D20(a1, a2, a3, a4, a5);
}

uint64_t sub_252BA0D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_25294B954;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_252BA0E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25294B954;

  return sub_252BA0D20(a1, a2, a3, a4, a5);
}

uint64_t sub_252BA0F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25294B954;

  return sub_252BA0D20(a1, a2, a3, a4, a5);
}

uint64_t sub_252BA0FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25294B954;

  return sub_252BA0D20(a1, a2, a3, a4, a5);
}

uint64_t sub_252BA10BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25294B954;

  return sub_252BA0D20(a1, a2, a3, a4, a5);
}

uint64_t sub_252BA1184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25294B954;

  return sub_252BA0D20(a1, a2, a3, a4, a5);
}

uint64_t sub_252BA124C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25294B954;

  return sub_252BA0D20(a1, a2, a3, a4, a5);
}

uint64_t sub_252BA1314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return MEMORY[0x2822009F8](sub_252BA133C, 0, 0);
}

uint64_t sub_252BA133C()
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v1 + 16), (v0 + 2));

  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  if (sub_252E338F4())
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v64 = v0[11];
    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544D18);
    sub_252CC3D90(0xD000000000000026, 0x8000000252E85560, 0xD00000000000008FLL, 0x8000000252E6B430);
    v4 = *(v64 + 32);
    v56 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_252BA2000;
    v7 = v0[11];
    v8 = v0[12];
    v9 = v0[9];
    v10 = v0[10];
    v11 = v0[7];
    v12 = v0[8];
    v13 = v56;
  }

  else
  {
    v14 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    if (sub_252E33884())
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v65 = v0[11];
      v15 = sub_252E36AD4();
      __swift_project_value_buffer(v15, qword_27F544D18);
      sub_252CC3D90(0xD000000000000022, 0x8000000252E85530, 0xD00000000000008FLL, 0x8000000252E6B430);
      v16 = *(v65 + 40);
      v57 = (v16 + *v16);
      v17 = v16[1];
      v18 = swift_task_alloc();
      v0[15] = v18;
      *v18 = v0;
      v18[1] = sub_252BA2114;
      v7 = v0[11];
      v19 = v0[12];
      v9 = v0[9];
      v10 = v0[10];
      v11 = v0[7];
      v12 = v0[8];
      v13 = v57;
    }

    else
    {
      v20 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      if (sub_252E338D4())
      {
        if (qword_27F53F4D0 != -1)
        {
          swift_once();
        }

        v66 = v0[11];
        v21 = sub_252E36AD4();
        __swift_project_value_buffer(v21, qword_27F544D18);
        sub_252CC3D90(0xD000000000000027, 0x8000000252E85500, 0xD00000000000008FLL, 0x8000000252E6B430);
        v22 = *(v66 + 48);
        v58 = (v22 + *v22);
        v23 = v22[1];
        v24 = swift_task_alloc();
        v0[17] = v24;
        *v24 = v0;
        v24[1] = sub_252BA2228;
        v7 = v0[11];
        v25 = v0[12];
        v9 = v0[9];
        v10 = v0[10];
        v11 = v0[7];
        v12 = v0[8];
        v13 = v58;
      }

      else
      {
        v26 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
        if (sub_252E338C4())
        {
          if (qword_27F53F4D0 != -1)
          {
            swift_once();
          }

          v67 = v0[11];
          v27 = sub_252E36AD4();
          __swift_project_value_buffer(v27, qword_27F544D18);
          sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E854D0, 0xD00000000000008FLL, 0x8000000252E6B430);
          v28 = *(v67 + 56);
          v59 = (v28 + *v28);
          v29 = v28[1];
          v30 = swift_task_alloc();
          v0[19] = v30;
          *v30 = v0;
          v30[1] = sub_252BA233C;
          v7 = v0[11];
          v31 = v0[12];
          v9 = v0[9];
          v10 = v0[10];
          v11 = v0[7];
          v12 = v0[8];
          v13 = v59;
        }

        else
        {
          v32 = v0[6];
          __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
          if (sub_252E338B4())
          {
            if (qword_27F53F4D0 != -1)
            {
              swift_once();
            }

            v68 = v0[11];
            v33 = sub_252E36AD4();
            __swift_project_value_buffer(v33, qword_27F544D18);
            sub_252CC3D90(0xD000000000000025, 0x8000000252E854A0, 0xD00000000000008FLL, 0x8000000252E6B430);
            v34 = *(v68 + 64);
            v60 = (v34 + *v34);
            v35 = v34[1];
            v36 = swift_task_alloc();
            v0[21] = v36;
            *v36 = v0;
            v36[1] = sub_252BA2450;
            v7 = v0[11];
            v37 = v0[12];
            v9 = v0[9];
            v10 = v0[10];
            v11 = v0[7];
            v12 = v0[8];
            v13 = v60;
          }

          else
          {
            v38 = v0[6];
            __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
            if (sub_252E33894())
            {
              if (qword_27F53F4D0 != -1)
              {
                swift_once();
              }

              v69 = v0[11];
              v39 = sub_252E36AD4();
              __swift_project_value_buffer(v39, qword_27F544D18);
              sub_252CC3D90(0xD000000000000023, 0x8000000252E85470, 0xD00000000000008FLL, 0x8000000252E6B430);
              v40 = *(v69 + 72);
              v61 = (v40 + *v40);
              v41 = v40[1];
              v42 = swift_task_alloc();
              v0[23] = v42;
              *v42 = v0;
              v42[1] = sub_252BA25C8;
              v7 = v0[11];
              v43 = v0[12];
              v9 = v0[9];
              v10 = v0[10];
              v11 = v0[7];
              v12 = v0[8];
              v13 = v61;
            }

            else
            {
              v44 = v0[6];
              __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
              if (sub_252E338E4())
              {
                if (qword_27F53F4D0 != -1)
                {
                  swift_once();
                }

                v70 = v0[11];
                v45 = sub_252E36AD4();
                __swift_project_value_buffer(v45, qword_27F544D18);
                sub_252CC3D90(0xD000000000000026, 0x8000000252E85440, 0xD00000000000008FLL, 0x8000000252E6B430);
                v46 = *(v70 + 80);
                v62 = (v46 + *v46);
                v47 = v46[1];
                v48 = swift_task_alloc();
                v0[25] = v48;
                *v48 = v0;
                v48[1] = sub_252BA26DC;
                v7 = v0[11];
                v49 = v0[12];
                v9 = v0[9];
                v10 = v0[10];
                v11 = v0[7];
                v12 = v0[8];
                v13 = v62;
              }

              else
              {
                if (qword_27F53F4D0 != -1)
                {
                  swift_once();
                }

                v71 = v0[11];
                v50 = sub_252E36AD4();
                __swift_project_value_buffer(v50, qword_27F544D18);
                sub_252CC3D90(0xD000000000000026, 0x8000000252E85410, 0xD00000000000008FLL, 0x8000000252E6B430);
                v51 = *(v71 + 24);
                v63 = (v51 + *v51);
                v52 = v51[1];
                v53 = swift_task_alloc();
                v0[27] = v53;
                *v53 = v0;
                v53[1] = sub_252BA27F0;
                v7 = v0[11];
                v54 = v0[12];
                v9 = v0[9];
                v10 = v0[10];
                v11 = v0[7];
                v12 = v0[8];
                v13 = v63;
              }
            }
          }
        }
      }
    }
  }

  return v13(v11, v12, v9, v10, v7);
}

uint64_t sub_252BA2000()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_252BA2904;
  }

  else
  {
    v3 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BA2114()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_252BA2968;
  }

  else
  {
    v3 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BA2228()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_252BA29CC;
  }

  else
  {
    v3 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BA233C()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_252BA2A30;
  }

  else
  {
    v3 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BA2450()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_252BA2A94;
  }

  else
  {
    v3 = sub_252BA2564;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BA2564()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252BA25C8()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_252BA2AF8;
  }

  else
  {
    v3 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BA26DC()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_252BA2B5C;
  }

  else
  {
    v3 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BA27F0()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_252BA2BC0;
  }

  else
  {
    v3 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BA2904()
{
  v1 = v0[14];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_252BA2968()
{
  v1 = v0[16];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_252BA29CC()
{
  v1 = v0[18];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_252BA2A30()
{
  v1 = v0[20];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_252BA2A94()
{
  v1 = v0[22];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_252BA2AF8()
{
  v1 = v0[24];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_252BA2B5C()
{
  v1 = v0[26];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_252BA2BC0()
{
  v1 = v0[28];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_252BA2C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25293B808;

  return sub_252BA0D20(a1, a2, a3, a4, a5);
}

uint64_t sub_252BA2D0C()
{
  v3 = *(v0 + 8);
  v1 = **(v0 + 16);

  return v3(v1);
}

uint64_t sub_252BA2D7C(uint64_t a1)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  sub_252E37024();
  v9 = sub_252E36324();
  v10 = *(*(v9 - 8) + 56);
  v11 = 1;
  v10(v8, 0, 1, v9);
  v28 = type metadata accessor for HomeAutomationSceneEnabledSecureSceneParameters(0);
  sub_252956C98(v8, a1 + *(v28 + 24));
  sub_252E37024();
  v10(v8, 0, 1, v9);
  sub_252956C98(v8, a1);
  v12 = sub_25294833C(1u, 0, 0);
  if (v12)
  {
    v13 = v12;
    v14 = [v12 dictionary];
    if (v14)
    {
      v15 = v14;
      v16 = objc_opt_self();
      v29[0] = 0;
      v17 = [v16 dataWithPropertyList:v15 format:200 options:0 error:v29];
      v18 = v29[0];
      if (v17)
      {
        v19 = sub_252E32D34();
        v27 = v20;

        v21 = v27;
        sub_252E32D24();
        sub_252E362F4();

        sub_25296464C(v19, v21);
        v11 = 0;
      }

      else
      {
        v22 = v18;
        v23 = sub_252E32C54();

        swift_willThrow();
        v11 = 1;
      }
    }

    else
    {
    }
  }

  v10(v6, v11, 1, v9);
  sub_252956C98(v6, a1 + *(v28 + 32));
  sub_252E37024();
  v10(v8, 0, 1, v9);
  result = sub_252956C98(v8, a1);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252BA30C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v40[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v37 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  if (a3)
  {
    sub_252E37024();
    v16 = sub_252E36324();
    (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  }

  else
  {
    v16 = sub_252E36324();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  }

  v17 = type metadata accessor for HomeAutomationSceneEnabledUserDefinedParameters(0);
  v18 = v39;
  sub_252956C98(v15, v39 + *(v17 + 24));
  sub_252E37024();

  sub_252E36324();
  v19 = *(*(v16 - 8) + 56);
  v20 = 1;
  v19(v13, 0, 1, v16);
  v37 = v17;
  sub_252956C98(v13, v18 + *(v17 + 28));
  sub_252E37024();
  v19(v10, 0, 1, v16);
  sub_252956C98(v10, v18);
  v21 = sub_25294833C(1u, 0, 0);
  if (v21)
  {
    v22 = v21;
    v23 = [v21 dictionary];
    if (v23)
    {
      v24 = v23;
      v25 = objc_opt_self();
      v40[0] = 0;
      v26 = [v25 dataWithPropertyList:v24 format:200 options:0 error:v40];
      v27 = v40[0];
      if (v26)
      {
        v28 = sub_252E32D34();
        v30 = v29;

        sub_252E32D24();
        v31 = v38;
        sub_252E362F4();

        sub_25296464C(v28, v30);
        v20 = 0;
      }

      else
      {
        v32 = v27;
        v33 = sub_252E32C54();

        swift_willThrow();
        v20 = 1;
        v31 = v38;
      }
    }

    else
    {

      v31 = v38;
    }
  }

  else
  {
    v31 = v38;
  }

  v19(v31, v20, 1, v16);
  v34 = v39;
  sub_252956C98(v31, v39 + *(v37 + 32));
  sub_252E37024();
  v19(v10, 0, 1, v16);
  result = sub_252956C98(v10, v34);
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252BA3510(uint64_t a1, uint64_t a2)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v12 = *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
  sub_252E37024();
  v13 = sub_252E36324();
  v14 = *(*(v13 - 8) + 56);
  v15 = 1;
  v14(v10, 0, 1, v13);
  v32 = type metadata accessor for HomeAutomationSceneEnabledSecureSceneParameters(0);
  sub_252956C98(v10, a1 + *(v32 + 24));
  sub_252E37024();
  v14(v10, 0, 1, v13);
  sub_252956C98(v10, a1);
  v16 = sub_25294833C(1u, 0, 0);
  if (v16)
  {
    v17 = v16;
    v18 = [v16 dictionary];
    if (v18)
    {
      v19 = v18;
      v20 = objc_opt_self();
      v33[0] = 0;
      v21 = [v20 dataWithPropertyList:v19 format:200 options:0 error:v33];
      v22 = v33[0];
      if (v21)
      {
        v23 = sub_252E32D34();
        v31 = v24;

        v25 = v31;
        sub_252E32D24();
        sub_252E362F4();

        sub_25296464C(v23, v25);
        v15 = 0;
      }

      else
      {
        v26 = v22;
        v27 = sub_252E32C54();

        swift_willThrow();
        v15 = 1;
      }
    }

    else
    {
    }
  }

  v14(v8, v15, 1, v13);
  sub_252956C98(v8, a1 + *(v32 + 32));
  sub_252E37024();
  v14(v10, 0, 1, v13);
  result = sub_252956C98(v10, a1);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252BA385C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v37[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v36 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  sub_252E37024();
  v15 = sub_252E36324();
  v16 = *(*(v15 - 8) + 56);
  v17 = 1;
  v16(v14, 0, 1, v15);
  v18 = a4(0);
  sub_252956C98(v14, a1 + v18[6]);
  sub_252E37024();

  v16(v12, 0, 1, v15);
  sub_252956C98(v12, a1 + v18[7]);
  sub_252E37024();
  v16(v14, 0, 1, v15);
  sub_252956C98(v14, a1);
  v19 = sub_25294833C(1u, 0, 0);
  if (v19)
  {
    v20 = v19;
    v21 = [v19 dictionary];
    if (v21)
    {
      v22 = v21;
      v23 = objc_opt_self();
      v37[0] = 0;
      v24 = [v23 dataWithPropertyList:v22 format:200 options:0 error:v37];
      v25 = v37[0];
      if (v24)
      {
        v26 = sub_252E32D34();
        v35 = v27;

        v28 = v35;
        sub_252E32D24();
        sub_252E362F4();

        sub_25296464C(v26, v28);
        v17 = 0;
      }

      else
      {
        v29 = v25;
        v30 = sub_252E32C54();

        swift_willThrow();
        v17 = 1;
      }
    }

    else
    {
    }
  }

  v31 = v36;
  v16(v36, v17, 1, v15);
  sub_252956C98(v31, a1 + v18[8]);
  sub_252E37024();
  v16(v14, 0, 1, v15);
  result = sub_252956C98(v14, a1);
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252BA3C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D85DE8];

  return sub_2529213F8(a1, a2, a3);
}

uint64_t sub_252BA3C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D85DE8];

  return sub_252921480(a1, a2, a3);
}

uint64_t sub_252BA3CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D85DE8];

  return sub_252921504(a1, a2, a3);
}

uint64_t sub_252BA3D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D85DE8];

  return sub_252921588(a1, a2, a3);
}

uint64_t sub_252BA3D88()
{
  v1 = *v0;
  sub_252E37EC4();
  MEMORY[0x2530AE390](v1 + 1);
  return sub_252E37F14();
}

uint64_t sub_252BA3E00()
{
  v1 = *v0;
  sub_252E37EC4();
  MEMORY[0x2530AE390](v1 + 1);
  return sub_252E37F14();
}

uint64_t sub_252BA3E44@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252BA3ED8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_252BA3E84()
{
  result = qword_27F543918;
  if (!qword_27F543918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543918);
  }

  return result;
}

uint64_t sub_252BA3ED8(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

uint64_t sub_252BA3EFC()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA3FF0()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA4114()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA4204()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA42F4()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA43C8()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA44B0()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA45DC()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA46F0()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA47DC()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA48C0()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA49B0()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA4B28()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA4BF8()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA4D0C()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA4DF8()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA4F20()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BA5048()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t AutomationSnippetModel.stringId.getter()
{
  v1 = v0;
  sub_252E379F4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  MEMORY[0x2530AD570]();

  sub_252E379F4();

  v2 = type metadata accessor for AutomationSnippetModel();
  v3 = v2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543920, &unk_252E4FDF8);
  sub_252E330E4();
  v4 = *(v12 + 16);

  v13 = v4;
  v5 = sub_252E37D94();
  MEMORY[0x2530AD570](v5);

  MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E85590);

  sub_252E379F4();

  v6 = v1 + v2[7];
  sub_252E330E4();
  MEMORY[0x2530AD570](v13);

  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E855B0);

  sub_252E379F4();

  v7 = v1 + v2[8];
  sub_252E330E4();
  MEMORY[0x2530AD570](v13);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E855D0);

  sub_252E379F4();

  v8 = v2[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  sub_252E330E4();
  if (v13)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v13)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v9, v10);

  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E855F0);

  return 0x7265676769727423;
}

uint64_t AutomationSnippetModel.triggerValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  return v1;
}

uint64_t (*AutomationSnippetModel.triggerValue.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t AutomationSnippetModel.targetedEntitiesIcons.getter()
{
  v0 = *(type metadata accessor for AutomationSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543920, &unk_252E4FDF8);
  sub_252E330E4();
  return v2;
}

uint64_t type metadata accessor for AutomationSnippetModel()
{
  result = qword_27F543970;
  if (!qword_27F543970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252BA5620@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for AutomationSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543920, &unk_252E4FDF8);
  result = sub_252E330E4();
  *a1 = v4;
  return result;
}

uint64_t sub_252BA5688(uint64_t *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for AutomationSnippetModel() + 20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543920, &unk_252E4FDF8);
  return sub_252E330F4();
}

uint64_t AutomationSnippetModel.targetedEntitiesIcons.setter()
{
  v0 = *(type metadata accessor for AutomationSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543920, &unk_252E4FDF8);
  return sub_252E330F4();
}

uint64_t (*AutomationSnippetModel.targetedEntitiesIcons.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for AutomationSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543920, &unk_252E4FDF8);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t AutomationSnippetModel.triggerIcon.getter()
{
  v0 = *(type metadata accessor for AutomationSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543928, &qword_252E4FE08);
  return sub_252E330E4();
}

uint64_t sub_252BA5840()
{
  v0 = *(type metadata accessor for AutomationSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543928, &qword_252E4FE08);
  return sub_252E330E4();
}

uint64_t sub_252BA5898(uint64_t a1)
{
  v2 = type metadata accessor for IconConfiguration();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_252BA6E60(a1, &v10 - v7, type metadata accessor for IconConfiguration);
  sub_252BA6E60(v8, v6, type metadata accessor for IconConfiguration);
  LODWORD(a1) = *(type metadata accessor for AutomationSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543928, &qword_252E4FE08);
  sub_252E330F4();
  return sub_252BA6EC8(v8, type metadata accessor for IconConfiguration);
}

uint64_t AutomationSnippetModel.triggerIcon.setter(uint64_t a1)
{
  v2 = type metadata accessor for IconConfiguration();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_252BA6E60(a1, &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IconConfiguration);
  v5 = *(type metadata accessor for AutomationSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543928, &qword_252E4FE08);
  sub_252E330F4();
  return sub_252BA6EC8(a1, type metadata accessor for IconConfiguration);
}

uint64_t (*AutomationSnippetModel.triggerIcon.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for AutomationSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543928, &qword_252E4FE08);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t AutomationSnippetModel.automationSubtext.getter()
{
  v0 = *(type metadata accessor for AutomationSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  return v2;
}

uint64_t sub_252BA5B6C@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for AutomationSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  result = sub_252E330E4();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_252BA5BD4(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for AutomationSnippetModel() + 28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  return sub_252E330F4();
}

uint64_t AutomationSnippetModel.automationSubtext.setter()
{
  v0 = *(type metadata accessor for AutomationSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  return sub_252E330F4();
}

uint64_t (*AutomationSnippetModel.automationSubtext.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for AutomationSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t AutomationSnippetModel.scheduledText.getter()
{
  v0 = *(type metadata accessor for AutomationSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  return v2;
}

uint64_t sub_252BA5D8C@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for AutomationSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  result = sub_252E330E4();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_252BA5DF4(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for AutomationSnippetModel() + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  return sub_252E330F4();
}

uint64_t AutomationSnippetModel.scheduledText.setter()
{
  v0 = *(type metadata accessor for AutomationSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  return sub_252E330F4();
}

uint64_t (*AutomationSnippetModel.scheduledText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for AutomationSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t AutomationSnippetModel.isSceneAutomation.getter()
{
  v0 = *(type metadata accessor for AutomationSnippetModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  sub_252E330E4();
  return v2;
}

uint64_t sub_252BA5FAC@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for AutomationSnippetModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  result = sub_252E330E4();
  *a1 = v4;
  return result;
}

uint64_t sub_252BA6014(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for AutomationSnippetModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  return sub_252E330F4();
}

uint64_t AutomationSnippetModel.isSceneAutomation.setter()
{
  v0 = *(type metadata accessor for AutomationSnippetModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  return sub_252E330F4();
}

uint64_t (*AutomationSnippetModel.isSceneAutomation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for AutomationSnippetModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  *(v3 + 32) = sub_252E330D4();
  return sub_25292DC78;
}

uint64_t sub_252BA617C()
{
  *v0;
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252BA6298@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252BA7E10();
  *a2 = result;
  return result;
}

void sub_252BA62C8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065756C61;
  v4 = 0x5672656767697274;
  v5 = 0xD000000000000011;
  v6 = 0x8000000252E68060;
  v7 = 0xED00007478655464;
  v8 = 0x656C756465686373;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x8000000252E68080;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x8000000252E68030;
  v10 = 0xD000000000000015;
  if (v2 != 1)
  {
    v10 = 0x4972656767697274;
    v9 = 0xEB000000006E6F63;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_252BA63AC()
{
  v1 = *v0;
  v2 = 0x5672656767697274;
  v3 = 0xD000000000000011;
  v4 = 0x656C756465686373;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000015;
  if (v1 != 1)
  {
    v5 = 0x4972656767697274;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_252BA648C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252BA7E10();
  *a1 = result;
  return result;
}

uint64_t sub_252BA64C0(uint64_t a1)
{
  v2 = sub_252BA6E0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252BA64FC(uint64_t a1)
{
  v2 = sub_252BA6E0C();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::String __swiftcall AutomationSnippetModel.responseViewId()()
{
  v0 = 0x8000000252E85610;
  v1 = 0xD000000000000019;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t AutomationSnippetModel.init(triggerValue:targetedEntitiesIcons:triggerIcon:automationSubtext:scheduledText:isSceneAutomation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v31 = a8;
  v28 = a6;
  v29 = a7;
  v30 = a9;
  v14 = type metadata accessor for IconConfiguration();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  v32 = a1;
  v33 = a2;
  sub_252E330C4();
  v21 = type metadata accessor for AutomationSnippetModel();
  v22 = v21[5];
  v32 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543930, &qword_252E4FE10);
  sub_252E330C4();
  sub_252BA6E60(a4, v20, type metadata accessor for IconConfiguration);
  v23 = v21[6];
  sub_252BA6E60(v20, v18, type metadata accessor for IconConfiguration);
  sub_252E330C4();
  sub_252BA6EC8(v20, type metadata accessor for IconConfiguration);
  v24 = v21[7];
  v32 = a5;
  v33 = v28;
  sub_252E330C4();
  v25 = v21[8];
  v32 = v29;
  v33 = v31;
  sub_252E330C4();
  v26 = v21[9];
  LOBYTE(v32) = v30;
  sub_252E330C4();
  return sub_252BA6EC8(a4, type metadata accessor for IconConfiguration);
}

uint64_t AutomationSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v37 = type metadata accessor for IconConfiguration();
  v3 = *(*(v37 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v37);
  v34 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543938, &qword_252E4FE18);
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = type metadata accessor for AutomationSnippetModel();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252BA6E0C();
  v15 = v38;
  sub_252E37F74();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v7;
  v32 = v10;
  v38 = a1;
  v16 = v35;
  LOBYTE(v39) = 0;
  v17 = v36;
  v39 = sub_252E37C04();
  v40 = v18;
  sub_252E330C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543930, &qword_252E4FE10);
  LOBYTE(v41) = 1;
  sub_252BA73BC(&qword_27F543948, &qword_27F542A38);
  sub_252E37C64();
  v19 = v32[5];
  v41 = v39;
  sub_252E330C4();
  LOBYTE(v39) = 2;
  sub_252BA7E5C(&qword_27F542A38, type metadata accessor for IconConfiguration);
  v20 = v31;
  sub_252E37C64();
  v30[1] = v32[6];
  sub_252BA6E60(v20, v34, type metadata accessor for IconConfiguration);
  sub_252E330C4();
  sub_252BA6EC8(v20, type metadata accessor for IconConfiguration);
  LOBYTE(v39) = 3;
  v21 = sub_252E37C04();
  v22 = v32[7];
  v39 = v21;
  v40 = v23;
  sub_252E330C4();
  LOBYTE(v39) = 4;
  v24 = sub_252E37C04();
  v25 = v32[8];
  v39 = v24;
  v40 = v26;
  sub_252E330C4();
  LOBYTE(v39) = 5;
  v27 = sub_252E37C14();
  v28 = v32[9];
  LOBYTE(v39) = v27 & 1;
  sub_252E330C4();
  (*(v16 + 8))(0, v17);
  sub_252BA6E60(v13, v33, type metadata accessor for AutomationSnippetModel);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_252BA6EC8(v13, type metadata accessor for AutomationSnippetModel);
}

unint64_t sub_252BA6E0C()
{
  result = qword_27F543940;
  if (!qword_27F543940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543940);
  }

  return result;
}

uint64_t sub_252BA6E60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252BA6EC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AutomationSnippetModel.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IconConfiguration();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543950, &qword_252E4FE20);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252BA6E0C();
  sub_252E37F84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v22 = v2;
  sub_252E330E4();
  LOBYTE(v24) = 0;
  v14 = v23;
  sub_252E37CF4();
  if (v14)
  {
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v23 = v4;

    v16 = type metadata accessor for AutomationSnippetModel();
    v17 = v16[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543920, &unk_252E4FDF8);
    sub_252E330E4();
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543930, &qword_252E4FE10);
    sub_252BA73BC(&qword_27F543958, &qword_27F542A50);
    sub_252E37D54();

    v18 = v16[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543928, &qword_252E4FE08);
    sub_252E330E4();
    LOBYTE(v24) = 2;
    sub_252BA7E5C(&qword_27F542A50, type metadata accessor for IconConfiguration);
    sub_252E37D54();
    sub_252BA6EC8(v7, type metadata accessor for IconConfiguration);
    v19 = v22 + v16[7];
    sub_252E330E4();
    LOBYTE(v24) = 3;
    sub_252E37CF4();

    v20 = v22 + v16[8];
    sub_252E330E4();
    LOBYTE(v24) = 4;
    sub_252E37CF4();

    v21 = v16[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
    sub_252E330E4();
    LOBYTE(v24) = 5;
    sub_252E37D04();
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_252BA73BC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F543930, &qword_252E4FE10);
    sub_252BA7E5C(a2, type metadata accessor for IconConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t AutomationSnippetModel.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for IconConfiguration();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0xD000000000000017;
  v24 = 0x8000000252E85630;
  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v22, "triggerValue: ");
  HIBYTE(v22[1]) = -18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  MEMORY[0x2530AD570](v20, v21);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v22[0], v22[1]);

  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  sub_252E379F4();

  v22[0] = 0xD000000000000015;
  v22[1] = 0x8000000252E85650;
  v6 = type metadata accessor for AutomationSnippetModel();
  v7 = v0 + v6[7];
  sub_252E330E4();
  MEMORY[0x2530AD570](v20, v21);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v22[0], v22[1]);

  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  sub_252E379F4();

  v22[0] = 0xD000000000000019;
  v22[1] = 0x8000000252E85670;
  v8 = v6[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543920, &unk_252E4FDF8);
  sub_252E330E4();
  v9 = *(v20 + 16);

  v20 = v9;
  v10 = sub_252E37D94();
  MEMORY[0x2530AD570](v10);

  MEMORY[0x2530AD570](v22[0], v22[1]);

  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  sub_252E379F4();

  v22[0] = 0x656767697274202CLL;
  v22[1] = 0xEF203A6E6F634972;
  v11 = v6[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543928, &qword_252E4FE08);
  sub_252E330E4();
  v12 = IconConfiguration.description.getter();
  v14 = v13;
  sub_252BA6EC8(v5, type metadata accessor for IconConfiguration);
  MEMORY[0x2530AD570](v12, v14);

  MEMORY[0x2530AD570](v22[0], v22[1]);

  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  sub_252E379F4();

  v22[0] = 0xD000000000000011;
  v22[1] = 0x8000000252E85690;
  v15 = v1 + v6[8];
  sub_252E330E4();
  MEMORY[0x2530AD570](v20, v21);

  MEMORY[0x2530AD570](v22[0], v22[1]);

  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  sub_252E379F4();

  v22[0] = 0xD000000000000015;
  v22[1] = 0x8000000252E856B0;
  v16 = v6[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  sub_252E330E4();
  if (v20)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v20)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v17, v18);

  MEMORY[0x2530AD570](v22[0], v22[1]);

  MEMORY[0x2530AD570](41, 0xE100000000000000);
  return v23;
}

uint64_t _s22HomeAutomationInternal0B12SnippetModelV2eeoiySbAC_ACtFZ_0()
{
  if ((sub_252E33104() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for AutomationSnippetModel();
  v1 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543930, &qword_252E4FE10);
  sub_252BA73BC(&qword_27F5439A8, &qword_27F5439B0);
  if ((sub_252E33104() & 1) == 0)
  {
    return 0;
  }

  v2 = v0[6];
  type metadata accessor for IconConfiguration();
  sub_252BA7E5C(&qword_27F5439B0, type metadata accessor for IconConfiguration);
  if ((sub_252E33104() & 1) == 0)
  {
    return 0;
  }

  v3 = v0[7];
  if ((sub_252E33104() & 1) == 0)
  {
    return 0;
  }

  v4 = v0[8];
  if ((sub_252E33104() & 1) == 0)
  {
    return 0;
  }

  v5 = v0[9];

  return sub_252E33104();
}

void sub_252BA7B5C()
{
  sub_252930130(319, &qword_27F540118);
  if (v0 <= 0x3F)
  {
    sub_252BA7C3C();
    if (v1 <= 0x3F)
    {
      sub_252BA7CA0();
      if (v2 <= 0x3F)
      {
        sub_252930130(319, &qword_27F540128);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_252BA7C3C()
{
  if (!qword_27F543980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F543930, &qword_252E4FE10);
    v0 = sub_252E33114();
    if (!v1)
    {
      atomic_store(v0, &qword_27F543980);
    }
  }
}

void sub_252BA7CA0()
{
  if (!qword_27F543988)
  {
    type metadata accessor for IconConfiguration();
    v0 = sub_252E33114();
    if (!v1)
    {
      atomic_store(v0, &qword_27F543988);
    }
  }
}

unint64_t sub_252BA7D0C()
{
  result = qword_27F543990;
  if (!qword_27F543990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543990);
  }

  return result;
}

unint64_t sub_252BA7D64()
{
  result = qword_27F543998;
  if (!qword_27F543998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543998);
  }

  return result;
}

unint64_t sub_252BA7DBC()
{
  result = qword_27F5439A0;
  if (!qword_27F5439A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5439A0);
  }

  return result;
}

uint64_t sub_252BA7E10()
{
  v0 = sub_252E37B74();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252BA7E5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252BA7EB8(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252BA80CC(a1);
}

uint64_t sub_252BA7F60(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 192);
  v3 = *(v2 + 16);
  v4 = v2 + 32;
  while (1)
  {
    if (v3 == v1)
    {
      return 0;
    }

    if (v1 >= *(v2 + 16))
    {
      break;
    }

    v12 = *(v4 + v1);
    if (StateSemantic.rawValue.getter() == 0x6D7575636176 && v6 == 0xE600000000000000)
    {

LABEL_8:
      v7 = 0;
      do
      {
        v9 = v3 != v7;
        if (v3 == v7)
        {
          break;
        }

        if (v7 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v11 = *(v4 + v7);
        if (StateSemantic.rawValue.getter() == 7368557 && v10 == 0xE300000000000000)
        {

          return 1;
        }

        ++v7;
        v8 = sub_252E37DB4();
      }

      while ((v8 & 1) == 0);
      return v9;
    }

    ++v1;
    v5 = sub_252E37DB4();

    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_252BA80CC(void *__src)
{
  *(v1 + 1024) = __src;
  memcpy((v1 + 16), __src, 0x1F8uLL);

  return MEMORY[0x2822009F8](sub_252BA8140, 0, 0);
}

uint64_t sub_252BA8140()
{
  v32 = v1;
  v2 = *(v1 + 208);
  memcpy(v30, *(v1 + 1024), sizeof(v30));
  v3 = *(v2 + 2);
  sub_2529353AC(v1 + 16, v1 + 520);
  if (!v3)
  {
LABEL_11:
    v5 = *(v2 + 2);
    v4 = v5;
    goto LABEL_15;
  }

  v4 = 0;
  v5 = 0x6D7575636176;
  while (1)
  {
    v6 = *(v2 + 2);
    if (v4 >= v6)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v7 = v2[v4 + 32];
    v31[0] = v7;
    v8 = StateSemantic.rawValue.getter();
    v0 = v9;
    if (v8 == 0x6D7575636176 && v9 == 0xE600000000000000)
    {
      break;
    }

    v10 = sub_252E37DB4();

    if (v10)
    {
      goto LABEL_13;
    }

    v31[0] = v7;
    v11 = StateSemantic.rawValue.getter();
    v0 = v12;
    if (v11 == 7368557 && v12 == 0xE300000000000000)
    {
      break;
    }

    v13 = sub_252E37DB4();

    if (v13)
    {
      goto LABEL_13;
    }

    if (v3 == ++v4)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  v6 = *(v2 + 2);
  if (v6 - 1 == v4)
  {
    v5 = v4 + 1;
    goto LABEL_15;
  }

  v19 = v4 + 33;
  do
  {
    v22 = v19 - 32;
    if (v19 - 32 >= v6)
    {
      goto LABEL_46;
    }

    v23 = v2[v19];
    v31[0] = v23;
    v0 = v31;
    if (StateSemantic.rawValue.getter() == 0x6D7575636176 && v24 == 0xE600000000000000)
    {
LABEL_27:

      goto LABEL_28;
    }

    v0 = v24;
    v25 = sub_252E37DB4();

    if ((v25 & 1) == 0)
    {
      v31[0] = v23;
      v0 = v31;
      if (StateSemantic.rawValue.getter() == 7368557 && v26 == 0xE300000000000000)
      {
        goto LABEL_27;
      }

      v0 = v26;
      v27 = sub_252E37DB4();

      if ((v27 & 1) == 0)
      {
        if (v22 != v4)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          v28 = *(v2 + 2);
          if (v4 >= v28)
          {
            goto LABEL_51;
          }

          if (v22 >= v28)
          {
            goto LABEL_52;
          }

          v0 = v2[v4 + 32];
          v29 = v2[v19];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_252D57AE8(v2);
            v2 = result;
          }

          v2[v4 + 32] = v29;
          v2[v19] = v0;
        }

        ++v4;
      }
    }

LABEL_28:
    v6 = *(v2 + 2);
    v20 = v19 + 1;
    v21 = v19 - 31;
    ++v19;
  }

  while (v21 != v6);
  v5 = v20 - 32;
  if ((v20 - 32) < v4)
  {
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_53:
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

LABEL_15:
  v0 = &v30[24];
  v6 = v4 - v5;
  if (!__OFADD__(v5, v4 - v5))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30[24] = v2;
    if (!isUniquelyReferenced_nonNull_native || v4 > *(v2 + 3) >> 1)
    {
      if (v5 <= v4)
      {
        v15 = v4;
      }

      else
      {
        v15 = v5;
      }

      v2 = sub_2529F82C4(isUniquelyReferenced_nonNull_native, v15, 1, v2);
      v30[24] = v2;
    }

    sub_252B7DA90(v4, v5, 0);
    v4 = *(v2 + 2);
    v6 = *(v2 + 3);
    v0 = v4 + 1;
    if (v4 < v6 >> 1)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  v2 = sub_2529F82C4((v6 > 1), v0, 1, v2);
LABEL_23:
  *(v2 + 2) = v0;
  v2[v4 + 32] = 59;
  v30[24] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_252E3C290;
  memcpy((v16 + 32), v30, 0x1F8uLL);
  v17 = *(v1 + 8);

  return v17(v16);
}

uint64_t sub_252BA8518()
{
  v0 = sub_252E34164();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_252E340E4();
  sub_252AB3FEC(v4, 0, v14);
  (*(v1 + 8))(v4, v0);
  memcpy(v15, v14, sizeof(v15));
  memcpy(v16, v14, sizeof(v16));
  if (sub_252956B94(v16) != 1)
  {
    v8 = BYTE1(v16[1]);
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544DA8);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_252E379F4();

    v14[0] = 0xD000000000000026;
    v14[1] = 0x8000000252E6C420;
    v13[7] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540790, &qword_252E48170);
    v10 = sub_252E36F94();
    MEMORY[0x2530AD570](v10);

    sub_252CC3D90(v14[0], v14[1], 0xD000000000000090, 0x8000000252E85730);

    if (v8 == 3)
    {
      goto LABEL_10;
    }

    if (!v8)
    {
      swift_bridgeObjectRelease_n();
      v12 = *(sub_252B680FC() + 77);

      if (v12)
      {
        *(sub_252B680FC() + 76) = 1;
      }

      goto LABEL_20;
    }

    v11 = sub_252E37DB4();

    if ((v11 & 1) == 0)
    {
LABEL_10:
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v9, qword_27F544D60);
      sub_252CC3D90(0xD000000000000017, 0x8000000252E6C450, 0xD00000000000006BLL, 0x8000000252E6C470);
      if (qword_27F53F388 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      qword_27F543738 = 0;

      sub_252E37614();
      if (v8 == 3)
      {
        sub_252E33A04();
        return sub_25293847C(v15, &qword_27F5404C8, &unk_252E3FD60);
      }
    }

    if (v8 == 2)
    {
      sub_252E339E4();
      return sub_25293847C(v15, &qword_27F5404C8, &unk_252E3FD60);
    }

LABEL_20:
    sub_252E339F4();
    return sub_25293847C(v15, &qword_27F5404C8, &unk_252E3FD60);
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544DA8);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_252E379F4();

  v14[0] = 0xD000000000000026;
  v14[1] = 0x8000000252E6C3F0;
  v6 = sub_252E340C4();
  MEMORY[0x2530AD570](v6);

  sub_252CC3D90(v14[0], v14[1], 0xD000000000000090, 0x8000000252E85730);

  return sub_252E33A04();
}

uint64_t sub_252BA8990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[130] = a3;
  v3[129] = a2;
  v3[128] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540780, &unk_252E50210) - 8) + 64) + 15;
  v3[131] = swift_task_alloc();
  v3[132] = swift_task_alloc();
  v5 = sub_252E34164();
  v3[133] = v5;
  v6 = *(v5 - 8);
  v3[134] = v6;
  v7 = *(v6 + 64) + 15;
  v3[135] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BA8A9C, 0, 0);
}

uint64_t sub_252BA8A9C()
{
  v27 = v0;
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1064);
  v4 = *(v0 + 1032);
  *(sub_252B680FC() + 72) = 1;

  sub_252E340E4();
  sub_252AB3FEC(v1, 0, v26);
  (*(v2 + 8))(v1, v3);
  memcpy((v0 + 520), v26, 0x1F8uLL);
  memcpy((v0 + 16), v26, 0x1F8uLL);
  if (sub_252956B94((v0 + 16)) == 1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 1080);
    v6 = *(v0 + 1048);
    v7 = *(v0 + 1040);
    v8 = *(v0 + 1032);
    v9 = *(v0 + 1024);
    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544DA8);
    v26[0] = 0;
    v26[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000044, 0x8000000252E6C210);
    sub_252E340E4();
    v11 = sub_252AD2138(v5);
    MEMORY[0x2530AD570](v11);

    sub_252CC4050(v26[0], v26[1], 0xD000000000000090, 0x8000000252E85730, 0xD000000000000033, 0x8000000252E857D0, 49);

    v12 = sub_252E33DE4();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E20, &qword_252E42850);
    sub_252E33F24();
    type metadata accessor for ControlHomeIntent();
    sub_252E33D84();
  }

  else
  {
    if (*(v0 + 25) - 2 >= 2)
    {
      v16 = *(v0 + 1056);
      if (*(v0 + 25))
      {
        v17 = MEMORY[0x277D5BED0];
      }

      else
      {
        v17 = MEMORY[0x277D5BED8];
      }

      v18 = *v17;
      v13 = sub_252E33DE4();
      v14 = *(v13 - 8);
      (*(v14 + 104))(v16, v18, v13);
      v15 = 0;
    }

    else
    {
      v13 = sub_252E33DE4();
      v14 = *(v13 - 8);
      v15 = 1;
    }

    v19 = *(v0 + 1040);
    v20 = *(v0 + 1024);
    (*(v14 + 56))(*(v0 + 1056), v15, 1, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E20, &qword_252E42850);
    sub_252E33F24();
    type metadata accessor for ControlHomeIntent();
    sub_252E33D84();
    sub_25293847C(v0 + 520, &qword_27F5404C8, &unk_252E3FD60);
  }

  v21 = *(v0 + 1080);
  v22 = *(v0 + 1056);
  v23 = *(v0 + 1048);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_252BA8EA4(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_252E36AD4();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BA8F68, 0, 0);
}

uint64_t sub_252BA8F68()
{
  v1 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E20, &qword_252E42850);
  v2 = sub_252E33F24();
  v0[18] = v2;
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v6 = __swift_project_value_buffer(v5, qword_27F544C58);
  sub_252CC3D90(0xD000000000000029, 0x8000000252E6A550, 0xD000000000000092, 0x8000000252E85850);
  v0[10] = [v2 userTask];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540420, &unk_252E3C800);
  v7 = sub_252E36F94();
  MEMORY[0x2530AD570](v7);

  sub_252CC3D90(0x6B73615472657355, 0xEB000000000A203ALL, 0xD000000000000092, 0x8000000252E85850);

  (*(v4 + 16))(v3, v6, v5);
  v8 = [v2 filters];
  if (v8)
  {
    v9 = v8;
    type metadata accessor for HomeFilter();
    v10 = sub_252E37264();
  }

  else
  {
    v10 = 0;
  }

  v12 = v0[16];
  v11 = v0[17];
  v13 = v0[15];
  v0[11] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540428, &unk_252E46650);
  v14 = sub_252E36F94();
  MEMORY[0x2530AD570](v14);

  sub_252CC3D90(0x3A737265746C6946, 0xEA00000000000A20, 0xD000000000000092, 0x8000000252E85850);

  (*(v12 + 8))(v11, v13);
  v15 = sub_252B680FC();
  swift_beginAccess();
  v16 = v2;
  MEMORY[0x2530AD700]();
  if (*((*(v15 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v15 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v38 = *((*(v15 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_252E372A4();
  }

  sub_252E372D4();
  swift_endAccess();

  v17 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v17 + 288), (v0 + 2));

  v18 = v0[5];
  v19 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v18);
  v20 = (*(v19 + 120))(v18, v19);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v20)
  {
    v21 = [v16 userTask];
    if (v21 && (v22 = v21, v23 = [v21 attribute], v22, v23 == 6))
    {
      v24 = *(v0[14] + 104);
      v25 = v16;
      v26 = swift_task_alloc();
      v0[19] = v26;
      *v26 = v0;
      v26[1] = sub_252BA94FC;
      v27 = v0[12];
      v28 = v16 | 0xC000000000000000;
    }

    else
    {
      v24 = *(v0[14] + 104);
      v33 = v16;
      v34 = swift_task_alloc();
      v0[21] = v34;
      *v34 = v0;
      v34[1] = sub_252BA9684;
      v27 = v0[12];
      v28 = v16;
    }

    return sub_252C80F04(v27, v28, v24);
  }

  else if (sub_252C4BEB8())
  {
    v29 = swift_task_alloc();
    v0[23] = v29;
    *v29 = v0;
    v29[1] = sub_252BA97A0;
    v30 = v0[14];
    v31 = v0[12];

    return sub_252BA9B88(v31, v16);
  }

  else
  {
    v35 = swift_task_alloc();
    v0[25] = v35;
    *v35 = v0;
    v35[1] = sub_252BA98B4;
    v36 = v0[14];
    v37 = v0[12];

    return sub_252BAA1A4(v37, v16);
  }
}

uint64_t sub_252BA94FC()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v6 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_252BA99C8;
  }

  else
  {

    v4 = sub_252BA9618;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252BA9618()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252BA9684()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v6 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_252BA9A3C;
  }

  else
  {

    v4 = sub_252BAC14C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252BA97A0()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_252BA9AB0;
  }

  else
  {
    v3 = sub_252BAC14C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BA98B4()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_252BA9B1C;
  }

  else
  {
    v3 = sub_252BAC14C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BA99C8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252BA9A3C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 136);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252BA9AB0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 136);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252BA9B1C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 136);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252BA9B88(uint64_t a1, uint64_t a2)
{
  v3[267] = v2;
  v3[266] = a2;
  v3[265] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v3[268] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BA9C2C, 0, 0);
}

uint64_t sub_252BA9C2C()
{
  v41 = v0;
  v1 = sub_252B680FC();
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 504 * v3 - 472);
    memcpy((v0 + 1024), v4, 0x1F8uLL);
    memmove((v0 + 520), v4, 0x1F8uLL);
    GEOLocationCoordinate2DMake(v0 + 520);
    sub_2529353AC(v0 + 1024, v0 + 1528);

    memcpy((v0 + 16), (v0 + 520), 0x1F8uLL);
  }

  else
  {

    sub_25293DEE0(v0 + 16);
  }

  v5 = *(v0 + 2128);
  memcpy(__dst, (v0 + 16), 0x1F8uLL);
  v6 = v5;
  v39 = sub_252953488(v5, __dst, 0);

  type metadata accessor for HomeAutomationEntityResponses();
  v7 = MEMORY[0x277D84F90];
  sub_25299DDFC(MEMORY[0x277D84F90]);
  if (sub_252C4D664(5))
  {
    type metadata accessor for HomeAutomationEntityResponses.Builder();
    *(swift_allocObject() + 16) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_252E3C130;
    v8 = type metadata accessor for HomeAutomationEntityResponse.Builder(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
    v13 = sub_252E36324();
    v14 = *(*(v13 - 8) + 56);
    v15 = 1;
    v14(v11 + v12, 1, 1, v13);
    v14(v11 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v13);
    *(v11 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
    *(v11 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = v7;
    *(v11 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
    v14(v11 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v13);
    *(v11 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v7;
    *(v11 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v7;
    sub_252C4E214();
    if (v16)
    {
      v17 = *(v0 + 2144);
      sub_252E37024();

      v15 = 0;
    }

    v18 = *(v0 + 2144);
    v14(v18, v15, 1, v13);
    swift_beginAccess();
    sub_252956BAC(v18, v11 + v12);
    swift_endAccess();
    sub_25293847C(v18, &qword_27F540298, &unk_252E3C270);
    v19 = type metadata accessor for HomeAutomationEntityResponse(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = sub_2529605C0(v11);
    swift_setDeallocating();
    v23 = *sub_25295E9E4();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_deallocClassInstance();
    *(v37 + 32) = v22;

    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    swift_setDeallocating();
    swift_deallocClassInstance();
    *(v26 + 24) = v37;
  }

  else
  {
    v27 = sub_252BABE9C(*(v0 + 2128));
    v26 = sub_25299DDFC(v27);
  }

  v28 = *(v0 + 2136);
  v38 = *(v0 + 2120);
  sub_252929E74(v28 + 24, v0 + 2032);
  v29 = *(v0 + 2056);
  v30 = *(v0 + 2064);
  __swift_project_boxed_opaque_existential_1((v0 + 2032), v29);
  v31 = *(v28 + 104);
  v32 = swift_allocObject();
  v32[2] = v28;
  v32[3] = v39;
  v32[4] = v26;
  v33 = *(v30 + 80);

  v33(v31, sub_252BAC140, v32, v29, v30);
  v34 = *(v0 + 2144);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2032));

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_252BAA140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);

  sub_252BFE424(a2, a3);
}

uint64_t sub_252BAA1A4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_252BAA1C8, 0, 0);
}

uint64_t sub_252BAA1C8()
{
  v1 = [*(v0 + 64) filters];
  if (!v1)
  {
    goto LABEL_11;
  }

  type metadata accessor for HomeFilter();
  v2 = sub_252E37264();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  result = sub_252E378C4();
  if (!result)
  {
LABEL_10:

    v1 = 0;
LABEL_11:
    v5 = sub_252A6D5D4(v1);
    goto LABEL_12;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2530ADF00](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v1 = v4;

  if ([v1 entityType] != 5)
  {
    goto LABEL_11;
  }

  v5 = 5;
LABEL_12:
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v16 = *(v0 + 56);
  sub_252929E74(v6 + 24, v0 + 16);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
  v10 = *(v6 + 104);
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v1;
  v11[4] = v5;
  v12 = *(v9 + 80);
  v13 = v1;
  v14 = v7;
  v12(v10, sub_252BAC134, v11, v8, v9);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_252BAA3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[11] = a1;
  v5 = sub_252E34014();
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BAA4D4, 0, 0);
}

uint64_t sub_252BAA4D4()
{
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544C58);
  sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E858F0, 0xD000000000000092, 0x8000000252E85850);
  type metadata accessor for HomeAutomationEntityResponses();
  v3 = MEMORY[0x277D84F90];
  sub_25299DDFC(MEMORY[0x277D84F90]);
  v4 = sub_252C4D664(5);
  v5 = *(v0 + 96);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_252E3C130;
    v6 = type metadata accessor for HomeAutomationEntityResponse.Builder(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    v10 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
    v11 = sub_252E36324();
    v12 = *(*(v11 - 8) + 56);
    v13 = 1;
    v12(v9 + v10, 1, 1, v11);
    v12(v9 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v11);
    *(v9 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
    *(v9 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = v3;
    *(v9 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
    v12(v9 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v11);
    *(v9 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v3;
    *(v9 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v3;
    v14 = [v5 filters];
    if (!v14)
    {
LABEL_15:
      v23 = *(v0 + 136);
      v12(v23, v13, 1, v11);
      swift_beginAccess();
      sub_252956BAC(v23, v9 + v10);
      swift_endAccess();
      sub_25293847C(v23, &qword_27F540298, &unk_252E3C270);
      v24 = type metadata accessor for HomeAutomationEntityResponse(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = sub_2529605C0(v9);
      swift_setDeallocating();
      v28 = *sub_25295E9E4();
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      swift_deallocClassInstance();
      *(v40 + 32) = v27;
      v22 = swift_allocObject();
      *(v22 + 16) = 0;
      *(v22 + 24) = v40;
      goto LABEL_16;
    }

    v15 = v14;
    type metadata accessor for HomeFilter();
    v16 = sub_252E37264();

    if (v16 >> 62)
    {
      result = sub_252E378C4();
      if (result)
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_7:
        if ((v16 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x2530ADF00](0, v16);
        }

        else
        {
          if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v18 = *(v16 + 32);
        }

        v19 = v18;

        v20 = [v19 homeEntityName];

        if (!v20)
        {
          v13 = 1;
          goto LABEL_15;
        }

        v39 = *(v0 + 136);
        sub_252E36F34();

        sub_252E37024();
        v13 = 0;
      }
    }

    goto LABEL_15;
  }

  v21 = sub_252BABE9C(*(v0 + 96));
  v22 = sub_25299DDFC(v21);
LABEL_16:

  v31 = *(v0 + 128);
  v33 = *(v0 + 96);
  v32 = *(v0 + 104);
  *(v0 + 80) = v22;
  sub_252929E74(v32 + 24, v0 + 16);
  v34 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v34);
  v35 = swift_task_alloc();
  *(v0 + 144) = v35;
  v35[2] = v32;
  v35[3] = v33;
  v35[4] = v0 + 80;
  sub_252AD7CC4();
  v36 = swift_task_alloc();
  *(v0 + 152) = v36;
  *v36 = v0;
  v36[1] = sub_252BAAA24;
  v37 = *(v0 + 128);
  v38 = *(v0 + 88);

  return sub_252BDB88C(v38, &unk_252E50240, v35, v37, 0, 0, 0, v34);
}

uint64_t sub_252BAAA24()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v10 = *v1;
  *(*v1 + 160) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252BAAC24;
  }

  else
  {
    v8 = *(v2 + 144);

    v7 = sub_252BAABA4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252BAABA4()
{
  v1 = v0[16];
  v2 = v0[17];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_252BAAC24()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[10];

  v5 = v0[1];
  v6 = v0[20];

  return v5();
}

uint64_t sub_252BAACAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252BAACD0, 0, 0);
}

uint64_t sub_252BAACD0()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 64), *(v0[2] + 88));
  v3 = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_252BAADA0;
  v5 = v0[3];
  v6 = v0[4];

  return sub_252C14F98(0, v2, v5, v6);
}

uint64_t sub_252BAADA0(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 24);
  v9 = *v2;

  v7 = *(v9 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_252BAAEC0(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = sub_252B680FC();
  swift_beginAccess();
  v7 = *(v6 + 16);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 504 * v8 - 472);
    memcpy(v16, v9, sizeof(v16));
    memmove(__dst, v9, 0x1F8uLL);
    GEOLocationCoordinate2DMake(__dst);
    sub_2529353AC(v16, __src);

    memcpy(__src, __dst, sizeof(__src));
  }

  else
  {

    sub_25293DEE0(__src);
  }

  memcpy(__dst, __src, sizeof(__dst));
  v10 = a2;
  v11 = sub_252953488(a2, __dst, 0);

  v12 = *(a1 + 8);

  *(a1 + 8) = v11;
  v13 = *a3;
  v14 = *(a1 + 16);

  *(a1 + 16) = v13;
  return result;
}

uint64_t sub_252BAAFEC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_252E33DB4();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BAB0B0, 0, 0);
}

uint64_t sub_252BAB0B0()
{
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[3];
  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544C58);
  sub_252CC3D90(0xD00000000000003DLL, 0x8000000252E85810, 0xD000000000000092, 0x8000000252E85850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E20, &qword_252E42850);
  v0[8] = sub_252E33F14();
  v4 = sub_252E33F24();
  v0[9] = v4;
  sub_252E33DC4();
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_252BAB220;
  v7 = v0[4];
  v8 = v0[2];

  return sub_252BAA3D8(v8, v5, v4);
}

uint64_t sub_252BAB220()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 88) = v0;

  (*(v7 + 8))(v6, v8);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252BAB410, 0, 0);
  }

  else
  {
    v10 = *(v2 + 56);

    v11 = *(v9 + 8);

    return v11();
  }
}

uint64_t sub_252BAB410()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_252BAB474()
{
  v1 = v0;
  v2 = type metadata accessor for ConfirmationParameters();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E20, &qword_252E42850);
  v7 = sub_252E33F24();
  sub_252BABDD0(v1 + OBJC_IVAR____TtC22HomeAutomationInternal32ControlHomeConfirmIntentStrategy_store, v6 + *(v3 + 28));
  *v6 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5439D8, &unk_252E50228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C280;
  *(inited + 48) = &type metadata for RemoteHomeCondition;
  *(inited + 56) = &off_2864BEDD0;
  *(inited + 32) = &type metadata for WatchAuthUnsafeOperationCondition;
  *(inited + 40) = &off_2864BEDE0;
  *(inited + 64) = &type metadata for TargetTemperatureCondition;
  *(inited + 72) = &off_2864BEDC0;
  if (off_2864BEDE8(v6) & 1) != 0 || (v9 = *(inited + 48), ((*(*(inited + 56) + 8))(v6)))
  {
    v10 = 1;
  }

  else
  {
    v11 = *(inited + 64);
    v10 = (*(*(inited + 72) + 8))(v6);
  }

  sub_252BABE40(v6);
  return v10 & 1;
}

uint64_t sub_252BAB614()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v2 = v0[13];

  sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal32ControlHomeConfirmIntentStrategy_store, &qword_27F5439D0, &qword_252E50220);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ControlHomeConfirmIntentStrategy()
{
  result = qword_27F5439B8;
  if (!qword_27F5439B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252BAB6FC()
{
  sub_252BAB7B0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_252BAB7B0()
{
  if (!qword_27F5439C8)
  {
    sub_252E35E44();
    v0 = sub_252E37734();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5439C8);
    }
  }
}

uint64_t sub_252BAB80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_252BA8990(a1, a2, a3);
}

uint64_t sub_252BAB8D0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_252BA8EA4(a1, a2);
}

uint64_t sub_252BAB97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B430] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ControlHomeConfirmIntentStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9D08](a1, a2, v10, a4);
}

uint64_t sub_252BABA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B438] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ControlHomeConfirmIntentStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9D10](a1, a2, v10, a4);
}

uint64_t sub_252BABB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B440] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ControlHomeConfirmIntentStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9D18](a1, a2, v10, a4);
}

uint64_t sub_252BABBD4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252BAAFEC(a1, a2);
}

uint64_t sub_252BABC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B428] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for ControlHomeConfirmIntentStrategy();
  *v11 = v5;
  v11[1] = sub_25294B954;

  return MEMORY[0x2821B9D00](a1, a2, a3, v12, a5);
}

unint64_t sub_252BABD50(uint64_t a1)
{
  result = sub_252BABD78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_252BABD78()
{
  result = qword_27F543890;
  if (!qword_27F543890)
  {
    type metadata accessor for ControlHomeConfirmIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543890);
  }

  return result;
}

uint64_t sub_252BABDD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5439D0, &qword_252E50220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252BABE40(uint64_t a1)
{
  v2 = type metadata accessor for ConfirmationParameters();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_252BABE9C(void *a1)
{
  type metadata accessor for HomeStore();
  v2 = static HomeStore.shared.getter();
  v3 = [a1 filters];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeFilter();
    v5 = sub_252E37264();
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = [a1 userTask];
  v7 = HomeStore.services(matching:supporting:)(v5, v6);
  v9 = v8;

  if (v9)
  {
    if (qword_27F53F490 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544C58);
    sub_252E379F4();

    swift_getErrorValue();
    v11 = sub_252E37E54();
    MEMORY[0x2530AD570](v11);

    sub_252CC4050(0xD00000000000002BLL, 0x8000000252E76720, 0xD000000000000092, 0x8000000252E85850, 0x7365636976726573, 0xEE00293A726F6628, 156);

    sub_252929F10(v7, 1);
    return MEMORY[0x277D84F90];
  }

  return v7;
}

uint64_t sub_252BAC08C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B7BC;

  return sub_252BAACAC(v2, v3, v4);
}

uint64_t MockPlaybackController.deinit()
{
  sub_2529319F4(v0 + OBJC_IVAR____TtC22HomeAutomationInternal22MockPlaybackController_PlaybackResultToReturn);
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal22MockPlaybackController_appNameResult + 8);

  v2 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal22MockPlaybackController_bundleIDResult + 8);

  return v0;
}

uint64_t MockPlaybackController.__deallocating_deinit()
{
  sub_2529319F4(v0 + OBJC_IVAR____TtC22HomeAutomationInternal22MockPlaybackController_PlaybackResultToReturn);
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal22MockPlaybackController_appNameResult + 8);

  v2 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal22MockPlaybackController_bundleIDResult + 8);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MockPlaybackController()
{
  result = qword_27F5439E0;
  if (!qword_27F5439E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252BAC280()
{
  sub_252BAC334();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_252BAC334()
{
  if (!qword_27F5439F0)
  {
    sub_252E36934();
    sub_252931A5C();
    v0 = sub_252E37F64();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5439F0);
    }
  }
}

char *sub_252BAC3F4(void *a1, SEL *a2)
{
  v4 = [*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) characteristics];
  sub_252BAC798();
  v5 = sub_252E37264();

  v38 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v7 = 0;
    a1 = *a1;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = [v9 characteristicType];
      v13 = sub_252E36F34();
      v15 = v14;

      if (v13 == sub_252E36F34() && v15 == v16)
      {
      }

      else
      {
        v18 = sub_252E37DB4();

        if ((v18 & 1) == 0)
        {

          goto LABEL_6;
        }
      }

      sub_252E37A94();
      v8 = *(v38 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
LABEL_6:
      ++v7;
      if (v11 == i)
      {
        v19 = v38;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_23:

  if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
  {
LABEL_48:
    v20 = sub_252E378C4();
    if (v20)
    {
      goto LABEL_26;
    }

LABEL_49:
    v22 = MEMORY[0x277D84F90];
    goto LABEL_50;
  }

  v20 = *(v19 + 16);
  if (!v20)
  {
    goto LABEL_49;
  }

LABEL_26:
  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  do
  {
    v37 = v22;
    v23 = v21;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x2530ADF00](v23, v19);
      }

      else
      {
        if (v23 >= *(v19 + 16))
        {
          goto LABEL_47;
        }

        v24 = *(v19 + 8 * v23 + 32);
      }

      v25 = v24;
      v21 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v26 = [v24 metadata];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 *a2];

        if (v28)
        {
          break;
        }
      }

LABEL_29:
      ++v23;
      if (v21 == v20)
      {
        v22 = v37;
        goto LABEL_50;
      }
    }

    v38 = 0;
    v39 = 1;
    MEMORY[0x2530AD810](v28, &v38);

    if (v39)
    {
      goto LABEL_29;
    }

    v29 = v38;
    v30 = v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v30 = sub_2529F7D44(0, *(v37 + 2) + 1, 1, v37);
    }

    v33 = *(v30 + 2);
    v32 = *(v30 + 3);
    v34 = v30;
    if (v33 >= v32 >> 1)
    {
      v34 = sub_2529F7D44((v32 > 1), v33 + 1, 1, v30);
    }

    *(v34 + 2) = v33 + 1;
    v22 = v34;
    *&v34[8 * v33 + 32] = v29;
  }

  while (v21 != v20);
LABEL_50:

  return v22;
}

unint64_t sub_252BAC798()
{
  result = qword_27F5412E0;
  if (!qword_27F5412E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5412E0);
  }

  return result;
}

unint64_t sub_252BAC7E4()
{
  v1 = sub_252E36AD4();
  v115 = *(v1 - 8);
  v116 = v1;
  v2 = *(v115 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v114 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v113 - v5;
  v7 = v0[1];
  v206 = *v0;
  v207 = v7;
  v127 = *(v0 + 4);
  v8 = *(v0 + 56);
  v202 = *(v0 + 40);
  v203 = v8;
  v9 = *(v0 + 88);
  v204 = *(v0 + 72);
  v205 = v9;
  v10 = *(v0 + 13);
  v11 = v0[7];
  v12 = *(v0 + 17);
  v123 = *(v0 + 16);
  v124 = v10;
  v122 = v12;
  v13 = *(v0 + 18);
  v120 = *(v0 + 19);
  v121 = v13;
  v14 = *(v0 + 21);
  v125 = *(v0 + 20);
  v15 = v0[12];
  v199 = v0[11];
  v200 = v15;
  v201 = v11;
  v131 = *(v0 + 208);
  v198[0] = *(v0 + 209);
  v16 = *(v0 + 27);
  v128 = *(v0 + 28);
  *(v198 + 7) = v16;
  v17 = *(v0 + 232);
  v118 = *(v0 + 31);
  v119 = v14;
  v196 = v0[16];
  v197 = v17;
  v18 = *(v0 + 35);
  v117 = *(v0 + 34);
  v195 = *(v0 + 288);
  v194 = v18;
  LODWORD(v13) = *(v0 + 289);
  v193 = *(v0 + 147);
  v192 = *(v0 + 290);
  v19 = *(v0 + 37);
  v191 = *(v0 + 62);
  v20 = v0[30];
  v189 = v0[29];
  v190 = v20;
  v21 = v0[28];
  v187 = v0[27];
  v188 = v21;
  v22 = v0[26];
  v185 = v0[25];
  v186 = v22;
  v23 = v0[24];
  v183 = v0[23];
  v184 = v23;
  v24 = v0[22];
  v181 = v0[21];
  v182 = v24;
  v25 = v0[20];
  v179 = v0[19];
  v180 = v25;
  v26 = MEMORY[0x277D84F90];
  v178 = MEMORY[0x277D84F90];
  v132 = v19;
  v126 = v13;
  if ((v13 & 1) != 0 || !v19)
  {
    goto LABEL_38;
  }

  v178 = v19;
  v27 = qword_27F53F4F8;

  if (v27 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v28 = v116;
    v29 = __swift_project_value_buffer(v116, qword_27F544D90);
    (*(v115 + 16))(v6, v29, v28);
    *&v135 = 0;
    *(&v135 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E85EB0);
    v113 = v19 >> 62;
    if (v19 >> 62)
    {
      break;
    }

    v30 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v129 = v6;
    if (!v30)
    {
      goto LABEL_22;
    }

LABEL_6:
    v31 = 0;
    v130 = (v132 & 0xC000000000000001);
    v19 = v132 & 0xFFFFFFFFFFFFFF8;
    v32 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v130)
      {
        v33 = MEMORY[0x2530ADF00](v31, v132);
      }

      else
      {
        if (v31 >= *(v19 + 16))
        {
          goto LABEL_19;
        }

        v33 = *(v132 + 8 * v31 + 32);
      }

      v34 = v33;
      v35 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      v36 = [v33 description];
      v37 = sub_252E36F34();
      v39 = v38;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_2529F7A80(0, *(v32 + 2) + 1, 1, v32);
      }

      v6 = *(v32 + 2);
      v40 = *(v32 + 3);
      if (v6 >= v40 >> 1)
      {
        v32 = sub_2529F7A80((v40 > 1), v6 + 1, 1, v32);
      }

      *(v32 + 2) = v6 + 1;
      v41 = &v32[16 * v6];
      *(v41 + 4) = v37;
      *(v41 + 5) = v39;
      ++v31;
      if (v35 == v30)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }

  v30 = sub_252E378C4();
  v129 = v6;
  if (v30)
  {
    goto LABEL_6;
  }

LABEL_22:
  v32 = MEMORY[0x277D84F90];
LABEL_23:
  v42 = MEMORY[0x2530AD730](v32, MEMORY[0x277D837D0]);
  v44 = v43;

  MEMORY[0x2530AD570](v42, v44);

  v45 = v129;
  sub_252CC3D90(v135, *(&v135 + 1), 0xD00000000000007ALL, 0x8000000252E85990);

  (*(v115 + 8))(v45, v116);
  if (!v30)
  {
    v26 = v132;
LABEL_38:
    v54 = (v127 + 32);
    v55 = *(v127 + 16);
    while (v55)
    {
      v57 = *v54;
      if (v57 >= 4)
      {

LABEL_63:
        v135 = v206;
        v136 = v207;
        v61 = v127;
        v137 = v127;
        v138 = v202;
        v139 = v203;
        v140 = v204;
        v141 = v205;
        v63 = v123;
        v62 = v124;
        v142 = v124;
        v143 = v201;
        v65 = v121;
        v64 = v122;
        v144 = v123;
        v145 = v122;
        v67 = v119;
        v66 = v120;
        v146 = v121;
        v147 = v120;
        v148 = v125;
        v149 = v119;
        v150 = v199;
        v151 = v200;
        v152 = v131;
        *v153 = v198[0];
        *&v153[7] = *(v198 + 7);
        v154 = v128;
        v155 = v197;
        v156 = v118;
        v157 = v196;
        v160 = v195;
        v158 = v117;
        v159 = v194;
        v161 = v126;
        v130 = &v162;
        v162 = v192;
        v163 = v193;
        v68 = v132;
        v164 = v132;
        v177 = v191;
        v175 = v189;
        v176 = v190;
        v173 = v187;
        v174 = v188;
        v171 = v185;
        v172 = v186;
        v169 = v183;
        v170 = v184;
        v167 = v181;
        v168 = v182;
        v165 = v179;
        v166 = v180;
        sub_252BB2B50(MEMORY[0x277D84F90]);
        v135 = v206;
        v136 = v207;
        v137 = v61;
        v138 = v202;
        v139 = v203;
        v140 = v204;
        v141 = v205;
        v142 = v62;
        v143 = v201;
        v144 = v63;
        v145 = v64;
        v146 = v65;
        v147 = v66;
        v148 = v125;
        v149 = v67;
        v150 = v199;
        v151 = v200;
        v152 = v131;
        *&v153[7] = *(v198 + 7);
        *v153 = v198[0];
        v154 = v128;
        v155 = v197;
        v156 = v118;
        v157 = v196;
        v160 = v195;
        v158 = v117;
        v159 = v194;
        v161 = v126;
        *v130 = v192;
        v163 = v193;
        v164 = v68;
        v175 = v189;
        v176 = v190;
        v177 = v191;
        v171 = v185;
        v172 = v186;
        v173 = v187;
        v174 = v188;
        v167 = v181;
        v168 = v182;
        v169 = v183;
        v170 = v184;
        v165 = v179;
        v166 = v180;
        v70 = v69;
        v71 = sub_252BB48FC(v69);
        sub_25297A8D8(v71);

LABEL_64:
        v135 = v206;
        v136 = v207;
        v137 = v127;
        v138 = v202;
        v139 = v203;
        v140 = v204;
        v141 = v205;
        v142 = v124;
        v143 = v201;
        v144 = v123;
        v145 = v122;
        v146 = v121;
        v147 = v120;
        v148 = v125;
        v149 = v119;
        v150 = v199;
        v151 = v200;
        v152 = v131;
        *&v153[7] = *(v198 + 7);
        *v153 = v198[0];
        v154 = v128;
        v155 = v197;
        v156 = v118;
        v157 = v196;
        v160 = v195;
        v158 = v117;
        v159 = v194;
        v161 = v126;
        v162 = v192;
        v163 = v193;
        v164 = v132;
        v167 = v181;
        v168 = v182;
        v165 = v179;
        v166 = v180;
        v171 = v185;
        v172 = v186;
        v169 = v183;
        v170 = v184;
        v177 = v191;
        v175 = v189;
        v176 = v190;
        v173 = v187;
        v174 = v188;
        v50 = sub_252BB5B20(v178);

        v72 = qword_27F53F4F8;

        if (v72 == -1)
        {
          goto LABEL_65;
        }

        goto LABEL_154;
      }

      v56 = sub_252E37DB4();

      ++v54;
      --v55;
      if (v56)
      {
        goto LABEL_63;
      }
    }

    v58 = *(v123 + 16);
    if (v58 <= *(v120 + 16))
    {
      v58 = *(v120 + 16);
    }

    if (v58 <= *(v128 + 16))
    {
      v58 = *(v128 + 16);
    }

    if (v58 <= *(v124 + 16))
    {
      v58 = *(v124 + 16);
    }

    if (v58 <= *(v122 + 16))
    {
      v58 = *(v122 + 16);
    }

    if (v58 <= *(v119 + 16))
    {
      v58 = *(v119 + 16);
    }

    if (v58 <= *(v121 + 16))
    {
      v58 = *(v121 + 16);
    }

    if (v58 <= 1)
    {
      v58 = 1;
    }

    for (i = v58 - 1; ; --i)
    {
      v135 = v206;
      v136 = v207;
      v138 = v202;
      v139 = v203;
      v140 = v204;
      v141 = v205;
      v137 = v127;
      v142 = v124;
      v143 = v201;
      v144 = v123;
      v145 = v122;
      v146 = v121;
      v147 = v120;
      v148 = v125;
      v149 = v119;
      v150 = v199;
      v151 = v200;
      v152 = v131;
      *&v153[7] = *(v198 + 7);
      *v153 = v198[0];
      v155 = v197;
      v154 = v128;
      v156 = v118;
      v157 = v196;
      v158 = v117;
      v160 = v195;
      v159 = v194;
      v161 = v126;
      v163 = v193;
      v162 = v192;
      v164 = v132;
      v167 = v181;
      v168 = v182;
      v165 = v179;
      v166 = v180;
      v171 = v185;
      v172 = v186;
      v169 = v183;
      v170 = v184;
      v177 = v191;
      v175 = v189;
      v176 = v190;
      v173 = v187;
      v174 = v188;
      sub_252BB2B50(v26);
      MEMORY[0x2530AD700]();
      if (*((v178 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v178 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v60 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      if (!i)
      {
        break;
      }

      v26 = v178;
    }

    goto LABEL_64;
  }

  v46 = v132;
  v47 = v132 & 0xFFFFFFFFFFFFFF8;
  if (v113)
  {
    v48 = sub_252E378C4();
  }

  else
  {
    v48 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = 0;
  v50 = v46 & 0xC000000000000001;
  while (1)
  {
    if (v48 == v49)
    {
      v26 = v46;
      goto LABEL_38;
    }

    if (v50)
    {
      v51 = MEMORY[0x2530ADF00](v49, v46);
    }

    else
    {
      if (v49 >= *(v47 + 16))
      {
        goto LABEL_153;
      }

      v51 = *(v46 + 8 * v49 + 32);
    }

    v52 = v51;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    v53 = sub_252A20B84();

    ++v49;
    if ((v53 & 1) == 0)
    {
      return v46;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    swift_once();
LABEL_65:
    v73 = v116;
    v74 = __swift_project_value_buffer(v116, qword_27F544D90);
    (*(v115 + 16))(v114, v74, v73);
    *&v135 = 0;
    *(&v135 + 1) = 0xE000000000000000;
    sub_252E379F4();

    v133 = 0xD000000000000010;
    v134 = 0x8000000252E85E90;
    v130 = v50 >> 62 ? sub_252E378C4() : *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v129 = v50;
    if (!v130)
    {
      break;
    }

    v75 = 0;
    v76 = v50 & 0xC000000000000001;
    v77 = v50 & 0xFFFFFFFFFFFFFF8;
    v78 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v76)
      {
        v79 = MEMORY[0x2530ADF00](v75, v50);
      }

      else
      {
        if (v75 >= *(v77 + 16))
        {
          goto LABEL_151;
        }

        v79 = *(v50 + 8 * v75 + 32);
      }

      v50 = v79;
      v80 = (v75 + 1);
      if (__OFADD__(v75, 1))
      {
        break;
      }

      v81 = [v79 description];
      v82 = sub_252E36F34();
      v84 = v83;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_2529F7A80(0, *(v78 + 2) + 1, 1, v78);
      }

      v86 = *(v78 + 2);
      v85 = *(v78 + 3);
      if (v86 >= v85 >> 1)
      {
        v78 = sub_2529F7A80((v85 > 1), v86 + 1, 1, v78);
      }

      *(v78 + 2) = v86 + 1;
      v87 = &v78[16 * v86];
      *(v87 + 4) = v82;
      *(v87 + 5) = v84;
      ++v75;
      v50 = v129;
      if (v80 == v130)
      {
        goto LABEL_81;
      }
    }

    __break(1u);
LABEL_151:
    __break(1u);
  }

  v78 = MEMORY[0x277D84F90];
LABEL_81:

  v88 = MEMORY[0x2530AD730](v78, MEMORY[0x277D837D0]);
  v90 = v89;

  MEMORY[0x2530AD570](v88, v90);

  MEMORY[0x2530AD570](0x496C6E20726F6620, 0xEE0020746E65746ELL);
  v135 = v206;
  v136 = v207;
  v137 = v127;
  v138 = v202;
  v139 = v203;
  v140 = v204;
  v141 = v205;
  v142 = v124;
  v143 = v201;
  v144 = v123;
  v145 = v122;
  v146 = v121;
  v147 = v120;
  v148 = v125;
  v149 = v119;
  v150 = v199;
  v151 = v200;
  LODWORD(v90) = v131;
  v152 = v131;
  *&v153[7] = *(v198 + 7);
  *v153 = v198[0];
  v154 = v128;
  v155 = v197;
  v91 = v117;
  v156 = v118;
  v157 = v196;
  v160 = v195;
  v158 = v117;
  v159 = v194;
  v161 = v126;
  v130 = &v162;
  v162 = v192;
  v163 = v193;
  v164 = v132;
  v167 = v181;
  v168 = v182;
  v165 = v179;
  v166 = v180;
  v171 = v185;
  v172 = v186;
  v169 = v183;
  v170 = v184;
  v177 = v191;
  v175 = v189;
  v176 = v190;
  v173 = v187;
  v174 = v188;
  v92 = HomeAutomationIntent.description.getter();
  MEMORY[0x2530AD570](v92);

  v93 = v114;
  sub_252CC3D90(v133, v134, 0xD00000000000007ALL, 0x8000000252E85990);

  (*(v115 + 8))(v93, v116);
  if (v90 != 9)
  {
    for (j = 0; j != 4; ++j)
    {
      v101 = byte_2864A3420[j + 32];
      if (v101 <= 3)
      {
        v104 = 7628147;
        v105 = 0x656C67676F74;
        if (v101 != 2)
        {
          v105 = 2003789939;
        }

        v106 = 0xE600000000000000;
        if (v101 != 2)
        {
          v106 = 0xE400000000000000;
        }

        if (byte_2864A3420[j + 32])
        {
          v104 = 7628135;
        }

        if (byte_2864A3420[j + 32] <= 1u)
        {
          v102 = v104;
        }

        else
        {
          v102 = v105;
        }

        if (byte_2864A3420[j + 32] <= 1u)
        {
          v103 = 0xE300000000000000;
        }

        else
        {
          v103 = v106;
        }
      }

      else if (byte_2864A3420[j + 32] <= 5u)
      {
        if (v101 == 4)
        {
          v102 = 0x746E756F63;
        }

        else
        {
          v102 = 0xD000000000000011;
        }

        if (v101 == 4)
        {
          v103 = 0xE500000000000000;
        }

        else
        {
          v103 = 0x8000000252E678A0;
        }
      }

      else if (v101 == 6)
      {
        v102 = 0xD000000000000010;
        v103 = 0x8000000252E678C0;
      }

      else if (v101 == 7)
      {
        v102 = 0xD000000000000012;
        v103 = 0x8000000252E678E0;
      }

      else
      {
        v102 = 0x656E4F6863696877;
        v103 = 0xEF64656C69614673;
      }

      if (v131 <= 3)
      {
        if (v131 > 1)
        {
          if (v131 == 2)
          {
            v98 = 0x656C67676F74;
          }

          else
          {
            v98 = 2003789939;
          }

          if (v131 == 2)
          {
            v99 = 0xE600000000000000;
          }

          else
          {
            v99 = 0xE400000000000000;
          }

          if (v102 != v98)
          {
            goto LABEL_94;
          }
        }

        else if (v131)
        {
          v99 = 0xE300000000000000;
          if (v102 != 7628135)
          {
            goto LABEL_94;
          }
        }

        else
        {
          v99 = 0xE300000000000000;
          if (v102 != 7628147)
          {
            goto LABEL_94;
          }
        }
      }

      else
      {
        v107 = 0xD000000000000012;
        if (v131 != 7)
        {
          v107 = 0x656E4F6863696877;
        }

        v108 = 0xEF64656C69614673;
        if (v131 == 7)
        {
          v108 = 0x8000000252E678E0;
        }

        if (v131 == 6)
        {
          v107 = 0xD000000000000010;
          v108 = 0x8000000252E678C0;
        }

        if (v131 == 4)
        {
          v109 = 0x746E756F63;
        }

        else
        {
          v109 = 0xD000000000000011;
        }

        v110 = 0xE500000000000000;
        if (v131 != 4)
        {
          v110 = 0x8000000252E678A0;
        }

        if (v131 <= 5)
        {
          v111 = v109;
        }

        else
        {
          v111 = v107;
        }

        if (v131 <= 5)
        {
          v99 = v110;
        }

        else
        {
          v99 = v108;
        }

        if (v102 != v111)
        {
          goto LABEL_94;
        }
      }

      if (v103 == v99)
      {

        return v129;
      }

LABEL_94:
      v100 = sub_252E37DB4();

      if (v100)
      {
        return v129;
      }
    }
  }

  v135 = v206;
  v136 = v207;
  v137 = v127;
  v138 = v202;
  v139 = v203;
  v140 = v204;
  v141 = v205;
  v142 = v124;
  v143 = v201;
  v144 = v123;
  v145 = v122;
  v146 = v121;
  v147 = v120;
  v94 = v118;
  v148 = v125;
  v149 = v119;
  v150 = v199;
  v151 = v200;
  v152 = v131;
  *v153 = v198[0];
  *&v153[7] = *(v198 + 7);
  v154 = v128;
  v155 = v197;
  v156 = v118;
  v157 = v196;
  v160 = v195;
  v158 = v91;
  v159 = v194;
  v161 = v126;
  *v130 = v192;
  v163 = v193;
  v95 = v132;
  v164 = v132;
  v177 = v191;
  v175 = v189;
  v176 = v190;
  v173 = v187;
  v174 = v188;
  v171 = v185;
  v172 = v186;
  v169 = v183;
  v170 = v184;
  v167 = v181;
  v168 = v182;
  v165 = v179;
  v166 = v180;
  if (!sub_252A12D08())
  {
    return v129;
  }

  v46 = v129;
  if (v94 | v91)
  {
    v135 = v206;
    v136 = v207;
    v137 = v127;
    v138 = v202;
    v139 = v203;
    v140 = v204;
    v141 = v205;
    v142 = v124;
    v143 = v201;
    v144 = v123;
    v145 = v122;
    v146 = v121;
    v147 = v120;
    v148 = v125;
    v149 = v119;
    v150 = v199;
    v151 = v200;
    v152 = v131;
    *&v153[7] = *(v198 + 7);
    *v153 = v198[0];
    v154 = v128;
    v155 = v197;
    v156 = v94;
    v157 = v196;
    v160 = v195;
    v158 = v91;
    v159 = v194;
    v161 = v126;
    v162 = v192;
    v163 = v193;
    v164 = v95;
    v167 = v181;
    v168 = v182;
    v165 = v179;
    v166 = v180;
    v171 = v185;
    v172 = v186;
    v169 = v183;
    v170 = v184;
    v177 = v191;
    v175 = v189;
    v176 = v190;
    v173 = v187;
    v174 = v188;
    v96 = sub_252BB5D44(v129);

    return v96;
  }

  return v46;
}

id sub_252BADB6C()
{
  v1 = v0[3];
  v186 = v0[2];
  v187 = v1;
  v188 = v0[4];
  v2 = v0[1];
  v184 = *v0;
  v185 = v2;
  v3 = *(v0 + 10);
  v4 = *(v0 + 88);
  v5 = *(v0 + 104);
  v6 = *(v0 + 16);
  v183 = *(v0 + 15);
  v181 = v4;
  v182 = v5;
  v7 = *(v0 + 136);
  v8 = *(v0 + 152);
  v9 = *(v0 + 168);
  v10 = *(v0 + 184);
  v180 = *(v0 + 25);
  v179[4] = v9;
  v179[5] = v10;
  v179[2] = v7;
  v179[3] = v8;
  v11 = *(v0 + 208);
  v12 = *(v0 + 209);
  v13 = *(v0 + 225);
  v14 = *(v0 + 31);
  *(v179 + 15) = *(v0 + 30);
  v178 = v12;
  v179[0] = v13;
  v177 = v0[16];
  v15 = *(v0 + 34);
  v16 = (v0 + 280);
  v17 = *(v0 + 296);
  v163 = *(v0 + 280);
  v164 = v17;
  v18 = *(v0 + 312);
  v19 = *(v0 + 328);
  v20 = *(v0 + 360);
  v167 = *(v0 + 344);
  v168 = v20;
  v165 = v18;
  v166 = v19;
  v21 = *(v0 + 376);
  v22 = *(v0 + 392);
  v23 = *(v0 + 424);
  v171 = *(v0 + 408);
  v172 = v23;
  v169 = v21;
  v170 = v22;
  v24 = *(v0 + 440);
  v25 = *(v0 + 456);
  v26 = *(v0 + 488);
  v175 = *(v0 + 472);
  v176 = v26;
  v27 = 0x27F53F000uLL;
  v173 = v24;
  v174 = v25;
  v28 = &off_279711000;
  v86 = v14;
  v87 = v3;
  if (*(v6 + 16))
  {
    v29 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v30 = sub_252E36F04();
    v31 = [v29 initWithIdentifier:0 displayString:v30];

    v32 = v31;
    [v32 setBoolValue_];
    [v32 setType_];

    v33 = objc_allocWithZone(type metadata accessor for HomeUserTask());
    v34 = sub_252E36F04();
    v35 = [v33 initWithIdentifier:0 displayString:v34];

    v36 = v35;
    [v36 setTaskType_];
    [v36 setAttribute_];
    [v36 setValue_];

    v37 = v36;
LABEL_3:

    goto LABEL_4;
  }

  v94 = v0[2];
  v97 = v0[3];
  v100 = v0[4];
  v88 = *v0;
  v91 = v0[1];
  v103 = *(v0 + 88);
  v106 = *(v0 + 104);
  v109 = *(v0 + 15);
  v115 = *(v0 + 152);
  v118 = *(v0 + 168);
  v121 = *(v0 + 184);
  v124 = *(v0 + 25);
  v112 = *(v0 + 136);
  v127 = *(v0 + 209);
  *v130 = *(v0 + 225);
  *&v130[15] = *(v0 + 30);
  v131 = v0[16];
  v45 = *(v0 + 296);
  v134 = *v16;
  v46 = *(v0 + 360);
  v142 = *(v0 + 344);
  v47 = *(v0 + 328);
  v138 = *(v0 + 312);
  v48 = *(v0 + 424);
  v150 = *(v0 + 408);
  v49 = *(v0 + 392);
  v146 = *(v0 + 376);
  v50 = *(v0 + 488);
  v158 = *(v0 + 472);
  v51 = *(v0 + 456);
  v154 = *(v0 + 440);
  v52 = sub_252BB84E8();
  v95 = v0[2];
  v98 = v0[3];
  v101 = v0[4];
  v89 = *v0;
  v92 = v0[1];
  v104 = *(v0 + 88);
  v107 = *(v0 + 104);
  v110 = *(v0 + 15);
  v116 = *(v0 + 152);
  v119 = *(v0 + 168);
  v122 = *(v0 + 184);
  v125 = *(v0 + 25);
  v113 = *(v0 + 136);
  v128 = *(v0 + 209);
  *v130 = *(v0 + 225);
  *&v130[15] = *(v0 + 30);
  v132 = v0[16];
  v53 = *(v0 + 296);
  v135 = *v16;
  v54 = *(v0 + 360);
  v143 = *(v0 + 344);
  v55 = *(v0 + 328);
  v139 = *(v0 + 312);
  v56 = *(v0 + 424);
  v151 = *(v0 + 408);
  v57 = *(v0 + 392);
  v147 = *(v0 + 376);
  v58 = *(v0 + 488);
  v159 = *(v0 + 472);
  v59 = *(v0 + 456);
  v155 = *(v0 + 440);
  v60 = v52;
  v85 = sub_252BB776C(v52);
  v96 = v0[2];
  v99 = v0[3];
  v102 = v0[4];
  v90 = *v0;
  v93 = v0[1];
  v105 = *(v0 + 88);
  v108 = *(v0 + 104);
  v111 = *(v0 + 15);
  v117 = *(v0 + 152);
  v120 = *(v0 + 168);
  v123 = *(v0 + 184);
  v126 = *(v0 + 25);
  v114 = *(v0 + 136);
  v129 = *(v0 + 209);
  *v130 = *(v0 + 225);
  *&v130[15] = *(v0 + 30);
  v133 = v0[16];
  v136 = *v16;
  v137 = *(v0 + 296);
  v144 = *(v0 + 344);
  v145 = *(v0 + 360);
  v140 = *(v0 + 312);
  v141 = *(v0 + 328);
  v152 = *(v0 + 408);
  v153 = *(v0 + 424);
  v148 = *(v0 + 376);
  v149 = *(v0 + 392);
  v160 = *(v0 + 472);
  v161 = *(v0 + 488);
  v156 = *(v0 + 440);
  v157 = *(v0 + 456);
  v61 = sub_252BBB45C(v60);
  v84 = type metadata accessor for HomeUserTask();
  v62 = objc_allocWithZone(v84);
  v63 = sub_252E36F04();
  v64 = [v62 initWithIdentifier:0 displayString:v63];

  v65 = v64;
  [v65 setTaskType_];
  [v65 setAttribute_];
  [v65 setValue_];

  v66 = qword_27F53F4F8;
  v37 = v65;
  if (v66 != -1)
  {
    swift_once();
  }

  v67 = sub_252E36AD4();
  __swift_project_value_buffer(v67, qword_27F544D90);
  sub_252E379F4();

  v68 = [v37 description];
  v69 = sub_252E36F34();
  v71 = v70;

  MEMORY[0x2530AD570](v69, v71);

  MEMORY[0x2530AD570](32, 0xE100000000000000);
  sub_252CC3D90(0xD000000000000022, 0x8000000252E85A10, 0xD00000000000007ALL, 0x8000000252E85990);

  v72 = [v37 taskType];

  if (v72 != 1)
  {
    v27 = 0x27F53F000;
    goto LABEL_14;
  }

  v73 = [v37 value];
  if (v73)
  {
    v27 = 0x27F53F000;
LABEL_12:

    goto LABEL_14;
  }

  v27 = 0x27F53F000;
  if (v11 == 9 && [v37 attribute] != 27)
  {
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v75 = v37;
    sub_252D6CA80(v75)[2] = 4;
    v37 = sub_252D6CB58();

    v73 = v75;
    goto LABEL_12;
  }

LABEL_14:
  if (sub_2529A6F1C(62, v87) && [v37 attribute] == 27)
  {
    v74 = [v37 value];
    if (v74)
    {
    }

    else if (v11 == 9 || v86 || v15)
    {
      v77 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v78 = sub_252E36F04();
      v79 = [v77 initWithIdentifier:0 displayString:v78];

      v80 = v79;
      [v80 setBoolValue_];
      [v80 setType_];

      v81 = objc_allocWithZone(v84);
      v82 = sub_252E36F04();
      v83 = [v81 initWithIdentifier:0 displayString:v82];

      v36 = v83;
      [v36 setTaskType_];
      [v36 setAttribute_];
      [v36 setValue_];

      v37 = v36;
      v28 = &off_279711000;
      goto LABEL_3;
    }
  }

  if ([v37 attribute] == 27)
  {
    v76 = [v37 value];
    v28 = &off_279711000;
    if (v76)
    {
      v36 = v76;
      goto LABEL_3;
    }

    if (v11 == 9)
    {
      type metadata accessor for MutableHomeUserTask();
      swift_allocObject();
      v36 = v37;
      sub_252D6CA80(v36)[2] = 6;
      v37 = sub_252D6CB58();

      goto LABEL_3;
    }
  }

  else
  {
    v28 = &off_279711000;
  }

LABEL_4:
  if (*(v27 + 1272) != -1)
  {
    swift_once();
  }

  v38 = sub_252E36AD4();
  __swift_project_value_buffer(v38, qword_27F544D90);
  sub_252E379F4();

  strcpy(v162, "Created task ");
  HIWORD(v162[1]) = -4864;
  v39 = [v37 v28[204]];
  v40 = sub_252E36F34();
  v42 = v41;

  MEMORY[0x2530AD570](v40, v42);

  MEMORY[0x2530AD570](0x496C6E20726F6620, 0xEE0020746E65746ELL);
  v43 = HomeAutomationIntent.description.getter();
  MEMORY[0x2530AD570](v43);

  sub_252CC3D90(v162[0], v162[1], 0xD00000000000007ALL, 0x8000000252E85990);

  return v37;
}

uint64_t sub_252BAE648(uint64_t a1, uint64_t a2)
{
  v3[29] = a1;
  v3[30] = a2;
  v4 = sub_252E35BD4();
  v3[31] = v4;
  v5 = *(v4 - 8);
  v3[32] = v5;
  v6 = *(v5 + 64) + 15;
  v3[33] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A40, &qword_252E50390);
  v3[34] = v7;
  v8 = *(v7 - 8);
  v3[35] = v8;
  v9 = *(v8 + 64) + 15;
  v3[36] = swift_task_alloc();
  v10 = sub_252E32E04();
  v3[37] = v10;
  v11 = *(v10 - 8);
  v3[38] = v11;
  v12 = *(v11 + 64) + 15;
  v3[39] = swift_task_alloc();
  v13 = sub_252E32FF4();
  v3[40] = v13;
  v14 = *(v13 - 8);
  v3[41] = v14;
  v15 = *(v14 + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v16 = sub_252E33044();
  v3[44] = v16;
  v17 = *(v16 - 8);
  v3[45] = v17;
  v18 = *(v17 + 64) + 15;
  v3[46] = swift_task_alloc();
  v19 = *(*(sub_252E32F04() - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v20 = sub_252E35C24();
  v3[50] = v20;
  v21 = *(v20 - 8);
  v3[51] = v21;
  v22 = *(v21 + 64) + 15;
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v23 = swift_task_alloc();
  v24 = *(v2 + 16);
  v3[54] = v23;
  v3[55] = v24;

  return MEMORY[0x2822009F8](sub_252BAE94C, 0, 0);
}

uint64_t sub_252BAE94C()
{
  v1 = *(v0 + 440);
  if (v1)
  {
    v2 = qword_27F53F4B0;
    v3 = *(v0 + 440);

    if (v2 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 432);
    v5 = *(v0 + 400);
    v6 = *(v0 + 408);
    v7 = sub_252E36AD4();
    *(v0 + 448) = __swift_project_value_buffer(v7, qword_27F544CB8);
    sub_252E379F4();

    *(v0 + 200) = v1;
    *(v0 + 456) = sub_252E35DD4();
    *(v0 + 464) = sub_252BBF590(&qword_27F543A48, MEMORY[0x277D56498]);
    v8 = sub_252E37D94();
    MEMORY[0x2530AD570](v8);

    sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E85FA0, 0xD00000000000007ALL, 0x8000000252E85990);

    *(v0 + 504) = *MEMORY[0x277D56158];
    v9 = *(v6 + 104);
    *(v0 + 472) = v9;
    *(v0 + 480) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v9(v4);
    v10 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v10 + 240), v0 + 16);

    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
    v13 = *(v12 + 8);
    v29 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    *(v0 + 488) = v15;
    *v15 = v0;
    v15[1] = sub_252BAECD4;

    return v29(v11, v12);
  }

  else
  {
    v18 = *(v0 + 424);
    v17 = *(v0 + 432);
    v19 = *(v0 + 416);
    v21 = *(v0 + 384);
    v20 = *(v0 + 392);
    v23 = *(v0 + 368);
    v22 = *(v0 + 376);
    v25 = *(v0 + 336);
    v24 = *(v0 + 344);
    v26 = *(v0 + 312);
    v28 = *(v0 + 288);
    v30 = *(v0 + 264);

    v27 = *(v0 + 8);

    return v27(0);
  }
}

uint64_t sub_252BAECD4(uint64_t a1)
{
  v2 = *(*v1 + 488);
  v4 = *v1;
  *(*v1 + 496) = a1;

  return MEMORY[0x2822009F8](sub_252BAEDD4, 0, 0);
}

uint64_t sub_252BAEDD4()
{
  v1 = *(v0 + 496);
  if (v1)
  {
    v3 = *(v0 + 472);
    v2 = *(v0 + 480);
    v4 = *(v0 + 504);
    v6 = *(v0 + 424);
    v5 = *(v0 + 432);
    v7 = *(v0 + 400);
    v8 = *(v0 + 408);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    [v1 lat];
    v10 = v9;

    (*(v8 + 8))(v5, v7);
    if (v10 <= 0.0)
    {
      v11 = v4;
    }

    else
    {
      v11 = *MEMORY[0x277D56150];
    }

    v3(v6, v11, v7);
    (*(v8 + 32))(v5, v6, v7);
  }

  else
  {
    v12 = *(v0 + 448);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    sub_252CC4050(0xD000000000000031, 0x8000000252E85FC0, 0xD00000000000007ALL, 0x8000000252E85990, 0xD00000000000001ELL, 0x8000000252E86000, 928);
  }

  v13 = *(v0 + 408);
  v14 = *(v0 + 392);
  v93 = *(v0 + 400);
  v96 = *(v0 + 432);
  v16 = *(v0 + 376);
  v15 = *(v0 + 384);
  v17 = *(v0 + 368);
  v89 = *(v0 + 344);
  v90 = *(v0 + 416);
  v18 = *(v0 + 304);
  v99 = *(v0 + 312);
  v103 = *(v0 + 296);
  v116 = *(v0 + 288);
  v118 = *(v0 + 440);
  v91 = *(v0 + 240);
  v107 = *(v0 + 264);
  v111 = *(v0 + 232);
  v19 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v19 + 16), v0 + 56);

  v20 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_252E33844();
  v21 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v21 + 16), v0 + 96);

  v22 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  sub_252E33844();
  v23 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v23 + 16), v0 + 136);

  v24 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  sub_252E33844();
  sub_252E33034();
  (*(v13 + 16))(v90, v96, v93);
  sub_252E32FC4();
  (*(v18 + 16))(v99, v91, v103);
  v25 = sub_252E35C44();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_252E35C34();
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  sub_252E35BC4();
  sub_252E35BB4();
  v28 = *(v0 + 280);
  v29 = *(v0 + 288);
  v30 = *(v0 + 272);
  (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
  v31 = (*(v28 + 88))(v29, v30);
  if (v31 == *MEMORY[0x277D56080])
  {
    v32 = *(v0 + 456);
    v33 = *(v0 + 464);
    v120 = *(v0 + 448);
    v104 = *(v0 + 408);
    v108 = *(v0 + 400);
    v112 = *(v0 + 432);
    v35 = *(v0 + 360);
    v34 = *(v0 + 368);
    v36 = *(v0 + 344);
    v97 = *(v0 + 440);
    v100 = *(v0 + 352);
    v37 = *(v0 + 328);
    v38 = *(v0 + 336);
    v39 = *(v0 + 288);
    v94 = *(v0 + 320);
    (*(*(v0 + 280) + 96))(v39, *(v0 + 272));
    v40 = *v39;
    sub_252E379F4();

    *(v0 + 224) = v40;
    v41 = sub_252E37D94();
    MEMORY[0x2530AD570](v41);

    sub_252CC3D90(0xD000000000000012, 0x8000000252E860E0, 0xD00000000000007ALL, 0x8000000252E85990);

    sub_252E32FC4();
    sub_252E32FC4();
    sub_252E32FD4();
    v42 = *(v37 + 8);
    v42(v38, v94);
    v119 = sub_252E35D94();

    (*(v35 + 8))(v34, v100);
    v42(v36, v94);
    (*(v104 + 8))(v112, v108);
    goto LABEL_14;
  }

  if (v31 == *MEMORY[0x277D56068])
  {
    v43 = *(v0 + 456);
    v44 = *(v0 + 464);
    v121 = *(v0 + 448);
    v109 = *(v0 + 400);
    v113 = *(v0 + 432);
    v45 = *(v0 + 368);
    v95 = *(v0 + 360);
    v98 = *(v0 + 440);
    v46 = *(v0 + 344);
    v101 = *(v0 + 352);
    v105 = *(v0 + 408);
    v47 = *(v0 + 328);
    v48 = *(v0 + 336);
    v49 = *(v0 + 288);
    v92 = *(v0 + 320);
    (*(*(v0 + 280) + 96))(v49, *(v0 + 272));
    v50 = *v49;
    sub_252E379F4();

    *(v0 + 216) = v50;
    v51 = sub_252E37D94();
    MEMORY[0x2530AD570](v51);

    MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E86100);
    sub_252CC3D90(0xD000000000000012, 0x8000000252E860E0, 0xD00000000000007ALL, 0x8000000252E85990);

    sub_252E32FC4();
    sub_252E32FC4();
    sub_252E32FD4();
    v52 = *(v47 + 8);
    v52(v48, v92);
    v119 = sub_252E35D94();

    (*(v95 + 8))(v45, v101);
    v52(v46, v92);
    (*(v105 + 8))(v113, v109);
    goto LABEL_14;
  }

  if (v31 != *MEMORY[0x277D56070])
  {
    if (v31 != *MEMORY[0x277D56078])
    {
      v84 = *(v0 + 440);
      v85 = *(v0 + 280);
      v86 = *(v0 + 288);
      v87 = *(v0 + 272);
      (*(*(v0 + 408) + 8))(*(v0 + 432), *(v0 + 400));

      (*(v85 + 8))(v86, v87);
LABEL_8:
      v119 = 0;
      goto LABEL_14;
    }

    v80 = *(v0 + 440);
    v79 = *(v0 + 448);
    v81 = *(v0 + 432);
    v83 = *(v0 + 400);
    v82 = *(v0 + 408);
    sub_252CC3D90(0xD000000000000022, 0x8000000252E86060, 0xD00000000000007ALL, 0x8000000252E85990);

LABEL_29:

    (*(v82 + 8))(v81, v83);
    goto LABEL_8;
  }

  v65 = *(v0 + 448);
  v66 = *(v0 + 456);
  v67 = *(v0 + 288);
  (*(*(v0 + 280) + 96))(v67, *(v0 + 272));
  v68 = *v67;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E86090);
  v69 = MEMORY[0x2530AD730](v68, v66);
  MEMORY[0x2530AD570](v69);

  MEMORY[0x2530AD570](0xD00000000000002FLL, 0x8000000252E860B0);
  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ALL, 0x8000000252E85990);

  if (v68 >> 62)
  {
    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_20;
    }

    goto LABEL_28;
  }

  result = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_28:
    v81 = *(v0 + 432);
    v88 = *(v0 + 440);
    v83 = *(v0 + 400);
    v82 = *(v0 + 408);

    goto LABEL_29;
  }

LABEL_20:
  if ((v68 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2530ADF00](0, v68);
  }

  else
  {
    if (!*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v70 = *(v68 + 32);
  }

  v71 = *(v0 + 408);
  v110 = *(v0 + 400);
  v115 = *(v0 + 432);
  v72 = *(v0 + 360);
  v73 = *(v0 + 368);
  v74 = *(v0 + 344);
  v102 = *(v0 + 440);
  v106 = *(v0 + 352);
  v76 = *(v0 + 328);
  v75 = *(v0 + 336);
  v77 = *(v0 + 320);

  sub_252E32FC4();
  sub_252E32FC4();
  sub_252E32FD4();
  v78 = *(v76 + 8);
  v78(v75, v77);
  v119 = sub_252E35D94();

  (*(v72 + 8))(v73, v106);
  v78(v74, v77);
  (*(v71 + 8))(v115, v110);
LABEL_14:
  v54 = *(v0 + 424);
  v53 = *(v0 + 432);
  v55 = *(v0 + 416);
  v57 = *(v0 + 384);
  v56 = *(v0 + 392);
  v59 = *(v0 + 368);
  v58 = *(v0 + 376);
  v61 = *(v0 + 336);
  v60 = *(v0 + 344);
  v62 = *(v0 + 312);
  v114 = *(v0 + 288);
  v117 = *(v0 + 264);

  v63 = *(v0 + 8);

  return v63(v119);
}

BOOL sub_252BAF91C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_14:
  v3 = sub_252E378C4();
  if (!v3)
  {
    return 0;
  }

LABEL_3:
  v4 = 0;
  do
  {
    v5 = v3 != v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2530ADF00](v4, a2);
      if (__OFADD__(v4, 1))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v6 = *(a2 + 8 * v4 + 32);
      if (__OFADD__(v4, 1))
      {
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    v7 = v6;
    swift_getAtKeyPath();

    ++v4;
  }

  while (!v9);
  return v5;
}

uint64_t sub_252BAFA20(id a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_16:
  v4 = sub_252E378C4();
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = 0;
  do
  {
    v6 = v4 != v5;
    if (v4 == v5)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2530ADF00](v5, a2);
    }

    else
    {
      if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v7 = *(a2 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if ([v7 deviceType] == a1)
    {

      return 1;
    }

    v9 = [v8 outerDeviceType];

    ++v5;
  }

  while (v9 != a1);
  return v6;
}

uint64_t sub_252BAFB3C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return 1;
  }

LABEL_14:
  v2 = sub_252E378C4();
  if (!v2)
  {
    return 1;
  }

LABEL_3:
  v3 = 0;
  do
  {
    v4 = v2 == v3;
    if (v2 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x2530ADF00](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v7 = sub_252A20088();

    ++v3;
  }

  while ((v7 & 1) != 0);
  return v4;
}

uint64_t sub_252BAFC18(id *a1)
{
  v1 = a1;
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_61;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return 0;
  }

LABEL_3:
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = v1 & 0xFFFFFFFFFFFFFF8;
  v7 = &off_279711000;
  while (v3 != v4)
  {
    if (v5)
    {
      v8 = MEMORY[0x2530ADF00](v4, v1);
    }

    else
    {
      if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v8 = *(v1 + 8 * v4 + 32);
    }

    v9 = v8;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      v3 = sub_252E378C4();
      if (!v3)
      {
        return 0;
      }

      goto LABEL_3;
    }

    v10 = [v8 deviceType];

    ++v4;
    if (v10)
    {
      goto LABEL_17;
    }
  }

  type metadata accessor for HomeStore();
  v11 = static HomeStore.shared.getter();
  if (v2)
  {
    type metadata accessor for HomeFilter();

    v2 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for HomeFilter();
    v2 = v1;
  }

  v4 = HomeStore.services(matching:supporting:)(v2, 0);
  v9 = v12;

  if (v9)
  {
    sub_252929F10(v4, 1);
LABEL_17:
    if (v5)
    {
      goto LABEL_64;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(v1 + 32);
      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {
    v9 = v4 & 0xFFFFFFFFFFFFFF8;
    if (!(v4 >> 62))
    {
      v38 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v38)
      {
LABEL_67:
        sub_252929F10(v4, 0);
        return 0;
      }

      goto LABEL_32;
    }
  }

  result = sub_252E378C4();
  v38 = result;
  if (!result)
  {
    goto LABEL_67;
  }

LABEL_32:
  v36 = v9;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x2530ADF00](0, v4);
  }

  else
  {
    if (!*(v9 + 16))
    {
      __break(1u);
      return result;
    }

    v37 = *(v4 + 32);
  }

  v6 = 0;
  v21 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
  v7 = &off_279711000;
  while (1)
  {
    if (v38 == v6)
    {
      sub_252929F10(v4, 0);
      v35 = sub_252CD941C();

      return v35;
    }

    if ((v4 & 0xC000000000000001) == 0)
    {
      break;
    }

    v2 = MEMORY[0x2530ADF00](v6, v4);
    if (__OFADD__(v6, 1))
    {
      goto LABEL_60;
    }

LABEL_45:
    v23 = [*&v2[OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate] v7[202]];
    v24 = sub_252E36F34();
    v26 = v25;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v27 = off_27F546230;
    if (*(off_27F546230 + 2) && (v28 = sub_252A44A10(v24, v26), (v29 & 1) != 0))
    {
      v1 = *(v27[7] + 8 * v28);
    }

    else
    {
      v1 = 0;
    }

    v3 = v7;
    v30 = [*(v37 + v21) v7[202]];
    v5 = sub_252E36F34();
    v32 = v31;

    if (v27[2] && (v33 = sub_252A44A10(v5, v32), (v34 & 1) != 0))
    {
      v22 = *(v27[7] + 8 * v33);
    }

    else
    {
      v22 = 0;
    }

    v7 = v3;

    ++v6;
    if (v1 != v22)
    {
      sub_252929F10(v4, 0);

      return 0;
    }
  }

  if (v6 < *(v36 + 16))
  {
    v2 = *(v4 + 8 * v6 + 32);

    if (__OFADD__(v6, 1))
    {
      goto LABEL_60;
    }

    goto LABEL_45;
  }

  __break(1u);
LABEL_64:
  v14 = MEMORY[0x2530ADF00](0, v1);
LABEL_20:
  v15 = v14;
  for (i = 0; v3 != i; ++i)
  {
    if (v5)
    {
      v17 = MEMORY[0x2530ADF00](i, v1);
    }

    else
    {
      if (i >= *(v6 + 16))
      {
        goto LABEL_59;
      }

      v17 = *(v1 + 8 * i + 32);
    }

    v18 = v17;
    if (__OFADD__(i, 1))
    {
      goto LABEL_58;
    }

    v2 = [v17 v7[218]];
    v19 = [v15 v7[218]];

    if (v2 != v19)
    {

      return 0;
    }
  }

  v20 = [v15 v7[218]];

  return v20;
}

uint64_t sub_252BB00B0(uint64_t a1)
{
  v2 = sub_252CC5CF8(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  v4 = (a1 + 32);
  while (1)
  {
    v6 = *v4++;
    v5 = v6;
    v7 = v2[2];
    if (v7)
    {
      v8 = sub_252A488EC(v5);
      if (v9)
      {
        v7 = *(v2[7] + 8 * v8);
      }

      else
      {
        v7 = 0;
      }
    }

    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_252A488EC(v5);
    v14 = v2[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_22;
    }

    v18 = v13;
    if (v2[3] >= v17)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      v22 = v12;
      sub_252E03770();
      v12 = v22;
      if (v18)
      {
        goto LABEL_3;
      }

LABEL_15:
      v2[(v12 >> 6) + 8] |= 1 << v12;
      *(v2[6] + 8 * v12) = v5;
      *(v2[7] + 8 * v12) = v10;
      v20 = v2[2];
      v16 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v21;
      if (!--v3)
      {
        return v2;
      }
    }

    else
    {
      sub_252DFF6F4(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_252A488EC(v5);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_24;
      }

LABEL_14:
      if ((v18 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_3:
      *(v2[7] + 8 * v12) = v10;
      if (!--v3)
      {
        return v2;
      }
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_252E37E24();
  __break(1u);
  return result;
}

unint64_t sub_252BB024C(unint64_t a1, void *a2)
{
  v5 = sub_252E32A64();
  v123 = *(v5 - 8);
  v6 = *(v123 + 64);
  MEMORY[0x28223BE20](v5);
  v122 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_252E32E84();
  v132 = *(v137 - 8);
  v8 = *(v132 + 8);
  v9 = MEMORY[0x28223BE20](v137);
  v136 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v135 = &v118 - v11;
  memcpy(v141, v2, sizeof(v141));
  if (sub_252BB6A08(a2))
  {
    v119 = a2;
    v120 = v5;
    v12 = type metadata accessor for HomeStore();
    v13 = static HomeStore.shared.getter();
    v14 = sub_2529F744C(a1);

    v133 = v14;
    if (v14)
    {
      v124 = v12;
      v15 = static HomeStore.shared.getter();
      v16 = sub_2529D9884();

      v130 = a1;
      if (v16 >> 62)
      {
        v17 = sub_252E378C4();
        if (v17)
        {
LABEL_5:
          v18 = 0;
          a1 = 0;
          v138 = (v16 & 0xFFFFFFFFFFFFFF8);
          v139 = v16 & 0xC000000000000001;
          while (1)
          {
            if (v139)
            {
              v20 = MEMORY[0x2530ADF00](v18, v16);
              v21 = v18 + 1;
              if (__OFADD__(v18, 1))
              {
LABEL_14:
                __break(1u);
                goto LABEL_15;
              }
            }

            else
            {
              if (v18 >= v138[2])
              {
                __break(1u);
LABEL_31:
                __break(1u);
                goto LABEL_32;
              }

              v19 = *(v16 + 8 * v18 + 32);

              v21 = v18 + 1;
              if (__OFADD__(v18, 1))
              {
                goto LABEL_14;
              }
            }

            v22 = v20;
            v23 = sub_2529A2A0C();
            v141[0] = v133;
            MEMORY[0x28223BE20](v23);
            *(&v118 - 2) = v141;
            v24 = sub_252A00B58(sub_2529E963C, (&v118 - 4), v23);

            if (v24)
            {
              break;
            }

            ++v18;
            if (v21 == v17)
            {
              goto LABEL_34;
            }
          }

          v139 = v22;

          v28 = static HomeStore.shared.getter();
          a1 = sub_2529D8DC0();

          if (!(a1 >> 62))
          {
            v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v30 = v139;
            if (v29)
            {
              goto LABEL_19;
            }

LABEL_44:

            v34 = 0;
            goto LABEL_45;
          }

          v29 = sub_252E378C4();
          v30 = v139;
          if (!v29)
          {
            goto LABEL_44;
          }

LABEL_19:
          v31 = 0;
          while (2)
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v32 = MEMORY[0x2530ADF00](v31, a1);
              v33 = v31 + 1;
              if (__OFADD__(v31, 1))
              {
                break;
              }

              goto LABEL_23;
            }

            if (v31 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v32 = *(a1 + 8 * v31 + 32);

            v33 = v31 + 1;
            if (!__OFADD__(v31, 1))
            {
LABEL_23:
              if (sub_2529E7DBC(v30))
              {
                goto LABEL_29;
              }

              ++v31;
              v30 = v139;
              if (v33 == v29)
              {
                goto LABEL_44;
              }

              continue;
            }

            break;
          }

          __break(1u);
LABEL_29:

          v34 = v32;
LABEL_45:
          v38 = static HomeStore.shared.getter();
          v39 = sub_2529D984C();

          v141[0] = MEMORY[0x277D84F90];
          if (v39 >> 62)
          {
            goto LABEL_126;
          }

          v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          while (2)
          {
            v121 = v34;
            if (!v40)
            {
              v58 = MEMORY[0x277D84F90];
              v59 = MEMORY[0x277D84F90];
              goto LABEL_71;
            }

            v41 = 0;
            v134 = OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate;
            v128 = v39 & 0xFFFFFFFFFFFFFF8;
            v129 = v39 & 0xC000000000000001;
            v126 = v39;
            v127 = v39 + 32;
            v34 = v132 + 8;
            v125 = v40;
LABEL_51:
            if (!v129)
            {
              if (v41 < *(v128 + 16))
              {
                v42 = *(v127 + 8 * v41);

                v43 = __OFADD__(v41, 1);
                v44 = (v41 + 1);
                if (!v43)
                {
                  goto LABEL_54;
                }

LABEL_121:
                __break(1u);
              }

              __break(1u);
LABEL_123:
              __break(1u);
LABEL_124:
              __break(1u);
LABEL_125:
              __break(1u);
LABEL_126:
              v40 = sub_252E378C4();
              continue;
            }

            break;
          }

          v42 = MEMORY[0x2530ADF00](v41, v39);
          v43 = __OFADD__(v41, 1);
          v44 = (v41 + 1);
          if (v43)
          {
            goto LABEL_121;
          }

LABEL_54:
          v45 = [*(v42 + OBJC_IVAR____TtC22HomeAutomationInternal4Zone_delegate) rooms];
          sub_252BBF4DC();
          v46 = sub_252E37264();

          v131 = v42;
          v132 = v44;
          v138 = (v46 & 0xFFFFFFFFFFFFFF8);
          if (v46 >> 62)
          {
            v39 = sub_252E378C4();
          }

          else
          {
            v39 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v47 = 0;
          do
          {
            if (v39 == v47)
            {

              goto LABEL_50;
            }

            if ((v46 & 0xC000000000000001) != 0)
            {
              v48 = MEMORY[0x2530ADF00](v47, v46);
            }

            else
            {
              if (v47 >= v138[2])
              {
                goto LABEL_120;
              }

              v48 = *(v46 + 8 * v47 + 32);
            }

            v49 = v48;
            if (__OFADD__(v47, 1))
            {
              __break(1u);
LABEL_120:
              __break(1u);
              goto LABEL_121;
            }

            v50 = [v48 uniqueIdentifier];
            v51 = v135;
            sub_252E32E64();

            v52 = [*(v139 + v134) uniqueIdentifier];
            v53 = v136;
            sub_252E32E64();

            LOBYTE(v52) = sub_252E32E54();
            v54 = *v34;
            v55 = v53;
            v56 = v137;
            (*v34)(v55, v137);
            v54(v51, v56);
            ++v47;
          }

          while ((v52 & 1) == 0);

          sub_252E37A94();
          v57 = *(v141[0] + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
LABEL_50:
          v39 = v126;
          v41 = v132;
          if (v132 != v125)
          {
            goto LABEL_51;
          }

          v58 = v141[0];
          v34 = v121;
          v59 = MEMORY[0x277D84F90];
LABEL_71:

          if (qword_27F53F4B0 != -1)
          {
            swift_once();
          }

          v60 = sub_252E36AD4();
          v61 = __swift_project_value_buffer(v60, qword_27F544CB8);
          v141[0] = 0;
          v141[1] = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E86240);
          v140 = v34;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542190, "p%\a");
          v62 = sub_252E36F94();
          MEMORY[0x2530AD570](v62);

          MEMORY[0x2530AD570](0x3A73656E6F5A202CLL, 0xE900000000000020);
          v63 = type metadata accessor for Zone();
          v64 = MEMORY[0x2530AD730](v58, v63);
          MEMORY[0x2530AD570](v64);

          MEMORY[0x2530AD570](0x3A6D6F6F52202CLL, 0xE700000000000000);
          v65 = v139;
          v66 = sub_2529A30FC();
          MEMORY[0x2530AD570](v66);

          v118 = "esult";
          v125 = v61;
          sub_252CC3D90(v141[0], v141[1], 0xD00000000000007ALL, 0x8000000252E85990);

          v67 = *(v65 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
          v68 = *(v65 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
          v131 = (v65 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
          v141[0] = v67;
          v141[1] = v68;

          v69 = v122;
          sub_252E329F4();
          sub_252947DBC();
          v70 = sub_252E377A4();
          v72 = v71;
          (*(v123 + 8))(v69, v120);

          v73 = HIBYTE(v72) & 0xF;
          if ((v72 & 0x2000000000000000) == 0)
          {
            v73 = v70 & 0xFFFFFFFFFFFFLL;
          }

          if (v73)
          {
            v140 = v59;
            v39 = v130;
            if (v130 >> 62)
            {
              v74 = sub_252E378C4();
            }

            else
            {
              v74 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v75 = v58;
            if (v74)
            {
              if (v58 < 0 || (v58 & 0x4000000000000000) != 0)
              {
                v117 = sub_252E378C4();
                v75 = v58;
                v76 = v117;
              }

              else
              {
                v76 = *(v58 + 16);
              }

              v77 = 0;
              v128 = v74;
              v129 = v39 & 0xC000000000000001;
              v126 = v39 + 32;
              v127 = v39 & 0xFFFFFFFFFFFFFF8;
              v135 = (v75 & 0xC000000000000001);
              v136 = v75;
              v137 = v76;
              do
              {
                if (v129)
                {
                  v79 = v75;
                  v80 = MEMORY[0x2530ADF00](v77, v39);
                }

                else
                {
                  if (v77 >= *(v127 + 16))
                  {
                    goto LABEL_125;
                  }

                  v79 = v75;
                  v80 = *(v126 + 8 * v77);
                }

                v81 = v80;
                v43 = __OFADD__(v77, 1);
                v82 = v77 + 1;
                if (v43)
                {
                  goto LABEL_123;
                }

                v134 = v82;
                v141[0] = v59;
                type metadata accessor for HomeFilter.Builder();
                v83 = swift_allocObject();
                *(v83 + 16) = 0;
                *(v83 + 24) = 0;
                *(v83 + 32) = 0;
                *(v83 + 40) = 7;
                *(v83 + 48) = 0u;
                *(v83 + 64) = 0u;
                *(v83 + 80) = 0u;
                *(v83 + 96) = 0u;
                *(v83 + 112) = 0u;
                *(v83 + 128) = 0u;
                *(v83 + 144) = 0u;
                *(v83 + 160) = 0u;
                *(v83 + 175) = 0;
                v84 = v81;
                v85 = sub_252B72040(v81);

                v132 = v84;

                v86 = *v131;
                v87 = v131[1];
                v88 = *(*v85 + 680);

                v89 = v88(v86, v87);

                if (v34)
                {
                  v90 = *&v34[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
                  v39 = *&v34[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8];
                }

                else
                {
                  v90 = 0;
                  v39 = 0;
                }

                v91 = v137;
                v138 = (*(*v89 + 632))(v90, v39);

                v77 = v134;
                if (v91)
                {
                  if (v91 < 1)
                  {
                    goto LABEL_124;
                  }

                  v92 = v79;
                  v93 = 0;
                  v94 = *(*v138 + 768);
                  do
                  {
                    if (v135)
                    {
                      v95 = MEMORY[0x2530ADF00](v93, v92);
                    }

                    else
                    {
                      v95 = *&v92[8 * v93 + 32];
                    }

                    v96 = v94();
                    v97 = *(v95 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
                    v98 = *(v95 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
                    v99 = *(*v96 + 648);

                    v100 = v99(v97, v98);

                    (*(*v100 + 760))(v101);

                    MEMORY[0x2530AD700](v102);
                    if (*((v141[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v141[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_252E372A4();
                    }

                    ++v93;
                    sub_252E372D4();

                    v92 = v136;
                  }

                  while (v137 != v93);
                  v78 = v141[0];
                  v34 = v121;
                  v59 = MEMORY[0x277D84F90];
                  v77 = v134;
                }

                else
                {
                  v78 = v59;
                  v92 = v79;
                }

                v39 = v130;
                v103 = v92;
                if (v78 >> 62)
                {
                  v105 = v78;
                  v106 = sub_252E378C4();
                  v78 = v105;
                  if (!v106)
                  {
LABEL_106:
                    (*(*v138 + 760))();
                    MEMORY[0x2530AD700]();
                    if (*((v141[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v141[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      v104 = *((v141[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                      sub_252E372A4();
                    }

                    sub_252E372D4();
                    v78 = v141[0];
                    v39 = v130;
                  }
                }

                else if (!*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_106;
                }

                sub_25297A8D8(v78);

                v75 = v103;
              }

              while (v77 != v128);
            }

            v107 = static HomeStore.shared.getter();
            v108 = v140;
            v109 = HomeStore.accessories(matching:supporting:)(v140, v119);
            v111 = v110;

            if (v111)
            {
              sub_252929F10(v109, 1);
              v112 = v118;
            }

            else
            {
              v112 = v118;
              if (v109 >> 62)
              {
                v113 = sub_252E378C4();
              }

              else
              {
                v113 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              sub_252929F10(v109, 0);
              if (v113)
              {
                v141[0] = 0;
                v141[1] = 0xE000000000000000;
                sub_252E379F4();

                v141[0] = 0xD00000000000001ALL;
                v141[1] = 0x8000000252E862C0;
                v114 = type metadata accessor for HomeFilter();

                v116 = MEMORY[0x2530AD730](v115, v114);
                MEMORY[0x2530AD570](v116);

                sub_252CC3D90(v141[0], v141[1], 0xD00000000000007ALL, v112 | 0x8000000000000000);

                return v108;
              }
            }

            sub_252CC3D90(0xD00000000000003FLL, 0x8000000252E86280, 0xD00000000000007ALL, v112 | 0x8000000000000000);
          }

          else
          {
          }

          a1 = v130;
          goto LABEL_38;
        }
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_5;
        }
      }

LABEL_34:

      a1 = v130;
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v35 = sub_252E36AD4();
    __swift_project_value_buffer(v35, qword_27F544CB8);
    sub_252CC4050(0xD000000000000064, 0x8000000252E86180, 0xD00000000000007ALL, 0x8000000252E85990, 0xD000000000000020, 0x8000000252E861F0, 586);
LABEL_38:
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v36 = sub_252E36AD4();
    __swift_project_value_buffer(v36, qword_27F544CB8);
    v26 = "cation(to:with:)";
    v27 = 0xD00000000000001ALL;
    goto LABEL_41;
  }

LABEL_15:
  if (qword_27F53F4B0 != -1)
  {
LABEL_32:
    swift_once();
  }

  v25 = sub_252E36AD4();
  __swift_project_value_buffer(v25, qword_27F544CB8);
  v26 = ", but should confirm";
  v27 = 0xD000000000000059;
LABEL_41:
  sub_252CC3D90(v27, v26 | 0x8000000000000000, 0xD00000000000007ALL, 0x8000000252E85990);

  return a1;
}

void *sub_252BB1378(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5415C8, &qword_252E40550);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v70 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543728, &qword_252E4DBE8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v70 - v8;
  v10 = sub_252E32BA4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = MEMORY[0x28223BE20](v13);
  v15 = MEMORY[0x28223BE20](v14);
  v16 = MEMORY[0x28223BE20](v15);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v70 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v70 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v29 = &v70 - v28;
  if (!a1)
  {
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v34 = sub_252E36AD4();
    __swift_project_value_buffer(v34, qword_27F544C40);
    sub_252CC3D90(0xD000000000000018, 0x8000000252E85F60, 0xD00000000000007ALL, 0x8000000252E85990);
    return 0;
  }

  v71 = v24;
  v72 = v27;
  v73 = v26;
  v70 = v25;
  v30 = v23;
  v31 = a1;
  v32 = [v31 frequency];
  v74 = v31;
  v75 = v11;
  if (v32 == 3)
  {
    v33 = 127;
  }

  else
  {
    v35 = [v31 weeklyRecurrenceDays];
    v33 = v35;
    if ((v35 & 0x40) == 0)
    {
      v36 = MEMORY[0x277D84F90];
      if ((v35 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }
  }

  v37 = sub_252E32FF4();
  (*(*(v37 - 8) + 56))(v9, 1, 1, v37);
  v38 = sub_252E33044();
  (*(*(v38 - 8) + 56))(v5, 1, 1, v38);
  sub_252E32B94();
  v36 = sub_2529F8F40(0, 1, 1, MEMORY[0x277D84F90]);
  v40 = v36[2];
  v39 = v36[3];
  if (v40 >= v39 >> 1)
  {
    v36 = sub_2529F8F40(v39 > 1, v40 + 1, 1, v36);
  }

  v36[2] = v40 + 1;
  v11 = v75;
  (*(v75 + 32))(v36 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v40, v29, v30);
  if (v33)
  {
LABEL_13:
    v41 = sub_252E32FF4();
    (*(*(v41 - 8) + 56))(v9, 1, 1, v41);
    v42 = sub_252E33044();
    (*(*(v42 - 8) + 56))(v5, 1, 1, v42);
    sub_252E32B94();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_2529F8F40(0, v36[2] + 1, 1, v36);
    }

    v44 = v36[2];
    v43 = v36[3];
    if (v44 >= v43 >> 1)
    {
      v36 = sub_2529F8F40(v43 > 1, v44 + 1, 1, v36);
    }

    v36[2] = v44 + 1;
    v45 = v36 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v44;
    v11 = v75;
    (*(v75 + 32))(v45, v22, v30);
  }

LABEL_18:
  if ((v33 & 2) != 0)
  {
    v46 = sub_252E32FF4();
    (*(*(v46 - 8) + 56))(v9, 1, 1, v46);
    v47 = sub_252E33044();
    (*(*(v47 - 8) + 56))(v5, 1, 1, v47);
    sub_252E32B94();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_2529F8F40(0, v36[2] + 1, 1, v36);
    }

    v49 = v36[2];
    v48 = v36[3];
    if (v49 >= v48 >> 1)
    {
      v36 = sub_2529F8F40(v48 > 1, v49 + 1, 1, v36);
    }

    v36[2] = v49 + 1;
    (*(v11 + 32))(v36 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v49, v19, v30);
    if ((v33 & 4) == 0)
    {
LABEL_20:
      if ((v33 & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_34;
    }
  }

  else if ((v33 & 4) == 0)
  {
    goto LABEL_20;
  }

  v50 = sub_252E32FF4();
  (*(*(v50 - 8) + 56))(v9, 1, 1, v50);
  v51 = sub_252E33044();
  (*(*(v51 - 8) + 56))(v5, 1, 1, v51);
  sub_252E32B94();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_2529F8F40(0, v36[2] + 1, 1, v36);
  }

  v53 = v36[2];
  v52 = v36[3];
  if (v53 >= v52 >> 1)
  {
    v36 = sub_2529F8F40(v52 > 1, v53 + 1, 1, v36);
  }

  v36[2] = v53 + 1;
  (*(v11 + 32))(v36 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v53, v71, v30);
  if ((v33 & 8) == 0)
  {
LABEL_21:
    if ((v33 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

LABEL_34:
  v54 = sub_252E32FF4();
  (*(*(v54 - 8) + 56))(v9, 1, 1, v54);
  v55 = sub_252E33044();
  (*(*(v55 - 8) + 56))(v5, 1, 1, v55);
  sub_252E32B94();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_2529F8F40(0, v36[2] + 1, 1, v36);
  }

  v57 = v36[2];
  v56 = v36[3];
  if (v57 >= v56 >> 1)
  {
    v36 = sub_2529F8F40(v56 > 1, v57 + 1, 1, v36);
  }

  v36[2] = v57 + 1;
  (*(v11 + 32))(v36 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v57, v72, v30);
  if ((v33 & 0x10) == 0)
  {
LABEL_22:
    if ((v33 & 0x20) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_44;
  }

LABEL_39:
  v58 = sub_252E32FF4();
  (*(*(v58 - 8) + 56))(v9, 1, 1, v58);
  v59 = sub_252E33044();
  (*(*(v59 - 8) + 56))(v5, 1, 1, v59);
  sub_252E32B94();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_2529F8F40(0, v36[2] + 1, 1, v36);
  }

  v61 = v36[2];
  v60 = v36[3];
  if (v61 >= v60 >> 1)
  {
    v36 = sub_2529F8F40(v60 > 1, v61 + 1, 1, v36);
  }

  v36[2] = v61 + 1;
  (*(v11 + 32))(v36 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v61, v73, v30);
  if ((v33 & 0x20) != 0)
  {
LABEL_44:
    v62 = sub_252E32FF4();
    (*(*(v62 - 8) + 56))(v9, 1, 1, v62);
    v63 = sub_252E33044();
    (*(*(v63 - 8) + 56))(v5, 1, 1, v63);
    v64 = v70;
    sub_252E32B94();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_2529F8F40(0, v36[2] + 1, 1, v36);
    }

    v66 = v36[2];
    v65 = v36[3];
    if (v66 >= v65 >> 1)
    {
      v36 = sub_2529F8F40(v65 > 1, v66 + 1, 1, v36);
    }

    v36[2] = v66 + 1;
    (*(v11 + 32))(v36 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v66, v64, v30);
  }

LABEL_49:
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v67 = sub_252E36AD4();
  __swift_project_value_buffer(v67, qword_27F544D90);
  v76 = 0;
  v77 = 0xE000000000000000;
  sub_252E379F4();

  v76 = 0xD000000000000011;
  v77 = 0x8000000252E85F80;
  v68 = MEMORY[0x2530AD730](v36, v30);
  MEMORY[0x2530AD570](v68);

  sub_252CC3D90(v76, v77, 0xD00000000000007ALL, 0x8000000252E85990);

  if (!v36[2])
  {

    return 0;
  }

  return v36;
}

uint64_t sub_252BB2304()
{
  if (*(v0 + 40) != 4)
  {
    return 1;
  }

  if (!*(v0 + 16))
  {
    return 0;
  }

  v1 = sub_252E35DB4();

  if (v1)
  {

    return 1;
  }

  if (sub_252E35D34())
  {

    if (!sub_252E35D84())
    {
      return 1;
    }
  }

  result = sub_252E35D84();
  if (!result)
  {
    return result;
  }

  v3 = sub_252E35D74();

  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    sub_252E35DD4();
    sub_252BBF590(&qword_27F542C38, MEMORY[0x277D56498]);
    result = sub_252E373E4();
    v5 = v18;
    v4 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);

    v7 = 0;
    v5 = v3;
  }

  v12 = (v6 + 64) >> 6;
  while (1)
  {
    if (v5 < 0)
    {
      if (!sub_252E37904() || (sub_252E35DD4(), swift_dynamicCast(), !v17))
      {
LABEL_27:
        sub_25291AE30();

        return 0;
      }

      goto LABEL_18;
    }

    v15 = v7;
    v16 = v8;
    if (!v8)
    {
      break;
    }

LABEL_17:
    v8 = (v16 - 1) & v16;
    v13 = *(*(v5 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v13)
    {
      goto LABEL_27;
    }

LABEL_18:
    v14 = sub_252E35DB4();

    if (v14)
    {

      sub_25291AE30();

      return 1;
    }
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_27;
    }

    v16 = *(v4 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252BB25AC()
{
  v0 = sub_252CC5E24(qword_2864A40D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A28, &qword_252E50370);
  result = swift_arrayDestroy();
  qword_27F575908 = v0;
  return result;
}

uint64_t sub_252BB2608()
{
  v0 = sub_252CC5DD4(&unk_2864A3CD8);
  result = sub_25293847C(&unk_2864A3CF8, &qword_27F543A38, &qword_252E50380);
  qword_27F575910 = v0;
  return result;
}

uint64_t sub_252BB2658()
{
  v0 = sub_252CC5DFC(&unk_2864A3DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A30, &qword_252E50378);
  result = swift_arrayDestroy();
  qword_27F575918 = v0;
  return result;
}

uint64_t sub_252BB26B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A08, &qword_252E502E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_252E502A0;
  *(v0 + 32) = 66;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A10, &qword_252E502E8);
  v2 = MEMORY[0x277D839B0];
  *(v0 + 40) = MEMORY[0x277D839B0];
  *(v0 + 64) = v1;
  *(v0 + 72) = 2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5439F8, &qword_252E502D0);
  v4 = MEMORY[0x277D83A90];
  *(v0 + 80) = MEMORY[0x277D83A90];
  *(v0 + 104) = v3;
  *(v0 + 112) = 5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A18, &qword_252E502F0);
  v6 = MEMORY[0x277D837D0];
  *(v0 + 120) = MEMORY[0x277D837D0];
  *(v0 + 144) = v5;
  *(v0 + 152) = 59;
  *(v0 + 160) = v4;
  *(v0 + 184) = v3;
  *(v0 + 192) = 3;
  *(v0 + 200) = v4;
  *(v0 + 224) = v3;
  *(v0 + 232) = 11;
  *(v0 + 240) = v4;
  *(v0 + 264) = v3;
  *(v0 + 272) = 7;
  *(v0 + 280) = v4;
  *(v0 + 304) = v3;
  *(v0 + 312) = 8;
  *(v0 + 320) = v2;
  *(v0 + 344) = v1;
  *(v0 + 352) = 10;
  *(v0 + 360) = v2;
  *(v0 + 384) = v1;
  *(v0 + 392) = 9;
  *(v0 + 400) = v4;
  *(v0 + 424) = v3;
  *(v0 + 432) = 27;
  *(v0 + 440) = v2;
  *(v0 + 464) = v1;
  *(v0 + 472) = 12;
  *(v0 + 480) = v6;
  *(v0 + 504) = v5;
  *(v0 + 512) = 6;
  *(v0 + 544) = v3;
  *(v0 + 520) = v4;
  *(v0 + 552) = 32;
  *(v0 + 584) = v1;
  *(v0 + 560) = v2;
  *(v0 + 592) = 33;
  *(v0 + 624) = v3;
  *(v0 + 600) = v4;
  *(v0 + 632) = 34;
  *(v0 + 664) = v3;
  *(v0 + 640) = v4;
  *(v0 + 672) = 35;
  *(v0 + 704) = v1;
  *(v0 + 680) = v2;
  *(v0 + 712) = 36;
  *(v0 + 744) = v3;
  *(v0 + 720) = v4;
  *(v0 + 752) = 37;
  *(v0 + 784) = v3;
  *(v0 + 760) = v4;
  *(v0 + 792) = 31;
  *(v0 + 824) = v1;
  *(v0 + 800) = v2;
  *(v0 + 832) = 38;
  *(v0 + 864) = v1;
  *(v0 + 840) = v2;
  *(v0 + 872) = 40;
  *(v0 + 904) = v1;
  *(v0 + 880) = v2;
  *(v0 + 912) = 42;
  *(v0 + 944) = v3;
  *(v0 + 920) = v4;
  *(v0 + 952) = 41;
  *(v0 + 984) = v1;
  *(v0 + 960) = v2;
  *(v0 + 992) = 39;
  *(v0 + 1024) = v1;
  *(v0 + 1000) = v2;
  *(v0 + 1032) = 14;
  *(v0 + 1064) = v5;
  *(v0 + 1040) = v6;
  *(v0 + 1072) = 4;
  *(v0 + 1104) = v3;
  *(v0 + 1080) = v4;
  *(v0 + 1112) = 29;
  *(v0 + 1144) = v3;
  *(v0 + 1120) = v4;
  *(v0 + 1152) = 30;
  *(v0 + 1184) = v5;
  *(v0 + 1160) = v6;
  *(v0 + 1192) = 28;
  *(v0 + 1224) = v5;
  *(v0 + 1200) = v6;
  *(v0 + 1232) = 43;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A00, &qword_252E502D8);
  v8 = MEMORY[0x277D83B88];
  *(v0 + 1264) = v7;
  *(v0 + 1240) = v8;
  *(v0 + 1272) = 44;
  *(v0 + 1304) = v5;
  *(v0 + 1280) = v6;
  *(v0 + 1312) = 45;
  *(v0 + 1344) = v5;
  *(v0 + 1320) = v6;
  *(v0 + 1352) = 13;
  *(v0 + 1384) = v5;
  *(v0 + 1360) = v6;
  *(v0 + 1392) = 46;
  *(v0 + 1424) = v7;
  *(v0 + 1400) = v8;
  *(v0 + 1432) = 19;
  *(v0 + 1464) = v3;
  *(v0 + 1440) = v4;
  *(v0 + 1472) = 17;
  *(v0 + 1504) = v3;
  *(v0 + 1480) = v4;
  *(v0 + 1512) = 56;
  *(v0 + 1544) = v3;
  *(v0 + 1520) = v4;
  *(v0 + 1552) = 55;
  *(v0 + 1584) = v3;
  *(v0 + 1560) = v4;
  *(v0 + 1592) = 47;
  *(v0 + 1624) = v5;
  *(v0 + 1600) = v6;
  *(v0 + 1632) = 15;
  *(v0 + 1664) = v5;
  *(v0 + 1640) = v6;
  *(v0 + 1672) = 20;
  *(v0 + 1704) = v5;
  *(v0 + 1680) = v6;
  *(v0 + 1712) = 23;
  *(v0 + 1744) = v3;
  *(v0 + 1720) = v4;
  *(v0 + 1752) = 24;
  *(v0 + 1784) = v3;
  *(v0 + 1760) = v4;
  *(v0 + 1792) = 18;
  *(v0 + 1824) = v5;
  *(v0 + 1800) = v6;
  *(v0 + 1832) = 48;
  *(v0 + 1864) = v1;
  *(v0 + 1840) = v2;
  *(v0 + 1872) = 49;
  *(v0 + 1904) = v3;
  *(v0 + 1880) = v4;
  *(v0 + 1912) = 26;
  *(v0 + 1944) = v7;
  *(v0 + 1920) = v8;
  *(v0 + 1952) = 51;
  *(v0 + 1984) = v7;
  *(v0 + 1960) = v8;
  *(v0 + 1992) = 22;
  *(v0 + 2024) = v5;
  *(v0 + 2000) = v6;
  *(v0 + 2032) = 58;
  *(v0 + 2064) = v3;
  *(v0 + 2040) = v4;
  *(v0 + 2072) = 53;
  *(v0 + 2104) = v3;
  *(v0 + 2080) = v4;
  *(v0 + 2112) = 54;
  *(v0 + 2144) = v3;
  *(v0 + 2120) = v4;
  *(v0 + 2152) = 57;
  *(v0 + 2184) = v3;
  *(v0 + 2160) = v4;
  *(v0 + 2192) = 67;
  v9 = type metadata accessor for HomeAttributeCleaningJob();
  *(v0 + 2224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A20, qword_252E502F8);
  *(v0 + 2200) = v9;
  v10 = sub_252CC5E4C(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545060, &qword_252E5A3E0);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F575920 = v10;
  return result;
}