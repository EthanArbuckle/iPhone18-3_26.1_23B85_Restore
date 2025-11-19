uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceContext.hashValue.getter()
{
  v2 = *v0;
  sub_19393CAB0();
  IntelligenceFlowJointResolverTelemetry.JRInferenceContext.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19355AEB8()
{
  v2 = *v0;
  sub_19393CAB0();
  IntelligenceFlowJointResolverTelemetry.JRInferenceContext.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered.allocation.setter()
{
  result = OUTLINED_FUNCTION_93_5();
  *v1 = v0;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered.codepathId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(v1) + 20);
  type metadata accessor for AIML.UUID();
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  *v0 = MEMORY[0x1E69E7CC0];
  sub_19344E6DC(v0 + v2, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_26_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_19355B2F4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19355B350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIML.UUID();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_1935682C8(v14, v11, type metadata accessor for AIML.UUID);
        sub_1935682C8(v15, v8, type metadata accessor for AIML.UUID);
        sub_19355A65C(&qword_1EAE3BD10, type metadata accessor for AIML.UUID);
        v17 = sub_19393C550();
        sub_193568274();
        sub_193568274();
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_19355B558(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v6 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3 ^ *v4;
        if (v5)
        {
          break;
        }

        ++v3;
        ++v4;
        --v2;
      }

      while (v2);
      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_19355B5C8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  while (v3 != v2)
  {
    v5 = *(v4 + 8 * v3);
    v6 = *(a2 + 32 + 8 * v3);
    v7 = *(v5 + 16);
    v8 = *(v6 + 16);
    result = v7 == v8;
    if (v7 != v8)
    {
      return result;
    }

    if (v7)
    {
      v9 = v5 == v6;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = (v5 + 32);
      v11 = (v6 + 32);
      while (v7)
      {
        if (*v10 != *v11)
        {
          return 0;
        }

        ++v10;
        ++v11;
        if (!--v7)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      break;
    }

LABEL_15:
    if (++v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19355B674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIML.UUID();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v37 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  v11 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v13 = &v37 - v12;
  v42 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount(0);
  v14 = *(*(v42 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v42);
  v44 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    return 0;
  }

  if (v20 && a1 != a2)
  {
    v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v22 = a1 + v21;
    v23 = a2 + v21;
    v39 = *(v17 + 72);
    v40 = v13;
    v37 = v10;
    v41 = &v37 - v18;
    do
    {
      sub_1935682C8(v22, v19, type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount);
      v24 = v44;
      sub_1935682C8(v23, v44, type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount);
      v25 = *(v43 + 48);
      sub_193448804(v19, v13, &qword_1EAE3BCA0, &unk_19395C320);
      sub_193448804(v24, &v13[v25], &qword_1EAE3BCA0, &unk_19395C320);
      if (__swift_getEnumTagSinglePayload(v13, 1, v4) == 1)
      {
        if (__swift_getEnumTagSinglePayload(&v13[v25], 1, v4) != 1)
        {
          sub_193568274();
LABEL_21:
          sub_193568274();
          sub_19344E6DC(v13, &qword_1EAE3BD08, &qword_1939595A0);
          return 0;
        }

        sub_19344E6DC(v13, &qword_1EAE3BCA0, &unk_19395C320);
      }

      else
      {
        sub_193448804(v13, v37, &qword_1EAE3BCA0, &unk_19395C320);
        if (__swift_getEnumTagSinglePayload(&v13[v25], 1, v4) == 1)
        {
          sub_193568274();
          sub_193568274();
          goto LABEL_21;
        }

        sub_19355A5F8(&v13[v25], v38);
        sub_19355A65C(&qword_1EAE3BD10, type metadata accessor for AIML.UUID);
        v26 = sub_19393C550();
        sub_193568274();
        sub_193568274();
        sub_19344E6DC(v13, &qword_1EAE3BCA0, &unk_19395C320);
        if ((v26 & 1) == 0)
        {
          sub_193568274();
          sub_193568274();
          return 0;
        }
      }

      v27 = v4;
      v28 = v42;
      v29 = &v41[*(v42 + 20)];
      v30 = *v29;
      v31 = v29[4];
      v19 = v41;
      sub_193568274();
      v32 = (v44 + *(v28 + 20));
      v33 = *v32;
      v34 = *(v32 + 4);
      sub_193568274();
      if (v31)
      {
        if (!v34)
        {
          return 0;
        }
      }

      else
      {
        if (v30 == v33)
        {
          v35 = v34;
        }

        else
        {
          v35 = 1;
        }

        if (v35)
        {
          return 0;
        }
      }

      v23 += v39;
      v22 += v39;
      --v20;
      v4 = v27;
      v13 = v40;
    }

    while (v20);
  }

  return 1;
}

uint64_t sub_19355BB8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIML.UUID();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v30 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = a1 + 32;
  v15 = a2 + 32;
  v31 = a1 + 32;
  v32 = v12;
  v30 = a2 + 32;
  while (v13 != v12)
  {
    v16 = (v14 + 16 * v13);
    v17 = *v16;
    v18 = (v15 + 16 * v13);
    v19 = *v18;
    v20 = *(*v16 + 16);
    if (v20 != *(*v18 + 16))
    {
      return 0;
    }

    v21 = *(v16 + 2);
    v22 = *(v16 + 12);
    v23 = *(v18 + 2);
    v24 = *(v18 + 12);
    if (v20 && v17 != v19)
    {
      v33 = v22;
      v34 = v23;
      v35 = v21;
      v36 = v24;
      v25 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v37 = v13;
      v38 = v17 + v25;
      v26 = v19 + v25;

      v27 = 0;
      while (v27 < *(v17 + 16))
      {
        v28 = *(v39 + 72) * v27;
        result = sub_1935682C8(v38 + v28, v11, type metadata accessor for AIML.UUID);
        if (v27 >= *(v19 + 16))
        {
          goto LABEL_27;
        }

        sub_1935682C8(v26 + v28, v8, type metadata accessor for AIML.UUID);
        sub_19355A65C(&qword_1EAE3BD10, type metadata accessor for AIML.UUID);
        v29 = sub_19393C550();
        sub_193568274();
        result = sub_193568274();
        if ((v29 & 1) == 0)
        {

          return 0;
        }

        if (v20 == ++v27)
        {

          v14 = v31;
          v12 = v32;
          v13 = v37;
          v15 = v30;
          v21 = v35;
          v24 = v36;
          LOBYTE(v22) = v33;
          v23 = v34;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
      break;
    }

LABEL_15:
    if (v22)
    {
      if (!v24)
      {
        return 0;
      }
    }

    else
    {
      if (v21 != v23)
      {
        LOBYTE(v24) = 1;
      }

      if (v24)
      {
        return 0;
      }
    }

    ++v13;
    result = 1;
    if (v13 == v12)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19355BE88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *v3;
      v6 = *i;
      if ((sub_19355B5C8(*(v3 - 1), *(i - 1)) & 1) == 0 || (sub_19355CEBC(v5, v6) & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_19355BF1C(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || result == a2)
  {
    return 1;
  }

  v6 = (result + 40);
  v7 = (a2 + 40);
  while (v4)
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    v7 += 16;
    v12 = *(v6 - 1);
    v13 = *v6;
    v10 = (a3)(result, a2, a3, a4);
    v11 = v10 == a3();
    result = v11;
    v11 = !v11 || v4-- == 1;
    v6 += 16;
    if (v11)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19355BFE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIML.UUID();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v50 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  v13 = *(*(v65 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v65);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v50 - v17;
  v64 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(0);
  v62 = *(v64 - 8);
  v19 = *(v62 + 64);
  v20 = MEMORY[0x1EEE9AC00](v64);
  v68 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v20);
  v66 = &v50 - v23;
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
    return 0;
  }

  if (!v24 || a1 == a2)
  {
    return 1;
  }

  v25 = 0;
  v26 = a1 + 32;
  v27 = a2 + 32;
  v56 = v11;
  v67 = v4;
  v28 = v66;
  v52 = v26;
  v53 = v24;
  v51 = a2 + 32;
  while (v25 != v24)
  {
    v29 = *(v26 + 8 * v25);
    v30 = *(v29 + 16);
    v63 = *(v27 + 8 * v25);
    v31 = *(v63 + 16);
    result = v30 == v31;
    if (v30 != v31)
    {
      return result;
    }

    if (v30 && v29 != v63)
    {
      v54 = v30 == v31;
      v55 = v25;
      v32 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v58 = v63 + v32;
      v59 = v29 + v32;

      v33 = 0;
      v57 = v30;
      while (v33 < *(v29 + 16))
      {
        v34 = *(v62 + 72) * v33;
        result = sub_1935682C8(v59 + v34, v28, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow);
        if (v33 >= *(v63 + 16))
        {
          goto LABEL_46;
        }

        v35 = v68;
        sub_1935682C8(v58 + v34, v68, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow);
        v36 = *(v65 + 48);
        sub_193448804(v28, v18, &qword_1EAE3BCA0, &unk_19395C320);
        sub_193448804(v35, &v18[v36], &qword_1EAE3BCA0, &unk_19395C320);
        if (__swift_getEnumTagSinglePayload(v18, 1, v4) == 1)
        {
          if (__swift_getEnumTagSinglePayload(&v18[v36], 1, v4) != 1)
          {
            sub_193568274();
            goto LABEL_37;
          }

          sub_19344E6DC(v18, &qword_1EAE3BCA0, &unk_19395C320);
        }

        else
        {
          sub_193448804(v18, v61, &qword_1EAE3BCA0, &unk_19395C320);
          if (__swift_getEnumTagSinglePayload(&v18[v36], 1, v4) == 1)
          {
            sub_193568274();
            sub_193568274();
LABEL_37:
            sub_193568274();
            v49 = v18;
            goto LABEL_41;
          }

          sub_19355A5F8(&v18[v36], v60);
          sub_19355A65C(&qword_1EAE3BD10, type metadata accessor for AIML.UUID);
          v37 = sub_19393C550();
          v28 = v66;
          v4 = v67;
          sub_193568274();
          sub_193568274();
          sub_19344E6DC(v18, &qword_1EAE3BCA0, &unk_19395C320);
          if ((v37 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        v38 = *(v64 + 20);
        v39 = *(v65 + 48);
        sub_193448804(v28 + v38, v16, &qword_1EAE3BCA0, &unk_19395C320);
        sub_193448804(v68 + v38, &v16[v39], &qword_1EAE3BCA0, &unk_19395C320);
        if (__swift_getEnumTagSinglePayload(v16, 1, v4) == 1)
        {
          if (__swift_getEnumTagSinglePayload(&v16[v39], 1, v4) != 1)
          {
            sub_193568274();
LABEL_40:
            sub_193568274();
            v49 = v16;
LABEL_41:
            sub_19344E6DC(v49, &qword_1EAE3BD08, &qword_1939595A0);
            goto LABEL_42;
          }

          sub_19344E6DC(v16, &qword_1EAE3BCA0, &unk_19395C320);
        }

        else
        {
          sub_193448804(v16, v56, &qword_1EAE3BCA0, &unk_19395C320);
          if (__swift_getEnumTagSinglePayload(&v16[v39], 1, v4) == 1)
          {
            sub_193568274();
            sub_193568274();
            goto LABEL_40;
          }

          sub_19355A5F8(&v16[v39], v60);
          sub_19355A65C(&qword_1EAE3BD10, type metadata accessor for AIML.UUID);
          v40 = sub_19393C550();
          v28 = v66;
          sub_193568274();
          v4 = v67;
          sub_193568274();
          sub_19344E6DC(v16, &qword_1EAE3BCA0, &unk_19395C320);
          if ((v40 & 1) == 0)
          {
LABEL_34:
            sub_193568274();
            sub_193568274();
LABEL_42:

            return 0;
          }
        }

        v41 = v64;
        v42 = v28 + *(v64 + 24);
        v43 = *v42;
        v44 = *(v42 + 4);
        sub_193568274();
        v45 = v68 + *(v41 + 24);
        v46 = *v45;
        v47 = *(v45 + 4);
        result = sub_193568274();
        if (v44)
        {
          if (!v47)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v43 == v46)
          {
            v48 = v47;
          }

          else
          {
            v48 = 1;
          }

          if (v48)
          {
            goto LABEL_42;
          }
        }

        ++v33;
        v28 = v66;
        if (v57 == v33)
        {

          v26 = v52;
          v24 = v53;
          v25 = v55;
          v27 = v51;
          result = v54;
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
      break;
    }

LABEL_31:
    if (++v25 == v24)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19355C820(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_9_2();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_91();
  }

  v3 = 0;
  v4 = result + 32;
  while (v3 != v2)
  {
    v5 = *(v4 + 8 * v3);
    v6 = *(a2 + 32 + 8 * v3);
    v7 = *(v5 + 16);
    v8 = *(v6 + 16);
    result = v7 == v8;
    if (v7 != v8)
    {
      return result;
    }

    if (v7)
    {
      v9 = v5 == v6;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = (v5 + 32);
      v11 = (v6 + 32);
      while (v7)
      {
        if (*v10 != *v11)
        {
          return OUTLINED_FUNCTION_9_2();
        }

        ++v10;
        ++v11;
        if (!--v7)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      break;
    }

LABEL_15:
    if (++v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19355C8C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIML.UUID();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v36 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = a1 + 32;
  v15 = a2 + 32;
  v37 = a1 + 32;
  v38 = v12;
  v36 = a2 + 32;
  while (v13 != v12)
  {
    v16 = (v14 + 24 * v13);
    v17 = *v16;
    v18 = (v15 + 24 * v13);
    v19 = *v18;
    v20 = *(*v16 + 16);
    if (v20 != *(*v18 + 16))
    {
      return 0;
    }

    v21 = v16[2];
    v22 = *(v16 + 12);
    v23 = v16[4];
    v24 = *(v16 + 20);
    v25 = v18[2];
    v26 = *(v18 + 12);
    v27 = v18[4];
    v28 = *(v18 + 20);
    if (v20 && v17 != v19)
    {
      v39 = v22;
      v40 = v26;
      v41 = v24;
      v42 = v28;
      v29 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v43 = v13;
      v44 = v17 + v29;
      v30 = v19 + v29;

      v31 = 0;
      while (v31 < *(v17 + 16))
      {
        v32 = *(v45 + 72) * v31;
        result = sub_1935682C8(v44 + v32, v11, type metadata accessor for AIML.UUID);
        if (v31 >= *(v19 + 16))
        {
          goto LABEL_35;
        }

        sub_1935682C8(v30 + v32, v8, type metadata accessor for AIML.UUID);
        sub_19355A65C(&qword_1EAE3BD10, type metadata accessor for AIML.UUID);
        v33 = sub_19393C550();
        sub_193568274();
        result = sub_193568274();
        if ((v33 & 1) == 0)
        {

          return 0;
        }

        if (v20 == ++v31)
        {

          v14 = v37;
          v12 = v38;
          v13 = v43;
          v15 = v36;
          LOBYTE(v24) = v41;
          v28 = v42;
          LOBYTE(v22) = v39;
          v26 = v40;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
      break;
    }

LABEL_15:
    if (v22)
    {
      if (!v26)
      {
        return 0;
      }
    }

    else
    {
      if (v21 == v25)
      {
        v34 = v26;
      }

      else
      {
        v34 = 1;
      }

      if (v34)
      {
        return 0;
      }
    }

    if (v24)
    {
      if (!v28)
      {
        return 0;
      }
    }

    else
    {
      if (v23 == v27)
      {
        v35 = v28;
      }

      else
      {
        v35 = 1;
      }

      if (v35)
      {
        return 0;
      }
    }

    ++v13;
    result = 1;
    if (v13 == v12)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19355CBFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIML.UUID();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = a1 + 32;
  v15 = a2 + 32;
  v27 = a1 + 32;
  v28 = v12;
  v26 = a2 + 32;
  while (v13 != v12)
  {
    v16 = *(v14 + 8 * v13);
    v17 = *(v15 + 8 * v13);
    v18 = *(v16 + 16);
    v19 = *(v17 + 16);
    result = v18 == v19;
    if (v18 != v19)
    {
      return result;
    }

    if (v18 && v16 != v17)
    {
      v29 = v18 == v19;
      v20 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v30 = v13;
      v31 = v16 + v20;
      v21 = v17 + v20;

      v22 = 0;
      while (v22 < *(v16 + 16))
      {
        v23 = *(v32 + 72) * v22;
        result = sub_1935682C8(v31 + v23, v11, type metadata accessor for AIML.UUID);
        if (v22 >= *(v17 + 16))
        {
          goto LABEL_22;
        }

        sub_1935682C8(v21 + v23, v8, type metadata accessor for AIML.UUID);
        sub_19355A65C(&qword_1EAE3BD10, type metadata accessor for AIML.UUID);
        v24 = sub_19393C550();
        sub_193568274();
        result = sub_193568274();
        if ((v24 & 1) == 0)
        {

          return 0;
        }

        if (v18 == ++v22)
        {

          v14 = v27;
          v12 = v28;
          v13 = v30;
          v15 = v26;
          result = v29;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
      break;
    }

LABEL_15:
    if (++v13 == v12)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19355CEBC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_9_2();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_91();
  }

  v3 = 0;
  v4 = result + 32;
  while (v3 != v2)
  {
    v5 = *(v4 + 8 * v3);
    v6 = *(a2 + 32 + 8 * v3);
    v7 = *(v5 + 16);
    v8 = *(v6 + 16);
    result = v7 == v8;
    if (v7 != v8)
    {
      return result;
    }

    if (v7)
    {
      v9 = v5 == v6;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = (v5 + 32);
      v11 = (v6 + 32);
      while (v7)
      {
        if (*v10 != *v11)
        {
          return OUTLINED_FUNCTION_9_2();
        }

        ++v10;
        ++v11;
        if (!--v7)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      break;
    }

LABEL_15:
    if (++v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19355CF60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v113 = &v91 - v10;
  v11 = type metadata accessor for AIML.UUID();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v105 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v106 = &v91 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v104 = &v91 - v21;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  v22 = *(*(v110 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v110);
  v108 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v109 = &v91 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v91 - v27;
  v29 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v111 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v112 = &v91 - v35;
  v36 = *(a1 + 16);
  if (v36 != *(a2 + 16))
  {
    return 0;
  }

  if (!v36 || a1 == a2)
  {
    return 1;
  }

  v97 = v33;
  v92 = v5;
  v37 = 0;
  v38 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v39 = a1 + v38;
  v98 = a2 + v38;
  v99 = v28;
  v40 = *(v34 + 72);
  v103 = v9;
  v100 = v36;
  v101 = v14;
  v94 = a1 + v38;
  v93 = v40;
  while (1)
  {
    v41 = v37;
    v42 = v40 * v37;
    result = sub_1935682C8(v39 + v42, v112, type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory);
    v95 = v41;
    if (v41 == v100)
    {
      goto LABEL_64;
    }

    v44 = v111;
    sub_1935682C8(v98 + v42, v111, type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory);
    v45 = *(v110 + 48);
    sub_193448804(v112, v28, &qword_1EAE3BCA0, &unk_19395C320);
    sub_193448804(v44, &v28[v45], &qword_1EAE3BCA0, &unk_19395C320);
    if (__swift_getEnumTagSinglePayload(v28, 1, v11) == 1)
    {
      if (__swift_getEnumTagSinglePayload(&v28[v45], 1, v11) != 1)
      {
        goto LABEL_62;
      }

      result = sub_19344E6DC(v28, &qword_1EAE3BCA0, &unk_19395C320);
      v46 = v97;
    }

    else
    {
      sub_193448804(v28, v104, &qword_1EAE3BCA0, &unk_19395C320);
      if (__swift_getEnumTagSinglePayload(&v28[v45], 1, v11) == 1)
      {
        sub_193568274();
LABEL_62:
        sub_19344E6DC(v28, &qword_1EAE3BD08, &qword_1939595A0);
        goto LABEL_59;
      }

      sub_19355A5F8(&v28[v45], v14);
      sub_19355A65C(&qword_1EAE3BD10, type metadata accessor for AIML.UUID);
      v47 = sub_19393C550();
      sub_193568274();
      sub_193568274();
      result = sub_19344E6DC(v28, &qword_1EAE3BCA0, &unk_19395C320);
      v46 = v97;
      if ((v47 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v48 = v46[5];
    v49 = *(v112 + v48);
    v50 = *(v111 + v48);
    v51 = *(v49 + 16);
    if (v51 != *(v50 + 16))
    {
      goto LABEL_59;
    }

    if (v51)
    {
      v52 = v49 == v50;
    }

    else
    {
      v52 = 1;
    }

    if (!v52)
    {
      v53 = (v49 + 32);
      v54 = (v50 + 32);
      while (v51)
      {
        if (*v53 != *v54)
        {
          goto LABEL_59;
        }

        ++v53;
        ++v54;
        if (!--v51)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      __break(1u);
LABEL_64:
      __break(1u);
      return result;
    }

LABEL_20:
    v55 = v46[6];
    v56 = (v112 + v55);
    v57 = *(v112 + v55 + 4);
    v58 = (v111 + v55);
    v59 = *(v111 + v55 + 4);
    if (v57)
    {
      if (!v59)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (*v56 != *v58)
      {
        LOBYTE(v59) = 1;
      }

      if (v59)
      {
        goto LABEL_59;
      }
    }

    v60 = v46[7];
    v61 = *(v112 + v60);
    v62 = *(v111 + v60);
    v63 = *(v61 + 16);
    if (v63 != *(v62 + 16))
    {
      goto LABEL_59;
    }

    if (v63 && v61 != v62)
    {
      break;
    }

LABEL_53:
    v37 = v95 + 1;
    sub_193568274();
    sub_193568274();
    result = 1;
    v14 = v101;
    v39 = v94;
    v40 = v93;
    if (v37 == v100)
    {
      return result;
    }
  }

  v64 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v65 = v61 + v64;
  v66 = v62 + v64;
  v96 = *(v92 + 72);
  v107 = v4;
  while (1)
  {
    sub_1935682C8(v65, v113, type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext);
    v102 = v65;
    sub_1935682C8(v66, v9, type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext);
    v67 = *(v9 + 4);
    if (*(v113 + 4))
    {
      if (!*(v9 + 4))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (*v113 != *v9)
      {
        v67 = 1;
      }

      if (v67)
      {
        goto LABEL_58;
      }
    }

    v68 = *(v4 + 20);
    v69 = v109;
    v70 = *(v110 + 48);
    sub_193448804(v113 + v68, v109, &qword_1EAE3BCA0, &unk_19395C320);
    v71 = v9 + v68;
    v72 = v69;
    sub_193448804(v71, v69 + v70, &qword_1EAE3BCA0, &unk_19395C320);
    if (__swift_getEnumTagSinglePayload(v69, 1, v11) == 1)
    {
      if (__swift_getEnumTagSinglePayload(v69 + v70, 1, v11) != 1)
      {
        goto LABEL_57;
      }

      sub_19344E6DC(v69, &qword_1EAE3BCA0, &unk_19395C320);
      v73 = v107;
    }

    else
    {
      sub_193448804(v69, v106, &qword_1EAE3BCA0, &unk_19395C320);
      if (__swift_getEnumTagSinglePayload(v69 + v70, 1, v11) == 1)
      {
        goto LABEL_56;
      }

      sub_19355A5F8(v69 + v70, v101);
      sub_19355A65C(&qword_1EAE3BD10, type metadata accessor for AIML.UUID);
      v74 = sub_19393C550();
      sub_193568274();
      v9 = v103;
      sub_193568274();
      sub_19344E6DC(v69, &qword_1EAE3BCA0, &unk_19395C320);
      v73 = v107;
      v28 = v99;
      if ((v74 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    v75 = *(v73 + 24);
    v76 = *(v110 + 48);
    v77 = v108;
    sub_193448804(v113 + v75, v108, &qword_1EAE3BCA0, &unk_19395C320);
    v78 = v9 + v75;
    v72 = v77;
    sub_193448804(v78, v77 + v76, &qword_1EAE3BCA0, &unk_19395C320);
    if (__swift_getEnumTagSinglePayload(v77, 1, v11) != 1)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v77 + v76, 1, v11) != 1)
    {
      goto LABEL_57;
    }

    sub_19344E6DC(v77, &qword_1EAE3BCA0, &unk_19395C320);
    v4 = v107;
LABEL_46:
    v80 = *(v4 + 28);
    v81 = (v113 + v80);
    v82 = *(v113 + v80 + 9);
    v83 = v9 + v80;
    v84 = v83[9];
    if (v82)
    {
      if ((v83[9] & 1) == 0)
      {
        goto LABEL_58;
      }

      sub_193568274();
      sub_193568274();
    }

    else
    {
      if (v83[9])
      {
        goto LABEL_58;
      }

      v85 = *v81;
      v86 = *(v81 + 8);
      v87 = *v83;
      v88 = v83[8];
      v116 = v85;
      v117 = v86 & 1;
      v114 = v87;
      v115 = v88 & 1;
      v89 = IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.rawValue.getter();
      v90 = IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.rawValue.getter();
      sub_193568274();
      v4 = v107;
      sub_193568274();
      v52 = v89 == v90;
      v9 = v103;
      if (!v52)
      {
        goto LABEL_59;
      }
    }

    v66 += v96;
    v65 = v102 + v96;
    if (!--v63)
    {
      goto LABEL_53;
    }
  }

  sub_193448804(v77, v105, &qword_1EAE3BCA0, &unk_19395C320);
  if (__swift_getEnumTagSinglePayload(v77 + v76, 1, v11) != 1)
  {
    sub_19355A5F8(v77 + v76, v101);
    sub_19355A65C(&qword_1EAE3BD10, type metadata accessor for AIML.UUID);
    v79 = sub_19393C550();
    sub_193568274();
    v9 = v103;
    sub_193568274();
    v28 = v99;
    sub_19344E6DC(v77, &qword_1EAE3BCA0, &unk_19395C320);
    v4 = v107;
    if ((v79 & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_46;
  }

LABEL_56:
  sub_193568274();
LABEL_57:
  sub_19344E6DC(v72, &qword_1EAE3BD08, &qword_1939595A0);
LABEL_58:
  sub_193568274();
  sub_193568274();
LABEL_59:
  sub_193568274();
  sub_193568274();
  return 0;
}

void sub_19355DB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_117();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30(0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v35 = &a9 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v38 = &a9 - v37;
  v39 = *(v29 + 16);
  if (v39 == *(v27 + 16) && v39 && v29 != v27)
  {
    v40 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v41 = v29 + v40;
    v42 = v27 + v40;
    v43 = *(v36 + 72);
    do
    {
      sub_1935682C8(v41, v38, v25);
      sub_1935682C8(v42, v35, v25);
      v44 = v23(v38, v35);
      sub_193568274();
      sub_193568274();
      if ((v44 & 1) == 0)
      {
        break;
      }

      v42 += v43;
      v41 += v43;
      --v39;
    }

    while (v39);
  }

  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v3 = v2;
  v4 = type metadata accessor for AIML.UUID();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v8 = OUTLINED_FUNCTION_25_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_74();
  sub_1935648B0(v3, *v0);
  v14 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered(0);
  OUTLINED_FUNCTION_90_10(v0 + *(v14 + 20), v1);
  OUTLINED_FUNCTION_6_3(v1, 1, v4);
  if (v15)
  {
    sub_19393CAD0();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_175_0();
    sub_19355A5F8(v16, v17);
    sub_19393CAD0();
    OUTLINED_FUNCTION_0_38();
    sub_19355A65C(v18, v19);
    sub_19393C540();
    OUTLINED_FUNCTION_1_37();
    sub_193568274();
  }

  OUTLINED_FUNCTION_236();
}

uint64_t IntelligenceFlowJointResolverTelemetry.TrialExperiment.experimentNamespace.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowJointResolverTelemetry.TrialExperiment.experimentNamespace.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.TrialExperiment.experimentId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowJointResolverTelemetry.TrialExperiment.experimentId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.TrialExperiment.treatmentId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowJointResolverTelemetry.TrialExperiment.deploymentId.getter()
{
  v1 = (v0 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.TrialExperiment.deploymentId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowJointResolverTelemetry.TrialExperiment.allocationStatus.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 32));
}

void IntelligenceFlowJointResolverTelemetry.TrialExperiment.allocationStatus.setter(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_85_8(a1);
  v2 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(v1);
  OUTLINED_FUNCTION_84_6(*(v2 + 32));
}

uint64_t IntelligenceFlowJointResolverTelemetry.TrialExperiment.allocationStatus.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowJointResolverTelemetry.TrialExperiment.lastUpdatedAtInMs.getter()
{
  v1 = (v0 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0) + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.TrialExperiment.lastUpdatedAtInMs.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(v0) + 36);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowJointResolverTelemetry.TrialExperiment.compatibilityVersion.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(v0);
  OUTLINED_FUNCTION_263(*(v1 + 40));
}

uint64_t IntelligenceFlowJointResolverTelemetry.TrialExperiment.compatibilityVersion.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(v0) + 40);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowJointResolverTelemetry.TrialExperiment.init()()
{
  OUTLINED_FUNCTION_117();
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(v1);
  v3 = v2[6];
  type metadata accessor for AIML.UUID();
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = v0 + v2[7];
  v9 = v0 + v2[8];
  *v9 = 0;
  *(v9 + 4) = 256;
  v10 = v2[10];
  v11 = v0 + v2[9];
  v12 = v0 + v10;
  *v0 = 0u;
  v0[1] = 0u;
  sub_19344E6DC(v0 + v3, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  *v8 = 0;
  v8[8] = 1;
  *v9 = 0;
  *(v9 + 4) = 256;
  *v11 = 0;
  v11[8] = 1;
  *v12 = 0;
  v12[4] = 1;
  OUTLINED_FUNCTION_116();
}

void static IntelligenceFlowJointResolverTelemetry.TrialExperiment.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_50_0();
  v4 = type metadata accessor for AIML.UUID();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_220();
  v18 = v1[1];
  v19 = v0[1];
  if (v18)
  {
    if (!v19)
    {
      goto LABEL_28;
    }

    v20 = *v1 == *v0 && v18 == v19;
    if (!v20 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v19)
  {
    goto LABEL_28;
  }

  v21 = v1[3];
  v22 = v0[3];
  if (v21)
  {
    if (!v22)
    {
      goto LABEL_28;
    }

    v23 = v1[2] == v0[2] && v21 == v22;
    if (!v23 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v22)
  {
    goto LABEL_28;
  }

  v43 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0);
  v24 = *(v43 + 24);
  v25 = *(v14 + 48);
  sub_193448804(v1 + v24, v3, &qword_1EAE3BCA0, &unk_19395C320);
  sub_193448804(v0 + v24, v3 + v25, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v3);
  if (!v20)
  {
    sub_193448804(v3, v13, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v3 + v25);
    if (!v26)
    {
      sub_19355A5F8(v3 + v25, v2);
      OUTLINED_FUNCTION_0_38();
      sub_19355A65C(v27, v28);
      OUTLINED_FUNCTION_117_9();
      OUTLINED_FUNCTION_22();
      sub_19393C550();
      OUTLINED_FUNCTION_4_30();
      sub_193568274();
      OUTLINED_FUNCTION_165_1();
      sub_193568274();
      sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v4 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }

    OUTLINED_FUNCTION_1_37();
    sub_193568274();
LABEL_27:
    sub_19344E6DC(v3, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_31(v3 + v25);
  if (!v20)
  {
    goto LABEL_27;
  }

  sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_30:
  v29 = v43;
  OUTLINED_FUNCTION_32_2(*(v43 + 28));
  if (v31)
  {
    if (!v30)
    {
      goto LABEL_28;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v32)
    {
      goto LABEL_28;
    }
  }

  v33 = v29[8];
  OUTLINED_FUNCTION_106_9();
  if (v36)
  {
    if ((v35 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v35)
    {
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_48_2(v34);
    v37 = IntelligenceFlowJointResolverTelemetry.TreatmentAllocationStatus.rawValue.getter();
    if (v37 != IntelligenceFlowJointResolverTelemetry.TreatmentAllocationStatus.rawValue.getter())
    {
      goto LABEL_28;
    }
  }

  OUTLINED_FUNCTION_32_2(v29[9]);
  if (v39)
  {
    if (!v38)
    {
      goto LABEL_28;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v40)
    {
      goto LABEL_28;
    }
  }

  OUTLINED_FUNCTION_49_2(v29[10]);
  if ((v41 & 1) == 0)
  {
    OUTLINED_FUNCTION_258();
  }

LABEL_28:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowJointResolverTelemetry.TrialExperiment.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for AIML.UUID();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  if (v0[1])
  {
    v14 = *v0;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v0[3])
  {
    v15 = v0[2];
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v16 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0);
  sub_193448804(v0 + v16[6], v13, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v13, 1, v1);
  if (v17)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v13, v7);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_38();
    sub_19355A65C(v18, v19);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_1_37();
    sub_193568274();
  }

  v20 = v0 + v16[7];
  if (v20[8] == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v21 = *v20;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v21);
  }

  v22 = v0 + v16[8];
  if (v22[9] == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v23 = v22[8];
    v24 = *v22;
    v25 = OUTLINED_FUNCTION_103_0();
    v31 = v24;
    v32 = v23 & 1;
    v26 = IntelligenceFlowJointResolverTelemetry.TreatmentAllocationStatus.rawValue.getter(v25);
    MEMORY[0x193B18030](v26);
  }

  v27 = v0 + v16[9];
  if (v27[8] == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v28 = *v27;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v28);
  }

  OUTLINED_FUNCTION_47_1(v16[10]);
  if (v17)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v30 = *v29;
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_236();
}

uint64_t static IntelligenceFlowJointResolverTelemetry.JRInferenceFailed.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    if (v3 == 2 || ((v3 ^ v2) & 1) != 0)
    {
      return OUTLINED_FUNCTION_9_2();
    }

    return OUTLINED_FUNCTION_91();
  }

  if (v3 == 2)
  {
    return OUTLINED_FUNCTION_91();
  }

  return OUTLINED_FUNCTION_9_2();
}

uint64_t _s27IntelligencePlatformLibrary0A28FlowQueryDecorationTelemetryV19QDSubComponentEndedV9hashValueSivg_0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_119();
  if (v1 != 2)
  {
    OUTLINED_FUNCTION_123();
  }

  sub_19393CAD0();
  return sub_19393CB00();
}

uint64_t sub_19355E9C0()
{
  v1 = *v0;
  sub_19393CAB0();
  if (v1 != 2)
  {
    OUTLINED_FUNCTION_123();
  }

  sub_19393CAD0();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.modelInputShapes.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_193564CF8(v2);
}

__n128 IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.modelInputShapes.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  sub_193564D78(*v1);
  result = *a1;
  v11 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v11;
  v1[4] = v3;
  v1[5] = v4;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.modelOutputs.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 48), sizeof(__dst));
  memcpy(a1, (v1 + 48), 0x50uLL);
  return sub_193448804(__dst, &v4, &qword_1EAE3D250, &qword_193961938);
}

void *IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.modelOutputs.setter(const void *a1)
{
  memcpy(v4, (v1 + 48), sizeof(v4));
  sub_19344E6DC(v4, &qword_1EAE3D250, &qword_193961938);
  return memcpy((v1 + 48), a1, 0x50uLL);
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.version.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[16];
  v3 = v1[17];
  v4 = v1[18];
  v5 = v1[19];
  v6 = v1[20];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_193564DF8(v2, v3, v4, v5, v6);
}

__n128 IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.version.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_193564E0C(v1[16], v1[17], v1[18], v1[19], v1[20]);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 9) = v5;
  v1[20] = v3;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.trialDisambiguationRate.setter(uint64_t result)
{
  *(v1 + 168) = result;
  *(v1 + 172) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.trialConfirmationRate.setter(uint64_t result)
{
  *(v1 + 176) = result;
  *(v1 + 180) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.riskProfile.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 184);

  *(v1 + 184) = v2;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.parameterType.setter(uint64_t a1)
{
  v3 = *(v1 + 192);

  *(v1 + 192) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.alreadyPrompted.setter(uint64_t a1)
{
  v3 = *(v1 + 200);

  *(v1 + 200) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.callerComponent.setter(uint64_t a1)
{
  v3 = *(v1 + 208);

  *(v1 + 208) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.candidateHistoryCount.setter(uint64_t a1)
{
  v3 = *(v1 + 216);

  *(v1 + 216) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.tupleHistoryCount.setter(uint64_t a1)
{
  v3 = *(v1 + 224);

  *(v1 + 224) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.candidateRisk.setter(uint64_t a1)
{
  v3 = *(v1 + 232);

  *(v1 + 232) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.searchToolRanks.setter(uint64_t a1)
{
  v3 = *(v1 + 240);

  *(v1 + 240) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.bucketedDistance.setter(uint64_t a1)
{
  v3 = *(v1 + 248);

  *(v1 + 248) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.intervalUntilStartTime.setter(uint64_t a1)
{
  v3 = *(v1 + 256);

  *(v1 + 256) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.parameterSubType.setter(uint64_t a1)
{
  v3 = *(v1 + 264);

  *(v1 + 264) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.signalToNoiseRatio.setter(uint64_t result)
{
  *(v1 + 272) = result;
  *(v1 + 276) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.loudnessLevel.setter(uint64_t result)
{
  *(v1 + 280) = result;
  *(v1 + 284) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.scores.setter(uint64_t a1)
{
  v3 = *(v1 + 288);

  *(v1 + 288) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.jrEntitySimilarityScores.setter(uint64_t a1)
{
  v3 = *(v1 + 296);

  *(v1 + 296) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  v2 = (a1 + 48);
  *(a1 + 160) = 1;
  *(a1 + 184) = 0;
  v3 = OUTLINED_FUNCTION_10_1();
  sub_193564D78(v3);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  memcpy(v7, v2, sizeof(v7));
  sub_19344E6DC(v7, &qword_1EAE3D250, &qword_193961938);
  *v2 = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  sub_193564E0C(*(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160));
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 1;
  *(a1 + 168) = 0;
  *(a1 + 172) = 1;
  *(a1 + 176) = 0;
  *(a1 + 180) = 1;
  v4 = *(a1 + 184);

  v6 = MEMORY[0x1E69E7CC0];
  *(a1 + 184) = 0;
  *(a1 + 192) = v6;
  *(a1 + 200) = v6;
  *(a1 + 208) = v6;
  *(a1 + 216) = v6;
  *(a1 + 224) = v6;
  *(a1 + 232) = v6;
  *(a1 + 240) = v6;
  *(a1 + 248) = v6;
  *(a1 + 256) = v6;
  *(a1 + 264) = v6;
  *(a1 + 272) = 0;
  *(a1 + 276) = 1;
  *(a1 + 280) = 0;
  *(a1 + 284) = 1;
  *(a1 + 288) = v6;
  *(a1 + 296) = v6;
  return result;
}

uint64_t static IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  memcpy(__dst, (a1 + 48), sizeof(__dst));
  v344 = *(a1 + 128);
  v349 = *(a1 + 136);
  v354 = *(a1 + 144);
  v359 = *(a1 + 152);
  v364 = *(a1 + 160);
  v10 = *(a1 + 168);
  HIDWORD(v334) = *(a1 + 172);
  v11 = *(a1 + 176);
  LODWORD(v334) = *(a1 + 180);
  v324 = *(a1 + 192);
  v329 = *(a1 + 184);
  v314 = *(a1 + 208);
  v319 = *(a1 + 200);
  v304 = *(a1 + 224);
  v309 = *(a1 + 216);
  v294 = *(a1 + 240);
  v299 = *(a1 + 232);
  v284 = *(a1 + 256);
  v289 = *(a1 + 248);
  v279 = *(a1 + 264);
  v12 = *(a1 + 272);
  v13 = *(a1 + 280);
  LODWORD(v274) = *(a1 + 284);
  HIDWORD(v274) = *(a1 + 276);
  v264 = *(a1 + 296);
  v269 = *(a1 + 288);
  v14 = *a2;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v394 = *(a2 + 32);
  v399 = *(a2 + 24);
  v389 = *(a2 + 40);
  memcpy(__src, (a2 + 48), 0x50uLL);
  v369 = *(a2 + 128);
  v374 = *(a2 + 136);
  v18 = *(a2 + 144);
  v17 = *(a2 + 152);
  v339 = *(a2 + 160);
  v19 = *(a2 + 168);
  v20 = *(a2 + 172);
  v21 = *(a2 + 176);
  v22 = *(a2 + 180);
  v23 = *(a2 + 184);
  v24 = *(a2 + 192);
  v26 = *(a2 + 200);
  v25 = *(a2 + 208);
  v28 = *(a2 + 216);
  v27 = *(a2 + 224);
  v30 = *(a2 + 232);
  v29 = *(a2 + 240);
  v32 = *(a2 + 248);
  v31 = *(a2 + 256);
  v33 = *(a2 + 264);
  v34 = *(a2 + 272);
  v35 = *(a2 + 276);
  v36 = *(a2 + 280);
  v37 = *(a2 + 284);
  v39 = *(a2 + 288);
  v38 = *(a2 + 296);
  if (!v4)
  {
    v255 = *(a2 + 144);
    LODWORD(v250) = *(a2 + 172);
    HIDWORD(v250) = *(a2 + 180);
    v215 = *(a2 + 200);
    v220 = *(a2 + 192);
    v160 = *(a2 + 296);
    v165 = *(a2 + 288);
    v245 = *(a2 + 184);
    v205 = *(a2 + 216);
    v210 = *(a2 + 208);
    v195 = *(a2 + 232);
    v200 = *(a2 + 224);
    v185 = *(a2 + 248);
    v190 = *(a2 + 240);
    v175 = *(a2 + 264);
    v180 = *(a2 + 256);
    LODWORD(v170) = *(a2 + 284);
    HIDWORD(v170) = *(a2 + 276);
    sub_193564CF8(0);
    if (!v14)
    {
      sub_193564CF8(0);
      OUTLINED_FUNCTION_18_22();
      sub_193564D78(v46);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_75_10(v14);
LABEL_8:
    OUTLINED_FUNCTION_18_22();
    sub_193564D78(v45);
    sub_193564D78(v14);
    goto LABEL_26;
  }

  v408[0] = v4;
  v408[1] = v5;
  v408[2] = v7;
  v408[3] = v6;
  v408[4] = v9;
  v408[5] = v8;
  v379 = v16;
  v384 = v15;
  if (!v14)
  {
    OUTLINED_FUNCTION_18_22();
    sub_193564CF8(v43);
    OUTLINED_FUNCTION_75_10(0);
    OUTLINED_FUNCTION_18_22();
    sub_193564CF8(v44);

    goto LABEL_8;
  }

  v230 = v8;
  *&v255 = v18;
  *(&v255 + 1) = v17;
  v250 = __PAIR64__(v22, v20);
  v215 = v26;
  v220 = v24;
  v160 = v38;
  v165 = v39;
  v245 = v23;
  v205 = v28;
  v210 = v25;
  v195 = v30;
  v200 = v27;
  v185 = v32;
  v190 = v29;
  v175 = v33;
  v180 = v31;
  v170 = __PAIR64__(v35, v37);
  v407[0] = v14;
  v235 = v14;
  v407[1] = v15;
  v407[2] = v16;
  v407[3] = v399;
  v225 = v4;
  v407[4] = v394;
  v407[5] = v389;
  static IntelligenceFlowJointResolverTelemetry.JRModelInputShapes.== infix(_:_:)();
  HIDWORD(v240) = v40;
  sub_193564CF8(v4);
  sub_193564CF8(v14);
  v41 = OUTLINED_FUNCTION_69_7();
  sub_193564CF8(v41);

  v42 = OUTLINED_FUNCTION_69_7();
  sub_193564D78(v42);
  if ((v240 & 0x100000000) == 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  memcpy(v412, __dst, sizeof(v412));
  v47 = __dst[9];
  memcpy(v411, __src, sizeof(v411));
  v48 = __src[9];
  if (!__dst[9])
  {
    v50 = v369;
    v49 = v374;
    if (!__src[9])
    {
      memcpy(v408, __dst, 0x48uLL);
      v408[9] = 0;
      OUTLINED_FUNCTION_79_1(__dst, v407);
      OUTLINED_FUNCTION_79_1(__src, v407);
      OUTLINED_FUNCTION_85_9();
      sub_19344E6DC(v97, v98, v99);
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_79_1(__dst, v408);
    OUTLINED_FUNCTION_79_1(__src, v408);
LABEL_17:
    memcpy(v408, v412, 0x48uLL);
    v408[9] = v47;
    memcpy(v409, v411, sizeof(v409));
    v410 = v48;
    sub_19344E6DC(v408, &qword_1EAE3D258, &qword_193961940);
    goto LABEL_26;
  }

  memcpy(v408, __dst, 0x48uLL);
  v408[9] = __dst[9];
  memcpy(v407, v408, 0x50uLL);
  v50 = v369;
  v49 = v374;
  if (!__src[9])
  {
    memcpy(v406, v408, sizeof(v406));
    OUTLINED_FUNCTION_51_9(__dst, v76, v77, v78, v79, v80, v81, v82, v155, v160, v165, v170, v175, v180, v185, v190, v195, v200, v205, v210, v215, v220, v225, v230, v235, v240, v245, v250, v255, *(&v255 + 1), v264, v269, v274, v279, v284, v289, v294, v299, v304, v309, v314, v319, v324, v329, v334, v339, v344, v349, v354, v359, v364, v369, v374, v379, v384, v389, v394, v399, v404[0], v404[1], v404[2], v404[3], v404[4]);
    OUTLINED_FUNCTION_51_9(__src, v83, v84, v85, v86, v87, v88, v89, v158, v163, v168, v173, v178, v183, v188, v193, v198, v203, v208, v213, v218, v223, v228, v233, v238, v243, v248, v253, v258, v262, v267, v272, v277, v282, v287, v292, v297, v302, v307, v312, v317, v322, v327, v332, v337, v342, v347, v352, v357, v362, v367, v372, v377, v382, v387, v392, v397, v402, v404[0], v404[1], v404[2], v404[3], v404[4]);
    OUTLINED_FUNCTION_51_9(v408, v90, v91, v92, v93, v94, v95, v96, v159, v164, v169, v174, v179, v184, v189, v194, v199, v204, v209, v214, v219, v224, v229, v234, v239, v244, v249, v254, v259, v263, v268, v273, v278, v283, v288, v293, v298, v303, v308, v313, v318, v323, v328, v333, v338, v343, v348, v353, v358, v363, v368, v373, v378, v383, v388, v393, v398, v403, v404[0], v404[1], v404[2], v404[3], v404[4]);
    sub_193564E74(v406);
    goto LABEL_17;
  }

  memcpy(v406, __src, 0x48uLL);
  *(&v406[4] + 1) = __src[9];
  OUTLINED_FUNCTION_51_9(__dst, v51, v52, v53, v54, v55, v56, v57, v155, v160, v165, v170, v175, v180, v185, v190, v195, v200, v205, v210, v215, v220, v225, v230, v235, v240, v245, v250, v255, *(&v255 + 1), v264, v269, v274, v279, v284, v289, v294, v299, v304, v309, v314, v319, v324, v329, v334, v339, v344, v349, v354, v359, v364, v369, v374, v379, v384, v389, v394, v399, v404[0], v404[1], v404[2], v404[3], v404[4]);
  OUTLINED_FUNCTION_51_9(__src, v58, v59, v60, v61, v62, v63, v64, v156, v161, v166, v171, v176, v181, v186, v191, v196, v201, v206, v211, v216, v221, v226, v231, v236, v241, v246, v251, v256, v260, v265, v270, v275, v280, v285, v290, v295, v300, v305, v310, v315, v320, v325, v330, v335, v340, v345, v350, v355, v360, v365, v370, v375, v380, v385, v390, v395, v400, v404[0], v404[1], v404[2], v404[3], v404[4]);
  OUTLINED_FUNCTION_51_9(v408, v65, v66, v67, v68, v69, v70, v71, v157, v162, v167, v172, v177, v182, v187, v192, v197, v202, v207, v212, v217, v222, v227, v232, v237, v242, v247, v252, v257, v261, v266, v271, v276, v281, v286, v291, v296, v301, v306, v311, v316, v321, v326, v331, v336, v341, v346, v351, v356, v361, v366, v371, v376, v381, v386, v391, v396, v401, v404[0], v404[1], v404[2], v404[3], v404[4]);
  v72 = static IntelligenceFlowJointResolverTelemetry.JRModelOutputs.== infix(_:_:)(v407, v406);
  memcpy(v404, v406, sizeof(v404));
  sub_193564E74(v404);
  memcpy(v405, v407, sizeof(v405));
  sub_193564E74(v405);
  memcpy(v406, v412, 0x48uLL);
  *(&v406[4] + 1) = v47;
  OUTLINED_FUNCTION_85_9();
  sub_19344E6DC(v73, v74, v75);
  if ((v72 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_19:
  v100 = v364;
  if (v364 == 1)
  {
    v101 = OUTLINED_FUNCTION_13_5();
    sub_193564DF8(v101, v102, v354, v359, 1);
    v103 = v339;
    if (v339 == 1)
    {
      v104 = OUTLINED_FUNCTION_33_7();
      sub_193564DF8(v104, v105, v255, *(&v255 + 1), 1);
      v106 = OUTLINED_FUNCTION_15_27();
      sub_193564E0C(v106, v107, v108, v109, 1);
      goto LABEL_29;
    }

    v122 = OUTLINED_FUNCTION_33_7();
    v116 = *(&v255 + 1);
    sub_193564DF8(v122, v123, v255, *(&v255 + 1), v339);
    v100 = 1;
LABEL_25:
    v124 = OUTLINED_FUNCTION_15_27();
    sub_193564E0C(v124, v125, v126, v127, v100);
    v128 = OUTLINED_FUNCTION_33_7();
    sub_193564E0C(v128, v129, v255, v116, v103);
    goto LABEL_26;
  }

  v408[0] = v344;
  v408[1] = v349;
  v408[2] = v354;
  v408[3] = v359;
  v408[4] = v364;
  if (v339 == 1)
  {
    OUTLINED_FUNCTION_64_6();
    v110 = OUTLINED_FUNCTION_15_27();
    v103 = v111;
    sub_193564DF8(v110, v112, v113, v114, v364);
    v115 = OUTLINED_FUNCTION_33_7();
    v116 = *(&v255 + 1);
    sub_193564DF8(v115, v117, v255, *(&v255 + 1), 1);
    v118 = OUTLINED_FUNCTION_15_27();
    sub_193564DF8(v118, v119, v120, v121, v364);
    sub_193564E20(v407);
    goto LABEL_25;
  }

  *&v405[0] = v50;
  *(&v405[0] + 1) = v49;
  v405[1] = v255;
  *&v405[2] = v339;
  v132 = OUTLINED_FUNCTION_15_27();
  v134 = v133;
  sub_193564DF8(v132, v135, v136, v137, v364);
  OUTLINED_FUNCTION_33_7();
  OUTLINED_FUNCTION_34_15();
  sub_193564DF8(v138, v139, v140, v141, v134);
  v142 = OUTLINED_FUNCTION_15_27();
  sub_193564DF8(v142, v143, v144, v145, v364);
  sub_1935013C0();
  v146 = sub_19393C550();
  v406[0] = v405[0];
  v406[1] = v405[1];
  *&v406[2] = *&v405[2];
  sub_193564E20(v406);
  OUTLINED_FUNCTION_64_6();
  sub_193564E20(v407);
  sub_193564E0C(v344, v349, v354, v359, v364);
  if ((v146 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_29:
  if ((v334 & 0x100000000) != 0)
  {
    v147 = v245;
    v148 = HIDWORD(v250);
    if (!v250)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v149 = v250;
    v148 = HIDWORD(v250);
    if (v10 != v19)
    {
      v149 = 1;
    }

    v147 = v245;
    if (v149)
    {
      goto LABEL_26;
    }
  }

  if (v334)
  {
    if (!v148)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v11 == v21)
    {
      v150 = v148;
    }

    else
    {
      v150 = 1;
    }

    if (v150)
    {
      goto LABEL_26;
    }
  }

  if (v329)
  {
    if (v147)
    {
      if ((sub_19355C820(v329, v147) & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_49;
    }

LABEL_47:

    goto LABEL_26;
  }

  if (v147)
  {
    goto LABEL_47;
  }

LABEL_49:
  if ((sub_1934DF324(v324, v220) & 1) == 0 || (sub_1934DF324(v319, v215) & 1) == 0 || (sub_1934DF324(v314, v210) & 1) == 0 || (sub_19355B674(v309, v205) & 1) == 0 || (sub_19355BB8C(v304, v200) & 1) == 0 || (sub_19355C820(v299, v195) & 1) == 0 || (sub_19355C820(v294, v190) & 1) == 0 || (sub_19355BF1C(v289, v185, IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.rawValue.getter, v151) & 1) == 0 || (sub_19355BE88(v284, v180) & 1) == 0 || (sub_19355BF1C(v279, v175, IntelligenceFlowJointResolverTelemetry.JRParameterSubType.rawValue.getter, v152) & 1) == 0)
  {
    goto LABEL_26;
  }

  if ((v274 & 0x100000000) != 0)
  {
    if (!HIDWORD(v170))
    {
      goto LABEL_26;
    }
  }

  else
  {
    v153 = BYTE4(v170);
    if (v12 != v34)
    {
      v153 = 1;
    }

    if (v153)
    {
      goto LABEL_26;
    }
  }

  if (v274)
  {
    if (!v170)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v154 = v170;
    if (v13 != v36)
    {
      v154 = 1;
    }

    if (v154)
    {
      goto LABEL_26;
    }
  }

  if (sub_19355CEBC(v269, v165))
  {
    v130 = sub_19355BFE4(v264, v160);
    return v130 & 1;
  }

LABEL_26:
  v130 = 0;
  return v130 & 1;
}

void IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v3 = *v0;
  v4 = *(v0 + 120);
  v16 = *(v0 + 136);
  v17 = *(v0 + 128);
  v14 = *(v0 + 152);
  v15 = *(v0 + 144);
  v22 = *(v0 + 160);
  v18 = *(v0 + 168);
  v19 = *(v0 + 176);
  v23 = *(v0 + 172);
  v24 = *(v0 + 180);
  v25 = *(v0 + 184);
  v26 = *(v0 + 192);
  v27 = *(v0 + 200);
  v28 = *(v0 + 208);
  v29 = *(v0 + 216);
  v30 = *(v0 + 224);
  v31 = *(v0 + 232);
  v32 = *(v0 + 240);
  v33 = *(v0 + 248);
  v34 = *(v0 + 256);
  v35 = *(v0 + 264);
  v20 = *(v0 + 272);
  v21 = *(v0 + 280);
  v36 = *(v0 + 276);
  v37 = *(v0 + 284);
  v38 = *(v0 + 288);
  v39 = *(v0 + 296);
  if (*v0)
  {
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = *(v0 + 8);
    OUTLINED_FUNCTION_103_0();
    sub_193563E6C(v2, v3);
    sub_193563E6C(v2, v9);
    sub_193563E6C(v2, v8);
    sub_193563E6C(v2, v7);
    v10 = OUTLINED_FUNCTION_187();
    sub_193563E6C(v10, v11);
    sub_193563E6C(v2, v6);
    if (v4)
    {
LABEL_3:
      memcpy(__dst, (v0 + 48), 0x48uLL);
      *(&__dst[4] + 1) = v4;
      OUTLINED_FUNCTION_103_0();
      memcpy(v41, (v0 + 48), 0x48uLL);
      v41[9] = v4;
      sub_19354B9A8(v41, v42);
      IntelligenceFlowJointResolverTelemetry.JRModelOutputs.hash(into:)(v2);
      memcpy(v42, __dst, 0x50uLL);
      sub_193564E74(v42);
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_6:
  if (v22 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    *&__dst[0] = v17;
    *(&__dst[0] + 1) = v16;
    *&__dst[1] = v15;
    *(&__dst[1] + 1) = v14;
    *&__dst[2] = v22;
    OUTLINED_FUNCTION_103_0();
    v41[0] = v17;
    v41[1] = v16;
    v41[2] = v15;
    v41[3] = v14;
    v41[4] = v22;
    sub_1934FDBFC(v41, v42);
    sub_193564EA4();
    sub_19393C540();
    v42[0] = __dst[0];
    v42[1] = __dst[1];
    *&v42[2] = *&__dst[2];
    sub_193564E20(v42);
  }

  if (v23)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_100_2(v18);
    sub_19393CAE0();
  }

  if (v24)
  {
    OUTLINED_FUNCTION_104_0();
    if (v25)
    {
LABEL_14:
      OUTLINED_FUNCTION_103_0();
      v12 = OUTLINED_FUNCTION_187();
      sub_193565A3C(v12, v13);
      goto LABEL_17;
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_100_2(v19);
    sub_19393CAE0();
    if (v25)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_17:
  sub_1934DF380(v2, v26);
  sub_1934DF380(v2, v27);
  sub_1934DF380(v2, v28);
  sub_19356575C(v2, v29);
  sub_193565544(v2, v30);
  sub_193565A3C(v2, v31);
  sub_193565A3C(v2, v32);
  sub_1935654C0(v2, v33, IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.rawValue.getter);
  sub_1935653A0(v2, v34);
  sub_1935654C0(v2, v35, IntelligenceFlowJointResolverTelemetry.JRParameterSubType.rawValue.getter);
  if (v36)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_100_2(v20);
    sub_19393CAE0();
  }

  if (v37)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_100_2(v21);
    sub_19393CAE0();
  }

  sub_193565318(v2, v38);
  sub_193564EF8(v2, v39);
  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19355FF34()
{
  sub_19393CAB0();
  IntelligenceFlowJointResolverTelemetry.JRInferenceEnded.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193560000(void (*a1)(char *))
{
  v3 = *v1;
  v4 = OUTLINED_FUNCTION_119();
  v12 = OUTLINED_FUNCTION_62_0(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15);
  a1(v12);
  return sub_19393CB00();
}

uint64_t sub_193560044(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = *v4;
  v7 = sub_19393CAB0();
  v15 = OUTLINED_FUNCTION_62_0(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18);
  a4(v15);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowJointResolverTelemetry.IntervalUntilStartTime.candidateBooleanMask.setter()
{
  result = OUTLINED_FUNCTION_93_5();
  *v1 = v0;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.IntervalUntilStartTime.candidateTimeIntervalMatrix.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

IntelligencePlatformLibrary::IntelligenceFlowJointResolverTelemetry::IntervalUntilStartTime __swiftcall IntelligenceFlowJointResolverTelemetry.IntervalUntilStartTime.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v1;
  return result;
}

uint64_t static IntelligenceFlowJointResolverTelemetry.IntervalUntilStartTime.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v4 = a2[1];
  v5 = OUTLINED_FUNCTION_102_8(*a1);
  if (sub_19355B5C8(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_13_0();
    v9 = sub_19355CEBC(v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void IntelligenceFlowJointResolverTelemetry.IntervalUntilStartTime.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_193564830(a1, v2);
  v4 = OUTLINED_FUNCTION_13_0();
  sub_193565318(v4, v5);
}

uint64_t IntelligenceFlowJointResolverTelemetry.IntervalUntilStartTime.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = OUTLINED_FUNCTION_119();
  v11 = OUTLINED_FUNCTION_99(v3, v4, v5, v6, v7, v8, v9, v10, v24, v26);
  v13 = sub_193564830(v11, v12);
  v21 = OUTLINED_FUNCTION_62_0(v13, v14, v15, v16, v17, v18, v19, v20, v25, v27);
  sub_193565318(v21, v22);
  return sub_19393CB00();
}

uint64_t sub_1935601EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_19393CAB0();
  v11 = OUTLINED_FUNCTION_99(v3, v4, v5, v6, v7, v8, v9, v10, v24, v26);
  v13 = sub_193564830(v11, v12);
  v21 = OUTLINED_FUNCTION_62_0(v13, v14, v15, v16, v17, v18, v19, v20, v25, v27);
  sub_193565318(v21, v22);
  return sub_19393CB00();
}

void IntelligenceFlowJointResolverTelemetry.JRCandidateBooleanMask.hash(into:)()
{
  OUTLINED_FUNCTION_46_11();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      sub_19393CAD0();
      --v0;
    }

    while (v0);
  }
}

uint64_t IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow.candidateB.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow.similarityScore.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow.init()()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID();
  v1 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(0);
  v6 = *(v5 + 20);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = v0 + *(v5 + 24);
  v12 = OUTLINED_FUNCTION_187();
  sub_19344E6DC(v12, v13, &unk_19395C320);
  v14 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_19344E6DC(v0 + v6, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  *v11 = 0;
  *(v11 + 4) = 1;
  OUTLINED_FUNCTION_236();
}

void static IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for AIML.UUID();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v47 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v11 = OUTLINED_FUNCTION_47(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  v46 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  v20 = OUTLINED_FUNCTION_4_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6();
  v25 = v23 - v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v46 - v28;
  v30 = *(v27 + 48);
  v48 = v3;
  sub_193448804(v3, &v46 - v28, &qword_1EAE3BCA0, &unk_19395C320);
  v49 = v1;
  sub_193448804(v1, &v29[v30], &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v29);
  if (v31)
  {
    OUTLINED_FUNCTION_31(&v29[v30]);
    if (v31)
    {
      sub_19344E6DC(v29, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_11;
    }

LABEL_9:
    v32 = v29;
LABEL_20:
    sub_19344E6DC(v32, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_21;
  }

  sub_193448804(v29, v18, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(&v29[v30]);
  if (v31)
  {
    OUTLINED_FUNCTION_1_37();
    sub_193568274();
    goto LABEL_9;
  }

  sub_19355A5F8(&v29[v30], v47);
  OUTLINED_FUNCTION_0_38();
  sub_19355A65C(v33, v34);
  sub_19393C550();
  OUTLINED_FUNCTION_41_10();
  sub_193568274();
  OUTLINED_FUNCTION_125_3();
  sub_193568274();
  sub_19344E6DC(v29, &qword_1EAE3BCA0, &unk_19395C320);
  if ((&unk_19395C320 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v35 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(0);
  v36 = *(v35 + 20);
  v37 = *(v19 + 48);
  v38 = v48;
  sub_193448804(v48 + v36, v25, &qword_1EAE3BCA0, &unk_19395C320);
  v39 = v49 + v36;
  v40 = v49;
  sub_193448804(v39, v25 + v37, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v25);
  if (!v31)
  {
    sub_193448804(v25, v46, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v25 + v37);
    if (!v41)
    {
      sub_19355A5F8(v25 + v37, v47);
      OUTLINED_FUNCTION_0_38();
      sub_19355A65C(v42, v43);
      OUTLINED_FUNCTION_117_9();
      sub_19393C550();
      OUTLINED_FUNCTION_41_10();
      sub_193568274();
      sub_193568274();
      sub_19344E6DC(v25, &qword_1EAE3BCA0, &unk_19395C320);
      if ((&qword_1EAE3BCA0 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    OUTLINED_FUNCTION_1_37();
    sub_193568274();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_31(v25 + v37);
  if (!v31)
  {
LABEL_19:
    v32 = v25;
    goto LABEL_20;
  }

  sub_19344E6DC(v25, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_23:
  v44 = *(v35 + 24);
  v45 = *(v38 + v44 + 4);
  LOBYTE(v44) = *(v40 + v44 + 4);
  if ((v45 & 1) == 0)
  {
    OUTLINED_FUNCTION_109_8();
  }

LABEL_21:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_3_4();
  v2 = type metadata accessor for AIML.UUID();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v6 = OUTLINED_FUNCTION_165_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v9 = OUTLINED_FUNCTION_47(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v16, v17, v18, v19);
  v20 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v20, v21, v2);
  if (v22)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v23 = OUTLINED_FUNCTION_112();
    sub_19355A5F8(v23, v24);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_38();
    sub_19355A65C(v25, v26);
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_1_37();
    sub_193568274();
  }

  v27 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(0);
  sub_193448804(v0 + *(v27 + 20), v14, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v14, 1, v2);
  if (v22)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v14, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_38();
    sub_19355A65C(v28, v29);
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_1_37();
    sub_193568274();
  }

  OUTLINED_FUNCTION_47_1(*(v27 + 24));
  if (v22)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v31 = *v30;
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_236();
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelInputShapes.candidateTuplesShapes.setter()
{
  result = OUTLINED_FUNCTION_93_5();
  *v1 = v0;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelInputShapes.deviceContextShapes.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelInputShapes.candidateInteractionsShapes.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelInputShapes.tupleInteractionsCandidatesShapes.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelInputShapes.tupleInteractionsAlignmentShapes.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelInputShapes.similarityScoresShapes.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

void IntelligenceFlowJointResolverTelemetry.JRModelInputShapes.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = v1;
  a1[3] = v1;
  a1[4] = v1;
  a1[5] = v1;
}

void static IntelligenceFlowJointResolverTelemetry.JRModelInputShapes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  v12 = v6[4];
  v11 = v6[5];
  v13 = OUTLINED_FUNCTION_102_8(*v0);
  if (sub_19355B2F4(v13, v14) & 1) != 0 && (v15 = OUTLINED_FUNCTION_125_3(), (sub_19355B2F4(v15, v16)) && (v17 = OUTLINED_FUNCTION_165_1(), (sub_19355B2F4(v17, v18)) && (v19 = OUTLINED_FUNCTION_32_4(), (sub_19355B2F4(v19, v20)) && (v21 = OUTLINED_FUNCTION_115_0(), (sub_19355B2F4(v21, v22)))
  {
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_116();

    sub_19355B2F4(v23, v24);
  }

  else
  {
    OUTLINED_FUNCTION_116();
  }
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelInputShapes.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  sub_193563E6C(a1, v3);
  v9 = OUTLINED_FUNCTION_187();
  sub_193563E6C(v9, v10);
  sub_193563E6C(a1, v5);
  sub_193563E6C(a1, v6);
  sub_193563E6C(a1, v8);
  v11 = OUTLINED_FUNCTION_13_0();

  return sub_193563E6C(v11, v12);
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelInputShapes.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = OUTLINED_FUNCTION_119();
  v15 = OUTLINED_FUNCTION_99(v7, v8, v9, v10, v11, v12, v13, v14, v38, v41[0]);
  v17 = sub_193563E6C(v15, v16);
  v25 = OUTLINED_FUNCTION_98_9(v17, v18, v19, v20, v21, v22, v23, v24, v39, v41[0]);
  sub_193563E6C(v25, v26);
  sub_193563E6C(v41, v3);
  sub_193563E6C(v41, v4);
  v27 = sub_193563E6C(v41, v6);
  v35 = OUTLINED_FUNCTION_62_0(v27, v28, v29, v30, v31, v32, v33, v34, v40, v41[0]);
  sub_193563E6C(v35, v36);
  return sub_19393CB00();
}

uint64_t sub_193560FF4()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6 = v0[2];
  sub_19393CAB0();
  IntelligenceFlowJointResolverTelemetry.JRModelInputShapes.hash(into:)(v3);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelOutputs.action.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelOutputs.candidates.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);

  *(v1 + 8) = v2;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelOutputs.ranking.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_193565ACC(v2);
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelOutputs.ranking.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 24);
  result = sub_193565B14(*(v1 + 16));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelOutputs.jrAnonymizedHistoryAndContext.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 32);

  *(v1 + 32) = v2;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelOutputs.modelDiagnosticSignals.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 48);

  *(v1 + 48) = v2;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelOutputs.shadowAction.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 56);

  *(v1 + 56) = v2;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelOutputs.shadowCandidates.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 64);

  *(v1 + 64) = v2;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelOutputs.userHistory.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelOutputs.init()@<X0>(uint64_t a1@<X8>)
{
  swift_bridgeObjectRelease_n();
  *a1 = 0u;
  sub_193565B14(1);
  *(a1 + 16) = xmmword_193961910;

  *(a1 + 32) = 0;
  *(a1 + 40) = 2;
  swift_bridgeObjectRelease_n();
  *(a1 + 48) = 0u;

  v3 = MEMORY[0x1E69E7CC0];
  *(a1 + 64) = 0;
  *(a1 + 72) = v3;
  return result;
}

uint64_t static IntelligenceFlowJointResolverTelemetry.JRModelOutputs.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v10 = *(a1 + 64);
  v9 = *(a1 + 72);
  v12 = *a2;
  v11 = *(a2 + 8);
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = *(a2 + 40);
  v18 = *(a2 + 48);
  v17 = *(a2 + 56);
  v19 = *(a2 + 64);
  v20 = *(a2 + 72);
  if (*a1)
  {
    if (!v12)
    {
      goto LABEL_13;
    }

    v49 = *(a1 + 40);
    OUTLINED_FUNCTION_101_9();
    if ((sub_19355B2F4(v21, v12) & 1) == 0)
    {
      return 0;
    }

    if (v3)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (!v11)
    {

      goto LABEL_17;
    }

LABEL_13:

LABEL_14:

    return 0;
  }

  if (v12)
  {
    v25 = *a2;
    goto LABEL_13;
  }

  v49 = *(a1 + 40);
  OUTLINED_FUNCTION_101_9();

  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (!v11)
  {
    goto LABEL_13;
  }

  swift_bridgeObjectRetain_n();

  v22 = OUTLINED_FUNCTION_32_4();
  v24 = sub_19355B350(v22, v23);
  swift_bridgeObjectRelease_n();

  if ((v24 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  if (v2 == 1)
  {
    sub_193565ACC(1);
    if (v14 == 1)
    {
      sub_193565ACC(1);
      sub_193565B14(1);
      goto LABEL_25;
    }

    v29 = OUTLINED_FUNCTION_175_0();
    sub_193565ACC(v29);
LABEL_23:
    v30 = OUTLINED_FUNCTION_13_5();
    sub_193565B14(v30);
    v31 = OUTLINED_FUNCTION_175_0();
    sub_193565B14(v31);
    return 0;
  }

  v51[0] = v2;
  v51[1] = v4;
  if (v14 == 1)
  {
    v27 = OUTLINED_FUNCTION_13_5();
    sub_193565ACC(v27);
    sub_193565ACC(1);
    v28 = OUTLINED_FUNCTION_13_5();
    sub_193565ACC(v28);

    goto LABEL_23;
  }

  v50[0] = v14;
  v50[1] = v13;
  v32 = OUTLINED_FUNCTION_13_5();
  sub_193565ACC(v32);
  v33 = OUTLINED_FUNCTION_175_0();
  sub_193565ACC(v33);
  v34 = OUTLINED_FUNCTION_13_5();
  sub_193565ACC(v34);
  v35 = static IntelligenceFlowJointResolverTelemetry.Ranking.== infix(_:_:)(v51, v50);

  v36 = OUTLINED_FUNCTION_13_5();
  sub_193565B14(v36);
  if (!v35)
  {
    return 0;
  }

LABEL_25:
  if (v5)
  {
    if (!v15)
    {
      goto LABEL_30;
    }

    swift_bridgeObjectRetain_n();

    v37 = OUTLINED_FUNCTION_33_7();
    v39 = sub_19355C8C4(v37, v38);
    swift_bridgeObjectRelease_n();

    if ((v39 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v15)
    {
      goto LABEL_30;
    }
  }

  if (v49 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else if (v16 == 2 || ((v16 ^ v49) & 1) != 0)
  {
    return 0;
  }

  if (v47)
  {
    if (!v48)
    {
      goto LABEL_30;
    }

    if ((sub_1934DF324(v47, v48) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v48)
    {
      goto LABEL_30;
    }
  }

  if (v46)
  {
    if (!v45)
    {
      goto LABEL_30;
    }

    if ((sub_19355B2F4(v46, v45) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v45)
    {
      goto LABEL_30;
    }
  }

  if (v43)
  {
    if (v44)
    {
      swift_bridgeObjectRetain_n();

      v40 = sub_19355B350(v43, v44);
      swift_bridgeObjectRelease_n();

      if (v40)
      {
        goto LABEL_57;
      }

      return 0;
    }

    goto LABEL_30;
  }

  if (v44)
  {
LABEL_30:

    goto LABEL_14;
  }

LABEL_57:

  return sub_19355CF60(v42, v41);
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelOutputs.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v11 = *(v2 + 48);
  v10 = *(v2 + 56);
  v12 = *(v2 + 64);
  v18 = *(v2 + 72);
  if (*v2)
  {
    sub_19393CAD0();
    sub_193563E6C(a1, v5);
    if (v4)
    {
LABEL_3:
      sub_19393CAD0();

      sub_19356408C(a1, v4);

      goto LABEL_6;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  if (v6 == 1)
  {
    goto LABEL_12;
  }

  sub_19393CAD0();
  if (v6)
  {
    sub_19393CAD0();
    sub_193565318(a1, v6);
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    sub_19393CAD0();
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  sub_19393CAD0();
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  sub_19393CAD0();
  v13 = OUTLINED_FUNCTION_165_1();
  sub_193565ACC(v13);
  sub_193563EBC(a1, v7);
  v14 = OUTLINED_FUNCTION_165_1();
  sub_193565B14(v14);
  if (!v8)
  {
LABEL_10:
    sub_19393CAD0();
    goto LABEL_14;
  }

LABEL_13:
  sub_19393CAD0();

  sub_193564188(a1, v8);

LABEL_14:
  if (v9 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v11)
  {
    sub_19393CAD0();
    v15 = OUTLINED_FUNCTION_112();
    sub_1934DF380(v15, v16);
    if (v10)
    {
      goto LABEL_18;
    }

LABEL_21:
    sub_19393CAD0();
    if (v12)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  sub_19393CAD0();
  if (!v10)
  {
    goto LABEL_21;
  }

LABEL_18:
  sub_19393CAD0();
  sub_193563E6C(a1, v10);
  if (v12)
  {
LABEL_19:
    sub_19393CAD0();

    sub_19356408C(a1, v12);

    goto LABEL_23;
  }

LABEL_22:
  sub_19393CAD0();
LABEL_23:

  return sub_193565B58(a1, v18);
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRModelOutputs.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  IntelligenceFlowJointResolverTelemetry.JRModelOutputs.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1935619A0()
{
  sub_19393CAB0();
  IntelligenceFlowJointResolverTelemetry.JRModelOutputs.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRAnonymizedHistoryAndContextTuple.candidateIds.setter()
{
  result = OUTLINED_FUNCTION_93_5();
  *v1 = v0;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRAnonymizedHistoryAndContextTuple.uflScore.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

void __swiftcall IntelligenceFlowJointResolverTelemetry.JRAnonymizedHistoryAndContextTuple.init()(IntelligencePlatformLibrary::IntelligenceFlowJointResolverTelemetry::JRAnonymizedHistoryAndContextTuple *__return_ptr retstr)
{
  retstr->candidateIds._rawValue = MEMORY[0x1E69E7CC0];
  retstr->contextSimilarityScore.value = 0.0;
  retstr->contextSimilarityScore.is_nil = 1;
  *(&retstr->uflScore.value + 3) = 0.0;
  *(&retstr->uflScore + 7) = 1;
}

uint64_t static IntelligenceFlowJointResolverTelemetry.JRAnonymizedHistoryAndContextTuple.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = *(a2 + 12);
  v9 = *(a2 + 4);
  v10 = *(a2 + 20);
  v11 = OUTLINED_FUNCTION_102_8(*a1);
  if ((sub_19355B350(v11, v12) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v7)
    {
      v13 = v8;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if (v5)
  {
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v9)
    {
      v15 = v10;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRAnonymizedHistoryAndContextTuple.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 12);
  v4 = *(v1 + 16);
  v5 = *(v1 + 20);
  sub_19356408C(a1, *v1);
  if (v3 == 1)
  {
    sub_19393CAD0();
    if (!v5)
    {
LABEL_3:
      sub_19393CAD0();
      return sub_19393CAE0();
    }
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  return sub_19393CAD0();
}

uint64_t IntelligenceFlowJointResolverTelemetry.JRAnonymizedHistoryAndContextTuple.hashValue.getter()
{
  OUTLINED_FUNCTION_39_13();
  sub_19393CAB0();
  IntelligenceFlowJointResolverTelemetry.JRAnonymizedHistoryAndContextTuple.hash(into:)(&v1);
  return sub_19393CB00();
}

uint64_t sub_193561C94()
{
  OUTLINED_FUNCTION_39_13();
  sub_19393CAB0();
  IntelligenceFlowJointResolverTelemetry.JRAnonymizedHistoryAndContextTuple.hash(into:)(&v1);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowJointResolverTelemetry.Ranking.rankingScoreMatrix.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.Ranking.rankingCandidateMatrix.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);

  *(v1 + 8) = v2;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.Ranking.init()()
{
  OUTLINED_FUNCTION_8_4();
  result = swift_bridgeObjectRelease_n();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

BOOL static IntelligenceFlowJointResolverTelemetry.Ranking.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = *a2;
  v5 = a2[1];
  if (v3)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    if ((sub_19355CEBC(v3, *a2) & 1) == 0)
    {
      return 0;
    }

    if (v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v6)
    {
      v10 = *a2;
      goto LABEL_13;
    }

    if (v4)
    {
LABEL_5:
      if (v5)
      {
        swift_bridgeObjectRetain_n();

        v7 = OUTLINED_FUNCTION_13_5();
        v9 = sub_19355CBFC(v7, v8);
        swift_bridgeObjectRelease_n();

        return (v9 & 1) != 0;
      }

LABEL_13:

      return 0;
    }
  }

  if (v5)
  {
    goto LABEL_13;
  }

  return 1;
}

uint64_t IntelligenceFlowJointResolverTelemetry.Ranking.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  if (!*v1)
  {
    sub_19393CAD0();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_19393CAD0();
  }

  sub_19393CAD0();
  v4 = OUTLINED_FUNCTION_175_0();
  sub_193565318(v4, v5);
  if (!v3)
  {
    return sub_19393CAD0();
  }

LABEL_3:
  sub_19393CAD0();

  return sub_193563EBC(a1, v3);
}

uint64_t IntelligenceFlowJointResolverTelemetry.Ranking.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  OUTLINED_FUNCTION_119();
  if (v2)
  {
    v3 = sub_19393CAD0();
    v11 = OUTLINED_FUNCTION_98_9(v3, v4, v5, v6, v7, v8, v9, v10, v24, v25);
    sub_193565318(v11, v12);
  }

  else
  {
    sub_19393CAD0();
  }

  if (v1)
  {
    v13 = sub_19393CAD0();
    v21 = OUTLINED_FUNCTION_99(v13, v14, v15, v16, v17, v18, v19, v20, v24, v25);
    sub_193563EBC(v21, v22);
  }

  else
  {
    sub_19393CAD0();
  }

  return sub_19393CB00();
}

uint64_t sub_193562038()
{
  v3 = *v0;
  sub_19393CAB0();
  IntelligenceFlowJointResolverTelemetry.Ranking.hash(into:)(v2);
  return sub_19393CB00();
}

uint64_t sub_1935620FC(void (*a1)(char *))
{
  v3 = *v1;
  v4 = OUTLINED_FUNCTION_119();
  v12 = OUTLINED_FUNCTION_62_0(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15);
  a1(v12);
  return sub_19393CB00();
}

uint64_t sub_193562160(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = *v4;
  v7 = sub_19393CAB0();
  v15 = OUTLINED_FUNCTION_62_0(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18);
  a4(v15);
  return sub_19393CB00();
}

void _s27IntelligencePlatformLibrary0A26FlowJointResolverTelemetryV17JRTokenConfidenceV4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_46_11();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      sub_19393CAE0();
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_1935622C4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x193B18030](v2);
  if (v2)
  {
    v4 = *(type metadata accessor for AIML.UUID() - 8);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    OUTLINED_FUNCTION_0_38();
    sub_19355A65C(v7, v8);
    do
    {
      result = sub_19393C540();
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.RiskProfile.tuples.setter()
{
  result = OUTLINED_FUNCTION_93_5();
  *v1 = v0;
  return result;
}

void _s27IntelligencePlatformLibrary0A26FlowJointResolverTelemetryV20JRCandidateRiskLevelV4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_46_11();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      sub_19393CAE0();
      --v0;
    }

    while (v0);
  }
}

uint64_t IntelligenceFlowJointResolverTelemetry.UserHistory.historicalContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0) + 20));
}

uint64_t IntelligenceFlowJointResolverTelemetry.UserHistory.historicalContext.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(v2) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.UserHistory.historicalContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

void sub_1935626B0()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v2 = v1(v0);
  OUTLINED_FUNCTION_263(*(v2 + 24));
}

uint64_t IntelligenceFlowJointResolverTelemetry.UserHistory.historicalFeedback.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowJointResolverTelemetry.UserHistory.historicalLocationContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0) + 28));
}

uint64_t IntelligenceFlowJointResolverTelemetry.UserHistory.historicalLocationContext.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(v2) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.UserHistory.historicalLocationContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowJointResolverTelemetry.UserHistory.init()()
{
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID();
  v1 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0);
  v6 = v0 + v5[6];
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v7 = OUTLINED_FUNCTION_10_25();
  result = __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v12 = MEMORY[0x1E69E7CC0];
  *(v0 + v5[5]) = MEMORY[0x1E69E7CC0];
  *v6 = 0;
  *(v6 + 4) = 1;
  *(v0 + v5[7]) = v12;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext.logOfTimeElapsedInSeconds.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext.anonymizedLocationNameId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193562D90()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_46(&qword_1EAE3BCA0, &unk_19395C320, *(v2 + 24));
}

uint64_t sub_193562DEC()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v2 = *(v1(v0) + 24);
  v3 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v3, v4, v5, v6);
}

uint64_t IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext.anonymizedLocationTypeId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext.bucketedDistance.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 28));
}

void IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext.bucketedDistance.setter(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_85_8(a1);
  v2 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(v1);
  OUTLINED_FUNCTION_84_6(*(v2 + 28));
}

uint64_t IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext.bucketedDistance.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext.init()()
{
  OUTLINED_FUNCTION_237();
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(v1);
  v3 = v2[5];
  type metadata accessor for AIML.UUID();
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = v2[6];
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = v0 + v2[7];
  *v13 = 0;
  *(v13 + 8) = 256;
  *v0 = 0;
  *(v0 + 4) = 1;
  sub_19344E6DC(v0 + v3, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_19344E6DC(v0 + v8, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  *v13 = 0;
  *(v13 + 8) = 256;
  OUTLINED_FUNCTION_236();
}

void static IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for AIML.UUID();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v8 = OUTLINED_FUNCTION_47(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  v16 = OUTLINED_FUNCTION_4_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v47 - v23;
  v25 = *(v0 + 4);
  if (*(v1 + 4))
  {
    if (!*(v0 + 4))
    {
      goto LABEL_27;
    }

LABEL_7:
    v47 = v13;
    v48 = v2;
    v49 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0);
    v50 = v0;
    v26 = *(v49 + 20);
    v27 = *(v15 + 48);
    sub_193448804(v1 + v26, v24, &qword_1EAE3BCA0, &unk_19395C320);
    sub_193448804(v50 + v26, &v24[v27], &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v24);
    if (v32)
    {
      OUTLINED_FUNCTION_31(&v24[v27]);
      if (v32)
      {
        sub_19344E6DC(v24, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_17:
        v37 = v49;
        v38 = *(v49 + 24);
        v39 = *(v15 + 48);
        OUTLINED_FUNCTION_90_10(v1 + v38, v21);
        OUTLINED_FUNCTION_90_10(v50 + v38, v21 + v39);
        OUTLINED_FUNCTION_31(v21);
        if (v32)
        {
          OUTLINED_FUNCTION_31(v21 + v39);
          if (v32)
          {
            sub_19344E6DC(v21, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_29:
            v43 = *(v37 + 28);
            OUTLINED_FUNCTION_106_9();
            if ((v46 & 1) == 0 && (v45 & 1) == 0)
            {
              OUTLINED_FUNCTION_48_2(v44);
              IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.rawValue.getter();
              IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.rawValue.getter();
            }

            goto LABEL_27;
          }
        }

        else
        {
          sub_193448804(v21, v47, &qword_1EAE3BCA0, &unk_19395C320);
          OUTLINED_FUNCTION_31(v21 + v39);
          if (!v40)
          {
            sub_19355A5F8(v21 + v39, v48);
            OUTLINED_FUNCTION_0_38();
            sub_19355A65C(v41, v42);
            OUTLINED_FUNCTION_117_9();
            OUTLINED_FUNCTION_22();
            sub_19393C550();
            OUTLINED_FUNCTION_4_30();
            sub_193568274();
            sub_193568274();
            sub_19344E6DC(v21, &qword_1EAE3BCA0, &unk_19395C320);
            if ((v3 & 1) == 0)
            {
              goto LABEL_27;
            }

            goto LABEL_29;
          }

          OUTLINED_FUNCTION_1_37();
          sub_193568274();
        }

        v33 = v21;
LABEL_26:
        sub_19344E6DC(v33, &qword_1EAE3BD08, &qword_1939595A0);
        goto LABEL_27;
      }
    }

    else
    {
      v28 = OUTLINED_FUNCTION_125_3();
      sub_193448804(v28, v29, v30, v31);
      OUTLINED_FUNCTION_31(&v24[v27]);
      if (!v32)
      {
        sub_19355A5F8(&v24[v27], v48);
        OUTLINED_FUNCTION_0_38();
        sub_19355A65C(v34, v35);
        OUTLINED_FUNCTION_85_9();
        v36 = sub_19393C550();
        sub_193568274();
        sub_193568274();
        sub_19344E6DC(v24, &qword_1EAE3BCA0, &unk_19395C320);
        if ((v36 & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_17;
      }

      OUTLINED_FUNCTION_1_37();
      sub_193568274();
    }

    v33 = v24;
    goto LABEL_26;
  }

  if (*v1 != *v0)
  {
    v25 = 1;
  }

  if ((v25 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_27:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_3_4();
  v2 = type metadata accessor for AIML.UUID();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v7 = OUTLINED_FUNCTION_47(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  if (*(v0 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v16 = *v0;
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  v17 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0);
  sub_193448804(v0 + v17[5], v15, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v15, 1, v2);
  if (v18)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v15, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_38();
    sub_19355A65C(v19, v20);
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_1_37();
    sub_193568274();
  }

  sub_193448804(v0 + v17[6], v12, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v12, 1, v2);
  if (v18)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v12, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_38();
    sub_19355A65C(v21, v22);
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_1_37();
    sub_193568274();
  }

  v23 = (v0 + v17[7]);
  if (*(v23 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v24 = *(v23 + 8);
    v25 = *v23;
    OUTLINED_FUNCTION_103_0();
    v27 = v25;
    v28 = v24 & 1;
    v26 = IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.rawValue.getter();
    MEMORY[0x193B18030](v26);
  }

  OUTLINED_FUNCTION_236();
}

void IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount.count.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount(v0);
  OUTLINED_FUNCTION_263(*(v1 + 20));
}

uint64_t IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount.count.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount.init()()
{
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for AIML.UUID();
  v1 = OUTLINED_FUNCTION_10_25();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  OUTLINED_FUNCTION_67_7();
  v6 = v0 + v5;
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v7 = OUTLINED_FUNCTION_10_25();
  result = __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

void static IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_50_0();
  v2 = type metadata accessor for AIML.UUID();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v6 = OUTLINED_FUNCTION_165_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_76_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_220();
  v17 = *(v16 + 56);
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v18, v19, v20, v21);
  OUTLINED_FUNCTION_34_15();
  sub_193448804(v22, v23, v24, v25);
  OUTLINED_FUNCTION_31(v1);
  if (!v30)
  {
    v26 = OUTLINED_FUNCTION_32_4();
    sub_193448804(v26, v27, v28, v29);
    OUTLINED_FUNCTION_31(v1 + v17);
    if (!v30)
    {
      sub_19355A5F8(v1 + v17, v0);
      OUTLINED_FUNCTION_0_38();
      sub_19355A65C(v31, v32);
      OUTLINED_FUNCTION_22();
      sub_19393C550();
      OUTLINED_FUNCTION_4_30();
      sub_193568274();
      OUTLINED_FUNCTION_25_2();
      sub_193568274();
      sub_19344E6DC(v1, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_1_37();
    sub_193568274();
LABEL_9:
    sub_19344E6DC(v1, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31(v1 + v17);
  if (!v30)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v1, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_12:
  OUTLINED_FUNCTION_67_7();
  OUTLINED_FUNCTION_49_2(v33);
  if ((v34 & 1) == 0)
  {
    OUTLINED_FUNCTION_258();
  }

LABEL_10:
  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowJointResolverTelemetry.SegmentedTupleCount.tupleCandidates.setter()
{
  result = OUTLINED_FUNCTION_93_5();
  *v1 = v0;
  return result;
}

void IntelligenceFlowJointResolverTelemetry.SegmentedTupleCount.init()(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
}

uint64_t static IntelligenceFlowJointResolverTelemetry.SegmentedTupleCount.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 12);
  v7 = OUTLINED_FUNCTION_102_8(*a1);
  if ((sub_19355B350(v7, v8) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v5)
    {
      v10 = v6;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t IntelligenceFlowJointResolverTelemetry.SegmentedTupleCount.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 12);
  sub_19356408C(a1, v2);
  if (v4 == 1)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  return sub_19393CAE0();
}

uint64_t IntelligenceFlowJointResolverTelemetry.SegmentedTupleCount.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 12);
  v4 = OUTLINED_FUNCTION_119();
  v12 = OUTLINED_FUNCTION_98_9(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16);
  sub_19356408C(v12, v13);
  if (v3 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    OUTLINED_FUNCTION_123();
    sub_19393CAE0();
  }

  return sub_19393CB00();
}

uint64_t sub_193563D30()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 12);
  v4 = sub_19393CAB0();
  v12 = OUTLINED_FUNCTION_98_9(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16);
  sub_19356408C(v12, v13);
  if (v3 == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    OUTLINED_FUNCTION_123();
    sub_19393CAE0();
  }

  return sub_19393CB00();
}

uint64_t sub_193563DC4(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_119();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_193563E24(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t sub_193563E6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      result = sub_19393CAE0();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_193563EBC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AIML.UUID();
  v16 = *(v3 - 8);
  v4 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x193B18030](v7);
  v18 = v7;
  if (v7)
  {
    v9 = 0;
    v17 = a2 + 32;
    do
    {
      v10 = *(v17 + 8 * v9);
      result = MEMORY[0x193B18030](*(v10 + 16));
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = v16;
        v13 = v10 + ((*(v16 + 80) + 32) & ~*(v16 + 80));

        v14 = *(v12 + 72);
        do
        {
          sub_1935682C8(v13, v6, type metadata accessor for AIML.UUID);
          sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID);
          sub_19393C540();
          sub_193568274();
          v13 += v14;
          --v11;
        }

        while (v11);
      }

      ++v9;
    }

    while (v9 != v18);
  }

  return result;
}

uint64_t sub_19356408C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = *(type metadata accessor for AIML.UUID() - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID);
    do
    {
      result = sub_19393C540();
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_193564188(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AIML.UUID();
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x193B18030](v7);
  v21 = v7;
  if (v7)
  {
    v9 = 0;
    v20 = a2 + 32;
    do
    {
      v10 = (v20 + 24 * v9);
      v11 = *v10;
      v12 = *(v10 + 12);
      v13 = *(v10 + 4);
      v22 = *(v10 + 2);
      v23 = v13;
      LODWORD(v10) = *(v10 + 20);
      v24 = v12;
      v25 = v10;
      MEMORY[0x193B18030](*(v11 + 16));
      v14 = *(v11 + 16);
      if (v14)
      {
        v15 = v19;
        v16 = v11 + ((*(v19 + 80) + 32) & ~*(v19 + 80));

        v17 = *(v15 + 72);
        do
        {
          sub_1935682C8(v16, v6, type metadata accessor for AIML.UUID);
          sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID);
          sub_19393C540();
          sub_193568274();
          v16 += v17;
          --v14;
        }

        while (v14);
      }

      else
      {
      }

      if (v24)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19393CAD0();
        sub_19393CAE0();
      }

      if (v25)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19393CAD0();
        sub_19393CAE0();
      }

      ++v9;
    }

    while (v9 != v21);
  }

  return result;
}

uint64_t sub_1935643EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIML.UUID();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  v15 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(0);
  v31 = *(v15 - 8);
  v16 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 16);
  result = MEMORY[0x193B18030](v19);
  if (v19)
  {
    v21 = a2;
    v22 = *(v15 + 20);
    v32 = &v18[*(v15 + 24)];
    v23 = v21 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v31 = *(v31 + 72);
    do
    {
      sub_1935682C8(v23, v18, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow);
      sub_193448804(v18, v14, &qword_1EAE3BCA0, &unk_19395C320);
      if (__swift_getEnumTagSinglePayload(v14, 1, v4) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19355A5F8(v14, v7);
        sub_19393CAD0();
        sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID);
        sub_19393C540();
        sub_193568274();
      }

      sub_193448804(&v18[v22], v12, &qword_1EAE3BCA0, &unk_19395C320);
      if (__swift_getEnumTagSinglePayload(v12, 1, v4) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19355A5F8(v12, v7);
        sub_19393CAD0();
        sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID);
        sub_19393C540();
        sub_193568274();
      }

      if (v32[4] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v24 = a1;
        v25 = v7;
        v26 = v4;
        v27 = v14;
        v28 = v12;
        v29 = v22;
        v30 = *v32;
        sub_19393CAD0();
        v22 = v29;
        v12 = v28;
        v14 = v27;
        v4 = v26;
        v7 = v25;
        a1 = v24;
        sub_19393CAE0();
      }

      result = sub_193568274();
      v23 += v31;
      --v19;
    }

    while (v19);
  }

  return result;
}

uint64_t sub_1935647E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      result = sub_19393CAD0();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_193564830(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = *(v6 + 8 * v5);
      result = MEMORY[0x193B18030](*(v7 + 16));
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = (v7 + 32);
        do
        {
          v10 = *v9++;
          result = sub_19393CAD0();
          --v8;
        }

        while (v8);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_1935648B0(uint64_t a1, uint64_t a2)
{
  v34 = type metadata accessor for AIML.UUID();
  v3 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v29 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment(0);
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a2 + 16);
  result = MEMORY[0x193B18030](v14);
  if (v14)
  {
    v16 = v9[6];
    v32 = v13 + v9[7];
    v33 = v16;
    v17 = v13 + v9[8];
    v31 = v13 + v9[9];
    v18 = (v13 + v9[10]);
    v19 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v30 = *(v10 + 72);
    do
    {
      sub_1935682C8(v19, v13, type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment);
      if (v13[1])
      {
        v20 = *v13;
        sub_19393CAD0();
        sub_19393C640();
      }

      else
      {
        sub_19393CAD0();
      }

      if (v13[3])
      {
        v21 = v13[2];
        sub_19393CAD0();
        sub_19393C640();
      }

      else
      {
        sub_19393CAD0();
      }

      sub_193448804(v13 + v33, v8, &qword_1EAE3BCA0, &unk_19395C320);
      if (__swift_getEnumTagSinglePayload(v8, 1, v34) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19355A5F8(v8, v29);
        sub_19393CAD0();
        sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID);
        sub_19393C540();
        sub_193568274();
      }

      if (v32[8] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v22 = *v32;
        sub_19393CAD0();
        MEMORY[0x193B18060](v22);
      }

      if (v17[9] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v23 = v17[8];
        v24 = *v17;
        v25 = sub_19393CAD0();
        v35 = v24;
        v36 = v23 & 1;
        v26 = IntelligenceFlowJointResolverTelemetry.TreatmentAllocationStatus.rawValue.getter(v25);
        MEMORY[0x193B18030](v26);
      }

      if (v31[8] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v27 = *v31;
        sub_19393CAD0();
        MEMORY[0x193B18060](v27);
      }

      if (*(v18 + 4) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v28 = *v18;
        sub_19393CAD0();
        sub_19393CAE0();
      }

      result = sub_193568274();
      v19 += v30;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_193564CF8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_193564D78(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_193564DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
  }

  return result;
}

uint64_t sub_193564E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
  }

  return result;
}

unint64_t sub_193564EA4()
{
  result = qword_1EAE3D260;
  if (!qword_1EAE3D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D260);
  }

  return result;
}

uint64_t sub_193564EF8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AIML.UUID();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - v12;
  v14 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow(0);
  v29 = *(v14 - 8);
  v30 = v14;
  v15 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 16);
  result = MEMORY[0x193B18030](v18);
  v32 = v18;
  if (v18)
  {
    v20 = 0;
    v31 = a2 + 32;
    do
    {
      v21 = *(v31 + 8 * v20);
      v22 = *(v21 + 16);
      result = MEMORY[0x193B18030](v22);
      if (v22)
      {
        v23 = *(v30 + 20);
        v36 = &v17[*(v30 + 24)];
        v37 = v23;
        v24 = v21;
        v25 = v21 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
        v26 = *(v29 + 72);
        v34 = v20;
        v35 = v26;
        v33 = v24;

        do
        {
          sub_1935682C8(v25, v17, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JREntitySimilarityRow);
          sub_193448804(v17, v13, &qword_1EAE3BCA0, &unk_19395C320);
          if (__swift_getEnumTagSinglePayload(v13, 1, v3) == 1)
          {
            sub_19393CAD0();
          }

          else
          {
            sub_19355A5F8(v13, v6);
            sub_19393CAD0();
            sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID);
            sub_19393C540();
            sub_193568274();
          }

          sub_193448804(&v17[v37], v11, &qword_1EAE3BCA0, &unk_19395C320);
          if (__swift_getEnumTagSinglePayload(v11, 1, v3) == 1)
          {
            sub_19393CAD0();
          }

          else
          {
            sub_19355A5F8(v11, v6);
            sub_19393CAD0();
            sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID);
            sub_19393C540();
            sub_193568274();
          }

          if (v36[4] == 1)
          {
            sub_19393CAD0();
          }

          else
          {
            v27 = *v36;
            sub_19393CAD0();
            sub_19393CAE0();
          }

          sub_193568274();
          v25 += v35;
          --v22;
        }

        while (v22);

        v20 = v34;
      }

      ++v20;
    }

    while (v20 != v32);
  }

  return result;
}

void sub_193565318(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_122_5(a1, a2);
  if (v2)
  {
    v4 = 0;
    v5 = v3 + 32;
    do
    {
      v6 = *(v5 + 8 * v4);
      MEMORY[0x193B18030](*(v6 + 16));
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = (v6 + 32);
        do
        {
          v9 = *v8++;
          sub_19393CAE0();
          --v7;
        }

        while (v7);
      }

      ++v4;
    }

    while (v4 != v2);
  }
}

uint64_t sub_1935653A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = (v6 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      MEMORY[0x193B18030](*(*v7 + 16));
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = 0;
        v12 = v9 + 32;
        do
        {
          v13 = *(v12 + 8 * v11);
          MEMORY[0x193B18030](*(v13 + 16));
          v14 = *(v13 + 16);
          if (v14)
          {
            v15 = (v13 + 32);
            do
            {
              v16 = *v15++;
              sub_19393CAD0();
              --v14;
            }

            while (v14);
          }

          ++v11;
        }

        while (v11 != v10);
      }

      v17 = *(v8 + 16);
      result = MEMORY[0x193B18030](v17);
      if (v17)
      {
        v18 = 0;
        v19 = v8 + 32;
        do
        {
          v20 = *(v19 + 8 * v18);
          result = MEMORY[0x193B18030](*(v20 + 16));
          v21 = *(v20 + 16);
          if (v21)
          {
            v22 = (v20 + 32);
            do
            {
              v23 = *v22++;
              result = sub_19393CAE0();
              --v21;
            }

            while (v21);
          }

          ++v18;
        }

        while (v18 != v17);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_1935654C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(a2 + 16);
  result = MEMORY[0x193B18030](v5);
  if (v5)
  {
    v7 = (a2 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v7 += 16;
      v10 = a3(result);
      result = MEMORY[0x193B18030](v10);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_193565544(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AIML.UUID();
  v17 = *(v3 - 8);
  v4 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x193B18030](v7);
  v19 = v7;
  if (v7)
  {
    v9 = 0;
    v18 = a2 + 32;
    do
    {
      v10 = (v18 + 16 * v9);
      v11 = *v10;
      v12 = *(v10 + 2);
      LODWORD(v10) = *(v10 + 12);
      v20 = v12;
      v21 = v10;
      MEMORY[0x193B18030](*(v11 + 16));
      v13 = *(v11 + 16);
      if (v13)
      {
        v14 = v17;
        v15 = v11 + ((*(v17 + 80) + 32) & ~*(v17 + 80));

        v16 = *(v14 + 72);
        do
        {
          sub_1935682C8(v15, v6, type metadata accessor for AIML.UUID);
          sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID);
          sub_19393C540();
          sub_193568274();
          v15 += v16;
          --v13;
        }

        while (v13);
      }

      else
      {
      }

      if (v21)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19393CAD0();
        sub_19393CAE0();
      }

      ++v9;
    }

    while (v9 != v19);
  }

  return result;
}

uint64_t sub_19356575C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AIML.UUID();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - v8;
  v10 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  result = MEMORY[0x193B18030](v15);
  if (v15)
  {
    v17 = &v14[*(v10 + 20)];
    v18 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v19 = *(v11 + 72);
    do
    {
      sub_1935682C8(v18, v14, type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount);
      sub_193448804(v14, v9, &qword_1EAE3BCA0, &unk_19395C320);
      if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19355A5F8(v9, v24);
        sub_19393CAD0();
        sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID);
        sub_19393C540();
        sub_193568274();
      }

      if (v17[4] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v20 = v3;
        v21 = v19;
        v22 = *v17;
        sub_19393CAD0();
        v19 = v21;
        v3 = v20;
        sub_19393CAE0();
      }

      result = sub_193568274();
      v18 += v19;
      --v15;
    }

    while (v15);
  }

  return result;
}

void sub_193565A3C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_122_5(a1, a2);
  if (v2)
  {
    v4 = 0;
    v5 = v3 + 32;
    do
    {
      v6 = *(v5 + 8 * v4);
      MEMORY[0x193B18030](*(v6 + 16));
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = (v6 + 32);
        do
        {
          v9 = *v8++;
          sub_19393CAE0();
          --v7;
        }

        while (v7);
      }

      ++v4;
    }

    while (v4 != v2);
  }
}

uint64_t sub_193565ACC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_193565B14(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_193565B58(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0);
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AIML.UUID();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v62 = &v50 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v50 - v18;
  v19 = type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory(0);
  v20 = *(v19 - 1);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a2;
  v24 = *(a2 + 16);
  result = MEMORY[0x193B18030](v24);
  v58 = v24;
  if (v24)
  {
    v26 = v23;
    v27 = 0;
    v28 = v19[5];
    v56 = &v23[v19[6]];
    v57 = v28;
    v29 = v19[7];
    v54 = v66 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v55 = v29;
    v53 = *(v20 + 72);
    v61 = v23;
    do
    {
      sub_1935682C8(v54 + v53 * v27, v26, type metadata accessor for IntelligenceFlowJointResolverTelemetry.UserHistory);
      v30 = v26;
      v31 = v59;
      sub_193448804(v30, v59, &qword_1EAE3BCA0, &unk_19395C320);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v7);
      v60 = v27;
      if (EnumTagSinglePayload == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19355A5F8(v31, v10);
        sub_19393CAD0();
        sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID);
        sub_19393C540();
        sub_193568274();
      }

      v33 = v62;
      v34 = *&v61[v57];
      MEMORY[0x193B18030](*(v34 + 16));
      v35 = *(v34 + 16);
      if (v35)
      {
        v36 = (v34 + 32);
        do
        {
          v37 = *v36++;
          sub_19393CAE0();
          --v35;
        }

        while (v35);
      }

      if (v56[4])
      {
        sub_19393CAD0();
      }

      else
      {
        v38 = *v56;
        sub_19393CAD0();
        sub_19393CAE0();
      }

      v39 = *&v61[v55];
      MEMORY[0x193B18030](*(v39 + 16));
      v40 = *(v39 + 16);
      if (v40)
      {
        v41 = v52[5];
        v65 = v52[6];
        v66 = v41;
        v64 = &v6[v52[7]];
        v42 = v39 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
        v63 = *(v51 + 72);
        do
        {
          sub_1935682C8(v42, v6, type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext);
          if (v6[4] == 1)
          {
            sub_19393CAD0();
          }

          else
          {
            v43 = *v6;
            sub_19393CAD0();
            sub_19393CAE0();
          }

          sub_193448804(&v6[v66], v33, &qword_1EAE3BCA0, &unk_19395C320);
          if (__swift_getEnumTagSinglePayload(v33, 1, v7) == 1)
          {
            sub_19393CAD0();
          }

          else
          {
            sub_19355A5F8(v33, v10);
            sub_19393CAD0();
            sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID);
            sub_19393C540();
            sub_193568274();
          }

          sub_193448804(&v6[v65], v15, &qword_1EAE3BCA0, &unk_19395C320);
          if (__swift_getEnumTagSinglePayload(v15, 1, v7) == 1)
          {
            sub_19393CAD0();
          }

          else
          {
            sub_19355A5F8(v15, v10);
            sub_19393CAD0();
            sub_19355A65C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID);
            sub_19393C540();
            sub_193568274();
          }

          if (v64[9] == 1)
          {
            sub_19393CAD0();
          }

          else
          {
            v44 = v64[8];
            v45 = v10;
            v46 = v7;
            v47 = v15;
            v48 = *v64;
            sub_19393CAD0();
            v67 = v48;
            v15 = v47;
            v7 = v46;
            v10 = v45;
            v33 = v62;
            v68 = v44 & 1;
            v49 = IntelligenceFlowJointResolverTelemetry.JRBucketedDistance.rawValue.getter();
            MEMORY[0x193B18030](v49);
          }

          sub_193568274();
          v42 += v63;
          --v40;
        }

        while (v40);
      }

      v26 = v61;
      v27 = v60 + 1;
      result = sub_193568274();
    }

    while (v27 != v58);
  }

  return result;
}

void sub_193566264(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x193B18030](v3);
  if (v3)
  {
    v4 = *(type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext(0) - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext.hash(into:)();
      v5 += v6;
      --v3;
    }

    while (v3);
  }
}

unint64_t sub_193566384()
{
  result = qword_1EAE3D278;
  if (!qword_1EAE3D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D278);
  }

  return result;
}

unint64_t sub_19356640C()
{
  result = qword_1EAE3D288;
  if (!qword_1EAE3D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D288);
  }

  return result;
}

unint64_t sub_193566494()
{
  result = qword_1EAE3D298;
  if (!qword_1EAE3D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D298);
  }

  return result;
}

unint64_t sub_193566610()
{
  result = qword_1EAE3D2A8;
  if (!qword_1EAE3D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D2A8);
  }

  return result;
}

unint64_t sub_193566668()
{
  result = qword_1EAE3D2B0;
  if (!qword_1EAE3D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D2B0);
  }

  return result;
}

unint64_t sub_1935666C0()
{
  result = qword_1EAE3D2B8;
  if (!qword_1EAE3D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D2B8);
  }

  return result;
}

unint64_t sub_193566718()
{
  result = qword_1EAE3D2C0;
  if (!qword_1EAE3D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D2C0);
  }

  return result;
}

unint64_t sub_193566770()
{
  result = qword_1EAE3D2C8;
  if (!qword_1EAE3D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D2C8);
  }

  return result;
}

unint64_t sub_1935667C8()
{
  result = qword_1EAE3D2D0;
  if (!qword_1EAE3D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D2D0);
  }

  return result;
}

unint64_t sub_193566820()
{
  result = qword_1EAE3D2D8;
  if (!qword_1EAE3D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D2D8);
  }

  return result;
}

unint64_t sub_193566878()
{
  result = qword_1EAE3D2E0;
  if (!qword_1EAE3D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D2E0);
  }

  return result;
}

unint64_t sub_1935668D0()
{
  result = qword_1EAE3D2E8;
  if (!qword_1EAE3D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D2E8);
  }

  return result;
}

unint64_t sub_193566928()
{
  result = qword_1EAE3D2F0;
  if (!qword_1EAE3D2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D2F0);
  }

  return result;
}

unint64_t sub_1935669C8()
{
  result = qword_1EAE3D300;
  if (!qword_1EAE3D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D300);
  }

  return result;
}

unint64_t sub_193566A20()
{
  result = qword_1EAE3D308;
  if (!qword_1EAE3D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D308);
  }

  return result;
}

unint64_t sub_193566A78()
{
  result = qword_1EAE3D310;
  if (!qword_1EAE3D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D310);
  }

  return result;
}

unint64_t sub_193566AD0()
{
  result = qword_1EAE3D318;
  if (!qword_1EAE3D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D318);
  }

  return result;
}

unint64_t sub_193566B28()
{
  result = qword_1EAE3D320;
  if (!qword_1EAE3D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D320);
  }

  return result;
}

unint64_t sub_193566B80()
{
  result = qword_1EAE3D328;
  if (!qword_1EAE3D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D328);
  }

  return result;
}

unint64_t sub_193566BD8()
{
  result = qword_1EAE3D330;
  if (!qword_1EAE3D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D330);
  }

  return result;
}

unint64_t sub_193566C30()
{
  result = qword_1EAE3D338;
  if (!qword_1EAE3D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D338);
  }

  return result;
}

unint64_t sub_193566C88()
{
  result = qword_1EAE3D340;
  if (!qword_1EAE3D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D340);
  }

  return result;
}

unint64_t sub_193566CE0()
{
  result = qword_1EAE3D348;
  if (!qword_1EAE3D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D348);
  }

  return result;
}

unint64_t sub_193566D38()
{
  result = qword_1EAE3D350;
  if (!qword_1EAE3D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D350);
  }

  return result;
}

unint64_t sub_193566D90()
{
  result = qword_1EAE3D358;
  if (!qword_1EAE3D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D358);
  }

  return result;
}

unint64_t sub_193566DE8()
{
  result = qword_1EAE3D360;
  if (!qword_1EAE3D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D360);
  }

  return result;
}

unint64_t sub_193566E40()
{
  result = qword_1EAE3D368;
  if (!qword_1EAE3D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D368);
  }

  return result;
}

unint64_t sub_193566F70()
{
  result = qword_1EAE3D388;
  if (!qword_1EAE3D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D388);
  }

  return result;
}

void sub_193567034()
{
  sub_193567230(319, &qword_1ED5082C0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      sub_193567230(319, qword_1ED507D60, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JointResolverRequestInvocation, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        OUTLINED_FUNCTION_2_34(v2, &qword_1ED5069F0, &type metadata for IntelligenceFlowJointResolverTelemetry.JRInferenceContext);
        if (v4 <= 0x3F)
        {
          sub_193567230(319, qword_1ED507490, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRExperimentTriggered, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_193567230(319, &qword_1ED5074F0, type metadata accessor for IntelligenceFlowJointResolverTelemetry.JRClientEventMetadata, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_193567230(319, &qword_1ED507A78, type metadata accessor for MonotonicTimestamp, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                OUTLINED_FUNCTION_15_2();
                swift_cvw_initStructMetadataWithLayoutString();
                OUTLINED_FUNCTION_10_1();
              }
            }
          }
        }
      }
    }
  }
}

void sub_193567230(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for IntelligenceFlowJointResolverTelemetry.JRBucketedDistance(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_46_4(*a1);
  }

  else
  {
    return OUTLINED_FUNCTION_9_2();
  }
}

uint64_t sub_1935672BC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_46_4(*a1);
  }

  else
  {
    return OUTLINED_FUNCTION_9_2();
  }
}

void sub_193567360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_3_34();
  sub_193567230(319, v11, v12, MEMORY[0x1E69E6720]);
  if (v13 <= 0x3F)
  {
    a7(319, a4, a5, a6);
    if (v14 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_10_1();
    }
  }
}

void sub_193567450()
{
  sub_193567230(319, &qword_1ED508298, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_15_2();
    swift_cvw_initStructMetadataWithLayoutString();
    OUTLINED_FUNCTION_10_1();
  }
}

void *sub_1935674EC(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      return OUTLINED_FUNCTION_2_11(result, (v3 | (v3 << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

void sub_193567570()
{
  sub_193567230(319, &qword_1ED5066A8, type metadata accessor for IntelligenceFlowJointResolverTelemetry.TrialExperiment, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_3_34();
    sub_193567230(319, v1, v2, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_10_1();
    }
  }
}

void sub_193567660(uint64_t a1)
{
  OUTLINED_FUNCTION_2_34(a1, &qword_1ED508290, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_3_34();
    sub_193567230(319, v2, v3, MEMORY[0x1E69E6720]);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_2_34(v4, &qword_1ED506678, MEMORY[0x1E69E7360]);
      if (v7 <= 0x3F)
      {
        OUTLINED_FUNCTION_2_34(v6, &qword_1ED5069E8, &type metadata for IntelligenceFlowJointResolverTelemetry.TreatmentAllocationStatus);
        if (v9 <= 0x3F)
        {
          OUTLINED_FUNCTION_2_34(v8, &qword_1ED508070, MEMORY[0x1E69E76D8]);
          if (v11 <= 0x3F)
          {
            OUTLINED_FUNCTION_2_34(v10, qword_1ED506E98, MEMORY[0x1E69E7668]);
            if (v12 <= 0x3F)
            {
              OUTLINED_FUNCTION_15_2();
              swift_cvw_initStructMetadataWithLayoutString();
              OUTLINED_FUNCTION_10_1();
            }
          }
        }
      }
    }
  }
}

_BYTE *sub_1935677A8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary0A26FlowJointResolverTelemetryV18JRModelInputShapesVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary0A26FlowJointResolverTelemetryV7RankingVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary0A26FlowJointResolverTelemetryV14JRModelOutputsVSg(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary4AIMLV7VersionVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_193567904(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 304))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 192);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_193567940(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 192) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_193567A00(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
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

      return OUTLINED_FUNCTION_20_16(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_20_16(result, a2);
    }
  }

  return result;
}

void sub_193567AAC()
{
  OUTLINED_FUNCTION_3_34();
  sub_193567230(319, v0, v1, MEMORY[0x1E69E6720]);
  if (v3 <= 0x3F)
  {
    OUTLINED_FUNCTION_2_34(v2, &qword_1EAE3A700, MEMORY[0x1E69E6448]);
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_10_1();
    }
  }
}

uint64_t sub_193567B50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 48))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

void *sub_193567B8C(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[5] = 0;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

      return OUTLINED_FUNCTION_20_16(result, a2);
    }

    *(result + 48) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_20_16(result, a2);
    }
  }

  return result;
}

uint64_t sub_193567BE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 80))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 72);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_193567C24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_193567CCC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 21))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

void *sub_193567D08(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 4) = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

      return OUTLINED_FUNCTION_20_16(result, a2);
    }

    *(result + 21) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_20_16(result, a2);
    }
  }

  return result;
}

uint64_t sub_193567D64(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *a1;
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

void *sub_193567DB0(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_2_11(result, a2);
    }
  }

  return result;
}

uint64_t sub_193567E64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 8))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

void *sub_193567EA0(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

      return OUTLINED_FUNCTION_20_16(result, a2);
    }

    *(result + 8) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_20_16(result, a2);
    }
  }

  return result;
}

void sub_193567F0C()
{
  OUTLINED_FUNCTION_3_34();
  sub_193567230(319, v0, v1, MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    sub_193568124(319, &qword_1ED5066A0, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_2_34(v3, &qword_1EAE3A700, MEMORY[0x1E69E6448]);
      if (v5 <= 0x3F)
      {
        sub_193567230(319, &qword_1EAE3D398, type metadata accessor for IntelligenceFlowJointResolverTelemetry.HistoricalLocationContext, MEMORY[0x1E69E62F8]);
        if (v6 <= 0x3F)
        {
          OUTLINED_FUNCTION_15_2();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_10_1();
        }
      }
    }
  }
}

void sub_19356805C(uint64_t a1)
{
  OUTLINED_FUNCTION_2_34(a1, &qword_1EAE3A700, MEMORY[0x1E69E6448]);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_3_34();
    sub_193567230(319, v2, v3, MEMORY[0x1E69E6720]);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_2_34(v4, &qword_1EAE3D3A0, &type metadata for IntelligenceFlowJointResolverTelemetry.JRBucketedDistance);
      if (v6 <= 0x3F)
      {
        OUTLINED_FUNCTION_15_2();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_10_1();
      }
    }
  }
}

void sub_193568124(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t sub_1935681EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 13))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

void *sub_193568228(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 2) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 13) = 1;
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

      return OUTLINED_FUNCTION_20_16(result, a2);
    }

    *(result + 13) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_20_16(result, a2);
    }
  }

  return result;
}

uint64_t sub_193568274()
{
  v1 = OUTLINED_FUNCTION_3_4();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1935682C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

void OUTLINED_FUNCTION_39_13()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  v4 = *(v0 + 16);
  v5 = *(v0 + 20);
  *(v1 - 40) = *v0;
  *(v1 - 32) = v2;
  *(v1 - 28) = v3;
  *(v1 - 24) = v4;
  *(v1 - 20) = v5;
}

uint64_t OUTLINED_FUNCTION_51_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return sub_193448804(a1, &a69, v69, v70);
}

uint64_t OUTLINED_FUNCTION_67_7()
{
  result = type metadata accessor for IntelligenceFlowJointResolverTelemetry.SegmentedCandidateCount(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_75_10(uint64_t result)
{

  return sub_193564CF8(result);
}

float OUTLINED_FUNCTION_109_8()
{
  result = *v1;
  *v0;
  return result;
}

uint64_t sub_1935685B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED510418);
  v5 = __swift_project_value_buffer(v4, qword_1ED510418);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

unint64_t static Library.Streams.IntelligenceFlow.ResponseGeneration.attribute(_:)(void (*a1)(void))
{
  result = sub_1935687E0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193568824(void (*a1)(void))
{
  result = sub_1935687E0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193568854(uint64_t a1)
{
  result = sub_19356887C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19356887C()
{
  result = qword_1ED507B20;
  if (!qword_1ED507B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED507B20);
  }

  return result;
}

_BYTE *_s18ResponseGenerationOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IntelligenceFlowResponseGeneration.json()()
{
  OUTLINED_FUNCTION_26();
  v2 = sub_19393C090();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
  v12 = OUTLINED_FUNCTION_4_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3B0, &qword_193963838);
  OUTLINED_FUNCTION_4_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_76_0();
  OUTLINED_FUNCTION_6_28();
  sub_19356B5CC(v0, v17, v22);
  sub_1934470C8(v17, v11, v1);
  sub_19393C080();
  sub_193568B50();
  sub_19393C250();
  (*(v5 + 8))(v10, v2);
  sub_19344E6DC(v1, &qword_1EAE3D3B0, &qword_193963838);
  OUTLINED_FUNCTION_27();
  result._object = v24;
  result._countAndFlagsBits = v23;
  return result;
}

unint64_t sub_193568B50()
{
  result = qword_1EAE3D3B8;
  if (!qword_1EAE3D3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3D3B0, &qword_193963838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D3B8);
  }

  return result;
}

uint64_t static IntelligenceFlowResponseGeneration.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = OUTLINED_FUNCTION_47(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3B0, &qword_193963838);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;

  sub_19393C060();
  sub_193568B50();
  result = sub_19393C260();
  if (!v1)
  {
    OUTLINED_FUNCTION_21_15();
    return sub_19356A000(v12, a1, v14);
  }

  return result;
}

void static IntelligenceFlowResponseGeneration.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v35 = v3;
  v36 = v2;
  v34 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3B0, &qword_193963838);
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_1();
  v11 = sub_19393C0C0();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  if (*sub_19357B508() == v6)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    (*(v14 + 16))(v19, v22, v11);
    v23 = OUTLINED_FUNCTION_19_3();
    sub_193450688(v23, v24);
    sub_193568B50();
    OUTLINED_FUNCTION_19_3();
    sub_19393C280();
    (*(v14 + 8))(v22, v11);
    if (!v0)
    {
      OUTLINED_FUNCTION_21_15();
      v26 = v35;
      sub_19356A000(v1, v35, v27);
      v28 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
      v29 = *(v28 + 20);
      sub_19344E6DC(v26 + v29, &qword_1EAE3A9E8, &qword_19394F800);
      v30 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v30);
      (*(v31 + 16))(v26 + v29, v34, v30);
      __swift_storeEnumTagSinglePayload(v26 + v29, 0, 1, v30);
      v32 = *(v28 + 24);
      sub_19344E6DC(v26 + v32, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v36, v26 + v32);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    *v25 = v6;
    *(v25 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t IntelligenceFlowResponseGeneration.serialize()()
{
  v2 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3B0, &qword_193963838);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_6_28();
  sub_19356B5CC(v0, v8, v13);
  sub_1934470C8(v8, v2, v1);
  sub_193568B50();
  sub_19393C290();
  sub_19344E6DC(v1, &qword_1EAE3D3B0, &qword_193963838);
  return OUTLINED_FUNCTION_13_0();
}

void sub_193569124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v22;
  a20 = v23;
  v204 = v20;
  v205 = v24;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
  OUTLINED_FUNCTION_47(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_23_16(v33);
  v196 = type metadata accessor for IntelligenceFlowIdentifiers();
  v34 = OUTLINED_FUNCTION_4_1(v196);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_23_16(v38 - v37);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3D8, &qword_193963850);
  OUTLINED_FUNCTION_47(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_23_16(v43);
  v197 = type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext(0);
  v44 = OUTLINED_FUNCTION_4_1(v197);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_23_16(v48 - v47);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3D0, &unk_193964150);
  OUTLINED_FUNCTION_47(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_53_1();
  v199 = v53;
  v198 = type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext(0);
  v54 = OUTLINED_FUNCTION_4_1(v198);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_23_16(v58 - v57);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3C8, &qword_193963848);
  OUTLINED_FUNCTION_47(v59);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_53_1();
  v201 = v63;
  v200 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  v64 = OUTLINED_FUNCTION_4_1(v200);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_5_1();
  v69 = v68 - v67;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v70);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_59_3();
  v74 = type metadata accessor for MonotonicTimestamp();
  v75 = OUTLINED_FUNCTION_4_1(v74);
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_5_1();
  v80 = v79 - v78;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3C0, &qword_193963840);
  OUTLINED_FUNCTION_47(v81);
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v195 - v85;
  v87 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0);
  v88 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](0x617461646174656DLL);
  OUTLINED_FUNCTION_5_1();
  v91 = v90 - v89;
  v202 = v28;
  v203 = v26;
  v93 = v28 == v92 && v26 == 0xE800000000000000;
  if (v93 || (OUTLINED_FUNCTION_41_11() & 1) != 0)
  {
    v94 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
    v95 = OUTLINED_FUNCTION_49_7(*(v94 + 28));
    sub_193448758(v95, v86, v96, v97);
    OUTLINED_FUNCTION_6_3(v86, 1, v87);
    if (!v93)
    {
      sub_19356A000(v86, v91, type metadata accessor for IntelligenceFlowResponseGeneration.Metadata);
      sub_193494798(v87, &off_1F07CBFD8, v205);
      v102 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata;
      v103 = v91;
LABEL_11:
      sub_19356A24C(v103, v102);
      goto LABEL_12;
    }

    v98 = &qword_1EAE3D3C0;
    v99 = &qword_193963840;
    v100 = v86;
    goto LABEL_9;
  }

  v104 = v202 == 0x6D617473656D6974 && v203 == 0xE900000000000070;
  if (v104 || (OUTLINED_FUNCTION_41_11() & 1) != 0)
  {
    v105 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
    v106 = OUTLINED_FUNCTION_49_7(*(v105 + 32));
    sub_193448758(v106, v21, v107, v108);
    OUTLINED_FUNCTION_6_3(v21, 1, v74);
    if (!v93)
    {
      sub_19356A000(v21, v80, type metadata accessor for MonotonicTimestamp);
      sub_193494798(v74, &off_1F07BD958, v205);
      v102 = type metadata accessor for MonotonicTimestamp;
      v103 = v80;
      goto LABEL_11;
    }

    v98 = &qword_1EAE3B498;
    v99 = &unk_193959120;
    v100 = v21;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_30_11();
  v110 = v93 && v109 == 0xEE00747865746E6FLL;
  if (v110 || (OUTLINED_FUNCTION_41_11() & 1) != 0)
  {
    v111 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
    OUTLINED_FUNCTION_8_33(*(v111 + 36));
    if (v93)
    {
      goto LABEL_10;
    }

    v206[0] = v112;
    v113 = &type metadata for IntelligenceFlowResponseGeneration.RequestContext;
    v114 = &off_1F07CBFE8;
LABEL_28:
    sub_193494798(v113, v114, v205);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_38();
  v116 = v202 == 0xD000000000000011 && v115 == v203;
  if (v116 || (OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_41_11() & 1) != 0))
  {
    v117 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
    v118 = OUTLINED_FUNCTION_49_7(*(v117 + 40));
    v119 = v201;
    sub_193448758(v118, v201, v120, v121);
    v122 = OUTLINED_FUNCTION_131_0();
    v123 = v200;
    OUTLINED_FUNCTION_6_3(v122, v124, v200);
    if (!v93)
    {
      sub_19356A000(v119, v69, type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1);
      sub_193494798(v123, &off_1F07CC028, v205);
      v102 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1;
      v103 = v69;
      goto LABEL_11;
    }

    v98 = &qword_1EAE3D3C8;
    v99 = &qword_193963848;
    v100 = v119;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_68_7();
  OUTLINED_FUNCTION_30_11();
  v127 = v93 && v126 == v125;
  if (v127 || (OUTLINED_FUNCTION_41_11() & 1) != 0)
  {
    v128 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
    OUTLINED_FUNCTION_8_33(*(v128 + 44));
    if (v93)
    {
      goto LABEL_10;
    }

    v206[0] = v129;
    v113 = &type metadata for IntelligenceFlowResponseGeneration.OverrideContext;
    v114 = &off_1F07CC038;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_38();
  v131 = v202 == 0xD000000000000011 && v130 == v203;
  if (v131 || (OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_41_11() & 1) != 0))
  {
    v132 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
    OUTLINED_FUNCTION_8_33(*(v132 + 48));
    if (v93)
    {
      goto LABEL_10;
    }

    v206[0] = v133;
    v113 = &type metadata for IntelligenceFlowResponseGeneration.ValidationContext;
    v114 = &off_1F07CC078;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_30_11();
  v135 = v93 && v134 == 0xEE00747865746E6FLL;
  if (v135 || (OUTLINED_FUNCTION_41_11() & 1) != 0)
  {
    v136 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
    OUTLINED_FUNCTION_8_33(*(v136 + 52));
    if (v93)
    {
      goto LABEL_10;
    }

    v206[0] = v137;
    v113 = &type metadata for IntelligenceFlowResponseGeneration.CatalogContext;
    v114 = &off_1F07CC138;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_30_11();
  v140 = v93 && v138 == v139;
  if (v140 || (OUTLINED_FUNCTION_41_11() & 1) != 0)
  {
    v141 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
    OUTLINED_FUNCTION_8_33(*(v141 + 56));
    if (v93)
    {
      goto LABEL_10;
    }

    v206[0] = v142;
    v113 = &type metadata for IntelligenceFlowResponseGeneration.InferenceContext;
    v114 = &off_1F07CC178;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_30_11();
  v145 = v93 && v143 == v144;
  if (v145 || (OUTLINED_FUNCTION_41_11() & 1) != 0)
  {
    v146 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
    OUTLINED_FUNCTION_8_33(*(v146 + 60));
    if (v93)
    {
      goto LABEL_10;
    }

    v206[0] = v147;
    v113 = &type metadata for IntelligenceFlowResponseGeneration.HallucinationDetectionContext;
    v114 = &off_1F07CC1B8;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_30_11();
  v149 = v93 && v148 == 0xEE00747865746E6FLL;
  if (v149 || (OUTLINED_FUNCTION_41_11() & 1) != 0)
  {
    v150 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
    v151 = OUTLINED_FUNCTION_49_7(*(v150 + 64));
    v26 = v199;
    sub_193448758(v151, v199, v152, v153);
    v154 = OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_6_3(v154, v155, v198);
    if (!v93)
    {
      OUTLINED_FUNCTION_56_6(&a17);
      sub_19356A000(v156, v157, v158);
      sub_193494798(v198, &off_1F07CC0F8, v205);
      v159 = type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext;
LABEL_80:
      v102 = v159;
      v103 = v26;
      goto LABEL_11;
    }

    v98 = &qword_1EAE3D3D0;
    v99 = &unk_193964150;
    v100 = v199;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_30_11();
    v162 = v93 && v160 == v161;
    if (v162 || (OUTLINED_FUNCTION_41_11() & 1) != 0)
    {
      v163 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
      OUTLINED_FUNCTION_49_7(*(v163 + 68));
      OUTLINED_FUNCTION_56_6(&a18);
      sub_193448758(v164, v165, v166, v167);
      v168 = OUTLINED_FUNCTION_131_0();
      OUTLINED_FUNCTION_6_3(v168, v169, v197);
      if (!v93)
      {
        OUTLINED_FUNCTION_56_6(&a13);
        sub_19356A000(v171, v172, v173);
        sub_193494798(v197, &off_1F07CC0B8, v205);
        v159 = type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext;
        goto LABEL_80;
      }

      v98 = &qword_1EAE3D3D8;
      v99 = &qword_193963850;
      v170 = &a18;
    }

    else
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_30_11();
      v176 = v93 && v174 == v175;
      if (!v176 && (OUTLINED_FUNCTION_41_11() & 1) == 0)
      {
        v187 = v202 == 0x746E657665 && v203 == 0xE500000000000000;
        if (!v187 && (OUTLINED_FUNCTION_41_11() & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_13_9();
          v191 = v190;
          v192 = v203;
          *v190 = v202;
          v190[1] = v192;
          v190[5] = type metadata accessor for IntelligenceFlowResponseGeneration(0);
          __swift_allocate_boxed_opaque_existential_1Tm(v191 + 2);
          OUTLINED_FUNCTION_6_28();
          sub_19356B5CC(v204, v193, v194);
          *(v191 + 48) = 1;
          swift_willThrow();

          goto LABEL_12;
        }

        v188 = (v204 + *(type metadata accessor for IntelligenceFlowResponseGeneration(0) + 76));
        v189 = v188[96];
        if (v189 == 255)
        {
          goto LABEL_10;
        }

        memcpy(v206, v188, sizeof(v206));
        v207 = v189;
        v113 = &type metadata for IntelligenceFlowResponseGeneration.Event;
        v114 = &off_1F07CC208;
        goto LABEL_28;
      }

      v177 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
      OUTLINED_FUNCTION_49_7(*(v177 + 72));
      OUTLINED_FUNCTION_56_6(&a15);
      sub_193448758(v178, v179, v180, v181);
      v182 = OUTLINED_FUNCTION_131_0();
      OUTLINED_FUNCTION_6_3(v182, v183, v196);
      if (!v93)
      {
        OUTLINED_FUNCTION_56_6(&a12);
        sub_19356A000(v184, v185, v186);
        sub_193494798(v196, &off_1F07C27B8, v205);
        v159 = type metadata accessor for IntelligenceFlowIdentifiers;
        goto LABEL_80;
      }

      v98 = &qword_1EAE3B948;
      v99 = &qword_193957C10;
      v170 = &a15;
    }

    v100 = *(v170 - 32);
  }

LABEL_9:
  sub_19344E6DC(v100, v98, v99);
LABEL_10:
  v101 = v205;
  *v205 = 0u;
  *(v101 + 1) = 0u;
LABEL_12:
  OUTLINED_FUNCTION_27();
}

void sub_193569CA8()
{
  OUTLINED_FUNCTION_26();
  v42 = v1;
  v43 = v0;
  v4 = v3;
  v6 = v5;
  v41 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v9 = OUTLINED_FUNCTION_47(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_83_1();
  v17 = OUTLINED_FUNCTION_4_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v40 - v24;
  v26 = v6 == 0x7365757165526669 && v4 == 0xEB00000000644974;
  if (v26 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    sub_193448758(v43, v2, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v2, 1, v16);
    if (!v26)
    {
      OUTLINED_FUNCTION_1_38();
      sub_19356A000(v2, v25, v29);
      sub_193494798(v16, &off_1F07C3F90, v41);
      OUTLINED_FUNCTION_0_39();
      v31 = v25;
LABEL_11:
      sub_19356A24C(v31, v30);
      goto LABEL_12;
    }

    v27 = v2;
  }

  else
  {
    v32 = v6 == 0x53676E6974736F70 && v4 == 0xED000064496E6170;
    if (v32 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
    {
      v33 = (v43 + *(type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0) + 20));
      if ((v33[1] & 1) == 0)
      {
        v44 = *v33;
        sub_1934948FC();
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v34 = v6 == 1682532210 && v4 == 0xE400000000000000;
    if (!v34 && (OUTLINED_FUNCTION_0_18() & 1) == 0)
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_13_9();
      v38 = v37;
      *v37 = v6;
      v37[1] = v4;
      v37[5] = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v38 + 2);
      sub_19356B5CC(v43, boxed_opaque_existential_1Tm, type metadata accessor for IntelligenceFlowResponseGeneration.Metadata);
      *(v38 + 48) = 1;
      swift_willThrow();

      goto LABEL_12;
    }

    v35 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0);
    sub_193448758(v43 + *(v35 + 24), v14, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v14, 1, v16);
    if (!v26)
    {
      OUTLINED_FUNCTION_1_38();
      sub_19356A000(v14, v22, v36);
      sub_193494798(v16, &off_1F07C3F90, v41);
      OUTLINED_FUNCTION_0_39();
      v31 = v22;
      goto LABEL_11;
    }

    v27 = v14;
  }

  sub_19344E6DC(v27, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_10:
  v28 = v41;
  *v41 = 0u;
  *(v28 + 1) = 0u;
LABEL_12:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19356A000(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

void sub_19356A074()
{
  OUTLINED_FUNCTION_25_17();
  v5 = v4;
  v6 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v10 = *v0;
  OUTLINED_FUNCTION_38();
  v12 = v2 == 0xD000000000000010 && v11 == v1;
  if (!v12 && (OUTLINED_FUNCTION_10_26() & 1) == 0)
  {
    OUTLINED_FUNCTION_24_3();
    v15 = v12 && v1 == 0xE500000000000000;
    if (!v15 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
    {
      OUTLINED_FUNCTION_22_16();
      if (v12 && v1 == 0xE600000000000000)
      {
        OUTLINED_FUNCTION_42_10();
        if (!v12)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if ((OUTLINED_FUNCTION_5_5() & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_14_8();
        if (!v12)
        {
          goto LABEL_26;
        }
      }

      OUTLINED_FUNCTION_2_35();
      v13 = &type metadata for IntelligenceFlowResponseGeneration.RequestFailed;
      v14 = &off_1F07CC018;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_43_3();
    if (v12)
    {
      swift_projectBox();
      OUTLINED_FUNCTION_23_23();
      sub_19356B5CC(v16, v3, v17);
      sub_193494798(v6, &off_1F07CC008, v5);
      sub_19356A24C(v3, type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded);
      goto LABEL_27;
    }

LABEL_26:
    sub_19349AB64();
    v19 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_64(v19, v20);
    OUTLINED_FUNCTION_19_1(v21, &type metadata for IntelligenceFlowResponseGeneration.RequestContext);

    goto LABEL_27;
  }

  if (v10 >> 62)
  {
    goto LABEL_26;
  }

  v22 = *(v10 + 16);
  v13 = &type metadata for IntelligenceFlowResponseGeneration.RequestStarted;
  v14 = &off_1F07CBFF8;
LABEL_8:
  sub_193494798(v13, v14, v5);
LABEL_27:
  OUTLINED_FUNCTION_72_0();
}

uint64_t sub_19356A24C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

int *sub_19356A2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v49 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v8 = OUTLINED_FUNCTION_47(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_83_1();
  v16 = OUTLINED_FUNCTION_4_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v49 - v23;
  v25 = a1 == 0x64496B6E696CLL && a2 == 0xE600000000000000;
  if (v25 || (OUTLINED_FUNCTION_67() & 1) != 0)
  {
    sub_193448758(v3, v4, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v4, 1, v15);
    if (!v25)
    {
      OUTLINED_FUNCTION_1_38();
      sub_19356A000(v4, v24, v29);
      sub_193494798(v15, &off_1F07C3F90, v49);
      OUTLINED_FUNCTION_0_39();
      v31 = v24;
      return sub_19356A24C(v31, v30);
    }

    v26 = v4;
LABEL_9:
    result = sub_19344E6DC(v26, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_10:
    v28 = v49;
    *v49 = 0u;
    *(v28 + 1) = 0u;
    return result;
  }

  v32 = a1 == 0x65736E6F70736572 && a2 == 0xEE00656372756F53;
  if (v32 || (OUTLINED_FUNCTION_67() & 1) != 0)
  {
    result = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
    v33 = v3 + result[5];
    if (*(v33 + 9))
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  v35 = a1 == OUTLINED_FUNCTION_29_15() && a2 == v34;
  if (v35 || (OUTLINED_FUNCTION_67() & 1) != 0)
  {
    result = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
    v36 = result[6];
LABEL_25:
    v37 = (v3 + v36);
    if (v37[1])
    {
      goto LABEL_10;
    }

    v50 = *v37;
    return sub_1934948FC();
  }

  v39 = a1 == OUTLINED_FUNCTION_45_12() && a2 == v38;
  if (v39 || (OUTLINED_FUNCTION_67() & 1) != 0)
  {
    result = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
    v36 = result[7];
    goto LABEL_25;
  }

  v41 = a1 == OUTLINED_FUNCTION_80_1() && a2 == v40;
  if (v41 || (OUTLINED_FUNCTION_67() & 1) != 0)
  {
    result = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
    v33 = v3 + result[8];
    if (*(v33 + 9))
    {
      goto LABEL_10;
    }

LABEL_18:
    OUTLINED_FUNCTION_43_1(v33);
    return sub_1934948FC();
  }

  v42 = a1 == 0xD000000000000011 && 0x8000000193A197E0 == a2;
  if (v42 || (OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_67() & 1) != 0))
  {
    v43 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
    sub_193448758(v3 + *(v43 + 36), v13, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v13, 1, v15);
    if (!v25)
    {
      OUTLINED_FUNCTION_1_38();
      sub_19356A000(v13, v21, v44);
      sub_193494798(v15, &off_1F07C3F90, v49);
      OUTLINED_FUNCTION_0_39();
      v31 = v21;
      return sub_19356A24C(v31, v30);
    }

    v26 = v13;
    goto LABEL_9;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v46 = v45;
  *v45 = a1;
  v45[1] = a2;
  v45[5] = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
  __swift_allocate_boxed_opaque_existential_1Tm(v46 + 2);
  OUTLINED_FUNCTION_23_23();
  sub_19356B5CC(v3, v47, v48);
  *(v46 + 48) = 1;
  swift_willThrow();
}

void sub_19356A6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0x6E6F73616572;
  v11 = *v8;
  v12 = *(v8 + 8);
  v13 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
  if (v13 || (v15 = v8[3], v34 = v8[2], v16 = *(v8 + 36), v17 = *(v8 + 8), v10 = sub_19393CA30(), (v10 & 1) != 0))
  {
    if (v12)
    {
LABEL_7:
      OUTLINED_FUNCTION_35();
      return;
    }

    OUTLINED_FUNCTION_77_2(v10, &type metadata for IntelligenceFlowResponseGeneration.FatalError, a3, a4, a5, a6, a7, a8, v33, v11);
    sub_1934948FC();
  }

  else
  {
    v18 = v17 | (v16 << 32);
    v19 = OUTLINED_FUNCTION_97() & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
    v25 = a1 == v19 && a2 == 0xE500000000000000;
    if (v25 || (v19 = sub_19393CA30(), (v19 & 1) != 0))
    {
      if (v15 == 1)
      {
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_77_2(v19, &type metadata for IntelligenceFlowResponseGeneration.RGError, &off_1F07CC1F8, v20, v21, v22, v23, v24, v33, v34);
      sub_193494798(v26, v27, v28);
    }

    else
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_13_9();
      v29 = v18;
      v31 = v30;
      *v30 = a1;
      v30[1] = a2;
      v30[5] = &type metadata for IntelligenceFlowResponseGeneration.RequestFailed;
      v32 = swift_allocObject();
      v31[2] = v32;
      *(v32 + 16) = v11;
      *(v32 + 24) = v12;
      *(v32 + 32) = v34;
      *(v32 + 40) = v15;
      *(v32 + 48) = v29;
      *(v32 + 52) = BYTE4(v29);
      OUTLINED_FUNCTION_26_0();

      sub_19350CB08(v34, v15);
    }
  }
}

void sub_19356A8BC(uint64_t a1, uint64_t a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_1();
  v11 = type metadata accessor for AIML.UUID();
  v12 = OUTLINED_FUNCTION_4_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_59_3();
  v15 = a1 == 0x64496B6E696CLL && a2 == 0xE600000000000000;
  if (!v15 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
  {
    v22 = a1 == OUTLINED_FUNCTION_31_16() && a2 == v21;
    if (v22 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v23 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0) + 20);
    }

    else
    {
      v25 = a1 == OUTLINED_FUNCTION_37_10() && a2 == v24;
      if (v25 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        v23 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0) + 24);
      }

      else
      {
        v26 = a1 == 0x6449746163 && a2 == 0xE500000000000000;
        if (v26 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
        {
          v23 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0) + 28);
        }

        else
        {
          v28 = a1 == OUTLINED_FUNCTION_28_12() && a2 == v27;
          if (!v28 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
          {
            sub_19349AB64();
            OUTLINED_FUNCTION_13_9();
            v30 = v29;
            *v29 = a1;
            v29[1] = a2;
            v29[5] = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
            boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v30 + 2);
            sub_19356B5CC(v2, boxed_opaque_existential_1Tm, type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1);
            OUTLINED_FUNCTION_65_1();

            goto LABEL_18;
          }

          v23 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0) + 32);
        }
      }
    }

    if (*(v2 + v23 + 8))
    {
      v32 = *(v2 + v23);
      sub_1934948FC();
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  sub_193448758(v2, v3, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v3, 1, v11);
  if (v15)
  {
    sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_9:
    OUTLINED_FUNCTION_104();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_1_38();
  sub_19356A000(v3, v4, v16);
  OUTLINED_FUNCTION_19_3();
  sub_193494798(v17, v18, v19);
  OUTLINED_FUNCTION_0_39();
  sub_19356A24C(v4, v20);
LABEL_18:
  OUTLINED_FUNCTION_72_0();
}

id sub_19356AB80()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_22_4();
  v3 = v3 && v2 == v1;
  if (v3 || (OUTLINED_FUNCTION_10_26() & 1) != 0)
  {
    if (!(v0 >> 62))
    {
      OUTLINED_FUNCTION_24_16();
      v10 = &type metadata for IntelligenceFlowResponseGeneration.OverrideStarted;
      v11 = &off_1F07CC048;
LABEL_8:
      OUTLINED_FUNCTION_77_2(v4, v10, v11, v5, v6, v7, v8, v9, v27, v28);
      return sub_193494798(v12, v13, v14);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_3();
    v16 = v3 && v1 == 0xE500000000000000;
    if (!v16 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
    {
      OUTLINED_FUNCTION_22_16();
      if (v3 && v1 == 0xE600000000000000)
      {
        OUTLINED_FUNCTION_42_10();
        if (!v3)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if ((OUTLINED_FUNCTION_5_5() & 1) == 0)
        {
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_14_8();
        if (!v3)
        {
          goto LABEL_27;
        }
      }

      OUTLINED_FUNCTION_2_35();
      OUTLINED_FUNCTION_11_20();
      v10 = &type metadata for IntelligenceFlowResponseGeneration.OverrideFailed;
      v11 = &off_1F07CC068;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_43_3();
    if (v3)
    {
      v29 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v30 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x19);
      v31 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      OUTLINED_FUNCTION_77_2(v17, &type metadata for IntelligenceFlowResponseGeneration.OverrideEnded, &off_1F07CC058, v18, v19, v20, v21, v22, v27, *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10));
      return sub_193494798(v12, v13, v14);
    }
  }

LABEL_27:
  sub_19349AB64();
  v24 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_64(v24, v25);
  OUTLINED_FUNCTION_19_1(v26, &type metadata for IntelligenceFlowResponseGeneration.OverrideContext);
}

void sub_19356AD10()
{
  OUTLINED_FUNCTION_62_3();
  v3 = v2;
  v4 = *v0;
  v5 = *(v0 + 8);
  v6 = *(v0 + 9);
  if (v1 != 0x656469727265766FLL || v2 != 0xEC00000065707954)
  {
    v8 = v1;
    v9 = v0[2];
    v10 = v0[3];
    v15 = v9;
    if ((OUTLINED_FUNCTION_55_4() & 1) == 0)
    {
      v11 = v8 == 0x656469727265766FLL && v3 == 0xEA00000000006449;
      if (!v11 && (OUTLINED_FUNCTION_55_4() & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_13_9();
        v13 = v12;
        *v12 = v8;
        v12[1] = v3;
        v12[5] = &type metadata for IntelligenceFlowResponseGeneration.OverrideEnded;
        OUTLINED_FUNCTION_95();
        v14 = swift_allocObject();
        v13[2] = v14;
        *(v14 + 16) = v4;
        *(v14 + 24) = v5;
        *(v14 + 25) = v6;
        *(v14 + 32) = v15;
        *(v14 + 40) = v10;
        *(v13 + 48) = 1;
        swift_willThrow();

        goto LABEL_16;
      }

      if (!v10)
      {
        goto LABEL_7;
      }

LABEL_15:
      OUTLINED_FUNCTION_118_0();
      goto LABEL_16;
    }
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  OUTLINED_FUNCTION_29();
LABEL_16:
  OUTLINED_FUNCTION_54_0();
}

id sub_19356AEB4()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_22_4();
  v3 = v3 && v2 == v1;
  if (v3 || (OUTLINED_FUNCTION_10_26() & 1) != 0)
  {
    if (!(v0 >> 62))
    {
      OUTLINED_FUNCTION_24_16();
      v10 = &type metadata for IntelligenceFlowResponseGeneration.ValidationStarted;
      v11 = &off_1F07CC088;
LABEL_8:
      OUTLINED_FUNCTION_77_2(v4, v10, v11, v5, v6, v7, v8, v9, v21, v22);
      return sub_193494798(v12, v13, v14);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_3();
    v16 = v3 && v1 == 0xE500000000000000;
    if (!v16 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
    {
      OUTLINED_FUNCTION_22_16();
      if (v3 && v1 == 0xE600000000000000)
      {
        OUTLINED_FUNCTION_42_10();
        if (!v3)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if ((OUTLINED_FUNCTION_5_5() & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_14_8();
        if (!v3)
        {
          goto LABEL_26;
        }
      }

      OUTLINED_FUNCTION_2_35();
      OUTLINED_FUNCTION_11_20();
      v10 = &type metadata for IntelligenceFlowResponseGeneration.ValidationFailed;
      v11 = &off_1F07CC0A8;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_43_3();
    if (v3)
    {
      OUTLINED_FUNCTION_53_11();
      v10 = &type metadata for IntelligenceFlowResponseGeneration.ValidationEnded;
      v11 = &off_1F07CC098;
      goto LABEL_8;
    }
  }

LABEL_26:
  sub_19349AB64();
  v18 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_64(v18, v19);
  OUTLINED_FUNCTION_19_1(v20, &type metadata for IntelligenceFlowResponseGeneration.ValidationContext);
}

void sub_19356B06C()
{
  OUTLINED_FUNCTION_46_12();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_76_0();
  v11 = type metadata accessor for AIML.UUID();
  v12 = OUTLINED_FUNCTION_4_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_38();
  v17 = v4 == v6 && v16 == v2;
  if (v17 || (v15 = OUTLINED_FUNCTION_0_18(), (v15 & 1) != 0))
  {
    v34 = *v0;
    v18 = &type metadata for IntelligenceFlowResponseGeneration.CacheManagerCallStarted;
    v19 = &off_1F07CC0C8;
LABEL_7:
    OUTLINED_FUNCTION_85_10(v15, v18, v19);
    goto LABEL_8;
  }

  v15 = OUTLINED_FUNCTION_66_0();
  v20 = v17 && v2 == 0xE500000000000000;
  if (v20 || (v15 = OUTLINED_FUNCTION_0_18(), (v15 & 1) != 0))
  {
    v35 = v0[1];
    v18 = &type metadata for IntelligenceFlowResponseGeneration.CacheManagerCallEnded;
    v19 = &off_1F07CC0D8;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_79_2();
  v21 = v17 && v2 == 0xE600000000000000;
  if (v21 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    v22 = OUTLINED_FUNCTION_27_14();
    OUTLINED_FUNCTION_85_10(v22, &type metadata for IntelligenceFlowResponseGeneration.CacheManagerCallFailed, &off_1F07CC0E8);
    OUTLINED_FUNCTION_82_8();
  }

  else
  {
    OUTLINED_FUNCTION_60_2();
    v23 = v17 && v2 == 0xE700000000000000;
    if (v23 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
    {
      v24 = type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext(0);
      sub_193448758(&v0[*(v24 + 28)], v3, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_6_3(v3, 1, v11);
      if (v17)
      {
        sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
        OUTLINED_FUNCTION_104();
      }

      else
      {
        OUTLINED_FUNCTION_1_38();
        sub_19356A000(v3, v5, v25);
        OUTLINED_FUNCTION_19_3();
        sub_193494798(v26, v27, v28);
        OUTLINED_FUNCTION_0_39();
        sub_19356A24C(v5, v29);
      }
    }

    else
    {
      sub_19349AB64();
      v30 = OUTLINED_FUNCTION_13_9();
      v32 = OUTLINED_FUNCTION_75_2(v30, v31);
      *(v1 + 40) = type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext(v32);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v1 + 16));
      sub_19356B5CC(v0, boxed_opaque_existential_1Tm, type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext);
      OUTLINED_FUNCTION_65_1();
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_72_0();
}

void sub_19356B35C()
{
  OUTLINED_FUNCTION_46_12();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_76_0();
  v11 = type metadata accessor for AIML.UUID();
  v12 = OUTLINED_FUNCTION_4_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_59_3();
  OUTLINED_FUNCTION_38();
  v17 = v4 == v6 && v16 == v2;
  if (v17 || (v15 = OUTLINED_FUNCTION_0_18(), (v15 & 1) != 0))
  {
    v34 = *v0;
    v18 = &type metadata for IntelligenceFlowResponseGeneration.GMSCallStarted;
    v19 = &off_1F07CC108;
LABEL_7:
    OUTLINED_FUNCTION_85_10(v15, v18, v19);
    goto LABEL_8;
  }

  v15 = OUTLINED_FUNCTION_66_0();
  v20 = v17 && v2 == 0xE500000000000000;
  if (v20 || (v15 = OUTLINED_FUNCTION_0_18(), (v15 & 1) != 0))
  {
    v35 = v0[1];
    v18 = &type metadata for IntelligenceFlowResponseGeneration.GMSCallEnded;
    v19 = &off_1F07CC118;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_79_2();
  v21 = v17 && v2 == 0xE600000000000000;
  if (v21 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    v22 = OUTLINED_FUNCTION_27_14();
    OUTLINED_FUNCTION_85_10(v22, &type metadata for IntelligenceFlowResponseGeneration.GMSCallFailed, &off_1F07CC128);
    OUTLINED_FUNCTION_82_8();
  }

  else
  {
    OUTLINED_FUNCTION_60_2();
    v23 = v17 && v2 == 0xE700000000000000;
    if (v23 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
    {
      v24 = type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext(0);
      sub_193448758(&v0[*(v24 + 28)], v3, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_6_3(v3, 1, v11);
      if (v17)
      {
        sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
        OUTLINED_FUNCTION_104();
      }

      else
      {
        OUTLINED_FUNCTION_1_38();
        sub_19356A000(v3, v5, v25);
        OUTLINED_FUNCTION_19_3();
        sub_193494798(v26, v27, v28);
        OUTLINED_FUNCTION_0_39();
        sub_19356A24C(v5, v29);
      }
    }

    else
    {
      sub_19349AB64();
      v30 = OUTLINED_FUNCTION_13_9();
      v32 = OUTLINED_FUNCTION_75_2(v30, v31);
      *(v1 + 40) = type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext(v32);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v1 + 16));
      sub_19356B5CC(v0, boxed_opaque_existential_1Tm, type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext);
      OUTLINED_FUNCTION_65_1();
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_72_0();
}

uint64_t sub_19356B5CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

id sub_19356B6A8()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_22_4();
  v3 = v3 && v2 == v1;
  if (v3 || (OUTLINED_FUNCTION_10_26() & 1) != 0)
  {
    if (!(v0 >> 62))
    {
      OUTLINED_FUNCTION_24_16();
      v10 = &type metadata for IntelligenceFlowResponseGeneration.CatalogStarted;
      v11 = &off_1F07CC148;
LABEL_8:
      OUTLINED_FUNCTION_77_2(v4, v10, v11, v5, v6, v7, v8, v9, v21, v22);
      return sub_193494798(v12, v13, v14);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_3();
    v16 = v3 && v1 == 0xE500000000000000;
    if (!v16 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
    {
      OUTLINED_FUNCTION_22_16();
      if (v3 && v1 == 0xE600000000000000)
      {
        OUTLINED_FUNCTION_42_10();
        if (!v3)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if ((OUTLINED_FUNCTION_5_5() & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_14_8();
        if (!v3)
        {
          goto LABEL_26;
        }
      }

      OUTLINED_FUNCTION_2_35();
      OUTLINED_FUNCTION_11_20();
      v10 = &type metadata for IntelligenceFlowResponseGeneration.CatalogFailed;
      v11 = &off_1F07CC168;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_43_3();
    if (v3)
    {
      OUTLINED_FUNCTION_53_11();
      v10 = &type metadata for IntelligenceFlowResponseGeneration.CatalogEnded;
      v11 = &off_1F07CC158;
      goto LABEL_8;
    }
  }

LABEL_26:
  sub_19349AB64();
  v18 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_64(v18, v19);
  OUTLINED_FUNCTION_19_1(v20, &type metadata for IntelligenceFlowResponseGeneration.CatalogContext);
}

void sub_19356B7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = a1 == 0x737473697865 && a2 == 0xE600000000000000;
  if (v6 || (v10 = *(v3 + 1), v9 = *(v3 + 2), (OUTLINED_FUNCTION_44_0() & 1) != 0))
  {
    if (v5 == 2)
    {
LABEL_7:
      OUTLINED_FUNCTION_104();
      return;
    }

    goto LABEL_15;
  }

  v11 = a1 == 0x7265567465737361 && a2 == 0xEC0000006E6F6973;
  if (v11 || (OUTLINED_FUNCTION_44_0() & 1) != 0)
  {
    if (!v9)
    {
      goto LABEL_7;
    }

LABEL_15:
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  v12 = OUTLINED_FUNCTION_13_9();
  *v13 = a1;
  *(v13 + 8) = a2;
  *(v13 + 32) = v9;
  *(v13 + 40) = a3;
  *(v13 + 16) = v5;
  *(v13 + 24) = v10;
  OUTLINED_FUNCTION_23_2(v12, v13);
}

id sub_19356B994()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_22_4();
  v4 = v4 && v3 == v1;
  if (v4 || (OUTLINED_FUNCTION_10_26() & 1) != 0)
  {
    if (!(v0 >> 62))
    {
      memcpy(__dst, (v0 + 16), sizeof(__dst));
      memcpy(v18, __dst, sizeof(v18));
      v5 = &type metadata for IntelligenceFlowResponseGeneration.InferenceStarted;
      v6 = &off_1F07CC188;
      return sub_193494798(v5, v6, v2);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_3();
    v7 = v4 && v1 == 0xE500000000000000;
    if (!v7 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
    {
      OUTLINED_FUNCTION_22_16();
      if (v4 && v1 == 0xE600000000000000)
      {
        OUTLINED_FUNCTION_42_10();
        if (!v4)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if ((OUTLINED_FUNCTION_5_5() & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_14_8();
        if (!v4)
        {
          goto LABEL_26;
        }
      }

      v9 = OUTLINED_FUNCTION_2_35();
      *&__dst[0] = v10;
      BYTE8(__dst[0]) = v11;
      __dst[1] = v9;
      BYTE4(__dst[2]) = v12;
      LODWORD(__dst[2]) = v13;
      v5 = &type metadata for IntelligenceFlowResponseGeneration.InferenceFailed;
      v6 = &off_1F07CC1A8;
      return sub_193494798(v5, v6, v2);
    }

    OUTLINED_FUNCTION_43_3();
    if (v4)
    {
      LOBYTE(__dst[0]) = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v5 = &type metadata for IntelligenceFlowResponseGeneration.InferenceEnded;
      v6 = &off_1F07CC198;
      return sub_193494798(v5, v6, v2);
    }
  }

LABEL_26:
  sub_19349AB64();
  v15 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_64(v15, v16);
  OUTLINED_FUNCTION_19_1(v17, &type metadata for IntelligenceFlowResponseGeneration.InferenceContext);
}

uint64_t sub_19356BB20()
{
  OUTLINED_FUNCTION_25_17();
  v3 = v2;
  result = memcpy(__dst, v4, sizeof(__dst));
  v6 = v1 == 0x7265566C65646F6DLL && v0 == 0xEC0000006E6F6973;
  if (v6 || (result = OUTLINED_FUNCTION_5_5(), (result & 1) != 0))
  {
    v7 = __dst[4];
    if (__dst[4] == 1)
    {
LABEL_7:
      *v3 = 0u;
      *(v3 + 16) = 0u;
      return result;
    }

    v14 = __dst[0];
    v15 = BYTE4(__dst[0]) & 1;
    v16 = __dst[1];
    v17 = BYTE4(__dst[1]) & 1;
    v18 = __dst[2];
    v19 = BYTE4(__dst[2]) & 1;
    v20 = __dst[3];
    goto LABEL_9;
  }

  result = OUTLINED_FUNCTION_32_16();
  v9 = v1 == result && v0 == v8;
  if (v9 || (result = OUTLINED_FUNCTION_5_5(), (result & 1) != 0))
  {
    v7 = __dst[9];
    if (__dst[9] == 1)
    {
      goto LABEL_7;
    }

    v14 = __dst[5];
    v15 = BYTE4(__dst[5]) & 1;
    v16 = __dst[6];
    v17 = BYTE4(__dst[6]) & 1;
    v18 = __dst[7];
    v19 = BYTE4(__dst[7]) & 1;
    v20 = __dst[8];
LABEL_9:
    v21 = v7;
    return sub_193494798(&type metadata for AIML.Version, &off_1F07C3FA0, v3);
  }

  sub_19349AB64();
  v10 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_9_3(v10, v11);
  *(v12 + 40) = &type metadata for IntelligenceFlowResponseGeneration.InferenceStarted;
  v13 = swift_allocObject();
  *(v3 + 16) = v13;
  memcpy((v13 + 16), __dst, 0x50uLL);
  OUTLINED_FUNCTION_26_0();

  return sub_19356BD0C(__dst, &v14);
}

id sub_19356BDC8()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_22_4();
  v9 = v9 && v3 == v1;
  if (v9 || (v2 = OUTLINED_FUNCTION_10_26(), (v2 & 1) != 0))
  {
    if (!(v0 >> 62))
    {
      v22 = *(v0 + 16);
      v10 = &type metadata for IntelligenceFlowResponseGeneration.HallucinationDetectionStarted;
      v11 = &off_1F07CC1C8;
LABEL_8:
      OUTLINED_FUNCTION_77_2(v2, v10, v11, v4, v5, v6, v7, v8, v21, v22);
      return sub_193494798(v12, v13, v14);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_3();
    v16 = v9 && v1 == 0xE500000000000000;
    if (!v16 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
    {
      OUTLINED_FUNCTION_22_16();
      if (v9 && v1 == 0xE600000000000000)
      {
        OUTLINED_FUNCTION_42_10();
        if (!v9)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if ((OUTLINED_FUNCTION_5_5() & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_14_8();
        if (!v9)
        {
          goto LABEL_26;
        }
      }

      OUTLINED_FUNCTION_2_35();
      OUTLINED_FUNCTION_11_20();
      v10 = &type metadata for IntelligenceFlowResponseGeneration.HallucinationDetectionFailed;
      v11 = &off_1F07CC1E8;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_43_3();
    if (v9)
    {
      OUTLINED_FUNCTION_53_11();
      v10 = &type metadata for IntelligenceFlowResponseGeneration.HallucinationDetectionEnded;
      v11 = &off_1F07CC1D8;
      goto LABEL_8;
    }
  }

LABEL_26:
  sub_19349AB64();
  v18 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_64(v18, v19);
  OUTLINED_FUNCTION_19_1(v20, &type metadata for IntelligenceFlowResponseGeneration.HallucinationDetectionContext);
}

void sub_19356BF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = a1 == 0x737473697865 && a2 == 0xE600000000000000;
  if (v6 || (sub_19393CA30() & 1) != 0)
  {
    if (v5 == 2)
    {
      OUTLINED_FUNCTION_35();
    }

    else
    {
      sub_1934948FC();
    }
  }

  else
  {
    sub_19349AB64();
    v9 = OUTLINED_FUNCTION_13_9();
    *v10 = a1;
    *(v10 + 8) = a2;
    *(v10 + 40) = a3;
    *(v10 + 16) = v5;
    OUTLINED_FUNCTION_23_2(v9, v10);
  }
}

void sub_19356C044(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *v4;
  v8 = *(v4 + 8);
  v9 = a1 == 0x7272456C61746166 && a2 == 0xEA0000000000726FLL;
  if (v9 || (v19 = v4[2], v20 = v4[3], v12 = *(v4 + 36), v13 = *(v4 + 8), (sub_19393CA30() & 1) != 0))
  {
    if (v8)
    {
LABEL_7:
      OUTLINED_FUNCTION_35();
      return;
    }

    sub_1934948FC();
  }

  else
  {
    v14 = v13 | (v12 << 32);
    v15 = a1 == (OUTLINED_FUNCTION_97() & 0xFFFF0000FFFFFFFFLL | 0x7200000000) && a2 == 0xE500000000000000;
    if (v15 || (sub_19393CA30() & 1) != 0)
    {
      if (v20 == 1)
      {
        goto LABEL_7;
      }

      sub_193494798(&type metadata for IntelligenceFlowResponseGeneration.RGError, &off_1F07CC1F8, a4);
    }

    else
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_13_9();
      v17 = v16;
      *v16 = a1;
      v16[1] = a2;
      v16[5] = a3;
      v18 = swift_allocObject();
      v17[2] = v18;
      *(v18 + 16) = v7;
      *(v18 + 24) = v8;
      *(v18 + 32) = v19;
      *(v18 + 40) = v20;
      *(v18 + 48) = v14;
      *(v18 + 52) = BYTE4(v14);
      *(v17 + 48) = 1;
      swift_willThrow();

      sub_19350CB08(v19, v20);
    }
  }
}

uint64_t objectdestroyTm_0()
{
  if (*(v0 + 40) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 53, 7);
}

void sub_19356C278(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_97();
  v8 = *v2;
  v7 = v2[1];
  v9 = a1 == (v5 | 0x6D6F447200000000) && a2 == v6;
  if (v9 || (v10 = *(v2 + 4), v11 = *(v2 + 20), (OUTLINED_FUNCTION_31_3() & 1) != 0))
  {
    if (v7)
    {
LABEL_7:
      OUTLINED_FUNCTION_118_0();
      return;
    }

    goto LABEL_14;
  }

  v13 = a1 == (OUTLINED_FUNCTION_97() | 0x646F437200000000) && a2 == v12;
  if (v13 || (OUTLINED_FUNCTION_31_3() & 1) != 0)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    OUTLINED_FUNCTION_29();
    return;
  }

  sub_19349AB64();
  v14 = OUTLINED_FUNCTION_13_9();
  *v15 = a1;
  *(v15 + 8) = a2;
  *(v15 + 40) = &type metadata for IntelligenceFlowResponseGeneration.RGError;
  *(v15 + 16) = v8;
  *(v15 + 24) = v7;
  *(v15 + 32) = v10;
  *(v15 + 36) = v11;
  OUTLINED_FUNCTION_23_2(v14, v15);
}

id sub_19356C3CC()
{
  v3 = v0;
  OUTLINED_FUNCTION_25_17();
  v5 = v4;
  memcpy(__dst, v3, 0x61uLL);
  v6 = v2 == 0x69746172656E6567 && v1 == 0xEA00000000006E6FLL;
  if (v6 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (LOBYTE(__dst[6]))
    {
LABEL_7:
      sub_19349AB64();
      v7 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_9_3(v7, v8);
      *(v9 + 40) = &type metadata for IntelligenceFlowResponseGeneration.Event;
      v10 = swift_allocObject();
      v5[2] = v10;
      memcpy((v10 + 16), __dst, 0x61uLL);
      OUTLINED_FUNCTION_26_0();

      return sub_19356C6FC(__dst, v18);
    }

    memcpy(v18, v3, 0x60uLL);
    v12 = &type metadata for IntelligenceFlowResponseGeneration.Event.Generation;
    v13 = &off_1F07CC218;
  }

  else
  {
    v14 = v2 == OUTLINED_FUNCTION_80_1() && v1 == 0xE800000000000000;
    if (v14 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
    {
      if (LOBYTE(__dst[6]) != 1)
      {
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_38_12();
      v12 = &type metadata for IntelligenceFlowResponseGeneration.Event.Fallback;
      v13 = &off_1F07CC228;
    }

    else
    {
      v15 = v2 == OUTLINED_FUNCTION_68_7() && v1 == 0xE800000000000000;
      if (v15 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
      {
        if (LOBYTE(__dst[6]) != 2)
        {
          goto LABEL_7;
        }

        OUTLINED_FUNCTION_38_12();
        v18[1] = __dst[1];
        v12 = &type metadata for IntelligenceFlowResponseGeneration.Event.Override;
        v13 = &off_1F07CC238;
      }

      else
      {
        v16 = v2 == 0x666E496C65646F6DLL && v1 == 0xEE0065636E657265;
        if (v16 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
        {
          if (LOBYTE(__dst[6]) != 3)
          {
            goto LABEL_7;
          }

          v18[0] = __dst[0];
          v18[1] = __dst[1];
          v12 = &type metadata for IntelligenceFlowResponseGeneration.Event.ModelInference;
          v13 = &off_1F07CC248;
        }

        else
        {
          v17 = v2 == 0x6843797465666173 && v1 == 0xEB000000006B6365;
          if (!v17 && (OUTLINED_FUNCTION_5_5() & 1) == 0 || LOBYTE(__dst[6]) != 4)
          {
            goto LABEL_7;
          }

          v18[0] = __dst[0];
          LOBYTE(v18[1]) = __dst[1];
          *(&v18[1] + 8) = *(&__dst[1] + 8);
          v12 = &type metadata for IntelligenceFlowResponseGeneration.Event.SafetyCheck;
          v13 = &off_1F07CC258;
        }
      }
    }
  }

  return sub_193494798(v12, v13, v5);
}

uint64_t sub_19356C654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  switch(a13)
  {
    case 0:

      goto LABEL_3;
    case 2:
      goto LABEL_4;
    case 3:
    case 4:
LABEL_3:

LABEL_4:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_19356C770()
{
  OUTLINED_FUNCTION_25_17();
  v3 = v2;
  result = memcpy(__dst, v4, sizeof(__dst));
  v6 = v1 == 0x656372756F73 && v0 == 0xE600000000000000;
  if (v6 || (result = OUTLINED_FUNCTION_5_5(), (result & 1) != 0))
  {
    if ((__dst[1] & 0x100) != 0)
    {
LABEL_7:
      *v3 = 0u;
      v3[1] = 0u;
      return result;
    }

    v25 = __dst[0];
    LOBYTE(v26) = __dst[1] & 1;
    return sub_1934948FC();
  }

  result = OUTLINED_FUNCTION_29_15();
  v8 = v1 == result && v0 == v7;
  if (v8 || (result = OUTLINED_FUNCTION_5_5(), (result & 1) != 0))
  {
    if (__dst[2])
    {
      goto LABEL_7;
    }

    v9 = HIDWORD(__dst[1]);
    goto LABEL_16;
  }

  result = OUTLINED_FUNCTION_45_12();
  v11 = v1 == result && v0 == v10;
  if (v11 || (result = OUTLINED_FUNCTION_5_5(), (result & 1) != 0))
  {
    if (__dst[3])
    {
      goto LABEL_7;
    }

    v9 = HIDWORD(__dst[2]);
LABEL_16:
    LODWORD(v25) = v9;
    return sub_1934948FC();
  }

  result = OUTLINED_FUNCTION_31_16();
  v13 = v1 == result && v0 == v12;
  if (v13 || (result = OUTLINED_FUNCTION_5_5(), (result & 1) != 0))
  {
    v14 = __dst[5];
    if (!__dst[5])
    {
      goto LABEL_7;
    }

    v15 = __dst[4];
  }

  else
  {
    result = OUTLINED_FUNCTION_37_10();
    v17 = v1 == result && v0 == v16;
    if (v17 || (result = OUTLINED_FUNCTION_5_5(), (result & 1) != 0))
    {
      v14 = __dst[7];
      if (!__dst[7])
      {
        goto LABEL_7;
      }

      v15 = __dst[6];
    }

    else
    {
      result = 0x6449746163;
      v18 = v1 == 0x6449746163 && v0 == 0xE500000000000000;
      if (v18 || (result = OUTLINED_FUNCTION_5_5(), (result & 1) != 0))
      {
        v14 = __dst[9];
        if (!__dst[9])
        {
          goto LABEL_7;
        }

        v15 = __dst[8];
      }

      else
      {
        result = OUTLINED_FUNCTION_28_12();
        if (v1 != result || v0 != v19)
        {
          result = OUTLINED_FUNCTION_5_5();
          if ((result & 1) == 0)
          {
            sub_19349AB64();
            v21 = OUTLINED_FUNCTION_13_9();
            OUTLINED_FUNCTION_9_3(v21, v22);
            *(v23 + 40) = &type metadata for IntelligenceFlowResponseGeneration.Event.Generation;
            v24 = swift_allocObject();
            *(v3 + 2) = v24;
            memcpy((v24 + 16), __dst, 0x60uLL);
            OUTLINED_FUNCTION_26_0();

            return sub_19356C9B8(__dst, &v25);
          }
        }

        v14 = __dst[11];
        if (!__dst[11])
        {
          goto LABEL_7;
        }

        v15 = __dst[10];
      }
    }
  }

  v25 = v15;
  v26 = v14;
  return sub_1934948FC();
}

void sub_19356CA2C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 9);
  v7 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
  if (v7 || (OUTLINED_FUNCTION_55_4() & 1) != 0)
  {
    if (v6)
    {
      OUTLINED_FUNCTION_29();
    }

    else
    {
      OUTLINED_FUNCTION_118_0();
    }
  }

  else
  {
    sub_19349AB64();
    v9 = OUTLINED_FUNCTION_13_9();
    *v10 = a1;
    *(v10 + 8) = a2;
    *(v10 + 40) = &type metadata for IntelligenceFlowResponseGeneration.Event.Fallback;
    *(v10 + 16) = v4;
    *(v10 + 24) = v5;
    *(v10 + 25) = v6;
    OUTLINED_FUNCTION_23_2(v9, v10);
  }
}