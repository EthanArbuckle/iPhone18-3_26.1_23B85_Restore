uint64_t RapidPayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23296F140(v5, a1, a2, a3);
  if (!v4)
  {
    sub_23296F350(v5, a1, a2, a3);
    sub_23296F560(v5, a1, a2, a3);
    v10 = (v5 + *(type metadata accessor for RapidPayload(0) + 32));
    if ((v10[1] & 1) == 0)
    {
      v11 = *v10;
      sub_232973C58();
    }

    sub_23296F770(v5);
    return sub_232973B28();
  }

  return result;
}

uint64_t sub_23296F140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB58, &qword_232979AC8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ClientDeviceMetadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RapidPayload(0);
  sub_232968254(a1 + *(v14 + 20), v8, &qword_27DDBCB58, &qword_232979AC8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_2329682BC(v8, &qword_27DDBCB58, &qword_232979AC8);
  }

  sub_23296BB00(v8, v13, type metadata accessor for ClientDeviceMetadata);
  sub_232971CB4(qword_2814D8E10, type metadata accessor for ClientDeviceMetadata);
  sub_232973C78();
  return sub_23296BF04(v13, type metadata accessor for ClientDeviceMetadata);
}

uint64_t sub_23296F350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB50, &qword_232979AC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for RequestDescription(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RapidPayload(0);
  sub_232968254(a1 + *(v14 + 24), v8, &qword_27DDBCB50, &qword_232979AC0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_2329682BC(v8, &qword_27DDBCB50, &qword_232979AC0);
  }

  sub_23296BB00(v8, v13, type metadata accessor for RequestDescription);
  sub_232971CB4(qword_2814D9088, type metadata accessor for RequestDescription);
  sub_232973C78();
  return sub_23296BF04(v13, type metadata accessor for RequestDescription);
}

uint64_t sub_23296F560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB48, &qword_232979AB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for FileDescription(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RapidPayload(0);
  sub_232968254(a1 + *(v14 + 28), v8, &qword_27DDBCB48, &qword_232979AB8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_2329682BC(v8, &qword_27DDBCB48, &qword_232979AB8);
  }

  sub_23296BB00(v8, v13, type metadata accessor for FileDescription);
  sub_232971CB4(qword_2814D8F40, type metadata accessor for FileDescription);
  sub_232973C78();
  return sub_23296BF04(v13, type metadata accessor for FileDescription);
}

uint64_t sub_23296F770(uint64_t a1)
{
  result = type metadata accessor for RapidPayload(0);
  v3 = a1 + *(result + 36);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_23296831C(*v3, *(v3 + 8));
    sub_232973C38();
    return sub_232969724(v5, v4);
  }

  return result;
}

double sub_23296F85C@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s24DiagnosticRequestService0B11DescriptionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v4 = a1[5];
  v5 = type metadata accessor for ClientDeviceMetadata(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for RequestDescription(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[7];
  v9 = type metadata accessor for FileDescription(0);
  (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 4) = 1;
  result = 0.0;
  *(a2 + v10) = xmmword_232979D00;
  return result;
}

uint64_t sub_23296F9C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_232971CB4(&qword_27DDBCBF8, type metadata accessor for RapidPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23296FA68(uint64_t a1)
{
  v2 = sub_232971CB4(qword_2814D8FE0, type metadata accessor for RapidPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_23296FAD4()
{
  sub_232971CB4(qword_2814D8FE0, type metadata accessor for RapidPayload);

  return sub_232973C08();
}

uint64_t sub_23296FB7C()
{
  v0 = sub_232973CA8();
  __swift_allocate_value_buffer(v0, static RapidPayloadReply._protobuf_nameMap);
  __swift_project_value_buffer(v0, static RapidPayloadReply._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCC20, &qword_23297A508);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCC28, &qword_23297A510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232979D30;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "success";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232973C88();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "failure_reason";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v12 = "reply_payload";
  *(v12 + 8) = 13;
  *(v12 + 16) = 2;
  v9();
  return sub_232973C98();
}

uint64_t sub_23296FDC0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_232973CA8();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_23296FE38@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_232973CA8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t RapidPayloadReply.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_232973B78();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v5 = *(type metadata accessor for RapidPayloadReply(0) + 28);
        sub_232973B98();
        break;
      case 2:
        v1 = *(type metadata accessor for RapidPayloadReply(0) + 24);
        sub_232973BA8();
        break;
      case 1:
        v4 = *(type metadata accessor for RapidPayloadReply(0) + 20);
        sub_232973B88();
        break;
    }
  }

  return result;
}

uint64_t RapidPayloadReply.traverse<A>(visitor:)()
{
  result = type metadata accessor for RapidPayloadReply(0);
  v3 = result;
  if (*(v0 + *(result + 20)) == 2)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    result = sub_232973C28();
    if (v1)
    {
      return result;
    }
  }

  v4 = (v0 + *(v3 + 24));
  if (v4[1])
  {
    v5 = *v4;
    sub_232973C48();
  }

  v6 = v0 + *(v3 + 28);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    sub_23296831C(*v6, *(v6 + 8));
    sub_232973C38();
    sub_232969724(v8, v7);
  }

  return sub_232973B28();
}

uint64_t sub_232970134(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_232973D48();
  a1(0);
  sub_232971CB4(a2, a3);
  sub_232973CB8();
  return sub_232973D68();
}

double sub_2329701BC@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s24DiagnosticRequestService0B11DescriptionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v4 = a1[6];
  *(a2 + a1[5]) = 2;
  v5 = (a2 + v4);
  *v5 = 0;
  v5[1] = 0;
  result = 0.0;
  *(a2 + a1[7]) = xmmword_232979D00;
  return result;
}

uint64_t sub_232970254(uint64_t a1, uint64_t a2)
{
  v4 = sub_232971CB4(&qword_27DDBCBF0, type metadata accessor for RapidPayloadReply);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2329702F4@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_232973CA8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_232970390(uint64_t a1)
{
  v2 = sub_232971CB4(&qword_27DDBCBE0, type metadata accessor for RapidPayloadReply);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2329703FC()
{
  sub_232973D48();
  sub_232973CB8();
  return sub_232973D68();
}

uint64_t sub_232970454()
{
  sub_232971CB4(&qword_27DDBCBE0, type metadata accessor for RapidPayloadReply);

  return sub_232973C08();
}

uint64_t sub_2329704D0()
{
  sub_232973D48();
  sub_232973CB8();
  return sub_232973D68();
}

uint64_t sub_232970528@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_232973A78();
    if (v10)
    {
      v11 = sub_232973A98();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_232973A88();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_232973A78();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_232973A98();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_232973A88();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_232970758(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2329708E8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2329696D0(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_232970528(v14, a3, a4, &v13);
  v10 = v4;
  sub_2329696D0(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_2329708E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_232973A78();
  v11 = result;
  if (result)
  {
    result = sub_232973A98();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_232973A88();
  sub_232970528(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_2329709A0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_23296831C(a3, a4);
          return sub_232970758(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s24DiagnosticRequestService17RapidPayloadReplyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RapidPayloadReply(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }

    if (*v9 != *v11 || v10 != v12)
    {
      v14 = v4;
      v15 = sub_232973D28();
      v4 = v14;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  v16 = v4[7];
  v18 = *(a1 + v16);
  v17 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v21 = *v19;
  v20 = v19[1];
  if (v17 >> 60 != 15)
  {
    if (v20 >> 60 == 15)
    {
      goto LABEL_19;
    }

    sub_23296A930(v18, v17);
    sub_23296A930(v21, v20);
    v23 = sub_2329709A0(v18, v17, v21, v20);
    sub_232969724(v21, v20);
    sub_232969724(v18, v17);
    if (v23)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (v20 >> 60 != 15)
  {
LABEL_19:
    sub_23296A930(v18, v17);
    sub_23296A930(v21, v20);
    sub_232969724(v18, v17);
    sub_232969724(v21, v20);
    return 0;
  }

  sub_23296A930(v18, v17);
  sub_23296A930(v21, v20);
  sub_232969724(v18, v17);
LABEL_22:
  sub_232973B48();
  sub_232971CB4(&qword_27DDBCC18, MEMORY[0x277D216C8]);
  return sub_232973CC8() & 1;
}

uint64_t _s24DiagnosticRequestService15FileDescriptionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileDescription(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_232973D28();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 8);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = *v19 == *v21 && v20 == v22;
    if (!v23 && (sub_232973D28() & 1) == 0)
    {
      return 0;
    }

LABEL_23:
    sub_232973B48();
    sub_232971CB4(&qword_27DDBCC18, MEMORY[0x277D216C8]);
    return sub_232973CC8() & 1;
  }

  if (!v22)
  {
    goto LABEL_23;
  }

  return 0;
}

uint64_t _s24DiagnosticRequestService12RapidPayloadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v89 = a2;
  v90 = a1;
  v2 = type metadata accessor for FileDescription(0);
  v79 = *(v2 - 8);
  v80 = v2;
  v3 = *(v79 + 64);
  MEMORY[0x28223BE20](v2);
  v76 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB48, &qword_232979AB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v88 = &v75 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCC30, &qword_23297A518);
  v8 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v81 = &v75 - v9;
  v10 = type metadata accessor for RequestDescription(0);
  v84 = *(v10 - 8);
  v85 = v10;
  v11 = *(v84 + 64);
  MEMORY[0x28223BE20](v10);
  v77 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB50, &qword_232979AC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v82 = &v75 - v15;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCC38, &qword_23297A520);
  v16 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v86 = &v75 - v17;
  v18 = type metadata accessor for ClientDeviceMetadata(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCB58, &qword_232979AC8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v75 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBCC40, &qword_23297A528);
  v28 = v27 - 8;
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v75 - v30;
  v87 = type metadata accessor for RapidPayload(0);
  v32 = *(v87 + 20);
  v33 = *(v28 + 56);
  sub_232968254(v90 + v32, v31, &qword_27DDBCB58, &qword_232979AC8);
  v34 = v89 + v32;
  v35 = v89;
  sub_232968254(v34, &v31[v33], &qword_27DDBCB58, &qword_232979AC8);
  v36 = *(v19 + 48);
  if (v36(v31, 1, v18) == 1)
  {
    if (v36(&v31[v33], 1, v18) == 1)
    {
      sub_2329682BC(v31, &qword_27DDBCB58, &qword_232979AC8);
      goto LABEL_8;
    }

LABEL_6:
    v37 = &qword_27DDBCC40;
    v38 = &qword_23297A528;
LABEL_14:
    v50 = v31;
LABEL_15:
    sub_2329682BC(v50, v37, v38);
    goto LABEL_16;
  }

  sub_232968254(v31, v26, &qword_27DDBCB58, &qword_232979AC8);
  if (v36(&v31[v33], 1, v18) == 1)
  {
    sub_23296BF04(v26, type metadata accessor for ClientDeviceMetadata);
    goto LABEL_6;
  }

  sub_23296BB00(&v31[v33], v22, type metadata accessor for ClientDeviceMetadata);
  v39 = _s24DiagnosticRequestService20ClientDeviceMetadataV2eeoiySbAC_ACtFZ_0(v26, v22);
  sub_23296BF04(v22, type metadata accessor for ClientDeviceMetadata);
  sub_23296BF04(v26, type metadata accessor for ClientDeviceMetadata);
  sub_2329682BC(v31, &qword_27DDBCB58, &qword_232979AC8);
  if ((v39 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v31 = v86;
  v40 = v87;
  v41 = *(v87 + 24);
  v42 = *(v83 + 48);
  v43 = v90;
  sub_232968254(v90 + v41, v86, &qword_27DDBCB50, &qword_232979AC0);
  sub_232968254(v35 + v41, &v31[v42], &qword_27DDBCB50, &qword_232979AC0);
  v44 = v85;
  v45 = *(v84 + 48);
  if (v45(v31, 1, v85) == 1)
  {
    v46 = v45(&v31[v42], 1, v44);
    v47 = v88;
    if (v46 == 1)
    {
      sub_2329682BC(v31, &qword_27DDBCB50, &qword_232979AC0);
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v48 = v82;
  sub_232968254(v31, v82, &qword_27DDBCB50, &qword_232979AC0);
  v49 = v45(&v31[v42], 1, v44);
  v47 = v88;
  if (v49 == 1)
  {
    sub_23296BF04(v48, type metadata accessor for RequestDescription);
LABEL_13:
    v37 = &qword_27DDBCC38;
    v38 = &qword_23297A520;
    goto LABEL_14;
  }

  v53 = v77;
  sub_23296BB00(&v31[v42], v77, type metadata accessor for RequestDescription);
  v54 = _s24DiagnosticRequestService0B11DescriptionV2eeoiySbAC_ACtFZ_0(v48, v53);
  sub_23296BF04(v53, type metadata accessor for RequestDescription);
  sub_23296BF04(v48, type metadata accessor for RequestDescription);
  sub_2329682BC(v31, &qword_27DDBCB50, &qword_232979AC0);
  if ((v54 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v55 = v40[7];
  v56 = *(v78 + 48);
  v57 = v81;
  sub_232968254(v43 + v55, v81, &qword_27DDBCB48, &qword_232979AB8);
  sub_232968254(v35 + v55, v57 + v56, &qword_27DDBCB48, &qword_232979AB8);
  v58 = v80;
  v59 = *(v79 + 48);
  if (v59(v57, 1, v80) != 1)
  {
    sub_232968254(v57, v47, &qword_27DDBCB48, &qword_232979AB8);
    if (v59(v57 + v56, 1, v58) != 1)
    {
      v60 = v57 + v56;
      v61 = v76;
      sub_23296BB00(v60, v76, type metadata accessor for FileDescription);
      v62 = _s24DiagnosticRequestService15FileDescriptionV2eeoiySbAC_ACtFZ_0(v47, v61);
      sub_23296BF04(v61, type metadata accessor for FileDescription);
      sub_23296BF04(v47, type metadata accessor for FileDescription);
      sub_2329682BC(v57, &qword_27DDBCB48, &qword_232979AB8);
      if ((v62 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }

    sub_23296BF04(v47, type metadata accessor for FileDescription);
    goto LABEL_24;
  }

  if (v59(v57 + v56, 1, v58) != 1)
  {
LABEL_24:
    v37 = &qword_27DDBCC30;
    v38 = &qword_23297A518;
    v50 = v57;
    goto LABEL_15;
  }

  sub_2329682BC(v57, &qword_27DDBCB48, &qword_232979AB8);
LABEL_26:
  v63 = v40[8];
  v64 = (v43 + v63);
  v65 = *(v43 + v63 + 4);
  v66 = (v35 + v63);
  v67 = *(v35 + v63 + 4);
  if (v65)
  {
    if (!v67)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*v64 != *v66)
    {
      LOBYTE(v67) = 1;
    }

    if (v67)
    {
      goto LABEL_16;
    }
  }

  v68 = v40[9];
  v70 = *(v43 + v68);
  v69 = *(v43 + v68 + 8);
  v71 = (v35 + v68);
  v73 = *v71;
  v72 = v71[1];
  if (v69 >> 60 == 15)
  {
    if (v72 >> 60 == 15)
    {
      sub_23296A930(v70, v69);
      sub_23296A930(v73, v72);
      sub_232969724(v70, v69);
LABEL_38:
      sub_232973B48();
      sub_232971CB4(&qword_27DDBCC18, MEMORY[0x277D216C8]);
      v51 = sub_232973CC8();
      return v51 & 1;
    }

    goto LABEL_36;
  }

  if (v72 >> 60 == 15)
  {
LABEL_36:
    sub_23296A930(v70, v69);
    sub_23296A930(v73, v72);
    sub_232969724(v70, v69);
    sub_232969724(v73, v72);
    goto LABEL_16;
  }

  sub_23296A930(v70, v69);
  sub_23296A930(v73, v72);
  v74 = sub_2329709A0(v70, v69, v73, v72);
  sub_232969724(v73, v72);
  sub_232969724(v70, v69);
  if (v74)
  {
    goto LABEL_38;
  }

LABEL_16:
  v51 = 0;
  return v51 & 1;
}

uint64_t _s24DiagnosticRequestService0B11DescriptionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestDescription(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_232973D28();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_232973D28();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v23 = *(a1 + v21);
  v22 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v26 = *v24;
  v25 = v24[1];
  if (v22 >> 60 == 15)
  {
    if (v25 >> 60 == 15)
    {
      v27 = v4;
      sub_23296A930(v23, v22);
      sub_23296A930(v26, v25);
      sub_232969724(v23, v22);
      v28 = v27;
      goto LABEL_26;
    }

LABEL_23:
    sub_23296A930(v23, v22);
    sub_23296A930(v26, v25);
    sub_232969724(v23, v22);
    sub_232969724(v26, v25);
    return 0;
  }

  if (v25 >> 60 == 15)
  {
    goto LABEL_23;
  }

  v30 = v4;
  sub_23296A930(v23, v22);
  sub_23296A930(v26, v25);
  v31 = sub_2329709A0(v23, v22, v26, v25);
  sub_232969724(v26, v25);
  sub_232969724(v23, v22);
  v28 = v30;
  if ((v31 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v32 = v28[8];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = *(a2 + v32 + 8);
  if (v34)
  {
    if (!v36)
    {
      return 0;
    }
  }

  else
  {
    if (*v33 != *v35)
    {
      LOBYTE(v36) = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  v37 = v28[9];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (v41 && (*v38 == *v40 && v39 == v41 || (sub_232973D28() & 1) != 0))
    {
      goto LABEL_39;
    }

    return 0;
  }

  if (v41)
  {
    return 0;
  }

LABEL_39:
  sub_232973B48();
  sub_232971CB4(&qword_27DDBCC18, MEMORY[0x277D216C8]);
  return sub_232973CC8() & 1;
}

uint64_t _s24DiagnosticRequestService20ClientDeviceMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientDeviceMetadata(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_232973D28();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_232973D28();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_232973D28();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (v33)
    {
      v34 = *v30 == *v32 && v31 == v33;
      if (v34 || (sub_232973D28() & 1) != 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (!v33)
  {
LABEL_35:
    sub_232973B48();
    sub_232971CB4(&qword_27DDBCC18, MEMORY[0x277D216C8]);
    return sub_232973CC8() & 1;
  }

  return 0;
}

uint64_t sub_232971CB4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2329722C4()
{
  sub_232973B48();
  if (v0 <= 0x3F)
  {
    sub_2329729BC(319, qword_2814D8D68);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_232972384()
{
  sub_232973B48();
  if (v0 <= 0x3F)
  {
    sub_2329729BC(319, qword_2814D8D68);
    if (v1 <= 0x3F)
    {
      sub_2329729BC(319, &qword_2814D9138);
      if (v2 <= 0x3F)
      {
        sub_2329729BC(319, &qword_2814D8D50);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232973B48();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_232973B48();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_23297261C()
{
  sub_232973B48();
  if (v0 <= 0x3F)
  {
    sub_2329729BC(319, qword_2814D8D68);
    if (v1 <= 0x3F)
    {
      sub_2329729BC(319, &qword_2814D8D50);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_232972704()
{
  sub_232973B48();
  if (v0 <= 0x3F)
  {
    sub_23297285C(319, qword_2814D8DC8, type metadata accessor for ClientDeviceMetadata);
    if (v1 <= 0x3F)
    {
      sub_23297285C(319, qword_2814D9040, type metadata accessor for RequestDescription);
      if (v2 <= 0x3F)
      {
        sub_23297285C(319, qword_2814D8F00, type metadata accessor for FileDescription);
        if (v3 <= 0x3F)
        {
          sub_2329729BC(319, &qword_2814D8D58);
          if (v4 <= 0x3F)
          {
            sub_2329729BC(319, &qword_2814D9138);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_23297285C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_232973D18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2329728D8()
{
  sub_232973B48();
  if (v0 <= 0x3F)
  {
    sub_2329729BC(319, &qword_2814D8D60);
    if (v1 <= 0x3F)
    {
      sub_2329729BC(319, qword_2814D8D68);
      if (v2 <= 0x3F)
      {
        sub_2329729BC(319, &qword_2814D9138);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2329729BC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_232973D18();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
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

void _deleteFileWithPath_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_232906000, a2, OS_LOG_TYPE_FAULT, "ERROR: File %{public}@ is a directory", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void DRSConfirmDirectoryIsInitialized_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_232906000, a2, OS_LOG_TYPE_FAULT, "%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}