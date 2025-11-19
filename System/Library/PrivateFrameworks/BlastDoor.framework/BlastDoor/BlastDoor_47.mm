uint64_t sub_214423500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitShareParticipant(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v50 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913178, &unk_21473D7D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - v15;
  v17 = *(a1 + 24);
  if (v17 == 1)
  {
    goto LABEL_45;
  }

  v18 = *(a2 + 24);
  if (v18 == 1)
  {
    goto LABEL_45;
  }

  v19 = *(a1 + 16);
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    if (v19 != *(a2 + 16) || v17 != v18)
    {
      v20 = *(a1 + 16);
      if ((sub_2146DA6A8() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v18)
    {
      return 0;
    }

    sub_213FDC9D0(*(a2 + 16), 0);
    sub_213FDC9D0(v19, 0);
  }

  v21 = type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
  v22 = a1;
  v23 = a2;
  v50 = v21;
  v51 = v22;
  v24 = *(v21 + 20);
  v25 = *(v13 + 48);
  sub_213FB2E54(v22 + v24, v16, &qword_27C907570, &qword_214732A10);
  v26 = v23 + v24;
  v27 = v23;
  sub_213FB2E54(v26, &v16[v25], &qword_27C907570, &qword_214732A10);
  v28 = *(v5 + 48);
  if (v28(v16, 1, v4) == 1)
  {
    if (v28(&v16[v25], 1, v4) == 1)
    {
      sub_213FB2DF4(v16, &qword_27C907570, &qword_214732A10);
      goto LABEL_19;
    }

LABEL_16:
    sub_213FB2DF4(v16, &qword_27C913178, &unk_21473D7D0);
    return 0;
  }

  sub_213FB2E54(v16, v12, &qword_27C907570, &qword_214732A10);
  if (v28(&v16[v25], 1, v4) == 1)
  {
    sub_2144246FC(v12, type metadata accessor for CloudKitShareParticipant);
    goto LABEL_16;
  }

  sub_2144247CC(&v16[v25], v8, type metadata accessor for CloudKitShareParticipant);
  v30 = sub_214636E6C(v12, v8);
  sub_2144246FC(v8, type metadata accessor for CloudKitShareParticipant);
  sub_2144246FC(v12, type metadata accessor for CloudKitShareParticipant);
  sub_213FB2DF4(v16, &qword_27C907570, &qword_214732A10);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v32 = v50;
  v31 = v51;
  v33 = v50[7];
  v34 = v51 + v33;
  v35 = *(v51 + v33 + 24);
  if (v35 != 1)
  {
    v36 = v27 + v33;
    v37 = *(v36 + 24);
    if (v37 != 1)
    {
      v38 = *(v34 + 16);
      if (v35)
      {
        if (!v37)
        {
          return 0;
        }

        if (v38 != *(v36 + 16) || v35 != v37)
        {
          v39 = *(v34 + 16);
          if ((sub_2146DA6A8() & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        if (v37)
        {
          return 0;
        }

        sub_213FDC9D0(*(v36 + 16), 0);
        sub_213FDC9D0(v38, 0);
      }

      v40 = v32[8];
      v41 = *(v31 + v40);
      v42 = *(v27 + v40);
      if (v41 == 5)
      {
        if (v42 != 5)
        {
          return 0;
        }
      }

      else if (v42 == 5 || qword_21473D7E8[v41] != qword_21473D7E8[v42])
      {
        return 0;
      }

      v43 = v32[9];
      v44 = v31 + v43;
      v45 = *(v31 + v43 + 24);
      if (v45 != 1)
      {
        v46 = v27 + v43;
        v47 = *(v46 + 24);
        if (v47 != 1)
        {
          v48 = *(v44 + 16);
          if (v45)
          {
            if (v47)
            {
              if (v48 == *(v46 + 16) && v45 == v47)
              {
                return *(*(v31 + v32[10]) + 16) == *(*(v27 + v32[10]) + 16);
              }

              v49 = *(v44 + 16);
              if (sub_2146DA6A8())
              {
                return *(*(v31 + v32[10]) + 16) == *(*(v27 + v32[10]) + 16);
              }
            }
          }

          else if (!v47)
          {
            sub_213FDC9D0(*(v46 + 16), 0);
            sub_213FDC9D0(v48, 0);
            return *(*(v31 + v32[10]) + 16) == *(*(v27 + v32[10]) + 16);
          }

          return 0;
        }
      }
    }
  }

LABEL_45:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214423A00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913098, qword_21473D710);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_214423A78(void *a1)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = 2;
  return v3(v7, &v6) & 1;
}

uint64_t sub_214423AC4(void *a1, char *a2)
{
  v3 = a1[1];
  v4 = *a2;
  v5 = *(v2 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v7[2] = v9;
  v8 = v4;
  return sub_21441C14C(sub_21438ED20, v7, v5) & 1;
}

void sub_214423B28(uint64_t a1)
{
  v2 = (a1 + *(type metadata accessor for HealthSharingSetupMetadata(0) + 32));
  v3 = v2[1];
  if (v3 >> 60 != 15)
  {
    v4 = *v2;
    v5 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_213FDCA18(v4, v3);
    v6 = sub_21404A62C();
    if (v1)
    {
      sub_213FB54FC(v4, v3);
      v32 = v1;
      v7 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
      sub_21404A8B8(0, &qword_27C9131B0, 0x277CCA9B8);
      if (swift_dynamicCast())
      {

        sub_21404A6EC();
        swift_allocError();
        v9 = v8;
        v10 = v31[4];
        v11 = [v10 domain];
        v12 = sub_2146D95B8();
        v14 = v13;

        MEMORY[0x2160545D0](v12, v14);

        *v9 = 0xD000000000000014;
        v9[1] = 0x800000021478AAD0;
        v31[0] = [v10 code];
        v15 = sub_2146DA428();
        v17 = v16;

        v9[2] = v15;
        v9[3] = v17;
        v9[4] = 0xD000000000000013;
        v9[5] = 0x800000021479A560;
        swift_willThrow();
      }

      else
      {

        sub_21404A6EC();
        swift_allocError();
        v26 = v25;
        v27 = v1;
        sub_214689A34(v1, 0xD000000000000013, 0x800000021479A560, v26);
        swift_willThrow();
      }
    }

    else
    {
      v18 = v6;
      sub_213FB54FC(v4, v3);
      v19 = v18;
      [v19 _enableStrictSecureDecodingMode];
      [v19 setDecodingFailurePolicy_];
      v20 = type metadata accessor for _BlastDoorHKProfileIdentifier();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v22 = sub_2146D9588();
      [v19 setClass:ObjCClassFromMetadata forClassName:v22];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913160, &unk_21473D7C0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_2146EA710;
      *(v23 + 32) = v20;
      v24 = *MEMORY[0x277CCA308];
      sub_2146D95B8();
      sub_2146D9D08();

      if (v31[3])
      {
        if (swift_dynamicCast())
        {

          return;
        }
      }

      else
      {
        sub_213FB2DF4(v31, &qword_27C913170, &qword_2146EAB20);
      }

      v28 = sub_2146D9F58();
      swift_allocError();
      v30 = v29;
      sub_2146D9F28();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84168], v28);
      swift_willThrow();
    }
  }
}

char *sub_214423F94(uint64_t a1)
{
  v2 = v1;
  v50 = type metadata accessor for HealthSharingAuthorization(0);
  v4 = *(v50 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v50);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + *(type metadata accessor for HealthSummarySharingEntry(0) + 20));
  v9 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingAuthorizations;
  swift_beginAccess();
  v10 = *(v8 + v9);
  v11 = *(v10 + 16);
  if (v11)
  {
    v56 = v2;
    v12 = v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v55 = 0x8000000214791700;
    v54 = 0x800000021478A360;
    v46 = *(v4 + 72);

    v14 = 0;
    v57 = MEMORY[0x277D84F90];
    v47 = v11 - 1;
    v53 = xmmword_2146E9BF0;
    v49 = v7;
    v48 = v13;
    while (1)
    {
      sub_214424694(v12, v7, type metadata accessor for HealthSharingAuthorization);
      v15 = &v7[v50[5]];
      v16 = *v15;
      v17 = *(v15 + 1);
      v18 = &v7[v50[6]];
      v19 = *(v18 + 1);
      *&v51 = *v18;
      v20 = &v7[v50[7]];
      v21 = *(v20 + 1);
      *&v52 = *v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
      inited = swift_initStackObject();
      *(inited + 16) = v53;
      v23 = swift_initStackObject();
      *(v23 + 16) = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
      v24 = swift_allocObject();
      *(v24 + 16) = sub_21439DF20;
      *(v24 + 24) = 0;
      *(v23 + 32) = v24;
      *(&v52 + 1) = v21;

      *(&v51 + 1) = v19;

      v25 = sub_2142E0070(v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
      v26 = swift_allocObject();
      v27 = swift_allocObject();
      *(v27 + 16) = v25;
      *(v26 + 16) = sub_214032610;
      *(v26 + 24) = v27;
      *(inited + 32) = v26;
      sub_214042A28(inited, &v58);
      v28 = v58;
      v29 = v59;
      v30 = v60;
      v31 = v61;
      v32 = v62;
      v66[0] = v16;
      v66[1] = v17;
      v68 = v62;
      v58 = 0xD000000000000040;
      v59 = v55;
      v60 = 0xD00000000000001CLL;
      v61 = v54;

      sub_213FDC9D0(v30, v31);
      v33 = v56;
      v34 = v28(v66, &v68, &v58);
      v56 = v33;
      if (v33)
      {
        break;
      }

      if ((v34 & 1) == 0)
      {

        sub_214031C4C();
        swift_allocError();
        v42 = v55;
        *v43 = 0xD000000000000040;
        v43[1] = v42;
        v44 = v54;
        v43[2] = 0xD00000000000001CLL;
        v43[3] = v44;
        swift_willThrow();
        goto LABEL_15;
      }

      sub_213FDC6D0(v30, v31);

      sub_213FDC6D0(v30, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_214095C34(0, *(v57 + 2) + 1, 1, v57);
      }

      v36 = *(v57 + 2);
      v35 = *(v57 + 3);
      if (v36 >= v35 >> 1)
      {
        v57 = sub_214095C34((v35 > 1), v36 + 1, 1, v57);
      }

      v37 = v57;
      *(v57 + 2) = v36 + 1;
      v38 = &v37[72 * v36];
      *(v38 + 4) = v28;
      *(v38 + 5) = v29;
      *(v38 + 6) = v16;
      *(v38 + 7) = v17;
      v38[64] = v32;
      v39 = *(&v58 + 3);
      *(v38 + 65) = v58;
      v40 = v51;
      *(v38 + 17) = v39;
      *(v38 + 88) = v52;
      *(v38 + 72) = v40;
      v7 = v49;
      sub_2144246FC(v49, type metadata accessor for HealthSharingAuthorization);
      if (v47 == v14)
      {

        return v57;
      }

      ++v14;
      result = v48;
      v12 += v46;
      if (v14 >= *(v48 + 16))
      {
        __break(1u);
        return result;
      }
    }

LABEL_15:

    sub_213FDC6D0(v30, v31);
    v58 = v28;
    v59 = v29;
    v60 = v30;
    v61 = v31;
    v62 = v32;
    *v63 = *v67;
    *&v63[3] = *&v67[3];
    v64 = v51;
    v65 = v52;
    sub_21430BF68(&v58);
    sub_2144246FC(v49, type metadata accessor for HealthSharingAuthorization);

    return v57;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21442464C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_214424694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2144246FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21442475C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2144247CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21442483C(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (v3)
  {
    v4 = v3;
    [v3 writeUint32:*v1 forTag:1];
    sub_214426140();

    v5 = sub_2146D9588();

    [v4 writeString:v5 forTag:2];

    v6 = sub_2146D8608();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    sub_2146D85F8();
    v9 = *(a1 + 40);
    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
    type metadata accessor for WalletPassSharingSpecializedMessage.WalletPassSharingSpecializedMessagePayload();
    swift_getWitnessTable();
    v12 = sub_2146D85E8();
    v14 = v13;

    v15 = sub_2146D8A38();
    sub_213FB54FC(v12, v14);
    [v4 writeData:v15 forTag:3];

    v16 = [v4 immutableData];
    if (v16)
    {
      v17 = v16;

      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_214424A00@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 256;
  *(v4 + 24) = 0;
  *(v3 + 16) = sub_21407B588;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  return sub_214042B80(inited, a1);
}

uint64_t sub_214424ACC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 32);
  *a4 = a1;
  v7 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 24) = v7;
  *(a4 + 40) = v6;
  v8 = *(type metadata accessor for WalletPassSharingSpecializedMessage() + 40);
  v9 = type metadata accessor for WalletPassSharingSpecializedMessage.WalletPassSharingSpecializedMessagePayload();
  v10 = *(*(v9 - 8) + 32);

  return v10(a4 + v8, a3, v9);
}

uint64_t sub_214424B84@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214424BD0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 16);
  v7 = *(v1 + 32);

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_214424C2C()
{
  v0 = sub_214426140();

  return v0;
}

uint64_t sub_214424C64@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for WalletPassSharingSpecializedMessage.WalletPassSharingSpecializedMessagePayload();
  *(a4 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_214424CEC@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t sub_214424D48()
{
  v1 = 0xD000000000000018;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000018;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000028;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_214424DC4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214424E78()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_214424F18()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214424FC8@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_214424CEC(a1);
}

void sub_214424FD4(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000018;
  v3 = "digitalwallet.carkey.ccc";
  v4 = 0xD000000000000013;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000018;
    v3 = "digitalwallet.apple";
  }

  if (*v1)
  {
    v5 = "neric.authorizationToken";
  }

  else
  {
    v2 = 0xD000000000000028;
    v5 = "contentDescription";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v2 = v4;
    v6 = v3;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_2144250F8@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 6)
  {
    if (result <= 1002)
    {
      switch(result)
      {
        case 7:
          *a2 = 7;
          return result;
        case 1001:
          *a2 = 8;
          return result;
        case 1002:
          *a2 = 9;
          return result;
      }
    }

    else if (result > 2001)
    {
      if (result == 2002)
      {
        *a2 = 12;
        return result;
      }

      if (result == 2003)
      {
        *a2 = 13;
        return result;
      }
    }

    else
    {
      if (result == 1003)
      {
        *a2 = 10;
        return result;
      }

      if (result == 2001)
      {
        *a2 = 11;
        return result;
      }
    }

    goto LABEL_32;
  }

  if (result <= 2)
  {
    switch(result)
    {
      case 0:
        *a2 = 0;
        return result;
      case 1:
        *a2 = 1;
        return result;
      case 2:
        *a2 = 2;
        return result;
    }

LABEL_32:
    *a2 = 14;
    return result;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      *a2 = 5;
    }

    else
    {
      *a2 = 6;
    }
  }

  else if (result == 3)
  {
    *a2 = 3;
  }

  else
  {
    *a2 = 4;
  }

  return result;
}

uint64_t sub_214425274()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_21473DCC8[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_2144252FC()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_21473DCC8[v1]);
  return sub_2146DA9B8();
}

uint64_t (*sub_2144254C4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_214425518@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 16);
  v6 = *(v4 - 8);
  type metadata accessor for WalletPassSharingSpecializedMessage();
  *a3 = sub_214426140();
  a3[1] = v7;
}

uint64_t sub_214425568(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2144255A8(v1, v2);
}

uint64_t sub_2144255A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v12 = *(v3 + 40);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 32);

    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144256F0(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 32);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 24);
    a1[1] = v3;

    return sub_214069FB0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

double sub_21442578C@<D0>(uint64_t a1@<X8>)
{
  sub_214424B84(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

double sub_2144257D0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6.n128_u64[0] = *a1;
  v6.n128_u64[1] = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;

  *&result = sub_214424BD0(&v6).n128_u64[0];
  return result;
}

void (*sub_214425828(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2144258C0;
}

void sub_2144258C0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = *(*a1 + 32);
  v8 = (*a1)[5];
  if (a2)
  {
    v9 = (*a1)[3];

    v10 = *(v8 + 16);
    v11 = *(v8 + 32);

    *(v8 + 8) = v4;
    *(v8 + 16) = v3;
    *(v8 + 24) = v6;
    *(v8 + 32) = v5;
    *(v8 + 40) = v7;
    v12 = v2[1];
    v13 = v2[3];
  }

  else
  {
    v14 = *(v8 + 16);
    v15 = *(v8 + 32);

    *(v8 + 8) = v4;
    *(v8 + 16) = v3;
    *(v8 + 24) = v6;
    *(v8 + 32) = v5;
    *(v8 + 40) = v7;
  }

  free(v2);
}

uint64_t sub_214425994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for WalletPassSharingSpecializedMessage.WalletPassSharingSpecializedMessagePayload();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2 + v4, v7);
}

uint64_t sub_214425A0C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = type metadata accessor for WalletPassSharingSpecializedMessage.WalletPassSharingSpecializedMessagePayload();
  v8 = *(*(v7 - 8) + 40);

  return v8(v2 + v4, a1, v7);
}

uint64_t (*sub_214425A88(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_214425AAC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v20 = a4;
  v22 = a2;
  v21 = a1;
  v7 = type metadata accessor for WalletPassSharingSpecializedMessage.WalletPassSharingSpecializedMessagePayload();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = sub_2146D85C8();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_2146D85B8();
  swift_getWitnessTable();
  sub_2146D85A8();

  (*(v8 + 16))(v12, v14, v7);

  sub_2141F9198(v21, v22, a3, v12, a5);
  (*(v8 + 8))(v14, v7);
  v18 = type metadata accessor for WalletPassSharingSpecializedMessage();
  return (*(*(v18 - 8) + 56))(a5, 0, 1, v18);
}

uint64_t sub_214425CFC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_2146D85C8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_2146D85B8();
  v9 = *(*(a2 + 8) + 8);
  sub_2146D85A8();

  v10 = *(*(a1 - 8) + 56);

  return v10(a3, 0, 1, a1);
}

uint64_t sub_214425DE4(uint64_t a1, uint64_t a2)
{
  v3 = sub_2146D8608();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_2146D85F8();
  v6 = *(*(a2 + 8) + 16);
  v7 = sub_2146D85E8();

  return v7;
}

uint64_t _s9BlastDoor10WalletJSONO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v7 != 3)
      {
LABEL_21:
        v16 = *a1;
        goto LABEL_22;
      }

      sub_2143DA468(*a2, *(a2 + 8), 3);
      sub_2143DA468(v2, v3, 3);
      v11 = sub_2143D80E4(v2, v5);
      sub_2143DA490(v2, v3, 3);
      v12 = v5;
      v13 = v6;
      v14 = 3;
LABEL_20:
      sub_2143DA490(v12, v13, v14);
      return v11 & 1;
    }

    if (v4 == 4)
    {
      if (v7 == 4)
      {
        sub_2143DA490(*a1, v3, 4);
        sub_2143DA490(v5, v6, 4);
        v8 = v5 ^ v2 ^ 1;
        return v8 & 1;
      }

LABEL_27:
      sub_2143DA468(v5, v6, v7);
      sub_2143DA490(v2, v3, v4);
      sub_2143DA490(v5, v6, v7);
      v8 = 0;
      return v8 & 1;
    }

    if (v7 != 5 || (v6 | v5) != 0)
    {
      goto LABEL_27;
    }

    sub_2143DA490(*a1, v3, 5);
    v18 = 0;
    v19 = 0;
    v20 = 5;
LABEL_31:
    sub_2143DA490(v18, v19, v20);
    v8 = 1;
    return v8 & 1;
  }

  if (!*(a1 + 16))
  {
    v9 = *(a1 + 8);
    if (*(a2 + 16))
    {
LABEL_22:

      goto LABEL_27;
    }

    if (v2 != v5 || v3 != v6)
    {
      v11 = sub_2146DA6A8();
      sub_2143DA468(v5, v6, 0);
      sub_2143DA468(v2, v3, 0);
      sub_2143DA490(v2, v3, 0);
      v12 = v5;
      v13 = v6;
      v14 = 0;
      goto LABEL_20;
    }

    sub_2143DA468(v2, v3, 0);
    sub_2143DA468(v2, v3, 0);
    sub_2143DA490(v2, v3, 0);
    v18 = v2;
    v19 = v3;
    v20 = 0;
    goto LABEL_31;
  }

  if (v4 != 1)
  {
    if (v7 == 2)
    {
      sub_2143DA468(*a2, *(a2 + 8), 2);
      sub_2143DA468(v2, v3, 2);
      v11 = sub_214464F80(v2, v5);
      sub_2143DA490(v2, v3, 2);
      v12 = v5;
      v13 = v6;
      v14 = 2;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (v7 != 1)
  {
    goto LABEL_27;
  }

  sub_2143DA490(*a1, v3, 1);
  sub_2143DA490(v5, v6, 1);
  v8 = v2 == v5;
  return v8 & 1;
}

uint64_t sub_214426140()
{
  if (*(v0 + 32))
  {
    return *(v0 + 24);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_2144261D8()
{
  result = qword_27C913240;
  if (!qword_27C913240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913240);
  }

  return result;
}

unint64_t sub_214426230()
{
  result = qword_27C913248[0];
  if (!qword_27C913248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C913248);
  }

  return result;
}

uint64_t sub_2144262DC(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor10WalletJSONO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_214426344(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21442638C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2144263D0(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

void sub_214426418(uint64_t a1)
{
  sub_214426938();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    type metadata accessor for WalletPassSharingSpecializedMessage.WalletPassSharingSpecializedMessagePayload();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2144264B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 41) & ~v6) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 33) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_214426640(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFC)
  {
    v8 = 252;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64) + 1;
  v12 = ((v10 + 41) & ~v10) + v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v12 <= 3)
    {
      v18 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 < a2)
  {
    v16 = ~v9 + a2;
    if (v12 < 4)
    {
      v17 = (v16 >> (8 * v12)) + 1;
      if (v12)
      {
        v20 = v16 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_60:
              if (v15 == 2)
              {
                *&a1[v12] = v17;
              }

              else
              {
                *&a1[v12] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v15)
    {
      a1[v12] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v12] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v15)
  {
    goto LABEL_33;
  }

  a1[v12] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  v21 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  if ((v7 & 0x80000000) != 0)
  {
    v22 = ((v21 + v10 + 33) & ~v10);
    if (v8 >= a2)
    {
      v26 = *(v6 + 56);

      v26((v21 + v10 + 33) & ~v10);
    }

    else
    {
      if (v11 <= 3)
      {
        v23 = ~(-1 << (8 * v11));
      }

      else
      {
        v23 = -1;
      }

      if (v11)
      {
        v24 = v23 & (~v8 + a2);
        if (v11 <= 3)
        {
          v25 = v11;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v11);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *v21 = a2 & 0x7FFFFFFF;
    *(v21 + 8) = 0;
  }

  else
  {
    *v21 = a2 - 1;
  }
}

void sub_214426938()
{
  if (!qword_280B2E578)
  {
    v0 = type metadata accessor for Validated();
    if (!v1)
    {
      atomic_store(v0, &qword_280B2E578);
    }
  }
}

uint64_t sub_214426988(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_214426A00(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFC)
  {
    v7 = 252;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFC)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 4)
      {
        return v15 - 3;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

unsigned int *sub_214426B68(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFC)
  {
    v7 = 252;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFC)
      {
        *(result + v8) = a2 + 3;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

unint64_t sub_214426D90()
{
  result = qword_27C913350;
  if (!qword_27C913350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913350);
  }

  return result;
}

unint64_t sub_214426DE4()
{
  result = qword_27C913358;
  if (!qword_27C913358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913358);
  }

  return result;
}

uint64_t sub_214426E38@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 10) = *(v1 + 42);
  v4 = *(v8 + 10);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 42) = v4;
  return sub_214426E84(v7, &v6);
}

uint64_t sub_214426E84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9097F0, &qword_2146F5800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_214426EF4(uint64_t a1)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v7[0] = v1[2];
  *(v7 + 10) = *(v1 + 42);
  sub_214426F54(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v4;
  v1[2] = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 42) = result;
  return result;
}

uint64_t sub_214426F54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9097F0, &qword_2146F5800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214426FDC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 96);
  return sub_21431C5DC(v2);
}

__n128 sub_21442700C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  sub_21431E10C(*(v1 + 64));
  result = *a1;
  v9 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v9;
  *(v1 + 96) = v3;
  return result;
}

uint64_t sub_214427074@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = v2;
  a1[1] = v3;
  return sub_2143075C0(v2, v3);
}

uint64_t sub_214427080(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_214307294(*(v1 + 104), *(v1 + 112));
  *(v1 + 104) = v2;
  *(v1 + 112) = v3;
  return result;
}

uint64_t sub_2144270D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  v5 = *(v1 + 144);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 152);
  return sub_21431C5DC(v2);
}

__n128 sub_214427104(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v1 + 128);
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  sub_21431E10C(*(v1 + 120));
  result = *a1;
  *(v1 + 136) = *(a1 + 16);
  *(v1 + 120) = result;
  *(v1 + 152) = v3;
  return result;
}

uint64_t sub_214427178(uint64_t a1)
{
  v3 = *(v1 + 160);

  *(v1 + 160) = a1;
  return result;
}

unint64_t sub_2144271C4(uint64_t a1)
{
  *(a1 + 8) = sub_2144271F4();
  result = sub_214427248();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2144271F4()
{
  result = qword_27C913360;
  if (!qword_27C913360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913360);
  }

  return result;
}

unint64_t sub_214427248()
{
  result = qword_27C913368;
  if (!qword_27C913368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913368);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor27AccessControlCharacteristicVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2144272B4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 168))
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

uint64_t sub_214427310(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2144273A4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 448);
  v4 = *(v1 + 456);
  v3 = *(v1 + 464);
  v5 = *(v1 + 472);
  *a1 = *(v1 + 440);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144273F0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 448);
  v7 = *(v1 + 464);

  result = *a1;
  *(v1 + 440) = *a1;
  *(v1 + 456) = v3;
  *(v1 + 464) = v4;
  *(v1 + 472) = v5;
  return result;
}

__n128 sub_214427458(uint64_t a1)
{
  sub_213FB2DF4(v1, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 208) = v3;
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = *(a1 + 240);
  v4 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v4;
  v5 = *(a1 + 176);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = v5;
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v10;
  return result;
}

void *sub_2144274D8(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

uint64_t sub_21442755C()
{
  if (*(v0 + 464))
  {
    v1 = *(v0 + 456);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214427644@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_2144276DC(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1F8uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 248;
  *(v4 + 496) = v2;
  result = sub_213FB2E54(v2, v4 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v5 + 272))
  {
    v8 = *(v6 + 208);
    *(v5 + 192) = *(v6 + 192);
    *(v5 + 208) = v8;
    *(v5 + 224) = *(v6 + 224);
    *(v5 + 240) = *(v6 + 240);
    v9 = *(v6 + 144);
    *(v5 + 128) = *(v6 + 128);
    *(v5 + 144) = v9;
    v10 = *(v6 + 176);
    *(v5 + 160) = *(v6 + 160);
    *(v5 + 176) = v10;
    v11 = *(v6 + 80);
    *(v5 + 64) = *(v6 + 64);
    *(v5 + 80) = v11;
    v12 = *(v6 + 112);
    *(v5 + 96) = *(v6 + 96);
    *(v5 + 112) = v12;
    v13 = *(v6 + 16);
    *v5 = *v6;
    *(v5 + 16) = v13;
    v14 = *(v6 + 48);
    *(v5 + 32) = *(v6 + 32);
    *(v5 + 48) = v14;
    return sub_2140A3C24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_2144277C4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2140A3E5C;
}

uint64_t sub_214427850@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 464);
  if (v4)
  {
    *a2 = *(a1 + 456);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144278C0(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214427970(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 440);
  v7 = *(v2 + 448);
  v12 = *(v3 + 472);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 464);

    *(v3 + 456) = a1;
    *(v3 + 464) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214427AB8(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 464);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 456);
    a1[1] = v3;

    return sub_214427B54;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214427B54(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if ((a2 & 1) == 0)
  {
    v14 = *a1;
    v15 = v3;
    v10 = *(v4 + 440);
    v11 = *(v4 + 448);
    v16 = *(v4 + 472);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = a1[3];

      *(v4 + 456) = v5;
      *(v4 + 464) = v3;
      return result;
    }

    goto LABEL_8;
  }

  v14 = *a1;
  v15 = v3;
  v7 = *(v4 + 440);
  v6 = *(v4 + 448);
  v16 = *(v4 + 472);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v8 = a1[3];

  *(v4 + 456) = v5;
  *(v4 + 464) = v3;
}

uint64_t sub_214427D74(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 448);
  v9 = *(a2 + 464);

  *(a2 + 440) = v4;
  *(a2 + 448) = v3;
  *(a2 + 456) = v6;
  *(a2 + 464) = v5;
  *(a2 + 472) = v7;
  return result;
}

void (*sub_214427DEC(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 448);
  v7 = *(v1 + 456);
  v6 = *(v1 + 464);
  v8 = *(v1 + 472);
  *v4 = *(v1 + 440);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_214427E84;
}

void sub_214427E84(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 448);
  v10 = *(v3 + 464);
  if (a2)
  {
    v11 = (*a1)[3];

    *(v3 + 440) = v5;
    *(v3 + 448) = v4;
    *(v3 + 456) = v7;
    *(v3 + 464) = v6;
    *(v3 + 472) = v8;
    v12 = v2[1];
    v13 = v2[3];
  }

  else
  {
    v14 = *(v3 + 448);

    *(v3 + 440) = v5;
    *(v3 + 448) = v4;
    *(v3 + 456) = v7;
    *(v3 + 464) = v6;
    *(v3 + 472) = v8;
  }

  free(v2);
}

uint64_t sub_214427F54()
{
  v1 = *v0;
  sub_21402D9F8(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_214427F88(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_214427FE8(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_214428110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214428170(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 474))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 473);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2144281B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 472) = 0;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 474) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 474) = 0;
    }

    if (a2)
    {
      *(result + 473) = -a2;
    }
  }

  return result;
}

uint64_t sub_214428288(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 474))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 473);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2144282C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 432) = 0u;
    *(result + 448) = 0u;
    *(result + 400) = 0u;
    *(result + 416) = 0u;
    *(result + 368) = 0u;
    *(result + 384) = 0u;
    *(result + 336) = 0u;
    *(result + 352) = 0u;
    *(result + 304) = 0u;
    *(result + 320) = 0u;
    *(result + 272) = 0u;
    *(result + 288) = 0u;
    *(result + 240) = 0u;
    *(result + 256) = 0u;
    *(result + 208) = 0u;
    *(result + 224) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *(result + 458) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 474) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 474) = 0;
    }

    if (a2)
    {
      *(result + 473) = -a2;
    }
  }

  return result;
}

uint64_t sub_21442834C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 432) = 0u;
    *(result + 448) = 0u;
    v2 = a2 - 2;
    *(result + 400) = 0u;
    *(result + 416) = 0u;
    *(result + 368) = 0u;
    *(result + 384) = 0u;
    *(result + 336) = 0u;
    *(result + 352) = 0u;
    *(result + 304) = 0u;
    *(result + 320) = 0u;
    *(result + 272) = 0u;
    *(result + 288) = 0u;
    *(result + 240) = 0u;
    *(result + 256) = 0u;
    *(result + 208) = 0u;
    *(result + 224) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *(result + 457) = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 473) = a2;
  return result;
}

uint64_t sub_2144283C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 473))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 272) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_214428418(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 472) = 0;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 473) = 1;
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
      *(a1 + 248) = 0;
      *(a1 + 256) = 0;
      *(a1 + 264) = 0;
      *(a1 + 272) = 2 * -a2;
      result = 0.0;
      *(a1 + 280) = 0u;
      *(a1 + 296) = 0u;
      *(a1 + 312) = 0u;
      *(a1 + 328) = 0u;
      *(a1 + 344) = 0u;
      *(a1 + 360) = 0u;
      *(a1 + 376) = 0u;
      *(a1 + 392) = 0u;
      *(a1 + 408) = 0u;
      *(a1 + 424) = 0u;
      return result;
    }

    *(a1 + 473) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214428508(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21442855C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_2144285B8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

__n128 sub_2144285CC(__n128 *a1)
{
  v3 = a1[1].n128_u16[0];
  v4 = v1->n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u16[0] = v3;
  return result;
}

uint64_t sub_21442860C@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 == 14)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v2;
  }

  return result;
}

uint64_t sub_214428674@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144286C0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21442871C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214428798@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2 == 14)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = v2;
  }

  return result;
}

uint64_t (*sub_214428800(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v2 = *(v1 + 16);
  if (v2 == 14)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v2;
    return sub_214428888;
  }

  return result;
}

uint64_t (*sub_2144288B0(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;

  return sub_214428908;
}

uint64_t sub_214428908(uint64_t *a1, char a2)
{
  v2 = a1[3];
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = *(v2 + 8);
  if (a2)
  {
    v8 = a1[1];

    *v2 = v4;
    *(v2 + 8) = v3;
    *(v2 + 16) = v5;
    *(v2 + 17) = v6;
  }

  else
  {
    v10 = *(v2 + 8);

    *v2 = v4;
    *(v2 + 8) = v3;
    *(v2 + 16) = v5;
    *(v2 + 17) = v6;
  }

  return result;
}

uint64_t sub_2144289A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v12 = *(v3 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 24);

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214428AEC(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214428B88(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

uint64_t sub_214428C20@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

__n128 sub_214428C34(__n128 *a1)
{
  v3 = a1[1].n128_u16[0];
  v4 = v1->n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u16[0] = v3;
  return result;
}

uint64_t sub_214428C94@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214428CE0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);

  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  return result;
}

unint64_t sub_214428DB4(uint64_t a1)
{
  result = sub_214428DDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_214428DDC()
{
  result = qword_27C913370;
  if (!qword_27C913370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913370);
  }

  return result;
}

uint64_t sub_214428E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214428E98()
{
  result = qword_27C913378;
  if (!qword_27C913378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913378);
  }

  return result;
}

unint64_t sub_214428EEC()
{
  result = qword_27C913380;
  if (!qword_27C913380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913380);
  }

  return result;
}

uint64_t sub_214428F40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_214428F88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_214428FFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_214429044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2144290A4@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if ((result + 1) < 3)
  {
    v2 = result + 1;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_2144290CC()
{
  result = qword_27C913388;
  if (!qword_27C913388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913388);
  }

  return result;
}

unint64_t sub_214429128(uint64_t a1)
{
  *(a1 + 8) = sub_2142FBDC0();
  result = sub_2142FBEC8();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214429208(uint64_t a1)
{
  *(a1 + 8) = sub_214096964(&qword_27C9082B8);
  result = sub_214096964(&qword_27C9082D0);
  *(a1 + 16) = result;
  return result;
}

void sub_2144292C8()
{
  sub_214429344();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_214429344()
{
  if (!qword_27C9133A0)
  {
    type metadata accessor for MBDPersistentMenuItemContent(255);
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_27C9133A0);
    }
  }
}

void sub_2144293BC()
{
  sub_214429430();
  if (v0 <= 0x3F)
  {
    sub_214429478();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_214429430()
{
  if (!qword_27C9133B8)
  {
    v0 = type metadata accessor for MBDChip();
    if (!v1)
    {
      atomic_store(v0, &qword_27C9133B8);
    }
  }
}

ValueMetadata *sub_214429478()
{
  result = qword_27C9133C0;
  if (!qword_27C9133C0)
  {
    result = &type metadata for MBDMenu;
    atomic_store(&type metadata for MBDMenu, &qword_27C9133C0);
  }

  return result;
}

unint64_t sub_2144294A8()
{
  result = qword_27C9133C8;
  if (!qword_27C9133C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9133C8);
  }

  return result;
}

uint64_t sub_2144294FC()
{
  v1 = *(v0 + *(type metadata accessor for Handwriting() + 24) + 64);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v25 = MEMORY[0x277D84F90];
  result = sub_2146D9FB8();
  v5 = 0;
  v20 = v1 + 32;
  v21 = v2;
  v22 = v1;
  while (v5 < *(v1 + 16))
  {
    v23 = v5;
    v11 = *(v20 + 8 * v5);
    v12 = *(v11 + 16);
    if (v12)
    {
      v24 = v3;

      sub_2146D9FB8();
      v13 = (v11 + 56);
      do
      {
        v14 = *(v13 - 3);
        v15 = *(v13 - 2);
        v16 = *(v13 - 1);
        v17 = *v13;
        v18 = [objc_allocWithZone(BlastDoorDrawingStrokePoint) init];
        [v18 setLocation_];
        [v18 setForce_];
        [v18 setVelocity_];
        sub_2146D9F98();
        v19 = *(v24 + 16);
        sub_2146D9FC8();
        sub_2146D9FD8();
        sub_2146D9FA8();
        v13 += 4;
        --v12;
      }

      while (v12);
      v7 = v24;
    }

    else
    {
      v6 = *(v20 + 8 * v5);

      v7 = v3;
    }

    v8 = [objc_msgSend(objc_allocWithZone(BlastDoorDrawingStroke) init)];
    sub_2144297B8(v7, &qword_27C9133D0, off_2781750C8);

    v9 = sub_2146D98E8();

    [v8 addObjectsFromArray_];

    sub_2146D9F98();
    v10 = *(v25 + 16);
    sub_2146D9FC8();
    sub_2146D9FD8();
    result = sub_2146D9FA8();
    v5 = v23 + 1;
    v3 = MEMORY[0x277D84F90];
    v1 = v22;
    if (v23 + 1 == v21)
    {
      return v25;
    }
  }

  __break(1u);
  return result;
}

char *sub_2144297B8(unint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (a1 >> 62)
  {
    v6 = sub_2146DA028();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_21409FD48(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        MEMORY[0x216054E00](i, a1);
        sub_21404A8B8(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_21409FD48((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v11 + 1;
        sub_213FDC730(v16, (v7 + 32 * v11 + 32));
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_21404A8B8(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_21409FD48((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v15 + 1;
        sub_213FDC730(v16, (v7 + 32 * v15 + 32));
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t Handwriting.bridgedToObjectiveC.getter()
{
  v0 = sub_2144299EC();
  v2 = v1;
  v3 = sub_2146D8A38();
  sub_213FB54FC(v0, v2);
  return v3;
}

uint64_t sub_2144299EC()
{
  v1 = objc_opt_self();
  sub_2144294FC();
  sub_21404A8B8(0, &qword_27C9133E8, off_2781750C0);
  v2 = sub_2146D98E8();

  v3 = type metadata accessor for Handwriting();
  v4 = (v0 + *(v3 + 24));
  v5 = v4[4];
  v6 = v4[5];
  v7 = v4[6];
  v8 = v4[7];
  v9 = *v4;
  v10 = v4[1];
  v11 = v4[2];
  v12 = v4[3];
  v13 = sub_2146D8B38();
  v14 = v0 + *(v3 + 20);
  v15 = sub_2146D8AD8();
  v16 = [v1 dataRepresentation:v2 frame:v13 bound:v15 uuid:v5 date:{v6, v7, v8, v9, v10, v11, v12}];

  if (v16)
  {
    v17 = sub_2146D8A58();
  }

  else
  {
    sub_2146D9BA8();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    sub_2146D91D8();
    return 0;
  }

  return v17;
}

uint64_t sub_214429BA8()
{
  v0 = sub_2144299EC();
  v2 = v1;
  v3 = sub_2146D8A38();
  sub_213FB54FC(v0, v2);
  return v3;
}

uint64_t sub_214429BF0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_214429C28@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_214429C34()
{
  if (*v0)
  {
    return 0x646E616D6D6F63;
  }

  else
  {
    return 0x65636976726573;
  }
}

uint64_t sub_214429C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636976726573 && a2 == 0xE700000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_214429D44(uint64_t a1)
{
  v2 = sub_214429F50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214429D80(uint64_t a1)
{
  v2 = sub_214429F50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214429DBC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9133F0, &qword_21473EC80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214429F50();
  sub_2146DAA28();
  v15 = 0;
  v11 = v13[1];
  sub_2146DA328();
  if (!v11)
  {
    v14 = 1;
    sub_2146DA378();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_214429F50()
{
  result = qword_27C9133F8;
  if (!qword_27C9133F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9133F8);
  }

  return result;
}

uint64_t sub_214429FA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913400, &qword_21473EC88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214429F50();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  v15 = sub_2146DA1B8();
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21442A1BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSClientMessageType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21442A248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSClientMessageType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21442A2FC(uint64_t a1)
{
  v2 = sub_21442A4EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21442A338(uint64_t a1)
{
  v2 = sub_21442A4EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21442A374(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913408, &qword_21473EC90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21442A4EC();
  sub_2146DAA28();
  type metadata accessor for IDSClientMessageType(0);
  sub_21442A7D4(&qword_27C913418, type metadata accessor for IDSClientMessageType);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_21442A4EC()
{
  result = qword_27C913410;
  if (!qword_27C913410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913410);
  }

  return result;
}

uint64_t sub_21442A540@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for IDSClientMessageType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913420, &qword_21473EC98);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for IDSClientMessageResult(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21442A4EC();
  sub_2146DAA08();
  if (!v2)
  {
    v16 = v19;
    sub_21442A7D4(&qword_27C913428, type metadata accessor for IDSClientMessageType);
    v17 = v21;
    sub_2146DA1C8();
    (*(v20 + 8))(v10, v7);
    sub_21442A81C(v17, v14, type metadata accessor for IDSClientMessageType);
    sub_21442A81C(v14, v16, type metadata accessor for IDSClientMessageResult);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21442A7D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21442A81C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21442A89C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913408, &qword_21473EC90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21442A4EC();
  sub_2146DAA28();
  type metadata accessor for IDSClientMessageType(0);
  sub_21442A7D4(&qword_27C913418, type metadata accessor for IDSClientMessageType);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_21442AA14(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v3 = type metadata accessor for FMFShareInvitation();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PhotosSharedAlbumMessage(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IDSNearbySessionMessage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for IDSSampleMessage(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for IDSProtobuf(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AccountsRepresentativeMessage(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for IDSClientMessageType(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21442A1BC(v2, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v32 = MEMORY[0x277D84F98];
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v80 = *v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_2146EA710;
      *(v81 + 32) = 1701869940;
      v82 = v81 + 32;
      *(v81 + 40) = 0xE400000000000000;
      *(v81 + 72) = MEMORY[0x277D84B78];
      *(v81 + 48) = v80;
      v32 = sub_2140457C0(v81);
      swift_setDeallocating();
      sub_21404C938(v82);
      swift_deallocClassInstance();
      break;
    case 2:
      memcpy(v149, v30, 0x6F3uLL);
      memcpy(v148, v30, 0x6F3uLL);
      v32 = sub_2146AA798();
      sub_2142E77C8(v149);
      break;
    case 3:
      memcpy(v149, v30, 0x1D2uLL);
      memcpy(v148, v30, 0x1D2uLL);
      v32 = sub_21460EDF4();
      sub_2142F0B5C(v149);
      break;
    case 4:
    case 14:
      return v32;
    case 5:
      v107 = *(v30 + 3);
      v108 = *(v30 + 1);
      *&v149[32] = *(v30 + 2);
      *&v149[48] = v107;
      v109 = *(v30 + 3);
      v110 = *(v30 + 5);
      *&v149[64] = *(v30 + 4);
      *&v149[80] = v110;
      v111 = *(v30 + 1);
      *v149 = *v30;
      *&v149[16] = v111;
      v148[2] = *&v149[32];
      v148[3] = v109;
      v112 = *(v30 + 5);
      v148[4] = *&v149[64];
      v148[5] = v112;
      v148[0] = *v149;
      v148[1] = v108;
      v32 = sub_2145439E4();
      sub_2142EEE64(v149);
      break;
    case 6:
      v83 = *(v30 + 9);
      v84 = *(v30 + 7);
      *&v149[128] = *(v30 + 8);
      *&v149[144] = v83;
      v85 = *(v30 + 9);
      v86 = *(v30 + 11);
      *&v149[160] = *(v30 + 10);
      *&v149[176] = v86;
      v87 = *(v30 + 5);
      v88 = *(v30 + 3);
      *&v149[64] = *(v30 + 4);
      *&v149[80] = v87;
      v89 = *(v30 + 5);
      v90 = *(v30 + 7);
      *&v149[96] = *(v30 + 6);
      *&v149[112] = v90;
      v91 = *(v30 + 1);
      *v149 = *v30;
      *&v149[16] = v91;
      v92 = *(v30 + 3);
      v94 = *v30;
      v93 = *(v30 + 1);
      *&v149[32] = *(v30 + 2);
      *&v149[48] = v92;
      v148[8] = *&v149[128];
      v148[9] = v85;
      v95 = *(v30 + 11);
      v148[10] = *&v149[160];
      v148[11] = v95;
      v148[4] = *&v149[64];
      v148[5] = v89;
      v148[6] = *&v149[96];
      v148[7] = v84;
      v148[0] = v94;
      v148[1] = v93;
      v148[2] = *&v149[32];
      v148[3] = v88;
      v32 = sub_214687AC4();
      sub_2142EEF68(v149);
      break;
    case 7:
      v116 = *(v30 + 3);
      v117 = *(v30 + 1);
      *&v149[32] = *(v30 + 2);
      *&v149[48] = v116;
      v118 = *(v30 + 3);
      *&v149[64] = *(v30 + 4);
      *&v149[73] = *(v30 + 73);
      v119 = *(v30 + 1);
      *v149 = *v30;
      *&v149[16] = v119;
      v148[2] = *&v149[32];
      v148[3] = v118;
      v148[4] = *(v30 + 4);
      *(&v148[4] + 9) = *(v30 + 73);
      v148[0] = *v149;
      v148[1] = v117;
      v32 = sub_21447D1AC();
      sub_2142EF114(v149);
      break;
    case 8:
      sub_21442A81C(v30, v6, type metadata accessor for FMFShareInvitation);
      v32 = sub_2144DF070();
      sub_21442BE5C(v6, type metadata accessor for FMFShareInvitation);
      break;
    case 9:
      memcpy(v149, v30, sizeof(v149));
      v115 = memcpy(v148, v30, 0xCF3uLL);
      v32 = sub_2146457E0(v115);
      sub_2142F2574(v149);
      break;
    case 10:
      v49 = *(v30 + 7);
      v50 = *(v30 + 9);
      *&v149[128] = *(v30 + 8);
      *&v149[144] = v50;
      *&v149[155] = *(v30 + 155);
      v51 = *(v30 + 3);
      v52 = *(v30 + 5);
      *&v149[64] = *(v30 + 4);
      *&v149[80] = v52;
      v54 = *(v30 + 5);
      v53 = *(v30 + 6);
      v55 = v53;
      *&v149[112] = *(v30 + 7);
      *&v149[96] = v53;
      v56 = *(v30 + 1);
      *v149 = *v30;
      *&v149[16] = v56;
      v57 = *(v30 + 2);
      v59 = *v30;
      v58 = *(v30 + 1);
      v60 = v57;
      *&v149[48] = *(v30 + 3);
      *&v149[32] = v57;
      v61 = *(v30 + 9);
      v148[8] = *&v149[128];
      v148[9] = v61;
      *(&v148[9] + 11) = *(v30 + 155);
      v148[4] = *&v149[64];
      v148[5] = v54;
      v148[6] = v55;
      v148[7] = v49;
      v148[0] = v59;
      v148[1] = v58;
      v148[2] = v60;
      v148[3] = v51;
      v32 = sub_2146461DC();
      sub_2142F2C90(v149);
      break;
    case 11:
      memcpy(v149, v30, 0x19BuLL);
      memcpy(v148, v30, 0x19BuLL);
      v32 = sub_21464724C();
      sub_2142F31E8(v149);
      break;
    case 12:
      memcpy(v149, v30, 0xC89uLL);
      v106 = memcpy(v148, v30, 0xC89uLL);
      v32 = sub_214646870(v106);
      sub_2142F37B0(v149);
      break;
    case 13:
      v41 = *(v30 + 7);
      v42 = *(v30 + 5);
      *&v149[96] = *(v30 + 6);
      *&v149[112] = v41;
      v43 = *(v30 + 7);
      *&v149[128] = *(v30 + 8);
      v44 = *(v30 + 3);
      v45 = *(v30 + 1);
      *&v149[32] = *(v30 + 2);
      *&v149[48] = v44;
      v46 = *(v30 + 3);
      v47 = *(v30 + 5);
      *&v149[64] = *(v30 + 4);
      *&v149[80] = v47;
      v48 = *(v30 + 1);
      *v149 = *v30;
      *&v149[16] = v48;
      v148[6] = *&v149[96];
      v148[7] = v43;
      v148[8] = *(v30 + 8);
      v148[2] = *&v149[32];
      v148[3] = v46;
      v148[4] = *&v149[64];
      v148[5] = v42;
      v149[144] = v30[144];
      LOBYTE(v148[9]) = v30[144];
      v148[0] = *v149;
      v148[1] = v45;
      v32 = sub_214647040();
      sub_2142F36AC(v149);
      break;
    case 15:
      sub_21442A81C(v30, v22, type metadata accessor for IDSProtobuf);
      v32 = sub_21404B408();
      sub_21442BE5C(v22, type metadata accessor for IDSProtobuf);
      break;
    case 16:
      sub_21442A81C(v30, v18, type metadata accessor for IDSSampleMessage);
      v32 = sub_214470B7C();
      sub_21442BE5C(v18, type metadata accessor for IDSSampleMessage);
      break;
    case 17:
      memcpy(v149, v30, 0x679uLL);
      memcpy(v148, v30, 0x679uLL);
      v32 = sub_2145B3138();
      sub_21431F758(v149);
      break;
    case 18:
      v113 = *v30;
      *&v149[24] = MEMORY[0x277D83E88];
      *v149 = v113;
      sub_213FDC730(v149, v148);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v150 = v32;
      sub_2140524DC(v148, 0xD000000000000017, 0x800000021478B080, isUniquelyReferenced_nonNull_native);
      v32 = v150;
      break;
    case 19:
      memcpy(v149, v30, 0x261uLL);
      memcpy(v148, v30, 0x261uLL);
      v32 = sub_2146AE124();
      sub_21431F6B0(v149);
      break;
    case 20:
      sub_21442A81C(v30, v14, type metadata accessor for IDSNearbySessionMessage);
      v32 = sub_21441AA84();
      sub_21442BE5C(v14, type metadata accessor for IDSNearbySessionMessage);
      break;
    case 21:
      sub_21442A81C(v30, v10, type metadata accessor for PhotosSharedAlbumMessage);
      v32 = sub_2143E11F4();
      sub_21442BE5C(v10, type metadata accessor for PhotosSharedAlbumMessage);
      break;
    case 22:
      memcpy(v149, v30, 0x179uLL);
      memcpy(v148, v30, 0x179uLL);
      v32 = sub_214642A54();
      sub_21431F608(v149);
      break;
    case 23:
      memcpy(v149, v30, 0x219uLL);
      memcpy(v148, v30, 0x219uLL);
      v32 = sub_214057178();
      sub_214300F50(v149);
      break;
    case 24:
      memcpy(v149, v30, 0x151uLL);
      memcpy(v148, v30, 0x151uLL);
      v32 = sub_21404E400();
      sub_21404C67C(v149);
      break;
    case 25:
      v62 = *(v30 + 11);
      v63 = *(v30 + 13);
      *&v149[192] = *(v30 + 12);
      *&v149[208] = v63;
      *&v149[218] = *(v30 + 218);
      v64 = *(v30 + 7);
      v65 = *(v30 + 9);
      *&v149[128] = *(v30 + 8);
      *&v149[144] = v65;
      v67 = *(v30 + 9);
      v66 = *(v30 + 10);
      v68 = v66;
      *&v149[176] = *(v30 + 11);
      *&v149[160] = v66;
      v69 = *(v30 + 3);
      v70 = *(v30 + 5);
      *&v149[64] = *(v30 + 4);
      *&v149[80] = v70;
      v72 = *(v30 + 5);
      v71 = *(v30 + 6);
      v73 = v71;
      *&v149[112] = *(v30 + 7);
      *&v149[96] = v71;
      v74 = *(v30 + 1);
      *v149 = *v30;
      *&v149[16] = v74;
      v75 = *(v30 + 2);
      v77 = *v30;
      v76 = *(v30 + 1);
      v78 = v75;
      *&v149[48] = *(v30 + 3);
      *&v149[32] = v75;
      v79 = *(v30 + 13);
      v148[12] = *&v149[192];
      v148[13] = v79;
      *(&v148[13] + 10) = *(v30 + 218);
      v148[8] = *&v149[128];
      v148[9] = v67;
      v148[10] = v68;
      v148[11] = v62;
      v148[4] = *&v149[64];
      v148[5] = v72;
      v148[6] = v73;
      v148[7] = v64;
      v148[0] = v77;
      v148[1] = v76;
      v148[2] = v78;
      v148[3] = v69;
      v32 = sub_21404F1A4();
      sub_2142F6960(v149);
      break;
    case 26:
      v139 = *(v30 + 3);
      v140 = *(v30 + 5);
      *&v149[64] = *(v30 + 4);
      *&v149[80] = v140;
      v141 = *(v30 + 1);
      *v149 = *v30;
      *&v149[16] = v141;
      v142 = *(v30 + 2);
      v144 = *v30;
      v143 = *(v30 + 1);
      v145 = v142;
      *&v149[48] = *(v30 + 3);
      *&v149[32] = v142;
      v146 = *(v30 + 5);
      v148[4] = *&v149[64];
      v148[5] = v146;
      v148[0] = v144;
      v148[1] = v143;
      *&v149[96] = *(v30 + 12);
      *&v148[6] = *(v30 + 12);
      v148[2] = v145;
      v148[3] = v139;
      v32 = sub_21404F848();
      sub_2142F6A64(v149);
      break;
    case 27:
      v33 = *(v30 + 3);
      v34 = *(v30 + 5);
      *&v149[64] = *(v30 + 4);
      *&v149[80] = v34;
      v35 = *(v30 + 1);
      *v149 = *v30;
      *&v149[16] = v35;
      v36 = *(v30 + 2);
      v38 = *v30;
      v37 = *(v30 + 1);
      v39 = v36;
      *&v149[48] = *(v30 + 3);
      *&v149[32] = v36;
      v40 = *(v30 + 5);
      v148[4] = *&v149[64];
      v148[5] = v40;
      v148[0] = v38;
      v148[1] = v37;
      *&v149[96] = *(v30 + 12);
      *&v148[6] = *(v30 + 12);
      v148[2] = v39;
      v148[3] = v33;
      v32 = sub_21404FB2C();
      sub_2142F6D18(v149);
      break;
    case 28:
      v120 = *(v30 + 9);
      v121 = *(v30 + 11);
      *&v149[160] = *(v30 + 10);
      *&v149[176] = v121;
      v122 = *(v30 + 5);
      v123 = *(v30 + 7);
      *&v149[96] = *(v30 + 6);
      *&v149[112] = v123;
      v125 = *(v30 + 7);
      v124 = *(v30 + 8);
      v126 = v124;
      *&v149[144] = *(v30 + 9);
      *&v149[128] = v124;
      v127 = *(v30 + 1);
      v128 = *(v30 + 3);
      *&v149[32] = *(v30 + 2);
      *&v149[48] = v128;
      v130 = *(v30 + 3);
      v129 = *(v30 + 4);
      v131 = v129;
      *&v149[80] = *(v30 + 5);
      *&v149[64] = v129;
      v132 = *v30;
      v133 = *v30;
      *&v149[16] = *(v30 + 1);
      *v149 = v132;
      v134 = *(v30 + 11);
      v148[10] = *&v149[160];
      v148[11] = v134;
      v148[6] = *&v149[96];
      v148[7] = v125;
      v148[8] = v126;
      v148[9] = v120;
      v148[2] = *&v149[32];
      v148[3] = v130;
      v148[4] = v131;
      v148[5] = v122;
      *&v149[191] = *(v30 + 191);
      *(&v148[11] + 15) = *(v30 + 191);
      v148[0] = v133;
      v148[1] = v127;
      v32 = sub_214464724();
      sub_2142F6E1C(v149);
      break;
    case 29:
      v135 = *(v30 + 3);
      v136 = *(v30 + 1);
      *&v149[32] = *(v30 + 2);
      *&v149[48] = v135;
      v137 = *(v30 + 3);
      *&v149[64] = *(v30 + 4);
      v138 = *(v30 + 1);
      *v149 = *v30;
      *&v149[16] = v138;
      v148[2] = *&v149[32];
      v148[3] = v137;
      v148[4] = *(v30 + 4);
      *&v149[80] = *(v30 + 40);
      LOWORD(v148[5]) = *(v30 + 40);
      v148[0] = *v149;
      v148[1] = v136;
      v32 = sub_21406AD60();
      sub_2142F6FC8(v149);
      break;
    case 30:
      v149[0] = *v30;
      v32 = sub_2143CB774();
      break;
    case 31:
      v96 = *(v30 + 5);
      v97 = *(v30 + 7);
      *&v149[96] = *(v30 + 6);
      *&v149[112] = v97;
      v98 = *(v30 + 1);
      v99 = *(v30 + 3);
      *&v149[32] = *(v30 + 2);
      *&v149[48] = v99;
      v101 = *(v30 + 3);
      v100 = *(v30 + 4);
      v102 = v100;
      *&v149[80] = *(v30 + 5);
      *&v149[64] = v100;
      v103 = *v30;
      v104 = *v30;
      *&v149[16] = *(v30 + 1);
      *v149 = v103;
      v105 = *(v30 + 7);
      v148[6] = *&v149[96];
      v148[7] = v105;
      v148[2] = *&v149[32];
      v148[3] = v101;
      v148[4] = v102;
      v148[5] = v96;
      v149[128] = v30[128];
      LOBYTE(v148[8]) = v30[128];
      v148[0] = v104;
      v148[1] = v98;
      v32 = sub_2143CB17C();
      sub_214301940(v149);
      break;
    case 32:
      memcpy(v149, v30, 0x1A1uLL);
      memcpy(v148, v30, 0x1A1uLL);
      v32 = sub_21448FE00();
      sub_214301A44(v149);
      break;
    default:
      sub_21442A81C(v30, v26, type metadata accessor for AccountsRepresentativeMessage);
      v32 = sub_2140683D8();
      sub_21442BE5C(v26, type metadata accessor for AccountsRepresentativeMessage);
      break;
  }

  return v32;
}

uint64_t sub_21442B754(uint64_t a1)
{
  sub_21442AA14(a1);
  v1 = sub_2146D9468();

  return v1;
}

unint64_t sub_21442B7B0()
{
  result = qword_27C913430;
  if (!qword_27C913430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913430);
  }

  return result;
}

unint64_t sub_21442B808()
{
  result = qword_27C913438;
  if (!qword_27C913438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913438);
  }

  return result;
}

uint64_t sub_21442B85C(uint64_t a1)
{
  result = sub_21442A7D4(&qword_27C913440, type metadata accessor for IDSClientMessageResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21442B8B4(uint64_t a1)
{
  *(a1 + 8) = sub_21442A7D4(&qword_27C913448, type metadata accessor for IDSClientMessageResult);
  result = sub_21442A7D4(&qword_27C913450, type metadata accessor for IDSClientMessageResult);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21442B938(uint64_t a1)
{
  *(a1 + 8) = sub_21442A7D4(&qword_27C913428, type metadata accessor for IDSClientMessageType);
  result = sub_21442A7D4(&qword_27C913418, type metadata accessor for IDSClientMessageType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21442B9F4()
{
  result = type metadata accessor for IDSClientMessageType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21442BA60()
{
  result = type metadata accessor for AccountsRepresentativeMessage(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FMFShareInvitation();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for IDSProtobuf(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for IDSSampleMessage(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for IDSNearbySessionMessage(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for PhotosSharedAlbumMessage(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_21442BC50()
{
  result = qword_27C913458;
  if (!qword_27C913458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913458);
  }

  return result;
}

unint64_t sub_21442BCA8()
{
  result = qword_27C913460;
  if (!qword_27C913460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913460);
  }

  return result;
}

unint64_t sub_21442BD00()
{
  result = qword_27C913468;
  if (!qword_27C913468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913468);
  }

  return result;
}

unint64_t sub_21442BD58()
{
  result = qword_27C913470;
  if (!qword_27C913470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913470);
  }

  return result;
}

unint64_t sub_21442BDB0()
{
  result = qword_27C913478;
  if (!qword_27C913478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913478);
  }

  return result;
}

unint64_t sub_21442BE08()
{
  result = qword_27C913480;
  if (!qword_27C913480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913480);
  }

  return result;
}

uint64_t sub_21442BE5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t EmojiTapBack.$associatedMessageEmoji.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 72);
  v3 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 EmojiTapBack.$associatedMessageEmoji.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);

  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t EmojiTapBack.$participantDestinationIdentifiers.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 EmojiTapBack.$participantDestinationIdentifiers.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1[6].n128_u64[1];
  v6 = v1[7].n128_u64[0];

  result = *a1;
  v1[6] = *a1;
  v1[7].n128_u64[0] = v3;
  v1[7].n128_u8[8] = v4;
  return result;
}

uint64_t EmojiTapBack.associatedMessageEmoji.getter()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t EmojiTapBack.participantDestinationIdentifiers.getter()
{
  if (*(v0 + 112))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

BlastDoor::EmojiTapBack::AssociatedMessageType __swiftcall EmojiTapBack.AssociatedMessageType.init(defaultingRawValue:)(Swift::Int defaultingRawValue)
{
  v2 = defaultingRawValue == 2006;
  if (defaultingRawValue == 3006)
  {
    v2 = 2;
  }

  *v1 = v2;
  return defaultingRawValue;
}

BlastDoor::EmojiTapBack::AssociatedMessageType_optional __swiftcall EmojiTapBack.AssociatedMessageType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 3006)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue == 2006)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (!rawValue)
  {
    v3 = 0;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t sub_21442C17C()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_21473F388[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_21442C204()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_21473F388[v1]);
  return sub_2146DA9B8();
}

uint64_t EmojiTapBack.associatedMessageGUID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t EmojiTapBack.associatedMessageGUID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t EmojiTapBack.associatedMessageFallbackHash.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t EmojiTapBack.associatedMessageFallbackHash.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t EmojiTapBack.associatedMessageRange.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t EmojiTapBack.associatedMessageRange.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2;
  return result;
}

uint64_t EmojiTapBack.associatedMessageEmoji.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  v12 = *(v3 + 88);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 80);

    *(v3 + 72) = a1;
    *(v3 + 80) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*EmojiTapBack.associatedMessageEmoji.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 80);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 72);
    a1[1] = v3;

    return sub_2143C00B4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*EmojiTapBack.$associatedMessageEmoji.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 64);
  v7 = *(v1 + 72);
  v6 = *(v1 + 80);
  v8 = *(v1 + 88);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143C03E4;
}

uint64_t EmojiTapBack.participantDestinationIdentifiers.setter(uint64_t a1)
{
  v2 = v1;
  v11 = a1;
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v10 = *(v2 + 120);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v2 + 112);

    *(v2 + 112) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*EmojiTapBack.participantDestinationIdentifiers.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 112);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_2143C0798;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*EmojiTapBack.$participantDestinationIdentifiers.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  *v4 = *(v1 + 96);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2143C0A84;
}

uint64_t EmojiTapBack.messageSummaryInfo.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[11];
  v9 = v1[10];
  v10 = v2;
  v11 = v1[12];
  v3 = v11;
  v4 = v1[9];
  v8[0] = v1[8];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_2140915E8(v8, &v7);
}

__n128 EmojiTapBack.messageSummaryInfo.setter(uint64_t a1)
{
  v3 = v1[11];
  v7[2] = v1[10];
  v7[3] = v3;
  v7[4] = v1[12];
  v4 = v1[9];
  v7[0] = v1[8];
  v7[1] = v4;
  sub_214091658(v7);
  v5 = *(a1 + 48);
  v1[10] = *(a1 + 32);
  v1[11] = v5;
  v1[12] = *(a1 + 64);
  result = *(a1 + 16);
  v1[8] = *a1;
  v1[9] = result;
  return result;
}

uint64_t EmojiTapBack.plainTextBody.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return v1;
}

uint64_t EmojiTapBack.plainTextBody.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 216);

  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
  return result;
}

uint64_t EmojiTapBack.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_2146D9EF8();
  MEMORY[0x2160545D0](40, 0xE100000000000000);
  MEMORY[0x2160545D0](0x706154696A6F6D45, 0xEC0000006B636142);
  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBF0);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBB0);
  MEMORY[0x2160545D0](v2, v3);
  MEMORY[0x2160545D0](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_21442CBE8()
{
  result = qword_27C913488;
  if (!qword_27C913488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913488);
  }

  return result;
}

uint64_t sub_21442CC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_21442CD10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21442CD58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21442CDF0()
{
  result = qword_27C913490;
  if (!qword_27C913490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C913490);
  }

  return result;
}

void sub_21442CE44(uint64_t a1@<X8>)
{
  sub_214440324();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_21442CE90(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_214440324();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

uint64_t sub_21442CEC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443DE7C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_21442CF14@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_21442CF2C()
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

void *sub_21442CF58@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_21442CF74(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_21442CF94()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_2146DA958();
  sub_2146D94E8();
  return sub_2146DA9B8();
}

uint64_t sub_21442D000(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443DED0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21442D04C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_2146DA958();
  sub_2146D94E8();
  return sub_2146DA9B8();
}

BOOL sub_21442D0B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t sub_21442D0F0()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19AA0);
  __swift_project_value_buffer(v0, qword_27CA19AA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6930;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "date";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "handshakeToken";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "identifier";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "buildNumber";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "userInfo";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "version";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21442D3BC()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          v1 = *(type metadata accessor for SecureCloudInviteRequestProtobuf(0) + 32);
          goto LABEL_3;
        case 5:
          sub_21442D51C();
          break;
        case 6:
          v5 = *(type metadata accessor for SecureCloudInviteRequestProtobuf(0) + 40);
          sub_2146D8F58();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v6 = *(type metadata accessor for SecureCloudInviteRequestProtobuf(0) + 20);
          sub_2146D8F28();
          break;
        case 2:
          v7 = *(type metadata accessor for SecureCloudInviteRequestProtobuf(0) + 24);
LABEL_3:
          v0 = 0;
          sub_2146D8F38();
          break;
        case 3:
          v4 = *(type metadata accessor for SecureCloudInviteRequestProtobuf(0) + 28);
          goto LABEL_3;
      }
    }
  }
}

uint64_t sub_21442D51C()
{
  v0 = *(type metadata accessor for SecureCloudInviteRequestProtobuf(0) + 36);
  type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  sub_21443B758(&qword_27C913890, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
  return sub_2146D8F98();
}

uint64_t sub_21442D5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21442E2B8(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteRequestProtobuf);
  if (!v4)
  {
    sub_21442E334(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteRequestProtobuf);
    sub_21442E3B8(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteRequestProtobuf);
    sub_21442E43C(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteRequestProtobuf);
    sub_21442D710(v3, a1, a2, a3);
    sub_214439A5C(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteRequestProtobuf);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21442D710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913940, &unk_214740F40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SecureCloudInviteRequestProtobuf(0);
  sub_213FB2E54(a1 + *(v14 + 36), v8, &qword_27C913940, &unk_214740F40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &qword_27C913940, &unk_214740F40);
  }

  sub_21443CC10(v8, v13, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
  sub_21443B758(&qword_27C913890, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
  sub_2146D90F8();
  return sub_21443CC78(v13, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
}

uint64_t sub_21442D920@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1[9];
  v11 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  result = (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v13 = a2 + a1[10];
  *v13 = 0;
  *(v13 + 4) = 1;
  return result;
}

uint64_t sub_21442DA20(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913938, type metadata accessor for SecureCloudInviteRequestProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21442DAC0(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C9138D0, type metadata accessor for SecureCloudInviteRequestProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21442DB2C()
{
  sub_21443B758(&qword_27C9138D0, type metadata accessor for SecureCloudInviteRequestProtobuf);

  return sub_2146D9008();
}

uint64_t sub_21442DBAC()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19AB8);
  __swift_project_value_buffer(v0, qword_27CA19AB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6980;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "date";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "handshakeToken";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "identifier";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "buildNumber";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "type";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "userInfo";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "version";
  *(v20 + 1) = 7;
  v20[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21442DEB0()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          v6 = *(type metadata accessor for SecureCloudInviteResponseProtobuf(0) + 20);
          sub_2146D8F28();
          break;
        case 2:
          v7 = *(type metadata accessor for SecureCloudInviteResponseProtobuf(0) + 24);
LABEL_3:
          v0 = 0;
          sub_2146D8F38();
          break;
        case 3:
          v4 = *(type metadata accessor for SecureCloudInviteResponseProtobuf(0) + 28);
          goto LABEL_3;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_21442E0A8();
      }

      else if (result == 7)
      {
        v5 = *(type metadata accessor for SecureCloudInviteResponseProtobuf(0) + 44);
        sub_2146D8F58();
      }
    }

    else
    {
      if (result == 4)
      {
        v1 = *(type metadata accessor for SecureCloudInviteResponseProtobuf(0) + 32);
        goto LABEL_3;
      }

      sub_21442E034();
    }
  }
}

uint64_t sub_21442E034()
{
  v0 = *(type metadata accessor for SecureCloudInviteResponseProtobuf(0) + 36);
  sub_21443DE7C();
  return sub_2146D8EB8();
}

uint64_t sub_21442E0A8()
{
  v0 = *(type metadata accessor for SecureCloudInviteResponseProtobuf(0) + 40);
  type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  sub_21443B758(&qword_27C913890, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
  return sub_2146D8F98();
}

uint64_t sub_21442E15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21442E2B8(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteResponseProtobuf);
  if (!v4)
  {
    sub_21442E334(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteResponseProtobuf);
    sub_21442E3B8(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteResponseProtobuf);
    sub_21442E43C(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteResponseProtobuf);
    sub_21442E4C0(v3);
    sub_21442E564(v3, a1, a2, a3);
    sub_2144302CC(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteResponseProtobuf);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21442E2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 20));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_2146D9098();
  }

  return result;
}

uint64_t sub_21442E334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 24));
  if (v7[1])
  {
    v8 = *v7;
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21442E3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 28));
  if (v7[1])
  {
    v8 = *v7;
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21442E43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 32));
  if (v7[1])
  {
    v8 = *v7;
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21442E4C0(uint64_t a1)
{
  result = type metadata accessor for SecureCloudInviteResponseProtobuf(0);
  v3 = (a1 + *(result + 36));
  if ((*(v3 + 9) & 1) == 0)
  {
    v4 = *v3;
    v5 = v3[1] & 1;
    sub_21443DE7C();
    return sub_2146D9038();
  }

  return result;
}

uint64_t sub_21442E564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913940, &unk_214740F40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SecureCloudInviteResponseProtobuf(0);
  sub_213FB2E54(a1 + *(v14 + 40), v8, &qword_27C913940, &unk_214740F40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &qword_27C913940, &unk_214740F40);
  }

  sub_21443CC10(v8, v13, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
  sub_21443B758(&qword_27C913890, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
  sub_2146D90F8();
  return sub_21443CC78(v13, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
}

uint64_t sub_21442E774@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *(v11 + 8) = 256;
  *v11 = 0;
  v12 = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  result = (*(*(v12 - 8) + 56))(a2 + v10, 1, 1, v12);
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t sub_21442E884(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913950, type metadata accessor for SecureCloudInviteResponseProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21442E924(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C9138B0, type metadata accessor for SecureCloudInviteResponseProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21442E990()
{
  sub_21443B758(&qword_27C9138B0, type metadata accessor for SecureCloudInviteResponseProtobuf);

  return sub_2146D9008();
}

uint64_t sub_21442EA10()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19AD0);
  __swift_project_value_buffer(v0, qword_27CA19AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_214737980;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "accept";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "incompatibleVersion";
  *(v9 + 8) = 19;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "incompatibleAccount";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ineligibleDevices";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "invalidAddress";
  *(v14 + 8) = 14;
  *(v14 + 16) = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_21442ECBC()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19AE8);
  __swift_project_value_buffer(v0, qword_27CA19AE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "activityDataPreview";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "secureCloudShareItem";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "legacyShareLocations";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "cloudKitAddress";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21442EF0C()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4)
      {
        v1 = *(type metadata accessor for SecureCloudInviteUserInfoProtobuf(0) + 28);
        goto LABEL_3;
      }

      if (result == 5)
      {
        v5 = *(type metadata accessor for SecureCloudInviteUserInfoProtobuf(0) + 32);
        sub_2146D8F38();
      }
    }

    else if (result == 1)
    {
      v6 = *(type metadata accessor for SecureCloudInviteUserInfoProtobuf(0) + 20);
LABEL_3:
      v0 = 0;
      sub_2146D8EC8();
    }

    else if (result == 3)
    {
      v4 = *(type metadata accessor for SecureCloudInviteUserInfoProtobuf(0) + 24);
      goto LABEL_3;
    }
  }
}

uint64_t sub_21442F00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_214433444(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
  if (!v4)
  {
    sub_21442F0F0(v3);
    sub_21443B3D0(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
    sub_21442E43C(v3, a1, a2, a3, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21442F0F0(uint64_t a1)
{
  result = type metadata accessor for SecureCloudInviteUserInfoProtobuf(0);
  v3 = a1 + *(result + 24);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_21402D9F8(*v3, *(v3 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v5, v4);
  }

  return result;
}

double sub_21442F194@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  result = 0.0;
  v5 = a1[6];
  *(a2 + a1[5]) = xmmword_2146E68C0;
  *(a2 + v5) = xmmword_2146E68C0;
  v6 = a1[8];
  *(a2 + a1[7]) = xmmword_2146E68C0;
  v7 = (a2 + v6);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_21442F22C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913960, type metadata accessor for SecureCloudInviteUserInfoProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21442F2CC(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C913890, type metadata accessor for SecureCloudInviteUserInfoProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21442F338()
{
  sub_21443B758(&qword_27C913890, type metadata accessor for SecureCloudInviteUserInfoProtobuf);

  return sub_2146D9008();
}

uint64_t sub_21442F444(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913910, type metadata accessor for SecureCloudPingRequestProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21442F4E4(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C913878, type metadata accessor for SecureCloudPingRequestProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21442F550()
{
  sub_21443B758(&qword_27C913878, type metadata accessor for SecureCloudPingRequestProtobuf);

  return sub_2146D9008();
}

uint64_t sub_21442F5FC()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19B18);
  __swift_project_value_buffer(v0, qword_27CA19B18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
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
  *(v5 + v2) = 2;
  *v10 = "requestIdentifier";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21442F7C4()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for SecureCloudPingResponseProtobuf(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v4 = *(type metadata accessor for SecureCloudPingResponseProtobuf(0) + 24);
LABEL_3:
      v0 = 0;
      sub_2146D8F38();
    }
  }
}

uint64_t sub_21442F86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 20));
  if (v7[1])
  {
    v8 = *v7;
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21442F96C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913968, type metadata accessor for SecureCloudPingResponseProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21442FA0C(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C913858, type metadata accessor for SecureCloudPingResponseProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21442FA78()
{
  sub_21443B758(&qword_27C913858, type metadata accessor for SecureCloudPingResponseProtobuf);

  return sub_2146D9008();
}

uint64_t sub_21442FB24()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19B30);
  __swift_project_value_buffer(v0, qword_27CA19B30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2146E6980;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 2;
  *v4 = "buildNumber";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_2146D9118();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 3;
  *v8 = "date";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "upgradeToken";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "identifier";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "secureCloudShareItem";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "type";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "version";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v7();
  return sub_2146D9128();
}

uint64_t sub_21442FE24()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 4)
    {
      switch(result)
      {
        case 2:
          v1 = *(type metadata accessor for SecureCloudUpgradeMessageProtobuf(0) + 20);
          goto LABEL_3;
        case 3:
          v8 = *(type metadata accessor for SecureCloudUpgradeMessageProtobuf(0) + 24);
          sub_2146D8F28();
          break;
        case 4:
          v5 = *(type metadata accessor for SecureCloudUpgradeMessageProtobuf(0) + 28);
          goto LABEL_3;
      }
    }

    else if (result > 6)
    {
      if (result == 7)
      {
        sub_21442FFB4();
      }

      else if (result == 8)
      {
        v6 = *(type metadata accessor for SecureCloudUpgradeMessageProtobuf(0) + 44);
        sub_2146D8F58();
      }
    }

    else if (result == 5)
    {
      v7 = *(type metadata accessor for SecureCloudUpgradeMessageProtobuf(0) + 32);
LABEL_3:
      v0 = 0;
      sub_2146D8F38();
    }

    else
    {
      v4 = *(type metadata accessor for SecureCloudUpgradeMessageProtobuf(0) + 36);
      sub_2146D8EC8();
    }
  }
}

uint64_t sub_21442FFB4()
{
  v0 = *(type metadata accessor for SecureCloudUpgradeMessageProtobuf(0) + 40);
  sub_21443DED0();
  return sub_2146D8EB8();
}

uint64_t sub_214430028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21442F86C(v3, a1, a2, a3, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
  if (!v4)
  {
    sub_2144334E8(v3, a1, a2, a3, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
    sub_21442E3B8(v3, a1, a2, a3, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
    sub_21442E43C(v3, a1, a2, a3, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
    sub_214430188(v3);
    sub_214430228(v3);
    sub_2144302CC(v3, a1, a2, a3, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_214430188(uint64_t a1)
{
  result = type metadata accessor for SecureCloudUpgradeMessageProtobuf(0);
  v3 = a1 + *(result + 36);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_21402D9F8(*v3, *(v3 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v5, v4);
  }

  return result;
}

uint64_t sub_214430228(uint64_t a1)
{
  result = type metadata accessor for SecureCloudUpgradeMessageProtobuf(0);
  v3 = (a1 + *(result + 40));
  if ((*(v3 + 9) & 1) == 0)
  {
    v4 = *v3;
    v5 = v3[1] & 1;
    sub_21443DED0();
    return sub_2146D9038();
  }

  return result;
}

uint64_t sub_2144302CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 44));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_2146D90B8();
  }

  return result;
}

double sub_214430350@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  result = 0.0;
  v11 = a1[10];
  *(a2 + a1[9]) = xmmword_2146E68C0;
  v12 = a2 + v11;
  *v12 = 0;
  *(v12 + 8) = 256;
  v13 = a2 + a1[11];
  *v13 = 0;
  *(v13 + 4) = 1;
  return result;
}

uint64_t sub_214430424(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913970, type metadata accessor for SecureCloudUpgradeMessageProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2144304C4(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C913838, type metadata accessor for SecureCloudUpgradeMessageProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214430530()
{
  sub_21443B758(&qword_27C913838, type metadata accessor for SecureCloudUpgradeMessageProtobuf);

  return sub_2146D9008();
}

uint64_t sub_2144305B0()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19B48);
  __swift_project_value_buffer(v0, qword_27CA19B48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "request";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "response";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21443079C()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19B60);
  __swift_project_value_buffer(v0, qword_27CA19B60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "date";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "handshakeToken";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214430964()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for SecureCloudWithdrawRequestProtobuf(0) + 20);
      sub_2146D8F28();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for SecureCloudWithdrawRequestProtobuf(0) + 24);
      sub_2146D8F38();
    }
  }

  return result;
}

uint64_t sub_214430A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21442E2B8(v3, a1, a2, a3, type metadata accessor for SecureCloudWithdrawRequestProtobuf);
  if (!v4)
  {
    sub_21442E334(v3, a1, a2, a3, type metadata accessor for SecureCloudWithdrawRequestProtobuf);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_214430ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2146D8DE8();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_214430B4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913980, type metadata accessor for SecureCloudWithdrawRequestProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214430BEC(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C913818, type metadata accessor for SecureCloudWithdrawRequestProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214430C58()
{
  sub_21443B758(&qword_27C913818, type metadata accessor for SecureCloudWithdrawRequestProtobuf);

  return sub_2146D9008();
}

uint64_t sub_214430CD8()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19B78);
  __swift_project_value_buffer(v0, qword_27CA19B78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_21473F3A0;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "sample";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "type";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 5;
  *v11 = "duration";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 6;
  *v13 = "totalEnergyBurnedInCanonicalUnit";
  *(v13 + 1) = 32;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 7;
  *v15 = "totalBasalEnergyBurnedInCanonicalUnit";
  *(v15 + 1) = 37;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 8;
  *v17 = "totalDistanceInCanonicalUnit";
  *(v17 + 1) = 28;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 9;
  *v19 = "goalType";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 10;
  *v21 = "goalInCanonicalUnit";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 11;
  *v22 = "bundleID";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 12;
  *v24 = "isWatchWorkout";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 13;
  *v26 = "isIndoorWorkout";
  *(v26 + 1) = 15;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 14;
  *v28 = "deviceManufacturer";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 15;
  *v30 = "deviceModel";
  *(v30 + 1) = 11;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 16;
  *v32 = "amm";
  *(v32 + 1) = 3;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 17;
  *v34 = "seymourCatalogWorkoutIdentifier";
  *(v34 + 1) = 31;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 18;
  *v36 = "seymourMediaType";
  *(v36 + 1) = 16;
  v36[16] = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_214431244()
{
  v1 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample;
  v2 = type metadata accessor for SampleProtobuf(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__type;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__duration;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalEnergyBurnedInCanonicalUnit;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalBasalEnergyBurnedInCanonicalUnit;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalDistanceInCanonicalUnit;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalType;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalInCanonicalUnit;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__bundleID);
  *v10 = 0;
  v10[1] = 0;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isWatchWorkout) = 2;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isIndoorWorkout) = 2;
  v11 = (v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceManufacturer);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceModel);
  *v12 = 0;
  v12[1] = 0;
  v13 = v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = (v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourCatalogWorkoutIdentifier);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourMediaType);
  *v15 = 0;
  v15[1] = 0;
  return v0;
}

uint64_t sub_2144313C4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913638, "z\t\t");
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v74 - v5;
  v7 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample;
  v8 = type metadata accessor for SampleProtobuf(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__type;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__duration;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalEnergyBurnedInCanonicalUnit;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalBasalEnergyBurnedInCanonicalUnit;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalDistanceInCanonicalUnit;
  v75 = v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalDistanceInCanonicalUnit;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalType;
  v76 = v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalType;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalInCanonicalUnit;
  v77 = v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalInCanonicalUnit;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = (v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__bundleID);
  v78 = (v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__bundleID);
  *v16 = 0;
  v16[1] = 0;
  v79 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isWatchWorkout;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isWatchWorkout) = 2;
  v17 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isIndoorWorkout;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isIndoorWorkout) = 2;
  v18 = (v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceManufacturer);
  v80 = v17;
  v81 = v18;
  *v18 = 0;
  v18[1] = 0;
  v19 = (v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceModel);
  v82 = (v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceModel);
  *v19 = 0;
  v19[1] = 0;
  v20 = v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm;
  v83 = v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = (v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourCatalogWorkoutIdentifier);
  v84 = (v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourCatalogWorkoutIdentifier);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourMediaType);
  v85 = (v1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourMediaType);
  *v22 = 0;
  v22[1] = 0;
  v23 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample;
  swift_beginAccess();
  sub_213FB2E54(a1 + v23, v6, &qword_27C913638, "z\t\t");
  swift_beginAccess();
  sub_21443DF24(v6, v1 + v7);
  swift_endAccess();
  v24 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__type);
  swift_beginAccess();
  v25 = *v24;
  LOBYTE(v24) = *(v24 + 8);
  swift_beginAccess();
  *v9 = v25;
  *(v9 + 8) = v24;
  v26 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__duration);
  swift_beginAccess();
  v27 = *v26;
  LOBYTE(v26) = *(v26 + 8);
  swift_beginAccess();
  *v10 = v27;
  *(v10 + 8) = v26;
  v28 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalEnergyBurnedInCanonicalUnit);
  swift_beginAccess();
  v29 = *v28;
  LOBYTE(v28) = *(v28 + 8);
  swift_beginAccess();
  *v11 = v29;
  *(v11 + 8) = v28;
  v30 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalBasalEnergyBurnedInCanonicalUnit);
  swift_beginAccess();
  v31 = *v30;
  LOBYTE(v30) = *(v30 + 8);
  swift_beginAccess();
  *v12 = v31;
  *(v12 + 8) = v30;
  v32 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalDistanceInCanonicalUnit);
  swift_beginAccess();
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 8);
  v34 = v75;
  swift_beginAccess();
  *v34 = v33;
  *(v34 + 8) = v32;
  v35 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalType);
  swift_beginAccess();
  v36 = *v35;
  LOBYTE(v35) = *(v35 + 8);
  v37 = v76;
  swift_beginAccess();
  *v37 = v36;
  *(v37 + 8) = v35;
  v38 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalInCanonicalUnit);
  swift_beginAccess();
  v39 = *v38;
  LOBYTE(v38) = *(v38 + 8);
  v40 = v77;
  swift_beginAccess();
  *v40 = v39;
  *(v40 + 8) = v38;
  v41 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__bundleID);
  swift_beginAccess();
  v43 = *v41;
  v42 = v41[1];
  v44 = v78;
  swift_beginAccess();
  v45 = v44[1];
  *v44 = v43;
  v44[1] = v42;

  v46 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isWatchWorkout;
  swift_beginAccess();
  LOBYTE(v46) = *(a1 + v46);
  v47 = v79;
  swift_beginAccess();
  *(v1 + v47) = v46;
  v48 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isIndoorWorkout;
  swift_beginAccess();
  LOBYTE(v48) = *(a1 + v48);
  v49 = v80;
  swift_beginAccess();
  *(v1 + v49) = v48;
  v50 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceManufacturer);
  swift_beginAccess();
  v52 = *v50;
  v51 = v50[1];
  v53 = v81;
  swift_beginAccess();
  v54 = v53[1];
  *v53 = v52;
  v53[1] = v51;

  v55 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceModel);
  swift_beginAccess();
  v57 = *v55;
  v56 = v55[1];
  v58 = v82;
  swift_beginAccess();
  v59 = v58[1];
  *v58 = v57;
  v58[1] = v56;

  v60 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm);
  swift_beginAccess();
  v61 = *v60;
  LOBYTE(v60) = *(v60 + 8);
  v62 = v83;
  swift_beginAccess();
  *v62 = v61;
  *(v62 + 8) = v60;
  v63 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourCatalogWorkoutIdentifier);
  swift_beginAccess();
  v65 = *v63;
  v64 = v63[1];
  v66 = v84;
  swift_beginAccess();
  v67 = v66[1];
  *v66 = v65;
  v66[1] = v64;

  v68 = (a1 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourMediaType);
  swift_beginAccess();
  v70 = *v68;
  v69 = v68[1];

  v71 = v85;
  swift_beginAccess();
  v72 = v71[1];
  *v71 = v70;
  v71[1] = v69;

  return v1;
}

uint64_t sub_214431A90()
{
  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample, &qword_27C913638, "z\t\t");
  v1 = *(v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__bundleID + 8);

  v2 = *(v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceManufacturer + 8);

  v3 = *(v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceModel + 8);

  v4 = *(v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourCatalogWorkoutIdentifier + 8);

  v5 = *(v0 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourMediaType + 8);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_214431B90()
{
  sub_21443432C(319, &qword_27C913538, type metadata accessor for SampleProtobuf, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_214431CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for WorkoutProtobuf(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for WorkoutProtobuf._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v11 = sub_2144313C4(v12);
    *(v4 + v8) = v11;
  }

  return sub_214431D48(v11, a1, a2, a3);
}

uint64_t sub_214431D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2146D8E78();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_214435134(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample);
          break;
        case 2:
          v11 = MEMORY[0x277D21790];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__type;
          goto LABEL_5;
        case 5:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__duration;
          goto LABEL_5;
        case 6:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalEnergyBurnedInCanonicalUnit;
          goto LABEL_5;
        case 7:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalBasalEnergyBurnedInCanonicalUnit;
          goto LABEL_5;
        case 8:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalDistanceInCanonicalUnit;
          goto LABEL_5;
        case 9:
          v11 = MEMORY[0x277D21790];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalType;
          goto LABEL_5;
        case 10:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalInCanonicalUnit;
          goto LABEL_5;
        case 11:
          sub_21443520C(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__bundleID, MEMORY[0x277D217D0]);
          break;
        case 12:
          v17 = a2;
          v18 = a1;
          v19 = a3;
          v20 = a4;
          v21 = &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isWatchWorkout;
          goto LABEL_23;
        case 13:
          v17 = a2;
          v18 = a1;
          v19 = a3;
          v20 = a4;
          v21 = &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isIndoorWorkout;
LABEL_23:
          sub_214020438(v17, v18, v19, v20, v21);
          break;
        case 14:
          sub_21443520C(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceManufacturer, MEMORY[0x277D217D0]);
          break;
        case 15:
          sub_21443520C(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceModel, MEMORY[0x277D217D0]);
          break;
        case 16:
          v11 = MEMORY[0x277D21790];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm;
LABEL_5:
          sub_2144352A4(v12, v13, v14, v15, v16, v11);
          break;
        case 17:
          sub_21443520C(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourCatalogWorkoutIdentifier, MEMORY[0x277D217D0]);
          break;
        case 18:
          sub_21443520C(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourMediaType, MEMORY[0x277D217D0]);
          break;
        default:
          break;
      }

      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_2144320FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_214435630(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample);
  if (!v4)
  {
    sub_214435900(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__type);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__duration);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalEnergyBurnedInCanonicalUnit);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalBasalEnergyBurnedInCanonicalUnit);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalDistanceInCanonicalUnit);
    sub_214435900(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalType);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalInCanonicalUnit);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__bundleID);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isWatchWorkout);
    sub_2140210FC(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isIndoorWorkout);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceManufacturer);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceModel);
    sub_214435900(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourCatalogWorkoutIdentifier);
    return sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourMediaType);
  }

  return result;
}

uint64_t sub_214432358(uint64_t a1, uint64_t a2)
{
  v110 = a2;
  v111 = type metadata accessor for SampleProtobuf(0);
  v3 = *(v111 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v111);
  v108 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913990, &qword_214741058);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v107 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913638, "z\t\t");
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v109 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v107 - v15;
  v17 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample;
  swift_beginAccess();
  v18 = a1 + v17;
  v19 = v110;
  sub_213FB2E54(v18, v16, &qword_27C913638, "z\t\t");
  v20 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample;
  swift_beginAccess();
  v21 = *(v7 + 56);
  sub_213FB2E54(v16, v10, &qword_27C913638, "z\t\t");
  v22 = v19 + v20;
  v23 = v111;
  sub_213FB2E54(v22, &v10[v21], &qword_27C913638, "z\t\t");
  v24 = *(v3 + 48);
  if (v24(v10, 1, v23) == 1)
  {

    sub_213FB2DF4(v16, &qword_27C913638, "z\t\t");
    v25 = a1;
    if (v24(&v10[v21], 1, v23) == 1)
    {
      sub_213FB2DF4(v10, &qword_27C913638, "z\t\t");
      goto LABEL_11;
    }

LABEL_6:
    sub_213FB2DF4(v10, &qword_27C913990, &qword_214741058);
    goto LABEL_7;
  }

  v25 = a1;
  v26 = v109;
  sub_213FB2E54(v10, v109, &qword_27C913638, "z\t\t");
  if (v24(&v10[v21], 1, v23) == 1)
  {

    sub_213FB2DF4(v16, &qword_27C913638, "z\t\t");
    sub_21443CC78(v26, type metadata accessor for SampleProtobuf);
    goto LABEL_6;
  }

  v28 = v108;
  sub_21443CC10(&v10[v21], v108, type metadata accessor for SampleProtobuf);

  v29 = sub_214440134(v26, v28);
  sub_21443CC78(v28, type metadata accessor for SampleProtobuf);
  sub_213FB2DF4(v16, &qword_27C913638, "z\t\t");
  sub_21443CC78(v26, type metadata accessor for SampleProtobuf);
  sub_213FB2DF4(v10, &qword_27C913638, "z\t\t");
  if ((v29 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v30 = (v25 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__type);
  swift_beginAccess();
  v31 = *v30;
  v32 = *(v30 + 8);
  v33 = v19 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__type;
  swift_beginAccess();
  v34 = *(v33 + 8);
  if (v32)
  {
    if ((*(v33 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v33 + 8) & 1) != 0 || v31 != *v33)
  {
    goto LABEL_7;
  }

  v35 = v25 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__duration;
  swift_beginAccess();
  v36 = *v35;
  v37 = *(v35 + 8);
  v38 = v19 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__duration;
  swift_beginAccess();
  v39 = *(v38 + 8);
  if (v37)
  {
    if ((*(v38 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v38 + 8) & 1) != 0 || v36 != *v38)
  {
    goto LABEL_7;
  }

  v40 = v25 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalEnergyBurnedInCanonicalUnit;
  swift_beginAccess();
  v41 = *v40;
  v42 = *(v40 + 8);
  v43 = v19 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalEnergyBurnedInCanonicalUnit;
  swift_beginAccess();
  v44 = *(v43 + 8);
  if (v42)
  {
    if ((*(v43 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v43 + 8) & 1) != 0 || v41 != *v43)
  {
    goto LABEL_7;
  }

  v45 = v25 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalBasalEnergyBurnedInCanonicalUnit;
  swift_beginAccess();
  v46 = *v45;
  v47 = *(v45 + 8);
  v48 = v19 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalBasalEnergyBurnedInCanonicalUnit;
  swift_beginAccess();
  v49 = *(v48 + 8);
  if (v47)
  {
    if ((*(v48 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v48 + 8) & 1) != 0 || v46 != *v48)
  {
    goto LABEL_7;
  }

  v50 = v25 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalDistanceInCanonicalUnit;
  swift_beginAccess();
  v51 = *v50;
  v52 = *(v50 + 8);
  v53 = v19 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__totalDistanceInCanonicalUnit;
  swift_beginAccess();
  v54 = *(v53 + 8);
  if (v52)
  {
    if ((*(v53 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v53 + 8) & 1) != 0 || v51 != *v53)
  {
    goto LABEL_7;
  }

  v55 = (v25 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalType);
  swift_beginAccess();
  v56 = *v55;
  v57 = *(v55 + 8);
  v58 = v19 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalType;
  swift_beginAccess();
  v59 = *(v58 + 8);
  if (v57)
  {
    if ((*(v58 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v58 + 8) & 1) != 0 || v56 != *v58)
  {
    goto LABEL_7;
  }

  v60 = v25 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalInCanonicalUnit;
  swift_beginAccess();
  v61 = *v60;
  v62 = *(v60 + 8);
  v63 = v19 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__goalInCanonicalUnit;
  swift_beginAccess();
  v64 = *(v63 + 8);
  if (v62)
  {
    if ((*(v63 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v63 + 8) & 1) != 0 || v61 != *v63)
  {
    goto LABEL_7;
  }

  v65 = (v25 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__bundleID);
  swift_beginAccess();
  v66 = *v65;
  v67 = v65[1];
  v68 = (v19 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__bundleID);
  swift_beginAccess();
  v69 = v68[1];
  if (v67)
  {
    if (!v69 || (v66 != *v68 || v67 != v69) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v69)
  {
    goto LABEL_7;
  }

  v70 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isWatchWorkout;
  swift_beginAccess();
  v71 = *(v25 + v70);
  v72 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isWatchWorkout;
  swift_beginAccess();
  v73 = *(v19 + v72);
  if (v71 == 2)
  {
    if (v73 == 2)
    {
      goto LABEL_58;
    }

LABEL_7:

    return 0;
  }

  if (v73 == 2 || ((v71 ^ v73) & 1) != 0)
  {
    goto LABEL_7;
  }

LABEL_58:
  v74 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isIndoorWorkout;
  swift_beginAccess();
  v75 = *(v25 + v74);
  v76 = OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__isIndoorWorkout;
  swift_beginAccess();
  v77 = *(v19 + v76);
  if (v75 == 2)
  {
    if (v77 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v77 == 2 || ((v75 ^ v77) & 1) != 0)
  {
    goto LABEL_7;
  }

  v78 = (v25 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceManufacturer);
  swift_beginAccess();
  v79 = *v78;
  v80 = v78[1];
  v81 = (v19 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceManufacturer);
  swift_beginAccess();
  v82 = v81[1];
  if (v80)
  {
    if (!v82 || (v79 != *v81 || v80 != v82) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v82)
  {
    goto LABEL_7;
  }

  v83 = (v25 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceModel);
  swift_beginAccess();
  v84 = *v83;
  v85 = v83[1];
  v86 = (v19 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__deviceModel);
  swift_beginAccess();
  v87 = v86[1];
  if (v85)
  {
    if (!v87 || (v84 != *v86 || v85 != v87) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v87)
  {
    goto LABEL_7;
  }

  v88 = (v25 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm);
  swift_beginAccess();
  v89 = *v88;
  v90 = *(v88 + 8);
  v91 = v19 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm;
  swift_beginAccess();
  v92 = *(v91 + 8);
  if (v90)
  {
    if ((*(v91 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v91 + 8) & 1) != 0 || v89 != *v91)
  {
    goto LABEL_7;
  }

  v93 = (v25 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourCatalogWorkoutIdentifier);
  swift_beginAccess();
  v94 = *v93;
  v95 = v93[1];
  v96 = (v19 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourCatalogWorkoutIdentifier);
  swift_beginAccess();
  v97 = v96[1];
  if (v95)
  {
    if (!v97 || (v94 != *v96 || v95 != v97) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v97)
  {
    goto LABEL_7;
  }

  v98 = (v25 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourMediaType);
  swift_beginAccess();
  v99 = *v98;
  v100 = v98[1];
  v101 = (v19 + OBJC_IVAR____TtCV9BlastDoor15WorkoutProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__seymourMediaType);
  swift_beginAccess();
  v102 = v101[1];
  if (!v100)
  {
    v104 = v101[1];

    if (v102)
    {

      return 0;
    }

    return 1;
  }

  if (!v102)
  {
    goto LABEL_7;
  }

  if (v99 == *v101 && v100 == v102)
  {
    v103 = v101[1];

    return 1;
  }

  v105 = v101[1];
  v106 = sub_2146DA6A8();

  result = 0;
  if (v106)
  {
    return 1;
  }

  return result;
}

uint64_t sub_214432EBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913988, type metadata accessor for WorkoutProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214432F5C(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C9137F8, type metadata accessor for WorkoutProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214432FC8()
{
  sub_21443B758(&qword_27C9137F8, type metadata accessor for WorkoutProtobuf);

  return sub_2146D9008();
}

uint64_t sub_214433088()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19B90);
  __swift_project_value_buffer(v0, qword_27CA19B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "startDate";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "endDate";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21443329C()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v5 = *(type metadata accessor for SampleProtobuf(0) + 28);
LABEL_3:
        v0 = 0;
        sub_2146D8F28();
        break;
      case 2:
        v1 = *(type metadata accessor for SampleProtobuf(0) + 24);
        goto LABEL_3;
      case 1:
        v4 = *(type metadata accessor for SampleProtobuf(0) + 20);
        sub_2146D8EC8();
        break;
    }
  }
}

uint64_t sub_214433378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_214433444(v3, a1, a2, a3, type metadata accessor for SampleProtobuf);
  if (!v4)
  {
    sub_2144334E8(v3, a1, a2, a3, type metadata accessor for SampleProtobuf);
    sub_214436FB0(v3, a1, a2, a3, type metadata accessor for SampleProtobuf);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_214433444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = a1 + *(result + 20);
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

uint64_t sub_2144334E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 24));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_2146D9098();
  }

  return result;
}

double sub_21443356C@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  result = 0.0;
  v5 = a1[6];
  *(a2 + a1[5]) = xmmword_2146E68C0;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + a1[7];
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t sub_214433618(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C913998, type metadata accessor for SampleProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2144336B8(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C9137D8, type metadata accessor for SampleProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214433724()
{
  sub_21443B758(&qword_27C9137D8, type metadata accessor for SampleProtobuf);

  return sub_2146D9008();
}

uint64_t sub_2144337A4()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19BA8);
  __swift_project_value_buffer(v0, qword_27CA19BA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_2146EA700;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "sample";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "sourceUUID";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "snapshotIndex";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "timeZoneOffsetFromUTCForNoon";
  *(v13 + 1) = 28;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 20;
  *v15 = "energyBurned";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 21;
  *v17 = "energyBurnedGoal";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 30;
  *v19 = "briskMinutes";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 31;
  *v21 = "briskMinutesGoal";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 40;
  *v22 = "activeHours";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 41;
  *v24 = "activeHoursGoal";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 50;
  *v26 = "walkingAndRunningDistance";
  *(v26 + 1) = 25;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 51;
  *v28 = "stepCount";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 60;
  *v30 = "pushCount";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 61;
  *v32 = "wheelchairUse";
  *(v32 + 1) = 13;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 70;
  *v34 = "mmv";
  *(v34 + 1) = 3;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 71;
  *v36 = "mmg";
  *(v36 + 1) = 3;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 72;
  *v37 = "amm";
  *(v37 + 8) = 3;
  *(v37 + 16) = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_214433D54(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_214433DA8()
{
  v1 = OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample;
  v2 = type metadata accessor for SampleProtobuf(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sourceUuid) = xmmword_2146E68C0;
  v3 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__snapshotIndex;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__timeZoneOffsetFromUtcforNoon;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurned;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurnedGoal;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutes;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutesGoal;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHours;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHoursGoal;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__walkingAndRunningDistance;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__stepCount;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__pushCount;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__wheelchairUse;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmv;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmg;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm;
  *v17 = 0;
  *(v17 + 8) = 1;
  return v0;
}

uint64_t sub_214433F5C()
{
  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample, &qword_27C913638, "z\t\t");
  sub_213FDC6BC(*(v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sourceUuid), *(v0 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sourceUuid + 8));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_21443400C()
{
  sub_21443432C(319, &qword_27C913538, type metadata accessor for SampleProtobuf, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_214434120()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B2FDD0);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B34BD0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214434224()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B2E328);
      if (v2 <= 0x3F)
      {
        sub_21443432C(319, &qword_27C913600, type metadata accessor for ActivityDataPreviewProtobuf, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21443432C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2144343D8()
{
  sub_21443432C(319, &qword_27C913620, type metadata accessor for WorkoutProtobuf, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_21443432C(319, &qword_27C913628, type metadata accessor for AchievementProtobuf, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2146D8DF8();
      if (v2 <= 0x3F)
      {
        sub_21443432C(319, &qword_27C913630, type metadata accessor for ActivitySnapshotProtobuf, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_280B34BD0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2144345CC()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21443432C(319, &qword_27C913538, type metadata accessor for SampleProtobuf, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B34BD0);
      if (v2 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_27C912D80);
        if (v3 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_280B34BE0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_214434778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_2146D8DF8();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21443484C()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_27C903E58);
      if (v2 <= 0x3F)
      {
        sub_21443432C(319, &qword_27C913688, type metadata accessor for ShareLocationsProtobuf, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_280B2E328);
          if (v4 <= 0x3F)
          {
            sub_21443432C(319, &qword_27C913600, type metadata accessor for ActivityDataPreviewProtobuf, MEMORY[0x277D83D88]);
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

void sub_214434A54()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0);
    if (v1 <= 0x3F)
    {
      sub_21443432C(319, &qword_27C913688, type metadata accessor for ShareLocationsProtobuf, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21443432C(319, &qword_27C913600, type metadata accessor for ActivityDataPreviewProtobuf, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_214434BC0()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_214434C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for ActivitySnapshotProtobuf(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for ActivitySnapshotProtobuf._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_214440338(v12);

    *(v4 + v8) = v16;
    v11 = v16;
  }

  return sub_214434D50(v11, a1, a2, a3);
}

uint64_t sub_214434D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2146D8E78();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_214435134(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample);
          break;
        case 2:
          sub_21443520C(a2, a1, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sourceUuid, MEMORY[0x277D21760]);
          break;
        case 3:
          v11 = MEMORY[0x277D21790];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__snapshotIndex;
          goto LABEL_5;
        case 4:
          v11 = MEMORY[0x277D21790];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__timeZoneOffsetFromUtcforNoon;
          goto LABEL_5;
        case 20:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurned;
          goto LABEL_5;
        case 21:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurnedGoal;
          goto LABEL_5;
        case 30:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutes;
          goto LABEL_5;
        case 31:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutesGoal;
          goto LABEL_5;
        case 40:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHours;
          goto LABEL_5;
        case 41:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHoursGoal;
          goto LABEL_5;
        case 50:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__walkingAndRunningDistance;
          goto LABEL_5;
        case 51:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__stepCount;
          goto LABEL_5;
        case 60:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__pushCount;
          goto LABEL_5;
        case 61:
          v11 = MEMORY[0x277D21790];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__wheelchairUse;
          goto LABEL_5;
        case 70:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmv;
          goto LABEL_5;
        case 71:
          v11 = MEMORY[0x277D217C0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmg;
          goto LABEL_5;
        case 72:
          v11 = MEMORY[0x277D21790];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm;
LABEL_5:
          sub_2144352A4(v12, v13, v14, v15, v16, v11);
          break;
        default:
          break;
      }

      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_214435134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  type metadata accessor for SampleProtobuf(0);
  sub_21443B758(&qword_27C9137D8, type metadata accessor for SampleProtobuf);
  sub_2146D8F98();
  return swift_endAccess();
}

uint64_t sub_21443520C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_2144352A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_21443533C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2144353BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_214435630(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample);
  if (!v4)
  {
    sub_21443584C(a1);
    sub_214435900(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__snapshotIndex);
    sub_214435900(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__timeZoneOffsetFromUtcforNoon);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurned);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurnedGoal);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutes);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutesGoal);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHours);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHoursGoal);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__walkingAndRunningDistance);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__stepCount);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__pushCount);
    sub_214435900(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__wheelchairUse);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmv);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmg);
    return sub_214435900(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm);
  }

  return result;
}

uint64_t sub_214435630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913638, "z\t\t");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for SampleProtobuf(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a5;
  swift_beginAccess();
  sub_213FB2E54(a1 + v16, v10, &qword_27C913638, "z\t\t");
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_213FB2DF4(v10, &qword_27C913638, "z\t\t");
  }

  sub_21443CC10(v10, v15, type metadata accessor for SampleProtobuf);
  sub_21443B758(&qword_27C9137D8, type metadata accessor for SampleProtobuf);
  sub_2146D90F8();
  return sub_21443CC78(v15, type metadata accessor for SampleProtobuf);
}

uint64_t sub_21443584C(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sourceUuid);
  result = swift_beginAccess();
  v3 = v1[1];
  if (v3 >> 60 != 15)
  {
    v4 = *v1;
    sub_21402D9F8(v4, v3);
    sub_2146D9048();
    return sub_213FDC6BC(v4, v3);
  }

  return result;
}

uint64_t sub_214435900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v5[1] & 1) == 0)
  {
    v7 = *v5;
    return sub_2146D9078();
  }

  return result;
}

uint64_t sub_214435990(uint64_t a1, uint64_t a2)
{
  v118 = a2;
  v119 = type metadata accessor for SampleProtobuf(0);
  v3 = *(v119 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v119);
  v116 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913990, &qword_214741058);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v115 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913638, "z\t\t");
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v117 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v115 - v15;
  v17 = OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample;
  swift_beginAccess();
  v18 = a1 + v17;
  v19 = v118;
  sub_213FB2E54(v18, v16, &qword_27C913638, "z\t\t");
  v20 = OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sample;
  swift_beginAccess();
  v21 = *(v7 + 56);
  sub_213FB2E54(v16, v10, &qword_27C913638, "z\t\t");
  v22 = v19 + v20;
  v23 = v119;
  sub_213FB2E54(v22, &v10[v21], &qword_27C913638, "z\t\t");
  v24 = *(v3 + 48);
  if (v24(v10, 1, v23) == 1)
  {

    sub_213FB2DF4(v16, &qword_27C913638, "z\t\t");
    v25 = a1;
    if (v24(&v10[v21], 1, v23) == 1)
    {
      sub_213FB2DF4(v10, &qword_27C913638, "z\t\t");
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v25 = a1;
  v26 = v117;
  sub_213FB2E54(v10, v117, &qword_27C913638, "z\t\t");
  if (v24(&v10[v21], 1, v23) == 1)
  {

    sub_213FB2DF4(v16, &qword_27C913638, "z\t\t");
    sub_21443CC78(v26, type metadata accessor for SampleProtobuf);
LABEL_6:
    sub_213FB2DF4(v10, &qword_27C913990, &qword_214741058);
LABEL_7:

    return 0;
  }

  v28 = v116;
  sub_21443CC10(&v10[v21], v116, type metadata accessor for SampleProtobuf);

  v29 = sub_214440134(v26, v28);
  sub_21443CC78(v28, type metadata accessor for SampleProtobuf);
  sub_213FB2DF4(v16, &qword_27C913638, "z\t\t");
  sub_21443CC78(v26, type metadata accessor for SampleProtobuf);
  sub_213FB2DF4(v10, &qword_27C913638, "z\t\t");
  if ((v29 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  v30 = (v25 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sourceUuid);
  swift_beginAccess();
  v32 = *v30;
  v31 = v30[1];
  v33 = v19;
  v34 = (v19 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__sourceUuid);
  swift_beginAccess();
  v35 = *v34;
  v36 = v34[1];
  sub_213FDCA18(v32, v31);
  sub_213FDCA18(v35, v36);
  if (v31 >> 60 == 15)
  {
    if (v36 >> 60 == 15)
    {
      sub_213FDC6BC(v32, v31);
      goto LABEL_18;
    }

LABEL_16:
    sub_213FDC6BC(v32, v31);
    sub_213FDC6BC(v35, v36);
    return 0;
  }

  sub_213FDCA18(v32, v31);
  sub_213FDCA18(v35, v36);
  if (v36 >> 60 == 15)
  {

    sub_213FDC6BC(v35, v36);
    sub_213FDC6BC(v32, v31);
    goto LABEL_16;
  }

  v37 = sub_214466780(v32, v31, v35, v36);
  sub_213FDC6BC(v35, v36);
  sub_213FDC6BC(v32, v31);
  sub_213FDC6BC(v35, v36);
  sub_213FDC6BC(v32, v31);
  if ((v37 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_18:
  v38 = (v25 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__snapshotIndex);
  swift_beginAccess();
  v39 = *v38;
  v40 = *(v38 + 8);
  v41 = v33 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__snapshotIndex;
  swift_beginAccess();
  v42 = *(v41 + 8);
  if (v40)
  {
    if ((*(v41 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v41 + 8) & 1) != 0 || v39 != *v41)
  {
    goto LABEL_7;
  }

  v43 = (v25 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__timeZoneOffsetFromUtcforNoon);
  swift_beginAccess();
  v44 = *v43;
  v45 = *(v43 + 8);
  v46 = v33 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__timeZoneOffsetFromUtcforNoon;
  swift_beginAccess();
  v47 = *(v46 + 8);
  if (v45)
  {
    if ((*(v46 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v46 + 8) & 1) != 0 || v44 != *v46)
  {
    goto LABEL_7;
  }

  v48 = v25 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurned;
  swift_beginAccess();
  v49 = *v48;
  v50 = *(v48 + 8);
  v51 = v33 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurned;
  swift_beginAccess();
  v52 = *(v51 + 8);
  if (v50)
  {
    if ((*(v51 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v51 + 8) & 1) != 0 || v49 != *v51)
  {
    goto LABEL_7;
  }

  v53 = v25 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurnedGoal;
  swift_beginAccess();
  v54 = *v53;
  v55 = *(v53 + 8);
  v56 = v33 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__energyBurnedGoal;
  swift_beginAccess();
  v57 = *(v56 + 8);
  if (v55)
  {
    if ((*(v56 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v56 + 8) & 1) != 0 || v54 != *v56)
  {
    goto LABEL_7;
  }

  v58 = v25 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutes;
  swift_beginAccess();
  v59 = *v58;
  v60 = *(v58 + 8);
  v61 = v33 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutes;
  swift_beginAccess();
  v62 = *(v61 + 8);
  if (v60)
  {
    if ((*(v61 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v61 + 8) & 1) != 0 || v59 != *v61)
  {
    goto LABEL_7;
  }

  v63 = v25 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutesGoal;
  swift_beginAccess();
  v64 = *v63;
  v65 = *(v63 + 8);
  v66 = v33 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__briskMinutesGoal;
  swift_beginAccess();
  v67 = *(v66 + 8);
  if (v65)
  {
    if ((*(v66 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v66 + 8) & 1) != 0 || v64 != *v66)
  {
    goto LABEL_7;
  }

  v68 = v25 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHours;
  swift_beginAccess();
  v69 = *v68;
  v70 = *(v68 + 8);
  v71 = v33 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHours;
  swift_beginAccess();
  v72 = *(v71 + 8);
  if (v70)
  {
    if ((*(v71 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v71 + 8) & 1) != 0 || v69 != *v71)
  {
    goto LABEL_7;
  }

  v73 = v25 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHoursGoal;
  swift_beginAccess();
  v74 = *v73;
  v75 = *(v73 + 8);
  v76 = v33 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__activeHoursGoal;
  swift_beginAccess();
  v77 = *(v76 + 8);
  if (v75)
  {
    if ((*(v76 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v76 + 8) & 1) != 0 || v74 != *v76)
  {
    goto LABEL_7;
  }

  v78 = v25 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__walkingAndRunningDistance;
  swift_beginAccess();
  v79 = *v78;
  v80 = *(v78 + 8);
  v81 = v33 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__walkingAndRunningDistance;
  swift_beginAccess();
  v82 = *(v81 + 8);
  if (v80)
  {
    if ((*(v81 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v81 + 8) & 1) != 0 || v79 != *v81)
  {
    goto LABEL_7;
  }

  v83 = v25 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__stepCount;
  swift_beginAccess();
  v84 = *v83;
  v85 = *(v83 + 8);
  v86 = v33 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__stepCount;
  swift_beginAccess();
  v87 = *(v86 + 8);
  if (v85)
  {
    if ((*(v86 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v86 + 8) & 1) != 0 || v84 != *v86)
  {
    goto LABEL_7;
  }

  v88 = v25 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__pushCount;
  swift_beginAccess();
  v89 = *v88;
  v90 = *(v88 + 8);
  v91 = v33 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__pushCount;
  swift_beginAccess();
  v92 = *(v91 + 8);
  if (v90)
  {
    if ((*(v91 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v91 + 8) & 1) != 0 || v89 != *v91)
  {
    goto LABEL_7;
  }

  v93 = (v25 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__wheelchairUse);
  swift_beginAccess();
  v94 = *v93;
  v95 = *(v93 + 8);
  v96 = v33 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__wheelchairUse;
  swift_beginAccess();
  v97 = *(v96 + 8);
  if (v95)
  {
    if ((*(v96 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v96 + 8) & 1) != 0 || v94 != *v96)
  {
    goto LABEL_7;
  }

  v98 = v25 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmv;
  swift_beginAccess();
  v99 = *v98;
  v100 = *(v98 + 8);
  v101 = v33 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmv;
  swift_beginAccess();
  v102 = *(v101 + 8);
  if (v100)
  {
    if ((*(v101 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v101 + 8) & 1) != 0 || v99 != *v101)
  {
    goto LABEL_7;
  }

  v103 = v25 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmg;
  swift_beginAccess();
  v104 = *v103;
  v105 = *(v103 + 8);
  v106 = v33 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__mmg;
  swift_beginAccess();
  v107 = *(v106 + 8);
  if (v105)
  {
    if ((*(v106 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v106 + 8) & 1) != 0 || v104 != *v106)
  {
    goto LABEL_7;
  }

  v108 = (v25 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm);
  swift_beginAccess();
  v109 = *v108;
  v110 = *(v108 + 8);

  v111 = (v33 + OBJC_IVAR____TtCV9BlastDoor24ActivitySnapshotProtobufP33_87792315E004093B520D96D6D1DFC12013_StorageClass__amm);
  swift_beginAccess();
  v112 = *v111;
  v113 = *(v111 + 8);

  if (v110)
  {
    if (!v113)
    {
      return 0;
    }
  }

  else
  {
    if (v109 == v112)
    {
      v114 = v113;
    }

    else
    {
      v114 = 1;
    }

    if (v114)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_214436588(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C9139A0, type metadata accessor for ActivitySnapshotProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214436628(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C9137B8, type metadata accessor for ActivitySnapshotProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214436694()
{
  sub_21443B758(&qword_27C9137B8, type metadata accessor for ActivitySnapshotProtobuf);

  return sub_2146D9008();
}

uint64_t sub_214436754()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19BC0);
  __swift_project_value_buffer(v0, qword_27CA19BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2146E6980;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "sample";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_2146D9118();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 3;
  *v8 = "completedDate";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "doubleValue";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "intValue";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 7;
  *v14 = "workoutActivityType";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "definitionIdentifier";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 9;
  *v18 = "templateUniqueName";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v7();
  return sub_2146D9128();
}

uint64_t sub_214436A5C()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 4)
    {
      switch(result)
      {
        case 1:
          sub_214436BD4();
          break;
        case 3:
          v8 = *(type metadata accessor for AchievementProtobuf(0) + 24);
LABEL_22:
          v0 = 0;
          sub_2146D8F28();
          break;
        case 4:
          v4 = *(type metadata accessor for AchievementProtobuf(0) + 28);
          goto LABEL_22;
      }
    }

    else if (result > 7)
    {
      if (result == 8)
      {
        v7 = *(type metadata accessor for AchievementProtobuf(0) + 40);
LABEL_20:
        v0 = 0;
        sub_2146D8F38();
      }

      else if (result == 9)
      {
        v5 = *(type metadata accessor for AchievementProtobuf(0) + 44);
        goto LABEL_20;
      }
    }

    else if (result == 5)
    {
      v6 = *(type metadata accessor for AchievementProtobuf(0) + 32);
LABEL_18:
      v0 = 0;
      sub_2146D8F08();
    }

    else if (result == 7)
    {
      v3 = *(type metadata accessor for AchievementProtobuf(0) + 36);
      goto LABEL_18;
    }
  }
}

uint64_t sub_214436BD4()
{
  v0 = *(type metadata accessor for AchievementProtobuf(0) + 20);
  type metadata accessor for SampleProtobuf(0);
  sub_21443B758(&qword_27C9137D8, type metadata accessor for SampleProtobuf);
  return sub_2146D8F98();
}

uint64_t sub_214436C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_214436DA0(v3, a1, a2, a3);
  if (!v4)
  {
    sub_2144334E8(v3, a1, a2, a3, type metadata accessor for AchievementProtobuf);
    sub_214436FB0(v3, a1, a2, a3, type metadata accessor for AchievementProtobuf);
    sub_214437034(v3);
    sub_2144370AC(v3);
    sub_214437124(v3);
    sub_21443719C(v3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_214436DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913638, "z\t\t");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for SampleProtobuf(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AchievementProtobuf(0);
  sub_213FB2E54(a1 + *(v14 + 20), v8, &qword_27C913638, "z\t\t");
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &qword_27C913638, "z\t\t");
  }

  sub_21443CC10(v8, v13, type metadata accessor for SampleProtobuf);
  sub_21443B758(&qword_27C9137D8, type metadata accessor for SampleProtobuf);
  sub_2146D90F8();
  return sub_21443CC78(v13, type metadata accessor for SampleProtobuf);
}

uint64_t sub_214436FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 28));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_2146D9098();
  }

  return result;
}

uint64_t sub_214437034(uint64_t a1)
{
  result = type metadata accessor for AchievementProtobuf(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_2146D9078();
  }

  return result;
}

uint64_t sub_2144370AC(uint64_t a1)
{
  result = type metadata accessor for AchievementProtobuf(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_2146D9078();
  }

  return result;
}

uint64_t sub_214437124(uint64_t a1)
{
  result = type metadata accessor for AchievementProtobuf(0);
  v3 = (a1 + *(result + 40));
  if (v3[1])
  {
    v4 = *v3;
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21443719C(uint64_t a1)
{
  result = type metadata accessor for AchievementProtobuf(0);
  v3 = (a1 + *(result + 44));
  if (v3[1])
  {
    v4 = *v3;
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_214437218@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = a1[5];
  v5 = type metadata accessor for SampleProtobuf(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1[11];
  v14 = (a2 + a1[10]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a2 + v13);
  *v15 = 0;
  v15[1] = 0;
  return result;
}

uint64_t sub_214437328(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C9139A8, type metadata accessor for AchievementProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2144373C8(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C913798, type metadata accessor for AchievementProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_214437434()
{
  sub_21443B758(&qword_27C913798, type metadata accessor for AchievementProtobuf);

  return sub_2146D9008();
}

uint64_t sub_2144374B0()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19BD8);
  __swift_project_value_buffer(v0, qword_27CA19BD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "activityShareURL";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "relationshipShareURL";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214437678()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result == 2)
    {
      v1 = *(type metadata accessor for ShareLocationsProtobuf(0) + 20);
      goto LABEL_3;
    }

    if (result == 3)
    {
      v4 = *(type metadata accessor for ShareLocationsProtobuf(0) + 24);
LABEL_3:
      v0 = 0;
      sub_2146D8F38();
    }
  }
}

uint64_t sub_214437720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void))
{
  result = sub_21442F86C(v6, a1, a2, a3, a4);
  if (!v7)
  {
    sub_21442E334(v6, a1, a2, a3, a6);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2144377E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2146D8DE8();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_214437898(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C9139B0, type metadata accessor for ShareLocationsProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214437938(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C913778, type metadata accessor for ShareLocationsProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2144379A4()
{
  sub_21443B758(&qword_27C913778, type metadata accessor for ShareLocationsProtobuf);

  return sub_2146D9008();
}

uint64_t sub_214437A24()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19BF0);
  __swift_project_value_buffer(v0, qword_27CA19BF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "activitySnapshot";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "workouts";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "achievements";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "date";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214437C68()
{
  result = sub_2146D8E78();
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
          type metadata accessor for AchievementProtobuf(0);
          sub_21443B758(&qword_27C913798, type metadata accessor for AchievementProtobuf);
          goto LABEL_15;
        }

        if (result == 4)
        {
          v4 = *(type metadata accessor for ActivityDataPreviewProtobuf(0) + 32);
          sub_2146D8F28();
        }
      }

      else
      {
        if (result == 1)
        {
          sub_214437E00();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          type metadata accessor for WorkoutProtobuf(0);
          sub_21443B758(&qword_27C9137F8, type metadata accessor for WorkoutProtobuf);
LABEL_15:
          v0 = v3;
          sub_2146D8F78();
        }
      }

LABEL_5:
      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_214437E00()
{
  v0 = *(type metadata accessor for ActivityDataPreviewProtobuf(0) + 28);
  type metadata accessor for ActivitySnapshotProtobuf(0);
  sub_21443B758(&qword_27C9137B8, type metadata accessor for ActivitySnapshotProtobuf);
  return sub_2146D8F98();
}

uint64_t sub_214437EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_214438044(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for WorkoutProtobuf(0);
      sub_21443B758(&qword_27C9137F8, type metadata accessor for WorkoutProtobuf);
      sub_2146D90D8();
    }

    if (*(v5[1] + 16))
    {
      type metadata accessor for AchievementProtobuf(0);
      sub_21443B758(&qword_27C913798, type metadata accessor for AchievementProtobuf);
      sub_2146D90D8();
    }

    sub_214438254(v5);
    v8 = v5 + *(type metadata accessor for ActivityDataPreviewProtobuf(0) + 24);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_214438044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913608, &qword_21473F468);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ActivitySnapshotProtobuf(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  sub_213FB2E54(a1 + *(v14 + 28), v8, &qword_27C913608, &qword_21473F468);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_213FB2DF4(v8, &qword_27C913608, &qword_21473F468);
  }

  sub_21443CC10(v8, v13, type metadata accessor for ActivitySnapshotProtobuf);
  sub_21443B758(&qword_27C9137B8, type metadata accessor for ActivitySnapshotProtobuf);
  sub_2146D90F8();
  return sub_21443CC78(v13, type metadata accessor for ActivitySnapshotProtobuf);
}

uint64_t sub_214438254(uint64_t a1)
{
  result = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_2146D9098();
  }

  return result;
}

uint64_t sub_2144382D0@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v4;
  v5 = &a2[a1[6]];
  sub_2146D8DE8();
  v6 = a1[7];
  v7 = type metadata accessor for ActivitySnapshotProtobuf(0);
  result = (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v9 = &a2[a1[8]];
  *v9 = 0;
  v9[8] = 1;
  return result;
}

uint64_t sub_2144383B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21443B758(&qword_27C9139B8, type metadata accessor for ActivityDataPreviewProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_214438458(uint64_t a1)
{
  v2 = sub_21443B758(&qword_27C913758, type metadata accessor for ActivityDataPreviewProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2144384C4()
{
  sub_21443B758(&qword_27C913758, type metadata accessor for ActivityDataPreviewProtobuf);

  return sub_2146D9008();
}

uint64_t sub_214438544()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19C08);
  __swift_project_value_buffer(v0, qword_27CA19C08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6930;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "handshakeToken";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "inviterCloudKitAddress";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "inviterCallerID";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "inviterBuildNumber";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "inviterVersion";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "activityDataPreview";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  return sub_2146D9128();
}