unint64_t sub_22B088234(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22B0768A8(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_22B086E18(v16, a3 & 1);
      v20 = *v5;
      result = sub_22B0768A8(a1, a2);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_22B0DFCA0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22B084928();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a4;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a1;
  v23[1] = a2;
  *(v22[7] + 8 * result) = a4;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

unint64_t sub_22B088390(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22B0768A8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22B0870D0(v16, a4 & 1);
      v20 = *v5;
      result = sub_22B0768A8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_22B0DFCA0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22B084D38();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * result;
    v24 = *(a1 + 16);
    *v23 = *a1;
    *(v23 + 16) = v24;
    *(v23 + 32) = *(a1 + 32);
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v25 = (v22[6] + 16 * result);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 40 * result;
  v27 = *(a1 + 16);
  *v26 = *a1;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(a1 + 32);
  v28 = v22[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v29;
}

uint64_t sub_22B088530(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_22B0768A8(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_22B087398(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_22B0768A8(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        sub_22B0DFCA0();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v23 = v15;
      sub_22B084EC0(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

uint64_t sub_22B0886CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22B0768A8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22B087634(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_22B0768A8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_22B0DFCA0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22B08501C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

unint64_t sub_22B088848(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_22B08889C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_22B0888E0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22B0DF0E0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_22B088998(unint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_22B0DF0E0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = a5[7] + 16 * a1;
  *v13 = a3;
  *(v13 + 8) = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_22B088A5C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_22B0DF830();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_22B0DF920();
  *v1 = result;
  return result;
}

uint64_t sub_22B088AFC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22B0DF830();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22B0DF830();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22B08A6D0();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5940, &qword_22B0E3A50);
            v9 = sub_22B088C7C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22B08A1B0();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_22B088C7C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2318895C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_22B088CFC;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B088D04(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = *(*(a2 + 48) + v13);
      v15 = (*(a2 + 56) + 16 * v13);
      v17 = *v15;
      v16 = v15[1];

      if (!v16)
      {
        break;
      }

      v7 &= v7 - 1;
      v20 = a1[2];
      v21 = a1[3];
      v22 = *(a1 + 8);
      v18 = *a1;
      v19 = a1[1];
      sub_22B0DF380();

      sub_22B0DF380();

      result = sub_22B0DFD80();
      v10 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x231889A00](v10);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22B088EC0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = (*(v3 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    v17 = v15 == 0;

    if (!v15)
    {
      return v17;
    }

    v18 = sub_22B08350C(v13);
    if ((v19 & 1) == 0)
    {

      return 0;
    }

    v20 = (*(a2 + 56) + 16 * v18);
    if (*v20 == v16 && v15 == v20[1])
    {
    }

    else
    {
      v22 = sub_22B0DFC60();

      if ((v22 & 1) == 0)
      {
        return v17;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

id sub_22B089030(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B57B8, &unk_22B0E5850);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v52 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v52 - v10;
  v12 = [a1 createRadarDraft];
  if (!v12)
  {
    return v12;
  }

  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = sub_22B0DF300();
  [v12 setTitle_];

  v16 = *(a2 + 48);
  v17 = *(a2 + 56);
  v18 = sub_22B0DF300();
  [v12 setProblemDescription_];

  if (*(a2 + 112))
  {
    v19 = *(a2 + 104);
    v20 = sub_22B0DF300();
  }

  else
  {
    v20 = 0;
  }

  [v12 setBundleID_];

  if (*(a2 + 72))
  {
    v22 = *(a2 + 88);
    v21 = *(a2 + 96);
    v23 = *(a2 + 80);
    v24 = *(a2 + 64);
    v25 = sub_22B0DF300();
    v26 = sub_22B0DF300();
    v27 = [a1 createRadarComponentWithName:v25 version:v26 identifier:v21];

    [v12 setComponent_];
  }

  [v12 setClassification_];
  [v12 setReproducibility_];
  [v12 setAutoDiagnostics_];
  [v12 setIsUserInitiated_];
  v28 = type metadata accessor for TapToRadarDraft();
  [v12 setOmitPrefixFromTitle_];
  [v12 setDeleteOnAttach_];
  [v12 setShouldCaptureScreenshot_];
  [v12 setShouldCaptureDumpDisplay_];
  [v12 setShouldCapturePerformanceTrace_];
  [v12 setShouldCaptureForegroundApp_];
  [v12 setScreenshotCaptureDelay_];
  sub_22B0898A8(a2 + v28[22], v11, &unk_27D8B5670, &unk_22B0E32C0);
  v29 = sub_22B0DF0E0();
  v30 = *(v29 - 8);
  v31 = 0;
  if ((*(v30 + 48))(v11, 1, v29) != 1)
  {
    v31 = sub_22B0DF070();
    (*(v30 + 8))(v11, v29);
  }

  [v12 setTimeOfIssue_];

  if (*(*(a2 + 128) + 16))
  {
    sub_22B0DEF00();
    v32 = sub_22B0DF4A0();
  }

  else
  {
    v32 = 0;
  }

  [v12 setAttachments_];

  if (*(*(a2 + 136) + 16))
  {
    v33 = sub_22B0DF4A0();
  }

  else
  {
    v33 = 0;
  }

  [v12 setDiagnosticExtensionIDs_];

  v34 = *(a2 + 152);
  if (v34 >> 62)
  {
    if (v34 < 0)
    {
      v36 = *(a2 + 152);
    }

    if (sub_22B0DF830())
    {
      goto LABEL_17;
    }

LABEL_21:
    v35 = 0;
    goto LABEL_22;
  }

  if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_17:
  sub_22B08A1B0();
  v35 = sub_22B0DF4A0();
LABEL_22:
  [v12 setKeywords_];

  if (*(*(a2 + 160) + 16))
  {
    v37 = sub_22B0DF4A0();
  }

  else
  {
    v37 = 0;
  }

  [v12 setDeviceIDs_];

  if (*(*(a2 + 168) + 16))
  {
    v38 = sub_22B0DF4A0();
  }

  else
  {
    v38 = 0;
  }

  [v12 setDeviceModels_];

  if (*(*(a2 + v28[29]) + 16))
  {
    v39 = sub_22B0DF4A0();
  }

  else
  {
    v39 = 0;
  }

  [v12 setCollaborationContactHandles_];

  v40 = (a2 + v28[30]);
  if (v40[1])
  {
    v41 = *v40;
    v42 = sub_22B0DF300();
  }

  else
  {
    v42 = 0;
  }

  [v12 setCollaborationGroupChatID_];

  sub_22B0898A8(a2 + v28[31], v7, &qword_27D8B57B8, &unk_22B0E5850);
  v43 = sub_22B0DEF00();
  v44 = *(v43 - 8);
  v45 = 0;
  if ((*(v44 + 48))(v7, 1, v43) != 1)
  {
    v45 = sub_22B0DEEB0();
    (*(v44 + 8))(v7, v43);
  }

  [v12 setCrashLog_];

  v46 = (a2 + v28[32]);
  if (v46[1])
  {
    v47 = *v46;
    v48 = sub_22B0DF300();
  }

  else
  {
    v48 = 0;
  }

  [v12 setCallbackIdentifier_];

  [v12 setRemoteDeviceClasses_];
  [v12 setRemoteDeviceSelections_];
  v49 = *(a2 + 144);
  if (*(v49 + 16))
  {
    sub_22B095C34(v49);
    v50 = sub_22B0DF220();
  }

  else
  {
    v50 = 0;
  }

  [v12 setDiagnosticExtensionParameters_];

  return v12;
}

uint64_t sub_22B089738(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22B0DF3A0();

    return sub_22B0DF410();
  }

  return result;
}

uint64_t sub_22B0897D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22B089818(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t type metadata accessor for TapToRadarDraft()
{
  result = qword_27D8B5820;
  if (!qword_27D8B5820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B0898A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22B089910(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_22B089A34()
{
  result = qword_27D8B57C0;
  if (!qword_27D8B57C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B57C0);
  }

  return result;
}

unint64_t sub_22B089A8C()
{
  result = qword_27D8B57C8;
  if (!qword_27D8B57C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B57C8);
  }

  return result;
}

unint64_t sub_22B089AE4()
{
  result = qword_27D8B57D0;
  if (!qword_27D8B57D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B57D0);
  }

  return result;
}

unint64_t sub_22B089B3C()
{
  result = qword_27D8B57D8;
  if (!qword_27D8B57D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B57D8);
  }

  return result;
}

unint64_t sub_22B089B94()
{
  result = qword_27D8B57E0;
  if (!qword_27D8B57E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B57E0);
  }

  return result;
}

unint64_t sub_22B089BEC()
{
  result = qword_27D8B57E8;
  if (!qword_27D8B57E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B57E8);
  }

  return result;
}

unint64_t sub_22B089C44()
{
  result = qword_27D8B57F0;
  if (!qword_27D8B57F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B57F0);
  }

  return result;
}

unint64_t sub_22B089C9C()
{
  result = qword_27D8B57F8;
  if (!qword_27D8B57F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B57F8);
  }

  return result;
}

unint64_t sub_22B089CF4()
{
  result = qword_27D8B5800;
  if (!qword_27D8B5800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5800);
  }

  return result;
}

unint64_t sub_22B089D4C()
{
  result = qword_27D8B5808;
  if (!qword_27D8B5808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5808);
  }

  return result;
}

unint64_t sub_22B089DA4()
{
  result = qword_27D8B5810;
  if (!qword_27D8B5810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5810);
  }

  return result;
}

void sub_22B089E20()
{
  sub_22B08A100(319, &qword_27D8B5830, &type metadata for TapToRadarComponent, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22B08A100(319, &qword_27D8B5838, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22B08A1FC(319, &qword_27D8B5840, MEMORY[0x277CC9260], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_22B08A100(319, &qword_27D8B5848, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_22B08A150();
          if (v4 <= 0x3F)
          {
            sub_22B08A1FC(319, &qword_27D8B5858, sub_22B08A1B0, MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              sub_22B08A1FC(319, &unk_2813EAD58, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_22B08A1FC(319, &unk_27D8B5870, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
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
}

void sub_22B08A100(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_22B08A150()
{
  if (!qword_27D8B5850)
  {
    v0 = sub_22B0DF270();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8B5850);
    }
  }
}

unint64_t sub_22B08A1B0()
{
  result = qword_27D8B5860;
  if (!qword_27D8B5860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8B5860);
  }

  return result;
}

void sub_22B08A1FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Classification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Classification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Reproducibility(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Reproducibility(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.AutoDiagnostics(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.AutoDiagnostics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B08A6D0()
{
  result = qword_27D8B5948;
  if (!qword_27D8B5948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B5940, &qword_22B0E3A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5948);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22B08A77C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5958, &qword_22B0E3A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_22B08A8A8@<X0>(void *a1@<X8>)
{
  v3 = [v1 min];
  v4 = [v1 max];
  v5 = [v1 count];
  [v1 sum];
  v7 = v6;
  result = [v1 sumSquares];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v7;
  a1[4] = v9;
  return result;
}

char *sub_22B08A94C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = [v1 min];
  if (v2 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v2;
  }

  [v1 setMin_];
  v9 = [v1 max];
  if (v3 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v3;
  }

  [v1 setMax_];
  result = [v1 count];
  if (__OFADD__(result, v4))
  {
    __break(1u);
  }

  else
  {
    [v1 setCount_];
    [v1 sum];
    [v1 setSum_];
    [v1 sumSquares];
    v14 = v5 + v13;

    return [v1 setSumSquares_];
  }

  return result;
}

unint64_t sub_22B08AAD4()
{
  result = qword_2813EA378;
  if (!qword_2813EA378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA378);
  }

  return result;
}

id sub_22B08AB2C(double *a1)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = a1[3];
  v5 = a1[4];
  [v1 setMin_];
  [v1 setMax_];
  [v1 setCount_];
  [v1 setSum_];

  return [v1 setSumSquares_];
}

uint64_t sub_22B08ABD4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22B08AC28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22B08AC70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B08ACF4()
{
  v1 = v0;
  v2 = sub_22B0DF140();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v37 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v37 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = [v1 name];
  if (v22)
  {
    v23 = v22;
    v40 = v10;
    v38 = sub_22B0DF330();
    v39 = v24;

    v25 = [v1 homeUUID];
    if (v25)
    {
      v26 = v25;
      sub_22B0DF130();

      v27 = *(v3 + 32);
      v27(v21, v19, v2);
      v28 = [v1 accessoryUUID];
      if (v28)
      {
        v29 = v28;
        sub_22B0DF130();

        v27(v16, v13, v2);
        v30 = v40;
        v27(v40, v21, v2);
        v27(v7, v16, v2);
        v31 = type metadata accessor for AccessoryGroupSpecifier();
        v32 = *(v31 + 48);
        v33 = *(v31 + 52);
        v34 = swift_allocObject();
        v27((v34 + OBJC_IVAR____TtC14HomeKitMetrics23AccessoryGroupSpecifier_accessoryUUID), v7, v2);
        v27((v34 + OBJC_IVAR____TtC14HomeKitMetrics18HomeGroupSpecifier_homeUUID), v30, v2);
        v35 = v39;
        *(v34 + 16) = v38;
        *(v34 + 24) = v35;
        return v34;
      }

      (*(v3 + 8))(v21, v2);
    }
  }

  result = sub_22B0DFB00();
  __break(1u);
  return result;
}

id sub_22B08B080()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedAccessoryGroup();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22B08B0DC()
{
  result = qword_2813EA380;
  if (!qword_2813EA380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA380);
  }

  return result;
}

unint64_t sub_22B08B134()
{
  result = qword_2813EA398;
  if (!qword_2813EA398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA398);
  }

  return result;
}

uint64_t sub_22B08B198()
{
  v1 = v0;
  v2 = sub_22B0DF140();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v26 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = [v1 name];
  if (v13)
  {
    v14 = v13;
    v15 = sub_22B0DF330();
    v17 = v16;

    v18 = [v1 homeUUID];
    if (v18)
    {
      v19 = v18;
      sub_22B0DF130();

      v20 = *(v3 + 32);
      v20(v12, v10, v2);
      v20(v7, v12, v2);
      v21 = type metadata accessor for HomeGroupSpecifier();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      v24 = swift_allocObject();
      v20((v24 + OBJC_IVAR____TtC14HomeKitMetrics18HomeGroupSpecifier_homeUUID), v7, v2);
      *(v24 + 16) = v15;
      *(v24 + 24) = v17;
      return v24;
    }
  }

  result = sub_22B0DFB00();
  __break(1u);
  return result;
}

id sub_22B08B41C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedHomeGroup();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void __swiftcall CounterDistribution.init()(HomeKitMetrics::CounterDistribution *__return_ptr retstr)
{
  *&retstr->minValue = xmmword_22B0E3BB0;
  retstr->sumOfValues = 0.0;
  retstr->sumOfSquares = 0.0;
  retstr->valueCount = 0;
}

void __swiftcall CounterDistribution.init(value:)(HomeKitMetrics::CounterDistribution *__return_ptr retstr, Swift::Int value)
{
  retstr->minValue = value;
  retstr->maxValue = value;
  retstr->valueCount = 1;
  retstr->sumOfValues = value;
  retstr->sumOfSquares = value * value;
}

void __swiftcall CounterDistribution.accumulate(_:)(HomeKitMetrics::CounterDistribution *__return_ptr retstr, Swift::Int a2)
{
  v3 = *(v2 + 16);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v7 = *v2;
    v6 = *(v2 + 8);
    if (v6 <= a2)
    {
      v6 = a2;
    }

    if (v7 >= a2)
    {
      v7 = a2;
    }

    v8.f64[0] = a2;
    retstr->minValue = v7;
    retstr->maxValue = v6;
    retstr->valueCount = v5;
    v8.f64[1] = v8.f64[0] * v8.f64[0];
    *&retstr->sumOfValues = vaddq_f64(*(v2 + 24), v8);
  }
}

void __swiftcall CounterDistribution.accumulate(_:)(HomeKitMetrics::CounterDistribution *__return_ptr retstr, HomeKitMetrics::CounterDistribution *a2)
{
  valueCount = a2->valueCount;
  v4 = *(v2 + 16);
  v5 = __OFADD__(v4, valueCount);
  v6 = v4 + valueCount;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    minValue = a2->minValue;
    maxValue = a2->maxValue;
    if (maxValue <= *(v2 + 8))
    {
      maxValue = *(v2 + 8);
    }

    if (minValue >= *v2)
    {
      minValue = *v2;
    }

    retstr->minValue = minValue;
    retstr->maxValue = maxValue;
    retstr->valueCount = v6;
    *&retstr->sumOfValues = vaddq_f64(*(v2 + 24), *&a2->sumOfValues);
  }
}

uint64_t sub_22B08B5B4()
{
  v1 = *v0;
  v2 = 0x65756C61566E696DLL;
  v3 = 0x756F4365756C6176;
  v4 = 0x6C6156664F6D7573;
  if (v1 != 3)
  {
    v4 = 0x757153664F6D7573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65756C615678616DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22B08B664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22B08C170(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22B08B698(uint64_t a1)
{
  v2 = sub_22B08BD78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B08B6D4(uint64_t a1)
{
  v2 = sub_22B08BD78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CounterDistribution.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5970, &qword_22B0E3BC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v15[0] = v1[2];
  v15[1] = v9;
  v12 = v1[3];
  v11 = v1[4];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22B08BD78();
  sub_22B0DFDC0();
  v20 = 0;
  sub_22B0DFBF0();
  if (!v2)
  {
    v19 = 1;
    sub_22B0DFBF0();
    v18 = 2;
    sub_22B0DFBF0();
    v17 = 3;
    sub_22B0DFBE0();
    v16 = 4;
    sub_22B0DFBE0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t CounterDistribution.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  MEMORY[0x231889A00](*v0);
  MEMORY[0x231889A00](v1);
  MEMORY[0x231889A00](v2);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x231889A20](*&v5);
  if (v4 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  return MEMORY[0x231889A20](*&v6);
}

uint64_t CounterDistribution.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_22B0DFD40();
  CounterDistribution.hash(into:)();
  return sub_22B0DFD80();
}

uint64_t CounterDistribution.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5978, &qword_22B0E3BC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22B08BD78();
  sub_22B0DFDB0();
  if (!v2)
  {
    v24 = 0;
    v11 = sub_22B0DFBA0();
    v23 = 1;
    v12 = sub_22B0DFBA0();
    v22 = 2;
    v19 = sub_22B0DFBA0();
    v21 = 3;
    sub_22B0DFB90();
    v15 = v14;
    v20 = 4;
    sub_22B0DFB90();
    v17 = v16;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
    a2[2] = v19;
    a2[3] = v15;
    a2[4] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

double sub_22B08BC00@<D0>(uint64_t a1@<X8>)
{
  result = NAN;
  *a1 = xmmword_22B0E3BB0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  return result;
}

double sub_22B08BC18@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  result = *a1;
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 32) = result * result;
  return result;
}

uint64_t sub_22B08BC78()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_22B0DFD40();
  CounterDistribution.hash(into:)();
  return sub_22B0DFD80();
}

uint64_t sub_22B08BCD8()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_22B0DFD40();
  CounterDistribution.hash(into:)();
  return sub_22B0DFD80();
}

unint64_t sub_22B08BD78()
{
  result = qword_2813EA3B0;
  if (!qword_2813EA3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA3B0);
  }

  return result;
}

unint64_t sub_22B08BDCC(uint64_t a1)
{
  result = sub_22B08BDF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22B08BDF4()
{
  result = qword_2813EA390;
  if (!qword_2813EA390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA390);
  }

  return result;
}

unint64_t sub_22B08BE4C()
{
  result = qword_2813EA388;
  if (!qword_2813EA388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA388);
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

uint64_t sub_22B08BEB4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B08BED4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CounterDistribution.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CounterDistribution.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B08C06C()
{
  result = qword_27D8B5980;
  if (!qword_27D8B5980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5980);
  }

  return result;
}

unint64_t sub_22B08C0C4()
{
  result = qword_2813EA3A0;
  if (!qword_2813EA3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA3A0);
  }

  return result;
}

unint64_t sub_22B08C11C()
{
  result = qword_2813EA3A8;
  if (!qword_2813EA3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA3A8);
  }

  return result;
}

uint64_t sub_22B08C170(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C61566E696DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_22B0DFC60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C615678616DLL && a2 == 0xE800000000000000 || (sub_22B0DFC60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F4365756C6176 && a2 == 0xEA0000000000746ELL || (sub_22B0DFC60() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6156664F6D7573 && a2 == 0xEB00000000736575 || (sub_22B0DFC60() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x757153664F6D7573 && a2 == 0xEC00000073657261)
  {

    return 4;
  }

  else
  {
    v6 = sub_22B0DFC60();

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

uint64_t CountersManager.__allocating_init(dateProvider:uptimeProvider:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EmptyCounterStorage();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  ObjectType = swift_getObjectType();
  return sub_22B09010C(v4, a1, a2, v5, ObjectType, type metadata accessor for EmptyCounterStorage, &off_283EED480);
}

uint64_t CountersManager.__allocating_init(flatFileStoragePath:dateProvider:uptimeProvider:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  type metadata accessor for PersistentFlatFileCounterStorage();
  swift_allocObject();
  v9 = a3;
  v10 = sub_22B0A27F4(a1, a2, v9);
  if (v4)
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    v12 = v10;
    v13 = swift_allocObject();
    ObjectType = swift_getObjectType();
    return sub_22B09010C(v12, v9, a4, v13, ObjectType, type metadata accessor for PersistentFlatFileCounterStorage, &off_283EEBAB8);
  }
}

uint64_t CountersManager.__allocating_init(coreDataStoragePath:dateProvider:uptimeProvider:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = type metadata accessor for PersistentCoreDataCounterStorage();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_22B0B9FE0(a1, a2, 0, 0, 0, 0);
  if (v4)
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    v14 = v12;
    v15 = swift_allocObject();
    return sub_22B08FCE0(v14, a3, a4, v15);
  }
}

uint64_t CountersManager.group(groupName:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NamedGroupSpecifier();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_22B08C5E8(v4);

  return v5;
}

uint64_t sub_22B08C5E8(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_lock((v1 + 80));
  sub_22B08F300(*(v1 + 96));
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = sub_22B083304(*(v4 + 16), 0);
    v8 = sub_22B094920(&v17, v7 + 4, v6, v5);
    sub_22B0781A0();
    if (v8 == v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = MEMORY[0x277D84F90];
LABEL_5:
  v9 = sub_22B091768(a1, *(v2 + 88));
  if (v9)
  {
    v10 = v9;

LABEL_15:
    os_unfair_lock_unlock((v2 + 80));
    return v10;
  }

  sub_22B0915C4(v2 + 16, &v17);
  type metadata accessor for CounterGroup();
  swift_allocObject();

  v10 = sub_22B09ED24(v11, &v17, v7, 1);

  v12 = *(v2 + 88);
  if ((v12 & 0xC000000000000001) == 0)
  {
    v15 = *(v2 + 88);

    goto LABEL_14;
  }

  if (v12 < 0)
  {
    v13 = *(v2 + 88);
  }

  else
  {
    v13 = v12 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_22B0DF830();
  if (!__OFADD__(result, 1))
  {
    *(v2 + 88) = sub_22B08F0A4(v13, result + 1);
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v2 + 88);
    sub_22B087D18(v10, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 88) = v17;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t CountersManager.group(groupName:homeUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B0DF140();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a3, v6);
  v11 = type metadata accessor for HomeGroupSpecifier();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + OBJC_IVAR____TtC14HomeKitMetrics18HomeGroupSpecifier_homeUUID, v10, v6);
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;

  v15 = sub_22B08C5E8(v14);

  return v15;
}

uint64_t CountersManager.group(groupName:homeFrom:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_22B0DF140();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = [a3 homeUUID];
  sub_22B0DF130();

  (*(v7 + 16))(v11, v13, v6);
  v15 = type metadata accessor for HomeGroupSpecifier();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + OBJC_IVAR____TtC14HomeKitMetrics18HomeGroupSpecifier_homeUUID, v11, v6);
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;

  v19 = sub_22B08C5E8(v18);

  (*(v7 + 8))(v13, v6);
  return v19;
}

uint64_t CountersManager.group(groupName:homeUUID:accessoryUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22B0DF140();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = v9[2];
  v16(&v24 - v14, a3, v8);
  v16(v13, a4, v8);
  v17 = type metadata accessor for AccessoryGroupSpecifier();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = v9[4];
  v21(v20 + OBJC_IVAR____TtC14HomeKitMetrics23AccessoryGroupSpecifier_accessoryUUID, v13, v8);
  v21(v20 + OBJC_IVAR____TtC14HomeKitMetrics18HomeGroupSpecifier_homeUUID, v15, v8);
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;

  v22 = sub_22B08C5E8(v20);

  return v22;
}

uint64_t CountersManager.preloadGroups(for:)()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  result = (*(v2 + 8))(v1, v2);
  if (result)
  {
    v4 = v0[7];
    v5 = __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
    MEMORY[0x28223BE20](v5);
    return (*(v4 + 32))(sub_22B0901AC);
  }

  return result;
}

void sub_22B08CD14(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  __swift_project_boxed_opaque_existential_1((a1 + 24), v4);
  v24[6] = a2;
  v23 = a2;
  v6 = *(v5 + 16);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5680, &unk_22B0E3F60);
  v6(v24, sub_22B091620, v22, v7, v4, v5);
  if (v24[0])
  {
    v8 = v24[0];
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  os_unfair_lock_lock((a1 + 80));
  sub_22B08F300(*(a1 + 96));
  v10 = v9;
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = sub_22B083304(*(v9 + 16), 0);
    v13 = sub_22B094920(v24, v12 + 4, v11, v10);
    sub_22B0781A0();
    if (v13 == v11)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v12 = MEMORY[0x277D84F90];
LABEL_8:

  v14 = sub_22B090270(v8, a1, (a1 + 88), v12);

  os_unfair_lock_unlock((a1 + 80));
  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_17:

    return;
  }

  v15 = sub_22B0DF830();
  if (!v15)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (v15 >= 1)
  {
    v16 = 0;
    v20 = v14 & 0xC000000000000001;
    v21 = v14;
    do
    {
      if (v20)
      {
        v17 = MEMORY[0x2318895C0](v16, v14);
      }

      else
      {
        v17 = *(v14 + 8 * v16 + 32);
      }

      ++v16;
      os_unfair_lock_lock((v17 + 88));
      v18 = *(v17 + 56);
      v19 = __swift_project_boxed_opaque_existential_1((v17 + 24), *(v17 + 48));
      MEMORY[0x28223BE20](v19);
      (*(v18 + 32))(sub_22B091694);
      os_unfair_lock_unlock((v17 + 88));

      v14 = v21;
    }

    while (v15 != v16);
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t CountersManager.allGroups.getter()
{
  v1 = v0;
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 24), v2);
  (*(v3 + 32))(sub_22B0901C8, v0, MEMORY[0x277D84F78] + 8, v2, v3);
  os_unfair_lock_lock((v0 + 80));
  v4 = sub_22B08D11C(*(v0 + 88));
  if (v4[2])
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5930, &qword_22B0E3A40);
    v6 = sub_22B0DFB50();
    v4 = v5;
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v9 = v6;
  sub_22B08ED1C(v4, 1, &v9);
  v7 = v9;
  os_unfair_lock_unlock(v1 + 20);
  return v7;
}

uint64_t sub_22B08D11C(uint64_t a1)
{
  v1 = a1;
  v26 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22B0DF830();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v32 = MEMORY[0x277D84F90];
    sub_22B0BFAB0(0, v2 & ~(v2 >> 63), 0);
    v27 = v32;
    if (v26)
    {
      result = sub_22B0DFA40();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      result = sub_22B0DF7E0();
      v4 = *(v1 + 36);
    }

    v29 = result;
    v30 = v4;
    v31 = v26 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v24 = v2;
      v25 = v1;
      while (v6 < v2)
      {
        if (__OFADD__(v6, 1))
        {
          goto LABEL_24;
        }

        v13 = v29;
        v14 = v30;
        v15 = v31;
        v16 = sub_22B08FED0(v28, v29, v30, v31, v1);
        v17 = v28[0];
        v18 = (*(*v16 + 88))(v16);

        v19 = v27;
        v32 = v27;
        v21 = *(v27 + 16);
        v20 = *(v27 + 24);
        if (v21 >= v20 >> 1)
        {
          result = sub_22B0BFAB0((v20 > 1), v21 + 1, 1);
          v19 = v32;
        }

        *(v19 + 16) = v21 + 1;
        v22 = v19 + 16 * v21;
        *(v22 + 32) = v18;
        *(v22 + 40) = v17;
        v27 = v19;
        if (v26)
        {
          v1 = v25;
          if (!v15)
          {
            goto LABEL_26;
          }

          if (sub_22B0DFA70())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v24;
          v12 = v6 + 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B59A0, &qword_22B0E3EA0);
          v23 = sub_22B0DF260();
          sub_22B0DFAF0();
          result = v23(v28, 0);
        }

        else
        {
          v1 = v25;
          v7 = sub_22B08FD78(v13, v14, v15, v25);
          v9 = v8;
          v11 = v10;
          result = sub_22B0915B8(v13, v14, v15);
          v29 = v7;
          v30 = v9;
          v31 = v11 & 1;
          v2 = v24;
          v12 = v6 + 1;
        }

        ++v6;
        if (v12 == v2)
        {
          sub_22B0915B8(v29, v30, v31);
          return v27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

void sub_22B08D3E4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  __swift_project_boxed_opaque_existential_1((a1 + 24), v2);
  v4 = *(v3 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5680, &unk_22B0E3F60);
  v4(&v13, sub_22B08D580, 0, v5, v2, v3);
  v6 = v13;
  os_unfair_lock_lock((a1 + 80));
  sub_22B08F300(*(a1 + 96));
  v8 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = sub_22B083304(*(v7 + 16), 0);
    v11 = sub_22B094920(&v13, v10 + 4, v9, v8);
    sub_22B0781A0();
    if (v11 == v9)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = MEMORY[0x277D84F90];
LABEL_5:
  if (v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  sub_22B090270(v12, a1, (a1 + 88), v10);

  os_unfair_lock_unlock((a1 + 80));
}

uint64_t sub_22B08D580@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  return result;
}

Swift::Void __swiftcall CountersManager.addEphemeralContainer(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  os_unfair_lock_lock((v1 + 80));
  sub_22B08D650((v1 + 88), countAndFlagsBits, object, v1);

  os_unfair_lock_unlock((v1 + 80));
}

unint64_t sub_22B08D650(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!*(a1[1] + 16) || (result = sub_22B0768A8(a2, a3), (v9 & 1) == 0))
  {
    v10 = *(a4 + 72);
    v11 = objc_allocWithZone(type metadata accessor for EphemeralContainerState());

    v12 = swift_unknownObjectRetain();
    v13 = sub_22B0B9F20(v12);
    swift_unknownObjectRelease();
    v14 = a1[1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = a1[1];
    sub_22B087E78(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    a1[1] = v32;
    v16 = *a1;
    v30 = a2;
    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v31 = sub_22B0DFA50() | 0x8000000000000000;
    }

    else
    {
      v20 = -1 << *(v16 + 32);
      v18 = ~v20;
      v17 = v16 + 64;
      v21 = -v20;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v19 = v22 & *(v16 + 64);
      v31 = v16;
    }

    v23 = 0;
    v24 = v31;
    if ((v31 & 0x8000000000000000) != 0)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v25 = v23;
      v26 = v19;
      v27 = v23;
      if (!v19)
      {
        break;
      }

LABEL_14:
      v28 = (v26 - 1) & v26;
      v29 = *(*(v24 + 56) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));

      if (!v29)
      {
        return sub_22B0781A0();
      }

      while (1)
      {
        os_unfair_lock_lock(v29 + 22);
        sub_22B097810(&v29[24]);
        sub_22B097390();
        sub_22B097D08(v30, a3);

        sub_22B0974C4();
        sub_22B097D20(v30, a3);

        sub_22B0975F8();
        sub_22B097F44(v30, a3);

        os_unfair_lock_unlock(v29 + 22);

        v23 = v27;
        v19 = v28;
        v24 = v31;
        if ((v31 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_16:
        if (sub_22B0DFAE0())
        {
          swift_unknownObjectRelease();
          type metadata accessor for CounterGroup();
          swift_dynamicCast();
          v29 = v32;
          v27 = v23;
          v28 = v19;
          if (v32)
          {
            continue;
          }
        }

        return sub_22B0781A0();
      }
    }

    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= ((v18 + 64) >> 6))
      {
        return sub_22B0781A0();
      }

      v26 = *(v17 + 8 * v27);
      ++v25;
      if (v26)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22B08D940(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  if (!*(v3 + 16))
  {
    return;
  }

  v7 = sub_22B0768A8(a2, a3);
  if ((v8 & 1) == 0)
  {
    return;
  }

  v9 = *(*(v3 + 56) + 8 * v7);
  v10 = OBJC_IVAR___HMMEphemeralContainerState_lock;
  v11 = *&v9[OBJC_IVAR___HMMEphemeralContainerState_lock];
  v12 = v9;
  os_unfair_lock_lock(v11 + 4);
  v13 = OBJC_IVAR___HMMEphemeralContainerState__isActive;
  v14 = v12[OBJC_IVAR___HMMEphemeralContainerState__isActive];
  os_unfair_lock_unlock(v11 + 4);
  if (v14 != 1)
  {

    return;
  }

  v15 = *&v9[v10];
  os_unfair_lock_lock(v15 + 4);
  if (v12[v13])
  {
    [*&v12[OBJC_IVAR___HMMEphemeralContainerState_uptimeProvider] uptime];
    *&v12[OBJC_IVAR___HMMEphemeralContainerState__activeDuration] = v16 - *&v12[OBJC_IVAR___HMMEphemeralContainerState__startTime] + *&v12[OBJC_IVAR___HMMEphemeralContainerState__activeDuration];
    v12[v13] = 0;
  }

  v42 = v12;
  os_unfair_lock_unlock(v15 + 4);
  v17 = *a1;
  if ((*a1 & 0xC000000000000001) != 0)
  {
    if (v17 < 0)
    {
      v18 = *a1;
    }

    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = sub_22B0DFA50() | 0x8000000000000000;
  }

  else
  {
    v23 = -1 << *(v17 + 32);
    v20 = ~v23;
    v19 = v17 + 64;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v21 = v25 & *(v17 + 64);
    v22 = *a1;
  }

  v26 = 0;
  v27 = (v20 + 64) >> 6;
  v43 = v22;
  while ((v22 & 0x8000000000000000) != 0)
  {
    if (!sub_22B0DFAE0())
    {
      goto LABEL_32;
    }

    v35 = v34;
    swift_unknownObjectRelease();
    v44[4] = v35;
    type metadata accessor for CounterGroup();
    swift_dynamicCast();
    v33 = v44[0];
    v31 = v26;
    v32 = v21;
    if (!v44[0])
    {
LABEL_32:
      sub_22B0781A0();

      return;
    }

LABEL_26:
    v45 = v32;
    os_unfair_lock_lock(v33 + 22);
    sub_22B097810(&v33[24]);
    sub_22B097390();
    swift_beginAccess();
    v37 = sub_22B09CA10(v44, a2, a3);
    if (*(v36 + 8))
    {
      *v36 = 0;
    }

    (v37)(v44, 0);
    swift_endAccess();

    sub_22B0974C4();
    swift_beginAccess();
    v39 = sub_22B09C988(v44, a2, a3);
    if (*(v38 + 8))
    {
      *v38 = 0;
    }

    (v39)(v44, 0);
    swift_endAccess();

    sub_22B0975F8();
    swift_beginAccess();
    v41 = sub_22B09C8FC(v44, a2, a3);
    if (*(v40 + 8))
    {
      *v40 = 0;
    }

    (v41)(v44, 0);
    v28 = v45;
    swift_endAccess();

    os_unfair_lock_unlock(v33 + 22);

    v26 = v31;
    v21 = v28;
    v22 = v43;
  }

  v29 = v26;
  v30 = v21;
  v31 = v26;
  if (v21)
  {
LABEL_22:
    v32 = (v30 - 1) & v30;
    v33 = *(*(v22 + 56) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));

    if (!v33)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v27)
    {
      goto LABEL_32;
    }

    v30 = *(v19 + 8 * v31);
    ++v29;
    if (v30)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}

void sub_22B08DD64(uint64_t a1, uint64_t a2, void (*a3)(os_unfair_lock_s *, uint64_t, uint64_t))
{
  os_unfair_lock_lock(v3 + 20);
  a3(v3 + 22, a1, a2);

  os_unfair_lock_unlock(v3 + 20);
}

uint64_t sub_22B08DDD0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(*(result + 8) + 16))
  {
    return result;
  }

  v5 = result;
  result = sub_22B0768A8(a2, a3);
  if ((v6 & 1) == 0)
  {
    return result;
  }

  v55 = a2;
  sub_22B080B74(0, a2, a3);
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = sub_22B0DFA50() | 0x8000000000000000;
  }

  else
  {
    v12 = -1 << *(v7 + 32);
    v9 = ~v12;
    v8 = v7 + 64;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v10 = v14 & *(v7 + 64);
    v11 = *v5;
  }

  v15 = 0;
  v16 = (v9 + 64) >> 6;
  v17 = v55;
  v53 = v8;
  v54 = v11;
  while ((v11 & 0x8000000000000000) != 0)
  {
    if (!sub_22B0DFAE0())
    {
      return sub_22B0781A0();
    }

    swift_unknownObjectRelease();
    type metadata accessor for CounterGroup();
    swift_dynamicCast();
    v24 = v56;
    v22 = v15;
    v23 = v10;
    if (!v56)
    {
      return sub_22B0781A0();
    }

LABEL_21:
    os_unfair_lock_lock(v24 + 22);
    v25 = sub_22B097390();
    v26 = qword_2813EA5B0;
    swift_beginAccess();
    v27 = *(v25 + v26);

    v28 = sub_22B0768A8(v17, a3);
    LOBYTE(v27) = v29;

    if (v27)
    {
      v30 = *(v25 + v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *(v25 + v26);
      *(v25 + v26) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22B083DF4();
      }

      v33 = *(*(v32 + 48) + 16 * v28 + 8);

      v34 = *(*(v32 + 56) + 16 * v28 + 8);

      sub_22B0A0234(v28, v32);
      *(v25 + v26) = v32;
      v17 = v55;
    }

    swift_endAccess();

    v35 = sub_22B0974C4();
    v36 = qword_2813EA5B0;
    swift_beginAccess();
    v37 = *(v35 + v36);

    v38 = sub_22B0768A8(v17, a3);
    LOBYTE(v37) = v39;

    if (v37)
    {
      v40 = *(v35 + v36);
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v42 = *(v35 + v36);
      *(v35 + v36) = 0x8000000000000000;
      if (!v41)
      {
        sub_22B083DE0();
      }

      v43 = *(*(v42 + 48) + 16 * v38 + 8);

      v44 = *(*(v42 + 56) + 16 * v38 + 8);

      sub_22B0A0234(v38, v42);
      *(v35 + v36) = v42;
      v17 = v55;
    }

    swift_endAccess();

    v45 = sub_22B0975F8();
    v46 = qword_2813EA5B0;
    swift_beginAccess();
    v47 = *(v45 + v46);

    v48 = sub_22B0768A8(v17, a3);
    LOBYTE(v47) = v49;

    if (v47)
    {
      v50 = *(v45 + v46);
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v52 = *(v45 + v46);
      *(v45 + v46) = 0x8000000000000000;
      if (!v51)
      {
        sub_22B083DCC();
      }

      v18 = *(*(v52 + 48) + 16 * v48 + 8);

      v19 = *(*(v52 + 56) + 16 * v48 + 8);

      sub_22B0A0234(v48, v52);
      *(v45 + v46) = v52;
      v17 = v55;
    }

    swift_endAccess();

    os_unfair_lock_unlock(v24 + 22);

    v15 = v22;
    v10 = v23;
    v8 = v53;
    v11 = v54;
  }

  v20 = v15;
  v21 = v10;
  v22 = v15;
  if (v10)
  {
LABEL_17:
    v23 = (v21 - 1) & v21;
    v24 = *(*(v11 + 56) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));

    if (!v24)
    {
      return sub_22B0781A0();
    }

    goto LABEL_21;
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v16)
    {
      return sub_22B0781A0();
    }

    v21 = *(v8 + 8 * v22);
    ++v20;
    if (v21)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t CountersManager.ephemeralContainerStates.getter()
{
  os_unfair_lock_lock((v0 + 80));
  v1 = *(v0 + 96);

  os_unfair_lock_unlock((v0 + 80));
  return v1;
}

void *CountersManager.ephemeralContainerState(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  os_unfair_lock_lock((v2 + 80));
  v6 = *(v2 + 96);
  if (*(v6 + 16) && (v7 = sub_22B0768A8(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = v9;
  }

  else
  {
    v9 = 0;
  }

  os_unfair_lock_unlock(v3 + 20);
  return v9;
}

uint64_t sub_22B08E39C(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t), uint64_t (*a3)(char *, uint64_t, uint64_t), uint64_t (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v53 = a5;
  v58 = a3;
  v59 = a4;
  v57 = a2;
  v60 = a1;
  os_unfair_lock_lock((v5 + 80));
  v6 = *(v5 + 88);

  v51 = v5;
  os_unfair_lock_unlock((v5 + 80));
  if ((v6 & 0xC000000000000001) != 0)
  {
    v54 = 0;
    v7 = 0;
    v8 = 0;
    v9 = sub_22B0DFA50() | 0x8000000000000000;
  }

  else
  {
    v10 = -1 << *(v6 + 32);
    v7 = ~v10;
    v11 = *(v6 + 64);
    v54 = v6 + 64;
    v12 = -v10;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v8 = v13 & v11;
    v9 = v6;
  }

  v52 = v6;

  v15 = 0;
  v50 = v7;
  v16 = (v7 + 64) >> 6;
  v55 = v9;
  v56 = v16;
  if ((v9 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

  while (sub_22B0DFAE0())
  {
    v18 = v17;
    swift_unknownObjectRelease();
    v62 = v18;
    type metadata accessor for CounterGroup();
    swift_dynamicCast();
    v19 = v63;
    v20 = v15;
    v21 = v8;
    if (!v63)
    {
      break;
    }

    while (1)
    {
      os_unfair_lock_lock(v19 + 22);
      v61 = v21;
      v24 = sub_22B097390();
      v25 = qword_2813EA5B8;
      v26 = swift_beginAccess();
      v27 = *(v24 + v25);
      MEMORY[0x28223BE20](v26);
      v28 = v60;
      v49 = v60;

      v30 = sub_22B091168(v29, v57, v48, &qword_27D8B58C0, &qword_22B0E39C8);

      v31 = *(v24 + v25);
      *(v24 + v25) = v30;

      v32 = sub_22B0974C4();
      v33 = qword_2813EA5B8;
      v34 = swift_beginAccess();
      v35 = *(v32 + v33);
      MEMORY[0x28223BE20](v34);
      v49 = v28;

      v37 = sub_22B091168(v36, v58, v48, &qword_27D8B58B8, &qword_22B0E39C0);

      v38 = *(v32 + v33);
      *(v32 + v33) = v37;

      v39 = sub_22B0975F8();
      v40 = qword_2813EA5B8;
      v41 = swift_beginAccess();
      v42 = *(v39 + v40);
      MEMORY[0x28223BE20](v41);
      v49 = v28;
      v9 = v55;

      v44 = sub_22B091168(v43, v59, v48, &qword_27D8B58B0, &qword_22B0E39B8);

      v45 = *(v39 + v40);
      *(v39 + v40) = v44;
      v16 = v56;

      os_unfair_lock_unlock(v19 + 22);

      v15 = v20;
      v8 = v61;
      if ((v9 & 0x8000000000000000) != 0)
      {
        break;
      }

LABEL_11:
      v22 = v15;
      v23 = v8;
      v20 = v15;
      if (!v8)
      {
        while (1)
        {
          v20 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v20 >= v16)
          {
            goto LABEL_18;
          }

          v23 = *(v54 + 8 * v20);
          ++v22;
          if (v23)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        return result;
      }

LABEL_15:
      v21 = (v23 - 1) & v23;
      v19 = *(*(v9 + 56) + ((v20 << 9) | (8 * __clz(__rbit64(v23)))));

      if (!v19)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_18:
  sub_22B0781A0();
  v46 = v51[7];
  v47 = __swift_project_boxed_opaque_existential_1(v51 + 3, v51[6]);
  MEMORY[0x28223BE20](v47);
  v49 = v60;
  (*(v46 + 16))(&v63, v53);
}

uint64_t CountersManager.withCounterStoreOpen<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[6];
  v8 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v7);
  v12[2] = a3;
  v12[3] = a1;
  v12[4] = a2;
  v9 = *(v8 + 32);
  v10 = sub_22B0DF780();
  return v9(sub_22B091394, v12, v10, v7, v8);
}

Swift::Void __swiftcall CountersManager.retainStore()()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  (*(v2 + 40))(v1, v2);
}

Swift::Void __swiftcall CountersManager.releaseStore()()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  (*(v2 + 48))(v1, v2);
}

Swift::Void __swiftcall CountersManager.save()()
{
  os_unfair_lock_lock((v0 + 80));
  v1 = *(v0 + 88);

  os_unfair_lock_unlock((v0 + 80));
  v11 = v1;
  v8 = sub_22B0913BC;
  v9 = &v10;
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 24), v2);
  v6[2] = sub_22B0913C4;
  v6[3] = &v7;
  v4 = *(v3 + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6590, &qword_22B0E3E10);
  v4(&v12, sub_22B091404, v6, v5, v2, v3);
}

uint64_t sub_22B08EA70(unint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v4 = sub_22B0DFA50() | 0x8000000000000000;
  }

  else
  {
    v5 = -1 << *(a1 + 32);
    v2 = ~v5;
    v1 = a1 + 64;
    v6 = -v5;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v3 = v7 & *(a1 + 64);
    v4 = a1;
  }

  v9 = 0;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v9;
    v11 = v3;
    v12 = v9;
    if (!v3)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v4 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
      return sub_22B0781A0();
    }

    while (1)
    {
      v16 = v14[6];
      v15 = v14[7];
      __swift_project_boxed_opaque_existential_1(v14 + 3, v16);
      (*(v15 + 32))(sub_22B09159C, v14, MEMORY[0x277D84F78] + 8, v16, v15);

      v9 = v12;
      v3 = v13;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_22B0DFAE0())
      {
        swift_unknownObjectRelease();
        type metadata accessor for CounterGroup();
        swift_dynamicCast();
        v14 = v17;
        v12 = v9;
        v13 = v3;
        if (v17)
        {
          continue;
        }
      }

      return sub_22B0781A0();
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v2 + 64) >> 6))
    {
      return sub_22B0781A0();
    }

    v11 = *(v1 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B08EC74@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = 0;
  return result;
}

uint64_t CountersManager.deinit()
{
  sub_22B091448(v0 + 16);
  sub_22B09149C(v0 + 88);
  return v0;
}

uint64_t CountersManager.__deallocating_deinit()
{
  sub_22B091448(v0 + 16);
  sub_22B09149C(v0 + 88);

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

void sub_22B08ED1C(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = a1[4];
  v7 = a1[5];
  v9 = *a3;

  v10 = sub_22B0836B4(v8);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_22B085A10(v15, v6 & 1);
    v17 = *a3;
    v10 = sub_22B0836B4(v8);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5998, &qword_22B0E3E98);
    v10 = sub_22B0DFCA0();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_22B0840DC();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5990, &qword_22B0E3E90);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v22[6] + 8 * v10) = v8;
  *(v22[7] + 8 * v10) = v7;
  v23 = v22[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_22B0DF8E0();
    MEMORY[0x231889070](0xD00000000000001BLL, 0x800000022B0E6AB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5998, &qword_22B0E3E98);
    sub_22B0DF9E0();
    MEMORY[0x231889070](39, 0xE100000000000000);
    sub_22B0DFB00();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = a1 + 7;
    v25 = 1;
    while (v25 < a1[2])
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v26 = *a3;

      v27 = sub_22B0836B4(v8);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_22B085A10(v31, 1);
        v32 = *a3;
        v27 = sub_22B0836B4(v8);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      *(v34[6] + 8 * v27) = v8;
      *(v34[7] + 8 * v27) = v7;
      v35 = v34[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_22B08F0A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5938, &qword_22B0E3A48);
    v2 = sub_22B0DFB40();
    v24 = v2;
    sub_22B0DFA50();
    v3 = sub_22B0DFAE0();
    if (v3)
    {
      v5 = v4;
      v6 = v3;
      type metadata accessor for NamedGroupSpecifier();
      v7 = v6;
      do
      {
        v23[0] = v7;
        swift_dynamicCast();
        v23[0] = v5;
        type metadata accessor for CounterGroup();
        swift_dynamicCast();
        v18 = *(v2 + 16);
        if (*(v2 + 24) <= v18)
        {
          sub_22B085758(v18 + 1, 1);
        }

        v8 = v23[10];
        v2 = v24;
        v9 = v23[9];
        v10 = *(v24 + 40);
        sub_22B0DFD40();
        (*(*v8 + 112))(v23);
        result = sub_22B0DFD80();
        v12 = v2 + 64;
        v13 = -1 << *(v2 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v2 + 64 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v2 + 64 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v15 == v20;
            if (v15 == v20)
            {
              v15 = 0;
            }

            v19 |= v21;
            v22 = *(v12 + 8 * v15);
          }

          while (v22 == -1);
          v16 = __clz(__rbit64(~v22)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v2 + 48) + 8 * v16) = v8;
        *(*(v2 + 56) + 8 * v16) = v9;
        ++*(v2 + 16);
        v7 = sub_22B0DFAE0();
        v5 = v17;
      }

      while (v7);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

void sub_22B08F300(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      sub_22B08F5DC(v8, v4, v2);
      MEMORY[0x23188A520](v8, -1, -1);
      goto LABEL_4;
    }
  }

  MEMORY[0x28223BE20](a1);
  v6 = v9 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_22B08F460(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

LABEL_4:
  v7 = *MEMORY[0x277D85DE8];
}

void sub_22B08F460(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = *(*(a3 + 48) + 16 * v12 + 8);
    v14 = *(*(a3 + 56) + 8 * v12);
    v15 = *&v14[OBJC_IVAR___HMMEphemeralContainerState_lock];

    v16 = v14;
    os_unfair_lock_lock(v15 + 4);
    v17 = v16[OBJC_IVAR___HMMEphemeralContainerState__isActive];
    os_unfair_lock_unlock(v15 + 4);

    if (v17 == 1)
    {
      *(a1 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:
        sub_22B08F6FC(a1, a2, v21, a3);
        return;
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
      goto LABEL_15;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_22B08F5DC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_22B08F460(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void *sub_22B08F654(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t), uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a7;
      v11 = a6;
      v12 = a5;
      v13 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v13;
      a5 = v12;
      a6 = v11;
      a7 = v10;
    }

    v14 = sub_22B090F0C(result, a2, a3, a4, a5, a6, a7);

    return v14;
  }

  return result;
}

uint64_t sub_22B08F6FC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5928, &qword_22B0E3A38);
  result = sub_22B0DFB50();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    sub_22B0DFD40();

    v34 = v21;
    sub_22B0DF380();
    result = sub_22B0DFD80();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22B08F93C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v44 = a1;
  v53 = sub_22B0DF0E0();
  v11 = *(v53 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v53);
  v52 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v45 = v41 - v15;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_22B0DFB50();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *v44;
  }

  v19 = 0;
  v41[1] = v11 + 16;
  v42 = result;
  v51 = v11 + 32;
  v20 = result + 64;
  v41[0] = a4;
  v43 = v11;
  v21 = v53;
  while (v18)
  {
    v22 = __clz(__rbit64(v18));
    v46 = (v18 - 1) & v18;
LABEL_16:
    v25 = v22 | (v19 << 6);
    v26 = a4[6];
    v50 = *(v11 + 72);
    v27 = v45;
    (*(v11 + 16))(v45, v26 + v50 * v25, v21);
    v28 = (a4[7] + 16 * v25);
    v48 = *v28;
    v29 = *(v28 + 1);
    v47 = *(v11 + 32);
    v47(v52, v27, v21);
    v17 = v42;
    v30 = *(v42 + 40);
    sub_22B076420(&qword_2813EAD80);
    v49 = v29;

    result = sub_22B0DF2A0();
    v31 = -1 << *(v17 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v31) >> 6;
      v11 = v43;
      while (++v33 != v36 || (v35 & 1) == 0)
      {
        v37 = v33 == v36;
        if (v33 == v36)
        {
          v33 = 0;
        }

        v35 |= v37;
        v38 = *(v20 + 8 * v33);
        if (v38 != -1)
        {
          v34 = __clz(__rbit64(~v38)) + (v33 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
    v11 = v43;
LABEL_26:
    *(v20 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    result = (v47)(*(v17 + 48) + v34 * v50, v52, v53);
    v39 = *(v17 + 56) + 16 * v34;
    *v39 = v48;
    *(v39 + 8) = v49;
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v41[0];
    v18 = v46;
    if (!a3)
    {
      return v17;
    }
  }

  v23 = v19;
  while (1)
  {
    v19 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v24 = v44[v19];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v46 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22B08FCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = type metadata accessor for PersistentCoreDataCounterStorage();
  v12 = &off_283EECA80;
  *&v10 = a1;
  *(a4 + 80) = 0;
  v8 = MEMORY[0x277D84F98];
  *(a4 + 88) = MEMORY[0x277D84F98];
  *(a4 + 96) = v8;
  *(a4 + 16) = [objc_allocWithZone(HMMDailyPartitionProvider) initWithDateProvider_];
  sub_22B0781A8(&v10, a4 + 24);
  *(a4 + 64) = a2;
  *(a4 + 72) = a3;
  return a4;
}

uint64_t sub_22B08FD78(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    result = sub_22B0DFA80();
    if (result == *(a4 + 36))
    {
      sub_22B0DFA90();
      type metadata accessor for NamedGroupSpecifier();
      swift_dynamicCast();
      sub_22B083628(v9);
      v6 = v5;

      if (v6)
      {
        sub_22B0DFA60();
        v7 = sub_22B0DFAB0();
        swift_unknownObjectRelease();
        return v7;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  result = sub_22B0DF800();
  v8 = *(a4 + 36);
  return result;
}

uint64_t sub_22B08FED0(uint64_t result, unint64_t a2, int a3, char a4, uint64_t a5)
{
  v7 = result;
  if ((a5 & 0xC000000000000001) == 0)
  {
    if (a4)
    {
      result = sub_22B0DFA80();
      if (result != *(a5 + 36))
      {
        __break(1u);
        goto LABEL_15;
      }

      sub_22B0DFA90();
      type metadata accessor for NamedGroupSpecifier();
      swift_dynamicCast();
      a2 = sub_22B083628(v12);
      v10 = v9;

      if (v10)
      {
LABEL_12:
        v11 = *(a5 + 56);
        v8 = *(*(a5 + 48) + 8 * a2);
        *v7 = *(v11 + 8 * a2);

        return v8;
      }

      __break(1u);
    }

    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22B0DFAC0();
    type metadata accessor for NamedGroupSpecifier();
    swift_dynamicCast();
    v8 = v12;
    type metadata accessor for CounterGroup();
    swift_dynamicCast();
    *v7 = v12;
    return v8;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22B090088@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X0>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_22B09010C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  v15 = a6(0);
  v16 = a7;
  *&v14 = a1;
  *(a4 + 80) = 0;
  v12 = MEMORY[0x277D84F98];
  *(a4 + 88) = MEMORY[0x277D84F98];
  *(a4 + 96) = v12;
  *(a4 + 16) = [objc_allocWithZone(HMMDailyPartitionProvider) initWithDateProvider_];
  sub_22B0781A8(&v14, a4 + 24);
  *(a4 + 64) = a2;
  *(a4 + 72) = a3;
  return a4;
}

uint64_t sub_22B0901E4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = (*(v6 + 40))(v4, v5, v6);
  *a2 = 0;
  return result;
}

uint64_t sub_22B090270(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  isUniquelyReferenced_nonNull_native = a1;
  if (a1 >> 62)
  {
    goto LABEL_99;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v120 = MEMORY[0x277D84F90];
    sub_22B0DF960();
    if ((v6 & 0x8000000000000000) == 0)
    {
      v8 = 0;
      v111 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v104 = isUniquelyReferenced_nonNull_native + 32;
      v105 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v107 = isUniquelyReferenced_nonNull_native;
      v108 = a3;
      v106 = v6;
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_96;
        }

        if (v111)
        {
          v14 = MEMORY[0x2318895C0]();
        }

        else
        {
          if (v8 >= *(v105 + 16))
          {
            goto LABEL_98;
          }

          v14 = *(v104 + 8 * v8);
        }

        v15 = *a3;
        if ((*a3 & 0xC000000000000001) != 0)
        {
          if (v15 < 0)
          {
            v16 = *a3;
          }

          v17 = sub_22B0DFAD0();

          if (!v17 || (v118[0] = v17, type metadata accessor for CounterGroup(), swift_dynamicCast(), !v119[0]))
          {
LABEL_23:
            v113 = v9;
            sub_22B0915C4(a2 + 16, v119);
            type metadata accessor for CounterGroup();
            v21 = swift_allocObject();
            sub_22B0915C4(v119, v21 + 16);
            *(v21 + 80) = v14;
            v112 = v14;

            swift_unownedRetain();
            *(v21 + 88) = 0;
            v22 = (v21 + 88);
            *(v21 + 96) = 0u;
            *(v21 + 112) = 0u;
            *(v21 + 128) = MEMORY[0x277D84F98];
            os_unfair_lock_lock((v21 + 88));
            v23 = *(v21 + 96);
            v117 = v21 + 96;
            *(v21 + 96) = v21;

            v115 = v21;
            swift_unownedRetain();
            swift_unownedRelease();
            os_unfair_lock_unlock((v21 + 88));
            v24 = *(a4 + 16);
            if (v24)
            {
              v25 = (a4 + 40);
              lock = (v21 + 88);
              while (1)
              {
                v29 = *(v25 - 1);
                v28 = *v25;

                os_unfair_lock_lock(v22);
                sub_22B097810(v117);
                a3 = sub_22B097390();
                v30 = qword_2813EA5B0;
                swift_beginAccess();
                v116 = v24;
                if (!*(*(a3 + v30) + 16))
                {
                  break;
                }

                sub_22B0768A8(v29, v28);
                if ((v31 & 1) == 0)
                {
                  break;
                }

                swift_endAccess();
                if (qword_2813E9AA8 != -1)
                {
                  swift_once();
                }

                v32 = sub_22B0DF1B0();
                __swift_project_value_buffer(v32, qword_2813EBE90);

                v33 = sub_22B0DF190();
                v34 = sub_22B0DF690();

                if (os_log_type_enabled(v33, v34))
                {
                  v35 = swift_slowAlloc();
                  v36 = swift_slowAlloc();
                  v118[0] = v36;
                  *v35 = 136315138;
                  *(v35 + 4) = sub_22B07B428(v29, v28, v118);
                  _os_log_impl(&dword_22B074000, v33, v34, "Ephemeral container already exists: %s", v35, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v36);
                  MEMORY[0x23188A520](v36, -1, -1);
                  MEMORY[0x23188A520](v35, -1, -1);
                }

LABEL_47:
                a3 = sub_22B0974C4();
                v55 = qword_2813EA5B0;
                swift_beginAccess();
                if (!*(*(a3 + v55) + 16) || (sub_22B0768A8(v29, v28), (v56 & 1) == 0))
                {
                  swift_endAccess();
                  swift_beginAccess();

                  v62 = *(a3 + v55);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v63 = *(a3 + v55);
                  *(a3 + v55) = 0x8000000000000000;
                  v64 = sub_22B0768A8(v29, v28);
                  v66 = v63[2];
                  v67 = (v65 & 1) == 0;
                  v53 = __OFADD__(v66, v67);
                  v68 = v66 + v67;
                  if (v53)
                  {
                    goto LABEL_91;
                  }

                  v69 = v65;
                  if (v63[3] >= v68)
                  {
                    if (isUniquelyReferenced_nonNull_native)
                    {
                      goto LABEL_59;
                    }

                    v74 = v64;
                    sub_22B083DE0();
                    v64 = v74;
                    v71 = v63;
                    if ((v69 & 1) == 0)
                    {
                      goto LABEL_62;
                    }

LABEL_60:
                    v72 = v71[7] + 16 * v64;
                    v73 = *(v72 + 8);
                    *v72 = 1;
                    *(v72 + 8) = MEMORY[0x277D84F98];
                  }

                  else
                  {
                    sub_22B085470(v68, isUniquelyReferenced_nonNull_native);
                    v64 = sub_22B0768A8(v29, v28);
                    if ((v69 & 1) != (v70 & 1))
                    {
                      goto LABEL_101;
                    }

LABEL_59:
                    v71 = v63;
                    if (v69)
                    {
                      goto LABEL_60;
                    }

LABEL_62:
                    v71[(v64 >> 6) + 8] |= 1 << v64;
                    v75 = (v71[6] + 16 * v64);
                    *v75 = v29;
                    v75[1] = v28;
                    v76 = v71[7] + 16 * v64;
                    *v76 = 1;
                    *(v76 + 8) = MEMORY[0x277D84F98];
                    v77 = v71[2];
                    v53 = __OFADD__(v77, 1);
                    v78 = v77 + 1;
                    if (v53)
                    {
                      goto LABEL_94;
                    }

                    v71[2] = v78;
                  }

                  *(a3 + v55) = v71;
                  swift_endAccess();

                  goto LABEL_65;
                }

                swift_endAccess();
                if (qword_2813E9AA8 != -1)
                {
                  swift_once();
                }

                v57 = sub_22B0DF1B0();
                __swift_project_value_buffer(v57, qword_2813EBE90);

                v58 = sub_22B0DF190();
                v59 = sub_22B0DF690();

                if (os_log_type_enabled(v58, v59))
                {
                  v60 = swift_slowAlloc();
                  v61 = swift_slowAlloc();
                  v118[0] = v61;
                  *v60 = 136315138;
                  *(v60 + 4) = sub_22B07B428(v29, v28, v118);
                  _os_log_impl(&dword_22B074000, v58, v59, "Ephemeral container already exists: %s", v60, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v61);
                  MEMORY[0x23188A520](v61, -1, -1);
                  MEMORY[0x23188A520](v60, -1, -1);
                }

LABEL_65:
                a3 = sub_22B0975F8();
                v79 = qword_2813EA5B0;
                swift_beginAccess();
                if (*(*(a3 + v79) + 16))
                {
                  sub_22B0768A8(v29, v28);
                  if (v80)
                  {
                    swift_endAccess();
                    if (qword_2813E9AA8 != -1)
                    {
                      swift_once();
                    }

                    v81 = sub_22B0DF1B0();
                    __swift_project_value_buffer(v81, qword_2813EBE90);

                    v82 = sub_22B0DF190();
                    v83 = sub_22B0DF690();

                    if (os_log_type_enabled(v82, v83))
                    {
                      v84 = swift_slowAlloc();
                      v85 = swift_slowAlloc();
                      v118[0] = v85;
                      *v84 = 136315138;
                      *(v84 + 4) = sub_22B07B428(v29, v28, v118);
                      _os_log_impl(&dword_22B074000, v82, v83, "Ephemeral container already exists: %s", v84, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0(v85);
                      MEMORY[0x23188A520](v85, -1, -1);
                      MEMORY[0x23188A520](v84, -1, -1);
                    }

                    goto LABEL_27;
                  }
                }

                swift_endAccess();
                swift_beginAccess();

                v86 = *(a3 + v79);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v87 = *(a3 + v79);
                *(a3 + v79) = 0x8000000000000000;
                v88 = sub_22B0768A8(v29, v28);
                v90 = v87[2];
                v91 = (v89 & 1) == 0;
                v53 = __OFADD__(v90, v91);
                v92 = v90 + v91;
                if (v53)
                {
                  goto LABEL_92;
                }

                v93 = v89;
                if (v87[3] < v92)
                {
                  sub_22B08545C(v92, isUniquelyReferenced_nonNull_native);
                  v88 = sub_22B0768A8(v29, v28);
                  if ((v93 & 1) != (v94 & 1))
                  {
                    goto LABEL_101;
                  }

LABEL_77:
                  v95 = v87;
                  if ((v93 & 1) == 0)
                  {
                    goto LABEL_78;
                  }

                  goto LABEL_25;
                }

                if (isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_77;
                }

                v100 = v88;
                sub_22B083DCC();
                v88 = v100;
                v95 = v87;
                if ((v93 & 1) == 0)
                {
LABEL_78:
                  v95[(v88 >> 6) + 8] |= 1 << v88;
                  v96 = (v95[6] + 16 * v88);
                  *v96 = v29;
                  v96[1] = v28;
                  v97 = v95[7] + 16 * v88;
                  *v97 = 1;
                  *(v97 + 8) = MEMORY[0x277D84F98];
                  v98 = v95[2];
                  v53 = __OFADD__(v98, 1);
                  v99 = v98 + 1;
                  if (v53)
                  {
                    goto LABEL_95;
                  }

                  v95[2] = v99;
                  goto LABEL_26;
                }

LABEL_25:
                v26 = v95[7] + 16 * v88;
                v27 = *(v26 + 8);
                *v26 = 1;
                *(v26 + 8) = MEMORY[0x277D84F98];

LABEL_26:
                *(a3 + v79) = v95;
                swift_endAccess();

LABEL_27:
                v22 = lock;
                os_unfair_lock_unlock(lock);
                v25 += 2;
                v24 = v116 - 1;
                if (v116 == 1)
                {
                  goto LABEL_82;
                }
              }

              swift_endAccess();
              swift_beginAccess();

              v37 = *(a3 + v30);
              v38 = swift_isUniquelyReferenced_nonNull_native();
              v39 = *(a3 + v30);
              *(a3 + v30) = 0x8000000000000000;
              isUniquelyReferenced_nonNull_native = sub_22B0768A8(v29, v28);
              v41 = v39[2];
              v42 = (v40 & 1) == 0;
              v43 = v41 + v42;
              if (__OFADD__(v41, v42))
              {
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
                v6 = sub_22B0DF830();
                goto LABEL_3;
              }

              v44 = v40;
              if (v39[3] >= v43)
              {
                if (v38)
                {
                  v47 = v39;
                  if ((v40 & 1) == 0)
                  {
                    goto LABEL_44;
                  }
                }

                else
                {
                  sub_22B083DF4();
                  v47 = v39;
                  if ((v44 & 1) == 0)
                  {
                    goto LABEL_44;
                  }
                }
              }

              else
              {
                sub_22B085484(v43, v38);
                v45 = sub_22B0768A8(v29, v28);
                if ((v44 & 1) != (v46 & 1))
                {
                  goto LABEL_101;
                }

                isUniquelyReferenced_nonNull_native = v45;
                v47 = v39;
                if ((v44 & 1) == 0)
                {
LABEL_44:
                  v47[(isUniquelyReferenced_nonNull_native >> 6) + 8] |= 1 << isUniquelyReferenced_nonNull_native;
                  v50 = (v47[6] + 16 * isUniquelyReferenced_nonNull_native);
                  *v50 = v29;
                  v50[1] = v28;
                  v51 = v47[7] + 16 * isUniquelyReferenced_nonNull_native;
                  *v51 = 1;
                  *(v51 + 8) = MEMORY[0x277D84F98];
                  v52 = v47[2];
                  v53 = __OFADD__(v52, 1);
                  v54 = v52 + 1;
                  if (v53)
                  {
                    goto LABEL_93;
                  }

                  v47[2] = v54;
                  goto LABEL_46;
                }
              }

              v48 = v47[7] + 16 * isUniquelyReferenced_nonNull_native;
              v49 = *(v48 + 8);
              *v48 = 1;
              *(v48 + 8) = MEMORY[0x277D84F98];

LABEL_46:
              *(a3 + v30) = v47;
              swift_endAccess();

              goto LABEL_47;
            }

LABEL_82:
            sub_22B091448(v119);
            a3 = v108;
            v101 = *v108;
            if ((*v108 & 0xC000000000000001) != 0)
            {
              if (v101 < 0)
              {
                v102 = *v108;
              }

              else
              {
                v102 = v101 & 0xFFFFFFFFFFFFFF8;
              }

              v103 = sub_22B0DF830();
              v6 = v106;
              isUniquelyReferenced_nonNull_native = v107;
              v10 = v112;
              v9 = v113;
              v11 = v115;
              if (__OFADD__(v103, 1))
              {
                goto LABEL_97;
              }

              *v108 = sub_22B08F0A4(v102, v103 + 1);
            }

            else
            {
              v6 = v106;
              isUniquelyReferenced_nonNull_native = v107;
              v10 = v112;
              v9 = v113;
              v11 = v115;
            }

            v12 = swift_isUniquelyReferenced_nonNull_native();
            v119[0] = *v108;
            sub_22B087D18(v11, v10, v12);
            *v108 = v119[0];
          }
        }

        else
        {
          if (!*(v15 + 16))
          {
            goto LABEL_23;
          }

          v18 = sub_22B083628(v14);
          if ((v19 & 1) == 0)
          {
            goto LABEL_23;
          }

          v20 = *(*(v15 + 56) + 8 * v18);

          if (!v20)
          {
            goto LABEL_23;
          }
        }

        sub_22B0DF940();
        v13 = *(v120 + 16);
        sub_22B0DF970();
        sub_22B0DF980();
        sub_22B0DF950();
        v8 = v9;
        if (v9 == v6)
        {
          return v120;
        }
      }
    }

    __break(1u);
LABEL_101:
    result = sub_22B0DFCA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_22B090E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(v4 + 16);
  v8 = sub_22B0DF0E0();
  v9 = sub_22B076420(&qword_2813EAD78);
  return a4(a1, v7, v8, v9) & 1;
}

uint64_t sub_22B090F0C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t), uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v32 = a6;
  v33 = a7;
  v34 = a1;
  v42 = a4;
  v31 = a2;
  v41 = sub_22B0DF0E0();
  v8 = *(*(v41 - 8) + 64);
  result = MEMORY[0x28223BE20](v41);
  v39 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v10;
  v12 = 0;
  v43 = a3;
  v13 = *(a3 + 64);
  v35 = 0;
  v36 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v37 = v10 + 8;
  v38 = v10 + 16;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v44 = (v16 - 1) & v16;
LABEL_11:
    v21 = v18 | (v12 << 6);
    v22 = v43;
    v24 = v39;
    v23 = v40;
    v25 = v41;
    (*(v40 + 16))(v39, v43[6] + *(v40 + 72) * v21, v41);
    v26 = v21;
    v27 = (v22[7] + 16 * v21);
    v28 = *v27;
    v29 = *(v27 + 1);

    LOBYTE(v21) = v42(v24, v28, v29);

    result = (*(v23 + 8))(v24, v25);
    v16 = v44;
    if (v21)
    {
      *(v34 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v35++, 1))
      {
        __break(1u);
        return sub_22B08F93C(v34, v31, v35, v43, v32, v33);
      }
    }
  }

  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v12 >= v17)
    {
      return sub_22B08F93C(v34, v31, v35, v43, v32, v33);
    }

    v20 = *(v36 + 8 * v12);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v44 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B091168(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = a1;
  v19[1] = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 32);
  v12 = ((1 << v11) + 63) >> 6;
  if ((v11 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v14 = v19 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v14, v13);
    result = sub_22B090F0C(v14, v12, v10, a2, a3, a4, a5);
    if (v5)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v17 = swift_slowAlloc();
  v18 = sub_22B08F654(v17, v12, v10, a2, a3, a4, a5);
  result = MEMORY[0x23188A520](v17, -1, -1);
  if (!v5)
  {
    result = v18;
  }

LABEL_4:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B091308@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = (*(v6 + 48))(v4, v5, v6);
  *a2 = 0;
  return result;
}

uint64_t sub_22B091394()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_22B0913C4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = 0;
  return result;
}

void *sub_22B091404@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_22B091508(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22B091550(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B0915B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22B091620@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = (*(v6 + 24))(v4, v5, v6);
  *a2 = result;
  return result;
}

uint64_t sub_22B0916BC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22B091768(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_22B0DFAD0();

    if (v3)
    {
      type metadata accessor for CounterGroup();
      swift_dynamicCast();
      return v8;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_22B083628(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
    }
  }

  return 0;
}

unint64_t sub_22B09181C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (result = sub_22B083720(result), (v5 & 1) != 0))
  {
    v6 = *(a2 + 56) + 24 * result;
    v7 = *v6;
    v8 = *(v6 + 8);
    LOBYTE(v6) = *(v6 + 16);
    *a3 = v7;
    *(a3 + 8) = v8;
    *(a3 + 16) = v6;

    return sub_22B08045C(v7, v8);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
  }

  return result;
}

uint64_t sub_22B091894(char a1)
{
  switch(a1)
  {
    case 3:
      return type metadata accessor for AccessoryGroupSpecifier();
    case 2:
      return type metadata accessor for HomeGroupSpecifier();
    case 1:
      return type metadata accessor for NamedGroupSpecifier();
  }

  return 0;
}

uint64_t sub_22B0918F8(uint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  else
  {
    return result;
  }
}

uint64_t sub_22B091908(uint64_t a1)
{
  v3 = *v1;
  v4 = (v1 + *(*v1 + 112));
  os_unfair_lock_lock(v4);
  sub_22B0919E8(&v4[2], v1, a1, &v8);
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  type metadata accessor for FlatFileCounterStore.State();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5680, &unk_22B0E3F60);
  j__os_unfair_lock_unlock(v4);
  return v8;
}

uint64_t sub_22B0919E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(*a2 + 80);
  v9 = *(*a2 + 88);
  result = sub_22B093924(*a1);
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  if (*(v7 + 16) && (v11 = sub_22B07639C(a3), (v12 & 1) != 0))
  {
    v13 = *(*(v7 + 56) + 8 * v11);

    v14 = *(v13 + 16);
    if (!v14)
    {
LABEL_5:

LABEL_6:
      v15 = MEMORY[0x277D84F90];
LABEL_9:
      *a4 = v15;
      return result;
    }
  }

  else
  {
    v13 = sub_22B091B14(a3);
    v14 = *(v13 + 16);
    if (!v14)
    {
      goto LABEL_5;
    }
  }

  v15 = sub_22B083484(v14, 0);
  v16 = sub_22B093064(&v17, v15 + 4, v14, v13);
  result = sub_22B0781A0();
  if (v16 == v14)
  {
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B091B14(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_22B0DF0E0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = v3[12];
  v7 = v3[11];
  v8 = v3[10];
  v9 = (*(v7 + 24))(a1, v8, v7);
  v11 = v10;
  v13 = sub_22B093ACC(v9, v10, a1, v8, v7);
  sub_22B080408(v9, v11);
  return v13;
}

uint64_t sub_22B091E9C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = (v3 + *(*v3 + 112));
  os_unfair_lock_lock(v8);
  sub_22B091F90(&v8[2], v3, a3, a2, a1, &v12);
  v9 = *(v7 + 80);
  v10 = *(v7 + 88);
  type metadata accessor for FlatFileCounterStore.State();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B59B8, &qword_22B0E3F88);
  j__os_unfair_lock_unlock(v8);
  return v12;
}

uint64_t sub_22B091F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  v12 = *(*a2 + 80);
  v13 = *(*a2 + 88);
  result = sub_22B093924(*a1);
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if (*(v11 + 16))
  {
    v15 = sub_22B07639C(a3);
    if (v16)
    {
      v17 = *(*(v11 + 56) + 8 * v15);

      if (!*(v17 + 16))
      {
        goto LABEL_9;
      }

LABEL_7:
      v18 = sub_22B083628(a4);
      if (v19)
      {
        v20 = *(*(v17 + 56) + 8 * v18);

        sub_22B09181C(a5, v20, a6);
      }

      goto LABEL_9;
    }
  }

  v17 = sub_22B091B14(a3);
  if (*(v17 + 16))
  {
    goto LABEL_7;
  }

LABEL_9:

LABEL_10:
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 2;
  return result;
}

void sub_22B0920C0(uint64_t a1, unint64_t a2, char a3, int a4, uint64_t a5, uint64_t a6)
{
  v13 = *v6;
  v14 = (v6 + *(*v6 + 112));
  os_unfair_lock_lock(v14);
  sub_22B0921CC(&v14[2], v6, a6, a5, a4, a1, a2, a3 & 1);
  v15 = *(v13 + 80);
  v16 = *(v13 + 88);
  type metadata accessor for FlatFileCounterStore.State();

  j__os_unfair_lock_unlock(v14);
}

uint64_t sub_22B0921CC(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unint64_t a7, int a8)
{
  v72 = a8;
  v73 = a5;
  v76 = a6;
  v77 = a7;
  v75 = a4;
  v79 = a3;
  v11 = *a2;
  v78 = sub_22B0DF0E0();
  v12 = *(v78 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v78);
  v71 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v74 = v64 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = v64 - v17;
  v19 = *a1;
  v20 = *(a1 + 8);
  v21 = *(a1 + 16);
  v70 = a1 + 16;
  v22 = *(v11 + 80);
  v23 = *(v11 + 88);
  result = sub_22B093924(v19);
  if ((result & 1) == 0)
  {
    return result;
  }

  v25 = *(v12 + 16);
  v26 = v79;
  v69 = v12 + 16;
  v67 = v8;
  v68 = v25;
  v25(v18, v79, v78);
  v27 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = v22;
  *(v28 + 3) = v23;
  *(v28 + 4) = a2;
  v65 = v12;
  v29 = *(v12 + 32);
  v30 = v78;
  v29(&v28[v27], v18, v78);
  v31 = swift_allocObject();
  *(v31 + 16) = sub_22B0948BC;
  *(v31 + 24) = v28;
  v66 = v28;

  sub_22B08045C(v76, v77);
  v32 = *(a1 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80 = *(a1 + 8);
  v34 = v80;
  v36 = sub_22B07639C(v26);
  v37 = v34[2];
  v38 = (v35 & 1) == 0;
  v39 = v37 + v38;
  if (__OFADD__(v37, v38))
  {
    __break(1u);
    goto LABEL_21;
  }

  LOBYTE(v18) = v35;
  v26 = v30;
  v64[1] = v31;
  if (v34[3] >= v39)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_8;
  }

  sub_22B08639C(v39, isUniquelyReferenced_nonNull_native);
  v34 = v80;
  v40 = v79;
  v41 = sub_22B07639C(v79);
  if ((v18 & 1) != (v42 & 1))
  {
    sub_22B0DFCA0();
    __break(1u);
    goto LABEL_24;
  }

  v36 = v41;
  *(a1 + 8) = v34;
  if ((v18 & 1) == 0)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v45 = v34[7];
    v46 = *(v45 + 8 * v36);
    LOBYTE(v18) = swift_isUniquelyReferenced_nonNull_native();
    v80 = *(v45 + 8 * v36);
    v47 = v80;
    *(v45 + 8 * v36) = 0x8000000000000000;
    a1 = sub_22B083628(v75);
    v49 = v47[2];
    v50 = (v48 & 1) == 0;
    v51 = v49 + v50;
    if (!__OFADD__(v49, v50))
    {
      break;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    sub_22B084518();
    v34 = v80;
LABEL_8:
    v40 = v79;
    *(a1 + 8) = v34;
    if ((v18 & 1) == 0)
    {
LABEL_9:
      v43 = sub_22B0948BC();
      v44 = v74;
      v68(v74, v40, v26);
      sub_22B0888E0(v36, v44, v43, v34);
    }
  }

  v52 = v48;
  if (v47[3] >= v51)
  {
    if ((v18 & 1) == 0)
    {
      sub_22B084240();
      v47 = v80;
    }

    goto LABEL_16;
  }

  sub_22B085E2C(v51, v18);
  v47 = v80;
  v53 = sub_22B083628(v75);
  if ((v52 & 1) != (v54 & 1))
  {
LABEL_24:
    type metadata accessor for NamedGroupSpecifier();
    result = sub_22B0DFCA0();
    __break(1u);
    return result;
  }

  a1 = v53;
LABEL_16:
  v55 = v65;
  v56 = *(v45 + 8 * v36);
  *(v45 + 8 * v36) = v47;

  v57 = *(v45 + 8 * v36);
  if ((v52 & 1) == 0)
  {
    v58 = sub_22B093804(MEMORY[0x277D84F90]);
    sub_22B08889C(a1, v75, v58, v57);
  }

  v59 = v57[7];
  v60 = *(v59 + 8 * a1);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *(v59 + 8 * a1);
  *(v59 + 8 * a1) = 0x8000000000000000;
  sub_22B087E8C(v76, v77, v72 & 1, v73, v61);
  *(v59 + 8 * a1) = v80;
  v62 = v71;
  v68(v71, v79, v26);
  v63 = v74;
  sub_22B0AA93C(v74, v62);
  (*(v55 + 8))(v63, v26);
}

unint64_t sub_22B092688@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22B093804(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

char *sub_22B0926B8()
{
  v1 = v0;
  v2 = *v0;
  (*(*(*(v2 + 80) - 8) + 8))(&v1[*(v2 + 96)], *(v2 + 80));

  v3 = v2;
  v4 = &v1[*(*v1 + 112)];
  v5 = *(v3 + 88);
  type metadata accessor for FlatFileCounterStore.State();
  v6 = sub_22B0DF180();
  sub_22B0A67A4(v6);
  return v1;
}

uint64_t sub_22B0927A8()
{
  sub_22B0926B8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22B092830()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22B092880(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_22B0928C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B092920()
{
  v1 = v0;
  v2 = sub_22B0DEF80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    v11 = 0;
    if (v10 == 2)
    {
      v11 = *(v8 + 24);
    }
  }

  else
  {
    v11 = BYTE6(v9);
    if (v10)
    {
      v11 = v8 >> 32;
    }
  }

  v12 = v1[4];
  v13 = __OFSUB__(v11, v12);
  v14 = v11 - v12;
  if (v13)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v14 < 1)
  {
    sub_22B0804B0();
    swift_allocError();
    *v20 = 0;
    *(v20 + 8) = 2;
    swift_willThrow();
    return v1;
  }

  if (__OFADD__(v12, 1))
  {
    goto LABEL_21;
  }

  if (v12 + 1 < v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_22B08045C(v1[2], v1[3]);
  v15 = sub_22B0DEF40();
  v17 = v16;
  result = sub_22B080408(v8, v9);
  v18 = v1[4];
  v13 = __OFADD__(v18, 1);
  v19 = v18 + 1;
  if (!v13)
  {
    v1[4] = v19;
    if (v17 >> 62 == 2)
    {
      v21 = *(v15 + 16);
    }

    sub_22B08045C(v15, v17);
    sub_22B0DEF90();
    sub_22B094874(&unk_2813EAD90, MEMORY[0x277CC92E0]);
    v22 = 0;
    do
    {
      v1 = v22;
      sub_22B0DF790();
      v22 = v24;
    }

    while (v25 != 1);
    sub_22B080408(v15, v17);
    (*(v3 + 8))(v7, v2);
    return v1;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_22B092B9C()
{
  v1 = v0;
  v2 = sub_22B0DEF80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    v11 = 0;
    if (v10 == 2)
    {
      v11 = *(v8 + 24);
    }
  }

  else
  {
    v11 = BYTE6(v9);
    if (v10)
    {
      v11 = v8 >> 32;
    }
  }

  v12 = v1[4];
  v13 = __OFSUB__(v11, v12);
  v14 = v11 - v12;
  if (v13)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v14 < 4)
  {
    sub_22B0804B0();
    swift_allocError();
    *v15 = 0;
    *(v15 + 8) = 2;
    swift_willThrow();
    return v1;
  }

  if (__OFADD__(v12, 4))
  {
    goto LABEL_22;
  }

  if (v12 + 4 < v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_22B08045C(v1[2], v1[3]);
  v16 = sub_22B0DEF40();
  v18 = v17;
  result = sub_22B080408(v8, v9);
  v19 = v1[4];
  v13 = __OFADD__(v19, 4);
  v20 = v19 + 4;
  if (!v13)
  {
    v1[4] = v20;
    if (v18 >> 62 == 2)
    {
      v21 = *(v16 + 16);
    }

    sub_22B08045C(v16, v18);
    sub_22B0DEF90();
    sub_22B094874(&unk_2813EAD90, MEMORY[0x277CC92E0]);
    sub_22B0DF790();
    if (v24)
    {
      v1 = 0;
    }

    else
    {
      LODWORD(v1) = 0;
      do
      {
        v1 = (v23 | (v1 << 8));
        sub_22B0DF790();
      }

      while (v24 != 1);
    }

    sub_22B080408(v16, v18);
    (*(v3 + 8))(v7, v2);
    return v1;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22B092E38(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v19 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v11 = v21 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_22B0DF820();
  type metadata accessor for NamedGroupSpecifier();
  sub_22B094874(&qword_27D8B59B0, type metadata accessor for NamedGroupSpecifier);
  result = sub_22B0DF610();
  v4 = v26;
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v11 = v30;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v23 = v9;
  v24 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_22B0DF850())
      {
        goto LABEL_30;
      }

      type metadata accessor for NamedGroupSpecifier();
      swift_dynamicCast();
      result = v25;
      if (!v25)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));

    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v22 = v10 + 1;
  }

  else
  {
    v22 = v13;
  }

  v10 = v22 - 1;
LABEL_30:
  v9 = v23;
  v7 = v24;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_22B093064(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22B0931B8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22B093310(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22B093468(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_22B0DF0E0();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_22B09370C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5890, &qword_22B0E3F80);
    v3 = sub_22B0DFB50();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_22B083628(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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

unint64_t sub_22B093804(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B58A0, &qword_22B0E39A8);
  v3 = sub_22B0DFB50();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  result = sub_22B083720(v4);
  if (v9)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v10 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    v11 = v3[7] + 24 * result;
    *v11 = v5;
    *(v11 + 8) = v6;
    *(v11 + 16) = v7 & 1;
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v3[2] = v14;
    sub_22B08045C(v5, v6);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v10 - 24);
    v5 = *(v10 - 2);
    v6 = *(v10 - 1);
    v7 = *v10;
    result = sub_22B083720(v4);
    v10 += 32;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B093924(char a1)
{
  if (a1)
  {
    return a1 & 1;
  }

  if (!HMFIsInternalBuild())
  {
    if (qword_2813E9AA8 != -1)
    {
      swift_once();
    }

    v2 = sub_22B0DF1B0();
    __swift_project_value_buffer(v2, qword_2813EBE90);
    v3 = sub_22B0DF190();
    v4 = sub_22B0DF690();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22B074000, v3, v4, "FlatFileCounterStore isn't open", v5, 2u);
      MEMORY[0x23188A520](v5, -1, -1);
    }

    return a1 & 1;
  }

  result = sub_22B0DFB00();
  __break(1u);
  return result;
}

uint64_t sub_22B093A64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5660, &qword_22B0E54A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B093ACC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v113 = a5;
  v9 = sub_22B0DF0E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v108 = (&v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v102 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v110 = &v102 - v18;
  MEMORY[0x28223BE20](v17);
  v109 = &v102 - v19;
  v111 = sub_22B09370C(MEMORY[0x277D84F90]);
  type metadata accessor for InputDataStream();
  inited = swift_initStackObject();
  inited[2] = a1;
  inited[3] = a2;
  sub_22B08045C(a1, a2);
  sub_22B08045C(a1, a2);
  sub_22B080408(0, 0xC000000000000000);
  v21 = a2 >> 62;
  v107 = v16;
  if ((a2 >> 62) > 1)
  {
    if (v21 == 2)
    {
      v22 = *(a1 + 16);
      sub_22B080408(a1, a2);
      goto LABEL_7;
    }

LABEL_6:
    sub_22B080408(a1, a2);
    v22 = 0;
    goto LABEL_7;
  }

  if (!v21)
  {
    goto LABEL_6;
  }

  sub_22B080408(a1, a2);
  v22 = a1;
LABEL_7:
  inited[4] = v22;
  v23 = sub_22B0DEDE0();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v112 = sub_22B0DEDD0();
  v26 = inited;
  v27 = sub_22B092B9C();
  if (v5)
  {

    swift_setDeallocating();
    sub_22B080408(inited[2], inited[3]);

    sub_22B094864(0);
    return v26;
  }

  v29 = v27;
  v104 = a3;
  v105 = v9;
  v103 = v10;
  v30 = 0;
  v31 = 0;
LABEL_11:
  v106 = v31;
  while (1)
  {
    v32 = sub_22B0918F8(v29);
    if (v32 - 1 >= 3)
    {
      if (v32 - 4 >= 3)
      {
        v70 = v104;
        if (v32)
        {

          if (qword_2813E9AA8 != -1)
          {
            swift_once();
          }

          v72 = sub_22B0DF1B0();
          __swift_project_value_buffer(v72, qword_2813EBE90);
          v73 = v103;
          v74 = v108;
          v75 = v105;
          (*(v103 + 16))(v108, v70, v105);
          v76 = sub_22B0DF190();
          v77 = sub_22B0DF690();
          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v113 = inited;
            v79 = v78;
            v111 = swift_slowAlloc();
            v115[0] = v111;
            *v79 = 136315394;
            sub_22B094874(&qword_2813EAD68, MEMORY[0x277CC9578]);
            LODWORD(v110) = v77;
            v80 = sub_22B0DFC20();
            v81 = v74;
            v83 = v82;
            (*(v73 + 8))(v81, v75);
            v84 = sub_22B07B428(v80, v83, v115);

            *(v79 + 4) = v84;
            *(v79 + 12) = 1024;
            *(v79 + 14) = v29;
            _os_log_impl(&dword_22B074000, v76, v110, "Invalid block type for %s: %d", v79, 0x12u);
            v85 = v111;
            __swift_destroy_boxed_opaque_existential_0(v111);
            MEMORY[0x23188A520](v85, -1, -1);
            v86 = v79;
            inited = v113;
            MEMORY[0x23188A520](v86, -1, -1);
          }

          else
          {

            (*(v73 + 8))(v74, v75);
          }

          v71 = v106;
          v26 = sub_22B09370C(MEMORY[0x277D84F90]);

          v112 = v30;
        }

        else
        {

          v112 = v30;
          v71 = v106;
          v26 = v111;
        }

        goto LABEL_42;
      }

      if (!v30)
      {

        if (qword_2813E9AA8 != -1)
        {
          swift_once();
        }

        v87 = sub_22B0DF1B0();
        __swift_project_value_buffer(v87, qword_2813EBE90);
        v88 = v103;
        v89 = v107;
        v90 = v105;
        (*(v103 + 16))(v107, v104, v105);
        v91 = sub_22B0DF190();
        v92 = sub_22B0DF690();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = v89;
          v113 = swift_slowAlloc();
          v115[0] = v113;
          *v93 = 136315138;
          sub_22B094874(&qword_2813EAD68, MEMORY[0x277CC9578]);
          v95 = sub_22B0DFC20();
          v96 = v88;
          v97 = inited;
          v99 = v98;
          (*(v96 + 8))(v94, v90);
          v100 = sub_22B07B428(v95, v99, v115);
          inited = v97;

          *(v93 + 4) = v100;
          _os_log_impl(&dword_22B074000, v91, v92, "CounterSet data provided before group specifier for %s", v93, 0xCu);
          v101 = v113;
          __swift_destroy_boxed_opaque_existential_0(v113);
          MEMORY[0x23188A520](v101, -1, -1);
          MEMORY[0x23188A520](v93, -1, -1);
        }

        else
        {

          (*(v88 + 8))(v89, v90);
        }

        v71 = v106;
        v26 = sub_22B09370C(MEMORY[0x277D84F90]);
        goto LABEL_42;
      }

      v33 = inited;
      v115[0] = sub_22B094924();
      v115[1] = v38;
      v116 = v39 & 1;
      v117 = v32 - 4;
      sub_22B094864(v106);
      v40 = v111;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v114 = v40;
      v37 = sub_22B083628(v30);
      v42 = v40[2];
      v43 = (v41 & 1) == 0;
      v44 = v42 + v43;
      if (__OFADD__(v42, v43))
      {
        __break(1u);
        goto LABEL_56;
      }

      v45 = v41;
      if (v40[3] >= v44)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          inited = v33;
          if (v41)
          {
            goto LABEL_26;
          }
        }

        else
        {
          sub_22B084240();
          v111 = v114;
          inited = v33;
          if (v45)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        sub_22B085E2C(v44, isUniquelyReferenced_nonNull_native);
        type metadata accessor for NamedGroupSpecifier();
        v111 = v114;
        v46 = sub_22B083628(v30);
        if ((v45 & 1) != (v47 & 1))
        {
          result = sub_22B0DFCA0();
          __break(1u);
          return result;
        }

        v37 = v46;
        inited = v33;
        if (v45)
        {
LABEL_26:
          v49 = v111[7] + 8 * v37;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B59A8, &unk_22B0E3F70);
          sub_22B0DF290();

          v29 = sub_22B092B9C();
          v31 = sub_22B092688;
          goto LABEL_11;
        }
      }

      v48 = sub_22B093804(MEMORY[0x277D84F90]);
      sub_22B08889C(v37, v30, v48, v111);

      goto LABEL_26;
    }

    v33 = inited;
    v29 = sub_22B094924();
    isUniquelyReferenced_nonNull_native = v34;
    LOBYTE(v37) = v36;
    if ((v36 & 1) == 0)
    {
      break;
    }

    if (!sub_22B091894(v32))
    {

      if (qword_2813E9AA8 != -1)
      {
        swift_once();
      }

      v62 = sub_22B0DF1B0();
      __swift_project_value_buffer(v62, qword_2813EBE90);
      v63 = v103;
      v64 = v109;
      (*(v103 + 16))(v109, v104, v105);
      v65 = sub_22B0DF190();
      LODWORD(v113) = sub_22B0DF690();
      if (os_log_type_enabled(v65, v113))
      {
        v111 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v115[0] = v110;
        *v111 = 136315394;
        sub_22B094874(&qword_2813EAD68, MEMORY[0x277CC9578]);
        v108 = v65;
        v66 = v105;
        v107 = sub_22B0DFC20();
        v68 = v67;
        (*(v63 + 8))(v109, v66);
        v69 = sub_22B07B428(v107, v68, v115);

        v59 = v111;
        *(v111 + 4) = v69;
        *(v59 + 6) = 1024;
        *(v59 + 14) = v32;
        v60 = v108;
        _os_log_impl(&dword_22B074000, v108, v113, "Unsupported specifier type for %s: %d", v59, 0x12u);
        v61 = v110;
LABEL_36:
        __swift_destroy_boxed_opaque_existential_0(v61);
        MEMORY[0x23188A520](v61, -1, -1);
        MEMORY[0x23188A520](v59, -1, -1);
      }

      else
      {

        (*(v63 + 8))(v64, v105);
      }

      goto LABEL_41;
    }

    type metadata accessor for NamedGroupSpecifier();
    sub_22B094874(&qword_2813EA2C0, type metadata accessor for NamedGroupSpecifier);
    sub_22B0DEDC0();

    sub_22B080408(v29, isUniquelyReferenced_nonNull_native);
    v30 = v115[0];
    inited = v33;
    v29 = sub_22B092B9C();
  }

  if (qword_2813E9AA8 != -1)
  {
LABEL_56:
    swift_once();
  }

  v50 = sub_22B0DF1B0();
  __swift_project_value_buffer(v50, qword_2813EBE90);
  v51 = v103;
  v52 = v105;
  (*(v103 + 16))(v110, v104, v105);
  v53 = sub_22B0DF190();
  LODWORD(v113) = sub_22B0DF690();
  if (os_log_type_enabled(v53, v113))
  {
    LODWORD(v111) = v37 & 1;
    v54 = swift_slowAlloc();
    v108 = v54;
    v109 = swift_slowAlloc();
    v115[0] = v109;
    LODWORD(v54->isa) = 136315394;
    sub_22B094874(&qword_2813EAD68, MEMORY[0x277CC9578]);
    v107 = v53;
    v55 = v110;
    v104 = sub_22B0DFC20();
    v57 = v56;
    (*(v51 + 8))(v55, v52);
    v58 = sub_22B07B428(v104, v57, v115);

    v60 = v107;
    v59 = v108;
    *(&v108->isa + 4) = v58;
    *(v59 + 6) = 256;
    *(v59 + 14) = v111;
    _os_log_impl(&dword_22B074000, v60, v113, "Unsupported encoding for named group specifier for %s: %hhu", v59, 0xFu);
    v61 = v109;
    goto LABEL_36;
  }

  (*(v51 + 8))(v110, v52);
LABEL_41:
  v71 = v106;
  v26 = sub_22B09370C(MEMORY[0x277D84F90]);

  sub_22B080408(v29, isUniquelyReferenced_nonNull_native);
  inited = v33;
LABEL_42:

  swift_setDeallocating();
  sub_22B080408(inited[2], inited[3]);
  sub_22B094864(v71);
  return v26;
}

uint64_t sub_22B094864(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22B094874(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B0948BC()
{
  v1 = *(sub_22B0DF0E0() - 8);
  v2 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));
  v3 = *(v0 + 32);
  return sub_22B091B14(v2);
}

uint64_t sub_22B094924()
{
  result = sub_22B092908();
  if (v1)
  {
    return v0;
  }

  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(v3 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v4);
    v7 = v3 >> 32;
    if (!v5)
    {
      v7 = v6;
    }
  }

  v8 = *(v0 + 32);
  v9 = __OFSUB__(v7, v8);
  v10 = v7 - v8;
  if (v9)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = result;
  if (v10 < result)
  {
    v0 = 0;
LABEL_12:
    sub_22B0804B0();
    swift_allocError();
    *v12 = v11;
    *(v12 + 8) = v0;
    swift_willThrow();
    return v0;
  }

  result = sub_22B092920();
  if (result > 1u)
  {
    v11 = result;
    v0 = 1;
    goto LABEL_12;
  }

  v13 = v11 - 1;
  v14 = *(v0 + 32);
  v15 = v14 + v13;
  if (__OFADD__(v14, v13))
  {
    goto LABEL_21;
  }

  if (v15 >= v14)
  {
    *(v0 + 32) = v15;
    v16 = *(v0 + 16);
    v17 = *(v0 + 24);
    sub_22B08045C(v16, v17);
    v0 = sub_22B0DEF70();
    sub_22B080408(v16, v17);
    return v0;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_22B094A94()
{
  sub_22B080408(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_22B094AF0(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B59C0, &unk_22B0E4118);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22B07FB3C();
  sub_22B0DFDB0();
  if (v2)
  {
    type metadata accessor for NamedGroupSpecifier();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = sub_22B0DFB80();
    v13 = v12;
    (*(v5 + 8))(v8, v4);
    *(v1 + 16) = v11;
    *(v1 + 24) = v13;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t sub_22B094C80(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5790, &qword_22B0E2FA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22B07FB3C();
  sub_22B0DFDC0();
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  sub_22B0DFBD0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_22B094DB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22B0DF380();
}

BOOL sub_22B094DB8(void *a1)
{
  if (v1[2] == a1[2] && v1[3] == a1[3])
  {
    return *v1 == *a1;
  }

  v4 = sub_22B0DFC60();
  result = 0;
  if (v4)
  {
    return *v1 == *a1;
  }

  return result;
}

unint64_t sub_22B094E54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5748, &unk_22B0E2FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B0E4000;
  *(inited + 32) = 0;
  v2 = *(v0 + 24);
  *(inited + 40) = *(v0 + 16);
  *(inited + 48) = v2;

  v3 = sub_22B0B8BF0(inited);
  swift_setDeallocating();
  sub_22B09544C(inited + 32);
  return v3;
}

unint64_t sub_22B094EE0()
{
  sub_22B0DF8E0();

  MEMORY[0x231889070](*(v0 + 16), *(v0 + 24));
  MEMORY[0x231889070](93, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t sub_22B094F60()
{
  sub_22B0DFD40();
  MEMORY[0x231889A00](0);
  return sub_22B0DFD80();
}

uint64_t sub_22B094FCC()
{
  sub_22B0DFD40();
  MEMORY[0x231889A00](0);
  return sub_22B0DFD80();
}

uint64_t sub_22B095028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22B0DFC60();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22B0950B8(uint64_t a1)
{
  v2 = sub_22B07FB3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B0950F4(uint64_t a1)
{
  v2 = sub_22B07FB3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B095130()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_22B09518C(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_22B094AF0(a1);
  return v2;
}

uint64_t sub_22B0951DC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 144))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_22B09525C()
{
  v1 = *v0;
  sub_22B0DFD40();
  (*(*v1 + 112))(v3);
  return sub_22B0DFD80();
}

uint64_t sub_22B095304()
{
  sub_22B0DFD40();
  (*(**v0 + 112))(v2);
  return sub_22B0DFD80();
}

unint64_t sub_22B0953F8()
{
  result = qword_2813EA2C8;
  if (!qword_2813EA2C8)
  {
    type metadata accessor for NamedGroupSpecifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA2C8);
  }

  return result;
}

uint64_t sub_22B09544C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5750, &qword_22B0E2C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22B0954C8()
{
  result = qword_27D8B59C8;
  if (!qword_27D8B59C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B59C8);
  }

  return result;
}

unint64_t sub_22B095520()
{
  result = qword_2813EA2D8;
  if (!qword_2813EA2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA2D8);
  }

  return result;
}

unint64_t sub_22B095578()
{
  result = qword_2813EA2E0;
  if (!qword_2813EA2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA2E0);
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

uint64_t sub_22B0955E0(uint64_t *a1, int a2)
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

uint64_t sub_22B095628(uint64_t result, int a2, int a3)
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

HomeKitMetrics::GroupDescriptorKey_optional __swiftcall GroupDescriptorKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22B0DFB70();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GroupDescriptorKey.rawValue.getter()
{
  v1 = 0x44495555656D6F68;
  if (*v0 != 1)
  {
    v1 = 0x726F737365636361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D614E70756F7267;
  }
}

uint64_t sub_22B095750(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x44495555656D6F68;
  if (v2 != 1)
  {
    v4 = 0x726F737365636361;
    v3 = 0xED00004449555579;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6D614E70756F7267;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  v7 = 0xE800000000000000;
  v8 = 0x44495555656D6F68;
  if (*a2 != 1)
  {
    v8 = 0x726F737365636361;
    v7 = 0xED00004449555579;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6D614E70756F7267;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22B0DFC60();
  }

  return v11 & 1;
}

unint64_t sub_22B095870()
{
  result = qword_2813EA3B8;
  if (!qword_2813EA3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA3B8);
  }

  return result;
}

uint64_t sub_22B0958C4()
{
  v1 = *v0;
  sub_22B0DFD40();
  sub_22B0DF380();

  return sub_22B0DFD80();
}

uint64_t sub_22B095978()
{
  *v0;
  *v0;
  sub_22B0DF380();
}

uint64_t sub_22B095A18()
{
  v1 = *v0;
  sub_22B0DFD40();
  sub_22B0DF380();

  return sub_22B0DFD80();
}

void sub_22B095AD4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0xE800000000000000;
  v5 = 0x44495555656D6F68;
  if (v2 != 1)
  {
    v5 = 0x726F737365636361;
    v4 = 0xED00004449555579;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D614E70756F7267;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_22B095B54()
{
  v1 = [*(v0 + 16) newBackgroundContext];
  v2 = [objc_opt_self() mergeByPropertyObjectTrumpMergePolicy];
  [v1 setMergePolicy_];

  sub_22B0DF710();
}

uint64_t sub_22B095C34(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6090, &unk_22B0E43F0);
    v2 = sub_22B0DFB50();
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
    v16 = *v14;
    v15 = v14[1];
    sub_22B089978(*(a1 + 56) + 40 * v13, v42);
    v40 = v16;
    v41 = v15;
    v37 = v42[0];
    v38 = v42[1];
    v39 = v43;
    v27 = v16;
    v28 = v15;

    swift_dynamicCast();
    v25[0] = v37;
    v25[1] = v38;
    v26 = v39;
    swift_dynamicCast();
    v33 = v29;
    v34 = v30;
    v35 = v31;
    sub_22B096E2C(&v32, v36);
    v29 = v33;
    v30 = v34;
    v31 = v35;
    sub_22B096E2C(v36, v25);
    v17 = *(v2 + 40);
    result = sub_22B0DF860();
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
    *v11 = v29;
    *(v11 + 16) = v30;
    *(v11 + 32) = v31;
    result = sub_22B096E2C(v25, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_22B095F20(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6090, &unk_22B0E43F0);
    v2 = sub_22B0DFB50();
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
    v15 = v14[1];
    v16 = *(*(a1 + 56) + v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_22B096E2C(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_22B096E2C(v32, v33);
    v17 = *(v2 + 40);
    result = sub_22B0DF860();
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
    result = sub_22B096E2C(v33, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_22B0961D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v96 = a4;
  v101[1] = *MEMORY[0x277D85DE8];
  v98 = sub_22B0DEF00();
  v8 = *(v98 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v98);
  v90 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v92 = &v84 - v12;
  v97 = sub_22B0DF6C0();
  v99 = *(v97 - 8);
  v13 = *(v99 + 64);
  v14 = MEMORY[0x28223BE20](v97);
  v93 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v84 - v16;
  v18 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v19 = a3;
  v20 = sub_22B0DF300();

  v21 = [v18 initWithName:v20 managedObjectModel:v19];

  v95 = v19;
  v100 = v5;
  *(v5 + 16) = v21;
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5A98, &qword_22B0E43E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B0E2760;
    v23 = *MEMORY[0x277CBE1D8];
    *(inited + 32) = sub_22B0DF330();
    *(inited + 40) = v24;
    *(inited + 48) = 1;
    v25 = *MEMORY[0x277CBE178];
    *(inited + 56) = sub_22B0DF330();
    *(inited + 64) = v26;
    *(inited + 72) = 1;
    v27 = sub_22B0B8ED0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5AA0, &qword_22B0E43E8);
    swift_arrayDestroy();
  }

  else
  {
    v27 = sub_22B0B8ED0(MEMORY[0x277D84F90]);
  }

  v28 = [*(v100 + 16) persistentStoreCoordinator];
  sub_22B0DF6B0();
  sub_22B095F20(v27);

  v29 = v96;
  v30 = v94;
  v31 = sub_22B0DF730();
  if (v30)
  {

    v32 = *(v99 + 8);
    v99 += 8;
    v88 = v32;
    v32(v17, v97);
    v33 = v98;
    if (qword_2813E9AA8 != -1)
    {
      swift_once();
    }

    v34 = sub_22B0DF1B0();
    v35 = __swift_project_value_buffer(v34, qword_2813EBE90);
    v36 = v8[2];
    v37 = v92;
    v86 = v8 + 2;
    v85 = v36;
    v36(v92, v29, v33);
    v38 = v30;
    v87 = v35;
    v39 = sub_22B0DF190();
    v40 = sub_22B0DF690();

    v41 = os_log_type_enabled(v39, v40);
    v91 = v8;
    v89 = v30;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = v37;
      v84 = swift_slowAlloc();
      v101[0] = v84;
      *v42 = 136315394;
      sub_22B096DD4();
      v45 = sub_22B0DFC20();
      v47 = v46;
      v94 = v8[1];
      v94(v44, v98);
      v48 = sub_22B07B428(v45, v47, v101);
      v33 = v98;

      *(v42 + 4) = v48;
      *(v42 + 12) = 2112;
      v49 = v30;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 14) = v50;
      *v43 = v50;
      _os_log_impl(&dword_22B074000, v39, v40, "Failed to open persistent store at %s: %@. Deleting and recreating...", v42, 0x16u);
      sub_22B093A64(v43);
      MEMORY[0x23188A520](v43, -1, -1);
      v51 = v84;
      __swift_destroy_boxed_opaque_existential_0(v84);
      MEMORY[0x23188A520](v51, -1, -1);
      v52 = v42;
      v29 = v96;
      MEMORY[0x23188A520](v52, -1, -1);
    }

    else
    {

      v94 = v8[1];
      v94(v37, v33);
    }

    v54 = [objc_opt_self() defaultManager];
    v55 = sub_22B0DEEB0();
    v101[0] = 0;
    v56 = [v54 removeItemAtURL:v55 error:v101];

    if (v56)
    {
      v57 = v33;
      v58 = v101[0];
      v59 = 0;
      v60 = v93;
    }

    else
    {
      v61 = v101[0];
      v62 = sub_22B0DEE80();

      swift_willThrow();
      v92 = 0;
      v63 = v90;
      v85(v90, v29, v33);
      v64 = v62;
      v65 = sub_22B0DF190();
      v66 = sub_22B0DF690();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v101[0] = v69;
        *v67 = 136315394;
        sub_22B096DD4();
        v70 = sub_22B0DFC20();
        v72 = v71;
        v94(v63, v98);
        v73 = sub_22B07B428(v70, v72, v101);
        v57 = v98;

        *(v67 + 4) = v73;
        *(v67 + 12) = 2112;
        v74 = v62;
        v75 = _swift_stdlib_bridgeErrorToNSError();
        *(v67 + 14) = v75;
        *v68 = v75;
        _os_log_impl(&dword_22B074000, v65, v66, "Failed to delete persistent store at %s: %@", v67, 0x16u);
        sub_22B093A64(v68);
        MEMORY[0x23188A520](v68, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x23188A520](v69, -1, -1);
        v76 = v67;
        v29 = v96;
        MEMORY[0x23188A520](v76, -1, -1);
      }

      else
      {

        v77 = v63;
        v57 = v33;
        v94(v77, v33);
      }

      v59 = v92;
      v60 = v93;
    }

    v78 = v89;
    v79 = [*(v100 + 16) persistentStoreCoordinator];
    sub_22B0DF6B0();
    sub_22B0B8FCC(MEMORY[0x277D84F90]);
    v80 = sub_22B0DF730();
    if (v59)
    {
    }

    else
    {
      v81 = v80;
    }

    v94(v29, v57);
    v88(v60, v97);
  }

  else
  {
    v53 = v31;

    (v8[1])(v29, v98);
    (*(v99 + 8))(v17, v97);
  }

  v82 = *MEMORY[0x277D85DE8];
  return v100;
}

uint64_t sub_22B096B28()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_22B096BB4(void *a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (![a1 hasChanges])
  {
LABEL_11:
    v16 = *MEMORY[0x277D85DE8];
    return;
  }

  v17[0] = 0;
  v2 = [a1 save_];
  v3 = v17[0];
  if (!v2)
  {
    v6 = v17[0];
    v7 = sub_22B0DEE80();

    swift_willThrow();
    if (qword_2813E9AA8 != -1)
    {
      swift_once();
    }

    v8 = sub_22B0DF1B0();
    __swift_project_value_buffer(v8, qword_2813EBE90);
    v9 = v7;
    v10 = sub_22B0DF190();
    v11 = sub_22B0DF690();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v7;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_22B074000, v10, v11, "Failed to save managed object context: %@", v12, 0xCu);
      sub_22B093A64(v13);
      MEMORY[0x23188A520](v13, -1, -1);
      MEMORY[0x23188A520](v12, -1, -1);
    }

    else
    {
    }

    goto LABEL_11;
  }

  v4 = *MEMORY[0x277D85DE8];

  v5 = v3;
}

unint64_t sub_22B096DD4()
{
  result = qword_27D8B5A90;
  if (!qword_27D8B5A90)
  {
    sub_22B0DEF00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5A90);
  }

  return result;
}

_OWORD *sub_22B096E2C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void CounterGroup.loadData(for:)(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_lock((v2 + 88));
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), v4);
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = v2 + 96;
  (*(v5 + 32))(sub_22B091694, v6, MEMORY[0x277D84F78] + 8, v4, v5);
  os_unfair_lock_unlock((v2 + 88));
}

Swift::Void __swiftcall CounterGroup.addEphemeralContainer(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  os_unfair_lock_lock(v1 + 22);
  sub_22B097810(&v1[24]);
  sub_22B097390();
  sub_22B097D38(countAndFlagsBits, object, sub_22B087D04);

  sub_22B0974C4();
  sub_22B097D38(countAndFlagsBits, object, sub_22B087B34);

  sub_22B0975F8();
  sub_22B097D38(countAndFlagsBits, object, sub_22B087B20);

  os_unfair_lock_unlock(v1 + 22);
}

Swift::Void __swiftcall CounterGroup.deactivateEphemeralContainer(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  os_unfair_lock_lock(v1 + 22);
  sub_22B097810(&v1[24]);
  sub_22B097390();
  swift_beginAccess();
  v5 = sub_22B09CA10(v10, countAndFlagsBits, object);
  if (*(v4 + 8))
  {
    *v4 = 0;
  }

  (v5)(v10, 0);
  swift_endAccess();

  sub_22B0974C4();
  swift_beginAccess();
  v7 = sub_22B09C988(v10, countAndFlagsBits, object);
  if (*(v6 + 8))
  {
    *v6 = 0;
  }

  (v7)(v10, 0);
  swift_endAccess();

  sub_22B0975F8();
  swift_beginAccess();
  v9 = sub_22B09C8FC(v10, countAndFlagsBits, object);
  if (*(v8 + 8))
  {
    *v8 = 0;
  }

  (v9)(v10, 0);
  swift_endAccess();

  os_unfair_lock_unlock(v1 + 22);
}

Swift::Void __swiftcall CounterGroup.removeEphemeralContainer(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  os_unfair_lock_lock(v1 + 22);
  sub_22B097F5C(&v1[24], countAndFlagsBits, object);

  os_unfair_lock_unlock(v1 + 22);
}

Swift::Void __swiftcall IntCounterObserver.updatedCounter(name:from:to:)(Swift::String name, Swift::Int_optional from, Swift::Int to)
{
  is_nil = from.is_nil;
  value = from.value;
  v7 = *v3;
  v8 = sub_22B0DF300();
  v10 = v8;
  if (is_nil)
  {
    v9 = 0;
  }

  else
  {
    v9 = value;
  }

  [v7 updatedCounter:v8 fromOldValue:v9 toNewValue:to];
}

void sub_22B097270(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = *a4;
  v8 = *v4;
  v9 = sub_22B0DF300();
  v11 = v9;
  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

  [v8 updatedCounter:v9 fromOldValue:v10 toNewValue:v7];
}

Swift::Void __swiftcall MaxValueObserver.updatedCounter(name:from:to:)(Swift::String name, HomeKitMetrics::CounterDistribution_optional *from, HomeKitMetrics::CounterDistribution *to)
{
  maxValue = to->maxValue;
  v5 = *v3;
  if (from->is_nil)
  {
    v6 = 0x8000000000000000;
  }

  else
  {
    v6 = from->value.maxValue;
    if (v6 == maxValue)
    {
      return;
    }
  }

  v7 = sub_22B0DF300();
  [v5 updatedCounter:v7 fromOldValue:v6 toNewValue:maxValue];
}

uint64_t sub_22B097390()
{
  if (v0[1])
  {
    v1 = v0[1];
LABEL_5:

    return v1;
  }

  v2 = *v0;
  result = swift_unownedRetainStrong();
  if (v2)
  {
    v4 = *(v2 + 80);

    swift_unownedRetainStrong();
    sub_22B0915C4(v2 + 16, &v11);

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5AF8, qword_22B0E4550);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    v1 = swift_allocObject();
    sub_22B0DEFB0();
    v8 = MEMORY[0x277D84F98];
    *(v1 + qword_2813EA5B8) = MEMORY[0x277D84F98];
    *(v1 + qword_2813EA5B0) = v8;
    *(v1 + qword_2813EA598) = v8;
    v9 = v11;
    *(v1 + 16) = v4;
    *(v1 + 24) = v9;
    sub_22B07D124(&v12, v10);
    swift_unknownObjectRetain();
    sub_22B091448(&v11);
    sub_22B0781A8(v10, v1 + 32);
    v0[1] = v1;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B0974C4()
{
  if (v0[2])
  {
    v1 = v0[2];
LABEL_5:

    return v1;
  }

  v2 = *v0;
  result = swift_unownedRetainStrong();
  if (v2)
  {
    v4 = *(v2 + 80);

    swift_unownedRetainStrong();
    sub_22B0915C4(v2 + 16, &v11);

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5AF0, &qword_22B0E4548);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    v1 = swift_allocObject();
    sub_22B0DEFB0();
    v8 = MEMORY[0x277D84F98];
    *(v1 + qword_2813EA5B8) = MEMORY[0x277D84F98];
    *(v1 + qword_2813EA5B0) = v8;
    *(v1 + qword_2813EA598) = v8;
    v9 = v11;
    *(v1 + 16) = v4;
    *(v1 + 24) = v9;
    sub_22B07D124(&v12, v10);
    swift_unknownObjectRetain();
    sub_22B091448(&v11);
    sub_22B0781A8(v10, v1 + 32);
    v0[2] = v1;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B0975F8()
{
  if (v0[3])
  {
    v1 = v0[3];
LABEL_5:

    return v1;
  }

  v2 = *v0;
  result = swift_unownedRetainStrong();
  if (v2)
  {
    v4 = *(v2 + 80);

    swift_unownedRetainStrong();
    sub_22B0915C4(v2 + 16, &v11);

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5AE8, &qword_22B0E4540);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    v1 = swift_allocObject();
    sub_22B0DEFB0();
    v8 = MEMORY[0x277D84F98];
    *(v1 + qword_2813EA5B8) = MEMORY[0x277D84F98];
    *(v1 + qword_2813EA5B0) = v8;
    *(v1 + qword_2813EA598) = v8;
    v9 = v11;
    *(v1 + 16) = v4;
    *(v1 + 24) = v9;
    sub_22B07D124(&v12, v10);
    swift_unknownObjectRetain();
    sub_22B091448(&v11);
    sub_22B0781A8(v10, v1 + 32);
    v0[3] = v1;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_22B097774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  os_unfair_lock_lock(v6 + 22);
  a6();
  sub_22B0A0320(a1, a2, a3, a4, a5);

  os_unfair_lock_unlock(v6 + 22);
}

uint64_t sub_22B097810(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22B0DF0E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v60 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v60 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  result = MEMORY[0x28223BE20](v14);
  v19 = &v60 - v18;
  v20 = *(a1 + 32);
  if (*(v20 + 16))
  {
    v64 = result;
    v60 = v17;
    v62 = v16;
    [*(v2 + 72) uptime];
    v22 = v21;
    v23 = [*(v2 + 64) currentDate];
    v69 = v13;
    v24 = v23;
    sub_22B0DF0B0();

    v25 = v69;
    v26 = *(v20 + 64);
    v67 = v20 + 64;
    v27 = 1 << *(v20 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & v26;
    v65 = v20;
    v66 = (v27 + 63) >> 6;
    v72 = (v5 + 16);
    v73 = (v5 + 8);
    v30 = (v5 + 32);
    result = swift_bridgeObjectRetain_n();
    v31 = 0;
    v63 = v2;
    v61 = v19;
    while (v29)
    {
LABEL_11:
      v68 = v29;
      v38 = __clz(__rbit64(v29)) | (v31 << 6);
      v39 = (*(v65 + 48) + 16 * v38);
      v41 = *v39;
      v40 = v39[1];
      v42 = *(*(v65 + 56) + 8 * v38);

      v43 = *(a1 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a1 + 32);
      v75 = v40;
      v76 = v45;
      v74 = v41;
      sub_22B088234(v41, v40, isUniquelyReferenced_nonNull_native, v22);
      *(a1 + 32) = v76;
      v46 = v60;
      v47 = v64;
      v71 = *v72;
      v71(v60, v19, v64);
      sub_22B0DF0A0();
      v48 = *(v2 + 16);
      v49 = sub_22B0DF070();
      v70 = v48;
      v50 = [v48 datePartitionContainingDate_];

      sub_22B0DF0B0();
      v51 = sub_22B0DF090();
      v52 = v62;
      v53 = v73;
      if (v51)
      {
        do
        {
          sub_22B0DEFC0();
          v55 = v54;
          sub_22B0974C4();
          sub_22B09A738(v74, v75, v10, v55);

          v56 = a1;
          v57 = *v53;
          (*v53)(v46, v47);
          v71(v46, v10, v47);
          v58 = sub_22B0DF070();
          v59 = [v70 datePartitionWithOffset:-1 fromDatePartition:v58];

          sub_22B0DF0B0();
          v53 = v73;
          v57(v10, v47);
          a1 = v56;
          v25 = v69;
          (*v30)(v10, v52, v47);
        }

        while ((sub_22B0DF090() & 1) != 0);
      }

      v32 = v68;
      sub_22B0DEFC0();
      v34 = v33;
      sub_22B0974C4();
      sub_22B09A738(v74, v75, v10, v34);

      v35 = *v53;
      (*v53)(v10, v47);
      v35(v25, v47);
      v36 = v46;
      v29 = (v32 - 1) & v32;
      v35(v36, v47);

      v2 = v63;
      v19 = v61;
    }

    while (1)
    {
      v37 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v37 >= v66)
      {

        return (*v73)(v19, v64);
      }

      v29 = *(v67 + 8 * v37);
      ++v31;
      if (v29)
      {
        v31 = v37;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22B097D38(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, void, uint64_t, unint64_t, uint64_t))
{
  v7 = qword_2813EA5B0;
  swift_beginAccess();
  if (*(*(v3 + v7) + 16) && (sub_22B0768A8(a1, a2), (v8 & 1) != 0))
  {
    swift_endAccess();
    if (qword_2813E9AA8 != -1)
    {
      swift_once();
    }

    v9 = sub_22B0DF1B0();
    __swift_project_value_buffer(v9, qword_2813EBE90);

    v10 = sub_22B0DF190();
    v11 = sub_22B0DF690();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_22B07B428(a1, a2, &v17);
      _os_log_impl(&dword_22B074000, v10, v11, "Ephemeral container already exists: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x23188A520](v13, -1, -1);
      MEMORY[0x23188A520](v12, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();

    v14 = *(v3 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v3 + v7);
    *(v3 + v7) = 0x8000000000000000;
    a3(1, MEMORY[0x277D84F98], a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + v7) = v16;
    swift_endAccess();
  }
}

uint64_t sub_22B097F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22B097390();
  swift_beginAccess();

  sub_22B080A1C(0, 0, a2, a3);
  swift_endAccess();

  sub_22B0974C4();
  swift_beginAccess();

  sub_22B0809F4(0, 0, a2, a3);
  swift_endAccess();

  sub_22B0975F8();
  swift_beginAccess();

  sub_22B0809CC(0, 0, a2, a3);
  swift_endAccess();
}

uint64_t CounterGroup.ephemeralContainerNames.getter()
{
  os_unfair_lock_lock(v0 + 22);
  sub_22B0980F4(&v2);
  os_unfair_lock_unlock(v0 + 22);
  return v2;
}

uint64_t sub_22B0980F4@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5AE0, &qword_22B0E4538);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B0E2C10;
  v2 = sub_22B097390();
  p_cache = _TtC14HomeKitMetrics23AccessoryGroupSpecifier.cache;
  v4 = qword_2813EA5B0;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = *(v5 + 16);
  v29 = inited;
  if (v6)
  {
    v7 = sub_22B083304(v6, 0);
    v8 = sub_22B094920(&v28, v7 + 4, v6, v5);

    result = sub_22B0781A0();
    if (v8 != v6)
    {
      __break(1u);
      goto LABEL_19;
    }

    inited = v29;
    p_cache = (_TtC14HomeKitMetrics23AccessoryGroupSpecifier + 16);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  *(inited + 32) = v7;
  v10 = sub_22B0974C4();
  v11 = p_cache[182];
  swift_beginAccess();
  v12 = *&v11[v10];
  v13 = *(v12 + 16);
  if (!v13)
  {

    v14 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v14 = sub_22B083304(*(v12 + 16), 0);
  v15 = sub_22B094920(&v28, v14 + 4, v13, v12);

  result = sub_22B0781A0();
  if (v15 != v13)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  inited = v29;
  p_cache = (_TtC14HomeKitMetrics23AccessoryGroupSpecifier + 16);
LABEL_9:
  *(inited + 40) = v14;
  v16 = sub_22B0975F8();
  v17 = p_cache[182];
  swift_beginAccess();
  v18 = *&v17[v16];
  v19 = *(v18 + 16);
  if (!v19)
  {

    v20 = MEMORY[0x277D84F90];
LABEL_13:
    *(inited + 48) = v20;
    v22 = sub_22B098408(inited);
    v23 = v22;
    v24 = *(v22 + 16);
    if (v24)
    {
      v25 = sub_22B083304(*(v22 + 16), 0);
      v26 = sub_22B0931B8(&v28, v25 + 4, v24, v23);
      result = sub_22B0781A0();
      if (v26 == v24)
      {
LABEL_17:
        *a1 = v25;
        return result;
      }

      __break(1u);
    }

    v25 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v20 = sub_22B083304(*(v18 + 16), 0);
  v21 = sub_22B094920(&v28, v20 + 4, v19, v18);

  result = sub_22B0781A0();
  if (v21 == v19)
  {

    inited = v29;
    goto LABEL_13;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22B098408(uint64_t a1)
{
  result = MEMORY[0x2318892B0](0, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v12 = result;
  while (1)
  {
LABEL_6:
    v9 = *(a1 + 16);
    if (v3 == v9)
    {

      return v12;
    }

    if (v3 >= v9)
    {
      break;
    }

    v10 = *(a1 + 32 + 8 * v3);

    ++v3;
    if (v10)
    {
      v4 = *(v10 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = (v10 + 40);
        while (v5 < v4)
        {
          ++v5;
          v8 = *(v6 - 1);
          v7 = *v6;

          sub_22B0AABF4(&v11, v8, v7);

          v4 = *(v10 + 16);
          v6 += 2;
          if (v5 == v4)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B098524(uint64_t a1)
{
  v2 = sub_22B0DF0E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v50 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v49 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = sub_22B076420(&qword_2813EAD80);
  result = MEMORY[0x2318892B0](0, v2, v15);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v54 = result;
  v51 = (v3 + 56);
  v52 = v14;
  v45 = v3 + 16;
  v46 = v3;
  v21 = (v3 + 48);
  v47 = (v3 + 8);
  v48 = (v3 + 32);
  v40 = a1 + 32;
  v41 = a1;
  v22 = 0xF000000000000007;
  while (1)
  {
    v53 = v22;
    v44 = v17;
    if ((~v22 & 0xF000000000000007) == 0)
    {
      goto LABEL_19;
    }

    v43 = v20;
    v23 = 0;
    v24 = (v17 + 64) >> 6;
    if (!v19)
    {
      break;
    }

    while (1)
    {
      v25 = v23;
      v14 = v52;
LABEL_12:
      v28 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v46 + 16))(v12, *(v53 + 48) + *(v46 + 72) * (v28 | (v25 << 6)), v2);
      v29 = 0;
      v27 = v25;
LABEL_13:
      (*v51)(v12, v29, 1, v2);
      v30 = *v21;
      if ((*v21)(v12, 1, v2) == 1)
      {
        break;
      }

      sub_22B09F358(v12, v14);
      if (v30(v14, 1, v2) == 1)
      {
        goto LABEL_27;
      }

      v31 = v50;
      (*v48)(v50, v14, v2);
      v32 = v49;
      sub_22B0AA93C(v49, v31);
      (*v47)(v32, v2);
      v23 = v27;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    result = sub_22B09F2F0(v12);
    v20 = v43;
LABEL_19:
    v33 = *(v41 + 16);
    if (v20 == v33)
    {
      goto LABEL_26;
    }

    if (v20 >= v33)
    {
      __break(1u);
      return result;
    }

    v22 = *(v40 + 8 * v20);
    v34 = v20 + 1;
    v35 = -1 << *(v22 + 32);
    v36 = *(v22 + 56);
    v43 = ~v35;
    v37 = -v35;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v42 = v38 & v36;

    result = sub_22B09F2DC(v53);
    v19 = v42;
    v17 = v43;
    v18 = v22 + 56;
    v20 = v34;
  }

LABEL_5:
  if (v24 <= v23 + 1)
  {
    v26 = v23 + 1;
  }

  else
  {
    v26 = v24;
  }

  v27 = v26 - 1;
  v14 = v52;
  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v24)
    {
      v19 = 0;
      v29 = 1;
      goto LABEL_13;
    }

    v19 = *(v18 + 8 * v25);
    ++v23;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  (*v51)(v14, 1, 1, v2);
LABEL_27:

  sub_22B09F2DC(v53);
  return v54;
}

uint64_t sub_22B098960(uint64_t a1)
{
  v2 = sub_22B0DF0E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v26 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v26 - v11;
  v13 = *(a1 + 16);
  v14 = sub_22B076420(&qword_2813EAD80);
  result = MEMORY[0x2318892B0](v13, v2, v14);
  v16 = 0;
  v27 = a1;
  v28 = result;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v3 + 32;
  v26[3] = v3 + 16;
  v26[1] = v3 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v3 + 16))(v12, *(v27 + 48) + *(v3 + 72) * (v25 | (v24 << 6)), v2);
      (*(v3 + 32))(v7, v12, v2);
      sub_22B0AA93C(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}