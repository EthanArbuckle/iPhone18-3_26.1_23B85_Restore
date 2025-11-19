uint64_t sub_2296AE000()
{
  while (1)
  {
    result = sub_22A4DC2CC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          sub_2296AE16C();
          break;
        case 2:
          v5 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0) + 36);
LABEL_19:
          v0 = 0;
          sub_22A4DC32C();
          break;
        case 3:
          v3 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0) + 40);
          goto LABEL_19;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_22A4DC2EC();
      }

      else if (result == 7)
      {
        v4 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0) + 44);
        sub_22A4DC33C();
      }
    }

    else if (result == 4)
    {
      sub_22A4DC31C();
    }

    else
    {
      sub_22A4DC30C();
    }
  }
}

uint64_t sub_2296AE16C()
{
  v0 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0) + 32);
  type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  sub_2296AEAF8(&qword_27D87E030, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  return sub_22A4DC36C();
}

uint64_t sub_2296AE220()
{
  result = sub_2296AE354(v0);
  if (!v1)
  {
    sub_2296AE548(v0);
    sub_2296AE5C0(v0);
    if (*(*v0 + 16))
    {
      sub_22A4DC3FC();
    }

    if (*(v0[1] + 16))
    {
      sub_22A4DC3EC();
    }

    if (*(v0[2] + 16))
    {
      sub_22A4DC3CC();
    }

    sub_2296AE638(v0);
    v3 = v0 + *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0) + 28);
    return sub_22A4DC27C();
  }

  return result;
}

uint64_t sub_2296AE354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0);
  sub_2296AF1D0(a1 + *(v11 + 32), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_22953EAE4(v5, &qword_27D87CC38, &unk_22A5784B0);
  }

  sub_22967B128(v5, v10);
  sub_2296AEAF8(&qword_27D87E030, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  sub_22A4DC44C();
  return sub_2296B1D60(v10, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
}

uint64_t sub_2296AE548(uint64_t a1)
{
  result = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0);
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22A4DC40C();
  }

  return result;
}

uint64_t sub_2296AE5C0(uint64_t a1)
{
  result = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0);
  v3 = (a1 + *(result + 40));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22A4DC40C();
  }

  return result;
}

uint64_t sub_2296AE638(uint64_t a1)
{
  result = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0);
  v3 = (a1 + *(result + 44));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22A4DC41C();
  }

  return result;
}

uint64_t sub_2296AE6B0@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v4;
  *(a2 + 2) = v4;
  v5 = &a2[a1[7]];
  sub_22A4DC28C();
  v6 = a1[8];
  v7 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  result = (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v9 = a1[10];
  v10 = &a2[a1[9]];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &a2[v9];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &a2[a1[11]];
  *v12 = 0;
  v12[4] = 1;
  return result;
}

uint64_t sub_2296AE780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_22A4DC29C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2296AE7F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_22A4DC29C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2296AE868(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_2296AE8BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2296AEAF8(&qword_27D87EDA0, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2296AE95C(uint64_t a1)
{
  v2 = sub_2296AEAF8(&qword_27D87E768, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2296AE9C8()
{
  sub_2296AEAF8(&qword_27D87E768, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent);

  return sub_22A4DC39C();
}

uint64_t sub_2296AEAF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2296AF1D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296AF240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v21 = *(v9 + 72);
  while (1)
  {
    result = sub_2296B1DC0(v14, v11, type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct);
    if (!v12)
    {
      break;
    }

    sub_2296B1DC0(v15, v8, type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct);
    sub_22A4DC70C();
    sub_2296AEAF8(&qword_27D87EE18, MEMORY[0x277D171F8]);
    sub_22A4DD7DC();
    sub_22A4DD7DC();
    if (v23 != v22 || (v17 = *(v4 + 20), sub_22A4DD7DC(), sub_22A4DD7DC(), v23 != v22))
    {
      sub_2296B1D60(v8, type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct);
      sub_2296B1D60(v11, type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct);
      return 0;
    }

    v18 = *&v11[*(v4 + 24)];
    sub_2296B1D60(v11, type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct);
    v19 = *&v8[*(v4 + 24)];
    sub_2296B1D60(v8, type metadata accessor for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct);
    result = v18 == v19;
    v20 = v18 != v19 || v12-- == 1;
    v15 += v21;
    v14 += v21;
    if (v20)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2296AF4F4(uint64_t a1, uint64_t a2)
{
  v114[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = (a2 + 72);
      v4 = (a1 + 40);
      while (1)
      {
        v7 = *(v4 - 1);
        v8 = *v4;
        v9 = v4[1];
        v10 = v4[2];
        v11 = v4[3];
        v12 = *(v3 - 4);
        v111 = *(v3 - 5);
        v112 = v4[4];
        v13 = *(v3 - 3);
        v14 = *(v3 - 2);
        v15 = *v3;
        v110 = *(v3 - 1);
        v16 = *v4 >> 62;
        v17 = v12 >> 62;
        v108 = *v4;
        v109 = v13;
        v107 = v7;
        if (v16 == 3)
        {
          break;
        }

        if (v16 > 1)
        {
          if (v16 == 2)
          {
            v26 = *(v7 + 16);
            v25 = *(v7 + 24);
            v23 = __OFSUB__(v25, v26);
            v18 = v25 - v26;
            if (v23)
            {
              goto LABEL_165;
            }

            goto LABEL_25;
          }

          v18 = 0;
          if (v17 <= 1)
          {
            goto LABEL_26;
          }
        }

        else if (v16)
        {
          LODWORD(v18) = HIDWORD(v7) - v7;
          if (__OFSUB__(HIDWORD(v7), v7))
          {
            goto LABEL_164;
          }

          v18 = v18;
          if (v17 <= 1)
          {
LABEL_26:
            if (v17)
            {
              LODWORD(v24) = HIDWORD(v111) - v111;
              if (__OFSUB__(HIDWORD(v111), v111))
              {
                goto LABEL_159;
              }

              v24 = v24;
            }

            else
            {
              v24 = BYTE6(v12);
            }

            goto LABEL_32;
          }
        }

        else
        {
          v18 = BYTE6(v8);
          if (v17 <= 1)
          {
            goto LABEL_26;
          }
        }

LABEL_19:
        if (v17 != 2)
        {
          if (v18)
          {
            goto LABEL_157;
          }

LABEL_38:
          v29 = *(v3 - 4);
          sub_22956C148(v7, *v4);
          sub_22956C148(v9, v10);
          sub_22956C148(v11, v112);
          v19 = v111;
          v97 = v29;
          v20 = v29;
          v8 = v108;
LABEL_39:
          sub_22956C148(v19, v20);
          sub_22956C148(v13, v14);
          sub_22956C148(v110, v15);
          v28 = v97;
          goto LABEL_40;
        }

        v22 = *(v111 + 16);
        v21 = *(v111 + 24);
        v23 = __OFSUB__(v21, v22);
        v24 = v21 - v22;
        if (v23)
        {
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
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
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
        }

LABEL_32:
        if (v18 != v24)
        {
          goto LABEL_157;
        }

        if (v18 < 1)
        {
          goto LABEL_38;
        }

        v105 = *(v3 - 2);
        if (v16 > 1)
        {
          if (v16 == 2)
          {
            v103 = v2;
            v40 = *(v3 - 4);
            v41 = *(v3 - 3);
            v42 = *v4;
            v43 = *(v7 + 16);
            v98 = *(v7 + 24);
            sub_22956C148(v7, *v4);
            v89 = v10;
            sub_22956C148(v9, v10);
            v93 = v11;
            sub_22956C148(v11, v112);
            v44 = v40;
            sub_22956C148(v111, v40);
            sub_22956C148(v41, v105);
            sub_22956C148(v110, v15);
            v45 = sub_22A4DB24C();
            if (v45)
            {
              v46 = sub_22A4DB27C();
              if (__OFSUB__(v43, v46))
              {
                goto LABEL_176;
              }

              v45 += v43 - v46;
            }

            v2 = v103;
            if (__OFSUB__(v98, v43))
            {
              goto LABEL_171;
            }

            v8 = v42;
            sub_22A4DB26C();
            sub_229838464(v45, v111, v44, v114);
            v28 = v44;
            v11 = v93;
            v10 = v89;
            v13 = v109;
            v14 = v105;
            if ((v114[0] & 1) == 0)
            {
              goto LABEL_156;
            }
          }

          else
          {
            memset(v114, 0, 14);
            v58 = v8;
            v59 = v12;
            sub_22956C148(v7, v58);
            sub_22956C148(v9, v10);
            sub_22956C148(v11, v112);
            sub_22956C148(v111, v59);
            sub_22956C148(v13, v14);
            sub_22956C148(v110, v15);
            sub_229838464(v114, v111, v59, &v113);
            v28 = v59;
            v8 = v108;
            if (!v113)
            {
              goto LABEL_156;
            }
          }
        }

        else
        {
          v101 = v2;
          v88 = v4[2];
          v91 = *v3;
          if (v16)
          {
            v53 = v7;
            if (v7 >> 32 < v7)
            {
              goto LABEL_170;
            }

            v54 = *(v3 - 4);
            sub_22956C148(v7, v8);
            sub_22956C148(v9, v10);
            sub_22956C148(v11, v112);
            sub_22956C148(v111, v54);
            sub_22956C148(v109, v14);
            sub_22956C148(v110, v91);
            v55 = sub_22A4DB24C();
            if (v55)
            {
              v56 = sub_22A4DB27C();
              if (__OFSUB__(v53, v56))
              {
                goto LABEL_177;
              }

              v55 += v53 - v56;
            }

            v57 = v54;
            sub_22A4DB26C();
            sub_229838464(v55, v111, v54, v114);
            v10 = v88;
            v15 = v91;
            v28 = v57;
            v13 = v109;
            if ((v114[0] & 1) == 0)
            {
              goto LABEL_156;
            }
          }

          else
          {
            v114[0] = v7;
            LOWORD(v114[1]) = v8;
            BYTE2(v114[1]) = BYTE2(v8);
            BYTE3(v114[1]) = BYTE3(v8);
            BYTE4(v114[1]) = BYTE4(v8);
            BYTE5(v114[1]) = BYTE5(v8);
            v27 = v12;
            sub_22956C148(v7, v108);
            sub_22956C148(v9, v10);
            sub_22956C148(v11, v112);
            sub_22956C148(v111, v27);
            sub_22956C148(v13, v14);
            sub_22956C148(v110, v15);
            v8 = v108;
            sub_229838464(v114, v111, v27, &v113);
            v28 = v27;
            v2 = v101;
            if (!v113)
            {
              goto LABEL_156;
            }
          }
        }

LABEL_40:
        v30 = v10 >> 62;
        v31 = v14 >> 62;
        if (v10 >> 62 == 3)
        {
          v32 = 0;
          if (!v9 && v10 == 0xC000000000000000 && v14 >> 62 == 3)
          {
            v32 = 0;
            if (!v13 && v14 == 0xC000000000000000)
            {
              goto LABEL_108;
            }
          }

LABEL_56:
          if (v31 <= 1)
          {
            goto LABEL_57;
          }

          goto LABEL_50;
        }

        if (v30 > 1)
        {
          if (v30 == 2)
          {
            v37 = *(v9 + 16);
            v36 = *(v9 + 24);
            v23 = __OFSUB__(v36, v37);
            v32 = v36 - v37;
            if (v23)
            {
              goto LABEL_167;
            }

            goto LABEL_56;
          }

          v32 = 0;
          if (v31 <= 1)
          {
            goto LABEL_57;
          }
        }

        else if (v30)
        {
          LODWORD(v32) = HIDWORD(v9) - v9;
          if (__OFSUB__(HIDWORD(v9), v9))
          {
            goto LABEL_166;
          }

          v32 = v32;
          if (v31 <= 1)
          {
LABEL_57:
            if (v31)
            {
              LODWORD(v35) = HIDWORD(v13) - v13;
              if (__OFSUB__(HIDWORD(v13), v13))
              {
                goto LABEL_160;
              }

              v35 = v35;
            }

            else
            {
              v35 = BYTE6(v14);
            }

            goto LABEL_63;
          }
        }

        else
        {
          v32 = BYTE6(v10);
          if (v31 <= 1)
          {
            goto LABEL_57;
          }
        }

LABEL_50:
        if (v31 != 2)
        {
          if (v32)
          {
            goto LABEL_156;
          }

          goto LABEL_108;
        }

        v34 = *(v13 + 16);
        v33 = *(v13 + 24);
        v23 = __OFSUB__(v33, v34);
        v35 = v33 - v34;
        if (v23)
        {
          goto LABEL_161;
        }

LABEL_63:
        if (v32 != v35)
        {
          goto LABEL_156;
        }

        if (v32 >= 1)
        {
          v102 = v2;
          if (v30 > 1)
          {
            if (v30 == 2)
            {
              v47 = v28;
              v94 = v11;
              v48 = v10;
              v49 = *(v9 + 16);
              v50 = *(v9 + 24);
              v51 = sub_22A4DB24C();
              if (v51)
              {
                v52 = sub_22A4DB27C();
                if (__OFSUB__(v49, v52))
                {
                  goto LABEL_178;
                }

                v51 += v49 - v52;
              }

              if (__OFSUB__(v50, v49))
              {
                goto LABEL_173;
              }

              sub_22A4DB26C();
              v13 = v109;
              sub_229838464(v51, v109, v14, v114);
              v10 = v48;
              v11 = v94;
              v8 = v108;
              v28 = v47;
              v2 = v102;
              if ((v114[0] & 1) == 0)
              {
                goto LABEL_156;
              }
            }

            else
            {
              memset(v114, 0, 14);
              v64 = v14;
              v65 = v28;
              v66 = v64;
              sub_229838464(v114, v13, v64, &v113);
              v28 = v65;
              v14 = v66;
              v2 = v102;
              v13 = v109;
              if (!v113)
              {
                goto LABEL_156;
              }
            }
          }

          else if (v30)
          {
            v99 = v28;
            if (v9 >> 32 < v9)
            {
              goto LABEL_172;
            }

            v60 = v11;
            v61 = v10;
            v62 = sub_22A4DB24C();
            v95 = v60;
            if (v62)
            {
              v63 = sub_22A4DB27C();
              if (__OFSUB__(v9, v63))
              {
                goto LABEL_179;
              }

              v62 += v9 - v63;
            }

            sub_22A4DB26C();
            v13 = v109;
            sub_229838464(v62, v109, v14, v114);
            v10 = v61;
            v2 = v102;
            v11 = v95;
            v28 = v99;
            v8 = v108;
            if ((v114[0] & 1) == 0)
            {
LABEL_156:
              sub_2295798D4(v111, v28);
              sub_2295798D4(v13, v14);
              sub_2295798D4(v110, v15);
              sub_2295798D4(v107, v8);
              sub_2295798D4(v9, v10);
              sub_2295798D4(v11, v112);
              goto LABEL_157;
            }
          }

          else
          {
            v114[0] = v9;
            LOWORD(v114[1]) = v10;
            BYTE2(v114[1]) = BYTE2(v10);
            BYTE3(v114[1]) = BYTE3(v10);
            BYTE4(v114[1]) = BYTE4(v10);
            BYTE5(v114[1]) = BYTE5(v10);
            v38 = v13;
            v39 = v28;
            sub_229838464(v114, v38, v14, &v113);
            v28 = v39;
            v13 = v109;
            if (!v113)
            {
              goto LABEL_156;
            }
          }
        }

LABEL_108:
        v67 = v112 >> 62;
        v68 = v15 >> 62;
        if (v112 >> 62 == 3)
        {
          v69 = 0;
          if (!v11 && v112 == 0xC000000000000000 && v15 >> 62 == 3)
          {
            v69 = 0;
            if (!v110 && v15 == 0xC000000000000000)
            {
              sub_2295798D4(v111, v28);
              sub_2295798D4(v13, v14);
              sub_2295798D4(0, 0xC000000000000000);
              sub_2295798D4(v107, v8);
              sub_2295798D4(v9, v10);
              v5 = 0;
              v6 = 0xC000000000000000;
              goto LABEL_7;
            }
          }

LABEL_124:
          if (v68 <= 1)
          {
            goto LABEL_125;
          }

          goto LABEL_118;
        }

        if (v67 > 1)
        {
          if (v67 == 2)
          {
            v74 = *(v11 + 16);
            v73 = *(v11 + 24);
            v23 = __OFSUB__(v73, v74);
            v69 = v73 - v74;
            if (v23)
            {
              goto LABEL_168;
            }

            goto LABEL_124;
          }

          v69 = 0;
          if (v68 <= 1)
          {
            goto LABEL_125;
          }
        }

        else if (v67)
        {
          LODWORD(v69) = HIDWORD(v11) - v11;
          if (__OFSUB__(HIDWORD(v11), v11))
          {
            goto LABEL_169;
          }

          v69 = v69;
          if (v68 <= 1)
          {
LABEL_125:
            if (v68)
            {
              LODWORD(v72) = HIDWORD(v110) - v110;
              if (__OFSUB__(HIDWORD(v110), v110))
              {
                goto LABEL_162;
              }

              v72 = v72;
            }

            else
            {
              v72 = BYTE6(v15);
            }

            goto LABEL_129;
          }
        }

        else
        {
          v69 = BYTE6(v112);
          if (v68 <= 1)
          {
            goto LABEL_125;
          }
        }

LABEL_118:
        if (v68 != 2)
        {
          if (v69)
          {
            goto LABEL_156;
          }

LABEL_6:
          sub_2295798D4(v111, v28);
          sub_2295798D4(v13, v14);
          sub_2295798D4(v110, v15);
          sub_2295798D4(v107, v8);
          sub_2295798D4(v9, v10);
          v5 = v11;
          v6 = v112;
LABEL_7:
          sub_2295798D4(v5, v6);
          goto LABEL_8;
        }

        v71 = *(v110 + 16);
        v70 = *(v110 + 24);
        v23 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v23)
        {
          goto LABEL_163;
        }

LABEL_129:
        if (v69 != v72)
        {
          goto LABEL_156;
        }

        if (v69 < 1)
        {
          goto LABEL_6;
        }

        v106 = v14;
        if (v67 > 1)
        {
          if (v67 == 2)
          {
            v77 = v28;
            v92 = v9;
            v96 = v11;
            v90 = v10;
            v78 = *(v11 + 16);
            v79 = *(v11 + 24);
            v80 = v112;
            v81 = sub_22A4DB24C();
            if (v81)
            {
              v82 = sub_22A4DB27C();
              if (__OFSUB__(v78, v82))
              {
                goto LABEL_180;
              }

              v81 += v78 - v82;
            }

            if (__OFSUB__(v79, v78))
            {
              goto LABEL_175;
            }

            goto LABEL_150;
          }

          v104 = v2;
          memset(v114, 0, 14);
          v85 = v28;
          sub_229838464(v114, v110, v15, &v113);
          sub_2295798D4(v111, v85);
          sub_2295798D4(v109, v14);
          sub_2295798D4(v110, v15);
          sub_2295798D4(v107, v8);
          sub_2295798D4(v9, v10);
          v75 = v11;
          v76 = v112;
        }

        else
        {
          if (v67)
          {
            v92 = v9;
            v83 = v11;
            if (v11 >> 32 < v11)
            {
              goto LABEL_174;
            }

            v77 = v28;
            v96 = v11;
            v90 = v10;
            v80 = v112;
            v81 = sub_22A4DB24C();
            if (v81)
            {
              v84 = sub_22A4DB27C();
              if (__OFSUB__(v83, v84))
              {
                goto LABEL_181;
              }

              v81 += v83 - v84;
            }

LABEL_150:
            sub_22A4DB26C();
            sub_229838464(v81, v110, v15, v114);
            sub_2295798D4(v111, v77);
            sub_2295798D4(v109, v106);
            sub_2295798D4(v110, v15);
            sub_2295798D4(v107, v108);
            sub_2295798D4(v92, v90);
            sub_2295798D4(v96, v80);
            if ((v114[0] & 1) == 0)
            {
              goto LABEL_157;
            }

            goto LABEL_8;
          }

          v104 = v2;
          v114[0] = v11;
          LODWORD(v114[1]) = v112;
          WORD2(v114[1]) = WORD2(v112);
          v100 = v28;
          sub_229838464(v114, v110, v15, &v113);
          sub_2295798D4(v111, v100);
          sub_2295798D4(v109, v14);
          sub_2295798D4(v110, v15);
          sub_2295798D4(v107, v8);
          sub_2295798D4(v9, v10);
          v75 = v11;
          v76 = v112;
        }

        sub_2295798D4(v75, v76);
        if (!v113)
        {
          goto LABEL_157;
        }

        v2 = v104;
LABEL_8:
        v4 += 6;
        v3 += 6;
        if (!--v2)
        {
          goto LABEL_155;
        }
      }

      v18 = 0;
      if (!v7 && v8 == 0xC000000000000000 && v12 >> 62 == 3)
      {
        v18 = 0;
        if (!v111 && v12 == 0xC000000000000000)
        {
          v97 = 0xC000000000000000;
          sub_22956C148(0, 0xC000000000000000);
          sub_22956C148(v9, v10);
          sub_22956C148(v11, v112);
          v19 = 0;
          v20 = 0xC000000000000000;
          goto LABEL_39;
        }
      }

LABEL_25:
      if (v17 <= 1)
      {
        goto LABEL_26;
      }

      goto LABEL_19;
    }

LABEL_155:
    result = 1;
  }

  else
  {
LABEL_157:
    result = 0;
  }

  v87 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2296B0380(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_22A4DE60C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2296B0410(uint64_t result, uint64_t a2)
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

uint64_t sub_2296B046C(uint64_t result, uint64_t a2)
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
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2296B04C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v41 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_2296B1DC0(v14, v11, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);
        sub_2296B1DC0(v15, v8, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);
        v17 = v4[5];
        v18 = &v11[v17];
        v19 = *&v11[v17 + 8];
        v20 = &v8[v17];
        v21 = *(v20 + 1);
        if (v19)
        {
          if (!v21)
          {
            goto LABEL_39;
          }

          v22 = *v18 == *v20 && v19 == v21;
          if (!v22 && (sub_22A4DE60C() & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        else if (v21)
        {
          goto LABEL_39;
        }

        v23 = v4[6];
        v24 = &v11[v23];
        v25 = v11[v23 + 4];
        v26 = &v8[v23];
        v27 = v8[v23 + 4];
        if (v25)
        {
          if (!v27)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (*v24 != *v26)
          {
            LOBYTE(v27) = 1;
          }

          if (v27)
          {
LABEL_39:
            sub_2296B1D60(v8, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);
            sub_2296B1D60(v11, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);
            goto LABEL_40;
          }
        }

        v28 = v4[7];
        v29 = &v11[v28];
        v30 = *&v11[v28 + 8];
        v31 = &v8[v28];
        v32 = *(v31 + 1);
        if (v30)
        {
          if (!v32)
          {
            goto LABEL_39;
          }

          v33 = *v29 == *v31 && v30 == v32;
          if (!v33 && (sub_22A4DE60C() & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        else if (v32)
        {
          goto LABEL_39;
        }

        v34 = v4[8];
        v35 = &v11[v34];
        v36 = v11[v34 + 4];
        v37 = &v8[v34];
        v38 = v8[v34 + 4];
        if (v36)
        {
          if (!v38)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (*v35 != *v37)
          {
            LOBYTE(v38) = 1;
          }

          if (v38)
          {
            goto LABEL_39;
          }
        }

        sub_22A4DC29C();
        sub_2296AEAF8(&qword_27D87E078, MEMORY[0x277D216C8]);
        v39 = sub_22A4DD58C();
        sub_2296B1D60(v8, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);
        sub_2296B1D60(v11, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);
        if (v39)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v39 & 1;
      }
    }

    v39 = 1;
  }

  else
  {
LABEL_40:
    v39 = 0;
  }

  return v39 & 1;
}

uint64_t sub_2296B07F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_2296B1DC0(v14, v11, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);
        sub_2296B1DC0(v15, v8, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);
        v17 = *(v4 + 20);
        v18 = &v11[v17];
        v19 = *&v11[v17 + 8];
        v20 = &v8[v17];
        v21 = *(v20 + 1);
        if (v19)
        {
          if (!v21 || (*v18 == *v20 ? (v22 = v19 == v21) : (v22 = 0), !v22 && (sub_22A4DE60C() & 1) == 0))
          {
LABEL_18:
            sub_2296B1D60(v8, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);
            sub_2296B1D60(v11, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);
            goto LABEL_19;
          }
        }

        else if (v21)
        {
          goto LABEL_18;
        }

        sub_22A4DC29C();
        sub_2296AEAF8(&qword_27D87E078, MEMORY[0x277D216C8]);
        v23 = sub_22A4DD58C();
        sub_2296B1D60(v8, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);
        sub_2296B1D60(v11, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);
        if (v23)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v23 & 1;
      }
    }

    v23 = 1;
  }

  else
  {
LABEL_19:
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_2296B0A7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87ED88, &unk_22A57D8E0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  v18 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHomeActivityStateEvent(0);
  v19 = *(v18 + 20);
  v20 = *(v14 + 56);
  sub_2296AF1D0(a1 + v19, v17);
  sub_2296AF1D0(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) != 1)
  {
    sub_2296AF1D0(v17, v12);
    if (v21(&v17[v20], 1, v4) != 1)
    {
      sub_22967B128(&v17[v20], v8);
      v26 = *(v4 + 20);
      v27 = *&v12[v26];
      v28 = *&v8[v26];
      if (v27 == v28 || (v29 = *&v12[v26], , , v30 = sub_22961C468(v27, v28), , , v30))
      {
        sub_22A4DC29C();
        sub_2296AEAF8(&qword_27D87E078, MEMORY[0x277D216C8]);
        v31 = sub_22A4DD58C();
        sub_2296B1D60(v8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
        sub_2296B1D60(v12, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
        sub_22953EAE4(v17, &qword_27D87CC38, &unk_22A5784B0);
        if ((v31 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }

      sub_2296B1D60(v8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
      sub_2296B1D60(v12, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
      v22 = &qword_27D87CC38;
      v23 = &unk_22A5784B0;
LABEL_7:
      sub_22953EAE4(v17, v22, v23);
      goto LABEL_8;
    }

    sub_2296B1D60(v12, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
LABEL_6:
    v22 = &qword_27D87ED88;
    v23 = &unk_22A57D8E0;
    goto LABEL_7;
  }

  if (v21(&v17[v20], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_22953EAE4(v17, &qword_27D87CC38, &unk_22A5784B0);
LABEL_13:
  v32 = *(v18 + 24);
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 4);
  v35 = (a2 + v32);
  v36 = *(a2 + v32 + 4);
  if (v34)
  {
    if (v36)
    {
LABEL_19:
      sub_22A4DC29C();
      sub_2296AEAF8(&qword_27D87E078, MEMORY[0x277D216C8]);
      v24 = sub_22A4DD58C();
      return v24 & 1;
    }
  }

  else
  {
    if (*v33 != *v35)
    {
      LOBYTE(v36) = 1;
    }

    if ((v36 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_8:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_2296B0E8C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87ED88, &unk_22A57D8E0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v18 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerAppleMediaAccessoryStateEvent(0);
  v19 = v18[6];
  v20 = *(v14 + 56);
  sub_2296AF1D0(a1 + v19, v17);
  sub_2296AF1D0(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) != 1)
  {
    sub_2296AF1D0(v17, v12);
    if (v21(&v17[v20], 1, v4) != 1)
    {
      sub_22967B128(&v17[v20], v8);
      v26 = *(v4 + 20);
      v27 = *&v12[v26];
      v28 = *&v8[v26];
      if (v27 == v28 || (v29 = *&v12[v26], , , v30 = sub_22961C468(v27, v28), , , v30))
      {
        sub_22A4DC29C();
        sub_2296AEAF8(&qword_27D87E078, MEMORY[0x277D216C8]);
        v31 = sub_22A4DD58C();
        sub_2296B1D60(v8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
        sub_2296B1D60(v12, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
        sub_22953EAE4(v17, &qword_27D87CC38, &unk_22A5784B0);
        if ((v31 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }

      sub_2296B1D60(v8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
      sub_2296B1D60(v12, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
      v22 = &qword_27D87CC38;
      v23 = &unk_22A5784B0;
LABEL_7:
      sub_22953EAE4(v17, v22, v23);
      goto LABEL_8;
    }

    sub_2296B1D60(v12, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
LABEL_6:
    v22 = &qword_27D87ED88;
    v23 = &unk_22A57D8E0;
    goto LABEL_7;
  }

  if (v21(&v17[v20], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_22953EAE4(v17, &qword_27D87CC38, &unk_22A5784B0);
LABEL_13:
  v32 = v18[7];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 4);
  v35 = (a2 + v32);
  v36 = *(a2 + v32 + 4);
  if (v34)
  {
    if (!v36)
    {
      goto LABEL_8;
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
      goto LABEL_8;
    }
  }

  if (sub_2296B0380(*a1, *a2))
  {
    v37 = v18[5];
    sub_22A4DC29C();
    sub_2296AEAF8(&qword_27D87E078, MEMORY[0x277D216C8]);
    v24 = sub_22A4DD58C();
    return v24 & 1;
  }

LABEL_8:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_2296B12B0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87ED88, &unk_22A57D8E0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - v16;
  v18 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerMicroLocationEvent(0);
  v19 = v18[8];
  v20 = *(v14 + 56);
  sub_2296AF1D0(a1 + v19, v17);
  sub_2296AF1D0(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) != 1)
  {
    sub_2296AF1D0(v17, v12);
    if (v21(&v17[v20], 1, v4) != 1)
    {
      sub_22967B128(&v17[v20], v8);
      v26 = *(v4 + 20);
      v27 = *&v12[v26];
      v28 = *&v8[v26];
      if (v27 == v28 || (v29 = *&v12[v26], , , v30 = sub_22961C468(v27, v28), , , v30))
      {
        sub_22A4DC29C();
        sub_2296AEAF8(&qword_27D87E078, MEMORY[0x277D216C8]);
        v31 = sub_22A4DD58C();
        sub_2296B1D60(v8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
        sub_2296B1D60(v12, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
        sub_22953EAE4(v17, &qword_27D87CC38, &unk_22A5784B0);
        if ((v31 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }

      sub_2296B1D60(v8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
      sub_2296B1D60(v12, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
      v22 = &qword_27D87CC38;
      v23 = &unk_22A5784B0;
LABEL_7:
      sub_22953EAE4(v17, v22, v23);
      goto LABEL_8;
    }

    sub_2296B1D60(v12, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
LABEL_6:
    v22 = &qword_27D87ED88;
    v23 = &unk_22A57D8E0;
    goto LABEL_7;
  }

  if (v21(&v17[v20], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_22953EAE4(v17, &qword_27D87CC38, &unk_22A5784B0);
LABEL_13:
  v32 = v18[9];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36 || (*v33 != *v35 || v34 != v36) && (sub_22A4DE60C() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v36)
  {
    goto LABEL_8;
  }

  v37 = v18[10];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41 || (*v38 != *v40 || v39 != v41) && (sub_22A4DE60C() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v41)
  {
    goto LABEL_8;
  }

  if (sub_2296B0410(*a1, *a2) & 1) != 0 && (sub_2296B0380(a1[1], a2[1]) & 1) != 0 && (sub_2296B046C(a1[2], a2[2]))
  {
    v42 = v18[11];
    v43 = (a1 + v42);
    v44 = *(a1 + v42 + 4);
    v45 = (a2 + v42);
    v46 = *(a2 + v42 + 4);
    if (v44)
    {
      if (v46)
      {
LABEL_37:
        v47 = v18[7];
        sub_22A4DC29C();
        sub_2296AEAF8(&qword_27D87E078, MEMORY[0x277D216C8]);
        v24 = sub_22A4DD58C();
        return v24 & 1;
      }
    }

    else
    {
      if (*v43 != *v45)
      {
        LOBYTE(v46) = 1;
      }

      if ((v46 & 1) == 0)
      {
        goto LABEL_37;
      }
    }
  }

LABEL_8:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_2296B1784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0);
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
      v12 = sub_22A4DE60C();
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
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
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
  if (!v20)
  {
    if (!v22)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (!v22)
  {
    return 0;
  }

  if (*v19 != *v21 || v20 != v22)
  {
    v24 = v4;
    v25 = sub_22A4DE60C();
    v4 = v24;
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_25:
  v26 = v4[8];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  sub_22A4DC29C();
  sub_2296AEAF8(&qword_27D87E078, MEMORY[0x277D216C8]);
  return sub_22A4DD58C() & 1;
}

uint64_t sub_2296B1928(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87ED88, &unk_22A57D8E0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v18 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent(0);
  v19 = v18[7];
  v20 = *(v14 + 56);
  sub_2296AF1D0(a1 + v19, v17);
  sub_2296AF1D0(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_22953EAE4(v17, &qword_27D87CC38, &unk_22A5784B0);
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  sub_2296AF1D0(v17, v12);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    sub_2296B1D60(v12, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
LABEL_6:
    v22 = &qword_27D87ED88;
    v23 = &unk_22A57D8E0;
    goto LABEL_7;
  }

  sub_22967B128(&v17[v20], v8);
  v25 = *(v4 + 20);
  v26 = *&v12[v25];
  v27 = *&v8[v25];
  if (v26 == v27 || (v28 = *&v12[v25], , , v29 = sub_22961C468(v26, v27), , , v29))
  {
    sub_22A4DC29C();
    sub_2296AEAF8(&qword_27D87E078, MEMORY[0x277D216C8]);
    v30 = sub_22A4DD58C();
    sub_2296B1D60(v8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
    sub_2296B1D60(v12, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
    sub_22953EAE4(v17, &qword_27D87CC38, &unk_22A5784B0);
    if ((v30 & 1) == 0)
    {
LABEL_15:
      v24 = 0;
      return v24 & 1;
    }

LABEL_11:
    if ((sub_2296B04C8(*a1, *a2) & 1) == 0 || (sub_2296B07F8(a1[1], a2[1]) & 1) == 0)
    {
      goto LABEL_15;
    }

    v31 = v18[8];
    v32 = (a1 + v31);
    v33 = *(a1 + v31 + 4);
    v34 = (a2 + v31);
    v35 = *(a2 + v31 + 4);
    if (v33)
    {
      if (!v35)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (*v32 != *v34)
      {
        LOBYTE(v35) = 1;
      }

      if (v35)
      {
        goto LABEL_15;
      }
    }

    v37 = v18[6];
    sub_22A4DC29C();
    sub_2296AEAF8(&qword_27D87E078, MEMORY[0x277D216C8]);
    v24 = sub_22A4DD58C();
    return v24 & 1;
  }

  sub_2296B1D60(v8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  sub_2296B1D60(v12, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  v22 = &qword_27D87CC38;
  v23 = &unk_22A5784B0;
LABEL_7:
  sub_22953EAE4(v17, v22, v23);
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_2296B1D60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2296B1DC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2296B1E28(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (v8)
    {
      v9 = *v5 == *v7 && v6 == v8;
      if (v9 || (sub_22A4DE60C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v8)
  {
LABEL_8:
    sub_22A4DC29C();
    sub_2296AEAF8(&qword_27D87E078, MEMORY[0x277D216C8]);
    return sub_22A4DD58C() & 1;
  }

  return 0;
}

void sub_2296B1F28()
{
  sub_2296B20A8(319, &qword_27D87EDB8, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2296B20A8(319, &qword_27D87EDC0, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_22A4DC29C();
      if (v2 <= 0x3F)
      {
        sub_2296B20A8(319, &qword_27D87EDC8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2296B2580(319, &qword_27D87DF98, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2296B20A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2296B2134()
{
  sub_22A4DC29C();
  if (v0 <= 0x3F)
  {
    sub_2296B20A8(319, &qword_27D87EDC8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2296B2580(319, &qword_27D87DF98, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2296B224C()
{
  sub_2296B2580(319, &qword_27D87EDF0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22A4DC29C();
    if (v1 <= 0x3F)
    {
      sub_2296B20A8(319, &qword_27D87EDC8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2296B2580(319, &qword_27D87DF98, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2296B23A0()
{
  sub_2296B2580(319, &qword_27D87EE08, MEMORY[0x277D84CC0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2296B2580(319, &qword_27D87EDF0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2296B2580(319, &qword_27D87EE10, MEMORY[0x277D83A90], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_22A4DC29C();
        if (v3 <= 0x3F)
        {
          sub_2296B20A8(319, &qword_27D87EDC8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_2296B2580(319, &qword_281401CE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_2296B2580(319, &qword_27D87DF98, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
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

void sub_2296B2580(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2296B2654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(a2 + 16);
  v6 = *(a1 + 16);
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

unint64_t sub_2296B26B4()
{
  result = qword_27D87EE20;
  if (!qword_27D87EE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D87EC90, &unk_22A57CFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87EE20);
  }

  return result;
}

uint64_t sub_2296B2730(__int128 *a1)
{
  v3 = sub_22A4DD34C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v23[-v9];
  v11 = sub_22A4DB7DC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1[2])
  {
    (*(v12 + 16))(v15, v1, v11);
  }

  else
  {
    v26 = *a1;
    v27 = v26;
    sub_229588C00(&v27, &v24);
    sub_22A4DD33C();
    v17 = *(a1 + 2);
    v16 = *(a1 + 3);

    *&v26 = sub_22958F6F4(v17, v16);
    *(&v26 + 1) = v18;
    v24 = sub_22970DA38();
    v25 = v19;
    sub_22A4DD36C();
    sub_2296B29F0();
    sub_229588CA4();
    sub_22A4DD35C();
    v20 = *(v4 + 8);
    v20(v8, v3);
    sub_2295798D4(v24, v25);
    sub_2295798D4(v26, *(&v26 + 1));
    sub_22A4DD32C();
    v20(v10, v3);
  }

  v21 = sub_22A4DB76C();
  (*(v12 + 8))(v15, v11);
  return v21;
}

unint64_t sub_2296B29F0()
{
  result = qword_27D87D2D0;
  if (!qword_27D87D2D0)
  {
    sub_22A4DD36C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D2D0);
  }

  return result;
}

unint64_t sub_2296B2A4C()
{
  result = qword_27D87ED30;
  if (!qword_27D87ED30)
  {
    type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87ED30);
  }

  return result;
}

uint64_t sub_2296B2AB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = sub_22A4DB74C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v24 - v17;
  sub_22966901C(a2, v24 - v17);
  result = (*(v8 + 48))(v18, 1, v7);
  if (result != 1)
  {
    (*(v8 + 32))(v11, v18, v7);
    (*(v8 + 16))(v16, v11, v7);
    (*(v8 + 56))(v16, 0, 1, v7);
    v20 = sub_2297C337C(v16);
    v22 = v21;
    sub_22953EAE4(v16, &unk_27D881AA0, &qword_22A57BC20);
    (*(v8 + 8))(v11, v7);
    v24[0] = v20;
    v24[1] = v22;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) + 36);

    swift_setAtWritableKeyPath();
  }

  return result;
}

uint64_t sub_2296B2D04(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D100, &unk_22A583B00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v37[-v10];
  if ([v2 lastKnownValue])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
    v12 = *(&v44 + 1);
    v13 = __swift_project_boxed_opaque_existential_0(&v43, *(&v44 + 1));
    v40 = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
    sub_229543C58(v39, &v41);
    __swift_destroy_boxed_opaque_existential_0(&v43);
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43 = v41;
  v44 = v42;
  if (*(&v42 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    if (swift_dynamicCast())
    {
      v38 = 0;
      v15 = *v39;
      goto LABEL_9;
    }
  }

  else
  {
    sub_22953EAE4(&v43, &unk_27D87FC20, &unk_22A578810);
  }

  v38 = 1;
  v15 = 0.0;
LABEL_9:
  if ([v2 previousValue])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
    v16 = *(&v44 + 1);
    v17 = __swift_project_boxed_opaque_existential_0(&v43, *(&v44 + 1));
    v40 = v16;
    v18 = __swift_allocate_boxed_opaque_existential_1(v39);
    (*(*(v16 - 8) + 16))(v18, v17, v16);
    sub_229543C58(v39, &v41);
    __swift_destroy_boxed_opaque_existential_0(&v43);
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43 = v41;
  v44 = v42;
  if (*(&v42 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    if (swift_dynamicCast())
    {
      v19 = 0;
      v20 = *v39;
      goto LABEL_17;
    }
  }

  else
  {
    sub_22953EAE4(&v43, &unk_27D87FC20, &unk_22A578810);
  }

  v19 = 1;
  v20 = 0.0;
LABEL_17:
  v21 = [v2 characteristicType];
  v22 = sub_22A4DD5EC();
  v24 = v23;

  v25 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE28, &qword_22A57DC78) + 36);
  v26 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0);
  v27 = (v25 + v26[5]);
  v28 = v27[1];

  *v27 = v22;
  v27[1] = v24;
  if ((v38 & 1) == 0)
  {
    v29 = v25 + v26[6];
    *v29 = v15;
    *(v29 + 4) = 0;
  }

  KeyPath = swift_getKeyPath();
  v31 = [v2 lastKnownValueUpdateTime];
  if (v31)
  {
    v32 = v31;
    sub_22A4DB70C();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = sub_22A4DB74C();
  (*(*(v34 - 8) + 56))(v7, v33, 1, v34);
  sub_2296692F8(v7, v11);
  sub_2296B2AB8(KeyPath, v11, &qword_27D87EE28, &qword_22A57DC78);

  result = sub_22953EAE4(v11, &qword_27D87D100, &unk_22A583B00);
  if ((v19 & 1) == 0)
  {
    v36 = v25 + v26[8];
    *v36 = v20;
    *(v36 + 4) = 0;
  }

  return result;
}

uint64_t sub_2296B3188@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0) + 28));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_2296B31EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0) + 28));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

void *sub_2296B3264()
{
  v1 = type metadata accessor for NetworkDetectAccessory();
  v90 = *(v1 - 8);
  v2 = *(v90 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v84 = v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v79 - v5;
  v7 = sub_22A4DBB4C();
  v91 = *(v7 - 8);
  v92 = v7;
  v8 = *(v91 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0 + OBJC_IVAR____TtC13HomeKitDaemon23NetworkMismatchDetector_dataSource;
  Strong = swift_unknownObjectWeakLoadStrong();
  v86 = MEMORY[0x277D84F90];
  if (!Strong)
  {
    return v86;
  }

  v13 = Strong;
  v82 = v1;
  v85 = v6;
  v14 = *(v11 + 8);
  ObjectType = swift_getObjectType();
  v89 = v14[3](ObjectType, v14);
  v16 = v14[2](ObjectType, v14);
  v17 = *(v16 + 16);
  v83 = v13;
  if (v17)
  {
    v80 = ObjectType;
    v81 = v14;
    v94 = MEMORY[0x277D84F90];
    sub_229583334(0, v17, 0);
    v18 = v94;
    v88 = *(v91 + 16);
    v19 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v79[1] = v16;
    v20 = v16 + v19;
    v87 = *(v91 + 72);
    v93 = v91 + 16;
    v21 = (v91 + 8);
    do
    {
      v22 = v92;
      v88(v10, v20, v92);
      v23 = sub_22A4DBB2C();
      v25 = v24;
      (*v21)(v10, v22);
      v94 = v18;
      v27 = *(v18 + 16);
      v26 = *(v18 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_229583334((v26 > 1), v27 + 1, 1);
        v18 = v94;
      }

      *(v18 + 16) = v27 + 1;
      v28 = v18 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v20 += v87;
      --v17;
    }

    while (v17);

    v14 = v81;
    ObjectType = v80;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v29 = sub_229672204(v18);

  v30 = v14[1](ObjectType, v14);
  v31 = v30[2];
  v93 = v29;
  if (v31)
  {
    v94 = MEMORY[0x277D84F90];
    sub_229583334(0, v31, 0);
    v32 = v94;
    v33 = *(v91 + 16);
    v34 = *(v91 + 80);
    v86 = v30;
    v35 = v30 + ((v34 + 32) & ~v34);
    v87 = *(v91 + 72);
    v88 = v33;
    v91 += 16;
    v36 = (v91 - 8);
    do
    {
      v37 = v92;
      v88(v10, v35, v92);
      v38 = sub_22A4DBB2C();
      v40 = v39;
      (*v36)(v10, v37);
      v94 = v32;
      v42 = *(v32 + 16);
      v41 = *(v32 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_229583334((v41 > 1), v42 + 1, 1);
        v32 = v94;
      }

      *(v32 + 16) = v42 + 1;
      v43 = v32 + 16 * v42;
      *(v43 + 32) = v38;
      *(v43 + 40) = v40;
      v35 += v87;
      --v31;
    }

    while (v31);

    v29 = v93;
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v44 = sub_229672204(v32);

  v46 = v89;
  v47 = v85;
  v91 = *(v89 + 16);
  if (!v91)
  {

    v86 = MEMORY[0x277D84F90];
LABEL_48:
    swift_unknownObjectRelease();

    return v86;
  }

  v48 = 0;
  v92 = *(v82 + 20);
  v87 = (*(v90 + 80) + 32) & ~*(v90 + 80);
  v88 = (v89 + v87);
  v49 = v29 + 56;
  v50 = v44 + 56;
  v86 = MEMORY[0x277D84F90];
  v51 = v93;
  while (v48 < *(v46 + 16))
  {
    v52 = *(v90 + 72);
    sub_2296B8404(v88 + v52 * v48, v47);
    v53 = sub_22A4DB76C();
    v55 = v54;
    if (*(v51 + 16) && (v56 = v53, v57 = *(v51 + 40), sub_22A4DE77C(), sub_22A4DD6BC(), v58 = sub_22A4DE7BC(), v59 = -1 << *(v51 + 32), v60 = v58 & ~v59, ((*(v49 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) != 0))
    {
      v61 = ~v59;
      while (1)
      {
        v62 = (*(v93 + 48) + 16 * v60);
        v63 = *v62 == v56 && v62[1] == v55;
        if (v63 || (sub_22A4DE60C() & 1) != 0)
        {
          break;
        }

        v60 = (v60 + 1) & v61;
        if (((*(v49 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v64 = sub_22A4DB76C();
      v66 = v65;
      if (*(v44 + 16))
      {
        v67 = v64;
        v68 = *(v44 + 40);
        sub_22A4DE77C();
        sub_22A4DD6BC();
        v69 = sub_22A4DE7BC();
        v70 = -1 << *(v44 + 32);
        v71 = v69 & ~v70;
        if ((*(v50 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71))
        {
          v72 = ~v70;
          while (1)
          {
            v73 = (*(v44 + 48) + 16 * v71);
            v74 = *v73 == v67 && v73[1] == v66;
            if (v74 || (sub_22A4DE60C() & 1) != 0)
            {
              break;
            }

            v71 = (v71 + 1) & v72;
            if (((*(v50 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
            {
              goto LABEL_41;
            }
          }

LABEL_18:
          v47 = v85;
          goto LABEL_19;
        }
      }

LABEL_41:

      v47 = v85;
      sub_22966B7F0(v85, v84);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_22958B1C8(0, v86[2] + 1, 1, v86);
      }

      v76 = v86[2];
      v75 = v86[3];
      if (v76 >= v75 >> 1)
      {
        v86 = sub_22958B1C8(v75 > 1, v76 + 1, 1, v86);
      }

      v77 = v86;
      v78 = v87;
      v86[2] = v76 + 1;
      result = sub_22966B7F0(v84, v77 + v78 + v76 * v52);
    }

    else
    {
LABEL_19:

      result = sub_2296B7214(v47);
    }

    v46 = v89;
    if (++v48 == v91)
    {

      goto LABEL_48;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2296B39CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D208, &qword_22A578150);
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v8 = *(v7 + 64) + 15;
  v5[17] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE60, &qword_22A57DD68) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE50, &qword_22A57DD48);
  v5[19] = v10;
  v11 = *(v10 - 8);
  v5[20] = v11;
  v12 = *(v11 + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE68, &unk_22A57DD70);
  v5[24] = v13;
  v14 = *(v13 - 8);
  v5[25] = v14;
  v15 = *(v14 + 64) + 15;
  v5[26] = swift_task_alloc();
  v16 = type metadata accessor for NetworkDetectAccessory();
  v5[27] = v16;
  v17 = *(v16 - 8);
  v5[28] = v17;
  v5[29] = *(v17 + 64);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296B3C74, 0, 0);
}

uint64_t sub_2296B3C74()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 224);
    v39 = *(v0 + 232);
    v38 = **(v0 + 88);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v37 = *(v3 + 72);
    v36 = (v4 + 48) & ~v4;
    v6 = sub_22A4DD9DC();
    v7 = *(v6 - 8);
    v35 = *(v7 + 56);
    v33 = v6;
    v34 = (v7 + 48);
    v32 = (v7 + 8);
    do
    {
      v12 = *(v0 + 256);
      v11 = *(v0 + 264);
      v13 = *(v0 + 248);
      v40 = *(v0 + 104);
      v35(v11, 1, 1, v6);
      sub_2296B8404(v5, v13);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = (v14 + 16);
      *(v14 + 24) = 0;
      *(v14 + 32) = v40;
      sub_22966B7F0(v13, v14 + v36);
      sub_229564F88(v11, v12, &unk_27D87D8F0, &qword_22A578D70);
      LODWORD(v12) = (*v34)(v12, 1, v6);
      swift_unknownObjectRetain();
      v16 = *(v0 + 256);
      if (v12 == 1)
      {
        sub_22953EAE4(*(v0 + 256), &unk_27D87D8F0, &qword_22A578D70);
        if (*v15)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_22A4DD9CC();
        (*v32)(v16, v6);
        if (*v15)
        {
LABEL_9:
          v19 = *(v14 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v17 = sub_22A4DD8CC();
          v18 = v20;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v17 = 0;
      v18 = 0;
LABEL_10:
      v21 = swift_allocObject();
      *(v21 + 16) = &unk_22A57DD88;
      *(v21 + 24) = v14;

      if (v18 | v17)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v17;
        *(v0 + 40) = v18;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 264);
      v10 = *(v0 + 152);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v38;
      swift_task_create();

      sub_22953EAE4(v9, &unk_27D87D8F0, &qword_22A578D70);
      v5 += v37;
      --v2;
      v6 = v33;
    }

    while (v2);
  }

  v22 = *(v0 + 208);
  v23 = *(v0 + 152);
  v24 = **(v0 + 88);
  sub_22A4DD91C();
  *(v0 + 272) = MEMORY[0x277D84F90];
  v25 = sub_2296B86E8();
  v26 = *(MEMORY[0x277D856D0] + 4);
  v27 = swift_task_alloc();
  *(v0 + 280) = v27;
  *v27 = v0;
  v27[1] = sub_2296B4024;
  v28 = *(v0 + 208);
  v29 = *(v0 + 192);
  v30 = *(v0 + 144);

  return MEMORY[0x282200308](v30, v29, v25);
}

uint64_t sub_2296B4024()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v10 = *v1;

  if (v0)
  {
    v4 = v2[34];
    v6 = v2[25];
    v5 = v2[26];
    v7 = v2[24];

    (*(v6 + 8))(v5, v7);

    v8 = nullsub_1;
  }

  else
  {
    v8 = sub_2296B4178;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2296B4178()
{
  v1 = v0[19];
  v2 = v0[18];
  if ((*(v0[20] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[33];
    v4 = v0[34];
    v6 = v0[31];
    v5 = v0[32];
    v7 = v0[30];
    v8 = v0[23];
    v47 = v0[22];
    v48 = v0[21];
    v50 = v0[17];
    v9 = v0[10];
    (*(v0[25] + 8))(v0[26], v0[24]);
    sub_22953EAE4(v2, &qword_27D87EE60, &qword_22A57DD68);
    *v9 = v4;

    v10 = v0[1];

    return v10();
  }

  v12 = v0[27];
  v13 = v0[28];
  v14 = v0[22];
  v15 = v0[23];
  sub_22957F2F8(v2, v15, &qword_27D87EE50, &qword_22A57DD48);
  sub_229564F88(v15, v14, &qword_27D87EE50, &qword_22A57DD48);
  v16 = *(v1 + 48);
  if ((*(v13 + 48))(v14, 1, v12) == 1)
  {
    v17 = v0[22];
    sub_22953EAE4(v0[23], &qword_27D87EE50, &qword_22A57DD48);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E408, &unk_22A581160);
    (*(*(v18 - 8) + 8))(v14 + v16, v18);
    v19 = v17;
  }

  else
  {
    v20 = v0[23];
    v21 = v0[21];
    v22 = v0[19];
    sub_22966B7F0(v0[22], v0[30]);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E408, &unk_22A581160);
    v24 = *(*(v23 - 8) + 8);
    v24(v14 + v16, v23);
    sub_229564F88(v20, v21, &qword_27D87EE50, &qword_22A57DD48);
    v25 = *(v22 + 48);
    sub_22A4DBA4C();
    v26 = v0[9];
    if (v26)
    {
      v27 = v0[30];
      v49 = v27;
      v51 = v0[34];
      v28 = v0[21];
      v29 = v0[17];
      v30 = v0[15];
      v24(v21 + v25, v23);
      sub_22953EAE4(v28, &qword_27D87EE78, &unk_22A57DDA0);
      v31 = *(v30 + 48);
      sub_2296B8404(v49, v29);
      *(v29 + v31) = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v0[34];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = sub_22958B218(0, v33[2] + 1, 1, v0[34]);
      }

      v35 = v33[2];
      v34 = v33[3];
      if (v35 >= v34 >> 1)
      {
        v33 = sub_22958B218(v34 > 1, v35 + 1, 1, v33);
      }

      v36 = v0[23];
      v38 = v0[16];
      v37 = v0[17];
      sub_2296B7214(v0[30]);
      sub_22953EAE4(v36, &qword_27D87EE50, &qword_22A57DD48);
      v33[2] = v35 + 1;
      sub_22957F2F8(v37, v33 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v35, &qword_27D87D208, &qword_22A578150);
      goto LABEL_15;
    }

    v39 = v0[23];
    v40 = v0[21];
    sub_2296B7214(v0[30]);
    sub_22953EAE4(v39, &qword_27D87EE50, &qword_22A57DD48);
    v24(v21 + v25, v23);
    v19 = v40;
  }

  sub_22953EAE4(v19, &qword_27D87EE78, &unk_22A57DDA0);
  v33 = v0[34];
LABEL_15:
  v0[34] = v33;
  v41 = sub_2296B86E8();
  v42 = *(MEMORY[0x277D856D0] + 4);
  v43 = swift_task_alloc();
  v0[35] = v43;
  *v43 = v0;
  v43[1] = sub_2296B4024;
  v44 = v0[26];
  v45 = v0[24];
  v46 = v0[18];

  return MEMORY[0x282200308](v46, v45, v41);
}

uint64_t sub_2296B463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a1;
  v6[4] = a6;
  ObjectType = swift_getObjectType();
  v10 = *(a5 + 32);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v6[5] = v12;
  *v12 = v6;
  v12[1] = sub_2296B4778;

  return v14(a6, ObjectType, a5);
}

uint64_t sub_2296B4778(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_2296B4878, 0, 0);
}

uint64_t sub_2296B4878()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE50, &qword_22A57DD48) + 48);
  sub_2296B8404(v3, v2);
  v5 = type metadata accessor for NetworkDetectAccessory();
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  v0[2] = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8802C0, &qword_22A57C008);
  MEMORY[0x22AACEC10](v0 + 2, v6);
  v7 = v0[1];

  return v7();
}

uint64_t sub_2296B4990()
{
  v1 = v0[3];
  v2 = sub_2296B3264();
  v0[4] = v2;
  if (v2[2] && (v3 = v0[3] + OBJC_IVAR____TtC13HomeKitDaemon23NetworkMismatchDetector_dataSource, Strong = swift_unknownObjectWeakLoadStrong(), (v0[5] = Strong) != 0))
  {
    v5 = Strong;
    v6 = *(v3 + 8);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE50, &qword_22A57DD48);
    v8 = swift_task_alloc();
    v0[6] = v8;
    v8[2] = v2;
    v8[3] = v5;
    v8[4] = v6;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE58, &qword_22A57DD60);
    v10 = *(MEMORY[0x277D858E8] + 4);
    v11 = swift_task_alloc();
    v0[7] = v11;
    *v11 = v0;
    v11[1] = sub_2296B4B3C;

    return MEMORY[0x282200600](v0 + 2, v7, v9, 0, 0, &unk_22A57DD58, v8, v7);
  }

  else
  {

    v12 = v0[1];
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }
}

uint64_t sub_2296B4B3C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2296B4C70, 0, 0);
}

uint64_t sub_2296B4C70()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_2296B4CD4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v1[2] = a1;
  v1[3] = ObjectType;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE38, &qword_22A57DD28);
  v1[4] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v6 = sub_22A4DB7DC();
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D208, &qword_22A578150);
  v1[13] = v9;
  v10 = *(v9 - 8);
  v1[14] = v10;
  v11 = *(v10 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D218, &unk_22A578160);
  v1[20] = v12;
  v13 = *(v12 - 8);
  v1[21] = v13;
  v14 = *(v13 + 64) + 15;
  v1[22] = swift_task_alloc();
  v15 = swift_task_alloc();
  v1[23] = v15;
  *v15 = v1;
  v15[1] = sub_2296B4F38;

  return sub_2296B4970();
}

uint64_t sub_2296B4F38(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = a1;

  return MEMORY[0x2822009F8](sub_2296B5038, 0, 0);
}

uint64_t sub_2296B5038()
{
  v156 = v0;
  v1 = v0[24];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  v126 = v1;
  v130 = v2;
  if (v2)
  {
    v149 = v0[21];
    v4 = v0[14];
    v138 = v0[13];
    v143 = v0[20];
    v5 = v0[9];
    v155 = MEMORY[0x277D84F90];
    sub_229583960(0, v2, 0);
    v3 = v155;
    v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v136 = *(v4 + 72);
    do
    {
      v7 = v0[22];
      v9 = v0[18];
      v8 = v0[19];
      v10 = v0[8];
      sub_229564F88(v6, v8, &qword_27D87D208, &qword_22A578150);
      v11 = (v7 + *(v143 + 48));
      sub_229564F88(v8, v9, &qword_27D87D208, &qword_22A578150);

      (*(v5 + 16))(v7, v9, v10);
      sub_2296B7214(v9);
      *v11 = sub_2296B6AF0(*(v8 + *(v138 + 48)));
      v11[1] = v12;
      v11[2] = v13;
      sub_22953EAE4(v8, &qword_27D87D208, &qword_22A578150);
      v155 = v3;
      v15 = *(v3 + 16);
      v14 = *(v3 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_229583960(v14 > 1, v15 + 1, 1);
        v3 = v155;
      }

      v16 = v0[22];
      *(v3 + 16) = v15 + 1;
      sub_22957F2F8(v16, v3 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v15, &qword_27D87D218, &unk_22A578160);
      v6 += v136;
      --v2;
    }

    while (v2);
  }

  if (*(v3 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882110, &qword_22A57DD30);
    v17 = sub_22A4DE40C();
  }

  else
  {
    v17 = MEMORY[0x277D84F98];
  }

  v155 = v17;

  sub_2296B6560(v18, 1, &v155);
  v19 = v0[2];

  v20 = sub_2296B72BC(v19, v155);

  v21 = v19;
  v22 = sub_2296B8258(v20, v21);

  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = v0[9];
    v125 = v0[4];
    v155 = MEMORY[0x277D84F90];
    sub_22958345C(0, v23, 0);
    v25 = v155;
    v26 = v22 + 64;
    v27 = -1 << *(v22 + 32);
    result = sub_22A4DE04C();
    v29 = result;
    v30 = 0;
    v123 = v0;
    v31 = v24 + 32;
    v118 = v22 + 72;
    v119 = v23;
    v120 = v22 + 64;
    v121 = v24;
    v122 = v22;
    while ((v29 & 0x8000000000000000) == 0 && v29 < 1 << *(v22 + 32))
    {
      if ((*(v26 + 8 * (v29 >> 6)) & (1 << v29)) == 0)
      {
        goto LABEL_55;
      }

      v139 = v29 >> 6;
      v128 = v30;
      v133 = *(v22 + 36);
      v144 = v0[12];
      v33 = v0[7];
      v34 = v0[8];
      v36 = v0[5];
      v35 = v0[6];
      v150 = *(v24 + 72);
      (*(v24 + 16))(v33, *(v22 + 48) + v150 * v29, v34);
      v37 = (*(v22 + 56) + 24 * v29);
      v154 = v25;
      v38 = v24;
      v39 = *v37;
      v40 = v37[1];
      v41 = v31;
      v42 = v37[2];
      v43 = *(v38 + 32);
      v43(v35, v33, v34);
      v44 = (v35 + *(v125 + 48));
      *v44 = v39;
      v44[1] = v40;
      v44[2] = v42;
      sub_22957F2F8(v35, v36, &qword_27D87EE38, &qword_22A57DD28);
      v45 = (v36 + *(v125 + 48));
      v46 = *v45;
      v47 = v42;
      v31 = v41;
      v25 = v154;

      v48 = v45[1];

      v49 = v45[2];
      v50 = v43;

      v43(v144, v36, v34);
      v155 = v154;
      v52 = *(v154 + 16);
      v51 = *(v154 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_22958345C(v51 > 1, v52 + 1, 1);
        v25 = v155;
      }

      v0 = v123;
      v53 = v123[12];
      v54 = v123[8];
      *(v25 + 16) = v52 + 1;
      v24 = v121;
      result = v50(v25 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + v52 * v150, v53, v54);
      v22 = v122;
      v32 = 1 << *(v122 + 32);
      if (v29 >= v32)
      {
        goto LABEL_56;
      }

      v26 = v120;
      v55 = *(v120 + 8 * v139);
      if ((v55 & (1 << v29)) == 0)
      {
        goto LABEL_57;
      }

      if (v133 != *(v122 + 36))
      {
        goto LABEL_58;
      }

      v56 = v55 & (-2 << (v29 & 0x3F));
      if (v56)
      {
        v32 = __clz(__rbit64(v56)) | v29 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v57 = v139 << 6;
        v58 = (v118 + 8 * v139);
        v59 = v139 + 1;
        while (v59 < (v32 + 63) >> 6)
        {
          v61 = *v58++;
          v60 = v61;
          v57 += 64;
          ++v59;
          if (v61)
          {
            result = sub_22962F424(v29, v133, 0);
            v32 = __clz(__rbit64(v60)) + v57;
            goto LABEL_12;
          }
        }

        result = sub_22962F424(v29, v133, 0);
      }

LABEL_12:
      v30 = v128 + 1;
      v29 = v32;
      if (v128 + 1 == v119)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
LABEL_27:

    v62 = v126;
    v63 = MEMORY[0x277D84F90];
    v151 = *(v126 + 16);
    if (!v151)
    {
LABEL_38:
      v78 = *(v63 + 16);
      if (v78)
      {
        v79 = v0[14];
        v152 = v0[13];
        v80 = v0[9];
        v155 = MEMORY[0x277D84F90];
        sub_22958345C(0, v78, 0);
        v81 = v155;
        v82 = v63 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
        v146 = *(v79 + 72);
        do
        {
          v83 = v0[18];
          v84 = v0[19];
          v85 = v0[11];
          v86 = v0[8];
          sub_229564F88(v82, v84, &qword_27D87D208, &qword_22A578150);
          sub_22957F2F8(v84, v83, &qword_27D87D208, &qword_22A578150);

          (*(v80 + 16))(v85, v83, v86);
          sub_2296B7214(v83);
          v155 = v81;
          v88 = *(v81 + 16);
          v87 = *(v81 + 24);
          if (v88 >= v87 >> 1)
          {
            sub_22958345C(v87 > 1, v88 + 1, 1);
            v81 = v155;
          }

          v89 = v0[11];
          v90 = v0[8];
          *(v81 + 16) = v88 + 1;
          (*(v80 + 32))(v81 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v88, v89, v90);
          v82 += v146;
          --v78;
        }

        while (v78);
      }

      v91 = v0[24];
      v92 = v130;
      if (v130)
      {
        v93 = v0[14];
        v141 = v0[13];
        v94 = v0[9];
        v155 = MEMORY[0x277D84F90];
        sub_22958345C(0, v130, 0);
        v95 = v155;
        v96 = v91 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
        v134 = *(v93 + 72);
        do
        {
          v131 = v92;
          v98 = v0[18];
          v97 = v0[19];
          v99 = v0[15];
          v100 = v0[10];
          v147 = v0[8];
          sub_229564F88(v96, v97, &qword_27D87D208, &qword_22A578150);
          sub_229564F88(v97, v98, &qword_27D87D208, &qword_22A578150);
          v101 = *(v141 + 48);
          v102 = *(v98 + v101);
          sub_22966B7F0(v98, v99);
          *(v99 + v101) = v102;
          (*(v94 + 16))(v100, v99, v147);
          sub_22953EAE4(v99, &qword_27D87D208, &qword_22A578150);
          sub_22953EAE4(v97, &qword_27D87D208, &qword_22A578150);
          v155 = v95;
          v104 = *(v95 + 16);
          v103 = *(v95 + 24);
          if (v104 >= v103 >> 1)
          {
            sub_22958345C(v103 > 1, v104 + 1, 1);
            v95 = v155;
          }

          v105 = v0[10];
          v106 = v0[8];
          *(v95 + 16) = v104 + 1;
          (*(v94 + 32))(v95 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v104, v105, v106);
          v96 += v134;
          v92 = v131 - 1;
        }

        while (v131 != 1);
        v107 = v0[24];
      }

      else
      {
      }

      v108 = v0[22];
      v109 = v0[18];
      v110 = v0[19];
      v124 = v0[17];
      v127 = v0[16];
      v129 = v0[15];
      v132 = v0[12];
      v135 = v0[11];
      v111 = v0[8];
      v137 = v0[10];
      v142 = v0[7];
      v148 = v0[6];
      v153 = v0[5];
      v112 = objc_allocWithZone(HMDNetworkMismatchDetectorResult);
      v113 = sub_22A4DD81C();

      v114 = sub_22A4DD81C();

      v115 = sub_22A4DD81C();

      v116 = [v112 initWithAccessoriesNotOnWiFi:v113 accessoriesNotOnWiFiAndNotConnectingToPrimaryResident:v114 accessoriesReportingDiagnostic:v115];

      v117 = v0[1];

      return v117(v116);
    }

    v64 = 0;
    v140 = v0[14];
    v145 = v0[13];
    while (v64 < *(v62 + 16))
    {
      v65 = v63;
      v66 = v0[17];
      v68 = v0[2];
      v67 = v0[3];
      v69 = (*(v140 + 80) + 32) & ~*(v140 + 80);
      v70 = *(v140 + 72);
      sub_229564F88(v0[24] + v69 + v70 * v64, v66, &qword_27D87D208, &qword_22A578150);
      sub_2296B5C48(v66, *(v66 + *(v145 + 48)), v68, v67);
      v72 = v71;
      v73 = v0[17];
      if (v72)
      {
        sub_22957F2F8(v73, v0[16], &qword_27D87D208, &qword_22A578150);
        v63 = v65;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v155 = v65;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_229583920(0, *(v65 + 16) + 1, 1);
          v63 = v155;
        }

        v76 = *(v63 + 16);
        v75 = *(v63 + 24);
        if (v76 >= v75 >> 1)
        {
          sub_229583920(v75 > 1, v76 + 1, 1);
          v63 = v155;
        }

        v77 = v0[16];
        *(v63 + 16) = v76 + 1;
        result = sub_22957F2F8(v77, v63 + v69 + v76 * v70, &qword_27D87D208, &qword_22A578150);
      }

      else
      {
        result = sub_22953EAE4(v73, &qword_27D87D208, &qword_22A578150);
        v63 = v65;
      }

      ++v64;
      v62 = v126;
      if (v151 == v64)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

void sub_2296B5C48(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for NetworkDetectAccessory();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v74 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v74 - v17;
  v19 = sub_22A4DD07C();
  v77 = *(v19 - 8);
  v78 = v19;
  v20 = *(v77 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v74 - v25;
  MEMORY[0x28223BE20](v24);
  if (*(a1 + *(v9 + 36)))
  {
    sub_229541CB0(a4, &off_283CDFCA0);
    sub_2296B8404(a1, v13);
    v28 = sub_22A4DD05C();
    v29 = sub_22A4DDCDC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v79 = v31;
      *v30 = 136315138;
      sub_22A4DB7DC();
      sub_229586A3C();
      v32 = sub_22A4DE5CC();
      v34 = v33;
      sub_2296B7214(v13);
      v35 = sub_2295A3E30(v32, v34, &v79);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_229538000, v28, v29, "Accessory %s is primary resident.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AAD4E50](v31, -1, -1);
      MEMORY[0x22AAD4E50](v30, -1, -1);

LABEL_32:
      (*(v77 + 8))(v23, v78);
      return;
    }

    v48 = v13;
    goto LABEL_31;
  }

  v23 = &v74 - v27;
  v36 = sub_2296B6AF0(a2);
  v75 = v37;
  v76 = v36;
  v39 = v38;
  if ((sub_2296B7AC4(a3, v38, v37) & 1) == 0)
  {
    if ([a2 hasAppleMediaAccessoryDiagnosticInfo])
    {
      v49 = [a2 appleMediaAccessoryDiagnosticInfo];
      if (!v49)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v50 = v49;
      v51 = [v49 hasEventRouterServerInfo];

      if (v51)
      {
        v52 = [a2 appleMediaAccessoryDiagnosticInfo];
        if (!v52)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v53 = v52;
        v54 = [v52 eventRouterServerInfo];

        if (!v54)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v55 = [v54 hasConnectionState];

        if (v55)
        {
          v56 = [a2 appleMediaAccessoryDiagnosticInfo];
          if (v56)
          {
            v57 = v56;
            v58 = [v56 eventRouterServerInfo];

            if (v58)
            {
              [v58 connectionState];

              return;
            }

            goto LABEL_38;
          }

LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          return;
        }
      }
    }

    v59 = [a2 hasAppleMediaAccessoryDiagnosticInfo];
    v74 = v39;
    if ((v59 & 1) == 0)
    {
      v64 = 0x800000022A590B70;
      v63 = 0xD000000000000021;
LABEL_28:
      sub_229541CB0(a4, &off_283CDFCA0);
      sub_2296B8404(a1, v18);

      v65 = sub_22A4DD05C();
      v66 = sub_22A4DDCEC();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v79 = v68;
        *v67 = 136315394;
        sub_22A4DB7DC();
        sub_229586A3C();
        v69 = sub_22A4DE5CC();
        v71 = v70;
        sub_2296B7214(v18);
        v72 = sub_2295A3E30(v69, v71, &v79);

        *(v67 + 4) = v72;
        *(v67 + 12) = 2082;
        v73 = sub_2295A3E30(v63, v64, &v79);

        *(v67 + 14) = v73;
        _os_log_impl(&dword_229538000, v65, v66, "Accessory %s is missing %{public}s", v67, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v68, -1, -1);
        MEMORY[0x22AAD4E50](v67, -1, -1);

        goto LABEL_32;
      }

      v48 = v18;
LABEL_31:
      sub_2296B7214(v48);
      goto LABEL_32;
    }

    v60 = [a2 appleMediaAccessoryDiagnosticInfo];
    if (v60)
    {
      v61 = v60;
      v62 = [v60 hasEventRouterServerInfo];

      if (v62)
      {
        v63 = 0x697463656E6E6F43;
      }

      else
      {
        v63 = 0xD000000000000015;
      }

      if (v62)
      {
        v64 = 0xEF65746174536E6FLL;
      }

      else
      {
        v64 = 0x800000022A590BA0;
      }

      goto LABEL_28;
    }

    goto LABEL_34;
  }

  sub_229541CB0(a4, &off_283CDFCA0);
  sub_2296B8404(a1, v16);
  v40 = sub_22A4DD05C();
  v41 = sub_22A4DDCDC();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v79 = v43;
    *v42 = 136315138;
    sub_22A4DB7DC();
    sub_229586A3C();
    v44 = sub_22A4DE5CC();
    v46 = v45;
    sub_2296B7214(v16);
    v47 = sub_2295A3E30(v44, v46, &v79);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_229538000, v40, v41, "Accessory %s has matching network.", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x22AAD4E50](v43, -1, -1);
    MEMORY[0x22AAD4E50](v42, -1, -1);
  }

  else
  {

    sub_2296B7214(v16);
  }

  (*(v77 + 8))(v26, v78);
}

id sub_2296B6460()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkMismatchDetector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t *sub_2296B64C8(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = sub_2296B7F30(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

void sub_2296B6560(uint64_t a1, char a2, uint64_t *a3)
{
  v71 = a3;
  v6 = sub_22A4DB7DC();
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  MEMORY[0x28223BE20](v6);
  v72 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D218, &unk_22A578160);
  v68 = *(v9 - 8);
  v10 = *(v68 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v67 = v62 - v12;
  v65 = *(a1 + 16);
  if (!v65)
  {
    goto LABEL_24;
  }

  v62[1] = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v67;
  v14 = (v67 + *(v11 + 48));
  v15 = *(v68 + 80);
  v66 = a1;
  v16 = (v69 + 32);
  v64 = a1 + ((v15 + 32) & ~v15);
  sub_229564F88(v64, v67, &qword_27D87D218, &unk_22A578160);
  v17 = v72;
  v63 = *v16;
  v63(v72, v13, v70);
  v18 = *v14;
  v19 = v14[1];
  v20 = v14[2];
  v21 = *v71;
  v23 = sub_2296DBEC0(v17);
  v24 = *(v21 + 16);
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = v22;
  if (*(v21 + 24) >= v26)
  {
    if (a2)
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_229898590();
      if ((v27 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  v28 = v71;
  sub_2298941B0(v26, a2 & 1);
  v29 = *v28;
  v30 = sub_2296DBEC0(v72);
  if ((v27 & 1) == (v31 & 1))
  {
    v23 = v30;
    if ((v27 & 1) == 0)
    {
LABEL_14:
      v34 = v72;
      v35 = *v71;
      *(*v71 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v63(v35[6] + *(v69 + 72) * v23, v34, v70);
      v36 = (v35[7] + 24 * v23);
      *v36 = v18;
      v36[1] = v19;
      v36[2] = v20;
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v35[2] = v39;
      if (v65 != 1)
      {
        v40 = 1;
        while (v40 < *(v66 + 16))
        {
          v41 = v67;
          sub_229564F88(v64 + *(v68 + 72) * v40, v67, &qword_27D87D218, &unk_22A578160);
          v42 = *v16;
          v43 = v72;
          (*v16)(v72, v41, v70);
          v44 = *v14;
          v45 = v14[1];
          v20 = v14[2];
          v46 = *v71;
          v47 = sub_2296DBEC0(v43);
          v49 = *(v46 + 16);
          v50 = (v48 & 1) == 0;
          v38 = __OFADD__(v49, v50);
          v51 = v49 + v50;
          if (v38)
          {
            goto LABEL_26;
          }

          v52 = v48;
          if (*(v46 + 24) < v51)
          {
            v53 = v71;
            sub_2298941B0(v51, 1);
            v54 = *v53;
            v47 = sub_2296DBEC0(v72);
            if ((v52 & 1) != (v55 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v52)
          {
            goto LABEL_11;
          }

          v56 = v72;
          v57 = *v71;
          *(*v71 + 8 * (v47 >> 6) + 64) |= 1 << v47;
          v58 = v47;
          v42(v57[6] + *(v69 + 72) * v47, v56, v70);
          v59 = (v57[7] + 24 * v58);
          *v59 = v44;
          v59[1] = v45;
          v59[2] = v20;
          v60 = v57[2];
          v38 = __OFADD__(v60, 1);
          v61 = v60 + 1;
          if (v38)
          {
            goto LABEL_27;
          }

          ++v40;
          v57[2] = v61;
          if (v65 == v40)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v32 = swift_allocError();
    swift_willThrow();
    v75 = v32;
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v69 + 8))(v72, v70);
      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_22A4DE67C();
  __break(1u);
LABEL_29:
  v73 = 0;
  v74 = 0xE000000000000000;
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD00000000000001BLL, 0x800000022A590BE0);
  sub_22A4DE31C();
  MEMORY[0x22AAD08C0](39, 0xE100000000000000);
  sub_22A4DE39C();
  __break(1u);
}

void *sub_2296B6AF0(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8814C0, &unk_22A583F10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v52 - v4;
  v58 = sub_22A4DBC3C();
  v56 = *(v58 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  v61 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE48, &qword_22A57DD40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v52 - v10;
  v12 = sub_22A4DBAEC();
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  MEMORY[0x28223BE20](v12);
  v63 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    return result;
  }

  v16 = result;
  v17 = [result wifiInfo];

  if (v17)
  {
    v18 = [objc_opt_self() wifiNetworkInfoFromProto_];
  }

  else
  {
    v18 = 0;
  }

  result = [a1 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
    goto LABEL_57;
  }

  v19 = result;
  v20 = [result networkInfos];

  v62 = v5;
  if (v20 && (v65 = 0, sub_229562F68(0, &unk_27D8802D0, 0x277CD1718), sub_22A4DD82C(), v20, (v21 = v65) != 0))
  {
    v22 = v65 & 0xFFFFFFFFFFFFFF8;
    if (v65 >> 62)
    {
      goto LABEL_27;
    }

    v23 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v53 = a1;
    for (i = v18; v23; i = v18)
    {
      a1 = 0;
      v18 = (v57 + 48);
      v59 = (v57 + 32);
      v60 = v21 & 0xC000000000000001;
      v64 = MEMORY[0x277D84F90];
      v55 = v23;
      while (1)
      {
        if (v60)
        {
          v24 = MEMORY[0x22AAD13F0](a1, v21);
        }

        else
        {
          if (a1 >= *(v22 + 16))
          {
            goto LABEL_26;
          }

          v24 = *(v21 + 8 * a1 + 32);
        }

        v25 = v24;
        v26 = (a1 + 1);
        if (__OFADD__(a1, 1))
        {
          break;
        }

        sub_229800B20(v24, v11);

        if ((*v18)(v11, 1, v12) == 1)
        {
          sub_22953EAE4(v11, &qword_27D87EE48, &qword_22A57DD40);
        }

        else
        {
          v27 = v12;
          v28 = v21;
          v29 = v22;
          v30 = *v59;
          v31 = v27;
          (*v59)(v63, v11);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_22958AD60(0, v64[2] + 1, 1, v64);
          }

          v33 = v64[2];
          v32 = v64[3];
          if (v33 >= v32 >> 1)
          {
            v64 = sub_22958AD60(v32 > 1, v33 + 1, 1, v64);
          }

          v34 = v63;
          v35 = v64;
          v64[2] = v33 + 1;
          (v30)(v35 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v33, v34, v31);
          v5 = v62;
          v22 = v29;
          v21 = v28;
          v12 = v31;
          v23 = v55;
        }

        ++a1;
        if (v26 == v23)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v23 = sub_22A4DE0EC();
      v53 = a1;
    }

    v64 = MEMORY[0x277D84F90];
LABEL_29:

    a1 = v53;
    v18 = i;
  }

  else
  {
    v64 = MEMORY[0x277D84F90];
  }

  result = [a1 appleMediaAccessoryDiagnosticInfo];
  if (!result)
  {
    goto LABEL_58;
  }

  v36 = result;
  v37 = [result networkServiceInfos];

  if (v37)
  {
    v65 = 0;
    sub_229562F68(0, &unk_27D87D7A0, 0x277CD1720);
    sub_22A4DD82C();

    v38 = v65;
    if (v65)
    {
      v39 = (v65 & 0xFFFFFFFFFFFFFF8);
      if (v65 >> 62)
      {
        goto LABEL_55;
      }

      for (j = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_22A4DE0EC())
      {
        v41 = v58;
        i = v18;
        if (!j)
        {
          break;
        }

        v42 = 0;
        v63 = (v38 & 0xC000000000000001);
        v18 = (v56 + 48);
        v43 = (v56 + 32);
        v44 = MEMORY[0x277D84F90];
        v60 = v39;
        while (1)
        {
          if (v63)
          {
            v45 = MEMORY[0x22AAD13F0](v42, v38);
          }

          else
          {
            if (v42 >= v39[2])
            {
              goto LABEL_54;
            }

            v45 = *(v38 + 8 * v42 + 32);
          }

          v39 = v45;
          v46 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            break;
          }

          sub_229800F88(v45, v5);

          if ((*v18)(v5, 1, v41) == 1)
          {
            sub_22953EAE4(v5, &qword_27D8814C0, &unk_22A583F10);
          }

          else
          {
            v47 = v41;
            v48 = *v43;
            (*v43)(v61, v5, v47);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = sub_22958ADB0(0, *(v44 + 2) + 1, 1, v44);
            }

            v50 = *(v44 + 2);
            v49 = *(v44 + 3);
            if (v50 >= v49 >> 1)
            {
              v44 = sub_22958ADB0(v49 > 1, v50 + 1, 1, v44);
            }

            *(v44 + 2) = v50 + 1;
            v51 = v58;
            v48(&v44[((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v50], v61, v58);
            v41 = v51;
            v5 = v62;
          }

          v39 = v60;
          ++v42;
          if (v46 == j)
          {
            goto LABEL_51;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        ;
      }

LABEL_51:
    }
  }

  return v64;
}

uint64_t sub_2296B7214(uint64_t a1)
{
  v2 = type metadata accessor for NetworkDetectAccessory();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for NetworkDetectAccessory()
{
  result = qword_281402398;
  if (!qword_281402398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2296B72BC(void *a1, uint64_t a2)
{
  v91 = a1;
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v84 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v99 = &v83 - v9;
  MEMORY[0x28223BE20](v8);
  v86 = &v83 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE40, &qword_22A57DD38);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v96 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v93 = &v83 - v15;
  v16 = *(a2 + 64);
  v95 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v94 = (v17 + 63) >> 6;
  v88 = v4;
  v89 = (v4 + 16);
  v97 = (v4 + 32);
  v92 = (v4 + 8);
  v87 = a2;

  v20 = 0;
  v85 = MEMORY[0x277D84F98];
  v90 = v3;
  while (2)
  {
    while (2)
    {
      v22 = v94;
      for (i = v95; ; i = v95)
      {
        if (!v19)
        {
          if (v22 <= v20 + 1)
          {
            v24 = v20 + 1;
          }

          else
          {
            v24 = v22;
          }

          v25 = v24 - 1;
          v26 = v96;
          while (1)
          {
            v23 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            if (v23 >= v22)
            {
              v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE38, &qword_22A57DD28);
              (*(*(v55 - 8) + 56))(v26, 1, 1, v55);
              v19 = 0;
              v20 = v25;
              goto LABEL_18;
            }

            v19 = *(i + 8 * v23);
            ++v20;
            if (v19)
            {
              v20 = v23;
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_48;
        }

        v23 = v20;
LABEL_17:
        v27 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v28 = v27 | (v23 << 6);
        v29 = v87;
        v30 = v88;
        (*(v88 + 16))(v86, *(v87 + 48) + *(v88 + 72) * v28, v3);
        v31 = (*(v29 + 56) + 24 * v28);
        v32 = *v31;
        v33 = v31[1];
        v34 = v31[2];
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE38, &qword_22A57DD28);
        v36 = &v96[*(v35 + 48)];
        v37 = *(v30 + 32);
        v26 = v96;
        v37();
        *v36 = v32;
        *(v36 + 1) = v33;
        *(v36 + 2) = v34;
        (*(*(v35 - 8) + 56))(v26, 0, 1, v35);
        v38 = v34;

LABEL_18:
        v39 = v93;
        sub_22957F2F8(v26, v93, &qword_27D87EE40, &qword_22A57DD38);
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE38, &qword_22A57DD28);
        if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
        {

          return v85;
        }

        v41 = (v39 + *(v40 + 48));
        v42 = v41[1];
        v98 = *v41;
        v43 = v41[2];
        (*v97)(v99, v39, v3);
        if (!v43)
        {
LABEL_33:
          v44 = v43;
          goto LABEL_36;
        }

        v44 = v43;
        v45 = [v44 SSID];
        if (v45)
        {
          v46 = v45;
          v47 = sub_22A4DD5EC();
          v49 = v48;
        }

        else
        {
          v47 = 0;
          v49 = 0;
        }

        v50 = [v91 SSID];
        if (!v50)
        {
          if (v49)
          {
LABEL_34:

            v3 = v90;
            goto LABEL_36;
          }

          goto LABEL_30;
        }

        v51 = v50;
        v52 = sub_22A4DD5EC();
        v54 = v53;

        if (!v49)
        {
          break;
        }

        if (!v54)
        {
          goto LABEL_34;
        }

        if (v47 == v52 && v49 == v54)
        {

LABEL_30:

          v3 = v90;
          goto LABEL_6;
        }

        v56 = sub_22A4DE60C();

        v3 = v90;
        if ((v56 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_6:

        (*v92)(v99, v3);
        v22 = v94;
      }

      v3 = v90;
      if (!v54)
      {
        goto LABEL_6;
      }

LABEL_36:
      v57 = *v89;
      v58 = v84;
      (*v89)(v84, v99, v3);
      v83 = v44;

      v59 = v85;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100 = v59;
      v61 = sub_2296DBEC0(v58);
      v63 = v59[2];
      v64 = (v62 & 1) == 0;
      v65 = __OFADD__(v63, v64);
      v66 = v63 + v64;
      if (v65)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v67 = v62;
      if (v59[3] >= v66)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v81 = v61;
          sub_229898590();
          v61 = v81;
        }
      }

      else
      {
        sub_2298941B0(v66, isUniquelyReferenced_nonNull_native);
        v61 = sub_2296DBEC0(v84);
        if ((v67 & 1) != (v68 & 1))
        {
          goto LABEL_50;
        }
      }

      v85 = v100;
      if (v67)
      {
        v69 = (v100[7] + 24 * v61);
        v70 = *v69;
        v71 = v69[1];
        v72 = v69[2];
        *v69 = v98;
        v69[1] = v42;
        v69[2] = v43;

        v73 = *v92;
        (*v92)(v84, v3);
        v73(v99, v3);
        continue;
      }

      break;
    }

    v100[(v61 >> 6) + 8] |= 1 << v61;
    v74 = v84;
    v75 = v88;
    v76 = v61;
    v57(v85[6] + *(v88 + 72) * v61, v84, v3);
    v77 = (v85[7] + 24 * v76);
    *v77 = v98;
    v77[1] = v42;
    v77[2] = v43;

    v78 = *(v75 + 8);
    v78(v74, v3);
    v78(v99, v3);
    v79 = v85[2];
    v65 = __OFADD__(v79, 1);
    v80 = v79 + 1;
    if (!v65)
    {
      v85[2] = v80;
      continue;
    }

    break;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_22A4DE67C();
  __break(1u);
  return result;
}

uint64_t sub_2296B7AC4(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_22A4DBC3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 networkGatewayIPAddress];
  if (!result)
  {
    return result;
  }

  v51 = v6;
  v12 = result;
  v52 = sub_22A4DD5EC();
  v14 = v13;

  v15 = [a1 networkGatewayMACAddress];
  if (!v15)
  {
LABEL_31:

    return 0;
  }

  v16 = v15;
  v46 = sub_22A4DD5EC();
  v47 = v17;

  if (!a3)
  {
LABEL_15:
    v30 = *(a2 + 16);
    if (v30)
    {
      v49 = *(v7 + 16);
      v50 = v7 + 16;
      v31 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v32 = (v7 + 8);
      v48 = *(v7 + 72);
      v49(v10, v31, v51);
      while (1)
      {
        v34 = sub_22A4DBBEC();
        if (v35)
        {
          v36 = v34;
          v37 = v35;
          v55 = v34;
          v56 = v35;
          v53 = v52;
          v54 = v14;
          sub_22962F254();
          if (sub_22A4DDFFC())
          {
            v55 = v36;
            v56 = v37;
            v53 = v46;
            v54 = v47;
            v38 = sub_22A4DDFFC();

            if (v38)
            {
              (*v32)(v10, v51);

              goto LABEL_35;
            }
          }

          else
          {
          }
        }

        v39 = sub_22A4DBBFC();
        if (v40)
        {
          v41 = v39;
          v42 = v40;
          v55 = v39;
          v56 = v40;
          v53 = v52;
          v54 = v14;
          sub_22962F254();
          if (sub_22A4DDFFC())
          {
            v55 = v41;
            v56 = v42;
            v53 = v46;
            v54 = v47;
            v43 = sub_22A4DDFFC();
            v33 = v51;
            (*v32)(v10, v51);

            if (v43)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v33 = v51;
            (*v32)(v10, v51);
          }
        }

        else
        {
          v33 = v51;
          (*v32)(v10, v51);
        }

        v31 += v48;
        if (!--v30)
        {
          break;
        }

        v49(v10, v31, v33);
      }
    }

    goto LABEL_31;
  }

  v18 = a3;
  v19 = [v18 networkGatewayIPAddress];
  if (!v19)
  {
    goto LABEL_14;
  }

  v20 = v19;
  v21 = sub_22A4DD5EC();
  v23 = v22;

  if (v21 == v52 && v23 == v14)
  {

    goto LABEL_10;
  }

  v24 = sub_22A4DE60C();

  if ((v24 & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_10:
  v25 = [v18 networkGatewayMACAddress];
  if (!v25)
  {
    goto LABEL_14;
  }

  v26 = v25;
  v27 = sub_22A4DD5EC();
  v29 = v28;

  if (v27 == v46 && v29 == v47)
  {

    return 1;
  }

  v44 = sub_22A4DE60C();

  if ((v44 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_34:

LABEL_35:

  return 1;
}

uint64_t sub_2296B7F30(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v34 = a2;
  v46 = a4;
  v35 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE38, &qword_22A57DD28);
  v5 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v34 - v6;
  v43 = sub_22A4DB7DC();
  v7 = *(*(v43 - 8) + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v47 = a3;
  v12 = *(a3 + 64);
  v38 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v36 = 0;
  v37 = (v13 + 63) >> 6;
  v49 = v9;
  v40 = v9 + 8;
  v41 = v9 + 16;
  while (v15)
  {
    v16 = __clz(__rbit64(v15));
    v48 = (v15 - 1) & v15;
LABEL_11:
    v19 = v16 | (v11 << 6);
    v20 = v47;
    v21 = *(v49 + 16);
    v22 = v42;
    v23 = v43;
    v21(v42, v47[6] + *(v49 + 72) * v19, v43);
    v24 = v20[7];
    v39 = v19;
    v25 = (v24 + 24 * v19);
    v27 = *v25;
    v26 = v25[1];
    v28 = v25[2];
    v29 = v44;
    v21(v44, v22, v23);
    v30 = (v29 + *(v45 + 48));
    *v30 = v27;
    v30[1] = v26;
    v30[2] = v28;
    v31 = v28;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v32 = v31;
    LOBYTE(v28) = sub_2296B7AC4(v46, v26, v28);
    sub_22953EAE4(v29, &qword_27D87EE38, &qword_22A57DD28);

    result = (*(v49 + 8))(v22, v23);
    v15 = v48;
    if ((v28 & 1) == 0)
    {
      *(v35 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        return sub_229772E24(v35, v34, v36, v47);
      }
    }
  }

  v17 = v11;
  while (1)
  {
    v11 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v11 >= v37)
    {
      return sub_229772E24(v35, v34, v36, v47);
    }

    v18 = *(v38 + 8 * v11);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v48 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2296B8258(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;
  v9 = v8;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      v15 = v9;
      v11 = sub_2296B64C8(v14, v6, a1, v15);
      MEMORY[0x22AAD4E50](v14, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v8);
  bzero(v16 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v6);
  v10 = v9;
  v11 = sub_2296B7F30((v16 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a1, v10);

  if (v2)
  {
    swift_willThrow();
  }

LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_2296B8404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkDetectAccessory();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296B8468(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_229586D38;

  return sub_2296B39CC(a1, a2, v6, v7, v8);
}

uint64_t sub_2296B852C(uint64_t a1)
{
  v4 = *(type metadata accessor for NetworkDetectAccessory() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229569B30;

  return sub_2296B463C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_2296B8630(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229569B30;

  return sub_22977C8E0(a1, v5);
}

unint64_t sub_2296B86E8()
{
  result = qword_27D87EE70;
  if (!qword_27D87EE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87EE68, &unk_22A57DD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87EE70);
  }

  return result;
}

uint64_t sub_2296B879C()
{
  result = sub_22A4DB7DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2296B8830(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2296B8878(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2296B88C8()
{
  v1[2] = v0;
  v2 = sub_22A4DD07C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296B8988, 0, 0);
}

uint64_t sub_2296B8988()
{
  v23 = v0;
  v1 = v0[5];
  v2 = v0[2];
  sub_2296B8FBC();
  sub_2297A46D4();
  v3 = v2;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = v0[2];
    v21 = v0[5];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315394;
    v13 = [v10 logIdentifier];
    v14 = sub_22A4DD5EC();
    v16 = v15;

    v17 = sub_2295A3E30(v14, v16, &v22);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2295A3E30(0xD00000000000001CLL, 0x800000022A590C70, &v22);
    _os_log_impl(&dword_229538000, v4, v5, "%s-%s Home energy cost context is unavailable", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v11, -1, -1);

    (*(v7 + 8))(v21, v9);
  }

  else
  {

    (*(v7 + 8))(v8, v9);
  }

  v18 = v0[5];

  v19 = v0[1];

  return v19(0);
}

uint64_t sub_2296B8D0C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2296B8DB4;

  return sub_2296B88C8();
}

uint64_t sub_2296B8DB4(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v5)
  {
    v8 = *(v3 + 24);
    v8[2](v8, a1 & 1);
    _Block_release(v8);
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_2296B8F10()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_2296B8D0C(v2, v3);
}

unint64_t sub_2296B8FBC()
{
  result = qword_2814017B0;
  if (!qword_2814017B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814017B0);
  }

  return result;
}

uint64_t sub_2296B9008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_22A4DB78C() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_2296B9074(uint64_t *a1, char a2, int a3)
{
  LODWORD(v88) = a3;
  v87 = a1;
  v84 = *v3;
  v5 = sub_22A4DD07C();
  v85 = *(v5 - 8);
  v86 = v5;
  v6 = *(v85 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v79 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v78 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE80, &qword_22A57DEC0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v71 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE88, &qword_22A57DEC8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v75 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v80 = &v71 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v71 - v21;
  v23 = type metadata accessor for NetworkDiagnosticsSymptomReporter.State(0);
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = MEMORY[0x28223BE20](v23);
  v77 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v76 = &v71 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v71 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v71 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v71 - v36;
  v38 = sub_22A4DB7DC();
  v39 = *(v38 - 8);
  v82 = *(v39 + 16);
  v83 = v38;
  v81 = v39 + 16;
  v82(v35, v87);
  v35[*(v23 + 20)] = a2;
  v35[*(v23 + 24)] = (a2 | v88) & 1;
  sub_2296B9BD8(v35, v37);
  v88 = v37;
  sub_2296B9C3C(v37, v22);
  v73 = v24[7];
  v73(v22, 0, 1, v23);
  v40 = OBJC_IVAR____TtC13HomeKitDaemon33NetworkDiagnosticsSymptomReporter_lastReportedState;
  swift_beginAccess();
  v41 = *(v11 + 56);
  sub_2296B9CA0(v22, v14);
  v87 = v3;
  v74 = v40;
  sub_2296B9CA0(v3 + v40, &v14[v41]);
  v42 = v24[6];
  if (v42(v14, 1, v23) == 1)
  {
    sub_22953EAE4(v22, &qword_27D87EE88, &qword_22A57DEC8);
    if (v42(&v14[v41], 1, v23) == 1)
    {
      sub_2296B9D10(v88);
      return sub_22953EAE4(v14, &qword_27D87EE88, &qword_22A57DEC8);
    }

    goto LABEL_6;
  }

  v44 = v80;
  sub_2296B9CA0(v14, v80);
  if (v42(&v14[v41], 1, v23) == 1)
  {
    sub_22953EAE4(v22, &qword_27D87EE88, &qword_22A57DEC8);
    sub_2296B9D10(v44);
LABEL_6:
    v72 = v24 + 7;
    v45 = &qword_27D87EE80;
    v46 = &qword_22A57DEC0;
LABEL_10:
    sub_22953EAE4(v14, v45, v46);
    v48 = v87;
    v49 = v88;
LABEL_11:
    v50 = type metadata accessor for NetworkDiagnosticsSymptom();
    v89[3] = v50;
    v89[4] = &off_283CE23D8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v89);
    v52 = *(v49 + *(v23 + 20));
    v53 = *(v49 + *(v23 + 24));
    v55 = v82;
    v54 = v83;
    (v82)(boxed_opaque_existential_1 + v50[6], v48 + OBJC_IVAR____TtC13HomeKitDaemon33NetworkDiagnosticsSymptomReporter_homeUUID, v83);
    v55(boxed_opaque_existential_1 + v50[7], v49, v54);
    *boxed_opaque_existential_1 = v52;
    *(boxed_opaque_existential_1 + 1) = v53;
    v56 = (boxed_opaque_existential_1 + v50[8]);
    *v56 = 0xD000000000000022;
    v56[1] = 0x800000022A590D10;
    sub_2295FEE90(v89);
    __swift_destroy_boxed_opaque_existential_0(v89);
    v57 = v75;
    sub_2296B9C3C(v49, v75);
    v73(v57, 0, 1, v23);
    v58 = v74;
    swift_beginAccess();
    sub_2296B9D6C(v57, v48 + v58);
    swift_endAccess();
    v59 = v78;
    sub_229541CB0(v84, &off_283CDFE08);
    v60 = v76;
    sub_2296B9C3C(v49, v76);
    v61 = v77;
    sub_2296B9C3C(v49, v77);
    v62 = sub_22A4DD05C();
    v63 = sub_22A4DDCCC();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 67109376;
      v65 = v60;
      v66 = *(v60 + *(v23 + 20));
      sub_2296B9D10(v65);
      *(v64 + 4) = v66;
      *(v64 + 8) = 1024;
      v67 = *(v61 + *(v23 + 24));
      sub_2296B9D10(v61);
      *(v64 + 10) = v67;
      _os_log_impl(&dword_229538000, v62, v63, "Sent Network Diagnostics symptom (isPrimaryResident=%{BOOL}d, canReachPrimaryResident=%{BOOL}d)", v64, 0xEu);
      MEMORY[0x22AAD4E50](v64, -1, -1);
    }

    else
    {
      sub_2296B9D10(v61);
      sub_2296B9D10(v60);
    }

    (*(v85 + 8))(v59, v86);
    return sub_2296B9D10(v49);
  }

  v72 = v24 + 7;
  sub_2296B9BD8(&v14[v41], v32);
  v47 = sub_22A4DB78C();
  sub_22953EAE4(v22, &qword_27D87EE88, &qword_22A57DEC8);
  if ((v47 & 1) == 0 || *(v44 + *(v23 + 20)) != v32[*(v23 + 20)])
  {
    sub_2296B9D10(v32);
    sub_2296B9D10(v44);
    v45 = &qword_27D87EE88;
    v46 = &qword_22A57DEC8;
    goto LABEL_10;
  }

  v68 = *(v23 + 24);
  v69 = *(v44 + v68);
  v70 = v32[v68];
  sub_2296B9D10(v32);
  sub_2296B9D10(v44);
  sub_22953EAE4(v14, &qword_27D87EE88, &qword_22A57DEC8);
  v48 = v87;
  v49 = v88;
  if (v69 != v70)
  {
    goto LABEL_11;
  }

  return sub_2296B9D10(v49);
}

uint64_t sub_2296B98F4()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon33NetworkDiagnosticsSymptomReporter_homeUUID;
  v2 = sub_22A4DB7DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13HomeKitDaemon33NetworkDiagnosticsSymptomReporter_symptomReporter));
  sub_22953EAE4(v0 + OBJC_IVAR____TtC13HomeKitDaemon33NetworkDiagnosticsSymptomReporter_lastReportedState, &qword_27D87EE88, &qword_22A57DEC8);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_2296B99E8()
{
  v0 = sub_22A4DB7DC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2296B9ABC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2296B9ABC()
{
  if (!qword_2814020F0)
  {
    type metadata accessor for NetworkDiagnosticsSymptomReporter.State(255);
    v0 = sub_22A4DDF9C();
    if (!v1)
    {
      atomic_store(v0, &qword_2814020F0);
    }
  }
}

uint64_t sub_2296B9B5C()
{
  result = sub_22A4DB7DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2296B9BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkDiagnosticsSymptomReporter.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296B9C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkDiagnosticsSymptomReporter.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296B9CA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE88, &qword_22A57DEC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296B9D10(uint64_t a1)
{
  v2 = type metadata accessor for NetworkDiagnosticsSymptomReporter.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2296B9D6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE88, &qword_22A57DEC8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296B9DEC()
{
  v1 = [*v0 serviceType];
  v2 = sub_22A4DD5EC();
  v4 = v3;

  v6[3] = MEMORY[0x277D837D0];
  v6[4] = &off_283CDFC68;
  v6[0] = v2;
  v6[1] = v4;
  return sub_229890DC4(v6, 0x5465636976726573, 0xEB00000000657079);
}

id sub_2296B9EB8()
{
  v2.receiver = v0;
  v2.super_class = _s15SwiftExtensionsCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2296BA018()
{
  v1 = v0;
  v2 = _s15SwiftExtensionsCMa();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtCE13HomeKitDaemonCSo14HMDHomeManagerP33_A2017DEA629FAA91F481E814718C0BF815SwiftExtensions_homeGraphIndexer] = 0;
  *&v3[OBJC_IVAR____TtCE13HomeKitDaemonCSo14HMDHomeManagerP33_A2017DEA629FAA91F481E814718C0BF815SwiftExtensions_hindsightDigestController] = 0;
  v4 = [v0 workQueue];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for DispatchQueueMonitor();
    swift_allocObject();
    *&v3[OBJC_IVAR____TtCE13HomeKitDaemonCSo14HMDHomeManagerP33_A2017DEA629FAA91F481E814718C0BF815SwiftExtensions_dispatchQueueMonitor] = sub_2296EF3BC(v5, 0x8AC7230489E80000, 0, 0x8AC7230489E80000, 0);
    v7.receiver = v3;
    v7.super_class = v2;
    v6 = objc_msgSendSuper2(&v7, sel_init);
    [v1 setSwiftExtensions_];
  }

  else
  {
    __break(1u);
  }
}

id sub_2296BA158()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v46 = &v43 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EEA8, &qword_22A57DFA8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = &v43 - v6;
  v7 = [v0 _swiftExtensions];
  type metadata accessor for HomeGraphIndexer(0);
  v8 = v0;
  sub_2295D20D0(v8);
  v9 = *&v7[OBJC_IVAR____TtCE13HomeKitDaemonCSo14HMDHomeManagerP33_A2017DEA629FAA91F481E814718C0BF815SwiftExtensions_homeGraphIndexer];
  *&v7[OBJC_IVAR____TtCE13HomeKitDaemonCSo14HMDHomeManagerP33_A2017DEA629FAA91F481E814718C0BF815SwiftExtensions_homeGraphIndexer] = v10;

  result = [v8 messageDispatcher];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = result;
  v13 = *MEMORY[0x277CD01E8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v14 = swift_allocObject();
  v47 = xmmword_22A576190;
  *(v14 + 16) = xmmword_22A576190;
  v15 = objc_opt_self();
  *(v14 + 32) = [v15 policyWithEntitlements_];
  sub_22960A928();
  v16 = sub_22A4DD81C();

  [v12 registerForMessage:v13 receiver:v8 policies:v16 selector:sel_handleFindVendorAccessoryRequest_];

  result = [v8 messageDispatcher];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = result;
  v18 = sub_22A4DD5AC();
  v19 = swift_allocObject();
  *(v19 + 16) = v47;
  *(v19 + 32) = [objc_opt_self() defaultSecurePolicy];
  v20 = sub_22A4DD81C();

  [v17 registerForMessage:v18 receiver:v8 policies:v20 selector:sel_handleRemoteEnergyKitClearAllMessage_];

  result = [v8 messageDispatcher];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v21 = result;
  v22 = sub_22A4DDC5C();
  v23 = swift_allocObject();
  *(v23 + 16) = v47;
  *(v23 + 32) = [v15 policyWithEntitlements_];
  v24 = sub_22A4DD81C();

  [v21 registerForMessage:v22 receiver:v8 policies:v24 selector:sel_handleLocalEnergyKitClearAllMessage_];

  result = [v8 featuresDataSource];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v25 = [result isActivityHistory2025Enabled];
  swift_unknownObjectRelease();
  if (v25)
  {
    v26 = type metadata accessor for HindsightDigestController.Configuration(0);
    v27 = v44;
    (*(*(v26 - 8) + 56))(v44, 1, 1, v26);
    v28 = type metadata accessor for HindsightDigestController(0);
    memset(v48, 0, sizeof(v48));
    v49 = 0;
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v31 = v8;
    v32 = sub_2296BC4AC(v31, v27, v48);
    v33 = [v31 _swiftExtensions];
    v34 = *&v33[OBJC_IVAR____TtCE13HomeKitDaemonCSo14HMDHomeManagerP33_A2017DEA629FAA91F481E814718C0BF815SwiftExtensions_hindsightDigestController];
    *&v33[OBJC_IVAR____TtCE13HomeKitDaemonCSo14HMDHomeManagerP33_A2017DEA629FAA91F481E814718C0BF815SwiftExtensions_hindsightDigestController] = v32;

    v35 = sub_22A4DD9DC();
    v36 = v46;
    (*(*(v35 - 8) + 56))(v46, 1, 1, v35);
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v38 = ObjectType;
    v37[4] = v32;
    v37[5] = v38;
    sub_22957F3C0(0, 0, v36, &unk_22A57DFC8, v37);
  }

  result = isInternalBuild();
  if (result)
  {
    v39 = sub_22A4DD9DC();
    v40 = v46;
    (*(*(v39 - 8) + 56))(v46, 1, 1, v39);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = v8;
    v42 = v8;
    sub_22957F3C0(0, 0, v40, &unk_22A57DFB8, v41);
  }

  return result;
}

uint64_t sub_2296BA720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for HindsightDigestController.TaskConfiguration(0);
  v5[4] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v8 = sub_22A4DD07C();
  v5[6] = v8;
  v9 = *(v8 - 8);
  v5[7] = v9;
  v10 = *(v9 + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296BA828, 0, 0);
}

uint64_t sub_2296BA828()
{
  v1 = v0[10];
  v2 = v0[3];
  sub_22A4DDBFC();
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_229538000, v3, v4, "Scheduling hindsight digest task", v5, 2u);
    MEMORY[0x22AAD4E50](v5, -1, -1);
  }

  v6 = v0[10];
  v7 = v0[6];
  v8 = v0[7];
  v10 = v0[4];
  v9 = v0[5];

  v11 = *(v8 + 8);
  v0[11] = v11;
  v11(v6, v7);
  v12 = v9 + *(v10 + 28);
  sub_22A4DD98C();
  *v9 = xmmword_22A57DF50;
  *(v9 + 16) = 6;
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_2296BA99C;
  v14 = v0[5];
  v15 = v0[2];

  return sub_2296BBD98(v14);
}

uint64_t sub_2296BA99C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 104) = v0;

  sub_2296BBD3C(v3);
  if (v0)
  {
    v4 = sub_2296BABF4;
  }

  else
  {
    v4 = sub_2296BAACC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2296BAACC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  sub_22A4DDBFC();
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDD0C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_229538000, v3, v4, "Scheduled hindsight digest task", v5, 2u);
    MEMORY[0x22AAD4E50](v5, -1, -1);
  }

  v6 = *(v0 + 80);
  v7 = *(v0 + 64);
  v8 = *(v0 + 40);
  v9 = *(v0 + 56) + 8;
  (*(v0 + 88))(*(v0 + 72), *(v0 + 48));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2296BABF4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);
  v3 = *(v0 + 24);
  sub_22A4DDBFC();
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 104);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_229538000, v5, v6, "Failed to schedule hindsight digest task: %@", v9, 0xCu);
    sub_2295A1C40(v10);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 80);
  v14 = *(v0 + 72);
  v15 = *(v0 + 40);
  v16 = *(v0 + 56) + 8;
  (*(v0 + 88))(*(v0 + 64), *(v0 + 48));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2296BADBC()
{
  v1 = [*(v0 + 16) _swiftExtensions];
  v2 = *&v1[OBJC_IVAR____TtCE13HomeKitDaemonCSo14HMDHomeManagerP33_A2017DEA629FAA91F481E814718C0BF815SwiftExtensions_dispatchQueueMonitor];
  *(v0 + 24) = v2;

  return MEMORY[0x2822009F8](sub_2296BAE54, v2, 0);
}

uint64_t sub_2296BAE54()
{
  v1 = *(v0 + 24);
  sub_22953E86C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2296BB08C(void *a1, void *aBlock, void *a3)
{
  v3[4] = a1;
  v3[5] = a3;
  v3[6] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_2296BB118, 0, 0);
}

uint64_t sub_2296BB118()
{
  super_class = v0[2].super_class;
  v2 = type metadata accessor for NetworkMismatchDetector();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC13HomeKitDaemon23NetworkMismatchDetector_dataSource + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_283CDF2A8;
  swift_unknownObjectWeakAssign();
  v0[1].receiver = v3;
  v0[1].super_class = v2;
  v0[3].super_class = objc_msgSendSuper2(v0 + 1, sel_init);
  v4 = swift_task_alloc();
  v0[4].receiver = v4;
  *v4 = v0;
  v4[1] = sub_2296BB21C;
  receiver = v0[2].receiver;

  return sub_2296B4CD4(receiver);
}

uint64_t sub_2296BB21C(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_2296BB31C, 0, 0);
}

uint64_t sub_2296BB31C()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  v4 = *(v0 + 72);
  if (v1)
  {
    v5 = *(v0 + 48);
    v5[2](v5, *(v0 + 72));

    _Block_release(v5);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2296BB3E0()
{
  if (qword_281402D50 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229569B30;

  return sub_229628B98();
}

uint64_t sub_2296BB600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_2296BB620, 0, 0);
}

uint64_t sub_2296BB620()
{
  v1 = [*(v0 + 24) _swiftExtensions];
  v2 = *&v1[OBJC_IVAR____TtCE13HomeKitDaemonCSo14HMDHomeManagerP33_A2017DEA629FAA91F481E814718C0BF815SwiftExtensions_homeGraphIndexer];
  *(v0 + 32) = v2;

  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_2296BB72C;

    return sub_2295D263C();
  }

  else
  {
    **(v0 + 16) = *(v0 + 32) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2296BB72C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2296BB844, 0, 0);
}

uint64_t sub_2296BB974(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_2296BB600(a1, v4, v5, v6);
}

uint64_t sub_2296BBA28()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_2296BB3C4();
}

uint64_t sub_2296BBAD4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_2296BB08C(v2, v3, v4);
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2296BBBC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_2296BAD9C(a1, v4, v5, v6);
}

uint64_t sub_2296BBC7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2296BA720(a1, v4, v5, v7, v6);
}

uint64_t sub_2296BBD3C(uint64_t a1)
{
  v2 = type metadata accessor for HindsightDigestController.TaskConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2296BBD98(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = *v1;
  v3 = type metadata accessor for HindsightDigestController.TaskConfiguration(0);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v5 = sub_22A4DD07C();
  v2[10] = v5;
  v6 = *(v5 - 8);
  v2[11] = v6;
  v7 = *(v6 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296BBEBC, 0, 0);
}

uint64_t sub_2296BBEBC()
{
  v31 = v0;
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[4];
  sub_229541CB0(v0[6], &off_283CDFFD0);
  sub_229568DA8(v3, v2);
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDD0C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  v8 = v0[12];
  v10 = v0[9];
  v9 = v0[10];
  if (v6)
  {
    v12 = v0[7];
    v11 = v0[8];
    v28 = v0[12];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v13 = 136315138;
    sub_229568DA8(v10, v11);
    v15 = sub_22A4DD64C();
    v17 = v16;
    sub_2296BD150(v10, type metadata accessor for HindsightDigestController.TaskConfiguration);
    v18 = sub_2295A3E30(v15, v17, &v30);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_229538000, v4, v5, "Scheduling task: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAD4E50](v14, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    (*(v7 + 8))(v28, v9);
  }

  else
  {

    sub_2296BD150(v10, type metadata accessor for HindsightDigestController.TaskConfiguration);
    (*(v7 + 8))(v8, v9);
  }

  v19 = v0[5];
  v20 = v0[6];
  swift_weakInit();
  swift_weakAssign();
  v21 = v19 + OBJC_IVAR____TtC13HomeKitDaemon25HindsightDigestController_configuration;
  v22 = type metadata accessor for HindsightDigestController.Configuration(0);
  __swift_project_boxed_opaque_existential_0((v21 + *(v22 + 20)), *(v21 + *(v22 + 20) + 24));
  sub_229564F88((v0 + 2), (v0 + 3), &unk_27D87EF70, &qword_22A57E0E8);
  v23 = swift_allocObject();
  v0[13] = v23;
  sub_22957F2F8((v0 + 3), v23 + 16, &unk_27D87EF70, &qword_22A57E0E8);
  *(v23 + 24) = v20;
  v29 = off_283CDC478 + *off_283CDC478;
  v24 = *(off_283CDC478 + 1);
  v25 = swift_task_alloc();
  v0[14] = v25;
  *v25 = v0;
  v25[1] = sub_2296BC244;
  v26 = v0[4];

  return (v29)(0xD000000000000036, 0x800000022A590F50, v26, &unk_22A57E0F0, v23, &_s16DefaultSchedulerVN, &off_283CDC470);
}

uint64_t sub_2296BC244()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_2296BC410;
  }

  else
  {
    v4 = sub_2296BC374;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2296BC374()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  sub_22953EAE4((v0 + 2), &unk_27D87EF70, &qword_22A57E0E8);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2296BC410()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  sub_22953EAE4((v0 + 2), &unk_27D87EF70, &qword_22A57E0E8);

  v4 = v0[1];
  v5 = v0[15];

  return v4();
}

id sub_2296BC4AC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EEA8, &qword_22A57DFA8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for HindsightDigestController.Configuration(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v16 = swift_unknownObjectWeakAssign();
  sub_22957F2F8(v16, v3 + 16, &qword_27D87EF68, &qword_22A57E0D0);
  sub_229564F88(a2, v10, &qword_27D87EEA8, &qword_22A57DFA8);
  v17 = *(v12 + 48);
  if (v17(v10, 1, v11) == 1)
  {
    result = [a1 featuresDataSource];
    if (result)
    {
      v19 = result;
      result = [a1 workQueue];
      if (result)
      {
        v24 = &_s16DefaultSchedulerVN;
        v25 = &off_283CDC470;
        *&v23 = result;
        *&v21 = v19;
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EF60, "6D\b");
        MEMORY[0x22AACEC10](&v21, v20);
        sub_229557188(&v23, &v15[*(v11 + 20)]);
        if (v17(v10, 1, v11) != 1)
        {
          sub_22953EAE4(v10, &qword_27D87EEA8, &qword_22A57DFA8);
        }

        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_2296BD24C(v10, v15);
LABEL_7:
  sub_2296BD24C(v15, v3 + OBJC_IVAR____TtC13HomeKitDaemon25HindsightDigestController_configuration);
  sub_229564F88(a3, &v21, &unk_27D87EF80, &unk_22A57E100);
  if (v22)
  {

    sub_22953EAE4(a3, &unk_27D87EF80, &unk_22A57E100);
    sub_22953EAE4(a2, &qword_27D87EEA8, &qword_22A57DFA8);
    sub_229557188(&v21, &v23);
  }

  else
  {
    v24 = &_s15DefaultDelegateVN;
    v25 = &off_283CE5838;

    sub_22953EAE4(a3, &unk_27D87EF80, &unk_22A57E100);
    sub_22953EAE4(a2, &qword_27D87EEA8, &qword_22A57DFA8);
    if (v22)
    {
      sub_22953EAE4(&v21, &unk_27D87EF80, &unk_22A57E100);
    }
  }

  sub_229557188(&v23, v3 + OBJC_IVAR____TtC13HomeKitDaemon25HindsightDigestController_delegate);
  return v3;
}

uint64_t sub_2296BC804(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22A4DD07C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296BC8DC, 0, 0);
}

uint64_t sub_2296BC8DC()
{
  v1 = v0[8];
  sub_229541CB0(v0[3], &off_283CDFFD0);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDD0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "Task running", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v5 = v0[8];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v9(v5, v6);
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  v11 = v0[3];
  if (Strong)
  {
    v12 = v0[6];
    v13 = v0[3];
    sub_229541CB0(v11, &off_283CDFFD0);
    v14 = sub_22A4DD05C();
    v15 = sub_22A4DDD0C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_229538000, v14, v15, "Calling delegate", v16, 2u);
      MEMORY[0x22AAD4E50](v16, -1, -1);
    }

    v18 = v0[5];
    v17 = v0[6];
    v19 = v0[4];

    v9(v17, v19);
    v20 = swift_task_alloc();
    v0[10] = v20;
    *v20 = v0;
    v20[1] = sub_2296BCC0C;

    return sub_2297C7724(Strong);
  }

  else
  {
    v22 = v0[7];
    v23 = v0[3];
    sub_229541CB0(v11, &off_283CDFFD0);
    v24 = sub_22A4DD05C();
    v25 = sub_22A4DDCEC();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[7];
    v28 = v0[4];
    v29 = v0[5];
    if (v26)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_229538000, v24, v25, "Died before running closure", v30, 2u);
      MEMORY[0x22AAD4E50](v30, -1, -1);
    }

    v9(v27, v28);
    v32 = v0[7];
    v31 = v0[8];
    v33 = v0[6];

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_2296BCC0C()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2296BCD08, 0, 0);
}

uint64_t sub_2296BCD08()
{
  v1 = v0[9];

  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2296BCD88()
{
  sub_22953EAE4(v0 + 16, &qword_27D87EF68, &qword_22A57E0D0);
  sub_2296BD150(v0 + OBJC_IVAR____TtC13HomeKitDaemon25HindsightDigestController_configuration, type metadata accessor for HindsightDigestController.Configuration);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13HomeKitDaemon25HindsightDigestController_delegate));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2296BCE50()
{
  result = type metadata accessor for HindsightDigestController.Configuration(319);
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

uint64_t sub_2296BCF14()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2296BCF5C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2296BCF7C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void sub_2296BCFE4()
{
  sub_2296BD068();
  if (v0 <= 0x3F)
  {
    sub_2296BD0CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2296BD068()
{
  if (!qword_281403848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87EF60, "6D\b");
    v0 = sub_22A4DBA5C();
    if (!v1)
    {
      atomic_store(v0, &qword_281403848);
    }
  }
}

unint64_t sub_2296BD0CC()
{
  result = qword_281402178[0];
  if (!qword_281402178[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_281402178);
  }

  return result;
}

uint64_t sub_2296BD150(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2296BD1B0()
{
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_229569B30;

  return sub_2296BC804(v0 + 16, v2);
}

uint64_t sub_2296BD24C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HindsightDigestController.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296BD2D8()
{
  result = sub_22A4DD9DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_2296BD35C(uint64_t a1)
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = [objc_msgSend(v1 currentHomeDataSource)];
  swift_unknownObjectRelease();
  if (v11)
  {
    sub_22A4DB79C();

    if (sub_22A4DB78C())
    {
      v12 = [v1 countersManager];
      v13 = objc_allocWithZone(HMDDateCounterGroupSpecifier);
      v14 = sub_22A4DD5AC();
      v15 = sub_22A4DB6AC();
      v16 = [v13 initWithGroupName:v14 date:v15];

      v17 = [v12 objectForKeyedSubscript_];
      v18 = sub_22A4DD5AC();
      v30 = [v17 fetchEventCounterForEventName_];

      v19 = sub_22A4DD5AC();
      v20 = [v17 fetchEventCounterForEventName_];

      v21 = sub_22A4DD5AC();
      v22 = [v17 fetchEventCounterForEventName_];

      (*(v4 + 16))(v8, a1, v3);
      v23 = type metadata accessor for CameraRecordingEventDailySummaryLogEvent();
      v24 = objc_allocWithZone(v23);
      *&v24[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions] = v30;
      *&v24[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numClipUploads] = v20;
      *&v24[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds] = v22;
      v24[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent] = 0;
      v25 = sub_22A4DB77C();
      v31.receiver = v24;
      v31.super_class = v23;
      v26 = objc_msgSendSuper2(&v31, sel_initWithHomeUUID_, v25);

      v27 = *(v4 + 8);
      v27(v8, v3);
      v27(v10, v3);
      return v26;
    }

    (*(v4 + 8))(v10, v3);
  }

  return 0;
}

uint64_t sub_2296BD6EC()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D87EFA0);
  __swift_project_value_buffer(v0, qword_27D87EFA0);
  v1 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_2296BD804()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F060, &qword_22A578050);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22A5761A0;
  *(v0 + 32) = sub_229562F68(0, &qword_27D87F068, off_278666098);
  result = sub_229562F68(0, &unk_27D87F070, off_2786660A0);
  *(v0 + 40) = result;
  qword_27D8AB860 = v0;
  return result;
}

uint64_t sub_2296BDA18(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + *a4);
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

id sub_2296BDA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + OBJC_IVAR___HMDCameraRecordingEventObserver_startMutex;
  *v6 = 0;
  *(v6 + 4) = 0;
  *(v5 + OBJC_IVAR___HMDCameraRecordingEventObserver_logEventDispatcher) = a1;
  *(v5 + OBJC_IVAR___HMDCameraRecordingEventObserver_countersManager) = a2;
  *(v5 + OBJC_IVAR___HMDCameraRecordingEventObserver_dailyScheduler) = a3;
  *(v5 + OBJC_IVAR___HMDCameraRecordingEventObserver_dateProvider) = a4;
  *(v5 + OBJC_IVAR___HMDCameraRecordingEventObserver_currentHomeDataSource) = a5;
  v8.super_class = HMDCameraRecordingEventObserver;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_2296BDB6C(_BYTE *a1, void *a2)
{
  if ((*a1 & 1) == 0)
  {
    if (qword_27D87B9D8 != -1)
    {
      swift_once();
    }

    v4 = sub_22A4DD07C();
    __swift_project_value_buffer(v4, qword_27D87EFA0);
    v5 = sub_22A4DD05C();
    v6 = sub_22A4DDCCC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_229538000, v5, v6, "Starting", v7, 2u);
      MEMORY[0x22AAD4E50](v7, -1, -1);
    }

    v8 = [a2 logEventDispatcher];
    if (qword_27D87B9E0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F058, &unk_22A582DE0);
    v9 = sub_22A4DD81C();
    [v8 addObserver:a2 forEventClasses:v9];
    swift_unknownObjectRelease();

    v10 = [a2 dailyScheduler];
    [v10 registerDailyTaskRunner_];

    *a1 = 1;
  }
}

_BYTE *sub_2296BDDC0(_BYTE *result, void *a2)
{
  if (*result == 1)
  {
    v3 = result;
    if (qword_27D87B9D8 != -1)
    {
      swift_once();
    }

    v4 = sub_22A4DD07C();
    __swift_project_value_buffer(v4, qword_27D87EFA0);
    v5 = sub_22A4DD05C();
    v6 = sub_22A4DDCCC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_229538000, v5, v6, "Stopping", v7, 2u);
      MEMORY[0x22AAD4E50](v7, -1, -1);
    }

    [objc_msgSend(a2 logEventDispatcher)];
    result = swift_unknownObjectRelease();
    *v3 = 0;
  }

  return result;
}

void sub_2296BDFCC(void *a1)
{
  v2 = v1;
  v4 = sub_22A4DB74C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 dateProvider];
  v10 = [v9 startOfCurrentDay];

  sub_22A4DB70C();
  v11 = [v2 countersManager];
  v12 = objc_allocWithZone(HMDDateCounterGroupSpecifier);
  v13 = sub_22A4DD5AC();
  v14 = sub_22A4DB6AC();
  v15 = [v12 initWithGroupName:v13 date:v14];

  v16 = [v11 objectForKeyedSubscript_];
  if ([a1 operationType] == 5)
  {
    v17 = sub_22A4DD5AC();
    [v16 incrementEventCounterForEventName_];

    v18 = sub_22A4DD5AC();
    [v16 incrementEventCounterForEventName:v18 withValue:{objc_msgSend(a1, sel_totalClipDurationMilliseconds)}];

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    (*(v5 + 8))(v8, v4);
  }
}

id sub_2296BE2B4()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = [objc_msgSend(v0 currentHomeDataSource)];
  swift_unknownObjectRelease();
  if (!v9)
  {
    return 0;
  }

  sub_22A4DB79C();

  (*(v2 + 32))(v8, v6, v1);
  v10 = sub_2296BD35C(v8);
  (*(v2 + 8))(v8, v1);
  return v10;
}

void sub_2296BE52C(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22A4DB74C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  if (a1)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [v3 countersManager];
  (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  aBlock[4] = sub_2296BEDD0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2296BE8F0;
  aBlock[3] = &block_descriptor_15;
  v13 = _Block_copy(aBlock);

  [v10 removeCounterGroupsBasedOnPredicate_];
  _Block_release(v13);
}

uint64_t sub_2296BE710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22A4DB74C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    swift_unknownObjectRetain();
    v11 = [v10 groupName];
    v12 = sub_22A4DD5EC();
    v14 = v13;

    v15 = [v10 date];
    sub_22A4DB70C();

    v16 = sub_22A4DB72C();
    (*(v5 + 8))(v8, v4);
    if (v16 == a3)
    {
      if (v12 == 0xD000000000000014 && 0x800000022A590F90 == v14)
      {
        v17 = 1;
      }

      else
      {
        v17 = sub_22A4DE60C();
      }
    }

    else
    {
      v17 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_2296BE8F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t sub_2296BEADC()
{
  v1 = v0;
  v2 = sub_22A4DB74C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 dateProvider];
  v8 = [v7 startOfCurrentDay];

  sub_22A4DB70C();
  v9 = sub_22A4DB6AC();
  v10 = [v1 logEventForCurrentHomeWithDate_];

  if (v10)
  {
    [objc_msgSend(v1 logEventDispatcher)];

    swift_unknownObjectRelease();
  }

  return (*(v3 + 8))(v6, v2);
}

void __swiftcall HMDCameraRecordingEventObserver.init()(HMDCameraRecordingEventObserver *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_2296BEDD0(uint64_t a1)
{
  v3 = *(sub_22A4DB74C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2296BE710(a1, v1 + v4, v5);
}

uint64_t sub_2296BEE6C()
{
  v1 = v0;
  v2 = sub_22A4DB74C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 dateProvider];
  v8 = [v7 startOfCurrentDay];

  sub_22A4DB70C();
  v9 = [v1 countersManager];
  v10 = objc_allocWithZone(HMDDateCounterGroupSpecifier);
  v11 = sub_22A4DD5AC();
  v12 = sub_22A4DB6AC();
  v13 = [v10 initWithGroupName:v11 date:v12];

  v14 = [v9 objectForKeyedSubscript_];
  v15 = sub_22A4DD5AC();
  [v14 incrementEventCounterForEventName_];

  return (*(v3 + 8))(v6, v2);
}

uint64_t _s19MatterDeviceSupportOMa()
{
  result = qword_27D87F088;
  if (!qword_27D87F088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2296BF0D4()
{
  sub_2296BF12C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_2296BF12C()
{
  if (!qword_27D87F098)
  {
    v0 = sub_22A4DCD0C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D87F098);
    }
  }
}

id sub_2296BF174()
{
  result = [objc_allocWithZone(type metadata accessor for AccountMetadata()) init];
  qword_2814050B0 = result;
  return result;
}

id sub_2296BF1E0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];

    v6 = sub_22A4DD5AC();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_2296BF258(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_22A4DD5EC();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (a1 + *a4);
  v9 = v8[1];
  *v8 = v6;
  v8[1] = v7;
}

id sub_2296BF2B8()
{
  v1 = &v0[OBJC_IVAR____TtC13HomeKitDaemon15AccountMetadata_iCloudAltDSID];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____TtC13HomeKitDaemon15AccountMetadata_firstName];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC13HomeKitDaemon15AccountMetadata_lastName];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC13HomeKitDaemon15AccountMetadata_accountStore;
  v5 = [objc_opt_self() sharedManager];
  v6 = [v5 accountStore];

  *&v0[v4] = v6;
  if (v6)
  {
    v7 = [v6 aa_primaryAppleAccount];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 aa_altDSID];
      v10 = sub_22A4DD5EC();
      v12 = v11;

      v13 = v1[1];
      *v1 = v10;
      v1[1] = v12;

      v14 = *MEMORY[0x277CB8AB0];
      *&v34 = sub_22A4DD5EC();
      *(&v34 + 1) = v15;
      swift_unknownObjectRetain();
      v16 = [v8 objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v16)
      {
        sub_22A4DE01C();
        swift_unknownObjectRelease();
      }

      else
      {
        v32 = 0u;
        v33 = 0u;
      }

      v34 = v32;
      v35 = v33;
      if (*(&v33 + 1))
      {
        v17 = swift_dynamicCast();
        v18 = v30;
        v19 = v31;
        if (!v17)
        {
          v18 = 0;
          v19 = 0;
        }
      }

      else
      {
        sub_229609094(&v34);
        v18 = 0;
        v19 = 0;
      }

      v20 = *(v2 + 1);
      *v2 = v18;
      *(v2 + 1) = v19;

      v21 = *MEMORY[0x277CB8AF0];
      *&v34 = sub_22A4DD5EC();
      *(&v34 + 1) = v22;
      v23 = [v8 objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v23)
      {
        sub_22A4DE01C();
        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease_n();
        v32 = 0u;
        v33 = 0u;
      }

      v34 = v32;
      v35 = v33;
      if (*(&v33 + 1))
      {
        v24 = swift_dynamicCast();
        v25 = v30;
        v26 = v31;
        if (!v24)
        {
          v25 = 0;
          v26 = 0;
        }
      }

      else
      {
        sub_229609094(&v34);
        v25 = 0;
        v26 = 0;
      }

      v27 = *(v3 + 1);
      *v3 = v25;
      *(v3 + 1) = v26;
    }
  }

  v28 = type metadata accessor for AccountMetadata();
  v36.receiver = v0;
  v36.super_class = v28;
  return objc_msgSendSuper2(&v36, sel_init);
}

id sub_2296BF5C8()
{
  result = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon15AccountMetadata_accountStore);
  if (result)
  {
    result = [result aa_primaryAppleAccount];
    if (result)
    {
      v2 = result;
      v3 = [result aa_altDSID];
      v4 = sub_22A4DD5EC();
      v6 = v5;

      v7 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon15AccountMetadata_iCloudAltDSID);
      v8 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon15AccountMetadata_iCloudAltDSID + 8);
      *v7 = v4;
      v7[1] = v6;

      v9 = *MEMORY[0x277CB8AB0];
      *&v29 = sub_22A4DD5EC();
      *(&v29 + 1) = v10;
      swift_unknownObjectRetain();
      v11 = [v2 objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v11)
      {
        sub_22A4DE01C();
        swift_unknownObjectRelease();
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
      }

      v29 = v27;
      v30 = v28;
      if (*(&v28 + 1))
      {
        v12 = swift_dynamicCast();
        v13 = v25;
        v14 = v26;
        if (!v12)
        {
          v13 = 0;
          v14 = 0;
        }
      }

      else
      {
        sub_229609094(&v29);
        v13 = 0;
        v14 = 0;
      }

      v15 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon15AccountMetadata_firstName);
      v16 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon15AccountMetadata_firstName + 8);
      *v15 = v13;
      v15[1] = v14;

      v17 = *MEMORY[0x277CB8AF0];
      *&v29 = sub_22A4DD5EC();
      *(&v29 + 1) = v18;
      v19 = [v2 objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v19)
      {
        sub_22A4DE01C();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease_n();
        v27 = 0u;
        v28 = 0u;
      }

      v29 = v27;
      v30 = v28;
      if (*(&v28 + 1))
      {
        v20 = swift_dynamicCast();
        v21 = v25;
        v22 = v26;
        if (!v20)
        {
          v21 = 0;
          v22 = 0;
        }
      }

      else
      {
        sub_229609094(&v29);
        v21 = 0;
        v22 = 0;
      }

      v23 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon15AccountMetadata_lastName);
      v24 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon15AccountMetadata_lastName + 8);
      *v23 = v21;
      v23[1] = v22;
    }
  }

  return result;
}

uint64_t sub_2296BF88C()
{
  v1[38] = v0;
  v1[39] = swift_getObjectType();
  v2 = sub_22A4DD07C();
  v1[40] = v2;
  v3 = *(v2 - 8);
  v1[41] = v3;
  v4 = *(v3 + 64) + 15;
  v1[42] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F128, &qword_22A57E1D0);
  v1[43] = v5;
  v6 = *(v5 - 8);
  v1[44] = v6;
  v7 = *(v6 + 64) + 15;
  v1[45] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F2E0, &qword_22A57E1D8);
  v1[46] = v8;
  v9 = *(v8 - 8);
  v1[47] = v9;
  v10 = *(v9 + 64) + 15;
  v1[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296BFA28, 0, 0);
}

uint64_t sub_2296BFA28()
{
  v1 = *(v0[38] + OBJC_IVAR____TtC13HomeKitDaemon15AccountMetadata_accountStore);
  if (v1)
  {
    v16 = v0 + 26;
    v2 = v0 + 10;
    v4 = v0[47];
    v3 = v0[48];
    v5 = v0[46];
    v0[10] = v0;
    v0[15] = v0 + 36;
    v0[11] = sub_2296BFDF0;
    swift_continuation_init();
    v0[33] = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F138, &qword_22A57E1E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_22A4DD8DC();
    (*(v4 + 32))(boxed_opaque_existential_1, v3, v5);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_2296C0738;
    v0[29] = &block_descriptor_16;
    v7 = sel_aa_primaryAppleAccountWithCompletion_;
LABEL_5:
    [v1 v7];
    (*(v4 + 8))(boxed_opaque_existential_1, v5);

    return MEMORY[0x282200938](v2);
  }

  v0[50] = 0;
  v8 = [objc_allocWithZone(MEMORY[0x277CEC820]) initWithAccount_];
  v0[51] = v8;
  if (v8)
  {
    v1 = v8;
    v2 = v0 + 2;
    v16 = v0 + 18;
    v4 = v0[44];
    v9 = v0[45];
    v5 = v0[43];
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_2296C0184;
    swift_continuation_init();
    v0[25] = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F130, &qword_22A57E1E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_22A4DD8DC();
    (*(v4 + 32))(boxed_opaque_existential_1, v9, v5);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_2296C07E0;
    v0[21] = &block_descriptor_16;
    v7 = sel_performPinnedOnlyRequestWithHandler_;
    goto LABEL_5;
  }

  type metadata accessor for ProfilePhoto();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v11 = v0[48];
  v12 = v0[45];
  v13 = v0[42];
  v10[4] = 0xC000000000000000;

  v14 = v0[1];

  return v14(v10);
}

uint64_t sub_2296BFDF0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 392) = v2;
  if (v2)
  {
    v3 = sub_2296C05A4;
  }

  else
  {
    v3 = sub_2296BFF00;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2296BFF00()
{
  v1 = v0[36];
  v0[50] = v1;
  v2 = [objc_allocWithZone(MEMORY[0x277CEC820]) initWithAccount_];
  v0[51] = v2;
  if (v2)
  {
    v3 = v2;
    v5 = v0[44];
    v4 = v0[45];
    v6 = v0[43];
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_2296C0184;
    swift_continuation_init();
    v0[25] = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F130, &qword_22A57E1E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
    sub_22A4DD8DC();
    (*(v5 + 32))(boxed_opaque_existential_1, v4, v6);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_2296C07E0;
    v0[21] = &block_descriptor_16;
    [v3 performPinnedOnlyRequestWithHandler_];
    (*(v5 + 8))(boxed_opaque_existential_1, v6);

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    type metadata accessor for ProfilePhoto();
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v9 = v0[48];
    v10 = v0[45];
    v11 = v0[42];
    v8[4] = 0xC000000000000000;

    v12 = v0[1];

    return v12(v8);
  }
}

uint64_t sub_2296C0184()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 416) = v2;
  if (v2)
  {
    v3 = sub_2296C0664;
  }

  else
  {
    v3 = sub_2296C0294;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

id sub_2296C0294()
{
  v1 = *(v0 + 280);
  if (!v1)
  {
    v11 = *(v0 + 400);

    goto LABEL_8;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v13 = *(v0 + 400);
    v12 = *(v0 + 408);

    goto LABEL_8;
  }

  v3 = v2;
  v4 = v1;
  result = [v4 httpResponse];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = [result statusCode];

  if ((v7 - 300) >= 0xFFFFFFFFFFFFFF9CLL)
  {
    v21 = *(v0 + 336);
    v22 = *(v0 + 312);

    sub_229541CB0(v22, &off_283CE0080);
    v23 = sub_22A4DD05C();
    v24 = sub_22A4DDCCC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_229538000, v23, v24, "✅ Profile photo fetched successfully", v25, 2u);
      MEMORY[0x22AAD4E50](v25, -1, -1);
    }

    v27 = *(v0 + 328);
    v26 = *(v0 + 336);
    v28 = *(v0 + 320);

    (*(v27 + 8))(v26, v28);
    v29 = [v3 cropRect];
    result = [v3 photoData];
    if (result)
    {
      v30 = result;
      v32 = *(v0 + 400);
      v31 = *(v0 + 408);
      v33 = sub_22A4DB62C();
      v15 = v34;

      type metadata accessor for ProfilePhoto();
      v14 = swift_allocObject();
      v14[2] = v29;
      v14[3] = v33;
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
    return result;
  }

  v8 = *(v0 + 400);
  v9 = *(v0 + 408);
  sub_22A4DE1FC();

  *(v0 + 296) = v7;
  v10 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v10);

LABEL_8:
  type metadata accessor for ProfilePhoto();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v15 = 0xC000000000000000;
LABEL_9:
  v16 = *(v0 + 384);
  v17 = *(v0 + 360);
  v18 = *(v0 + 336);
  v14[4] = v15;
  v19 = v14;

  v20 = *(v0 + 8);

  return v20(v19);
}

uint64_t sub_2296C05A4()
{
  v1 = v0[49];
  swift_willThrow();

  type metadata accessor for ProfilePhoto();
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = 0;
  v3 = v0[48];
  v4 = v0[45];
  v5 = v0[42];
  v2[4] = 0xC000000000000000;

  v6 = v0[1];

  return v6(v2);
}

uint64_t sub_2296C0664()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[50];
  swift_willThrow();

  type metadata accessor for ProfilePhoto();
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v5 = v0[48];
  v6 = v0[45];
  v7 = v0[42];
  v4[4] = 0xC000000000000000;

  v8 = v0[1];

  return v8(v4);
}

void sub_2296C0738(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F2E0, &qword_22A57E1D8);
    sub_22A4DD8EC();
  }

  else
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F2E0, &qword_22A57E1D8);
    sub_22A4DD8FC();
  }
}

void sub_2296C07E0(uint64_t a1, void *a2, void *a3, void *a4)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v7 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F128, &qword_22A57E1D0);
    sub_22A4DD8EC();
  }

  else
  {
    v8 = a2;
    v9 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F128, &qword_22A57E1D0);
    sub_22A4DD8FC();
  }
}

uint64_t sub_2296C0A04(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2296C0AAC;

  return sub_2296BF88C();
}

uint64_t sub_2296C0AAC(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_22A4DB3DC();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    v9[2](v9, a1, 0);
    _Block_release(v9);
    swift_unknownObjectRelease();
  }

  v11 = *(v8 + 8);

  return v11();
}

id sub_2296C0C50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountMetadata();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

HMDAccountMetadataFactory __swiftcall HMDAccountMetadataFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for HMDAccountMetadataFactory()
{
  result = qword_27D87F120;
  if (!qword_27D87F120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D87F120);
  }

  return result;
}

uint64_t sub_2296C0E8C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229569B30;

  return sub_2296C0A04(v2, v3);
}

uint64_t sub_2296C0F40()
{
  result = sub_22A4DD5AC();
  qword_27D8AB868 = result;
  return result;
}

uint64_t sub_2296C0F78()
{
  result = sub_22A4DD5AC();
  qword_27D8AB870 = result;
  return result;
}

uint64_t sub_2296C0FB0()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D8AB878);
  __swift_project_value_buffer(v0, qword_27D8AB878);
  v1 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_2296C1048()
{
  v27 = v0;
  v1 = v0[2];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong backingStore];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 context];
      v0[4] = v6;

      if (v6)
      {
        v7 = v0[2];
        v8 = swift_allocObject();
        v0[5] = v8;
        *(v8 + 16) = v7;
        *(v8 + 24) = v6;

        v9 = v6;

        return MEMORY[0x2822009F8](sub_2296C149C, 0, 0);
      }
    }

    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v10 = v0[2];
    v11 = sub_22A4DD07C();
    __swift_project_value_buffer(v11, qword_27D8AB878);

    v12 = sub_22A4DD05C();
    v13 = sub_22A4DDCEC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[2];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26[0] = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_2295A3E30(*(v14 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v14 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), v26);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_2295A3E30(0xD000000000000033, 0x800000022A591730, v26);
      _os_log_impl(&dword_229538000, v12, v13, "%s %s Missing context, failed to save", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v16, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }

    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
  }

  else
  {
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v17 = v0[2];
    v18 = sub_22A4DD07C();
    __swift_project_value_buffer(v18, qword_27D8AB878);

    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCEC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[2];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26[0] = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_2295A3E30(*(v21 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v21 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), v26);
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_2295A3E30(0xD000000000000033, 0x800000022A591730, v26);
      _os_log_impl(&dword_229538000, v19, v20, "%s %s Missing home, failed to save", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v23, -1, -1);
      MEMORY[0x22AAD4E50](v22, -1, -1);
    }

    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_2296C149C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_task_alloc();
  v0[6] = v3;
  v3[2] = v2;
  v3[3] = sub_2296C8C54;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_2296C15A4;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_2296C8C78, v3, v6);
}

uint64_t sub_2296C15A4()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v10 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2296C16D4;
    v5 = 0;
  }

  else
  {
    v6 = v2[5];
    v7 = v2[6];
    v8 = v2[2];

    v4 = sub_2296C8C70;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_2296C16D4()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[2];

  return MEMORY[0x2822009F8](sub_2296C8C7C, v3, 0);
}

uint64_t sub_2296C1748()
{
  v1 = objc_opt_self();
  v2 = sub_22A4DB77C();
  v3 = [v1 findHAPAccessoryWithModelID_];

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1C8, &qword_22A57E350);
  sub_22A4DBD4C();
  result = swift_unknownObjectRelease();
  if (!v0)
  {
    sub_229678A8C();
    v5 = sub_22A4DDEAC();
    [v7 setHasOnboardedForAdaptiveTemperatureAutomations_];

    sub_2297082C0();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2296C18BC()
{
  v27 = v0;
  v1 = v0[2];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong backingStore];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 context];
      v0[4] = v6;

      if (v6)
      {
        v7 = v0[2];
        v8 = swift_allocObject();
        v0[5] = v8;
        *(v8 + 16) = v7;
        *(v8 + 24) = v6;

        v9 = v6;

        return MEMORY[0x2822009F8](sub_2296C1D10, 0, 0);
      }
    }

    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v10 = v0[2];
    v11 = sub_22A4DD07C();
    __swift_project_value_buffer(v11, qword_27D8AB878);

    v12 = sub_22A4DD05C();
    v13 = sub_22A4DDCEC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[2];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26[0] = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_2295A3E30(*(v14 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v14 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), v26);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_2295A3E30(0xD00000000000002ALL, 0x800000022A591700, v26);
      _os_log_impl(&dword_229538000, v12, v13, "%s %s Missing context, failed to save", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v16, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }

    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
  }

  else
  {
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v17 = v0[2];
    v18 = sub_22A4DD07C();
    __swift_project_value_buffer(v18, qword_27D8AB878);

    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCEC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[2];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26[0] = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_2295A3E30(*(v21 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v21 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), v26);
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_2295A3E30(0xD00000000000002ALL, 0x800000022A591700, v26);
      _os_log_impl(&dword_229538000, v19, v20, "%s %s Missing home, failed to save", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v23, -1, -1);
      MEMORY[0x22AAD4E50](v22, -1, -1);
    }

    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_2296C1D10()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_task_alloc();
  v0[6] = v3;
  v3[2] = v2;
  v3[3] = sub_2296C8BF8;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_2296C1E18;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_2296C8C78, v3, v6);
}

uint64_t sub_2296C1E18()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v10 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2296C1FB0;
    v5 = 0;
  }

  else
  {
    v6 = v2[5];
    v7 = v2[6];
    v8 = v2[2];

    v4 = sub_2296C1F48;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_2296C1F48()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2296C1FB0()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[2];

  return MEMORY[0x2822009F8](sub_2296C2024, v3, 0);
}

uint64_t sub_2296C2024()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 64);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2296C208C()
{
  v1 = objc_opt_self();
  v2 = sub_22A4DB77C();
  v3 = [v1 findHAPAccessoryWithModelID_];

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1C8, &qword_22A57E350);
  sub_22A4DBD4C();
  result = swift_unknownObjectRelease();
  if (!v0)
  {
    sub_229678A8C();
    v5 = sub_22A4DDEAC();
    [v7 setHasOnboardedForCleanEnergyAutomation_];

    sub_2297082C0();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2296C21E0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2296C2204, v2, 0);
}

uint64_t sub_2296C2204()
{
  v28 = v0;
  v1 = v0[4];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong backingStore];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 context];
      v0[6] = v6;

      if (v6)
      {
        v8 = v0[3];
        v7 = v0[4];
        v9 = v0[2];
        v10 = swift_allocObject();
        v0[7] = v10;
        v10[2] = v7;
        v10[3] = v9;
        v10[4] = v8;
        v10[5] = v6;

        v11 = v6;

        return MEMORY[0x2822009F8](sub_2296C2608, 0, 0);
      }
    }

    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v12 = v0[4];
    v13 = sub_22A4DD07C();
    __swift_project_value_buffer(v13, qword_27D8AB878);

    v14 = sub_22A4DD05C();
    v15 = sub_22A4DDCEC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = v0[4];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_2295A3E30(*(v16 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v16 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v27);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_2295A3E30(0xD00000000000004BLL, 0x800000022A5916B0, &v27);
      _os_log_impl(&dword_229538000, v14, v15, "%s %s Missing context, failed save adaptive temperature settings", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v18, -1, -1);
      MEMORY[0x22AAD4E50](v17, -1, -1);
    }
  }

  else
  {
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v19 = v0[4];
    v20 = sub_22A4DD07C();
    __swift_project_value_buffer(v20, qword_27D8AB878);

    v14 = sub_22A4DD05C();
    v21 = sub_22A4DDCEC();

    if (os_log_type_enabled(v14, v21))
    {
      v22 = v0[4];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_2295A3E30(*(v22 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v22 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v27);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_2295A3E30(0xD00000000000004BLL, 0x800000022A5916B0, &v27);
      _os_log_impl(&dword_229538000, v14, v21, "%s %s Missing home, failed to save adaptive temperature settings", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v24, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_2296C2608()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = swift_task_alloc();
  v0[8] = v3;
  v3[2] = v2;
  v3[3] = sub_2296C8BD8;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_2296C2710;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_2296C8C78, v3, v6);
}

uint64_t sub_2296C2710()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v10 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_2296C2B60;
    v5 = 0;
  }

  else
  {
    v6 = v2[7];
    v7 = v2[8];
    v8 = v2[4];

    v4 = sub_2296C2840;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_2296C2840()
{
  v25 = v0;
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = sub_22A4DB77C();
  v4 = [v1 accessoryWithUUID_];

  if (v4)
  {
    v5 = [*(v0 + 40) notificationCenter];
    if (qword_27D87B9F0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    logAndPostNotificationWithNotificationCenter(v5, qword_27D8AB868, v4, 0);
  }

  else
  {
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 32);
    v9 = sub_22A4DD07C();
    __swift_project_value_buffer(v9, qword_27D8AB878);

    v10 = sub_22A4DD05C();
    v11 = sub_22A4DDCEC();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    if (v12)
    {
      v23 = *(v0 + 40);
      v15 = *(v0 + 32);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315650;
      *(v16 + 4) = sub_2295A3E30(*(v15 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v15 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v24);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_2295A3E30(0xD00000000000004BLL, 0x800000022A5916B0, &v24);
      *(v16 + 22) = 2080;
      sub_22A4DB7DC();
      sub_2295AEE34(&qword_281403860, MEMORY[0x277CC95F0]);
      v18 = sub_22A4DE5CC();
      v20 = sub_2295A3E30(v18, v19, &v24);

      *(v16 + 24) = v20;
      _os_log_impl(&dword_229538000, v10, v11, "%s %s Can't find accessory with UUID: %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v17, -1, -1);
      MEMORY[0x22AAD4E50](v16, -1, -1);
    }

    else
    {
    }
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2296C2B60()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x2822009F8](sub_2296C2BD4, v3, 0);
}

uint64_t sub_2296C2BD4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);
  v3 = *(v0 + 80);

  return v2();
}

uint64_t sub_2296C2C3C(uint64_t a1, unint64_t a2, void (**a3)(void, void), uint64_t a4)
{
  v39 = a4;
  v42 = a3;
  v46 = a2;
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = sub_22A4DB77C();
  v12 = [v10 findHAPAccessoryWithModelID_];

  v48 = v12;
  v13 = "ggestedPreset(_:)";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1C8, &qword_22A57E350);
  sub_22A4DBD4C();
  result = swift_unknownObjectRelease();
  if (!v4)
  {
    v15 = v42;
    v44 = "rmostatDriverSettings()";
    v45 = v10;
    v16 = v46;
    if (HIDWORD(v46))
    {
      goto LABEL_21;
    }

    v43 = "ggestedPreset(_:)";
    v17 = v49;
    v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v46 = v17;
    [v17 setAdaptiveTemperatureDriver_];

    if (v15)
    {
      v19 = v15;
      v20 = v15[2];
      v13 = MEMORY[0x277D84F90];
      if (v20)
      {
        v49 = MEMORY[0x277D84F90];
        sub_22A4DE29C();
        v22 = v6 + 16;
        v21 = *(v6 + 16);
        v23 = v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
        v41 = v21;
        v42 = (v22 - 8);
        v40 = *(v22 + 56);
        do
        {
          v41(v9, v23, v5);
          v24 = sub_22A4DB77C();
          v25 = [v45 findRoomWithModelID_];

          v47 = v25;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F250, &qword_22A57E388);
          sub_22A4DBD4C();
          swift_unknownObjectRelease();
          (*v42)(v9, v5);
          sub_22A4DE27C();
          v26 = v5;
          v27 = v22;
          v28 = v49[2];
          sub_22A4DE2AC();
          v22 = v27;
          v5 = v26;
          sub_22A4DE2BC();
          sub_22A4DE28C();
          v23 += v40;
          --v20;
        }

        while (v20);
        v13 = v49;
      }

      v29 = [v46 localPresenceRooms];
      if (v29)
      {
        v30 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F250, &qword_22A57E388);
        v16 = sub_22A4DD83C();

        if (v16 >> 62)
        {
          goto LABEL_22;
        }

        v31 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v31)
        {
          while (1)
          {
            v32 = 0;
            while ((v16 & 0xC000000000000001) != 0)
            {
              v33 = MEMORY[0x22AAD13F0](v32, v16);
              v34 = v32 + 1;
              if (__OFADD__(v32, 1))
              {
LABEL_19:
                __break(1u);
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                (*v42)(v32, v31);
              }

LABEL_15:
              [v46 removeLocalPresenceRoomsObject_];
              swift_unknownObjectRelease();
              ++v32;
              if (v34 == v31)
              {
                goto LABEL_23;
              }
            }

            if (v32 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              break;
            }

            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            v31 = sub_22A4DE0EC();
            if (!v31)
            {
              goto LABEL_23;
            }
          }

          v33 = *(v16 + 8 * v32 + 32);
          swift_unknownObjectRetain();
          v34 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_19;
          }

          goto LABEL_15;
        }

LABEL_23:
      }

      if (v13 >> 62)
      {
        goto LABEL_36;
      }

      v35 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
LABEL_26:
        v36 = 0;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v37 = MEMORY[0x22AAD13F0](v36, v13);
            v38 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (v36 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v37 = *(v13 + 8 * v36 + 32);
            swift_unknownObjectRetain();
            v38 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              v35 = sub_22A4DE0EC();
              if (!v35)
              {
                break;
              }

              goto LABEL_26;
            }
          }

          [v46 addLocalPresenceRoomsObject_];
          swift_unknownObjectRelease();
          ++v36;
        }

        while (v38 != v35);
      }
    }

    sub_2297082C0();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2296C31A8()
{
  *(v1 + 64) = v0;
  *(v1 + 72) = *v0;
  return MEMORY[0x2822009F8](sub_2296C31F0, v0, 0);
}

uint64_t sub_2296C31F0()
{
  v29 = v0;
  v1 = v0[8];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong backingStore];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 context];
      v0[11] = v6;

      if (v6)
      {
        v8 = v0[8];
        v7 = v0[9];
        v9 = swift_allocObject();
        v0[12] = v9;
        *(v9 + 16) = v8;
        *(v9 + 24) = v7;

        return MEMORY[0x2822009F8](sub_2296C36D8, 0, 0);
      }
    }

    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v10 = v0[8];
    v11 = sub_22A4DD07C();
    __swift_project_value_buffer(v11, qword_27D8AB878);

    v12 = sub_22A4DD05C();
    v13 = sub_22A4DDCEC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[8];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28[0] = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_2295A3E30(*(v14 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v14 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), v28);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_2295A3E30(0xD000000000000027, 0x800000022A591680, v28);
      _os_log_impl(&dword_229538000, v12, v13, "%s %s Missing context, failed save adaptive temperature settings", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v16, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }

    type metadata accessor for HMError(0);
    v0[7] = 20;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v17 = v0[6];
    swift_willThrow();
  }

  else
  {
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v18 = v0[8];
    v19 = sub_22A4DD07C();
    __swift_project_value_buffer(v19, qword_27D8AB878);

    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCEC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = v0[8];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28[0] = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_2295A3E30(*(v22 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v22 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), v28);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_2295A3E30(0xD000000000000027, 0x800000022A591680, v28);
      _os_log_impl(&dword_229538000, v20, v21, "%s %s Missing home, failed to save adaptive temperature settings", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v24, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }

    type metadata accessor for HMError(0);
    v0[5] = 20;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v25 = v0[4];
    swift_willThrow();
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_2296C36D8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = swift_task_alloc();
  v0[13] = v3;
  v3[2] = v2;
  v3[3] = sub_2296C8BB0;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[14] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3C0, &qword_22A576EA0);
  *v5 = v0;
  v5[1] = sub_2296C37F4;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_2296C8BCC, v3, v6);
}

uint64_t sub_2296C37F4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v10 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_2296C39A0;
    v5 = 0;
  }

  else
  {
    v6 = *(v2 + 96);
    v7 = *(v2 + 104);
    v8 = *(v2 + 64);

    *(v2 + 128) = *(v2 + 16);
    v4 = sub_2296C3934;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_2296C3934()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);

  return v2(v3, v4);
}

uint64_t sub_2296C39A0()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[8];

  return MEMORY[0x2822009F8](sub_2296C3A14, v3, 0);
}

uint64_t sub_2296C3A14()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 120);
  v3 = *(v0 + 8);

  return v3();
}

void sub_2296C3A7C(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = sub_22A4DB77C();
  v12 = [v10 findHAPAccessoryWithModelID_];

  v56 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1C8, &qword_22A57E350);
  sub_22A4DBD4C();
  swift_unknownObjectRelease();
  if (v2)
  {
    return;
  }

  v54 = v5;
  v49 = "eepScheduleRules(_:)";
  v13 = v57;
  v14 = [v57 adaptiveTemperatureDriver];
  if (!v14)
  {
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v27 = sub_22A4DD07C();
    __swift_project_value_buffer(v27, qword_27D8AB878);

    v28 = sub_22A4DD05C();
    v29 = sub_22A4DDCCC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v57 = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_2295A3E30(*(a1 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(a1 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v57);
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_2295A3E30(0xD000000000000027, v49 | 0x8000000000000000, &v57);
      _os_log_impl(&dword_229538000, v28, v29, "%s %s Adaptive Temperature Driver has not been set", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v31, -1, -1);
      MEMORY[0x22AAD4E50](v30, -1, -1);
    }

    swift_unknownObjectRelease();

    *a2 = xmmword_22A57E210;
    return;
  }

  v15 = v14;
  v48 = 0;
  v16 = sub_22A4DDFCC();
  v17 = [v13 localPresenceRooms];
  if (!v17)
  {
    swift_unknownObjectRelease();

    *a2 = v16;
    a2[1] = 0;
    return;
  }

  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F250, &qword_22A57E388);
  v19 = sub_22A4DD83C();

  *a2 = v16;
  v20 = v19;
  if (v19 >> 62)
  {
LABEL_30:
    v21 = sub_22A4DE0EC();
    if (v21)
    {
      goto LABEL_6;
    }

LABEL_31:
    swift_unknownObjectRelease();

    a2[1] = MEMORY[0x277D84F90];
    return;
  }

  v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_31;
  }

LABEL_6:
  v45 = a1;
  v46 = v15;
  v44 = a2;
  v47 = v13;
  v57 = MEMORY[0x277D84F90];
  sub_22958345C(0, v21 & ~(v21 >> 63), 0);
  if (v21 < 0)
  {
    __break(1u);
LABEL_33:
    swift_once();
  }

  else
  {
    a1 = 0;
    a2 = v57;
    v22 = v20;
    v52 = v20;
    v53 = v20 & 0xC000000000000001;
    v50 = v20 & 0xFFFFFFFFFFFFFF8;
    v51 = v6 + 32;
    v13 = v21;
    while (1)
    {
      v15 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (v53)
      {
        v20 = MEMORY[0x22AAD13F0](a1, v22);
      }

      else
      {
        if (a1 >= *(v50 + 16))
        {
          goto LABEL_29;
        }

        v20 = *(v22 + 8 * a1 + 32);
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      v23 = [v20 modelID];
      if (!v23)
      {
        break;
      }

      v24 = v23;
      sub_22A4DB79C();
      swift_unknownObjectRelease();

      v57 = a2;
      v26 = a2[2];
      v25 = a2[3];
      v20 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        sub_22958345C(v25 > 1, v26 + 1, 1);
        a2 = v57;
      }

      a2[2] = v20;
      (*(v6 + 32))(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v26, v9, v54);
      ++a1;
      v22 = v52;
      if (v15 == v13)
      {
        swift_unknownObjectRelease();

        v44[1] = a2;
        return;
      }
    }

    if (qword_27D87BA00 != -1)
    {
      goto LABEL_33;
    }
  }

  v32 = sub_22A4DD07C();
  __swift_project_value_buffer(v32, qword_27D8AB878);
  v33 = v45;

  swift_unknownObjectRetain();
  v34 = sub_22A4DD05C();
  v35 = sub_22A4DDCEC();
  swift_unknownObjectRelease();

  v36 = os_log_type_enabled(v34, v35);
  v37 = v49;
  if (v36)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v56 = v39;
    *v38 = 136315650;
    *(v38 + 4) = sub_2295A3E30(*(v33 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v33 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v56);
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_2295A3E30(0xD000000000000027, v37 | 0x8000000000000000, &v56);
    *(v38 + 22) = 2080;
    v55 = v20;
    swift_unknownObjectRetain();
    v40 = sub_22A4DD64C();
    v42 = sub_2295A3E30(v40, v41, &v56);

    *(v38 + 24) = v42;
    _os_log_impl(&dword_229538000, v34, v35, "%s %s nil room model ID on room model %s", v38, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v39, -1, -1);
    MEMORY[0x22AAD4E50](v38, -1, -1);
  }

  type metadata accessor for HMError(0);
  v55 = 20;
  sub_22956AD8C(MEMORY[0x277D84F90]);
  sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError);
  sub_22A4DB3CC();
  swift_willThrow();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

uint64_t sub_2296C4238(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2296C4258, v1, 0);
}

uint64_t sub_2296C4258()
{
  v28 = v0;
  v1 = v0[3];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong backingStore];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 context];
      v0[5] = v6;

      if (v6)
      {
        v8 = v0[2];
        v7 = v0[3];
        v9 = swift_allocObject();
        v0[6] = v9;
        v9[2] = v7;
        v9[3] = v8;
        v9[4] = v6;

        v10 = v6;

        return MEMORY[0x2822009F8](sub_2296C46B8, 0, 0);
      }
    }

    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v11 = v0[3];
    v12 = sub_22A4DD07C();
    __swift_project_value_buffer(v12, qword_27D8AB878);

    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCEC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[3];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_2295A3E30(*(v15 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v15 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), v27);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_2295A3E30(0xD000000000000024, 0x800000022A591650, v27);
      _os_log_impl(&dword_229538000, v13, v14, "%s %s Missing context, failed to save", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v17, -1, -1);
      MEMORY[0x22AAD4E50](v16, -1, -1);
    }

    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
  }

  else
  {
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v18 = v0[3];
    v19 = sub_22A4DD07C();
    __swift_project_value_buffer(v19, qword_27D8AB878);

    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCEC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = v0[3];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27[0] = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_2295A3E30(*(v22 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v22 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), v27);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_2295A3E30(0xD000000000000024, 0x800000022A591650, v27);
      _os_log_impl(&dword_229538000, v20, v21, "%s %s Missing home, failed to save", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v24, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }

    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_2296C46B8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_task_alloc();
  v0[7] = v3;
  v3[2] = v2;
  v3[3] = sub_2296C8B90;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_2296C47C0;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_2296C8C78, v3, v6);
}

uint64_t sub_2296C47C0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v10 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_2296C4C10;
    v5 = 0;
  }

  else
  {
    v6 = v2[6];
    v7 = v2[7];
    v8 = v2[3];

    v4 = sub_2296C48F0;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_2296C48F0()
{
  v25 = v0;
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = sub_22A4DB77C();
  v4 = [v1 accessoryWithUUID_];

  if (v4)
  {
    v5 = [*(v0 + 32) notificationCenter];
    if (qword_27D87B9F8 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    logAndPostNotificationWithNotificationCenter(v5, qword_27D8AB870, v4, 0);
  }

  else
  {
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 24);
    v9 = sub_22A4DD07C();
    __swift_project_value_buffer(v9, qword_27D8AB878);

    v10 = sub_22A4DD05C();
    v11 = sub_22A4DDCEC();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 32);
    v14 = *(v0 + 40);
    if (v12)
    {
      v23 = *(v0 + 32);
      v15 = *(v0 + 24);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315650;
      *(v16 + 4) = sub_2295A3E30(*(v15 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v15 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v24);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_2295A3E30(0xD000000000000024, 0x800000022A591650, &v24);
      *(v16 + 22) = 2080;
      sub_22A4DB7DC();
      sub_2295AEE34(&qword_281403860, MEMORY[0x277CC95F0]);
      v18 = sub_22A4DE5CC();
      v20 = sub_2295A3E30(v18, v19, &v24);

      *(v16 + 24) = v20;
      _os_log_impl(&dword_229538000, v10, v11, "%s %s Can't find accessory with UUID: %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v17, -1, -1);
      MEMORY[0x22AAD4E50](v16, -1, -1);
    }

    else
    {
    }
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2296C4C10()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[3];

  return MEMORY[0x2822009F8](sub_2296C4C84, v3, 0);
}

uint64_t sub_2296C4C84()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 72);
  v3 = *(v0 + 8);

  return v3();
}

id sub_2296C4CEC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v33 = a3;
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = sub_22A4DB77C();
  v12 = [v10 findHAPAccessoryWithModelID_];

  v36 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1C8, &qword_22A57E350);
  sub_22A4DBD4C();
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    v31 = 0;
    v32 = v6;
    v35 = v37;
    result = [v37 adaptiveTemperatureSleepScheduleRules];
    v34 = a2;
    if (result)
    {
      v14 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1E8, qword_22A57E370);
      v15 = sub_22A4DD83C();

      v16 = v5;
      if (v15 >> 62)
      {
        goto LABEL_15;
      }

      for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
      {
        v18 = 0;
        while ((v15 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x22AAD13F0](v18, v15);
          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_13;
          }

LABEL_9:
          [v35 removeAdaptiveTemperatureSleepScheduleRulesObject_];
          swift_unknownObjectRelease();
          ++v18;
          if (v20 == i)
          {
            goto LABEL_16;
          }
        }

        if (v18 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v19 = *(v15 + 8 * v18 + 32);
        swift_unknownObjectRetain();
        v20 = v18 + 1;
        if (!__OFADD__(v18, 1))
        {
          goto LABEL_9;
        }

LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        ;
      }

LABEL_16:

      a2 = v34;
      v5 = v16;
    }

    v21 = v5;
    if (a2 >> 62)
    {
      result = sub_22A4DE0EC();
      v22 = result;
      v23 = v32;
      if (result)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v23 = v32;
      if (v22)
      {
LABEL_19:
        if (v22 < 1)
        {
          __break(1u);
          return result;
        }

        v24 = 0;
        v25 = v34 & 0xC000000000000001;
        v26 = (v23 + 8);
        do
        {
          if (v25)
          {
            v27 = MEMORY[0x22AAD13F0](v24, v34);
          }

          else
          {
            v27 = *(v34 + 8 * v24 + 32);
          }

          v28 = v27;
          ++v24;
          sub_22A4DB7CC();
          v29 = sub_22A4DB77C();
          (*v26)(v9, v21);
          v30 = [v35 materializeOrCreateAdaptiveTemperatureSleepScheduleRulesRelationWithModelID:v29 createdNew:0];

          [v30 updateFromWeekDayScheduleRule_];
          swift_unknownObjectRelease();
        }

        while (v22 != v24);
      }
    }

    sub_2297082C0();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2296C50D4()
{
  v27 = v0;
  v1 = v0[7];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong backingStore];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 context];
      v0[9] = v6;

      if (v6)
      {
        v7 = v0[7];

        return MEMORY[0x2822009F8](sub_2296C559C, 0, 0);
      }
    }

    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v8 = v0[7];
    v9 = sub_22A4DD07C();
    __swift_project_value_buffer(v9, qword_27D8AB878);

    v10 = sub_22A4DD05C();
    v11 = sub_22A4DDCEC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[7];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26[0] = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_2295A3E30(*(v12 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v12 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), v26);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_2295A3E30(0xD000000000000023, 0x800000022A591620, v26);
      _os_log_impl(&dword_229538000, v10, v11, "%s %s Missing context, failed save adaptive temperature settings", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v14, -1, -1);
      MEMORY[0x22AAD4E50](v13, -1, -1);
    }

    type metadata accessor for HMError(0);
    v0[5] = 20;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v15 = v0[4];
    swift_willThrow();
  }

  else
  {
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v16 = v0[7];
    v17 = sub_22A4DD07C();
    __swift_project_value_buffer(v17, qword_27D8AB878);

    v18 = sub_22A4DD05C();
    v19 = sub_22A4DDCEC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = v0[7];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26[0] = v22;
      *v21 = 136315394;
      *(v21 + 4) = sub_2295A3E30(*(v20 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v20 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), v26);
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_2295A3E30(0xD000000000000023, 0x800000022A591620, v26);
      _os_log_impl(&dword_229538000, v18, v19, "%s %s Missing home, failed to save adaptive temperature settings", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v22, -1, -1);
      MEMORY[0x22AAD4E50](v21, -1, -1);
    }

    type metadata accessor for HMError(0);
    v0[3] = 20;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v23 = v0[2];
    swift_willThrow();
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_2296C559C()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = swift_task_alloc();
  v0[10] = v3;
  v3[2] = v1;
  v3[3] = sub_2296C8B68;
  v3[4] = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[11] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1E0, &unk_22A57E360);
  *v5 = v0;
  v5[1] = sub_2296C56BC;

  return MEMORY[0x2822008A0](v0 + 6, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_2296C8B84, v3, v6);
}

uint64_t sub_2296C56BC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_2296C586C;
    v5 = 0;
  }

  else
  {
    v6 = v2[10];
    v7 = v2[7];

    v2[13] = v2[6];
    v4 = sub_2296C5800;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_2296C5800()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);
  v3 = *(v0 + 104);

  return v2(v3);
}

uint64_t sub_2296C586C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_2296C58E4, v2, 0);
}

uint64_t sub_2296C58E4()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 96);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2296C594C@<X0>(void *a1@<X8>)
{
  v3 = objc_opt_self();
  v4 = sub_22A4DB77C();
  [v3 findHAPAccessoryWithModelID_];

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1C8, &qword_22A57E350);
  sub_22A4DBD4C();
  result = swift_unknownObjectRelease();
  if (v1)
  {
    return result;
  }

  v6 = [v16 adaptiveTemperatureSleepScheduleRules];
  if (!v6)
  {
    result = swift_unknownObjectRelease();
LABEL_15:
    *a1 = MEMORY[0x277D84F90];
    return result;
  }

  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F1E8, qword_22A57E370);
  v8 = sub_22A4DD83C();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  v9 = sub_22A4DE0EC();
  if (!v9)
  {
LABEL_14:
    swift_unknownObjectRelease();

    goto LABEL_15;
  }

LABEL_5:
  v15 = a1;
  v17 = MEMORY[0x277D84F90];
  result = sub_22A4DE29C();
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AAD13F0](v10, v8);
      }

      else
      {
        v11 = *(v8 + 8 * v10 + 32);
        swift_unknownObjectRetain();
      }

      ++v10;
      v12 = [v11 weekDayScheduleRule];
      swift_unknownObjectRelease();
      sub_22A4DE27C();
      v13 = v17[2];
      sub_22A4DE2AC();
      sub_22A4DE2BC();
      sub_22A4DE28C();
    }

    while (v9 != v10);
    swift_unknownObjectRelease();

    *v15 = v17;
  }

  return result;
}

uint64_t sub_2296C5BE0(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_2296C5C2C, v1, 0);
}

uint64_t sub_2296C5C2C()
{
  v28 = v0;
  v1 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong backingStore];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 context];
      *(v0 + 40) = v6;

      if (v6)
      {
        v7 = *(v0 + 16);
        v8 = *(v0 + 24);
        v9 = *(v0 + 80);
        v10 = swift_allocObject();
        *(v0 + 48) = v10;
        *(v10 + 16) = v7;
        *(v10 + 24) = v9;
        *(v10 + 32) = v6;
        *(v10 + 40) = v8;

        v11 = v6;

        return MEMORY[0x2822009F8](sub_2296C602C, 0, 0);
      }
    }

    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 16);
    v13 = sub_22A4DD07C();
    __swift_project_value_buffer(v13, qword_27D8AB878);

    v14 = sub_22A4DD05C();
    v15 = sub_22A4DDCEC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 16);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_2295A3E30(*(v16 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v16 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v27);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A5915E0, &v27);
      _os_log_impl(&dword_229538000, v14, v15, "%s %s Missing context, failed to update supportsAdaptiveTemperatureAutomations", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v18, -1, -1);
      MEMORY[0x22AAD4E50](v17, -1, -1);
    }
  }

  else
  {
    if (qword_27D87BA00 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 16);
    v20 = sub_22A4DD07C();
    __swift_project_value_buffer(v20, qword_27D8AB878);

    v14 = sub_22A4DD05C();
    v21 = sub_22A4DDCEC();

    if (os_log_type_enabled(v14, v21))
    {
      v22 = *(v0 + 16);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_2295A3E30(*(v22 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID), *(v22 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID + 8), &v27);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A5915E0, &v27);
      _os_log_impl(&dword_229538000, v14, v21, "%s %s Missing home, failed to update supportsAdaptiveTemperatureAutomations", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v24, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }
  }

  v25 = *(v0 + 8);

  return v25();
}