uint64_t sub_21450E534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9150E8, &qword_214759240);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for NearbyProtoConnectionResponseContent(0) + 24);
  v47 = a1;
  v45 = v32;
  sub_213FB2E54(a1 + v32, v14, &qword_27C914EC0, qword_214758530);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_213FB2DF4(v14, &qword_27C914EC0, qword_214758530);
    v34 = v15;
  }

  else
  {
    sub_21450B2C0(v14, v22, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
    sub_21450B2C0(v22, v20, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_213FB2DF4(v28, &qword_27C9150E8, &qword_214759240);
      v35 = v20;
      v36 = v49;
      sub_21450B2C0(v35, v49, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
      sub_21450B2C0(v36, v28, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    sub_21450ACF8(v20, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  sub_21451415C(&qword_27C914F48, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
  v39 = v52;
  sub_2146D8F98();
  if (v39)
  {
    return sub_213FB2DF4(v28, &qword_27C9150E8, &qword_214759240);
  }

  sub_213FB2E54(v28, v38, &qword_27C9150E8, &qword_214759240);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    sub_213FB2DF4(v28, &qword_27C9150E8, &qword_214759240);
    return sub_213FB2DF4(v38, &qword_27C9150E8, &qword_214759240);
  }

  else
  {
    v41 = v48;
    sub_21450B2C0(v38, v48, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
    if (v33 != 1)
    {
      sub_2146D8E88();
    }

    sub_213FB2DF4(v28, &qword_27C9150E8, &qword_214759240);
    v42 = v47;
    v43 = v45;
    sub_213FB2DF4(v47 + v45, &qword_27C914EC0, qword_214758530);
    sub_21450B2C0(v41, v42 + v43, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t sub_21450EAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  v13 = *v3;
  v14 = v3[1];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (result = sub_2146D90A8(), !v4))
  {
    v17 = v3[3];
    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v18 || (result = sub_2146D90A8(), !v4))
    {
      v19 = type metadata accessor for NearbyProtoConnectionResponseContent(0);
      sub_213FB2E54(v5 + *(v19 + 24), v12, &qword_27C914EC0, qword_214758530);
      v20 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
      if ((*(*(v20 - 8) + 48))(v12, 1, v20) == 1)
      {
        goto LABEL_14;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21450EF4C(v5, a1, a2, a3);
      }

      else
      {
        sub_21450ED08(v5, a1, a2, a3);
      }

      result = sub_21450ACF8(v12, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
      if (!v4)
      {
LABEL_14:
        v21 = v5 + *(v19 + 28);
        return sub_2146D8DD8();
      }
    }
  }

  return result;
}

uint64_t sub_21450ED08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NearbyProtoConnectionResponseContent(0);
  sub_213FB2E54(a1 + *(v13 + 24), v8, &qword_27C914EC0, qword_214758530);
  v14 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C914EC0, qword_214758530);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21450B2C0(v8, v12, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
    sub_21451415C(&qword_27C914F60, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
    sub_2146D90F8();
    return sub_21450ACF8(v12, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
  }

  result = sub_21450ACF8(v8, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t sub_21450EF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NearbyProtoConnectionResponseContent(0);
  sub_213FB2E54(a1 + *(v13 + 24), v8, &qword_27C914EC0, qword_214758530);
  v14 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C914EC0, qword_214758530);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21450B2C0(v8, v12, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
    sub_21451415C(&qword_27C914F48, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
    sub_2146D90F8();
    return sub_21450ACF8(v12, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
  }

  result = sub_21450ACF8(v8, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t sub_21450F1DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v4 = *(a1 + 24);
  v5 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 28)];
  return sub_2146D8DE8();
}

uint64_t sub_21450F280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_2146D8DF8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21450F2F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_2146D8DF8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_21450F368(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_21450F3BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21451415C(&qword_27C9150B0, type metadata accessor for NearbyProtoConnectionResponseContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21450F45C(uint64_t a1)
{
  v2 = sub_21451415C(&qword_27C914F30, type metadata accessor for NearbyProtoConnectionResponseContent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21450F4C8()
{
  sub_21451415C(&qword_27C914F30, type metadata accessor for NearbyProtoConnectionResponseContent);

  return sub_2146D9008();
}

uint64_t sub_21450F548()
{
  result = MEMORY[0x2160545D0](0xD000000000000010, 0x800000021479D140);
  qword_27C914DF0 = 0xD00000000000001CLL;
  *algn_27C914DF8 = 0x800000021479D0C0;
  return result;
}

uint64_t sub_21450F5E4()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27C914E00);
  __swift_project_value_buffer(v0, qword_27C914E00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146EA710;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "invitationData";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_2146D9128();
}

uint64_t sub_21450F774()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2146D8ED8();
    }
  }

  return result;
}

uint64_t sub_21450F7E4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2 || *(v2 + 16) == *(v2 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v4)
  {
    if (v2 == v2 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_2146D9048();
    if (v1)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v3 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v6 = v0 + *(type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent(0) + 20);
  return sub_2146D8DD8();
}

uint64_t sub_21450F8F8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_2146ECC00;
  v2 = a2 + *(a1 + 20);
  return sub_2146D8DE8();
}

uint64_t sub_21450F97C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21451415C(&qword_27C9150A8, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21450FA1C(uint64_t a1)
{
  v2 = sub_21451415C(&qword_27C914F48, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21450FA88()
{
  sub_21451415C(&qword_27C914F48, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);

  return sub_2146D9008();
}

uint64_t sub_21450FB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_214466780(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_2146D8DF8();
  sub_21451415C(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21450FBB0()
{
  result = MEMORY[0x2160545D0](0x436465696E65442ELL, 0xEE00746E65746E6FLL);
  qword_27C914E18 = 0xD00000000000001CLL;
  unk_27C914E20 = 0x800000021479D0C0;
  return result;
}

uint64_t sub_21450FCF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21451415C(&qword_27C9150A0, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21450FD90(uint64_t a1)
{
  v2 = sub_21451415C(&qword_27C914F60, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21450FDFC()
{
  sub_21451415C(&qword_27C914F60, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);

  return sub_2146D9008();
}

uint64_t sub_21450FE94()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27C914E40);
  __swift_project_value_buffer(v0, qword_27C914E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "displayName";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "userInfo";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "wantsTokenURI";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214510104()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      if (result == 4)
      {
        v1 = *(type metadata accessor for NearbyProtoJoinRequestContent(0) + 28);
        sub_2146D8EC8();
      }

      else if (result == 5)
      {
        v5 = *(type metadata accessor for NearbyProtoJoinRequestContent(0) + 32);
        sub_2146D8E98();
      }
    }

    else if (result == 1)
    {
      sub_2146D8F48();
    }

    else if (result == 3)
    {
      v4 = *(type metadata accessor for NearbyProtoJoinRequestContent(0) + 24);
      sub_2146D8F38();
    }
  }

  return result;
}

uint64_t sub_21451021C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_2146D90A8(), !v4))
  {
    result = sub_214510310(v3);
    if (!v4)
    {
      sub_2145122A4(v3, a1, a2, a3, type metadata accessor for NearbyProtoJoinRequestContent);
      sub_214510388(v3);
      v12 = v3 + *(type metadata accessor for NearbyProtoJoinRequestContent(0) + 20);
      return sub_2146D8DD8();
    }
  }

  return result;
}

uint64_t sub_214510310(uint64_t a1)
{
  result = type metadata accessor for NearbyProtoJoinRequestContent(0);
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_214510388(uint64_t a1)
{
  result = type metadata accessor for NearbyProtoJoinRequestContent(0);
  if (*(a1 + *(result + 32)) != 2)
  {
    return sub_2146D9028();
  }

  return result;
}

double sub_21451044C@<D0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v4 = a2 + a1[5];
  sub_2146D8DE8();
  v5 = a1[7];
  v6 = (a2 + a1[6]);
  *v6 = 0;
  v6[1] = 0;
  result = 0.0;
  *(a2 + v5) = xmmword_2146E68C0;
  *(a2 + a1[8]) = 2;
  return result;
}

uint64_t sub_2145104F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21451415C(&qword_27C915098, type metadata accessor for NearbyProtoJoinRequestContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214510594(uint64_t a1)
{
  v2 = sub_21451415C(&qword_27C914F78, type metadata accessor for NearbyProtoJoinRequestContent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214510600()
{
  sub_21451415C(&qword_27C914F78, type metadata accessor for NearbyProtoJoinRequestContent);

  return sub_2146D9008();
}

uint64_t sub_21451069C()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27C914E58);
  __swift_project_value_buffer(v0, qword_27C914E58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "denied";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "approved";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_2145108D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        sub_214510F54(v5, a1, a2, a3);
        break;
      case 3:
        sub_214510988(v5, a1, a2, a3);
        break;
      case 1:
        sub_2146D8F48();
        break;
    }
  }

  return result;
}

uint64_t sub_214510988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9150C8, &qword_214759220);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for NearbyProtoJoinResponseContent(0) + 20);
  v47 = a1;
  v45 = v32;
  sub_213FB2E54(a1 + v32, v14, &qword_27C914EC8, &unk_214784480);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_213FB2DF4(v14, &qword_27C914EC8, &unk_214784480);
    v34 = v15;
    v35 = v53;
  }

  else
  {
    sub_21450B2C0(v14, v22, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
    sub_21450B2C0(v22, v20, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21450ACF8(v20, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
      v35 = v53;
    }

    else
    {
      sub_213FB2DF4(v28, &qword_27C9150C8, &qword_214759220);
      v36 = v20;
      v37 = v49;
      sub_21450B2C0(v36, v49, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);
      sub_21450B2C0(v37, v28, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);
      v35 = v53;
      v31(v28, 0, 1, v53);
    }
  }

  v38 = v51;
  sub_21451415C(&qword_27C914FC0, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);
  v39 = v52;
  sub_2146D8F98();
  if (v39)
  {
    return sub_213FB2DF4(v28, &qword_27C9150C8, &qword_214759220);
  }

  sub_213FB2E54(v28, v38, &qword_27C9150C8, &qword_214759220);
  if ((*(v50 + 48))(v38, 1, v35) == 1)
  {
    sub_213FB2DF4(v28, &qword_27C9150C8, &qword_214759220);
    return sub_213FB2DF4(v38, &qword_27C9150C8, &qword_214759220);
  }

  else
  {
    v41 = v48;
    sub_21450B2C0(v38, v48, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);
    if (v33 != 1)
    {
      sub_2146D8E88();
    }

    sub_213FB2DF4(v28, &qword_27C9150C8, &qword_214759220);
    v42 = v47;
    v43 = v45;
    sub_213FB2DF4(v47 + v45, &qword_27C914EC8, &unk_214784480);
    sub_21450B2C0(v41, v42 + v43, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t sub_214510F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9150D0, &qword_214759228);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for NearbyProtoJoinResponseContent(0) + 20);
  v47 = a1;
  v45 = v32;
  sub_213FB2E54(a1 + v32, v14, &qword_27C914EC8, &unk_214784480);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_213FB2DF4(v14, &qword_27C914EC8, &unk_214784480);
    v34 = v15;
  }

  else
  {
    sub_21450B2C0(v14, v22, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
    sub_21450B2C0(v22, v20, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_213FB2DF4(v28, &qword_27C9150D0, &qword_214759228);
      v35 = v20;
      v36 = v49;
      sub_21450B2C0(v35, v49, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
      sub_21450B2C0(v36, v28, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    sub_21450ACF8(v20, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  sub_21451415C(&qword_27C914FA8, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
  v39 = v52;
  sub_2146D8F98();
  if (v39)
  {
    return sub_213FB2DF4(v28, &qword_27C9150D0, &qword_214759228);
  }

  sub_213FB2E54(v28, v38, &qword_27C9150D0, &qword_214759228);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    sub_213FB2DF4(v28, &qword_27C9150D0, &qword_214759228);
    return sub_213FB2DF4(v38, &qword_27C9150D0, &qword_214759228);
  }

  else
  {
    v41 = v48;
    sub_21450B2C0(v38, v48, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
    if (v33 != 1)
    {
      sub_2146D8E88();
    }

    sub_213FB2DF4(v28, &qword_27C9150D0, &qword_214759228);
    v42 = v47;
    v43 = v45;
    sub_213FB2DF4(v47 + v45, &qword_27C914EC8, &unk_214784480);
    sub_21450B2C0(v41, v42 + v43, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t sub_21451151C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - v12;
  v14 = *v3;
  v15 = v3[1];
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    result = sub_2146D90A8();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  v18 = type metadata accessor for NearbyProtoJoinResponseContent(0);
  sub_213FB2E54(v6 + *(v18 + 20), v13, &qword_27C914EC8, &unk_214784480);
  v19 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  if ((*(*(v19 - 8) + 48))(v13, 1, v19) == 1)
  {
    goto LABEL_11;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_214511934(v6, a1, a2, a3);
  }

  else
  {
    sub_2145116F0(v6, a1, a2, a3);
  }

  result = sub_21450ACF8(v13, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
  if (!v5)
  {
LABEL_11:
    v20 = v6 + *(v18 + 24);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2145116F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NearbyProtoJoinResponseContent(0);
  sub_213FB2E54(a1 + *(v13 + 20), v8, &qword_27C914EC8, &unk_214784480);
  v14 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C914EC8, &unk_214784480);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21450B2C0(v8, v12, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);
    sub_21451415C(&qword_27C914FC0, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);
    sub_2146D90F8();
    return sub_21450ACF8(v12, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);
  }

  result = sub_21450ACF8(v8, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t sub_214511934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NearbyProtoJoinResponseContent(0);
  sub_213FB2E54(a1 + *(v13 + 20), v8, &qword_27C914EC8, &unk_214784480);
  v14 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C914EC8, &unk_214784480);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21450B2C0(v8, v12, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
    sub_21451415C(&qword_27C914FA8, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
    sub_2146D90F8();
    return sub_21450ACF8(v12, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
  }

  result = sub_21450ACF8(v8, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t sub_214511BC4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = *(a1 + 20);
  v5 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 24)];
  return sub_2146D8DE8();
}

uint64_t sub_214511C94(uint64_t a1, uint64_t a2)
{
  v4 = sub_21451415C(&qword_27C915090, type metadata accessor for NearbyProtoJoinResponseContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214511D34(uint64_t a1)
{
  v2 = sub_21451415C(&qword_27C914F90, type metadata accessor for NearbyProtoJoinResponseContent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214511DA0()
{
  sub_21451415C(&qword_27C914F90, type metadata accessor for NearbyProtoJoinResponseContent);

  return sub_2146D9008();
}

uint64_t sub_214511E20()
{
  result = MEMORY[0x2160545D0](0xD000000000000010, 0x800000021479D140);
  qword_27C914E70 = 0xD000000000000016;
  *algn_27C914E78 = 0x800000021479D100;
  return result;
}

uint64_t sub_214511EBC()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27C914E80);
  __swift_project_value_buffer(v0, qword_27C914E80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sessionIdentifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "memberHandles";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "userInfo";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_2145120F4()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v3 = *(type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0) + 28);
        sub_2146D8EC8();
        break;
      case 2:
        sub_2146D8F18();
        break;
      case 1:
        sub_2146D8F48();
        break;
    }
  }

  return result;
}

uint64_t sub_2145121BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_2146D90A8(), !v4))
  {
    if (!*(v3[2] + 16) || (result = sub_2146D9088(), !v4))
    {
      result = sub_2145122A4(v3, a1, a2, a3, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
      if (!v4)
      {
        v12 = v3 + *(type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0) + 24);
        return sub_2146D8DD8();
      }
    }
  }

  return result;
}

uint64_t sub_2145122A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = a1 + *(result + 28);
  v8 = *(v7 + 8);
  if (v8 >> 60 != 15)
  {
    v9 = *v7;
    sub_21402D9F8(*v7, *(v7 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v9, v8);
  }

  return result;
}

double sub_2145123A0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = MEMORY[0x277D84F90];
  v4 = a2 + *(a1 + 24);
  sub_2146D8DE8();
  result = 0.0;
  *(a2 + *(a1 + 28)) = xmmword_2146E68C0;
  return result;
}

uint64_t sub_21451244C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21451415C(&qword_27C915088, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2145124EC(uint64_t a1)
{
  v2 = sub_21451415C(&qword_27C914FA8, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214512558()
{
  sub_21451415C(&qword_27C914FA8, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);

  return sub_2146D9008();
}

uint64_t sub_2145125D8()
{
  result = MEMORY[0x2160545D0](0x436465696E65442ELL, 0xEE00746E65746E6FLL);
  qword_27C914E98 = 0xD000000000000016;
  unk_27C914EA0 = 0x800000021479D100;
  return result;
}

uint64_t sub_214512678(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t sub_2145126E0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2146D9148();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2146D9138();
}

uint64_t sub_21451274C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2146D9148();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_2145127E4()
{
  do
  {
    result = sub_2146D8E78();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_214512888(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2146DA958();
  a1(0);
  sub_21451415C(a2, a3);
  sub_2146D94E8();
  return sub_2146DA9B8();
}

uint64_t sub_214512938(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v5 = *a4;
  v6 = *a5;

  return v5;
}

uint64_t sub_214512998(uint64_t a1, uint64_t a2)
{
  v4 = sub_21451415C(&qword_27C915080, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214512A38(uint64_t a1)
{
  v2 = sub_21451415C(&qword_27C914FC0, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214512AA4()
{
  sub_21451415C(&qword_27C914FC0, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);

  return sub_2146D9008();
}

uint64_t sub_214512B20(void *a1, void *a2)
{
  v4 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9150D8, &qword_214759230);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2146DA6A8() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_2146DA6A8() & 1) == 0)
  {
    goto LABEL_13;
  }

  v25 = v8;
  v26 = type metadata accessor for NearbyProtoConnectionResponseContent(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 48);
  sub_213FB2E54(a1 + v17, v16, &qword_27C914EC0, qword_214758530);
  sub_213FB2E54(a2 + v17, &v16[v18], &qword_27C914EC0, qword_214758530);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_213FB2DF4(v16, &qword_27C914EC0, qword_214758530);
LABEL_15:
      v23 = *(v26 + 28);
      sub_2146D8DF8();
      sub_21451415C(&qword_27C903D38, MEMORY[0x277D216C8]);
      v20 = sub_2146D9578();
      return v20 & 1;
    }

    goto LABEL_12;
  }

  sub_213FB2E54(v16, v12, &qword_27C914EC0, qword_214758530);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_21450ACF8(v12, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
LABEL_12:
    sub_213FB2DF4(v16, &qword_27C9150D8, &qword_214759230);
    goto LABEL_13;
  }

  v21 = v25;
  sub_21450B2C0(&v16[v18], v25, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  v22 = sub_214512ED4(v12, v21);
  sub_21450ACF8(v21, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  sub_21450ACF8(v12, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  sub_213FB2DF4(v16, &qword_27C914EC0, qword_214758530);
  if (v22)
  {
    goto LABEL_15;
  }

LABEL_13:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_214512ED4(uint64_t a1, uint64_t a2)
{
  v31 = type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent(0);
  v4 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9150F8, &qword_214759250);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - v21;
  v23 = *(v20 + 56);
  sub_21450B6F8(a1, &v30 - v21, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  sub_21450B6F8(a2, &v22[v23], type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21450B6F8(v22, v17, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21450B2C0(&v22[v23], v10, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
      sub_2146D8DF8();
      sub_21451415C(&qword_27C903D38, MEMORY[0x277D216C8]);
      v26 = sub_2146D9578();
      sub_21450ACF8(v10, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
      sub_21450ACF8(v17, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
      sub_21450ACF8(v22, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
      return v26 & 1;
    }

    v27 = type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent;
    v28 = v17;
    goto LABEL_9;
  }

  sub_21450B6F8(v22, v15, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v27 = type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent;
    v28 = v15;
LABEL_9:
    sub_21450ACF8(v28, v27);
    sub_213FB2DF4(v22, &qword_27C9150F8, &qword_214759250);
LABEL_13:
    v26 = 0;
    return v26 & 1;
  }

  sub_21450B2C0(&v22[v23], v6, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
  if ((sub_214466780(*v15, *(v15 + 1), *v6, *(v6 + 1)) & 1) == 0)
  {
    sub_21450ACF8(v6, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
    goto LABEL_12;
  }

  v24 = *(v31 + 20);
  sub_2146D8DF8();
  sub_21451415C(&qword_27C903D38, MEMORY[0x277D216C8]);
  v25 = sub_2146D9578();
  sub_21450ACF8(v6, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
  if ((v25 & 1) == 0)
  {
LABEL_12:
    sub_21450ACF8(v15, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
    sub_21450ACF8(v22, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
    goto LABEL_13;
  }

  sub_21450ACF8(v15, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
  sub_21450ACF8(v22, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_214513420(void *a1, void *a2)
{
  v4 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9150C0, &qword_214759218);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2146DA6A8() & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v8;
  v26 = type metadata accessor for NearbyProtoJoinResponseContent(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 48);
  sub_213FB2E54(a1 + v17, v16, &qword_27C914EC8, &unk_214784480);
  sub_213FB2E54(a2 + v17, &v16[v18], &qword_27C914EC8, &unk_214784480);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_213FB2DF4(v16, &qword_27C914EC8, &unk_214784480);
LABEL_12:
      v23 = *(v26 + 24);
      sub_2146D8DF8();
      sub_21451415C(&qword_27C903D38, MEMORY[0x277D216C8]);
      v20 = sub_2146D9578();
      return v20 & 1;
    }

    goto LABEL_9;
  }

  sub_213FB2E54(v16, v12, &qword_27C914EC8, &unk_214784480);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_21450ACF8(v12, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
LABEL_9:
    sub_213FB2DF4(v16, &qword_27C9150C0, &qword_214759218);
    goto LABEL_10;
  }

  v21 = v25;
  sub_21450B2C0(&v16[v18], v25, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
  v22 = sub_2145137B0(v12, v21);
  sub_21450ACF8(v21, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
  sub_21450ACF8(v12, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
  sub_213FB2DF4(v16, &qword_27C914EC8, &unk_214784480);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_2145137B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9150F0, &qword_214759248);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  sub_21450B6F8(a1, &v31 - v22, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
  sub_21450B6F8(a2, &v23[v24], type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21450B6F8(v23, v16, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21450B2C0(&v23[v24], v7, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
      v25 = sub_214513B64(v16, v7);
      sub_21450ACF8(v7, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
      v26 = v16;
      v27 = type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent;
LABEL_9:
      sub_21450ACF8(v26, v27);
      sub_21450ACF8(v23, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
      return v25 & 1;
    }

    v28 = type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent;
    v29 = v16;
  }

  else
  {
    sub_21450B6F8(v23, v18, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21450B2C0(&v23[v24], v11, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);
      sub_2146D8DF8();
      sub_21451415C(&qword_27C903D38, MEMORY[0x277D216C8]);
      v25 = sub_2146D9578();
      sub_21450ACF8(v11, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);
      v26 = v18;
      v27 = type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent;
      goto LABEL_9;
    }

    v28 = type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent;
    v29 = v18;
  }

  sub_21450ACF8(v29, v28);
  sub_213FB2DF4(v23, &qword_27C9150F0, &qword_214759248);
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_214513B64(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2146DA6A8() & 1) == 0 || (sub_2143D53BC(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0);
  v6 = *(v5 + 28);
  v8 = *(a1 + v6);
  v7 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v11 = *v9;
  v10 = v9[1];
  if (v7 >> 60 != 15)
  {
    if (v10 >> 60 != 15)
    {
      sub_213FDCA18(v8, v7);
      sub_213FDCA18(v11, v10);
      v13 = sub_214466780(v8, v7, v11, v10);
      sub_213FDC6BC(v11, v10);
      sub_213FDC6BC(v8, v7);
      if (v13)
      {
        goto LABEL_14;
      }

      return 0;
    }

LABEL_11:
    sub_213FDCA18(v8, v7);
    sub_213FDCA18(v11, v10);
    sub_213FDC6BC(v8, v7);
    sub_213FDC6BC(v11, v10);
    return 0;
  }

  if (v10 >> 60 != 15)
  {
    goto LABEL_11;
  }

  sub_213FDCA18(v8, v7);
  sub_213FDCA18(v11, v10);
  sub_213FDC6BC(v8, v7);
LABEL_14:
  v14 = *(v5 + 24);
  sub_2146D8DF8();
  sub_21451415C(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_214513D24(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for NearbyProtoJoinRequestContent(0);
  v6 = v5[6];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = v5[7];
  v14 = *(a1 + v12);
  v13 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v17 = *v15;
  v16 = v15[1];
  if (v13 >> 60 == 15)
  {
    if (v16 >> 60 == 15)
    {
      sub_213FDCA18(v14, v13);
      sub_213FDCA18(v17, v16);
      sub_213FDC6BC(v14, v13);
      goto LABEL_22;
    }

LABEL_19:
    sub_213FDCA18(v14, v13);
    sub_213FDCA18(v17, v16);
    sub_213FDC6BC(v14, v13);
    sub_213FDC6BC(v17, v16);
    return 0;
  }

  if (v16 >> 60 == 15)
  {
    goto LABEL_19;
  }

  sub_213FDCA18(v14, v13);
  sub_213FDCA18(v17, v16);
  v19 = sub_214466780(v14, v13, v17, v16);
  sub_213FDC6BC(v17, v16);
  sub_213FDC6BC(v14, v13);
  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v20 = v5[8];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 != 2)
  {
    if (v22 != 2 && ((v21 ^ v22) & 1) == 0)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (v22 != 2)
  {
    return 0;
  }

LABEL_27:
  v23 = v5[5];
  sub_2146D8DF8();
  sub_21451415C(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_214513F48(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for NearbyProtoConnectionRequest(0);
  v7 = v6[7];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *v8 == *v10 && v9 == v11;
    if (!v12 && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = v6[8];
  v15 = *(a1 + v13);
  v14 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v18 = *v16;
  v17 = v16[1];
  if (v14 >> 60 != 15)
  {
    if (v17 >> 60 == 15)
    {
      goto LABEL_24;
    }

    sub_213FDCA18(v15, v14);
    sub_213FDCA18(v18, v17);
    v20 = sub_214466780(v15, v14, v18, v17);
    sub_213FDC6BC(v18, v17);
    sub_213FDC6BC(v15, v14);
    if (v20)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (v17 >> 60 != 15)
  {
LABEL_24:
    sub_213FDCA18(v15, v14);
    sub_213FDCA18(v18, v17);
    sub_213FDC6BC(v15, v14);
    sub_213FDC6BC(v18, v17);
    return 0;
  }

  sub_213FDCA18(v15, v14);
  sub_213FDCA18(v18, v17);
  sub_213FDC6BC(v15, v14);
LABEL_27:
  v21 = v6[6];
  sub_2146D8DF8();
  sub_21451415C(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21451415C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t keypath_get_13Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 28));
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a3 = v7;
  a3[1] = v8;

  return sub_213FDCA18(v5, v6);
}

void sub_214514B30()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_214515388(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_214515388(319, &qword_280B2FDD0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214514C4C()
{
  sub_214515024(319, &qword_27C914FF0, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  if (v0 <= 0x3F)
  {
    sub_2146D8DF8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_214514D50()
{
  result = sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_214514E1C()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_214515388(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_214515388(319, &qword_280B2FDD0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_214515388(319, &qword_280B34BD8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_214514F74()
{
  sub_214515024(319, &qword_27C915048, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
  if (v0 <= 0x3F)
  {
    sub_2146D8DF8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_214515024(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2145150A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2146D8DF8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2146D8DF8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_21451529C()
{
  sub_214515388(319, &qword_27C914C18, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2146D8DF8();
    if (v1 <= 0x3F)
    {
      sub_214515388(319, &qword_280B2FDD0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214515388(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_21451550C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = sub_213FDC8D0;
  *(v4 + 16) = sub_214059804;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

uint64_t sub_21451565C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MessagingCharacteristic(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v3;
}

__n128 sub_2145156DC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = (v1 + *(type metadata accessor for MessagingCharacteristic(0) + 24));
  v7 = v6->n128_u64[1];

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u8[8] = v4;
  v6[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214515744@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MessagingCharacteristic(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v8;
  *(a1 + 26) = v3;
}

__n128 sub_2145157AC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = (v1 + *(type metadata accessor for MessagingCharacteristic(0) + 36));
  v8 = v7->n128_u64[1];

  result = *a1;
  *v7 = *a1;
  v7[1].n128_u64[0] = v3;
  v7[1].n128_u8[8] = v4;
  v7[1].n128_u8[9] = v5;
  v7[1].n128_u8[10] = v6;
  return result;
}

uint64_t sub_21451581C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MessagingCharacteristic(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_214515888(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for MessagingCharacteristic(0) + 48));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_i64[1];

  sub_213FDC6D0(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214515900()
{
  v1 = v0 + *(type metadata accessor for MessagingCharacteristic(0) + 24);
  if ((*(v1 + 24) & 1) == 0)
  {
    return *(v1 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214515974()
{
  v1 = v0 + *(type metadata accessor for MessagingCharacteristic(0) + 36);
  if (*(v1 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v1 + 16);
    v3 = *(v1 + 24) & 1;
  }

  return result;
}

uint64_t sub_2145159F0()
{
  v1 = v0 + *(type metadata accessor for MessagingCharacteristic(0) + 48);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  return result;
}

uint64_t sub_214515ABC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_214515AE0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = v1->n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  v1[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214515B38@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 57);
  v6 = *(v1 + 58);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_214515B64(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = v1[2].n128_u64[1];

  result = *a1;
  v1[2] = *a1;
  v1[3].n128_u64[0] = v3;
  v1[3].n128_u8[8] = v4;
  v1[3].n128_u8[9] = v5;
  v1[3].n128_u8[10] = v6;
  return result;
}

uint64_t sub_214515BC4()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214515C28()
{
  if (*(v0 + 57))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v0 + 48);
    v2 = *(v0 + 56) & 1;
  }

  return result;
}

unint64_t sub_214515D48@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SwiftRegexValidator();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v17 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v7 = swift_initStackObject();
  *(v7 + 16) = v17;
  if (qword_27C903298 != -1)
  {
    swift_once();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v9 = __swift_project_value_buffer(v8, qword_27CA19F60);
  (*(*(v8 - 8) + 16))(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v10 = swift_allocObject();
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_2144A041C(v5, v12 + v11);
  *(v10 + 16) = sub_214306D5C;
  *(v10 + 24) = v12;
  *(v7 + 32) = v10;
  v13 = sub_2142E0070(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v14 + 16) = sub_214032610;
  *(v14 + 24) = v15;
  *(inited + 32) = v14;
  return sub_214042A28(inited, a1);
}

uint64_t sub_214515FAC@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ChatCharacteristic(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v3;
}

__n128 sub_21451602C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = (v1 + *(type metadata accessor for ChatCharacteristic(0) + 32));
  v7 = v6->n128_u64[1];

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u8[8] = v4;
  v6[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214516094@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ChatCharacteristic(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v3;
}

__n128 sub_2145160F4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = (v1 + *(type metadata accessor for ChatCharacteristic(0) + 36));
  v7 = v6->n128_u64[1];

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u8[8] = v4;
  v6[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_21451615C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ChatCharacteristic(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v8;
  *(a1 + 26) = v3;
}

__n128 sub_2145161C4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = (v1 + *(type metadata accessor for ChatCharacteristic(0) + 40));
  v8 = v7->n128_u64[1];

  result = *a1;
  *v7 = *a1;
  v7[1].n128_u64[0] = v3;
  v7[1].n128_u8[8] = v4;
  v7[1].n128_u8[9] = v5;
  v7[1].n128_u8[10] = v6;
  return result;
}

uint64_t sub_214516234@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ChatCharacteristic(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v8;
  *(a1 + 26) = v3;
}

__n128 sub_21451629C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = (v1 + *(type metadata accessor for ChatCharacteristic(0) + 44));
  v8 = v7->n128_u64[1];

  result = *a1;
  *v7 = *a1;
  v7[1].n128_u64[0] = v3;
  v7[1].n128_u8[8] = v4;
  v7[1].n128_u8[9] = v5;
  v7[1].n128_u8[10] = v6;
  return result;
}

uint64_t sub_21451630C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ChatCharacteristic(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_214516378(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for ChatCharacteristic(0) + 52));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_i64[1];

  sub_213FDC6D0(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145163F4()
{
  v1 = v0 + *(type metadata accessor for ChatCharacteristic(0) + 32);
  if ((*(v1 + 24) & 1) == 0)
  {
    return *(v1 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214516468()
{
  v1 = v0 + *(type metadata accessor for ChatCharacteristic(0) + 36);
  if ((*(v1 + 24) & 1) == 0)
  {
    return *(v1 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145164DC()
{
  v1 = v0 + *(type metadata accessor for ChatCharacteristic(0) + 40);
  if (*(v1 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v1 + 16);
    v3 = *(v1 + 24) & 1;
  }

  return result;
}

uint64_t sub_214516558()
{
  v1 = v0 + *(type metadata accessor for ChatCharacteristic(0) + 44);
  if (*(v1 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v1 + 16);
    v3 = *(v1 + 24) & 1;
  }

  return result;
}

uint64_t sub_2145165D4()
{
  v1 = v0 + *(type metadata accessor for ChatCharacteristic(0) + 52);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  return result;
}

unint64_t sub_2145166A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2146ED240;
  *(v8 + 16) = a1;
  *(v8 + 24) = v9;
  *(v7 + 32) = v8;
  v10 = sub_2142DFFF8(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = a2;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_2140428D0(inited, a3);
}

uint64_t sub_214516844@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  v6 = *(v1 + 26);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_214516870(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = v1->n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  v1[1].n128_u8[9] = v5;
  v1[1].n128_u8[10] = v6;
  return result;
}

uint64_t sub_2145168D0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 57);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_2145168F4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = v1[2].n128_u64[1];

  result = *a1;
  v1[2] = *a1;
  v1[3].n128_u64[0] = v3;
  v1[3].n128_u8[8] = v4;
  v1[3].n128_u8[9] = v5;
  return result;
}

uint64_t sub_21451694C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FileTransferCharacteristic(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_2145169D8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for FileTransferCharacteristic(0) + 36));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_i64[1];

  sub_213FDC6D0(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214516A50@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FileTransferCharacteristic(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_214516ABC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for FileTransferCharacteristic(0) + 40));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_i64[1];

  sub_213FDC6D0(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214516B34@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FileTransferCharacteristic(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 25) = v3;
}

__n128 sub_214516B94(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = (v1 + *(type metadata accessor for FileTransferCharacteristic(0) + 48));
  v7 = v6->n128_u64[1];

  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u8[8] = v4;
  v6[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214516BFC()
{
  if (*(v0 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v0 + 16);
    v2 = *(v0 + 24) & 1;
  }

  return result;
}

uint64_t sub_214516C68()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    return *(v0 + 48);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214516CCC()
{
  v1 = v0 + *(type metadata accessor for FileTransferCharacteristic(0) + 36);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  return result;
}

uint64_t sub_214516D5C()
{
  v1 = v0 + *(type metadata accessor for FileTransferCharacteristic(0) + 40);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  return result;
}

uint64_t sub_214516DEC()
{
  v1 = v0 + *(type metadata accessor for FileTransferCharacteristic(0) + 48);
  if ((*(v1 + 24) & 1) == 0)
  {
    return *(v1 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214516E60@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214517048@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for MessagingCharacteristic(0);
  v5 = a1 + *(result + 24);
  if (*(v5 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v5 + 16);
  }

  return result;
}

uint64_t (*sub_214517108(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MessagingCharacteristic(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  if (*(v4 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v4 + 16);
    return sub_21451BC94;
  }

  return result;
}

uint64_t sub_2145171B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for MessagingCharacteristic(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v3;
}

uint64_t sub_214517214(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = a2 + *(type metadata accessor for MessagingCharacteristic(0) + 24);
  v8 = *(v7 + 8);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 25) = v6;
  return result;
}

uint64_t (*sub_214517290(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for MessagingCharacteristic(0) + 24);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  LOBYTE(v6) = *(v6 + 25);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v6;

  return sub_21451BCAC;
}

uint64_t sub_21451733C@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MessagingCharacteristic(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_214517370(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MessagingCharacteristic(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t sub_21451740C(char a1)
{
  result = type metadata accessor for MessagingCharacteristic(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_214517484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for MessagingCharacteristic(0);
  v5 = a1 + *(result + 36);
  if (*(v5 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 24);
    *a2 = *(v5 + 16);
    *(a2 + 8) = v6 & 1;
  }

  return result;
}

uint64_t (*sub_214517560(uint64_t a1))(uint64_t)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for MessagingCharacteristic(0) + 36);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  if (*(v4 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 24);
    *a1 = *(v4 + 16);
    *(a1 + 8) = v5 & 1;
    return sub_2144B95CC;
  }

  return result;
}

uint64_t sub_214517614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for MessagingCharacteristic(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v8;
  *(a2 + 26) = v3;
}

uint64_t sub_214517680(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
  v8 = a2 + *(type metadata accessor for MessagingCharacteristic(0) + 36);
  v9 = *(v8 + 8);

  *v8 = v3;
  *(v8 + 8) = v2;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 25) = v6;
  *(v8 + 26) = v7;
  return result;
}

void (*sub_214517704(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for MessagingCharacteristic(0) + 36);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  v11 = *(v6 + 25);
  LOBYTE(v6) = *(v6 + 26);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v11;
  *(v4 + 26) = v6;

  return sub_2144B95D0;
}

uint64_t sub_214517968@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for MessagingCharacteristic(0) + 48);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_214517A04(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for MessagingCharacteristic(0) + 48);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214517ACC(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for MessagingCharacteristic(0) + 48);
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v11 = *(v5 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214517C1C(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for MessagingCharacteristic(0) + 48);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_214517D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for MessagingCharacteristic(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_214517D78(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for MessagingCharacteristic(0) + 48);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_214517E10(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for MessagingCharacteristic(0) + 48);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21439DFAC;
}

uint64_t (*sub_214517EC0(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 16);
    return sub_2143D0368;
  }

  return result;
}

void (*sub_214517F48(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_2143D0480;
}

uint64_t (*sub_214518008(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  if (*(v1 + 57))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 56);
    *a1 = *(v1 + 48);
    *(a1 + 8) = v2 & 1;
    return sub_2144B6B08;
  }

  return result;
}

void (*sub_21451809C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 57);
  v9 = *(v1 + 58);
  *v4 = *(v1 + 32);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2144B6C50;
}

uint64_t sub_21451813C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StandaloneMsgCharacteristic(0) + 24);
  v4 = sub_2146D8958();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2145181D8(uint64_t a1)
{
  v3 = *(type metadata accessor for StandaloneMsgCharacteristic(0) + 24);
  v4 = sub_2146D8958();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t (*sub_2145182A4(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  if (*(v1 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 24);
    *a1 = *(v1 + 16);
    *(a1 + 8) = v2 & 1;
    return sub_2144B6910;
  }

  return result;
}

void (*sub_214518338(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  v9 = *(v1 + 26);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2145183D8;
}

uint64_t sub_214518544(char a1)
{
  result = type metadata accessor for ChatCharacteristic(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_2145185E0(char a1)
{
  result = type metadata accessor for ChatCharacteristic(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_214518658@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for ChatCharacteristic(0);
  v5 = a1 + *(result + 32);
  if (*(v5 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v5 + 16);
  }

  return result;
}

uint64_t (*sub_214518718(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ChatCharacteristic(0) + 32);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  if (*(v4 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v4 + 16);
    return sub_2145187C0;
  }

  return result;
}

uint64_t sub_2145187EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ChatCharacteristic(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v3;
}

uint64_t sub_214518850(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = a2 + *(type metadata accessor for ChatCharacteristic(0) + 32);
  v8 = *(v7 + 8);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 25) = v6;
  return result;
}

uint64_t (*sub_2145188CC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for ChatCharacteristic(0) + 32);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  LOBYTE(v6) = *(v6 + 25);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v6;

  return sub_214518978;
}

uint64_t sub_21451897C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for ChatCharacteristic(0);
  v5 = a1 + *(result + 36);
  if (*(v5 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v5 + 16);
  }

  return result;
}

uint64_t (*sub_214518A3C(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ChatCharacteristic(0) + 36);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  if (*(v4 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v4 + 16);
    return sub_21451BC94;
  }

  return result;
}

uint64_t sub_214518AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ChatCharacteristic(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v3;
}

uint64_t sub_214518B48(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = a2 + *(type metadata accessor for ChatCharacteristic(0) + 36);
  v8 = *(v7 + 8);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 25) = v6;
  return result;
}

uint64_t (*sub_214518BC4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for ChatCharacteristic(0) + 36);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  LOBYTE(v6) = *(v6 + 25);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v6;

  return sub_21451BCAC;
}

uint64_t sub_214518C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for ChatCharacteristic(0);
  v5 = a1 + *(result + 40);
  if (*(v5 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 24);
    *a2 = *(v5 + 16);
    *(a2 + 8) = v6 & 1;
  }

  return result;
}

uint64_t (*sub_214518D4C(uint64_t a1))(uint64_t)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for ChatCharacteristic(0) + 40);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  if (*(v4 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 24);
    *a1 = *(v4 + 16);
    *(a1 + 8) = v5 & 1;
    return sub_2144B5BC4;
  }

  return result;
}

uint64_t sub_214518E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ChatCharacteristic(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v8;
  *(a2 + 26) = v3;
}

uint64_t sub_214518E6C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
  v8 = a2 + *(type metadata accessor for ChatCharacteristic(0) + 40);
  v9 = *(v8 + 8);

  *v8 = v3;
  *(v8 + 8) = v2;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 25) = v6;
  *(v8 + 26) = v7;
  return result;
}

void (*sub_214518EF0(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for ChatCharacteristic(0) + 40);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  v11 = *(v6 + 25);
  LOBYTE(v6) = *(v6 + 26);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v11;
  *(v4 + 26) = v6;

  return sub_2144B5D6C;
}

uint64_t sub_214518FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for ChatCharacteristic(0);
  v5 = a1 + *(result + 44);
  if (*(v5 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 24);
    *a2 = *(v5 + 16);
    *(a2 + 8) = v6 & 1;
  }

  return result;
}

uint64_t (*sub_214519080(uint64_t a1))(uint64_t)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for ChatCharacteristic(0) + 44);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  if (*(v4 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 24);
    *a1 = *(v4 + 16);
    *(a1 + 8) = v5 & 1;
    return sub_2144B95CC;
  }

  return result;
}

uint64_t sub_214519134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ChatCharacteristic(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v8;
  *(a2 + 26) = v3;
}

uint64_t sub_2145191A0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
  v8 = a2 + *(type metadata accessor for ChatCharacteristic(0) + 44);
  v9 = *(v8 + 8);

  *v8 = v3;
  *(v8 + 8) = v2;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 25) = v6;
  *(v8 + 26) = v7;
  return result;
}

void (*sub_214519224(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for ChatCharacteristic(0) + 44);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  v11 = *(v6 + 25);
  LOBYTE(v6) = *(v6 + 26);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v11;
  *(v4 + 26) = v6;

  return sub_2144B95D0;
}

uint64_t sub_2145192FC(char a1)
{
  result = type metadata accessor for ChatCharacteristic(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t sub_214519374@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for ChatCharacteristic(0) + 52);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_214519410(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for ChatCharacteristic(0) + 52);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2145194D8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for ChatCharacteristic(0) + 52);
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v11 = *(v5 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214519628(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ChatCharacteristic(0) + 52);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21409E1C0;
  }

  return result;
}

uint64_t sub_214519714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ChatCharacteristic(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_214519784(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for ChatCharacteristic(0) + 52);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_21451981C(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for ChatCharacteristic(0) + 52);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21409E45C;
}

uint64_t (*sub_2145198C8(uint64_t a1))(uint64_t)
{
  *(a1 + 16) = v1;
  if (*(v1 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 24);
    *a1 = *(v1 + 16);
    *(a1 + 8) = v2 & 1;
    return sub_21451BC98;
  }

  return result;
}

void (*sub_21451995C(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  v9 = *(v1 + 26);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_21451BCB0;
}

uint64_t sub_2145199FC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 56))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 48);
  }

  return result;
}

uint64_t (*sub_214519A80(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 56))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 48);
    return sub_214519B08;
  }

  return result;
}

void (*sub_214519B30(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 57);
  *v4 = *(v1 + 32);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214441F1C;
}

uint64_t sub_214519DA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for FileTransferCharacteristic(0) + 36);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_214519E44(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for FileTransferCharacteristic(0) + 36);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214519F0C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for FileTransferCharacteristic(0) + 36);
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v11 = *(v5 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21451A05C(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for FileTransferCharacteristic(0) + 36);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_21451A148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FileTransferCharacteristic(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21451A1B8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for FileTransferCharacteristic(0) + 36);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_21451A250(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for FileTransferCharacteristic(0) + 36);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21439DFAC;
}

uint64_t sub_21451A2FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for FileTransferCharacteristic(0) + 40);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_21451A398(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for FileTransferCharacteristic(0) + 40);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21451A460(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for FileTransferCharacteristic(0) + 40);
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v11 = *(v5 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21451A5B0(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for FileTransferCharacteristic(0) + 40);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_21451A69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FileTransferCharacteristic(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21451A70C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for FileTransferCharacteristic(0) + 40);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_21451A7A4(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for FileTransferCharacteristic(0) + 40);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21439DFAC;
}

uint64_t sub_21451A874(char a1)
{
  result = type metadata accessor for FileTransferCharacteristic(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t sub_21451A8EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for FileTransferCharacteristic(0);
  v5 = a1 + *(result + 48);
  if (*(v5 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v5 + 16);
  }

  return result;
}

uint64_t (*sub_21451A9AC(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for FileTransferCharacteristic(0) + 48);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  if (*(v4 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v4 + 16);
    return sub_21451BC94;
  }

  return result;
}

uint64_t sub_21451AA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FileTransferCharacteristic(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v3;
}

uint64_t sub_21451AAB8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = a2 + *(type metadata accessor for FileTransferCharacteristic(0) + 48);
  v8 = *(v7 + 8);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 25) = v6;
  return result;
}

uint64_t (*sub_21451AB34(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for FileTransferCharacteristic(0) + 48);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  LOBYTE(v6) = *(v6 + 25);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v6;

  return sub_21451BCAC;
}

void sub_21451ABE0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4] + *(*a1 + 7);
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(v3 + 8);
  if (a2)
  {
    v10 = (*a1)[1];

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    *(v3 + 25) = v8;
    v11 = v2[1];
  }

  else
  {
    v12 = *(v3 + 8);

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
    *(v3 + 25) = v8;
  }

  free(v2);
}

unint64_t sub_21451AC94@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_21451AF98(char a1)
{
  result = type metadata accessor for ChatbotCharacteristic(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_21451B034(char a1)
{
  result = type metadata accessor for ChatbotCharacteristic(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_21451B0AC@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ChatbotCharacteristic(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t sub_21451B0E0(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ChatbotCharacteristic(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

unint64_t sub_21451B15C()
{
  result = qword_27C915100;
  if (!qword_27C915100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915100);
  }

  return result;
}

uint64_t sub_21451B1B0(uint64_t a1)
{
  *(a1 + 8) = sub_21451B234(&qword_27C909268, type metadata accessor for MessagingCharacteristic);
  result = sub_21451B234(&qword_27C9092A8, type metadata accessor for MessagingCharacteristic);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21451B234(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21451B27C(uint64_t a1)
{
  *(a1 + 8) = sub_21451B234(&qword_27C909548, type metadata accessor for StandaloneMsgCharacteristic);
  result = sub_21451B234(&qword_27C909598, type metadata accessor for StandaloneMsgCharacteristic);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21451B300(uint64_t a1)
{
  *(a1 + 8) = sub_21451B234(&qword_27C909558, type metadata accessor for ChatCharacteristic);
  result = sub_21451B234(&qword_27C9095A8, type metadata accessor for ChatCharacteristic);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21451B384(uint64_t a1)
{
  *(a1 + 8) = sub_21451B234(&qword_27C909570, type metadata accessor for FileTransferCharacteristic);
  result = sub_21451B234(&qword_27C9095C0, type metadata accessor for FileTransferCharacteristic);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21451B40C()
{
  result = qword_27C915108;
  if (!qword_27C915108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915108);
  }

  return result;
}

uint64_t sub_21451B460(uint64_t a1)
{
  *(a1 + 8) = sub_21451B234(&qword_27C909580, type metadata accessor for ChatbotCharacteristic);
  result = sub_21451B234(&qword_27C9095D0, type metadata accessor for ChatbotCharacteristic);
  *(a1 + 16) = result;
  return result;
}

uint64_t keypath_get_38Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 25);
  v6 = *(a1 + 26);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 25) = v5;
  *(a2 + 26) = v6;
}

void sub_21451B53C()
{
  sub_21451B6F0(319, &qword_27C915120, type metadata accessor for StandaloneMsgCharacteristic);
  if (v0 <= 0x3F)
  {
    sub_21451B6F0(319, &qword_27C915128, type metadata accessor for ChatCharacteristic);
    if (v1 <= 0x3F)
    {
      sub_21451B744();
      if (v2 <= 0x3F)
      {
        sub_21409A2B4(319, &qword_280B2E560, &qword_27C904798, qword_21473CFD0);
        if (v3 <= 0x3F)
        {
          sub_21451B6F0(319, &qword_27C915130, type metadata accessor for FileTransferCharacteristic);
          if (v4 <= 0x3F)
          {
            sub_21451B6F0(319, &qword_27C915138, type metadata accessor for ChatbotCharacteristic);
            if (v5 <= 0x3F)
            {
              sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_21451B6F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21451B744()
{
  if (!qword_27C9050E0)
  {
    v0 = type metadata accessor for Validated();
    if (!v1)
    {
      atomic_store(v0, &qword_27C9050E0);
    }
  }
}

void sub_21451B7CC()
{
  sub_21451B744();
  if (v0 <= 0x3F)
  {
    sub_21409A2B4(319, &qword_280B2E560, &qword_27C904798, qword_21473CFD0);
    if (v1 <= 0x3F)
    {
      sub_2146D8958();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21451B8A8()
{
  sub_21409A2B4(319, &qword_280B2E560, &qword_27C904798, qword_21473CFD0);
  if (v0 <= 0x3F)
  {
    sub_21451B6F0(319, &qword_280B30B80, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      sub_21451B744();
      if (v2 <= 0x3F)
      {
        sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21451B9F8()
{
  sub_21409A2B4(319, &qword_280B2E560, &qword_27C904798, qword_21473CFD0);
  if (v0 <= 0x3F)
  {
    sub_21451B744();
    if (v1 <= 0x3F)
    {
      sub_21451B6F0(319, &qword_280B30B80, MEMORY[0x277CC9260]);
      if (v2 <= 0x3F)
      {
        sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21451BB38()
{
  sub_21451B6F0(319, &qword_280B30B80, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_21451BBEC()
{
  result = qword_27C915180;
  if (!qword_27C915180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915180);
  }

  return result;
}

unint64_t sub_21451BC40()
{
  result = qword_27C915188;
  if (!qword_27C915188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915188);
  }

  return result;
}

__n128 sub_21451BDB4@<Q0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v9 = a1(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  sub_21451DAA8(v7, &v17 - v11, a2);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_21451D74C(v12, a3);
    result.n128_u64[0] = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0;
  }

  else
  {
    v14 = *(v12 + 5);
    *(a4 + 64) = *(v12 + 4);
    *(a4 + 80) = v14;
    *(a4 + 96) = *(v12 + 6);
    *(a4 + 112) = v12[112];
    v15 = *(v12 + 1);
    *a4 = *v12;
    *(a4 + 16) = v15;
    result = *(v12 + 2);
    v16 = *(v12 + 3);
    *(a4 + 32) = result;
    *(a4 + 48) = v16;
  }

  return result;
}

uint64_t sub_21451BEF4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v9 = a1(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  sub_21451DAA8(v7, &v16 - v11, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21451DB10(v12, a4, type metadata accessor for Chatbot.Action);
    v13 = 0;
  }

  else
  {
    sub_21451D74C(v12, a3);
    v13 = 1;
  }

  v14 = type metadata accessor for Chatbot.Action(0);
  return (*(*(v14 - 8) + 56))(a4, v13, 1, v14);
}

uint64_t sub_21451C060@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v9 = a1(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  sub_21451DAA8(v7, &v18 - v11, a2);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v14 = *v12;
    v15 = *(v12 + 1);
    v16 = v12[32];
    v17 = *(v12 + 5);
  }

  else
  {
    result = sub_21451D74C(v12, a3);
    v16 = 0;
    v17 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  *a4 = v14;
  *(a4 + 16) = v15;
  *(a4 + 32) = v16;
  *(a4 + 40) = v17;
  return result;
}

__n128 sub_21451C1C8@<Q0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for Chatbot.Action.ActionType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Chatbot.Action(0);
  sub_21451DAA8(v1 + *(v7 + 20), v6, type metadata accessor for Chatbot.Action.ActionType);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_21451D74C(v6, type metadata accessor for Chatbot.Action.ActionType);
    result.n128_u64[0] = 0;
    *a1 = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *(a1 + 57) = 0u;
  }

  else
  {
    sub_2143277E4(v6, v10);
    sub_2143277E4(v10, v11);
    v9 = v12[0];
    a1[2] = v11[2];
    a1[3] = v9;
    *(a1 + 57) = *(v12 + 9);
    result = v11[1];
    *a1 = v11[0];
    a1[1] = result;
  }

  return result;
}

uint64_t sub_21451C2E0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Chatbot.Action.ActionType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Chatbot.Action(0);
  sub_21451DAA8(v1 + *(v7 + 20), v6, type metadata accessor for Chatbot.Action.ActionType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21451DB10(v6, a1, type metadata accessor for Chatbot.DialerAction);
    v8 = 0;
  }

  else
  {
    sub_21451D74C(v6, type metadata accessor for Chatbot.Action.ActionType);
    v8 = 1;
  }

  v9 = type metadata accessor for Chatbot.DialerAction(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_21451C420@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Chatbot.Action.ActionType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Chatbot.Action(0);
  sub_21451DAA8(v1 + *(v7 + 20), v6, type metadata accessor for Chatbot.Action.ActionType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_21451DB10(v6, a1, type metadata accessor for Chatbot.MapAction);
    v8 = 0;
  }

  else
  {
    sub_21451D74C(v6, type metadata accessor for Chatbot.Action.ActionType);
    v8 = 1;
  }

  v9 = type metadata accessor for Chatbot.MapAction(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_21451C560@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Chatbot.Action.ActionType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Chatbot.Action(0);
  sub_21451DAA8(v1 + *(v7 + 20), v6, type metadata accessor for Chatbot.Action.ActionType);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_21451DB10(v6, a1, type metadata accessor for Chatbot.CalendarAction);
    v8 = 0;
  }

  else
  {
    sub_21451D74C(v6, type metadata accessor for Chatbot.Action.ActionType);
    v8 = 1;
  }

  v9 = type metadata accessor for Chatbot.CalendarAction(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

double sub_21451C6A0@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Chatbot.Action.ActionType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Chatbot.Action(0);
  sub_21451DAA8(v1 + *(v7 + 20), v6, type metadata accessor for Chatbot.Action.ActionType);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v8 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v8;
    *(a1 + 57) = *(v6 + 57);
    v9 = v6[1];
    *a1 = *v6;
    *(a1 + 16) = v9;
  }

  else
  {
    sub_21451D74C(v6, type metadata accessor for Chatbot.Action.ActionType);
    *&v9 = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0x1FFFFFFFE00;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0;
  }

  return *&v9;
}

uint64_t sub_21451C7AC@<X0>(BOOL *a1@<X8>)
{
  v3 = type metadata accessor for Chatbot.Action.ActionType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Chatbot.Action(0);
  sub_21451DAA8(v1 + *(v7 + 20), v6, type metadata accessor for Chatbot.Action.ActionType);
  result = swift_getEnumCaseMultiPayload();
  v9 = result;
  if (result != 5)
  {
    result = sub_21451D74C(v6, type metadata accessor for Chatbot.Action.ActionType);
  }

  *a1 = v9 != 5;
  return result;
}

uint64_t sub_21451C890@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for Chatbot.Action.ActionType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Chatbot.Action(0);
  sub_21451DAA8(v1 + *(v7 + 20), v6, type metadata accessor for Chatbot.Action.ActionType);
  result = swift_getEnumCaseMultiPayload();
  if (result == 6)
  {
    v9 = *v6;
  }

  else
  {
    result = sub_21451D74C(v6, type metadata accessor for Chatbot.Action.ActionType);
    v9 = 2;
  }

  *a1 = v9;
  return result;
}

uint64_t sub_21451C974@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Chatbot.DialerAction(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21451DAA8(v2, v7, type metadata accessor for Chatbot.DialerAction);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_21451D74C(v7, type metadata accessor for Chatbot.DialerAction);
    v8 = 1;
  }

  else
  {
    sub_21451DB10(v7, a1, type metadata accessor for Chatbot.DialerAction.DialPhoneNumber);
    v8 = 0;
  }

  v9 = type metadata accessor for Chatbot.DialerAction.DialPhoneNumber(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_21451CAA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Chatbot.DialerAction(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21451DAA8(v2, v7, type metadata accessor for Chatbot.DialerAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21451DB10(v7, a1, type metadata accessor for Chatbot.DialerAction.DialEnrichedCall);
    v8 = 0;
  }

  else
  {
    sub_21451D74C(v7, type metadata accessor for Chatbot.DialerAction);
    v8 = 1;
  }

  v9 = type metadata accessor for Chatbot.DialerAction.DialEnrichedCall(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_21451CBE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Chatbot.DialerAction(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21451DAA8(v2, v7, type metadata accessor for Chatbot.DialerAction);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_21451DB10(v7, a1, type metadata accessor for Chatbot.DialerAction.DialVideoCall);
    v8 = 0;
  }

  else
  {
    sub_21451D74C(v7, type metadata accessor for Chatbot.DialerAction);
    v8 = 1;
  }

  v9 = type metadata accessor for Chatbot.DialerAction.DialVideoCall(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_21451CD18@<X0>(_OWORD *a1@<X8>)
{
  sub_2143277E4(v1, v8);
  sub_2143277E4(v8, v9);
  v3 = v10[0];
  a1[2] = v9[2];
  a1[3] = v3;
  *(a1 + 57) = *(v10 + 9);
  v4 = v9[1];
  *a1 = v9[0];
  a1[1] = v4;
  sub_2143277E4(v8, v7);
  return sub_21431B084(v7, v6);
}

uint64_t sub_21451CD90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Chatbot.Message(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21451DAA8(v2, v7, type metadata accessor for Chatbot.Message);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21451D74C(v7, type metadata accessor for Chatbot.Message);
    v8 = 1;
  }

  else
  {
    sub_21451DB10(v7, a1, type metadata accessor for Chatbot.GeneralPurposeCardMessage);
    v8 = 0;
  }

  v9 = type metadata accessor for Chatbot.GeneralPurposeCardMessage(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_21451CEC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Chatbot.Message(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21451DAA8(v2, v7, type metadata accessor for Chatbot.Message);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21451DB10(v7, a1, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage);
    v8 = 0;
  }

  else
  {
    sub_21451D74C(v7, type metadata accessor for Chatbot.Message);
    v8 = 1;
  }

  v9 = type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_21451D000@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Chatbot.RootMessage(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21451DAA8(v2, v7, type metadata accessor for Chatbot.RootMessage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21451D74C(v7, type metadata accessor for Chatbot.RootMessage);
    v8 = 1;
  }

  else
  {
    sub_21451DB10(v7, a1, type metadata accessor for Chatbot.Message);
    v8 = 0;
  }

  v9 = type metadata accessor for Chatbot.Message(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_21451D138()
{
  v1 = type metadata accessor for Chatbot.RootMessage(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21451DAA8(v0, v4, type metadata accessor for Chatbot.RootMessage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v4;
  }

  sub_21451D74C(v4, type metadata accessor for Chatbot.RootMessage);
  return 0;
}

__n128 sub_21451D248@<Q0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v9 = a1(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  sub_21451DAA8(v7, &v17 - v11, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21451D74C(v12, a3);
    result.n128_u64[0] = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0;
  }

  else
  {
    v14 = *(v12 + 5);
    *(a4 + 64) = *(v12 + 4);
    *(a4 + 80) = v14;
    *(a4 + 96) = *(v12 + 6);
    *(a4 + 112) = v12[112];
    v15 = *(v12 + 1);
    *a4 = *v12;
    *(a4 + 16) = v15;
    result = *(v12 + 2);
    v16 = *(v12 + 3);
    *(a4 + 32) = result;
    *(a4 + 48) = v16;
  }

  return result;
}

uint64_t sub_21451D38C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21451DAA8(v2, v7, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21451DB10(v7, a1, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout);
    v8 = 0;
  }

  else
  {
    sub_21451D74C(v7, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout);
    v8 = 1;
  }

  v9 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_21451D4C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21451DAA8(v2, v7, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21451D74C(v7, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout);
    v8 = 1;
  }

  else
  {
    sub_21451DB10(v7, a1, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout);
    v8 = 0;
  }

  v9 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_21451D5FC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Chatbot.MapAction(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21451DAA8(v1, v6, type metadata accessor for Chatbot.MapAction);
  v7 = type metadata accessor for Chatbot.MapAction.ShowLocation(0);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21451D74C(v6, type metadata accessor for Chatbot.MapAction);
    v9 = 1;
  }

  else
  {
    sub_21451DB10(v6, a1, type metadata accessor for Chatbot.MapAction.ShowLocation);
    v9 = 0;
  }

  return (*(v8 + 56))(a1, v9, 1, v7);
}

uint64_t sub_21451D74C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_21451D7AC()
{
  v1 = type metadata accessor for Chatbot.MapAction(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21451DAA8(v0, v4, type metadata accessor for Chatbot.MapAction);
  v5 = type metadata accessor for Chatbot.MapAction.ShowLocation(0);
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5) == 1;
  sub_21451D74C(v4, type metadata accessor for Chatbot.MapAction);
  return v6;
}

uint64_t sub_21451D894@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 28);
  if ((v3 & 0x80) != 0)
  {
    v3 = 0;
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else
  {
    v5 = v1[5];
    v4 = v1[6];
    v7 = v1[3];
    v6 = v1[4];
    v9 = v1[1];
    v8 = v1[2];
    v10 = *v1;
    *a1 = *v1;
    *(a1 + 8) = v9;
    *(a1 + 16) = v8;
    *(a1 + 24) = v7;
    *(a1 + 32) = v6;
    *(a1 + 40) = v5;
    *(a1 + 48) = v4;
    v13[0] = v10;
    v13[1] = v9;
    v13[2] = v8;
    v13[3] = v7;
    v13[4] = v6;
    v13[5] = v5;
    v13[6] = v4;
    v14 = v3;
    result = sub_21431B60C(v13, &v12);
  }

  *(a1 + 56) = v3;
  return result;
}

uint64_t sub_21451D928@<X0>(uint64_t a1@<X8>)
{
  if ((v1[7] & 0x80) != 0)
  {
    v4 = v1[3];
    v8 = *(v1 + 1);
    v3 = *v1;
    v5 = *(v1 + 32);

    v6 = v8;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_21451D9B8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Chatbot.CalendarAction(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21451DAA8(v1, v6, type metadata accessor for Chatbot.CalendarAction);
  sub_21451DB10(v6, a1, type metadata accessor for Chatbot.CalendarAction.CreateEvent);
  Event = type metadata accessor for Chatbot.CalendarAction.CreateEvent(0);
  return (*(*(Event - 8) + 56))(a1, 0, 1, Event);
}

uint64_t sub_21451DAA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21451DB10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_21451DB78@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[4];
  if (v2 < 0)
  {
    result = 0.0;
    *(a1 + 57) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    v3 = *(v1 + 72);
    v5 = v1[7];
    v4 = v1[8];
    v7 = v1[5];
    v6 = v1[6];
    v9 = v1[2];
    v8 = v1[3];
    v10 = *v1;
    v11 = v1[1];
    *a1 = *v1;
    *(a1 + 8) = v11;
    *(a1 + 16) = v9;
    *(a1 + 24) = v8;
    *(a1 + 32) = v2;
    *(a1 + 40) = v7;
    *(a1 + 48) = v6;
    *(a1 + 56) = v5;
    *(a1 + 64) = v4;
    *(a1 + 72) = v3;
    v14[0] = v10;
    v14[1] = v11;
    v14[2] = v9;
    v14[3] = v8;
    v14[4] = v2;
    v14[5] = v7;
    v14[6] = v6;
    v14[7] = v5;
    v14[8] = v4;
    v15 = v3;
    sub_21431B8B4(v14, &v13);
  }

  return result;
}

uint64_t sub_21451DC00@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[4];
  if (v3 < 0)
  {
    v5 = v1[3];
    v9 = *(v1 + 1);
    v4 = *v1;
    v6 = v3 & 0x1FF;

    v7 = v9;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0uLL;
  }

  *a1 = v4;
  *(a1 + 8) = v7;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_21451DC98@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2146DA098();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21451DD0C()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_21451DD80()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_21451DDD4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2146DA098();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_21451DE48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9151A8, &qword_214759788);
  inited = swift_initStackObject();
  *(inited + 32) = 0;
  *(inited + 16) = xmmword_2147486B0;
  *(inited + 64) = &type metadata for ATXHeaderValidator;
  *(inited + 72) = &off_28268CA78;
  *(inited + 40) = 0;
  *(inited + 48) = &unk_282658940;
  *(inited + 80) = 1;
  *(inited + 112) = &type metadata for AVCIHeaderValidator;
  *(inited + 120) = &off_28268CA50;
  *(inited + 88) = 1;
  *(inited + 96) = 4;
  *(inited + 104) = &unk_282658A80;
  *(inited + 128) = 2;
  *(inited + 160) = &type metadata for HEICHeaderValidator;
  *(inited + 168) = &off_28268CA28;
  *(inited + 136) = 2;
  *(inited + 144) = 4;
  *(inited + 152) = &unk_282658AD0;
  *(inited + 176) = 3;
  *(inited + 208) = &type metadata for MSF1HeaderValidator;
  *(inited + 216) = &off_28268CA00;
  *(inited + 184) = 3;
  *(inited + 192) = 4;
  *(inited + 200) = &unk_282658B20;
  *(inited + 224) = 4;
  *(inited + 256) = &type metadata for MIF1HeaderValidator;
  *(inited + 264) = &off_28268C9D8;
  *(inited + 232) = 4;
  *(inited + 240) = 4;
  *(inited + 248) = &unk_282658B70;
  *(inited + 272) = 5;
  *(inited + 304) = &type metadata for AVIFHeaderValidator;
  *(inited + 312) = &off_28268C9B0;
  *(inited + 280) = 5;
  *(inited + 288) = 4;
  *(inited + 296) = &unk_282658BC0;
  *(inited + 320) = 6;
  *(inited + 352) = &type metadata for AVISHeaderValidator;
  *(inited + 360) = &off_28268C988;
  *(inited + 328) = 6;
  *(inited + 336) = 4;
  *(inited + 344) = &unk_282658C10;
  *(inited + 368) = 7;
  *(inited + 400) = &type metadata for HEIFHeaderValidator;
  *(inited + 408) = &off_28268C960;
  *(inited + 376) = 7;
  *(inited + 384) = 4;
  *(inited + 392) = &unk_28265A2C0;
  *(inited + 416) = 8;
  *(inited + 448) = &type metadata for HEIFJPEGHeaderValidator;
  *(inited + 456) = &off_28268C938;
  *(inited + 424) = 8;
  *(inited + 432) = &unk_282658990;
  *(inited + 464) = 9;
  *(inited + 496) = &type metadata for JPEGEXTHeaderValidator;
  *(inited + 504) = &off_28268C910;
  *(inited + 472) = 9;
  *(inited + 480) = &unk_28265A2E8;
  *(inited + 512) = 10;
  *(inited + 544) = &type metadata for MPOHeaderValidator;
  *(inited + 552) = &off_28268C8E8;
  *(inited + 520) = 10;
  *(inited + 528) = &unk_282658E90;
  *(inited + 560) = 11;
  *(inited + 592) = &type metadata for JPEGHeaderValidator;
  *(inited + 600) = &off_28268C8C0;
  *(inited + 568) = 11;
  *(inited + 576) = &unk_28265A310;
  *(inited + 608) = 12;
  *(inited + 640) = &type metadata for PNGHeaderValidator;
  *(inited + 648) = &off_28268C898;
  *(inited + 616) = 12;
  *(inited + 624) = &unk_2826589E0;
  *(inited + 656) = 13;
  *(inited + 688) = &type metadata for WEBPHeaderValidator;
  *(inited + 696) = &off_28268C870;
  *(inited + 664) = 13;
  *(inited + 672) = &unk_282658F78;
  *(inited + 704) = 14;
  *(inited + 736) = &type metadata for TIFFHeaderValidator;
  *(inited + 744) = &off_28268C848;
  *(inited + 712) = 14;
  *(inited + 720) = &unk_282659020;
  *(inited + 752) = 15;
  *(inited + 784) = &type metadata for BMPHeaderValidator;
  *(inited + 792) = &off_28268C820;
  *(inited + 760) = 15;
  *(inited + 768) = &unk_28265A338;
  *(inited + 800) = 16;
  *(inited + 832) = &type metadata for GIFHeaderValidator;
  *(inited + 840) = &off_28268C7F8;
  *(inited + 808) = 16;
  *(inited + 816) = &unk_2826590A8;
  *(inited + 848) = 17;
  *(inited + 880) = &type metadata for JPEGXLCodeStreamHeaderValidator;
  *(inited + 888) = &off_28268C7D0;
  *(inited + 856) = 17;
  *(inited + 864) = &unk_28265A360;
  *(inited + 896) = 18;
  *(inited + 928) = &type metadata for JPEGXLContainerHeaderValidator;
  *(inited + 936) = &off_28268C7A8;
  *(inited + 904) = 18;
  *(inited + 912) = &unk_282658A30;
  v1 = sub_214046B5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904060, &qword_214759790);
  result = swift_arrayDestroy();
  off_27C915190 = v1;
  return result;
}

BlastDoor::ImageHeader __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Data.sniffedImageUTType()()
{
  v3 = v1;
  v4 = v0;
  v13 = v2;
  if (qword_27C9031C8 != -1)
  {
    swift_once();
  }

  v5 = 0;
  v6 = off_27C915190;
  while (1)
  {
    if (!v6[2] || (v7 = byte_28265A388[v5 + 32], v8 = sub_21408C650(v7), (v9 & 1) == 0))
    {
      sub_21451EB54();
      swift_allocError();
      return swift_willThrow();
    }

    sub_214053840(v6[7] + 40 * v8, v14);
    sub_214047B54(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    if ((*(v11 + 32))(v4, v3, v10, v11))
    {
      break;
    }

    ++v5;
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    if (v5 == 19)
    {
      *v13 = 19;
      return result;
    }
  }

  *v13 = v7;
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

Swift::Bool __swiftcall Data.isAnimatedPNG()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_2146D95F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_79;
    }

    v8 = *(v3 + 16);
    v7 = *(v3 + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (v9)
    {
      goto LABEL_91;
    }

    if (v10 < 8)
    {
      goto LABEL_79;
    }
  }

  else if (v6)
  {
    if (__OFSUB__(HIDWORD(v3), v3))
    {
      goto LABEL_92;
    }

    if (HIDWORD(v3) - v3 < 8)
    {
      goto LABEL_79;
    }
  }

  else if (BYTE6(v2) < 8uLL)
  {
    goto LABEL_79;
  }

  v53 = 12;
  if (!Data.hasValidHeader(for:)(&v53))
  {
    goto LABEL_79;
  }

  v52 = 8;
  if (v6 == 2)
  {
    v13 = *(v3 + 16);
    v12 = *(v3 + 24);
    v11 = v12 - v13;
    if (__OFSUB__(v12, v13))
    {
      goto LABEL_101;
    }
  }

  else
  {
    if (v6 != 1)
    {
      goto LABEL_19;
    }

    if (__OFSUB__(HIDWORD(v3), v3))
    {
      goto LABEL_100;
    }

    v11 = HIDWORD(v3) - v3;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    goto LABEL_20;
  }

  __break(1u);
LABEL_19:
  v11 = BYTE6(v2);
LABEL_20:
  v14 = sub_21451E980(&v52, v3, v2);
  if ((v14 & 0x100000000) != 0 || (v15 = v14) == 0)
  {
LABEL_79:
    v48 = 0;
    return v48 & 1;
  }

  v16 = v52;
  v17 = __OFSUB__(HIDWORD(v3), v3);
  v50 = v17;
  v51 = v11;
  while (1)
  {
    v18 = v15;
    v19 = v15 + v16;
    if (__CFADD__(v15, v16))
    {
      break;
    }

    v20 = __CFADD__(v19, 8);
    v21 = v19 + 8;
    if (v20)
    {
      goto LABEL_83;
    }

    if (v21 >= v11)
    {
      goto LABEL_79;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v24 = *(v3 + 16);
        v23 = *(v3 + 24);
        v9 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v9)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = BYTE6(v2);
      if (v6)
      {
        v22 = HIDWORD(v3) - v3;
        if (v50)
        {
          goto LABEL_93;
        }
      }
    }

    v25 = v16 + 4;
    if (v16 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_84;
    }

    if ((v22 & 0x8000000000000000) != 0 || v22 < v25)
    {
      v25 = v16;
    }

    else
    {
      if (((v25 | v16) & 0x8000000000000000) != 0)
      {
        goto LABEL_89;
      }

      if (v25 < v16)
      {
        goto LABEL_90;
      }

      v26 = sub_2146D8A78();
      v28 = v27;
      sub_2146D95E8();
      sub_2146D95C8();
      v29 = sub_2146DA098();

      sub_213FB54FC(v26, v28);
      if (v29 > 1)
      {
        v11 = v51;
        if (v29 == 2)
        {
LABEL_81:
          v49 = sub_2146DA6A8();

          v48 = v49 ^ 1;
          return v48 & 1;
        }

        if (v29 == 3)
        {

          goto LABEL_79;
        }
      }

      else
      {
        v11 = v51;
        if (v29 <= 1)
        {
          goto LABEL_81;
        }
      }
    }

    v30 = v25 + v18 + 4;
    if (__CFADD__(v25, v18 + 4))
    {
      goto LABEL_85;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v33 = *(v3 + 16);
        v32 = *(v3 + 24);
        v9 = __OFSUB__(v32, v33);
        v31 = v32 - v33;
        if (v9)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = BYTE6(v2);
      if (v6)
      {
        v31 = HIDWORD(v3) - v3;
        if (v50)
        {
          goto LABEL_96;
        }
      }
    }

    v16 = v30 + 4;
    if (v30 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      goto LABEL_86;
    }

    if ((v31 & 0x8000000000000000) != 0 || v31 < v16)
    {
      goto LABEL_79;
    }

    if (((v16 | v30) & 0x8000000000000000) != 0)
    {
      goto LABEL_87;
    }

    if (v16 < v30)
    {
      goto LABEL_88;
    }

    v34 = sub_2146D8A78();
    v35 = v34;
    v37 = v36;
    v38 = v36 >> 62;
    if ((v36 >> 62) > 1)
    {
      if (v38 != 2)
      {
        LODWORD(v34) = 0;
        goto LABEL_26;
      }

      v44 = *(v34 + 16);
      v45 = sub_2146D8728();
      if (!v45)
      {
        goto LABEL_102;
      }

      v46 = v45;
      v47 = sub_2146D8758();
      if (__OFSUB__(v44, v47))
      {
        goto LABEL_98;
      }

      v42 = (v44 - v47 + v46);
      sub_2146D8748();
      if (!v42)
      {
        goto LABEL_103;
      }

      goto LABEL_76;
    }

    if (v38)
    {
      if (v34 > v34 >> 32)
      {
        goto LABEL_97;
      }

      v39 = sub_2146D8728();
      if (!v39)
      {
        goto LABEL_104;
      }

      v40 = v39;
      v41 = sub_2146D8758();
      if (__OFSUB__(v35, v41))
      {
        goto LABEL_99;
      }

      v42 = (v35 - v41 + v40);
      result = sub_2146D8748();
      if (!v42)
      {
        goto LABEL_105;
      }

LABEL_76:
      LODWORD(v34) = *v42;
      v11 = v51;
    }

LABEL_26:
    v15 = _OSSwapInt32(v34);
    sub_213FB54FC(v35, v37);
    if (!v15)
    {
      goto LABEL_79;
    }
  }

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
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
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
  sub_2146D8748();
LABEL_103:
  __break(1u);
LABEL_104:
  result = sub_2146D8748();
  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

uint64_t sub_21451E980(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v5 = v5;
  }

LABEL_11:
  v9 = *a1;
  v10 = *a1 + 4;
  if (*a1 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v11 = v5 >= 0 && v5 >= v10;
  v12 = !v11;
  if (!v11)
  {
    v13 = 0;
    return v13 | (v12 << 32);
  }

  if ((v10 | v9) < 0)
  {
    goto LABEL_39;
  }

  if (v10 < v9)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v14 = *a1 + 4;
  v15 = sub_2146D8A78();
  v16 = v15;
  v18 = v17;
  v19 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v19 != 2)
    {
      LODWORD(v15) = 0;
      goto LABEL_36;
    }

    v20 = *(v15 + 16);
    v21 = sub_2146D8728();
    if (!v21)
    {
      goto LABEL_45;
    }

    v22 = v21;
    v23 = sub_2146D8758();
    if (!__OFSUB__(v20, v23))
    {
      v24 = (v20 - v23 + v22);
      sub_2146D8748();
      if (v24)
      {
LABEL_34:
        LODWORD(v15) = *v24;
LABEL_36:
        v29 = _OSSwapInt32(v15);
        sub_213FB54FC(v16, v18);
        *a1 = v10;
        v13 = v29;
        return v13 | (v12 << 32);
      }

      goto LABEL_46;
    }

    goto LABEL_43;
  }

  if (!v19)
  {
    goto LABEL_36;
  }

  if (v15 > v15 >> 32)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    sub_2146D8748();
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v25 = sub_2146D8728();
  if (!v25)
  {
LABEL_47:
    result = sub_2146D8748();
    __break(1u);
    goto LABEL_48;
  }

  v26 = v25;
  v27 = sub_2146D8758();
  if (__OFSUB__(v16, v27))
  {
    goto LABEL_44;
  }

  v24 = (v16 - v27 + v26);
  result = sub_2146D8748();
  if (v24)
  {
    goto LABEL_34;
  }

LABEL_48:
  __break(1u);
  return result;
}

unint64_t sub_21451EB54()
{
  result = qword_27C915198;
  if (!qword_27C915198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915198);
  }

  return result;
}

unint64_t sub_21451EBAC()
{
  result = qword_27C9151A0;
  if (!qword_27C9151A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9151A0);
  }

  return result;
}

void sub_21451EC18(unint64_t a1@<X0>, void (*a2)(void)@<X1>, unint64_t a3@<X8>)
{
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v20 = a2;
      v6 = 0;
      v7 = a1 & 0xC000000000000001;
      do
      {
        if (v7)
        {
          v8 = MEMORY[0x216054E00](v6, a1);
        }

        else
        {
          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v8 = *(a1 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v14 = MEMORY[0x216054E00](a3, a1);
          goto LABEL_27;
        }

        [v8 open];

        ++v6;
      }

      while (v10 != v5);
      v20();
      a3 = 0;
      v6 = &off_27817C000;
      if (v19)
      {
        while (1)
        {
          if (v7)
          {
            v11 = MEMORY[0x216054E00](a3, a1);
          }

          else
          {
            if (a3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v11 = *(a1 + 8 * a3 + 32);
          }

          v12 = v11;
          v13 = a3 + 1;
          if (__OFADD__(a3, 1))
          {
            goto LABEL_21;
          }

          [v11 close];

          ++a3;
          if (v13 == v5)
          {
            return;
          }
        }
      }

      while (1)
      {
        if (v7)
        {
          goto LABEL_23;
        }

        if (a3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v14 = *(a1 + 8 * a3 + 32);
LABEL_27:
        v15 = v14;
        v16 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          break;
        }

        [v14 *(v6 + 320)];

        ++a3;
        if (v16 == v5)
        {
          return;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      v17 = a2;
      v18 = sub_2146DA028();
      a2 = v17;
      v5 = v18;
    }

    while (v18);
  }

  a2();
}

unint64_t sub_21451EE30()
{
  result = qword_27C9151B0[0];
  if (!qword_27C9151B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C9151B0);
  }

  return result;
}

uint64_t sub_21451EE84(uint64_t a1, uint64_t a2)
{
  v4 = sub_2146D86D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  v12 = sub_2146D96A8();
  sub_2146D86B8();
  sub_2146D86A8();
  if ((v12 - 1) > 9)
  {
    (*(v5 + 8))(v11, v4);
    v14 = 0;
  }

  else
  {
    v17[0] = a1;
    v17[1] = a2;
    sub_2146D86C8();
    sub_214069AD8();
    sub_2146D9DC8();
    v14 = v13;
    v15 = *(v5 + 8);
    v15(v9, v4);
    v15(v11, v4);
  }

  return v14 & 1;
}

uint64_t sub_21451F070()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_21451F0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for CSDMHandleProto(0);
  v7 = v6;
  v8 = *(a1 + *(v6 + 20));
  if (*(a1 + *(v6 + 20)))
  {
    if (v8 == 4)
    {
      goto LABEL_8;
    }

    v9 = (a1 + *(v6 + 24));
    v10 = v9[1];
    if (!v10)
    {
      goto LABEL_8;
    }

    v11 = *v9;
    if (v8 != 1)
    {
      if (v8 == 2)
      {
        v64 = v3;
        v54 = a2;

        v57 = 0;
        v58 = v11;
        v72 = 0;
        v66 = 2;
        v78 = v10;
        goto LABEL_14;
      }

      if (v8 == 3)
      {
        v64 = v3;
        v54 = a2;

        v57 = v11;
        v58 = 0;
        v78 = 0;
        v66 = 3;
        v72 = v10;
LABEL_14:
        v81 = 0;
        v10 = 0;
        goto LABEL_16;
      }

LABEL_8:
      sub_2145350E4();
      swift_allocError();
      *v12 = 0;
      swift_willThrow();
      return sub_2145351E4(a1, type metadata accessor for CSDMHandleProto);
    }

    v64 = v3;
    v54 = a2;
    v81 = *v9;

    v57 = 0;
    v58 = 0;
    v72 = 0;
    v78 = 0;
    v66 = 1;
  }

  else
  {
    v13 = (a1 + *(v6 + 24));
    v14 = v13[1];
    v64 = v3;
    if (v14)
    {
      v15 = *v13;
      v10 = v14;
    }

    else
    {
      v15 = 0;
      v10 = 0xE000000000000000;
    }

    v54 = a2;
    v81 = v15;

    v57 = 0;
    v58 = 0;
    v72 = 0;
    v78 = 0;
    v66 = 0;
  }

LABEL_16:
  v16 = (a1 + *(v7 + 28));
  v17 = *v16;
  v18 = v16[1];
  v60 = a1;
  v19 = (a1 + *(v7 + 32));
  v20 = v19[1];
  v55 = *v19;
  v56 = v17;

  sub_214650EB4(&v86);
  v21 = v86;
  v22 = v87;
  v24 = v88;
  v23 = v89;
  v25 = v90;
  sub_214651000(&v122);
  v82 = v122;
  v84 = v123;
  v132 = v124;
  v85 = v125;
  v83 = v126;
  sub_214651034(v120);
  v75 = v120[2];
  v76 = v120[0];
  v79 = v120[1];
  v80 = v120[3];
  v77 = v121;
  sub_214651068(v118);
  v69 = v118[2];
  v70 = v118[0];
  v73 = v118[1];
  v74 = v118[3];
  v71 = v119;
  sub_2146511B4(v116);
  v62 = v116[1];
  v63 = v116[0];
  v67 = v116[2];
  v68 = v116[3];
  v61 = v117;
  v122 = v81;
  v123 = v10;
  v59 = v25;
  LOBYTE(v120[0]) = v25;
  v86 = 0xD000000000000018;
  v87 = 0x800000021478CEC0;
  v88 = 0xD00000000000001CLL;
  v89 = 0x800000021478A360;

  sub_213FDC9D0(v24, v23);
  v26 = v64;
  v65 = v21;
  v27 = v21(&v122, v120, &v86);
  if (v26)
  {

    v28 = v61;
    v29 = v22;
LABEL_21:

    sub_213FDC6D0(v24, v23);
    v32 = v24;
    v33 = v66;
    v35 = v62;
    v34 = v63;
    v36 = v65;
    v37 = v29;
LABEL_22:
    a1 = v60;
    v38 = v59;
    v39 = v69;
    v40 = v75;
LABEL_23:
    LOBYTE(v86) = v33;
    *(&v86 + 1) = v131[0];
    HIDWORD(v86) = *(v131 + 3);
    v87 = v36;
    v88 = v37;
    v89 = v32;
    v90 = v23;
    v91 = v38;
    *v92 = *v130;
    *&v92[3] = *&v130[3];
    v93 = v82;
    v94 = v84;
    v95 = v132;
    v96 = v85;
    v97 = v83;
    *&v98[3] = *&v129[3];
    *v98 = *v129;
    v99 = v76;
    v100 = v79;
    v101 = v40;
    v102 = v80;
    v103 = v77;
    *&v104[3] = *&v128[3];
    *v104 = *v128;
    v105 = v70;
    v106 = v73;
    v107 = v39;
    v108 = v74;
    v109 = v71;
    *&v110[3] = *&v127[3];
    *v110 = *v127;
    v111 = v34;
    v112 = v35;
    v113 = v67;
    v114 = v68;
    v115 = v28;
    sub_2142E5ED4(&v86);
    return sub_2145351E4(a1, type metadata accessor for CSDMHandleProto);
  }

  v53 = v18;
  v52 = v10;
  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000018;
    v31[1] = 0x800000021478CEC0;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();

    v28 = v61;
    v29 = v22;
    goto LABEL_21;
  }

  sub_213FDC6D0(v24, v23);

  sub_213FDC6D0(v24, v23);
  v122 = v58;
  v123 = v78;
  LOBYTE(v120[0]) = v83;
  v86 = 0xD000000000000016;
  v87 = 0x800000021478CEE0;
  v88 = 0xD00000000000001CLL;
  v89 = 0x800000021478A360;

  sub_213FDC9D0(v132, v85);
  v30 = v82(&v122, v120, &v86);
  v28 = v61;
  v35 = v62;
  v34 = v63;
  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v44 = 0xD000000000000016;
    v44[1] = 0x800000021478CEE0;
    v44[2] = 0xD00000000000001CLL;
    v44[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v132, v85);
    v32 = v81;
    v37 = v22;
    v23 = v52;
    v33 = v66;
    v36 = v21;
    goto LABEL_22;
  }

  v42 = v132;
  sub_213FDC6D0(v132, v85);

  sub_213FDC6D0(v42, v85);
  v122 = v57;
  v123 = v72;
  LOBYTE(v120[0]) = v77;
  v86 = 0xD000000000000017;
  v87 = 0x800000021478CF00;
  v88 = 0xD00000000000001CLL;
  v89 = 0x800000021478A360;

  sub_213FDC9D0(v75, v80);
  v43 = v76(&v122, v120, &v86);
  if ((v43 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v46 = 0xD000000000000017;
    v46[1] = 0x800000021478CF00;
    v46[2] = 0xD00000000000001CLL;
    v46[3] = 0x800000021478A360;
    swift_willThrow();

    v40 = v75;
    sub_213FDC6D0(v75, v80);
    v32 = v81;
    v23 = v52;
    v132 = v58;
    v85 = v78;
    v33 = v66;
    v36 = v21;
    a1 = v60;
    v37 = v22;
    v38 = v59;
    v39 = v69;
    goto LABEL_23;
  }

  sub_213FDC6D0(v75, v80);

  sub_213FDC6D0(v75, v80);
  v122 = v56;
  v123 = v53;
  LOBYTE(v120[0]) = v71;
  v132 = 0xD000000000000019;
  v86 = 0xD000000000000019;
  v87 = 0x800000021478CF20;
  v88 = 0xD00000000000001CLL;
  v89 = 0x800000021478A360;

  sub_213FDC9D0(v69, v74);
  v45 = v70(&v122, v120, &v86);
  v47 = v132;
  if ((v45 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v49 = v47;
    v49[1] = 0x800000021478CF20;
    v49[2] = 0xD00000000000001CLL;
    v49[3] = 0x800000021478A360;
    swift_willThrow();

    v40 = v57;

    v39 = v69;
    sub_213FDC6D0(v69, v74);
    v32 = v81;
    v23 = v52;
    v132 = v58;
    v85 = v78;
    v80 = v72;
LABEL_34:
    v33 = v66;
    v36 = v21;
    a1 = v60;
    v37 = v22;
    v38 = v59;
    goto LABEL_23;
  }

  sub_213FDC6D0(v69, v74);

  sub_213FDC6D0(v69, v74);
  v122 = v55;
  v123 = v20;
  LOBYTE(v120[0]) = v61;
  v86 = 0xD00000000000001ALL;
  v87 = 0x800000021478CF40;
  v88 = 0xD00000000000001CLL;
  v89 = 0x800000021478A360;

  sub_213FDC9D0(v67, v68);
  v48 = v63(&v122, v120, &v86);
  if ((v48 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v51 = 0xD00000000000001ALL;
    v51[1] = 0x800000021478CF40;
    v51[2] = 0xD00000000000001CLL;
    v51[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v67, v68);
    v32 = v81;
    v23 = v52;
    v132 = v58;
    v85 = v78;
    v39 = v56;
    v40 = v57;
    v80 = v72;
    v74 = v53;
    goto LABEL_34;
  }

  sub_213FDC6D0(v67, v68);

  sub_213FDC6D0(v67, v68);
  result = sub_2145351E4(v60, type metadata accessor for CSDMHandleProto);
  *v54 = v66;
  *(v54 + 1) = v131[0];
  *(v54 + 4) = *(v131 + 3);
  *(v54 + 8) = v21;
  *(v54 + 16) = v22;
  *(v54 + 24) = v81;
  *(v54 + 32) = v52;
  *(v54 + 40) = v59;
  *(v54 + 41) = *v130;
  *(v54 + 44) = *&v130[3];
  *(v54 + 48) = v82;
  *(v54 + 56) = v84;
  *(v54 + 64) = v58;
  *(v54 + 72) = v78;
  *(v54 + 80) = v83;
  *(v54 + 84) = *&v129[3];
  *(v54 + 81) = *v129;
  *(v54 + 88) = v76;
  *(v54 + 96) = v79;
  *(v54 + 104) = v57;
  *(v54 + 112) = v72;
  *(v54 + 120) = v77;
  *(v54 + 124) = *&v128[3];
  *(v54 + 121) = *v128;
  *(v54 + 128) = v70;
  *(v54 + 136) = v73;
  *(v54 + 144) = v56;
  *(v54 + 152) = v53;
  *(v54 + 160) = v71;
  v50 = *v127;
  *(v54 + 164) = *&v127[3];
  *(v54 + 161) = v50;
  *(v54 + 168) = v63;
  *(v54 + 176) = v62;
  *(v54 + 184) = v55;
  *(v54 + 192) = v20;
  *(v54 + 200) = v61;
  return result;
}

uint64_t sub_21451FCE4(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  if (v4 <= 1)
  {
    if (!*a2)
    {
      result = type metadata accessor for CSDMHandleProto(0);
      v7 = result;
      *(a1 + *(result + 20)) = 0;
      v11 = *(a2 + 19);
      if (v11)
      {
        goto LABEL_19;
      }

LABEL_12:
      v12 = *(a2 + 24);
      if (!v12)
      {
        return result;
      }

      goto LABEL_21;
    }

    if (v4 == 1)
    {
      v5 = type metadata accessor for CSDMHandleProto(0);
      *(a1 + *(v5 + 20)) = 1;
      v6 = *(a2 + 4);
      if (v6)
      {
        if (v6 != 1)
        {
          v7 = v5;
          v8 = *(a2 + 3);
          goto LABEL_18;
        }

LABEL_28:
        result = sub_2146DA018();
        __break(1u);
        return result;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4 == 2)
  {
    v9 = type metadata accessor for CSDMHandleProto(0);
    *(a1 + *(v9 + 20)) = 2;
    v6 = *(a2 + 9);
    if (!v6)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v6 == 1)
    {
      goto LABEL_28;
    }

    v7 = v9;
    v8 = *(a2 + 8);
  }

  else
  {
    if (v4 != 3)
    {
      goto LABEL_24;
    }

    v13 = type metadata accessor for CSDMHandleProto(0);
    *(a1 + *(v13 + 20)) = 3;
    v6 = *(a2 + 14);
    if (!v6)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v6 == 1)
    {
      goto LABEL_28;
    }

    v7 = v13;
    v8 = *(a2 + 13);
  }

LABEL_18:
  v14 = (a1 + v7[6]);
  v15 = v14[1];

  *v14 = v8;
  v14[1] = v6;
  v11 = *(a2 + 19);
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_19:
  if (v11 == 1)
  {
    goto LABEL_28;
  }

  v16 = *(a2 + 18);
  v17 = (a1 + v7[7]);
  v18 = v17[1];

  *v17 = v16;
  v17[1] = v11;
  v12 = *(a2 + 24);
  if (!v12)
  {
    return result;
  }

LABEL_21:
  if (v12 == 1)
  {
    goto LABEL_28;
  }

  v19 = *(a2 + 23);
  v20 = (a1 + v7[8]);
  v21 = v20[1];

  *v20 = v19;
  v20[1] = v12;
  return result;
}

uint64_t sub_21451FEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = type metadata accessor for CSDMHandleProto(0);
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v94 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v100 = (&v88 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v93 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v98 = &v88 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v88 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v88 - v18;
  v20 = type metadata accessor for CSDMConversationMemberProto(0);
  v21 = *(v20 + 20);
  v22 = *(v20 + 24);
  v101 = v20;
  v23 = (a1 + v21);
  v96 = *v23;
  LODWORD(v95) = *(v23 + 4);
  sub_213FB2E54(a1 + v22, v19, &unk_27C903788, "Į\r");
  v26 = *(v4 + 48);
  v25 = v4 + 48;
  v24 = v26;
  v27 = (v26)(v19, 1, v3);
  sub_213FB2DF4(v19, &unk_27C903788, "Į\r");
  if (v27 == 1)
  {
    v99 = v25;
    v100 = v24;
    sub_214535098(&v169);
    v28 = v101;
  }

  else
  {
    sub_213FB2E54(a1 + v22, v17, &unk_27C903788, "Į\r");
    v29 = v24;
    if (v24(v17, 1, v3) == 1)
    {
      v30 = v100;
      sub_2146D8DE8();
      *(v30 + v3[5]) = 4;
      v31 = (v30 + v3[6]);
      *v31 = 0;
      v31[1] = 0;
      v32 = (v30 + v3[7]);
      *v32 = 0;
      v32[1] = 0;
      v33 = (v30 + v3[8]);
      *v33 = 0;
      v33[1] = 0;
      v34 = v29(v17, 1, v3);
      v28 = v101;
      if (v34 != 1)
      {
        sub_213FB2DF4(v17, &unk_27C903788, "Į\r");
      }
    }

    else
    {
      v30 = v100;
      sub_214534FEC(v17, v100, type metadata accessor for CSDMHandleProto);
      v28 = v101;
    }

    v35 = v181;
    sub_21451F0C0(v30, v114);
    if (v35)
    {
      return sub_2145351E4(a1, type metadata accessor for CSDMConversationMemberProto);
    }

    v99 = v25;
    v100 = v29;
    v181 = 0;
    v167 = *&v114[160];
    v168[0] = *&v114[176];
    *(v168 + 9) = *&v114[185];
    v163 = *&v114[96];
    v164 = *&v114[112];
    v166 = *&v114[144];
    v165 = *&v114[128];
    v159 = *&v114[32];
    v160 = *&v114[48];
    v162 = *&v114[80];
    v161 = *&v114[64];
    v158 = *&v114[16];
    v157 = *v114;
    nullsub_1(&v157);
    v179 = v167;
    v180[0] = v168[0];
    *(v180 + 9) = *(v168 + 9);
    v175 = v163;
    v176 = v164;
    v178 = v166;
    v177 = v165;
    v171 = v159;
    v172 = v160;
    v174 = v162;
    v173 = v161;
    v170 = v158;
    v169 = v157;
  }

  v37 = *(v28 + 32);
  v38 = (a1 + *(v28 + 28));
  v39 = v38[1];
  v92 = *v38;
  v40 = v98;
  sub_213FB2E54(a1 + v37, v98, &unk_27C903788, "Į\r");
  v41 = v3;
  v42 = v100(v40, 1, v3);

  sub_213FB2DF4(v40, &unk_27C903788, "Į\r");
  v97 = a1;
  if (v42 == 1)
  {
    v43 = v39;
    sub_214535098(&v157);
  }

  else
  {
    v44 = v93;
    sub_213FB2E54(a1 + v37, v93, &unk_27C903788, "Į\r");
    v45 = v100;
    v46 = v100(v44, 1, v41);
    v47 = v181;
    if (v46 == 1)
    {
      v48 = v94;
      sub_2146D8DE8();
      *(v48 + v41[5]) = 4;
      v49 = (v48 + v41[6]);
      *v49 = 0;
      v49[1] = 0;
      v50 = (v48 + v41[7]);
      *v50 = 0;
      v50[1] = 0;
      v51 = (v48 + v41[8]);
      *v51 = 0;
      v51[1] = 0;
      if (v45(v44, 1, v41) != 1)
      {
        sub_213FB2DF4(v44, &unk_27C903788, "Į\r");
      }
    }

    else
    {
      v48 = v94;
      sub_214534FEC(v44, v94, type metadata accessor for CSDMHandleProto);
    }

    sub_21451F0C0(v48, v114);
    a1 = v97;
    if (v47)
    {
      sub_2145351E4(v97, type metadata accessor for CSDMConversationMemberProto);
      sub_213FB2DF4(&v169, &qword_27C905AD0, &unk_214759900);
    }

    v43 = v39;
    v181 = 0;
    v112 = *&v114[160];
    v113[0] = *&v114[176];
    *(v113 + 9) = *&v114[185];
    v108 = *&v114[96];
    v109 = *&v114[112];
    v110 = *&v114[128];
    v111 = *&v114[144];
    v104 = *&v114[32];
    v105 = *&v114[48];
    v106 = *&v114[64];
    v107 = *&v114[80];
    v102 = *v114;
    v103 = *&v114[16];
    nullsub_1(&v102);
    v167 = v112;
    v168[0] = v113[0];
    *(v168 + 9) = *(v113 + 9);
    v163 = v108;
    v164 = v109;
    v166 = v111;
    v165 = v110;
    v159 = v104;
    v160 = v105;
    v162 = v107;
    v161 = v106;
    v158 = v103;
    v157 = v102;
  }

  v52 = a1 + *(v101 + 36);
  v53 = *v52;
  v54 = *(v52 + 8);
  v55 = (a1 + *(v101 + 40));
  v57 = *v55;
  v56 = v55[1];
  v99 = v53;
  v100 = v57;
  v101 = v56;

  sub_213FB2E54(&v169, v114, &qword_27C905AD0, &unk_214759900);
  sub_213FB2E54(&v157, v114, &qword_27C905AD0, &unk_214759900);
  sub_214651940(&v102);
  *&v140[147] = v178;
  *&v140[163] = v179;
  *&v140[179] = v180[0];
  *&v140[188] = *(v180 + 9);
  *&v140[83] = v174;
  *&v140[99] = v175;
  *&v140[115] = v176;
  *&v140[131] = v177;
  *&v140[19] = v170;
  *&v140[35] = v171;
  *&v140[51] = v172;
  *&v140[67] = v173;
  *&v140[3] = v169;
  *&v114[151] = v166;
  *&v114[167] = v167;
  *&v114[183] = v168[0];
  *&v114[192] = *(v168 + 9);
  *&v114[87] = v162;
  *&v114[103] = v163;
  *&v114[119] = v164;
  *&v114[135] = v165;
  *&v114[23] = v158;
  *&v114[39] = v159;
  *&v114[55] = v160;
  v58 = v102;
  v59 = v103;
  *&v114[71] = v161;
  *&v114[7] = v157;
  v139 = v54;
  LODWORD(v94) = v95;
  v154 = *&v114[160];
  v155 = *&v114[176];
  v156[0] = *(v168 + 9);
  v150 = *&v114[96];
  v151 = *&v114[112];
  v153 = *&v114[144];
  v152 = *&v114[128];
  v146 = *&v114[32];
  v147 = *&v114[48];
  v149 = *&v114[80];
  v148 = *&v114[64];
  v145 = *&v114[16];
  v144 = *v114;
  LODWORD(v93) = v54;
  *&v102 = v92;
  *(&v102 + 1) = v43;
  LODWORD(v98) = v104;
  v141[0] = v104;
  *v114 = 0xD00000000000001FLL;
  *&v114[8] = 0x800000021478CF60;
  *&v114[16] = 0xD00000000000001CLL;
  *&v114[24] = 0x800000021478A360;

  v89 = v59;
  sub_213FDC9D0(v59, *(&v59 + 1));
  v90 = *(&v58 + 1);
  v60 = v181;
  v95 = v58;
  v61 = (v58)(&v102, v141, v114);
  if (v60)
  {
    v181 = v60;
  }

  else
  {
    if (v61)
    {
      v62 = v89;
      sub_213FDC6D0(v89, *(&v59 + 1));
      v63 = v43;

      sub_213FB2DF4(&v169, &qword_27C905AD0, &unk_214759900);
      sub_213FB2DF4(&v157, &qword_27C905AD0, &unk_214759900);
      v64 = v90;

      sub_213FDC6D0(v62, *(&v59 + 1));
      result = sub_2145351E4(v97, type metadata accessor for CSDMConversationMemberProto);
      v65 = *&v140[128];
      v66 = v91;
      *(v91 + 149) = *&v140[144];
      v67 = *&v140[176];
      *(v66 + 165) = *&v140[160];
      *(v66 + 181) = v67;
      *(v66 + 193) = *&v140[188];
      v68 = *&v140[64];
      *(v66 + 85) = *&v140[80];
      v69 = *&v140[112];
      *(v66 + 101) = *&v140[96];
      *(v66 + 117) = v69;
      *(v66 + 133) = v65;
      v70 = *v140;
      *(v66 + 21) = *&v140[16];
      v71 = *&v140[48];
      *(v66 + 37) = *&v140[32];
      *(v66 + 53) = v71;
      *(v66 + 69) = v68;
      *(v66 + 5) = v70;
      v72 = v154;
      v73 = v156[0];
      *(v66 + 425) = v155;
      *(v66 + 441) = v73;
      v74 = v150;
      v75 = v152;
      v76 = v153;
      *(v66 + 361) = v151;
      *(v66 + 377) = v75;
      *(v66 + 393) = v76;
      *(v66 + 409) = v72;
      v77 = v146;
      v78 = v148;
      v79 = v149;
      *(v66 + 297) = v147;
      *(v66 + 313) = v78;
      *(v66 + 329) = v79;
      *(v66 + 345) = v74;
      v80 = v145;
      *(v66 + 249) = v144;
      *v66 = v96;
      *(v66 + 4) = v94;
      *(v66 + 216) = v95;
      *(v66 + 224) = v64;
      *(v66 + 232) = v92;
      *(v66 + 240) = v63;
      *(v66 + 248) = v98;
      v81 = *(v156 + 15);
      *(v66 + 265) = v80;
      *(v66 + 281) = v77;
      v82 = v99;
      *(v66 + 456) = v81;
      *(v66 + 464) = v82;
      *(v66 + 472) = v93;
      v83 = v101;
      *(v66 + 480) = v100;
      *(v66 + 488) = v83;
      return result;
    }

    sub_214031C4C();
    v84 = swift_allocError();
    *v85 = 0xD00000000000001FLL;
    v85[1] = 0x800000021478CF60;
    v85[2] = 0xD00000000000001CLL;
    v85[3] = 0x800000021478A360;
    v181 = v84;
    swift_willThrow();
  }

  sub_213FB2DF4(&v169, &qword_27C905AD0, &unk_214759900);
  sub_213FB2DF4(&v157, &qword_27C905AD0, &unk_214759900);

  v86 = v90;

  v87 = v89;
  sub_213FDC6D0(v89, *(&v59 + 1));
  *&v114[149] = *&v140[144];
  *&v114[165] = *&v140[160];
  *&v114[181] = *&v140[176];
  *&v114[193] = *&v140[188];
  *&v114[85] = *&v140[80];
  *&v114[101] = *&v140[96];
  *&v114[117] = *&v140[112];
  *&v114[133] = *&v140[128];
  *&v114[21] = *&v140[16];
  *&v114[37] = *&v140[32];
  *&v114[53] = *&v140[48];
  *&v114[69] = *&v140[64];
  *&v114[5] = *v140;
  v132 = v155;
  *v133 = v156[0];
  v128 = v151;
  v129 = v152;
  v130 = v153;
  v131 = v154;
  v124 = v147;
  v125 = v148;
  v126 = v149;
  v127 = v150;
  v122 = v145;
  v123 = v146;
  *v114 = v96;
  v114[4] = v94;
  *v115 = *v143;
  *&v115[3] = *&v143[3];
  v116 = v95;
  v117 = v86;
  v118 = v87;
  v119 = *(&v59 + 1);
  v120 = v98;
  v121 = v144;
  *&v133[15] = *(v156 + 15);
  v134 = v99;
  v135 = v93;
  *v136 = v142[0];
  *&v136[3] = *(v142 + 3);
  v137 = v100;
  v138 = v101;
  sub_2142E6080(v114);
  return sub_2145351E4(v97, type metadata accessor for CSDMConversationMemberProto);
}

uint64_t sub_214520B70(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for CSDMHandleProto(0);
  v55 = *(v4 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 4);
  if ((v8 & 1) == 0)
  {
    v9 = *a2;
    v10 = a1 + *(type metadata accessor for CSDMConversationMemberProto(0) + 20);
    *v10 = v9;
    *(v10 + 4) = v8;
  }

  v11 = *(a2 + 38);
  v12 = *(a2 + 46);
  v93 = *(a2 + 42);
  v94[0] = v12;
  *(v94 + 9) = *(a2 + 193);
  v13 = *(a2 + 22);
  v14 = *(a2 + 30);
  v89 = *(a2 + 26);
  v90 = v14;
  v91 = *(a2 + 34);
  v92 = v11;
  v15 = *(a2 + 6);
  v16 = *(a2 + 14);
  v85 = *(a2 + 10);
  v86 = v16;
  v87 = *(a2 + 18);
  v88 = v13;
  v83 = *(a2 + 2);
  v84 = v15;
  v17 = *(a2 + 38);
  v18 = *(a2 + 46);
  v105 = *(a2 + 42);
  v106[0] = v18;
  *(v106 + 9) = *(a2 + 193);
  v19 = *(a2 + 22);
  v20 = *(a2 + 30);
  v101 = *(a2 + 26);
  v102 = v20;
  v21 = *(a2 + 34);
  v104 = v17;
  v103 = v21;
  v22 = *(a2 + 6);
  v23 = *(a2 + 14);
  v97 = *(a2 + 10);
  v98 = v23;
  v24 = *(a2 + 18);
  v100 = v19;
  v99 = v24;
  v25 = *(a2 + 2);
  v96 = v22;
  v95 = v25;
  enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0 = get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(&v95);
  if (enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0 != 1)
  {
    v118[12] = v105;
    v119[0] = v106[0];
    *(v119 + 9) = *(v106 + 9);
    v118[8] = v101;
    v118[9] = v102;
    v118[11] = v104;
    v118[10] = v103;
    v118[4] = v97;
    v118[5] = v98;
    v118[7] = v100;
    v118[6] = v99;
    v118[3] = v96;
    v118[2] = v95;
    MEMORY[0x28223BE20](enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0);
    v117 = v93;
    v118[0] = v94[0];
    *(v118 + 9) = *(v94 + 9);
    v113 = v89;
    v114 = v90;
    v116 = v92;
    v115 = v91;
    v109 = v85;
    v110 = v86;
    v112 = v88;
    v111 = v87;
    v108 = v84;
    v107 = v83;
    sub_2142E5FD0(&v107, &v71);
    sub_214534FA4(&qword_27C903C20, type metadata accessor for CSDMHandleProto);
    v27 = v120;
    sub_2146D9018();
    v120 = v27;
    sub_213FB2DF4(&v83, &qword_27C905AD0, &unk_214759900);
    v28 = *(type metadata accessor for CSDMConversationMemberProto(0) + 24);
    sub_213FB2DF4(a1 + v28, &unk_27C903788, "Į\r");
    sub_214534FEC(v7, a1 + v28, type metadata accessor for CSDMHandleProto);
    (*(v55 + 56))(a1 + v28, 0, 1, v4);
  }

  v29 = *(a2 + 30);
  if (v29)
  {
    if (v29 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v30 = *(a2 + 29);
    v31 = (a1 + *(type metadata accessor for CSDMConversationMemberProto(0) + 28));
    v32 = v31[1];

    *v31 = v30;
    v31[1] = v29;
  }

  v33 = *(a2 + 25);
  v34 = *(a2 + 27);
  v69 = *(a2 + 26);
  v70[0] = v34;
  *(v70 + 9) = *(a2 + 441);
  v35 = *(a2 + 21);
  v36 = *(a2 + 23);
  v65 = *(a2 + 22);
  v66 = v36;
  v37 = *(a2 + 23);
  v38 = *(a2 + 25);
  v67 = *(a2 + 24);
  v68 = v38;
  v39 = *(a2 + 17);
  v40 = *(a2 + 19);
  v61 = *(a2 + 18);
  v62 = v40;
  v41 = *(a2 + 19);
  v42 = *(a2 + 21);
  v63 = *(a2 + 20);
  v64 = v42;
  v43 = *(a2 + 17);
  v59 = *(a2 + 16);
  v60 = v43;
  v44 = *(a2 + 27);
  v81 = v69;
  v82[0] = v44;
  *(v82 + 9) = *(a2 + 441);
  v77 = v65;
  v78 = v37;
  v79 = v67;
  v80 = v33;
  v73 = v61;
  v74 = v41;
  v75 = v63;
  v76 = v35;
  v71 = v59;
  v72 = v39;
  result = get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(&v71);
  if (result != 1)
  {
    v117 = v81;
    v118[0] = v82[0];
    *(v118 + 9) = *(v82 + 9);
    v113 = v77;
    v114 = v78;
    v116 = v80;
    v115 = v79;
    v109 = v73;
    v110 = v74;
    v112 = v76;
    v111 = v75;
    v108 = v72;
    v107 = v71;
    MEMORY[0x28223BE20](result);
    v57[10] = v69;
    v58[0] = v70[0];
    *(v58 + 9) = *(v70 + 9);
    v57[6] = v65;
    v57[7] = v66;
    v57[8] = v67;
    v57[9] = v68;
    v57[2] = v61;
    v57[3] = v62;
    v57[4] = v63;
    v57[5] = v64;
    v57[0] = v59;
    v57[1] = v60;
    sub_2142E5FD0(v57, &v56);
    sub_214534FA4(&qword_27C903C20, type metadata accessor for CSDMHandleProto);
    sub_2146D9018();
    sub_213FB2DF4(&v59, &qword_27C905AD0, &unk_214759900);
    v47 = *(type metadata accessor for CSDMConversationMemberProto(0) + 32);
    sub_213FB2DF4(a1 + v47, &unk_27C903788, "Į\r");
    sub_214534FEC(v7, a1 + v47, type metadata accessor for CSDMHandleProto);
    result = (*(v55 + 56))(a1 + v47, 0, 1, v4);
    v46 = *(a2 + 472);
    if (v46)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v46 = *(a2 + 472);
  if ((v46 & 1) == 0)
  {
LABEL_12:
    v48 = *(a2 + 58);
    result = type metadata accessor for CSDMConversationMemberProto(0);
    v49 = a1 + *(result + 36);
    *v49 = v48;
    *(v49 + 8) = v46;
  }

LABEL_13:
  v50 = *(a2 + 61);
  if (v50)
  {
    v51 = *(a2 + 60);
    v52 = (a1 + *(type metadata accessor for CSDMConversationMemberProto(0) + 40));
    v53 = v52[1];

    *v52 = v51;
    v52[1] = v50;
  }

  return result;
}

uint64_t sub_214521240(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == 1)
    {
      goto LABEL_10;
    }

    v5 = *(a2 + 16);
    v6 = (result + *(type metadata accessor for CSDMConversationReportProto(0) + 20));
    v7 = v6[1];

    *v6 = v5;
    v6[1] = v4;
  }

  v8 = *(a2 + 48);
  if ((v8 & 1) == 0)
  {
    v9 = *(a2 + 40);
    result = type metadata accessor for CSDMConversationReportProto(0);
    v10 = v3 + *(result + 24);
    *v10 = v9;
    *(v10 + 8) = v8;
  }

  v11 = *(a2 + 80);
  if (v11)
  {
    if (v11 != 1)
    {
      v12 = *(a2 + 72);
      v13 = (v3 + *(type metadata accessor for CSDMConversationReportProto(0) + 28));
      v14 = v13[1];

      *v13 = v12;
      v13[1] = v11;
      return result;
    }

LABEL_10:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21452135C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v100 = a2;
  v3 = type metadata accessor for CSDMHandleProto(0);
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v142 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v141 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v98 - v11;
  v13 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
  v134 = a1;
  v14 = *(a1 + v13);
  swift_beginAccess();
  v133 = *(v14 + 16);
  v131 = *(v14 + 20);
  swift_beginAccess();
  v132 = *(v14 + 24);
  v130 = *(v14 + 32);
  v15 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__handle;
  swift_beginAccess();
  sub_213FB2E54(v14 + v15, v12, &unk_27C903788, "Į\r");
  v16 = *(v4 + 48);
  v17 = v16(v12, 1, v3);
  sub_213FB2DF4(v12, &unk_27C903788, "Į\r");
  if (v17 == 1)
  {
    sub_214535098(&v226);
  }

  else
  {
    v18 = v14 + v15;
    v19 = v141;
    sub_213FB2E54(v18, v141, &unk_27C903788, "Į\r");
    if (v16(v19, 1, v3) == 1)
    {
      v20 = v142;
      sub_2146D8DE8();
      *(v20 + v3[5]) = 4;
      v21 = (v20 + v3[6]);
      *v21 = 0;
      v21[1] = 0;
      v22 = (v20 + v3[7]);
      *v22 = 0;
      v22[1] = 0;
      v23 = (v20 + v3[8]);
      *v23 = 0;
      v23[1] = 0;
      v24 = v16(v19, 1, v3);
      v25 = v238;
      if (v24 != 1)
      {
        sub_213FB2DF4(v19, &unk_27C903788, "Į\r");
      }
    }

    else
    {
      v20 = v142;
      sub_214534FEC(v19, v142, type metadata accessor for CSDMHandleProto);
      v25 = v238;
    }

    sub_21451F0C0(v20, &v155);
    if (v25)
    {
      return sub_2145351E4(v134, type metadata accessor for CSDMConversationParticipantProto);
    }

    v238 = 0;
    v153 = *&v156[144];
    v154[0] = *&v156[160];
    *(v154 + 9) = *&v156[169];
    v149 = *&v156[80];
    v150 = *&v156[96];
    v151 = *&v156[112];
    v152 = *&v156[128];
    v145 = *&v156[16];
    v146 = *&v156[32];
    v147 = *&v156[48];
    v148 = *&v156[64];
    v143 = v155;
    v144 = *v156;
    nullsub_1(&v143);
    v236 = v153;
    v237[0] = v154[0];
    *(v237 + 9) = *(v154 + 9);
    v232 = v149;
    v233 = v150;
    v235 = v152;
    v234 = v151;
    v228 = v145;
    v229 = v146;
    v231 = v148;
    v230 = v147;
    v227 = v144;
    v226 = v143;
  }

  v27 = (v14 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avcData);
  swift_beginAccess();
  v28 = v27[1];
  v140 = *v27;
  v141 = v28;
  if (v28 >> 60 != 15)
  {
    sub_213FDCA18(v140, v141);
  }

  v29 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
  swift_beginAccess();
  v127 = *(v14 + v29);
  v30 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
  swift_beginAccess();
  v126 = *(v14 + v30);
  v31 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
  swift_beginAccess();
  v32 = *(v14 + v31);
  v33 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
  swift_beginAccess();
  v34 = *(v14 + v33);
  v35 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
  swift_beginAccess();
  v125 = *(v14 + v35);
  v36 = (v14 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion);
  swift_beginAccess();
  v128 = *v36;
  v138 = *(v36 + 4);
  v37 = (v14 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__options);
  swift_beginAccess();
  v38 = *v37;
  v137 = *(v37 + 4);
  v39 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
  swift_beginAccess();
  if (*(v14 + v39) == 2)
  {
    v40 = 2;
  }

  else
  {
    v40 = 1;
  }

  v41 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
  swift_beginAccess();
  v42 = *(v14 + v41);
  v43 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
  swift_beginAccess();
  v44 = *(v14 + v43);
  v45 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
  result = swift_beginAccess();
  v129 = *(v14 + v45);
  if (v129 > 3)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v113 = v34;
  v115 = v32;
  v46 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
  swift_beginAccess();
  v120 = *(v14 + v46);
  v47 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
  swift_beginAccess();
  v119 = *(v14 + v47);
  v48 = (v14 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__personaHandshakeData);
  swift_beginAccess();
  v49 = v48[1];
  v139 = *v48;
  v142 = v49;
  if (v49 >> 60 != 15)
  {
    sub_213FDCA18(v139, v142);
  }

  v121 = v44;
  v122 = v42;
  v123 = v40;
  v124 = v38;
  v50 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
  swift_beginAccess();
  v118 = *(v14 + v50);
  v51 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
  swift_beginAccess();
  v117 = *(v14 + v51);
  v52 = (v14 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion);
  swift_beginAccess();
  v116 = *v52;
  v136 = *(v52 + 4);
  v53 = (v14 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion);
  swift_beginAccess();
  v114 = *v53;
  v135 = *(v53 + 4);
  v54 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
  swift_beginAccess();
  v112 = *(v14 + v54);
  v55 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
  swift_beginAccess();
  v111 = *(v14 + v55);
  v56 = (v14 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__spatialPersonaGenerationCounter);
  swift_beginAccess();
  v110 = *v56;
  v57 = *(v56 + 4);
  v58 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
  swift_beginAccess();
  v109 = *(v14 + v58);
  v59 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
  result = swift_beginAccess();
  v108 = *(v14 + v59);
  if (v108 > 3)
  {
    goto LABEL_27;
  }

  v60 = (v14 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  swift_beginAccess();
  v61 = *v60;
  v62 = v60[1];
  v63 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
  swift_beginAccess();
  v107 = *(v14 + v63);

  sub_213FB2E54(&v226, &v155, &qword_27C905AD0, &unk_214759900);
  sub_213FDCA18(v140, v141);
  v64 = v142;
  sub_213FDCA18(v139, v142);
  sub_214651EB4(&v155);
  *(&v211[9] + 7) = v235;
  *(&v211[10] + 7) = v236;
  *(&v211[11] + 7) = v237[0];
  v211[12] = *(v237 + 9);
  *(&v211[5] + 7) = v231;
  *(&v211[6] + 7) = v232;
  *(&v211[7] + 7) = v233;
  *(&v211[8] + 7) = v234;
  *(&v211[1] + 7) = v227;
  *(&v211[2] + 7) = v228;
  *(&v211[3] + 7) = v229;
  *(&v211[4] + 7) = v230;
  v65 = v155;
  v67 = *v156;
  v66 = *&v156[8];
  LOBYTE(v205[0]) = v131;
  v212[0] = v130;
  *(v211 + 7) = v226;
  v210 = v138;
  v209 = v137;
  v208 = v136;
  v207 = v135;
  v130 = v156[16];
  v131 = v57;
  v206 = v57;
  v102 = LOBYTE(v205[0]);
  v103 = v212[0];
  v205[0] = v61;
  v205[1] = v62;
  v212[0] = v156[16];
  *&v155 = 0xD000000000000032;
  *(&v155 + 1) = 0x800000021478CFE0;
  *v156 = 0xD00000000000001CLL;
  *&v156[8] = 0x800000021478A360;
  v101 = 0x800000021478A360;

  v104 = v67;
  v105 = v66;
  sub_213FDC9D0(v67, v66);
  v68 = v238;
  v106 = v65;
  v69 = (v65)(v205, v212, &v155);
  v238 = v68;
  if (v68)
  {
    sub_213FB2DF4(&v226, &qword_27C905AD0, &unk_214759900);

    v70 = v139;
    sub_213FDC6BC(v139, v64);
  }

  else
  {
    v98 = v61;
    v99 = v62;
    if (v69)
    {
      v71 = v104;
      v72 = v105;
      sub_213FDC6D0(v104, v105);
      sub_213FB2DF4(&v226, &qword_27C905AD0, &unk_214759900);
      v73 = v139;
      v74 = v142;
      sub_213FDC6BC(v139, v142);
      v75 = v140;
      v76 = v141;
      sub_213FDC6BC(v140, v141);

      sub_213FDC6D0(v71, v72);
      result = sub_2145351E4(v134, type metadata accessor for CSDMConversationParticipantProto);
      v77 = v100;
      *v100 = v133;
      *(v77 + 4) = v102;
      *(v77 + 1) = v132;
      *(v77 + 16) = v103;
      *(v77 + 29) = v75;
      *(v77 + 30) = v76;
      v78 = v126;
      *(v77 + 248) = v127;
      *(v77 + 249) = v78;
      *(v77 + 250) = v115;
      *(v77 + 251) = v113;
      *(v77 + 252) = v125;
      v79 = v211[8];
      *(v77 + 161) = v211[9];
      v80 = v211[11];
      *(v77 + 177) = v211[10];
      *(v77 + 193) = v80;
      *(v77 + 209) = v211[12];
      v81 = v211[4];
      *(v77 + 97) = v211[5];
      v82 = v211[7];
      *(v77 + 113) = v211[6];
      *(v77 + 129) = v82;
      *(v77 + 145) = v79;
      v83 = v211[0];
      *(v77 + 33) = v211[1];
      v84 = v211[3];
      *(v77 + 49) = v211[2];
      *(v77 + 65) = v84;
      *(v77 + 81) = v81;
      *(v77 + 17) = v83;
      v77[64] = v128;
      *(v77 + 260) = v138;
      v77[66] = v124;
      *(v77 + 268) = v137;
      v85 = v122;
      *(v77 + 269) = v123;
      *(v77 + 270) = v85;
      *(v77 + 271) = v121;
      *(v77 + 272) = v129;
      v86 = v119;
      *(v77 + 273) = v120;
      *(v77 + 274) = v86;
      *(v77 + 35) = v73;
      *(v77 + 36) = v74;
      v87 = v117;
      *(v77 + 296) = v118;
      *(v77 + 297) = v87;
      v77[75] = v116;
      *(v77 + 304) = v136;
      v77[77] = v114;
      *(v77 + 312) = v135;
      v88 = v111;
      *(v77 + 313) = v112;
      *(v77 + 314) = v88;
      v77[79] = v110;
      *(v77 + 320) = v131;
      v89 = v108;
      *(v77 + 321) = v109;
      *(v77 + 322) = v89;
      *(v77 + 41) = v106;
      *(v77 + 42) = *(&v65 + 1);
      v90 = v99;
      *(v77 + 43) = v98;
      *(v77 + 44) = v90;
      *(v77 + 360) = v130;
      *(v77 + 361) = v107;
      return result;
    }

    sub_214031C4C();
    v91 = swift_allocError();
    *v92 = 0xD000000000000032;
    v92[1] = 0x800000021478CFE0;
    v93 = v101;
    v92[2] = 0xD00000000000001CLL;
    v92[3] = v93;
    v238 = v91;
    swift_willThrow();

    sub_213FB2DF4(&v226, &qword_27C905AD0, &unk_214759900);

    v70 = v139;
    sub_213FDC6BC(v139, v142);
  }

  v94 = v140;
  v95 = v141;
  sub_213FDC6BC(v140, v141);

  v97 = v104;
  v96 = v105;
  sub_213FDC6D0(v104, v105);
  LODWORD(v155) = v133;
  BYTE4(v155) = v102;
  *(&v155 + 1) = v132;
  v156[0] = v103;
  v158 = v94;
  v159 = v95;
  v160 = v127;
  v161 = v126;
  v162 = v115;
  v163 = v113;
  v164 = v125;
  v167 = v128;
  v169 = v219;
  *(&v155 + 5) = v224;
  BYTE7(v155) = v225;
  *v157 = *v223;
  v165 = v221;
  *&v156[145] = v211[9];
  *&v156[161] = v211[10];
  *&v156[177] = v211[11];
  *&v156[193] = v211[12];
  *&v156[81] = v211[5];
  *&v156[97] = v211[6];
  *&v156[113] = v211[7];
  *&v156[129] = v211[8];
  *&v156[17] = v211[1];
  *&v156[33] = v211[2];
  *&v156[49] = v211[3];
  *&v156[65] = v211[4];
  *&v156[1] = v211[0];
  *&v157[3] = *&v223[3];
  v166 = v222;
  v168 = v138;
  v170 = v220;
  v171 = v124;
  v172 = v137;
  v173 = v123;
  v174 = v122;
  v175 = v121;
  v176 = v129;
  v177 = v120;
  v178 = v119;
  v179 = v217;
  v180 = v218;
  v181 = v70;
  v182 = v142;
  v183 = v118;
  v184 = v117;
  v185 = v116;
  v186 = v136;
  v187 = v215;
  v188 = v216;
  v189 = v114;
  v190 = v135;
  v191 = v112;
  v192 = v111;
  v193 = v110;
  v194 = v131;
  v195 = v109;
  v196 = v108;
  v197 = v213;
  v198 = v214;
  v199 = v106;
  v200 = *(&v65 + 1);
  v201 = v97;
  v202 = v96;
  v203 = v130;
  v204 = v107;
  sub_2142E6530(&v155);
  return sub_2145351E4(v134, type metadata accessor for CSDMConversationParticipantProto);
}

uint64_t sub_214522200(uint64_t a1, int *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v342 - v6;
  v8 = type metadata accessor for CSDMHandleProto(0);
  v342 = *(v8 - 8);
  v9 = *(v342 + 64);
  MEMORY[0x28223BE20](v8);
  v343 = &v342 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2[1] & 1) == 0)
  {
    v11 = *a2;
    v12 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v13 = *(a1 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(a1 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      v19 = sub_21402DBE4(v15);

      *(a1 + v12) = v19;
      v15 = v19;
    }

    swift_beginAccess();
    *(v15 + 16) = v11;
    *(v15 + 20) = 0;
  }

  if ((a2[4] & 1) == 0)
  {
    v20 = *(a2 + 1);
    v21 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v22 = *(a1 + v21);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(a1 + v21);
    if ((v23 & 1) == 0)
    {
      v25 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      v28 = sub_21402DBE4(v24);

      *(a1 + v21) = v28;
      v24 = v28;
    }

    swift_beginAccess();
    *(v24 + 24) = v20;
    *(v24 + 32) = 0;
  }

  v29 = *(a2 + 42);
  v30 = *(a2 + 50);
  v357 = *(a2 + 46);
  v358[0] = v30;
  *(v358 + 9) = *(a2 + 209);
  v31 = *(a2 + 26);
  v32 = *(a2 + 34);
  v353 = *(a2 + 30);
  v354 = v32;
  v33 = *(a2 + 38);
  v356 = v29;
  v355 = v33;
  v34 = *(a2 + 10);
  v35 = *(a2 + 18);
  v349 = *(a2 + 14);
  v350 = v35;
  v36 = *(a2 + 22);
  v352 = v31;
  v351 = v36;
  v37 = *(a2 + 6);
  v348 = v34;
  v347 = v37;
  v38 = *(a2 + 42);
  v39 = *(a2 + 50);
  v369 = *(a2 + 46);
  v370[0] = v39;
  *(v370 + 9) = *(a2 + 209);
  v40 = *(a2 + 26);
  v41 = *(a2 + 34);
  v365 = *(a2 + 30);
  v366 = v41;
  v42 = *(a2 + 38);
  v368 = v38;
  v367 = v42;
  v43 = *(a2 + 10);
  v44 = *(a2 + 18);
  v361 = *(a2 + 14);
  v362 = v44;
  v45 = *(a2 + 22);
  v364 = v40;
  v363 = v45;
  v46 = *(a2 + 6);
  v360 = v43;
  v359 = v46;
  result = get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(&v359);
  if (result != 1)
  {
    v370[12] = v369;
    v371[0] = v370[0];
    *(v371 + 9) = *(v370 + 9);
    v370[8] = v365;
    v370[9] = v366;
    v370[11] = v368;
    v370[10] = v367;
    v370[4] = v361;
    v370[5] = v362;
    v370[7] = v364;
    v370[6] = v363;
    v370[3] = v360;
    v370[2] = v359;
    MEMORY[0x28223BE20](result);
    v345[10] = v357;
    v346[0] = v358[0];
    *(v346 + 9) = *(v358 + 9);
    v345[6] = v353;
    v345[7] = v354;
    v345[8] = v355;
    v345[9] = v356;
    v345[2] = v349;
    v345[3] = v350;
    v345[4] = v351;
    v345[5] = v352;
    v345[0] = v347;
    v345[1] = v348;
    sub_2142E5FD0(v345, &v344);
    sub_214534FA4(&qword_27C903C20, type metadata accessor for CSDMHandleProto);
    v48 = v372;
    sub_2146D9018();
    v372 = v48;
    v49 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v50 = *(a1 + v49);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_213FB2DF4(&v347, &qword_27C905AD0, &unk_214759900);
      v51 = *(a1 + v49);
    }

    else
    {
      v52 = *(a1 + v49);
      v53 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v54 = *(v53 + 48);
      v55 = *(v53 + 52);
      swift_allocObject();

      v51 = sub_21402DBE4(v56);

      sub_213FB2DF4(&v347, &qword_27C905AD0, &unk_214759900);

      *(a1 + v49) = v51;
    }

    sub_214534FEC(v343, v7, type metadata accessor for CSDMHandleProto);
    (*(v342 + 56))(v7, 0, 1, v8);
    v57 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__handle;
    swift_beginAccess();
    sub_21402EDB8(v7, v51 + v57, &unk_27C903788, "Į\r");
    result = swift_endAccess();
  }

  v58 = *(a2 + 30);
  if (v58 >> 60 != 15)
  {
    v59 = *(a2 + 29);
    v60 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    sub_21402D9F8(v59, v58);
    v61 = *(a1 + v60);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v63 = *(a1 + v60);
    if ((v62 & 1) == 0)
    {
      v64 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v65 = *(v64 + 48);
      v66 = *(v64 + 52);
      swift_allocObject();
      v67 = sub_21402DBE4(v63);

      *(a1 + v60) = v67;
      v63 = v67;
    }

    v68 = (v63 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avcData);
    swift_beginAccess();
    v69 = *v68;
    v70 = v68[1];
    *v68 = v59;
    v68[1] = v58;
    result = sub_213FDC6BC(v69, v70);
  }

  v71 = *(a2 + 248);
  if (v71 != 2)
  {
    v72 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v73 = *(a1 + v72);
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v75 = *(a1 + v72);
    if ((v74 & 1) == 0)
    {
      v76 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v77 = *(v76 + 48);
      v78 = *(v76 + 52);
      swift_allocObject();
      v79 = sub_21402DBE4(v75);

      *(a1 + v72) = v79;
      v75 = v79;
    }

    v80 = v71 & 1;
    v81 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
    result = swift_beginAccess();
    *(v75 + v81) = v80;
  }

  v82 = *(a2 + 249);
  if (v82 != 2)
  {
    v83 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v84 = *(a1 + v83);
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v86 = *(a1 + v83);
    if ((v85 & 1) == 0)
    {
      v87 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v88 = *(v87 + 48);
      v89 = *(v87 + 52);
      swift_allocObject();
      v90 = sub_21402DBE4(v86);

      *(a1 + v83) = v90;
      v86 = v90;
    }

    v91 = v82 & 1;
    v92 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
    result = swift_beginAccess();
    *(v86 + v92) = v91;
  }

  v93 = *(a2 + 250);
  if (v93 != 2)
  {
    v94 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v95 = *(a1 + v94);
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v97 = *(a1 + v94);
    if ((v96 & 1) == 0)
    {
      v98 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v99 = *(v98 + 48);
      v100 = *(v98 + 52);
      swift_allocObject();
      v101 = sub_21402DBE4(v97);

      *(a1 + v94) = v101;
      v97 = v101;
    }

    v102 = v93 & 1;
    v103 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
    result = swift_beginAccess();
    *(v97 + v103) = v102;
  }

  v104 = *(a2 + 251);
  if (v104 != 2)
  {
    v105 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v106 = *(a1 + v105);
    v107 = swift_isUniquelyReferenced_nonNull_native();
    v108 = *(a1 + v105);
    if ((v107 & 1) == 0)
    {
      v109 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v110 = *(v109 + 48);
      v111 = *(v109 + 52);
      swift_allocObject();
      v112 = sub_21402DBE4(v108);

      *(a1 + v105) = v112;
      v108 = v112;
    }

    v113 = v104 & 1;
    v114 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
    result = swift_beginAccess();
    *(v108 + v114) = v113;
  }

  v115 = *(a2 + 252);
  if (v115 == 2)
  {
    if (a2[65])
    {
      goto LABEL_36;
    }
  }

  else
  {
    v116 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v117 = *(a1 + v116);
    v118 = swift_isUniquelyReferenced_nonNull_native();
    v119 = *(a1 + v116);
    if ((v118 & 1) == 0)
    {
      v120 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v121 = *(v120 + 48);
      v122 = *(v120 + 52);
      swift_allocObject();
      v123 = sub_21402DBE4(v119);

      *(a1 + v116) = v123;
      v119 = v123;
    }

    v124 = v115 & 1;
    v125 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
    result = swift_beginAccess();
    *(v119 + v125) = v124;
    if (a2[65])
    {
LABEL_36:
      if (a2[67])
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }
  }

  v126 = a2[64];
  v127 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
  v128 = *(a1 + v127);
  v129 = swift_isUniquelyReferenced_nonNull_native();
  v130 = *(a1 + v127);
  if ((v129 & 1) == 0)
  {
    v131 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
    v132 = *(v131 + 48);
    v133 = *(v131 + 52);
    swift_allocObject();
    v134 = sub_21402DBE4(v130);

    *(a1 + v127) = v134;
    v130 = v134;
  }

  v135 = v130 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
  result = swift_beginAccess();
  *v135 = v126;
  *(v135 + 4) = 0;
  if ((a2[67] & 1) == 0)
  {
LABEL_44:
    v136 = a2[66];
    v137 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v138 = *(a1 + v137);
    v139 = swift_isUniquelyReferenced_nonNull_native();
    v140 = *(a1 + v137);
    if ((v139 & 1) == 0)
    {
      v141 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v142 = *(v141 + 48);
      v143 = *(v141 + 52);
      swift_allocObject();
      v144 = sub_21402DBE4(v140);

      *(a1 + v137) = v144;
      v140 = v144;
    }

    v145 = v140 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__options;
    result = swift_beginAccess();
    *v145 = v136;
    *(v145 + 4) = 0;
  }

LABEL_47:
  v146 = *(a2 + 269);
  if (v146 != 2)
  {
    v147 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v148 = *(a1 + v147);
    v149 = swift_isUniquelyReferenced_nonNull_native();
    v150 = *(a1 + v147);
    if ((v149 & 1) == 0)
    {
      v151 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v152 = *(v151 + 48);
      v153 = *(v151 + 52);
      swift_allocObject();
      v154 = sub_21402DBE4(v150);

      *(a1 + v147) = v154;
      v150 = v154;
    }

    v155 = v146 & 1;
    v156 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
    result = swift_beginAccess();
    *(v150 + v156) = v155;
  }

  v157 = *(a2 + 270);
  if (v157 != 2)
  {
    v158 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v159 = *(a1 + v158);
    v160 = swift_isUniquelyReferenced_nonNull_native();
    v161 = *(a1 + v158);
    if ((v160 & 1) == 0)
    {
      v162 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v163 = *(v162 + 48);
      v164 = *(v162 + 52);
      swift_allocObject();
      v165 = sub_21402DBE4(v161);

      *(a1 + v158) = v165;
      v161 = v165;
    }

    v166 = v157 & 1;
    v167 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
    result = swift_beginAccess();
    *(v161 + v167) = v166;
  }

  v168 = *(a2 + 271);
  if (v168 != 2)
  {
    v169 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v170 = *(a1 + v169);
    v171 = swift_isUniquelyReferenced_nonNull_native();
    v172 = *(a1 + v169);
    if ((v171 & 1) == 0)
    {
      v173 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v174 = *(v173 + 48);
      v175 = *(v173 + 52);
      swift_allocObject();
      v176 = sub_21402DBE4(v172);

      *(a1 + v169) = v176;
      v172 = v176;
    }

    v177 = v168 & 1;
    v178 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
    result = swift_beginAccess();
    *(v172 + v178) = v177;
  }

  v179 = *(a2 + 272);
  if (v179 >= 3)
  {
    if (v179 != 3)
    {
      __break(1u);
      goto LABEL_125;
    }
  }

  else
  {
    v180 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v181 = *(a1 + v180);
    v182 = swift_isUniquelyReferenced_nonNull_native();
    v183 = *(a1 + v180);
    if ((v182 & 1) == 0)
    {
      v184 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v185 = *(v184 + 48);
      v186 = *(v184 + 52);
      swift_allocObject();
      v187 = sub_21402DBE4(v183);

      *(a1 + v180) = v187;
      v183 = v187;
    }

    v188 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
    result = swift_beginAccess();
    *(v183 + v188) = v179;
  }

  v189 = *(a2 + 273);
  if (v189 != 2)
  {
    v190 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v191 = *(a1 + v190);
    v192 = swift_isUniquelyReferenced_nonNull_native();
    v193 = *(a1 + v190);
    if ((v192 & 1) == 0)
    {
      v194 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v195 = *(v194 + 48);
      v196 = *(v194 + 52);
      swift_allocObject();
      v197 = sub_21402DBE4(v193);

      *(a1 + v190) = v197;
      v193 = v197;
    }

    v198 = v189 & 1;
    v199 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
    result = swift_beginAccess();
    *(v193 + v199) = v198;
  }

  v200 = *(a2 + 274);
  if (v200 != 2)
  {
    v201 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v202 = *(a1 + v201);
    v203 = swift_isUniquelyReferenced_nonNull_native();
    v204 = *(a1 + v201);
    if ((v203 & 1) == 0)
    {
      v205 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v206 = *(v205 + 48);
      v207 = *(v205 + 52);
      swift_allocObject();
      v208 = sub_21402DBE4(v204);

      *(a1 + v201) = v208;
      v204 = v208;
    }

    v209 = v200 & 1;
    v210 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
    result = swift_beginAccess();
    *(v204 + v210) = v209;
  }

  v211 = *(a2 + 36);
  if (v211 >> 60 != 15)
  {
    v212 = *(a2 + 35);
    v213 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    sub_21402D9F8(v212, v211);
    v214 = *(a1 + v213);
    v215 = swift_isUniquelyReferenced_nonNull_native();
    v216 = *(a1 + v213);
    if ((v215 & 1) == 0)
    {
      v217 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v218 = *(v217 + 48);
      v219 = *(v217 + 52);
      swift_allocObject();
      v220 = sub_21402DBE4(v216);

      *(a1 + v213) = v220;
      v216 = v220;
    }

    v221 = (v216 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__personaHandshakeData);
    swift_beginAccess();
    v222 = *v221;
    v223 = v221[1];
    *v221 = v212;
    v221[1] = v211;
    result = sub_213FDC6BC(v222, v223);
  }

  v224 = *(a2 + 296);
  if (v224 != 2)
  {
    v225 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v226 = *(a1 + v225);
    v227 = swift_isUniquelyReferenced_nonNull_native();
    v228 = *(a1 + v225);
    if ((v227 & 1) == 0)
    {
      v229 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v230 = *(v229 + 48);
      v231 = *(v229 + 52);
      swift_allocObject();
      v232 = sub_21402DBE4(v228);

      *(a1 + v225) = v232;
      v228 = v232;
    }

    v233 = v224 & 1;
    v234 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
    result = swift_beginAccess();
    *(v228 + v234) = v233;
  }

  v235 = *(a2 + 297);
  if (v235 == 2)
  {
    if (a2[76])
    {
      goto LABEL_83;
    }
  }

  else
  {
    v236 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v237 = *(a1 + v236);
    v238 = swift_isUniquelyReferenced_nonNull_native();
    v239 = *(a1 + v236);
    if ((v238 & 1) == 0)
    {
      v240 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v241 = *(v240 + 48);
      v242 = *(v240 + 52);
      swift_allocObject();
      v243 = sub_21402DBE4(v239);

      *(a1 + v236) = v243;
      v239 = v243;
    }

    v244 = v235 & 1;
    v245 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
    result = swift_beginAccess();
    *(v239 + v245) = v244;
    if (a2[76])
    {
LABEL_83:
      if (a2[78])
      {
        goto LABEL_94;
      }

      goto LABEL_91;
    }
  }

  v246 = a2[75];
  v247 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
  v248 = *(a1 + v247);
  v249 = swift_isUniquelyReferenced_nonNull_native();
  v250 = *(a1 + v247);
  if ((v249 & 1) == 0)
  {
    v251 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
    v252 = *(v251 + 48);
    v253 = *(v251 + 52);
    swift_allocObject();
    v254 = sub_21402DBE4(v250);

    *(a1 + v247) = v254;
    v250 = v254;
  }

  v255 = v250 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  result = swift_beginAccess();
  *v255 = v246;
  *(v255 + 4) = 0;
  if ((a2[78] & 1) == 0)
  {
LABEL_91:
    v256 = a2[77];
    v257 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v258 = *(a1 + v257);
    v259 = swift_isUniquelyReferenced_nonNull_native();
    v260 = *(a1 + v257);
    if ((v259 & 1) == 0)
    {
      v261 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v262 = *(v261 + 48);
      v263 = *(v261 + 52);
      swift_allocObject();
      v264 = sub_21402DBE4(v260);

      *(a1 + v257) = v264;
      v260 = v264;
    }

    v265 = v260 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
    result = swift_beginAccess();
    *v265 = v256;
    *(v265 + 4) = 0;
  }

LABEL_94:
  v266 = *(a2 + 313);
  if (v266 != 2)
  {
    v267 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v268 = *(a1 + v267);
    v269 = swift_isUniquelyReferenced_nonNull_native();
    v270 = *(a1 + v267);
    if ((v269 & 1) == 0)
    {
      v271 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v272 = *(v271 + 48);
      v273 = *(v271 + 52);
      swift_allocObject();
      v274 = sub_21402DBE4(v270);

      *(a1 + v267) = v274;
      v270 = v274;
    }

    v275 = v266 & 1;
    v276 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
    result = swift_beginAccess();
    *(v270 + v276) = v275;
  }

  v277 = *(a2 + 314);
  if (v277 != 2)
  {
    v278 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v279 = *(a1 + v278);
    v280 = swift_isUniquelyReferenced_nonNull_native();
    v281 = *(a1 + v278);
    if ((v280 & 1) == 0)
    {
      v282 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v283 = *(v282 + 48);
      v284 = *(v282 + 52);
      swift_allocObject();
      v285 = sub_21402DBE4(v281);

      *(a1 + v278) = v285;
      v281 = v285;
    }

    v286 = v277 & 1;
    v287 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
    result = swift_beginAccess();
    *(v281 + v287) = v286;
  }

  if ((a2[80] & 1) == 0)
  {
    v288 = a2[79];
    v289 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v290 = *(a1 + v289);
    v291 = swift_isUniquelyReferenced_nonNull_native();
    v292 = *(a1 + v289);
    if ((v291 & 1) == 0)
    {
      v293 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v294 = *(v293 + 48);
      v295 = *(v293 + 52);
      swift_allocObject();
      v296 = sub_21402DBE4(v292);

      *(a1 + v289) = v296;
      v292 = v296;
    }

    v297 = v292 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__spatialPersonaGenerationCounter;
    result = swift_beginAccess();
    *v297 = v288;
    *(v297 + 4) = 0;
  }

  v298 = *(a2 + 321);
  if (v298 != 2)
  {
    v299 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v300 = *(a1 + v299);
    v301 = swift_isUniquelyReferenced_nonNull_native();
    v302 = *(a1 + v299);
    if ((v301 & 1) == 0)
    {
      v303 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v304 = *(v303 + 48);
      v305 = *(v303 + 52);
      swift_allocObject();
      v306 = sub_21402DBE4(v302);

      *(a1 + v299) = v306;
      v302 = v306;
    }

    v307 = v298 & 1;
    v308 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
    result = swift_beginAccess();
    *(v302 + v308) = v307;
  }

  v309 = *(a2 + 322);
  if (v309 >= 3)
  {
    if (v309 == 3)
    {
      goto LABEL_115;
    }

LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v310 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
  v311 = *(a1 + v310);
  v312 = swift_isUniquelyReferenced_nonNull_native();
  v313 = *(a1 + v310);
  if ((v312 & 1) == 0)
  {
    v314 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
    v315 = *(v314 + 48);
    v316 = *(v314 + 52);
    swift_allocObject();
    v317 = sub_21402DBE4(v313);

    *(a1 + v310) = v317;
    v313 = v317;
  }

  v318 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
  result = swift_beginAccess();
  *(v313 + v318) = v309;
LABEL_115:
  v319 = *(a2 + 44);
  if (v319)
  {
    if (v319 != 1)
    {
      v320 = *(a2 + 43);
      v321 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);

      v322 = *(a1 + v321);
      v323 = swift_isUniquelyReferenced_nonNull_native();
      v324 = *(a1 + v321);
      if ((v323 & 1) == 0)
      {
        v325 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
        v326 = *(v325 + 48);
        v327 = *(v325 + 52);
        swift_allocObject();
        v328 = sub_21402DBE4(v324);

        *(a1 + v321) = v328;
        v324 = v328;
      }

      v329 = (v324 + OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
      swift_beginAccess();
      v330 = v329[1];
      *v329 = v320;
      v329[1] = v319;

      goto LABEL_120;
    }

LABEL_126:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

LABEL_120:
  v331 = *(a2 + 361);
  if (v331 != 2)
  {
    v332 = *(type metadata accessor for CSDMConversationParticipantProto(0) + 20);
    v333 = *(a1 + v332);
    v334 = swift_isUniquelyReferenced_nonNull_native();
    v335 = *(a1 + v332);
    if ((v334 & 1) == 0)
    {
      v336 = type metadata accessor for CSDMConversationParticipantProto._StorageClass(0);
      v337 = *(v336 + 48);
      v338 = *(v336 + 52);
      swift_allocObject();
      v339 = sub_21402DBE4(v335);

      *(a1 + v332) = v339;
      v335 = v339;
    }

    v340 = v331 & 1;
    v341 = OBJC_IVAR____TtCV9BlastDoor32CSDMConversationParticipantProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
    result = swift_beginAccess();
    *(v335 + v341) = v340;
  }

  return result;
}

uint64_t sub_214523558(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == 1)
    {
      goto LABEL_10;
    }

    v5 = *(a2 + 16);
    v6 = (result + *(type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0) + 20));
    v7 = v6[1];

    *v6 = v5;
    v6[1] = v4;
  }

  v8 = *(a2 + 33);
  if (v8 != 2)
  {
    result = type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0);
    *(v3 + *(result + 24)) = v8;
  }

  v9 = *(a2 + 64);
  if (v9)
  {
    if (v9 != 1)
    {
      v10 = *(a2 + 56);
      v11 = (v3 + *(type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0) + 28));
      v12 = v11[1];

      *v11 = v10;
      v11[1] = v9;
      return result;
    }

LABEL_10:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

double sub_21452366C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v92 = type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0);
  v3 = *(v92 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v92);
  v95 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9036F0, "а\r");
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v87 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v76 - v10;
  v12 = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  v13 = v12[6];
  v14 = (a1 + v12[5]);
  v16 = *v14;
  v15 = v14[1];
  v88 = v16;
  v100 = v15;
  v89 = *(a1 + v13);
  v17 = v12[8];
  v18 = (a1 + v12[7]);
  v20 = *v18;
  v19 = v18[1];
  v91 = v20;
  v135 = v19;
  v21 = *(a1 + v17 + 8);
  v77 = *(a1 + v17);
  v99 = v21;
  v22 = (a1 + v12[9]);
  v24 = *v22;
  v23 = v22[1];
  if (v23 >> 60 != 15)
  {
    sub_213FDCA18(v24, v23);
  }

  v97 = v24;
  v98 = v23;
  v25 = v12[11];
  v26 = a1 + v12[10];
  v90 = *v26;
  v93 = *(v26 + 4);
  sub_213FB2E54(a1 + v25, v11, &unk_27C9036F0, "а\r");
  v27 = a1;
  v28 = *(v3 + 48);
  v29 = v92;
  v30 = v28(v11, 1, v92);

  sub_213FB2DF4(v11, &unk_27C9036F0, "а\r");
  v96 = v27;
  if (v30 == 1)
  {
    v133 = 0u;
    memset(v134, 0, 25);
    v131 = 0u;
    v132 = 0u;
  }

  else
  {
    v31 = v87;
    sub_213FB2E54(v27 + v25, v87, &unk_27C9036F0, "а\r");
    if (v28(v31, 1, v29) == 1)
    {
      v32 = v95;
      sub_2146D8DE8();
      v33 = (v32 + v29[5]);
      *v33 = 0;
      v33[1] = 0;
      *(v32 + v29[6]) = 2;
      v34 = (v32 + v29[7]);
      *v34 = 0;
      v34[1] = 0;
      if (v28(v31, 1, v29) != 1)
      {
        sub_213FB2DF4(v31, &unk_27C9036F0, "а\r");
      }
    }

    else
    {
      sub_214534FEC(v31, v95, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
    }

    v35 = (v95 + v29[5]);
    v36 = *v35;
    v37 = v35[1];
    v38 = v95 + v29[7];
    v39 = *v38;
    v40 = *(v38 + 8);
    v41 = *(v95 + v29[6]);

    v42 = v36;
    v43 = v94;
    sub_2140E176C(v42, v37, v41, v39, v40, &v101);
    if (v43)
    {
      sub_2145351E4(v95, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
      sub_2145351E4(v96, type metadata accessor for CSDMConversationActivityMetadataProto);
      sub_213FDC6BC(v97, v98);

      return result;
    }

    v94 = 0;
    sub_2145351E4(v95, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
    v133 = v103;
    v134[0] = v104[0];
    *(v134 + 9) = *(v104 + 9);
    v131 = v101;
    v132 = v102;
  }

  v45 = *(v96 + v12[12]);
  v46 = (v96 + v12[13]);
  v81 = *v46;
  v82 = v45;
  v47 = *(v46 + 4);
  sub_213FB2E54(&v131, &v101, &qword_27C905BB0, &qword_2146F3FF0);
  sub_213FDCA18(v97, v98);
  sub_214652544(&v101);
  v48 = v101;
  v49 = v102;
  v50 = v103;
  sub_214652690(&v120);
  *&v126[19] = v132;
  *&v126[35] = v133;
  *&v126[51] = v134[0];
  *&v126[60] = *(v134 + 9);
  v84 = v120;
  v92 = v122;
  v86 = v123;
  v87 = v121;
  v85 = v124;
  *&v126[3] = v131;
  v83 = v47;
  v125 = v47;
  v120 = v91;
  v121 = v135;
  v80 = v50;
  v127[0] = v50;
  *&v101 = 0xD000000000000026;
  *(&v101 + 1) = 0x800000021478D0C0;
  *&v102 = 0xD00000000000001CLL;
  *(&v102 + 1) = 0x800000021478A360;
  v95 = 0x800000021478A360;

  v78 = *(&v49 + 1);
  v79 = v49;
  sub_213FDC9D0(v49, *(&v49 + 1));
  v51 = v94;
  v94 = v48;
  v52 = (v48)(&v120, v127, &v101);
  if (v51)
  {
    sub_213FB2DF4(&v131, &qword_27C905BB0, &qword_2146F3FF0);
LABEL_17:

    v62 = v97;
    v61 = v98;
    sub_213FDC6BC(v97, v98);
    v56 = *(&v48 + 1);

    v64 = v78;
    v63 = v79;
    v65 = v79;
    v66 = v78;
LABEL_18:
    sub_213FDC6D0(v65, v66);
    v113 = *v126;
    *&v116[12] = *&v126[60];
    *v116 = *&v126[48];
    v115 = *&v126[32];
    *&v101 = v88;
    *(&v101 + 1) = v100;
    LOBYTE(v102) = v89;
    *(&v102 + 1) = *v130;
    DWORD1(v102) = *&v130[3];
    *(&v102 + 1) = v94;
    *&v103 = v56;
    *(&v103 + 1) = v63;
    *&v104[0] = v64;
    BYTE8(v104[0]) = v80;
    *(v104 + 9) = *v129;
    HIDWORD(v104[0]) = *&v129[3];
    *&v104[1] = v84;
    *(&v104[1] + 1) = v87;
    v105 = v92;
    v106 = v86;
    v107 = v85;
    *&v108[3] = *(v128 + 3);
    *v108 = v128[0];
    v109 = v62;
    v110 = v61;
    v111 = v90;
    v112 = v93;
    v114 = *&v126[16];
    v117 = v82;
    v118 = v81;
    v119 = v83;
    sub_2142E6A98(&v101);
    sub_2145351E4(v96, type metadata accessor for CSDMConversationActivityMetadataProto);
    return result;
  }

  if ((v52 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v59 = 0xD000000000000026;
    v59[1] = 0x800000021478D0C0;
    v60 = v95;
    v59[2] = 0xD00000000000001CLL;
    v59[3] = v60;
    swift_willThrow();

    sub_213FB2DF4(&v131, &qword_27C905BB0, &qword_2146F3FF0);
    goto LABEL_17;
  }

  v54 = v78;
  v53 = v79;
  sub_213FDC6D0(v79, v78);
  v55 = v95;

  v56 = *(&v48 + 1);

  sub_213FDC6D0(v53, v54);
  v57 = v99;
  v120 = v77;
  v121 = v99;
  v127[0] = v85;
  *&v101 = 0xD000000000000029;
  *(&v101 + 1) = 0x800000021478D0F0;
  *&v102 = 0xD00000000000001CLL;
  *(&v102 + 1) = v55;

  sub_213FDC9D0(v92, v86);
  v58 = v84(&v120, v127, &v101);
  v64 = v135;
  v63 = v91;
  if ((v58 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v74 = 0xD000000000000029;
    v74[1] = 0x800000021478D0F0;
    v75 = v95;
    v74[2] = 0xD00000000000001CLL;
    v74[3] = v75;
    swift_willThrow();

    sub_213FB2DF4(&v131, &qword_27C905BB0, &qword_2146F3FF0);

    v62 = v97;
    v61 = v98;
    sub_213FDC6BC(v97, v98);

    v65 = v92;
    v66 = v86;
    goto LABEL_18;
  }

  v67 = v86;
  sub_213FDC6D0(v92, v86);
  sub_213FB2DF4(&v131, &qword_27C905BB0, &qword_2146F3FF0);
  sub_213FDC6BC(v97, v98);
  v68 = v87;

  sub_213FDC6D0(v92, v67);
  sub_2145351E4(v96, type metadata accessor for CSDMConversationActivityMetadataProto);
  v69 = v76;
  *(v76 + 185) = *&v126[60];
  v70 = *&v126[32];
  *(v69 + 173) = *&v126[48];
  *(v69 + 157) = v70;
  v71 = *v126;
  result = *&v126[16];
  *(v69 + 141) = *&v126[16];
  v72 = v100;
  *v69 = v88;
  *(v69 + 8) = v72;
  *(v69 + 16) = v89;
  *(v69 + 24) = v94;
  *(v69 + 32) = *(&v48 + 1);
  *(v69 + 40) = v63;
  *(v69 + 48) = v64;
  *(v69 + 56) = v80;
  *(v69 + 64) = v84;
  *(v69 + 72) = v68;
  *(v69 + 80) = v77;
  *(v69 + 88) = v57;
  *(v69 + 96) = v85;
  v73 = v98;
  *(v69 + 104) = v97;
  *(v69 + 112) = v73;
  *(v69 + 120) = v90;
  *(v69 + 124) = v93;
  *(v69 + 125) = v71;
  LODWORD(v73) = v81;
  *(v69 + 201) = v82;
  *(v69 + 204) = v73;
  *(v69 + 208) = v83;
  return result;
}

int *sub_214524048(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0);
  v52 = *(v4 - 8);
  v5 = *(v52 + 64);
  result = MEMORY[0x28223BE20](v4);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[1];
  if (v8)
  {
    v9 = *a2;
    v10 = (a1 + *(type metadata accessor for CSDMConversationActivityMetadataProto(0) + 20));
    v11 = v10[1];

    *v10 = v9;
    v10[1] = v8;
  }

  v12 = *(a2 + 16);
  if (v12 != 2)
  {
    result = type metadata accessor for CSDMConversationActivityMetadataProto(0);
    *(a1 + result[6]) = v12;
  }

  v13 = a2[6];
  if (v13)
  {
    if (v13 == 1)
    {
      goto LABEL_22;
    }

    v14 = a2[5];
    v15 = (a1 + *(type metadata accessor for CSDMConversationActivityMetadataProto(0) + 28));
    v16 = v15[1];

    *v15 = v14;
    v15[1] = v13;
  }

  v17 = a2[11];
  if (v17)
  {
    if (v17 != 1)
    {
      v18 = a2[10];
      v19 = (a1 + *(type metadata accessor for CSDMConversationActivityMetadataProto(0) + 32));
      v20 = v19[1];

      *v19 = v18;
      v19[1] = v17;
      goto LABEL_11;
    }

LABEL_22:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

LABEL_11:
  v21 = a2[14];
  if (v21 >> 60 != 15)
  {
    v22 = a2[13];
    v23 = (a1 + *(type metadata accessor for CSDMConversationActivityMetadataProto(0) + 36));
    v39 = a1;
    v25 = *v23;
    v24 = v23[1];
    sub_21402D9F8(v22, v21);
    a1 = v39;
    result = sub_213FDC6BC(v25, v24);
    *v23 = v22;
    v23[1] = v21;
  }

  v26 = *(a2 + 124);
  if ((v26 & 1) == 0)
  {
    v27 = *(a2 + 30);
    result = type metadata accessor for CSDMConversationActivityMetadataProto(0);
    v28 = a1 + result[10];
    *v28 = v27;
    *(v28 + 4) = v26;
  }

  v29 = *(a2 + 9);
  v44[0] = *(a2 + 8);
  v44[1] = v29;
  v30 = *(a2 + 11);
  v44[2] = *(a2 + 10);
  v45[0] = v30;
  *(v45 + 9) = *(a2 + 185);
  if (*&v44[0])
  {
    v46 = *&v44[0];
    v48 = *(a2 + 19);
    v49 = *(a2 + 21);
    v50 = *(a2 + 23);
    v51 = *(a2 + 200);
    v47 = *(a2 + 17);
    MEMORY[0x28223BE20](result);
    v31 = *(a2 + 11);
    v42[2] = *(a2 + 10);
    v43[0] = v31;
    *(v43 + 9) = *(a2 + 185);
    v32 = *(a2 + 9);
    v42[0] = *(a2 + 8);
    v42[1] = v32;
    sub_2142E6A3C(v42, &v41);
    sub_214534FA4(&qword_27C903B40, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
    v33 = v40;
    sub_2146D9018();
    sub_213FB2DF4(v44, &qword_27C905BB0, &qword_2146F3FF0);
    v34 = *(type metadata accessor for CSDMConversationActivityMetadataProto(0) + 44);
    sub_213FB2DF4(a1 + v34, &unk_27C9036F0, "а\r");
    sub_214534FEC(v33, a1 + v34, type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto);
    result = (*(v52 + 56))(a1 + v34, 0, 1, v4);
  }

  v35 = *(a2 + 201);
  if (v35 != 2)
  {
    result = type metadata accessor for CSDMConversationActivityMetadataProto(0);
    *(a1 + result[12]) = v35;
  }

  v36 = *(a2 + 208);
  if ((v36 & 1) == 0)
  {
    v37 = *(a2 + 51);
    result = type metadata accessor for CSDMConversationActivityMetadataProto(0);
    v38 = a1 + result[13];
    *v38 = v37;
    *(v38 + 4) = v36;
  }

  return result;
}

uint64_t sub_214524474(uint64_t result, void *a2)
{
  v3 = result;
  v4 = a2[3];
  if (v4)
  {
    if (v4 == 1)
    {
      goto LABEL_14;
    }

    v5 = a2[2];
    v6 = (result + *(type metadata accessor for CSDMConversationActivityContextProto(0) + 20));
    v7 = v6[1];

    *v6 = v5;
    v6[1] = v4;
  }

  v8 = a2[8];
  if (v8)
  {
    if (v8 == 1)
    {
      goto LABEL_14;
    }

    v9 = a2[7];
    v10 = (v3 + *(type metadata accessor for CSDMConversationActivityContextProto(0) + 24));
    v11 = v10[1];

    *v10 = v9;
    v10[1] = v8;
  }

  v12 = a2[13];
  if (v12)
  {
    if (v12 == 1)
    {
      goto LABEL_14;
    }

    v13 = a2[12];
    v14 = (v3 + *(type metadata accessor for CSDMConversationActivityContextProto(0) + 28));
    v15 = v14[1];

    *v14 = v13;
    v14[1] = v12;
  }

  v16 = a2[18];
  if (!v16)
  {
    return result;
  }

  if (v16 == 1)
  {
LABEL_14:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v17 = a2[17];
  v18 = (v3 + *(type metadata accessor for CSDMConversationActivityContextProto(0) + 32));
  v19 = v18[1];

  *v18 = v17;
  v18[1] = v16;
  return result;
}