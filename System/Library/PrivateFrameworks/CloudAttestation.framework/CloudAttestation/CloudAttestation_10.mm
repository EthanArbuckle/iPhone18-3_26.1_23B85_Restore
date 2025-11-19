uint64_t dispatch thunk of TransparencyProver.proveInclusion(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22FF72E90;

  return v11(a1, a2, a3);
}

uint64_t sub_22FF72E90(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of TransparencyVerifier.verifyExpiringInclusion(of:proofs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22FEAA538;

  return v17(a1, a2, a3, a4, a5, a6);
}

void sub_22FF73100()
{
  type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(319);
  if (v0 <= 0x3F)
  {
    sub_22FED4954();
    if (v1 <= 0x3F)
    {
      sub_22FF34194();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22FF7319C()
{
  sub_22FF73260();
  if (v0 <= 0x3F)
  {
    sub_22FF73290();
    if (v1 <= 0x3F)
    {
      sub_22FF732C0();
      if (v2 <= 0x3F)
      {
        sub_22FED85D4();
        if (v3 <= 0x3F)
        {
          sub_22FF73308();
          if (v4 <= 0x3F)
          {
            sub_22FF73370();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22FF73260()
{
  result = qword_28148F0F8;
  if (!qword_28148F0F8)
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &qword_28148F0F8);
  }

  return result;
}

uint64_t sub_22FF73290()
{
  result = qword_28148F0F0;
  if (!qword_28148F0F0)
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &qword_28148F0F0);
  }

  return result;
}

void sub_22FF732C0()
{
  if (!qword_28148F0A0)
  {
    v0 = sub_22FED85D4();
    if (!v1)
    {
      atomic_store(v0, &qword_28148F0A0);
    }
  }
}

void sub_22FF73308()
{
  if (!qword_281491338)
  {
    sub_22FFB0908();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281491338);
    }
  }
}

uint64_t sub_22FF73370()
{
  result = qword_28148F0E8;
  if (!qword_28148F0E8)
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &qword_28148F0E8);
  }

  return result;
}

id sub_22FF733F4()
{
  v16[1] = *MEMORY[0x277D85DE8];
  v1 = sub_22FFB06B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedDataAccessor];
  v16[0] = 0;
  v7 = [v6 copyPathForPersonalizedData:2 error:v16];

  v8 = v16[0];
  if (v7)
  {
    sub_22FFB1498();
    v9 = v8;

    sub_22FFB0668();

    v10 = sub_22FFB06D8();
    if (!v0)
    {
      v7 = v10;
      (*(v2 + 8))(v5, v1);
      goto LABEL_7;
    }

    (*(v2 + 8))(v5, v1);
    v11 = v0;
  }

  else
  {
    v12 = v16[0];
    v11 = sub_22FFB0648();

    swift_willThrow();
  }

  sub_22FEBF89C();
  swift_allocError();
  *v13 = v11;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
LABEL_7:
  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

unint64_t sub_22FF73628()
{
  v1 = v0;
  if (MEMORY[0x277CDBC78])
  {
    v2 = MEMORY[0x277CDBC68] == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || MEMORY[0x277CDBC70] == 0 || MEMORY[0x277CDBC80] == 0)
  {
    return sub_22FFA78A0(MEMORY[0x277D84F90]);
  }

  sub_22FFB0AA8();
  v33 = sub_22FFB0A98();
  v5 = sub_22FFB0A88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3898, &unk_22FFBF3C0);
  result = sub_22FFB1AC8();
  v7 = result;
  v8 = 0;
  v38 = result;
  v39 = v5;
  v9 = 1 << *(v5 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = *(v5 + 64);
  v34 = v5 + 64;
  v12 = v10 & v11;
  v13 = (v9 + 63) >> 6;
  v36 = v13;
  v37 = result + 64;
  if ((v10 & v11) != 0)
  {
    while (1)
    {
      v43 = v1;
      v14 = __clz(__rbit64(v12));
      v40 = (v12 - 1) & v12;
LABEL_20:
      v17 = v14 | (v8 << 6);
      v18 = sub_22FFB0958();
      v42 = &v33;
      v19 = *(v18 - 8);
      v20 = *(v19 + 64);
      MEMORY[0x28223BE20](v18);
      v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = v39;
      v24 = *(v23 + 72) * v17;
      v25 = (*(v19 + 16))(v21, *(v39 + 48) + v24, v18);
      v41 = &v33;
      v26 = *(*(v22 + 56) + 8 * v17);
      v45 = v26;
      MEMORY[0x28223BE20](v25);
      v27 = v21;
      v35 = v19;
      v28 = *(v19 + 32);
      v28(v21, v21, v18);
      v7 = v26;
      v29 = v43;
      sub_22FF739CC(&v45, &v44);
      v1 = v29;
      if (v29)
      {
        break;
      }

      v7 = v38;
      *(v37 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = (v28)(v7[6] + v24, v27, v18);
      *(v7[7] + 8 * v17) = v44;
      v30 = v7[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_29;
      }

      v7[2] = v32;
      v12 = v40;
      v13 = v36;
      if (!v40)
      {
        goto LABEL_15;
      }
    }

    (*(v35 + 8))(v27, v18);
    return v7;
  }

  else
  {
LABEL_15:
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

        return v7;
      }

      v16 = *(v34 + 8 * v8);
      ++v15;
      if (v16)
      {
        v43 = v1;
        v14 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_22FF739CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = 0x363532616873;
  v6 = sub_22FFB14F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v58 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_22FFB0958();
  v10 = *(v65 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v65);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *a1;
  v14 = sub_22FFB0AE8();
  v16 = v15;
  v17 = v14 == 0x363532616873 && v15 == 0xE600000000000000;
  v62 = a2;
  v60 = v6;
  v59 = v7;
  if (v17 || (v18 = v14, (sub_22FFB1BC8() & 1) != 0))
  {

    v19 = sub_22FFB13C8();
    v20 = &qword_28148F198;
    v21 = MEMORY[0x277CC5540];
  }

  else
  {
    if (v18 == 0x343833616873 && v16 == 0xE600000000000000)
    {
    }

    else
    {
      v5 = sub_22FFB1BC8();

      if ((v5 & 1) == 0)
      {
        v54 = sub_22FFB0AE8();
        v56 = v55;
        sub_22FEBF89C();
        swift_allocError();
        *v57 = v54;
        *(v57 + 8) = v56;
        *(v57 + 16) = 0;
        return swift_willThrow();
      }
    }

    v19 = sub_22FFB13F8();
    v20 = &qword_28148F188;
    v21 = MEMORY[0x277CC5550];
  }

  v66 = sub_22FF74244(v20, v21);
  v22 = sub_22FFB0AD8();
  v23 = v22;
  if (v22 >> 62)
  {
    v24 = sub_22FFB1AB8();
  }

  else
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = v2;
  if (v24)
  {
    v76 = MEMORY[0x277D84F90];
    sub_22FECDB38(0, v24 & ~(v24 >> 63), 0);
    if (v24 < 0)
    {
      __break(1u);
      goto LABEL_41;
    }

    v25 = 0;
    v64 = v23 & 0xC000000000000001;
    v5 = v76;
    v26 = (v10 + 8);
    v63 = v24 - 1;
    if ((v23 & 0xC000000000000001) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    for (i = MEMORY[0x23190E180](v25, v23); ; i = *(v23 + 8 * v25 + 32))
    {
      v28 = i;
      v29 = sub_22FFB0AF8();
      LOBYTE(v68) = 2;
      SEP.SealedHash.Entry.init<A>(data:flags:algorithm:)(v29, v30, &v68, v19, v66, &v72);
      sub_22FFB0AC8();
      if (qword_281490280 != -1)
      {
        swift_once();
      }

      v31 = v23;
      v32 = v65;
      __swift_project_value_buffer(v65, qword_281491418);
      v33 = sub_22FFB0938();
      (*v26)(v13, v32);
      if (v33)
      {
        LOBYTE(v74) = v74 | 8;
      }

      v34 = sub_22FFB0B08();

      *(&v75 + 1) = v34;
      v70 = v74;
      v71 = v75;
      v68 = v72;
      v69 = v73;
      v76 = v5;
      v36 = *(v5 + 16);
      v35 = *(v5 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_22FECDB38((v35 > 1), v36 + 1, 1);
        v5 = v76;
      }

      *(v5 + 16) = v36 + 1;
      v37 = (v5 + (v36 << 6));
      v38 = v68;
      v39 = v69;
      v40 = v71;
      v37[4] = v70;
      v37[5] = v40;
      v37[2] = v38;
      v37[3] = v39;
      if (v63 == v25)
      {
        break;
      }

      ++v25;
      v23 = v31;
      if (v64)
      {
        goto LABEL_12;
      }

LABEL_13:
      ;
    }
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  result = sub_22FFB0AB8();
  if (!v42)
  {
    v47 = v62;
LABEL_32:
    *v47 = v5;
    return result;
  }

  v43 = v58;
  sub_22FFB14E8();
  v44 = sub_22FFB14A8();
  v46 = v45;
  result = (*(v59 + 8))(v43, v60);
  if (v46 >> 60 != 15)
  {

    LOBYTE(v68) = 4;
    SEP.SealedHash.Entry.init<A>(digest:flags:algorithm:)(v44, v46, &v68, v19, v66, &v72);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_28:
      v47 = v62;
      v49 = *(v5 + 16);
      v48 = *(v5 + 24);
      if (v49 >= v48 >> 1)
      {
        result = sub_22FEC3874((v48 > 1), v49 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v49 + 1;
      v50 = (v5 + (v49 << 6));
      v51 = v72;
      v52 = v73;
      v53 = v75;
      v50[4] = v74;
      v50[5] = v53;
      v50[2] = v51;
      v50[3] = v52;
      goto LABEL_32;
    }

LABEL_41:
    result = sub_22FEC3874(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t dispatch thunk of AttestationAssetProvider.provisioningCertificateChain.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FF72E90;

  return v9(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_16CloudAttestation0B18AssetProviderErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_22FF74190(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22FF741D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_22FF7421C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_22FF74244(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Attestor.attest(key:expiration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22FF742E4, 0, 0);
}

uint64_t sub_22FF742E4()
{
  v1 = v0[7];
  v2 = (*(v0[6] + 16))(v0[5]);
  v0[8] = v2;
  v3 = v2;
  v13 = (v0[6] + 56);
  v14 = (*v13 + **v13);
  v4 = (*v13)[1];
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_22FF7446C;
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[2];
  v11 = v0[3];

  return (v14)(v10, v11, v3, v8, 0, 0xF000000000000000, v9, v6);
}

uint64_t sub_22FF7446C()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FF91BB0, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t PublicKeyData.raw.getter()
{
  v1 = *v0;
  sub_22FEA5600(*v0, v0[1]);
  return v1;
}

uint64_t AttestationBundle.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22FFB0FE8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for Proto_AttestationBundle(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = a2;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_22FEA5608(a1, a2);
  sub_22FFB0FD8();
  sub_22FF7BE88(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle);
  sub_22FFB1188();
  result = sub_22FEA55AC(a1, a2);
  if (!v3)
  {
    return sub_22FF90754(v12, a3, type metadata accessor for Proto_AttestationBundle);
  }

  return result;
}

uint64_t AttestationBundle.serializedData()()
{
  type metadata accessor for Proto_AttestationBundle(0);
  sub_22FF7BE88(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle);
  return sub_22FFB1178();
}

uint64_t sub_22FF74830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22FEAA538;

  return (sub_22FF74910)(a1, a2, a3, a4, a5);
}

uint64_t sub_22FF74910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = sub_22FFB13C8();
  v6[18] = v7;
  v8 = *(v7 - 8);
  v6[19] = v8;
  v9 = *(v8 + 64) + 15;
  v6[20] = swift_task_alloc();
  v10 = sub_22FFB1398();
  v6[21] = v10;
  v11 = *(v10 - 8);
  v6[22] = v11;
  v12 = *(v11 + 64) + 15;
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF74A34, 0, 0);
}

uint64_t sub_22FF74A34()
{
  v1 = v0[16];
  type metadata accessor for Proto_AppData(0);
  sub_22FF7BE88(qword_2814906B0, type metadata accessor for Proto_AppData);
  v2 = sub_22FFB1178();
  v0[24] = v2;
  v0[25] = v3;
  v20 = v0[23];
  v21 = v0[22];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v2;
  v9 = v3;
  sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540]);
  sub_22FFB1388();
  sub_22FEA5608(v8, v9);
  sub_22FF9EA78(v8, v9);
  sub_22FEA55AC(v8, v9);
  sub_22FFB1368();
  (*(v6 + 8))(v5, v7);
  v0[5] = v4;
  v0[6] = sub_22FF7BE88(&qword_28148F1C0, MEMORY[0x277CC5290]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v21 + 16))(boxed_opaque_existential_1, v20, v4);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_22FFB0618();
  (*(v21 + 8))(v20, v4);
  v12 = v0[10];
  v11 = v0[11];
  v0[26] = v12;
  v0[27] = v11;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v13 = swift_task_alloc();
  v0[28] = v13;
  *v13 = v0;
  v13[1] = sub_22FF74D4C;
  v14 = v0[17];
  v15 = v0[14];
  v16 = v0[15];
  v17 = v0[12];
  v18 = v0[13];

  return NodeAttestor.attest(key:using:expiration:nonce:)(v17, v18, v15, v16, v12, v11);
}

uint64_t sub_22FF74D4C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v6 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_22FF74E68;
  }

  else
  {
    sub_22FEA55AC(*(v2 + 208), *(v2 + 216));
    v4 = sub_22FF91B64;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FF74E68()
{
  v1 = v0[24];
  v2 = v0[25];
  sub_22FEA55AC(v0[26], v0[27]);
  sub_22FEA55AC(v1, v2);
  v3 = v0[29];
  v4 = v0[23];
  v5 = v0[20];

  v6 = v0[1];

  return v6();
}

uint64_t sub_22FF74EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = sub_22FFB13C8();
  v6[18] = v7;
  v8 = *(v7 - 8);
  v6[19] = v8;
  v9 = *(v8 + 64) + 15;
  v6[20] = swift_task_alloc();
  v10 = sub_22FFB1398();
  v6[21] = v10;
  v11 = *(v10 - 8);
  v6[22] = v11;
  v12 = *(v11 + 64) + 15;
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF75014, 0, 0);
}

uint64_t sub_22FF75014()
{
  v1 = v0[16];
  type metadata accessor for Proto_AppData(0);
  sub_22FF7BE88(qword_2814906B0, type metadata accessor for Proto_AppData);
  v2 = sub_22FFB1178();
  v0[24] = v2;
  v0[25] = v3;
  v20 = v0[23];
  v21 = v0[22];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v2;
  v9 = v3;
  sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540]);
  sub_22FFB1388();
  sub_22FEA5608(v8, v9);
  sub_22FF9EA78(v8, v9);
  sub_22FEA55AC(v8, v9);
  sub_22FFB1368();
  (*(v6 + 8))(v5, v7);
  v0[5] = v4;
  v0[6] = sub_22FF7BE88(&qword_28148F1C0, MEMORY[0x277CC5290]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v21 + 16))(boxed_opaque_existential_1, v20, v4);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_22FFB0618();
  (*(v21 + 8))(v20, v4);
  v12 = v0[10];
  v11 = v0[11];
  v0[26] = v12;
  v0[27] = v11;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v13 = swift_task_alloc();
  v0[28] = v13;
  *v13 = v0;
  v13[1] = sub_22FF7532C;
  v14 = v0[17];
  v15 = v0[14];
  v16 = v0[15];
  v17 = v0[12];
  v18 = v0[13];

  return NodeAttestor.attest(key:using:expiration:nonce:)(v17, v18, v15, v16, v12, v11);
}

uint64_t sub_22FF7532C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v6 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_22FF91BB4;
  }

  else
  {
    sub_22FEA55AC(*(v2 + 208), *(v2 + 216));
    v4 = sub_22FF91B64;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FF75448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = sub_22FFB13C8();
  v6[18] = v7;
  v8 = *(v7 - 8);
  v6[19] = v8;
  v9 = *(v8 + 64) + 15;
  v6[20] = swift_task_alloc();
  v10 = sub_22FFB1398();
  v6[21] = v10;
  v11 = *(v10 - 8);
  v6[22] = v11;
  v12 = *(v11 + 64) + 15;
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF7556C, 0, 0);
}

uint64_t sub_22FF7556C()
{
  v1 = v0[16];
  type metadata accessor for Proto_AppData(0);
  sub_22FF7BE88(qword_2814906B0, type metadata accessor for Proto_AppData);
  v2 = sub_22FFB1178();
  v0[24] = v2;
  v0[25] = v3;
  v20 = v0[23];
  v21 = v0[22];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v2;
  v9 = v3;
  sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540]);
  sub_22FFB1388();
  sub_22FEA5608(v8, v9);
  sub_22FF9EA78(v8, v9);
  sub_22FEA55AC(v8, v9);
  sub_22FFB1368();
  (*(v6 + 8))(v5, v7);
  v0[5] = v4;
  v0[6] = sub_22FF7BE88(&qword_28148F1C0, MEMORY[0x277CC5290]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v21 + 16))(boxed_opaque_existential_1, v20, v4);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_22FFB0618();
  (*(v21 + 8))(v20, v4);
  v12 = v0[10];
  v11 = v0[11];
  v0[26] = v12;
  v0[27] = v11;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v13 = swift_task_alloc();
  v0[28] = v13;
  *v13 = v0;
  v13[1] = sub_22FF75894;
  v14 = v0[17];
  v15 = v0[14];
  v16 = v0[15];
  v17 = v0[12];
  v18 = v0[13];

  return sub_22FF7C5BC(v17, v18, v15, v16, v12, v11);
}

uint64_t sub_22FF75894()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  sub_22FEA55AC(*(v2 + 208), *(v2 + 216));
  if (v0)
  {
    v5 = sub_22FF91BB8;
  }

  else
  {
    v5 = sub_22FF91B64;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FF759DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a5;
  v6 = sub_22FFB13C8();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = sub_22FFB1398();
  v5[13] = v9;
  v10 = *(v9 - 8);
  v5[14] = v10;
  v11 = *(v10 + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF75AF8, 0, 0);
}

uint64_t sub_22FF75AF8()
{
  v1 = v0[9];
  type metadata accessor for Proto_AppData(0);
  sub_22FF7BE88(qword_2814906B0, type metadata accessor for Proto_AppData);
  v2 = sub_22FFB1178();
  v22 = v0[15];
  v23 = v0[14];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v2;
  v9 = v8;
  sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540]);
  sub_22FFB1388();
  v10 = v9;
  sub_22FEA5608(v7, v9);
  v24 = v9;
  sub_22FF9EA78(v7, v9);
  v11 = v7;
  sub_22FEA55AC(v7, v10);
  sub_22FFB1368();
  (*(v5 + 8))(v4, v6);
  v0[5] = v3;
  v0[6] = sub_22FF7BE88(&qword_28148F1C0, MEMORY[0x277CC5290]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v23 + 16))(boxed_opaque_existential_1, v22, v3);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_22FFB0618();
  (*(v23 + 8))(v22, v3);
  v13 = v0[7];
  v14 = v0[8];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  type metadata accessor for NodeAttestor.Error();
  sub_22FF7BE88(&qword_27DAF1810, type metadata accessor for NodeAttestor.Error);
  swift_allocError();
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
  (*(*(v17 - 8) + 56))(v16, 7, 7, v17);
  swift_willThrow();
  sub_22FEA55AC(v13, v14);
  sub_22FEA55AC(v11, v24);
  v18 = v0[15];
  v19 = v0[12];

  v20 = v0[1];

  return v20();
}

uint64_t sub_22FF75E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = sub_22FFB13C8();
  v6[18] = v7;
  v8 = *(v7 - 8);
  v6[19] = v8;
  v9 = *(v8 + 64) + 15;
  v6[20] = swift_task_alloc();
  v10 = sub_22FFB1398();
  v6[21] = v10;
  v11 = *(v10 - 8);
  v6[22] = v11;
  v12 = *(v11 + 64) + 15;
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF75F74, 0, 0);
}

uint64_t sub_22FF75F74()
{
  v1 = v0[16];
  type metadata accessor for Proto_AppData(0);
  sub_22FF7BE88(qword_2814906B0, type metadata accessor for Proto_AppData);
  v2 = sub_22FFB1178();
  v0[24] = v2;
  v0[25] = v3;
  v20 = v0[23];
  v21 = v0[22];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v2;
  v9 = v3;
  sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540]);
  sub_22FFB1388();
  sub_22FEA5608(v8, v9);
  sub_22FF9EA78(v8, v9);
  sub_22FEA55AC(v8, v9);
  sub_22FFB1368();
  (*(v6 + 8))(v5, v7);
  v0[5] = v4;
  v0[6] = sub_22FF7BE88(&qword_28148F1C0, MEMORY[0x277CC5290]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v21 + 16))(boxed_opaque_existential_1, v20, v4);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_22FFB0618();
  (*(v21 + 8))(v20, v4);
  v12 = v0[10];
  v11 = v0[11];
  v0[26] = v12;
  v0[27] = v11;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v13 = swift_task_alloc();
  v0[28] = v13;
  *v13 = v0;
  v13[1] = sub_22FF7628C;
  v14 = v0[17];
  v15 = v0[14];
  v16 = v0[15];
  v17 = v0[12];
  v18 = v0[13];

  return NodeAttestor.attest(key:using:expiration:nonce:)(v17, v18, v15, v16, v12, v11);
}

uint64_t sub_22FF7628C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  sub_22FEA55AC(*(v2 + 208), *(v2 + 216));
  if (v0)
  {
    v5 = sub_22FF764D4;
  }

  else
  {
    v5 = sub_22FF763D4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FF763D4()
{
  v1 = v0[12];
  v2 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v3 = *(v1 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v5 = sub_22FF10520(v5);
    *(v1 + v2) = v5;
  }

  v10 = v0[24];
  v9 = v0[25];
  v11 = v0[23];
  v12 = v0[20];
  v13 = (v5 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  *v13 = v10;
  v13[1] = v9;
  sub_22FEA55AC(v14, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_22FF764D4()
{
  sub_22FEA55AC(v0[24], v0[25]);
  v1 = v0[29];
  v2 = v0[23];
  v3 = v0[20];

  v4 = v0[1];

  return v4();
}

uint64_t Attestor.attest(key:using:expiration:appData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[18] = a7;
  v8[19] = v7;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  v9 = sub_22FFB13C8();
  v8[20] = v9;
  v10 = *(v9 - 8);
  v8[21] = v10;
  v11 = *(v10 + 64) + 15;
  v8[22] = swift_task_alloc();
  v12 = sub_22FFB1398();
  v8[23] = v12;
  v13 = *(v12 - 8);
  v8[24] = v13;
  v14 = *(v13 + 64) + 15;
  v8[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF76674, 0, 0);
}

uint64_t sub_22FF76674()
{
  v1 = v0[16];
  type metadata accessor for Proto_AppData(0);
  sub_22FF7BE88(qword_2814906B0, type metadata accessor for Proto_AppData);
  v2 = sub_22FFB1178();
  v0[26] = v2;
  v0[27] = v3;
  v24 = v0[25];
  v25 = v0[24];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v27 = v0[18];
  v8 = v2;
  v9 = v3;
  sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540]);
  sub_22FFB1388();
  sub_22FEA5608(v8, v9);
  sub_22FF9EA78(v8, v9);
  sub_22FEA55AC(v8, v9);
  sub_22FFB1368();
  (*(v6 + 8))(v5, v7);
  v0[5] = v4;
  v0[6] = sub_22FF7BE88(&qword_28148F1C0, MEMORY[0x277CC5290]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v25 + 16))(boxed_opaque_existential_1, v24, v4);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_22FFB0618();
  (*(v25 + 8))(v24, v4);
  v12 = v0[10];
  v11 = v0[11];
  v0[28] = v12;
  v0[29] = v11;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v13 = *(v27 + 56);
  v26 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[30] = v15;
  *v15 = v0;
  v15[1] = sub_22FF76A08;
  v16 = v0[18];
  v17 = v0[19];
  v18 = v0[17];
  v19 = v0[14];
  v20 = v0[15];
  v21 = v0[12];
  v22 = v0[13];

  return v26(v21, v22, v19, v20, v12, v11, v18, v16);
}

uint64_t sub_22FF76A08()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v6 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = sub_22FF76C24;
  }

  else
  {
    sub_22FEA55AC(*(v2 + 224), *(v2 + 232));
    v4 = sub_22FF76B24;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FF76B24()
{
  v1 = v0[12];
  v2 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v3 = *(v1 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v5 = sub_22FF10520(v5);
    *(v1 + v2) = v5;
  }

  v10 = v0[26];
  v9 = v0[27];
  v11 = v0[25];
  v12 = v0[22];
  v13 = (v5 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  *v13 = v10;
  v13[1] = v9;
  sub_22FEA55AC(v14, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_22FF76C24()
{
  v1 = v0[28];
  v2 = v0[29];
  sub_22FEA55AC(v0[26], v0[27]);
  sub_22FEA55AC(v1, v2);
  v3 = v0[31];
  v4 = v0[25];
  v5 = v0[22];

  v6 = v0[1];

  return v6();
}

uint64_t sub_22FF76CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22FF76CD4, 0, 0);
}

uint64_t sub_22FF76CD4()
{
  v1 = v0[7];
  v2 = NodeAttestor.attestingKey.getter();
  v0[8] = v2;
  v3 = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_22FF76DD0;
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  return NodeAttestor.attest(key:using:expiration:nonce:)(v9, v10, v3, v7, v8, v5);
}

uint64_t sub_22FF76DD0()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FF76F0C, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_22FF76F0C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t Attestor.attest(key:expiration:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_22FF76F9C, 0, 0);
}

uint64_t sub_22FF76F9C()
{
  v1 = v0[9];
  v2 = (*(v0[8] + 16))(v0[7]);
  v0[10] = v2;
  v3 = v2;
  v15 = (v0[8] + 56);
  v16 = (*v15 + **v15);
  v4 = (*v15)[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_22FF77120;
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[2];
  v13 = v0[3];

  return v16(v12, v13, v3, v10, v11, v8, v9, v6);
}

uint64_t sub_22FF77120()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  *(v3 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FF7725C, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_22FF7725C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2();
}

double Attestor.defaultKeyLifetime.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  v2 = sub_22FFB1D28();
  sub_22FFB1D28();
  return v3 * 1.0e-18 + v2;
}

uint64_t _s16CloudAttestation8AttestorPAAE15sealedHashSlotsShy10Foundation4UUIDVGvg_0()
{
  if (qword_27DAF1498 != -1)
  {
    swift_once();
  }

  v0 = sub_22FFB12F8();
  __swift_project_value_buffer(v0, qword_27DAF38A0);
  v1 = sub_22FFB12D8();
  v2 = sub_22FFB1838();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22FE99000, v1, v2, "property sealedHashSlots is unused", v3, 2u);
    MEMORY[0x23190EFF0](v3, -1, -1);
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22FF7740C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_22FEAA538;

  return Validator.validate<A>(bundle:nonce:policy:)(a1, a2, a3, a4, a5, a6, v17, a10);
}

uint64_t Validator.validate<A>(bundle:nonce:policy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(v22 + 64);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_22FEAA538;

  return v20(a1, a2, a3, a4, a5, a6, a8);
}

uint64_t sub_22FF77660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22FEAA538;

  return NodeValidator.validate(bundle:nonce:)(a1, a2, a3, a4, 0, 0xF000000000000000);
}

uint64_t sub_22FF7772C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for EnsembleValidator();
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF777C8, 0, 0);
}

uint64_t sub_22FF777C8()
{
  v1 = (v0[6] + *(v0[7] + 48));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_22FF778F4;

  return v8(v2, v3);
}

uint64_t sub_22FF778F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_22FF77A20;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_22FF77B18;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22FF77A20()
{
  sub_22FF9064C(v0[6], v0[8], type metadata accessor for EnsembleValidator);
  v2 = v0[7];
  v1 = v0[8];
  *(v1 + *(v2 + 68)) = 0;
  *(v1 + *(v2 + 60)) = 0;
  *(v0[8] + *(v0[7] + 64)) = 0;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_22FF77C6C;
  v4 = v0[8];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return sub_22FEB7794(v7, v8, v5, v6, 0, 0xF000000000000000);
}

uint64_t sub_22FF77B18()
{
  v1 = v0[10];
  sub_22FF9064C(v0[6], v0[8], type metadata accessor for EnsembleValidator);
  if (v1)
  {
    v2 = v0[10];
    v4 = v0[7];
    v3 = v0[8];
    *(v3 + *(v4 + 68)) = *(v2 + 16) != 0;
    v5 = sub_22FEBE9A0(v2);

    *(v3 + *(v4 + 60)) = v5 & 1;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    v8 = v0[7];
    v7 = v0[8];
    *(v7 + *(v8 + 68)) = 0;
    *(v7 + *(v8 + 60)) = 0;
  }

  *(v0[8] + *(v0[7] + 64)) = v6;
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_22FF77C6C;
  v10 = v0[8];
  v11 = v0[4];
  v12 = v0[5];
  v13 = v0[2];
  v14 = v0[3];

  return sub_22FEB7794(v13, v14, v11, v12, 0, 0xF000000000000000);
}

uint64_t sub_22FF77C6C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_22FF77E04;
  }

  else
  {
    v3 = sub_22FF77D80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FF77D80()
{
  sub_22FF906D4(*(v0 + 64), type metadata accessor for EnsembleValidator);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FF77E04()
{
  sub_22FF906D4(v0[8], type metadata accessor for EnsembleValidator);

  v1 = v0[1];
  v2 = v0[12];

  return v1();
}

uint64_t sub_22FF77E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF21C8, &qword_22FFB6308);
  v5[24] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v8 = sub_22FFB13C8();
  v5[27] = v8;
  v9 = *(v8 - 8);
  v5[28] = v9;
  v10 = *(v9 + 64) + 15;
  v5[29] = swift_task_alloc();
  v11 = sub_22FFB1398();
  v5[30] = v11;
  v12 = *(v11 - 8);
  v5[31] = v12;
  v13 = *(v12 + 64) + 15;
  v5[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF77FF4, 0, 0);
}

uint64_t sub_22FF77FF4()
{
  v1 = v0[32];
  v2 = v0[29];
  v19 = v0[30];
  v20 = v0[31];
  v4 = v0[27];
  v3 = v0[28];
  v21 = v0[24];
  v22 = v0[26];
  v5 = v0[22];
  v6 = (*(v5 + *(type metadata accessor for Proto_AttestationBundle(0) + 20)) + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  sub_22FEA5608(*v6, v8);
  sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540]);
  sub_22FFB1388();
  sub_22FEA5608(v7, v8);
  sub_22FF9EA78(v7, v8);
  sub_22FEA55AC(v7, v8);
  sub_22FFB1368();
  sub_22FEA55AC(v7, v8);
  (*(v3 + 8))(v2, v4);
  v0[11] = v19;
  v0[12] = sub_22FF7BE88(&qword_28148F1C0, MEMORY[0x277CC5290]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  (*(v20 + 16))(boxed_opaque_existential_1, v1, v19);
  __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
  sub_22FFB0618();
  (*(v20 + 8))(v1, v19);
  v11 = v0[16];
  v10 = v0[17];
  v0[33] = v11;
  v0[34] = v10;
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v12 = *(v21 + 48);
  v13 = *(v21 + 64);
  sub_22FEA5608(v11, v10);
  v14 = swift_task_alloc();
  v0[35] = v14;
  *v14 = v0;
  v14[1] = sub_22FF782C4;
  v15 = v0[26];
  v16 = v0[22];
  v17 = v0[23];

  return NodeValidator.validate(bundle:nonce:)(v15, v22 + v12, v22 + v13, v16, v11, v10);
}

uint64_t sub_22FF782C4()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v6 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = sub_22FEF4A28;
  }

  else
  {
    sub_22FEA55AC(*(v2 + 264), *(v2 + 272));
    v4 = sub_22FF783E0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FF783E0()
{
  v1 = *(v0 + 184);
  PCC.ProxyNodeValidator.policy.getter((v0 + 16));
  *(v0 + 144) = sub_22FFA7050(MEMORY[0x277D84F90]);
  v2 = swift_task_alloc();
  *(v0 + 296) = v2;
  *v2 = v0;
  v2[1] = sub_22FF784B4;
  v3 = *(v0 + 176);

  return (sub_22FFA3BB0)(v3, v0 + 144);
}

uint64_t sub_22FF784B4()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 144);

  if (v0)
  {
    v6 = sub_22FEF4958;
  }

  else
  {
    v6 = sub_22FF785E8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22FF785E8()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v15 = v0[29];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[24];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];
  sub_22FEAEA34((v0 + 2), &qword_27DAF21D0, &unk_22FFB6310);
  sub_22FEA55AC(v2, v1);
  sub_22FEF4B94(v4, v5);
  v10 = *(v6 + 48);
  v11 = *(v6 + 64);
  *v9 = *v5;
  v12 = sub_22FFB0908();
  (*(*(v12 - 8) + 32))(v8, &v5[v10], v12);
  sub_22FF90754(&v5[v11], v7, type metadata accessor for Validated.AttestationBundle);

  v13 = v0[1];

  return v13();
}

uint64_t Validator.validate(bundle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 64);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22FEAA538;

  return (v17)(a1, a2, a3, a4, 0, 0xF000000000000000, a5, a6);
}

uint64_t sub_22FF788C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22FEAA538;

  return sub_22FF74EF0(a1, a2, a3, a4, a5);
}

uint64_t sub_22FF789A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22FF789CC, 0, 0);
}

uint64_t sub_22FF789CC()
{
  v1 = v0[7];
  v2 = NodeAttestor.attestingKey.getter();
  v0[8] = v2;
  v3 = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_22FF7446C;
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  return NodeAttestor.attest(key:using:expiration:nonce:)(v9, v10, v3, v7, v8, v5);
}

double sub_22FF78AC8()
{
  v0 = sub_22FFB1D28();
  sub_22FFB1D28();
  return v1 * 1.0e-18 + v0;
}

uint64_t sub_22FF78B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = *MEMORY[0x277D85DE8];
  v9[37] = a8;
  v9[38] = v8;
  v9[35] = a6;
  v9[36] = a7;
  v9[33] = a4;
  v9[34] = a5;
  v9[31] = a2;
  v9[32] = a3;
  v9[30] = a1;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30) - 8) + 64) + 15;
  v9[39] = swift_task_alloc();
  v11 = sub_22FFB0EE8();
  v9[40] = v11;
  v12 = *(v11 - 8);
  v9[41] = v12;
  v13 = *(v12 + 64) + 15;
  v9[42] = swift_task_alloc();
  v14 = sub_22FFB0908();
  v9[43] = v14;
  v15 = *(v14 - 8);
  v9[44] = v15;
  v16 = *(v15 + 64) + 15;
  v9[45] = swift_task_alloc();
  v9[46] = swift_task_alloc();
  v17 = *(*(type metadata accessor for AttestationBundle(0) - 8) + 64) + 15;
  v9[47] = swift_task_alloc();
  v9[48] = swift_task_alloc();
  v18 = sub_22FFB13C8();
  v9[49] = v18;
  v19 = *(v18 - 8);
  v9[50] = v19;
  v20 = *(v19 + 64) + 15;
  v9[51] = swift_task_alloc();
  v21 = sub_22FFB1398();
  v9[52] = v21;
  v22 = *(v21 - 8);
  v9[53] = v22;
  v23 = *(v22 + 64) + 15;
  v9[54] = swift_task_alloc();
  v9[55] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[56] = AssociatedTypeWitness;
  v25 = *(AssociatedTypeWitness - 8);
  v9[57] = v25;
  v26 = *(v25 + 64) + 15;
  v9[58] = swift_task_alloc();
  v27 = sub_22FFB12F8();
  v9[59] = v27;
  v28 = *(v27 - 8);
  v9[60] = v28;
  v29 = *(v28 + 64) + 15;
  v9[61] = swift_task_alloc();
  v30 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22FF78EA0, 0, 0);
}

uint64_t sub_22FF78EA0()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = v0[61];
  v2 = v0[58];
  v3 = v0[56];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[36];
  v0[22] = v6;
  swift_getMetatypeMetadata();
  sub_22FFB1508();
  sub_22FFB12E8();
  v0[23] = sub_22FFA7050(MEMORY[0x277D84F90]);
  (*(v5 + 56))(v6, v5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(AssociatedConformanceWitness + 8);
  v16 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[62] = v10;
  *v10 = v0;
  v10[1] = sub_22FF790AC;
  v11 = v0[58];
  v12 = v0[56];
  v13 = v0[33];
  v14 = *MEMORY[0x277D85DE8];

  return (v16)(v13, v0 + 23, v12, AssociatedConformanceWitness);
}

uint64_t sub_22FF790AC()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 496);
  v4 = *v1;
  *(*v1 + 504) = v0;

  (*(v2[57] + 8))(v2[58], v2[56]);
  if (v0)
  {
    v5 = sub_22FF7A584;
  }

  else
  {
    v5 = sub_22FF79240;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FF79240()
{
  v206 = v0;
  v205 = *MEMORY[0x277D85DE8];
  v1 = v0[23];
  if (*(v1 + 16) && (v2 = sub_22FFA62AC(&type metadata for SEPAttestationPolicy, &protocol witness table for SEPAttestationPolicy, 0xD000000000000014, 0x800000022FFC9B50), (v3 & 1) != 0))
  {
    sub_22FEBF2A4(*(v1 + 56) + 32 * v2, (v0 + 2));
  }

  else
  {
    *(v0 + 1) = 0u;
    *(v0 + 2) = 0u;
  }

  if (v0[5])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
    if (swift_dynamicCast())
    {
      v199 = *(v0 + 4);
      v197 = *(v0 + 3);
      v4 = v0[63];
      goto LABEL_12;
    }
  }

  else
  {
    sub_22FEAEA34((v0 + 2), &qword_27DAF1A78, &unk_22FFB3A50);
  }

  v4 = v0[63];
  v5 = v0[33];
  v6 = *(v5 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  swift_beginAccess();
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  sub_22FEA5608(v8, v7);
  SEP.Attestation.init(from:)(v8, v7, &v201);
  if (v4)
  {
    v9 = v4;
    v10 = v0[23];

LABEL_43:
    v116 = v0[61];
    v117 = v9;
    v118 = sub_22FFB12D8();
    v119 = sub_22FFB1838();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      *v120 = 138412290;
      v122 = v9;
      v123 = _swift_stdlib_bridgeErrorToNSError();
      *(v120 + 4) = v123;
      *v121 = v123;
      _os_log_impl(&dword_22FE99000, v118, v119, "AttestationBundle validation failed: %@", v120, 0xCu);
      sub_22FEAEA34(v121, &qword_27DAF1680, &unk_22FFB4B10);
      MEMORY[0x23190EFF0](v121, -1, -1);
      MEMORY[0x23190EFF0](v120, -1, -1);
    }

    v124 = v118;
    v126 = v0[60];
    v125 = v0[61];
    v128 = v0[58];
    v127 = v0[59];
    v130 = v0[54];
    v129 = v0[55];
    v131 = v0[51];
    v132 = v0[48];
    v187 = v0[47];
    v189 = v0[46];
    v191 = v0[45];
    v195 = v0[42];
    v198 = v0[39];

    swift_willThrow();
    (*(v126 + 8))(v125, v127);

    v109 = v0[1];
    v133 = *MEMORY[0x277D85DE8];
    goto LABEL_46;
  }

  v199 = v202;
  v197 = v201;
LABEL_12:
  v192 = v0[61];
  v12 = v0[34];
  v11 = v0[35];
  v13 = v0[33];
  v0[24] = 0;
  v0[25] = 0;
  v14 = swift_task_alloc();
  *(v14 + 16) = v0 + 24;
  *(v14 + 24) = v0 + 25;
  sub_22FED55F8(v199, *(&v199 + 1), sub_22FEBF260);

  v15 = v201;
  sub_22FF85468(v12, v11, v201, *(&v201 + 1), v13, v192);
  v9 = v4;
  sub_22FEA56EC(v15, *(&v15 + 1));
  if (v4)
  {
    sub_22FEA55AC(v197, *(&v197 + 1));
    sub_22FEA55AC(v199, *(&v199 + 1));
    v16 = v0[23];

    goto LABEL_43;
  }

  v193 = v0 + 23;
  v188 = v199;
  v201 = v197;
  v202 = v199;
  SEP.Attestation.publicKeyData.getter(&v203);
  v190 = v204;
  if ((~v204 & 0x3000000000000000) == 0)
  {
    v17 = *v193;

    type metadata accessor for CloudAttestationError(0);
    sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
    v9 = swift_allocError();
    *v18 = 0xD000000000000017;
    v18[1] = 0x800000022FFC9B70;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22FEA55AC(v197, *(&v197 + 1));
    v20 = *(&v199 + 1);
    v19 = v199;
LABEL_16:
    sub_22FEA55AC(v19, v20);
    goto LABEL_43;
  }

  v21 = v0 + 23;
  v22 = v203;
  v23 = v0[61];
  sub_22FEA5600(v203, v204);
  v24 = sub_22FFB12D8();
  v25 = sub_22FFB1848();
  sub_22FEBF27C(v22, v190);
  v186 = v22;
  if (os_log_type_enabled(v24, v25))
  {
    v165 = v0[55];
    v181 = v0[53];
    v174 = v0[52];
    v26 = v0[51];
    v170 = v0[50];
    v27 = v0[49];
    buf = swift_slowAlloc();
    v184 = swift_slowAlloc();
    *&v201 = v184;
    *buf = 136315138;
    sub_22FEA5600(v22, v190);
    sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540]);
    log = v24;
    sub_22FFB1388();
    sub_22FEA5600(v22, v190);
    sub_22FF9EA78(v22, v190 & 0xDFFFFFFFFFFFFFFFLL);
    sub_22FEBF27C(v22, v190);
    sub_22FFB1368();
    v21 = v0 + 23;
    sub_22FEBF27C(v22, v190);
    (*(v170 + 8))(v26, v27);
    sub_22FF7BE88(&qword_28148F1B0, MEMORY[0x277CC5290]);
    v28 = sub_22FFB1BA8();
    v30 = v29;
    (*(v181 + 8))(v165, v174);
    v31 = sub_22FF9E448(v28, v30, &v201);

    *(buf + 4) = v31;
    _os_log_impl(&dword_22FE99000, log, v25, "AttestationBundle passed validation for public key: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v184);
    MEMORY[0x23190EFF0](v184, -1, -1);
    MEMORY[0x23190EFF0](buf, -1, -1);
  }

  else
  {
  }

  v32 = v0[33];
  v33 = type metadata accessor for Proto_AttestationBundle(0);
  v34 = *(v32 + *(v33 + 20));
  v35 = (v34 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v36 = *v35;
  v37 = v35[1];
  v38 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v38 != 2)
    {
      goto LABEL_34;
    }

    v40 = *(v36 + 16);
    v39 = *(v36 + 24);
  }

  else
  {
    if (!v38)
    {
      if ((v37 & 0xFF000000000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

    v40 = v36;
    v39 = v36 >> 32;
  }

  if (v40 == v39)
  {
    goto LABEL_34;
  }

LABEL_28:
  v21[3] = 0;
  v21[4] = 0;
  v41 = swift_task_alloc();
  *(v41 + 16) = v21 + 3;
  *(v41 + 24) = v21 + 4;
  sub_22FED55F8(v199, *(&v199 + 1), sub_22FEBFA3C);

  if (*(&v201 + 1) >> 60 == 15)
  {
    v42 = v0[61];
    v43 = v0[23];

    v44 = sub_22FFB12D8();
    v45 = sub_22FFB1838();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_22FE99000, v44, v45, "Bundle AppData is non-empty, but attestation contains no nonce", v46, 2u);
      MEMORY[0x23190EFF0](v46, -1, -1);
    }

    type metadata accessor for CloudAttestationError(0);
    sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
    v47 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22FEBF27C(v186, v190);
    sub_22FEA55AC(v197, *(&v197 + 1));
    v19 = v199;
    v9 = v47;
    v20 = *(&v199 + 1);
    goto LABEL_16;
  }

  v182 = v201;
  v48 = v0[54];
  v200 = v0[53];
  v49 = v0[51];
  bufa = v0[52];
  v50 = v0[49];
  v51 = v0[50];
  v158 = v0;
  v52 = *v35;
  v53 = v35[1];
  sub_22FEA5608(*v35, v53);
  sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540]);
  sub_22FFB1388();
  sub_22FEA5608(v52, v53);
  sub_22FF9EA78(v52, v53);
  sub_22FEA55AC(v52, v53);
  sub_22FFB1368();
  v54 = v53;
  v55 = v182;
  sub_22FEA55AC(v52, v54);
  v56 = *(v51 + 8);
  v57 = v50;
  v58 = *(&v182 + 1);
  v56(v49, v57);
  v59 = sub_22FECAD68(v182, *(&v182 + 1));
  v60 = *(v200 + 8);
  v60(v48, bufa);
  if ((v59 & 1) == 0)
  {
    v135 = v158[61];
    v136 = v158[48];
    v137 = v158[33];
    v138 = v158[23];

    sub_22FF9064C(v137, v136, type metadata accessor for AttestationBundle);
    sub_22FEA5608(v182, *(&v182 + 1));
    v139 = sub_22FFB12D8();
    v140 = sub_22FFB1838();
    sub_22FEA56EC(v182, *(&v182 + 1));
    if (os_log_type_enabled(v139, v140))
    {
      bufc = v140;
      v141 = v158[54];
      v142 = v158[51];
      v169 = v158[52];
      v143 = v158[48];
      v144 = v158[49];
      v164 = v143;
      v167 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      *&v201 = v196;
      *v167 = 136446466;
      v145 = (*(v143 + *(v33 + 20)) + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
      swift_beginAccess();
      v176 = v139;
      v147 = *v145;
      v146 = v145[1];
      sub_22FEA5608(v147, v146);
      sub_22FFB1388();
      sub_22FEA5608(v147, v146);
      sub_22FF9EA78(v147, v146);
      sub_22FEA55AC(v147, v146);
      sub_22FFB1368();
      v148 = v147;
      v55 = v182;
      sub_22FEA55AC(v148, v146);
      v149 = v144;
      v58 = *(&v182 + 1);
      v56(v142, v149);
      v150 = sub_22FF95DBC();
      v152 = v151;
      v60(v141, v169);
      sub_22FF906D4(v164, type metadata accessor for AttestationBundle);
      v153 = sub_22FF9E448(v150, v152, &v201);

      *(v167 + 4) = v153;
      *(v167 + 12) = 2082;
      v154 = sub_22FEB0B54(v182, *(&v182 + 1));
      v156 = sub_22FF9E448(v154, v155, &v201);

      *(v167 + 14) = v156;
      _os_log_impl(&dword_22FE99000, v176, bufc, "Bundle AppData failed integrity check: (digest:%{public}s != nonce:%{public}s", v167, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190EFF0](v196, -1, -1);
      MEMORY[0x23190EFF0](v167, -1, -1);

      v0 = v158;
    }

    else
    {
      v0 = v158;
      v157 = v158[48];

      sub_22FF906D4(v157, type metadata accessor for AttestationBundle);
    }

    type metadata accessor for CloudAttestationError(0);
    sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
    v9 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22FEBF27C(v186, v190);
    sub_22FEA56EC(v55, v58);
    sub_22FEA55AC(v197, *(&v197 + 1));
    v20 = *(&v199 + 1);
    v19 = v188;
    goto LABEL_16;
  }

  sub_22FEA56EC(v182, *(&v182 + 1));
  v0 = v158;
LABEL_34:
  v61 = v0[40];
  v62 = v0[41];
  v63 = v0[39];
  v64 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEBF3A4(v34 + v64, v63, &qword_27DAF1520, &qword_22FFB3A30);
  v65 = *(v62 + 48);
  if (v65(v63, 1, v61) == 1)
  {
    v66 = v0[39];
    v67 = v0[40];
    v68 = v0[42];
    sub_22FFB0ED8();
    if (v65(v66, 1, v67) != 1)
    {
      sub_22FEAEA34(v0[39], &qword_27DAF1520, &qword_22FFB3A30);
    }
  }

  else
  {
    (*(v0[41] + 32))(v0[42], v0[39], v0[40]);
  }

  v70 = v0[45];
  v69 = v0[46];
  v71 = v0;
  v72 = v0[44];
  v73 = v71[42];
  v74 = v71[43];
  v75 = v71[40];
  v76 = v71[41];
  sub_22FFB0EB8();
  (*(v76 + 8))(v73, v75);
  sub_22FFB08E8();
  LOBYTE(v73) = sub_22FFB0888();
  v77 = *(v72 + 8);
  v77(v70, v74);
  if ((v73 & 1) == 0)
  {
    v111 = v71[46];
    v112 = v71[43];
    v113 = v71[44];
    v114 = v71[23];

    type metadata accessor for CloudAttestationError(0);
    sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
    v9 = swift_allocError();
    (*(v113 + 16))(v115, v111, v112);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22FEA55AC(v197, *(&v197 + 1));
    sub_22FEA55AC(v188, *(&v199 + 1));
    sub_22FEBF27C(v22, v190);
    v77(v111, v112);
    v0 = v71;
    goto LABEL_43;
  }

  v185 = v77;
  v78 = v71[46];
  v79 = v71[47];
  v80 = v71[43];
  v81 = v71[44];
  v82 = v71[33];
  v84 = v71[30];
  v83 = v71[31];
  *v84 = v22;
  v84[1] = v190;
  (*(v81 + 16))(v83, v78, v80);
  sub_22FF9064C(v82, v79, type metadata accessor for AttestationBundle);
  v71[28] = 0;
  v71[29] = 0;
  v85 = swift_task_alloc();
  *(v85 + 16) = v193 + 5;
  *(v85 + 24) = v193 + 6;
  sub_22FEBF290(v22, v190);
  sub_22FED55F8(v188, *(&v199 + 1), sub_22FEBFA54);

  v86 = 0;
  v87 = 0;
  if (v202 != 2)
  {
    v89 = v201;
    v88 = *(&v201 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_22FFB2D20;
    v91 = MEMORY[0x277D84D30];
    *(v90 + 56) = MEMORY[0x277D84CC0];
    *(v90 + 64) = v91;
    v92 = MEMORY[0x277D84D38];
    *(v90 + 32) = v89;
    v93 = MEMORY[0x277D84D90];
    *(v90 + 96) = v92;
    *(v90 + 104) = v93;
    *(v90 + 72) = v88;
    v86 = sub_22FFB14D8();
  }

  v159 = v86;
  v160 = v87;
  v94 = v71[61];
  v95 = v71[59];
  v96 = v71[60];
  v166 = v71[58];
  v168 = v71[55];
  v171 = v71[54];
  loga = v71[51];
  v163 = v71[47];
  v97 = v71[46];
  v175 = v71[48];
  bufb = v71[45];
  v98 = v71[43];
  v183 = v71[42];
  v194 = v71[39];
  v99 = v71[32];
  v203 = v71[23];
  v100 = sub_22FEE2580();
  v161 = v101;
  v162 = v100;
  *&v201 = v71[23];
  v102 = AttestationPolicyContext.releaseDigest.getter();
  v104 = v103;
  sub_22FEA55AC(v197, *(&v197 + 1));
  sub_22FEA55AC(v188, *(&v199 + 1));
  sub_22FEBF27C(v186, v190);
  v185(v97, v98);
  (*(v96 + 8))(v94, v95);

  v105 = type metadata accessor for Validated.AttestationBundle(0);
  *(v99 + v105[8]) = 0;
  sub_22FF90754(v163, v99, type metadata accessor for AttestationBundle);
  v106 = (v99 + v105[5]);
  *v106 = v159;
  v106[1] = v160;
  v107 = (v99 + v105[6]);
  *v107 = v162;
  v107[1] = v161;
  v108 = (v99 + v105[7]);
  *v108 = v102;
  v108[1] = v104;

  v109 = v71[1];
  v110 = *MEMORY[0x277D85DE8];
LABEL_46:

  return v109();
}

uint64_t sub_22FF7A584()
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = v0[23];

  v2 = v0[63];
  v3 = v0[61];
  v4 = v2;
  v5 = sub_22FFB12D8();
  v6 = sub_22FFB1838();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22FE99000, v5, v6, "AttestationBundle validation failed: %@", v7, 0xCu);
    sub_22FEAEA34(v8, &qword_27DAF1680, &unk_22FFB4B10);
    MEMORY[0x23190EFF0](v8, -1, -1);
    MEMORY[0x23190EFF0](v7, -1, -1);
  }

  v11 = v0[60];
  v12 = v0[61];
  v13 = v5;
  v15 = v0[58];
  v14 = v0[59];
  v17 = v0[54];
  v16 = v0[55];
  v18 = v0[51];
  v19 = v0[48];
  v23 = v0[47];
  v24 = v0[46];
  v25 = v0[45];
  v26 = v0[42];
  v27 = v0[39];

  swift_willThrow();
  (*(v11 + 8))(v12, v14);

  v20 = v0[1];
  v21 = *MEMORY[0x277D85DE8];

  return v20();
}

uint64_t sub_22FF7A7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22FEAA538;

  return sub_22FF7772C(a1, a2, a3, a4);
}

uint64_t sub_22FF7A894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA538;

  return sub_22FF7C5BC(a1, a2, a3, a4, a5, a6);
}

uint64_t Attestor.attest(key:using:expiration:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_22FEAA538;

  return Attestor.defaultAttest(key:using:expiration:nonce:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_22FF7AA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22FEAA538;

  return sub_22FF75448(a1, a2, a3, a4, a5);
}

uint64_t sub_22FF7AB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22FF7AB78, 0, 0);
}

uint64_t sub_22FF7AB78()
{
  v1 = v0[7];
  v2 = GenericAttestor.attestingKey.getter();
  v0[8] = v2;
  v3 = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_22FF91BBC;
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  return sub_22FF7C5BC(v9, v10, v3, v7, v8, v5);
}

double sub_22FF7AC84()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = sub_22FFB1D28();
  sub_22FFB1D28();
  return v4 * 1.0e-18 + v3;
}

uint64_t sub_22FF7ACE0(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v22 = MEMORY[0x277D84F90];
    sub_22FECDAF4(0, v11, 0);
    v12 = v22;
    v13 = *(type metadata accessor for TransparencyLogProofs(0) - 8);
    v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v18 = *(v13 + 72);
    while (1)
    {
      v19(v14, &v21);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v22 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_22FECDAF4(v15 > 1, v16 + 1, 1);
        v12 = v22;
      }

      *(v12 + 16) = v16 + 1;
      sub_22FF90754(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
      v14 += v18;
      if (!--v11)
      {
        return v12;
      }
    }
  }

  return v12;
}

uint64_t sub_22FF7AEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23[1] = a2;
  v23[0] = a1;
  v6 = type metadata accessor for Proto_SealedHash.Entry(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v33 = MEMORY[0x277D84F90];
  sub_22FECDB58(0, v11, 0);
  v12 = v33;
  v13 = (a3 + 32);
  for (i = v11 - 1; ; --i)
  {
    v15 = v13[1];
    v32[0] = *v13;
    v32[1] = v15;
    v16 = v13[3];
    v18 = *v13;
    v17 = v13[1];
    v32[2] = v13[2];
    v32[3] = v16;
    v28 = v18;
    v29 = v17;
    v19 = v13[3];
    v30 = v13[2];
    v31 = v19;
    sub_22FEBF904(v32, &v24);
    (v23[0])(&v28);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v24 = v28;
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_22FEBF960(&v24);
    v33 = v12;
    v21 = *(v12 + 16);
    v20 = *(v12 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_22FECDB58(v20 > 1, v21 + 1, 1);
      v12 = v33;
    }

    *(v12 + 16) = v21 + 1;
    sub_22FF90754(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, type metadata accessor for Proto_SealedHash.Entry);
    if (!i)
    {
      return v12;
    }

    v13 += 4;
  }

  v24 = v28;
  v25 = v29;
  v26 = v30;
  v27 = v31;
  sub_22FEBF960(&v24);

  __break(1u);
  return result;
}

uint64_t sub_22FF7B110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23[1] = a2;
  v23[0] = a1;
  v6 = type metadata accessor for Proto_SealedHash.Entry(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v34 = MEMORY[0x277D84F90];
    sub_22FECDB58(0, v11, 0);
    v12 = v34;
    v13 = (a3 + 32);
    for (i = v11 - 1; ; --i)
    {
      v15 = v13[1];
      v33[0] = *v13;
      v33[1] = v15;
      v16 = v13[3];
      v18 = *v13;
      v17 = v13[1];
      v33[2] = v13[2];
      v33[3] = v16;
      v29 = v18;
      v30 = v17;
      v19 = v13[3];
      v31 = v13[2];
      v32 = v19;
      sub_22FEBF904(v33, &v24);
      (v23[0])(&v29, &v28);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v24 = v29;
      v25 = v30;
      v26 = v31;
      v27 = v32;
      sub_22FEBF960(&v24);
      v34 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_22FECDB58(v20 > 1, v21 + 1, 1);
        v12 = v34;
      }

      *(v12 + 16) = v21 + 1;
      sub_22FF90754(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, type metadata accessor for Proto_SealedHash.Entry);
      if (!i)
      {
        return v12;
      }

      v13 += 4;
    }

    v24 = v29;
    v25 = v30;
    v26 = v31;
    v27 = v32;
    sub_22FEBF960(&v24);
  }

  return v12;
}

uint64_t sub_22FF7B36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_22FEAA538;

  return Validator.validate(bundle:nonce:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t Validator.validate(bundle:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_22FEAA538;

  return sub_22FF78B28(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_22FF7B54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA538;

  return Validator.validate(bundle:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22FF7B624@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  return MuxValidator.policy.getter(a1);
}

uint64_t sub_22FF7B668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_22FEAA0D4;

  return Validator.validate<A>(bundle:nonce:policy:)(a1, a2, a3, a4, a5, a6, v17, a10);
}

uint64_t sub_22FF7B754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  *(v5 + 16) = *v4;
  v11 = *(v4 + 17);
  *(v5 + 32) = v10;
  *(v5 + 33) = v11;
  v12 = swift_task_alloc();
  *(v5 + 40) = v12;
  *v12 = v5;
  v12[1] = sub_22FF7B840;

  return MuxValidator.validate(bundle:nonce:)(a1, a2, a3, a4, 0, 0xF000000000000000);
}

uint64_t sub_22FF7B840()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t Validated.AttestationBundle.appData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FFB0FE8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for AttestationBundle(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v25[-v10];
  sub_22FF9064C(v1, &v25[-v10], type metadata accessor for AttestationBundle);
  v12 = type metadata accessor for Proto_AttestationBundle(0);
  v13 = (*&v11[*(v12 + 20)] + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  sub_22FEA5608(v14, v15);
  sub_22FF906D4(v11, type metadata accessor for Proto_AttestationBundle);
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v17 = *(v14 + 16);
      v18 = *(v14 + 24);
      sub_22FEA55AC(v14, v15);
      if (v17 == v18)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    sub_22FEA55AC(v14, v15);
  }

  else
  {
    if (!v16)
    {
      sub_22FEA55AC(v14, v15);
      if ((v15 & 0xFF000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_9:
      v19 = type metadata accessor for Proto_AppData(0);
      sub_22FF9064C(v1, v9, type metadata accessor for AttestationBundle);
      v20 = (*&v9[*(v12 + 20)] + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
      swift_beginAccess();
      v22 = *v20;
      v21 = v20[1];
      sub_22FEA5608(v22, v21);
      sub_22FF906D4(v9, type metadata accessor for Proto_AttestationBundle);
      v27 = v22;
      v28 = v21;
      v26 = 0;
      memset(&v25[16], 0, 32);
      sub_22FFB0FD8();
      sub_22FF7BE88(qword_2814906B0, type metadata accessor for Proto_AppData);
      sub_22FFB1188();
      return (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
    }

    sub_22FEA55AC(v14, v15);
    if (v14 != v14 >> 32)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v23 = type metadata accessor for Proto_AppData(0);
  return (*(*(v23 - 8) + 56))(a1, 1, 1, v23);
}

uint64_t sub_22FF7BCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA538;

  return sub_22FEB9308(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22FF7BDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22FEAA538;

  return sub_22FEB9308(a1, a2, a3, a4, 0, 0xF000000000000000);
}

uint64_t sub_22FF7BE88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FF7BED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22FEAA538;

  return sub_22FF759DC(a1, a2, a3, a4, a5);
}

uint64_t sub_22FF7BFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22FF7BFD8, 0, 0);
}

uint64_t sub_22FF7BFD8()
{
  v1 = v0[7] + 8;
  v2 = NodeAttestor.attestingKey.getter();
  v0[8] = v2;
  v3 = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_22FF91BBC;
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  return PCC.ProxyNodeAttestor.attest(key:using:expiration:nonce:)(v9, v10, v3, v7, v8, v5);
}

uint64_t sub_22FF7C0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22FEAA538;

  return sub_22FF77E88(a1, a2, a3, a4);
}

uint64_t sub_22FF7C1AC()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DAF38A0);
  __swift_project_value_buffer(v0, qword_27DAF38A0);
  return sub_22FFB12E8();
}

uint64_t sub_22FF7C2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_22FEAA538;

  return Attestor.attest(key:using:expiration:nonce:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_22FF7C398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_22FEAA538;

  return Attestor.attest(key:using:expiration:appData:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_22FF7C478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_22FEAA538;

  return Attestor.attest(key:expiration:nonce:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_22FF7C5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v8 = sub_22FFB13C8();
  v7[13] = v8;
  v9 = *(v8 - 8);
  v7[14] = v9;
  v10 = *(v9 + 64) + 15;
  v7[15] = swift_task_alloc();
  v11 = sub_22FFB1398();
  v7[16] = v11;
  v12 = *(v11 - 8);
  v7[17] = v12;
  v13 = *(v12 + 64) + 15;
  v7[18] = swift_task_alloc();
  v14 = type metadata accessor for Proto_AttestationBundle(0);
  v7[19] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v7[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF7C714, 0, 0);
}

uint64_t sub_22FF7C714()
{
  v21 = v0;
  v1 = *(v0 + 88);
  if (v1 >> 60 != 15)
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 64);
    v4 = *MEMORY[0x277CDC410];
    sub_22FEA5608(v2, *(v0 + 88));
    v5 = sub_22FFB07B8();
    SecKeySetParameter();

    sub_22FEA56EC(v2, v1);
  }

  v6 = *(v0 + 96);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = v6[3];
  v10 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v9);
  (*(v10 + 8))(v20, v7, v8, v9, v10);
  v11 = *(v0 + 96);
  v12 = v20[1];
  *(v0 + 168) = v20[0];
  *(v0 + 184) = v12;
  v13 = v11[8];
  v14 = v11[9];
  __swift_project_boxed_opaque_existential_1(v11 + 5, v13);
  v15 = *(v14 + 16);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v0 + 200) = v17;
  *v17 = v0;
  v17[1] = sub_22FF7CA94;

  return v19(v13, v14);
}

uint64_t sub_22FF7CA94(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v7 = sub_22FF7D1F8;
  }

  else
  {
    *(v4 + 216) = a1;
    v7 = sub_22FF7CBBC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

__SecKey *sub_22FF7CBBC()
{
  v73 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 96);
  v6 = *(v0 + 72);
  v7 = swift_task_alloc();
  v8 = *(v0 + 184);
  v9 = *(v0 + 168);
  *(v7 + 16) = v9;
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  *(v7 + 48) = v2;
  *(v7 + 72) = v8;
  *(v7 + 56) = v9;
  sub_22FF7BE88(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle);
  sub_22FFB11B8();
  if (!v1)
  {
    v27 = *(v0 + 160);
    v29 = *(v0 + 48);
    v28 = *(v0 + 56);

    sub_22FF9064C(v27, v29, type metadata accessor for Proto_AttestationBundle);
    result = SecKeyCopyPublicKey(v28);
    if (result)
    {
      v31 = result;
      result = SecKeyCopyExternalRepresentation(result, 0);
      if (result)
      {
        v32 = result;
        if (qword_27DAF1498 != -1)
        {
          swift_once();
        }

        v33 = sub_22FFB12F8();
        __swift_project_value_buffer(v33, qword_27DAF38A0);
        v34 = v32;
        v35 = sub_22FFB12D8();
        v36 = sub_22FFB1848();

        v71 = v36;
        v37 = os_log_type_enabled(v35, v36);
        v39 = *(v0 + 184);
        v38 = *(v0 + 192);
        v41 = *(v0 + 168);
        v40 = *(v0 + 176);
        v42 = *(v0 + 160);
        if (v37)
        {
          v62 = *(v0 + 136);
          v59 = *(v0 + 144);
          v60 = *(v0 + 128);
          v69 = *(v0 + 160);
          v70 = *(v0 + 168);
          v68 = v34;
          v43 = *(v0 + 112);
          v44 = *(v0 + 120);
          v45 = *(v0 + 104);
          log = v35;
          buf = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v72 = v64;
          *buf = 136446210;
          v66 = v40;
          v67 = v39;
          v46 = sub_22FFB07E8();
          v48 = v47;
          sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540]);
          v49 = v31;
          v65 = v38;
          sub_22FFB1388();
          sub_22FEA5608(v46, v48);
          sub_22FF9EA78(v46, v48);
          sub_22FEA55AC(v46, v48);
          sub_22FFB1368();
          sub_22FEA55AC(v46, v48);
          (*(v43 + 8))(v44, v45);
          sub_22FF7BE88(&qword_28148F1B0, MEMORY[0x277CC5290]);
          v50 = sub_22FFB1BA8();
          v52 = v51;
          (*(v62 + 8))(v59, v60);
          v53 = sub_22FF9E448(v50, v52, &v72);

          *(buf + 4) = v53;
          _os_log_impl(&dword_22FE99000, log, v71, "Successfully created attestation for key: %{public}s", buf, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v64);
          MEMORY[0x23190EFF0](v64, -1, -1);
          MEMORY[0x23190EFF0](buf, -1, -1);

          sub_22FF906D4(v69, type metadata accessor for Proto_AttestationBundle);
          sub_22FEA55AC(v70, v66);
          v54 = v67;
          v55 = v65;
        }

        else
        {

          sub_22FF906D4(v42, type metadata accessor for Proto_AttestationBundle);
          sub_22FEA55AC(v41, v40);
          v54 = v39;
          v55 = v38;
        }

        sub_22FEA55AC(v54, v55);
        v56 = *(v0 + 160);
        v57 = *(v0 + 144);
        v58 = *(v0 + 120);

        v26 = *(v0 + 8);
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v10 = v1;
  v12 = *(v0 + 184);
  v11 = *(v0 + 192);
  v14 = *(v0 + 168);
  v13 = *(v0 + 176);

  sub_22FEA55AC(v14, v13);
  sub_22FEA55AC(v12, v11);

  if (qword_27DAF1498 != -1)
  {
    swift_once();
  }

  v15 = sub_22FFB12F8();
  __swift_project_value_buffer(v15, qword_27DAF38A0);
  v16 = v10;
  v17 = sub_22FFB12D8();
  v18 = sub_22FFB1838();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    v21 = v10;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v22;
    *v20 = v22;
    _os_log_impl(&dword_22FE99000, v17, v18, "attestation creation failed: %@", v19, 0xCu);
    sub_22FEAEA34(v20, &qword_27DAF1680, &unk_22FFB4B10);
    MEMORY[0x23190EFF0](v20, -1, -1);
    MEMORY[0x23190EFF0](v19, -1, -1);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = *(v0 + 120);

  swift_willThrow();

  v26 = *(v0 + 8);
LABEL_15:

  return v26();
}

__SecKey *sub_22FF7D1F8()
{
  v80 = v0;
  v1 = *(v0 + 208);
  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    if (v5 == 3 && v3 == 1 && v4 == 0)
    {

      v28 = *(v0 + 152);
      v29 = *(v0 + 160);
      v30 = *(v0 + 96);
      v31 = *(v0 + 72);
      v32 = swift_task_alloc();
      v33 = *(v0 + 184);
      v34 = *(v0 + 168);
      *(v32 + 16) = v34;
      *(v32 + 32) = v31;
      *(v32 + 40) = v30;
      *(v32 + 48) = MEMORY[0x277D84F90];
      *(v32 + 72) = v33;
      *(v32 + 56) = v34;
      sub_22FF7BE88(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle);
      sub_22FFB11B8();
      v35 = *(v0 + 160);
      v37 = *(v0 + 48);
      v36 = *(v0 + 56);

      sub_22FF9064C(v35, v37, type metadata accessor for Proto_AttestationBundle);
      result = SecKeyCopyPublicKey(v36);
      if (result)
      {
        v38 = result;
        result = SecKeyCopyExternalRepresentation(result, 0);
        if (result)
        {
          v39 = result;
          if (qword_27DAF1498 != -1)
          {
            swift_once();
          }

          v40 = sub_22FFB12F8();
          __swift_project_value_buffer(v40, qword_27DAF38A0);
          v41 = v39;
          v42 = sub_22FFB12D8();
          v43 = sub_22FFB1848();

          v78 = v43;
          v44 = os_log_type_enabled(v42, v43);
          v46 = *(v0 + 184);
          v45 = *(v0 + 192);
          v48 = *(v0 + 168);
          v47 = *(v0 + 176);
          v49 = *(v0 + 160);
          if (v44)
          {
            v69 = *(v0 + 136);
            v66 = *(v0 + 144);
            v67 = *(v0 + 128);
            v76 = *(v0 + 160);
            v77 = *(v0 + 168);
            v75 = v41;
            v50 = *(v0 + 112);
            v51 = *(v0 + 120);
            v52 = *(v0 + 104);
            log = v42;
            buf = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v79 = v71;
            *buf = 136446210;
            v73 = v47;
            v74 = v46;
            v53 = sub_22FFB07E8();
            v55 = v54;
            sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540]);
            v56 = v38;
            v72 = v45;
            sub_22FFB1388();
            sub_22FEA5608(v53, v55);
            sub_22FF9EA78(v53, v55);
            sub_22FEA55AC(v53, v55);
            sub_22FFB1368();
            sub_22FEA55AC(v53, v55);
            (*(v50 + 8))(v51, v52);
            sub_22FF7BE88(&qword_28148F1B0, MEMORY[0x277CC5290]);
            v57 = sub_22FFB1BA8();
            v59 = v58;
            (*(v69 + 8))(v66, v67);
            v60 = sub_22FF9E448(v57, v59, &v79);

            *(buf + 4) = v60;
            _os_log_impl(&dword_22FE99000, log, v78, "Successfully created attestation for key: %{public}s", buf, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v71);
            MEMORY[0x23190EFF0](v71, -1, -1);
            MEMORY[0x23190EFF0](buf, -1, -1);

            sub_22FF906D4(v76, type metadata accessor for Proto_AttestationBundle);
            sub_22FEA55AC(v77, v73);
            v61 = v74;
            v62 = v72;
          }

          else
          {

            sub_22FF906D4(v49, type metadata accessor for Proto_AttestationBundle);
            sub_22FEA55AC(v48, v47);
            v61 = v46;
            v62 = v45;
          }

          sub_22FEA55AC(v61, v62);
          v63 = *(v0 + 160);
          v64 = *(v0 + 144);
          v65 = *(v0 + 120);

          v26 = *(v0 + 8);
          goto LABEL_16;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    v8 = *(v0 + 184);
    v9 = *(v0 + 192);
    v11 = *(v0 + 168);
    v10 = *(v0 + 176);
    sub_22FF905E4(v3, v4, v5);
    v12 = v11;
    v13 = v10;
  }

  else
  {
    v8 = *(v0 + 184);
    v9 = *(v0 + 192);
    v12 = *(v0 + 168);
    v13 = *(v0 + 176);
  }

  sub_22FEA55AC(v12, v13);
  sub_22FEA55AC(v8, v9);

  v14 = *(v0 + 208);
  if (qword_27DAF1498 != -1)
  {
    swift_once();
  }

  v15 = sub_22FFB12F8();
  __swift_project_value_buffer(v15, qword_27DAF38A0);
  v16 = v14;
  v17 = sub_22FFB12D8();
  v18 = sub_22FFB1838();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    v21 = v14;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v22;
    *v20 = v22;
    _os_log_impl(&dword_22FE99000, v17, v18, "attestation creation failed: %@", v19, 0xCu);
    sub_22FEAEA34(v20, &qword_27DAF1680, &unk_22FFB4B10);
    MEMORY[0x23190EFF0](v20, -1, -1);
    MEMORY[0x23190EFF0](v19, -1, -1);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = *(v0 + 120);

  swift_willThrow();

  v26 = *(v0 + 8);
LABEL_16:

  return v26();
}

uint64_t Attestor.defaultAttest(key:using:expiration:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[23] = a8;
  v9[24] = v8;
  v9[21] = a6;
  v9[22] = a7;
  v9[19] = a4;
  v9[20] = a5;
  v9[17] = a2;
  v9[18] = a3;
  v9[16] = a1;
  v10 = sub_22FFB13C8();
  v9[25] = v10;
  v11 = *(v10 - 8);
  v9[26] = v11;
  v12 = *(v11 + 64) + 15;
  v9[27] = swift_task_alloc();
  v13 = sub_22FFB1398();
  v9[28] = v13;
  v14 = *(v13 - 8);
  v9[29] = v14;
  v15 = *(v14 + 64) + 15;
  v9[30] = swift_task_alloc();
  v16 = type metadata accessor for Proto_AttestationBundle(0);
  v9[31] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v9[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF7DA50, 0, 0);
}

uint64_t sub_22FF7DA50()
{
  v23 = v0;
  v1 = *(v0 + 168);
  if (v1 >> 60 != 15)
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 144);
    v4 = *MEMORY[0x277CDC410];
    sub_22FEA5608(v2, *(v0 + 168));
    v5 = sub_22FFB07B8();
    SecKeySetParameter();

    sub_22FEA56EC(v2, v1);
  }

  v6 = *(v0 + 192);
  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  (*(*(v0 + 184) + 24))(*(v0 + 176));
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
  (*(v10 + 8))(v22, v8, v7, v9, v10);
  v11 = *(v0 + 184);
  v12 = *(v0 + 192);
  v13 = *(v0 + 176);
  v14 = v22[1];
  *(v0 + 264) = v22[0];
  *(v0 + 280) = v14;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v11 + 32))(v13, v11);
  v15 = *(v0 + 80);
  v16 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v15);
  v17 = *(v16 + 16);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v0 + 296) = v19;
  *v19 = v0;
  v19[1] = sub_22FF7DE20;

  return v21(v15, v16);
}

uint64_t sub_22FF7DE20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 296);
  v6 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {
    v7 = sub_22FF7E590;
  }

  else
  {
    *(v4 + 312) = a1;
    v7 = sub_22FF7DF48;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

__SecKey *sub_22FF7DF48()
{
  v73 = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 192);
  v6 = *(v0 + 152);
  v7 = swift_task_alloc();
  v9 = *(v0 + 264);
  v8 = *(v0 + 280);
  *(v7 + 16) = *(v0 + 176);
  *(v7 + 32) = v9;
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  *(v7 + 64) = v2;
  *(v7 + 72) = v9;
  *(v7 + 88) = v8;
  sub_22FF7BE88(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle);
  sub_22FFB11B8();
  if (!v1)
  {
    v27 = *(v0 + 256);
    v29 = *(v0 + 128);
    v28 = *(v0 + 136);

    sub_22FF9064C(v27, v29, type metadata accessor for Proto_AttestationBundle);
    result = SecKeyCopyPublicKey(v28);
    if (result)
    {
      v31 = result;
      result = SecKeyCopyExternalRepresentation(result, 0);
      if (result)
      {
        v32 = result;
        if (qword_27DAF1498 != -1)
        {
          swift_once();
        }

        v33 = sub_22FFB12F8();
        __swift_project_value_buffer(v33, qword_27DAF38A0);
        v34 = v32;
        v35 = sub_22FFB12D8();
        v36 = sub_22FFB1848();

        v71 = v36;
        v37 = os_log_type_enabled(v35, v36);
        v39 = *(v0 + 280);
        v38 = *(v0 + 288);
        v41 = *(v0 + 264);
        v40 = *(v0 + 272);
        v42 = *(v0 + 256);
        if (v37)
        {
          v62 = *(v0 + 232);
          v59 = *(v0 + 240);
          v60 = *(v0 + 224);
          v69 = *(v0 + 256);
          v70 = *(v0 + 264);
          v68 = v34;
          v43 = *(v0 + 208);
          v44 = *(v0 + 216);
          v45 = *(v0 + 200);
          log = v35;
          buf = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v72 = v64;
          *buf = 136446210;
          v66 = v40;
          v67 = v39;
          v46 = sub_22FFB07E8();
          v48 = v47;
          sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540]);
          v49 = v31;
          v65 = v38;
          sub_22FFB1388();
          sub_22FEA5608(v46, v48);
          sub_22FF9EA78(v46, v48);
          sub_22FEA55AC(v46, v48);
          sub_22FFB1368();
          sub_22FEA55AC(v46, v48);
          (*(v43 + 8))(v44, v45);
          sub_22FF7BE88(&qword_28148F1B0, MEMORY[0x277CC5290]);
          v50 = sub_22FFB1BA8();
          v52 = v51;
          (*(v62 + 8))(v59, v60);
          v53 = sub_22FF9E448(v50, v52, &v72);

          *(buf + 4) = v53;
          _os_log_impl(&dword_22FE99000, log, v71, "Successfully created attestation for key: %{public}s", buf, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v64);
          MEMORY[0x23190EFF0](v64, -1, -1);
          MEMORY[0x23190EFF0](buf, -1, -1);

          sub_22FF906D4(v69, type metadata accessor for Proto_AttestationBundle);
          sub_22FEA55AC(v70, v66);
          v54 = v67;
          v55 = v65;
        }

        else
        {

          sub_22FF906D4(v42, type metadata accessor for Proto_AttestationBundle);
          sub_22FEA55AC(v41, v40);
          v54 = v39;
          v55 = v38;
        }

        sub_22FEA55AC(v54, v55);
        v56 = *(v0 + 256);
        v57 = *(v0 + 240);
        v58 = *(v0 + 216);

        v26 = *(v0 + 8);
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v10 = v1;
  v12 = *(v0 + 280);
  v11 = *(v0 + 288);
  v14 = *(v0 + 264);
  v13 = *(v0 + 272);

  sub_22FEA55AC(v14, v13);
  sub_22FEA55AC(v12, v11);

  if (qword_27DAF1498 != -1)
  {
    swift_once();
  }

  v15 = sub_22FFB12F8();
  __swift_project_value_buffer(v15, qword_27DAF38A0);
  v16 = v10;
  v17 = sub_22FFB12D8();
  v18 = sub_22FFB1838();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    v21 = v10;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v22;
    *v20 = v22;
    _os_log_impl(&dword_22FE99000, v17, v18, "attestation creation failed: %@", v19, 0xCu);
    sub_22FEAEA34(v20, &qword_27DAF1680, &unk_22FFB4B10);
    MEMORY[0x23190EFF0](v20, -1, -1);
    MEMORY[0x23190EFF0](v19, -1, -1);
  }

  v23 = *(v0 + 256);
  v24 = *(v0 + 240);
  v25 = *(v0 + 216);

  swift_willThrow();

  v26 = *(v0 + 8);
LABEL_15:

  return v26();
}

__SecKey *sub_22FF7E590()
{
  v80 = v0;
  v1 = *(v0 + 304);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  *(v0 + 120) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 96);
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    if (v5 == 3 && v3 == 1 && v4 == 0)
    {

      v28 = *(v0 + 248);
      v29 = *(v0 + 256);
      v30 = *(v0 + 192);
      v31 = *(v0 + 152);
      v32 = swift_task_alloc();
      v34 = *(v0 + 264);
      v33 = *(v0 + 280);
      *(v32 + 16) = *(v0 + 176);
      *(v32 + 32) = v34;
      *(v32 + 48) = v31;
      *(v32 + 56) = v30;
      *(v32 + 64) = MEMORY[0x277D84F90];
      *(v32 + 72) = v34;
      *(v32 + 88) = v33;
      sub_22FF7BE88(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle);
      sub_22FFB11B8();
      v35 = *(v0 + 256);
      v37 = *(v0 + 128);
      v36 = *(v0 + 136);

      sub_22FF9064C(v35, v37, type metadata accessor for Proto_AttestationBundle);
      result = SecKeyCopyPublicKey(v36);
      if (result)
      {
        v38 = result;
        result = SecKeyCopyExternalRepresentation(result, 0);
        if (result)
        {
          v39 = result;
          if (qword_27DAF1498 != -1)
          {
            swift_once();
          }

          v40 = sub_22FFB12F8();
          __swift_project_value_buffer(v40, qword_27DAF38A0);
          v41 = v39;
          v42 = sub_22FFB12D8();
          v43 = sub_22FFB1848();

          v78 = v43;
          v44 = os_log_type_enabled(v42, v43);
          v46 = *(v0 + 280);
          v45 = *(v0 + 288);
          v48 = *(v0 + 264);
          v47 = *(v0 + 272);
          v49 = *(v0 + 256);
          if (v44)
          {
            v69 = *(v0 + 232);
            v66 = *(v0 + 240);
            v67 = *(v0 + 224);
            v76 = *(v0 + 256);
            v77 = *(v0 + 264);
            v75 = v41;
            v50 = *(v0 + 208);
            v51 = *(v0 + 216);
            v52 = *(v0 + 200);
            log = v42;
            buf = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v79 = v71;
            *buf = 136446210;
            v73 = v47;
            v74 = v46;
            v53 = sub_22FFB07E8();
            v55 = v54;
            sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540]);
            v56 = v38;
            v72 = v45;
            sub_22FFB1388();
            sub_22FEA5608(v53, v55);
            sub_22FF9EA78(v53, v55);
            sub_22FEA55AC(v53, v55);
            sub_22FFB1368();
            sub_22FEA55AC(v53, v55);
            (*(v50 + 8))(v51, v52);
            sub_22FF7BE88(&qword_28148F1B0, MEMORY[0x277CC5290]);
            v57 = sub_22FFB1BA8();
            v59 = v58;
            (*(v69 + 8))(v66, v67);
            v60 = sub_22FF9E448(v57, v59, &v79);

            *(buf + 4) = v60;
            _os_log_impl(&dword_22FE99000, log, v78, "Successfully created attestation for key: %{public}s", buf, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v71);
            MEMORY[0x23190EFF0](v71, -1, -1);
            MEMORY[0x23190EFF0](buf, -1, -1);

            sub_22FF906D4(v76, type metadata accessor for Proto_AttestationBundle);
            sub_22FEA55AC(v77, v73);
            v61 = v74;
            v62 = v72;
          }

          else
          {

            sub_22FF906D4(v49, type metadata accessor for Proto_AttestationBundle);
            sub_22FEA55AC(v48, v47);
            v61 = v46;
            v62 = v45;
          }

          sub_22FEA55AC(v61, v62);
          v63 = *(v0 + 256);
          v64 = *(v0 + 240);
          v65 = *(v0 + 216);

          v26 = *(v0 + 8);
          goto LABEL_16;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    v8 = *(v0 + 280);
    v9 = *(v0 + 288);
    v11 = *(v0 + 264);
    v10 = *(v0 + 272);
    sub_22FF905E4(v3, v4, v5);
    v12 = v11;
    v13 = v10;
  }

  else
  {
    v8 = *(v0 + 280);
    v9 = *(v0 + 288);
    v12 = *(v0 + 264);
    v13 = *(v0 + 272);
  }

  sub_22FEA55AC(v12, v13);
  sub_22FEA55AC(v8, v9);

  v14 = *(v0 + 304);
  if (qword_27DAF1498 != -1)
  {
    swift_once();
  }

  v15 = sub_22FFB12F8();
  __swift_project_value_buffer(v15, qword_27DAF38A0);
  v16 = v14;
  v17 = sub_22FFB12D8();
  v18 = sub_22FFB1838();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    v21 = v14;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v22;
    *v20 = v22;
    _os_log_impl(&dword_22FE99000, v17, v18, "attestation creation failed: %@", v19, 0xCu);
    sub_22FEAEA34(v20, &qword_27DAF1680, &unk_22FFB4B10);
    MEMORY[0x23190EFF0](v20, -1, -1);
    MEMORY[0x23190EFF0](v19, -1, -1);
  }

  v23 = *(v0 + 256);
  v24 = *(v0 + 240);
  v25 = *(v0 + 216);

  swift_willThrow();

  v26 = *(v0 + 8);
LABEL_16:

  return v26();
}

uint64_t sub_22FF7EC9C(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, void *a5, void *a6, void *a7, void (*a8)(uint64_t, char *, uint64_t), void *a9, void *a10)
{
  v396 = a8;
  v385 = a7;
  v408 = a6;
  v409 = a5;
  v405 = a4;
  v404 = a3;
  v403 = a2;
  v399 = type metadata accessor for Proto_SealedHash(0);
  v394 = *(v399 - 8);
  v11 = *(v394 + 64);
  v12 = MEMORY[0x28223BE20](v399);
  v381 = &v372 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v379 = &v372 - v15;
  MEMORY[0x28223BE20](v14);
  v387 = &v372 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v383 = &v372 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v380 = &v372 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v392 = &v372 - v24;
  MEMORY[0x28223BE20](v23);
  v389 = &v372 - v25;
  v398 = type metadata accessor for Proto_SealedHashLedger(0);
  *&v384 = *(v398 - 8);
  v26 = *(v384 + 64);
  v27 = MEMORY[0x28223BE20](v398);
  v391 = (&v372 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v27);
  v390 = (&v372 - v30);
  MEMORY[0x28223BE20](v29);
  v397 = (&v372 - v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF38F0, &unk_22FFC0170);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v378 = &v372 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v388 = &v372 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v377 = &v372 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v386 = &v372 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v382 = &v372 - v43;
  MEMORY[0x28223BE20](v42);
  v393 = &v372 - v44;
  v412 = sub_22FFB0958();
  v406 = *(v412 - 8);
  v45 = *(v406 + 64);
  v46 = MEMORY[0x28223BE20](v412);
  v395 = &v372 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v410 = &v372 - v49;
  MEMORY[0x28223BE20](v48);
  v411 = &v372 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v402 = &v372 - v53;
  v400 = sub_22FFB0908();
  v54 = *(v400 - 1);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v400);
  v57 = &v372 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v401 = sub_22FFB0EE8();
  v58 = *(v401 - 1);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v401);
  v61 = &v372 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v63 = *(a1 + v62);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = *(a1 + v62);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v66 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v67 = *(v66 + 48);
    v68 = *(v66 + 52);
    swift_allocObject();
    v65 = sub_22FF10520(v65);
    *(a1 + v62) = v65;
  }

  swift_beginAccess();
  v69 = v65[2];
  v70 = v65[3];
  v71 = v403;
  v72 = v404;
  v65[2] = v403;
  v65[3] = v72;
  sub_22FEA5608(v71, v72);
  sub_22FEA55AC(v69, v70);
  (*(v54 + 16))(v57, v405, v400);
  sub_22FFB0EC8();
  v73 = *(a1 + v62);
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *(a1 + v62);
  v405 = a1;
  if ((v74 & 1) == 0)
  {
    v76 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v77 = *(v76 + 48);
    v78 = *(v76 + 52);
    swift_allocObject();
    v75 = sub_22FF10520(v75);
    *(a1 + v62) = v75;
  }

  v79 = v409;
  v80 = v410;
  v81 = v402;
  v82 = v401;
  (*(v58 + 32))(v402, v61, v401);
  (*(v58 + 56))(v81, 0, 1, v82);
  v83 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEFF0DC(v81, v75 + v83, &qword_27DAF1520, &qword_22FFB3A30);
  swift_endAccess();
  v84 = v79[8];
  v85 = v79[9];
  __swift_project_boxed_opaque_existential_1(v79 + 5, v84);
  v86 = v407;
  v87 = (*(v85 + 8))(v84, v85);
  v89 = v86;
  if (v86)
  {
    if (qword_27DAF1498 != -1)
    {
LABEL_160:
      swift_once();
    }

    v90 = sub_22FFB12F8();
    __swift_project_value_buffer(v90, qword_27DAF38A0);
    v91 = v89;
    v92 = sub_22FFB12D8();
    v93 = sub_22FFB1838();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = v75;
      v96 = v80;
      v97 = v79;
      v98 = v62;
      v99 = swift_slowAlloc();
      *v94 = 138543362;
      v100 = v89;
      v101 = _swift_stdlib_bridgeErrorToNSError();
      *(v94 + 4) = v101;
      *v99 = v101;
      _os_log_impl(&dword_22FE99000, v92, v93, "Unable to fetch ap ticket: %{public}@", v94, 0xCu);
      sub_22FEAEA34(v99, &qword_27DAF1680, &unk_22FFB4B10);
      v102 = v99;
      v62 = v98;
      v79 = v97;
      v80 = v96;
      v75 = v95;
      MEMORY[0x23190EFF0](v102, -1, -1);
      MEMORY[0x23190EFF0](v94, -1, -1);
    }

    v103 = v408;
    if (*(v79 + 97) == 1)
    {
      return swift_willThrow();
    }

    if (!v103[2])
    {
      goto LABEL_11;
    }

LABEL_21:
    v119 = v405;
    v120 = *(v405 + v62);
    v121 = swift_isUniquelyReferenced_nonNull_native();
    v75 = *(v119 + v62);
    if ((v121 & 1) == 0)
    {
      v122 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      v123 = *(v122 + 48);
      v124 = *(v122 + 52);
      swift_allocObject();
      v75 = sub_22FF10520(v75);
      *(v119 + v62) = v75;
    }

    v125 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
    swift_beginAccess();
    v126 = *(v75 + v125);
    *(v75 + v125) = v103;

    goto LABEL_24;
  }

  v109 = v88;
  v110 = v87;
  v111 = v405;
  v112 = *(v405 + v62);
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *(v111 + v62);
  if ((v113 & 1) == 0)
  {
    v114 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v115 = *(v114 + 48);
    v116 = *(v114 + 52);
    swift_allocObject();
    v75 = sub_22FF10520(v75);
    *(v111 + v62) = v75;
  }

  swift_beginAccess();
  v117 = v75[4];
  v118 = v75[5];
  v75[4] = v110;
  v75[5] = v109;
  sub_22FEA55AC(v117, v118);
  v103 = v408;
  if (v408[2])
  {
    goto LABEL_21;
  }

LABEL_11:
  if (qword_27DAF1498 != -1)
  {
    swift_once();
  }

  v104 = sub_22FFB12F8();
  __swift_project_value_buffer(v104, qword_27DAF38A0);
  v105 = sub_22FFB12D8();
  v106 = sub_22FFB1838();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    *v107 = 0;
    _os_log_impl(&dword_22FE99000, v105, v106, "Empty provisioning certificate chain", v107, 2u);
    MEMORY[0x23190EFF0](v107, -1, -1);
  }

  if (*(v79 + 97) == 1)
  {
    type metadata accessor for CloudAttestationError(0);
    sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

LABEL_24:
  v127 = v79[8];
  v128 = v79[9];
  __swift_project_boxed_opaque_existential_1(v79 + 5, v127);
  v89 = 0;
  v417 = (*(v128 + 24))(v127, v128);
  if (!*(v417 + 16))
  {
  }

  v415[0] = v385;
  v415[1] = v396;
  v415[2] = a9;
  v415[3] = a10;
  sub_22FF82DC8(v415, &v417);
  if (v79[13])
  {
    v129 = v79[13];
  }

  else
  {

    v129 = sub_22FEBAD18(v130);
  }

  v415[0] = sub_22FF8E4E0(v129);
  sub_22FF8E600(v415);

  v132 = v415[0];
  v402 = v415[0][2];
  if (!v402)
  {
LABEL_153:
  }

  v133 = 0;
  v401 = v415[0] + ((*(v406 + 80) + 32) & ~*(v406 + 80));
  v403 = v406 + 16;
  v79 = (v406 + 8);
  v376 = (v394 + 56);
  v375 = (v384 + 48);
  v374 = (v394 + 48);
  v372 = (v384 + 56);
  *&v131 = 136446210;
  v384 = v131;
  v385 = (v406 + 8);
  v373 = v62;
  v400 = v415[0];
  while (1)
  {
    if (v133 >= v132[2])
    {
      __break(1u);
      goto LABEL_160;
    }

    v408 = v75;
    v134 = *(v406 + 72);
    v407 = v133;
    v135 = *(v406 + 16);
    v136 = v411;
    v137 = v412;
    v135(v411, &v401[v134 * v133], v412);
    v135(v80, v136, v137);
    if (qword_281490280 != -1)
    {
      swift_once();
    }

    v138 = __swift_project_value_buffer(v412, qword_281491418);
    sub_22FF7BE88(&qword_281491318, MEMORY[0x277CC95F0]);
    if (sub_22FFB1478())
    {
      break;
    }

    v404 = v89;
    if (qword_28148FA40 != -1)
    {
      swift_once();
    }

    v160 = v412;
    v161 = __swift_project_value_buffer(v412, qword_2814913A0);
    v162 = sub_22FFB1478();
    v163 = *v79;
    (*v79)(v80, v160);
    v164 = v417;
    v165 = *(v417 + 16);
    v396 = v163;
    if (v162)
    {
      if (!v165 || (v166 = sub_22FFA6214(v161), (v167 & 1) == 0))
      {
        v218 = v80;
        if (qword_27DAF1498 != -1)
        {
          swift_once();
        }

        v219 = sub_22FFB12F8();
        __swift_project_value_buffer(v219, qword_27DAF38A0);
        v220 = sub_22FFB12D8();
        v221 = sub_22FFB1838();
        if (os_log_type_enabled(v220, v221))
        {
          v62 = swift_slowAlloc();
          v222 = swift_slowAlloc();
          v413 = v222;
          *v62 = v384;
          sub_22FF7BE88(&qword_27DAF38F8, MEMORY[0x277CC95F0]);
          v223 = sub_22FFB1BA8();
          v225 = sub_22FF9E448(v223, v224, &v413);

          *(v62 + 4) = v225;
          v218 = v410;
          v226 = v409;
          _os_log_impl(&dword_22FE99000, v220, v221, "Failed to read secure config from %{public}s", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v222);
          MEMORY[0x23190EFF0](v222, -1, -1);
          MEMORY[0x23190EFF0](v62, -1, -1);
        }

        else
        {

          v226 = v409;
        }

        v239 = v396;
        if (*(v226 + 97) == 1)
        {

          type metadata accessor for CloudAttestationError(0);
          sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
          swift_allocError();
          v369 = v368;
          v370 = v161;
          v371 = v412;
          v135(v369, v370, v412);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          v239(v411, v371);
        }

        v240 = v385;
        (v396)(v411, v412);
        v89 = v404;
        v80 = v218;
        v79 = v240;
        goto LABEL_32;
      }

      v168 = *(*(v164 + 56) + 8 * v166);
      if (*(v168 + 16))
      {
        v169 = *(*(v164 + 56) + 8 * v166);

        v170 = sub_22FFB0928();
        v172 = v171;
        MEMORY[0x28223BE20](v170);
        *(&v372 - 2) = v168;
        sub_22FF7BE88(qword_28148FED0, type metadata accessor for Proto_SealedHash);
        v173 = v386;
        v174 = v399;
        v175 = v404;
        sub_22FFB11B8();
        if (v175)
        {
          (v396)(v411, v412);
        }

        v176 = *v376;
        (*v376)(v173, 0, 1, v174);
        v177 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
        v178 = v408;
        swift_beginAccess();
        v179 = v178 + v177;
        v180 = v380;
        sub_22FEBF3A4(v179, v380, &qword_27DAF26E8, &qword_22FFB7C60);
        v89 = v375;
        v181 = *v375;
        v182 = v398;
        if ((*v375)(v180, 1, v398) == 1)
        {
          v183 = sub_22FFA6E68(MEMORY[0x277D84F90]);
          v184 = v390;
          *v390 = v183;
          v185 = v184 + *(v182 + 20);
          _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
          if (v181(v180, 1, v182) != 1)
          {
            sub_22FEAEA34(v180, &qword_27DAF26E8, &qword_22FFB7C60);
          }
        }

        else
        {
          sub_22FF90754(v180, v390, type metadata accessor for Proto_SealedHashLedger);
        }

        v293 = v386;
        if ((*v374)(v386, 1, v399) == 1)
        {
          sub_22FEAEA34(v293, &qword_27DAF38F0, &unk_22FFC0170);
          v294 = v390;
          v295 = *v390;
          v296 = sub_22FFA619C(v170, v172);
          LOBYTE(v295) = v297;

          if (v295)
          {
            v298 = *v294;
            v299 = swift_isUniquelyReferenced_nonNull_native();
            v300 = *v294;
            v413 = *v294;
            v62 = v405;
            v80 = v410;
            if (!v299)
            {
              sub_22FF8D3FC();
              v300 = v413;
            }

            v301 = *(*(v300 + 48) + 16 * v296 + 8);

            v302 = v377;
            sub_22FF90754(*(v300 + 56) + *(v394 + 72) * v296, v377, type metadata accessor for Proto_SealedHash);
            sub_22FF8C2A8(v296, v300);
            v303 = 0;
            *v294 = v300;
            v304 = v399;
          }

          else
          {
            v303 = 1;
            v62 = v405;
            v304 = v399;
            v302 = v377;
            v80 = v410;
          }

          v176(v302, v303, 1, v304);
          sub_22FEAEA34(v302, &qword_27DAF38F0, &unk_22FFC0170);
          v89 = 0;
          v79 = v385;
          goto LABEL_148;
        }

        sub_22FF90754(v293, v379, type metadata accessor for Proto_SealedHash);
        v305 = v390;
        v306 = *v390;
        v307 = swift_isUniquelyReferenced_nonNull_native();
        v308 = *v305;
        v413 = v308;
        v309 = sub_22FFA619C(v170, v172);
        v311 = *(v308 + 16);
        v312 = (v310 & 1) == 0;
        v264 = __OFADD__(v311, v312);
        v313 = v311 + v312;
        if (v264)
        {
          goto LABEL_164;
        }

        v314 = v310;
        v89 = 0;
        if (*(v308 + 24) >= v313)
        {
          v79 = v385;
          if (v307)
          {
            goto LABEL_126;
          }

          v346 = v309;
          sub_22FF8D3FC();
          v309 = v346;
          if ((v314 & 1) == 0)
          {
            goto LABEL_145;
          }

LABEL_127:
          v318 = v309;

          v319 = v413;
          sub_22FF91AF4(v379, v413[7] + *(v394 + 72) * v318, type metadata accessor for Proto_SealedHash);
          *v390 = v319;
        }

        else
        {
          sub_22FF8A5C8(v313, v307);
          v309 = sub_22FFA619C(v170, v172);
          v79 = v385;
          if ((v314 & 1) != (v315 & 1))
          {
            goto LABEL_167;
          }

LABEL_126:
          if (v314)
          {
            goto LABEL_127;
          }

LABEL_145:
          v347 = v413;
          v413[(v309 >> 6) + 8] |= 1 << v309;
          v348 = (v347[6] + 16 * v309);
          *v348 = v170;
          v348[1] = v172;
          sub_22FF90754(v379, v347[7] + *(v394 + 72) * v309, type metadata accessor for Proto_SealedHash);
          v349 = v347[2];
          v264 = __OFADD__(v349, 1);
          v350 = v349 + 1;
          if (v264)
          {
            goto LABEL_166;
          }

          v347[2] = v350;
          *v390 = v347;
        }

        v62 = v405;
        v80 = v410;
LABEL_148:
        v351 = v373;
        v352 = *(v62 + v373);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          (v396)(v411, v412);
          v75 = *(v62 + v351);
        }

        else
        {
          v353 = *(v62 + v351);
          v354 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
          v355 = *(v354 + 48);
          v356 = *(v354 + 52);
          swift_allocObject();

          v75 = sub_22FF10520(v357);
          (v396)(v411, v412);

          *(v62 + v351) = v75;
        }

        v332 = v398;
        v333 = &v413;
        goto LABEL_152;
      }
    }

    else
    {
      v197 = v395;
      if (!v165 || (v198 = sub_22FFA6214(v411), (v199 & 1) == 0))
      {
        if (qword_27DAF1498 != -1)
        {
          swift_once();
        }

        v227 = sub_22FFB12F8();
        __swift_project_value_buffer(v227, qword_27DAF38A0);
        v135(v197, v411, v412);
        v228 = sub_22FFB12D8();
        v62 = sub_22FFB1838();
        if (os_log_type_enabled(v228, v62))
        {
          v229 = swift_slowAlloc();
          v230 = swift_slowAlloc();
          v413 = v230;
          *v229 = v384;
          sub_22FF7BE88(&qword_27DAF38F8, MEMORY[0x277CC95F0]);
          v231 = sub_22FFB1BA8();
          v233 = v232;
          v234 = v197;
          v235 = v396;
          (v396)(v234, v412);
          v236 = sub_22FF9E448(v231, v233, &v413);

          *(v229 + 4) = v236;
          _os_log_impl(&dword_22FE99000, v228, v62, "Failed to read seled hashes from %{public}s", v229, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v230);
          MEMORY[0x23190EFF0](v230, -1, -1);
          v237 = v229;
          v79 = v385;
          v238 = v409;
          v80 = v410;
          MEMORY[0x23190EFF0](v237, -1, -1);
        }

        else
        {

          v241 = v197;
          v235 = v396;
          (v396)(v241, v412);
          v238 = v409;
        }

        if (*(v238 + 97) == 1)
        {

          type metadata accessor for CloudAttestationError(0);
          sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
          swift_allocError();
          v365 = v411;
          v366 = v412;
          v135(v367, v411, v412);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          v235(v365, v366);
        }

        v235(v411, v412);
        goto LABEL_31;
      }

      v200 = *(*(v164 + 56) + 8 * v198);
      if (*(v200 + 16))
      {
        v201 = *(*(v164 + 56) + 8 * v198);

        v202 = sub_22FFB0928();
        v204 = v203;
        MEMORY[0x28223BE20](v202);
        *(&v372 - 2) = v200;
        sub_22FF7BE88(qword_28148FED0, type metadata accessor for Proto_SealedHash);
        v205 = v388;
        v206 = v399;
        v207 = v404;
        sub_22FFB11B8();
        v89 = v207;

        v208 = *v376;
        (*v376)(v205, 0, 1, v206);
        v209 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
        v210 = v408;
        swift_beginAccess();
        v211 = v210 + v209;
        v212 = v383;
        sub_22FEBF3A4(v211, v383, &qword_27DAF26E8, &qword_22FFB7C60);
        v213 = *v375;
        v214 = v398;
        if ((*v375)(v212, 1, v398) == 1)
        {
          v215 = sub_22FFA6E68(MEMORY[0x277D84F90]);
          v216 = v391;
          *v391 = v215;
          v217 = v216 + *(v214 + 20);
          _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
          if (v213(v212, 1, v214) != 1)
          {
            sub_22FEAEA34(v212, &qword_27DAF26E8, &qword_22FFB7C60);
          }
        }

        else
        {
          sub_22FF90754(v212, v391, type metadata accessor for Proto_SealedHashLedger);
        }

        v268 = v388;
        if ((*v374)(v388, 1, v399) == 1)
        {
          sub_22FEAEA34(v268, &qword_27DAF38F0, &unk_22FFC0170);
          v269 = v391;
          v270 = *v391;
          v271 = sub_22FFA619C(v202, v204);
          LOBYTE(v270) = v272;

          if (v270)
          {
            v273 = *v269;
            v274 = swift_isUniquelyReferenced_nonNull_native();
            v275 = *v269;
            v413 = *v269;
            v62 = v405;
            v80 = v410;
            if (!v274)
            {
              sub_22FF8D3FC();
              v275 = v413;
            }

            v276 = *(*(v275 + 48) + 16 * v271 + 8);

            v277 = v378;
            sub_22FF90754(*(v275 + 56) + *(v394 + 72) * v271, v378, type metadata accessor for Proto_SealedHash);
            sub_22FF8C2A8(v271, v275);
            v278 = 0;
            *v269 = v275;
            v279 = v399;
          }

          else
          {
            v278 = 1;
            v62 = v405;
            v279 = v399;
            v277 = v378;
            v80 = v410;
          }

          v208(v277, v278, 1, v279);
          sub_22FEAEA34(v277, &qword_27DAF38F0, &unk_22FFC0170);
          v89 = v207;
          v79 = v385;
LABEL_140:
          v339 = v373;
          v340 = *(v62 + v373);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            (v396)(v411, v412);
            v75 = *(v62 + v339);
          }

          else
          {
            v341 = *(v62 + v339);
            v342 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
            v343 = *(v342 + 48);
            v344 = *(v342 + 52);
            swift_allocObject();

            v75 = sub_22FF10520(v345);
            (v396)(v411, v412);

            *(v62 + v339) = v75;
          }

          v332 = v398;
          v333 = &v414;
LABEL_152:
          v358 = *(v333 - 32);
          v359 = v392;
          sub_22FF9064C(v358, v392, type metadata accessor for Proto_SealedHashLedger);
          (*v372)(v359, 0, 1, v332);
          v360 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
          swift_beginAccess();
          sub_22FEFF0DC(v359, v75 + v360, &qword_27DAF26E8, &qword_22FFB7C60);
          swift_endAccess();
          sub_22FF906D4(v358, type metadata accessor for Proto_SealedHashLedger);
          goto LABEL_33;
        }

        sub_22FF90754(v268, v381, type metadata accessor for Proto_SealedHash);
        v280 = v391;
        v281 = *v391;
        v282 = swift_isUniquelyReferenced_nonNull_native();
        v283 = *v280;
        v413 = v283;
        v284 = sub_22FFA619C(v202, v204);
        v286 = *(v283 + 16);
        v287 = (v285 & 1) == 0;
        v264 = __OFADD__(v286, v287);
        v288 = v286 + v287;
        if (v264)
        {
          goto LABEL_162;
        }

        v289 = v285;
        if (*(v283 + 24) >= v288)
        {
          if (v282)
          {
            goto LABEL_121;
          }

          v334 = v284;
          sub_22FF8D3FC();
          v284 = v334;
          if ((v289 & 1) == 0)
          {
            goto LABEL_137;
          }

LABEL_122:
          v316 = v284;

          v317 = v413;
          sub_22FF91AF4(v381, v413[7] + *(v394 + 72) * v316, type metadata accessor for Proto_SealedHash);
          *v391 = v317;
        }

        else
        {
          sub_22FF8A5C8(v288, v282);
          v284 = sub_22FFA619C(v202, v204);
          if ((v289 & 1) != (v290 & 1))
          {
            goto LABEL_167;
          }

LABEL_121:
          if (v289)
          {
            goto LABEL_122;
          }

LABEL_137:
          v335 = v413;
          v413[(v284 >> 6) + 8] |= 1 << v284;
          v336 = (v335[6] + 16 * v284);
          *v336 = v202;
          v336[1] = v204;
          sub_22FF90754(v381, v335[7] + *(v394 + 72) * v284, type metadata accessor for Proto_SealedHash);
          v337 = v335[2];
          v264 = __OFADD__(v337, 1);
          v338 = v337 + 1;
          if (v264)
          {
            goto LABEL_165;
          }

          v335[2] = v338;
          *v391 = v335;
        }

        v62 = v405;
        v80 = v410;
        goto LABEL_140;
      }
    }

    (v396)(v411, v412);
LABEL_31:
    v89 = v404;
LABEL_32:
    v75 = v408;
LABEL_33:
    v133 = v407 + 1;
    v132 = v400;
    if (v402 == v407 + 1)
    {
      goto LABEL_153;
    }
  }

  v139 = *v79;
  (*v79)(v80, v412);
  v140 = v417;
  if (!*(v417 + 16) || (v141 = sub_22FFA6214(v138), (v142 & 1) == 0))
  {
    v396 = v135;
    v186 = v139;
    if (qword_27DAF1498 != -1)
    {
      swift_once();
    }

    v187 = sub_22FFB12F8();
    __swift_project_value_buffer(v187, qword_27DAF38A0);
    v188 = sub_22FFB12D8();
    v189 = sub_22FFB1838();
    if (os_log_type_enabled(v188, v189))
    {
      v62 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v404 = v89;
      v191 = v190;
      v413 = v190;
      *v62 = v384;
      sub_22FF7BE88(&qword_27DAF38F8, MEMORY[0x277CC95F0]);
      v192 = sub_22FFB1BA8();
      v194 = sub_22FF9E448(v192, v193, &v413);

      *(v62 + 4) = v194;
      v79 = v385;
      v195 = v409;
      _os_log_impl(&dword_22FE99000, v188, v189, "Failed to read cryptex sealed hashes from %{public}s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v191);
      v196 = v191;
      v89 = v404;
      MEMORY[0x23190EFF0](v196, -1, -1);
      MEMORY[0x23190EFF0](v62, -1, -1);
    }

    else
    {

      v195 = v409;
    }

    if (*(v195 + 97) == 1)
    {

      type metadata accessor for CloudAttestationError(0);
      sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
      swift_allocError();
      v362 = v361;
      v363 = v138;
      v364 = v412;
      v396(v362, v363, v412);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v186(v411, v364);
    }

    v186(v411, v412);
    goto LABEL_71;
  }

  v143 = *(*(v140 + 56) + 8 * v141);
  if (!*(v143 + 16))
  {
    v139(v411, v412);
LABEL_71:
    v80 = v410;
    goto LABEL_32;
  }

  v144 = *(*(v140 + 56) + 8 * v141);

  v145 = sub_22FFB0928();
  v404 = v146;
  MEMORY[0x28223BE20](v145);
  *(&v372 - 2) = v143;
  sub_22FF7BE88(qword_28148FED0, type metadata accessor for Proto_SealedHash);
  v147 = v393;
  v148 = v399;
  v149 = v89;
  sub_22FFB11B8();

  v150 = *v376;
  (*v376)(v147, 0, 1, v148);
  v151 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  v152 = v408;
  swift_beginAccess();
  v153 = v152 + v151;
  v154 = v389;
  sub_22FEBF3A4(v153, v389, &qword_27DAF26E8, &qword_22FFB7C60);
  v155 = *v375;
  v156 = v398;
  if ((*v375)(v154, 1, v398) == 1)
  {
    v157 = sub_22FFA6E68(MEMORY[0x277D84F90]);
    v158 = v397;
    *v397 = v157;
    v159 = v158 + *(v156 + 20);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v155(v154, 1, v156) != 1)
    {
      sub_22FEAEA34(v154, &qword_27DAF26E8, &qword_22FFB7C60);
    }
  }

  else
  {
    sub_22FF90754(v154, v397, type metadata accessor for Proto_SealedHashLedger);
  }

  v242 = v393;
  v243 = (*v374)(v393, 1, v399);
  v244 = v404;
  if (v243 == 1)
  {
    sub_22FEAEA34(v242, &qword_27DAF38F0, &unk_22FFC0170);
    v245 = v397;
    v246 = *v397;
    v247 = sub_22FFA619C(v145, v244);
    LOBYTE(v246) = v248;

    if (v246)
    {
      v249 = *v245;
      v250 = swift_isUniquelyReferenced_nonNull_native();
      v251 = *v245;
      v413 = *v245;
      v62 = v405;
      v80 = v410;
      if (!v250)
      {
        sub_22FF8D3FC();
        v251 = v413;
      }

      v252 = *(*(v251 + 48) + 16 * v247 + 8);

      v253 = v382;
      sub_22FF90754(*(v251 + 56) + *(v394 + 72) * v247, v382, type metadata accessor for Proto_SealedHash);
      sub_22FF8C2A8(v247, v251);
      v254 = 0;
      *v245 = v251;
      v255 = v399;
    }

    else
    {
      v254 = 1;
      v62 = v405;
      v255 = v399;
      v253 = v382;
      v80 = v410;
    }

    v150(v253, v254, 1, v255);
    sub_22FEAEA34(v253, &qword_27DAF38F0, &unk_22FFC0170);
    v89 = v149;
    v79 = v385;
    goto LABEL_132;
  }

  sub_22FF90754(v242, v387, type metadata accessor for Proto_SealedHash);
  v256 = v397;
  v257 = *v397;
  v258 = swift_isUniquelyReferenced_nonNull_native();
  v259 = *v256;
  v413 = v259;
  v260 = sub_22FFA619C(v145, v244);
  v262 = *(v259 + 16);
  v263 = (v261 & 1) == 0;
  v264 = __OFADD__(v262, v263);
  v265 = v262 + v263;
  if (!v264)
  {
    v266 = v261;
    if (*(v259 + 24) >= v265)
    {
      if (v258)
      {
        goto LABEL_106;
      }

      v320 = v260;
      sub_22FF8D3FC();
      v260 = v320;
      if ((v266 & 1) == 0)
      {
        goto LABEL_129;
      }

LABEL_107:
      v291 = v260;

      v292 = v413;
      sub_22FF91AF4(v387, v413[7] + *(v394 + 72) * v291, type metadata accessor for Proto_SealedHash);
      *v397 = v292;
    }

    else
    {
      sub_22FF8A5C8(v265, v258);
      v260 = sub_22FFA619C(v145, v244);
      if ((v266 & 1) != (v267 & 1))
      {
        goto LABEL_167;
      }

LABEL_106:
      if (v266)
      {
        goto LABEL_107;
      }

LABEL_129:
      v321 = v413;
      v413[(v260 >> 6) + 8] |= 1 << v260;
      v322 = (v321[6] + 16 * v260);
      *v322 = v145;
      v322[1] = v244;
      sub_22FF90754(v387, v321[7] + *(v394 + 72) * v260, type metadata accessor for Proto_SealedHash);
      v323 = v321[2];
      v264 = __OFADD__(v323, 1);
      v324 = v323 + 1;
      if (v264)
      {
        goto LABEL_163;
      }

      v321[2] = v324;
      *v397 = v321;
    }

    v62 = v405;
    v80 = v410;
LABEL_132:
    v325 = v373;
    v326 = *(v62 + v373);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v139(v411, v412);
      v75 = *(v62 + v325);
    }

    else
    {
      v327 = *(v62 + v325);
      v328 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      v329 = *(v328 + 48);
      v330 = *(v328 + 52);
      swift_allocObject();

      v75 = sub_22FF10520(v331);
      v139(v411, v412);

      *(v62 + v325) = v75;
    }

    v332 = v398;
    v333 = &v416;
    goto LABEL_152;
  }

  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);

  __break(1u);
LABEL_167:
  result = sub_22FFB1C18();
  __break(1u);
  return result;
}

uint64_t sub_22FF81754(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, char *a12)
{
  v174 = a8;
  *&v173 = a7;
  v186 = a5;
  v187 = a6;
  v181 = a4;
  v184 = a3;
  v190 = a12;
  v188 = a11;
  v185 = sub_22FFB0958();
  v177 = *(v185 - 8);
  v14 = *(v177 + 64);
  v15 = MEMORY[0x28223BE20](v185);
  v178 = &v169 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v189 = &v169 - v18;
  MEMORY[0x28223BE20](v17);
  v175 = &v169 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v182 = &v169 - v22;
  v179 = sub_22FFB0908();
  v23 = *(v179 - 1);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v179);
  v26 = &v169 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_22FFB0EE8();
  v27 = *(v180 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v180);
  v30 = &v169 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v32 = *&v31[a1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *&v31[a1];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    v34 = sub_22FF10520(v34);
    *&v31[a1] = v34;
  }

  swift_beginAccess();
  v38 = v34[2];
  v39 = v34[3];
  v40 = v184;
  v34[2] = a2;
  v34[3] = v40;
  sub_22FEA55AC(v38, v39);
  (*(v23 + 16))(v26, v181, v179);
  sub_22FEA5608(a2, v40);
  sub_22FFB0EC8();
  v41 = *&v31[a1];
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *&v31[a1];
  v184 = a1;
  v176 = v31;
  if ((v42 & 1) == 0)
  {
    v44 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();
    v43 = sub_22FF10520(v43);
    *&v31[a1] = v43;
  }

  v47 = v182;
  v48 = v180;
  (*(v27 + 32))(v182, v30, v180);
  (*(v27 + 56))(v47, 0, 1, v48);
  v49 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEFF0DC(v47, v43 + v49, &qword_27DAF1520, &qword_22FFB3A30);
  swift_endAccess();
  v50 = v190;
  v51 = v188;
  v182 = *(v190 + 4);
  (v182)(v191, v188, v190);
  v52 = v192;
  v53 = v193;
  __swift_project_boxed_opaque_existential_1(v191, v192);
  v54 = v183;
  v55 = (*(v53 + 8))(v52, v53);
  v57 = v54;
  if (v54)
  {
    __swift_destroy_boxed_opaque_existential_1(v191);
    if (qword_27DAF1498 != -1)
    {
      goto LABEL_80;
    }

    goto LABEL_7;
  }

  v75 = v56;
  v76 = v55;
  v77 = v184;
  v68 = v176;
  v78 = *&v176[v184];
  v79 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *&v68[v77];
  if ((v79 & 1) == 0)
  {
    v81 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    v82 = *(v81 + 48);
    v83 = *(v81 + 52);
    swift_allocObject();
    v80 = sub_22FF10520(v80);
    *&v68[v77] = v80;
  }

  v50 = v189;
  swift_beginAccess();
  v84 = v80[4];
  v85 = v80[5];
  v80[4] = v76;
  v80[5] = v75;
  sub_22FEA55AC(v84, v85);
  __swift_destroy_boxed_opaque_existential_1(v191);
  v57 = 0;
  v67 = v187;
  if (*(v187 + 16))
  {
    goto LABEL_21;
  }

  while (2)
  {
    if (qword_27DAF1498 != -1)
    {
      swift_once();
    }

    v69 = sub_22FFB12F8();
    __swift_project_value_buffer(v69, qword_27DAF38A0);
    v70 = sub_22FFB12D8();
    v71 = sub_22FFB1838();
    v72 = os_log_type_enabled(v70, v71);
    v51 = v185;
    if (v72)
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_22FE99000, v70, v71, "Empty provisioning certificate chain", v73, 2u);
      MEMORY[0x23190EFF0](v73, -1, -1);
    }

    (*(v190 + 5))(v191, v188);
    if (BYTE1(v191[0]) == 1)
    {
      type metadata accessor for CloudAttestationError(0);
      sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

LABEL_24:
    (v182)(v191, v188, v190);
    v95 = v192;
    v96 = v193;
    __swift_project_boxed_opaque_existential_1(v191, v192);
    v194 = (*(v96 + 24))(v95, v96);
    v97 = v194;

    __swift_destroy_boxed_opaque_existential_1(v191);
    v98 = *(v97 + 16);

    if (!v98)
    {
    }

    v191[0] = v173;
    v191[1] = v174;
    v191[2] = a9;
    v192 = a10;
    sub_22FF82DC8(v191, &v194);
    (*(v190 + 6))(v191, v188);
    v99 = v191[0];
    if (!v191[0])
    {

      v99 = sub_22FEBAD18(v100);
    }

    v101 = v177;
    v102 = v178;
    v103 = v99[2];
    if (v103)
    {
      v104 = MEMORY[0x277CC95F0];
      v105 = sub_22FF8A2B0(v99[2], 0, &qword_27DAF1D60, &qword_22FFB43C0, MEMORY[0x277CC95F0]);
      v57 = sub_22FF8FF60(v191, &v105[(*(v101 + 80) + 32) & ~*(v101 + 80)], v103, v99, v104);

      sub_22FF6F7A8();
      if (v57 != v103)
      {
        __break(1u);

        __break(1u);
        return result;
      }

      v51 = v185;
      v101 = v177;
      v102 = v178;
      v50 = v189;
    }

    else
    {
      v105 = MEMORY[0x277D84F90];
    }

    v191[0] = v105;
    sub_22FF8E600(v191);
    v171 = 0;

    v108 = v191[0];
    v109 = v175;
    v180 = v191[0][2];
    if (!v180)
    {
LABEL_73:
    }

    v110 = 0;
    v176 = v191[0] + ((*(v101 + 80) + 32) & ~*(v101 + 80));
    v183 = (v101 + 16);
    v187 = v101 + 8;
    v174 = v190 + 40;
    *&v107 = 136446210;
    v173 = v107;
    v179 = v191[0];
    while (v110 < v108[2])
    {
      v113 = *(v101 + 16);
      v113(v109, &v176[*(v101 + 72) * v110], v51);
      v182 = v113;
      v113(v50, v109, v51);
      if (qword_281490280 != -1)
      {
        swift_once();
      }

      v57 = __swift_project_value_buffer(v51, qword_281491418);
      sub_22FF7BE88(&qword_281491318, MEMORY[0x277CC95F0]);
      if (sub_22FFB1478())
      {
        v181 = *v187;
        v181(v50, v51);
        v114 = v194;
        if (*(v194 + 2) && (v115 = sub_22FFA6214(v57), (v116 & 1) != 0))
        {
          v111 = *(*(v114 + 56) + 8 * v115);

          sub_22FF83C60(v184, v111);

          v112 = v109;
        }

        else
        {
          if (qword_27DAF1498 != -1)
          {
            swift_once();
          }

          v117 = sub_22FFB12F8();
          __swift_project_value_buffer(v117, qword_27DAF38A0);
          v118 = sub_22FFB12D8();
          v119 = sub_22FFB1838();
          if (os_log_type_enabled(v118, v119))
          {
            v120 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            v191[0] = v121;
            *v120 = v173;
            sub_22FF7BE88(&qword_27DAF38F8, MEMORY[0x277CC95F0]);
            v122 = sub_22FFB1BA8();
            v124 = sub_22FF9E448(v122, v123, v191);

            *(v120 + 4) = v124;
            _os_log_impl(&dword_22FE99000, v118, v119, "Failed to read cryptex sealed hashes from %{public}s", v120, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v121);
            v125 = v121;
            v101 = v177;
            MEMORY[0x23190EFF0](v125, -1, -1);
            v126 = v120;
            v109 = v175;
            MEMORY[0x23190EFF0](v126, -1, -1);
          }

          v102 = v178;
          (*(v190 + 5))(v191, v188);
          if (BYTE1(v191[0]) == 1)
          {

            type metadata accessor for CloudAttestationError(0);
            sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
            swift_allocError();
            v161 = v160;
            v162 = v57;
            v163 = v109;
            v164 = v185;
            (v182)(v161, v162, v185);
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            v181(v163, v164);
          }

          v112 = v109;
          v51 = v185;
        }

        v181(v112, v51);
        goto LABEL_35;
      }

      if (qword_28148FA40 != -1)
      {
        swift_once();
      }

      v127 = __swift_project_value_buffer(v51, qword_2814913A0);
      v128 = v189;
      v129 = sub_22FFB1478();
      v130 = v128;
      v57 = *v187;
      (*v187)(v130, v51);
      v181 = v194;
      v131 = *(v194 + 2);
      if (v129)
      {
        if (v131)
        {
          v132 = sub_22FFA6214(v127);
          if (v133)
          {
            v134 = *(*(v181 + 7) + 8 * v132);

            v135 = v171;
            sub_22FF8365C(v184, v134);
            v171 = v135;
            if (v135)
            {
              v57(v109, v51);
            }

            v57(v109, v51);

            goto LABEL_35;
          }
        }

        if (qword_27DAF1498 != -1)
        {
          swift_once();
        }

        v140 = sub_22FFB12F8();
        __swift_project_value_buffer(v140, qword_27DAF38A0);
        v141 = sub_22FFB12D8();
        v142 = sub_22FFB1838();
        if (os_log_type_enabled(v141, v142))
        {
          v143 = swift_slowAlloc();
          v144 = swift_slowAlloc();
          v191[0] = v144;
          *v143 = v173;
          sub_22FF7BE88(&qword_27DAF38F8, MEMORY[0x277CC95F0]);
          v145 = sub_22FFB1BA8();
          v147 = sub_22FF9E448(v145, v146, v191);

          *(v143 + 4) = v147;
          _os_log_impl(&dword_22FE99000, v141, v142, "Failed to read secure config from %{public}s", v143, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v144);
          v148 = v144;
          v101 = v177;
          MEMORY[0x23190EFF0](v148, -1, -1);
          v149 = v143;
          v109 = v175;
          MEMORY[0x23190EFF0](v149, -1, -1);
        }

        v102 = v178;
        (*(v190 + 5))(v191, v188);
        if (BYTE1(v191[0]) == 1)
        {

          type metadata accessor for CloudAttestationError(0);
          sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
          swift_allocError();
          v165 = v109;
          v166 = v185;
          (v182)(v167, v127, v185);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          v57(v165, v166);
        }

        v139 = v109;
        v51 = v185;
        goto LABEL_65;
      }

      if (v131)
      {
        v136 = sub_22FFA6214(v109);
        if (v137)
        {
          v138 = *(*(v181 + 7) + 8 * v136);

          sub_22FF83C60(v184, v138);

          v139 = v109;
LABEL_65:
          v57(v139, v51);
LABEL_35:
          v50 = v189;
          goto LABEL_36;
        }
      }

      v172 = v57;
      if (qword_27DAF1498 != -1)
      {
        swift_once();
      }

      v150 = sub_22FFB12F8();
      __swift_project_value_buffer(v150, qword_27DAF38A0);
      (v182)(v102, v109, v51);
      v151 = sub_22FFB12D8();
      v152 = sub_22FFB1838();
      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v170 = swift_slowAlloc();
        v191[0] = v170;
        *v153 = v173;
        sub_22FF7BE88(&qword_27DAF38F8, MEMORY[0x277CC95F0]);
        v154 = sub_22FFB1BA8();
        v156 = v155;
        v57 = v172;
        v172(v102, v51);
        v157 = sub_22FF9E448(v154, v156, v191);

        *(v153 + 4) = v157;
        _os_log_impl(&dword_22FE99000, v151, v152, "Failed to read seled hashes from %{public}s", v153, 0xCu);
        v158 = v170;
        __swift_destroy_boxed_opaque_existential_1(v170);
        v101 = v177;
        MEMORY[0x23190EFF0](v158, -1, -1);
        v159 = v153;
        v109 = v175;
        MEMORY[0x23190EFF0](v159, -1, -1);

        v50 = v189;
      }

      else
      {

        v57 = v172;
        v172(v102, v51);
        v50 = v189;
        v101 = v177;
      }

      (*(v190 + 5))(v191, v188);
      if (BYTE1(v191[0]) == 1)
      {

        type metadata accessor for CloudAttestationError(0);
        sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
        swift_allocError();
        (v182)(v168, v109, v51);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v57(v109, v51);
      }

      v57(v109, v51);
LABEL_36:
      ++v110;
      v108 = v179;
      if (v180 == v110)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_80:
    swift_once();
LABEL_7:
    v58 = sub_22FFB12F8();
    __swift_project_value_buffer(v58, qword_27DAF38A0);
    v59 = v57;
    v60 = sub_22FFB12D8();
    v61 = sub_22FFB1838();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = v57;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138543362;
      v65 = v62;
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v63 + 4) = v66;
      *v64 = v66;
      _os_log_impl(&dword_22FE99000, v60, v61, "Unable to fetch ap ticket: %{public}@", v63, 0xCu);
      sub_22FEAEA34(v64, &qword_27DAF1680, &unk_22FFB4B10);
      MEMORY[0x23190EFF0](v64, -1, -1);
      v57 = v62;
      MEMORY[0x23190EFF0](v63, -1, -1);
    }

    (*(v50 + 5))(v191, v51, v50);
    v67 = v187;
    if (BYTE1(v191[0]) != 1)
    {

      v57 = 0;
      v50 = v189;
      v68 = v176;
      if (!*(v67 + 16))
      {
        continue;
      }

LABEL_21:
      v86 = v184;
      v87 = *&v68[v184];
      v88 = swift_isUniquelyReferenced_nonNull_native();
      v89 = *&v68[v86];
      if ((v88 & 1) == 0)
      {
        v90 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
        v91 = *(v90 + 48);
        v92 = *(v90 + 52);
        swift_allocObject();
        v89 = sub_22FF10520(v89);
        *&v68[v86] = v89;
      }

      v51 = v185;
      v93 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
      swift_beginAccess();
      v94 = *(v89 + v93);
      *(v89 + v93) = v67;

      goto LABEL_24;
    }

    return swift_willThrow();
  }
}

uint64_t sub_22FF82DC8(uint64_t a1, uint64_t *a2)
{
  v90 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F08, &qword_22FFB4B00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v65 - v6;
  v78 = type metadata accessor for SEP.SealedHash(0);
  v8 = *(v78 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v78);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22FFB0958();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v68 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v87 = &v65 - v17;
  MEMORY[0x28223BE20](v16);
  v82 = &v65 - v19;
  v67 = a2;
  v20 = *a2;
  v21 = v11;
  v22 = v20 + 64;
  v23 = 1 << *(v20 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v20 + 64);
  v26 = v23 + 63;
  v28 = *(a1 + 16);
  v27 = *(a1 + 24);
  v29 = v26 >> 6;
  v85 = v18 + 16;
  v81 = v18 + 32;
  v75 = v27;
  v80 = v27 >> 62;
  v74 = v28;
  v72 = v28;
  v70 = v28 >> 32;
  v79 = (v8 + 48);
  v83 = v18;
  v77 = (v18 + 8);
  v30 = 0;

  v71 = v86;
  v76 = v12;
  v84 = v22;
  v73 = v29;
  v69 = v21;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (v25)
          {
            goto LABEL_10;
          }

          do
          {
            v31 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              __break(1u);
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

            if (v31 >= v29)
            {
              goto LABEL_46;
            }

            v25 = *(v22 + 8 * v31);
            ++v30;
          }

          while (!v25);
          v30 = v31;
LABEL_10:
          v32 = v83;
          v33 = v82;
          v34 = *(v83 + 16);
          v34(v82, *(v86 + 48) + *(v83 + 72) * (__clz(__rbit64(v25)) | (v30 << 6)), v12);
          (*(v32 + 32))(v87, v33, v12);
          memset(v89, 0, sizeof(v89));
          if (v80 > 1)
          {
            if (v80 != 2)
            {
              memset(v88, 0, 14);
LABEL_25:
              sub_22FF53FB0(v89, v7);
              v22 = v84;
              goto LABEL_26;
            }

            v35 = *(v72 + 16);
            v36 = sub_22FFB0588();
            if (v36)
            {
              v37 = v36;
              v38 = sub_22FFB05B8();
              if (!__OFSUB__(v35, v38))
              {
                v39 = v35 - v38 + v37;
                sub_22FFB05A8();
                if (v39)
                {
                  sub_22FF53FB0(v89, v7);
                  v21 = v69;
                  v12 = v76;
                  v22 = v84;
                  goto LABEL_23;
                }

LABEL_54:
                __break(1u);
LABEL_55:
                sub_22FFB05A8();
LABEL_56:
                __break(1u);
              }

LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              __break(1u);
            }

            sub_22FFB05A8();
            goto LABEL_54;
          }

          if (!v80)
          {
            LOBYTE(v88[0]) = v74;
            *(v88 + 1) = *(&v72 + 1);
            *(v88 + 5) = *(&v72 + 5);
            HIBYTE(v88[0]) = HIBYTE(v72);
            LODWORD(v88[1]) = v75;
            WORD2(v88[1]) = WORD2(v75);
            goto LABEL_25;
          }

          v22 = v84;
          if (v70 < v74)
          {
            goto LABEL_48;
          }

          v40 = sub_22FFB0588();
          if (!v40)
          {
            goto LABEL_55;
          }

          v41 = v40;
          v42 = sub_22FFB05B8();
          if (__OFSUB__(v74, v42))
          {
            goto LABEL_50;
          }

          v43 = v74 - v42 + v41;
          sub_22FFB05A8();
          if (!v43)
          {
            goto LABEL_56;
          }

          sub_22FF53FB0(v89, v7);
          v12 = v76;
LABEL_23:
          v29 = v73;
LABEL_26:
          v25 &= v25 - 1;
          if ((*v79)(v7, 1, v78) != 1)
          {
            break;
          }

          (*v77)(v87, v12);
          sub_22FEAEA34(v7, &qword_27DAF1F08, &qword_22FFB4B00);
        }

        sub_22FF90754(v7, v21, type metadata accessor for SEP.SealedHash);
        if ((*v21 & 4) != 0)
        {
          break;
        }

        sub_22FF906D4(v21, type metadata accessor for SEP.SealedHash);
        (*v77)(v87, v12);
      }

      if (*(v71 + 16))
      {
        v44 = sub_22FFA6214(v87);
        if (v45)
        {
          v46 = *(*(*(v71 + 56) + 8 * v44) + 16);
          if (v46)
          {
            break;
          }
        }
      }

      sub_22FF906D4(v21, type metadata accessor for SEP.SealedHash);
      v12 = v76;
      (*v77)(v87, v76);
    }

    v47 = v67;
    v48 = *v67;
    LODWORD(v71) = swift_isUniquelyReferenced_nonNull_native();
    v49 = v68;
    v34(v68, v87, v76);
    v50 = *v47;
    *v89 = v50;
    v52 = sub_22FFA6214(v49);
    v53 = *(v50 + 16);
    v54 = (v51 & 1) == 0;
    v55 = v53 + v54;
    if (__OFADD__(v53, v54))
    {
      goto LABEL_51;
    }

    v56 = v51;
    if (*(v50 + 24) >= v55)
    {
      break;
    }

    sub_22FF8BECC(v55, v71);
    v57 = sub_22FFA6214(v68);
    if ((v56 & 1) != (v58 & 1))
    {
      result = sub_22FFB1C18();
      __break(1u);
      return result;
    }

    v52 = v57;
    if ((v56 & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_40:
    v59 = *v89;
    v60 = *(*(*v89 + 56) + 8 * v52);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v60 = sub_22FF8FC68(v60);
    }

    if (v46 > *(v60 + 2))
    {
      goto LABEL_52;
    }

    v60[64 * v46] |= 4u;
    *(*(v59 + 56) + 8 * v52) = v60;
    v62 = *v77;

    v12 = v76;
    v62(v68, v76);
    sub_22FF906D4(v21, type metadata accessor for SEP.SealedHash);

    v71 = *v89;
    *v67 = *v89;
    v62(v87, v12);
    v7 = v66;
    v22 = v84;
    v29 = v73;
  }

  if (v71)
  {
    if ((v51 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  sub_22FF8E260();
  if (v56)
  {
    goto LABEL_40;
  }

LABEL_45:
  __break(1u);
LABEL_46:

  v64 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FF8365C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_SealedHash(0);
  v62 = *(v4 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x28223BE20](v4);
  v61 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v57 - v12;
  v14 = type metadata accessor for Proto_SealedHashLedger(0);
  v63 = *(v14 - 8);
  v64 = v14;
  v15 = *(v63 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF38F0, &unk_22FFC0170);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v20);
  v25 = &v57 - v24;
  if (*(a2 + 16))
  {
    v58 = v11;
    v59 = v17;
    v60 = a1;
    if (qword_28148FA40 != -1)
    {
      swift_once();
    }

    v26 = sub_22FFB0958();
    __swift_project_value_buffer(v26, qword_2814913A0);
    v27 = sub_22FFB0928();
    v29 = v28;
    MEMORY[0x28223BE20](v27);
    *(&v57 - 2) = a2;
    sub_22FF7BE88(qword_28148FED0, type metadata accessor for Proto_SealedHash);
    v30 = v66;
    sub_22FFB11B8();
    if (v30)
    {
    }

    else
    {
      v66 = 0;
      (*(v62 + 56))(v25, 0, 1, v4);
      v57 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
      v31 = *(v60 + v57);
      v32 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
      swift_beginAccess();
      sub_22FEBF3A4(v31 + v32, v13, &qword_27DAF26E8, &qword_22FFB7C60);
      v33 = v64;
      v34 = *(v63 + 48);
      if (v34(v13, 1, v64) == 1)
      {
        v35 = sub_22FFA6E68(MEMORY[0x277D84F90]);
        v36 = v59;
        *v59 = v35;
        v37 = v36 + *(v33 + 20);
        _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
        v38 = v34(v13, 1, v33);
        v39 = v29;
        if (v38 != 1)
        {
          sub_22FEAEA34(v13, &qword_27DAF26E8, &qword_22FFB7C60);
        }
      }

      else
      {
        sub_22FF90754(v13, v59, type metadata accessor for Proto_SealedHashLedger);
        v39 = v29;
      }

      v40 = (*(v62 + 48))(v25, 1, v4);
      v41 = v60;
      if (v40 == 1)
      {
        sub_22FEAEA34(v25, &qword_27DAF38F0, &unk_22FFC0170);
        v42 = v59;
        sub_22FF8A3AC(v27, v39, v22);

        sub_22FEAEA34(v22, &qword_27DAF38F0, &unk_22FFC0170);
      }

      else
      {
        v43 = v61;
        sub_22FF90754(v25, v61, type metadata accessor for Proto_SealedHash);
        v42 = v59;
        v44 = *v59;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = *v42;
        sub_22FF8C7D8(v43, v27, v39, isUniquelyReferenced_nonNull_native);

        *v42 = v65;
      }

      v46 = v64;
      v47 = v57;
      v48 = *(v41 + v57);
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v50 = *(v41 + v47);
      if ((v49 & 1) == 0)
      {
        v51 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
        v52 = *(v51 + 48);
        v53 = *(v51 + 52);
        swift_allocObject();
        v50 = sub_22FF10520(v50);
        *(v41 + v47) = v50;
      }

      v54 = v42;
      v55 = v58;
      sub_22FF90754(v54, v58, type metadata accessor for Proto_SealedHashLedger);
      (*(v63 + 56))(v55, 0, 1, v46);
      v56 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
      swift_beginAccess();
      sub_22FEFF0DC(v55, v50 + v56, &qword_27DAF26E8, &qword_22FFB7C60);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_22FF83C60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_SealedHash(0);
  v54 = *(v4 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v4);
  v53 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  v14 = type metadata accessor for Proto_SealedHashLedger(0);
  v55 = *(v14 - 8);
  v15 = *(v55 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF38F0, &unk_22FFC0170);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  result = MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  if (*(a2 + 16))
  {
    v48 = v22;
    v52 = v11;
    v49 = sub_22FFB0928();
    v51 = v25;
    MEMORY[0x28223BE20](v49);
    *(&v47 - 2) = a2;
    sub_22FF7BE88(qword_28148FED0, type metadata accessor for Proto_SealedHash);
    sub_22FFB11B8();
    v26 = v54;
    (*(v54 + 56))(v24, 0, 1, v4);
    v27 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
    v28 = *(a1 + v27);
    v29 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
    swift_beginAccess();
    sub_22FEBF3A4(v28 + v29, v13, &qword_27DAF26E8, &qword_22FFB7C60);
    v30 = *(v55 + 48);
    v31 = v30(v13, 1, v14);
    v50 = v14;
    if (v31 == 1)
    {
      *v17 = sub_22FFA6E68(MEMORY[0x277D84F90]);
      v32 = v17 + *(v14 + 20);
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      if (v30(v13, 1, v14) != 1)
      {
        sub_22FEAEA34(v13, &qword_27DAF26E8, &qword_22FFB7C60);
      }
    }

    else
    {
      sub_22FF90754(v13, v17, type metadata accessor for Proto_SealedHashLedger);
    }

    v33 = (*(v26 + 48))(v24, 1, v4);
    v34 = v52;
    if (v33 == 1)
    {
      sub_22FEAEA34(v24, &qword_27DAF38F0, &unk_22FFC0170);
      v35 = v48;
      sub_22FF8A3AC(v49, v51, v48);

      sub_22FEAEA34(v35, &qword_27DAF38F0, &unk_22FFC0170);
    }

    else
    {
      v36 = v53;
      sub_22FF90754(v24, v53, type metadata accessor for Proto_SealedHash);
      v37 = *v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = *v17;
      sub_22FF8C7D8(v36, v49, v51, isUniquelyReferenced_nonNull_native);

      *v17 = v56;
    }

    v39 = *(a1 + v27);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(a1 + v27);
    if ((v40 & 1) == 0)
    {
      v42 = type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      v43 = *(v42 + 48);
      v44 = *(v42 + 52);
      swift_allocObject();
      v41 = sub_22FF10520(v41);
      *(a1 + v27) = v41;
    }

    v45 = v55;
    sub_22FF90754(v17, v34, type metadata accessor for Proto_SealedHashLedger);
    (*(v45 + 56))(v34, 0, 1, v50);
    v46 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
    swift_beginAccess();
    sub_22FEFF0DC(v34, v41 + v46, &qword_27DAF26E8, &qword_22FFB7C60);
    return swift_endAccess();
  }

  return result;
}

uint64_t Attestor.attest(key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_22FFB0908();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF842D0, 0, 0);
}

uint64_t sub_22FF842D0()
{
  v1 = v0[6];
  v2 = (*(v0[5] + 16))(v0[4]);
  v0[10] = v2;
  v3 = v2;
  v4 = v0[9];
  v5 = v0[6];
  v17 = v0[5];
  (*(v17 + 8))(v0[4]);
  sub_22FFB1D28();
  sub_22FFB1D28();
  sub_22FFB0898();
  v6 = *(v17 + 56);
  v16 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_22FF844D8;
  v9 = v0[9];
  v10 = v0[5];
  v11 = v0[6];
  v12 = v0[3];
  v13 = v0[4];
  v14 = v0[2];

  return (v16)(v14, v12, v3, v9, 0, 0xF000000000000000, v13, v10);
}

uint64_t sub_22FF844D8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FF846AC, 0, 0);
  }

  else
  {
    v9 = *(v2 + 72);

    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_22FF846AC()
{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t Attestor.attest(key:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_22FFB0908();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF847DC, 0, 0);
}

uint64_t sub_22FF847DC()
{
  v1 = v0[8];
  v2 = (*(v0[7] + 16))(v0[6]);
  v0[12] = v2;
  v3 = v2;
  v4 = v0[11];
  v5 = v0[8];
  v19 = v0[7];
  (*(v19 + 8))(v0[6]);
  sub_22FFB1D28();
  sub_22FFB1D28();
  sub_22FFB0898();
  v6 = *(v19 + 56);
  v18 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_22FF849E0;
  v9 = v0[11];
  v10 = v0[7];
  v11 = v0[8];
  v12 = v0[5];
  v13 = v0[6];
  v14 = v0[3];
  v15 = v0[4];
  v16 = v0[2];

  return v18(v16, v14, v3, v9, v15, v12, v13, v10);
}

uint64_t sub_22FF849E0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 112) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FF84BB4, 0, 0);
  }

  else
  {
    v9 = *(v2 + 88);

    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_22FF84BB4()
{
  v1 = v0[14];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t Attestor.attest(key:expiration:appData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_22FF84C44, 0, 0);
}

uint64_t sub_22FF84C44()
{
  v1 = v0[8];
  v2 = (*(v0[7] + 16))(v0[6]);
  v0[9] = v2;
  v3 = v2;
  v14 = (v0[7] + 64);
  v15 = (*v14 + **v14);
  v4 = (*v14)[1];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_22FF84DC8;
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[2];

  return v15(v12, v10, v3, v11, v8, v9, v6);
}

uint64_t sub_22FF84DC8()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FF84F04, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_22FF84F04()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t Attestor.attest(key:appData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_22FFB0908();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF85030, 0, 0);
}

uint64_t sub_22FF85030()
{
  v1 = v0[7];
  v2 = (*(v0[6] + 16))(v0[5]);
  v0[11] = v2;
  v3 = v2;
  v4 = v0[10];
  v5 = v0[7];
  v18 = v0[6];
  (*(v18 + 8))(v0[5]);
  sub_22FFB1D28();
  sub_22FFB1D28();
  sub_22FFB0898();
  v6 = *(v18 + 64);
  v17 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_22FF85230;
  v9 = v0[10];
  v10 = v0[6];
  v11 = v0[7];
  v12 = v0[4];
  v13 = v0[5];
  v14 = v0[2];
  v15 = v0[3];

  return v17(v14, v15, v3, v9, v12, v13, v10);
}

uint64_t sub_22FF85230()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 104) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FF85404, 0, 0);
  }

  else
  {
    v9 = *(v2 + 80);

    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_22FF85404()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FF85468(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v90 = a6;
  v91 = a2;
  v92 = a3;
  v88 = a1;
  v8 = sub_22FFB13C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22FFB1398();
  v87 = *(v13 - 8);
  v14 = *(v87 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v86 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v89 = &v82 - v17;
  v18 = *(a5 + *(type metadata accessor for Proto_AttestationBundle(0) + 20)) + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData;
  result = swift_beginAccess();
  v20 = *v18;
  v21 = *(v18 + 8);
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2 || *(v20 + 16) == *(v20 + 24))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v22)
  {
    if ((v21 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    result = sub_22FEA5608(*v18, *(v18 + 8));
    goto LABEL_10;
  }

  if (v20 != v20 >> 32)
  {
    goto LABEL_7;
  }

LABEL_9:
  v20 = 0;
  v21 = 0xF000000000000000;
LABEL_10:
  if (a4 >> 60 == 15)
  {
    if (v21 >> 60 != 15)
    {
      sub_22FEA56EC(v20, v21);
      v23 = sub_22FFB12D8();
      v24 = sub_22FFB1838();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_22FE99000, v23, v24, "app data integrity check failed: no nonce observed", v25, 2u);
        MEMORY[0x23190EFF0](v25, -1, -1);
      }

      type metadata accessor for CloudAttestationError(0);
      sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    return result;
  }

  if (v21 >> 60 == 15)
  {
    v26 = v91;
    if (v91 >> 60 == 15)
    {
      v27 = v92;
      sub_22FEA5608(v92, a4);
      v28 = sub_22FFB12D8();
      v29 = sub_22FFB1838();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_22FE99000, v28, v29, "Attestation contains nonce, but no nonce provided to validate", v30, 2u);
        MEMORY[0x23190EFF0](v30, -1, -1);
      }

      type metadata accessor for CloudAttestationError(0);
      sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v31 = v27;
    }

    else
    {
      v39 = v92;
      sub_22FEBF8F0(v92, a4);
      v40 = v88;
      sub_22FEBF8F0(v88, v26);
      if ((sub_22FEC3DC8(v39, a4, v40, v26) & 1) == 0)
      {
        sub_22FEBF8F0(v39, a4);
        sub_22FEBF8F0(v40, v26);
        v41 = sub_22FFB12D8();
        v42 = sub_22FFB1838();
        sub_22FEA56EC(v39, a4);
        sub_22FEA56EC(v40, v26);
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v93 = v44;
          *v43 = 136446466;
          v45 = sub_22FEB0B54(v39, a4);
          v47 = sub_22FF9E448(v45, v46, &v93);

          *(v43 + 4) = v47;
          *(v43 + 12) = 2082;
          v48 = sub_22FEB0B54(v40, v91);
          v50 = sub_22FF9E448(v48, v49, &v93);

          *(v43 + 14) = v50;
          v39 = v92;
          _os_log_impl(&dword_22FE99000, v41, v42, "Observed nonce %{public}s does not match %{public}s", v43, 0x16u);
          swift_arrayDestroy();
          v51 = v44;
          v26 = v91;
          MEMORY[0x23190EFF0](v51, -1, -1);
          MEMORY[0x23190EFF0](v43, -1, -1);
        }

        type metadata accessor for CloudAttestationError(0);
        sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      sub_22FEA56EC(v40, v26);
      v31 = v39;
    }

    return sub_22FEA56EC(v31, a4);
  }

  v84 = v13;
  v32 = v92;
  sub_22FEA5608(v92, a4);
  sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540]);
  v85 = a4;
  sub_22FFB1388();
  sub_22FEA5608(v20, v21);
  sub_22FF9EA78(v20, v21);
  v83 = v20;
  sub_22FEA56EC(v20, v21);
  v33 = v89;
  v34 = v85;
  sub_22FFB1368();
  (*(v9 + 8))(v12, v8);
  v35 = v91;
  if (v91 >> 60 == 15)
  {
LABEL_23:
    v37 = sub_22FECAD68(v32, v34);
    v38 = v33;
    if (v37)
    {
      (*(v87 + 8))(v33, v84);
      sub_22FEA56EC(v32, v34);
      return sub_22FEA56EC(v83, v21);
    }

    else
    {
      v53 = v86;
      v52 = v87;
      v54 = v84;
      (*(v87 + 16))(v86, v38, v84);
      sub_22FEA5608(v32, v34);
      v55 = sub_22FFB12D8();
      v56 = sub_22FFB1838();
      sub_22FEA56EC(v32, v34);
      v57 = os_log_type_enabled(v55, v56);
      v58 = v83;
      if (v57)
      {
        v59 = v53;
        v60 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v93 = v91;
        *v60 = 136446466;
        v61 = sub_22FEB0B54(v32, v34);
        v63 = sub_22FF9E448(v61, v62, &v93);

        *(v60 + 4) = v63;
        *(v60 + 12) = 2082;
        v64 = sub_22FF95DBC();
        v66 = v65;
        LODWORD(v90) = v56;
        v67 = *(v52 + 8);
        v68 = v59;
        v54 = v84;
        v67(v68, v84);
        v69 = sub_22FF9E448(v64, v66, &v93);
        v34 = v85;

        *(v60 + 14) = v69;
        v58 = v83;
        _os_log_impl(&dword_22FE99000, v55, v90, "app data integrity check failed: (nonce:%{public}s != digest:%{public}s", v60, 0x16u);
        v70 = v91;
        swift_arrayDestroy();
        MEMORY[0x23190EFF0](v70, -1, -1);
        MEMORY[0x23190EFF0](v60, -1, -1);
      }

      else
      {

        v67 = *(v52 + 8);
        v67(v53, v54);
      }

      type metadata accessor for CloudAttestationError(0);
      sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_22FEA56EC(v58, v21);
      sub_22FEA56EC(v92, v34);
      return (v67)(v89, v54);
    }
  }

  v36 = v88;
  sub_22FEBF8F0(v88, v91);
  if (sub_22FEC3DC8(v36, v35, v32, v34))
  {
    sub_22FEA56EC(v36, v35);
    v33 = v89;
    goto LABEL_23;
  }

  sub_22FEBF8F0(v32, v34);
  sub_22FEBF8F0(v36, v35);
  v71 = sub_22FFB12D8();
  v72 = sub_22FFB1838();
  sub_22FEA56EC(v32, v34);
  sub_22FEA56EC(v36, v35);
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v93 = v74;
    *v73 = 136446466;
    v75 = sub_22FEB0B54(v32, v34);
    v77 = sub_22FF9E448(v75, v76, &v93);

    *(v73 + 4) = v77;
    *(v73 + 12) = 2082;
    v78 = sub_22FEB0B54(v36, v91);
    v80 = sub_22FF9E448(v78, v79, &v93);

    *(v73 + 14) = v80;
    v32 = v92;
    _os_log_impl(&dword_22FE99000, v71, v72, "Observed nonce %{public}s does not match %{public}s", v73, 0x16u);
    swift_arrayDestroy();
    v35 = v91;
    MEMORY[0x23190EFF0](v74, -1, -1);
    MEMORY[0x23190EFF0](v73, -1, -1);
  }

  v81 = v83;
  type metadata accessor for CloudAttestationError(0);
  sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_22FEA56EC(v81, v21);
  sub_22FEA56EC(v36, v35);
  sub_22FEA56EC(v32, v34);
  return (*(v87 + 8))(v89, v84);
}

uint64_t sub_22FF8603C()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05AB0);
  __swift_project_value_buffer(v0, qword_27DB05AB0);
  return sub_22FFB12E8();
}

uint64_t AttestationBundle.init(jsonString:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FFB0FA8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for Proto_AttestationBundle(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFB0F98();
  sub_22FF7BE88(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle);
  result = sub_22FFB1148();
  if (!v1)
  {
    return sub_22FF90754(v8, a1, type metadata accessor for Proto_AttestationBundle);
  }

  return result;
}

uint64_t AttestationBundle.withUnvalidatedAttestationBundle<A>(_:)(void (*a1)(char *))
{
  v3 = type metadata accessor for Unvalidated.AttestationBundle(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF9064C(v1, v6, type metadata accessor for AttestationBundle);
  a1(v6);
  return sub_22FF906D4(v6, type metadata accessor for Unvalidated.AttestationBundle);
}

uint64_t sub_22FF86350()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_281491670);
  __swift_project_value_buffer(v0, qword_281491670);
  return sub_22FFB12E8();
}

uint64_t Unvalidated.AttestationBundle.udid.getter()
{
  v40 = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for AttestationBundle(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF9064C(v0, v4, type metadata accessor for AttestationBundle);
  v5 = *&v4[*(type metadata accessor for Proto_AttestationBundle(0) + 20)];
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  sub_22FEA5608(v6, v7);
  sub_22FF906D4(v4, type metadata accessor for Proto_AttestationBundle);
  v8 = SEP.Attestation.init(from:)(v6, v7, &v36);
  v10 = v36;
  v9 = v37;
  v12 = v38;
  v11 = v39;
  v35 = 0;
  v34 = 0;
  MEMORY[0x28223BE20](v8);
  *(&v33 - 2) = &v35;
  *(&v33 - 1) = &v34;
  sub_22FED55F8(v12, v11, sub_22FEB341C);
  if (v38 == 2)
  {
    if (qword_281490AA0 != -1)
    {
      swift_once();
    }

    v13 = sub_22FFB12F8();
    __swift_project_value_buffer(v13, qword_281491670);
    v14 = sub_22FFB12D8();
    v15 = sub_22FFB1838();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22FE99000, v14, v15, "Unable to parse device udid from sep attestation", v16, 2u);
      MEMORY[0x23190EFF0](v16, -1, -1);
    }

    sub_22FEA55AC(v10, v9);
    sub_22FEA55AC(v12, v11);

    result = 0;
  }

  else
  {
    v20 = v36;
    v19 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_22FFB2D20;
    v22 = MEMORY[0x277D84D30];
    *(v21 + 56) = MEMORY[0x277D84CC0];
    *(v21 + 64) = v22;
    v23 = MEMORY[0x277D84D38];
    *(v21 + 32) = v20;
    v24 = MEMORY[0x277D84D90];
    *(v21 + 96) = v23;
    *(v21 + 104) = v24;
    *(v21 + 72) = v19;
    v25 = sub_22FFB14D8();
    v27 = v26;
    if (qword_281490AA0 != -1)
    {
      swift_once();
    }

    v28 = sub_22FFB12F8();
    __swift_project_value_buffer(v28, qword_281491670);

    v29 = sub_22FFB12D8();
    v30 = sub_22FFB1848();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v36 = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_22FF9E448(v25, v27, &v36);
      _os_log_impl(&dword_22FE99000, v29, v30, "Parsed udid=%{public}s from unvalidated attestation bundle", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x23190EFF0](v32, -1, -1);
      MEMORY[0x23190EFF0](v31, -1, -1);
    }

    sub_22FEA55AC(v10, v9);
    sub_22FEA55AC(v12, v11);

    result = v25;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL _s16CloudAttestation0B6BundleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_22FF121B0(v5, v6);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  sub_22FFB0F88();
  sub_22FF7BE88(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return (sub_22FFB1478() & 1) != 0;
}

uint64_t sub_22FF86A34()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05AC8);
  __swift_project_value_buffer(v0, qword_27DB05AC8);
  return sub_22FFB12E8();
}

uint64_t Validated.AttestationBundle.sepAttestation.getter()
{
  v1 = type metadata accessor for AttestationBundle(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF9064C(v0, v4, type metadata accessor for AttestationBundle);
  v5 = *&v4[*(type metadata accessor for Proto_AttestationBundle(0) + 20)];
  swift_beginAccess();
  v6 = *(v5 + 16);
  sub_22FEA5608(v6, *(v5 + 24));
  sub_22FF906D4(v4, type metadata accessor for Proto_AttestationBundle);
  return v6;
}

uint64_t Validated.AttestationBundle.udid.getter()
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for AttestationBundle(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for Validated.AttestationBundle(0) + 20));
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    if (qword_27DAF14A8 != -1)
    {
      swift_once();
    }

    v8 = sub_22FFB12F8();
    __swift_project_value_buffer(v8, qword_27DB05AC8);
    v9 = sub_22FFB12D8();
    v10 = sub_22FFB1838();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22FE99000, v9, v10, "UDID was not set from validation context, attempting to lazily parse from sep attestation blob", v11, 2u);
      MEMORY[0x23190EFF0](v11, -1, -1);
    }

    sub_22FF9064C(v0, v4, type metadata accessor for AttestationBundle);
    v12 = *&v4[*(type metadata accessor for Proto_AttestationBundle(0) + 20)];
    swift_beginAccess();
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    sub_22FEA5608(v13, v14);
    sub_22FF906D4(v4, type metadata accessor for Proto_AttestationBundle);
    v15 = SEP.Attestation.init(from:)(v13, v14, &v34);
    v17 = v34;
    v16 = v35;
    v19 = v36;
    v18 = v37;
    v33 = 0;
    v32 = 0;
    MEMORY[0x28223BE20](v15);
    *(&v31 - 2) = &v33;
    *(&v31 - 1) = &v32;
    sub_22FED55F8(v19, v18, sub_22FEBFA54);
    if (v36 == 2)
    {
      v20 = sub_22FFB12D8();
      v21 = sub_22FFB1838();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_22FE99000, v20, v21, "Unable to parse device udid from sep attestation", v22, 2u);
        MEMORY[0x23190EFF0](v22, -1, -1);
      }

      sub_22FEA55AC(v17, v16);
      sub_22FEA55AC(v19, v18);

      v6 = 0;
    }

    else
    {
      v26 = v34;
      v25 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_22FFB2D20;
      v28 = MEMORY[0x277D84D30];
      *(v27 + 56) = MEMORY[0x277D84CC0];
      *(v27 + 64) = v28;
      v29 = MEMORY[0x277D84D38];
      *(v27 + 32) = v26;
      v30 = MEMORY[0x277D84D90];
      *(v27 + 96) = v29;
      *(v27 + 104) = v30;
      *(v27 + 72) = v25;
      v6 = sub_22FFB14D8();
      sub_22FEA55AC(v17, v16);
      sub_22FEA55AC(v19, v18);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t Validated.AttestationBundle.provisioningCertificateChain.getter()
{
  v1 = type metadata accessor for AttestationBundle(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF9064C(v0, v4, type metadata accessor for AttestationBundle);
  v5 = *&v4[*(type metadata accessor for Proto_AttestationBundle(0) + 20)];
  v6 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
  swift_beginAccess();
  v7 = *(v5 + v6);

  sub_22FF906D4(v4, type metadata accessor for Proto_AttestationBundle);
  return v7;
}

uint64_t Validated.AttestationBundle.keyExpiration.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = sub_22FFB0EE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttestationBundle(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF9064C(v1, v14, type metadata accessor for AttestationBundle);
  v15 = *&v14[*(type metadata accessor for Proto_AttestationBundle(0) + 20)];
  v16 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEBF3A4(v15 + v16, v5, &qword_27DAF1520, &qword_22FFB3A30);
  v17 = *(v7 + 48);
  if (v17(v5, 1, v6) == 1)
  {
    sub_22FFB0ED8();
    if (v17(v5, 1, v6) != 1)
    {
      sub_22FEAEA34(v5, &qword_27DAF1520, &qword_22FFB3A30);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
  }

  sub_22FF906D4(v14, type metadata accessor for Proto_AttestationBundle);
  sub_22FFB0EB8();
  return (*(v7 + 8))(v10, v6);
}

uint64_t Validated.AttestationBundle.routingHint.getter()
{
  v1 = (v0 + *(type metadata accessor for Validated.AttestationBundle(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Validated.AttestationBundle.releaseDigest.getter()
{
  v1 = v0 + *(type metadata accessor for Validated.AttestationBundle(0) + 28);
  v2 = *v1;
  sub_22FEBF8F0(*v1, *(v1 + 8));
  return v2;
}

uint64_t Validated.AttestationBundle.ensembleUDIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for Validated.AttestationBundle(0) + 32));
}

uint64_t Validated.AttestationBundle.init(bundle:sepAttestation:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v102 = *MEMORY[0x277D85DE8];
  v6 = sub_22FFB1398();
  v87 = *(v6 - 8);
  v88 = v6;
  v7 = *(v87 + 64);
  MEMORY[0x28223BE20](v6);
  v84 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_22FFB13C8();
  v82 = *(v83 - 8);
  v9 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v81 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_22FFB0E58();
  v79 = *(v80 - 8);
  v11 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Proto_AttestationBundle(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AttestationBundle(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for Release();
  v22 = *(*(v77 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v77);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v78 = &v77 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF38B8, &qword_22FFBF438);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v85 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v86 = &v77 - v31;
  v32 = *a2;
  v33 = a2[1];
  v34 = a2[2];
  v35 = a2[3];
  v92 = v34;
  v93 = v32;
  v91 = type metadata accessor for Validated.AttestationBundle(0);
  v36 = *(v91 + 32);
  v89 = a3;
  *(a3 + v36) = 0;
  v94 = a1;
  if (v33 >> 60 == 15)
  {
    v37 = *(a1 + *(v14 + 20));
    swift_beginAccess();
    v38 = *(v37 + 16);
    v39 = *(v37 + 24);
    sub_22FEA5608(v38, v39);
    SEP.Attestation.init(from:)(v38, v39, &v97);
    v33 = v98;
    v35 = v100;
    v92 = v99;
    v93 = v97;
  }

  v90 = v35;
  sub_22FF9064C(v94, v21, type metadata accessor for AttestationBundle);
  sub_22FF9064C(v21, v17, type metadata accessor for Proto_AttestationBundle);
  sub_22FF68C5C(v17, 0, 0, v25);
  sub_22FF906D4(v21, type metadata accessor for AttestationBundle);
  v40 = v78;
  sub_22FF90754(v25, v78, type metadata accessor for Release);
  sub_22FFB0E48();
  sub_22FF7BE88(&qword_28148F578, type metadata accessor for Release);
  sub_22FFB0E38();
  v41 = sub_22FFB0E18();
  v42 = sub_22FF9F990(v41);
  v44 = v43;

  (*(v79 + 8))(v13, v80);
  sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540]);
  v45 = v81;
  v46 = v83;
  sub_22FFB1388();
  sub_22FEA5608(v42, v44);
  sub_22FF9EA78(v42, v44);
  sub_22FEA55AC(v42, v44);
  v47 = v86;
  sub_22FFB1368();
  sub_22FEA55AC(v42, v44);
  sub_22FF906D4(v40, type metadata accessor for Release);
  (*(v82 + 8))(v45, v46);
  v49 = v87;
  v48 = v88;
  v50 = v91;
  (*(v87 + 56))(v47, 0, 1, v88);
  v51 = v89;
  v52 = sub_22FF9064C(v94, v89, type metadata accessor for AttestationBundle);
  if (v33 >> 60 == 15)
  {
    v53 = 0;
    v54 = 0;
    v55 = v85;
  }

  else
  {
    v88 = &v77;
    v96[0] = 0;
    v95 = 0;
    MEMORY[0x28223BE20](v52);
    *(&v77 - 2) = v96;
    *(&v77 - 1) = &v95;
    v56 = v93;
    v57 = v33;
    v58 = v33;
    v59 = v92;
    v60 = v90;
    sub_22FEDC90C(v93, v57, v92, v90);
    sub_22FED55F8(v59, v60, sub_22FEBFA54);
    sub_22FECB858(v56, v58, v59, v60);
    if (v99 == 2)
    {
      v53 = 0;
      v54 = 0;
    }

    else
    {
      v62 = v97;
      v61 = v98;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_22FFB2D20;
      v64 = MEMORY[0x277D84D30];
      *(v63 + 56) = MEMORY[0x277D84CC0];
      *(v63 + 64) = v64;
      v65 = MEMORY[0x277D84D38];
      *(v63 + 32) = v62;
      v66 = MEMORY[0x277D84D90];
      *(v63 + 96) = v65;
      *(v63 + 104) = v66;
      *(v63 + 72) = v61;
      v53 = sub_22FFB14D8();
    }

    v33 = v58;
    v55 = v85;
    v50 = v91;
  }

  v67 = (v51 + v50[5]);
  *v67 = v53;
  v67[1] = v54;
  v68 = (v51 + v50[6]);
  *v68 = 0;
  v68[1] = 0;
  sub_22FEBF3A4(v47, v55, &qword_27DAF38B8, &qword_22FFBF438);
  if ((*(v49 + 48))(v55, 1, v48) == 1)
  {
    sub_22FEAEA34(v47, &qword_27DAF38B8, &qword_22FFBF438);
    sub_22FECB858(v93, v33, v92, v90);
    v69 = 0;
    v70 = 0xF000000000000000;
  }

  else
  {
    v71 = v47;
    v72 = v84;
    (*(v49 + 32))(v84, v55, v48);
    v100 = v48;
    v101 = sub_22FF7BE88(&qword_28148F1C0, MEMORY[0x277CC5290]);
    v73 = __swift_allocate_boxed_opaque_existential_1(&v97);
    (*(v49 + 16))(v73, v72, v48);
    __swift_project_boxed_opaque_existential_1(&v97, v100);
    sub_22FFB0618();
    sub_22FECB858(v93, v33, v92, v90);
    (*(v49 + 8))(v72, v48);
    sub_22FEAEA34(v71, &qword_27DAF38B8, &qword_22FFBF438);
    v69 = v96[0];
    v70 = v96[1];
    __swift_destroy_boxed_opaque_existential_1(&v97);
  }

  result = sub_22FF906D4(v94, type metadata accessor for AttestationBundle);
  v75 = (v51 + v50[7]);
  *v75 = v69;
  v75[1] = v70;
  v76 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AttestationBundle.jsonString()()
{
  v0 = sub_22FFB0FC8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFB0FB8();
  type metadata accessor for Proto_AttestationBundle(0);
  sub_22FF7BE88(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle);
  v5 = sub_22FFB1138();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

void sub_22FF88030()
{
  v93 = *MEMORY[0x277D85DE8];
  v0 = sub_22FFB13C8();
  v84 = *(v0 - 8);
  v1 = *(v84 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22FFB1398();
  v82 = *(v4 - 8);
  v83 = v4;
  v5 = *(v82 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22FFB0658();
  v85 = *(v8 - 8);
  v9 = v85[8];
  MEMORY[0x28223BE20](v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_22FFB06B8();
  v12 = *(v89 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v89);
  v86 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v87 = &v74 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v74 - v19;
  MEMORY[0x28223BE20](v18);
  v88 = &v74 - v21;
  if (os_variant_allows_internal_security_policies())
  {
    v22 = sub_22FFB1488();
    v23 = sub_22FFB1488();
    v81 = v12;
    v24 = v23;
    v25 = CFPreferencesCopyAppValue(v22, v23);

    if (v25)
    {
      v90 = v25;
      if (swift_dynamicCast())
      {
        v80 = v91;
        type metadata accessor for Proto_AttestationBundle(0);
        sub_22FF7BE88(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle);
        v26 = sub_22FFB1178();
        v28 = v27;
        v79 = v26;
        sub_22FFB0668();

        v29 = static Environment.default.getter(&v90);
        v80 = v28;
        v91 = Environment.description.getter(v29);
        v92 = v30;
        v31 = *MEMORY[0x277CC91C0];
        v32 = v85;
        v74 = v85[13];
        v77 = (v85 + 13);
        v74(v11, v31, v8);
        v76 = sub_22FEB2CAC();
        sub_22FFB0698();
        v75 = v32[1];
        v75(v11, v8);

        v33 = *(v81 + 8);
        v78 = v81 + 8;
        v85 = v33;
        (v33)(v20, v89);
        sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540]);
        sub_22FFB1388();
        v34 = v79;
        v35 = v80;
        sub_22FEA5608(v79, v80);
        sub_22FF9EA78(v34, v35);
        sub_22FEA55AC(v34, v35);
        sub_22FFB1368();
        v36 = v0;
        v37 = v88;
        (*(v84 + 8))(v3, v36);
        v38 = sub_22FF95DBC();
        v40 = v39;
        (*(v82 + 8))(v7, v83);
        v91 = v38;
        v92 = v40;
        MEMORY[0x23190DD10](0x617473657474612ELL, 0xEC0000006E6F6974);
        v74(v11, *MEMORY[0x277CC91D8], v8);
        v41 = v87;
        sub_22FFB06A8();
        v75(v11, v8);

        if (qword_27DAF14A0 != -1)
        {
          swift_once();
        }

        v42 = sub_22FFB12F8();
        __swift_project_value_buffer(v42, qword_27DB05AB0);
        v43 = v86;
        v44 = v89;
        (*(v81 + 16))(v86, v41, v89);
        v45 = sub_22FFB12D8();
        v46 = sub_22FFB1828();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v91 = v48;
          *v47 = 136446210;
          sub_22FF7BE88(&qword_27DAF3728, MEMORY[0x277CC9260]);
          v49 = sub_22FFB1BA8();
          v51 = v50;
          (v85)(v43, v44);
          v52 = sub_22FF9E448(v49, v51, &v91);

          *(v47 + 4) = v52;
          _os_log_impl(&dword_22FE99000, v45, v46, "Writing attestation bundle to %{public}s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v48);
          MEMORY[0x23190EFF0](v48, -1, -1);
          MEMORY[0x23190EFF0](v47, -1, -1);
        }

        else
        {

          (v85)(v43, v44);
        }

        v53 = [objc_opt_self() defaultManager];
        v54 = sub_22FFB0678();
        v91 = 0;
        v55 = [v53 createDirectoryAtURL:v54 withIntermediateDirectories:1 attributes:0 error:&v91];

        if (v55)
        {
          v56 = v91;
          v57 = v87;
          v59 = v79;
          v58 = v80;
          sub_22FFB0808();
          sub_22FEA55AC(v59, v58);
          v72 = v57;
          v73 = v85;
          (v85)(v72, v44);
          v73(v37, v44);
        }

        else
        {
          v60 = v91;
          v61 = sub_22FFB0648();

          swift_willThrow();
          sub_22FEA55AC(v79, v80);
          v62 = v85;
          (v85)(v87, v44);
          v62(v37, v44);
          if (qword_27DAF14A0 != -1)
          {
            swift_once();
          }

          v63 = sub_22FFB12F8();
          __swift_project_value_buffer(v63, qword_27DB05AB0);
          v64 = v61;
          v65 = sub_22FFB12D8();
          v66 = sub_22FFB1838();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            *v67 = 138543362;
            v69 = v61;
            v70 = _swift_stdlib_bridgeErrorToNSError();
            *(v67 + 4) = v70;
            *v68 = v70;
            _os_log_impl(&dword_22FE99000, v65, v66, "Tracing attestation bundle failed with error %{public}@", v67, 0xCu);
            sub_22FEAEA34(v68, &qword_27DAF1680, &unk_22FFB4B10);
            MEMORY[0x23190EFF0](v68, -1, -1);
            MEMORY[0x23190EFF0](v67, -1, -1);
          }

          else
          {
          }
        }
      }
    }
  }

  v71 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22FF88A6C(uint64_t a1)
{
  v2 = sub_22FF7BE88(&qword_27DAF38E8, type metadata accessor for CloudAttestationError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22FF88AD8(uint64_t a1)
{
  v2 = sub_22FF7BE88(&qword_27DAF38E8, type metadata accessor for CloudAttestationError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t CloudAttestationError.errorCode.getter()
{
  v1 = type metadata accessor for CloudAttestationError(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF9064C(v0, v4, type metadata accessor for CloudAttestationError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        return 4;
      }

      else
      {
        return 6;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      return 7;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      return 8;
    }

    else
    {
      return 10;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_22FF906D4(v4, type metadata accessor for CloudAttestationError);
      return 2;
    }

    else
    {
      sub_22FF906D4(v4, type metadata accessor for CloudAttestationError);
      return 1;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_22FF906D4(v4, type metadata accessor for CloudAttestationError);
    return 3;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v6 = sub_22FFB0908();
    (*(*(v6 - 8) + 8))(v4, v6);
    return 5;
  }

  else
  {
    v8 = sub_22FFB0958();
    (*(*(v8 - 8) + 8))(v4, v8);
    return 9;
  }
}

uint64_t AttestationBundle.atLogProofs.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v31 - v4;
  v5 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31 - v12;
  v14 = type metadata accessor for Proto_TransparencyProofs(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v20 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  swift_beginAccess();
  sub_22FEBF3A4(v19 + v20, v13, &qword_27DAF2118, &unk_22FFB5C70);
  v21 = *(v15 + 48);
  if (v21(v13, 1, v14) == 1)
  {
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    (*(v6 + 56))(&v18[*(v14 + 20)], 1, 1, v5);
    if (v21(v13, 1, v14) != 1)
    {
      sub_22FEAEA34(v13, &qword_27DAF2118, &unk_22FFB5C70);
    }
  }

  else
  {
    sub_22FF90754(v13, v18, type metadata accessor for Proto_TransparencyProofs);
  }

  v22 = &v18[*(v14 + 20)];
  v23 = v31;
  sub_22FEBF3A4(v22, v31, &qword_27DAF37C0, &unk_22FFB5C60);
  v24 = *(v6 + 48);
  if (v24(v23, 1, v5) == 1)
  {
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    sub_22FF906D4(v18, type metadata accessor for Proto_TransparencyProofs);
    v25 = *(v5 + 20);
    v26 = type metadata accessor for LogEntry(0);
    (*(*(v26 - 8) + 56))(&v9[v25], 1, 1, v26);
    v27 = *(v5 + 24);
    v28 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
    (*(*(v28 - 8) + 56))(&v9[v27], 1, 1, v28);
    if (v24(v23, 1, v5) != 1)
    {
      sub_22FEAEA34(v23, &qword_27DAF37C0, &unk_22FFB5C60);
    }
  }

  else
  {
    sub_22FF906D4(v18, type metadata accessor for Proto_TransparencyProofs);
    sub_22FF90754(v23, v9, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  }

  sub_22FF7BE88(qword_281490ED0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  v29 = sub_22FFB1178();
  sub_22FF906D4(v9, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  return v29;
}

uint64_t sub_22FF89230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Cryptex(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Proto_Cryptex.Salt(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 32);
  *a1 = v11;
  v12 = *a2;
  v13 = *(a2 + 8);
  v15 = *(a1 + 8);
  v14 = *(a1 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 16) = v13;
  sub_22FEA5608(v12, v13);
  v16 = sub_22FEA55AC(v15, v14);
  v17 = *(a2 + 56);
  if (v17)
  {
    v18 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 28);
    v19 = *(a1 + v18);

    *(a1 + v18) = v17;
  }

  if (v11 & 4) != 0 && (v16 = sub_22FECB038(&unk_2844D8490, v12, v13), (v16))
  {
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v20 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
    sub_22FEAEA34(a1 + v20, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FF90754(v10, a1 + v20, type metadata accessor for Proto_Cryptex.Salt);
    v21 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v21 - 8) + 56))(a1 + v20, 0, 1, v21);
  }

  else
  {
    MEMORY[0x28223BE20](v16);
    *(&v26 - 2) = a2;
    sub_22FF7BE88(qword_281490550, type metadata accessor for Proto_Cryptex);
    v23 = v27;
    sub_22FFB11B8();
    v24 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
    sub_22FEAEA34(a1 + v24, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FF90754(v23, a1 + v24, type metadata accessor for Proto_Cryptex);
    v25 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v25 - 8) + 56))(a1 + v24, 0, 1, v25);
  }
}

uint64_t *sub_22FF89560(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 >> 60 != 15)
  {
    v3 = *(a2 + 16);
    v4 = *result;
    v5 = result[1];
    v6 = result;
    sub_22FEA5608(v3, *(a2 + 24));
    result = sub_22FEA55AC(v4, v5);
    *v6 = v3;
    v6[1] = v2;
  }

  return result;
}

uint64_t sub_22FF895CC(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Proto_SealedHash.Entry(0);
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2[2];
  if (v9)
  {
    v10 = a2 + 4;
    v11 = a2[10];
    v12 = a2[9];
    sub_22FF226F0(&v24);
    v13 = v25;
    *a1 = v24;
    v22 = a1;
    *(a1 + 8) = v13;
    v27 = MEMORY[0x277D84F90];
    v14 = sub_22FECDB58(0, v9, 0);
    v15 = v27;
    while (1)
    {
      v16 = v10[1];
      v26[0] = *v10;
      v26[1] = v16;
      v17 = v10[3];
      v26[2] = v10[2];
      v26[3] = v17;
      MEMORY[0x28223BE20](v14);
      *(&v22 - 2) = v26;
      sub_22FEBF904(v26, &v24);
      sub_22FF7BE88(&qword_28148FF80, type metadata accessor for Proto_SealedHash.Entry);
      sub_22FFB11B8();
      if (v2)
      {
        break;
      }

      sub_22FEBF960(v26);
      v27 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_22FECDB58(v18 > 1, v19 + 1, 1);
        v15 = v27;
      }

      *(v15 + 16) = v19 + 1;
      v14 = sub_22FF90754(v8, v15 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19, type metadata accessor for Proto_SealedHash.Entry);
      v10 += 4;
      if (!--v9)
      {
        a1 = v22;
        goto LABEL_10;
      }
    }

    sub_22FEBF960(v26);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    v15 = MEMORY[0x277D84F90];
LABEL_10:
    v21 = *(a1 + 16);

    *(a1 + 16) = v15;
  }

  return result;
}

uint64_t sub_22FF89868(uint64_t a1, __int128 *a2)
{
  v5 = type metadata accessor for Proto_SecureConfig(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a1 = *(a2 + 32);
  v17 = *a2;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  sub_22FF91A04(&v17, v16);
  sub_22FEA55AC(v9, v10);
  *(a1 + 8) = v17;
  v15 = a2;
  sub_22FF7BE88(&qword_28148FD30, type metadata accessor for Proto_SecureConfig);
  result = sub_22FFB11B8();
  if (!v2)
  {
    v12 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
    sub_22FEAEA34(a1 + v12, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FF90754(v8, a1 + v12, type metadata accessor for Proto_SecureConfig);
    v13 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v13 - 8) + 56))(a1 + v12, 0, 1, v13);
  }

  return result;
}

uint64_t sub_22FF89A38(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 >> 60 != 15)
  {
    v3 = result;
    v4 = *(a2 + 16);
    sub_22FEA5608(v4, *(a2 + 24));
    sub_22FEA5608(v4, v2);
    SecureConfig.init(from:)(v4, v2, v12);
    v5 = v13;
    if (v13)
    {
      v7 = v14;
      v6 = v15;
      v9 = v12[0];
      v8 = v12[1];
      sub_22FEA56EC(v4, v2);
      v10 = *(v3 + 24);
      v11 = *(v3 + 32);
      sub_22FEA5608(v7, v6);
      sub_22FEA55AC(v10, v11);
      result = sub_22FF91A7C(v9, v8, v5, v7, v6);
      *(v3 + 24) = v7;
      *(v3 + 32) = v6;
    }

    else
    {
      type metadata accessor for CloudAttestationError(0);
      sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return sub_22FEA56EC(v4, v2);
    }
  }

  return result;
}

uint64_t sub_22FF89B9C(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = a3;
  v24 = type metadata accessor for Proto_SealedHash.Entry(0);
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v24);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2[2];
  if (v9)
  {
    v10 = a2 + 4;
    v11 = a2[10];
    v12 = a2[9];
    sub_22FF226F0(v27);
    v13 = BYTE8(v27[0]);
    *a1 = *&v27[0];
    v23 = a1;
    *(a1 + 8) = v13;
    v28 = MEMORY[0x277D84F90];
    v14 = sub_22FECDB58(0, v9, 0);
    v15 = v28;
    do
    {
      v16 = v10[1];
      v27[0] = *v10;
      v27[1] = v16;
      v17 = v10[3];
      v27[2] = v10[2];
      v27[3] = v17;
      MEMORY[0x28223BE20](v14);
      *(&v22 - 2) = v27;
      sub_22FEBF904(v27, v26);
      sub_22FF7BE88(&qword_28148FF80, type metadata accessor for Proto_SealedHash.Entry);
      sub_22FFB11B8();
      sub_22FEBF960(v27);
      v28 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_22FECDB58(v18 > 1, v19 + 1, 1);
        v15 = v28;
      }

      *(v15 + 16) = v19 + 1;
      v14 = sub_22FF90754(v8, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, type metadata accessor for Proto_SealedHash.Entry);
      v10 += 4;
      --v9;
    }

    while (v9);
    a1 = v23;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    v15 = MEMORY[0x277D84F90];
  }

  v20 = *(a1 + 16);

  *(a1 + 16) = v15;
  return result;
}

uint64_t sub_22FF89E0C(uint64_t a1, __int128 *a2)
{
  *a1 = *(a2 + 32);
  v12 = *a2;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(a1 + 8) = v12;
  sub_22FF91A04(&v12, &v11);
  result = sub_22FEA55AC(v4, v5);
  v7 = *(a2 + 3);
  if (v7 >> 60 != 15)
  {
    v8 = *(a2 + 2);
    v9 = (a1 + *(type metadata accessor for Proto_SealedHash.Entry(0) + 24));
    sub_22FEA5608(v8, v7);
    sub_22FEAEA34(v9, &qword_27DAF2130, &unk_22FFB5C80);
    *v9 = v8;
    v9[1] = v7;
    v10 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  return result;
}

uint64_t sub_22FF89F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22FEAA538;

  return sub_22FF75E50(a1, a2, a3, a4, a5);
}

uint64_t sub_22FF8A000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22FF8A028, 0, 0);
}

uint64_t sub_22FF8A028()
{
  v1 = v0[7];
  v2 = NodeAttestor.attestingKey.getter();
  v0[8] = v2;
  v3 = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_22FF8A124;
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  return NodeAttestor.attest(key:using:expiration:nonce:)(v9, v10, v3, v7, v8, v5);
}

uint64_t sub_22FF8A124()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

double sub_22FF8A230()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = sub_22FFB1D28();
  sub_22FFB1D28();
  return v4 * 1.0e-18 + v3;
}

size_t sub_22FF8A2B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22FF8A3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_22FFA619C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22FF8D3FC();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for Proto_SealedHash(0);
    v22 = *(v15 - 8);
    sub_22FF90754(v14 + *(v22 + 72) * v9, a3, type metadata accessor for Proto_SealedHash);
    sub_22FF8C2A8(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Proto_SealedHash(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

double sub_22FF8A518@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = v5;
  v8 = *v5;
  v9 = sub_22FFA62AC(a1, a2, a3, a4);
  if (v10)
  {
    v11 = v9;
    v12 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v6;
    v17 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22FF8D654();
      v14 = v17;
    }

    v15 = *(*(v14 + 48) + 32 * v11 + 24);

    sub_22FEA2968((*(v14 + 56) + 32 * v11), a5);
    sub_22FF8C494(v11, v14);
    *v6 = v14;
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

uint64_t sub_22FF8A5C8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Proto_SealedHash(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3900, &qword_22FFBF978);
  v44 = a2;
  result = sub_22FFB1AD8();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_22FF90754(v31, v45, type metadata accessor for Proto_SealedHash);
      }

      else
      {
        sub_22FF9064C(v31, v45, type metadata accessor for Proto_SealedHash);
      }

      v32 = *(v12 + 40);
      sub_22FFB1CA8();
      sub_22FFB1548();
      result = sub_22FFB1CF8();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_22FF90754(v45, *(v12 + 56) + v30 * v20, type metadata accessor for Proto_SealedHash);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_22FF8A940(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3928, &qword_22FFBFA10);
  v37 = a2;
  result = sub_22FFB1AD8();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 32 * (v19 | (v9 << 6));
      v23 = *(v5 + 56);
      v24 = *(v5 + 48) + v22;
      v38 = *v24;
      v25 = *(v24 + 16);
      v26 = *(v24 + 24);
      if (v37)
      {
        sub_22FEA2968((v23 + v22), v39);
      }

      else
      {
        sub_22FEBF2A4(v23 + v22, v39);
      }

      v27 = *(v8 + 40);
      sub_22FFB1CA8();
      MEMORY[0x23190E460](v38);
      result = sub_22FFB1CF8();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 32 * v16;
      v18 = *(v8 + 48) + v17;
      *v18 = v38;
      *(v18 + 16) = v25;
      *(v18 + 24) = v26;
      result = sub_22FEA2968(v39, (*(v8 + 56) + v17));
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_36;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_22FF8AC14(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for SEP.SealedHash(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22FFB0958();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3920, &unk_22FFC02C0);
  v48 = a2;
  result = sub_22FFB1AD8();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_22FF90754(v31 + v32 * v28, v52, type metadata accessor for SEP.SealedHash);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_22FF9064C(v33 + v32 * v28, v52, type metadata accessor for SEP.SealedHash);
      }

      v34 = *(v16 + 40);
      sub_22FF7BE88(&qword_281491320, MEMORY[0x277CC95F0]);
      result = sub_22FFB1428();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_22FF90754(v52, *(v16 + 56) + v32 * v24, type metadata accessor for SEP.SealedHash);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_22FF8B0B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3930, &qword_22FFBFA18);
  v39 = a2;
  result = sub_22FFB1AD8();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + 32 * v23);
      if (v39)
      {
        v28 = v27[1];
        v40 = *v27;
        v41 = v28;
      }

      else
      {
        sub_22FEBF3A4(v27, &v40, &qword_27DAF1CC0, &qword_22FFBFA20);
      }

      v29 = *(v8 + 40);
      sub_22FFB1CA8();
      sub_22FFB1548();
      result = sub_22FFB1CF8();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v25;
      v17[1] = v26;
      v18 = (*(v8 + 56) + 32 * v16);
      v19 = v41;
      *v18 = v40;
      v18[1] = v19;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_22FF8B37C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3938, &qword_22FFBFA28);
  v36 = a2;
  result = sub_22FFB1AD8();
  v8 = result;
  if (*(v5 + 16))
  {
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_22FEA2968(v25, v37);
      }

      else
      {
        sub_22FEBF2A4(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_22FFB1CA8();
      sub_22FFB1548();
      result = sub_22FFB1CF8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_22FEA2968(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_22FF8B634(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3940, &unk_22FFBFA30);
  v36 = a2;
  result = sub_22FFB1AD8();
  v8 = result;
  if (*(v5 + 16))
  {
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
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        sub_22FEA5608(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      sub_22FFB1CA8();
      sub_22FFB1548();
      result = sub_22FFB1CF8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22FF8B8F0(uint64_t a1, int a2)
{
  v3 = v2;
  v43 = sub_22FFB0CC8();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3918, &unk_22FFBFA00);
  v41 = a2;
  result = sub_22FFB1AD8();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v6 + 16);
    v40 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 8 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v41)
      {
        (*v19)(v42, v28, v43);
      }

      else
      {
        (*v39)(v42, v28, v43);
      }

      v29 = *(v12 + 40);
      result = sub_22FFB1C98();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v42, v43);
      ++*(v12 + 16);
      v6 = v40;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v9 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_22FF8BC3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3910, &qword_22FFBF9F8);
  v33 = a2;
  result = sub_22FFB1AD8();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_22FFB1CA8();
      MEMORY[0x23190E460](v21);
      result = sub_22FFB1CF8();
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

LABEL_37:
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
        goto LABEL_37;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22FF8BECC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22FFB0958();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3898, &unk_22FFBF3C0);
  v43 = a2;
  result = sub_22FFB1AD8();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_22FF7BE88(&qword_281491320, MEMORY[0x277CC95F0]);
      result = sub_22FFB1428();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}