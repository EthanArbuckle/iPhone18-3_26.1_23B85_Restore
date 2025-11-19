uint64_t static StaticService.airQualitySensorString(airQualityValues:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v2 = 0;
    return sub_1D1C3953C(*&v2, v1 == 0);
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 > 4)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(*&v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return sub_1D1C3953C(*&v2, v1 == 0);
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (*&v2 <= *&v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return sub_1D1C3953C(*&v2, v1 == 0);
}

uint64_t static StaticService.carbonDioxideSensorString(context:carbonDioxideDetectedValues:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = (a2 + 32);
  while (v2)
  {
    v4 = *v3++;
    --v2;
    if (v4 == 1)
    {
      return static String.hfLocalized(_:)(0xD000000000000036, 0x80000001D1EC7070);
    }
  }

  return 0;
}

uint64_t static StaticService.carbonDioxideSensorString(context:carbonDioxideDetected:)(uint64_t a1, uint64_t a2, char a3)
{
  result = 0;
  if ((a3 & 1) == 0 && a2 == 1)
  {
    return static String.hfLocalized(_:)(0xD000000000000036, 0x80000001D1EC7070);
  }

  return result;
}

uint64_t static StaticService.carbonMonoxideString(context:carbonMonoxideDetectedValues:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = (a2 + 32);
  while (v2)
  {
    v4 = *v3++;
    --v2;
    if (v4 == 1)
    {
      return static String.hfLocalized(_:)(0xD000000000000037, 0x80000001D1EC7120);
    }
  }

  return 0;
}

uint64_t static StaticService.carbonMonoxideString(context:carbonMonoxideDetected:)(uint64_t a1, uint64_t a2, char a3)
{
  result = 0;
  if ((a3 & 1) == 0 && a2 == 1)
  {
    return static String.hfLocalized(_:)(0xD000000000000037, 0x80000001D1EC7120);
  }

  return result;
}

uint64_t static StaticService.contactSensorString(context:contactStateValues:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = (a2 + 32);
  while (v2)
  {
    v4 = *v3++;
    --v2;
    if (!v4)
    {
      return static String.hfLocalized(_:)(0xD000000000000030, 0x80000001D1EC7030);
    }
  }

  return 0;
}

uint64_t static StaticService.contactSensorString(context:contactState:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 0;
  }

  v3 = 0xD000000000000030;
  if (!a2)
  {
    v4 = "eContactNotDetected";
    return static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);
  }

  if (a2 != 1)
  {
    return 0;
  }

  v4 = "tion.FaucetValve, State:Running";
  v3 = 0xD000000000000033;
  return static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);
}

uint64_t static StaticService.doorStateString(doorStateValues:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = result + 57;
  while (2)
  {
    v9 = (v8 + 32 * v7);
    v10 = v7;
    while (1)
    {
      if (v10 >= v1)
      {
        __break(1u);
LABEL_49:
        __break(1u);
        return result;
      }

      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_49;
      }

      v11 = *(v9 - 25);
      v12 = *(v9 - 17);
      result = *(v9 - 9);
      v13 = *(v9 - 1);
      v14 = *v9;
      v21 = v14 == 2;
      v15 = v14 | v2;
      if (!v21)
      {
        v2 = v15;
      }

      v16 = v11 ? 1 : *(v9 - 17);
      if ((v16 & 1) == 0)
      {
        break;
      }

      if ((*(v9 - 1) & 1) == 0)
      {
        v3 |= result == 0;
        v17 = v11 == 1 ? *(v9 - 17) : 1;
        if (v17)
        {
          goto LABEL_22;
        }

        v6 |= result == 1;
        if (*(v9 - 17))
        {
          goto LABEL_22;
        }
      }

LABEL_5:
      ++v10;
      v9 += 32;
      if (v7 == v1)
      {
        goto LABEL_23;
      }
    }

    if (*(v9 - 1))
    {
      goto LABEL_5;
    }

    v5 |= result == 0;
LABEL_22:
    v4 |= result == 1;
    if (v7 != v1)
    {
      continue;
    }

    break;
  }

LABEL_23:
  v18 = v2 | v3 | v4;
  if ((v18 & 1) == 0 && (v5 & 1) == 0 && (v6 & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    v19 = "HFCharacteristicValueDoorStateOpening";
  }

  else
  {
    v19 = "HFCharacteristicValueDoorStateClosing";
  }

  v20 = (v19 - 32);
  v21 = (v2 & 1) == 0;
  if (v2)
  {
    v22 = 0xD000000000000031;
  }

  else
  {
    v22 = 0xD000000000000025;
  }

  if (!v21)
  {
    v20 = "HMServiceTypeDoor";
  }

  v23 = (v5 & 1) == 0;
  if (v5)
  {
    v24 = 0xD000000000000022;
  }

  else
  {
    v24 = 0xD000000000000024;
  }

  if (v23)
  {
    v25 = "ValueDoorStateOpening";
  }

  else
  {
    v25 = "ValueDoorStateClosed";
  }

  if (v18)
  {
    v26 = v22;
  }

  else
  {
    v26 = v24;
  }

  if (v18)
  {
    v27 = v20;
  }

  else
  {
    v27 = v25;
  }

  return static String.hfLocalized(_:)(v26, v27 | 0x8000000000000000);
}

uint64_t static StaticService.currentTemperatureString(currentTemperature:temperatureScale:)(uint64_t a1, char a2, unsigned __int8 *a3)
{
  if (a2)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6 = *a3;
  return static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v6, *&a1);
}

uint64_t static StaticService.faucetString(active:)(char a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD00000000000002FLL;
  }

  else
  {
    v3 = 0xD00000000000002BLL;
  }

  if (v2)
  {
    v4 = "TitleLeakDetectedSimple";
  }

  else
  {
    v4 = "tion.FaucetValve, State:Off";
  }

  v5 = static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);

  return v5;
}

uint64_t static StaticService.heaterCoolerString(active:targetHeaterCoolerState:currentHeaterCoolerState:heatingThreshold:coolingThreshold:stripTemperatureSymbol:temperatureScale:)(char a1, uint64_t a2, char a3, unint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, char a9, char a10, unsigned __int8 *a11)
{
  result = 0;
  if (a1 != 2 && (a3 & 1) == 0 && (a5 & 1) == 0)
  {
    if ((a1 & 1) == 0)
    {
      return static String.hfLocalized(_:)(0xD00000000000002ALL, 0x80000001D1EC6EA0);
    }

    v13 = a4;
    if (a9)
    {
      v14 = 0;
      if (a7)
      {
        v15 = 0;
        v16 = 0xE000000000000000;
        v17 = 0xE000000000000000;
        goto LABEL_21;
      }

      v22 = *&a6;
      v16 = 0xE000000000000000;
    }

    else
    {
      v18 = a2;
      v19 = *&a6;
      v20 = a7;
      v21 = a8;
      v22 = *&a8;
      if (a10)
      {
        v23 = static ClimateSummarizer.strippedTemperatureString(_:)();
      }

      else
      {
        v55 = *a11;
        v23 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v55, *&a8);
      }

      v14 = v23;
      v16 = v24;
      a7 = v20;
      *&a6 = v19;
      a2 = v18;
      if (v20)
      {
        a4 = v13;
        v15 = 0;
        v17 = 0xE000000000000000;
        a8 = v21;
        goto LABEL_21;
      }

      a8 = v21;
      if (v22 >= v19)
      {
        v22 = v19;
      }
    }

    v25 = a2;
    v26 = a6;
    v27 = a8;
    v28 = a7;
    if (a10)
    {
      v15 = static ClimateSummarizer.strippedTemperatureString(_:)();
    }

    else
    {
      v56 = 0;
      v15 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v56, v22);
    }

    v17 = v29;
    a7 = v28;
    a8 = v27;
    a4 = v13;
    a6 = v26;
    a2 = v25;
LABEL_21:
    if (a2 != 2)
    {
      if (a2 != 1)
      {
        if (!a2 && (a7 & 1) == 0 && (a9 & 1) == 0)
        {
          v30 = v15;
          static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EBA3F0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_1D1E73A90;
          v32 = MEMORY[0x1E69E6158];
          *(v31 + 56) = MEMORY[0x1E69E6158];
          v33 = sub_1D1757D20();
          *(v31 + 32) = v30;
          *(v31 + 40) = v17;
          *(v31 + 96) = v32;
          *(v31 + 104) = v33;
          *(v31 + 64) = v33;
          *(v31 + 72) = v14;
          *(v31 + 80) = v16;
          v34 = sub_1D1E6783C();

LABEL_53:

          return v34;
        }

        goto LABEL_32;
      }

      if (a4 < 2)
      {
        v43 = v15;
        v44 = a7;

        if (v44)
        {
          goto LABEL_33;
        }

        v45 = 0xD000000000000043;
        v46 = 0x80000001D1EC6E50;
      }

      else
      {
        if (a4 != 2)
        {
          if (a4 != 3)
          {
LABEL_32:

LABEL_33:

            return 0;
          }

          if (a9)
          {
            goto LABEL_33;
          }

          v35 = 0x80000001D1EC6D80;
          v36 = 0xD00000000000003FLL;
LABEL_52:
          static String.hfLocalized(_:)(v36, v35);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
          v54 = swift_allocObject();
          *(v54 + 16) = xmmword_1D1E739C0;
          *(v54 + 56) = MEMORY[0x1E69E6158];
          *(v54 + 64) = sub_1D1757D20();
          *(v54 + 32) = v14;
          *(v54 + 40) = v16;
          v34 = sub_1D1E6783C();

          goto LABEL_53;
        }

        v43 = v15;
        v47 = a7;

        if (v47)
        {
          goto LABEL_33;
        }

        v46 = 0x80000001D1EC6DC0;
        v45 = 0xD00000000000003FLL;
      }

      static String.hfLocalized(_:)(v45, v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1D1E739C0;
      *(v48 + 56) = MEMORY[0x1E69E6158];
      *(v48 + 64) = sub_1D1757D20();
      *(v48 + 32) = v43;
      *(v48 + 40) = v17;
      v49 = sub_1D1E6783C();

      return v49;
    }

    v37 = *&a6;
    v38 = *&a8;
    v39 = a7;

    if (v13 >= 2)
    {
      if (v13 == 2)
      {

        if (v39)
        {
          return 0;
        }

        v40 = v37;
        static String.hfLocalized(_:)(0xD00000000000003FLL, 0x80000001D1EC6DC0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1D1E739C0;
        v57 = 0;
        v42 = &v57;
      }

      else
      {
        if (v13 != 3)
        {
          goto LABEL_33;
        }

        if (a9)
        {
          return 0;
        }

        v40 = v38;
        static String.hfLocalized(_:)(0xD00000000000003FLL, 0x80000001D1EC6D80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1D1E739C0;
        v58 = 0;
        v42 = &v58;
      }

      v50 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(v42, v40);
      v52 = v51;
      *(v41 + 56) = MEMORY[0x1E69E6158];
      *(v41 + 64) = sub_1D1757D20();
      *(v41 + 32) = v50;
      *(v41 + 40) = v52;
      v53 = sub_1D1E6783C();

      return v53;
    }

    if (a9)
    {
      goto LABEL_33;
    }

    v36 = 0xD000000000000043;
    v35 = 0x80000001D1EC6E00;
    goto LABEL_52;
  }

  return result;
}

uint64_t static StaticService.targetHeaterCoolerString(currentRelativeHumidity:currentTemperature:active:targetHeaterCoolerState:currentHeaterCoolerState:heatingThreshold:coolingThreshold:stripTemperatureSymbol:)(uint64_t a1, char a2, uint64_t a3, char a4, char a5, uint64_t a6, char a7, unint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, char a17, double a18, char a19, double a20, char a21, char a22)
{
  if ((a4 & 1) == 0)
  {
    return sub_1D1C3999C(a1, a2 & 1, *&a3);
  }

  result = 0;
  if (a5 != 2 && (a7 & 1) == 0 && (a17 & 1) == 0)
  {
    if ((a5 & 1) == 0)
    {
      return static String.hfLocalized(_:)(0xD00000000000002ALL, 0x80000001D1EC6EA0);
    }

    if (a21)
    {
      v15 = 0;
      if (a19)
      {
        v16 = 0;
        v17 = 0xE000000000000000;
        v18 = 0xE000000000000000;
        goto LABEL_25;
      }

      v21 = a18;
      v17 = 0xE000000000000000;
    }

    else
    {
      v19 = a6;
      v20 = a8;
      v21 = a20;
      if (a22)
      {
        v22 = static ClimateSummarizer.strippedTemperatureString(_:)();
      }

      else
      {
        v48 = 0;
        v22 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v48, a20);
      }

      v15 = v22;
      v17 = v23;
      a8 = v20;
      a6 = v19;
      if (a19)
      {
        v16 = 0;
        v18 = 0xE000000000000000;
        goto LABEL_25;
      }

      if (a20 >= a18)
      {
        v21 = a18;
      }
    }

    v24 = a6;
    v25 = a8;
    if (a22)
    {
      v16 = static ClimateSummarizer.strippedTemperatureString(_:)();
    }

    else
    {
      v49 = 0;
      v16 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v49, v21);
    }

    v18 = v26;
    a8 = v25;
    a6 = v24;
LABEL_25:
    if (a6 != 2)
    {
      if (a6 != 1)
      {
        if (!a6 && (a19 & 1) == 0 && (a21 & 1) == 0)
        {
          v27 = v16;
          static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EBA3F0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1D1E73A90;
          v29 = MEMORY[0x1E69E6158];
          *(v28 + 56) = MEMORY[0x1E69E6158];
          v30 = sub_1D1757D20();
          *(v28 + 32) = v27;
          *(v28 + 40) = v18;
          *(v28 + 96) = v29;
          *(v28 + 104) = v30;
          *(v28 + 64) = v30;
          *(v28 + 72) = v15;
          *(v28 + 80) = v17;
          v31 = sub_1D1E6783C();

LABEL_56:

          return v31;
        }

        goto LABEL_36;
      }

      if (a8 < 2)
      {
        v38 = v16;

        if (a19)
        {
          goto LABEL_37;
        }

        v39 = 0xD000000000000043;
        v40 = 0x80000001D1EC6E50;
      }

      else
      {
        if (a8 != 2)
        {
          if (a8 != 3)
          {
LABEL_36:

LABEL_37:

            return 0;
          }

          if (a21)
          {
            goto LABEL_37;
          }

          v32 = 0x80000001D1EC6D80;
          v33 = 0xD00000000000003FLL;
LABEL_55:
          static String.hfLocalized(_:)(v33, v32);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
          v47 = swift_allocObject();
          *(v47 + 16) = xmmword_1D1E739C0;
          *(v47 + 56) = MEMORY[0x1E69E6158];
          *(v47 + 64) = sub_1D1757D20();
          *(v47 + 32) = v15;
          *(v47 + 40) = v17;
          v31 = sub_1D1E6783C();

          goto LABEL_56;
        }

        v38 = v16;

        if (a19)
        {
          goto LABEL_37;
        }

        v40 = 0x80000001D1EC6DC0;
        v39 = 0xD00000000000003FLL;
      }

      static String.hfLocalized(_:)(v39, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1D1E739C0;
      *(v41 + 56) = MEMORY[0x1E69E6158];
      *(v41 + 64) = sub_1D1757D20();
      *(v41 + 32) = v38;
      *(v41 + 40) = v18;
      v42 = sub_1D1E6783C();

      return v42;
    }

    v34 = a8;

    if (v34 >= 2)
    {
      if (v34 == 2)
      {

        if (a19)
        {
          return 0;
        }

        v35 = a18;
        static String.hfLocalized(_:)(0xD00000000000003FLL, 0x80000001D1EC6DC0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1D1E739C0;
        v50 = 0;
        v37 = &v50;
      }

      else
      {
        if (v34 != 3)
        {
          goto LABEL_37;
        }

        if (a21)
        {
          return 0;
        }

        v35 = a20;
        static String.hfLocalized(_:)(0xD00000000000003FLL, 0x80000001D1EC6D80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1D1E739C0;
        v51 = 0;
        v37 = &v51;
      }

      v43 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(v37, v35);
      v45 = v44;
      *(v36 + 56) = MEMORY[0x1E69E6158];
      *(v36 + 64) = sub_1D1757D20();
      *(v36 + 32) = v43;
      *(v36 + 40) = v45;
      v46 = sub_1D1E6783C();

      return v46;
    }

    if (a21)
    {
      goto LABEL_37;
    }

    v33 = 0xD000000000000043;
    v32 = 0x80000001D1EC6E00;
    goto LABEL_55;
  }

  return result;
}

uint64_t static StaticService.humidifierDehumidifierTargetValue(active:targetHumidifierDehumidifierState:humidifierThreshold:dehumidifierThreshold:strippedPercentageSymbol:)@<X0>(unsigned __int8 a1@<W0>, unint64_t a2@<X1>, int a3@<W2>, double a4@<X3>, int a5@<W4>, double a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v60 = a5;
  LODWORD(v61) = a8;
  v59 = a7;
  v57 = a4;
  v58 = a6;
  LODWORD(v63) = a3;
  v62 = a2;
  v11 = a1;
  v12 = sub_1D1E66ADC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v56 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D1E6658C();
  v53 = *(v15 - 8);
  v54 = v15;
  v16 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v55 = (v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_1D1E677DC();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v52[2] = v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D1E6634C();
  v52[0] = *(v21 - 8);
  v22 = *(v52[0] + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D1E677BC();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = sub_1D1E6659C();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v52[1] = v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1D1E6636C();
  v64 = *(v30 - 8);
  v31 = *(v64 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = v52 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v36 = v52 - v35;
  v37 = sub_1D1E6639C();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  if (v11 != 2)
  {
    if ((a1 & 1) == 0)
    {
      static String.hfLocalized(_:)(0xD000000000000022, 0x80000001D1EC1E60);
      sub_1D1E6638C();
      sub_1D1E6637C();
      return (*(v64 + 56))(a9, 0, 1, v30);
    }

    v43 = a9;
    if (v63)
    {
      goto LABEL_9;
    }

    v44 = v61 ^ 1;
    if (v62 == 2)
    {
      if (v59)
      {
        goto LABEL_21;
      }

      v51 = v58;
    }

    else
    {
      if (v62 != 1)
      {
        if (v62)
        {
LABEL_9:
          static String.hfLocalized(_:)(0xD000000000000021, 0x80000001D1EC1F50);
          sub_1D1E6638C();
          sub_1D1E6637C();
          return (*(v64 + 56))(v43, 0, 1, v30);
        }

        if ((v60 & 1) == 0 && (v59 & 1) == 0)
        {
          v45 = v58;
          sub_1D1C32300(v44 & 1, v36, 0.0, 100.0, v57);
          sub_1D1C32300(v44 & 1, v34, 0.0, 100.0, v45);
          sub_1D1E677AC();
          sub_1D1E6779C();
          v65 = MEMORY[0x1E69E7CC0];
          v62 = sub_1D1C3B158();
          v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CB28, &unk_1D1EA1848);
          sub_1D17D8EA8(&qword_1EC64CB30, &qword_1EC64CB28, &unk_1D1EA1848);
          sub_1D1E6868C();
          sub_1D1E6777C();
          v63 = a9;
          v46 = *(v52[0] + 8);
          v46(v24, v21);
          sub_1D1E6779C();
          v65 = MEMORY[0x1E69E7CC0];
          sub_1D1E6868C();
          sub_1D1E6777C();
          v46(v24, v21);
          sub_1D1E6779C();
          sub_1D1E677CC();
          v47 = _s25_doNotTouchThisDummyClassCMa();
          v48 = v54;
          v49 = v55;
          *v55 = v47;
          (*(v53 + 104))(v49, *MEMORY[0x1E6968E00], v48);
          sub_1D1E66ACC();
          sub_1D1E665AC();
          v43 = v63;
          sub_1D1E6635C();
          v50 = *(v64 + 8);
          v50(v34, v30);
          v50(v36, v30);
          return (*(v64 + 56))(v43, 0, 1, v30);
        }

LABEL_21:
        v39 = *(v64 + 56);
        v40 = a9;
        goto LABEL_3;
      }

      if (v60)
      {
        goto LABEL_21;
      }

      v51 = v57;
    }

    sub_1D1C32300(v44 & 1, a9, 0.0, 100.0, v51);
    v39 = *(v64 + 56);
    v40 = a9;
    v41 = 0;
    goto LABEL_4;
  }

  v39 = *(v64 + 56);
  v40 = a9;
LABEL_3:
  v41 = 1;
LABEL_4:

  return v39(v40, v41, 1, v30);
}

uint64_t sub_1D1C32300@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v55 = a1;
  v60 = a2;
  v8 = sub_1D1E68FFC();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v54 = *(v11 - 8);
  v12 = *(v54 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v50 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v50 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CB38, &qword_1D1EA1858);
  v58 = *(v20 - 8);
  v59 = v20;
  v21 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v57 = &v50 - v22;
  v56 = sub_1D1E6673C();
  v23 = *(v56 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D1E66ADC();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6485E8, &qword_1D1EA1860);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v50 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v50 - v35;
  if (a3 > a5)
  {
    v37 = a3;
  }

  else
  {
    v37 = a5;
  }

  if (v37 > a4)
  {
    v37 = a4;
  }

  v38 = (v37 - a3) / (a4 - a3);
  if (v55)
  {
    v61 = v38;
    sub_1D1E66ABC();
    sub_1D173FC5C();
    sub_1D1E6665C();
    sub_1D1E6672C();
    MEMORY[0x1D388FCA0](v26, v29);
    (*(v23 + 8))(v26, v56);
    v39 = *(v30 + 8);
    v39(v34, v29);
    v40 = v57;
    sub_1D1E6664C();
    v39(v36, v29);
    sub_1D17D8EA8(&qword_1EC64CB40, &qword_1EC64CB38, &qword_1D1EA1858);
    v41 = v59;
    sub_1D1E675AC();
    return (*(v58 + 8))(v40, v41);
  }

  else
  {
    v61 = v38 * 100.0;
    sub_1D1E66ABC();
    sub_1D173FC5C();
    sub_1D1E6662C();
    v44 = v52;
    v43 = v53;
    v45 = v50;
    (*(v52 + 104))(v50, *MEMORY[0x1E69E7030], v53);
    MEMORY[0x1D388FCB0](v45, 0, 1, v11);
    (*(v44 + 8))(v45, v43);
    v46 = *(v54 + 8);
    v46(v15, v11);
    sub_1D1E6672C();
    v47 = v51;
    MEMORY[0x1D388FCE0](v26, v11);
    (*(v23 + 8))(v26, v56);
    v46(v18, v11);
    v48 = v57;
    sub_1D1E665CC();
    v46(v47, v11);
    sub_1D17D8EA8(&qword_1EC64CB40, &qword_1EC64CB38, &qword_1D1EA1858);
    v49 = v59;
    sub_1D1E675AC();
    return (*(v58 + 8))(v48, v49);
  }
}

uint64_t static StaticService.humidifierDehumidifierTargetValueString(active:targetHumidifierDehumidifierState:humidifierThreshold:dehumidifierThreshold:strippedPercentageSymbol:)(char a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, char a8)
{
  if (a1 == 2)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    v10 = 0xD000000000000022;
    v9 = 0x80000001D1EC1E60;
    return static String.hfLocalized(_:)(v10, v9);
  }

  if (a3)
  {
LABEL_5:
    v9 = 0x80000001D1EC1F50;
    v10 = 0xD000000000000021;
    return static String.hfLocalized(_:)(v10, v9);
  }

  if (a2 == 2)
  {
    if ((a7 & 1) == 0)
    {
      v23 = *&a6;
      return sub_1D19CB618((a8 & 1) == 0, 0.0, 100.0, v23);
    }

    return 0;
  }

  if (a2 == 1)
  {
    if ((a5 & 1) == 0)
    {
      v23 = *&a4;
      return sub_1D19CB618((a8 & 1) == 0, 0.0, 100.0, v23);
    }

    return 0;
  }

  if (a2)
  {
    goto LABEL_5;
  }

  result = 0;
  if ((a5 & 1) == 0 && (a7 & 1) == 0)
  {
    static String.hfLocalized(_:)(0xD000000000000033, 0x80000001D1EC7160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D1E73A90;
    v15 = sub_1D19CB618((a8 & 1) == 0, 0.0, 100.0, *&a4);
    v17 = v16;
    v18 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    v19 = sub_1D1757D20();
    *(v14 + 64) = v19;
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    v20 = sub_1D19CB618((a8 & 1) == 0, 0.0, 100.0, *&a6);
    *(v14 + 96) = v18;
    *(v14 + 104) = v19;
    *(v14 + 72) = v20;
    *(v14 + 80) = v21;
    v22 = sub_1D1E6783C();

    return v22;
  }

  return result;
}

uint64_t static StaticService.localizedHumiditySensorValue(currentRelativeHumidity:includesPercentSymbol:)@<X0>(double a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v54 = a3;
  v61 = a2;
  v55 = a1;
  v62 = a4;
  v4 = sub_1D1E68FFC();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v53 = *(v8 - 8);
  v9 = *(v53 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v50 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CB38, &qword_1D1EA1858);
  v59 = *(v17 - 8);
  v60 = v17;
  v18 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v58 = &v50 - v19;
  v20 = sub_1D1E6673C();
  v56 = *(v20 - 8);
  v57 = v20;
  v21 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D1E66ADC();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6485E8, &qword_1D1EA1860);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v50 - v32;
  if (v61)
  {
    v34 = sub_1D1E6636C();
    v35 = *(*(v34 - 8) + 56);
    v36 = v34;
    v37 = v62;

    return v35(v37, 1, 1, v36);
  }

  else
  {
    if (v54)
    {
      v63 = v55 / 100.0;
      sub_1D1E66ABC();
      sub_1D173FC5C();
      sub_1D1E6665C();
      sub_1D1E6672C();
      MEMORY[0x1D388FCA0](v23, v26);
      (*(v56 + 8))(v23, v57);
      v39 = *(v27 + 8);
      v39(v31, v26);
      v40 = v58;
      sub_1D1E6664C();
      v39(v33, v26);
      sub_1D17D8EA8(&qword_1EC64CB40, &qword_1EC64CB38, &qword_1D1EA1858);
      v41 = v62;
      v42 = v60;
      sub_1D1E675AC();
      (*(v59 + 8))(v40, v42);
    }

    else
    {
      v63 = v55;
      sub_1D1E66ABC();
      sub_1D173FC5C();
      sub_1D1E6662C();
      v44 = v51;
      v43 = v52;
      (*(v51 + 104))(v7, *MEMORY[0x1E69E7030], v52);
      MEMORY[0x1D388FCB0](v7, 0, 1, v8);
      (*(v44 + 8))(v7, v43);
      v45 = *(v53 + 8);
      v45(v12, v8);
      sub_1D1E6672C();
      v46 = v50;
      MEMORY[0x1D388FCE0](v23, v8);
      (*(v56 + 8))(v23, v57);
      v45(v15, v8);
      v47 = v58;
      sub_1D1E665CC();
      v45(v46, v8);
      sub_1D17D8EA8(&qword_1EC64CB40, &qword_1EC64CB38, &qword_1D1EA1858);
      v41 = v62;
      v48 = v60;
      sub_1D1E675AC();
      (*(v59 + 8))(v47, v48);
    }

    v49 = sub_1D1E6636C();
    return (*(*(v49 - 8) + 56))(v41, 0, 1, v49);
  }
}

uint64_t static StaticService.leakSensorString(context:leakDetected:)(uint64_t a1, uint64_t a2, char a3)
{
  result = 0;
  if ((a3 & 1) == 0 && a2 == 1)
  {
    return static String.hfLocalized(_:)(0xD000000000000027, 0x80000001D1EC6F60);
  }

  return result;
}

uint64_t static StaticService.lightBulbAndNaturalLightingDescriptionString(powerState:brightness:isNaturalLightSupported:isNaturalLightEnabled:)(char a1, uint64_t a2, char a3, char a4, char a5)
{
  if (a1 == 2)
  {
    return 0;
  }

  v6 = (a1 & 1) == 0;
  if (a1)
  {
    v8 = 0xD000000000000021;
  }

  else
  {
    v8 = 0xD000000000000022;
  }

  if (v6)
  {
    v9 = "oachAngleSupported";
  }

  else
  {
    v9 = "startUpCurrentLevel";
  }

  if ((a1 & 1) != 0 && (a3 & 1) == 0)
  {
    if (a2 >= 1 && (a4 & 1) != 0 && (a5 & 1) != 0)
    {
      v14 = sub_1D19CB618(1, 0.0, 100.0, a2);

      MEMORY[0x1D3890F70](0x20A280E220, 0xA500000000000000);

      v10 = static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC6F40);
      v12 = v11;

      MEMORY[0x1D3890F70](v10, v12);

      return v14;
    }

    if (a2 >= 1)
    {
      return sub_1D19CB618(1, 0.0, 100.0, a2);
    }

    v8 = 0xD000000000000021;
    v9 = "startUpCurrentLevel";
  }

  v13 = static String.hfLocalized(_:)(v8, v9 | 0x8000000000000000);

  return v13;
}

uint64_t static StaticService.lockPhysicalControlString(lockPhysicalControlValues:)(uint64_t a1)
{
  v2 = 0xD00000000000002FLL;
  v3 = *(a1 + 16);
  v4 = (a1 + 32);
  v5 = "lControlsUnlocked";
  while (v3)
  {
    v6 = *v4++;
    --v3;
    if (!v6)
    {
      v2 = 0xD000000000000031;
      v5 = "ormatted humidities";
      return static String.hfLocalized(_:)(v2, v5 | 0x8000000000000000);
    }
  }

  return static String.hfLocalized(_:)(v2, v5 | 0x8000000000000000);
}

unint64_t static StaticService.lockStateString(lockStateValues:)(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = *(a1 + 16);
  v9 = a1 + 56;
LABEL_2:
  v10 = (v9 + 32 * v2);
  for (result = v2; v8 != result; ++result)
  {
    if (result >= v8)
    {
      __break(1u);
LABEL_58:
      __break(1u);
      return result;
    }

    v2 = result + 1;
    if (__OFADD__(result, 1))
    {
      goto LABEL_58;
    }

    if (*(v10 - 16) != 1)
    {
      v13 = *(v10 - 3);
      v14 = *(v10 - 1);
      if (!v13 && (*v10 & 1) == 0 && v14 == 1)
      {
        v7 = 1;
        goto LABEL_2;
      }

      if ((v13 != 1) | *v10 & 1)
      {
        if (v13)
        {
          if (v13 == 2)
          {
            v3 = 1;
            goto LABEL_2;
          }

          if (v13 == 3)
          {
            v1 = 1;
            goto LABEL_2;
          }
        }

        else
        {
          if (v14)
          {
            LOBYTE(v12) = 1;
          }

          else
          {
            v12 = *v10;
          }

          if ((v12 & 1) == 0)
          {
            v4 = 1;
            goto LABEL_2;
          }
        }
      }

      else
      {
        if (!v14)
        {
          v6 = 1;
          goto LABEL_2;
        }

        if (v14 == 1)
        {
          v5 = 1;
          goto LABEL_2;
        }
      }
    }

    v10 += 32;
  }

  v15 = v3 | v1 | v6;
  v16 = v15 | v7 | v4;
  if (((v16 | v5) & 1) == 0)
  {
    return 0;
  }

  v17 = "ge.exclamationmark.fill";
  v18 = (v1 & 1) == 0;
  if (v1)
  {
    v19 = 0xD00000000000002ELL;
  }

  else
  {
    v19 = 0xD000000000000030;
  }

  if (v18)
  {
    v17 = "ValueLockMechanismStateLocking";
  }

  v20 = (v3 & 1) == 0;
  if (v3)
  {
    v21 = 0xD00000000000002DLL;
  }

  else
  {
    v21 = v19;
  }

  if (v20)
  {
    v22 = v17;
  }

  else
  {
    v22 = "ValueLockMechanismStateUnknown";
  }

  v23 = (v7 & 1) == 0;
  if (v7)
  {
    v24 = 0xD00000000000002ELL;
  }

  else
  {
    v24 = 0xD000000000000030;
  }

  if (v23)
  {
    v25 = "ValueLockMechanismStateSecured";
  }

  else
  {
    v25 = "ValueLockPhysicalControlsLocked";
  }

  if (v15)
  {
    v24 = v21;
    v26 = v22;
  }

  else
  {
    v26 = v25;
  }

  if (v16)
  {
    v27 = v24;
  }

  else
  {
    v27 = 0xD00000000000002ELL;
  }

  if (v16)
  {
    v28 = v26;
  }

  else
  {
    v28 = "ValueLockMechanismStateJammed";
  }

  return static String.hfLocalized(_:)(v27, v28 | 0x8000000000000000);
}

uint64_t static StaticService.motionSensorString(context:motionDetected:)(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
    return 0;
  }

  v3 = "HFStatusTitleOccupancyAlarm";
  if (a2)
  {
    v3 = "ionOccupancyAlarm_Triggered";
    v4 = 0xD000000000000028;
  }

  else
  {
    v4 = 0xD000000000000025;
  }

  return static String.hfLocalized(_:)(v4, v3 | 0x8000000000000000);
}

uint64_t static StaticService.motorizedDoorOrWindowTargetString(doorOrWindowValues:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = -v1;
  v10 = a1 + 56;
  v11 = 1;
LABEL_3:
  v12 = (v10 + 32 * v8++);
  do
  {
    if (*(v12 - 16))
    {
      if ((*v12 & 1) == 0)
      {
        v13 = *(v12 - 1);
        if (v13)
        {
          if (v13 == 2)
          {
            v7 = 1;
          }

          else if (v13 == 1)
          {
            v2 = 1;
            if (v9 + v8)
            {
              goto LABEL_3;
            }

LABEL_28:
            v16 = "HFCharacteristicValueDoorStateOpening";
LABEL_32:
            v18 = (v16 - 32) | 0x8000000000000000;
            v19 = 0xD000000000000025;
            return static String.hfLocalized(_:)(v19, v18);
          }
        }

        else
        {
          v3 = 1;
        }
      }
    }

    else
    {
      v14 = *(v12 - 3);
      if (v14 == 100)
      {
        v15 = 1;
      }

      else
      {
        v15 = v5;
      }

      if (v14)
      {
        v5 = v15;
      }

      else
      {
        v6 = 1;
      }

      if (v11)
      {
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }

        v11 = 1;
      }

      else
      {
        if (v4 < v14)
        {
LABEL_5:
          v11 = 0;
          v4 = *(v12 - 3);
          goto LABEL_6;
        }

        v11 = 0;
      }
    }

LABEL_6:
    ++v8;
    v12 += 32;
  }

  while (v9 + v8 != 1);
  if (v2)
  {
    goto LABEL_28;
  }

  if (v3)
  {
    v16 = "HFCharacteristicValueDoorStateClosing";
    goto LABEL_32;
  }

  if (v5)
  {
    v20 = "ValueDoorStateClosed";
    v19 = 0xD000000000000022;
LABEL_38:
    v18 = v20 | 0x8000000000000000;
    return static String.hfLocalized(_:)(v19, v18);
  }

  if (v6)
  {
    v20 = "ValueDoorStateOpening";
    v19 = 0xD000000000000024;
    goto LABEL_38;
  }

  if (v11)
  {
    if (v7)
    {
      v16 = "HFCharacteristicValueDoorStateStopped";
      goto LABEL_32;
    }

    return 0;
  }

  else
  {
    v21 = v4;
    static String.hfLocalized(_:)(0xD000000000000031, 0x80000001D1EC6D00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D1E739C0;
    v23 = sub_1D19CB618(1, 0.0, 100.0, v21);
    v25 = v24;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1D1757D20();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    v26 = sub_1D1E6784C();

    return v26;
  }
}

uint64_t static StaticService.occupancySensorString(context:occupancyDetected:)(uint64_t a1, uint64_t a2, char a3)
{
  result = 0;
  if ((a3 & 1) == 0 && a2 == 1)
  {
    return static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EC5BE0);
  }

  return result;
}

uint64_t static StaticService.smokeSensorString(context:smokeDetected:)(uint64_t a1, uint64_t a2, char a3)
{
  result = 0;
  if ((a3 & 1) == 0 && a2 == 1)
  {
    return static String.hfLocalized(_:)(0xD000000000000027, 0x80000001D1EC5D30);
  }

  return result;
}

uint64_t static StaticService.statusFaultString(statusFault:)(uint64_t a1, char a2)
{
  result = 0;
  if ((a2 & 1) == 0 && a1 == 1)
  {
    return static String.hfLocalized(_:)(0xD00000000000002CLL, 0x80000001D1EC72B0);
  }

  return result;
}

uint64_t static StaticService.securitySystemString(securitySystemValues:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = (a1 + 56);
  do
  {
    v10 = *(v9 - 3);
    v11 = *(v9 - 16);
    v12 = *(v9 - 1);
    v13 = *v9;
    if (v11)
    {
      goto LABEL_12;
    }

    if (v10 == 4)
    {
      v8 = 1;
      goto LABEL_4;
    }

    if (v10)
    {
LABEL_12:
      if (*v9)
      {
        goto LABEL_4;
      }

      if (v12 <= 1)
      {
        if (v12)
        {
          goto LABEL_15;
        }

        v2 = 1;
        goto LABEL_4;
      }
    }

    else
    {
      if (*v9)
      {
        goto LABEL_4;
      }

      if (v12 <= 1)
      {
        if (!v12)
        {
          v4 = 1;
          goto LABEL_4;
        }

LABEL_15:
        if (v12 != 1)
        {
          goto LABEL_4;
        }

        v14 = (v10 == 1) & ~v11;
        v5 |= v14;
LABEL_21:
        v2 |= v14 ^ 1;
        goto LABEL_4;
      }
    }

    if (v12 == 2)
    {
      v14 = (v10 == 2) & ~v11;
      v6 |= v14;
      goto LABEL_21;
    }

    if (v12 == 3)
    {
      v15 = (v10 == 3) & ~v11;
      v7 |= v15;
      v3 |= v15 ^ 1;
    }

LABEL_4:
    v9 += 32;
    --v1;
  }

  while (v1);
  v16 = v8 | v2 | v3;
  v17 = v16 | v4 | v5;
  if (((v17 | v6 | v7) & 1) == 0)
  {
    return 0;
  }

  v18 = (v2 & 1) == 0;
  if (v2)
  {
    v19 = 0xD000000000000035;
  }

  else
  {
    v19 = 0xD000000000000038;
  }

  if (v18)
  {
    v20 = "StateGroupedTitleStatusFault";
  }

  else
  {
    v20 = "ritySystemStateDisarming";
  }

  if (v8)
  {
    v19 = 0xD000000000000038;
    v21 = "smStateUnsecured";
  }

  else
  {
    v21 = v20;
  }

  if (v4)
  {
    v22 = "HFCharacteristicValueCurrentSecuritySystemStateStayArm";
  }

  else
  {
    v22 = "HFCharacteristicValueCurrentSecuritySystemStateAwayArm";
  }

  v23 = (v22 - 32);
  if (v16)
  {
    v23 = v21;
  }

  else
  {
    v19 = 0xD000000000000036;
  }

  if (v6)
  {
    v24 = "HFCharacteristicValueCurrentSecuritySystemStateNightArm";
  }

  else
  {
    v24 = "HFCharacteristicValueCurrentSecuritySystemStateDisarmed";
  }

  v25 = (v24 - 32);
  if (v17)
  {
    v26 = v19;
  }

  else
  {
    v26 = 0xD000000000000037;
  }

  if (v17)
  {
    v25 = v23;
  }

  return static String.hfLocalized(_:)(v26, v25 | 0x8000000000000000);
}

uint64_t static StaticService.swingModeString(swingModeValues:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  while (v1)
  {
    v3 = *v2++;
    --v1;
    if (v3 == 1)
    {
      return static String.hfLocalized(_:)(0xD000000000000013, 0x80000001D1EC7360);
    }
  }

  return static String.hfLocalized(_:)(0xD000000000000014, 0x80000001D1EC7380);
}

uint64_t static StaticService.switchString(powerState:)(char a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  v2 = "oachAngleSupported";
  if (a1)
  {
    v2 = "startUpCurrentLevel";
    v3 = 0xD000000000000021;
  }

  else
  {
    v3 = 0xD000000000000022;
  }

  return static String.hfLocalized(_:)(v3, v2 | 0x8000000000000000);
}

uint64_t static StaticService.televisionInputSourceString(activeIdentifier:inputSources:)(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 1) != 0 || !a3)
  {
    return 0;
  }

  v4 = *(a3 + 16);
  v3 = a3 + 16;
  v5 = v4 + 1;
  while (--v5)
  {
    v6 = (v3 + 40);
    v7 = *(v3 + 16);
    v3 += 40;
    if (v7 == a1)
    {
      if (*(v6 - 1))
      {
        v8 = *(v6 - 2);
        v9 = *(v6 - 1);
      }

      else
      {
        v8 = *v6;
        v11 = v6[1];
      }

      return v8;
    }
  }

  return v5;
}

uint64_t static StaticService.thermostatString(targetHeatingCoolingMode:currentHeatingCooling:targetTemperature:heatingThreshold:coolingThreshold:stripTemperatureSymbol:temperatureScale:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, char a18, char a19, unsigned __int8 *a20)
{
  result = 0;
  if ((a2 & 1) == 0 && (a4 & 1) == 0 && (a6 & 1) == 0)
  {
    v17 = *a20;
    if (a19)
    {
      v18 = static ClimateSummarizer.strippedTemperatureString(_:)();
    }

    else
    {
      v43 = *a20;
      v18 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v43, *&a5);
    }

    v20 = v18;
    v21 = v19;
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        if (a3 != 2)
        {
          if (a3 != 1)
          {
            if (!a3)
            {
              v22 = "HFServiceControlDescriptionHeaterCoolerTargetCoolingWithTemperature";
              goto LABEL_34;
            }

LABEL_38:

            return 0;
          }

          goto LABEL_35;
        }

        goto LABEL_36;
      }

      if (a1 == 3)
      {
        if ((a8 & 1) == 0 && (a18 & 1) == 0)
        {

          v23 = *&a7;
          if (a17 < *&a7)
          {
            v23 = a17;
          }

          if (a19)
          {
            v24 = static ClimateSummarizer.strippedTemperatureString(_:)();
            v26 = v25;
            v27 = static ClimateSummarizer.strippedTemperatureString(_:)();
          }

          else
          {
            v42 = v17;
            v24 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v42, v23);
            v26 = v35;
            v41 = v17;
            v27 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v41, a17);
          }

          v36 = v27;
          v37 = v28;
          static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EBA3F0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
          v38 = swift_allocObject();
          *(v38 + 16) = xmmword_1D1E73A90;
          v39 = MEMORY[0x1E69E6158];
          *(v38 + 56) = MEMORY[0x1E69E6158];
          v40 = sub_1D1757D20();
          *(v38 + 32) = v24;
          *(v38 + 40) = v26;
          *(v38 + 96) = v39;
          *(v38 + 104) = v40;
          *(v38 + 64) = v40;
          *(v38 + 72) = v36;
          *(v38 + 80) = v37;
          v34 = sub_1D1E6783C();

          goto LABEL_42;
        }

        v29 = "DescriptionHeaterCoolerOff";
        v30 = 0xD000000000000031;
        goto LABEL_40;
      }
    }

    else
    {
      if (!a1)
      {
        if (a3 == 2)
        {
          goto LABEL_36;
        }

        if (a3 != 1)
        {
          if (!a3)
          {

            return static String.hfLocalized(_:)(0xD00000000000002ALL, 0x80000001D1EC6EA0);
          }

          goto LABEL_38;
        }

        goto LABEL_35;
      }

      if (a1 == 1)
      {
        if (a3 != 2)
        {
          if (a3 != 1)
          {
            if (!a3)
            {
              v22 = "HFServiceControlDescriptionHeaterCoolerTargetHeatingWithTemperature";
LABEL_34:
              v29 = (v22 - 32);
              v30 = 0xD000000000000043;
LABEL_40:
              v32 = v29 | 0x8000000000000000;
              goto LABEL_41;
            }

            goto LABEL_38;
          }

          goto LABEL_35;
        }

LABEL_36:
        v31 = "HFServiceControlDescriptionHeaterCoolerCoolingToWithTemperature";
        goto LABEL_37;
      }
    }

    if (a3 == 2)
    {
      goto LABEL_36;
    }

    if (a3 != 1)
    {
      goto LABEL_38;
    }

LABEL_35:
    v31 = "HFServiceControlDescriptionHeaterCoolerHeatingToWithTemperature";
LABEL_37:
    v32 = (v31 - 32) | 0x8000000000000000;
    v30 = 0xD00000000000003FLL;
LABEL_41:
    static String.hfLocalized(_:)(v30, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1D1E739C0;
    *(v33 + 56) = MEMORY[0x1E69E6158];
    *(v33 + 64) = sub_1D1757D20();
    *(v33 + 32) = v20;
    *(v33 + 40) = v21;
    v34 = sub_1D1E6783C();

LABEL_42:

    return v34;
  }

  return result;
}

uint64_t static StaticService.targetThermostatString(currentRelativeHumidity:currentTemperature:targetHeatingCoolingMode:currentHeatingCooling:targetTemperature:heatingThreshold:coolingThreshold:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, char a18, double a19, char a20, double a21, char a22)
{
  if ((a4 & 1) == 0)
  {
    return sub_1D1C3999C(a1, a2 & 1, *&a3);
  }

  result = 0;
  if ((a6 & 1) == 0 && (a8 & 1) == 0 && (a18 & 1) == 0)
  {
    v42 = 0;
    v17 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v42, a17);
    v18 = a5;
    v19 = v17;
    v21 = v20;
    if (v18 > 1)
    {
      v22 = a7;
      if (v18 == 2)
      {
        if (!a7)
        {
          v23 = "HFServiceControlDescriptionHeaterCoolerTargetCoolingWithTemperature";
          goto LABEL_33;
        }

LABEL_25:
        if (v22 != 1)
        {
          if (v22 == 2)
          {
            goto LABEL_27;
          }

          goto LABEL_30;
        }

        goto LABEL_28;
      }

      if (v18 == 3)
      {
        if ((a20 & 1) == 0 && (a22 & 1) == 0)
        {

          v24 = a19;
          if (a21 < a19)
          {
            v24 = a21;
          }

          v41 = 0;
          v25 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v41, v24);
          v27 = v26;
          v40 = 0;
          v28 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v40, a21);
          v30 = v29;
          static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EBA3F0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_1D1E73A90;
          v32 = MEMORY[0x1E69E6158];
          *(v31 + 56) = MEMORY[0x1E69E6158];
          v33 = sub_1D1757D20();
          *(v31 + 32) = v25;
          *(v31 + 40) = v27;
          *(v31 + 96) = v32;
          *(v31 + 104) = v33;
          *(v31 + 64) = v33;
          *(v31 + 72) = v28;
          *(v31 + 80) = v30;
          v34 = sub_1D1E6783C();

          goto LABEL_36;
        }

        v38 = "DescriptionHeaterCoolerOff";
        v37 = 0xD000000000000031;
        goto LABEL_34;
      }
    }

    else
    {
      v22 = a7;
      if (!v18)
      {
        if (!a7)
        {

          return static String.hfLocalized(_:)(0xD00000000000002ALL, 0x80000001D1EC6EA0);
        }

        goto LABEL_25;
      }

      if (v18 == 1)
      {
        if (!a7)
        {
          v23 = "HFServiceControlDescriptionHeaterCoolerTargetHeatingWithTemperature";
LABEL_33:
          v38 = (v23 - 32);
          v37 = 0xD000000000000043;
LABEL_34:
          v36 = v38 | 0x8000000000000000;
          goto LABEL_35;
        }

        goto LABEL_25;
      }
    }

    if (v22 == 2)
    {
LABEL_27:
      v35 = "HFServiceControlDescriptionHeaterCoolerCoolingToWithTemperature";
LABEL_29:
      v36 = (v35 - 32) | 0x8000000000000000;
      v37 = 0xD00000000000003FLL;
LABEL_35:
      static String.hfLocalized(_:)(v37, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1D1E739C0;
      *(v39 + 56) = MEMORY[0x1E69E6158];
      *(v39 + 64) = sub_1D1757D20();
      *(v39 + 32) = v19;
      *(v39 + 40) = v21;
      v34 = sub_1D1E6783C();

LABEL_36:

      return v34;
    }

    if (v22 != 1)
    {
LABEL_30:

      return 0;
    }

LABEL_28:
    v35 = "HFServiceControlDescriptionHeaterCoolerHeatingToWithTemperature";
    goto LABEL_29;
  }

  return result;
}

uint64_t static StaticService.sensorCharacteristicString(context:services:characteristicKind:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v686 = a3;
  v690 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v679 = &v672 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v678 = &v672 - v7;
  v689 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v8 = *(*(v689 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v689);
  MEMORY[0x1EEE9AC00](v9);
  v11 = MEMORY[0x1EEE9AC00](&v672 - v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v685 = &v672 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v684 = &v672 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v683 = &v672 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v682 = &v672 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v688 = &v672 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v687 = &v672 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v680 = &v672 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v672 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v681 = &v672 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v673 = &v672 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v677 = &v672 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v676 = &v672 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v675 = &v672 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v674 = &v672 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v48 = MEMORY[0x1EEE9AC00](v47);
  v49 = MEMORY[0x1EEE9AC00](v48);
  v51 = &v672 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49);
  v54 = &v672 - v53;
  v55 = MEMORY[0x1EEE9AC00](v52);
  v57 = &v672 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55);
  v60 = &v672 - v59;
  v61 = MEMORY[0x1EEE9AC00](v58);
  v63 = &v672 - v62;
  v64 = MEMORY[0x1EEE9AC00](v61);
  v66 = &v672 - v65;
  v67 = MEMORY[0x1EEE9AC00](v64);
  v69 = &v672 - v68;
  v70 = MEMORY[0x1EEE9AC00](v67);
  v82 = &v672 - v81;
  v83 = 0;
  v84 = *v686 - 6;
  v686 = v34;
  switch(v84)
  {
    case 0:
      v85 = *(v690 + 64);
      v686 = (v690 + 64);
      v86 = 1 << *(v690 + 32);
      v87 = -1;
      if (v86 < 64)
      {
        v87 = ~(-1 << v86);
      }

      v88 = v87 & v85;
      v685 = (v86 + 63) >> 6;

      v90 = 0;
      v684 = MEMORY[0x1E69E7CC0];
      v91 = v682;
      if (v88)
      {
        goto LABEL_5;
      }

      while (1)
      {
        do
        {
LABEL_7:
          v109 = v90 + 1;
          if (__OFADD__(v90, 1))
          {
            goto LABEL_379;
          }

          if (v109 >= v685)
          {

            v652 = v684;
            v653 = 1;
            goto LABEL_342;
          }

          v88 = *&v686[8 * v109];
          ++v90;
        }

        while (!v88);
        v90 = v109;
        do
        {
LABEL_5:
          while (1)
          {
            v92 = __clz(__rbit64(v88));
            v88 &= v88 - 1;
            v93 = v92 | (v90 << 6);
            v94 = v690;
            v95 = *(v690 + 48);
            v96 = sub_1D1E66A7C();
            v97 = *(v96 - 8);
            (*(v97 + 16))(v91, v95 + *(v97 + 72) * v93, v96);
            v98 = *(v94 + 56);
            v99 = (type metadata accessor for StaticService(0) - 8);
            v100 = v98 + *(*v99 + 72) * v93;
            v101 = v689;
            sub_1D1C3BA30(v100, v91 + *(v689 + 48), type metadata accessor for StaticService);
            v102 = v687;
            sub_1D1741C08(v91, v687, &qword_1EC642DB0, &unk_1D1E6F360);
            v103 = *(v101 + 48);
            v104 = v688;
            v105 = v688 + v103;
            (*(v97 + 32))(v688, v102, v96);
            sub_1D1C3B520(v102 + v103, v104 + v103, type metadata accessor for StaticService);
            v692 = *(v105 + v99[34]);
            v691 = 6;
            sub_1D1CE53A4(&v691);
            v107 = v106;
            LOBYTE(v99) = v108;
            sub_1D1741A30(v104, &qword_1EC642DB0, &unk_1D1E6F360);
            result = sub_1D1741A30(v91, &qword_1EC642DB0, &unk_1D1E6F360);
            if ((v99 & 1) == 0)
            {
              break;
            }

            if (!v88)
            {
              goto LABEL_7;
            }
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D177D4E8(0, *(v684 + 2) + 1, 1, v684);
            v684 = result;
          }

          v111 = *(v684 + 2);
          v110 = *(v684 + 3);
          if (v111 >= v110 >> 1)
          {
            result = sub_1D177D4E8((v110 > 1), v111 + 1, 1, v684);
            v684 = result;
          }

          v112 = v684;
          *(v684 + 2) = v111 + 1;
          *&v112[8 * v111 + 32] = v107;
        }

        while (v88);
      }

    case 1:
      v336 = v690 + 64;
      v337 = 1 << *(v690 + 32);
      v338 = -1;
      if (v337 < 64)
      {
        v338 = ~(-1 << v337);
      }

      v339 = v338 & *(v690 + 64);
      v340 = ((v337 + 63) >> 6);

      v683 = MEMORY[0x1E69E7CC0];
      v684 = v340;
      v341 = &unk_1D1E6F360;
      v342 = v673;
      v685 = v336;
      v343 = 0;
      if (v339)
      {
        goto LABEL_164;
      }

LABEL_165:
      while (2)
      {
        v345 = v343 + 1;
        if (__OFADD__(v343, 1))
        {
          __break(1u);
          goto LABEL_375;
        }

        if (v345 < v340)
        {
          v339 = *(v336 + 8 * v345);
          ++v343;
          if (!v339)
          {
            continue;
          }

          v344 = v341;
          while (1)
          {
            v346 = __clz(__rbit64(v339));
            v339 &= v339 - 1;
            v347 = v346 | (v345 << 6);
            v348 = v690;
            v349 = *(v690 + 48);
            v350 = sub_1D1E66A7C();
            v351 = *(v350 - 8);
            v687 = v350;
            v688 = v351;
            (*(v351 + 16))(v342, v349 + *(v351 + 72) * v347, v350);
            v352 = *(v348 + 56);
            v353 = (type metadata accessor for StaticService(0) - 8);
            v354 = v352 + *(*v353 + 72) * v347;
            v355 = v689;
            sub_1D1C3BA30(v354, v342 + *(v689 + 48), type metadata accessor for StaticService);
            v356 = v681;
            v341 = v344;
            sub_1D1741C08(v342, v681, &qword_1EC642DB0, v344);
            v357 = *(v355 + 48);
            v358 = v342;
            v359 = v686;
            v360 = &v686[v357];
            (*(v688 + 32))(v686, v356, v687);
            sub_1D1C3B520(v356 + v357, v359 + v357, type metadata accessor for StaticService);
            v692 = *&v360[v353[34]];
            v691 = 7;
            v698 = StaticCharacteristicsBag.int(for:)(&v691);
            if (v698.is_nil)
            {
              sub_1D1741A30(v359, &qword_1EC642DB0, v341);
              result = sub_1D1741A30(v358, &qword_1EC642DB0, v341);
              v343 = v345;
              v342 = v358;
              v340 = v684;
              v336 = v685;
              if (!v339)
              {
                goto LABEL_165;
              }
            }

            else
            {
              value = v698.value;
              sub_1D1741A30(v359, &qword_1EC642DB0, v341);
              sub_1D1741A30(v358, &qword_1EC642DB0, v341);
              result = swift_isUniquelyReferenced_nonNull_native();
              v342 = v358;
              if ((result & 1) == 0)
              {
                result = sub_1D177FBD8(0, *(v683 + 2) + 1, 1, v683);
                v683 = result;
              }

              v363 = *(v683 + 2);
              v362 = *(v683 + 3);
              if (v363 >= v362 >> 1)
              {
                result = sub_1D177FBD8((v362 > 1), v363 + 1, 1, v683);
                v683 = result;
              }

              v364 = v683;
              *(v683 + 2) = v363 + 1;
              *&v364[8 * v363 + 32] = value;
              v340 = v684;
              v336 = v685;
              v343 = v345;
              if (!v339)
              {
                goto LABEL_165;
              }
            }

LABEL_164:
            v344 = v341;
            v345 = v343;
          }
        }

        break;
      }

      v654 = _s13HomeDataModel13StaticServiceV20airParticulateString0fG5SizesSSSgSaySo024HMCharacteristicValueAirG4SizeVG_tFZ_0(v683);
      goto LABEL_343;
    case 12:
      v271 = v690 + 64;
      v272 = 1 << *(v690 + 32);
      v273 = -1;
      if (v272 < 64)
      {
        v273 = ~(-1 << v272);
      }

      v274 = v273 & *(v690 + 64);
      v275 = (v272 + 63) >> 6;

      v276 = 0;
      while (v274)
      {
LABEL_131:
        v278 = __clz(__rbit64(v274));
        v274 &= v274 - 1;
        v279 = v278 | (v276 << 6);
        v280 = v690;
        v281 = *(v690 + 48);
        v282 = sub_1D1E66A7C();
        v687 = *(v282 - 8);
        v283 = v281 + *(v687 + 72) * v279;
        v284 = *(v687 + 16);
        v688 = v282;
        v284(v82, v283);
        v285 = *(v280 + 56);
        v286 = (type metadata accessor for StaticService(0) - 8);
        v287 = v285 + *(*v286 + 72) * v279;
        v288 = v689;
        sub_1D1C3BA30(v287, &v82[*(v689 + 48)], type metadata accessor for StaticService);
        sub_1D1741C08(v82, v69, &qword_1EC642DB0, &unk_1D1E6F360);
        v289 = &v69[*(v288 + 48)];
        v692 = *(v289 + v286[34]);
        v691 = 18;
        v695 = StaticCharacteristicsBag.int(for:)(&v691);
        v290 = v695.value;
        LOBYTE(v285) = v695.is_nil;
        sub_1D1741A30(v82, &qword_1EC642DB0, &unk_1D1E6F360);
        if (v285)
        {
          sub_1D1C3BED8(v289, type metadata accessor for StaticService);
          result = (*(v687 + 8))(v69, v688);
          continue;
        }

        sub_1D1C3BED8(v289, type metadata accessor for StaticService);
        result = (*(v687 + 8))(v69, v688);
        if (v290 == 1)
        {

          v670 = "eContactDetected";
          v671 = 0xD000000000000036;
          return static String.hfLocalized(_:)(v671, v670 | 0x8000000000000000);
        }
      }

      while (1)
      {
        v277 = v276 + 1;
        if (__OFADD__(v276, 1))
        {
          goto LABEL_390;
        }

        if (v277 >= v275)
        {
          goto LABEL_235;
        }

        v274 = *(v271 + 8 * v277);
        ++v276;
        if (v274)
        {
          v276 = v277;
          goto LABEL_131;
        }
      }

    case 13:
      v468 = *(v690 + 64);
      v685 = v690 + 64;
      v686 = v72;
      v469 = 1 << *(v690 + 32);
      v470 = -1;
      if (v469 < 64)
      {
        v470 = ~(-1 << v469);
      }

      v471 = v470 & v468;
      v684 = ((v469 + 63) >> 6);

      v472 = 0;
      v683 = MEMORY[0x1E69E7CC0];
      v473 = v686;
      if (v471)
      {
        goto LABEL_239;
      }

LABEL_241:
      while (2)
      {
        v491 = v472 + 1;
        if (__OFADD__(v472, 1))
        {
          goto LABEL_383;
        }

        if (v491 < v684)
        {
          v471 = *(v685 + 8 * v491);
          ++v472;
          if (v471)
          {
            v472 = v491;
            do
            {
LABEL_239:
              while (1)
              {
                v474 = __clz(__rbit64(v471));
                v471 &= v471 - 1;
                v475 = v474 | (v472 << 6);
                v476 = v690;
                v477 = *(v690 + 48);
                v478 = sub_1D1E66A7C();
                v479 = *(v478 - 8);
                (*(v479 + 16))(v473, v477 + *(v479 + 72) * v475, v478);
                v480 = *(v476 + 56);
                v481 = (type metadata accessor for StaticService(0) - 8);
                v482 = v480 + *(*v481 + 72) * v475;
                v483 = v689;
                sub_1D1C3BA30(v482, v473 + *(v689 + 48), type metadata accessor for StaticService);
                v484 = v687;
                sub_1D1741C08(v473, v687, &qword_1EC642DB0, &unk_1D1E6F360);
                v485 = *(v483 + 48);
                v486 = v688;
                v487 = v688 + v485;
                (*(v479 + 32))(v688, v484, v478);
                sub_1D1C3B520(v484 + v485, v486 + v485, type metadata accessor for StaticService);
                v692 = *(v487 + v481[34]);
                v691 = 19;
                sub_1D1CE53A4(&v691);
                v489 = v488;
                LOBYTE(v481) = v490;
                sub_1D1741A30(v486, &qword_1EC642DB0, &unk_1D1E6F360);
                result = sub_1D1741A30(v473, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v481 & 1) == 0)
                {
                  break;
                }

                if (!v471)
                {
                  goto LABEL_241;
                }
              }

              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_1D177D4E8(0, *(v683 + 2) + 1, 1, v683);
                v683 = result;
              }

              v493 = *(v683 + 2);
              v492 = *(v683 + 3);
              if (v493 >= v492 >> 1)
              {
                result = sub_1D177D4E8((v492 > 1), v493 + 1, 1, v683);
                v683 = result;
              }

              v494 = v683;
              *(v683 + 2) = v493 + 1;
              *&v494[8 * v493 + 32] = v489;
            }

            while (v471);
          }

          continue;
        }

        goto LABEL_251;
      }

    case 14:
      v686 = v70;
      v498 = *(v690 + 64);
      v685 = v690 + 64;
      v499 = 1 << *(v690 + 32);
      v500 = -1;
      if (v499 < 64)
      {
        v500 = ~(-1 << v499);
      }

      v501 = v500 & v498;
      v684 = ((v499 + 63) >> 6);

      v502 = 0;
      v683 = MEMORY[0x1E69E7CC0];
      v503 = v686;
      if (v501)
      {
        goto LABEL_256;
      }

LABEL_258:
      while (2)
      {
        v521 = v502 + 1;
        if (__OFADD__(v502, 1))
        {
          goto LABEL_384;
        }

        if (v521 < v684)
        {
          v501 = *(v685 + 8 * v521);
          ++v502;
          if (v501)
          {
            v502 = v521;
            do
            {
LABEL_256:
              while (1)
              {
                v504 = __clz(__rbit64(v501));
                v501 &= v501 - 1;
                v505 = v504 | (v502 << 6);
                v506 = v690;
                v507 = *(v690 + 48);
                v508 = sub_1D1E66A7C();
                v509 = *(v508 - 8);
                (*(v509 + 16))(v503, v507 + *(v509 + 72) * v505, v508);
                v510 = *(v506 + 56);
                v511 = (type metadata accessor for StaticService(0) - 8);
                v512 = v510 + *(*v511 + 72) * v505;
                v513 = v689;
                sub_1D1C3BA30(v512, v503 + *(v689 + 48), type metadata accessor for StaticService);
                v514 = v687;
                sub_1D1741C08(v503, v687, &qword_1EC642DB0, &unk_1D1E6F360);
                v515 = *(v513 + 48);
                v516 = v688;
                v517 = v688 + v515;
                (*(v509 + 32))(v688, v514, v508);
                sub_1D1C3B520(v514 + v515, v516 + v515, type metadata accessor for StaticService);
                v692 = *(v517 + v511[34]);
                v691 = 20;
                sub_1D1CE53A4(&v691);
                v519 = v518;
                LOBYTE(v511) = v520;
                sub_1D1741A30(v516, &qword_1EC642DB0, &unk_1D1E6F360);
                result = sub_1D1741A30(v503, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v511 & 1) == 0)
                {
                  break;
                }

                if (!v501)
                {
                  goto LABEL_258;
                }
              }

              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_1D177D4E8(0, *(v683 + 2) + 1, 1, v683);
                v683 = result;
              }

              v523 = *(v683 + 2);
              v522 = *(v683 + 3);
              if (v523 >= v522 >> 1)
              {
                result = sub_1D177D4E8((v522 > 1), v523 + 1, 1, v683);
                v683 = result;
              }

              v524 = v683;
              *(v683 + 2) = v523 + 1;
              *&v524[8 * v523 + 32] = v519;
            }

            while (v501);
          }

          continue;
        }

        break;
      }

      v662 = "onoxidePeakLevel";
      v663 = 0xD00000000000001FLL;
      goto LABEL_358;
    case 15:
      v291 = v690 + 64;
      v292 = 1 << *(v690 + 32);
      v293 = -1;
      if (v292 < 64)
      {
        v293 = ~(-1 << v292);
      }

      v294 = v293 & *(v690 + 64);
      v295 = (v292 + 63) >> 6;

      v296 = 0;
      while (v294)
      {
LABEL_143:
        v298 = __clz(__rbit64(v294));
        v294 &= v294 - 1;
        v299 = v298 | (v296 << 6);
        v300 = v690;
        v301 = *(v690 + 48);
        v302 = sub_1D1E66A7C();
        v687 = *(v302 - 8);
        v303 = v301 + *(v687 + 72) * v299;
        v304 = *(v687 + 16);
        v688 = v302;
        v304(v66, v303);
        v305 = *(v300 + 56);
        v306 = (type metadata accessor for StaticService(0) - 8);
        v307 = v305 + *(*v306 + 72) * v299;
        v308 = v689;
        sub_1D1C3BA30(v307, &v66[*(v689 + 48)], type metadata accessor for StaticService);
        sub_1D1741C08(v66, v63, &qword_1EC642DB0, &unk_1D1E6F360);
        v309 = &v63[*(v308 + 48)];
        v692 = *(v309 + v306[34]);
        v691 = 21;
        v696 = StaticCharacteristicsBag.int(for:)(&v691);
        v310 = v696.value;
        LOBYTE(v305) = v696.is_nil;
        sub_1D1741A30(v66, &qword_1EC642DB0, &unk_1D1E6F360);
        if (v305)
        {
          sub_1D1C3BED8(v309, type metadata accessor for StaticService);
          result = (*(v687 + 8))(v63, v688);
          continue;
        }

        sub_1D1C3BED8(v309, type metadata accessor for StaticService);
        result = (*(v687 + 8))(v63, v688);
        if (v310 == 1)
        {

          v670 = "TargetStateManual";
          v671 = 0xD000000000000037;
          return static String.hfLocalized(_:)(v671, v670 | 0x8000000000000000);
        }
      }

      while (1)
      {
        v297 = v296 + 1;
        if (__OFADD__(v296, 1))
        {
          goto LABEL_394;
        }

        if (v297 >= v295)
        {
          goto LABEL_235;
        }

        v294 = *(v291 + 8 * v297);
        ++v296;
        if (v294)
        {
          v296 = v297;
          goto LABEL_143;
        }
      }

    case 16:
      v365 = *(v690 + 64);
      v685 = v690 + 64;
      v686 = v71;
      v366 = 1 << *(v690 + 32);
      v367 = -1;
      if (v366 < 64)
      {
        v367 = ~(-1 << v366);
      }

      v368 = v367 & v365;
      v684 = ((v366 + 63) >> 6);

      v369 = 0;
      v683 = MEMORY[0x1E69E7CC0];
      v370 = v686;
      if (v368)
      {
        goto LABEL_181;
      }

LABEL_183:
      while (2)
      {
        v388 = v369 + 1;
        if (__OFADD__(v369, 1))
        {
          goto LABEL_380;
        }

        if (v388 < v684)
        {
          v368 = *(v685 + 8 * v388);
          ++v369;
          if (v368)
          {
            v369 = v388;
            do
            {
LABEL_181:
              while (1)
              {
                v371 = __clz(__rbit64(v368));
                v368 &= v368 - 1;
                v372 = v371 | (v369 << 6);
                v373 = v690;
                v374 = *(v690 + 48);
                v375 = sub_1D1E66A7C();
                v376 = *(v375 - 8);
                (*(v376 + 16))(v370, v374 + *(v376 + 72) * v372, v375);
                v377 = *(v373 + 56);
                v378 = (type metadata accessor for StaticService(0) - 8);
                v379 = v377 + *(*v378 + 72) * v372;
                v380 = v689;
                sub_1D1C3BA30(v379, v370 + *(v689 + 48), type metadata accessor for StaticService);
                v381 = v687;
                sub_1D1741C08(v370, v687, &qword_1EC642DB0, &unk_1D1E6F360);
                v382 = *(v380 + 48);
                v383 = v688;
                v384 = v688 + v382;
                (*(v376 + 32))(v688, v381, v375);
                sub_1D1C3B520(v381 + v382, v383 + v382, type metadata accessor for StaticService);
                v692 = *(v384 + v378[34]);
                v691 = 22;
                sub_1D1CE53A4(&v691);
                v386 = v385;
                LOBYTE(v378) = v387;
                sub_1D1741A30(v383, &qword_1EC642DB0, &unk_1D1E6F360);
                result = sub_1D1741A30(v370, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v378 & 1) == 0)
                {
                  break;
                }

                if (!v368)
                {
                  goto LABEL_183;
                }
              }

              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_1D177D4E8(0, *(v683 + 2) + 1, 1, v683);
                v683 = result;
              }

              v390 = *(v683 + 2);
              v389 = *(v683 + 3);
              if (v390 >= v389 >> 1)
              {
                result = sub_1D177D4E8((v389 > 1), v390 + 1, 1, v683);
                v683 = result;
              }

              v391 = v683;
              *(v683 + 2) = v390 + 1;
              *&v391[8 * v390 + 32] = v386;
            }

            while (v368);
          }

          continue;
        }

        break;
      }

LABEL_251:

      v83 = sub_1D1C3B588(v683, 1);
      v496 = v495;
      if (v495)
      {
        static String.hfLocalized(_:)(0xD00000000000001CLL, 0x80000001D1EC73F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v497 = swift_allocObject();
        *(v497 + 16) = xmmword_1D1E739C0;
        *(v497 + 56) = MEMORY[0x1E69E6158];
        *(v497 + 64) = sub_1D1757D20();
        *(v497 + 32) = v83;
        *(v497 + 40) = v496;
        v83 = sub_1D1E6784C();
      }

      goto LABEL_372;
    case 17:
      v392 = *(v690 + 64);
      v685 = v690 + 64;
      v686 = v80;
      v393 = 1 << *(v690 + 32);
      v394 = -1;
      if (v393 < 64)
      {
        v394 = ~(-1 << v393);
      }

      v395 = v394 & v392;
      v684 = ((v393 + 63) >> 6);

      v396 = 0;
      v683 = MEMORY[0x1E69E7CC0];
      v397 = v686;
      if (v395)
      {
        goto LABEL_196;
      }

LABEL_198:
      while (2)
      {
        v415 = v396 + 1;
        if (__OFADD__(v396, 1))
        {
          goto LABEL_381;
        }

        if (v415 < v684)
        {
          v395 = *(v685 + 8 * v415);
          ++v396;
          if (v395)
          {
            v396 = v415;
            do
            {
LABEL_196:
              while (1)
              {
                v398 = __clz(__rbit64(v395));
                v395 &= v395 - 1;
                v399 = v398 | (v396 << 6);
                v400 = v690;
                v401 = *(v690 + 48);
                v402 = sub_1D1E66A7C();
                v403 = *(v402 - 8);
                (*(v403 + 16))(v397, v401 + *(v403 + 72) * v399, v402);
                v404 = *(v400 + 56);
                v405 = (type metadata accessor for StaticService(0) - 8);
                v406 = v404 + *(*v405 + 72) * v399;
                v407 = v689;
                sub_1D1C3BA30(v406, v397 + *(v689 + 48), type metadata accessor for StaticService);
                v408 = v687;
                sub_1D1741C08(v397, v687, &qword_1EC642DB0, &unk_1D1E6F360);
                v409 = *(v407 + 48);
                v410 = v688;
                v411 = v688 + v409;
                (*(v403 + 32))(v688, v408, v402);
                sub_1D1C3B520(v408 + v409, v410 + v409, type metadata accessor for StaticService);
                v692 = *(v411 + v405[34]);
                v691 = 23;
                sub_1D1CE53A4(&v691);
                v413 = v412;
                LOBYTE(v405) = v414;
                sub_1D1741A30(v410, &qword_1EC642DB0, &unk_1D1E6F360);
                result = sub_1D1741A30(v397, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v405 & 1) == 0)
                {
                  break;
                }

                if (!v395)
                {
                  goto LABEL_198;
                }
              }

              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_1D177D4E8(0, *(v683 + 2) + 1, 1, v683);
                v683 = result;
              }

              v417 = *(v683 + 2);
              v416 = *(v683 + 3);
              if (v417 >= v416 >> 1)
              {
                result = sub_1D177D4E8((v416 > 1), v417 + 1, 1, v683);
                v683 = result;
              }

              v418 = v683;
              *(v683 + 2) = v417 + 1;
              *&v418[8 * v417 + 32] = v413;
            }

            while (v395);
          }

          continue;
        }

        break;
      }

      v662 = "HDMSwingModeDisabled";
      v663 = 0xD000000000000020;
LABEL_358:
      v654 = sub_1D1C3B860(v683, v663, v662 | 0x8000000000000000);
      goto LABEL_343;
    case 22:
      v550 = v690 + 64;
      v551 = 1 << *(v690 + 32);
      v552 = -1;
      if (v551 < 64)
      {
        v552 = ~(-1 << v551);
      }

      v553 = v552 & *(v690 + 64);
      v554 = (v551 + 63) >> 6;

      v555 = 0;
      while (v553)
      {
LABEL_292:
        v557 = __clz(__rbit64(v553));
        v553 &= v553 - 1;
        v558 = v557 | (v555 << 6);
        v559 = v690;
        v560 = *(v690 + 48);
        v561 = sub_1D1E66A7C();
        v687 = *(v561 - 8);
        v562 = v560 + *(v687 + 72) * v558;
        v563 = *(v687 + 16);
        v688 = v561;
        v563(v60, v562);
        v564 = *(v559 + 56);
        v565 = (type metadata accessor for StaticService(0) - 8);
        v566 = v564 + *(*v565 + 72) * v558;
        v567 = v689;
        sub_1D1C3BA30(v566, &v60[*(v689 + 48)], type metadata accessor for StaticService);
        sub_1D1741C08(v60, v57, &qword_1EC642DB0, &unk_1D1E6F360);
        v568 = &v57[*(v567 + 48)];
        v692 = *(v568 + v565[34]);
        v691 = 28;
        v701 = StaticCharacteristicsBag.int(for:)(&v691);
        v569 = v701.value;
        LOBYTE(v564) = v701.is_nil;
        sub_1D1741A30(v60, &qword_1EC642DB0, &unk_1D1E6F360);
        if (v564)
        {
          sub_1D1C3BED8(v568, type metadata accessor for StaticService);
          result = (*(v687 + 8))(v57, v688);
          continue;
        }

        sub_1D1C3BED8(v568, type metadata accessor for StaticService);
        result = (*(v687 + 8))(v57, v688);
        if (!v569)
        {

          v670 = "eContactNotDetected";
          v671 = 0xD000000000000030;
          return static String.hfLocalized(_:)(v671, v670 | 0x8000000000000000);
        }
      }

      while (1)
      {
        v556 = v555 + 1;
        if (__OFADD__(v555, 1))
        {
          goto LABEL_391;
        }

        if (v556 >= v554)
        {

          v670 = "tion.FaucetValve, State:Running";
          v671 = 0xD000000000000033;
          return static String.hfLocalized(_:)(v671, v670 | 0x8000000000000000);
        }

        v553 = *(v550 + 8 * v556);
        ++v555;
        if (v553)
        {
          v555 = v556;
          goto LABEL_292;
        }
      }

    case 29:
      v525 = *(v690 + 64);
      v686 = (v690 + 64);
      v526 = 1 << *(v690 + 32);
      v527 = -1;
      if (v526 < 64)
      {
        v527 = ~(-1 << v526);
      }

      v528 = v527 & v525;
      v685 = (v526 + 63) >> 6;

      v529 = 0;
      v684 = MEMORY[0x1E69E7CC0];
      v530 = v683;
      if (v528)
      {
        goto LABEL_271;
      }

LABEL_273:
      while (2)
      {
        v546 = v529 + 1;
        if (__OFADD__(v529, 1))
        {
          goto LABEL_385;
        }

        if (v546 < v685)
        {
          v528 = *&v686[8 * v546];
          ++v529;
          if (v528)
          {
            v529 = v546;
            do
            {
LABEL_271:
              while (1)
              {
                v531 = __clz(__rbit64(v528));
                v528 &= v528 - 1;
                v532 = v531 | (v529 << 6);
                v533 = v690;
                v534 = *(v690 + 48);
                v535 = sub_1D1E66A7C();
                v536 = *(v535 - 8);
                (*(v536 + 16))(v530, v534 + *(v536 + 72) * v532, v535);
                v537 = *(v533 + 56);
                v538 = (type metadata accessor for StaticService(0) - 8);
                v539 = v537 + *(*v538 + 72) * v532;
                v540 = v689;
                sub_1D1C3BA30(v539, &v530[*(v689 + 48)], type metadata accessor for StaticService);
                v541 = v687;
                sub_1D1741C08(v530, v687, &qword_1EC642DB0, &unk_1D1E6F360);
                v542 = *(v540 + 48);
                v543 = v688;
                v544 = v688 + v542;
                (*(v536 + 32))(v688, v541, v535);
                sub_1D1C3B520(v541 + v542, v543 + v542, type metadata accessor for StaticService);
                v692 = *(v544 + v538[34]);
                v691 = 35;
                v700 = StaticCharacteristicsBag.int(for:)(&v691);
                v545 = v700.value;
                LOBYTE(v538) = v700.is_nil;
                sub_1D1741A30(v543, &qword_1EC642DB0, &unk_1D1E6F360);
                result = sub_1D1741A30(v530, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v538 & 1) == 0)
                {
                  break;
                }

                if (!v528)
                {
                  goto LABEL_273;
                }
              }

              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_1D177D8E4(0, *(v684 + 2) + 1, 1, v684);
                v684 = result;
              }

              v548 = *(v684 + 2);
              v547 = *(v684 + 3);
              if (v548 >= v547 >> 1)
              {
                result = sub_1D177D8E4((v547 > 1), v548 + 1, 1, v684);
                v684 = result;
              }

              v549 = v684;
              *(v684 + 2) = v548 + 1;
              *&v549[8 * v548 + 32] = v545;
            }

            while (v528);
          }

          continue;
        }

        break;
      }

      v664 = v684;
      v665 = *(v684 + 2);
      if (!v665)
      {
        goto LABEL_370;
      }

      v692 = MEMORY[0x1E69E7CC0];
      sub_1D1C39404(v665);
      v666 = 32;
      v658 = v692;
      do
      {
        v667 = *&v664[v666];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D178D49C(0, *(v658 + 16) + 1, 1);
          v658 = v692;
        }

        v669 = *(v658 + 16);
        v668 = *(v658 + 24);
        if (v669 >= v668 >> 1)
        {
          sub_1D178D49C((v668 > 1), v669 + 1, 1);
          v658 = v692;
        }

        *(v658 + 16) = v669 + 1;
        *(v658 + 8 * v669 + 32) = v667;
        v666 += 8;
        --v665;
      }

      while (v665);
      goto LABEL_353;
    case 31:
      v201 = *(v690 + 64);
      v686 = (v690 + 64);
      v202 = 1 << *(v690 + 32);
      v203 = -1;
      if (v202 < 64)
      {
        v203 = ~(-1 << v202);
      }

      v204 = v203 & v201;
      v685 = (v202 + 63) >> 6;

      v205 = 0;
      v684 = MEMORY[0x1E69E7CC0];
      v206 = v680;
      if (v204)
      {
        goto LABEL_85;
      }

LABEL_87:
      while (2)
      {
        v224 = v205 + 1;
        if (__OFADD__(v205, 1))
        {
          goto LABEL_377;
        }

        if (v224 < v685)
        {
          v204 = *&v686[8 * v224];
          ++v205;
          if (v204)
          {
            v205 = v224;
            do
            {
LABEL_85:
              while (1)
              {
                v207 = __clz(__rbit64(v204));
                v204 &= v204 - 1;
                v208 = v207 | (v205 << 6);
                v209 = v690;
                v210 = *(v690 + 48);
                v211 = sub_1D1E66A7C();
                v212 = *(v211 - 8);
                (*(v212 + 16))(v206, v210 + *(v212 + 72) * v208, v211);
                v213 = *(v209 + 56);
                v214 = (type metadata accessor for StaticService(0) - 8);
                v215 = v213 + *(*v214 + 72) * v208;
                v216 = v689;
                sub_1D1C3BA30(v215, v206 + *(v689 + 48), type metadata accessor for StaticService);
                v217 = v687;
                sub_1D1741C08(v206, v687, &qword_1EC642DB0, &unk_1D1E6F360);
                v218 = *(v216 + 48);
                v219 = v688;
                v220 = v688 + v218;
                (*(v212 + 32))(v688, v217, v211);
                sub_1D1C3B520(v217 + v218, v219 + v218, type metadata accessor for StaticService);
                v692 = *(v220 + v214[34]);
                v691 = 37;
                sub_1D1CE53A4(&v691);
                v222 = v221;
                LOBYTE(v214) = v223;
                sub_1D1741A30(v219, &qword_1EC642DB0, &unk_1D1E6F360);
                result = sub_1D1741A30(v206, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v214 & 1) == 0)
                {
                  break;
                }

                if (!v204)
                {
                  goto LABEL_87;
                }
              }

              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_1D177D4E8(0, *(v684 + 2) + 1, 1, v684);
                v684 = result;
              }

              v226 = *(v684 + 2);
              v225 = *(v684 + 3);
              if (v226 >= v225 >> 1)
              {
                result = sub_1D177D4E8((v225 > 1), v226 + 1, 1, v684);
                v684 = result;
              }

              v227 = v684;
              *(v684 + 2) = v226 + 1;
              *&v227[8 * v226 + 32] = v222;
            }

            while (v204);
          }

          continue;
        }

        break;
      }

      v651 = v684;
      goto LABEL_341;
    case 40:
      v311 = *(v690 + 64);
      v686 = (v690 + 64);
      v312 = 1 << *(v690 + 32);
      v313 = -1;
      if (v312 < 64)
      {
        v313 = ~(-1 << v312);
      }

      v314 = v313 & v311;
      v685 = (v312 + 63) >> 6;

      v315 = 0;
      v683 = MEMORY[0x1E69E7CC0];
      v316 = v684;
      if (v314)
      {
        goto LABEL_149;
      }

LABEL_151:
      while (2)
      {
        v332 = v315 + 1;
        if (__OFADD__(v315, 1))
        {
          goto LABEL_378;
        }

        if (v332 < v685)
        {
          v314 = *&v686[8 * v332];
          ++v315;
          if (v314)
          {
            v315 = v332;
            do
            {
LABEL_149:
              while (1)
              {
                v317 = __clz(__rbit64(v314));
                v314 &= v314 - 1;
                v318 = v317 | (v315 << 6);
                v319 = v690;
                v320 = *(v690 + 48);
                v321 = sub_1D1E66A7C();
                v322 = *(v321 - 8);
                (*(v322 + 16))(v316, v320 + *(v322 + 72) * v318, v321);
                v323 = *(v319 + 56);
                v324 = (type metadata accessor for StaticService(0) - 8);
                v325 = v323 + *(*v324 + 72) * v318;
                v326 = v689;
                sub_1D1C3BA30(v325, &v316[*(v689 + 48)], type metadata accessor for StaticService);
                v327 = v687;
                sub_1D1741C08(v316, v687, &qword_1EC642DB0, &unk_1D1E6F360);
                v328 = *(v326 + 48);
                v329 = v688;
                v330 = v688 + v328;
                (*(v322 + 32))(v688, v327, v321);
                sub_1D1C3B520(v327 + v328, v329 + v328, type metadata accessor for StaticService);
                v692 = *(v330 + v324[34]);
                v691 = 46;
                v697 = StaticCharacteristicsBag.int(for:)(&v691);
                v331 = v697.value;
                LOBYTE(v324) = v697.is_nil;
                sub_1D1741A30(v329, &qword_1EC642DB0, &unk_1D1E6F360);
                result = sub_1D1741A30(v316, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v324 & 1) == 0)
                {
                  break;
                }

                if (!v314)
                {
                  goto LABEL_151;
                }
              }

              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_1D177D8E4(0, *(v683 + 2) + 1, 1, v683);
                v683 = result;
              }

              v334 = *(v683 + 2);
              v333 = *(v683 + 3);
              if (v334 >= v333 >> 1)
              {
                result = sub_1D177D8E4((v333 > 1), v334 + 1, 1, v683);
                v683 = result;
              }

              v335 = v683;
              *(v683 + 2) = v334 + 1;
              *&v335[8 * v334 + 32] = v331;
            }

            while (v314);
          }

          continue;
        }

        break;
      }

      v655 = v683;
      v656 = *(v683 + 2);
      if (v656)
      {
        v692 = MEMORY[0x1E69E7CC0];
        sub_1D1C39404(v656);
        v657 = 32;
        v658 = v692;
        do
        {
          v659 = *&v655[v657];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D178D49C(0, *(v658 + 16) + 1, 1);
            v658 = v692;
          }

          v661 = *(v658 + 16);
          v660 = *(v658 + 24);
          if (v661 >= v660 >> 1)
          {
            sub_1D178D49C((v660 > 1), v661 + 1, 1);
            v658 = v692;
          }

          *(v658 + 16) = v661 + 1;
          *(v658 + 8 * v661 + 32) = v659;
          v657 += 8;
          --v656;
        }

        while (v656);
LABEL_353:
      }

      else
      {
LABEL_370:

        v658 = MEMORY[0x1E69E7CC0];
      }

      v83 = sub_1D1C3B588(v658, 0);
      goto LABEL_372;
    case 68:
      v228 = v690 + 64;
      v229 = 1 << *(v690 + 32);
      v230 = -1;
      if (v229 < 64)
      {
        v230 = ~(-1 << v229);
      }

      v231 = v230 & *(v690 + 64);
      v232 = (v229 + 63) >> 6;

      v233 = 0;
      while (v231)
      {
LABEL_106:
        v235 = __clz(__rbit64(v231));
        v231 &= v231 - 1;
        v236 = v235 | (v233 << 6);
        v237 = v690;
        v238 = *(v690 + 48);
        v239 = sub_1D1E66A7C();
        v687 = *(v239 - 8);
        v240 = v238 + *(v687 + 72) * v236;
        v241 = *(v687 + 16);
        v688 = v239;
        v241(v54, v240);
        v242 = *(v237 + 56);
        v243 = (type metadata accessor for StaticService(0) - 8);
        v244 = v242 + *(*v243 + 72) * v236;
        v245 = v689;
        sub_1D1C3BA30(v244, &v54[*(v689 + 48)], type metadata accessor for StaticService);
        sub_1D1741C08(v54, v51, &qword_1EC642DB0, &unk_1D1E6F360);
        v246 = &v51[*(v245 + 48)];
        v692 = *(v246 + v243[34]);
        v691 = 74;
        v693 = StaticCharacteristicsBag.int(for:)(&v691);
        v247 = v693.value;
        LOBYTE(v242) = v693.is_nil;
        sub_1D1741A30(v54, &qword_1EC642DB0, &unk_1D1E6F360);
        if (v242)
        {
          sub_1D1C3BED8(v246, type metadata accessor for StaticService);
          result = (*(v687 + 8))(v51, v688);
          continue;
        }

        sub_1D1C3BED8(v246, type metadata accessor for StaticService);
        result = (*(v687 + 8))(v51, v688);
        if (v247 == 1)
        {

          v248 = "HFCharacteristicTitleLeakDetectedSimple";
          goto LABEL_121;
        }
      }

      while (1)
      {
        v234 = v233 + 1;
        if (__OFADD__(v233, 1))
        {
          goto LABEL_392;
        }

        if (v234 >= v232)
        {
          goto LABEL_235;
        }

        v231 = *(v228 + 8 * v234);
        ++v233;
        if (v231)
        {
          v233 = v234;
          goto LABEL_106;
        }
      }

    case 77:
      v684 = v79;
      v688 = v78;
      v167 = v690 + 64;
      v168 = 1 << *(v690 + 32);
      v169 = -1;
      if (v168 < 64)
      {
        v169 = ~(-1 << v168);
      }

      v170 = v169 & *(v690 + 64);
      v171 = (v168 + 63) >> 6;

      v172 = 0;
      while (2)
      {
        while (2)
        {
          if (v170)
          {
            goto LABEL_57;
          }

          do
          {
            v173 = v172 + 1;
            if (__OFADD__(v172, 1))
            {
LABEL_389:
              __break(1u);
LABEL_390:
              __break(1u);
LABEL_391:
              __break(1u);
LABEL_392:
              __break(1u);
LABEL_393:
              __break(1u);
LABEL_394:
              __break(1u);
LABEL_395:
              __break(1u);
              goto LABEL_396;
            }

            if (v173 >= v171)
            {

              v670 = "HFStatusTitleOccupancyAlarm";
              v671 = 0xD000000000000025;
              return static String.hfLocalized(_:)(v671, v670 | 0x8000000000000000);
            }

            v170 = *(v167 + 8 * v173);
            ++v172;
          }

          while (!v170);
          v172 = v173;
LABEL_57:
          v174 = __clz(__rbit64(v170)) | (v172 << 6);
          v175 = v690;
          v176 = *(v690 + 48);
          v177 = sub_1D1E66A7C();
          v686 = *(v177 - 8);
          v178 = v176 + *(v686 + 9) * v174;
          v179 = *(v686 + 2);
          v180 = v684;
          v687 = v177;
          v179(v684, v178);
          v181 = *(v175 + 56);
          v182 = (type metadata accessor for StaticService(0) - 8);
          v183 = v181 + *(*v182 + 72) * v174;
          v184 = v689;
          sub_1D1C3BA30(v183, &v180[*(v689 + 48)], type metadata accessor for StaticService);
          v185 = v688;
          sub_1D1741C08(v180, v688, &qword_1EC642DB0, &unk_1D1E6F360);
          v186 = *(v185 + *(v184 + 48) + v182[34]);
          v187 = *(v186 + 16);
          v685 = v185 + *(v184 + 48);
          if (v187)
          {
            v188 = sub_1D171D140(83);
            if (v189)
            {
              v190 = v188;
              v191 = *(v186 + 56);
              v192 = type metadata accessor for StaticCharacteristic();
              v193 = *(v192 - 8);
              v194 = v191 + *(v193 + 72) * v190;
              v195 = v678;
              sub_1D1C3BA30(v194, v678, type metadata accessor for StaticCharacteristic);
              sub_1D1741A30(v684, &qword_1EC642DB0, &unk_1D1E6F360);
              (*(v193 + 56))(v195, 0, 1, v192);
              goto LABEL_63;
            }

            v196 = v684;
          }

          else
          {
            v196 = v180;
          }

          sub_1D1741A30(v196, &qword_1EC642DB0, &unk_1D1E6F360);
          v192 = type metadata accessor for StaticCharacteristic();
          v195 = v678;
          (*(*(v192 - 8) + 56))(v678, 1, 1, v192);
LABEL_63:
          v197 = v679;
          v170 &= v170 - 1;
          sub_1D1741A90(v195, v679, &qword_1EC643630, &qword_1D1E71D10);
          type metadata accessor for StaticCharacteristic();
          result = (*(*(v192 - 8) + 48))(v197, 1, v192);
          if (result == 1)
          {
            sub_1D1741A30(v197, &qword_1EC643630, &qword_1D1E71D10);
LABEL_51:
            sub_1D1C3BED8(v685, type metadata accessor for StaticService);
            result = (*(v686 + 1))(v688, v687);
            continue;
          }

          break;
        }

        v198 = v197 + *(v192 + 24);
        v199 = *v198;
        v200 = *(v198 + 16);
        if (v200 <= 2)
        {
          if (!v200)
          {
            goto LABEL_79;
          }

          if (v200 == 1)
          {
            v199 = v199;
          }

          else
          {
            v199 = v199;
          }

          goto LABEL_77;
        }

        if (v200 > 4)
        {
          if (v200 != 5 && v200 != 6)
          {
LABEL_81:
            sub_1D1C3BED8(v197, type metadata accessor for StaticCharacteristic);
            goto LABEL_51;
          }

          v199 = v199;
          goto LABEL_77;
        }

        if (v200 == 3)
        {
          v199 = v199;
          goto LABEL_77;
        }

        if ((v199 & 0x8000000000000000) == 0)
        {
LABEL_77:
          if (v199 > 1)
          {
            goto LABEL_81;
          }

          LOBYTE(v199) = v199 == 1;
LABEL_79:
          sub_1D1C3BED8(v197, type metadata accessor for StaticCharacteristic);
          sub_1D1C3BED8(v685, type metadata accessor for StaticService);
          result = (*(v686 + 1))(v688, v687);
          if (v199)
          {

            v670 = "ionOccupancyAlarm_Triggered";
            v671 = 0xD000000000000028;
            return static String.hfLocalized(_:)(v671, v670 | 0x8000000000000000);
          }

          continue;
        }

        break;
      }

LABEL_396:
      __break(1u);
      return result;
    case 81:
      v419 = *(v690 + 64);
      v686 = (v690 + 64);
      v420 = 1 << *(v690 + 32);
      v421 = -1;
      if (v420 < 64)
      {
        v421 = ~(-1 << v420);
      }

      v422 = v421 & v419;
      v684 = ((v420 + 63) >> 6);

      v423 = 0;
      v683 = MEMORY[0x1E69E7CC0];
      v424 = v685;
      if (v422)
      {
        goto LABEL_211;
      }

LABEL_213:
      while (2)
      {
        v442 = v423 + 1;
        if (__OFADD__(v423, 1))
        {
          goto LABEL_382;
        }

        if (v442 < v684)
        {
          v422 = *&v686[8 * v442];
          ++v423;
          if (v422)
          {
            v423 = v442;
            do
            {
LABEL_211:
              while (1)
              {
                v425 = __clz(__rbit64(v422));
                v422 &= v422 - 1;
                v426 = v425 | (v423 << 6);
                v427 = v690;
                v428 = *(v690 + 48);
                v429 = sub_1D1E66A7C();
                v430 = *(v429 - 8);
                (*(v430 + 16))(v424, v428 + *(v430 + 72) * v426, v429);
                v431 = *(v427 + 56);
                v432 = (type metadata accessor for StaticService(0) - 8);
                v433 = v431 + *(*v432 + 72) * v426;
                v434 = v689;
                sub_1D1C3BA30(v433, v424 + *(v689 + 48), type metadata accessor for StaticService);
                v435 = v687;
                sub_1D1741C08(v424, v687, &qword_1EC642DB0, &unk_1D1E6F360);
                v436 = *(v434 + 48);
                v437 = v688;
                v438 = v688 + v436;
                (*(v430 + 32))(v688, v435, v429);
                sub_1D1C3B520(v435 + v436, v437 + v436, type metadata accessor for StaticService);
                v692 = *(v438 + v432[34]);
                v691 = 87;
                sub_1D1CE53A4(&v691);
                v440 = v439;
                LOBYTE(v432) = v441;
                sub_1D1741A30(v437, &qword_1EC642DB0, &unk_1D1E6F360);
                result = sub_1D1741A30(v424, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v432 & 1) == 0)
                {
                  break;
                }

                if (!v422)
                {
                  goto LABEL_213;
                }
              }

              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_1D177D4E8(0, *(v683 + 2) + 1, 1, v683);
                v683 = result;
              }

              v444 = *(v683 + 2);
              v443 = *(v683 + 3);
              if (v444 >= v443 >> 1)
              {
                result = sub_1D177D4E8((v443 > 1), v444 + 1, 1, v683);
                v683 = result;
              }

              v445 = v683;
              *(v683 + 2) = v444 + 1;
              *&v445[8 * v444 + 32] = v440;
            }

            while (v422);
          }

          continue;
        }

        goto LABEL_340;
      }

    case 83:
      v446 = v690 + 64;
      v447 = 1 << *(v690 + 32);
      v448 = -1;
      if (v447 < 64)
      {
        v448 = ~(-1 << v447);
      }

      v449 = v448 & *(v690 + 64);
      v450 = (v447 + 63) >> 6;

      v451 = 0;
      do
      {
        while (2)
        {
          if (!v449)
          {
            do
            {
              v452 = v451 + 1;
              if (__OFADD__(v451, 1))
              {
                goto LABEL_395;
              }

              if (v452 >= v450)
              {
                goto LABEL_235;
              }

              v449 = *(v446 + 8 * v452);
              ++v451;
            }

            while (!v449);
            v451 = v452;
          }

          v453 = __clz(__rbit64(v449));
          v449 &= v449 - 1;
          v454 = v453 | (v451 << 6);
          v455 = v690;
          v456 = *(v690 + 48);
          v457 = sub_1D1E66A7C();
          v687 = *(v457 - 8);
          v458 = v456 + *(v687 + 72) * v454;
          v459 = *(v687 + 16);
          v460 = v674;
          v688 = v457;
          v459(v674, v458);
          v461 = *(v455 + 56);
          v462 = (type metadata accessor for StaticService(0) - 8);
          v463 = v461 + *(*v462 + 72) * v454;
          v464 = v689;
          sub_1D1C3BA30(v463, v460 + *(v689 + 48), type metadata accessor for StaticService);
          v465 = v675;
          sub_1D1741C08(v460, v675, &qword_1EC642DB0, &unk_1D1E6F360);
          v466 = v465 + *(v464 + 48);
          v692 = *(v466 + v462[34]);
          v691 = 89;
          v699 = StaticCharacteristicsBag.int(for:)(&v691);
          v467 = v699.value;
          LOBYTE(v461) = v699.is_nil;
          sub_1D1741A30(v460, &qword_1EC642DB0, &unk_1D1E6F360);
          if (v461)
          {
            sub_1D1C3BED8(v466, type metadata accessor for StaticService);
            result = (*(v687 + 8))(v465, v688);
            continue;
          }

          break;
        }

        sub_1D1C3BED8(v466, type metadata accessor for StaticService);
        result = (*(v687 + 8))(v465, v688);
      }

      while (v467 != 1);

      v670 = "RoomsDescriptionMultiple";
      v671 = 0xD00000000000002BLL;
      return static String.hfLocalized(_:)(v671, v670 | 0x8000000000000000);
    case 88:
      v597 = *(v690 + 64);
      v685 = v690 + 64;
      v686 = v77;
      v598 = 1 << *(v690 + 32);
      v599 = -1;
      if (v598 < 64)
      {
        v599 = ~(-1 << v598);
      }

      v600 = v599 & v597;
      v684 = ((v598 + 63) >> 6);

      v601 = 0;
      v683 = MEMORY[0x1E69E7CC0];
      v602 = v686;
      if (v600)
      {
        goto LABEL_313;
      }

LABEL_315:
      while (2)
      {
        v620 = v601 + 1;
        if (__OFADD__(v601, 1))
        {
          goto LABEL_387;
        }

        if (v620 < v684)
        {
          v600 = *(v685 + 8 * v620);
          ++v601;
          if (v600)
          {
            v601 = v620;
            do
            {
LABEL_313:
              while (1)
              {
                v603 = __clz(__rbit64(v600));
                v600 &= v600 - 1;
                v604 = v603 | (v601 << 6);
                v605 = v690;
                v606 = *(v690 + 48);
                v607 = sub_1D1E66A7C();
                v608 = *(v607 - 8);
                (*(v608 + 16))(v602, v606 + *(v608 + 72) * v604, v607);
                v609 = *(v605 + 56);
                v610 = (type metadata accessor for StaticService(0) - 8);
                v611 = v609 + *(*v610 + 72) * v604;
                v612 = v689;
                sub_1D1C3BA30(v611, v602 + *(v689 + 48), type metadata accessor for StaticService);
                v613 = v687;
                sub_1D1741C08(v602, v687, &qword_1EC642DB0, &unk_1D1E6F360);
                v614 = *(v612 + 48);
                v615 = v688;
                v616 = v688 + v614;
                (*(v608 + 32))(v688, v613, v607);
                sub_1D1C3B520(v613 + v614, v615 + v614, type metadata accessor for StaticService);
                v692 = *(v616 + v610[34]);
                v691 = 94;
                sub_1D1CE53A4(&v691);
                v618 = v617;
                LOBYTE(v610) = v619;
                sub_1D1741A30(v615, &qword_1EC642DB0, &unk_1D1E6F360);
                result = sub_1D1741A30(v602, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v610 & 1) == 0)
                {
                  break;
                }

                if (!v600)
                {
                  goto LABEL_315;
                }
              }

              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_1D177D4E8(0, *(v683 + 2) + 1, 1, v683);
                v683 = result;
              }

              v622 = *(v683 + 2);
              v621 = *(v683 + 3);
              if (v622 >= v621 >> 1)
              {
                result = sub_1D177D4E8((v621 > 1), v622 + 1, 1, v683);
                v683 = result;
              }

              v623 = v683;
              *(v683 + 2) = v622 + 1;
              *&v623[8 * v622 + 32] = v618;
            }

            while (v600);
          }

          continue;
        }

        goto LABEL_340;
      }

    case 89:
      v570 = *(v690 + 64);
      v685 = v690 + 64;
      v686 = v76;
      v571 = 1 << *(v690 + 32);
      v572 = -1;
      if (v571 < 64)
      {
        v572 = ~(-1 << v571);
      }

      v573 = v572 & v570;
      v684 = ((v571 + 63) >> 6);

      v574 = 0;
      v683 = MEMORY[0x1E69E7CC0];
      v575 = v686;
      if (v573)
      {
        goto LABEL_298;
      }

LABEL_300:
      while (2)
      {
        v593 = v574 + 1;
        if (__OFADD__(v574, 1))
        {
          goto LABEL_386;
        }

        if (v593 < v684)
        {
          v573 = *(v685 + 8 * v593);
          ++v574;
          if (v573)
          {
            v574 = v593;
            do
            {
LABEL_298:
              while (1)
              {
                v576 = __clz(__rbit64(v573));
                v573 &= v573 - 1;
                v577 = v576 | (v574 << 6);
                v578 = v690;
                v579 = *(v690 + 48);
                v580 = sub_1D1E66A7C();
                v581 = *(v580 - 8);
                (*(v581 + 16))(v575, v579 + *(v581 + 72) * v577, v580);
                v582 = *(v578 + 56);
                v583 = (type metadata accessor for StaticService(0) - 8);
                v584 = v582 + *(*v583 + 72) * v577;
                v585 = v689;
                sub_1D1C3BA30(v584, v575 + *(v689 + 48), type metadata accessor for StaticService);
                v586 = v687;
                sub_1D1741C08(v575, v687, &qword_1EC642DB0, &unk_1D1E6F360);
                v587 = *(v585 + 48);
                v588 = v688;
                v589 = v688 + v587;
                (*(v581 + 32))(v688, v586, v580);
                sub_1D1C3B520(v586 + v587, v588 + v587, type metadata accessor for StaticService);
                v692 = *(v589 + v583[34]);
                v691 = 95;
                sub_1D1CE53A4(&v691);
                v591 = v590;
                LOBYTE(v583) = v592;
                sub_1D1741A30(v588, &qword_1EC642DB0, &unk_1D1E6F360);
                result = sub_1D1741A30(v575, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v583 & 1) == 0)
                {
                  break;
                }

                if (!v573)
                {
                  goto LABEL_300;
                }
              }

              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_1D177D4E8(0, *(v683 + 2) + 1, 1, v683);
                v683 = result;
              }

              v595 = *(v683 + 2);
              v594 = *(v683 + 3);
              if (v595 >= v594 >> 1)
              {
                result = sub_1D177D4E8((v594 > 1), v595 + 1, 1, v683);
                v683 = result;
              }

              v596 = v683;
              *(v683 + 2) = v595 + 1;
              *&v596[8 * v595 + 32] = v591;
            }

            while (v573);
          }

          continue;
        }

        goto LABEL_340;
      }

    case 90:
      v113 = *(v690 + 64);
      v685 = v690 + 64;
      v686 = v75;
      v114 = 1 << *(v690 + 32);
      v115 = -1;
      if (v114 < 64)
      {
        v115 = ~(-1 << v114);
      }

      v116 = v115 & v113;
      v684 = ((v114 + 63) >> 6);

      v117 = 0;
      v683 = MEMORY[0x1E69E7CC0];
      v118 = v686;
      if (v116)
      {
        goto LABEL_20;
      }

LABEL_22:
      while (2)
      {
        v136 = v117 + 1;
        if (__OFADD__(v117, 1))
        {
LABEL_375:
          __break(1u);
          goto LABEL_376;
        }

        if (v136 < v684)
        {
          v116 = *(v685 + 8 * v136);
          ++v117;
          if (v116)
          {
            v117 = v136;
            do
            {
LABEL_20:
              while (1)
              {
                v119 = __clz(__rbit64(v116));
                v116 &= v116 - 1;
                v120 = v119 | (v117 << 6);
                v121 = v690;
                v122 = *(v690 + 48);
                v123 = sub_1D1E66A7C();
                v124 = *(v123 - 8);
                (*(v124 + 16))(v118, v122 + *(v124 + 72) * v120, v123);
                v125 = *(v121 + 56);
                v126 = (type metadata accessor for StaticService(0) - 8);
                v127 = v125 + *(*v126 + 72) * v120;
                v128 = v689;
                sub_1D1C3BA30(v127, v118 + *(v689 + 48), type metadata accessor for StaticService);
                v129 = v687;
                sub_1D1741C08(v118, v687, &qword_1EC642DB0, &unk_1D1E6F360);
                v130 = *(v128 + 48);
                v131 = v688;
                v132 = v688 + v130;
                (*(v124 + 32))(v688, v129, v123);
                sub_1D1C3B520(v129 + v130, v131 + v130, type metadata accessor for StaticService);
                v692 = *(v132 + v126[34]);
                v691 = 96;
                sub_1D1CE53A4(&v691);
                v134 = v133;
                LOBYTE(v126) = v135;
                sub_1D1741A30(v131, &qword_1EC642DB0, &unk_1D1E6F360);
                result = sub_1D1741A30(v118, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v126 & 1) == 0)
                {
                  break;
                }

                if (!v116)
                {
                  goto LABEL_22;
                }
              }

              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_1D177D4E8(0, *(v683 + 2) + 1, 1, v683);
                v683 = result;
              }

              v138 = *(v683 + 2);
              v137 = *(v683 + 3);
              if (v138 >= v137 >> 1)
              {
                result = sub_1D177D4E8((v137 > 1), v138 + 1, 1, v683);
                v683 = result;
              }

              v139 = v683;
              *(v683 + 2) = v138 + 1;
              *&v139[8 * v138 + 32] = v134;
            }

            while (v116);
          }

          continue;
        }

        goto LABEL_340;
      }

    case 121:
      v249 = v690 + 64;
      v250 = 1 << *(v690 + 32);
      v251 = -1;
      if (v250 < 64)
      {
        v251 = ~(-1 << v250);
      }

      v252 = v251 & *(v690 + 64);
      v253 = (v250 + 63) >> 6;

      v254 = 0;
      while (1)
      {
        if (v252)
        {
          goto LABEL_118;
        }

        do
        {
          v255 = v254 + 1;
          if (__OFADD__(v254, 1))
          {
            goto LABEL_393;
          }

          if (v255 >= v253)
          {
LABEL_235:

            return 0;
          }

          v252 = *(v249 + 8 * v255);
          ++v254;
        }

        while (!v252);
        v254 = v255;
LABEL_118:
        v256 = __clz(__rbit64(v252));
        v252 &= v252 - 1;
        v257 = v256 | (v254 << 6);
        v258 = v690;
        v259 = *(v690 + 48);
        v260 = sub_1D1E66A7C();
        v687 = *(v260 - 8);
        v261 = v259 + *(v687 + 72) * v257;
        v262 = *(v687 + 16);
        v263 = v676;
        v688 = v260;
        v262(v676, v261);
        v264 = *(v258 + 56);
        v265 = (type metadata accessor for StaticService(0) - 8);
        v266 = v264 + *(*v265 + 72) * v257;
        v267 = v689;
        sub_1D1C3BA30(v266, v263 + *(v689 + 48), type metadata accessor for StaticService);
        v268 = v677;
        sub_1D1741C08(v263, v677, &qword_1EC642DB0, &unk_1D1E6F360);
        v269 = v268 + *(v267 + 48);
        v692 = *(v269 + v265[34]);
        v691 = 127;
        v694 = StaticCharacteristicsBag.int(for:)(&v691);
        v270 = v694.value;
        LOBYTE(v264) = v694.is_nil;
        sub_1D1741A30(v263, &qword_1EC642DB0, &unk_1D1E6F360);
        if (v264)
        {
          sub_1D1C3BED8(v269, type metadata accessor for StaticService);
          result = (*(v687 + 8))(v268, v688);
          continue;
        }

        sub_1D1C3BED8(v269, type metadata accessor for StaticService);
        result = (*(v687 + 8))(v268, v688);
        if (v270 == 1)
        {

          v248 = "HFStatusDescriptionSmokeAlarm_Triggered";
LABEL_121:
          v670 = (v248 - 32);
          v671 = 0xD000000000000027;
          return static String.hfLocalized(_:)(v671, v670 | 0x8000000000000000);
        }
      }

    case 129:
      v624 = *(v690 + 64);
      v685 = v690 + 64;
      v686 = v74;
      v625 = 1 << *(v690 + 32);
      v626 = -1;
      if (v625 < 64)
      {
        v626 = ~(-1 << v625);
      }

      v627 = v626 & v624;
      v684 = ((v625 + 63) >> 6);

      v628 = 0;
      v683 = MEMORY[0x1E69E7CC0];
      v629 = v686;
      if (v627)
      {
        goto LABEL_328;
      }

LABEL_330:
      while (2)
      {
        v647 = v628 + 1;
        if (__OFADD__(v628, 1))
        {
          goto LABEL_388;
        }

        if (v647 < v684)
        {
          v627 = *(v685 + 8 * v647);
          ++v628;
          if (v627)
          {
            v628 = v647;
            do
            {
LABEL_328:
              while (1)
              {
                v630 = __clz(__rbit64(v627));
                v627 &= v627 - 1;
                v631 = v630 | (v628 << 6);
                v632 = v690;
                v633 = *(v690 + 48);
                v634 = sub_1D1E66A7C();
                v635 = *(v634 - 8);
                (*(v635 + 16))(v629, v633 + *(v635 + 72) * v631, v634);
                v636 = *(v632 + 56);
                v637 = (type metadata accessor for StaticService(0) - 8);
                v638 = v636 + *(*v637 + 72) * v631;
                v639 = v689;
                sub_1D1C3BA30(v638, v629 + *(v689 + 48), type metadata accessor for StaticService);
                v640 = v687;
                sub_1D1741C08(v629, v687, &qword_1EC642DB0, &unk_1D1E6F360);
                v641 = *(v639 + 48);
                v642 = v688;
                v643 = v688 + v641;
                (*(v635 + 32))(v688, v640, v634);
                sub_1D1C3B520(v640 + v641, v642 + v641, type metadata accessor for StaticService);
                v692 = *(v643 + v637[34]);
                v691 = -121;
                sub_1D1CE53A4(&v691);
                v645 = v644;
                LOBYTE(v637) = v646;
                sub_1D1741A30(v642, &qword_1EC642DB0, &unk_1D1E6F360);
                result = sub_1D1741A30(v629, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v637 & 1) == 0)
                {
                  break;
                }

                if (!v627)
                {
                  goto LABEL_330;
                }
              }

              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_1D177D4E8(0, *(v683 + 2) + 1, 1, v683);
                v683 = result;
              }

              v649 = *(v683 + 2);
              v648 = *(v683 + 3);
              if (v649 >= v648 >> 1)
              {
                result = sub_1D177D4E8((v648 > 1), v649 + 1, 1, v683);
                v683 = result;
              }

              v650 = v683;
              *(v683 + 2) = v649 + 1;
              *&v650[8 * v649 + 32] = v645;
            }

            while (v627);
          }

          continue;
        }

        goto LABEL_340;
      }

    case 163:
      v140 = *(v690 + 64);
      v685 = v690 + 64;
      v686 = v73;
      v141 = 1 << *(v690 + 32);
      v142 = -1;
      if (v141 < 64)
      {
        v142 = ~(-1 << v141);
      }

      v143 = v142 & v140;
      v684 = ((v141 + 63) >> 6);

      v144 = 0;
      v683 = MEMORY[0x1E69E7CC0];
      v145 = v686;
      if (v143)
      {
        goto LABEL_35;
      }

LABEL_37:
      while (2)
      {
        v163 = v144 + 1;
        if (__OFADD__(v144, 1))
        {
LABEL_376:
          __break(1u);
LABEL_377:
          __break(1u);
LABEL_378:
          __break(1u);
LABEL_379:
          __break(1u);
LABEL_380:
          __break(1u);
LABEL_381:
          __break(1u);
LABEL_382:
          __break(1u);
LABEL_383:
          __break(1u);
LABEL_384:
          __break(1u);
LABEL_385:
          __break(1u);
LABEL_386:
          __break(1u);
LABEL_387:
          __break(1u);
LABEL_388:
          __break(1u);
          goto LABEL_389;
        }

        if (v163 < v684)
        {
          v143 = *(v685 + 8 * v163);
          ++v144;
          if (v143)
          {
            v144 = v163;
            do
            {
LABEL_35:
              while (1)
              {
                v146 = __clz(__rbit64(v143));
                v143 &= v143 - 1;
                v147 = v146 | (v144 << 6);
                v148 = v690;
                v149 = *(v690 + 48);
                v150 = sub_1D1E66A7C();
                v151 = *(v150 - 8);
                (*(v151 + 16))(v145, v149 + *(v151 + 72) * v147, v150);
                v152 = *(v148 + 56);
                v153 = (type metadata accessor for StaticService(0) - 8);
                v154 = v152 + *(*v153 + 72) * v147;
                v155 = v689;
                sub_1D1C3BA30(v154, v145 + *(v689 + 48), type metadata accessor for StaticService);
                v156 = v687;
                sub_1D1741C08(v145, v687, &qword_1EC642DB0, &unk_1D1E6F360);
                v157 = *(v155 + 48);
                v158 = v688;
                v159 = v688 + v157;
                (*(v151 + 32))(v688, v156, v150);
                sub_1D1C3B520(v156 + v157, v158 + v157, type metadata accessor for StaticService);
                v692 = *(v159 + v153[34]);
                v691 = -87;
                sub_1D1CE53A4(&v691);
                v161 = v160;
                LOBYTE(v153) = v162;
                sub_1D1741A30(v158, &qword_1EC642DB0, &unk_1D1E6F360);
                result = sub_1D1741A30(v145, &qword_1EC642DB0, &unk_1D1E6F360);
                if ((v153 & 1) == 0)
                {
                  break;
                }

                if (!v143)
                {
                  goto LABEL_37;
                }
              }

              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_1D177D4E8(0, *(v683 + 2) + 1, 1, v683);
                v683 = result;
              }

              v165 = *(v683 + 2);
              v164 = *(v683 + 3);
              if (v165 >= v164 >> 1)
              {
                result = sub_1D177D4E8((v164 > 1), v165 + 1, 1, v683);
                v683 = result;
              }

              v166 = v683;
              *(v683 + 2) = v165 + 1;
              *&v166[8 * v165 + 32] = v161;
            }

            while (v143);
          }

          continue;
        }

        break;
      }

LABEL_340:

      v651 = v683;
LABEL_341:
      v652 = v651;
      v653 = 0;
LABEL_342:
      v654 = sub_1D1C3B588(v652, v653);
LABEL_343:
      v83 = v654;
LABEL_372:

      return v83;
    default:
      return v83;
  }
}

uint64_t static StaticService.batteryCharacteristicString(services:)(uint64_t a1)
{
  v2 = type metadata accessor for StaticService(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v10 = *(v4 + 128);
    v11 = *(v5 + 72);
    v12 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D1C3BA30(v9, v7, type metadata accessor for StaticService);
      v20 = *&v7[v10];
      HIBYTE(v19) = 11;
      v21 = StaticCharacteristicsBag.int(for:)((&v19 + 7));
      value = v21.value;
      is_nil = v21.is_nil;
      sub_1D1C3BED8(v7, type metadata accessor for StaticService);
      if (!is_nil)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1D177D8E4(0, *(v12 + 2) + 1, 1, v12);
        }

        v16 = *(v12 + 2);
        v15 = *(v12 + 3);
        if (v16 >= v15 >> 1)
        {
          v12 = sub_1D177D8E4((v15 > 1), v16 + 1, 1, v12);
        }

        *(v12 + 2) = v16 + 1;
        *&v12[8 * v16 + 32] = value;
      }

      v9 += v11;
      --v8;
    }

    while (v8);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1D1C3BD48(v12);

  return v17;
}

uint64_t StaticService.tileCharacteristicStateString.getter()
{
  v2 = 1;
  v1 = 0;
  return StaticService.characteristicStateString(context:temperatureScale:)(&v2, &v1).value._countAndFlagsBits;
}

uint64_t sub_1D1C38A64(unsigned __int8 a1)
{
  v3 = *(v1 + *(type metadata accessor for StaticService(0) + 128));
  v13 = v3;
  v12 = a1;
  v4 = sub_1D1CE4920(&v12);
  result = 0;
  if (v4 != 2)
  {
    v13 = v3;
    v12 = 115;
    sub_1D1CE53A4(&v12);
    v7 = v6;
    result = 0;
    if ((v8 & 1) == 0 && v7 > 0.0)
    {
      if (v4)
      {
        v9 = 0xD000000000000021;
      }

      else
      {
        v9 = 0xD000000000000022;
      }

      if (v4)
      {
        v10 = "startUpCurrentLevel";
      }

      else
      {
        v10 = "oachAngleSupported";
      }

      v11 = static String.hfLocalized(_:)(v9, v10 | 0x8000000000000000);

      return v11;
    }
  }

  return result;
}

uint64_t StaticService.accessoryControlCharacteristicStateString.getter()
{
  v2 = 2;
  v1 = 0;
  return StaticService.characteristicStateString(context:temperatureScale:)(&v2, &v1).value._countAndFlagsBits;
}

uint64_t StaticService.isUpdating.getter()
{
  v1 = type metadata accessor for StaticService(0);
  v6 = *(v0 + *(v1 + 128));
  v5 = *(v0 + *(v1 + 104));

  v2 = ServiceKind.stateStatusDependentCharaceristicKinds.getter();
  v3 = StaticCharacteristicsBag.isUpdating(for:)(v2);

  return v3 & 1;
}

uint64_t sub_1D1C38C04(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v30[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v30[-1] - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30[-1] - v11;
  v13 = *a1;
  v14 = type metadata accessor for StaticService(0);
  v15 = v14[34];
  LOBYTE(v30[0]) = v13;
  result = sub_1D1D32844(v1 + v15, v30);
  if (!v17)
  {
    v18 = *(v1 + v14[10]);
    if (v18 != 2 && (v18 & 1) != 0)
    {
      result = 0;
      if (v13 <= 2)
      {
        if (v13 < 2)
        {
          return result;
        }

        v19 = 0x80000001D1EC63C0;
        v20 = 0xD00000000000001ELL;
        return static String.hfLocalized(_:)(v20, v19);
      }

      if (v13 != 3)
      {
        return result;
      }

      v26 = "ngHomeKitUncertified_Lock";
      v20 = 0xD000000000000020;
LABEL_22:
      v19 = v26 | 0x8000000000000000;
      return static String.hfLocalized(_:)(v20, v19);
    }

    if (v13 != 3)
    {
      return 0;
    }

    v21 = v14[13];
    sub_1D1741C08(v1 + v21, v12, &qword_1EC644620, &unk_1D1E75A00);
    v22 = type metadata accessor for StaticDeviceMetadata();
    v23 = *(*(v22 - 1) + 48);
    if (v23(v12, 1, v22) != 1)
    {
      v24 = v12[v22[11]];
      sub_1D1C3BED8(v12, type metadata accessor for StaticDeviceMetadata);
      sub_1D1741C08(v1 + v21, v10, &qword_1EC644620, &unk_1D1E75A00);
      if (v23(v10, 1, v22) != 1)
      {
        v27 = v10[v22[12]];
        sub_1D1C3BED8(v10, type metadata accessor for StaticDeviceMetadata);
        if (!(v24 & 1 | ((v27 & 1) == 0)))
        {
          v30[3] = &type metadata for HomeAppFeatures;
          v30[4] = sub_1D19C6154();
          LOBYTE(v30[0]) = 1;
          v28 = sub_1D1E66D5C();
          __swift_destroy_boxed_opaque_existential_1(v30);
          if (v28)
          {
            v26 = "ngHomeKitUncertified";
            v20 = 0xD000000000000039;
            goto LABEL_22;
          }
        }

        goto LABEL_12;
      }

      v12 = v10;
    }

    sub_1D1741A30(v12, &qword_1EC644620, &unk_1D1E75A00);
LABEL_12:
    sub_1D1741C08(v1 + v21, v7, &qword_1EC644620, &unk_1D1E75A00);
    if (v23(v7, 1, v22) == 1)
    {
      sub_1D1741A30(v7, &qword_1EC644620, &unk_1D1E75A00);
    }

    else
    {
      v25 = v7[v22[10]];
      sub_1D1C3BED8(v7, type metadata accessor for StaticDeviceMetadata);
      if ((v25 & 1) == 0)
      {
        v26 = "ionValve_OneRunning";
        v20 = 0xD000000000000034;
        goto LABEL_22;
      }
    }

    return 0;
  }

  return result;
}

BOOL StaticService.hasDetailAttentionMessages.getter()
{
  v3 = 2;
  sub_1D1C38C04(&v3);
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

uint64_t StaticService.TelevisionInputSource.init(mediaSourceIdentifier:configuredName:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t StaticService.TelevisionInputSource.hash(into:)()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  MEMORY[0x1D3892850](*v0);
  sub_1D1E6922C();
  if (v3)
  {
    sub_1D1E678EC();
  }

  return sub_1D1E678EC();
}

uint64_t StaticService.TelevisionInputSource.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v2);
  sub_1D1E6922C();
  if (v4)
  {
    sub_1D1E678EC();
  }

  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1C39110()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v2);
  sub_1D1E6922C();
  if (v4)
  {
    sub_1D1E678EC();
  }

  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1C391AC()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  MEMORY[0x1D3892850](*v0);
  sub_1D1E6922C();
  if (v3)
  {
    sub_1D1E678EC();
  }

  return sub_1D1E678EC();
}

uint64_t sub_1D1C3923C()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v2);
  sub_1D1E6922C();
  if (v4)
  {
    sub_1D1E678EC();
  }

  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1C392D4()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC64CB08);
  __swift_project_value_buffer(v0, qword_1EC64CB08);
  return sub_1D1E6708C();
}

uint64_t static Logger.staticServiceStatus.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC6423C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6709C();
  v3 = __swift_project_value_buffer(v2, qword_1EC64CB08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

char *sub_1D1C39404(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_1D178D49C(result, v5, 0);
  }

  return result;
}

uint64_t _s13HomeDataModel13StaticServiceV21TelevisionInputSourceV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  if (v3)
  {
    if (v6)
    {
      v9 = a1[1] == a2[1] && v3 == v6;
      if (v9 || (sub_1D1E6904C() & 1) != 0)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_9:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_1D1E6904C();
}

uint64_t sub_1D1C3953C(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0xD000000000000023;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v6 = "ValueAirQualityGood";
      v5 = 0xD000000000000028;
      return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
    }

    if (a1 == 2)
    {
      v6 = "ValueAirQualityFair";
      return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v6 = "ValueAirQualityInferior";
        return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
      case 4:
        v6 = "ValueAirQualityPoor";
        v5 = 0xD000000000000027;
        return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
      case 5:
        v6 = "HFCharacteristicTitleAirQuality";
        return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
    }
  }

  return v4;
}

uint64_t sub_1D1C39610(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, char a7)
{
  if (a7 == 2 || (a7 & 1) == 0)
  {
    if ((a2 & 1) == 0 && (a4 & 1) == 0)
    {
      if (a1 == 100)
      {
        if (a3 == 100)
        {
          v7 = 0xD000000000000022;
          v8 = 0x80000001D1EBA6D0;
          return static String.hfLocalized(_:)(v7, v8);
        }
      }

      else if (!a1 && !a3)
      {
        v7 = 0xD000000000000024;
        v8 = 0x80000001D1EBA6A0;
        return static String.hfLocalized(_:)(v7, v8);
      }

      if (a1 == a3)
      {
        v11 = sub_1D19CB618(1, 0.0, 100.0, a1);
        v13 = v12;
        static String.hfLocalized(_:)(0xD000000000000031, 0x80000001D1EC6D00);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1D1E739C0;
        *(v14 + 56) = MEMORY[0x1E69E6158];
        *(v14 + 64) = sub_1D1757D20();
        *(v14 + 32) = v11;
        *(v14 + 40) = v13;
        v15 = sub_1D1E6784C();

        return v15;
      }

      v16 = "ValueDoorStateStopped";
      if (a1 < a3)
      {
        v16 = "ValueDoorStateClosing";
      }

LABEL_26:
      v8 = v16 | 0x8000000000000000;
      v7 = 0xD000000000000025;
      return static String.hfLocalized(_:)(v7, v8);
    }

    if (a6)
    {
      return 0;
    }

    if (a5 == 2)
    {
      v10 = "HFCharacteristicValueDoorStateStopped";
    }

    else if (a5 == 1)
    {
      v10 = "HFCharacteristicValueDoorStateOpening";
    }

    else
    {
      if (a5)
      {
        return 0;
      }

      v10 = "HFCharacteristicValueDoorStateClosing";
    }

    v16 = (v10 - 32);
    goto LABEL_26;
  }

  v7 = 0xD000000000000031;
  v8 = 0x80000001D1EC6D40;
  return static String.hfLocalized(_:)(v7, v8);
}

uint64_t sub_1D1C397FC(char a1, uint64_t a2, char a3)
{
  if (a1 == 2)
  {
    return 0;
  }

  v4 = (a1 & 1) == 0;
  if (a1)
  {
    v6 = 0xD000000000000021;
  }

  else
  {
    v6 = 0xD000000000000022;
  }

  if (v4)
  {
    v7 = "oachAngleSupported";
  }

  else
  {
    v7 = "startUpCurrentLevel";
  }

  if ((a1 & 1) != 0 && (a3 & 1) == 0)
  {
    if (*&a2 > 0.0)
    {
      return sub_1D19CB618(1, 0.0, 100.0, *&a2);
    }

    v6 = 0xD000000000000021;
    v7 = "startUpCurrentLevel";
  }

  v8 = static String.hfLocalized(_:)(v6, v7 | 0x8000000000000000);

  return v8;
}

uint64_t sub_1D1C398C4(uint64_t a1, char a2, uint64_t a3, char a4, char a5)
{
  if (a5 == 2 || (a5 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a3 == 1)
      {
        v7 = a2 | (a1 != 1);
        v8 = "ValueDoorStateOpening";
        v9 = "ValueDoorStateStopped";
        v10 = 0xD000000000000024;
        goto LABEL_10;
      }

      if (!a3)
      {
        v7 = a2 | (a1 != 0);
        v8 = "ValueDoorStateClosed";
        v9 = "ValueDoorStateClosing";
        v10 = 0xD000000000000022;
LABEL_10:
        v12 = (v7 & 1) == 0;
        if (v7)
        {
          v5 = v9;
        }

        else
        {
          v5 = v8;
        }

        if (v12)
        {
          v6 = v10;
        }

        else
        {
          v6 = 0xD000000000000025;
        }

        return static String.hfLocalized(_:)(v6, v5 | 0x8000000000000000);
      }
    }

    return 0;
  }

  v5 = "HMServiceTypeDoor";
  v6 = 0xD000000000000031;
  return static String.hfLocalized(_:)(v6, v5 | 0x8000000000000000);
}

uint64_t sub_1D1C3999C(uint64_t a1, char a2, double a3)
{
  v20 = 0;
  v5 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v20, a3);
  v7 = v6;
  if ((a2 & 1) != 0 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643480, &qword_1D1E71900), inited = swift_initStackObject(), *(inited + 16) = xmmword_1D1E739C0, *(inited + 32) = a1, v9 = _s13HomeDataModel17ClimateSummarizerO19humidityRangeString_17addPercentageSignSSSgSaySdG_SbtFZ_0(inited, 1), v11 = v10, swift_setDeallocating(), !v11))
  {
    static String.hfLocalized(_:)(0xD000000000000024, 0x80000001D1EC7750);
    v12 = sub_1D1E677EC();

    sub_1D1C3BE8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D1E739C0;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1D1757D20();
    *(v16 + 32) = v5;
    *(v16 + 40) = v7;
  }

  else
  {
    static String.hfLocalized(_:)(0xD00000000000002FLL, 0x80000001D1EC6400);
    v12 = sub_1D1E677EC();

    sub_1D1C3BE8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D1E73A90;
    v14 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v15 = sub_1D1757D20();
    *(v13 + 32) = v5;
    *(v13 + 40) = v7;
    *(v13 + 96) = v14;
    *(v13 + 104) = v15;
    *(v13 + 64) = v15;
    *(v13 + 72) = v9;
    *(v13 + 80) = v11;
  }

  v17 = sub_1D1E6853C();
  v18 = sub_1D1E6781C();

  return v18;
}

uint64_t sub_1D1C39B94(char a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, char a9)
{
  if (a1 == 2)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    v15 = 0xD000000000000022;
    v16 = 0x80000001D1EC1E60;
    return static String.hfLocalized(_:)(v15, v16);
  }

  if (a3 & 1) != 0 || (a5)
  {
    goto LABEL_33;
  }

  if (a2 == 3)
  {
    if (a4 == 2 || a4 == 1)
    {
      if ((a9 & 1) == 0)
      {
        v10 = sub_1D19CB618(1, 0.0, 100.0, *&a8);
        v12 = v32;
        v13 = "tionHumidifierAutoWithHumidity";
        v14 = 0xD000000000000034;
        goto LABEL_28;
      }

      goto LABEL_33;
    }

    goto LABEL_15;
  }

  if (a2 == 2)
  {
    if (a4 == 2 || a4 == 1)
    {
      if ((a7 & 1) == 0)
      {
        v10 = sub_1D19CB618(1, 0.0, 100.0, *&a6);
        v12 = v11;
        v13 = "humidifyWithHumidity";
        v14 = 0xD000000000000032;
LABEL_28:
        static String.hfLocalized(_:)(v14, v13 | 0x8000000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1D1E739C0;
        *(v33 + 56) = MEMORY[0x1E69E6158];
        *(v33 + 64) = sub_1D1757D20();
        *(v33 + 32) = v10;
        *(v33 + 40) = v12;
        v34 = sub_1D1E6783C();

        return v34;
      }

      goto LABEL_33;
    }

LABEL_15:
    if (!a4 && (a7 & 1) == 0 && (a9 & 1) == 0)
    {
      v17 = *&a6;
      v18 = *&a8;
LABEL_25:
      static String.hfLocalized(_:)(0xD000000000000033, 0x80000001D1EC7160);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1D1E73A90;
      v24 = sub_1D19CB618(1, 0.0, 100.0, v17);
      v26 = v25;
      v27 = MEMORY[0x1E69E6158];
      *(v23 + 56) = MEMORY[0x1E69E6158];
      v28 = sub_1D1757D20();
      *(v23 + 64) = v28;
      *(v23 + 32) = v24;
      *(v23 + 40) = v26;
      v29 = sub_1D19CB618(1, 0.0, 100.0, v18);
      *(v23 + 96) = v27;
      *(v23 + 104) = v28;
      *(v23 + 72) = v29;
      *(v23 + 80) = v30;
      v31 = sub_1D1E6783C();

      return v31;
    }

    goto LABEL_33;
  }

  static String.hfLocalized(_:)(0xD00000000000002ELL, 0x80000001D1EC75A0);
  switch(a4)
  {
    case 2:
      if (a9)
      {
        goto LABEL_32;
      }

      v35 = *&a8;
      break;
    case 1:
      if (a7)
      {
        goto LABEL_32;
      }

      v35 = *&a6;
      break;
    case 0:

      if ((a7 & 1) == 0 && (a9 & 1) == 0)
      {
        v17 = *&a6;
        v18 = *&a8;
        goto LABEL_25;
      }

LABEL_33:
      v16 = 0x80000001D1EC1F50;
      v15 = 0xD000000000000021;
      return static String.hfLocalized(_:)(v15, v16);
    default:
LABEL_32:

      goto LABEL_33;
  }

  v36 = sub_1D19CB618(1, 0.0, 100.0, v35);
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1D1E739C0;
  *(v39 + 56) = MEMORY[0x1E69E6158];
  *(v39 + 64) = sub_1D1757D20();
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  v40 = sub_1D1E6783C();

  return v40;
}

uint64_t sub_1D1C39F74(uint64_t result, char a2)
{
  if (a2)
  {
    *&result = 0.0;
    return result;
  }

  if ((~result & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*&result <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*&result < 9.22337204e18)
  {
    v2 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](37, 0xE100000000000000);
    return v2;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D1C3A024(char a1, char a2, uint64_t a3, char a4)
{
  if (a1 == 2)
  {
    return 0;
  }

  v5 = 0xD000000000000030;
  v6 = "ystem, State:Scheduled";
  if (a4 & 1 | ((a2 & 1) == 0) | (a3 == 0))
  {
    v7 = "midifyWithHumidity";
  }

  else
  {
    v7 = "ystem, State:Off";
  }

  if (!(a4 & 1 | ((a2 & 1) == 0) | (a3 == 0)))
  {
    v5 = 0xD000000000000036;
  }

  if (a1)
  {
    v8 = 0xD00000000000003ALL;
  }

  else
  {
    v6 = v7;
    v8 = v5;
  }

  return static String.hfLocalized(_:)(v8, v6 | 0x8000000000000000);
}

uint64_t sub_1D1C3A0BC(char a1, uint64_t a2, char a3)
{
  if (a1 == 2)
  {
    return 0;
  }

  v5 = 0xD000000000000021;
  if (a1)
  {
    v6 = "startUpCurrentLevel";
    if ((a3 & 1) == 0 && a2 >= 1)
    {
      return sub_1D19CB618(1, 0.0, 100.0, a2);
    }
  }

  else
  {
    v6 = "oachAngleSupported";
    v5 = 0xD000000000000022;
  }

  v7 = static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);

  return v7;
}

uint64_t sub_1D1C3A170(uint64_t result, char a2)
{
  if (a2)
  {
    *&result = 0.0;
    return result;
  }

  if ((~result & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*&result <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*&result < 9.22337204e18)
  {
    v5 = sub_1D1E68FAC();

    MEMORY[0x1D3890F70](32, 0xE100000000000000);

    v2 = static String.hfLocalized(_:)(0xD00000000000003CLL, 0x80000001D1EC7710);
    v4 = v3;

    MEMORY[0x1D3890F70](v2, v4);

    return v5;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D1C3A290(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0xD00000000000002ELL;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v9 = "ValueLockMechanismStateUnknown";
      v7 = 0xD00000000000002DLL;
      return static String.hfLocalized(_:)(v7, v9 | 0x8000000000000000);
    }

    if (a1 == 3)
    {
      v8 = "HFCharacteristicValueLockMechanismStateUnknown";
      goto LABEL_13;
    }
  }

  else
  {
    if (!a1)
    {
      if (a4)
      {
        return 0;
      }

      if (a3)
      {
        if (a3 == 1)
        {
          v8 = "HFCharacteristicValueLockMechanismStateLocking";
          goto LABEL_13;
        }

        return 0;
      }

      v10 = "HFCharacteristicValueLockMechanismStateUnsecured";
LABEL_21:
      v9 = (v10 - 32);
      v7 = 0xD000000000000030;
      return static String.hfLocalized(_:)(v7, v9 | 0x8000000000000000);
    }

    if (a1 == 1)
    {
      if (a4)
      {
        return 0;
      }

      if (a3)
      {
        if (a3 == 1)
        {
          v8 = "HFCharacteristicValueLockMechanismStateSecured";
LABEL_13:
          v9 = (v8 - 32);
          return static String.hfLocalized(_:)(v7, v9 | 0x8000000000000000);
        }

        return 0;
      }

      v10 = "HFCharacteristicValueLockMechanismStateUnlocking";
      goto LABEL_21;
    }
  }

  return v6;
}

uint64_t sub_1D1C3A37C(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0xD000000000000036;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v7 = "HFCharacteristicValueCurrentSecuritySystemStateNightArm";
    }

    else
    {
      if (a1 != 3)
      {
        return v4;
      }

      v7 = "HFCharacteristicValueCurrentSecuritySystemStateDisarmed";
    }

    v6 = (v7 - 32);
    v5 = 0xD000000000000037;
    return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
  }

  if (!a1)
  {
    v6 = "ritySystemStateAwayArm";
    return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
  }

  if (a1 == 1)
  {
    v6 = "ritySystemStateNightArm";
    return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
  }

  return v4;
}

uint64_t sub_1D1C3A42C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2 & 1) != 0 || (a4)
  {
    return 0;
  }

  if (a1 == 4)
  {
    v5 = "smStateUnsecured";
    v6 = 0xD000000000000038;
  }

  else
  {
    result = 0;
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v10 = a1 == 2;
        if (a1 == 2)
        {
          v5 = "ritySystemStateDisarmed";
        }

        else
        {
          v5 = "ritySystemStateDisarming";
        }

        v11 = 0xD000000000000035;
      }

      else
      {
        if (a3 != 3)
        {
          return result;
        }

        v10 = a1 == 3;
        if (a1 == 3)
        {
          v5 = "ritySystemStateTriggered";
        }

        else
        {
          v5 = "StateGroupedTitleStatusFault";
        }

        v11 = 0xD000000000000038;
      }

      if (v10)
      {
        v6 = 0xD000000000000037;
      }

      else
      {
        v6 = v11;
      }
    }

    else
    {
      if (a3)
      {
        if (a3 != 1)
        {
          return result;
        }

        v8 = "ritySystemStateNightArm";
        v9 = a1 == 1;
      }

      else
      {
        v8 = "ritySystemStateAwayArm";
        v9 = a1 == 0;
      }

      if (v9)
      {
        v5 = v8;
      }

      else
      {
        v5 = "ritySystemStateDisarming";
      }

      if (v9)
      {
        v6 = 0xD000000000000036;
      }

      else
      {
        v6 = 0xD000000000000035;
      }
    }
  }

  return static String.hfLocalized(_:)(v6, v5 | 0x8000000000000000);
}

char *sub_1D1C3A56C(uint64_t a1)
{
  v2 = type metadata accessor for StaticCharacteristic();
  v31 = *(v2 - 8);
  v32 = v2;
  v3 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StaticService(0);
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = &v9[v5[12]];
  v12 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v13 = *(v7 + 72);
  v14 = MEMORY[0x1E69E7CC0];
  v34 = v13;
  v35 = v11;
  do
  {
    sub_1D1C3BA30(v12, v9, type metadata accessor for StaticService);
    if (v11[8])
    {
      sub_1D1C3BED8(v9, type metadata accessor for StaticService);
    }

    else
    {
      v37 = *v11;
      v15 = *&v9[v5[32]];
      if (*(v15 + 16) && (v16 = sub_1D171D140(27), (v17 & 1) != 0))
      {
        v18 = v33;
        sub_1D1C3BA30(*(v15 + 56) + *(v31 + 72) * v16, v33, type metadata accessor for StaticCharacteristic);
        v19 = v18 + *(v32 + 24);
        if (*(v19 + 16) == 8)
        {
          v20 = *(v18 + *(v32 + 24) + 8);
          v36 = *v19;
        }

        else
        {
          v36 = 0;
          v20 = 0;
        }

        sub_1D1C3BED8(v33, type metadata accessor for StaticCharacteristic);
      }

      else
      {
        v36 = 0;
        v20 = 0;
      }

      v21 = v5;
      v22 = &v9[v5[5]];
      v23 = *v22;
      v24 = *(v22 + 1);

      sub_1D1C3BED8(v9, type metadata accessor for StaticService);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1D177D0D4(0, *(v14 + 2) + 1, 1, v14);
      }

      v26 = *(v14 + 2);
      v25 = *(v14 + 3);
      if (v26 >= v25 >> 1)
      {
        v14 = sub_1D177D0D4((v25 > 1), v26 + 1, 1, v14);
      }

      *(v14 + 2) = v26 + 1;
      v27 = &v14[40 * v26];
      v28 = v36;
      *(v27 + 4) = v37;
      *(v27 + 5) = v28;
      *(v27 + 6) = v20;
      *(v27 + 7) = v23;
      *(v27 + 8) = v24;
      v5 = v21;
      v13 = v34;
      v11 = v35;
    }

    v12 += v13;
    --v10;
  }

  while (v10);
  return v14;
}

uint64_t sub_1D1C3A89C(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a1 == 2)
  {
    return 0;
  }

  if (a1)
  {
    if ((a3 & 1) == 0 && a4)
    {
      v6 = *(a4 + 16);
      v5 = a4 + 16;
      v7 = v6 + 1;
      while (--v7)
      {
        v8 = (v5 + 40);
        v9 = *(v5 + 16);
        v5 += 40;
        if (v9 == a2)
        {
          if (*(v8 - 1))
          {
            v10 = *(v8 - 2);
            v11 = *(v8 - 1);
          }

          else
          {
            v10 = *v8;
            v14 = v8[1];
          }

          return v10;
        }
      }
    }

    v13 = 0x80000001D1EC1F50;
    v12 = 0xD000000000000021;
  }

  else
  {
    v12 = 0xD000000000000022;
    v13 = 0x80000001D1EC1E60;
  }

  return static String.hfLocalized(_:)(v12, v13);
}

uint64_t _s13HomeDataModel13StaticServiceV11valveString6active5inUseSSSgSbSg_AHtFZ_0(char a1, char a2)
{
  if (a1 == 2)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (a2 != 2)
    {
      v3 = "rolHeaderCurrentTemp";
      if (a2)
      {
        v3 = "HFStatusDescriptionValve_OneOff";
        v4 = 0xD000000000000024;
      }

      else
      {
        v4 = 0xD00000000000001FLL;
      }

      return static String.hfLocalized(_:)(v4, v3 | 0x8000000000000000);
    }

    return 0;
  }

  if (a2 == 2)
  {
    return 0;
  }

  v3 = "ionValve_OneStopping";
  if (a2)
  {
    v3 = "ionValve_OneStarting";
    v4 = 0xD000000000000023;
  }

  else
  {
    v4 = 0xD000000000000024;
  }

  return static String.hfLocalized(_:)(v4, v3 | 0x8000000000000000);
}

uint64_t sub_1D1C3AA1C(char a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6)
{
  if (a6 != 2 && (a6 & 1) != 0)
  {
    v6 = 0xD000000000000031;
    v7 = 0x80000001D1EC6D40;
    return static String.hfLocalized(_:)(v6, v7);
  }

  if (a3)
  {
    if (a5)
    {
      return 0;
    }

    if (a4 == 2)
    {
      v9 = "HFCharacteristicValueDoorStateStopped";
    }

    else if (a4 == 1)
    {
      v9 = "HFCharacteristicValueDoorStateOpening";
    }

    else
    {
      if (a4)
      {
        return 0;
      }

      v9 = "HFCharacteristicValueDoorStateClosing";
    }

    v7 = (v9 - 32) | 0x8000000000000000;
    v6 = 0xD000000000000025;
    return static String.hfLocalized(_:)(v6, v7);
  }

  if (a2 == 100)
  {
    v6 = 0xD000000000000022;
    v7 = 0x80000001D1EBA6D0;
    return static String.hfLocalized(_:)(v6, v7);
  }

  if (!a2)
  {
    v6 = 0xD000000000000024;
    v7 = 0x80000001D1EBA6A0;
    return static String.hfLocalized(_:)(v6, v7);
  }

  result = sub_1D19CB618(1, 0.0, 100.0, a2);
  if (a1)
  {
    v12 = result;
    v13 = v11;
    static String.hfLocalized(_:)(0xD000000000000031, 0x80000001D1EC6D00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D1E739C0;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1D1757D20();
    *(v14 + 32) = v12;
    *(v14 + 40) = v13;
    v15 = sub_1D1E6784C();

    return v15;
  }

  return result;
}

uint64_t _s13HomeDataModel13StaticServiceV15lightBulbString0fG6ValuesSSSgSaySbSg10powerState_SiSg10brightnesstG_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 48);
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = *(v2 - 16);
      if (v7 != 2)
      {
        v8 = *(v2 - 1);
        v9 = *v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D178D41C(0, *(v3 + 16) + 1, 1);
        }

        v5 = *(v3 + 16);
        v4 = *(v3 + 24);
        if (v5 >= v4 >> 1)
        {
          sub_1D178D41C((v4 > 1), v5 + 1, 1);
        }

        *(v3 + 16) = v5 + 1;
        v6 = v3 + 24 * v5;
        *(v6 + 32) = v7;
        *(v6 + 40) = v8;
        *(v6 + 48) = v9;
      }

      v2 += 24;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v3 + 16);
  if (v10)
  {
    v11 = 32;
    v12 = *(v3 + 16);
    do
    {
      v13 = *(v3 + v11);
      if (v13 != 2 && (v13 & 1) != 0)
      {
        v14 = 1;
        goto LABEL_18;
      }

      v11 += 24;
      --v12;
    }

    while (v12);
    v14 = 0;
LABEL_18:
    v15 = (v3 + 48);
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((*(v15 - 16) & 1) != 0 && (*v15 & 1) == 0)
      {
        v17 = *(v15 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D177D8E4(0, *(v16 + 2) + 1, 1, v16);
        }

        v19 = *(v16 + 2);
        v18 = *(v16 + 3);
        if (v19 >= v18 >> 1)
        {
          v16 = sub_1D177D8E4((v18 > 1), v19 + 1, 1, v16);
        }

        *(v16 + 2) = v19 + 1;
        *&v16[8 * v19 + 32] = v17;
      }

      v15 += 24;
      --v10;
    }

    while (v10);
    v20 = 0xD000000000000021;

    v21 = sub_1D1745B10(v16);
    v23 = v22;

    if (v14)
    {
      v24 = "startUpCurrentLevel";
      if ((v23 & 1) == 0 && v21 >= 1)
      {
        return sub_1D19CB618(1, 0.0, 100.0, v21);
      }
    }

    else
    {
      v24 = "oachAngleSupported";
      v20 = 0xD000000000000022;
    }

    v26 = static String.hfLocalized(_:)(v20, v24 | 0x8000000000000000);

    return v26;
  }

  else
  {

    return 0;
  }
}

uint64_t _s13HomeDataModel13StaticServiceV12switchString16powerStateValuesSSSgSaySbG_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = 0xD000000000000021;
  v4 = (a1 + 32);
  v5 = "oachAngleSupported";
  while (v1)
  {
    v6 = *v4++;
    --v1;
    if (v6 == 1)
    {
      v5 = "startUpCurrentLevel";
      return static String.hfLocalized(_:)(v3, v5 | 0x8000000000000000);
    }
  }

  v3 = 0xD000000000000022;
  return static String.hfLocalized(_:)(v3, v5 | 0x8000000000000000);
}

uint64_t _s13HomeDataModel13StaticServiceV35fanOrAirPurifierRotationSpeedString0F6ValuesSSSgSaySbSg10powerState_SdSg08rotationK0tG_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 48);
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = *(v2 - 16);
      if (v7 != 2)
      {
        v8 = *(v2 - 1);
        v9 = *v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D178D44C(0, *(v3 + 16) + 1, 1);
        }

        v5 = *(v3 + 16);
        v4 = *(v3 + 24);
        if (v5 >= v4 >> 1)
        {
          sub_1D178D44C((v4 > 1), v5 + 1, 1);
        }

        *(v3 + 16) = v5 + 1;
        v6 = v3 + 24 * v5;
        *(v6 + 32) = v7;
        *(v6 + 40) = v8;
        *(v6 + 48) = v9;
      }

      v2 += 24;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v3 + 16);
  if (v10)
  {
    v11 = 32;
    v12 = *(v3 + 16);
    do
    {
      v13 = *(v3 + v11);
      if (v13 != 2 && (v13 & 1) != 0)
      {
        v14 = 1;
        goto LABEL_18;
      }

      v11 += 24;
      --v12;
    }

    while (v12);
    v14 = 0;
LABEL_18:
    v15 = (v3 + 48);
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((*(v15 - 16) & 1) != 0 && (*v15 & 1) == 0)
      {
        v17 = *(v15 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D177D4E8(0, *(v16 + 2) + 1, 1, v16);
        }

        v19 = *(v16 + 2);
        v18 = *(v16 + 3);
        if (v19 >= v18 >> 1)
        {
          v16 = sub_1D177D4E8((v18 > 1), v19 + 1, 1, v16);
        }

        *(v16 + 2) = v19 + 1;
        *&v16[8 * v19 + 32] = v17;
      }

      v15 += 24;
      --v10;
    }

    while (v10);
    v20 = 0xD000000000000021;

    v21 = COERCE_DOUBLE(sub_1D1745ACC(v16));
    v23 = v22;

    if (v14)
    {
      v24 = "startUpCurrentLevel";
      if ((v23 & 1) == 0 && v21 > 0.0)
      {
        return sub_1D19CB618(1, 0.0, 100.0, v21);
      }
    }

    else
    {
      v24 = "oachAngleSupported";
      v20 = 0xD000000000000022;
    }

    v26 = static String.hfLocalized(_:)(v20, v24 | 0x8000000000000000);

    return v26;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1D1C3B158()
{
  result = qword_1EC64CB20;
  if (!qword_1EC64CB20)
  {
    sub_1D1E6634C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CB20);
  }

  return result;
}

uint64_t _s13HomeDataModel13StaticServiceV27motorizedDoorOrWindowString04doorhI6ValuesSSSgSaySiSg15currentPosition_AG06targetN0So021HMCharacteristicValueN5StateVSg08positionR0SbSg19obstructionDetectedtG_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = (a1 + 73);
  v10 = 1;
  do
  {
    v18 = *v9;
    v15 = v18 == 2;
    v19 = v18 | v2;
    if (!v15)
    {
      v2 = v19;
    }

    if ((*(v9 - 33) | *(v9 - 17)))
    {
      v11 = *(v9 - 9);
      v12 = *(v9 - 1);
      if (v11 == 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v3;
      }

      if (v11 == 2)
      {
        v14 = 1;
      }

      else
      {
        v14 = v8;
      }

      if (v11 == 2)
      {
        v13 = v3;
      }

      v15 = v11 == 0;
      if (v11)
      {
        v16 = v14;
      }

      else
      {
        v16 = v8;
      }

      if (v15)
      {
        v17 = 1;
      }

      else
      {
        v17 = v4;
      }

      if (v15)
      {
        v13 = v3;
      }

      if ((*(v9 - 1) & 1) == 0)
      {
        v8 = v16;
        v4 = v17;
        v3 = v13;
      }
    }

    else
    {
      v20 = *(v9 - 41);
      v21 = *(v9 - 25);
      if (v20 == 100)
      {
        if (v21 == 100)
        {
          v6 = 1;
          goto LABEL_21;
        }
      }

      else if (!v20 && !v21)
      {
        v7 = 1;
        goto LABEL_21;
      }

      if (v20 == v21)
      {
        if (v10)
        {
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }
        }

        else if (v5 < v20)
        {
LABEL_34:
          v10 = 0;
          v5 = *(v9 - 41);
          goto LABEL_21;
        }
      }

      if (v20 < v21)
      {
        v3 = 1;
      }

      else
      {
        v4 |= v21 < v20;
      }
    }

LABEL_21:
    v9 += 48;
    --v1;
  }

  while (v1);
  if (v2)
  {
    v22 = "HMServiceTypeDoor";
    v23 = 0xD000000000000031;
    goto LABEL_44;
  }

  if (v6)
  {
    v22 = "ValueDoorStateClosed";
    v23 = 0xD000000000000022;
    goto LABEL_44;
  }

  if (v10)
  {
    if (v3)
    {
      v26 = "HFCharacteristicValueDoorStateOpening";
      goto LABEL_52;
    }

    if (v4)
    {
      v26 = "HFCharacteristicValueDoorStateClosing";
      goto LABEL_52;
    }

    if (v7)
    {
      v22 = "ValueDoorStateOpening";
      v23 = 0xD000000000000024;
LABEL_44:
      v25 = v22 | 0x8000000000000000;
      return static String.hfLocalized(_:)(v23, v25);
    }

    if (v8)
    {
      v26 = "HFCharacteristicValueDoorStateStopped";
LABEL_52:
      v25 = (v26 - 32) | 0x8000000000000000;
      v23 = 0xD000000000000025;
      return static String.hfLocalized(_:)(v23, v25);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v27 = v5;
    static String.hfLocalized(_:)(0xD000000000000031, 0x80000001D1EC6D00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D1E739C0;
    v29 = sub_1D19CB618(1, 0.0, 100.0, v27);
    v31 = v30;
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = sub_1D1757D20();
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    v32 = sub_1D1E6784C();

    return v32;
  }
}

uint64_t _s13HomeDataModel13StaticServiceV20airParticulateString0fG5SizesSSSgSaySo024HMCharacteristicValueAirG4SizeVG_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  v3 = v1;
  v4 = (a1 + 32);
  do
  {
    v5 = v3;
    if (!v3)
    {
      break;
    }

    v6 = *v4++;
    --v3;
  }

  while (v6);
  while (v1)
  {
    v7 = *v2++;
    --v1;
    if (v7 == 1)
    {
      v8 = "HDMStatusTitlePm10Micrometers";
      if (v5)
      {
        v9 = 0xD000000000000022;
      }

      else
      {
        v8 = "HDMAnswerPartsPerMillionUnit";
        v9 = 0xD00000000000001DLL;
      }

      return static String.hfLocalized(_:)(v9, v8 | 0x8000000000000000);
    }
  }

  if (v5)
  {
    v8 = "2_5To10Micrometers";
    v9 = 0xD00000000000001ELL;
    return static String.hfLocalized(_:)(v9, v8 | 0x8000000000000000);
  }

  return 0;
}

uint64_t sub_1D1C3B520(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C3B588(uint64_t result, char a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return v2;
  }

  v3 = v2 - 1;
  if (v2 == 1)
  {
    v4 = *(result + 32);
    if ((a2 & 1) == 0)
    {
      return sub_1D1E680FC();
    }

    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
        return sub_1D1E68FAC();
      }

      goto LABEL_36;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v6 = *(result + 32);
  v7 = 40;
  do
  {
    if (*(result + v7) < v6)
    {
      v6 = *(result + v7);
    }

    v7 += 8;
    --v3;
  }

  while (v3);
  result = sub_1D1745ACC(result);
  if (v8)
  {
    return 0;
  }

  v9 = *&result;
  if ((a2 & 1) == 0)
  {
    v2 = sub_1D1E680FC();
    v12 = v15;
    v13 = sub_1D1E680FC();
    goto LABEL_25;
  }

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v10 = result;
  result = sub_1D1E68FAC();
  if ((~v10 & 0x7FF0000000000000) == 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v9 < 9.22337204e18)
  {
    v12 = v11;
    v2 = result;
    v13 = sub_1D1E68FAC();
LABEL_25:
    v16 = v13;
    v17 = v14;
    v18 = v2 == v13 && v12 == v14;
    if (!v18 && (sub_1D1E6904C() & 1) == 0)
    {
      static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EBA3F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1D1E73A90;
      v20 = MEMORY[0x1E69E6158];
      *(v19 + 56) = MEMORY[0x1E69E6158];
      v21 = sub_1D1757D20();
      *(v19 + 32) = v2;
      *(v19 + 40) = v12;
      *(v19 + 96) = v20;
      *(v19 + 104) = v21;
      *(v19 + 64) = v21;
      *(v19 + 72) = v16;
      *(v19 + 80) = v17;
      v2 = sub_1D1E6784C();
    }

    return v2;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1D1C3B860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = v3 - 1;
  if (v7)
  {
    v8 = (a1 + 40);
    do
    {
      v9 = *v8++;
      v10 = v9;
      if (v6 < v9)
      {
        v6 = v10;
      }

      --v7;
    }

    while (v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643480, &qword_1D1E71900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v6;
  v12 = sub_1D1C3B588(inited, 1);
  v14 = v13;
  swift_setDeallocating();
  if (!v14)
  {
    return 0;
  }

  static String.hfLocalized(_:)(0xD00000000000001CLL, 0x80000001D1EC73F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D1E739C0;
  v16 = MEMORY[0x1E69E6158];
  *(v15 + 56) = MEMORY[0x1E69E6158];
  v17 = sub_1D1757D20();
  *(v15 + 64) = v17;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  v18 = sub_1D1E6784C();
  v20 = v19;

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D1E739C0;
  *(v21 + 56) = v16;
  *(v21 + 64) = v17;
  *(v21 + 32) = v18;
  *(v21 + 40) = v20;
  static String.hfLocalized(_:)(a2, a3);
  v22 = sub_1D1E6784C();

  return v22;
}

uint64_t sub_1D1C3BA30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C3BA98(uint64_t a1, char a2)
{
  result = *(a1 + 16);
  if (!result)
  {
    return result;
  }

  v4 = result - 1;
  if (result == 1)
  {
    v5 = *(a1 + 32);
    if ((a2 & 1) == 0)
    {
      return sub_1D1E68FAC();
    }

    v6 = v5;
    return sub_1D19CB618(1, 0.0, 100.0, v6);
  }

  v7 = *(a1 + 32);
  if (v4 >= 4)
  {
    v9 = v4 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v10 = vdupq_n_s64(v7);
    v11 = (a1 + 56);
    v12 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = v10;
    do
    {
      v10 = vbslq_s8(vcgtq_s64(v10, v11[-1]), v11[-1], v10);
      v13 = vbslq_s8(vcgtq_s64(v13, *v11), *v11, v13);
      v11 += 2;
      v12 -= 4;
    }

    while (v12);
    v8 = a2;
    v14 = vbslq_s8(vcgtq_s64(v13, v10), v10, v13);
    v15 = vextq_s8(v14, v14, 8uLL).u64[0];
    v7 = vbsl_s8(vcgtd_s64(v15, v14.i64[0]), *v14.i8, v15);
    if (v4 == (v4 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v8 = a2;
    v9 = 1;
  }

  v16 = result - v9;
  v17 = (a1 + 8 * v9 + 32);
  do
  {
    v19 = *v17++;
    v18 = v19;
    if (v19 < v7)
    {
      v7 = v18;
    }

    --v16;
  }

  while (v16);
LABEL_16:
  sub_1D1745B10(a1);
  if (v20)
  {
    return 0;
  }

  v21 = sub_1D1E68FAC();
  v23 = v22;
  v24 = sub_1D1E68FAC();
  v26 = v25;
  v27 = v21 == v24 && v23 == v25;
  if (v27 || (v28 = v24, (sub_1D1E6904C() & 1) != 0))
  {

    if (v8)
    {

      v6 = v7;
      return sub_1D19CB618(1, 0.0, 100.0, v6);
    }

    return v21;
  }

  else
  {
    if (v8)
    {
      v29 = 0xD000000000000025;
      v30 = 0x80000001D1EBA410;
    }

    else
    {
      v30 = 0x80000001D1EBA3F0;
      v29 = 0xD00000000000001BLL;
    }

    static String.hfLocalized(_:)(v29, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D1E73A90;
    v32 = MEMORY[0x1E69E6158];
    *(v31 + 56) = MEMORY[0x1E69E6158];
    v33 = sub_1D1757D20();
    *(v31 + 32) = v21;
    *(v31 + 40) = v23;
    *(v31 + 96) = v32;
    *(v31 + 104) = v33;
    *(v31 + 64) = v33;
    *(v31 + 72) = v28;
    *(v31 + 80) = v26;
    v34 = sub_1D1E6784C();

    return v34;
  }
}

uint64_t sub_1D1C3BD48(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    return sub_1D19CB618(1, 0.0, 100.0, *(a1 + 32));
  }

  else
  {
    return sub_1D1C3BA98(a1, 1);
  }
}

unint64_t sub_1D1C3BD98()
{
  result = qword_1EC64CB48;
  if (!qword_1EC64CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CB48);
  }

  return result;
}

uint64_t sub_1D1C3BDEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D1C3BE34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D1C3BE8C()
{
  result = qword_1EC645BA8;
  if (!qword_1EC645BA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC645BA8);
  }

  return result;
}

uint64_t sub_1D1C3BED8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t StaticService.set(_:for:options:context:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t *a4, _OWORD *a5)
{
  *(v6 + 128) = a1;
  *(v6 + 136) = a2;
  *(v6 + 208) = *a3;
  v7 = *a4;
  *(v6 + 144) = v5;
  *(v6 + 152) = v7;
  v8 = a5[1];
  *(v6 + 160) = *a5;
  *(v6 + 176) = v8;
  return MEMORY[0x1EEE6DFA0](sub_1D1C3BF70, 0, 0);
}

uint64_t sub_1D1C3BF70()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 208);
  v3 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
  v10 = *(v0 + 176);
  v11 = *(v0 + 160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v2;
  sub_1D1741970(v3, inited + 40);
  v5 = sub_1D18DAC64(inited);
  *(v0 + 192) = v5;
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &qword_1EC646178, &unk_1D1E7E740);
  *(v0 + 120) = v1;
  *(v0 + 104) = v10;
  *(v0 + 88) = v11;
  v6 = swift_task_alloc();
  *(v0 + 200) = v6;
  *v6 = v0;
  v6[1] = sub_1D1C3C0C0;
  v7 = *(v0 + 144);
  v8 = *(v0 + 128);

  return StaticService.set(for:options:context:)(v8, v5, (v0 + 120), (v0 + 88));
}

uint64_t sub_1D1C3C0C0()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t StaticService.toggle(options:context:)(uint64_t a1, void *a2, _OWORD *a3)
{
  *(v4 + 792) = v3;
  *(v4 + 784) = a1;
  v7 = type metadata accessor for StaticService(0);
  *(v4 + 800) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v4 + 808) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10) - 8) + 64) + 15;
  *(v4 + 816) = swift_task_alloc();
  *(v4 + 824) = swift_task_alloc();
  *(v4 + 832) = swift_task_alloc();
  *(v4 + 840) = swift_task_alloc();
  *(v4 + 848) = *a2;
  v10 = a3[1];
  *(v4 + 856) = *a3;
  *(v4 + 872) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D1C3C2E8, 0, 0);
}

uint64_t sub_1D1C3C2E8()
{
  v171 = v0;
  v1 = *(v0 + 792);
  if (!StaticService.canBeToggled.getter())
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 808);
    v18 = *(v0 + 792);
    v19 = sub_1D1E6709C();
    __swift_project_value_buffer(v19, qword_1EE07B5D8);
    sub_1D1C3EB34(v18, v17, type metadata accessor for StaticService);
    v20 = sub_1D1E6707C();
    v21 = sub_1D1E6833C();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 808);
    if (v22)
    {
      v24 = *(v0 + 800);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v169[0] = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_1D1B1312C(0xD000000000000018, 0x80000001D1EC7900, v169);
      *(v25 + 12) = 2080;
      v27 = (v23 + *(v24 + 20));
      v28 = *v27;
      v29 = v27[1];

      sub_1D1B43A7C(v23, type metadata accessor for StaticService);
      v30 = sub_1D1B1312C(v28, v29, v169);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_1D16EC000, v20, v21, "%s Service '%s' is not toggleable.", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v26, -1, -1);
      MEMORY[0x1D3893640](v25, -1, -1);
    }

    else
    {

      sub_1D1B43A7C(v23, type metadata accessor for StaticService);
    }

    goto LABEL_82;
  }

  v2 = *(v0 + 792);
  v3 = *(*(v0 + 800) + 104);
  LOBYTE(v169[0]) = *(v2 + v3);
  ServiceKind.togglingCharacteristicKind.getter(&v168);
  v4 = v168;
  if (v168 != 174)
  {
    v5 = *(v0 + 792);
    v6 = *(*(v0 + 800) + 128);
    v169[0] = *(v5 + v6);
    v7 = sub_1D1CE4920(&v168);
    if (v7 != 2)
    {
      v51 = v7;
      *(v0 + 768) = sub_1D18DAC64(MEMORY[0x1E69E7CC0]);
      v170 = MEMORY[0x1E69E6370];
      LOBYTE(v169[0]) = (v51 & 1) == 0;
      sub_1D1B0ED00(v169, v4);
      if ((v51 & 1) == 0)
      {
        v52 = *(v2 + v3);
        if (v52 > 0x1B)
        {
          if (v52 != 48)
          {
            if (v52 != 28)
            {
              goto LABEL_105;
            }

            v169[0] = *(v5 + v6);
            v168 = 12;
            v178 = StaticCharacteristicsBag.int(for:)(&v168);
            if (v178.is_nil || v178.value)
            {
              goto LABEL_105;
            }

            v70 = *(v5 + v6);
            if (*(v70 + 16))
            {
              v71 = *(v5 + v6);

              v72 = sub_1D171D140(12);
              v73 = *(v0 + 840);
              if (v74)
              {
                v75 = v72;
                v76 = *(v70 + 56);
                v77 = type metadata accessor for StaticCharacteristic();
                v78 = *(v77 - 8);
                sub_1D1C3EB34(v76 + *(v78 + 72) * v75, v73, type metadata accessor for StaticCharacteristic);
                (*(v78 + 56))(v73, 0, 1, v77);
              }

              else
              {
                v77 = type metadata accessor for StaticCharacteristic();
                (*(*(v77 - 8) + 56))(v73, 1, 1, v77);
              }

              v148 = *(v0 + 840);

              type metadata accessor for StaticCharacteristic();
              if ((*(*(v77 - 8) + 48))(v148, 1, v77) != 1)
              {
                v155 = *(v0 + 840);
                v156 = (v155 + *(v77 + 44));
                v101 = *v156;
                v100 = v156[1];
                v103 = v156[2];
                v102 = v156[3];
                v157 = v156[4];
                sub_1D18F323C(*v156, v100, v103, v102);
                sub_1D1B43A7C(v155, type metadata accessor for StaticCharacteristic);
                if (v102 >> 8 == 0xFFFFFFFF)
                {
                  goto LABEL_105;
                }

                if (!(v102 >> 62))
                {
                  v170 = MEMORY[0x1E69E6530];
                  v169[0] = v101;
                  v105 = 12;
                  goto LABEL_112;
                }

LABEL_113:
                sub_1D18F3260(v101, v100, v103, v102);
                goto LABEL_105;
              }
            }

            else
            {
              v146 = *(v0 + 840);
              v147 = type metadata accessor for StaticCharacteristic();
              (*(*(v147 - 8) + 56))(v146, 1, 1, v147);
            }

            v97 = *(v0 + 840);
            goto LABEL_104;
          }
        }

        else if (v52 != 3 && v52 != 16)
        {
          goto LABEL_105;
        }

        v169[0] = *(v5 + v6);
        v168 = 115;
        sub_1D1CE53A4(&v168);
        if ((v80 & 1) != 0 || (v79 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          goto LABEL_105;
        }

        v81 = *(v5 + v6);
        if (!*(v81 + 16))
        {
          v90 = *(v0 + 832);
          v91 = type metadata accessor for StaticCharacteristic();
          (*(*(v91 - 8) + 56))(v90, 1, 1, v91);
LABEL_57:
          v97 = *(v0 + 832);
LABEL_104:
          sub_1D1741A30(v97, &qword_1EC643630, &qword_1D1E71D10);
          goto LABEL_105;
        }

        v82 = *(v5 + v6);

        v83 = sub_1D171D140(115);
        v84 = *(v0 + 832);
        if (v85)
        {
          v86 = v83;
          v87 = *(v81 + 56);
          v88 = type metadata accessor for StaticCharacteristic();
          v89 = *(v88 - 8);
          sub_1D1C3EB34(v87 + *(v89 + 72) * v86, v84, type metadata accessor for StaticCharacteristic);
          (*(v89 + 56))(v84, 0, 1, v88);
        }

        else
        {
          v88 = type metadata accessor for StaticCharacteristic();
          (*(*(v88 - 8) + 56))(v84, 1, 1, v88);
        }

        v96 = *(v0 + 832);

        type metadata accessor for StaticCharacteristic();
        if ((*(*(v88 - 8) + 48))(v96, 1, v88) == 1)
        {
          goto LABEL_57;
        }

        v98 = *(v0 + 832);
        v99 = (v98 + *(v88 + 44));
        v101 = *v99;
        v100 = v99[1];
        v103 = v99[2];
        v102 = v99[3];
        v104 = v99[4];
        sub_1D18F323C(*v99, v100, v103, v102);
        sub_1D1B43A7C(v98, type metadata accessor for StaticCharacteristic);
        if (v102 >> 8 != 0xFFFFFFFF)
        {
          if (v102 >> 62 == 1)
          {
            v170 = MEMORY[0x1E69E63B0];
            v169[0] = v101;
            v105 = 115;
LABEL_112:
            sub_1D1B0ED00(v169, v105);
            goto LABEL_113;
          }

          goto LABEL_113;
        }
      }

LABEL_105:
      v149 = *(v0 + 880);
      v150 = *(v0 + 856);
      v151 = *(v0 + 848);
      v152 = *(v0 + 768);
      *(v0 + 888) = v152;
      *(v0 + 776) = v151;
      *(v0 + 696) = v150;
      *(v0 + 704) = *(v0 + 864);
      *(v0 + 720) = v149;
      v153 = swift_task_alloc();
      *(v0 + 896) = v153;
      *v153 = v0;
      v153[1] = sub_1D1C3D6C8;
      v154 = *(v0 + 792);
      v15 = *(v0 + 784);
      v16 = (v0 + 776);
      v49 = (v0 + 696);
      v50 = v152;
      goto LABEL_106;
    }
  }

  v8 = (v0 + 408);
  v9 = *(v2 + v3);
  if (v9 > 0x22)
  {
    if (v9 - 51 < 2)
    {
LABEL_22:
      v169[0] = *(*(v0 + 792) + *(*(v0 + 800) + 128));
      v168 = -98;
      v175 = StaticCharacteristicsBag.int(for:)(&v168);
      if (!v175.is_nil)
      {
        v43 = *(v0 + 848);
        v44 = 100;
        if (v175.value > 0)
        {
          v44 = 0;
        }

        *(v0 + 656) = MEMORY[0x1E69E6530];
        *(v0 + 632) = v44;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
        v159 = *(v0 + 872);
        v164 = *(v0 + 856);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D1E739C0;
        *(inited + 32) = -98;
        sub_1D1741970(v0 + 632, inited + 40);
        v46 = sub_1D18DAC64(inited);
        *(v0 + 904) = v46;
        swift_setDeallocating();
        sub_1D1741A30(inited + 32, &qword_1EC646178, &unk_1D1E7E740);
        *(v0 + 760) = v43;
        *(v0 + 664) = v164;
        *(v0 + 680) = v159;
        v47 = swift_task_alloc();
        *(v0 + 912) = v47;
        *v47 = v0;
        v47[1] = sub_1D1C3D878;
        v48 = *(v0 + 792);
        v15 = *(v0 + 784);
        v16 = (v0 + 760);
        v49 = (v0 + 664);
        v50 = v46;
        goto LABEL_106;
      }

      goto LABEL_82;
    }

    if (v9 != 35)
    {
      if (v9 != 46)
      {
        goto LABEL_82;
      }

      v31 = *(v0 + 792);
      v32 = *(*(v0 + 800) + 128);
      v169[0] = *(v31 + v32);
      v168 = -104;
      v174 = StaticCharacteristicsBag.int(for:)(&v168);
      if (v174.is_nil)
      {
        goto LABEL_82;
      }

      v33 = *(v31 + v32);
      if (!*(v33 + 16))
      {
        v92 = *(v0 + 816);
        v93 = type metadata accessor for StaticCharacteristic();
        (*(*(v93 - 8) + 56))(v92, 1, 1, v93);
LABEL_63:
        v107 = *(v0 + 816);
LABEL_81:
        sub_1D1741A30(v107, &qword_1EC643630, &qword_1D1E71D10);
        goto LABEL_82;
      }

      value = v174.value;
      v35 = *(v31 + v32);

      v36 = sub_1D171D140(152);
      v37 = *(v0 + 816);
      if (v38)
      {
        v39 = v36;
        v40 = *(v33 + 56);
        v41 = type metadata accessor for StaticCharacteristic();
        v42 = *(v41 - 8);
        sub_1D1C3EB34(v40 + *(v42 + 72) * v39, v37, type metadata accessor for StaticCharacteristic);
        (*(v42 + 56))(v37, 0, 1, v41);
      }

      else
      {
        v41 = type metadata accessor for StaticCharacteristic();
        (*(*(v41 - 8) + 56))(v37, 1, 1, v41);
      }

      v106 = *(v0 + 816);

      type metadata accessor for StaticCharacteristic();
      if ((*(*(v41 - 8) + 48))(v106, 1, v41) == 1)
      {
        goto LABEL_63;
      }

      v108 = *(v0 + 816);
      v109 = (v108 + *(v41 + 44));
      v110 = *v109;
      v111 = v109[1];
      v112 = v109[2];
      v113 = v109[3];
      v114 = v109[4];
      sub_1D18F323C(*v109, v111, v112, v113);
      sub_1D1B43A7C(v108, type metadata accessor for StaticCharacteristic);
      if (v113 >> 8 == 0xFFFFFFFF)
      {
        goto LABEL_82;
      }

      if (!(v113 >> 62))
      {
        if (!v114)
        {
          if (v112 <= 1)
          {
            v115 = 1;
          }

          else
          {
            v115 = v112;
          }

          v114 = sub_1D1C279CC(v111, v110, v115);
        }

        v116 = *(v114 + 16);
        v117 = 32;
        while (v116)
        {
          v118 = *(v114 + v117);
          v117 += 8;
          --v116;
          if (v118)
          {
            v119 = *(v0 + 848);
            if (value)
            {
              v120 = 0;
            }

            else
            {
              v120 = v118;
            }

            v161 = *(v0 + 872);
            v166 = *(v0 + 856);

            *(v0 + 400) = MEMORY[0x1E69E6530];
            *(v0 + 376) = v120;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
            v121 = swift_initStackObject();
            *(v121 + 16) = xmmword_1D1E739C0;
            *(v121 + 32) = -104;
            sub_1D1741970(v0 + 376, v121 + 40);
            v12 = sub_1D18DAC64(v121);
            *(v0 + 968) = v12;
            swift_setDeallocating();
            sub_1D1741A30(v121 + 32, &qword_1EC646178, &unk_1D1E7E740);
            *(v0 + 728) = v119;
            *v8 = v166;
            *(v0 + 424) = v161;
            v122 = swift_task_alloc();
            *(v0 + 976) = v122;
            *v122 = v0;
            v122[1] = sub_1D1C3DF38;
            v123 = *(v0 + 792);
            v15 = *(v0 + 784);
            v16 = (v0 + 728);
            goto LABEL_35;
          }
        }

LABEL_114:

        goto LABEL_82;
      }

      goto LABEL_99;
    }

    v58 = *(v0 + 792);
    v59 = *(*(v0 + 800) + 128);
    v169[0] = *(v58 + v59);
    v168 = -96;
    v177 = StaticCharacteristicsBag.int(for:)(&v168);
    if (v177.is_nil)
    {
      goto LABEL_82;
    }

    v60 = *(v58 + v59);
    if (*(v60 + 16))
    {
      v61 = v177.value;
      v62 = *(v58 + v59);

      v63 = sub_1D171D140(160);
      v64 = *(v0 + 824);
      if (v65)
      {
        v66 = v63;
        v67 = *(v60 + 56);
        v68 = type metadata accessor for StaticCharacteristic();
        v69 = *(v68 - 8);
        sub_1D1C3EB34(v67 + *(v69 + 72) * v66, v64, type metadata accessor for StaticCharacteristic);
        (*(v69 + 56))(v64, 0, 1, v68);
      }

      else
      {
        v68 = type metadata accessor for StaticCharacteristic();
        (*(*(v68 - 8) + 56))(v64, 1, 1, v68);
      }

      v124 = *(v0 + 824);

      type metadata accessor for StaticCharacteristic();
      if ((*(*(v68 - 8) + 48))(v124, 1, v68) != 1)
      {
        v134 = *(v0 + 824);
        v135 = (v134 + *(v68 + 44));
        v110 = *v135;
        v111 = v135[1];
        v112 = v135[2];
        v113 = v135[3];
        v136 = v135[4];
        sub_1D18F323C(*v135, v111, v112, v113);
        sub_1D1B43A7C(v134, type metadata accessor for StaticCharacteristic);
        if (v113 >> 8 == 0xFFFFFFFF)
        {
          goto LABEL_82;
        }

        if (!(v113 >> 62))
        {
          if (!v136)
          {
            if (v112 <= 1)
            {
              v137 = 1;
            }

            else
            {
              v137 = v112;
            }

            v136 = sub_1D1C279CC(v111, v110, v137);
          }

          v138 = *(v136 + 16);
          v139 = 32;
          while (v138)
          {
            v140 = *(v136 + v139);
            v139 += 8;
            --v138;
            if (v140 != 3)
            {
              v141 = *(v0 + 848);
              if (v61 == 3)
              {
                v142 = v140;
              }

              else
              {
                v142 = 3;
              }

              v162 = *(v0 + 856);
              v167 = *(v0 + 872);

              *(v0 + 464) = MEMORY[0x1E69E6530];
              *(v0 + 440) = v142;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
              v143 = swift_initStackObject();
              *(v143 + 16) = xmmword_1D1E739C0;
              *(v143 + 32) = -96;
              sub_1D1741970(v0 + 440, v143 + 40);
              v12 = sub_1D18DAC64(v143);
              *(v0 + 952) = v12;
              swift_setDeallocating();
              sub_1D1741A30(v143 + 32, &qword_1EC646178, &unk_1D1E7E740);
              *(v0 + 736) = v141;
              *(v0 + 472) = v162;
              *(v0 + 488) = v167;
              v8 = (v0 + 472);
              v144 = swift_task_alloc();
              *(v0 + 960) = v144;
              *v144 = v0;
              v144[1] = sub_1D1C3DD88;
              v145 = *(v0 + 792);
              v15 = *(v0 + 784);
              v16 = (v0 + 736);
              goto LABEL_35;
            }
          }

          goto LABEL_114;
        }

LABEL_99:
        sub_1D18F3260(v110, v111, v112, v113);
        goto LABEL_82;
      }
    }

    else
    {
      v94 = *(v0 + 824);
      v95 = type metadata accessor for StaticCharacteristic();
      (*(*(v95 - 8) + 56))(v94, 1, 1, v95);
    }

    v107 = *(v0 + 824);
    goto LABEL_81;
  }

  switch(v9)
  {
    case 0xEu:
      goto LABEL_22;
    case 0x13u:
      v169[0] = *(*(v0 + 792) + *(*(v0 + 800) + 128));
      v168 = -107;
      v176 = StaticCharacteristicsBag.int(for:)(&v168);
      if (!v176.is_nil)
      {
        v54 = *(v0 + 848);
        *(v0 + 592) = MEMORY[0x1E69E6530];
        *(v0 + 568) = v176.value != 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
        v160 = *(v0 + 856);
        v165 = *(v0 + 872);
        v55 = swift_initStackObject();
        *(v55 + 16) = xmmword_1D1E739C0;
        *(v55 + 32) = -107;
        sub_1D1741970(v0 + 568, v55 + 40);
        v12 = sub_1D18DAC64(v55);
        *(v0 + 920) = v12;
        swift_setDeallocating();
        sub_1D1741A30(v55 + 32, &qword_1EC646178, &unk_1D1E7E740);
        *(v0 + 752) = v54;
        *(v0 + 600) = v160;
        *(v0 + 616) = v165;
        v8 = (v0 + 600);
        v56 = swift_task_alloc();
        *(v0 + 928) = v56;
        *v56 = v0;
        v56[1] = sub_1D1C3DA28;
        v57 = *(v0 + 792);
        v15 = *(v0 + 784);
        v16 = (v0 + 752);
        goto LABEL_35;
      }

      break;
    case 0x1Eu:
      v169[0] = *(*(v0 + 792) + *(*(v0 + 800) + 128));
      v168 = -100;
      v173 = StaticCharacteristicsBag.int(for:)(&v168);
      if (!v173.is_nil)
      {
        v10 = *(v0 + 848);
        *(v0 + 528) = MEMORY[0x1E69E6530];
        *(v0 + 504) = v173.value != 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
        v158 = *(v0 + 856);
        v163 = *(v0 + 872);
        v11 = swift_initStackObject();
        *(v11 + 16) = xmmword_1D1E739C0;
        *(v11 + 32) = -100;
        sub_1D1741970(v0 + 504, v11 + 40);
        v12 = sub_1D18DAC64(v11);
        *(v0 + 936) = v12;
        swift_setDeallocating();
        sub_1D1741A30(v11 + 32, &qword_1EC646178, &unk_1D1E7E740);
        *(v0 + 744) = v10;
        *(v0 + 536) = v158;
        *(v0 + 552) = v163;
        v8 = (v0 + 536);
        v13 = swift_task_alloc();
        *(v0 + 944) = v13;
        *v13 = v0;
        v13[1] = sub_1D1C3DBD8;
        v14 = *(v0 + 792);
        v15 = *(v0 + 784);
        v16 = (v0 + 744);
LABEL_35:
        v50 = v12;
        v49 = v8;
LABEL_106:

        return StaticService.set(for:options:context:)(v15, v50, v16, v49);
      }

      break;
  }

LABEL_82:
  v125 = *(v0 + 784);
  v126 = type metadata accessor for StateSnapshot(0);
  (*(*(v126 - 8) + 56))(v125, 1, 1, v126);
  v127 = *(v0 + 840);
  v128 = *(v0 + 832);
  v129 = *(v0 + 824);
  v130 = *(v0 + 816);
  v131 = *(v0 + 808);

  v132 = *(v0 + 8);

  return v132();
}

uint64_t sub_1D1C3D6C8()
{
  v1 = *(*v0 + 896);
  v2 = *(*v0 + 888);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1C3D7E0, 0, 0);
}

uint64_t sub_1D1C3D7E0()
{
  v1 = v0[105];
  v2 = v0[104];
  v3 = v0[103];
  v4 = v0[102];
  v5 = v0[101];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D1C3D878()
{
  v1 = *v0;
  v2 = (*v0)[114];
  v3 = (*v0)[113];
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_1(v1 + 79);
  v5 = v1[105];
  v6 = v1[104];
  v7 = v1[103];
  v8 = v1[102];
  v9 = v1[101];

  v10 = v4[1];

  return v10();
}

uint64_t sub_1D1C3DA28()
{
  v1 = *v0;
  v2 = (*v0)[116];
  v3 = (*v0)[115];
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_1(v1 + 71);
  v5 = v1[105];
  v6 = v1[104];
  v7 = v1[103];
  v8 = v1[102];
  v9 = v1[101];

  v10 = v4[1];

  return v10();
}

uint64_t sub_1D1C3DBD8()
{
  v1 = *v0;
  v2 = (*v0)[118];
  v3 = (*v0)[117];
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_1(v1 + 63);
  v5 = v1[105];
  v6 = v1[104];
  v7 = v1[103];
  v8 = v1[102];
  v9 = v1[101];

  v10 = v4[1];

  return v10();
}

uint64_t sub_1D1C3DD88()
{
  v1 = *v0;
  v2 = (*v0)[120];
  v3 = (*v0)[119];
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_1(v1 + 55);
  v5 = v1[105];
  v6 = v1[104];
  v7 = v1[103];
  v8 = v1[102];
  v9 = v1[101];

  v10 = v4[1];

  return v10();
}

uint64_t sub_1D1C3DF38()
{
  v1 = *v0;
  v2 = (*v0)[122];
  v3 = (*v0)[121];
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_1(v1 + 47);
  v5 = v1[105];
  v6 = v1[104];
  v7 = v1[103];
  v8 = v1[102];
  v9 = v1[101];

  v10 = v4[1];

  return v10();
}

uint64_t StaticService.set(for:options:context:)(uint64_t a1, uint64_t a2, uint64_t *a3, _OWORD *a4)
{
  *(v5 + 296) = a1;
  *(v5 + 304) = a2;
  v6 = *a3;
  *(v5 + 312) = v4;
  *(v5 + 320) = v6;
  v7 = a4[1];
  *(v5 + 328) = *a4;
  *(v5 + 344) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1D1C3E11C, 0, 0);
}

uint64_t sub_1D1C3E11C()
{
  v44 = v0;
  v1 = *(v0 + 304);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 304) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v41 = *(v0 + 304);

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC8];
  for (i = v3; ; v3 = i)
  {
    *(v0 + 360) = v11;
    if (!v7)
    {
      break;
    }

LABEL_11:
    v14 = __clz(__rbit64(v7)) | (v10 << 6);
    v15 = *(*(v41 + 48) + v14);
    sub_1D1741970(*(v41 + 56) + 32 * v14, v0 + 24);
    *(v0 + 16) = v15;
    sub_1D17DAA94();
    v16 = *(v0 + 48);
    v17 = __swift_project_boxed_opaque_existential_1((v0 + 24), v16);
    *(v0 + 184) = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 160));
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v17, v16);
    v42 = *(v0 + 16);
    static HMService.convert(_:characteristicKind:)(v0 + 160, &v42, v0 + 128);
    sub_1D1741A30(v0 + 160, &qword_1EC645D58, &unk_1D1E7E530);
    if (*(v0 + 152))
    {
      sub_1D16EEE38((v0 + 128), (v0 + 96));
    }

    else
    {
      v19 = *(v0 + 48);
      v20 = __swift_project_boxed_opaque_existential_1((v0 + 24), v19);
      *(v0 + 120) = v19;
      v21 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
      (*(*(v19 - 8) + 16))(v21, v20, v19);
      if (*(v0 + 152))
      {
        sub_1D1741A30(v0 + 128, &qword_1EC645D58, &unk_1D1E7E530);
      }
    }

    v22 = *(v0 + 16);
    v23 = *(v0 + 120);
    v24 = __swift_project_boxed_opaque_existential_1((v0 + 96), v23);
    *(v0 + 216) = v23;
    v25 = __swift_allocate_boxed_opaque_existential_1((v0 + 192));
    (*(*(v23 - 8) + 16))(v25, v24, v23);
    sub_1D16EEE38((v0 + 192), (v0 + 224));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v11;
    v28 = sub_1D171D140(v22);
    v29 = v11[2];
    v30 = (v27 & 1) == 0;
    result = v29 + v30;
    if (__OFADD__(v29, v30))
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

    v31 = v27;
    if (v11[3] >= result)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v27)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1D173BB00();
        v11 = v43;
        if (v31)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1D172D2A8(result, isUniquelyReferenced_nonNull_native);
      v11 = v43;
      v32 = sub_1D171D140(v22);
      if ((v31 & 1) != (v33 & 1))
      {

        return sub_1D1E690FC();
      }

      v28 = v32;
      if (v31)
      {
LABEL_4:
        v12 = (v11[7] + 32 * v28);
        __swift_destroy_boxed_opaque_existential_1(v12);
        sub_1D16EEE38((v0 + 224), v12);
        goto LABEL_5;
      }
    }

    v11[(v28 >> 6) + 8] |= 1 << v28;
    *(v11[6] + v28) = v22;
    result = sub_1D16EEE38((v0 + 224), (v11[7] + 32 * v28));
    v34 = v11[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_34;
    }

    v11[2] = v36;
LABEL_5:
    v7 &= v7 - 1;
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
    result = sub_1D1741A30(v0 + 16, &qword_1EC64CB50, &unk_1D1EA1930);
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v13 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v13);
    ++v10;
    if (v7)
    {
      v10 = v13;
      goto LABEL_11;
    }
  }

  v37 = *(v0 + 304);

  v38 = swift_task_alloc();
  *(v0 + 368) = v38;
  *v38 = v0;
  v38[1] = sub_1D1C3E55C;
  v39 = *(v0 + 312);

  return StaticService.service.getter();
}

uint64_t sub_1D1C3E55C(uint64_t a1)
{
  v2 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C3E65C, 0, 0);
}

uint64_t sub_1D1C3E65C()
{
  v1 = *(v0 + 376);
  if (v1)
  {
    v2 = *(v0 + 320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
    inited = swift_initStackObject();
    *(v0 + 384) = inited;
    *(inited + 16) = xmmword_1D1E73FA0;
    *(inited + 32) = v1;
    v4 = v1;
    if ((v2 & 0x402) == 2)
    {
      v5 = swift_task_alloc();
      *(v0 + 400) = v5;
      *v5 = v0;
      v5[1] = sub_1D1C3EA00;
      v6 = *(v0 + 360);
      v7 = *(v0 + 296);

      return sub_1D18CCB18(v7, inited, v6);
    }

    else
    {
      *(v0 + 288) = *(v0 + 320);
      v13 = *(v0 + 344);
      *(v0 + 256) = *(v0 + 328);
      *(v0 + 272) = v13;
      v14 = swift_task_alloc();
      *(v0 + 392) = v14;
      *v14 = v0;
      v14[1] = sub_1D1C3E86C;
      v15 = *(v0 + 360);
      v16 = *(v0 + 296);

      return sub_1D18CD90C(v16, v0 + 288, (v0 + 256), inited, v15);
    }
  }

  else
  {
    v9 = *(v0 + 360);
    v10 = *(v0 + 296);
    v11 = type metadata accessor for StateSnapshot(0);
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1D1C3E86C()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 384);
  v3 = *(*v0 + 360);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1C3E9A0, 0, 0);
}

uint64_t sub_1D1C3E9A0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1C3EA00()
{
  v1 = *(*v0 + 400);
  v2 = *(*v0 + 384);
  v3 = *(*v0 + 360);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1C3E9A0, 0, 0);
}

uint64_t sub_1D1C3EB34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C3EB9C(uint64_t a1)
{
  v32 = type metadata accessor for StaticService(0);
  v30 = *(v32 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v26 = v1;
  v34 = MEMORY[0x1E69E7CC0];
  sub_1D178CF80(0, v6, 0);
  v7 = v34;
  v8 = -1 << *(a1 + 32);
  v33 = a1 + 64;
  result = sub_1D1E6869C();
  v10 = result;
  v11 = 0;
  v27 = a1 + 72;
  v28 = v6;
  v12 = a1;
  v29 = v5;
  v31 = a1;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v12 + 32))
  {
    v14 = v10 >> 6;
    if ((*(v33 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_24;
    }

    v15 = *(v12 + 36);
    sub_1D1C53710(*(v12 + 56) + *(v30 + 72) * v10, v5, type metadata accessor for StaticService);
    v16 = v5[*(v32 + 112)];
    if (v16 == 53)
    {
      LOBYTE(v16) = v5[*(v32 + 104)];
    }

    result = sub_1D1C53778(v5, type metadata accessor for StaticService);
    v34 = v7;
    v18 = *(v7 + 16);
    v17 = *(v7 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_1D178CF80((v17 > 1), v18 + 1, 1);
      v7 = v34;
    }

    *(v7 + 16) = v18 + 1;
    *(v7 + v18 + 32) = v16;
    v12 = v31;
    v13 = 1 << *(v31 + 32);
    if (v10 >= v13)
    {
      goto LABEL_25;
    }

    v19 = *(v33 + 8 * v14);
    if ((v19 & (1 << v10)) == 0)
    {
      goto LABEL_26;
    }

    if (v15 != *(v31 + 36))
    {
      goto LABEL_27;
    }

    v20 = v19 & (-2 << (v10 & 0x3F));
    if (v20)
    {
      v13 = __clz(__rbit64(v20)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v14 << 6;
      v22 = v14 + 1;
      v23 = (v27 + 8 * v14);
      while (v22 < (v13 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_1D1716920(v10, v15, 0);
          v13 = __clz(__rbit64(v24)) + v21;
          goto LABEL_21;
        }
      }

      result = sub_1D1716920(v10, v15, 0);
LABEL_21:
      v12 = v31;
    }

    ++v11;
    v10 = v13;
    v5 = v29;
    if (v11 == v28)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t StaticServiceGroup.description.getter()
{
  sub_1D1E6884C();

  v1 = type metadata accessor for StaticServiceGroup();
  MEMORY[0x1D3890F70](*(v0 + *(v1 + 20)), *(v0 + *(v1 + 20) + 8));
  MEMORY[0x1D3890F70](0x27206469202C27, 0xE700000000000000);
  sub_1D1E66A7C();
  sub_1D1C53A0C(&qword_1EE07B250, MEMORY[0x1E69695A8]);
  v2 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v2);

  MEMORY[0x1D3890F70](0x6976726573202C27, 0xEE0027203A736563);
  v3 = StaticServiceGroup.sortedStaticServices.getter();
  v4 = type metadata accessor for StaticService(0);
  v5 = MEMORY[0x1D3891260](v3, v4);
  v7 = v6;

  MEMORY[0x1D3890F70](v5, v7);

  MEMORY[0x1D3890F70](39, 0xE100000000000000);
  return 0x2065636976726553;
}

uint64_t type metadata accessor for StaticServiceGroup()
{
  result = qword_1EE07D510;
  if (!qword_1EE07D510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticServiceGroup.serviceGroup.getter()
{
  v1[5] = v0;
  v2 = sub_1D1E66A7C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1C3F150, 0, 0);
}

uint64_t sub_1D1C3F150()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[10] = v1;
  if (v1)
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D1C3F240;
    v4 = 0;
  }

  else
  {
    v0[12] = sub_1D1E67E1C();
    v0[13] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1C3F6AC;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D1C3F240()
{
  v43 = v0;
  v2 = v0;
  v3 = v0[10];
  swift_beginAccess();
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = [v4 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v42 = sub_1D1749970(v6);
    sub_1D1747DDC(&v42);

    v7 = v42;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = v0[8];
  v9 = v0[6];
  v10 = v0[5];
  v11 = *(v0[7] + 16);
  v11(v0[9], v10, v9);
  v11(v8, v10, v9);
  v40 = v7 >> 62;
  if (v7 >> 62)
  {
LABEL_31:
    v41 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = sub_1D1E6873C();
  }

  else
  {
    v41 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = v7 & 0xC000000000000001;
  v39 = v7 + 32;
  while (v12 != v13)
  {
    if (v14)
    {
      v1 = v7;
      v15 = MEMORY[0x1D3891EF0](v13, v7);
    }

    else
    {
      if (v13 >= *(v41 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v1 = v7;
      v15 = *(v7 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = v2;
    v18 = v2[8];
    v19 = [v15 serviceGroups];
    sub_1D1741B10(0, &qword_1EE079CE0, 0x1E696CC48);
    v20 = sub_1D1E67C1C();

    v21 = swift_task_alloc();
    *(v21 + 16) = v18;
    v22 = sub_1D174A6C4(sub_1D1749C64, v21, v20);

    if (v22)
    {
      v12 = v13;
      v7 = v1;
      v2 = v17;
      break;
    }

    v23 = __OFADD__(v13++, 1);
    v7 = v1;
    v2 = v17;
    if (v23)
    {
      goto LABEL_30;
    }
  }

  if (!v40)
  {
    if (v12 != *(v41 + 16))
    {
      goto LABEL_19;
    }

LABEL_25:
    v1 = *(v2[7] + 8);
    v1(v2[9], v2[6]);
    v32 = 0;
    goto LABEL_26;
  }

  if (v12 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v14)
  {
    v24 = MEMORY[0x1D3891EF0](v12, v7);
  }

  else
  {
    if (v12 >= *(v41 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v24 = *(v39 + 8 * v12);
  }

  v25 = v24;
  v26 = v2[9];
  v28 = v2[6];
  v27 = v2[7];
  v29 = [v24 serviceGroups];
  sub_1D1741B10(0, &qword_1EE079CE0, 0x1E696CC48);
  v30 = sub_1D1E67C1C();

  v31 = swift_task_alloc();
  *(v31 + 16) = v26;
  v32 = sub_1D174A6C4(sub_1D1778988, v31, v30);

  v1 = *(v27 + 8);
  v1(v26, v28);

  if (!v32)
  {
LABEL_34:
    v35 = (v1)(v2[8], v2[6]);
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v35, v36, v37);
  }

LABEL_26:
  v2[11] = v32;
  v33 = v2[8];
  v34 = v2[6];

  v1(v33, v34);
  v35 = sub_1D1B9A998;
  v36 = 0;
  v37 = 0;

  return MEMORY[0x1EEE6DFA0](v35, v36, v37);
}

uint64_t sub_1D1C3F6AC()
{
  v1 = *(v0 + 104);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1C3F744, 0, 0);
}

uint64_t sub_1D1C3F744()
{
  v1 = *(v0 + 96);
  *(v0 + 112) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C3F7D0, v3, v2);
}

uint64_t sub_1D1C3F7D0()
{
  v1 = *(v0 + 112);

  *(v0 + 120) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1C3F844, 0, 0);
}

uint64_t sub_1D1C3F844()
{
  v1 = v0[12];
  v2 = v0[5];
  v0[16] = sub_1D1E66A2C();
  v0[17] = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C3F8DC, v4, v3);
}

uint64_t sub_1D1C3F8DC()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];

  v4 = [v3 serviceGroupFor_];

  v6 = v0[8];
  v5 = v0[9];

  v7 = v0[1];

  return v7(v4);
}

uint64_t StaticServiceGroup.set(displayName:)(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = swift_task_alloc();
  v2[20] = v3;
  *v3 = v2;
  v3[1] = sub_1D1C3FA08;

  return StaticServiceGroup.serviceGroup.getter();
}

uint64_t sub_1D1C3FA08(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C3FB08, 0, 0);
}

uint64_t sub_1D1C3FB08()
{
  v1 = v0[21];
  if (v1)
  {
    v2 = v0[18];
    v3 = v0[19];
    v4 = sub_1D1E677EC();
    v0[22] = v4;
    v0[2] = v0;
    v0[3] = sub_1D1C122A0;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D17B04C8;
    v0[13] = &block_descriptor_52;
    v0[14] = v5;
    [v1 updateName:v4 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t StaticServiceGroup.set(staticRoom:)()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C3FD10;

  return StaticRoom.room.getter();
}

uint64_t sub_1D1C3FD10(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C3FE10, 0, 0);
}

uint64_t sub_1D1C3FE10()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[2];
    v3 = swift_task_alloc();
    v0[5] = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = *(MEMORY[0x1E69E88A0] + 4);
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = sub_1D1C3FF60;
    v6 = MEMORY[0x1E69E7CA8] + 8;
    v7 = MEMORY[0x1E69E7CA8] + 8;
    v8 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DD58](v5, v6, v7, 0, 0, &unk_1D1E768B0, v3, v8);
  }

  else
  {
    sub_1D1820D0C();
    swift_allocError();
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

void sub_1D1C3FF60()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 40);

    MEMORY[0x1EEE6DFA0](sub_1D1BADF78, 0, 0);
  }
}

uint64_t StaticServiceGroup.set(room:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1C400BC, 0, 0);
}

uint64_t sub_1D1C400BC()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = *(MEMORY[0x1E69E88A0] + 4);
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_1D1C401A4;
  v4 = MEMORY[0x1E69E7CA8] + 8;
  v5 = MEMORY[0x1E69E7CA8] + 8;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v3, v4, v5, 0, 0, &unk_1D1EA1978, v1, v6);
}

void sub_1D1C401A4()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 32);

    MEMORY[0x1EEE6DFA0](sub_1D16FB500, 0, 0);
  }
}

uint64_t StaticServiceGroup.set(showInDashboard:)(char a1)
{
  *(v1 + 80) = a1;
  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C40370;

  return StaticServiceGroup.serviceGroup.getter();
}

uint64_t sub_1D1C40370(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C40470, 0, 0);
}

uint64_t sub_1D1C40470()
{
  v1 = v0[9];
  if (v1)
  {
    v20 = v0[9];
    v2 = [v1 services];
    sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v3 = sub_1D1E67C1C();

    if (v3 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D3891EF0](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v9 = *(v0 + 80);
        v10 = [v6 applicationData];
        v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        v12 = sub_1D1E677EC();
        [v10 setObject:v11 forKeyedSubscript:v12];

        v13 = [v7 applicationData];
        v14 = swift_allocObject();
        *(v14 + 16) = v7;
        v0[6] = sub_1D1C52DA4;
        v0[7] = v14;
        v0[2] = MEMORY[0x1E69E9820];
        v0[3] = 1107296256;
        v0[4] = sub_1D1C40BA8;
        v0[5] = &block_descriptor_14;
        v15 = _Block_copy(v0 + 2);
        v16 = v0[7];
        v17 = v7;

        [v17 updateApplicationData:v13 completionHandler:v15];
        _Block_release(v15);

        ++v5;
        if (v8 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  v18 = v0[1];

  return v18();
}

uint64_t StaticServiceGroup.set(favorite:)(char a1)
{
  *(v1 + 80) = a1;
  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C407D4;

  return StaticServiceGroup.serviceGroup.getter();
}

uint64_t sub_1D1C407D4(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C408D4, 0, 0);
}

uint64_t sub_1D1C408D4()
{
  v1 = v0[9];
  if (v1)
  {
    v20 = v0[9];
    v2 = [v1 services];
    sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v3 = sub_1D1E67C1C();

    if (v3 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D3891EF0](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v9 = *(v0 + 80);
        v10 = [v6 applicationData];
        v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        v12 = sub_1D1E677EC();
        [v10 setObject:v11 forKeyedSubscript:v12];

        v13 = [v7 applicationData];
        v14 = swift_allocObject();
        *(v14 + 16) = v7;
        v0[6] = sub_1D1C52DA4;
        v0[7] = v14;
        v0[2] = MEMORY[0x1E69E9820];
        v0[3] = 1107296256;
        v0[4] = sub_1D1C40BA8;
        v0[5] = &block_descriptor_21;
        v15 = _Block_copy(v0 + 2);
        v16 = v0[7];
        v17 = v7;

        [v17 updateApplicationData:v13 completionHandler:v15];
        _Block_release(v15);

        ++v5;
        if (v8 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  v18 = v0[1];

  return v18();
}

void sub_1D1C40BA8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1D1C40C14()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v33[-v4];
  v6 = type metadata accessor for StatusStrings.Options();
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42.tileOnStateIconInfo.name._countAndFlagsBits = 0;
  v42.tileOnStateIconInfo.name._object = 0xE000000000000000;
  sub_1D1E6884C();
  countAndFlagsBits = v42.tileOnStateIconInfo.name._countAndFlagsBits;
  object = v42.tileOnStateIconInfo.name._object;
  MEMORY[0x1D3890F70](0xD000000000000016, 0x80000001D1EC79D0);
  MEMORY[0x1D3890F70](0x6E776F6E6B6E75, 0xE700000000000000);
  MEMORY[0x1D3890F70](0x203A6469202CLL, 0xE600000000000000);
  sub_1D1E66A7C();
  sub_1D1C53A0C(&qword_1EE07B250, MEMORY[0x1E69695A8]);
  v11 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v11);

  MEMORY[0x1D3890F70](0x203A656D616E202CLL, 0xE800000000000000);
  v12 = type metadata accessor for ActionEndpoint();
  MEMORY[0x1D3890F70](*(v1 + v12[6]), *(v1 + v12[6] + 8));
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC79F0);
  v13 = v7[13];
  v14 = sub_1D1E669FC();
  (*(*(v14 - 8) + 56))(&v10[v13], 1, 1, v14);
  *v10 = 65793;
  *(v10 + 2) = 1;
  v10[6] = 0;
  v10[v7[14]] = 2;
  v15 = &v10[v7[15]];
  v15[4] = 0;
  *v15 = 2;
  v16 = type metadata accessor for StaticMatterDevice();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = ActionEndpoint.statusString(with:associatedMatterDevice:)();
  v19 = v18;
  sub_1D1741A30(v5, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1C53778(v10, type metadata accessor for StatusStrings.Options);
  if (v19)
  {
    v20 = v17;
  }

  else
  {
    v20 = 7104878;
  }

  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0xE300000000000000;
  }

  MEMORY[0x1D3890F70](v20, v21);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC7A10);
  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EC5FD0);
  static MatterDeviceType.primaryDeviceType(for:)(*(v1 + v12[11]), &v41);
  if (v41 == 28)
  {
    if (qword_1EC642238 != -1)
    {
      swift_once();
    }

    v38 = *&qword_1EC646788;
    name = xmmword_1EC646798;
    *v40 = xmmword_1EC6467A8;
    *&v40[9] = *(&xmmword_1EC6467A8 + 9);
    v36 = xmmword_1EC646768;
    v37 = xmmword_1EC646778;
    v42.accessoryControlOnStateIconInfo.name = xmmword_1EC646798;
    *&v42.accessoryControlOnStateIconInfo.renderingMode = xmmword_1EC6467A8;
    *&v42.tileOnStateIconInfo.renderingMode = xmmword_1EC646778;
    *&v42.tileOffStateIconInfo.name._object = *&qword_1EC646788;
    *(&v42.accessoryControlOffStateIconInfo.name + 1) = *(&xmmword_1EC6467A8 + 9);
    v42.tileOnStateIconInfo.name = xmmword_1EC646768;
    sub_1D18A9844(&v36, v34);
  }

  else
  {
    LOBYTE(v36._countAndFlagsBits) = v41;
    Icon.init(deviceType:)(&v42, &v36);
  }

  v38 = *&v42.tileOffStateIconInfo.name._object;
  name = v42.accessoryControlOnStateIconInfo.name;
  *v40 = *&v42.accessoryControlOnStateIconInfo.renderingMode;
  *&v40[9] = *(&v42.accessoryControlOffStateIconInfo.name + 1);
  v36 = v42.tileOnStateIconInfo.name;
  v37 = *&v42.tileOnStateIconInfo.renderingMode;
  v34[2] = *&v42.tileOffStateIconInfo.name._object;
  v34[3] = v42.accessoryControlOnStateIconInfo.name;
  v35[0] = *&v42.accessoryControlOnStateIconInfo.renderingMode;
  *(v35 + 9) = *(&v42.accessoryControlOffStateIconInfo.name + 1);
  v34[0] = v42.tileOnStateIconInfo.name;
  v34[1] = *&v42.tileOnStateIconInfo.renderingMode;
  sub_1D1E68ABC();
  sub_1D18A98A0(&v36);
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC5FF0);
  v22 = 0xE500000000000000;
  MEMORY[0x1D3890F70](0x65736C6166, 0xE500000000000000);
  MEMORY[0x1D3890F70](0x636165527369202CLL, 0xEF203A656C626168);
  if (*(v1 + v12[7]))
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (*(v1 + v12[7]))
  {
    v22 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v23, v22);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC6010);
  *&v34[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v24 = sub_1D1E6770C();
  MEMORY[0x1D3890F70](v24);

  MEMORY[0x1D3890F70](0x6F72202020200A2CLL, 0xEF203A7364496D6FLL);
  *&v34[0] = sub_1D1C75ED0(*(v1 + v12[5]));
  v25 = sub_1D1E6770C();
  v27 = v26;

  MEMORY[0x1D3890F70](v25, v27);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC6030);
  MEMORY[0x1D3890F70](0x65736C6166, 0xE500000000000000);
  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC6050);
  MEMORY[0x1D3890F70](0x65736C6166, 0xE500000000000000);
  MEMORY[0x1D3890F70](0x697463417369202CLL, 0xEF203A6465746176);
  v28 = ActionEndpoint.isActivated.getter();
  v29 = !v28;
  if (v28)
  {
    v30 = 1702195828;
  }

  else
  {
    v30 = 0x65736C6166;
  }

  if (v29)
  {
    v31 = 0xE500000000000000;
  }

  else
  {
    v31 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v30, v31);

  return countAndFlagsBits;
}

uint64_t sub_1D1C41290()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C40, &unk_1D1E825E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v76 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v77 = &v68 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v68 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v68 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v68 - v15;
  v17 = type metadata accessor for StatusStrings.Options();
  v18 = (v17 - 8);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89.tileOnStateIconInfo.name._countAndFlagsBits = 0;
  v89.tileOnStateIconInfo.name._object = 0xE000000000000000;
  sub_1D1E6884C();
  countAndFlagsBits = v89.tileOnStateIconInfo.name._countAndFlagsBits;
  object = v89.tileOnStateIconInfo.name._object;
  MEMORY[0x1D3890F70](0xD000000000000016, 0x80000001D1EC79D0);
  MEMORY[0x1D3890F70](0x6E776F6E6B6E75, 0xE700000000000000);
  MEMORY[0x1D3890F70](0x203A6469202CLL, 0xE600000000000000);
  v22 = sub_1D1E66A7C();
  sub_1D1C53A0C(&qword_1EE07B250, MEMORY[0x1E69695A8]);
  v72 = v22;
  v23 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v23);

  MEMORY[0x1D3890F70](0x203A656D616E202CLL, 0xE800000000000000);
  v24 = type metadata accessor for ActionMatterDevice();
  MEMORY[0x1D3890F70](*(v1 + *(v24 + 24)), *(v1 + *(v24 + 24) + 8));
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC79F0);
  v25 = v18[13];
  v26 = sub_1D1E669FC();
  (*(*(v26 - 8) + 56))(&v21[v25], 1, 1, v26);
  *v21 = 65793;
  *(v21 + 2) = 1;
  v21[6] = 0;
  v21[v18[14]] = 2;
  v27 = &v21[v18[15]];
  v27[4] = 0;
  *v27 = 2;
  v28 = type metadata accessor for StaticMatterDevice();
  v29 = *(*(v28 - 8) + 56);
  v69 = v16;
  v29(v16, 1, 1, v28);
  v78 = v24;
  v79 = v1;
  v30 = *(v1 + *(v24 + 44));
  v80 = v1;

  sub_1D1746B24(sub_1D1903ECC, v30, v10);
  v70 = 0;

  v31 = type metadata accessor for ActionEndpoint();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  v34 = v33(v10, 1, v31);
  v68 = v32;
  if (v34 == 1)
  {

    sub_1D1771D3C(v35, v12);

    if (v33(v10, 1, v31) != 1)
    {
      sub_1D1741A30(v10, &qword_1EC646C40, &unk_1D1E825E0);
    }
  }

  else
  {
    sub_1D1C5381C(v10, v12, type metadata accessor for ActionEndpoint);
    (*(v32 + 56))(v12, 0, 1, v31);
  }

  v73 = v33;
  v36 = v33(v12, 1, v31);
  v75 = v31;
  if (v36 == 1)
  {
    sub_1D1741A30(v69, &qword_1EC643650, &qword_1D1E71D40);
    sub_1D1C53778(v21, type metadata accessor for StatusStrings.Options);
    sub_1D1741A30(v12, &qword_1EC646C40, &unk_1D1E825E0);
  }

  else
  {
    v37 = v69;
    v38 = ActionEndpoint.statusString(with:associatedMatterDevice:)();
    v40 = v39;
    sub_1D1741A30(v37, &qword_1EC643650, &qword_1D1E71D40);
    sub_1D1C53778(v21, type metadata accessor for StatusStrings.Options);
    sub_1D1C53778(v12, type metadata accessor for ActionEndpoint);
    if (v40)
    {
      goto LABEL_9;
    }
  }

  v40 = 0xE300000000000000;
  v38 = 7104878;
LABEL_9:
  MEMORY[0x1D3890F70](v38, v40);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC7A10);
  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EC5FD0);
  static MatterDeviceType.primaryDeviceType(for:)(*(v79 + *(v78 + 32)), &v88);
  v74 = v32 + 48;
  v71 = v30;
  if (v88 == 28)
  {
    if (qword_1EC642238 != -1)
    {
      swift_once();
    }

    v85 = *&qword_1EC646788;
    name = xmmword_1EC646798;
    *v87 = xmmword_1EC6467A8;
    *&v87[9] = *(&xmmword_1EC6467A8 + 9);
    v83 = xmmword_1EC646768;
    v84 = xmmword_1EC646778;
    v89.accessoryControlOnStateIconInfo.name = xmmword_1EC646798;
    *&v89.accessoryControlOnStateIconInfo.renderingMode = xmmword_1EC6467A8;
    *&v89.tileOnStateIconInfo.renderingMode = xmmword_1EC646778;
    *&v89.tileOffStateIconInfo.name._object = *&qword_1EC646788;
    *(&v89.accessoryControlOffStateIconInfo.name + 1) = *(&xmmword_1EC6467A8 + 9);
    v89.tileOnStateIconInfo.name = xmmword_1EC646768;
    sub_1D18A9844(&v83, v81);
  }

  else
  {
    LOBYTE(v83._countAndFlagsBits) = v88;
    Icon.init(deviceType:)(&v89, &v83);
  }

  v85 = *&v89.tileOffStateIconInfo.name._object;
  name = v89.accessoryControlOnStateIconInfo.name;
  *v87 = *&v89.accessoryControlOnStateIconInfo.renderingMode;
  *&v87[9] = *(&v89.accessoryControlOffStateIconInfo.name + 1);
  v83 = v89.tileOnStateIconInfo.name;
  v84 = *&v89.tileOnStateIconInfo.renderingMode;
  v81[2] = *&v89.tileOffStateIconInfo.name._object;
  v81[3] = v89.accessoryControlOnStateIconInfo.name;
  v82[0] = *&v89.accessoryControlOnStateIconInfo.renderingMode;
  *(v82 + 9) = *(&v89.accessoryControlOffStateIconInfo.name + 1);
  v81[0] = v89.tileOnStateIconInfo.name;
  v81[1] = *&v89.tileOnStateIconInfo.renderingMode;
  sub_1D1E68ABC();
  sub_1D18A98A0(&v83);
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC5FF0);
  MEMORY[0x1D3890F70](0x65736C6166, 0xE500000000000000);
  MEMORY[0x1D3890F70](0x636165527369202CLL, 0xEF203A656C626168);
  v42 = v78;
  v41 = v79;
  v43 = *(v79 + *(v78 + 28));
  if (v43 == 1)
  {
    v44 = 1702195828;
  }

  else
  {
    v44 = 0x65736C6166;
  }

  if (v43 == 1)
  {
    v45 = 0xE400000000000000;
  }

  else
  {
    v45 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v44, v45);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC6010);
  *&v81[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v46 = sub_1D1E6770C();
  MEMORY[0x1D3890F70](v46);

  MEMORY[0x1D3890F70](0x6F72202020200A2CLL, 0xEF203A7364496D6FLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v47 = v72;
  v48 = *(v72 - 8);
  v49 = *(v48 + 72);
  v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1D1E739C0;
  (*(v48 + 16))(v51 + v50, v41 + *(v42 + 40), v47);
  v52 = sub_1D179BE14(v51);
  swift_setDeallocating();
  (*(v48 + 8))(v51 + v50, v47);
  swift_deallocClassInstance();
  v53 = sub_1D1C75ED0(v52);

  *&v81[0] = v53;
  v54 = sub_1D1E6770C();
  v56 = v55;

  MEMORY[0x1D3890F70](v54, v56);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC6030);
  MEMORY[0x1D3890F70](0x65736C6166, 0xE500000000000000);
  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC6050);
  MEMORY[0x1D3890F70](0x65736C6166, 0xE500000000000000);
  v57 = MEMORY[0x1D3890F70](0x697463417369202CLL, 0xEF203A6465746176);
  MEMORY[0x1EEE9AC00](v57);
  *(&v68 - 2) = v41;
  v58 = v71;

  v59 = v76;
  sub_1D1746B24(sub_1D1904B4C, v58, v76);

  v60 = v75;
  v61 = v73;
  if (v73(v59, 1, v75) == 1)
  {

    v63 = v77;
    sub_1D1771D3C(v62, v77);

    if (v61(v59, 1, v60) != 1)
    {
      sub_1D1741A30(v59, &qword_1EC646C40, &unk_1D1E825E0);
    }
  }

  else
  {
    v63 = v77;
    sub_1D1C5381C(v59, v77, type metadata accessor for ActionEndpoint);
    (*(v68 + 56))(v63, 0, 1, v60);
  }

  if (v61(v63, 1, v60) == 1)
  {
    sub_1D1741A30(v63, &qword_1EC646C40, &unk_1D1E825E0);
LABEL_28:
    v65 = 0xE500000000000000;
    v66 = 0x65736C6166;
    goto LABEL_29;
  }

  v64 = ActionEndpoint.isActivated.getter();
  sub_1D1C53778(v63, type metadata accessor for ActionEndpoint);
  if (!v64)
  {
    goto LABEL_28;
  }

  v65 = 0xE400000000000000;
  v66 = 1702195828;
LABEL_29:
  MEMORY[0x1D3890F70](v66, v65);

  return countAndFlagsBits;
}