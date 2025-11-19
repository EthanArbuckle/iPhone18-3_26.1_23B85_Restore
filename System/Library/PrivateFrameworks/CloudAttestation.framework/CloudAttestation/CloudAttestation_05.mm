uint64_t static PrivateCloudCompute_TransparencyLog_AssociatedAsset.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22FFB1BC8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_22FFB1BC8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_AssociatedAsset(0) + 24);
  sub_22FFB0F88();
  sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF01C18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF01C90(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF04DCC(&qword_27DAF25F0, type metadata accessor for PrivateCloudCompute_TransparencyLog_AssociatedAsset);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF01D30(uint64_t a1)
{
  v2 = sub_22FF04DCC(&qword_27DAF23B0, type metadata accessor for PrivateCloudCompute_TransparencyLog_AssociatedAsset);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF01D9C()
{
  sub_22FF04DCC(&qword_27DAF23B0, type metadata accessor for PrivateCloudCompute_TransparencyLog_AssociatedAsset);

  return sub_22FFB11A8();
}

uint64_t sub_22FF01E18(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_22FFB1BC8() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_22FFB1BC8() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  sub_22FFB0F88();
  sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF01F10()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF22E0);
  __swift_project_value_buffer(v0, qword_27DAF22E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "application";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "type";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "releaseType";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t PrivateCloudCompute_TransparencyLog_ATActiveRecordsRequest.decodeMessage<A>(decoder:)()
{
  result = sub_22FFB1058();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          sub_22FF03D00();
LABEL_5:
          v0 = v3;
          sub_22FFB1098();
          goto LABEL_6;
        }

        if (result == 4)
        {
          sub_22FF03D54();
          sub_22FFB1078();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          sub_22FF03C58();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          sub_22FF03CAC();
          goto LABEL_5;
        }
      }

LABEL_6:
      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATActiveRecordsRequest.traverse<A>(visitor:)()
{
  v2 = v1;
  if (*v0)
  {
    v6 = *v0;
    v9 = *(v0 + 8);
    sub_22FF03C58();
    result = sub_22FFB1208();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  if (v0[2])
  {
    v7 = v0[2];
    v10 = *(v0 + 24);
    sub_22FF03CAC();
    result = sub_22FFB1208();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  if (v0[4])
  {
    v8 = v0[4];
    v11 = *(v0 + 40);
    sub_22FF03D00();
    v4 = v2;
    result = sub_22FFB1208();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v4 = v2;
  }

  if (!*(v0[6] + 16) || (sub_22FF03D54(), result = sub_22FFB11E8(), !v4))
  {
    v5 = v0 + *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsRequest(0) + 32);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF0249C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 32);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF02500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF02574(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_22FF025E8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_2;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_22FF0263C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF04DCC(&qword_27DAF25E8, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF026DC(uint64_t a1)
{
  v2 = sub_22FF04DCC(&qword_27DAF24D8, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF02748()
{
  sub_22FF04DCC(&qword_27DAF24D8, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsRequest);

  return sub_22FFB11A8();
}

uint64_t sub_22FF027E4()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF22F8);
  __swift_project_value_buffer(v0, qword_27DAF22F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "leaves";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.decodeMessage<A>(decoder:)()
{
  result = sub_22FFB1058();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22FF04D78();
        sub_22FFB1098();
      }

      else if (result == 3)
      {
        type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf(0);
        sub_22FF04DCC(&qword_27DAF23D0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf);
        sub_22FFB1118();
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.traverse<A>(visitor:)()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), sub_22FF04D78(), result = sub_22FFB1208(), !v1))
  {
    if (!*(v0[2] + 16) || (type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf(0), sub_22FF04DCC(&qword_27DAF23D0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf), result = sub_22FFB1278(), !v1))
    {
      v3 = v0 + *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse(0) + 24);
      return sub_22FFB0F68();
    }
  }

  return result;
}

uint64_t sub_22FF02C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 24);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF02CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF02D34(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22FF02DD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF04DCC(&qword_27DAF25E0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF02E78(uint64_t a1)
{
  v2 = sub_22FF04DCC(&qword_27DAF24F0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF02EE4()
{
  sub_22FF04DCC(&qword_27DAF24F0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse);

  return sub_22FFB11A8();
}

uint64_t sub_22FF02F64()
{
  result = MEMORY[0x23190DD10](0x6661654C2ELL, 0xE500000000000000);
  qword_27DAF2310 = 0xD00000000000003BLL;
  *algn_27DAF2318 = 0x800000022FFCA2A0;
  return result;
}

uint64_t static PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf.protoMessageName.getter()
{
  if (qword_27DAF1308 != -1)
  {
    swift_once();
  }

  v0 = qword_27DAF2310;

  return v0;
}

uint64_t sub_22FF03034()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2320);
  __swift_project_value_buffer(v0, qword_27DAF2320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22FFB6380;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "nodeType";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22FFB1298();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "nodeBytes";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "nodePosition";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "rawData";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "metadata";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "expiryMs";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  return sub_22FFB12A8();
}

uint64_t sub_22FF0331C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_22FFB12C8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf.decodeMessage<A>(decoder:)()
{
  result = sub_22FFB1058();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        if (result == 5 || result == 6)
        {
LABEL_4:
          sub_22FFB10C8();
          goto LABEL_5;
        }

        if (result == 7)
        {
LABEL_15:
          sub_22FFB1108();
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            sub_22FF058DC();
            sub_22FFB1098();
            break;
          case 2:
            goto LABEL_4;
          case 3:
            goto LABEL_15;
        }
      }

LABEL_5:
      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf.traverse<A>(visitor:)()
{
  if (*v0)
  {
    v19 = *v0;
    v20 = *(v0 + 8);
    sub_22FF058DC();
    result = sub_22FFB1208();
    if (v1)
    {
      return result;
    }
  }

  v3 = v0[2];
  v4 = v0[3];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
    goto LABEL_10;
  }

  if (v5)
  {
    v6 = v3;
    v7 = v3 >> 32;
LABEL_10:
    if (v6 == v7)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ((v4 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_11:
  result = sub_22FFB1228();
  if (v1)
  {
    return result;
  }

LABEL_12:
  if (v0[4])
  {
    result = sub_22FFB1268();
    if (v1)
    {
      return result;
    }
  }

  v8 = v0[5];
  v9 = v0[6];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_23;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 == v12)
  {
    goto LABEL_23;
  }

LABEL_22:
  result = sub_22FFB1228();
  if (v1)
  {
    return result;
  }

LABEL_23:
  v13 = v0[7];
  v14 = v0[8];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_32;
    }

    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
  }

  else
  {
    if (!v15)
    {
      if ((v14 & 0xFF000000000000) == 0)
      {
        goto LABEL_32;
      }

LABEL_31:
      result = sub_22FFB1228();
      if (v1)
      {
        return result;
      }

      goto LABEL_32;
    }

    v16 = v13;
    v17 = v13 >> 32;
  }

  if (v16 != v17)
  {
    goto LABEL_31;
  }

LABEL_32:
  if (!v0[9] || (result = sub_22FFB1268(), !v1))
  {
    v18 = v0 + *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf(0) + 40);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF03710(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22FFB1CA8();
  a1(0);
  sub_22FF04DCC(a2, a3);
  sub_22FFB1438();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF03798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = xmmword_22FFB33B0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = xmmword_22FFB6370;
  *(a2 + 64) = xmmword_22FFB6370;
  v2 = a2 + *(a1 + 40);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF037E0()
{
  if (qword_27DAF1308 != -1)
  {
    swift_once();
  }

  v0 = qword_27DAF2310;

  return v0;
}

uint64_t sub_22FF03848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF038BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_22FF03930(uint64_t a1, uint64_t a2))()
{
  result = nullsub_2;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_22FF03984(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF04DCC(&qword_27DAF25D8, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF03A24@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_22FFB12C8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_22FF03AC0(uint64_t a1)
{
  v2 = sub_22FF04DCC(&qword_27DAF23D0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF03B2C()
{
  sub_22FFB1CA8();
  sub_22FFB1438();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF03B84()
{
  sub_22FF04DCC(&qword_27DAF23D0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf);

  return sub_22FFB11A8();
}

uint64_t sub_22FF03C00()
{
  sub_22FFB1CA8();
  sub_22FFB1438();
  return sub_22FFB1CF8();
}

unint64_t sub_22FF03C58()
{
  result = qword_27DAF2340;
  if (!qword_27DAF2340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2340);
  }

  return result;
}

unint64_t sub_22FF03CAC()
{
  result = qword_27DAF2348;
  if (!qword_27DAF2348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2348);
  }

  return result;
}

unint64_t sub_22FF03D00()
{
  result = qword_27DAF2350;
  if (!qword_27DAF2350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2350);
  }

  return result;
}

unint64_t sub_22FF03D54()
{
  result = qword_27DAF2358;
  if (!qword_27DAF2358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2358);
  }

  return result;
}

uint64_t _s16CloudAttestation07Privatea24Compute_TransparencyLog_F11ConsistencyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_22FEFFCE0(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  sub_22FFB0F88();
  sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t _s16CloudAttestation07PrivateA47Compute_TransparencyLog_ATLogProofBatchResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_22FFB7B98[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    if (v3 <= 2)
    {
      if (v3)
      {
        if (v3 == 1)
        {
          if (v2 != 1)
          {
            return 0;
          }
        }

        else if (v2 != 3)
        {
          return 0;
        }
      }

      else if (v2)
      {
        return 0;
      }
    }

    else if (v3 > 4)
    {
      if (v3 == 5)
      {
        if (v2 != 6)
        {
          return 0;
        }
      }

      else if (v2 != 7)
      {
        return 0;
      }
    }

    else if (v3 == 3)
    {
      if (v2 != 4)
      {
        return 0;
      }
    }

    else if (v2 != 5)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (sub_22FEE8A98(a1[2], *(a2 + 16)))
  {
    v4 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofBatchResponse(0) + 24);
    sub_22FFB0F88();
    sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8]);
    return sub_22FFB1478() & 1;
  }

  return 0;
}

uint64_t _s16CloudAttestation07PrivateA47Compute_TransparencyLog_ATActiveRecordsResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_22FFB7B98[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    if (v3 <= 2)
    {
      if (v3)
      {
        if (v3 == 1)
        {
          if (v2 != 1)
          {
            return 0;
          }
        }

        else if (v2 != 3)
        {
          return 0;
        }
      }

      else if (v2)
      {
        return 0;
      }
    }

    else if (v3 > 4)
    {
      if (v3 == 5)
      {
        if (v2 != 6)
        {
          return 0;
        }
      }

      else if (v2 != 7)
      {
        return 0;
      }
    }

    else if (v3 == 3)
    {
      if (v2 != 4)
      {
        return 0;
      }
    }

    else if (v2 != 5)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (sub_22FEE9AFC(a1[2], *(a2 + 16)))
  {
    v4 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse(0) + 24);
    sub_22FFB0F88();
    sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8]);
    return sub_22FFB1478() & 1;
  }

  return 0;
}

uint64_t _s16CloudAttestation07PrivateA47Compute_TransparencyLog_ATActiveRecordsResponseV4LeafV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5 > 3)
    {
      if (v5 > 5)
      {
        if (v5 == 6)
        {
          if (v4 != 6)
          {
            return 0;
          }
        }

        else if (v4 != 7)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v4 != 4)
        {
          return 0;
        }
      }

      else if (v4 != 5)
      {
        return 0;
      }
    }

    else if (v5 > 1)
    {
      if (v5 == 2)
      {
        if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if ((sub_22FEC3DC8(a1[2], a1[3], *(a2 + 16), *(a2 + 24)) & 1) != 0 && a1[4] == *(a2 + 32) && (sub_22FEC3DC8(a1[5], a1[6], *(a2 + 40), *(a2 + 48)) & 1) != 0 && (sub_22FEC3DC8(a1[7], a1[8], *(a2 + 56), *(a2 + 64)) & 1) != 0 && a1[9] == *(a2 + 72))
  {
    v6 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf(0) + 40);
    sub_22FFB0F88();
    sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8]);
    return sub_22FFB1478() & 1;
  }

  return 0;
}

uint64_t _s16CloudAttestation07PrivateA46Compute_TransparencyLog_ATActiveRecordsRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_22FFB7BD0[v2];
  }

  v3 = *a2;
  if (!*(a2 + 8))
  {
    goto LABEL_15;
  }

  if (v3 <= 1)
  {
    if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        if (v2 != 3)
        {
          return 0;
        }

        goto LABEL_16;
      }

      v3 = 999999999;
LABEL_15:
      if (v2 != v3)
      {
        return 0;
      }

      goto LABEL_16;
    }

    if (v2 != 2)
    {
      return 0;
    }
  }

LABEL_16:
  v4 = a1[2];
  v5 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v5 <= 2)
    {
      if (v5)
      {
        if (v5 == 1)
        {
          if (v4 != 1)
          {
            return 0;
          }
        }

        else if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v4)
      {
        return 0;
      }
    }

    else if (v5 > 4)
    {
      if (v5 == 5)
      {
        if (v4 != 5)
        {
          return 0;
        }
      }

      else if (v4 != 6)
      {
        return 0;
      }
    }

    else if (v5 == 3)
    {
      if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v4 != 4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = a1[4];
  if (*(a1 + 40) == 1)
  {
    v6 = qword_22FFB7BF8[v6];
  }

  v7 = *(a2 + 32);
  if (*(a2 + 40))
  {
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        if (v6 != 4)
        {
          return 0;
        }
      }

      else if (v7 == 4)
      {
        if (v6 != 5)
        {
          return 0;
        }
      }

      else if (v6 != 100)
      {
        return 0;
      }
    }

    else if (v7)
    {
      if (v7 == 1)
      {
        if (v6 != 1)
        {
          return 0;
        }
      }

      else if (v6 != 3)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  if (sub_22FEEA65C(a1[6], *(a2 + 48)))
  {
    v8 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsRequest(0) + 32);
    sub_22FFB0F88();
    sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8]);
    return sub_22FFB1478() & 1;
  }

  return 0;
}

uint64_t _s16CloudAttestation07PrivateA43Compute_TransparencyLog_ATLogInsertResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_22FFB7B98[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    if (v3 > 2)
    {
      if (v3 > 4)
      {
        if (v3 == 5)
        {
          if (v2 != 6)
          {
            return 0;
          }
        }

        else if (v2 != 7)
        {
          return 0;
        }
      }

      else if (v3 == 3)
      {
        if (v2 != 4)
        {
          return 0;
        }
      }

      else if (v2 != 5)
      {
        return 0;
      }

LABEL_10:
      v4 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogInsertResponse(0) + 20);
      sub_22FFB0F88();
      sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8]);
      return sub_22FFB1478() & 1;
    }

    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 3)
      {
        return 0;
      }

      goto LABEL_10;
    }

    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else if (v2 == v3)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t _s16CloudAttestation07PrivateA42Compute_TransparencyLog_ATLogProofResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2110, &qword_22FFB7B90);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v18 = *a1;
  if (*(a1 + 8) == 1)
  {
    v18 = qword_22FFB7B98[v18];
  }

  v19 = *a2;
  if (*(a2 + 8))
  {
    if (v19 <= 2)
    {
      if (v19)
      {
        if (v19 == 1)
        {
          if (v18 != 1)
          {
            goto LABEL_35;
          }
        }

        else if (v18 != 3)
        {
          goto LABEL_35;
        }
      }

      else if (v18)
      {
        goto LABEL_35;
      }
    }

    else if (v19 > 4)
    {
      if (v19 == 5)
      {
        if (v18 != 6)
        {
          goto LABEL_35;
        }
      }

      else if (v18 != 7)
      {
        goto LABEL_35;
      }
    }

    else if (v19 == 3)
    {
      if (v18 != 4)
      {
        goto LABEL_35;
      }
    }

    else if (v18 != 5)
    {
      goto LABEL_35;
    }
  }

  else if (v18 != v19)
  {
LABEL_35:
    v28 = 0;
    return v28 & 1;
  }

  v20 = v15;
  if ((sub_22FEC3DC8(a1[2], a1[3], *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    goto LABEL_35;
  }

  v31 = v8;
  v30 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse(0);
  v21 = *(v30 + 32);
  v22 = *(v20 + 48);
  sub_22FEBF3A4(a1 + v21, v17, &qword_27DAF37C0, &unk_22FFB5C60);
  sub_22FEBF3A4(a2 + v21, &v17[v22], &qword_27DAF37C0, &unk_22FFB5C60);
  v23 = *(v5 + 48);
  if (v23(v17, 1, v4) == 1)
  {
    if (v23(&v17[v22], 1, v4) == 1)
    {
      sub_22FEAEA34(v17, &qword_27DAF37C0, &unk_22FFB5C60);
      goto LABEL_33;
    }

    goto LABEL_23;
  }

  sub_22FEBF3A4(v17, v12, &qword_27DAF37C0, &unk_22FFB5C60);
  if (v23(&v17[v22], 1, v4) == 1)
  {
    sub_22FEF6ED0(v12, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
LABEL_23:
    sub_22FEAEA34(v17, &qword_27DAF2110, &qword_22FFB7B90);
    goto LABEL_35;
  }

  v24 = &v17[v22];
  v25 = v31;
  sub_22FEF6B58(v24, v31, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  v26 = _s16CloudAttestation07PrivateA35Compute_TransparencyLog_ATLogProofsV2eeoiySbAC_ACtFZ_0(v12, v25);
  sub_22FEF6ED0(v25, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  sub_22FEF6ED0(v12, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  sub_22FEAEA34(v17, &qword_27DAF37C0, &unk_22FFB5C60);
  if ((v26 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_33:
  if (a1[4] != *(a2 + 32))
  {
    goto LABEL_35;
  }

  v27 = *(v30 + 28);
  sub_22FFB0F88();
  sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8]);
  v28 = sub_22FFB1478();
  return v28 & 1;
}

uint64_t _s16CloudAttestation07PrivateA42Compute_TransparencyLog_ATLogInsertRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_22FFB7BD0[v2];
  }

  v3 = *a2;
  if (!*(a2 + 8))
  {
LABEL_15:
    if (v2 != v3)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (v2 != 2)
      {
        return 0;
      }

      goto LABEL_16;
    }

    if (v3 == 3)
    {
      if (v2 != 3)
      {
        return 0;
      }

      goto LABEL_16;
    }

    v3 = 999999999;
    goto LABEL_15;
  }

  if (v3)
  {
    if (v2 != 1)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

LABEL_16:
  v4 = a1[2];
  v5 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v5 <= 2)
    {
      if (v5)
      {
        if (v5 == 1)
        {
          if (v4 != 1)
          {
            return 0;
          }
        }

        else if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v4)
      {
        return 0;
      }
    }

    else if (v5 > 4)
    {
      if (v5 == 5)
      {
        if (v4 != 5)
        {
          return 0;
        }
      }

      else if (v4 != 6)
      {
        return 0;
      }
    }

    else if (v5 == 3)
    {
      if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v4 != 4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = a1[4];
  if (*(a1 + 40) == 1)
  {
    v6 = qword_22FFB7BF8[v6];
  }

  v7 = *(a2 + 32);
  if (*(a2 + 40))
  {
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        if (v6 != 4)
        {
          return 0;
        }
      }

      else if (v7 == 4)
      {
        if (v6 != 5)
        {
          return 0;
        }
      }

      else if (v6 != 100)
      {
        return 0;
      }
    }

    else if (v7)
    {
      if (v7 == 1)
      {
        if (v6 != 1)
        {
          return 0;
        }
      }

      else if (v6 != 3)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  if (a1[6] != *(a2 + 48) || (sub_22FEC3DC8(a1[7], a1[8], *(a2 + 56), *(a2 + 64)) & 1) == 0 || (sub_22FEC3DC8(a1[9], a1[10], *(a2 + 72), *(a2 + 80)) & 1) == 0 || (sub_22FEC3DC8(a1[11], a1[12], *(a2 + 88), *(a2 + 96)) & 1) == 0)
  {
    return 0;
  }

  v10 = a1[13];
  v11 = *(a2 + 104);
  if (*(a1 + 112))
  {
    v10 = v10 != 0;
  }

  if (*(a2 + 112) != 1)
  {
    if (v10 == v11)
    {
      goto LABEL_74;
    }

    return 0;
  }

  if (v11)
  {
    if (v10 == 1)
    {
      goto LABEL_74;
    }

    return 0;
  }

  if (v10)
  {
    return 0;
  }

LABEL_74:
  v13 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogInsertRequest(0) + 48);
  sub_22FFB0F88();
  sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

unint64_t sub_22FF04D78()
{
  result = qword_27DAF2368;
  if (!qword_27DAF2368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2368);
  }

  return result;
}

uint64_t sub_22FF04DCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s16CloudAttestation07PrivateA41Compute_TransparencyLog_ATLogProofRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_22FFB7BD0[v2];
  }

  v3 = *a2;
  if (!*(a2 + 8))
  {
    goto LABEL_15;
  }

  if (v3 <= 1)
  {
    if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        if (v2 != 3)
        {
          return 0;
        }

        goto LABEL_16;
      }

      v3 = 999999999;
LABEL_15:
      if (v2 != v3)
      {
        return 0;
      }

      goto LABEL_16;
    }

    if (v2 != 2)
    {
      return 0;
    }
  }

LABEL_16:
  v4 = a1[2];
  v5 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v5 <= 2)
    {
      if (v5)
      {
        if (v5 == 1)
        {
          if (v4 != 1)
          {
            return 0;
          }
        }

        else if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v4)
      {
        return 0;
      }
    }

    else if (v5 > 4)
    {
      if (v5 == 5)
      {
        if (v4 != 5)
        {
          return 0;
        }
      }

      else if (v4 != 6)
      {
        return 0;
      }
    }

    else if (v5 == 3)
    {
      if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v4 != 4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (sub_22FEC3DC8(a1[4], a1[5], *(a2 + 32), *(a2 + 40)))
  {
    v8 = a1[6];
    v9 = *(a2 + 48);
    if (*(a1 + 56))
    {
      v8 = v8 != 0;
    }

    if (*(a2 + 56) == 1)
    {
      if (v9)
      {
        if (v8 != 1)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }
    }

    else if (v8 != v9)
    {
      return 0;
    }

    if (sub_22FEE7C00(a1[8], *(a2 + 64)))
    {
      v10 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofRequest(0) + 36);
      sub_22FFB0F88();
      sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8]);
      return sub_22FFB1478() & 1;
    }
  }

  return 0;
}

uint64_t _s16CloudAttestation07PrivateA36Compute_TransparencyLog_ATInsertDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (sub_22FEC3DC8(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v4 = qword_22FFB7BF8[v4];
  }

  v5 = *(a2 + 32);
  if (*(a2 + 40))
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        if (v4 != 4)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v4 != 5)
        {
          return 0;
        }
      }

      else if (v4 != 100)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (sub_22FEEA6F0(*(a1 + 48), *(a2 + 48)) & 1) != 0 && (sub_22FEEA830(*(a1 + 56), *(a2 + 56)))
  {
    v6 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATInsertData(0) + 36);
    sub_22FFB0F88();
    sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8]);
    return sub_22FFB1478() & 1;
  }

  return 0;
}

uint64_t _s16CloudAttestation07PrivateA35Compute_TransparencyLog_ATLogProofsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v55 = a2;
  v2 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2140, &qword_22FFB5C90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v46 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2148, &qword_22FFB5C98);
  v8 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v53 = &v46 - v9;
  v10 = type metadata accessor for LogEntry(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = (&v46 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2158, &unk_22FFB7B80);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - v22;
  v49 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v24 = *(v49 + 20);
  v25 = *(v20 + 56);
  sub_22FEBF3A4(v54 + v24, v23, &qword_27DAF2150, &qword_22FFB5CA0);
  sub_22FEBF3A4(v55 + v24, &v23[v25], &qword_27DAF2150, &qword_22FFB5CA0);
  v26 = *(v11 + 48);
  if (v26(v23, 1, v10) != 1)
  {
    sub_22FEBF3A4(v23, v18, &qword_27DAF2150, &qword_22FFB5CA0);
    if (v26(&v23[v25], 1, v10) != 1)
    {
      sub_22FEF6B58(&v23[v25], v14, type metadata accessor for LogEntry);
      v30 = _s16CloudAttestation8LogEntryV2eeoiySbAC_ACtFZ_0(v18, v14);
      sub_22FEF6ED0(v14, type metadata accessor for LogEntry);
      sub_22FEF6ED0(v18, type metadata accessor for LogEntry);
      sub_22FEAEA34(v23, &qword_27DAF2150, &qword_22FFB5CA0);
      if ((v30 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_8;
    }

    sub_22FEF6ED0(v18, type metadata accessor for LogEntry);
LABEL_6:
    v27 = &qword_27DAF2158;
    v28 = &unk_22FFB7B80;
    v29 = v23;
LABEL_15:
    sub_22FEAEA34(v29, v27, v28);
    goto LABEL_16;
  }

  if (v26(&v23[v25], 1, v10) != 1)
  {
    goto LABEL_6;
  }

  sub_22FEAEA34(v23, &qword_27DAF2150, &qword_22FFB5CA0);
LABEL_8:
  v31 = *(v49 + 24);
  v32 = *(v50 + 48);
  v33 = v53;
  sub_22FEBF3A4(v54 + v31, v53, &qword_27DAF2140, &qword_22FFB5C90);
  sub_22FEBF3A4(v55 + v31, v33 + v32, &qword_27DAF2140, &qword_22FFB5C90);
  v34 = v52;
  v35 = *(v51 + 48);
  if (v35(v33, 1, v52) == 1)
  {
    if (v35(v33 + v32, 1, v34) == 1)
    {
      sub_22FEAEA34(v33, &qword_27DAF2140, &qword_22FFB5C90);
LABEL_21:
      sub_22FFB0F88();
      sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8]);
      v37 = sub_22FFB1478();
      return v37 & 1;
    }

    goto LABEL_13;
  }

  v36 = v48;
  sub_22FEBF3A4(v33, v48, &qword_27DAF2140, &qword_22FFB5C90);
  if (v35(v33 + v32, 1, v34) == 1)
  {
    sub_22FEF6ED0(v36, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
LABEL_13:
    v27 = &qword_27DAF2148;
    v28 = &qword_22FFB5C98;
LABEL_14:
    v29 = v33;
    goto LABEL_15;
  }

  v39 = v47;
  sub_22FEF6B58(v33 + v32, v47, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
  v40 = *(v34 + 20);
  v41 = *(v36 + v40);
  v42 = *(v39 + v40);
  if (v41 != v42)
  {
    v43 = *(v36 + v40);

    v44 = sub_22FEFFCE0(v41, v42);

    if (!v44)
    {
      sub_22FEF6ED0(v39, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
      sub_22FEF6ED0(v36, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
      v27 = &qword_27DAF2140;
      v28 = &qword_22FFB5C90;
      goto LABEL_14;
    }
  }

  sub_22FFB0F88();
  sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8]);
  v45 = sub_22FFB1478();
  sub_22FEF6ED0(v39, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
  sub_22FEF6ED0(v36, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
  sub_22FEAEA34(v33, &qword_27DAF2140, &qword_22FFB5C90);
  if (v45)
  {
    goto LABEL_21;
  }

LABEL_16:
  v37 = 0;
  return v37 & 1;
}

unint64_t sub_22FF05888()
{
  result = qword_27DAF23A8;
  if (!qword_27DAF23A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF23A8);
  }

  return result;
}

unint64_t sub_22FF058DC()
{
  result = qword_28148F3C8;
  if (!qword_28148F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F3C8);
  }

  return result;
}

unint64_t sub_22FF05934()
{
  result = qword_27DAF23E8;
  if (!qword_27DAF23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF23E8);
  }

  return result;
}

unint64_t sub_22FF0598C()
{
  result = qword_27DAF23F0;
  if (!qword_27DAF23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF23F0);
  }

  return result;
}

unint64_t sub_22FF05A14()
{
  result = qword_27DAF2408;
  if (!qword_27DAF2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2408);
  }

  return result;
}

unint64_t sub_22FF05A6C()
{
  result = qword_27DAF2410;
  if (!qword_27DAF2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2410);
  }

  return result;
}

unint64_t sub_22FF05AC4()
{
  result = qword_27DAF2418;
  if (!qword_27DAF2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2418);
  }

  return result;
}

uint64_t sub_22FF05B48(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_22FF05BA0()
{
  result = qword_27DAF2430;
  if (!qword_27DAF2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2430);
  }

  return result;
}

uint64_t sub_22FF069BC()
{
  result = sub_22FFB0F88();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FF06A98()
{
  result = sub_22FFB0F88();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22FF06B3C()
{
  sub_22FF07220(319, &qword_28148F158);
  if (v0 <= 0x3F)
  {
    sub_22FFB0F88();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FF06C1C()
{
  sub_22FFB0F88();
  if (v0 <= 0x3F)
  {
    sub_22FF06D40(319, qword_281490E80, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FF06D40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_22FF06DCC()
{
  sub_22FFB0F88();
  if (v0 <= 0x3F)
  {
    sub_22FF06D40(319, qword_28148F448, type metadata accessor for LogEntry, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22FF06D40(319, qword_281490C50, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22FF06EF0()
{
  result = sub_22FFB0F88();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22FF06F9C()
{
  sub_22FF07220(319, &qword_27DAF2578);
  if (v0 <= 0x3F)
  {
    sub_22FF06D40(319, &qword_27DAF2580, type metadata accessor for PrivateCloudCompute_TransparencyLog_AssociatedAsset, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_22FFB0F88();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22FF070C0()
{
  result = sub_22FFB0F88();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22FF07164()
{
  sub_22FF07220(319, &qword_27DAF25A8);
  if (v0 <= 0x3F)
  {
    sub_22FFB0F88();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FF07220(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22FFB1738();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_69Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_70Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_22FF07404(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_22FF06D40(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    sub_22FFB0F88();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22FF074DC()
{
  result = sub_22FFB0F88();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22FF0757C()
{
  sub_22FF06D40(319, qword_281490998, type metadata accessor for SignedObject, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22FF06D40(319, qword_28148F448, type metadata accessor for LogEntry, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t Proto_AttestationBundle.keyExpiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v8 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEBF3A4(v7 + v8, v6, &qword_27DAF1520, &qword_22FFB3A30);
  v9 = sub_22FFB0EE8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v6, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v6, v9);
  }

  sub_22FFB0ED8();
  result = (v11)(v6, 1, v9);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF1520, &qword_22FFB3A30);
  }

  return result;
}

uint64_t Proto_AppData.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D38, &qword_22FFB4270);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Proto_AppData(0);
  sub_22FEBF3A4(v1 + *(v7 + 32), v6, &qword_27DAF1D38, &qword_22FFB4270);
  v8 = sub_22FFB0F18();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_22FFB0F08();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF1D38, &qword_22FFB4270);
  }

  return result;
}

uint64_t Proto_AttestationBundle.provisioningCertificateChain.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v2 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_22FF07B30(void *a1)
{
  v2 = *(v1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20)) + *a1;
  swift_beginAccess();
  v3 = *v2;
  sub_22FEA5608(*v2, *(v2 + 8));
  return v3;
}

uint64_t Proto_AttestationBundle.apTicket.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 32);
  sub_22FEA5608(v2, *(v1 + 40));
  return v2;
}

uint64_t Proto_AttestationBundle.localPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2050, &unk_22FFB7C50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v8 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
  swift_beginAccess();
  sub_22FEBF3A4(v7 + v8, v6, &qword_27DAF2050, &unk_22FFB7C50);
  v9 = type metadata accessor for Proto_LocalPolicy(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_22FF0B4A8(v6, a1, type metadata accessor for Proto_LocalPolicy);
  }

  *a1 = xmmword_22FFB33B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v11 = a1 + *(v9 + 24);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF2050, &unk_22FFB7C50);
  }

  return result;
}

uint64_t Proto_AttestationBundle.sepAttestation.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 16);
  sub_22FEA5608(v2, *(v1 + 24));
  return v2;
}

uint64_t Proto_TransparencyProofs.proofs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_TransparencyProofs(0) + 20);
  sub_22FEAEA34(v1 + v3, &qword_27DAF37C0, &unk_22FFB5C60);
  sub_22FF0B4A8(a1, v1 + v3, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  v4 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Proto_AppData.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_AppData(0) + 32);
  sub_22FEAEA34(v1 + v3, &qword_27DAF1D38, &qword_22FFB4270);
  v4 = sub_22FFB0F18();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

unint64_t Proto_HashAlg.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

unint64_t sub_22FF07FC8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_22FF07FF0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FF0800C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1CBB8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22FF08058@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a2 = v4;
  a2[1] = v5;
  return sub_22FEA5608(v4, v5);
}

uint64_t sub_22FF080B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  sub_22FEA5608(v3, v4);
  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = sub_22FF10520(v8);
    *(a2 + v5) = v8;
  }

  swift_beginAccess();
  v12 = v8[2];
  v13 = v8[3];
  v8[2] = v3;
  v8[3] = v4;
  return sub_22FEA55AC(v12, v13);
}

uint64_t Proto_AttestationBundle.sepAttestation.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_22FF10520(v9);
    *(v3 + v6) = v9;
  }

  swift_beginAccess();
  v13 = v9[2];
  v14 = v9[3];
  v9[2] = a1;
  v9[3] = a2;
  return sub_22FEA55AC(v13, v14);
}

void (*Proto_AttestationBundle.sepAttestation.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  *(v4 + 72) = v7;
  *(v4 + 80) = v8;
  sub_22FEA5608(v7, v8);
  return sub_22FF082B0;
}

void sub_22FF082B0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    sub_22FEA5608(*(*a1 + 72), v5);
    v7 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = *(v2 + 96);
      v11 = *(v2 + 88);
      v12 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      v9 = sub_22FF10520(v9);
      *(v11 + v10) = v9;
    }

    swift_beginAccess();
    v15 = v9[2];
    v16 = v9[3];
    v9[2] = v3;
    v9[3] = v5;
    sub_22FEA55AC(v15, v16);
    v17 = *(v2 + 72);
    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v21 = sub_22FF10520(v21);
      *(v23 + v22) = v21;
    }

    swift_beginAccess();
    v17 = v21[2];
    v18 = v21[3];
    v21[2] = v3;
    v21[3] = v5;
  }

  sub_22FEA55AC(v17, v18);

  free(v2);
}

uint64_t sub_22FF083E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  *a2 = v4;
  a2[1] = v5;
  return sub_22FEA5608(v4, v5);
}

uint64_t sub_22FF08440(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  sub_22FEA5608(v3, v4);
  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = sub_22FF10520(v8);
    *(a2 + v5) = v8;
  }

  swift_beginAccess();
  v12 = v8[4];
  v13 = v8[5];
  v8[4] = v3;
  v8[5] = v4;
  return sub_22FEA55AC(v12, v13);
}

uint64_t Proto_AttestationBundle.apTicket.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_22FF10520(v9);
    *(v3 + v6) = v9;
  }

  swift_beginAccess();
  v13 = v9[4];
  v14 = v9[5];
  v9[4] = a1;
  v9[5] = a2;
  return sub_22FEA55AC(v13, v14);
}

void (*Proto_AttestationBundle.apTicket.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  *(v4 + 72) = v7;
  *(v4 + 80) = v8;
  sub_22FEA5608(v7, v8);
  return sub_22FF0863C;
}

void sub_22FF0863C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    sub_22FEA5608(*(*a1 + 72), v5);
    v7 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = *(v2 + 96);
      v11 = *(v2 + 88);
      v12 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      v9 = sub_22FF10520(v9);
      *(v11 + v10) = v9;
    }

    swift_beginAccess();
    v15 = v9[4];
    v16 = v9[5];
    v9[4] = v3;
    v9[5] = v5;
    sub_22FEA55AC(v15, v16);
    v17 = *(v2 + 72);
    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v21 = sub_22FF10520(v21);
      *(v23 + v22) = v21;
    }

    swift_beginAccess();
    v17 = v21[4];
    v18 = v21[5];
    v21[4] = v3;
    v21[5] = v5;
  }

  sub_22FEA55AC(v17, v18);

  free(v2);
}

uint64_t Proto_AttestationBundle.sealedHashes.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v8 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  swift_beginAccess();
  sub_22FEBF3A4(v7 + v8, v6, &qword_27DAF26E8, &qword_22FFB7C60);
  v9 = type metadata accessor for Proto_SealedHashLedger(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_22FF0B4A8(v6, a1, type metadata accessor for Proto_SealedHashLedger);
  }

  *a1 = sub_22FFA6E68(MEMORY[0x277D84F90]);
  v11 = a1 + *(v9 + 20);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF26E8, &qword_22FFB7C60);
  }

  return result;
}

uint64_t sub_22FF088FC@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = *(a1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v9 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  swift_beginAccess();
  sub_22FEBF3A4(v8 + v9, v7, &qword_27DAF26E8, &qword_22FFB7C60);
  v10 = type metadata accessor for Proto_SealedHashLedger(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_22FF0B4A8(v7, a2, type metadata accessor for Proto_SealedHashLedger);
  }

  *a2 = sub_22FFA6E68(MEMORY[0x277D84F90]);
  v12 = a2 + *(v10 + 20);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF26E8, &qword_22FFB7C60);
  }

  return result;
}

uint64_t sub_22FF08A8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Proto_SealedHashLedger(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF1C994(a1, v12, type metadata accessor for Proto_SealedHashLedger);
  v13 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_22FF10520(v16);
    *(a2 + v13) = v16;
  }

  sub_22FF0B4A8(v12, v7, type metadata accessor for Proto_SealedHashLedger);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  swift_beginAccess();
  sub_22FEFF0DC(v7, v16 + v20, &qword_27DAF26E8, &qword_22FFB7C60);
  return swift_endAccess();
}

uint64_t Proto_AttestationBundle.sealedHashes.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_22FF10520(v11);
    *(v2 + v8) = v11;
  }

  sub_22FF0B4A8(a1, v7, type metadata accessor for Proto_SealedHashLedger);
  v15 = type metadata accessor for Proto_SealedHashLedger(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  swift_beginAccess();
  sub_22FEFF0DC(v7, v11 + v16, &qword_27DAF26E8, &qword_22FFB7C60);
  return swift_endAccess();
}

uint64_t Proto_SealedHashLedger.init()@<X0>(unint64_t *a1@<X8>)
{
  *a1 = sub_22FFA6E68(MEMORY[0x277D84F90]);
  v2 = a1 + *(type metadata accessor for Proto_SealedHashLedger(0) + 20);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

void (*Proto_AttestationBundle.sealedHashes.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_SealedHashLedger(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  swift_beginAccess();
  sub_22FEBF3A4(v16 + v17, v8, &qword_27DAF26E8, &qword_22FFB7C60);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = sub_22FFA6E68(MEMORY[0x277D84F90]);
    v19 = v14 + *(v9 + 20);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF26E8, &qword_22FFB7C60);
    }
  }

  else
  {
    sub_22FF0B4A8(v8, v14, type metadata accessor for Proto_SealedHashLedger);
  }

  return sub_22FF09090;
}

void sub_22FF09090(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22FF1C994(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_SealedHashLedger);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_22FF10520(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22FF0B4A8(v14, v18, type metadata accessor for Proto_SealedHashLedger);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
    swift_beginAccess();
    sub_22FEFF0DC(v18, v7 + v19, &qword_27DAF26E8, &qword_22FFB7C60);
    swift_endAccess();
    sub_22FF1C9FC(v13, type metadata accessor for Proto_SealedHashLedger);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_22FF10520(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22FF0B4A8(v13, v18, type metadata accessor for Proto_SealedHashLedger);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
    swift_beginAccess();
    sub_22FEFF0DC(v18, v23 + v31, &qword_27DAF26E8, &qword_22FFB7C60);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t sub_22FF09340@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v4 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22FF093AC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);

  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_22FF10520(v7);
    *(a2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
  swift_beginAccess();
  v12 = *(v7 + v11);
  *(v7 + v11) = v3;
}

uint64_t Proto_AttestationBundle.provisioningCertificateChain.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_22FF10520(v7);
    *(v2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
  swift_beginAccess();
  v12 = *(v7 + v11);
  *(v7 + v11) = a1;
}

void (*Proto_AttestationBundle.provisioningCertificateChain.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_22FF095AC;
}

void sub_22FF095AC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  if (a2)
  {
    v7 = *(*a1 + 72);

    v8 = *(v6 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 88);
      v12 = *(v2 + 80);
      v13 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = sub_22FF10520(v10);
      *(v12 + v11) = v10;
    }

    v16 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
    swift_beginAccess();
    v17 = *(v10 + v16);
    *(v10 + v16) = v3;

    v18 = *v4;
  }

  else
  {
    v19 = *(v6 + v5);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v5);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 88);
      v23 = *(v2 + 80);
      v24 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v21 = sub_22FF10520(v21);
      *(v23 + v22) = v21;
    }

    v27 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
    swift_beginAccess();
    v28 = *(v21 + v27);
    *(v21 + v27) = v3;
  }

  free(v2);
}

void (*Proto_AttestationBundle.appData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v8;
  sub_22FEA5608(v7, v8);
  return sub_22FF0979C;
}

uint64_t sub_22FF097A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = *(a1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v9 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEBF3A4(v8 + v9, v7, &qword_27DAF1520, &qword_22FFB3A30);
  v10 = sub_22FFB0EE8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v7, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v7, v10);
  }

  sub_22FFB0ED8();
  result = (v12)(v7, 1, v10);
  if (result != 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF1520, &qword_22FFB3A30);
  }

  return result;
}

uint64_t sub_22FF09934(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_22FFB0EE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  v13 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_22FF10520(v16);
    *(a2 + v13) = v16;
  }

  (*(v9 + 32))(v7, v12, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEFF0DC(v7, v16 + v20, &qword_27DAF1520, &qword_22FFB3A30);
  return swift_endAccess();
}

uint64_t Proto_AttestationBundle.keyExpiration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_22FF10520(v11);
    *(v2 + v8) = v11;
  }

  v15 = sub_22FFB0EE8();
  v16 = *(v15 - 8);
  (*(v16 + 32))(v7, a1, v15);
  (*(v16 + 56))(v7, 0, 1, v15);
  v17 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEFF0DC(v7, v11 + v17, &qword_27DAF1520, &qword_22FFB3A30);
  return swift_endAccess();
}

void (*Proto_AttestationBundle.keyExpiration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = sub_22FFB0EE8();
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEBF3A4(v16 + v17, v8, &qword_27DAF1520, &qword_22FFB3A30);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    sub_22FFB0ED8();
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF1520, &qword_22FFB3A30);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_22FF09F0C;
}

void sub_22FF09F0C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    (*(*(v2 + 104) + 16))(*(v2 + 112), *(v2 + 120), *(v2 + 96));
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_22FF10520(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    (*(v16 + 32))(v18, v14, v15);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
    swift_beginAccess();
    sub_22FEFF0DC(v18, v7 + v19, &qword_27DAF1520, &qword_22FFB3A30);
    swift_endAccess();
    (*(v16 + 8))(v13, v15);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_22FF10520(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    (*(v30 + 32))(v18, v13, v29);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
    swift_beginAccess();
    sub_22FEFF0DC(v18, v23 + v31, &qword_27DAF1520, &qword_22FFB3A30);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL sub_22FF0A190(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = *(v4 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v14 = *a3;
  swift_beginAccess();
  sub_22FEBF3A4(v13 + v14, v12, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
  sub_22FEAEA34(v12, a1, a2);
  return v16;
}

uint64_t sub_22FF0A2D8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - v12;
  v14 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v17 = sub_22FF10520(v17);
    *(v9 + v14) = v17;
  }

  v21 = a3(0);
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = *a4;
  swift_beginAccess();
  sub_22FEFF0DC(v13, v17 + v22, a1, a2);
  return swift_endAccess();
}

uint64_t Proto_AttestationBundle.transparencyProofs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v8 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  swift_beginAccess();
  sub_22FEBF3A4(v7 + v8, v6, &qword_27DAF2118, &unk_22FFB5C70);
  v9 = type metadata accessor for Proto_TransparencyProofs(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_22FF0B4A8(v6, a1, type metadata accessor for Proto_TransparencyProofs);
  }

  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF2118, &unk_22FFB5C70);
  }

  return result;
}

uint64_t sub_22FF0A5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = *(a1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v9 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  swift_beginAccess();
  sub_22FEBF3A4(v8 + v9, v7, &qword_27DAF2118, &unk_22FFB5C70);
  v10 = type metadata accessor for Proto_TransparencyProofs(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_22FF0B4A8(v7, a2, type metadata accessor for Proto_TransparencyProofs);
  }

  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v12 = *(v10 + 20);
  v13 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2118, &unk_22FFB5C70);
  }

  return result;
}

uint64_t sub_22FF0A7A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Proto_TransparencyProofs(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF1C994(a1, v12, type metadata accessor for Proto_TransparencyProofs);
  v13 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_22FF10520(v16);
    *(a2 + v13) = v16;
  }

  sub_22FF0B4A8(v12, v7, type metadata accessor for Proto_TransparencyProofs);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  swift_beginAccess();
  sub_22FEFF0DC(v7, v16 + v20, &qword_27DAF2118, &unk_22FFB5C70);
  return swift_endAccess();
}

uint64_t Proto_AttestationBundle.transparencyProofs.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_22FF10520(v11);
    *(v2 + v8) = v11;
  }

  sub_22FF0B4A8(a1, v7, type metadata accessor for Proto_TransparencyProofs);
  v15 = type metadata accessor for Proto_TransparencyProofs(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  swift_beginAccess();
  sub_22FEFF0DC(v7, v11 + v16, &qword_27DAF2118, &unk_22FFB5C70);
  return swift_endAccess();
}

uint64_t Proto_TransparencyProofs.init()@<X0>(uint64_t a1@<X8>)
{
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v2 = *(type metadata accessor for Proto_TransparencyProofs(0) + 20);
  v3 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

void (*Proto_AttestationBundle.transparencyProofs.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_TransparencyProofs(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  swift_beginAccess();
  sub_22FEBF3A4(v16 + v17, v8, &qword_27DAF2118, &unk_22FFB5C70);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v19 = *(v9 + 20);
    v20 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2118, &unk_22FFB5C70);
    }
  }

  else
  {
    sub_22FF0B4A8(v8, v14, type metadata accessor for Proto_TransparencyProofs);
  }

  return sub_22FF0AE0C;
}

void sub_22FF0AE0C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22FF1C994(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_TransparencyProofs);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_22FF10520(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22FF0B4A8(v14, v18, type metadata accessor for Proto_TransparencyProofs);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
    swift_beginAccess();
    sub_22FEFF0DC(v18, v7 + v19, &qword_27DAF2118, &unk_22FFB5C70);
    swift_endAccess();
    sub_22FF1C9FC(v13, type metadata accessor for Proto_TransparencyProofs);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_22FF10520(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22FF0B4A8(v13, v18, type metadata accessor for Proto_TransparencyProofs);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
    swift_beginAccess();
    sub_22FEFF0DC(v18, v23 + v31, &qword_27DAF2118, &unk_22FFB5C70);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t sub_22FF0B0BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2050, &unk_22FFB7C50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Proto_LocalPolicy(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF1C994(a1, v12, type metadata accessor for Proto_LocalPolicy);
  v13 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_22FF10520(v16);
    *(a2 + v13) = v16;
  }

  sub_22FF0B4A8(v12, v7, type metadata accessor for Proto_LocalPolicy);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
  swift_beginAccess();
  sub_22FEFF0DC(v7, v16 + v20, &qword_27DAF2050, &unk_22FFB7C50);
  return swift_endAccess();
}

uint64_t Proto_AttestationBundle.localPolicy.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2050, &unk_22FFB7C50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_22FF10520(v11);
    *(v2 + v8) = v11;
  }

  sub_22FF0B4A8(a1, v7, type metadata accessor for Proto_LocalPolicy);
  v15 = type metadata accessor for Proto_LocalPolicy(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
  swift_beginAccess();
  sub_22FEFF0DC(v7, v11 + v16, &qword_27DAF2050, &unk_22FFB7C50);
  return swift_endAccess();
}

uint64_t Proto_LocalPolicy.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_22FFB33B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v1 = a1 + *(type metadata accessor for Proto_LocalPolicy(0) + 24);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF0B4A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*Proto_AttestationBundle.localPolicy.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2050, &unk_22FFB7C50) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_LocalPolicy(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
  swift_beginAccess();
  sub_22FEBF3A4(v16 + v17, v8, &qword_27DAF2050, &unk_22FFB7C50);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = xmmword_22FFB33B0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v19 = v14 + *(v9 + 24);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2050, &unk_22FFB7C50);
    }
  }

  else
  {
    sub_22FF0B4A8(v8, v14, type metadata accessor for Proto_LocalPolicy);
  }

  return sub_22FF0B798;
}

void sub_22FF0B798(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22FF1C994(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_LocalPolicy);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_22FF10520(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22FF0B4A8(v14, v18, type metadata accessor for Proto_LocalPolicy);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
    swift_beginAccess();
    sub_22FEFF0DC(v18, v7 + v19, &qword_27DAF2050, &unk_22FFB7C50);
    swift_endAccess();
    sub_22FF1C9FC(v13, type metadata accessor for Proto_LocalPolicy);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_22FF10520(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_22FF0B4A8(v13, v18, type metadata accessor for Proto_LocalPolicy);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
    swift_beginAccess();
    sub_22FEFF0DC(v18, v23 + v31, &qword_27DAF2050, &unk_22FFB7C50);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t sub_22FF0BA48@<X0>(uint64_t a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = (*(a1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20)) + *a2);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *a3 = *v4;
  a3[1] = v6;
  return sub_22FEA5608(v5, v6);
}

uint64_t sub_22FF0BAB8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  sub_22FEA5608(v7, v8);
  v10 = *(a2 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v12 = sub_22FF10520(v12);
    *(a2 + v9) = v12;
  }

  v16 = (v12 + *a5);
  swift_beginAccess();
  v17 = *v16;
  v18 = v16[1];
  *v16 = v7;
  v16[1] = v8;
  return sub_22FEA55AC(v17, v18);
}

uint64_t sub_22FF0BB80(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v8 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_22FF10520(v11);
    *(v5 + v8) = v11;
  }

  v15 = (v11 + *a3);
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  *v15 = a1;
  v15[1] = a2;
  return sub_22FEA55AC(v16, v17);
}

void (*Proto_AttestationBundle.sfrManifest.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v8;
  sub_22FEA5608(v7, v8);
  return sub_22FF0BCE4;
}

void sub_22FF0BCF0(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 88);
  if (a2)
  {
    sub_22FEA5608(*(*a1 + 72), v7);
    v9 = *(v8 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v4 + 96);
      v13 = *(v4 + 88);
      v14 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v11 = sub_22FF10520(v11);
      *(v13 + v12) = v11;
    }

    v17 = (v11 + *a3);
    swift_beginAccess();
    v18 = *v17;
    v19 = v17[1];
    *v17 = v5;
    v17[1] = v7;
    sub_22FEA55AC(v18, v19);
    v20 = *(v4 + 72);
    v21 = *(v4 + 80);
  }

  else
  {
    v22 = *(v8 + v6);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v8 + v6);
    if ((v23 & 1) == 0)
    {
      v25 = *(v4 + 96);
      v26 = *(v4 + 88);
      v27 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v24 = sub_22FF10520(v24);
      *(v26 + v25) = v24;
    }

    v30 = (v24 + *a3);
    swift_beginAccess();
    v20 = *v30;
    v21 = v30[1];
    *v30 = v5;
    v30[1] = v7;
  }

  sub_22FEA55AC(v20, v21);

  free(v4);
}

uint64_t Proto_AttestationBundle.init()@<X0>(uint64_t a1@<X8>)
{
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v2 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  if (qword_2814912D0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_2814912D8;
}

uint64_t Proto_AppData.domain.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Proto_AppData.domain.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Proto_AppData.name.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Proto_AppData.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_22FF0C024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D38, &qword_22FFB4270);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Proto_AppData(0);
  sub_22FEBF3A4(a1 + *(v8 + 32), v7, &qword_27DAF1D38, &qword_22FFB4270);
  v9 = sub_22FFB0F18();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_22FFB0F08();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF1D38, &qword_22FFB4270);
  }

  return result;
}

uint64_t sub_22FF0C18C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFB0F18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *(type metadata accessor for Proto_AppData(0) + 32);
  sub_22FEAEA34(a2 + v9, &qword_27DAF1D38, &qword_22FFB4270);
  (*(v5 + 32))(a2 + v9, v8, v4);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Proto_AppData.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D38, &qword_22FFB4270) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_22FFB0F18();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_AppData(0) + 32);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF1D38, &qword_22FFB4270);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_22FFB0F08();
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF1D38, &qword_22FFB4270);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_22FF0C4CC;
}

void sub_22FF0C4CC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_22FEAEA34(v9 + v3, &qword_27DAF1D38, &qword_22FFB4270);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_22FEAEA34(v9 + v3, &qword_27DAF1D38, &qword_22FFB4270);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Proto_AppData.hasMetadata.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D38, &qword_22FFB4270);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Proto_AppData(0);
  sub_22FEBF3A4(v0 + *(v5 + 32), v4, &qword_27DAF1D38, &qword_22FFB4270);
  v6 = sub_22FFB0F18();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22FEAEA34(v4, &qword_27DAF1D38, &qword_22FFB4270);
  return v7;
}

Swift::Void __swiftcall Proto_AppData.clearMetadata()()
{
  v1 = *(type metadata accessor for Proto_AppData(0) + 32);
  sub_22FEAEA34(v0 + v1, &qword_27DAF1D38, &qword_22FFB4270);
  v2 = sub_22FFB0F18();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Proto_AppData.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  v2 = type metadata accessor for Proto_AppData(0);
  v3 = a1 + *(v2 + 28);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(v2 + 32);
  v5 = sub_22FFB0F18();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

void Proto_LocalPolicy.implementation.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Proto_LocalPolicy.implementation.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

unint64_t Proto_LocalPolicy.Implementation.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Proto_LocalPolicy.Implementation.rawValue.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_22FF0C9F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1CB64();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t Proto_SealedHashLedger.slots.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void Proto_SealedHash.hashAlg.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Proto_SealedHash.hashAlg.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Proto_SealedHash.entries.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_22FF0CBC0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF0CC5C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Proto_SealedHash.Entry.digest.getter()
{
  v1 = *(v0 + 8);
  sub_22FEA5608(v1, *(v0 + 16));
  return v1;
}

uint64_t Proto_SealedHash.Entry.digest.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Proto_SealedHash.Entry.generic.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = (&v9 - v3);
  v5 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(v0 + *(v5 + 24), v4, &qword_27DAF2130, &unk_22FFB5C80);
  v6 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_22FEAEA34(v4, &qword_27DAF2130, &unk_22FFB5C80);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      result = *v4;
      v8 = v4[1];
      return result;
    }

    sub_22FF1C9FC(v4, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  }

  return 0;
}

uint64_t sub_22FF0CFE4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v12 - v6);
  v8 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(a1 + *(v8 + 24), v7, &qword_27DAF2130, &unk_22FFB5C80);
  v9 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    result = sub_22FEAEA34(v7, &qword_27DAF2130, &unk_22FFB5C80);
  }

  else
  {
    result = swift_getEnumCaseMultiPayload();
    if (!result)
    {
      v11 = *v7;
      goto LABEL_6;
    }

    result = sub_22FF1C9FC(v7, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  }

  v11 = xmmword_22FFB33B0;
LABEL_6:
  *a2 = v11;
  return result;
}

uint64_t sub_22FF0D134(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for Proto_SealedHash.Entry(0) + 24));
  sub_22FEA5608(v2, v3);
  sub_22FEAEA34(v4, &qword_27DAF2130, &unk_22FFB5C80);
  *v4 = v2;
  v4[1] = v3;
  v5 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v4, 0, 1, v5);
}

uint64_t Proto_SealedHash.Entry.generic.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Proto_SealedHash.Entry(0) + 24));
  sub_22FEAEA34(v5, &qword_27DAF2130, &unk_22FFB5C80);
  *v5 = a1;
  v5[1] = a2;
  v6 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v5, 0, 1, v6);
}

void (*Proto_SealedHash.Entry.generic.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 24) = v7;
  v9 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
  *(v5 + 48) = v9;
  sub_22FEBF3A4(v1 + v9, v8, &qword_27DAF2130, &unk_22FFB5C80);
  v10 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  *(v5 + 32) = v10;
  v11 = *(v10 - 8);
  *(v5 + 40) = v11;
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_22FEAEA34(v8, &qword_27DAF2130, &unk_22FFB5C80);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v12 = *v8;
      goto LABEL_12;
    }

    sub_22FF1C9FC(v8, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  }

  v12 = xmmword_22FFB33B0;
LABEL_12:
  *v5 = v12;
  return sub_22FF0D44C;
}

void sub_22FF0D44C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = *(*a1 + 12);
  v8 = (*a1)[3];
  v9 = ((*a1)[2] + v7);
  if (a2)
  {
    sub_22FEA5608(**a1, v3);
    sub_22FEAEA34(v9, &qword_27DAF2130, &unk_22FFB5C80);
    *v9 = v4;
    v9[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v9, 0, 1, v5);
    sub_22FEA55AC(*v2, v2[1]);
  }

  else
  {
    sub_22FEAEA34((*a1)[2] + v7, &qword_27DAF2130, &unk_22FFB5C80);
    *v9 = v4;
    v9[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v9, 0, 1, v5);
  }

  free(v8);

  free(v2);
}

uint64_t Proto_SealedHash.Entry.cryptex.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(v1 + *(v7 + 24), v6, &qword_27DAF2130, &unk_22FFB5C80);
  v8 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_22FEAEA34(v6, &qword_27DAF2130, &unk_22FFB5C80);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_22FF0B4A8(v6, a1, type metadata accessor for Proto_Cryptex);
    }

    sub_22FF1C9FC(v6, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  }

  *a1 = xmmword_22FFB33B0;
  v10 = a1 + *(type metadata accessor for Proto_Cryptex(0) + 20);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF0D6E8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(a1 + *(v8 + 24), v7, &qword_27DAF2130, &unk_22FFB5C80);
  v9 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_22FEAEA34(v7, &qword_27DAF2130, &unk_22FFB5C80);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_22FF0B4A8(v7, a2, type metadata accessor for Proto_Cryptex);
    }

    sub_22FF1C9FC(v7, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  }

  *a2 = xmmword_22FFB33B0;
  v11 = a2 + *(type metadata accessor for Proto_Cryptex(0) + 20);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t Proto_Cryptex.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_22FFB33B0;
  v1 = a1 + *(type metadata accessor for Proto_Cryptex(0) + 20);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

void (*Proto_SealedHash.Entry.cryptex.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_Cryptex(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
  *(v5 + 12) = v13;
  sub_22FEBF3A4(v1 + v13, v8, &qword_27DAF2130, &unk_22FFB5C80);
  v14 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_22FEAEA34(v8, &qword_27DAF2130, &unk_22FFB5C80);
LABEL_15:
    *v12 = xmmword_22FFB33B0;
    v16 = v12 + *(v9 + 20);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    return sub_22FF0DB00;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22FF1C9FC(v8, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    goto LABEL_15;
  }

  sub_22FF0B4A8(v8, v12, type metadata accessor for Proto_Cryptex);
  return sub_22FF0DB00;
}

uint64_t Proto_SealedHash.Entry.cryptexSalt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(v1 + *(v7 + 24), v6, &qword_27DAF2130, &unk_22FFB5C80);
  v8 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_22FEAEA34(v6, &qword_27DAF2130, &unk_22FFB5C80);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_22FF0B4A8(v6, a1, type metadata accessor for Proto_Cryptex.Salt);
    }

    sub_22FF1C9FC(v6, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  }

  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF0DCAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(a1 + *(v8 + 24), v7, &qword_27DAF2130, &unk_22FFB5C80);
  v9 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_22FEAEA34(v7, &qword_27DAF2130, &unk_22FFB5C80);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_22FF0B4A8(v7, a2, type metadata accessor for Proto_Cryptex.Salt);
    }

    sub_22FF1C9FC(v7, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  }

  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

void (*Proto_SealedHash.Entry.cryptexSalt.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Proto_Cryptex.Salt(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  v12 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
  *(v5 + 12) = v12;
  sub_22FEBF3A4(v1 + v12, v8, &qword_27DAF2130, &unk_22FFB5C80);
  v13 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_22FEAEA34(v8, &qword_27DAF2130, &unk_22FFB5C80);
LABEL_15:
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    return sub_22FF0E050;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_22FF1C9FC(v8, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    goto LABEL_15;
  }

  sub_22FF0B4A8(v8, v11, type metadata accessor for Proto_Cryptex.Salt);
  return sub_22FF0E050;
}

uint64_t Proto_SealedHash.Entry.secureConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(v1 + *(v7 + 24), v6, &qword_27DAF2130, &unk_22FFB5C80);
  v8 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_22FEAEA34(v6, &qword_27DAF2130, &unk_22FFB5C80);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_22FF0B4A8(v6, a1, type metadata accessor for Proto_SecureConfig);
    }

    sub_22FF1C9FC(v6, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  }

  v11 = xmmword_22FFB33B0;
  *a1 = xmmword_22FFB33B0;
  *(a1 + 16) = sub_22FFA7A88(MEMORY[0x277D84F90]);
  *(a1 + 24) = v11;
  v10 = a1 + *(type metadata accessor for Proto_SecureConfig(0) + 28);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF0E234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = a5(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v18 - v13;
  sub_22FF1C994(a1, &v18 - v13, a6);
  v15 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
  sub_22FEAEA34(a2 + v15, &qword_27DAF2130, &unk_22FFB5C80);
  sub_22FF0B4A8(v14, a2 + v15, a7);
  v16 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v16 - 8) + 56))(a2 + v15, 0, 1, v16);
}

uint64_t sub_22FF0E370(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
  sub_22FEAEA34(v2 + v5, &qword_27DAF2130, &unk_22FFB5C80);
  sub_22FF0B4A8(a1, v2 + v5, a2);
  v6 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v2 + v5, 0, 1, v6);
}

uint64_t Proto_SecureConfig.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_22FFB33B0;
  *(a1 + 16) = sub_22FFA7A88(MEMORY[0x277D84F90]);
  *(a1 + 24) = xmmword_22FFB33B0;
  v2 = a1 + *(type metadata accessor for Proto_SecureConfig(0) + 28);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

void (*Proto_SealedHash.Entry.secureConfig.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_SecureConfig(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
  *(v5 + 12) = v13;
  sub_22FEBF3A4(v1 + v13, v8, &qword_27DAF2130, &unk_22FFB5C80);
  v14 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_22FEAEA34(v8, &qword_27DAF2130, &unk_22FFB5C80);
LABEL_15:
    *v12 = xmmword_22FFB33B0;
    *(v12 + 16) = sub_22FFA7A88(MEMORY[0x277D84F90]);
    *(v12 + 24) = xmmword_22FFB33B0;
    v16 = v12 + *(v9 + 28);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    return sub_22FF0E6FC;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_22FF1C9FC(v8, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    goto LABEL_15;
  }

  sub_22FF0B4A8(v8, v12, type metadata accessor for Proto_SecureConfig);
  return sub_22FF0E6FC;
}

void sub_22FF0E740(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = *(*a1 + 12);
  v11 = (*a1)[2];
  v12 = (*a1)[3];
  v13 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_22FF1C994(v12, v11, a5);
    sub_22FEAEA34(v13 + v10, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FF0B4A8(v11, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
    sub_22FF1C9FC(v12, a6);
  }

  else
  {
    sub_22FEAEA34(v13 + v10, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FF0B4A8(v12, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
  }

  free(v12);
  free(v11);
  free(v15);

  free(v7);
}

uint64_t Proto_SealedHash.Entry.metadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_SealedHash.Entry(0) + 28));
}

uint64_t Proto_SealedHash.Entry.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Proto_SealedHash.Entry.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 32);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Proto_SealedHash.Entry.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 32);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Proto_Cryptex.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Proto_Cryptex(0) + 20);
  sub_22FFB0F88();
  sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t static Proto_Cryptex.Salt.== infix(_:_:)()
{
  sub_22FFB0F88();
  sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t Proto_SealedHash.Entry.Flags.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 2;
  if (result == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  if (result == 4)
  {
    v4 = 1;
  }

  else
  {
    v2 = v3;
    v4 = result == 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  if (result)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  *(a2 + 8) = v5;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FF0EC48@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 2;
  v3 = result == 0;
  if (result == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = result;
  }

  if (result == 2)
  {
    v3 = 1;
  }

  if (result != 4)
  {
    v2 = v4;
  }

  *a2 = v2;
  if (result == 4)
  {
    v3 = 1;
  }

  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t *sub_22FF0ECA8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result == 0;
  if (*result == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = *result;
  }

  if (v2 == 2)
  {
    v3 = 1;
  }

  v5 = v2 == 4;
  if (v2 == 4)
  {
    v6 = 2;
  }

  else
  {
    v6 = v4;
  }

  *a2 = v6;
  v7 = v5 || v3;
  *(a2 + 8) = v7;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FF0ED00(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1E6C8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t Proto_SealedHash.Entry.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_22FFB33B0;
  v2 = type metadata accessor for Proto_SealedHash.Entry(0);
  v3 = v2[6];
  v4 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[7];
  *(a1 + v5) = sub_22FFA6D50(MEMORY[0x277D84F90]);
  v6 = a1 + v2[8];
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t Proto_SealedHash.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Proto_SealedHash(0) + 24);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t Proto_Cryptex.image4Manifest.getter()
{
  v1 = *v0;
  sub_22FEA5608(*v0, *(v0 + 8));
  return v1;
}

uint64_t Proto_Cryptex.image4Manifest.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_22FF0EF08@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF0EFA4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Proto_SecureConfig.data.getter()
{
  v1 = *(v0 + 24);
  sub_22FEA5608(v1, *(v0 + 32));
  return v1;
}

uint64_t Proto_SecureConfig.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_22FF0F170@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF0F20C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Proto_TransparencyProofs.proofs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Proto_TransparencyProofs(0);
  sub_22FEBF3A4(v1 + *(v7 + 20), v6, &qword_27DAF37C0, &unk_22FFB5C60);
  v8 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22FF0B4A8(v6, a1, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  }

  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for LogEntry(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = *(v8 + 24);
  v13 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF37C0, &unk_22FFB5C60);
  }

  return result;
}

uint64_t sub_22FF0F4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Proto_TransparencyProofs(0);
  sub_22FEBF3A4(a1 + *(v8 + 20), v7, &qword_27DAF37C0, &unk_22FFB5C60);
  v9 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22FF0B4A8(v7, a2, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  }

  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for LogEntry(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = *(v9 + 24);
  v14 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF37C0, &unk_22FFB5C60);
  }

  return result;
}

uint64_t sub_22FF0F690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF1C994(a1, v8, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  v9 = *(type metadata accessor for Proto_TransparencyProofs(0) + 20);
  sub_22FEAEA34(a2 + v9, &qword_27DAF37C0, &unk_22FFB5C60);
  sub_22FF0B4A8(v8, a2 + v9, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Proto_TransparencyProofs.proofs.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_TransparencyProofs(0) + 20);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF37C0, &unk_22FFB5C60);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for LogEntry(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v9 + 24);
    v20 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF37C0, &unk_22FFB5C60);
    }
  }

  else
  {
    sub_22FF0B4A8(v8, v14, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  }

  return sub_22FF0FA58;
}

void sub_22FF0FA58(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22FF1C994((*a1)[5], v4, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    sub_22FEAEA34(v9 + v3, &qword_27DAF37C0, &unk_22FFB5C60);
    sub_22FF0B4A8(v4, v9 + v3, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22FF1C9FC(v5, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  }

  else
  {
    sub_22FEAEA34(v9 + v3, &qword_27DAF37C0, &unk_22FFB5C60);
    sub_22FF0B4A8(v5, v9 + v3, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Proto_TransparencyProofs.hasProofs.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Proto_TransparencyProofs(0);
  sub_22FEBF3A4(v0 + *(v5 + 20), v4, &qword_27DAF37C0, &unk_22FFB5C60);
  v6 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22FEAEA34(v4, &qword_27DAF37C0, &unk_22FFB5C60);
  return v7;
}

Swift::Void __swiftcall Proto_TransparencyProofs.clearProofs()()
{
  v1 = *(type metadata accessor for Proto_TransparencyProofs(0) + 20);
  sub_22FEAEA34(v0 + v1, &qword_27DAF37C0, &unk_22FFB5C60);
  v2 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_22FF0FD60()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_2814904A0);
  __swift_project_value_buffer(v0, qword_2814904A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "HASH_ALG_UNKNOWN";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "HASH_ALG_SHA256";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "HASH_ALG_SHA384";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF0FFD0()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_2814910D0);
  __swift_project_value_buffer(v0, qword_2814910D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22FFB7C30;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "sep_attestation";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_22FFB1298();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "ap_ticket";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "sealed_hashes";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "provisioning_certificate_chain";
  *(v13 + 1) = 30;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "app_data";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "key_expiration";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "transparency_proofs";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "local_policy";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "sfr_manifest";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  return sub_22FFB12A8();
}

__n128 sub_22FF10378()
{
  v0 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22FFB33B0;
  *(v3 + 32) = xmmword_22FFB33B0;
  v4 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  v5 = type metadata accessor for Proto_SealedHashLedger(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData) = xmmword_22FFB33B0;
  v6 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  v7 = sub_22FFB0EE8();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  v9 = type metadata accessor for Proto_TransparencyProofs(0);
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
  v11 = type metadata accessor for Proto_LocalPolicy(0);
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  result = xmmword_22FFB33B0;
  *(v3 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest) = xmmword_22FFB33B0;
  qword_2814912D8 = v3;
  return result;
}

uint64_t sub_22FF10520(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2050, &unk_22FFB7C50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v69 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v66 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v61 = &v60 - v14;
  v70 = xmmword_22FFB33B0;
  *(v1 + 16) = xmmword_22FFB33B0;
  *(v1 + 32) = xmmword_22FFB33B0;
  v15 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  v60 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  v16 = type metadata accessor for Proto_SealedHashLedger(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v62 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
  *(v1 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain) = MEMORY[0x277D84F90];
  v17 = (v1 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  *(v1 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData) = v70;
  v18 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  v63 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  v19 = sub_22FFB0EE8();
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  v64 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  v21 = type metadata accessor for Proto_TransparencyProofs(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
  v65 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
  v23 = type metadata accessor for Proto_LocalPolicy(0);
  (*(*(v23 - 8) + 56))(v1 + v22, 1, 1, v23);
  v67 = (v1 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest);
  *(v1 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest) = v70;
  swift_beginAccess();
  v25 = a1[2];
  v24 = a1[3];
  swift_beginAccess();
  v26 = *(v1 + 16);
  v27 = *(v1 + 24);
  *(v1 + 16) = v25;
  *(v1 + 24) = v24;
  sub_22FEA5608(v25, v24);
  sub_22FEA55AC(v26, v27);
  swift_beginAccess();
  v28 = a1[4];
  v29 = a1[5];
  swift_beginAccess();
  v30 = *(v1 + 32);
  v31 = *(v1 + 40);
  *(v1 + 32) = v28;
  *(v1 + 40) = v29;
  sub_22FEA5608(v28, v29);
  sub_22FEA55AC(v30, v31);
  v32 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  swift_beginAccess();
  v33 = v61;
  sub_22FEBF3A4(a1 + v32, v61, &qword_27DAF26E8, &qword_22FFB7C60);
  v34 = v60;
  swift_beginAccess();
  sub_22FEFF0DC(v33, v1 + v34, &qword_27DAF26E8, &qword_22FFB7C60);
  swift_endAccess();
  v35 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
  swift_beginAccess();
  v36 = *(a1 + v35);
  v37 = v62;
  swift_beginAccess();
  v38 = *(v1 + v37);
  *(v1 + v37) = v36;

  v39 = (a1 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v41 = *v39;
  v40 = v39[1];
  swift_beginAccess();
  v42 = *v17;
  v43 = v17[1];
  *v17 = v41;
  v17[1] = v40;
  sub_22FEA5608(v41, v40);
  sub_22FEA55AC(v42, v43);
  v44 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  v45 = v66;
  sub_22FEBF3A4(a1 + v44, v66, &qword_27DAF1520, &qword_22FFB3A30);
  v46 = v63;
  swift_beginAccess();
  sub_22FEFF0DC(v45, v1 + v46, &qword_27DAF1520, &qword_22FFB3A30);
  swift_endAccess();
  v47 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  swift_beginAccess();
  v48 = v68;
  sub_22FEBF3A4(a1 + v47, v68, &qword_27DAF2118, &unk_22FFB5C70);
  v49 = v64;
  swift_beginAccess();
  sub_22FEFF0DC(v48, v1 + v49, &qword_27DAF2118, &unk_22FFB5C70);
  swift_endAccess();
  v50 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
  swift_beginAccess();
  v51 = v69;
  sub_22FEBF3A4(a1 + v50, v69, &qword_27DAF2050, &unk_22FFB7C50);
  v52 = v65;
  swift_beginAccess();
  sub_22FEFF0DC(v51, v1 + v52, &qword_27DAF2050, &unk_22FFB7C50);
  swift_endAccess();
  v53 = (a1 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest);
  swift_beginAccess();
  v55 = *v53;
  v54 = v53[1];
  sub_22FEA5608(v55, v54);

  v56 = v67;
  swift_beginAccess();
  v57 = *v56;
  v58 = v56[1];
  *v56 = v55;
  v56[1] = v54;
  sub_22FEA55AC(v57, v58);
  return v1;
}

uint64_t sub_22FF10BEC()
{
  sub_22FEA55AC(*(v0 + 16), *(v0 + 24));
  sub_22FEA55AC(*(v0 + 32), *(v0 + 40));
  sub_22FEAEA34(v0 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes, &qword_27DAF26E8, &qword_22FFB7C60);
  v1 = *(v0 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain);

  sub_22FEA55AC(*(v0 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData), *(v0 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData + 8));
  sub_22FEAEA34(v0 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration, &qword_27DAF1520, &qword_22FFB3A30);
  sub_22FEAEA34(v0 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs, &qword_27DAF2118, &unk_22FFB5C70);
  sub_22FEAEA34(v0 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy, &qword_27DAF2050, &unk_22FFB7C50);
  sub_22FEA55AC(*(v0 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest), *(v0 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest + 8));
  return v0;
}

uint64_t sub_22FF10CCC()
{
  v0 = *sub_22FF10BEC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Proto_AttestationBundle.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v11 = sub_22FF10520(v12);
    *(v4 + v8) = v11;
  }

  return sub_22FF10DC8(v11, a1, a2, a3);
}

uint64_t sub_22FF10DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22FFB1058();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          if (result == 3)
          {
            sub_22FF1109C();
          }

          else
          {
            sub_22FF11178();
          }
        }

        else if (result == 1)
        {
          sub_22FF10F94();
        }

        else if (result == 2)
        {
          sub_22FF11018();
        }
      }

      else if (result <= 7)
      {
        if (result == 5)
        {
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData;
LABEL_25:
          sub_22FF11498(v11, v12, v13, v14, v15);
          goto LABEL_5;
        }

        if (result == 6)
        {
          sub_22FF11204();
        }
      }

      else
      {
        if (result == 8)
        {
          sub_22FF112E0();
          goto LABEL_5;
        }

        if (result != 9)
        {
          if (result != 10)
          {
            goto LABEL_5;
          }

          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest;
          goto LABEL_25;
        }

        sub_22FF113BC();
      }

LABEL_5:
      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t sub_22FF10F94()
{
  swift_beginAccess();
  sub_22FFB10C8();
  return swift_endAccess();
}

uint64_t sub_22FF11018()
{
  swift_beginAccess();
  sub_22FFB10C8();
  return swift_endAccess();
}

uint64_t sub_22FF1109C()
{
  swift_beginAccess();
  type metadata accessor for Proto_SealedHashLedger(0);
  sub_22FF1CB1C(&qword_28148F980, type metadata accessor for Proto_SealedHashLedger);
  sub_22FFB1128();
  return swift_endAccess();
}

uint64_t sub_22FF11178()
{
  swift_beginAccess();
  sub_22FFB10A8();
  return swift_endAccess();
}

uint64_t sub_22FF11204()
{
  swift_beginAccess();
  sub_22FFB0EE8();
  sub_22FF1CB1C(&qword_28148F1E0, MEMORY[0x277D21570]);
  sub_22FFB1128();
  return swift_endAccess();
}

uint64_t sub_22FF112E0()
{
  swift_beginAccess();
  type metadata accessor for Proto_TransparencyProofs(0);
  sub_22FF1CB1C(&qword_28148F868, type metadata accessor for Proto_TransparencyProofs);
  sub_22FFB1128();
  return swift_endAccess();
}

uint64_t sub_22FF113BC()
{
  swift_beginAccess();
  type metadata accessor for Proto_LocalPolicy(0);
  sub_22FF1CB1C(&qword_27DAF27C0, type metadata accessor for Proto_LocalPolicy);
  sub_22FFB1128();
  return swift_endAccess();
}

uint64_t sub_22FF11498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  sub_22FFB10C8();
  return swift_endAccess();
}

uint64_t Proto_AttestationBundle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Proto_AttestationBundle(0);
  result = sub_22FF1158C(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF1158C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_10;
    }

    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
  }

  else
  {
    if (!v11)
    {
      if ((v10 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v12 = v9;
    v13 = v9 >> 32;
  }

  if (v12 == v13)
  {
    goto LABEL_10;
  }

LABEL_9:
  sub_22FEA5608(*(a1 + 16), *(a1 + 24));
  sub_22FFB1228();
  result = sub_22FEA55AC(v9, v10);
  if (v4)
  {
    return result;
  }

LABEL_10:
  swift_beginAccess();
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 != 2)
    {
      goto LABEL_19;
    }

    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
  }

  else
  {
    if (!v17)
    {
      if ((v16 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v18 = v15;
    v19 = v15 >> 32;
  }

  if (v18 == v19)
  {
    goto LABEL_19;
  }

LABEL_18:
  sub_22FEA5608(*(a1 + 32), *(a1 + 40));
  sub_22FFB1228();
  result = sub_22FEA55AC(v15, v16);
  if (v4)
  {
    return result;
  }

LABEL_19:
  result = sub_22FF1190C(a1, a2, a3, a4);
  if (v4)
  {
    return result;
  }

  v20 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
  swift_beginAccess();
  if (*(*(a1 + v20) + 16))
  {

    sub_22FFB1218();
  }

  v21 = (a1 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v22 = *v21;
  v23 = v21[1];
  v24 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    if (v24 != 2)
    {
      goto LABEL_32;
    }

    v25 = *(v22 + 16);
    v26 = *(v22 + 24);
LABEL_30:
    if (v25 == v26)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v24)
  {
    v25 = v22;
    v26 = v22 >> 32;
    goto LABEL_30;
  }

  if ((v23 & 0xFF000000000000) != 0)
  {
LABEL_31:
    sub_22FEA5608(v22, v23);
    sub_22FFB1228();
    sub_22FEA55AC(v22, v23);
  }

LABEL_32:
  sub_22FF11B34(a1, a2, a3, a4);
  sub_22FF11D5C(a1, a2, a3, a4);
  sub_22FF11F84(a1, a2, a3, a4);
  v27 = (a1 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest);
  result = swift_beginAccess();
  v28 = *v27;
  v29 = v27[1];
  v30 = v29 >> 62;
  if ((v29 >> 62) > 1)
  {
    if (v30 != 2)
    {
      return result;
    }

    v31 = *(v28 + 16);
    v32 = *(v28 + 24);
LABEL_39:
    if (v31 == v32)
    {
      return result;
    }

LABEL_40:
    sub_22FEA5608(v28, v29);
    sub_22FFB1228();
    return sub_22FEA55AC(v28, v29);
  }

  if (v30)
  {
    v31 = v28;
    v32 = v28 >> 32;
    goto LABEL_39;
  }

  if ((v29 & 0xFF000000000000) != 0)
  {
    goto LABEL_40;
  }

  return result;
}

uint64_t sub_22FF1190C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_SealedHashLedger(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v14, v8, &qword_27DAF26E8, &qword_22FFB7C60);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22FEAEA34(v8, &qword_27DAF26E8, &qword_22FFB7C60);
  }

  sub_22FF0B4A8(v8, v13, type metadata accessor for Proto_SealedHashLedger);
  sub_22FF1CB1C(&qword_28148F980, type metadata accessor for Proto_SealedHashLedger);
  sub_22FFB1288();
  return sub_22FF1C9FC(v13, type metadata accessor for Proto_SealedHashLedger);
}

uint64_t sub_22FF11B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = sub_22FFB0EE8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v14, v8, &qword_27DAF1520, &qword_22FFB3A30);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22FEAEA34(v8, &qword_27DAF1520, &qword_22FFB3A30);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_22FF1CB1C(&qword_28148F1E0, MEMORY[0x277D21570]);
  sub_22FFB1288();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_22FF11D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_TransparencyProofs(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v14, v8, &qword_27DAF2118, &unk_22FFB5C70);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22FEAEA34(v8, &qword_27DAF2118, &unk_22FFB5C70);
  }

  sub_22FF0B4A8(v8, v13, type metadata accessor for Proto_TransparencyProofs);
  sub_22FF1CB1C(&qword_28148F868, type metadata accessor for Proto_TransparencyProofs);
  sub_22FFB1288();
  return sub_22FF1C9FC(v13, type metadata accessor for Proto_TransparencyProofs);
}

uint64_t sub_22FF11F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2050, &unk_22FFB7C50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_LocalPolicy(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v14, v8, &qword_27DAF2050, &unk_22FFB7C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22FEAEA34(v8, &qword_27DAF2050, &unk_22FFB7C50);
  }

  sub_22FF0B4A8(v8, v13, type metadata accessor for Proto_LocalPolicy);
  sub_22FF1CB1C(&qword_27DAF27C0, type metadata accessor for Proto_LocalPolicy);
  sub_22FFB1288();
  return sub_22FF1C9FC(v13, type metadata accessor for Proto_LocalPolicy);
}

uint64_t sub_22FF121B0(void *a1, void *a2)
{
  v147 = type metadata accessor for Proto_LocalPolicy(0);
  v145 = *(v147 - 8);
  v4 = *(v145 + 64);
  MEMORY[0x28223BE20](v147);
  v141 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2868, &qword_22FFB90A8);
  v6 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v144);
  v146 = &v140 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2050, &unk_22FFB7C50);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v142 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v149 = &v140 - v12;
  v13 = type metadata accessor for Proto_TransparencyProofs(0);
  v152 = *(v13 - 8);
  v153 = v13;
  v14 = *(v152 + 64);
  MEMORY[0x28223BE20](v13);
  v143 = &v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2120, &qword_22FFB90B0);
  v16 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v154 = &v140 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v148 = &v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v158 = &v140 - v22;
  v157 = sub_22FFB0EE8();
  v160 = *(v157 - 8);
  v23 = *(v160 + 64);
  MEMORY[0x28223BE20](v157);
  v150 = &v140 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2870, &qword_22FFB90B8);
  v25 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155);
  v156 = &v140 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v165 = &v140 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v159 = &v140 - v31;
  v166 = type metadata accessor for Proto_SealedHashLedger(0);
  v163 = *(v166 - 8);
  v32 = *(v163 + 64);
  MEMORY[0x28223BE20](v166);
  v161 = &v140 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2878, &unk_22FFB90C0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v164 = &v140 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v162 = (&v140 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v39);
  v42 = &v140 - v41;
  swift_beginAccess();
  v44 = a1[2];
  v43 = a1[3];
  swift_beginAccess();
  v45 = a2[2];
  v46 = a2[3];

  sub_22FEA5608(v44, v43);
  sub_22FEA5608(v45, v46);
  v47 = sub_22FEC3DC8(v44, v43, v45, v46);
  sub_22FEA55AC(v45, v46);
  sub_22FEA55AC(v44, v43);
  if (v47)
  {
    swift_beginAccess();
    v48 = a1[4];
    v49 = a1[5];
    swift_beginAccess();
    v50 = a2[4];
    v51 = a2[5];
    sub_22FEA5608(v48, v49);
    sub_22FEA5608(v50, v51);
    v52 = sub_22FEC3DC8(v48, v49, v50, v51);
    sub_22FEA55AC(v50, v51);
    sub_22FEA55AC(v48, v49);
    if (v52)
    {
      v53 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
      swift_beginAccess();
      sub_22FEBF3A4(a1 + v53, v42, &qword_27DAF26E8, &qword_22FFB7C60);
      v54 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
      swift_beginAccess();
      v55 = *(v34 + 48);
      v56 = v164;
      sub_22FEBF3A4(v42, v164, &qword_27DAF26E8, &qword_22FFB7C60);
      sub_22FEBF3A4(a2 + v54, v56 + v55, &qword_27DAF26E8, &qword_22FFB7C60);
      v57 = *(v163 + 48);
      v58 = v166;
      v59 = a2;
      if (v57(v56, 1, v166) == 1)
      {
        sub_22FEAEA34(v42, &qword_27DAF26E8, &qword_22FFB7C60);
        v60 = v57(v56 + v55, 1, v58);
        v61 = v165;
        if (v60 == 1)
        {
          sub_22FEAEA34(v56, &qword_27DAF26E8, &qword_22FFB7C60);
          goto LABEL_6;
        }
      }

      else
      {
        v85 = v162;
        sub_22FEBF3A4(v56, v162, &qword_27DAF26E8, &qword_22FFB7C60);
        v86 = v57(v56 + v55, 1, v58);
        v61 = v165;
        if (v86 != 1)
        {
          v90 = v56 + v55;
          v91 = v161;
          sub_22FF0B4A8(v90, v161, type metadata accessor for Proto_SealedHashLedger);
          v92 = v56;
          if ((sub_22FF19A3C(*v85, *v91) & 1) == 0)
          {
            v95 = &qword_27DAF26E8;
            v96 = &qword_22FFB7C60;
            sub_22FEAEA34(v42, &qword_27DAF26E8, &qword_22FFB7C60);
            v97 = type metadata accessor for Proto_SealedHashLedger;
            v98 = v85;
LABEL_20:
            v99 = v97;
            sub_22FF1C9FC(v91, v97);
            sub_22FF1C9FC(v98, v99);
            v89 = v92;
            v87 = v95;
            v88 = v96;
            goto LABEL_39;
          }

          v93 = *(v166 + 20);
          sub_22FFB0F88();
          sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8]);
          v94 = sub_22FFB1478();
          sub_22FEAEA34(v42, &qword_27DAF26E8, &qword_22FFB7C60);
          sub_22FF1C9FC(v91, type metadata accessor for Proto_SealedHashLedger);
          sub_22FF1C9FC(v85, type metadata accessor for Proto_SealedHashLedger);
          sub_22FEAEA34(v92, &qword_27DAF26E8, &qword_22FFB7C60);
          if ((v94 & 1) == 0)
          {
            goto LABEL_18;
          }

LABEL_6:
          v62 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
          swift_beginAccess();
          v63 = *(a1 + v62);
          v64 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
          swift_beginAccess();
          v65 = *(v59 + v64);

          v66 = sub_22FEE7C00(v63, v65);

          if ((v66 & 1) == 0)
          {
            goto LABEL_18;
          }

          v67 = (a1 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
          swift_beginAccess();
          v69 = *v67;
          v68 = v67[1];
          v70 = (v59 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
          swift_beginAccess();
          v72 = *v70;
          v71 = v70[1];
          sub_22FEA5608(v69, v68);
          sub_22FEA5608(v72, v71);
          v73 = sub_22FEC3DC8(v69, v68, v72, v71);
          sub_22FEA55AC(v72, v71);
          sub_22FEA55AC(v69, v68);
          if ((v73 & 1) == 0)
          {
            goto LABEL_18;
          }

          v74 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
          swift_beginAccess();
          v75 = v159;
          sub_22FEBF3A4(a1 + v74, v159, &qword_27DAF1520, &qword_22FFB3A30);
          v76 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
          swift_beginAccess();
          v77 = v156;
          v78 = *(v155 + 48);
          sub_22FEBF3A4(v75, v156, &qword_27DAF1520, &qword_22FFB3A30);
          sub_22FEBF3A4(v59 + v76, v77 + v78, &qword_27DAF1520, &qword_22FFB3A30);
          v79 = *(v160 + 48);
          v80 = v157;
          if (v79(v77, 1, v157) == 1)
          {
            sub_22FEAEA34(v75, &qword_27DAF1520, &qword_22FFB3A30);
            v81 = v79(v77 + v78, 1, v80);
            v82 = v158;
            if (v81 == 1)
            {
              sub_22FEAEA34(v77, &qword_27DAF1520, &qword_22FFB3A30);
LABEL_25:
              v105 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
              swift_beginAccess();
              sub_22FEBF3A4(a1 + v105, v82, &qword_27DAF2118, &unk_22FFB5C70);
              v106 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
              swift_beginAccess();
              v107 = *(v151 + 48);
              v108 = v82;
              v109 = v82;
              v110 = v154;
              sub_22FEBF3A4(v108, v154, &qword_27DAF2118, &unk_22FFB5C70);
              sub_22FEBF3A4(v59 + v106, v110 + v107, &qword_27DAF2118, &unk_22FFB5C70);
              v111 = v153;
              v112 = *(v152 + 48);
              if (v112(v110, 1, v153) == 1)
              {
                sub_22FEAEA34(v109, &qword_27DAF2118, &unk_22FFB5C70);
                if (v112(v110 + v107, 1, v111) == 1)
                {
                  sub_22FEAEA34(v110, &qword_27DAF2118, &unk_22FFB5C70);
LABEL_32:
                  v117 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
                  swift_beginAccess();
                  v118 = v149;
                  sub_22FEBF3A4(a1 + v117, v149, &qword_27DAF2050, &unk_22FFB7C50);
                  v119 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
                  swift_beginAccess();
                  v120 = *(v144 + 48);
                  v121 = v146;
                  sub_22FEBF3A4(v118, v146, &qword_27DAF2050, &unk_22FFB7C50);
                  v122 = v59 + v119;
                  v92 = v121;
                  sub_22FEBF3A4(v122, v121 + v120, &qword_27DAF2050, &unk_22FFB7C50);
                  v123 = *(v145 + 48);
                  v124 = v121;
                  v125 = v147;
                  if (v123(v124, 1, v147) == 1)
                  {
                    sub_22FEAEA34(v118, &qword_27DAF2050, &unk_22FFB7C50);
                    if (v123(v92 + v120, 1, v125) == 1)
                    {
                      sub_22FEAEA34(v92, &qword_27DAF2050, &unk_22FFB7C50);
LABEL_35:
                      v126 = (a1 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest);
                      swift_beginAccess();
                      v127 = *v126;
                      v128 = v126[1];
                      v129 = (v59 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest);
                      swift_beginAccess();
                      v130 = *v129;
                      v131 = v129[1];
                      sub_22FEA5608(v127, v128);
                      sub_22FEA5608(v130, v131);
                      v83 = sub_22FEC3DC8(v127, v128, v130, v131);
                      sub_22FEA55AC(v130, v131);
                      sub_22FEA55AC(v127, v128);
                      goto LABEL_12;
                    }

                    goto LABEL_38;
                  }

                  v132 = v142;
                  sub_22FEBF3A4(v92, v142, &qword_27DAF2050, &unk_22FFB7C50);
                  if (v123(v92 + v120, 1, v125) == 1)
                  {
                    sub_22FEAEA34(v149, &qword_27DAF2050, &unk_22FFB7C50);
                    sub_22FF1C9FC(v132, type metadata accessor for Proto_LocalPolicy);
LABEL_38:
                    v87 = &qword_27DAF2868;
                    v88 = &qword_22FFB90A8;
                    v89 = v92;
                    goto LABEL_39;
                  }

                  v91 = v141;
                  sub_22FF0B4A8(v92 + v120, v141, type metadata accessor for Proto_LocalPolicy);
                  v133 = sub_22FEC3DC8(*v132, *(v132 + 8), *v91, *(v91 + 8));
                  v134 = v149;
                  if ((v133 & 1) == 0)
                  {
                    goto LABEL_46;
                  }

                  v135 = *(v132 + 16);
                  v136 = *(v91 + 16);
                  if (*(v132 + 24))
                  {
                    v135 = v135 != 0;
                  }

                  if (*(v91 + 24) == 1)
                  {
                    if (v136)
                    {
                      if (v135 != 1)
                      {
LABEL_46:
                        v95 = &qword_27DAF2050;
                        v98 = v132;
                        v96 = &unk_22FFB7C50;
                        sub_22FEAEA34(v149, &qword_27DAF2050, &unk_22FFB7C50);
                        v97 = type metadata accessor for Proto_LocalPolicy;
                        goto LABEL_20;
                      }
                    }

                    else if (v135)
                    {
                      goto LABEL_46;
                    }
                  }

                  else if (v135 != v136)
                  {
                    goto LABEL_46;
                  }

                  v137 = v132;
                  v138 = *(v147 + 24);
                  sub_22FFB0F88();
                  sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8]);
                  v139 = sub_22FFB1478();
                  sub_22FEAEA34(v134, &qword_27DAF2050, &unk_22FFB7C50);
                  sub_22FF1C9FC(v91, type metadata accessor for Proto_LocalPolicy);
                  sub_22FF1C9FC(v137, type metadata accessor for Proto_LocalPolicy);
                  sub_22FEAEA34(v92, &qword_27DAF2050, &unk_22FFB7C50);
                  if (v139)
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_18;
                }

LABEL_30:
                v87 = &qword_27DAF2120;
                v88 = &qword_22FFB90B0;
                v89 = v110;
                goto LABEL_39;
              }

              v113 = v148;
              sub_22FEBF3A4(v110, v148, &qword_27DAF2118, &unk_22FFB5C70);
              if (v112(v110 + v107, 1, v111) == 1)
              {
                sub_22FEAEA34(v158, &qword_27DAF2118, &unk_22FFB5C70);
                sub_22FF1C9FC(v113, type metadata accessor for Proto_TransparencyProofs);
                goto LABEL_30;
              }

              v114 = v110 + v107;
              v115 = v143;
              sub_22FF0B4A8(v114, v143, type metadata accessor for Proto_TransparencyProofs);
              v116 = _s16CloudAttestation24Proto_TransparencyProofsV2eeoiySbAC_ACtFZ_0(v113, v115);
              sub_22FF1C9FC(v115, type metadata accessor for Proto_TransparencyProofs);
              sub_22FEAEA34(v158, &qword_27DAF2118, &unk_22FFB5C70);
              sub_22FF1C9FC(v113, type metadata accessor for Proto_TransparencyProofs);
              sub_22FEAEA34(v110, &qword_27DAF2118, &unk_22FFB5C70);
              if (v116)
              {
                goto LABEL_32;
              }

LABEL_18:
              v83 = 0;
              goto LABEL_12;
            }
          }

          else
          {
            sub_22FEBF3A4(v77, v61, &qword_27DAF1520, &qword_22FFB3A30);
            v100 = v79(v77 + v78, 1, v80);
            v82 = v158;
            if (v100 != 1)
            {
              v101 = v160;
              v102 = v77 + v78;
              v103 = v150;
              (*(v160 + 32))(v150, v102, v80);
              sub_22FF1CB1C(&qword_27DAF2880, MEMORY[0x277D21570]);
              LODWORD(v166) = sub_22FFB1478();
              v104 = *(v101 + 8);
              v104(v103, v80);
              sub_22FEAEA34(v159, &qword_27DAF1520, &qword_22FFB3A30);
              v104(v61, v80);
              sub_22FEAEA34(v77, &qword_27DAF1520, &qword_22FFB3A30);
              if ((v166 & 1) == 0)
              {
                goto LABEL_18;
              }

              goto LABEL_25;
            }

            sub_22FEAEA34(v159, &qword_27DAF1520, &qword_22FFB3A30);
            (*(v160 + 8))(v61, v80);
          }

          v87 = &qword_27DAF2870;
          v88 = &qword_22FFB90B8;
          v89 = v77;
          goto LABEL_39;
        }

        sub_22FEAEA34(v42, &qword_27DAF26E8, &qword_22FFB7C60);
        sub_22FF1C9FC(v85, type metadata accessor for Proto_SealedHashLedger);
      }

      v87 = &qword_27DAF2878;
      v88 = &unk_22FFB90C0;
      v89 = v56;
LABEL_39:
      sub_22FEAEA34(v89, v87, v88);
      v83 = 0;
      goto LABEL_12;
    }
  }

  v83 = 0;
LABEL_12:

  return v83 & 1;
}

uint64_t sub_22FF13500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(a1 + 20);
  if (qword_2814912D0 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_2814912D8;
}

uint64_t sub_22FF135C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1CB1C(&qword_27DAF2858, type metadata accessor for Proto_AttestationBundle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF13664(uint64_t a1)
{
  v2 = sub_22FF1CB1C(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF136D0()
{
  sub_22FF1CB1C(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle);

  return sub_22FFB11A8();
}

uint64_t sub_22FF13774()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2650);
  __swift_project_value_buffer(v0, qword_27DAF2650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "domain";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "name";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "metadata";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t Proto_AppData.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22FFB1058();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_12;
      }

      if (result == 4)
      {
        sub_22FF13AB0();
      }
    }

    else if (result == 1)
    {
      sub_22FFB10F8();
    }

    else if (result == 2)
    {
LABEL_12:
      sub_22FFB10E8();
    }
  }
}

uint64_t sub_22FF13AB0()
{
  v0 = *(type metadata accessor for Proto_AppData(0) + 32);
  sub_22FFB0F18();
  sub_22FF1CB1C(&qword_28148F1D0, MEMORY[0x277D215C8]);
  return sub_22FFB1128();
}

uint64_t Proto_AppData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_22FFB1258(), !v4))
  {
    v9 = *(v3 + 16);
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v10 || (result = sub_22FFB1248(), !v4))
    {
      v11 = *(v3 + 32);
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = *(v3 + 24) & 0xFFFFFFFFFFFFLL;
      }

      if (!v12 || (result = sub_22FFB1248(), !v4))
      {
        result = sub_22FF13C60(v3, a1, a2, a3);
        if (!v4)
        {
          v13 = v3 + *(type metadata accessor for Proto_AppData(0) + 28);
          return sub_22FFB0F68();
        }
      }
    }
  }

  return result;
}

uint64_t sub_22FF13C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D38, &qword_22FFB4270);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = sub_22FFB0F18();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_AppData(0);
  sub_22FEBF3A4(a1 + *(v14 + 32), v8, &qword_27DAF1D38, &qword_22FFB4270);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22FEAEA34(v8, &qword_27DAF1D38, &qword_22FFB4270);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_22FF1CB1C(&qword_28148F1D0, MEMORY[0x277D215C8]);
  sub_22FFB1288();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_22FF13EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  v4 = a2 + *(a1 + 28);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v5 = *(a1 + 32);
  v6 = sub_22FFB0F18();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_22FF13FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1CB1C(&qword_27DAF2850, type metadata accessor for Proto_AppData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF1404C(uint64_t a1)
{
  v2 = sub_22FF1CB1C(qword_2814906B0, type metadata accessor for Proto_AppData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF140B8()
{
  sub_22FF1CB1C(qword_2814906B0, type metadata accessor for Proto_AppData);

  return sub_22FFB11A8();
}

uint64_t sub_22FF14154()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2668);
  __swift_project_value_buffer(v0, qword_27DAF2668);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "policy";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "implementation";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t Proto_LocalPolicy.decodeMessage<A>(decoder:)()
{
  result = sub_22FFB1058();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22FFB10C8();
      }

      else if (result == 2)
      {
        sub_22FF1CB64();
        sub_22FFB1098();
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t Proto_LocalPolicy.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_22FFB1228();
      if (v1)
      {
        return result;
      }

      goto LABEL_10;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 != v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!*(v0 + 16) || (v9 = *(v0 + 16), v10 = *(v0 + 24), sub_22FF1CB64(), result = sub_22FFB1208(), !v1))
  {
    v8 = v0 + *(type metadata accessor for Proto_LocalPolicy(0) + 24);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF14554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_22FFB33B0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v2 = a2 + *(a1 + 24);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF145D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1CB1C(&qword_27DAF2848, type metadata accessor for Proto_LocalPolicy);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF14678(uint64_t a1)
{
  v2 = sub_22FF1CB1C(&qword_27DAF27C0, type metadata accessor for Proto_LocalPolicy);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF146E4()
{
  sub_22FF1CB1C(&qword_27DAF27C0, type metadata accessor for Proto_LocalPolicy);

  return sub_22FFB11A8();
}

uint64_t sub_22FF14764()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2680);
  __swift_project_value_buffer(v0, qword_27DAF2680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "IMPLEMENTATION_UNKNOWN";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IMPLEMENTATION_EC384SHA384";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF14A00()
{
  sub_22FFB0F58();
  type metadata accessor for Proto_SealedHash(0);
  sub_22FF1CB1C(qword_28148FED0, type metadata accessor for Proto_SealedHash);
  sub_22FF1CB1C(&qword_28148FEC8, type metadata accessor for Proto_SealedHash);
  return sub_22FFB1038();
}

uint64_t Proto_SealedHashLedger.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (sub_22FFB0F58(), type metadata accessor for Proto_SealedHash(0), sub_22FF1CB1C(qword_28148FED0, type metadata accessor for Proto_SealedHash), sub_22FF1CB1C(&qword_28148FEC8, type metadata accessor for Proto_SealedHash), result = sub_22FFB11C8(), !v3))
  {
    v2 = v0 + *(type metadata accessor for Proto_SealedHashLedger(0) + 20);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t static Proto_SealedHashLedger.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_22FF19A3C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Proto_SealedHashLedger(0) + 20);
  sub_22FFB0F88();
  sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF14D28@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  *a2 = sub_22FFA6E68(MEMORY[0x277D84F90]);
  v4 = a2 + *(a1 + 20);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF14DB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1CB1C(&qword_27DAF2840, type metadata accessor for Proto_SealedHashLedger);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF14E54(uint64_t a1)
{
  v2 = sub_22FF1CB1C(&qword_28148F980, type metadata accessor for Proto_SealedHashLedger);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF14EC0()
{
  sub_22FF1CB1C(&qword_28148F980, type metadata accessor for Proto_SealedHashLedger);

  return sub_22FFB11A8();
}

uint64_t sub_22FF14F3C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_22FF19A3C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_22FFB0F88();
  sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF15000()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_281490060);
  __swift_project_value_buffer(v0, qword_281490060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "hash_alg";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entries";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  return sub_22FFB12A8();
}

uint64_t Proto_SealedHash.decodeMessage<A>(decoder:)()
{
  result = sub_22FFB1058();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22FF1CBB8();
        sub_22FFB1098();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_SealedHash.Entry(0);
        sub_22FF1CB1C(&qword_28148FF80, type metadata accessor for Proto_SealedHash.Entry);
        sub_22FFB1118();
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t Proto_SealedHash.traverse<A>(visitor:)()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), sub_22FF1CBB8(), result = sub_22FFB1208(), !v1))
  {
    if (!*(v0[2] + 16) || (type metadata accessor for Proto_SealedHash.Entry(0), sub_22FF1CB1C(&qword_28148FF80, type metadata accessor for Proto_SealedHash.Entry), result = sub_22FFB1278(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Proto_SealedHash(0) + 24);
      return sub_22FFB0F68();
    }
  }

  return result;
}

uint64_t sub_22FF154D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1CB1C(&qword_27DAF2838, type metadata accessor for Proto_SealedHash);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF15578(uint64_t a1)
{
  v2 = sub_22FF1CB1C(qword_28148FED0, type metadata accessor for Proto_SealedHash);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF155E4()
{
  sub_22FF1CB1C(qword_28148FED0, type metadata accessor for Proto_SealedHash);

  return sub_22FFB11A8();
}

uint64_t sub_22FF15664()
{
  result = MEMORY[0x23190DD10](0x7972746E452ELL, 0xE600000000000000);
  qword_27DAF2698 = 0xD000000000000010;
  unk_27DAF26A0 = 0x800000022FFCA5F0;
  return result;
}

uint64_t sub_22FF156F4()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_28148FF90);
  __swift_project_value_buffer(v0, qword_28148FF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22FFB7C40;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "flags";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22FFB1298();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "digest";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v21 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 7;
  *v10 = "generic";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v21 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "cryptex";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v7();
  v13 = (v21 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "cryptex_salt";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v15 = *MEMORY[0x277D21888];
  v7();
  v16 = (v21 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "secure_config";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "metadata";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v7();
  return sub_22FFB12A8();
}

uint64_t Proto_SealedHash.Entry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22FFB1058();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          sub_22FFB10D8();
          break;
        case 2:
          sub_22FFB10C8();
          break;
        case 3:
          sub_22FF15B70(v5, a1, a2, a3);
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_22FF16CC8();
      }

      else if (result == 7)
      {
        sub_22FF16D94(a1, v5);
      }
    }

    else if (result == 4)
    {
      sub_22FF16138(v5, a1, a2, a3);
    }

    else
    {
      sub_22FF16700(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_22FF15B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for Proto_Cryptex(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2888, &qword_22FFB90D8);
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
  v32 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
  v47 = a1;
  v45 = v32;
  sub_22FEBF3A4(a1 + v32, v14, &qword_27DAF2130, &unk_22FFB5C80);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_22FEAEA34(v14, &qword_27DAF2130, &unk_22FFB5C80);
    v34 = v15;
  }

  else
  {
    sub_22FF0B4A8(v14, v22, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    sub_22FF0B4A8(v22, v20, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22FEAEA34(v28, &qword_27DAF2888, &qword_22FFB90D8);
      v35 = v20;
      v36 = v49;
      sub_22FF0B4A8(v35, v49, type metadata accessor for Proto_Cryptex);
      sub_22FF0B4A8(v36, v28, type metadata accessor for Proto_Cryptex);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    sub_22FF1C9FC(v20, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  sub_22FF1CB1C(qword_281490550, type metadata accessor for Proto_Cryptex);
  v39 = v52;
  sub_22FFB1128();
  if (v39)
  {
    return sub_22FEAEA34(v28, &qword_27DAF2888, &qword_22FFB90D8);
  }

  sub_22FEBF3A4(v28, v38, &qword_27DAF2888, &qword_22FFB90D8);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    sub_22FEAEA34(v28, &qword_27DAF2888, &qword_22FFB90D8);
    return sub_22FEAEA34(v38, &qword_27DAF2888, &qword_22FFB90D8);
  }

  else
  {
    v41 = v48;
    sub_22FF0B4A8(v38, v48, type metadata accessor for Proto_Cryptex);
    if (v33 != 1)
    {
      sub_22FFB1068();
    }

    sub_22FEAEA34(v28, &qword_27DAF2888, &qword_22FFB90D8);
    v42 = v47;
    v43 = v45;
    sub_22FEAEA34(v47 + v45, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FF0B4A8(v41, v42 + v43, type metadata accessor for Proto_Cryptex);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t sub_22FF16138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for Proto_Cryptex.Salt(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2890, &qword_22FFB90E0);
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
  v32 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
  v47 = a1;
  v45 = v32;
  sub_22FEBF3A4(a1 + v32, v14, &qword_27DAF2130, &unk_22FFB5C80);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_22FEAEA34(v14, &qword_27DAF2130, &unk_22FFB5C80);
    v34 = v15;
  }

  else
  {
    sub_22FF0B4A8(v14, v22, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    sub_22FF0B4A8(v22, v20, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22FEAEA34(v28, &qword_27DAF2890, &qword_22FFB90E0);
      v35 = v20;
      v36 = v49;
      sub_22FF0B4A8(v35, v49, type metadata accessor for Proto_Cryptex.Salt);
      sub_22FF0B4A8(v36, v28, type metadata accessor for Proto_Cryptex.Salt);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    sub_22FF1C9FC(v20, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  sub_22FF1CB1C(&qword_27DAF27F0, type metadata accessor for Proto_Cryptex.Salt);
  v39 = v52;
  sub_22FFB1128();
  if (v39)
  {
    return sub_22FEAEA34(v28, &qword_27DAF2890, &qword_22FFB90E0);
  }

  sub_22FEBF3A4(v28, v38, &qword_27DAF2890, &qword_22FFB90E0);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    sub_22FEAEA34(v28, &qword_27DAF2890, &qword_22FFB90E0);
    return sub_22FEAEA34(v38, &qword_27DAF2890, &qword_22FFB90E0);
  }

  else
  {
    v41 = v48;
    sub_22FF0B4A8(v38, v48, type metadata accessor for Proto_Cryptex.Salt);
    if (v33 != 1)
    {
      sub_22FFB1068();
    }

    sub_22FEAEA34(v28, &qword_27DAF2890, &qword_22FFB90E0);
    v42 = v47;
    v43 = v45;
    sub_22FEAEA34(v47 + v45, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FF0B4A8(v41, v42 + v43, type metadata accessor for Proto_Cryptex.Salt);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t sub_22FF16700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for Proto_SecureConfig(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2898, &qword_22FFB90E8);
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
  v32 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
  v47 = a1;
  v45 = v32;
  sub_22FEBF3A4(a1 + v32, v14, &qword_27DAF2130, &unk_22FFB5C80);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_22FEAEA34(v14, &qword_27DAF2130, &unk_22FFB5C80);
    v34 = v15;
  }

  else
  {
    sub_22FF0B4A8(v14, v22, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    sub_22FF0B4A8(v22, v20, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22FEAEA34(v28, &qword_27DAF2898, &qword_22FFB90E8);
      v35 = v20;
      v36 = v49;
      sub_22FF0B4A8(v35, v49, type metadata accessor for Proto_SecureConfig);
      sub_22FF0B4A8(v36, v28, type metadata accessor for Proto_SecureConfig);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    sub_22FF1C9FC(v20, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  sub_22FF1CB1C(&qword_28148FD30, type metadata accessor for Proto_SecureConfig);
  v39 = v52;
  sub_22FFB1128();
  if (v39)
  {
    return sub_22FEAEA34(v28, &qword_27DAF2898, &qword_22FFB90E8);
  }

  sub_22FEBF3A4(v28, v38, &qword_27DAF2898, &qword_22FFB90E8);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    sub_22FEAEA34(v28, &qword_27DAF2898, &qword_22FFB90E8);
    return sub_22FEAEA34(v38, &qword_27DAF2898, &qword_22FFB90E8);
  }

  else
  {
    v41 = v48;
    sub_22FF0B4A8(v38, v48, type metadata accessor for Proto_SecureConfig);
    if (v33 != 1)
    {
      sub_22FFB1068();
    }

    sub_22FEAEA34(v28, &qword_27DAF2898, &qword_22FFB90E8);
    v42 = v47;
    v43 = v45;
    sub_22FEAEA34(v47 + v45, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FF0B4A8(v41, v42 + v43, type metadata accessor for Proto_SecureConfig);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t sub_22FF16CC8()
{
  v0 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 28);
  sub_22FFB0F58();
  sub_22FFB0F48();
  sub_22FF1CB1C(&qword_27DAF2718, MEMORY[0x277D21648]);
  return sub_22FFB1048();
}

uint64_t sub_22FF16D94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v17 = xmmword_22FFB2D00;
  sub_22FFB10B8();
  v8 = v17;
  if (v2 || *(&v17 + 1) >> 60 == 15)
  {
    return sub_22FEA56EC(v17, *(&v17 + 1));
  }

  v9 = (a2 + *(type metadata accessor for Proto_SealedHash.Entry(0) + 24));
  sub_22FEBF3A4(v9, v7, &qword_27DAF2130, &unk_22FFB5C80);
  v10 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  v16 = *(v10 - 8);
  v11 = *(v16 + 48);
  v18 = v10;
  v12 = v11(v7, 1);
  sub_22FEA5608(v8, *(&v8 + 1));
  sub_22FEAEA34(v7, &qword_27DAF2130, &unk_22FFB5C80);
  if (v12 != 1)
  {
    sub_22FFB1068();
  }

  sub_22FEA56EC(v8, *(&v8 + 1));
  sub_22FEAEA34(v9, &qword_27DAF2130, &unk_22FFB5C80);
  *v9 = v8;
  v14 = v18;
  swift_storeEnumTagMultiPayload();
  return (*(v16 + 56))(v9, 0, 1, v14);
}

uint64_t Proto_SealedHash.Entry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v25 - v13;
  if (*v3)
  {
    result = sub_22FFB1238();
    if (v4)
    {
      return result;
    }
  }

  v16 = *(v3 + 8);
  v17 = *(v3 + 16);
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2 || *(v16 + 16) == *(v16 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v18)
  {
    if (v16 == v16 >> 32)
    {
      goto LABEL_12;
    }
  }

  else if ((v17 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  result = sub_22FFB1228();
  if (v4)
  {
    return result;
  }

LABEL_12:
  v19 = v4;
  v20 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(v3 + v20[6], v14, &qword_27DAF2130, &unk_22FFB5C80);
  v21 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v21 - 8) + 48))(v14, 1, v21) != 1)
  {
    sub_22FEBF3A4(v14, v12, &qword_27DAF2130, &unk_22FFB5C80);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_22FF17598(v3, a1, a2, a3);
      }

      else
      {
        sub_22FF177DC(v3, a1, a2, a3);
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_22FF1C9FC(v12, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
        goto LABEL_23;
      }

      sub_22FF17354(v3, a1, a2, a3);
    }

    sub_22FF1C9FC(v12, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    if (v4)
    {
      return sub_22FEAEA34(v14, &qword_27DAF2130, &unk_22FFB5C80);
    }

    v19 = 0;
  }

LABEL_23:
  sub_22FEAEA34(v14, &qword_27DAF2130, &unk_22FFB5C80);
  if (*(*(v3 + v20[7]) + 16))
  {
    sub_22FFB0F58();
    sub_22FFB0F48();
    sub_22FF1CB1C(&qword_27DAF2718, MEMORY[0x277D21648]);
    v23 = v19;
    result = sub_22FFB11D8();
    if (v19)
    {
      return result;
    }
  }

  else
  {
    v23 = v19;
  }

  result = sub_22FF17A20(v3);
  if (!v23)
  {
    v24 = v3 + v20[8];
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF17354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Cryptex(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(a1 + *(v13 + 24), v8, &qword_27DAF2130, &unk_22FFB5C80);
  v14 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_22FEAEA34(v8, &qword_27DAF2130, &unk_22FFB5C80);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22FF0B4A8(v8, v12, type metadata accessor for Proto_Cryptex);
    sub_22FF1CB1C(qword_281490550, type metadata accessor for Proto_Cryptex);
    sub_22FFB1288();
    return sub_22FF1C9FC(v12, type metadata accessor for Proto_Cryptex);
  }

  result = sub_22FF1C9FC(v8, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  __break(1u);
  return result;
}

uint64_t sub_22FF17598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_Cryptex.Salt(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(a1 + *(v13 + 24), v8, &qword_27DAF2130, &unk_22FFB5C80);
  v14 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_22FEAEA34(v8, &qword_27DAF2130, &unk_22FFB5C80);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_22FF0B4A8(v8, v12, type metadata accessor for Proto_Cryptex.Salt);
    sub_22FF1CB1C(&qword_27DAF27F0, type metadata accessor for Proto_Cryptex.Salt);
    sub_22FFB1288();
    return sub_22FF1C9FC(v12, type metadata accessor for Proto_Cryptex.Salt);
  }

  result = sub_22FF1C9FC(v8, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  __break(1u);
  return result;
}

uint64_t sub_22FF177DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_SecureConfig(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(a1 + *(v13 + 24), v8, &qword_27DAF2130, &unk_22FFB5C80);
  v14 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_22FEAEA34(v8, &qword_27DAF2130, &unk_22FFB5C80);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_22FF0B4A8(v8, v12, type metadata accessor for Proto_SecureConfig);
    sub_22FF1CB1C(&qword_28148FD30, type metadata accessor for Proto_SecureConfig);
    sub_22FFB1288();
    return sub_22FF1C9FC(v12, type metadata accessor for Proto_SecureConfig);
  }

  result = sub_22FF1C9FC(v8, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  __break(1u);
  return result;
}

uint64_t sub_22FF17A20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v11 - v4);
  v6 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(a1 + *(v6 + 24), v5, &qword_27DAF2130, &unk_22FFB5C80);
  v7 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    return sub_22FEAEA34(v5, &qword_27DAF2130, &unk_22FFB5C80);
  }

  if (swift_getEnumCaseMultiPayload())
  {
    return sub_22FF1C9FC(v5, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  }

  v10 = *v5;
  v9 = v5[1];
  sub_22FFB1228();
  return sub_22FEA55AC(v10, v9);
}

uint64_t sub_22FF17BF4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = xmmword_22FFB33B0;
  v4 = a1[6];
  v5 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[7];
  *(a2 + v6) = sub_22FFA6D50(MEMORY[0x277D84F90]);
  v7 = a2 + a1[8];
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF17CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1CB1C(&qword_27DAF2830, type metadata accessor for Proto_SealedHash.Entry);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF17D8C(uint64_t a1)
{
  v2 = sub_22FF1CB1C(&qword_28148FF80, type metadata accessor for Proto_SealedHash.Entry);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF17DF8()
{
  sub_22FF1CB1C(&qword_28148FF80, type metadata accessor for Proto_SealedHash.Entry);

  return sub_22FFB11A8();
}

uint64_t sub_22FF17E78()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF26A8);
  __swift_project_value_buffer(v0, qword_27DAF26A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "FLAG_NONE";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "FLAG_RATCHET";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "FLAG_RATCHET_LOCK";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t Proto_Cryptex.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22FFB1058();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22FFB10C8();
    }
  }

  return result;
}

uint64_t Proto_Cryptex.traverse<A>(visitor:)()
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
    result = sub_22FFB1228();
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
  v6 = v0 + *(type metadata accessor for Proto_Cryptex(0) + 20);
  return sub_22FFB0F68();
}

uint64_t sub_22FF182BC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_22FFB33B0;
  v2 = a2 + *(a1 + 20);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF1833C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1CB1C(&qword_27DAF2828, type metadata accessor for Proto_Cryptex);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF183DC(uint64_t a1)
{
  v2 = sub_22FF1CB1C(qword_281490550, type metadata accessor for Proto_Cryptex);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF18448()
{
  sub_22FF1CB1C(qword_281490550, type metadata accessor for Proto_Cryptex);

  return sub_22FFB11A8();
}

uint64_t sub_22FF184C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_22FFB0F88();
  sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF18570()
{
  strcpy(v1, "proto.Cryptex");
  HIWORD(v1[1]) = -4864;
  result = MEMORY[0x23190DD10](0x746C61532ELL, 0xE500000000000000);
  qword_27DAF26C0 = v1[0];
  *algn_27DAF26C8 = v1[1];
  return result;
}

uint64_t sub_22FF18608(void *a1, void *a2, void *a3)
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

uint64_t sub_22FF18664()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF26D0);
  __swift_project_value_buffer(v0, qword_27DAF26D0);
  return sub_22FFB12B8();
}

uint64_t Proto_Cryptex.Salt.decodeMessage<A>(decoder:)()
{
  do
  {
    result = sub_22FFB1058();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_22FF187A4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
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

uint64_t sub_22FF18834(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1CB1C(&qword_27DAF2820, type metadata accessor for Proto_Cryptex.Salt);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF188D4(uint64_t a1)
{
  v2 = sub_22FF1CB1C(&qword_27DAF27F0, type metadata accessor for Proto_Cryptex.Salt);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF18940()
{
  sub_22FF1CB1C(&qword_27DAF27F0, type metadata accessor for Proto_Cryptex.Salt);

  return sub_22FFB11A8();
}

uint64_t sub_22FF189BC()
{
  sub_22FFB0F88();
  sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF18A60()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_28148FD40);
  __swift_project_value_buffer(v0, qword_28148FD40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entry";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "metadata";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "data";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t Proto_SecureConfig.decodeMessage<A>(decoder:)()
{
  result = sub_22FFB1058();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      switch(result)
      {
        case 3:
          goto LABEL_10;
        case 2:
          sub_22FFB0F58();
          sub_22FFB1048();
          break;
        case 1:
LABEL_10:
          sub_22FFB10C8();
          break;
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t Proto_SecureConfig.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 == v6)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_22FFB1228();
  if (v1)
  {
    return result;
  }

LABEL_10:
  v8 = v1;
  if (*(v0[2] + 16))
  {
    sub_22FFB0F58();
    result = sub_22FFB11D8();
    if (v1)
    {
      return result;
    }

    v8 = 0;
  }

  v9 = v0[3];
  v10 = v0[4];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_22;
    }

    v13 = *(v9 + 16);
    v14 = *(v9 + 24);
  }

  else
  {
    if (!v11)
    {
      v12 = v8;
      if ((v10 & 0xFF000000000000) == 0)
      {
        goto LABEL_22;
      }

LABEL_21:
      result = sub_22FFB1228();
      if (v12)
      {
        return result;
      }

      goto LABEL_22;
    }

    v13 = v9;
    v14 = v9 >> 32;
  }

  v12 = v8;
  if (v13 != v14)
  {
    goto LABEL_21;
  }

LABEL_22:
  v15 = v0 + *(type metadata accessor for Proto_SecureConfig(0) + 28);
  return sub_22FFB0F68();
}

uint64_t sub_22FF18F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_22FFB33B0;
  *(a2 + 16) = sub_22FFA7A88(MEMORY[0x277D84F90]);
  *(a2 + 24) = xmmword_22FFB33B0;
  v4 = a2 + *(a1 + 28);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF18FE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1CB1C(&qword_27DAF2818, type metadata accessor for Proto_SecureConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF19084(uint64_t a1)
{
  v2 = sub_22FF1CB1C(&qword_28148FD30, type metadata accessor for Proto_SecureConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF190F0()
{
  sub_22FF1CB1C(&qword_28148FD30, type metadata accessor for Proto_SecureConfig);

  return sub_22FFB11A8();
}

uint64_t sub_22FF191AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22FFB2D10;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *a5;
  v16 = sub_22FFB1298();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  return sub_22FFB12A8();
}

uint64_t sub_22FF1936C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_22FFB1058();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_22FF193F0()
{
  v0 = *(type metadata accessor for Proto_TransparencyProofs(0) + 20);
  type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  sub_22FF1CB1C(qword_281490ED0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  return sub_22FFB1128();
}

uint64_t Proto_TransparencyProofs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FF194FC(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF194FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_TransparencyProofs(0);
  sub_22FEBF3A4(a1 + *(v14 + 20), v8, &qword_27DAF37C0, &unk_22FFB5C60);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22FEAEA34(v8, &qword_27DAF37C0, &unk_22FFB5C60);
  }

  sub_22FF0B4A8(v8, v13, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  sub_22FF1CB1C(qword_281490ED0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  sub_22FFB1288();
  return sub_22FF1C9FC(v13, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
}

uint64_t sub_22FF19764(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22FFB1CA8();
  a1(0);
  sub_22FF1CB1C(a2, a3);
  sub_22FFB1438();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF197EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_22FF198B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1CB1C(&qword_27DAF2810, type metadata accessor for Proto_TransparencyProofs);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF19950(uint64_t a1)
{
  v2 = sub_22FF1CB1C(&qword_28148F868, type metadata accessor for Proto_TransparencyProofs);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF199BC()
{
  sub_22FF1CB1C(&qword_28148F868, type metadata accessor for Proto_TransparencyProofs);

  return sub_22FFB11A8();
}

uint64_t sub_22FF19A3C(uint64_t a1, uint64_t a2)
{
  __s2[2] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v149 - v11;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2138, &qword_22FFB90D0);
  v13 = *(*(v173 - 8) + 64);
  MEMORY[0x28223BE20](v173);
  v15 = &v149 - v14;
  v178 = type metadata accessor for Proto_SealedHash.Entry(0);
  v176 = *(v178 - 1);
  v16 = *(v176 + 64);
  v17 = MEMORY[0x28223BE20](v178);
  v180 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = (&v149 - v19);
  v165 = type metadata accessor for Proto_SealedHash(0);
  v174 = *(v165 - 8);
  v21 = *(v174 + 64);
  v22 = MEMORY[0x28223BE20](v165);
  v177 = (&v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v149 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v149 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF28A0, &qword_22FFB90F0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v172 = (&v149 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v171 = (&v149 - v33);
  if (a1 == a2)
  {
    result = 1;
LABEL_176:
    v148 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
LABEL_175:
    result = 0;
    goto LABEL_176;
  }

  v154 = v8;
  v34 = 0;
  v35 = *(a1 + 64);
  v151 = a1 + 64;
  v36 = 1 << *(a1 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & v35;
  v39 = (v36 + 63) >> 6;
  v166 = (v5 + 48);
  v155 = v12;
  v167 = v15;
  v159 = v4;
  v153 = v28;
  v152 = v39;
  while (1)
  {
    if (v38)
    {
      v44 = a1;
      v158 = (v38 - 1) & v38;
      v157 = v34;
      v45 = __clz(__rbit64(v38)) | (v34 << 6);
LABEL_17:
      a1 = v44;
      v51 = (*(v44 + 48) + 16 * v45);
      v53 = *v51;
      v52 = v51[1];
      sub_22FF1C994(*(v44 + 56) + *(v174 + 72) * v45, v28, type metadata accessor for Proto_SealedHash);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF28A8, &qword_22FFB90F8);
      v55 = *(v54 + 48);
      v56 = v172;
      *v172 = v53;
      v56[1] = v52;
      v48 = v56;
      sub_22FF0B4A8(v28, v56 + v55, type metadata accessor for Proto_SealedHash);
      (*(*(v54 - 8) + 56))(v48, 0, 1, v54);
    }

    else
    {
      if (v39 <= v34 + 1)
      {
        v46 = v34 + 1;
      }

      else
      {
        v46 = v39;
      }

      v47 = v46 - 1;
      v48 = v172;
      while (1)
      {
        v49 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
        }

        if (v49 >= v39)
        {
          break;
        }

        v50 = *(v151 + 8 * v49);
        ++v34;
        if (v50)
        {
          v44 = a1;
          v158 = (v50 - 1) & v50;
          v45 = __clz(__rbit64(v50)) | (v49 << 6);
          v157 = v49;
          goto LABEL_17;
        }
      }

      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF28A8, &qword_22FFB90F8);
      (*(*(v72 - 8) + 56))(v48, 1, 1, v72);
      v158 = 0;
      v157 = v47;
    }

    v57 = v48;
    v58 = v171;
    sub_22FF1E71C(v57, v171);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF28A8, &qword_22FFB90F8);
    v60 = (*(*(v59 - 8) + 48))(v58, 1, v59) == 1;
    result = v60;
    if (v60)
    {
      goto LABEL_176;
    }

    v156 = v60;
    v61 = *(v59 + 48);
    v62 = *v58;
    v63 = v58[1];
    sub_22FF0B4A8(v58 + v61, v26, type metadata accessor for Proto_SealedHash);
    v64 = sub_22FFA619C(v62, v63);
    v66 = v65;

    if ((v66 & 1) == 0)
    {
      goto LABEL_174;
    }

    v67 = *(a2 + 56) + *(v174 + 72) * v64;
    v68 = v177;
    sub_22FF1C994(v67, v177, type metadata accessor for Proto_SealedHash);
    v69 = *v68;
    v70 = *v26;
    if (v26[8] == 1)
    {
      if (v70)
      {
        v71 = v159;
        if (v70 == 1)
        {
          if (v69 != 1)
          {
            goto LABEL_173;
          }
        }

        else if (v69 != 2)
        {
          goto LABEL_173;
        }
      }

      else
      {
        v71 = v159;
        if (v69)
        {
          goto LABEL_173;
        }
      }
    }

    else
    {
      v71 = v159;
      if (v69 != v70)
      {
        goto LABEL_173;
      }
    }

    v73 = v177[2];
    v74 = *(v26 + 2);
    v75 = *(v73 + 16);
    if (v75 != *(v74 + 16))
    {
LABEL_173:
      sub_22FF1C9FC(v177, type metadata accessor for Proto_SealedHash);
LABEL_174:
      sub_22FF1C9FC(v26, type metadata accessor for Proto_SealedHash);
      goto LABEL_175;
    }

    if (v75 && v73 != v74)
    {
      break;
    }

LABEL_6:
    v40 = *(v165 + 24);
    sub_22FFB0F88();
    sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8]);
    v41 = v177;
    v42 = sub_22FFB1478();
    sub_22FF1C9FC(v41, type metadata accessor for Proto_SealedHash);
    sub_22FF1C9FC(v26, type metadata accessor for Proto_SealedHash);
    v28 = v153;
    v39 = v152;
    v38 = v158;
    result = v156;
    v34 = v157;
    if ((v42 & 1) == 0)
    {
      goto LABEL_176;
    }
  }

  v76 = 0;
  v77 = (*(v176 + 80) + 32) & ~*(v176 + 80);
  v169 = v74 + v77;
  v170 = v73 + v77;
  v179 = v20;
  v168 = v26;
  v164 = a1;
  v163 = a2;
  v162 = v73;
  v161 = v74;
  v160 = v75;
  while (1)
  {
    if (v76 >= *(v73 + 16))
    {
      goto LABEL_178;
    }

    v78 = v71;
    v79 = v76;
    v80 = *(v176 + 72) * v76;
    sub_22FF1C994(v170 + v80, v20, type metadata accessor for Proto_SealedHash.Entry);
    v81 = *(v74 + 16);
    v175 = v79;
    if (v79 >= v81)
    {
      goto LABEL_179;
    }

    v82 = v169 + v80;
    v83 = v180;
    sub_22FF1C994(v82, v180, type metadata accessor for Proto_SealedHash.Entry);
    if (*v20 != *v83)
    {
      goto LABEL_172;
    }

    v71 = v78;
    v84 = *(v179 + 1);
    v85 = *(v179 + 2);
    v87 = *(v180 + 8);
    v86 = *(v180 + 16);
    v88 = v85 >> 62;
    v89 = v86 >> 62;
    if (v85 >> 62 == 3)
    {
      v90 = 0;
      if (!v84 && v85 == 0xC000000000000000 && v86 >> 62 == 3)
      {
        v90 = 0;
        if (!v87 && v86 == 0xC000000000000000)
        {
          goto LABEL_160;
        }
      }

LABEL_55:
      if (v89 <= 1)
      {
        goto LABEL_56;
      }

      goto LABEL_61;
    }

    if (v88 <= 1)
    {
      if (!v88)
      {
        v90 = BYTE6(v85);
        if (v89 <= 1)
        {
          goto LABEL_56;
        }

        goto LABEL_61;
      }

      LODWORD(v90) = HIDWORD(v84) - v84;
      if (__OFSUB__(HIDWORD(v84), v84))
      {
        goto LABEL_182;
      }

      v90 = v90;
      goto LABEL_55;
    }

    if (v88 == 2)
    {
      v92 = *(v84 + 16);
      v91 = *(v84 + 24);
      v93 = __OFSUB__(v91, v92);
      v90 = v91 - v92;
      if (v93)
      {
        goto LABEL_183;
      }

      goto LABEL_55;
    }

    v90 = 0;
    if (v89 <= 1)
    {
LABEL_56:
      if (v89)
      {
        LODWORD(v94) = HIDWORD(v87) - v87;
        if (__OFSUB__(HIDWORD(v87), v87))
        {
          goto LABEL_180;
        }

        v94 = v94;
      }

      else
      {
        v94 = BYTE6(v86);
      }

      goto LABEL_63;
    }

LABEL_61:
    if (v89 != 2)
    {
      if (v90)
      {
        goto LABEL_172;
      }

      goto LABEL_160;
    }

    v96 = *(v87 + 16);
    v95 = *(v87 + 24);
    v93 = __OFSUB__(v95, v96);
    v94 = v95 - v96;
    if (v93)
    {
      goto LABEL_181;
    }

LABEL_63:
    if (v90 != v94)
    {
      goto LABEL_172;
    }

    if (v90 < 1)
    {
      goto LABEL_160;
    }

    if (v88 > 1)
    {
      break;
    }

    if (!v88)
    {
      __s2[0] = *(v179 + 1);
      LOWORD(__s2[1]) = v85;
      BYTE2(__s2[1]) = BYTE2(v85);
      BYTE3(__s2[1]) = BYTE3(v85);
      BYTE4(__s2[1]) = BYTE4(v85);
      BYTE5(__s2[1]) = BYTE5(v85);
      if (!v89)
      {
        goto LABEL_92;
      }

      if (v89 == 1)
      {
        v97 = (v87 >> 32) - v87;
        if (v87 >> 32 < v87)
        {
          goto LABEL_187;
        }

        v98 = sub_22FFB0588();
        if (!v98)
        {
          goto LABEL_218;
        }

        v99 = v98;
        v100 = sub_22FFB05B8();
        if (__OFSUB__(v87, v100))
        {
          goto LABEL_193;
        }

        v101 = v87 - v100 + v99;
        v102 = sub_22FFB05A8();
        if (!v101)
        {
          goto LABEL_217;
        }
      }

      else
      {
        v122 = *(v87 + 16);
        v123 = *(v87 + 24);
        v101 = sub_22FFB0588();
        if (v101)
        {
          v124 = sub_22FFB05B8();
          if (__OFSUB__(v122, v124))
          {
            goto LABEL_197;
          }

          v101 += v122 - v124;
        }

        v93 = __OFSUB__(v123, v122);
        v97 = v123 - v122;
        if (v93)
        {
          goto LABEL_190;
        }

        v102 = sub_22FFB05A8();
        if (!v101)
        {
          goto LABEL_216;
        }
      }

      goto LABEL_129;
    }

    v107 = v84;
    if (v84 > v84 >> 32)
    {
      goto LABEL_184;
    }

    v108 = sub_22FFB0588();
    if (v108)
    {
      v109 = v108;
      v110 = sub_22FFB05B8();
      if (__OFSUB__(v107, v110))
      {
        goto LABEL_186;
      }

      v150 = (v107 - v110 + v109);
    }

    else
    {
      v150 = 0;
    }

    sub_22FFB05A8();
    if (v89 == 2)
    {
      v133 = *(v87 + 16);
      v134 = *(v87 + 24);
      v101 = sub_22FFB0588();
      v71 = v159;
      if (v101)
      {
        v135 = sub_22FFB05B8();
        if (__OFSUB__(v133, v135))
        {
          goto LABEL_200;
        }

        v101 += v133 - v135;
      }

      v93 = __OFSUB__(v134, v133);
      v136 = v134 - v133;
      if (v93)
      {
        goto LABEL_196;
      }

      v137 = sub_22FFB05A8();
      if (v137 >= v136)
      {
        v119 = v136;
      }

      else
      {
        v119 = v137;
      }

      v115 = v150;
      if (!v150)
      {
        goto LABEL_215;
      }

      if (!v101)
      {
        goto LABEL_214;
      }

LABEL_154:
      if (v115 == v101)
      {
        goto LABEL_160;
      }

      v114 = v119;
LABEL_156:
      v116 = v101;
      goto LABEL_159;
    }

    v71 = v159;
    if (v89 == 1)
    {
      if (v87 >> 32 < v87)
      {
        goto LABEL_195;
      }

      v101 = sub_22FFB0588();
      if (v101)
      {
        v120 = sub_22FFB05B8();
        if (__OFSUB__(v87, v120))
        {
          goto LABEL_202;
        }

        v101 += v87 - v120;
      }

      v121 = sub_22FFB05A8();
      if (v121 >= (v87 >> 32) - v87)
      {
        v119 = (v87 >> 32) - v87;
      }

      else
      {
        v119 = v121;
      }

      v115 = v150;
      if (!v150)
      {
        goto LABEL_213;
      }

      if (!v101)
      {
        goto LABEL_212;
      }

      goto LABEL_154;
    }

    v115 = v150;
    __s2[0] = v87;
    LOWORD(__s2[1]) = v86;
    BYTE2(__s2[1]) = BYTE2(v86);
    BYTE3(__s2[1]) = BYTE3(v86);
    BYTE4(__s2[1]) = BYTE4(v86);
    BYTE5(__s2[1]) = BYTE5(v86);
    if (!v150)
    {
      goto LABEL_211;
    }

LABEL_158:
    v114 = BYTE6(v86);
    v116 = __s2;
LABEL_159:
    if (memcmp(v115, v116, v114))
    {
      goto LABEL_172;
    }

LABEL_160:
    v138 = v178[6];
    v139 = *(v173 + 48);
    v140 = v167;
    sub_22FEBF3A4(v179 + v138, v167, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FEBF3A4(v180 + v138, v140 + v139, &qword_27DAF2130, &unk_22FFB5C80);
    v141 = *v166;
    if ((*v166)(v140, 1, v71) == 1)
    {
      if (v141(v140 + v139, 1, v71) != 1)
      {
        goto LABEL_171;
      }

      sub_22FEAEA34(v140, &qword_27DAF2130, &unk_22FFB5C80);
      a2 = v163;
      a1 = v164;
      v73 = v162;
    }

    else
    {
      v142 = v155;
      sub_22FEBF3A4(v140, v155, &qword_27DAF2130, &unk_22FFB5C80);
      if (v141(v140 + v139, 1, v71) == 1)
      {
        sub_22FF1C9FC(v142, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
LABEL_171:
        sub_22FEAEA34(v140, &qword_27DAF2138, &qword_22FFB90D0);
LABEL_172:
        sub_22FF1C9FC(v180, type metadata accessor for Proto_SealedHash.Entry);
        sub_22FF1C9FC(v179, type metadata accessor for Proto_SealedHash.Entry);
        v26 = v168;
        goto LABEL_173;
      }

      v143 = v154;
      sub_22FF0B4A8(v140 + v139, v154, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
      v144 = _s16CloudAttestation16Proto_SealedHashV5EntryV10OneOf_InfoO2eeoiySbAG_AGtFZ_0(v142, v143);
      sub_22FF1C9FC(v143, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
      sub_22FF1C9FC(v142, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
      sub_22FEAEA34(v140, &qword_27DAF2130, &unk_22FFB5C80);
      a2 = v163;
      a1 = v164;
      v73 = v162;
      if ((v144 & 1) == 0)
      {
        goto LABEL_172;
      }
    }

    if (!sub_22FF1AD24(*(v179 + v178[7]), *(v180 + v178[7])))
    {
      goto LABEL_172;
    }

    v145 = v178[8];
    sub_22FFB0F88();
    sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8]);
    v20 = v179;
    v146 = v180;
    v147 = sub_22FFB1478();
    sub_22FF1C9FC(v146, type metadata accessor for Proto_SealedHash.Entry);
    sub_22FF1C9FC(v20, type metadata accessor for Proto_SealedHash.Entry);
    v26 = v168;
    v74 = v161;
    if ((v147 & 1) == 0)
    {
      goto LABEL_173;
    }

    v76 = v175 + 1;
    if (v160 == v175 + 1)
    {
      goto LABEL_6;
    }
  }

  if (v88 == 2)
  {
    v103 = *(v84 + 16);
    v104 = sub_22FFB0588();
    if (v104)
    {
      v105 = v104;
      v106 = sub_22FFB05B8();
      if (__OFSUB__(v103, v106))
      {
        goto LABEL_185;
      }

      v150 = (v103 - v106 + v105);
    }

    else
    {
      v150 = 0;
    }

    sub_22FFB05A8();
    if (v89 == 2)
    {
      v128 = *(v87 + 16);
      v129 = *(v87 + 24);
      v101 = sub_22FFB0588();
      v71 = v159;
      if (v101)
      {
        v130 = sub_22FFB05B8();
        if (__OFSUB__(v128, v130))
        {
          goto LABEL_199;
        }

        v101 += v128 - v130;
      }

      v93 = __OFSUB__(v129, v128);
      v131 = v129 - v128;
      if (v93)
      {
        goto LABEL_194;
      }

      v132 = sub_22FFB05A8();
      if (v132 >= v131)
      {
        v119 = v131;
      }

      else
      {
        v119 = v132;
      }

      v115 = v150;
      if (!v150)
      {
        goto LABEL_210;
      }

      if (!v101)
      {
        goto LABEL_209;
      }

      goto LABEL_154;
    }

    v71 = v159;
    if (v89 == 1)
    {
      if (v87 >> 32 < v87)
      {
        goto LABEL_191;
      }

      v101 = sub_22FFB0588();
      if (v101)
      {
        v117 = sub_22FFB05B8();
        if (__OFSUB__(v87, v117))
        {
          goto LABEL_201;
        }

        v101 += v87 - v117;
      }

      v118 = sub_22FFB05A8();
      if (v118 >= (v87 >> 32) - v87)
      {
        v119 = (v87 >> 32) - v87;
      }

      else
      {
        v119 = v118;
      }

      v115 = v150;
      if (!v150)
      {
        goto LABEL_208;
      }

      if (!v101)
      {
        goto LABEL_207;
      }

      goto LABEL_154;
    }

    v115 = v150;
    __s2[0] = v87;
    LOWORD(__s2[1]) = v86;
    BYTE2(__s2[1]) = BYTE2(v86);
    BYTE3(__s2[1]) = BYTE3(v86);
    BYTE4(__s2[1]) = BYTE4(v86);
    BYTE5(__s2[1]) = BYTE5(v86);
    if (!v150)
    {
      goto LABEL_206;
    }

    goto LABEL_158;
  }

  memset(__s2, 0, 14);
  if (!v89)
  {
LABEL_92:
    v181 = v87;
    v182 = v86;
    v183 = BYTE2(v86);
    v184 = BYTE3(v86);
    v185 = BYTE4(v86);
    v114 = BYTE6(v86);
    v186 = BYTE5(v86);
    v115 = __s2;
    v116 = &v181;
    goto LABEL_159;
  }

  if (v89 == 2)
  {
    v111 = *(v87 + 16);
    v112 = *(v87 + 24);
    v101 = sub_22FFB0588();
    if (v101)
    {
      v113 = sub_22FFB05B8();
      if (__OFSUB__(v111, v113))
      {
        goto LABEL_198;
      }

      v101 += v111 - v113;
    }

    v93 = __OFSUB__(v112, v111);
    v97 = v112 - v111;
    if (v93)
    {
      goto LABEL_189;
    }

    v102 = sub_22FFB05A8();
    if (!v101)
    {
      goto LABEL_205;
    }

LABEL_129:
    if (v102 >= v97)
    {
      v114 = v97;
    }

    else
    {
      v114 = v102;
    }

    v115 = __s2;
    goto LABEL_156;
  }

  v97 = (v87 >> 32) - v87;
  if (v87 >> 32 < v87)
  {
    goto LABEL_188;
  }

  v125 = sub_22FFB0588();
  if (v125)
  {
    v126 = v125;
    v127 = sub_22FFB05B8();
    if (__OFSUB__(v87, v127))
    {
      goto LABEL_192;
    }

    v101 = v87 - v127 + v126;
    v102 = sub_22FFB05A8();
    if (!v101)
    {
      goto LABEL_204;
    }

    goto LABEL_129;
  }

  sub_22FFB05A8();
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  result = sub_22FFB05A8();
  __break(1u);
  return result;
}