BOOL sub_22FF1AD24(uint64_t a1, uint64_t a2)
{
  v59[3] = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
LABEL_73:
    v20 = 1;
    goto LABEL_76;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_75;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v57 = (v8 - 1) & v8;
        goto LABEL_13;
      }

      v11 = v4;
      do
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_78;
        }

        if (v4 >= v9)
        {
          goto LABEL_73;
        }

        v12 = *(v5 + 8 * v4);
        ++v11;
      }

      while (!v12);
      v10 = __clz(__rbit64(v12));
      v57 = (v12 - 1) & v12;
LABEL_13:
      v13 = 16 * (v10 | (v4 << 6));
      v14 = (*(v3 + 48) + v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(v3 + 56) + v13);
      v19 = *v17;
      v18 = v17[1];

      sub_22FEA5608(v19, v18);
      v20 = v16 == 0;
      if (!v16)
      {
        goto LABEL_76;
      }

      v21 = sub_22FFA619C(v15, v16);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_74;
      }

      v24 = (*(v2 + 56) + 16 * v21);
      v26 = *v24;
      v25 = v24[1];
      v27 = v25 >> 62;
      v28 = v18 >> 62;
      if (v25 >> 62 == 3)
      {
        if (v26)
        {
          v29 = 0;
        }

        else
        {
          v29 = v25 == 0xC000000000000000;
        }

        v30 = 0;
        v31 = v29 && v18 >> 62 == 3;
        if (v31 && !v19 && v18 == 0xC000000000000000)
        {
          v32 = 0;
          v33 = 0xC000000000000000;
          goto LABEL_49;
        }

LABEL_36:
        if (v28 <= 1)
        {
LABEL_37:
          if (!v28)
          {
            v37 = BYTE6(v18);
            goto LABEL_43;
          }

          LODWORD(v37) = HIDWORD(v19) - v19;
          if (!__OFSUB__(HIDWORD(v19), v19))
          {
            v37 = v37;
            goto LABEL_43;
          }

LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
        }
      }

      else if (v27 > 1)
      {
        if (v27 == 2)
        {
          v39 = *(v26 + 16);
          v38 = *(v26 + 24);
          v36 = __OFSUB__(v38, v39);
          v30 = v38 - v39;
          if (!v36)
          {
            goto LABEL_36;
          }

          goto LABEL_81;
        }

        v30 = 0;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else if (v27)
      {
        LODWORD(v30) = HIDWORD(v26) - v26;
        if (__OFSUB__(HIDWORD(v26), v26))
        {
          goto LABEL_80;
        }

        v30 = v30;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v30 = BYTE6(v25);
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      if (v28 == 2)
      {
        break;
      }

      if (v30)
      {
        goto LABEL_74;
      }

LABEL_48:
      v32 = v19;
      v33 = v18;
LABEL_49:
      sub_22FEA55AC(v32, v33);
      v3 = a1;
      v8 = v57;
    }

    v35 = *(v19 + 16);
    v34 = *(v19 + 24);
    v36 = __OFSUB__(v34, v35);
    v37 = v34 - v35;
    if (v36)
    {
      goto LABEL_79;
    }

LABEL_43:
    if (v30 != v37)
    {
      break;
    }

    if (v30 < 1)
    {
      goto LABEL_48;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        memset(v59, 0, 14);
        sub_22FEA5608(v26, v25);
        goto LABEL_64;
      }

      v52 = *(v26 + 24);
      v54 = *(v26 + 16);
      sub_22FEA5608(v26, v25);
      v40 = sub_22FFB0588();
      if (v40)
      {
        v41 = v40;
        v42 = sub_22FFB05B8();
        v43 = v54;
        if (__OFSUB__(v54, v42))
        {
          goto LABEL_84;
        }

        v51 = v54 - v42 + v41;
      }

      else
      {
        v51 = 0;
        v43 = v54;
      }

      if (__OFSUB__(v52, v43))
      {
        goto LABEL_83;
      }

      sub_22FFB05A8();
      v48 = v51;
LABEL_70:
      sub_22FEEBB68(v48, v19, v18, v59);
      sub_22FEA55AC(v26, v25);
      sub_22FEA55AC(v19, v18);
      v47 = v59[0];
      goto LABEL_71;
    }

    if (v27)
    {
      if (v26 >> 32 < v26)
      {
        goto LABEL_82;
      }

      sub_22FEA5608(v26, v25);
      v44 = sub_22FFB0588();
      if (v44)
      {
        v53 = v44;
        v45 = sub_22FFB05B8();
        if (__OFSUB__(v26, v45))
        {
          goto LABEL_85;
        }

        v46 = v26 - v45 + v53;
      }

      else
      {
        v46 = 0;
      }

      sub_22FFB05A8();
      v48 = v46;
      goto LABEL_70;
    }

    v59[0] = v26;
    LOWORD(v59[1]) = v25;
    BYTE2(v59[1]) = BYTE2(v25);
    BYTE3(v59[1]) = BYTE3(v25);
    BYTE4(v59[1]) = BYTE4(v25);
    BYTE5(v59[1]) = BYTE5(v25);
    sub_22FEA5608(v26, v25);
LABEL_64:
    sub_22FEEBB68(v59, v19, v18, &v58);
    sub_22FEA55AC(v26, v25);
    sub_22FEA55AC(v19, v18);
    v47 = v58;
LABEL_71:
    v2 = a2;
    v3 = a1;
    v8 = v57;
    if ((v47 & 1) == 0)
    {
      goto LABEL_76;
    }
  }

LABEL_74:
  sub_22FEA55AC(v19, v18);
LABEL_75:
  v20 = 0;
LABEL_76:
  v49 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t sub_22FF1B220(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_22FFA619C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_22FFB1BC8();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s16CloudAttestation18Proto_SecureConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (sub_22FF1B220(*(a1 + 16), *(a2 + 16)) & 1) == 0 || (sub_22FEC3DC8(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Proto_SecureConfig(0) + 28);
  sub_22FFB0F88();
  sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t _s16CloudAttestation17Proto_LocalPolicyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (*(a1 + 24))
  {
    v4 = v4 != 0;
  }

  if (*(a2 + 24) == 1)
  {
    if (v5)
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

  v7 = *(type metadata accessor for Proto_LocalPolicy(0) + 24);
  sub_22FFB0F88();
  sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t _s16CloudAttestation16Proto_SealedHashV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
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

      else if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (sub_22FEE8220(a1[2], a2[2]))
  {
    v4 = *(type metadata accessor for Proto_SealedHash(0) + 24);
    sub_22FFB0F88();
    sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8]);
    return sub_22FFB1478() & 1;
  }

  return 0;
}

uint64_t _s16CloudAttestation16Proto_SealedHashV5EntryV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2138, &qword_22FFB90D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  if (*a1 != *a2 || (sub_22FEC3DC8(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    goto LABEL_12;
  }

  v28 = type metadata accessor for Proto_SealedHash.Entry(0);
  v17 = *(v28 + 24);
  v18 = *(v13 + 48);
  sub_22FEBF3A4(a1 + v17, v16, &qword_27DAF2130, &unk_22FFB5C80);
  v19 = a2 + v17;
  v20 = v18;
  sub_22FEBF3A4(v19, &v16[v18], &qword_27DAF2130, &unk_22FFB5C80);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_22FEAEA34(v16, &qword_27DAF2130, &unk_22FFB5C80);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  sub_22FEBF3A4(v16, v12, &qword_27DAF2130, &unk_22FFB5C80);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    sub_22FF1C9FC(v12, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
LABEL_8:
    sub_22FEAEA34(v16, &qword_27DAF2138, &qword_22FFB90D0);
LABEL_12:
    v25 = 0;
    return v25 & 1;
  }

  sub_22FF0B4A8(&v16[v20], v8, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  v22 = _s16CloudAttestation16Proto_SealedHashV5EntryV10OneOf_InfoO2eeoiySbAG_AGtFZ_0(v12, v8);
  sub_22FF1C9FC(v8, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  sub_22FF1C9FC(v12, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  sub_22FEAEA34(v16, &qword_27DAF2130, &unk_22FFB5C80);
  if ((v22 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v23 = v28;
  if (!sub_22FF1AD24(*(a1 + *(v28 + 28)), *(a2 + *(v28 + 28))))
  {
    goto LABEL_12;
  }

  v24 = *(v23 + 32);
  sub_22FFB0F88();
  sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8]);
  v25 = sub_22FFB1478();
  return v25 & 1;
}

uint64_t _s16CloudAttestation13Proto_AppDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFB0F18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D38, &qword_22FFB4270);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF28B0, &qword_22FFB9100);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  if (*a1 != *a2 || (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16)) && (sub_22FFB1BC8() & 1) == 0 || (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (sub_22FFB1BC8() & 1) == 0)
  {
    goto LABEL_14;
  }

  v27 = v8;
  v28 = type metadata accessor for Proto_AppData(0);
  v17 = *(v28 + 32);
  v18 = *(v13 + 48);
  sub_22FEBF3A4(a1 + v17, v16, &qword_27DAF1D38, &qword_22FFB4270);
  sub_22FEBF3A4(a2 + v17, &v16[v18], &qword_27DAF1D38, &qword_22FFB4270);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_22FEAEA34(v16, &qword_27DAF1D38, &qword_22FFB4270);
LABEL_17:
      v26 = *(v28 + 28);
      sub_22FFB0F88();
      sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8]);
      v20 = sub_22FFB1478();
      return v20 & 1;
    }

    goto LABEL_13;
  }

  sub_22FEBF3A4(v16, v12, &qword_27DAF1D38, &qword_22FFB4270);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_13:
    sub_22FEAEA34(v16, &qword_27DAF28B0, &qword_22FFB9100);
    goto LABEL_14;
  }

  v22 = &v16[v18];
  v23 = v27;
  (*(v5 + 32))(v27, v22, v4);
  sub_22FF1CB1C(&qword_27DAF28B8, MEMORY[0x277D215C8]);
  v24 = sub_22FFB1478();
  v25 = *(v5 + 8);
  v25(v23, v4);
  v25(v12, v4);
  sub_22FEAEA34(v16, &qword_27DAF1D38, &qword_22FFB4270);
  if (v24)
  {
    goto LABEL_17;
  }

LABEL_14:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s16CloudAttestation24Proto_TransparencyProofsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2110, &qword_22FFB7B90);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  v17 = *(type metadata accessor for Proto_TransparencyProofs(0) + 20);
  v18 = *(v13 + 56);
  v24[1] = a1;
  sub_22FEBF3A4(a1 + v17, v16, &qword_27DAF37C0, &unk_22FFB5C60);
  sub_22FEBF3A4(a2 + v17, &v16[v18], &qword_27DAF37C0, &unk_22FFB5C60);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_22FEAEA34(v16, &qword_27DAF37C0, &unk_22FFB5C60);
LABEL_9:
      sub_22FFB0F88();
      sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8]);
      v20 = sub_22FFB1478();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_22FEBF3A4(v16, v11, &qword_27DAF37C0, &unk_22FFB5C60);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_22FF1C9FC(v11, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
LABEL_6:
    sub_22FEAEA34(v16, &qword_27DAF2110, &qword_22FFB7B90);
    goto LABEL_7;
  }

  v21 = v24[0];
  sub_22FF0B4A8(&v16[v18], v24[0], type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  v22 = _s16CloudAttestation07PrivateA35Compute_TransparencyLog_ATLogProofsV2eeoiySbAC_ACtFZ_0(v11, v21);
  sub_22FF1C9FC(v21, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  sub_22FF1C9FC(v11, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  sub_22FEAEA34(v16, &qword_27DAF37C0, &unk_22FFB5C60);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s16CloudAttestation16Proto_SealedHashV5EntryV10OneOf_InfoO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v50 = type metadata accessor for Proto_SecureConfig(0);
  v4 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Proto_Cryptex.Salt(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Proto_Cryptex(0);
  v9 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v53 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v49 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v49 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = (&v49 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF28C0, &qword_22FFB9108);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v49 - v27;
  v29 = (&v49 + *(v26 + 56) - v27);
  sub_22FF1C994(a1, &v49 - v27, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  sub_22FF1C994(a2, v29, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_22FF1C994(v28, v18, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v33 = v52;
        sub_22FF0B4A8(v29, v52, type metadata accessor for Proto_Cryptex.Salt);
        sub_22FFB0F88();
        sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8]);
        v34 = sub_22FFB1478();
        sub_22FF1C9FC(v33, type metadata accessor for Proto_Cryptex.Salt);
        sub_22FF1C9FC(v18, type metadata accessor for Proto_Cryptex.Salt);
LABEL_26:
        sub_22FF1C9FC(v28, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
        return v34 & 1;
      }

      v42 = type metadata accessor for Proto_Cryptex.Salt;
      v43 = v18;
    }

    else
    {
      sub_22FF1C994(v28, v15, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v40 = v54;
        sub_22FF0B4A8(v29, v54, type metadata accessor for Proto_SecureConfig);
        if (sub_22FEC3DC8(*v15, *(v15 + 1), *v40, *(v40 + 8)) & 1) != 0 && (sub_22FF1B220(*(v15 + 2), *(v40 + 16)) & 1) != 0 && (sub_22FEC3DC8(*(v15 + 3), *(v15 + 4), *(v40 + 24), *(v40 + 32)))
        {
          v41 = *(v50 + 28);
          sub_22FFB0F88();
          sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8]);
          if (sub_22FFB1478())
          {
            sub_22FF1C9FC(v40, type metadata accessor for Proto_SecureConfig);
            v39 = v15;
            v38 = type metadata accessor for Proto_SecureConfig;
            goto LABEL_12;
          }
        }

        sub_22FF1C9FC(v40, type metadata accessor for Proto_SecureConfig);
        v44 = v15;
        v45 = type metadata accessor for Proto_SecureConfig;
LABEL_29:
        sub_22FF1C9FC(v44, v45);
        sub_22FF1C9FC(v28, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
        goto LABEL_30;
      }

      v42 = type metadata accessor for Proto_SecureConfig;
      v43 = v15;
    }

LABEL_22:
    sub_22FF1C9FC(v43, v42);
    goto LABEL_23;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_22FF1C994(v28, v23, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    v31 = *v23;
    v32 = v23[1];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22FEA55AC(v31, v32);
LABEL_23:
      sub_22FEAEA34(v28, &qword_27DAF28C0, &qword_22FFB9108);
LABEL_30:
      v34 = 0;
      return v34 & 1;
    }

    v46 = *v29;
    v47 = v29[1];
    v34 = sub_22FEC3DC8(v31, v32, *v29, v47);
    sub_22FEA55AC(v46, v47);
    sub_22FEA55AC(v31, v32);
    goto LABEL_26;
  }

  sub_22FF1C994(v28, v21, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v42 = type metadata accessor for Proto_Cryptex;
    v43 = v21;
    goto LABEL_22;
  }

  v35 = v53;
  sub_22FF0B4A8(v29, v53, type metadata accessor for Proto_Cryptex);
  if ((sub_22FEC3DC8(*v21, *(v21 + 1), *v35, *(v35 + 8)) & 1) == 0)
  {
    sub_22FF1C9FC(v35, type metadata accessor for Proto_Cryptex);
    goto LABEL_28;
  }

  v36 = *(v51 + 20);
  sub_22FFB0F88();
  sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8]);
  v37 = sub_22FFB1478();
  sub_22FF1C9FC(v35, type metadata accessor for Proto_Cryptex);
  if ((v37 & 1) == 0)
  {
LABEL_28:
    v45 = type metadata accessor for Proto_Cryptex;
    v44 = v21;
    goto LABEL_29;
  }

  v38 = type metadata accessor for Proto_Cryptex;
  v39 = v21;
LABEL_12:
  sub_22FF1C9FC(v39, v38);
  sub_22FF1C9FC(v28, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  v34 = 1;
  return v34 & 1;
}

uint64_t _s16CloudAttestation06Proto_B6BundleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
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
  sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF1C994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FF1C9FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FF1CB1C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22FF1CB64()
{
  result = qword_27DAF2700;
  if (!qword_27DAF2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2700);
  }

  return result;
}

unint64_t sub_22FF1CBB8()
{
  result = qword_281490490;
  if (!qword_281490490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281490490);
  }

  return result;
}

unint64_t sub_22FF1CC10()
{
  result = qword_281490488;
  if (!qword_281490488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281490488);
  }

  return result;
}

unint64_t sub_22FF1CC68()
{
  result = qword_281490478;
  if (!qword_281490478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281490478);
  }

  return result;
}

unint64_t sub_22FF1CCF0()
{
  result = qword_281490480;
  if (!qword_281490480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281490480);
  }

  return result;
}

unint64_t sub_22FF1CD48()
{
  result = qword_27DAF2758;
  if (!qword_27DAF2758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2758);
  }

  return result;
}

unint64_t sub_22FF1CDA0()
{
  result = qword_27DAF2760;
  if (!qword_27DAF2760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2760);
  }

  return result;
}

unint64_t sub_22FF1CE28()
{
  result = qword_27DAF2778;
  if (!qword_27DAF2778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2778);
  }

  return result;
}

unint64_t sub_22FF1CE80()
{
  result = qword_27DAF2780;
  if (!qword_27DAF2780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2780);
  }

  return result;
}

unint64_t sub_22FF1CED8()
{
  result = qword_27DAF2788;
  if (!qword_27DAF2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2788);
  }

  return result;
}

unint64_t sub_22FF1CF60()
{
  result = qword_27DAF27A0;
  if (!qword_27DAF27A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF27A0);
  }

  return result;
}

void sub_22FF1DB80()
{
  sub_22FFB0F88();
  if (v0 <= 0x3F)
  {
    sub_22FF1DF48(319, &qword_28148F1C8, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22FF1DC7C()
{
  result = sub_22FFB0F88();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FF1DD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22FF1DDF4()
{
  if (!qword_28148F170)
  {
    type metadata accessor for Proto_SealedHash(255);
    v0 = sub_22FFB1418();
    if (!v1)
    {
      atomic_store(v0, &qword_28148F170);
    }
  }
}

void sub_22FF1DE84()
{
  sub_22FF1DF48(319, &qword_28148F140, type metadata accessor for Proto_SealedHash.Entry, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22FFB0F88();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FF1DF48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22FF1DFD4()
{
  sub_22FF1DF48(319, qword_281490018, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22FF1E370(319, &qword_28148F178);
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

uint64_t sub_22FF1E0C8()
{
  result = type metadata accessor for Proto_Cryptex(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Proto_Cryptex.Salt(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Proto_SecureConfig(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22FF1E194()
{
  result = sub_22FFB0F88();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FF1E238()
{
  result = sub_22FFB0F88();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22FF1E2CC()
{
  sub_22FF1E370(319, &qword_28148F180);
  if (v0 <= 0x3F)
  {
    sub_22FFB0F88();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FF1E370(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22FFB1418();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_22FF1E3F0()
{
  sub_22FFB0F88();
  if (v0 <= 0x3F)
  {
    sub_22FF1DF48(319, qword_281490E80, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FF1E4AC()
{
  sub_22FF1DF48(319, qword_28148F938, type metadata accessor for Proto_SealedHashLedger, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_22FF1DF48(319, &qword_28148F1D8, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_22FF1DF48(319, qword_28148F820, type metadata accessor for Proto_TransparencyProofs, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_22FF1DF48(319, qword_28148FDD8, type metadata accessor for Proto_LocalPolicy, MEMORY[0x277D83D88]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

unint64_t sub_22FF1E6C8()
{
  result = qword_27DAF2860;
  if (!qword_27DAF2860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2860);
  }

  return result;
}

uint64_t sub_22FF1E71C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF28A0, &qword_22FFB90F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22FF1E7D4()
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 == 2 && *(v2 + 16) != *(v2 + 24))
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  if (!v4)
  {
    if ((v3 & 0xFF000000000000) != 0)
    {
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      *&v31[0] = v2;
      WORD4(v31[0]) = v3;
      BYTE10(v31[0]) = BYTE2(v3);
      BYTE11(v31[0]) = BYTE3(v3);
      BYTE12(v31[0]) = BYTE4(v3);
      BYTE13(v31[0]) = BYTE5(v3);
      Img4DecodeInit(v31, BYTE6(v3), &v33);
      if (v5)
      {
        v6 = v5;
        sub_22FF28604();
        swift_allocError();
        *v7 = v6;
        *(v7 + 4) = 0;
LABEL_19:
        swift_willThrow();
        goto LABEL_20;
      }

      goto LABEL_33;
    }

LABEL_16:
    sub_22FF28604();
    swift_allocError();
    *v15 = 0;
LABEL_17:
    v16 = 3;
LABEL_18:
    *(v15 + 4) = v16;
    goto LABEL_19;
  }

  while (1)
  {
    if (v2 == v2 >> 32)
    {
      goto LABEL_16;
    }

LABEL_8:
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    if (v4 != 2)
    {
      break;
    }

    v8 = v0;
    v9 = *(v2 + 16);
    v10 = *(v2 + 24);
    v0 = v3 & 0x3FFFFFFFFFFFFFFFLL;
    v11 = sub_22FFB0588();
    if (v11)
    {
      v0 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      v12 = sub_22FFB05B8();
      v2 = v9 - v12;
      if (__OFSUB__(v9, v12))
      {
        goto LABEL_42;
      }

      v11 += v2;
    }

    v13 = __OFSUB__(v10, v9);
    v14 = v10 - v9;
    if (!v13)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  v18 = v2;
  v19 = v2 >> 32;
  v14 = v19 - v18;
  if (v19 < v18)
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v8 = v0;
  v11 = sub_22FFB0588();
  if (v11)
  {
    v20 = sub_22FFB05B8();
    if (!__OFSUB__(v18, v20))
    {
      v11 += v18 - v20;
      goto LABEL_25;
    }

LABEL_43:
    __break(1u);
  }

LABEL_25:
  v21 = sub_22FFB05A8();
  if (v21 >= v14)
  {
    v22 = v14;
  }

  else
  {
    v22 = v21;
  }

  v23 = v22 + v11;
  if (v11)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  sub_22FF25AE0(v11, v24, &v33);
  if (v1)
  {
    goto LABEL_20;
  }

  v0 = v8;
LABEL_33:
  if (*(v0 + 24) != 1 || !*(v0 + 16))
  {
    sub_22FF28604();
    swift_allocError();
    *v15 = 1;
    goto LABEL_17;
  }

  v31[0] = kImg4DecodeLocalPolicyEc384Sha384;
  v31[1] = *&off_2844DEE70;
  v31[2] = xmmword_2844DEE80;
  v32 = off_2844DEE90;
  v25 = Img4DecodePerformTrustEvaluation(0x6C706F6Cu, &v33, sub_22FF25AD0, v31, 0);
  if (v25)
  {
    v26 = v25;
    sub_22FF28604();
    swift_allocError();
    *v15 = v26;
    v16 = 1;
    goto LABEL_18;
  }

  v27 = sub_22FFB05D8();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30[0] = 0x3000000000;
  v30[1] = sub_22FFB0598();
  sub_22FF555D0(v30, 0);
  sub_22FF25B4C(v30, &v33, v31);
  if (v1)
  {
  }

LABEL_20:
  v17 = *MEMORY[0x277D85DE8];
}

void sub_22FF1EBDC()
{
  v71 = *MEMORY[0x277D85DE8];
  v2 = sub_22FFB06F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  v9 = v0[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2 || *(v8 + 16) == *(v8 + 24))
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) != 0)
      {
        v34 = v5;
        v70 = 0;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v49 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        v35 = v8;
        v36 = v9;
        v37 = BYTE2(v9);
        v38 = BYTE3(v9);
        v39 = BYTE4(v9);
        v40 = BYTE5(v9);
        Img4DecodeInit(&v35, BYTE6(v9), &v42);
        if (v11)
        {
          v12 = v11;
LABEL_30:
          sub_22FF28604();
          swift_allocError();
          *v30 = v12;
          *(v30 + 4) = 0;
          goto LABEL_31;
        }

LABEL_29:
        v35 = 0;
        v41 = 0;
        Img4DecodeGetDataFromSection(&v42, 0, 1853057384, &v41, &v35);
        v12 = v29;
        if (!v29)
        {
          v32 = v41;
          if (v41)
          {
            v33 = v35;
            (*(v3 + 104))(v7, *MEMORY[0x277CC92A8], v34);
            sub_22FF27864(v32, v33, v7);
            goto LABEL_32;
          }
        }

        goto LABEL_30;
      }

LABEL_17:
      sub_22FF28604();
      swift_allocError();
      *v21 = 0;
      *(v21 + 4) = 3;
LABEL_31:
      swift_willThrow();
      goto LABEL_32;
    }

    if (v8 == v8 >> 32)
    {
      goto LABEL_17;
    }
  }

  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v34 = v5;
  if (v10 != 2)
  {
    v22 = v8;
    v23 = v8 >> 32;
    v24 = v23 - v22;
    if (v23 >= v22)
    {
      v15 = sub_22FFB0588();
      if (v15)
      {
        v25 = sub_22FFB05B8();
        if (__OFSUB__(v22, v25))
        {
          goto LABEL_38;
        }

        v15 += v22 - v25;
      }

      v26 = sub_22FFB05A8();
      if (v26 >= v24)
      {
        v20 = v24;
      }

      else
      {
        v20 = v26;
      }

      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_36;
  }

  v14 = *(v8 + 16);
  v13 = *(v8 + 24);
  v15 = sub_22FFB0588();
  if (v15)
  {
    v16 = sub_22FFB05B8();
    if (__OFSUB__(v14, v16))
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    v15 += v14 - v16;
  }

  v17 = __OFSUB__(v13, v14);
  v18 = v13 - v14;
  if (v17)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v19 = sub_22FFB05A8();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

LABEL_25:
  v27 = v20 + v15;
  if (v15)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  sub_22FF25AE0(v15, v28, &v42);
  if (!v1)
  {
    goto LABEL_29;
  }

LABEL_32:
  v31 = *MEMORY[0x277D85DE8];
}

uint64_t Proto_AttestationBundle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2050, &unk_22FFB7C50);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v124 = v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v125 = v122 - v10;
  MEMORY[0x28223BE20](v9);
  v126 = v122 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v127 = v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v128 = v122 - v17;
  MEMORY[0x28223BE20](v16);
  v131 = v122 - v18;
  v133 = sub_22FFB0EE8();
  v135 = *(v133 - 8);
  v19 = *(v135 + 64);
  MEMORY[0x28223BE20](v133);
  v130 = v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v129 = v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v132 = v122 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v134 = v122 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = v122 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = v122 - v35;
  MEMORY[0x28223BE20](v34);
  v136 = (v122 - v37);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF28C8, &qword_22FFB9110);
  v138 = *(v139 - 8);
  v38 = *(v138 + 64);
  MEMORY[0x28223BE20](v139);
  v40 = v122 - v39;
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF201E0();
  v154 = v40;
  sub_22FFB1D18();
  v42 = *(v3 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  swift_beginAccess();
  v44 = *(v42 + 16);
  v43 = *(v42 + 24);
  v137 = v42;
  v45 = v43 >> 62;
  if ((v43 >> 62) <= 1)
  {
    if (!v45)
    {
      v46 = v139;
      v47 = v154;
      if ((v43 & 0xFF000000000000) != 0)
      {
LABEL_4:
        sub_22FEA5608(v44, v43);
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    v48 = v44;
    v49 = v44 >> 32;
LABEL_8:
    v46 = v139;
    v47 = v154;
    if (v48 != v49)
    {
      goto LABEL_4;
    }

LABEL_9:
    v44 = 0;
    v43 = 0xF000000000000000;
    goto LABEL_11;
  }

  if (v45 == 2)
  {
    v48 = *(v44 + 16);
    v49 = *(v44 + 24);
    goto LABEL_8;
  }

  v44 = 0;
  v43 = 0xF000000000000000;
  v46 = v139;
  v47 = v154;
LABEL_11:
  v152 = v44;
  v153 = v43;
  LOBYTE(v150) = 1;
  v50 = sub_22FF20234();
  sub_22FFB1B38();
  if (v2)
  {
    sub_22FEA56EC(v152, v153);
    return (*(v138 + 8))(v47, v46);
  }

  sub_22FEA56EC(v152, v153);
  v51 = v137;
  swift_beginAccess();
  v53 = *(v51 + 32);
  v52 = *(v51 + 40);
  v54 = v52 >> 62;
  if ((v52 >> 62) > 1)
  {
    if (v54 != 2 || *(v53 + 16) == *(v53 + 24))
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (!v54)
  {
    if ((v52 & 0xFF000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_19:
    sub_22FEA5608(v53, v52);
    goto LABEL_22;
  }

  if (v53 != v53 >> 32)
  {
    goto LABEL_19;
  }

LABEL_21:
  v53 = 0;
  v52 = 0xF000000000000000;
LABEL_22:
  v150 = v53;
  v151 = v52;
  v149 = 2;
  sub_22FFB1B38();
  v122[1] = v50;
  sub_22FEA56EC(v150, v151);
  v56 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  v57 = v137;
  swift_beginAccess();
  sub_22FEBF3A4(v57 + v56, v36, &qword_27DAF26E8, &qword_22FFB7C60);
  v58 = type metadata accessor for Proto_SealedHashLedger(0);
  v59 = *(v58 - 8);
  v60 = 1;
  v123 = *(v59 + 48);
  LODWORD(v57) = v123(v36, 1, v58);
  sub_22FEAEA34(v36, &qword_27DAF26E8, &qword_22FFB7C60);
  v61 = v57 == 1;
  v62 = v136;
  if (!v61)
  {
    sub_22FEBF3A4(v137 + v56, v33, &qword_27DAF26E8, &qword_22FFB7C60);
    v63 = v123;
    if (v123(v33, 1, v58) == 1)
    {
      *v62 = sub_22FFA6E68(MEMORY[0x277D84F90]);
      v64 = v62 + *(v58 + 20);
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      if (v63(v33, 1, v58) != 1)
      {
        sub_22FEAEA34(v33, &qword_27DAF26E8, &qword_22FFB7C60);
      }
    }

    else
    {
      sub_22FF264A4(v33, v62, type metadata accessor for Proto_SealedHashLedger);
    }

    v60 = 0;
  }

  (*(v59 + 56))(v62, v60, 1, v58);
  v149 = 3;
  sub_22FF2645C(&qword_27DAF28E0, type metadata accessor for Proto_SealedHashLedger);
  v65 = v139;
  sub_22FFB1B38();
  sub_22FEAEA34(v62, &qword_27DAF26E8, &qword_22FFB7C60);
  v66 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
  v67 = v137;
  swift_beginAccess();
  v68 = *(v67 + v66);
  if (*(v68 + 16))
  {
    v69 = *(v67 + v66);
  }

  else
  {
    v68 = 0;
  }

  v148 = v68;
  LOBYTE(v146) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A60, &qword_22FFB3928);
  sub_22FF20288();
  sub_22FFB1B38();

  v70 = v137 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData;
  swift_beginAccess();
  v71 = *v70;
  v72 = *(v70 + 8);
  v73 = v72 >> 62;
  if ((v72 >> 62) > 1)
  {
    if (v73 != 2)
    {
      goto LABEL_41;
    }

    v74 = *(v71 + 16);
    v75 = *(v71 + 24);
LABEL_40:
    if (v74 != v75)
    {
      goto LABEL_42;
    }

LABEL_41:
    v71 = 0;
    v72 = 0xF000000000000000;
    goto LABEL_43;
  }

  if (v73)
  {
    v74 = v71;
    v75 = v71 >> 32;
    goto LABEL_40;
  }

  if ((v72 & 0xFF000000000000) == 0)
  {
    goto LABEL_41;
  }

LABEL_42:
  sub_22FEA5608(*v70, *(v70 + 8));
LABEL_43:
  v146 = v71;
  v147 = v72;
  v145 = 4;
  sub_22FFB1B38();
  v136 = 0;
  sub_22FEA56EC(v146, v147);
  v76 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  v77 = v137;
  swift_beginAccess();
  v78 = v132;
  sub_22FEBF3A4(v77 + v76, v132, &qword_27DAF1520, &qword_22FFB3A30);
  v79 = *(v135 + 48);
  v80 = 1;
  v81 = v133;
  v82 = v79(v78, 1, v133);
  sub_22FEAEA34(v78, &qword_27DAF1520, &qword_22FFB3A30);
  v83 = v134;
  if (v82 != 1)
  {
    v84 = v129;
    sub_22FEBF3A4(v137 + v76, v129, &qword_27DAF1520, &qword_22FFB3A30);
    if (v79(v84, 1, v81) == 1)
    {
      v85 = v130;
      sub_22FFB0ED8();
      if (v79(v84, 1, v81) != 1)
      {
        sub_22FEAEA34(v84, &qword_27DAF1520, &qword_22FFB3A30);
      }
    }

    else
    {
      v85 = v130;
      (*(v135 + 32))(v130, v84, v81);
    }

    sub_22FFB0EB8();
    (*(v135 + 8))(v85, v81);
    v80 = 0;
  }

  v86 = sub_22FFB0908();
  (*(*(v86 - 8) + 56))(v83, v80, 1, v86);
  v145 = 5;
  sub_22FF2645C(&qword_27DAF28F0, MEMORY[0x277CC9578]);
  v87 = v154;
  v88 = v136;
  sub_22FFB1B38();
  if (v88)
  {
    sub_22FEAEA34(v83, &qword_27DAF1510, &qword_22FFB3800);
    return (*(v138 + 8))(v87, v65);
  }

  sub_22FEAEA34(v83, &qword_27DAF1510, &qword_22FFB3800);
  v89 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  v90 = v137;
  swift_beginAccess();
  v91 = v90 + v89;
  v92 = v128;
  sub_22FEBF3A4(v91, v128, &qword_27DAF2118, &unk_22FFB5C70);
  v93 = type metadata accessor for Proto_TransparencyProofs(0);
  v94 = *(v93 - 8);
  v95 = 1;
  v136 = *(v94 + 48);
  v96 = (v136)(v92, 1, v93);
  sub_22FEAEA34(v92, &qword_27DAF2118, &unk_22FFB5C70);
  if (v96 != 1)
  {
    v97 = v127;
    sub_22FEBF3A4(v137 + v89, v127, &qword_27DAF2118, &unk_22FFB5C70);
    v98 = v136;
    if ((v136)(v97, 1, v93) == 1)
    {
      v99 = v131;
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      v100 = *(v93 + 20);
      v101 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
      (*(*(v101 - 8) + 56))(v99 + v100, 1, 1, v101);
      if ((v98)(v97, 1, v93) != 1)
      {
        sub_22FEAEA34(v97, &qword_27DAF2118, &unk_22FFB5C70);
      }
    }

    else
    {
      sub_22FF264A4(v97, v131, type metadata accessor for Proto_TransparencyProofs);
    }

    v95 = 0;
  }

  v102 = v131;
  (*(v94 + 56))(v131, v95, 1, v93);
  v144 = 6;
  sub_22FF2645C(&qword_27DAF28F8, type metadata accessor for Proto_TransparencyProofs);
  sub_22FFB1B38();
  sub_22FEAEA34(v102, &qword_27DAF2118, &unk_22FFB5C70);
  v103 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
  v104 = v137;
  swift_beginAccess();
  v105 = v125;
  sub_22FEBF3A4(v104 + v103, v125, &qword_27DAF2050, &unk_22FFB7C50);
  v106 = type metadata accessor for Proto_LocalPolicy(0);
  v107 = *(v106 - 8);
  v108 = *(v107 + 48);
  v109 = 1;
  v110 = v108(v105, 1, v106);
  sub_22FEAEA34(v105, &qword_27DAF2050, &unk_22FFB7C50);
  v111 = v126;
  if (v110 != 1)
  {
    v112 = v124;
    sub_22FEBF3A4(v137 + v103, v124, &qword_27DAF2050, &unk_22FFB7C50);
    if (v108(v112, 1, v106) == 1)
    {
      *v111 = xmmword_22FFB33B0;
      *(v111 + 16) = 0;
      *(v111 + 24) = 1;
      v113 = v111 + *(v106 + 24);
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      if (v108(v112, 1, v106) != 1)
      {
        sub_22FEAEA34(v112, &qword_27DAF2050, &unk_22FFB7C50);
      }
    }

    else
    {
      sub_22FF264A4(v112, v111, type metadata accessor for Proto_LocalPolicy);
    }

    v109 = 0;
  }

  (*(v107 + 56))(v111, v109, 1, v106);
  v143 = 7;
  sub_22FF2645C(&qword_27DAF2900, type metadata accessor for Proto_LocalPolicy);
  v114 = v139;
  v115 = v154;
  sub_22FFB1B38();
  sub_22FEAEA34(v111, &qword_27DAF2050, &unk_22FFB7C50);
  v116 = (v137 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest);
  swift_beginAccess();
  v118 = *v116;
  v117 = v116[1];
  v119 = v117 >> 62;
  if ((v117 >> 62) > 1)
  {
    if (v119 != 2)
    {
      goto LABEL_70;
    }

    v120 = *(v118 + 16);
    v121 = *(v118 + 24);
  }

  else
  {
    if (!v119)
    {
      if ((v117 & 0xFF000000000000) == 0)
      {
        goto LABEL_70;
      }

LABEL_71:
      sub_22FEA5608(v118, v117);
      goto LABEL_72;
    }

    v120 = v118;
    v121 = v118 >> 32;
  }

  if (v120 != v121)
  {
    goto LABEL_71;
  }

LABEL_70:
  v118 = 0;
  v117 = 0xF000000000000000;
LABEL_72:
  v141 = v118;
  v142 = v117;
  v140 = 8;
  sub_22FFB1B38();
  sub_22FEA56EC(v141, v142);
  return (*(v138 + 8))(v115, v114);
}

unint64_t sub_22FF201E0()
{
  result = qword_27DAF28D0;
  if (!qword_27DAF28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF28D0);
  }

  return result;
}

unint64_t sub_22FF20234()
{
  result = qword_27DAF28D8;
  if (!qword_27DAF28D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF28D8);
  }

  return result;
}

unint64_t sub_22FF20288()
{
  result = qword_27DAF28E8;
  if (!qword_27DAF28E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF1A60, &qword_22FFB3928);
    sub_22FF20234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF28E8);
  }

  return result;
}

unint64_t sub_22FF2030C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7365747441706573;
    v6 = 0x74656B6369547061;
    if (a1 != 2)
    {
      v6 = 0x614864656C616573;
    }

    if (!a1)
    {
      v5 = 0xD00000000000001CLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000012;
    v2 = 0x6C6F506C61636F6CLL;
    if (a1 != 7)
    {
      v2 = 0x66696E614D726673;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x61746144707061;
    if (a1 != 4)
    {
      v3 = 0x726970784579656BLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22FF2046C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22FF27A9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22FF204AC(uint64_t a1)
{
  v2 = sub_22FF201E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF204E8(uint64_t a1)
{
  v2 = sub_22FF201E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Proto_LocalPolicy.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2908, &qword_22FFB9118);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF25C48();
  sub_22FFB1D18();
  v11 = *v3;
  v12 = *(v3 + 8);
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2 || *(v11 + 16) == *(v11 + 24))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v13)
  {
    if ((v12 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    sub_22FEA5608(*v3, *(v3 + 8));
    goto LABEL_10;
  }

  if (v11 != v11 >> 32)
  {
    goto LABEL_7;
  }

LABEL_9:
  v11 = 0;
  v12 = 0xF000000000000000;
LABEL_10:
  v18 = v11;
  v19 = v12;
  v17 = 0;
  sub_22FF20234();
  sub_22FFB1B38();
  sub_22FEA56EC(v18, v19);
  if (!v2)
  {
    v14 = *(v3 + 24);
    v18 = *(v3 + 16);
    LOBYTE(v19) = (v18 != 0) & v14;
    BYTE1(v19) = v18 == 0;
    v17 = 1;
    sub_22FF25C9C();
    sub_22FFB1B38();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_22FF2074C()
{
  if (*v0)
  {
    result = 0x6E656D656C706D69;
  }

  else
  {
    result = 0x7963696C6F70;
  }

  *v0;
  return result;
}

uint64_t sub_22FF20790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7963696C6F70 && a2 == 0xE600000000000000;
  if (v6 || (sub_22FFB1BC8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656D656C706D69 && a2 == 0xEE006E6F69746174)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22FFB1BC8();

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

uint64_t sub_22FF20870(uint64_t a1)
{
  v2 = sub_22FF25C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF208AC(uint64_t a1)
{
  v2 = sub_22FF25C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Proto_LocalPolicy.Implementation.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FFB1D08();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  if (v3 == 1)
  {
    sub_22FFB1BD8();
  }

  else
  {
    sub_22FFB1BE8();
  }

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t Proto_SealedHashLedger.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2920, &qword_22FFB9120);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF25D40();
  sub_22FFB1D18();
  v10 = *v2;
  if (*(v10 + 16))
  {
  }

  else
  {
    v10 = 0;
  }

  v12[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2930, &qword_22FFB9128);
  sub_22FF25D94();
  sub_22FFB1B38();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_22FF20BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746F6C73 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22FFB1BC8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22FF20C34(uint64_t a1)
{
  v2 = sub_22FF25D40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF20C70(uint64_t a1)
{
  v2 = sub_22FF25D40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Proto_SealedHash.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2948, &qword_22FFB9130);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF25E50();
  sub_22FFB1D18();
  v11 = *(v3 + 8);
  v12 = *v3 == 0;
  v13 = *v3 != 0;
  v18 = *v3;
  v19 = v13 & v11;
  v20 = v12;
  v17 = 0;
  sub_22FF25EA4();
  sub_22FFB1B38();
  if (!v2)
  {
    v14 = v3[2];
    if (*(v14 + 16))
    {
    }

    else
    {
      v14 = 0;
    }

    v18 = v14;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2960, &qword_22FFB9138);
    sub_22FF25EF8();
    sub_22FFB1B38();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_22FF20EA8()
{
  if (*v0)
  {
    return 0x73656972746E65;
  }

  else
  {
    return 0x676C4168736168;
  }
}

uint64_t sub_22FF20EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676C4168736168 && a2 == 0xE700000000000000;
  if (v6 || (sub_22FFB1BC8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656972746E65 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22FFB1BC8();

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

uint64_t sub_22FF20FB8(uint64_t a1)
{
  v2 = sub_22FF25E50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF20FF4(uint64_t a1)
{
  v2 = sub_22FF25E50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Proto_SealedHash.Entry.encode(to:)(void *a1)
{
  v3 = v1;
  v64 = type metadata accessor for Proto_SecureConfig(0);
  v5 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v65 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for Proto_Cryptex.Salt(0);
  v7 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v63 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for Proto_Cryptex(0);
  v9 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v60 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v59 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v55 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v55 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v66 = &v55 - v22;
  MEMORY[0x28223BE20](v21);
  *&v67 = &v55 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2978, &qword_22FFB9140);
  v68 = *(v24 - 8);
  v25 = *(v68 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v55 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF25FAC();
  sub_22FFB1D18();
  v29 = *(v3 + 8);
  v30 = *(v3 + 16);
  v31 = v30 >> 62;
  if ((v30 >> 62) > 1)
  {
    if (v31 != 2 || *(v29 + 16) == *(v29 + 24))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v31)
  {
    if ((v30 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    sub_22FEA5608(*(v3 + 8), *(v3 + 16));
    goto LABEL_10;
  }

  if (v29 != v29 >> 32)
  {
    goto LABEL_7;
  }

LABEL_9:
  v29 = 0;
  v30 = 0xF000000000000000;
LABEL_10:
  v69 = v29;
  v70 = v30;
  v71 = 0;
  sub_22FF20234();
  sub_22FFB1B38();
  if (v2)
  {
    sub_22FEA56EC(v69, v70);
    return (*(v68 + 8))(v27, v24);
  }

  sub_22FEA56EC(v69, v70);
  v32 = *v3 == 0;
  LOBYTE(v69) = 1;
  v71 = v32;
  sub_22FFB1B48();
  v58 = v24;
  v57 = type metadata accessor for Proto_SealedHash.Entry(0);
  v34 = *(v57 + 24);
  v35 = v67;
  sub_22FEBF3A4(v3 + v34, v67, &qword_27DAF2130, &unk_22FFB5C80);
  v36 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  v56 = *(*(v36 - 8) + 48);
  if (v56(v35, 1, v36) != 1)
  {
    sub_22FEBF3A4(v35, v66, &qword_27DAF2130, &unk_22FFB5C80);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v37 = v3;
        v35 = v67;
LABEL_40:
        sub_22FF2608C(v66, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
        goto LABEL_41;
      }

      v41 = v3 + v34;
      v37 = v3;
      sub_22FEBF3A4(v41, v20, &qword_27DAF2130, &unk_22FFB5C80);
      if (v56(v20, 1, v36) == 1)
      {
        sub_22FEAEA34(v20, &qword_27DAF2130, &unk_22FFB5C80);
        v35 = v67;
        v43 = v60;
        v42 = v61;
      }

      else
      {
        v47 = swift_getEnumCaseMultiPayload();
        v35 = v67;
        v43 = v60;
        if (v47 == 1)
        {
          sub_22FF264A4(v20, v60, type metadata accessor for Proto_Cryptex);
LABEL_35:
          LOBYTE(v69) = 2;
          sub_22FF2645C(&qword_27DAF29A0, type metadata accessor for Proto_Cryptex);
          sub_22FFB1B88();
          sub_22FF2608C(v43, type metadata accessor for Proto_Cryptex);
          goto LABEL_40;
        }

        sub_22FF2608C(v20, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
        v42 = v61;
      }

      *v43 = xmmword_22FFB33B0;
      v50 = v43 + *(v42 + 20);
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      goto LABEL_35;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v39 = v3 + v34;
      v37 = v3;
      sub_22FEBF3A4(v39, v17, &qword_27DAF2130, &unk_22FFB5C80);
      if (v56(v17, 1, v36) == 1)
      {
        sub_22FEAEA34(v17, &qword_27DAF2130, &unk_22FFB5C80);
        v40 = v63;
      }

      else
      {
        v46 = swift_getEnumCaseMultiPayload();
        v40 = v63;
        if (v46 == 2)
        {
          sub_22FF264A4(v17, v63, type metadata accessor for Proto_Cryptex.Salt);
LABEL_32:
          v35 = v67;
          LOBYTE(v69) = 3;
          sub_22FF2645C(&qword_27DAF2998, type metadata accessor for Proto_Cryptex.Salt);
          sub_22FFB1B88();
          v49 = type metadata accessor for Proto_Cryptex.Salt;
LABEL_39:
          sub_22FF2608C(v40, v49);
          goto LABEL_40;
        }

        sub_22FF2608C(v17, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
      }

      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      goto LABEL_32;
    }

    v44 = v3 + v34;
    v37 = v3;
    v45 = v59;
    sub_22FEBF3A4(v44, v59, &qword_27DAF2130, &unk_22FFB5C80);
    if (v56(v45, 1, v36) == 1)
    {
      sub_22FEAEA34(v45, &qword_27DAF2130, &unk_22FFB5C80);
      v35 = v67;
      v40 = v65;
    }

    else
    {
      v48 = swift_getEnumCaseMultiPayload();
      v35 = v67;
      v40 = v65;
      if (v48 == 3)
      {
        sub_22FF264A4(v45, v65, type metadata accessor for Proto_SecureConfig);
LABEL_38:
        LOBYTE(v69) = 4;
        sub_22FF2645C(&qword_27DAF2990, type metadata accessor for Proto_SecureConfig);
        sub_22FFB1B88();
        v49 = type metadata accessor for Proto_SecureConfig;
        goto LABEL_39;
      }

      sub_22FF2608C(v45, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    }

    v51 = v64;
    v67 = xmmword_22FFB33B0;
    *v40 = xmmword_22FFB33B0;
    *(v40 + 16) = sub_22FFA7A88(MEMORY[0x277D84F90]);
    *(v40 + 24) = v67;
    v52 = v40 + *(v51 + 28);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    goto LABEL_38;
  }

  v37 = v3;
LABEL_41:
  sub_22FEAEA34(v35, &qword_27DAF2130, &unk_22FFB5C80);
  v53 = *(v37 + *(v57 + 28));
  if (*(v53 + 16))
  {
  }

  else
  {
    v53 = 0;
  }

  v54 = v58;
  v69 = v53;
  v71 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1540, &qword_22FFB2D78);
  sub_22FF26000();
  sub_22FFB1B38();

  return (*(v68 + 8))(v27, v54);
}

uint64_t sub_22FF21A64()
{
  v1 = *v0;
  v2 = 0x747365676964;
  v3 = 0x5378657470797263;
  v4 = 0x6F43657275636573;
  if (v1 != 4)
  {
    v4 = 0x617461646174656DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7367616C66;
  if (v1 != 1)
  {
    v5 = 0x78657470797263;
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

uint64_t sub_22FF21B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22FF27DA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22FF21B50(uint64_t a1)
{
  v2 = sub_22FF25FAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF21B8C(uint64_t a1)
{
  v2 = sub_22FF25FAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Proto_Cryptex.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF29A8, &qword_22FFB9148);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF260EC();
  sub_22FFB1D18();
  v10 = *v2;
  v11 = v2[1];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 != 2 || *(v10 + 16) == *(v10 + 24))
    {
      goto LABEL_9;
    }
  }

  else if (v12)
  {
    if (v10 == v10 >> 32)
    {
LABEL_9:
      v10 = 0;
      v11 = 0xF000000000000000;
      goto LABEL_10;
    }
  }

  else if ((v11 & 0xFF000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_22FEA5608(v10, v11);
LABEL_10:
  v14 = v10;
  v15 = v11;
  sub_22FF20234();
  sub_22FFB1B38();
  sub_22FEA56EC(v14, v15);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_22FF21DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x614D346567616D69 && a2 == 0xEE0074736566696ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22FFB1BC8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22FF21E40(uint64_t a1)
{
  v2 = sub_22FF260EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF21E7C(uint64_t a1)
{
  v2 = sub_22FF260EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Proto_Cryptex.Salt.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF29B8, &qword_22FFB9150);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF26140();
  sub_22FFB1D18();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22FF21FF0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_22FF22020(uint64_t a1)
{
  v2 = sub_22FF26140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF2205C(uint64_t a1)
{
  v2 = sub_22FF26140();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FF22098(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF29B8, &qword_22FFB9150);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF26140();
  sub_22FFB1D18();
  return (*(v3 + 8))(v6, v2);
}

uint64_t Proto_SecureConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF29C8, &qword_22FFB9158);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF26194();
  sub_22FFB1D18();
  v11 = *v3;
  v12 = v3[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2 || *(v11 + 16) == *(v11 + 24))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v13)
  {
    if ((v12 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    sub_22FEA5608(*v3, v3[1]);
    goto LABEL_10;
  }

  if (v11 != v11 >> 32)
  {
    goto LABEL_7;
  }

LABEL_9:
  v11 = 0;
  v12 = 0xF000000000000000;
LABEL_10:
  v22 = v11;
  v23 = v12;
  v21 = 0;
  sub_22FF20234();
  sub_22FFB1B38();
  sub_22FEA56EC(v22, v23);
  if (!v2)
  {
    v14 = v3[2];
    if (*(v14 + 16))
    {
      v15 = v3[2];
    }

    else
    {
      v14 = 0;
    }

    v22 = v14;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF29D8, &qword_22FFC0350);
    sub_22FF261E8();
    sub_22FFB1B38();

    v16 = v3[3];
    v17 = v3[4];
    v18 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v18 != 2 || *(v16 + 16) == *(v16 + 24))
      {
        goto LABEL_23;
      }
    }

    else if (v18)
    {
      if (v16 == v16 >> 32)
      {
LABEL_23:
        v16 = 0;
        v17 = 0xF000000000000000;
        goto LABEL_24;
      }
    }

    else if ((v17 & 0xFF000000000000) == 0)
    {
      goto LABEL_23;
    }

    sub_22FEA5608(v16, v17);
LABEL_24:
    v22 = v16;
    v23 = v17;
    v21 = 2;
    sub_22FFB1B38();
    sub_22FEA56EC(v22, v23);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_22FF22474()
{
  v1 = 0x617461646174656DLL;
  if (*v0 != 1)
  {
    v1 = 1635017060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7972746E65;
  }
}

uint64_t sub_22FF224C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22FF27FA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22FF224EC(uint64_t a1)
{
  v2 = sub_22FF26194();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF22528(uint64_t a1)
{
  v2 = sub_22FF26194();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Proto_HashAlg.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FFB1D08();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  if (v3 == 1)
  {
    sub_22FFB1BD8();
  }

  else
  {
    sub_22FFB1BE8();
  }

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_22FF226F0@<X0>(uint64_t a1@<X8>)
{
  sub_22FFB13C8();
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v3 = 1;
  }

  else
  {
    sub_22FFB13F8();
    result = swift_dynamicCastMetatype();
    v3 = 2 * (result != 0);
  }

  *a1 = v3;
  *(a1 + 8) = 1;
  return result;
}

uint64_t Proto_TransparencyProofs.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  MEMORY[0x28223BE20](v8);
  v36 = &v32 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF29E8, &qword_22FFB9160);
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = *(v38 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF26264();
  v37 = v15;
  sub_22FFB1D18();
  v17 = *(type metadata accessor for Proto_TransparencyProofs(0) + 20);
  v34 = v2;
  sub_22FEBF3A4(v2 + v17, v10, &qword_27DAF37C0, &unk_22FFB5C60);
  v18 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v19 = *(v18 - 8);
  v20 = 1;
  v33 = *(v19 + 48);
  LODWORD(v16) = v33(v10, 1, v18);
  v21 = v36;
  sub_22FEAEA34(v10, &qword_27DAF37C0, &unk_22FFB5C60);
  if (v16 != 1)
  {
    v22 = v34 + v17;
    v23 = v35;
    sub_22FEBF3A4(v22, v35, &qword_27DAF37C0, &unk_22FFB5C60);
    v24 = v33;
    if (v33(v23, 1, v18) == 1)
    {
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      v25 = *(v18 + 20);
      v26 = type metadata accessor for LogEntry(0);
      (*(*(v26 - 8) + 56))(v21 + v25, 1, 1, v26);
      v27 = *(v18 + 24);
      v28 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
      (*(*(v28 - 8) + 56))(v21 + v27, 1, 1, v28);
      if (v24(v23, 1, v18) != 1)
      {
        sub_22FEAEA34(v23, &qword_27DAF37C0, &unk_22FFB5C60);
      }
    }

    else
    {
      sub_22FF264A4(v23, v21, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    }

    v20 = 0;
  }

  (*(v19 + 56))(v21, v20, 1, v18);
  sub_22FF2645C(&qword_27DAF29F8, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  v29 = v39;
  v30 = v37;
  sub_22FFB1B38();
  sub_22FEAEA34(v21, &qword_27DAF37C0, &unk_22FFB5C60);
  return (*(v38 + 8))(v30, v29);
}

uint64_t sub_22FF22BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73666F6F7270 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22FFB1BC8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22FF22C30(uint64_t a1)
{
  v2 = sub_22FF26264();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF22C6C(uint64_t a1)
{
  v2 = sub_22FF26264();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofs.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2140, &qword_22FFB5C90);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v54 = &v51 - v9;
  MEMORY[0x28223BE20](v8);
  v55 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v57 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v51 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A00, &qword_22FFB9168);
  v60 = *(v62 - 8);
  v20 = *(v60 + 64);
  MEMORY[0x28223BE20](v62);
  v22 = &v51 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF262B8();
  v61 = v22;
  sub_22FFB1D18();
  v53 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v24 = *(v53 + 20);
  v58 = v2;
  sub_22FEBF3A4(v2 + v24, v17, &qword_27DAF2150, &qword_22FFB5CA0);
  v25 = type metadata accessor for LogEntry(0);
  v26 = *(v25 - 8);
  v27 = 1;
  v56 = *(v26 + 48);
  LODWORD(v23) = v56(v17, 1, v25);
  sub_22FEAEA34(v17, &qword_27DAF2150, &qword_22FFB5CA0);
  if (v23 != 1)
  {
    v28 = v57;
    sub_22FEBF3A4(v58 + v24, v57, &qword_27DAF2150, &qword_22FFB5CA0);
    v29 = v56;
    if (v56(v28, 1, v25) == 1)
    {
      *v19 = 0;
      v19[8] = 1;
      *(v19 + 2) = MEMORY[0x277D84F90];
      *(v19 + 24) = xmmword_22FFB33B0;
      *(v19 + 5) = 0;
      *(v19 + 6) = 0;
      v19[56] = 1;
      v30 = &v19[*(v25 + 36)];
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      v31 = *(v25 + 40);
      v32 = type metadata accessor for SignedObject(0);
      (*(*(v32 - 8) + 56))(&v19[v31], 1, 1, v32);
      if (v29(v28, 1, v25) != 1)
      {
        sub_22FEAEA34(v28, &qword_27DAF2150, &qword_22FFB5CA0);
      }
    }

    else
    {
      sub_22FF264A4(v28, v19, type metadata accessor for LogEntry);
    }

    v27 = 0;
  }

  (*(v26 + 56))(v19, v27, 1, v25);
  v64 = 0;
  sub_22FF2645C(&qword_27DAF2A10, type metadata accessor for LogEntry);
  v33 = v62;
  v34 = v61;
  v35 = v59;
  sub_22FFB1B38();
  sub_22FEAEA34(v19, &qword_27DAF2150, &qword_22FFB5CA0);
  if (!v35)
  {
    v36 = v54;
    v37 = *(v53 + 24);
    v38 = v58;
    sub_22FEBF3A4(v58 + v37, v54, &qword_27DAF2140, &qword_22FFB5C90);
    v39 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
    v40 = *(v39 - 8);
    v41 = *(v40 + 48);
    v42 = v41(v36, 1, v39);
    sub_22FEAEA34(v36, &qword_27DAF2140, &qword_22FFB5C90);
    v43 = 1;
    v44 = v42 == 1;
    v45 = v55;
    if (!v44)
    {
      v46 = v38 + v37;
      v47 = v52;
      sub_22FEBF3A4(v46, v52, &qword_27DAF2140, &qword_22FFB5C90);
      if (v41(v47, 1, v39) == 1)
      {
        _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
        v48 = *(v39 + 20);
        if (qword_281490E10 != -1)
        {
          swift_once();
        }

        *(v45 + v48) = qword_281490E18;
        v49 = v41(v47, 1, v39);

        if (v49 != 1)
        {
          sub_22FEAEA34(v47, &qword_27DAF2140, &qword_22FFB5C90);
        }
      }

      else
      {
        sub_22FF264A4(v47, v45, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
      }

      v43 = 0;
    }

    (*(v40 + 56))(v45, v43, 1, v39);
    v63 = 1;
    sub_22FF2645C(&qword_27DAF2A18, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
    v33 = v62;
    v34 = v61;
    sub_22FFB1B38();
    sub_22FEAEA34(v45, &qword_27DAF2140, &qword_22FFB5C90);
  }

  return (*(v60 + 8))(v34, v33);
}

unint64_t sub_22FF233B4()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x6F6973756C636E69;
  }

  *v0;
  return result;
}

uint64_t sub_22FF23400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6973756C636E69 && a2 == 0xEE00666F6F72506ELL;
  if (v6 || (sub_22FFB1BC8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022FFCA4D0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22FFB1BC8();

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

uint64_t sub_22FF234EC(uint64_t a1)
{
  v2 = sub_22FF262B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF23528(uint64_t a1)
{
  v2 = sub_22FF262B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LogEntry.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v53 - v10;
  MEMORY[0x28223BE20](v9);
  v59 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A20, &qword_22FFB9170);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v53 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF2630C();
  sub_22FFB1D18();
  v19 = *(v2 + 8);
  v20 = *v2 == 0;
  v21 = *v2 != 0;
  v61 = *v2;
  LOBYTE(v62) = v21 & v19;
  BYTE1(v62) = v20;
  v63 = 0;
  sub_22FF26360();
  v22 = v60;
  sub_22FFB1B38();
  if (v22)
  {
    return (*(v14 + 8))(v17, v13);
  }

  v55 = v8;
  v56 = v17;
  v57 = 0;
  v58 = v14;
  v24 = *(type metadata accessor for LogEntry(0) + 40);
  sub_22FEBF3A4(v2 + v24, v11, &qword_27DAF2338, &unk_22FFBB620);
  v25 = type metadata accessor for SignedObject(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  v28 = v27(v11, 1, v25);
  v60 = v13;
  v29 = v28;
  sub_22FEAEA34(v11, &qword_27DAF2338, &unk_22FFBB620);
  v30 = 1;
  v31 = v29 == 1;
  v32 = v2;
  v34 = v59;
  v33 = v60;
  if (!v31)
  {
    v54 = v32;
    v35 = v32 + v24;
    v36 = v55;
    sub_22FEBF3A4(v35, v55, &qword_27DAF2338, &unk_22FFBB620);
    if (v27(v36, 1, v25) == 1)
    {
      *v34 = xmmword_22FFB33B0;
      v37 = &v34[*(v25 + 20)];
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      v38 = *(v25 + 24);
      v39 = type metadata accessor for Signature(0);
      (*(*(v39 - 8) + 56))(&v34[v38], 1, 1, v39);
      if (v27(v36, 1, v25) != 1)
      {
        sub_22FEAEA34(v36, &qword_27DAF2338, &unk_22FFBB620);
      }

      v30 = 0;
      v33 = v60;
    }

    else
    {
      sub_22FF264A4(v36, v34, type metadata accessor for SignedObject);
      v30 = 0;
    }

    v32 = v54;
  }

  (*(v26 + 56))(v34, v30, 1, v25);
  LOBYTE(v61) = 1;
  sub_22FF2645C(&qword_27DAF2A38, type metadata accessor for SignedObject);
  v40 = v56;
  v41 = v57;
  sub_22FFB1B38();
  if (v41)
  {
    sub_22FEAEA34(v34, &qword_27DAF2338, &unk_22FFBB620);
    return (*(v58 + 8))(v40, v33);
  }

  sub_22FEAEA34(v34, &qword_27DAF2338, &unk_22FFBB620);
  v42 = *(v32 + 16);
  if (*(v42 + 16))
  {
    v43 = *(v32 + 16);
  }

  else
  {
    v42 = 0;
  }

  v61 = v42;
  v63 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A60, &qword_22FFB3928);
  sub_22FF20288();
  sub_22FFB1B38();

  v44 = *(v32 + 24);
  v45 = *(v32 + 32);
  v46 = v45 >> 62;
  if ((v45 >> 62) > 1)
  {
    v47 = v60;
    v48 = v58;
    if (v46 != 2)
    {
      goto LABEL_23;
    }

    v49 = *(v44 + 16);
    v50 = *(v44 + 24);
  }

  else
  {
    v47 = v60;
    v48 = v58;
    if (!v46)
    {
      if ((v45 & 0xFF000000000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_24:
      sub_22FEA5608(*(v32 + 24), *(v32 + 32));
      goto LABEL_25;
    }

    v49 = v44;
    v50 = v44 >> 32;
  }

  if (v49 != v50)
  {
    goto LABEL_24;
  }

LABEL_23:
  v44 = 0;
  v45 = 0xF000000000000000;
LABEL_25:
  v61 = v44;
  v62 = v45;
  v63 = 3;
  sub_22FF20234();
  sub_22FFB1B38();
  sub_22FEA56EC(v61, v62);
  v51 = *(v32 + 40);
  LOBYTE(v61) = 4;
  sub_22FFB1B58();
  v52 = *(v32 + 56);
  v61 = *(v32 + 48);
  LOBYTE(v62) = (v61 != 0) & v52;
  BYTE1(v62) = v61 == 0;
  v63 = 5;
  sub_22FF263B4();
  sub_22FFB1B38();
  return (*(v48 + 8))(v40, v47);
}

uint64_t sub_22FF23BEC()
{
  v1 = *v0;
  v2 = 0x65707954676F6CLL;
  v3 = 0x6574794265646F6ELL;
  v4 = 0x69736F5065646F6ELL;
  if (v1 != 4)
  {
    v4 = 0x6570795465646F6ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 6843507;
  if (v1 != 1)
  {
    v5 = 0xD000000000000019;
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

uint64_t sub_22FF23CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22FF280B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22FF23CD8(uint64_t a1)
{
  v2 = sub_22FF2630C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF23D14(uint64_t a1)
{
  v2 = sub_22FF2630C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LogType.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FFB1D08();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  if (v3 == 1)
  {
    sub_22FFB1BD8();
  }

  else
  {
    sub_22FFB1BE8();
  }

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t SignedObject.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A48, &qword_22FFB9178);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  MEMORY[0x28223BE20](v9);
  v40 = &v35 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A50, &qword_22FFB9180);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF26408();
  sub_22FFB1D18();
  v19 = *v3;
  v20 = *(v3 + 8);
  v21 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v21 != 2 || *(v19 + 16) == *(v19 + 24))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v21)
  {
    if ((v20 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    sub_22FEA5608(*v3, *(v3 + 8));
    goto LABEL_10;
  }

  if (v19 != v19 >> 32)
  {
    goto LABEL_7;
  }

LABEL_9:
  v19 = 0;
  v20 = 0xF000000000000000;
LABEL_10:
  v41 = v19;
  v42 = v20;
  v43 = 0;
  sub_22FF20234();
  sub_22FFB1B38();
  sub_22FEA56EC(v41, v42);
  if (v2)
  {
    return (*(v14 + 8))(v17, v13);
  }

  v37 = v14;
  v38 = v13;
  v23 = *(type metadata accessor for SignedObject(0) + 24);
  sub_22FEBF3A4(v3 + v23, v11, &qword_27DAF2A48, &qword_22FFB9178);
  v24 = type metadata accessor for Signature(0);
  v25 = *(v24 - 8);
  v36 = *(v25 + 48);
  v26 = v36(v11, 1, v24);
  sub_22FEAEA34(v11, &qword_27DAF2A48, &qword_22FFB9178);
  v27 = 1;
  v28 = v26 == 1;
  v29 = v40;
  if (!v28)
  {
    v30 = v3 + v23;
    v31 = v39;
    sub_22FEBF3A4(v30, v39, &qword_27DAF2A48, &qword_22FFB9178);
    v32 = v36;
    if (v36(v31, 1, v24) == 1)
    {
      *v29 = xmmword_22FFB33B0;
      *(v29 + 16) = xmmword_22FFB33B0;
      *(v29 + 32) = 0;
      *(v29 + 40) = 1;
      v33 = v29 + *(v24 + 28);
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      if (v32(v31, 1, v24) != 1)
      {
        sub_22FEAEA34(v31, &qword_27DAF2A48, &qword_22FFB9178);
      }
    }

    else
    {
      sub_22FF264A4(v31, v29, type metadata accessor for Signature);
    }

    v27 = 0;
  }

  (*(v25 + 56))(v29, v27, 1, v24);
  LOBYTE(v41) = 1;
  sub_22FF2645C(&qword_27DAF2A60, type metadata accessor for Signature);
  v34 = v38;
  sub_22FFB1B38();
  sub_22FEAEA34(v29, &qword_27DAF2A48, &qword_22FFB9178);
  return (*(v37 + 8))(v17, v34);
}

uint64_t sub_22FF243FC()
{
  if (*v0)
  {
    result = 0x727574616E676973;
  }

  else
  {
    result = 0x7463656A626FLL;
  }

  *v0;
  return result;
}

uint64_t sub_22FF24438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7463656A626FLL && a2 == 0xE600000000000000;
  if (v6 || (sub_22FFB1BC8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22FFB1BC8();

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

uint64_t sub_22FF24518(uint64_t a1)
{
  v2 = sub_22FF26408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF24554(uint64_t a1)
{
  v2 = sub_22FF26408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Signature.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A68, &qword_22FFB9188);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF2650C();
  sub_22FFB1D18();
  v11 = *v3;
  v12 = *(v3 + 8);
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2 || *(v11 + 16) == *(v11 + 24))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v13)
  {
    if ((v12 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    sub_22FEA5608(*v3, *(v3 + 8));
    goto LABEL_10;
  }

  if (v11 != v11 >> 32)
  {
    goto LABEL_7;
  }

LABEL_9:
  v11 = 0;
  v12 = 0xF000000000000000;
LABEL_10:
  v21 = v11;
  v22 = v12;
  v20 = 0;
  sub_22FF20234();
  sub_22FFB1B38();
  sub_22FEA56EC(v21, v22);
  if (!v2)
  {
    v14 = *(v3 + 16);
    v15 = *(v3 + 24);
    v16 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v16 != 2 || *(v14 + 16) == *(v14 + 24))
      {
        goto LABEL_19;
      }
    }

    else if (v16)
    {
      if (v14 == v14 >> 32)
      {
LABEL_19:
        v14 = 0;
        v15 = 0xF000000000000000;
        goto LABEL_20;
      }
    }

    else if ((v15 & 0xFF000000000000) == 0)
    {
      goto LABEL_19;
    }

    sub_22FEA5608(*(v3 + 16), *(v3 + 24));
LABEL_20:
    v21 = v14;
    v22 = v15;
    v20 = 1;
    sub_22FFB1B38();
    sub_22FEA56EC(v21, v22);
    v17 = *(v3 + 40);
    v21 = *(v3 + 32);
    LOBYTE(v22) = (v21 != 0) & v17;
    BYTE1(v22) = v21 == 0;
    v20 = 2;
    sub_22FF26560();
    sub_22FFB1B38();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_22FF24858()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x687469726F676C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x727574616E676973;
  }
}

uint64_t sub_22FF248BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22FF282C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22FF248E4(uint64_t a1)
{
  v2 = sub_22FF2650C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF24920(uint64_t a1)
{
  v2 = sub_22FF2650C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NodeType.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FFB1D08();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  if (v3 == 1)
  {
    sub_22FFB1BD8();
  }

  else
  {
    sub_22FFB1BE8();
  }

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t PrivateCloudCompute_TransparencyLog_LogConsistency.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v95 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v96 = &v94 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v97 = &v94 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v98 = &v94 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v99 = &v94 - v15;
  MEMORY[0x28223BE20](v14);
  v100 = &v94 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v101 = (&v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v102 = &v94 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v103 = &v94 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v104 = &v94 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v94 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v94 - v30;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A80, &qword_22FFB9190);
  v107 = *(v109 - 8);
  v32 = *(v107 + 64);
  MEMORY[0x28223BE20](v109);
  v34 = &v94 - v33;
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF265B4();
  v110 = v34;
  sub_22FFB1D18();
  v36 = *(v2 + *(type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0) + 20));
  v37 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__startSlh;
  swift_beginAccess();
  v108 = v36;
  sub_22FEBF3A4(v36 + v37, v29, &qword_27DAF2338, &unk_22FFBB620);
  v38 = type metadata accessor for SignedObject(0);
  v111 = *(v38 - 8);
  v39 = 1;
  v105 = *(v111 + 48);
  LODWORD(v36) = v105(v29, 1, v38);
  sub_22FEAEA34(v29, &qword_27DAF2338, &unk_22FFBB620);
  if (v36 != 1)
  {
    v40 = v104;
    sub_22FEBF3A4(v108 + v37, v104, &qword_27DAF2338, &unk_22FFBB620);
    v41 = v105;
    if (v105(v40, 1, v38) == 1)
    {
      *v31 = xmmword_22FFB33B0;
      v42 = &v31[*(v38 + 20)];
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      v43 = *(v38 + 24);
      v44 = type metadata accessor for Signature(0);
      (*(*(v44 - 8) + 56))(&v31[v43], 1, 1, v44);
      if (v41(v40, 1, v38) != 1)
      {
        sub_22FEAEA34(v40, &qword_27DAF2338, &unk_22FFBB620);
      }
    }

    else
    {
      sub_22FF264A4(v40, v31, type metadata accessor for SignedObject);
    }

    v39 = 0;
  }

  v46 = v111 + 56;
  v45 = *(v111 + 56);
  v45(v31, v39, 1, v38);
  v115 = 0;
  sub_22FF2645C(&qword_27DAF2A38, type metadata accessor for SignedObject);
  v48 = v109;
  v47 = v110;
  v49 = v106;
  sub_22FFB1B38();
  if (v49)
  {
    sub_22FEAEA34(v31, &qword_27DAF2338, &unk_22FFBB620);
    return (*(v107 + 8))(v47, v48);
  }

  else
  {
    v106 = v45;
    v111 = v46;
    sub_22FEAEA34(v31, &qword_27DAF2338, &unk_22FFBB620);
    v51 = v38;
    v52 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__endSlh;
    v53 = v108;
    swift_beginAccess();
    v54 = v102;
    sub_22FEBF3A4(v53 + v52, v102, &qword_27DAF2338, &unk_22FFBB620);
    v55 = v105;
    v56 = v105(v54, 1, v51);
    sub_22FEAEA34(v54, &qword_27DAF2338, &unk_22FFBB620);
    v57 = 1;
    v58 = v56 == 1;
    v59 = v103;
    if (!v58)
    {
      v60 = v101;
      sub_22FEBF3A4(v53 + v52, v101, &qword_27DAF2338, &unk_22FFBB620);
      if (v55(v60, 1, v51) == 1)
      {
        v61 = v55;
        *v59 = xmmword_22FFB33B0;
        v62 = &v59[*(v51 + 20)];
        _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
        v63 = *(v51 + 24);
        v64 = type metadata accessor for Signature(0);
        (*(*(v64 - 8) + 56))(&v59[v63], 1, 1, v64);
        if (v61(v60, 1, v51) != 1)
        {
          sub_22FEAEA34(v60, &qword_27DAF2338, &unk_22FFBB620);
        }

        v57 = 0;
      }

      else
      {
        sub_22FF264A4(v60, v59, type metadata accessor for SignedObject);
        v57 = 0;
      }
    }

    v106(v59, v57, 1, v51);
    v114 = 1;
    v65 = v109;
    sub_22FFB1B38();
    v105 = v51;
    sub_22FEAEA34(v59, &qword_27DAF2338, &unk_22FFBB620);
    v66 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__proofHashes;
    swift_beginAccess();
    v67 = *(v108 + v66);
    v68 = v108;
    if (*(v67 + 16))
    {
    }

    else
    {
      v67 = 0;
    }

    v113 = v67;
    v112 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A60, &qword_22FFB3928);
    sub_22FF20288();
    sub_22FFB1B38();

    v69 = v68;
    v70 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__patInclusionProof;
    swift_beginAccess();
    v71 = v99;
    sub_22FEBF3A4(v69 + v70, v99, &qword_27DAF2150, &qword_22FFB5CA0);
    v72 = type metadata accessor for LogEntry(0);
    v104 = *(v72 - 8);
    v73 = *(v104 + 48);
    v74 = 1;
    v103 = (v104 + 48);
    v102 = v73;
    v75 = (v73)(v71, 1, v72);
    sub_22FEAEA34(v71, &qword_27DAF2150, &qword_22FFB5CA0);
    v76 = v100;
    if (v75 != 1)
    {
      v77 = v98;
      sub_22FEBF3A4(v108 + v70, v98, &qword_27DAF2150, &qword_22FFB5CA0);
      v78 = v102;
      if ((v102)(v77, 1, v72) == 1)
      {
        *v76 = 0;
        *(v76 + 8) = 1;
        *(v76 + 16) = MEMORY[0x277D84F90];
        *(v76 + 24) = xmmword_22FFB33B0;
        *(v76 + 40) = 0;
        *(v76 + 48) = 0;
        *(v76 + 56) = 1;
        v79 = v76 + *(v72 + 36);
        _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
        v106((v76 + *(v72 + 40)), 1, 1, v105);
        if (v78(v77, 1, v72) != 1)
        {
          sub_22FEAEA34(v77, &qword_27DAF2150, &qword_22FFB5CA0);
        }
      }

      else
      {
        sub_22FF264A4(v77, v76, type metadata accessor for LogEntry);
      }

      v74 = 0;
    }

    v80 = v104 + 56;
    v81 = *(v104 + 56);
    v81(v76, v74, 1, v72);
    v112 = 3;
    v82 = sub_22FF2645C(&qword_27DAF2A10, type metadata accessor for LogEntry);
    sub_22FFB1B38();
    sub_22FEAEA34(v76, &qword_27DAF2150, &qword_22FFB5CA0);
    v100 = v82;
    v101 = v81;
    v104 = v80;
    v83 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__tltInclusionProof;
    v84 = v108;
    swift_beginAccess();
    v85 = v72;
    v86 = v96;
    sub_22FEBF3A4(v84 + v83, v96, &qword_27DAF2150, &qword_22FFB5CA0);
    v87 = v102;
    LODWORD(v80) = (v102)(v86, 1, v85);
    sub_22FEAEA34(v86, &qword_27DAF2150, &qword_22FFB5CA0);
    v88 = 1;
    v89 = v97;
    if (v80 != 1)
    {
      v90 = v84 + v83;
      v91 = v95;
      sub_22FEBF3A4(v90, v95, &qword_27DAF2150, &qword_22FFB5CA0);
      if (v87(v91, 1, v85) == 1)
      {
        *v89 = 0;
        *(v89 + 8) = 1;
        *(v89 + 16) = MEMORY[0x277D84F90];
        *(v89 + 24) = xmmword_22FFB33B0;
        *(v89 + 40) = 0;
        *(v89 + 48) = 0;
        *(v89 + 56) = 1;
        v92 = v89 + *(v85 + 36);
        _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
        v106((v89 + *(v85 + 40)), 1, 1, v105);
        if (v87(v91, 1, v85) != 1)
        {
          sub_22FEAEA34(v91, &qword_27DAF2150, &qword_22FFB5CA0);
        }
      }

      else
      {
        sub_22FF264A4(v91, v89, type metadata accessor for LogEntry);
      }

      v88 = 0;
    }

    v101(v89, v88, 1, v85);
    v116 = 4;
    v93 = v110;
    sub_22FFB1B38();
    sub_22FEAEA34(v89, &qword_27DAF2150, &qword_22FFB5CA0);
    return (*(v107 + 8))(v93, v65);
  }
}

unint64_t sub_22FF25964()
{
  v1 = 0x484C537472617473;
  v2 = 0x736148666F6F7270;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x484C53646E65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22FF25A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22FF283F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22FF25A40(uint64_t a1)
{
  v2 = sub_22FF265B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF25A7C(uint64_t a1)
{
  v2 = sub_22FF265B4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22FF25AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  Img4DecodeInit(a1, v3, a3);
  if (v4)
  {
    v5 = v4;
    sub_22FF28604();
    swift_allocError();
    *v6 = v5;
    *(v6 + 4) = 0;
    swift_willThrow();
  }
}

uint64_t sub_22FF25B4C(int *a1, void *a2, uint64_t a3)
{
  result = sub_22FFB0708();
  v7 = *a1;
  v8 = a1[1];
  if (v8 < v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = *(a1 + 1);

  result = sub_22FFB0588();
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v10 = result;
  result = sub_22FFB05B8();
  v11 = v7 - result;
  if (__OFSUB__(v7, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = v8 - v7;
  v13 = sub_22FFB05A8();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  Img4DecodeCopyManifestTrustedBootPolicyMeasurement(a2, sub_22FF25AD8, a3, v10 + v11, v14);
  if (v15)
  {
    v16 = v15;
    sub_22FF28604();
    swift_allocError();
    *v17 = v16;
    *(v17 + 4) = 2;
    swift_willThrow();
  }
}

unint64_t sub_22FF25C48()
{
  result = qword_27DAF2910;
  if (!qword_27DAF2910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2910);
  }

  return result;
}

unint64_t sub_22FF25C9C()
{
  result = qword_27DAF2918;
  if (!qword_27DAF2918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2918);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_22FF25D40()
{
  result = qword_27DAF2928;
  if (!qword_27DAF2928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2928);
  }

  return result;
}

unint64_t sub_22FF25D94()
{
  result = qword_27DAF2938;
  if (!qword_27DAF2938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF2930, &qword_22FFB9128);
    sub_22FF2645C(&qword_27DAF2940, type metadata accessor for Proto_SealedHash);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2938);
  }

  return result;
}

unint64_t sub_22FF25E50()
{
  result = qword_27DAF2950;
  if (!qword_27DAF2950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2950);
  }

  return result;
}

unint64_t sub_22FF25EA4()
{
  result = qword_27DAF2958;
  if (!qword_27DAF2958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2958);
  }

  return result;
}

unint64_t sub_22FF25EF8()
{
  result = qword_27DAF2968;
  if (!qword_27DAF2968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF2960, &qword_22FFB9138);
    sub_22FF2645C(&qword_27DAF2970, type metadata accessor for Proto_SealedHash.Entry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2968);
  }

  return result;
}

unint64_t sub_22FF25FAC()
{
  result = qword_27DAF2980;
  if (!qword_27DAF2980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2980);
  }

  return result;
}

unint64_t sub_22FF26000()
{
  result = qword_27DAF2988;
  if (!qword_27DAF2988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF1540, &qword_22FFB2D78);
    sub_22FF20234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2988);
  }

  return result;
}

uint64_t sub_22FF2608C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22FF260EC()
{
  result = qword_27DAF29B0;
  if (!qword_27DAF29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF29B0);
  }

  return result;
}

unint64_t sub_22FF26140()
{
  result = qword_27DAF29C0;
  if (!qword_27DAF29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF29C0);
  }

  return result;
}

unint64_t sub_22FF26194()
{
  result = qword_27DAF29D0;
  if (!qword_27DAF29D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF29D0);
  }

  return result;
}

unint64_t sub_22FF261E8()
{
  result = qword_27DAF29E0;
  if (!qword_27DAF29E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF29D8, &qword_22FFC0350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF29E0);
  }

  return result;
}

unint64_t sub_22FF26264()
{
  result = qword_27DAF29F0;
  if (!qword_27DAF29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF29F0);
  }

  return result;
}

unint64_t sub_22FF262B8()
{
  result = qword_27DAF2A08;
  if (!qword_27DAF2A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2A08);
  }

  return result;
}

unint64_t sub_22FF2630C()
{
  result = qword_27DAF2A28;
  if (!qword_27DAF2A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2A28);
  }

  return result;
}

unint64_t sub_22FF26360()
{
  result = qword_27DAF2A30;
  if (!qword_27DAF2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2A30);
  }

  return result;
}

unint64_t sub_22FF263B4()
{
  result = qword_27DAF2A40;
  if (!qword_27DAF2A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2A40);
  }

  return result;
}

unint64_t sub_22FF26408()
{
  result = qword_27DAF2A58;
  if (!qword_27DAF2A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2A58);
  }

  return result;
}

uint64_t sub_22FF2645C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FF264A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22FF2650C()
{
  result = qword_27DAF2A70;
  if (!qword_27DAF2A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2A70);
  }

  return result;
}

unint64_t sub_22FF26560()
{
  result = qword_27DAF2A78;
  if (!qword_27DAF2A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2A78);
  }

  return result;
}

unint64_t sub_22FF265B4()
{
  result = qword_27DAF2A88;
  if (!qword_27DAF2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2A88);
  }

  return result;
}

uint64_t sub_22FF26698(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_22FF26728(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s10CodingKeysOwet_2(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10CodingKeysOwst_2(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22FF2696C()
{
  result = qword_27DAF2A90;
  if (!qword_27DAF2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2A90);
  }

  return result;
}

unint64_t sub_22FF269C4()
{
  result = qword_27DAF2A98;
  if (!qword_27DAF2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2A98);
  }

  return result;
}

unint64_t sub_22FF26A1C()
{
  result = qword_27DAF2AA0;
  if (!qword_27DAF2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2AA0);
  }

  return result;
}

unint64_t sub_22FF26A74()
{
  result = qword_27DAF2AA8;
  if (!qword_27DAF2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2AA8);
  }

  return result;
}

unint64_t sub_22FF26ACC()
{
  result = qword_27DAF2AB0;
  if (!qword_27DAF2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2AB0);
  }

  return result;
}

unint64_t sub_22FF26B24()
{
  result = qword_27DAF2AB8;
  if (!qword_27DAF2AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2AB8);
  }

  return result;
}

unint64_t sub_22FF26B7C()
{
  result = qword_27DAF2AC0;
  if (!qword_27DAF2AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2AC0);
  }

  return result;
}

unint64_t sub_22FF26BD4()
{
  result = qword_27DAF2AC8;
  if (!qword_27DAF2AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2AC8);
  }

  return result;
}

unint64_t sub_22FF26C2C()
{
  result = qword_27DAF2AD0;
  if (!qword_27DAF2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2AD0);
  }

  return result;
}

unint64_t sub_22FF26C84()
{
  result = qword_27DAF2AD8;
  if (!qword_27DAF2AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2AD8);
  }

  return result;
}

unint64_t sub_22FF26CDC()
{
  result = qword_27DAF2AE0;
  if (!qword_27DAF2AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2AE0);
  }

  return result;
}

unint64_t sub_22FF26D34()
{
  result = qword_27DAF2AE8;
  if (!qword_27DAF2AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2AE8);
  }

  return result;
}

unint64_t sub_22FF26D8C()
{
  result = qword_27DAF2AF0;
  if (!qword_27DAF2AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2AF0);
  }

  return result;
}

unint64_t sub_22FF26DE4()
{
  result = qword_27DAF2AF8;
  if (!qword_27DAF2AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2AF8);
  }

  return result;
}

unint64_t sub_22FF26E3C()
{
  result = qword_27DAF2B00;
  if (!qword_27DAF2B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B00);
  }

  return result;
}

unint64_t sub_22FF26E94()
{
  result = qword_27DAF2B08;
  if (!qword_27DAF2B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B08);
  }

  return result;
}

unint64_t sub_22FF26EEC()
{
  result = qword_27DAF2B10;
  if (!qword_27DAF2B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B10);
  }

  return result;
}

unint64_t sub_22FF26F44()
{
  result = qword_27DAF2B18;
  if (!qword_27DAF2B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B18);
  }

  return result;
}

unint64_t sub_22FF26F9C()
{
  result = qword_27DAF2B20;
  if (!qword_27DAF2B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B20);
  }

  return result;
}

unint64_t sub_22FF26FF4()
{
  result = qword_27DAF2B28;
  if (!qword_27DAF2B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B28);
  }

  return result;
}

unint64_t sub_22FF2704C()
{
  result = qword_27DAF2B30;
  if (!qword_27DAF2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B30);
  }

  return result;
}

unint64_t sub_22FF270A4()
{
  result = qword_27DAF2B38;
  if (!qword_27DAF2B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B38);
  }

  return result;
}

unint64_t sub_22FF270FC()
{
  result = qword_27DAF2B40;
  if (!qword_27DAF2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B40);
  }

  return result;
}

unint64_t sub_22FF27154()
{
  result = qword_27DAF2B48;
  if (!qword_27DAF2B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B48);
  }

  return result;
}

unint64_t sub_22FF271AC()
{
  result = qword_27DAF2B50;
  if (!qword_27DAF2B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B50);
  }

  return result;
}

unint64_t sub_22FF27204()
{
  result = qword_27DAF2B58;
  if (!qword_27DAF2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B58);
  }

  return result;
}

unint64_t sub_22FF2725C()
{
  result = qword_27DAF2B60;
  if (!qword_27DAF2B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B60);
  }

  return result;
}

unint64_t sub_22FF272B4()
{
  result = qword_27DAF2B68;
  if (!qword_27DAF2B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B68);
  }

  return result;
}

unint64_t sub_22FF2730C()
{
  result = qword_27DAF2B70;
  if (!qword_27DAF2B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B70);
  }

  return result;
}

unint64_t sub_22FF27364()
{
  result = qword_27DAF2B78;
  if (!qword_27DAF2B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B78);
  }

  return result;
}

unint64_t sub_22FF273BC()
{
  result = qword_27DAF2B80;
  if (!qword_27DAF2B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B80);
  }

  return result;
}

unint64_t sub_22FF27414()
{
  result = qword_27DAF2B88;
  if (!qword_27DAF2B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B88);
  }

  return result;
}

unint64_t sub_22FF2746C()
{
  result = qword_27DAF2B90;
  if (!qword_27DAF2B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B90);
  }

  return result;
}

unint64_t sub_22FF274C4()
{
  result = qword_27DAF2B98;
  if (!qword_27DAF2B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2B98);
  }

  return result;
}

unint64_t sub_22FF2751C()
{
  result = qword_27DAF2BA0;
  if (!qword_27DAF2BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2BA0);
  }

  return result;
}

unint64_t sub_22FF27574()
{
  result = qword_27DAF2BA8;
  if (!qword_27DAF2BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2BA8);
  }

  return result;
}

unint64_t sub_22FF275CC()
{
  result = qword_27DAF2BB0;
  if (!qword_27DAF2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2BB0);
  }

  return result;
}

unint64_t sub_22FF27624()
{
  result = qword_27DAF2BB8;
  if (!qword_27DAF2BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2BB8);
  }

  return result;
}

unint64_t sub_22FF2767C()
{
  result = qword_27DAF2BC0;
  if (!qword_27DAF2BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2BC0);
  }

  return result;
}

unint64_t sub_22FF276D4()
{
  result = qword_27DAF2BC8;
  if (!qword_27DAF2BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2BC8);
  }

  return result;
}

unint64_t sub_22FF2772C()
{
  result = qword_27DAF2BD0;
  if (!qword_27DAF2BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2BD0);
  }

  return result;
}

uint64_t sub_22FF27780(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_22FFB0738();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_22FFB0588();
  if (v3)
  {
    result = sub_22FFB05B8();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_22FFB05A8();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_22FF55698(v3, v7);

  return v8;
}

uint64_t sub_22FF27864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFB06F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22FFB06E8();
  if (a2)
  {
    v11 = sub_22FFB05D8();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();

    v14 = sub_22FFB0568();
    (*(v7 + 16))(v10, a3, v6);
    if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277CC92A8])
    {
      v15 = sub_22FFB05C8();
      *v16 |= 0x8000000000000000;
      v15(v20, 0);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    v18 = sub_22FF27780(v14, a2);
  }

  else
  {
    v17 = sub_22FFB06E8();
    v17(a1, 0);

    v18 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v18;
}

uint64_t sub_22FF27A9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001CLL && 0x800000022FFCA980 == a2;
  if (v4 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365747441706573 && a2 == 0xEE006E6F69746174 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74656B6369547061 && a2 == 0xE800000000000000 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614864656C616573 && a2 == 0xEC00000073656873 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61746144707061 && a2 == 0xE700000000000000 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726970784579656BLL && a2 == 0xED00006E6F697461 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022FFCA9A0 == a2 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6F506C61636F6CLL && a2 == 0xEB00000000796369 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x66696E614D726673 && a2 == 0xEB00000000747365)
  {

    return 8;
  }

  else
  {
    v6 = sub_22FFB1BC8();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_22FF27DA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747365676964 && a2 == 0xE600000000000000;
  if (v4 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7367616C66 && a2 == 0xE500000000000000 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x78657470797263 && a2 == 0xE700000000000000 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5378657470797263 && a2 == 0xEB00000000746C61 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F43657275636573 && a2 == 0xEC0000006769666ELL || (sub_22FFB1BC8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_22FFB1BC8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_22FF27FA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972746E65 && a2 == 0xE500000000000000;
  if (v4 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22FFB1BC8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_22FF280B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65707954676F6CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6843507 && a2 == 0xE300000000000000 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000022FFCA9C0 == a2 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574794265646F6ELL && a2 == 0xE900000000000073 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69736F5065646F6ELL && a2 == 0xEC0000006E6F6974 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6570795465646F6ELL && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_22FFB1BC8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_22FF282C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x727574616E676973 && a2 == 0xE900000000000065;
  if (v4 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022FFCA9E0 == a2 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x687469726F676C61 && a2 == 0xE90000000000006DLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_22FFB1BC8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_22FF283F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x484C537472617473 && a2 == 0xE800000000000000;
  if (v4 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x484C53646E65 && a2 == 0xE600000000000000 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736148666F6F7270 && a2 == 0xEB00000000736568 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022FFCA480 == a2 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022FFCA4A0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_22FFB1BC8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_22FF285B0()
{
  result = qword_28148F370;
  if (!qword_28148F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F370);
  }

  return result;
}

unint64_t sub_22FF28604()
{
  result = qword_27DAF2BD8;
  if (!qword_27DAF2BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2BD8);
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

uint64_t _s5ErrorOwet_1(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 5))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 4);
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

uint64_t _s5ErrorOwst_1(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_22FF286F8(uint64_t a1)
{
  if (*(a1 + 4) <= 2u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_22FF28710(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease.transparencyProofs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0) + 24);
  sub_22FEAEA34(v1 + v3, &qword_27DAF2118, &unk_22FFB5C70);
  sub_22FF2A164(a1, v1 + v3, type metadata accessor for Proto_TransparencyProofs);
  v4 = type metadata accessor for Proto_TransparencyProofs(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void PrivateCloudCompute_ReleaseMetadata.schemaVersion.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.schemaVersion.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.releaseCreation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FEBF3A4(v1 + *(v7 + 40), v6, &qword_27DAF1520, &qword_22FFB3A30);
  v8 = sub_22FFB0EE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_22FFB0ED8();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF1520, &qword_22FFB3A30);
  }

  return result;
}

uint64_t sub_22FF28A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FEBF3A4(a1 + *(v8 + 40), v7, &qword_27DAF1520, &qword_22FFB3A30);
  v9 = sub_22FFB0EE8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_22FFB0ED8();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF1520, &qword_22FFB3A30);
  }

  return result;
}

uint64_t sub_22FF28B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFB0EE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 40);
  sub_22FEAEA34(a2 + v9, &qword_27DAF1520, &qword_22FFB3A30);
  (*(v5 + 32))(a2 + v9, v8, v4);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.releaseCreation.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 40);
  sub_22FEAEA34(v1 + v3, &qword_27DAF1520, &qword_22FFB3A30);
  v4 = sub_22FFB0EE8();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*PrivateCloudCompute_ReleaseMetadata.releaseCreation.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30) - 8) + 64);
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
  v9 = sub_22FFB0EE8();
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
  v15 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 40);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF1520, &qword_22FFB3A30);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_22FFB0ED8();
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF1520, &qword_22FFB3A30);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_22FF28FB0;
}

BOOL PrivateCloudCompute_ReleaseMetadata.hasReleaseCreation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FEBF3A4(v0 + *(v5 + 40), v4, &qword_27DAF1520, &qword_22FFB3A30);
  v6 = sub_22FFB0EE8();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22FEAEA34(v4, &qword_27DAF1520, &qword_22FFB3A30);
  return v7;
}

Swift::Void __swiftcall PrivateCloudCompute_ReleaseMetadata.clearReleaseCreation()()
{
  v1 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 40);
  sub_22FEAEA34(v0 + v1, &qword_27DAF1520, &qword_22FFB3A30);
  v2 = sub_22FFB0EE8();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.releaseDigest.getter()
{
  v1 = *(v0 + 16);
  sub_22FEA5608(v1, *(v0 + 24));
  return v1;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.releaseDigest.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.assets.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.darwinInit.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D38, &qword_22FFBA2F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FEBF3A4(v1 + *(v7 + 44), v6, &qword_27DAF2D38, &qword_22FFBA2F0);
  v8 = sub_22FFB0F38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_22FFB0F28();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF2D38, &qword_22FFBA2F0);
  }

  return result;
}

uint64_t sub_22FF29388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D38, &qword_22FFBA2F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FEBF3A4(a1 + *(v8 + 44), v7, &qword_27DAF2D38, &qword_22FFBA2F0);
  v9 = sub_22FFB0F38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_22FFB0F28();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2D38, &qword_22FFBA2F0);
  }

  return result;
}

uint64_t sub_22FF294F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFB0F38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 44);
  sub_22FEAEA34(a2 + v9, &qword_27DAF2D38, &qword_22FFBA2F0);
  (*(v5 + 32))(a2 + v9, v8, v4);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.darwinInit.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 44);
  sub_22FEAEA34(v1 + v3, &qword_27DAF2D38, &qword_22FFBA2F0);
  v4 = sub_22FFB0F38();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*PrivateCloudCompute_ReleaseMetadata.darwinInit.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D38, &qword_22FFBA2F0) - 8) + 64);
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
  v9 = sub_22FFB0F38();
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
  v15 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 44);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF2D38, &qword_22FFBA2F0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_22FFB0F28();
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2D38, &qword_22FFBA2F0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_22FF29908;
}

void sub_22FF2991C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 12);
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    (*(v11 + 16))((*a1)[4], v9, v10);
    sub_22FEAEA34(v13 + v7, a3, a4);
    (*(v11 + 32))(v13 + v7, v8, v10);
    (*(v11 + 56))(v13 + v7, 0, 1, v10);
    (*(v11 + 8))(v9, v10);
  }

  else
  {
    sub_22FEAEA34(v13 + v7, a3, a4);
    (*(v11 + 32))(v13 + v7, v9, v10);
    (*(v11 + 56))(v13 + v7, 0, 1, v10);
  }

  free(v9);
  free(v8);
  free(v12);

  free(v6);
}

BOOL PrivateCloudCompute_ReleaseMetadata.hasDarwinInit.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D38, &qword_22FFBA2F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FEBF3A4(v0 + *(v5 + 44), v4, &qword_27DAF2D38, &qword_22FFBA2F0);
  v6 = sub_22FFB0F38();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22FEAEA34(v4, &qword_27DAF2D38, &qword_22FFBA2F0);
  return v7;
}

Swift::Void __swiftcall PrivateCloudCompute_ReleaseMetadata.clearDarwinInit()()
{
  v1 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 44);
  sub_22FEAEA34(v0 + v1, &qword_27DAF2D38, &qword_22FFBA2F0);
  v2 = sub_22FFB0F38();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.requirements.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.application.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D40, &qword_22FFBA2F8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FEBF3A4(v1 + *(v7 + 48), v6, &qword_27DAF2D40, &qword_22FFBA2F8);
  v8 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22FF2A164(v6, a1, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v10 = a1 + *(v8 + 20);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF2D40, &qword_22FFBA2F8);
  }

  return result;
}

uint64_t sub_22FF29DB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D40, &qword_22FFBA2F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FEBF3A4(a1 + *(v8 + 48), v7, &qword_27DAF2D40, &qword_22FFBA2F8);
  v9 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22FF2A164(v7, a2, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v11 = a2 + *(v9 + 20);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2D40, &qword_22FFBA2F8);
  }

  return result;
}

uint64_t sub_22FF29F1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF2B26C(a1, v8, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
  v9 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 48);
  sub_22FEAEA34(a2 + v9, &qword_27DAF2D40, &qword_22FFBA2F8);
  sub_22FF2A164(v8, a2 + v9, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.application.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 48);
  sub_22FEAEA34(v1 + v3, &qword_27DAF2D40, &qword_22FFBA2F8);
  sub_22FF2A164(a1, v1 + v3, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
  v4 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Application.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0) + 20);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF2A164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*PrivateCloudCompute_ReleaseMetadata.application.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D40, &qword_22FFBA2F8) - 8) + 64);
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
  v9 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
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
  v15 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 48);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF2D40, &qword_22FFBA2F8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v17 = v14 + *(v9 + 20);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2D40, &qword_22FFBA2F8);
    }
  }

  else
  {
    sub_22FF2A164(v8, v14, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
  }

  return sub_22FF2A3E4;
}

BOOL PrivateCloudCompute_ReleaseMetadata.hasApplication.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D40, &qword_22FFBA2F8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FEBF3A4(v0 + *(v5 + 48), v4, &qword_27DAF2D40, &qword_22FFBA2F8);
  v6 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22FEAEA34(v4, &qword_27DAF2D40, &qword_22FFBA2F8);
  return v7;
}

Swift::Void __swiftcall PrivateCloudCompute_ReleaseMetadata.clearApplication()()
{
  v1 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 48);
  sub_22FEAEA34(v0 + v1, &qword_27DAF2D40, &qword_22FFBA2F8);
  v2 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.buildVersion.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.buildVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 36);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 36);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t PrivateCloudCompute_ReleaseMetadata.SchemaVersion.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.SchemaVersion.rawValue.getter()
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

uint64_t sub_22FF2A7C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF2D6A8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t PrivateCloudCompute_ReleaseMetadata.AssetType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 6;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FF2A854(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF32AA4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t PrivateCloudCompute_ReleaseMetadata.FileType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FF2A8E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF32AF8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t PrivateCloudCompute_ReleaseMetadata.DigestAlg.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FF2A968(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF3295C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Digest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_22FFB33B0;
  v1 = a1 + *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0) + 24);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Asset.digest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D48, &qword_22FFBA300);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0);
  sub_22FEBF3A4(v1 + *(v7 + 36), v6, &qword_27DAF2D48, &qword_22FFBA300);
  v8 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22FF2A164(v6, a1, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_22FFB33B0;
  v10 = a1 + *(v8 + 24);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF2D48, &qword_22FFBA300);
  }

  return result;
}

uint64_t sub_22FF2ACA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D48, &qword_22FFBA300);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0);
  sub_22FEBF3A4(a1 + *(v8 + 36), v7, &qword_27DAF2D48, &qword_22FFBA300);
  v9 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22FF2A164(v7, a2, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = xmmword_22FFB33B0;
  v11 = a2 + *(v9 + 24);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2D48, &qword_22FFBA300);
  }

  return result;
}

uint64_t sub_22FF2AE1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF2B26C(a1, v8, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
  v9 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 36);
  sub_22FEAEA34(a2 + v9, &qword_27DAF2D48, &qword_22FFBA300);
  sub_22FF2A164(v8, a2 + v9, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Asset.digest.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 36);
  sub_22FEAEA34(v1 + v3, &qword_27DAF2D48, &qword_22FFBA300);
  sub_22FF2A164(a1, v1 + v3, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
  v4 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*PrivateCloudCompute_ReleaseMetadata.Asset.digest.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D48, &qword_22FFBA300) - 8) + 64);
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
  v9 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
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
  v15 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 36);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF2D48, &qword_22FFBA300);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = xmmword_22FFB33B0;
    v17 = v14 + *(v9 + 24);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2D48, &qword_22FFBA300);
    }
  }

  else
  {
    sub_22FF2A164(v8, v14, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
  }

  return sub_22FF2B230;
}

uint64_t sub_22FF2B26C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FF2B2D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL PrivateCloudCompute_ReleaseMetadata.Asset.hasDigest.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D48, &qword_22FFBA300);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0);
  sub_22FEBF3A4(v0 + *(v5 + 36), v4, &qword_27DAF2D48, &qword_22FFBA300);
  v6 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22FEAEA34(v4, &qword_27DAF2D48, &qword_22FFBA300);
  return v7;
}

Swift::Void __swiftcall PrivateCloudCompute_ReleaseMetadata.Asset.clearDigest()()
{
  v1 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 36);
  sub_22FEAEA34(v0 + v1, &qword_27DAF2D48, &qword_22FFBA300);
  v2 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Asset.variant.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Asset.variant.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Asset.ticket.getter()
{
  v1 = (v0 + *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 40));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >> 60 != 15)
  {
    v4 = v1[1];
  }

  sub_22FEBF8F0(*v1, v2);
  return v3;
}

uint64_t sub_22FF2B58C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 40));
  v5 = *v4;
  v6 = v4[1];
  sub_22FEA5608(v2, v3);
  result = sub_22FEA56EC(v5, v6);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Asset.ticket.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 40);
  result = sub_22FEA56EC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*PrivateCloudCompute_ReleaseMetadata.Asset.ticket.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 40);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
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

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_22FEBF8F0(v5, v6);
  return sub_22FF2B6AC;
}

uint64_t sub_22FF2B6AC(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) + *(a1 + 24);
  v4 = *a1;
  v5 = *v3;
  v6 = *(v3 + 8);
  if (a2)
  {
    sub_22FEA5608(*a1, v2);
    sub_22FEA56EC(v5, v6);
    *v3 = v4;
    *(v3 + 8) = v2;

    return sub_22FEA55AC(v4, v2);
  }

  else
  {
    result = sub_22FEA56EC(*v3, *(v3 + 8));
    *v3 = v4;
    *(v3 + 8) = v2;
  }

  return result;
}

Swift::Void __swiftcall PrivateCloudCompute_ReleaseMetadata.Asset.clearTicket()()
{
  v1 = v0 + *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 40);
  sub_22FEA56EC(*v1, *(v1 + 8));
  *v1 = xmmword_22FFB2D00;
}

void PrivateCloudCompute_ReleaseMetadata.Asset.fileType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Asset.fileType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Asset.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 32);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Asset.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 32);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

double PrivateCloudCompute_ReleaseMetadata.Asset.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  v2 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0);
  v3 = a1 + v2[8];
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = v2[9];
  v5 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  result = 0.0;
  *(a1 + v2[10]) = xmmword_22FFB2D00;
  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.ToolRequirement.availability.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.ToolRequirement.availability.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_22FF2BAB8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF2BB74(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t PrivateCloudCompute_ReleaseMetadata.ToolRequirement.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement(0) + 24);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Application.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Application.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 16) = xmmword_22FFB33B0;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  v3 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  v4 = a1 + v3[9];
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v5 = v3[10];
  v6 = sub_22FFB0EE8();
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v3[11];
  v8 = sub_22FFB0F38();
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = v3[12];
  v10 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a1 + v9, 1, 1, v10);
}

uint64_t PrivateCloudCompute_ProxyNodeMetadata.proxiedRelease.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_22FF2BF2C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF2BFE8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease.digest.getter()
{
  v1 = *v0;
  sub_22FEA5608(*v0, *(v0 + 8));
  return v1;
}

uint64_t PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease.digest.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease.transparencyProofs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0);
  sub_22FEBF3A4(v1 + *(v7 + 24), v6, &qword_27DAF2118, &unk_22FFB5C70);
  v8 = type metadata accessor for Proto_TransparencyProofs(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22FF2A164(v6, a1, type metadata accessor for Proto_TransparencyProofs);
  }

  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF2118, &unk_22FFB5C70);
  }

  return result;
}

uint64_t sub_22FF2C2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0);
  sub_22FEBF3A4(a1 + *(v8 + 24), v7, &qword_27DAF2118, &unk_22FFB5C70);
  v9 = type metadata accessor for Proto_TransparencyProofs(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22FF2A164(v7, a2, type metadata accessor for Proto_TransparencyProofs);
  }

  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2118, &unk_22FFB5C70);
  }

  return result;
}

uint64_t sub_22FF2C470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_TransparencyProofs(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF2B26C(a1, v8, type metadata accessor for Proto_TransparencyProofs);
  v9 = *(type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0) + 24);
  sub_22FEAEA34(a2 + v9, &qword_27DAF2118, &unk_22FFB5C70);
  sub_22FF2A164(v8, a2 + v9, type metadata accessor for Proto_TransparencyProofs);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease.transparencyProofs.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70) - 8) + 64);
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
  v9 = type metadata accessor for Proto_TransparencyProofs(0);
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
  v15 = *(type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0) + 24);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF2118, &unk_22FFB5C70);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2118, &unk_22FFB5C70);
    }
  }

  else
  {
    sub_22FF2A164(v8, v14, type metadata accessor for Proto_TransparencyProofs);
  }

  return sub_22FF2C7F4;
}

void sub_22FF2C830(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v17 = (*a1)[1];
  if (a2)
  {
    sub_22FF2B26C(v12, v11, a6);
    sub_22FEAEA34(v15 + v10, a3, a4);
    sub_22FF2A164(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    sub_22FF2B2D4(v12, a6);
  }

  else
  {
    sub_22FEAEA34(v15 + v10, a3, a4);
    sub_22FF2A164(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

BOOL PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease.hasTransparencyProofs.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0);
  sub_22FEBF3A4(v0 + *(v5 + 24), v4, &qword_27DAF2118, &unk_22FFB5C70);
  v6 = type metadata accessor for Proto_TransparencyProofs(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_22FEAEA34(v4, &qword_27DAF2118, &unk_22FFB5C70);
  return v7;
}

Swift::Void __swiftcall PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease.clearTransparencyProofs()()
{
  v1 = *(type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0) + 24);
  sub_22FEAEA34(v0 + v1, &qword_27DAF2118, &unk_22FFB5C70);
  v2 = type metadata accessor for Proto_TransparencyProofs(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease.init()@<X0>(char *a1@<X8>)
{
  *a1 = xmmword_22FFB33B0;
  v2 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0);
  v3 = &a1[*(v2 + 20)];
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Proto_TransparencyProofs(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t PrivateCloudCompute_ProxyNodeMetadata.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata(0) + 20);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF2CC54()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2BE0);
  __swift_project_value_buffer(v0, qword_27DAF2BE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22FFB6390;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "schema_version";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_22FFB1298();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "release_creation";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "release_digest";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "assets";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v14 = *MEMORY[0x277D21870];
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "darwin_init";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "requirements";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "application";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "build_version";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v8();
  return sub_22FFB12A8();
}

uint64_t PrivateCloudCompute_ReleaseMetadata.decodeMessage<A>(decoder:)()
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
        if (result > 6)
        {
          if (result == 7)
          {
            sub_22FF2D374();
          }

          else if (result == 8)
          {
            sub_22FFB10E8();
          }
        }

        else
        {
          if (result != 5)
          {
            v3 = v0;
            type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement(0);
            sub_22FF2DB34(&qword_27DAF2D60, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement);
LABEL_17:
            v0 = v3;
            sub_22FFB1118();
            goto LABEL_5;
          }

          sub_22FF2D2C0();
        }
      }

      else if (result > 2)
      {
        if (result != 3)
        {
          v3 = v0;
          type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0);
          sub_22FF2DB34(&qword_27DAF2D58, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset);
          goto LABEL_17;
        }

        sub_22FFB10C8();
      }

      else if (result == 1)
      {
        sub_22FF2D6A8();
        sub_22FFB1098();
      }

      else if (result == 2)
      {
        sub_22FF2D20C();
      }

LABEL_5:
      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t sub_22FF2D20C()
{
  v0 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 40);
  sub_22FFB0EE8();
  sub_22FF2DB34(&qword_28148F1E0, MEMORY[0x277D21570]);
  return sub_22FFB1128();
}

uint64_t sub_22FF2D2C0()
{
  v0 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 44);
  sub_22FFB0F38();
  sub_22FF2DB34(&qword_27DAF2FA0, MEMORY[0x277D21610]);
  return sub_22FFB1128();
}

uint64_t sub_22FF2D374()
{
  v0 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 48);
  type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  sub_22FF2DB34(&qword_27DAF2EB0, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
  return sub_22FFB1128();
}

uint64_t PrivateCloudCompute_ReleaseMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3)
  {
    v17 = *v3;
    v18 = *(v3 + 8);
    sub_22FF2D6A8();
    result = sub_22FFB1208();
    if (v4)
    {
      return result;
    }
  }

  result = sub_22FF2D6FC(v3, a1, a2, a3);
  if (v4)
  {
    return result;
  }

  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_14;
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
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v12 = v9;
    v13 = v9 >> 32;
  }

  if (v12 != v13)
  {
LABEL_13:
    sub_22FFB1228();
  }

LABEL_14:
  if (*(*(v3 + 32) + 16))
  {
    type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0);
    sub_22FF2DB34(&qword_27DAF2D58, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset);
    sub_22FFB1278();
  }

  sub_22FF2D918(v3, a1, a2, a3);
  if (*(*(v3 + 40) + 16))
  {
    type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement(0);
    sub_22FF2DB34(&qword_27DAF2D60, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement);
    sub_22FFB1278();
  }

  sub_22FF2DB7C(v3, a1, a2, a3);
  v14 = *(v3 + 56);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    sub_22FFB1248();
  }

  v16 = v3 + *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0) + 36);
  return sub_22FFB0F68();
}

unint64_t sub_22FF2D6A8()
{
  result = qword_27DAF2D50;
  if (!qword_27DAF2D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2D50);
  }

  return result;
}

uint64_t sub_22FF2D6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = sub_22FFB0EE8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FEBF3A4(a1 + *(v14 + 40), v8, &qword_27DAF1520, &qword_22FFB3A30);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22FEAEA34(v8, &qword_27DAF1520, &qword_22FFB3A30);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_22FF2DB34(&qword_28148F1E0, MEMORY[0x277D21570]);
  sub_22FFB1288();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_22FF2D918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D38, &qword_22FFBA2F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = sub_22FFB0F38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FEBF3A4(a1 + *(v14 + 44), v8, &qword_27DAF2D38, &qword_22FFBA2F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22FEAEA34(v8, &qword_27DAF2D38, &qword_22FFBA2F0);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_22FF2DB34(&qword_27DAF2FA0, MEMORY[0x277D21610]);
  sub_22FFB1288();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_22FF2DB34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FF2DB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D40, &qword_22FFBA2F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  sub_22FEBF3A4(a1 + *(v14 + 48), v8, &qword_27DAF2D40, &qword_22FFBA2F8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22FEAEA34(v8, &qword_27DAF2D40, &qword_22FFBA2F8);
  }

  sub_22FF2A164(v8, v13, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
  sub_22FF2DB34(&qword_27DAF2EB0, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
  sub_22FFB1288();
  return sub_22FF2B2D4(v13, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
}

uint64_t sub_22FF2DDE4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = xmmword_22FFB33B0;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 32) = MEMORY[0x277D84F90];
  *(a2 + 40) = v4;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  v5 = a2 + a1[9];
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v6 = a1[10];
  v7 = sub_22FFB0EE8();
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[11];
  v9 = sub_22FFB0F38();
  (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  v10 = a1[12];
  v11 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a2 + v10, 1, 1, v11);
}

uint64_t sub_22FF2DF6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF2DB34(&qword_27DAF2F78, type metadata accessor for PrivateCloudCompute_ReleaseMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF2E00C(uint64_t a1)
{
  v2 = sub_22FF2DB34(&qword_27DAF2E60, type metadata accessor for PrivateCloudCompute_ReleaseMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF2E078()
{
  sub_22FF2DB34(&qword_27DAF2E60, type metadata accessor for PrivateCloudCompute_ReleaseMetadata);

  return sub_22FFB11A8();
}

uint64_t sub_22FF2E0F8()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2BF8);
  __swift_project_value_buffer(v0, qword_27DAF2BF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SCHEMA_VERSION_UNSPECIFIED";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SCHEMA_VERSION_V1";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF2E308()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2C10);
  __swift_project_value_buffer(v0, qword_27DAF2C10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB6380;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ASSET_TYPE_UNSPECIFIED";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ASSET_TYPE_OS";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ASSET_TYPE_PCS";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ASSET_TYPE_MODEL";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "ASSET_TYPE_HOST_TOOLS";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "ASSET_TYPE_DEBUG_SHELL";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF2E618()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2C28);
  __swift_project_value_buffer(v0, qword_27DAF2C28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "FILE_TYPE_UNSPECIFIED";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FILE_TYPE_IPSW";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FILE_TYPE_DISKIMAGE";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "FILE_TYPE_APPLEARCHIVE";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF2E8A4()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2C40);
  __swift_project_value_buffer(v0, qword_27DAF2C40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DIGEST_ALG_UNSPECIFIED";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DIGEST_ALG_SHA256";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "DIGEST_ALG_SHA384";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF2EB44()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2C68);
  __swift_project_value_buffer(v0, qword_27DAF2C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "digest_alg";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  return sub_22FFB12A8();
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Digest.decodeMessage<A>(decoder:)()
{
  result = sub_22FFB1058();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22FF3295C();
        sub_22FFB1098();
      }

      else if (result == 2)
      {
        sub_22FFB10C8();
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Digest.traverse<A>(visitor:)()
{
  if (!*v0 || (v9 = *v0, v10 = *(v0 + 8), sub_22FF3295C(), result = sub_22FFB1208(), !v1))
  {
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
    }

    else
    {
      if (!v5)
      {
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

        goto LABEL_12;
      }

      v6 = v3;
      v7 = v3 >> 32;
    }

    if (v6 != v7)
    {
      goto LABEL_11;
    }

LABEL_12:
    v8 = v0 + *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0) + 24);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF2EF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = xmmword_22FFB33B0;
  v2 = a2 + *(a1 + 24);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF2EFDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF2DB34(&qword_27DAF2F70, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF2F07C(uint64_t a1)
{
  v2 = sub_22FF2DB34(&qword_27DAF2E78, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF2F0E8()
{
  sub_22FF2DB34(&qword_27DAF2E78, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);

  return sub_22FFB11A8();
}

uint64_t sub_22FF2F1B0()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2C90);
  __swift_project_value_buffer(v0, qword_27DAF2C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22FFB6380;
  v4 = v20 + v3;
  v5 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22FFB1298();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "url";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "digest";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "variant";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "ticket";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "file_type";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v18 = *MEMORY[0x277D21888];
  v8();
  return sub_22FFB12A8();
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Asset.decodeMessage<A>(decoder:)()
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

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            goto LABEL_18;
          case 5:
            v3 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 40);
            sub_22FFB10B8();
            break;
          case 6:
            v4 = v0;
            sub_22FF32AF8();
LABEL_17:
            v0 = v4;
            sub_22FFB1098();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v4 = v0;
            sub_22FF32AA4();
            goto LABEL_17;
          case 2:
LABEL_18:
            sub_22FFB10E8();
            break;
          case 3:
            sub_22FF2F5F8();
            break;
        }
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t sub_22FF2F5F8()
{
  v0 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 36);
  type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
  sub_22FF2DB34(&qword_27DAF2E78, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
  return sub_22FFB1128();
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Asset.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v14 = *v3, v16 = *(v3 + 8), sub_22FF32AA4(), result = sub_22FFB1208(), !v4))
  {
    v9 = *(v3 + 24);
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v10 || (result = sub_22FFB1248(), !v4))
    {
      result = sub_22FF2F83C(v3, a1, a2, a3);
      if (!v4)
      {
        v11 = *(v3 + 40);
        v12 = HIBYTE(v11) & 0xF;
        if ((v11 & 0x2000000000000000) == 0)
        {
          v12 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
        }

        if (v12)
        {
          sub_22FFB1248();
        }

        sub_22FF2FA58(v3);
        if (*(v3 + 48))
        {
          v15 = *(v3 + 48);
          v17 = *(v3 + 56);
          sub_22FF32AF8();
          sub_22FFB1208();
        }

        v13 = v3 + *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 32);
        return sub_22FFB0F68();
      }
    }
  }

  return result;
}

uint64_t sub_22FF2F83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D48, &qword_22FFBA300);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0);
  sub_22FEBF3A4(a1 + *(v14 + 36), v8, &qword_27DAF2D48, &qword_22FFBA300);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22FEAEA34(v8, &qword_27DAF2D48, &qword_22FFBA300);
  }

  sub_22FF2A164(v8, v13, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
  sub_22FF2DB34(&qword_27DAF2E78, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
  sub_22FFB1288();
  return sub_22FF2B2D4(v13, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
}

uint64_t sub_22FF2FA58(uint64_t a1)
{
  result = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0);
  v3 = a1 + *(result + 40);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_22FEA5608(*v3, *(v3 + 8));
    sub_22FFB1228();
    return sub_22FEA56EC(v5, v4);
  }

  return result;
}

double sub_22FF2FB44@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  v4 = a2 + a1[8];
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v5 = a1[9];
  v6 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  result = 0.0;
  *(a2 + a1[10]) = xmmword_22FFB2D00;
  return result;
}

uint64_t sub_22FF2FC48(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF2DB34(&qword_27DAF2F68, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF2FCE8(uint64_t a1)
{
  v2 = sub_22FF2DB34(&qword_27DAF2D58, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF2FD54()
{
  sub_22FF2DB34(&qword_27DAF2D58, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset);

  return sub_22FFB11A8();
}

uint64_t sub_22FF2FDD4()
{
  result = MEMORY[0x23190DD10](0xD000000000000010, 0x800000022FFCAA90);
  qword_27DAF2CA8 = 0xD000000000000023;
  unk_27DAF2CB0 = 0x800000022FFCAA00;
  return result;
}

uint64_t sub_22FF2FE70()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2CB8);
  __swift_project_value_buffer(v0, qword_27DAF2CB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "feature";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "availability";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t PrivateCloudCompute_ReleaseMetadata.ToolRequirement.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22FFB1058();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_22FFB10E8();
    }
  }

  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.ToolRequirement.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_22FFB1248(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_22FFB1248(), !v1))
    {
      v8 = v0 + *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement(0) + 24);
      return sub_22FFB0F68();
    }
  }

  return result;
}

uint64_t static PrivateCloudCompute_ReleaseMetadata.ToolRequirement.== infix(_:_:)(void *a1, void *a2)
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

  v6 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement(0) + 24);
  sub_22FFB0F88();
  sub_22FF2DB34(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF30320(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF2DB34(&qword_27DAF2F60, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF303C0(uint64_t a1)
{
  v2 = sub_22FF2DB34(&qword_27DAF2D60, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF3042C()
{
  sub_22FF2DB34(&qword_27DAF2D60, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement);

  return sub_22FFB11A8();
}

uint64_t sub_22FF304A8(void *a1, void *a2, uint64_t a3)
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
  sub_22FF2DB34(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF305B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x23190DD10](a2, a3);
  *a4 = 0xD000000000000023;
  *a5 = 0x800000022FFCAA00;
  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Application.decodeMessage<A>(decoder:)()
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
      sub_22FFB10E8();
    }
  }

  return result;
}

uint64_t PrivateCloudCompute_ReleaseMetadata.Application.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_22FFB1248(), !v1))
  {
    v6 = v0 + *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0) + 20);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t static PrivateCloudCompute_ReleaseMetadata.Application.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_22FFB1BC8() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0) + 20);
  sub_22FFB0F88();
  sub_22FF2DB34(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF30894@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = a2 + *(a1 + 20);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF30914(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF2DB34(&qword_27DAF2F58, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF309B4(uint64_t a1)
{
  v2 = sub_22FF2DB34(&qword_27DAF2EB0, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF30A20()
{
  sub_22FF2DB34(&qword_27DAF2EB0, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);

  return sub_22FFB11A8();
}

uint64_t sub_22FF30A9C(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22FFB1BC8() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  sub_22FFB0F88();
  sub_22FF2DB34(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t PrivateCloudCompute_ProxyNodeMetadata.decodeMessage<A>(decoder:)()
{
  result = sub_22FFB1058();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0);
        sub_22FF2DB34(&qword_281491018, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
        sub_22FFB1118();
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t PrivateCloudCompute_ProxyNodeMetadata.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0), sub_22FF2DB34(&qword_281491018, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease), result = sub_22FFB1278(), !v1))
  {
    v3 = v0 + *(type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata(0) + 20);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t static PrivateCloudCompute_ProxyNodeMetadata.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_22FEEAAB4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata(0) + 20);
  sub_22FFB0F88();
  sub_22FF2DB34(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF30E70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 20);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF30EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF2DB34(&qword_27DAF2F50, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF30F88(uint64_t a1)
{
  v2 = sub_22FF2DB34(qword_281490F70, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF30FF4()
{
  sub_22FF2DB34(qword_281490F70, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata);

  return sub_22FFB11A8();
}

uint64_t sub_22FF31070(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_22FEEAAB4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_22FFB0F88();
  sub_22FF2DB34(&qword_27DAF2128, MEMORY[0x277D216C8]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF31118()
{
  result = MEMORY[0x23190DD10](0x646569786F72502ELL, 0xEF657361656C6552);
  qword_27DAF2D10 = 0xD000000000000025;
  *algn_27DAF2D18 = 0x800000022FFCAA30;
  return result;
}

uint64_t sub_22FF311B8()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2D20);
  __swift_project_value_buffer(v0, qword_27DAF2D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "digest";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "transparency_proofs";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  return sub_22FFB12A8();
}

uint64_t PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease.decodeMessage<A>(decoder:)()
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

    else if (result == 2)
    {
      sub_22FF3143C();
    }
  }

  return result;
}

uint64_t sub_22FF3143C()
{
  v0 = *(type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0) + 24);
  type metadata accessor for Proto_TransparencyProofs(0);
  sub_22FF2DB34(&qword_28148F868, type metadata accessor for Proto_TransparencyProofs);
  return sub_22FFB1128();
}

uint64_t PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
LABEL_8:
    if (v11 == v12)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_22FFB1228();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v10)
  {
    v11 = v8;
    v12 = v8 >> 32;
    goto LABEL_8;
  }

  if ((v9 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  result = sub_22FF315C8(v3, a1, a2, a3);
  if (!v4)
  {
    v14 = v3 + *(type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0) + 20);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF315C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Proto_TransparencyProofs(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0);
  sub_22FEBF3A4(a1 + *(v14 + 24), v8, &qword_27DAF2118, &unk_22FFB5C70);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22FEAEA34(v8, &qword_27DAF2118, &unk_22FFB5C70);
  }

  sub_22FF2A164(v8, v13, type metadata accessor for Proto_TransparencyProofs);
  sub_22FF2DB34(&qword_28148F868, type metadata accessor for Proto_TransparencyProofs);
  sub_22FFB1288();
  return sub_22FF2B2D4(v13, type metadata accessor for Proto_TransparencyProofs);
}

uint64_t sub_22FF31830(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22FFB1CA8();
  a1(0);
  sub_22FF2DB34(a2, a3);
  sub_22FFB1438();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF318B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_22FFB33B0;
  v4 = &a2[*(a1 + 20)];
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Proto_TransparencyProofs(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_22FF3199C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF2DB34(&qword_27DAF2F48, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF31A3C(uint64_t a1)
{
  v2 = sub_22FF2DB34(&qword_281491018, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF31AA8()
{
  sub_22FF2DB34(&qword_281491018, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);

  return sub_22FFB11A8();
}

uint64_t _s16CloudAttestation07PrivateA25Compute_ProxyNodeMetadataV14ProxiedReleaseV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_TransparencyProofs(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2120, &qword_22FFB90B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_8;
  }

  v25 = v8;
  v26 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 48);
  sub_22FEBF3A4(a1 + v17, v16, &qword_27DAF2118, &unk_22FFB5C70);
  sub_22FEBF3A4(a2 + v17, &v16[v18], &qword_27DAF2118, &unk_22FFB5C70);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_22FEAEA34(v16, &qword_27DAF2118, &unk_22FFB5C70);
LABEL_11:
      v24 = *(v26 + 20);
      sub_22FFB0F88();
      sub_22FF2DB34(&qword_27DAF2128, MEMORY[0x277D216C8]);
      v20 = sub_22FFB1478();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_22FEBF3A4(v16, v12, &qword_27DAF2118, &unk_22FFB5C70);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_22FF2B2D4(v12, type metadata accessor for Proto_TransparencyProofs);
LABEL_7:
    sub_22FEAEA34(v16, &qword_27DAF2120, &qword_22FFB90B0);
    goto LABEL_8;
  }

  v22 = v25;
  sub_22FF2A164(&v16[v18], v25, type metadata accessor for Proto_TransparencyProofs);
  v23 = _s16CloudAttestation24Proto_TransparencyProofsV2eeoiySbAC_ACtFZ_0(v12, v22);
  sub_22FF2B2D4(v22, type metadata accessor for Proto_TransparencyProofs);
  sub_22FF2B2D4(v12, type metadata accessor for Proto_TransparencyProofs);
  sub_22FEAEA34(v16, &qword_27DAF2118, &unk_22FFB5C70);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s16CloudAttestation07PrivateA23Compute_ReleaseMetadataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application(0);
  v81 = *(v4 - 8);
  v82 = v4;
  v5 = *(v81 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D40, &qword_22FFBA2F8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = (&v75 - v10);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2F88, &qword_22FFBB3B8);
  v11 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v13 = &v75 - v12;
  v14 = sub_22FFB0F38();
  v87 = *(v14 - 8);
  v88 = v14;
  v15 = *(v87 + 64);
  MEMORY[0x28223BE20](v14);
  v83 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D38, &qword_22FFBA2F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v84 = &v75 - v19;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2F90, &unk_22FFBB3C0);
  v20 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v86 = &v75 - v21;
  v22 = sub_22FFB0EE8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v75 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2870, &qword_22FFB90B8);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v75 - v33;
  v35 = *a1;
  v36 = *a2;
  if (*(a1 + 8))
  {
    v35 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v36)
    {
      if (v35 != 1)
      {
        goto LABEL_42;
      }
    }

    else if (v35)
    {
LABEL_42:
      v73 = 0;
      return v73 & 1;
    }
  }

  else if (v35 != v36)
  {
    goto LABEL_42;
  }

  v75 = v7;
  v76 = v13;
  v37 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata(0);
  v38 = *(v37 + 40);
  v39 = *(v31 + 48);
  v77 = v37;
  v78 = a1;
  sub_22FEBF3A4(a1 + v38, v34, &qword_27DAF1520, &qword_22FFB3A30);
  v40 = a2 + v38;
  v41 = a2;
  sub_22FEBF3A4(v40, &v34[v39], &qword_27DAF1520, &qword_22FFB3A30);
  v42 = *(v23 + 48);
  if (v42(v34, 1, v22) == 1)
  {
    if (v42(&v34[v39], 1, v22) == 1)
    {
      sub_22FEAEA34(v34, &qword_27DAF1520, &qword_22FFB3A30);
      goto LABEL_18;
    }

LABEL_15:
    v43 = &qword_27DAF2870;
    v44 = &qword_22FFB90B8;
    v45 = v34;
LABEL_16:
    sub_22FEAEA34(v45, v43, v44);
    goto LABEL_42;
  }

  sub_22FEBF3A4(v34, v30, &qword_27DAF1520, &qword_22FFB3A30);
  if (v42(&v34[v39], 1, v22) == 1)
  {
    (*(v23 + 8))(v30, v22);
    goto LABEL_15;
  }

  (*(v23 + 32))(v26, &v34[v39], v22);
  sub_22FF2DB34(&qword_27DAF2880, MEMORY[0x277D21570]);
  v46 = sub_22FFB1478();
  v47 = *(v23 + 8);
  v47(v26, v22);
  v47(v30, v22);
  sub_22FEAEA34(v34, &qword_27DAF1520, &qword_22FFB3A30);
  if ((v46 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_18:
  v48 = v78;
  if ((sub_22FEC3DC8(v78[2], v78[3], *(a2 + 16), *(a2 + 24)) & 1) == 0 || (sub_22FEEB6E0(v48[4], *(a2 + 32)) & 1) == 0)
  {
    goto LABEL_42;
  }

  v49 = v77;
  v50 = *(v77 + 44);
  v51 = v86;
  v52 = *(v85 + 48);
  sub_22FEBF3A4(v48 + v50, v86, &qword_27DAF2D38, &qword_22FFBA2F0);
  sub_22FEBF3A4(v41 + v50, v51 + v52, &qword_27DAF2D38, &qword_22FFBA2F0);
  v54 = v87;
  v53 = v88;
  v55 = *(v87 + 48);
  if (v55(v51, 1, v88) == 1)
  {
    if (v55(v51 + v52, 1, v53) == 1)
    {
      sub_22FEAEA34(v51, &qword_27DAF2D38, &qword_22FFBA2F0);
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v56 = v84;
  sub_22FEBF3A4(v51, v84, &qword_27DAF2D38, &qword_22FFBA2F0);
  if (v55(v51 + v52, 1, v53) == 1)
  {
    (*(v54 + 8))(v56, v53);
LABEL_25:
    v43 = &qword_27DAF2F90;
    v44 = &unk_22FFBB3C0;
    v45 = v51;
    goto LABEL_16;
  }

  v57 = v83;
  (*(v54 + 32))(v83, v51 + v52, v53);
  sub_22FF2DB34(&qword_27DAF2F98, MEMORY[0x277D21610]);
  v58 = sub_22FFB1478();
  v59 = *(v54 + 8);
  v59(v57, v53);
  v59(v56, v53);
  sub_22FEAEA34(v51, &qword_27DAF2D38, &qword_22FFBA2F0);
  if ((v58 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_27:
  if ((sub_22FEEB898(v48[5], v41[5]) & 1) == 0)
  {
    goto LABEL_42;
  }

  v60 = *(v49 + 48);
  v61 = *(v80 + 48);
  v62 = v76;
  sub_22FEBF3A4(v48 + v60, v76, &qword_27DAF2D40, &qword_22FFBA2F8);
  sub_22FEBF3A4(v41 + v60, v62 + v61, &qword_27DAF2D40, &qword_22FFBA2F8);
  v63 = v82;
  v64 = *(v81 + 48);
  if (v64(v62, 1, v82) == 1)
  {
    if (v64(v62 + v61, 1, v63) == 1)
    {
      sub_22FEAEA34(v62, &qword_27DAF2D40, &qword_22FFBA2F8);
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v65 = v79;
  sub_22FEBF3A4(v62, v79, &qword_27DAF2D40, &qword_22FFBA2F8);
  if (v64(v62 + v61, 1, v63) == 1)
  {
    sub_22FF2B2D4(v65, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
LABEL_33:
    v43 = &qword_27DAF2F88;
    v44 = &qword_22FFBB3B8;
    v45 = v62;
    goto LABEL_16;
  }

  v66 = v62 + v61;
  v67 = v75;
  sub_22FF2A164(v66, v75, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
  if ((*v65 != *v67 || v65[1] != v67[1]) && (sub_22FFB1BC8() & 1) == 0)
  {
    sub_22FF2B2D4(v75, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
    sub_22FF2B2D4(v65, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
    v43 = &qword_27DAF2D40;
    v44 = &qword_22FFBA2F8;
    v45 = v76;
    goto LABEL_16;
  }

  v68 = *(v63 + 20);
  sub_22FFB0F88();
  sub_22FF2DB34(&qword_27DAF2128, MEMORY[0x277D216C8]);
  v69 = v65;
  v70 = v75;
  v71 = sub_22FFB1478();
  sub_22FF2B2D4(v70, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
  sub_22FF2B2D4(v69, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Application);
  sub_22FEAEA34(v76, &qword_27DAF2D40, &qword_22FFBA2F8);
  if ((v71 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_38:
  if ((v48[6] != v41[6] || v48[7] != v41[7]) && (sub_22FFB1BC8() & 1) == 0)
  {
    goto LABEL_42;
  }

  v72 = *(v49 + 36);
  sub_22FFB0F88();
  sub_22FF2DB34(&qword_27DAF2128, MEMORY[0x277D216C8]);
  v73 = sub_22FFB1478();
  return v73 & 1;
}

unint64_t sub_22FF3295C()
{
  result = qword_27DAF2D70;
  if (!qword_27DAF2D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2D70);
  }

  return result;
}

uint64_t _s16CloudAttestation07PrivateA23Compute_ReleaseMetadataV6DigestV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
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

      else if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (sub_22FEC3DC8(a1[2], a1[3], a2[2], a2[3]))
  {
    v4 = *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0) + 24);
    sub_22FFB0F88();
    sub_22FF2DB34(&qword_27DAF2128, MEMORY[0x277D216C8]);
    return sub_22FFB1478() & 1;
  }

  return 0;
}

unint64_t sub_22FF32AA4()
{
  result = qword_27DAF2D80;
  if (!qword_27DAF2D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2D80);
  }

  return result;
}

unint64_t sub_22FF32AF8()
{
  result = qword_27DAF2D88;
  if (!qword_27DAF2D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2D88);
  }

  return result;
}

uint64_t _s16CloudAttestation07PrivateA23Compute_ReleaseMetadataV5AssetV2eeoiySbAE_AEtFZ_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D48, &qword_22FFBA300);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v38 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2F80, &qword_22FFBB3B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v17 = *a1;
  v18 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v18 > 2)
    {
      if (v18 == 3)
      {
        if (v17 != 3)
        {
          goto LABEL_38;
        }
      }

      else if (v18 == 4)
      {
        if (v17 != 4)
        {
          goto LABEL_38;
        }
      }

      else if (v17 != 5)
      {
        goto LABEL_38;
      }
    }

    else if (v18)
    {
      if (v18 == 1)
      {
        if (v17 != 1)
        {
          goto LABEL_38;
        }
      }

      else if (v17 != 2)
      {
        goto LABEL_38;
      }
    }

    else if (v17)
    {
      goto LABEL_38;
    }
  }

  else if (v17 != v18)
  {
    goto LABEL_38;
  }

  if ((a1[2] != *(a2 + 16) || a1[3] != *(a2 + 24)) && (sub_22FFB1BC8() & 1) == 0)
  {
    goto LABEL_38;
  }

  v19 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0);
  v20 = *(v19 + 36);
  v21 = *(v13 + 48);
  v38 = v19;
  v39 = a1;
  sub_22FEBF3A4(a1 + v20, v16, &qword_27DAF2D48, &qword_22FFBA300);
  sub_22FEBF3A4(a2 + v20, &v16[v21], &qword_27DAF2D48, &qword_22FFBA300);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_22FEAEA34(v16, &qword_27DAF2D48, &qword_22FFBA300);
      goto LABEL_22;
    }

LABEL_20:
    sub_22FEAEA34(v16, &qword_27DAF2F80, &qword_22FFBB3B0);
    goto LABEL_38;
  }

  sub_22FEBF3A4(v16, v12, &qword_27DAF2D48, &qword_22FFBA300);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_22FF2B2D4(v12, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
    goto LABEL_20;
  }

  sub_22FF2A164(&v16[v21], v8, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
  v23 = _s16CloudAttestation07PrivateA23Compute_ReleaseMetadataV6DigestV2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_22FF2B2D4(v8, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
  sub_22FF2B2D4(v12, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Digest);
  sub_22FEAEA34(v16, &qword_27DAF2D48, &qword_22FFBA300);
  if ((v23 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_22:
  v24 = v39;
  if ((v39[4] != *(a2 + 32) || v39[5] != *(a2 + 40)) && (sub_22FFB1BC8() & 1) == 0)
  {
    goto LABEL_38;
  }

  v25 = v38;
  v26 = *(v38 + 40);
  v28 = *(v24 + v26);
  v27 = *(v24 + v26 + 8);
  v29 = (a2 + v26);
  v31 = *v29;
  v30 = v29[1];
  if (v27 >> 60 == 15)
  {
    if (v30 >> 60 == 15)
    {
      sub_22FEBF8F0(v28, v27);
      sub_22FEBF8F0(v31, v30);
      sub_22FEA56EC(v28, v27);
      goto LABEL_41;
    }

LABEL_37:
    sub_22FEBF8F0(v28, v27);
    sub_22FEBF8F0(v31, v30);
    sub_22FEA56EC(v28, v27);
    sub_22FEA56EC(v31, v30);
    goto LABEL_38;
  }

  if (v30 >> 60 == 15)
  {
    goto LABEL_37;
  }

  sub_22FEBF8F0(v28, v27);
  sub_22FEBF8F0(v31, v30);
  v34 = sub_22FEC3DC8(v28, v27, v31, v30);
  sub_22FEA56EC(v31, v30);
  sub_22FEA56EC(v28, v27);
  if ((v34 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_41:
  v35 = v24[6];
  v36 = *(a2 + 48);
  if (*(a2 + 56) != 1)
  {
    if (v35 != v36)
    {
      goto LABEL_38;
    }

LABEL_47:
    v37 = *(v25 + 32);
    sub_22FFB0F88();
    sub_22FF2DB34(&qword_27DAF2128, MEMORY[0x277D216C8]);
    v32 = sub_22FFB1478();
    return v32 & 1;
  }

  if (v36 > 1)
  {
    if (v36 == 2)
    {
      if (v35 != 2)
      {
        goto LABEL_38;
      }
    }

    else if (v35 != 3)
    {
      goto LABEL_38;
    }

    goto LABEL_47;
  }

  if (v36)
  {
    if (v35 != 1)
    {
      goto LABEL_38;
    }

    goto LABEL_47;
  }

  if (!v35)
  {
    goto LABEL_47;
  }

LABEL_38:
  v32 = 0;
  return v32 & 1;
}

unint64_t sub_22FF330C4()
{
  result = qword_27DAF2DB8;
  if (!qword_27DAF2DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2DB8);
  }

  return result;
}

unint64_t sub_22FF3311C()
{
  result = qword_27DAF2DC0;
  if (!qword_27DAF2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2DC0);
  }

  return result;
}