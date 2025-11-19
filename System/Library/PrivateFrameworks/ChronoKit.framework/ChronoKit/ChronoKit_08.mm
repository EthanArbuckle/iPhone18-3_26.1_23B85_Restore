uint64_t getEnumTagSinglePayload for TapToRadarDraft.Classification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Classification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BF4480F0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1BF448180(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TapToRadarDraft.RemoteDeviceSelections(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.RemoteDeviceSelections(uint64_t result, int a2, int a3)
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

uint64_t sub_1BF4482D4(uint64_t a1)
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

uint64_t sub_1BF448354(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
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

void sub_1BF4484D8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_1BF448728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF4487A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1BF4E7C34();
  qword_1EDC97B90 = result;
  return result;
}

uint64_t (*static StorefrontChangeCoordinator._storefrontDidChangePublisher.modify())()
{
  if (qword_1EDC97B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1BF4488C0@<X0>(void *a1@<X8>)
{
  if (qword_1EDC97B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EDC97B90;
}

uint64_t sub_1BF448940()
{
  if (qword_1EDC97B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF3A4BB0(&unk_1EDC9FD80);
  v0 = sub_1BF4E7C84();

  qword_1EDC97BA8 = v0;
  return result;
}

uint64_t sub_1BF448A48(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;
}

uint64_t sub_1BF448AC8(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*static StorefrontChangeCoordinator.storefrontDidChangePublisher.modify())()
{
  if (qword_1EDC97BA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1BF448BB8@<X0>(void *a1@<X8>)
{
  if (qword_1EDC97BA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EDC97BA8;
}

uint64_t sub_1BF448C38(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = *a1;
  v8 = *a5;

  if (v8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = *a6;
  *a6 = v7;
}

uint64_t StorefrontChangeCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = sub_1BF4E88E4();
  CFNotificationCenterAddObserver(v1, 0, sub_1BF448DE4, v2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v0;
}

uint64_t StorefrontChangeCoordinator.init()()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = sub_1BF4E88E4();
  CFNotificationCenterAddObserver(v1, 0, sub_1BF448DE4, v2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v0;
}

uint64_t sub_1BF448DE4()
{
  if (qword_1EDC97B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF3A4BB0(&qword_1EDC9FD90);
  sub_1BF4E7C74();
}

uint64_t static StorefrontChangeCoordinator._simulateStorefrontChange()()
{
  if (qword_1EDC97B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF3A4BB0(&qword_1EDC9FD90);
  sub_1BF4E7C74();
}

uint64_t sub_1BF448FDC()
{
  sub_1BF4E89F4();
}

uint64_t sub_1BF4490F0()
{
  sub_1BF4E89F4();
}

uint64_t sub_1BF449288()
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF449374()
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF449484()
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF449594()
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t EnvironmentModifiers.supportedRenderSchemes.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t EnvironmentModifiers.idealizedDateComponents.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for EnvironmentModifiers() + 32);

  return sub_1BF44982C(a1, v3);
}

uint64_t sub_1BF44982C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9518, &qword_1BF4F1660);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t EnvironmentModifiers.showsWidgetLabel.setter(char a1)
{
  result = type metadata accessor for EnvironmentModifiers();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t EnvironmentModifiers.supportedDisplayProperties.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnvironmentModifiers() + 40));
}

uint64_t EnvironmentModifiers.supportedDisplayProperties.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EnvironmentModifiers() + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t EnvironmentModifiers.supportedProximities.setter(uint64_t a1)
{
  result = type metadata accessor for EnvironmentModifiers();
  *(v1 + *(result + 44)) = a1;
  return result;
}

void EnvironmentModifiers.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  v2 = MEMORY[0x1E69E7CD0];
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  v3 = type metadata accessor for EnvironmentModifiers();
  v4 = v3[8];
  v5 = sub_1BF4E6F14();
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  *(a1 + v3[9]) = 0;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BF4E9204())
  {
    sub_1BF44AD60(MEMORY[0x1E69E7CC0]);
    v2 = v6;
  }

  *(a1 + v3[10]) = v2;
  *(a1 + v3[11]) = 0;
}

uint64_t sub_1BF449BD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1BF44B52C();
  *a2 = result;
  return result;
}

const char *sub_1BF449C08@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "supportedDisplayProperties";
  v4 = 0xD000000000000014;
  if (v2 != 6)
  {
    v4 = 0xD000000000000017;
    v3 = "supportedProximities";
  }

  v5 = "wantsLowLuminanceContent";
  v6 = 0xD00000000000001ALL;
  if (v2 == 4)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v5 = "showsWidgetLabel";
  }

  if (*v1 <= 5u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = "supportedColorSchemes";
  v8 = 0xD000000000000016;
  if (v2 != 2)
  {
    v8 = 0xD000000000000018;
  }

  result = "supportedColorSchemes";
  if (v2 != 2)
  {
    v7 = "supportedRenderSchemes";
  }

  v10 = 0xD000000000000015;
  if (*v1)
  {
    v11 = "canAppearInSecureEnvironment";
  }

  else
  {
    v10 = 0xD00000000000001CLL;
    v11 = "skips-local-sysdiagnose-only";
  }

  if (*v1 > 1u)
  {
    v10 = v8;
    v11 = v7;
  }

  if (*v1 <= 3u)
  {
    v12 = v11;
  }

  else
  {
    v10 = v4;
    v12 = v3;
  }

  *a1 = v10;
  a1[1] = v12 | 0x8000000000000000;
  return result;
}

uint64_t sub_1BF449CF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF44B52C();
  *a1 = result;
  return result;
}

uint64_t sub_1BF449D24(uint64_t a1)
{
  v2 = sub_1BF3BC35C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF449D60(uint64_t a1)
{
  v2 = sub_1BF3BC35C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EnvironmentModifiers.hash(into:)(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9518, &qword_1BF4F1660);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - v5;
  v7 = sub_1BF4E6F14();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  sub_1BF4E9824();
  MEMORY[0x1BFB59A70](*(v1 + 1));
  sub_1BF44A31C(a1, *(v1 + 2), MEMORY[0x1E6985750], qword_1EDC9FA00, MEMORY[0x1E6985750], MEMORY[0x1E6985760]);
  v13 = v1[24];
  sub_1BF4E9824();
  v14 = type metadata accessor for EnvironmentModifiers();
  v15 = v1[v14[9]];
  sub_1BF4E9824();
  sub_1BF44A0BC(a1, *&v1[v14[10]]);
  MEMORY[0x1BFB59A70](*&v1[v14[11]]);
  sub_1BF38C94C(&v1[v14[8]], v6, &qword_1EBDD9518, &qword_1BF4F1660);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1BF38C9B4(v6, &qword_1EBDD9518, &qword_1BF4F1660);
  }

  (*(v8 + 32))(v11, v6, v7);
  v17 = sub_1BF4E6F04();
  MEMORY[0x1BFB59A70](v17);
  return (*(v8 + 8))(v11, v7);
}

uint64_t EnvironmentModifiers.hashValue.getter()
{
  sub_1BF4E9804();
  EnvironmentModifiers.hash(into:)(v1);
  return sub_1BF4E9844();
}

uint64_t sub_1BF44A038()
{
  sub_1BF4E9804();
  EnvironmentModifiers.hash(into:)(v1);
  return sub_1BF4E9844();
}

uint64_t sub_1BF44A07C()
{
  sub_1BF4E9804();
  EnvironmentModifiers.hash(into:)(v1);
  return sub_1BF4E9844();
}

void sub_1BF44A0BC(__int128 *a1, uint64_t a2)
{
  v20 = a1[2];
  v21 = a1[3];
  v22 = *(a1 + 8);
  v18 = *a1;
  v19 = a1[1];
  sub_1BF4E9844();
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_1BF4E91F4();
    sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
    sub_1BF3A443C();
    sub_1BF4E8D64();
    a2 = v23;
    v3 = v24;
    v4 = v25;
    v5 = v26;
    v6 = v27;
  }

  else
  {
    v7 = -1 << *(a2 + 32);
    v3 = a2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a2 + 56);

    v5 = 0;
  }

  v10 = 0;
  v11 = (v4 + 64) >> 6;
  while (a2 < 0)
  {
    if (!sub_1BF4E9234())
    {
LABEL_20:
      sub_1BF39A9CC();
      MEMORY[0x1BFB59A70](v10);
      return;
    }

    sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
    swift_dynamicCast();
    v14 = v17;
LABEL_10:
    v15 = sub_1BF4E9094();

    v10 ^= v15;
  }

  if (v6)
  {
    v12 = v5;
LABEL_9:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v17 = *(*(a2 + 48) + ((v12 << 9) | (8 * v13)));
    v14 = v17;
    goto LABEL_10;
  }

  v16 = v5;
  while (1)
  {
    v12 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      goto LABEL_20;
    }

    v6 = *(v3 + 8 * v12);
    ++v16;
    if (v6)
    {
      v5 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1BF44A31C(__int128 *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v28 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v27 - v11;
  v13 = a1[3];
  v33 = a1[2];
  v34 = v13;
  v35 = *(a1 + 8);
  v15 = *a1;
  v14 = a1[1];
  v27[1] = a1;
  v31 = v15;
  v32 = v14;
  v16 = sub_1BF4E9844();
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a2 + 56);
  v20 = (v17 + 63) >> 6;
  v27[3] = v9 + 16;
  v27[4] = v16;
  v27[2] = v9 + 8;

  v22 = 0;
  for (i = 0; v19; v22 ^= v26)
  {
    v24 = i;
LABEL_9:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    (*(v9 + 16))(v12, *(a2 + 48) + *(v9 + 72) * (v25 | (v24 << 6)), v8);
    sub_1BF3A43F4(v28, v29);
    v26 = sub_1BF4E8874();
    result = (*(v9 + 8))(v12, v8);
  }

  while (1)
  {
    v24 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v24 >= v20)
    {

      return MEMORY[0x1BFB59A70](v22);
    }

    v19 = *(a2 + 56 + 8 * v24);
    ++i;
    if (v19)
    {
      i = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL _s9ChronoKit20EnvironmentModifiersV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1BF4E6F14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9518, &qword_1BF4F1660);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9580, &qword_1BF4F1928);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - v16;
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  v18 = v15;
  sub_1BF46D340(*(a1 + 2), *(a2 + 2));
  if ((v19 & 1) == 0 || a1[24] != a2[24])
  {
    return 0;
  }

  v29 = type metadata accessor for EnvironmentModifiers();
  v20 = v29[8];
  v21 = *(v18 + 48);
  sub_1BF38C94C(&a1[v20], v17, &qword_1EBDD9518, &qword_1BF4F1660);
  v30 = v21;
  sub_1BF38C94C(&a2[v20], &v17[v21], &qword_1EBDD9518, &qword_1BF4F1660);
  v22 = *(v5 + 48);
  if (v22(v17, 1, v4) != 1)
  {
    sub_1BF38C94C(v17, v12, &qword_1EBDD9518, &qword_1BF4F1660);
    v23 = v30;
    if (v22(&v17[v30], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v23], v4);
      sub_1BF3A43F4(&qword_1EBDD9588, MEMORY[0x1E6968278]);
      v24 = sub_1BF4E88C4();
      v25 = *(v5 + 8);
      v25(v8, v4);
      v25(v12, v4);
      sub_1BF38C9B4(v17, &qword_1EBDD9518, &qword_1BF4F1660);
      if ((v24 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_12;
    }

    (*(v5 + 8))(v12, v4);
LABEL_10:
    sub_1BF38C9B4(v17, &qword_1EBDD9580, &qword_1BF4F1928);
    return 0;
  }

  if (v22(&v17[v30], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_1BF38C9B4(v17, &qword_1EBDD9518, &qword_1BF4F1660);
LABEL_12:
  v26 = v29;
  if (a1[v29[9]] == a2[v29[9]])
  {
    sub_1BF46D6F8(*&a1[v29[10]], *&a2[v29[10]]);
    if (v27)
    {
      return *&a1[v26[11]] == *&a2[v26[11]];
    }
  }

  return 0;
}

uint64_t sub_1BF44A8F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x1EEE9AC00])();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9598, &unk_1BF4F1940);
    v10 = sub_1BF4E92B4();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1BF44BA20(&qword_1EDC9D588);
      v18 = sub_1BF4E8874();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1BF44BA20(&qword_1EDC9D580);
          v25 = sub_1BF4E88C4();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1BF44ABF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9568, &qword_1BF4F1910);
    v3 = sub_1BF4E92B4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1BF4E9804();

      sub_1BF4E89F4();
      result = sub_1BF4E9844();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1BF4E9734();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1BF44AD60(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1BF4E9204())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9590, &unk_1BF4F1930);
      v3 = sub_1BF4E92B4();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1BF4E9204();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x1BFB59570](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_1BF4E9094();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_1BF4E90A4();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_1BF4E9094();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_1BF4E90A4();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1BF44B050(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentModifiers();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF44B0AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentModifiers();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BF44B158()
{
  type metadata accessor for CHSColorSchemes(319);
  if (v0 <= 0x3F)
  {
    sub_1BF44B234();
    if (v1 <= 0x3F)
    {
      sub_1BF44B2C8();
      if (v2 <= 0x3F)
      {
        sub_1BF44B320();
        if (v3 <= 0x3F)
        {
          type metadata accessor for CHSWidgetProximities(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BF44B234()
{
  if (!qword_1EDC9F9F8)
  {
    sub_1BF4E8174();
    sub_1BF3A43F4(qword_1EDC9FA00, MEMORY[0x1E6985750]);
    v0 = sub_1BF4E8D84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC9F9F8);
    }
  }
}

void sub_1BF44B2C8()
{
  if (!qword_1EDC9FDA0)
  {
    sub_1BF4E6F14();
    v0 = sub_1BF4E90F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC9FDA0);
    }
  }
}

void sub_1BF44B320()
{
  if (!qword_1EDC9F9F0)
  {
    sub_1BF3901C0(255, &qword_1EDC9F9C0, 0x1E69943A0);
    sub_1BF3A443C();
    v0 = sub_1BF4E8D84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC9F9F0);
    }
  }
}

uint64_t getEnumTagSinglePayload for EnvironmentModifiers.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EnvironmentModifiers.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF44B4D8()
{
  result = qword_1EBDD9560;
  if (!qword_1EBDD9560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9560);
  }

  return result;
}

uint64_t sub_1BF44B52C()
{
  v0 = sub_1BF4E9514();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BF44B578(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9570, &qword_1BF4F1918);
    v3 = sub_1BF4E92B4();
    v4 = 0;
    v5 = v3 + 56;
    v31 = v1;
    v32 = a1 + 32;
    while (1)
    {
      v8 = (v32 + 16 * v4);
      v9 = *v8;
      v10 = v8[1];
      v11 = *(v3 + 40);
      sub_1BF4E9804();
      if (v10 > 2)
      {
        switch(v10)
        {
          case 3:
            v12 = 3;
            break;
          case 4:
            v12 = 4;
            break;
          case 5:
            v12 = 6;
            break;
          default:
LABEL_17:
            MEMORY[0x1BFB59A70](5);

            sub_1BF4E89F4();
            goto LABEL_21;
        }
      }

      else if (v10)
      {
        if (v10 == 1)
        {
          v12 = 1;
        }

        else
        {
          if (v10 != 2)
          {
            goto LABEL_17;
          }

          v12 = 2;
        }
      }

      else
      {
        v12 = 0;
      }

      MEMORY[0x1BFB59A70](v12);
LABEL_21:
      result = sub_1BF4E9844();
      v14 = ~(-1 << *(v3 + 32));
      v15 = result & v14;
      v16 = (result & v14) >> 6;
      v17 = *(v5 + 8 * v16);
      v18 = 1 << (result & v14);
      if ((v18 & v17) == 0)
      {
LABEL_52:
        *(v5 + 8 * v16) = v17 | v18;
        v27 = (*(v3 + 48) + 16 * v15);
        *v27 = v9;
        v27[1] = v10;
        v28 = *(v3 + 16);
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (!v29)
        {
          *(v3 + 16) = v30;
          goto LABEL_5;
        }

        __break(1u);
        return result;
      }

      while (1)
      {
        v19 = (*(v3 + 48) + 16 * v15);
        v21 = *v19;
        v20 = v19[1];
        if (v20 > 2)
        {
          switch(v20)
          {
            case 3:
              if (v10 == 3)
              {
                sub_1BF44B9A8(v21, 3uLL);
                v6 = v9;
                v7 = 3;
                goto LABEL_4;
              }

              sub_1BF44B994(v9, v10);
              v22 = 3;
              goto LABEL_43;
            case 4:
              if (v10 == 4)
              {
                sub_1BF44B9A8(v21, 4uLL);
                v6 = v9;
                v7 = 4;
                goto LABEL_4;
              }

              sub_1BF44B994(v9, v10);
              v22 = 4;
              goto LABEL_43;
            case 5:
              if (v10 == 5)
              {
                sub_1BF44B9A8(v21, 5uLL);
                v6 = v9;
                v7 = 5;
                goto LABEL_4;
              }

              sub_1BF44B994(v9, v10);
              v22 = 5;
              goto LABEL_43;
          }
        }

        else
        {
          switch(v20)
          {
            case 0:
              if (!v10)
              {
                sub_1BF44B9A8(v21, 0);
                v6 = v9;
                v7 = 0;
                goto LABEL_4;
              }

              sub_1BF44B994(v9, v10);
              v22 = 0;
              goto LABEL_43;
            case 1:
              if (v10 == 1)
              {
                sub_1BF44B9A8(v21, 1uLL);
                v6 = v9;
                v7 = 1;
                goto LABEL_4;
              }

              sub_1BF44B994(v9, v10);
              v22 = 1;
              goto LABEL_43;
            case 2:
              if (v10 == 2)
              {
                sub_1BF44B9A8(v21, 2uLL);
                v6 = v9;
                v7 = 2;
                goto LABEL_4;
              }

              sub_1BF44B994(v9, v10);
              v22 = 2;
              goto LABEL_43;
          }
        }

        if (v10 < 6)
        {
          v23 = v20;
          sub_1BF44B994(v9, v10);
          sub_1BF44B994(v21, v23);
          v22 = v23;
LABEL_43:
          sub_1BF44B9A8(v21, v22);
          result = sub_1BF44B9A8(v9, v10);
          goto LABEL_44;
        }

        if (v21 == v9 && v20 == v10)
        {
          break;
        }

        v25 = v20;
        v26 = sub_1BF4E9734();
        sub_1BF44B994(v9, v10);
        sub_1BF44B994(v21, v25);
        sub_1BF44B9A8(v21, v25);
        result = sub_1BF44B9A8(v9, v10);
        if (v26)
        {
          goto LABEL_60;
        }

LABEL_44:
        v15 = (v15 + 1) & v14;
        v16 = v15 >> 6;
        v17 = *(v5 + 8 * (v15 >> 6));
        v18 = 1 << v15;
        if ((v17 & (1 << v15)) == 0)
        {
          goto LABEL_52;
        }
      }

      sub_1BF44B9A8(v9, v10);
LABEL_60:
      v6 = v9;
      v7 = v10;
LABEL_4:
      sub_1BF44B9A8(v6, v7);
LABEL_5:
      if (++v4 == v31)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1BF44B994(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_1BF44B9A8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_1BF44B9BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentModifiers();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF44BA20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1BF44BA70(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1BF38E628(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92D0, &qword_1BF4F08C0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1BF44BBA4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1BF4E9204();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1BF4E9204();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1BF472260();
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1BF44CF04(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1BF44BCC0(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1BF44BE04(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_1BF44BE64()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1BF44BEB0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1BF44BF54(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 40);
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_1BF44BFB4()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1BF44C000(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void *ActivityCacheURLProvider.__allocating_init(subdirectory:fileExtension:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[3] = 0;
  v8[2] = 0;
  swift_beginAccess();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  return v8;
}

void *ActivityCacheURLProvider.init(subdirectory:fileExtension:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = 0;
  v4[2] = 0;
  swift_beginAccess();
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t sub_1BF44C1A0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD90A8, &unk_1BF4F1950);
  v2 = *(sub_1BF4E7194() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BF4EBEF0;
  sub_1BF44C264(a1, v5 + v4);
  return v5;
}

uint64_t sub_1BF44C264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95A0, &unk_1BF4F7670);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v42 - v8;
  v10 = type metadata accessor for ActivityVariantKey();
  v44 = *(v10 - 8);
  v45 = v10;
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95A8, &unk_1BF4F1960);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v42 - v15;
  v17 = type metadata accessor for ActivityKey();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BF4E7194();
  (*(*(v22 - 8) + 16))(a2, a1, v22);
  swift_beginAccess();
  if (*(v2 + 24))
  {
    v23 = *(v2 + 16);

    sub_1BF4E70A4();
  }

  v42 = v3;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FF8, &qword_1BF4EFD98);
  sub_1BF38C94C(a1 + *(v24 + 68), v16, &qword_1EBDD95A8, &unk_1BF4F1960);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_1BF38C9B4(v16, &qword_1EBDD95A8, &unk_1BF4F1960);
  }

  v26 = v16;
  v27 = v21;
  sub_1BF44C740(v26, v21, type metadata accessor for ActivityKey);
  sub_1BF38C94C(a1 + *(v24 + 72), v9, &qword_1EBDD95A0, &unk_1BF4F7670);
  v28 = v45;
  if ((*(v44 + 48))(v9, 1, v45) == 1)
  {
    sub_1BF44CB98(v27, type metadata accessor for ActivityKey);
    return sub_1BF38C9B4(v9, &qword_1EBDD95A0, &unk_1BF4F7670);
  }

  else
  {
    v29 = v43;
    sub_1BF44C740(v9, v43, type metadata accessor for ActivityVariantKey);
    v30 = (v27 + *(v17 + 24));
    v31 = v30[1];
    v46 = *v30;
    v47 = v31;

    MEMORY[0x1BFB58C90](45, 0xE100000000000000);
    v48 = sub_1BF4E8664();
    v49 = v32;

    MEMORY[0x1BFB58C90](46, 0xE100000000000000);

    v34 = v48;
    v33 = v49;
    v35 = v29 + *(v28 + 20);
    v36 = sub_1BF4E8354();
    v38 = v37;
    v48 = v34;
    v49 = v33;

    MEMORY[0x1BFB58C90](v36, v38);

    MEMORY[0x1BFB58C90](v48, v49);

    sub_1BF4E70A4();

    v39 = v42;
    swift_beginAccess();
    v40 = *(v39 + 32);
    v41 = *(v39 + 40);

    sub_1BF4E70C4();

    sub_1BF44CB98(v29, type metadata accessor for ActivityVariantKey);
    return sub_1BF44CB98(v27, type metadata accessor for ActivityKey);
  }
}

uint64_t sub_1BF44C740(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF44C7A8(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = sub_1BF4E7194();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for WidgetCacheKey();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E7CC0];
  v17 = *(a1 + 16);
  swift_beginAccess();
  if (v17)
  {
    v18 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v35 = *(v12 + 72);
    v36 = v1;
    v33 = (v4 + 32);
    v34 = (v4 + 16);
    v19 = (v4 + 8);
    do
    {
      sub_1BF44CB34(v18, v15);
      v23 = [objc_opt_self() defaultManager];
      (*v34)(v7, v15, v3);
      if (*(v36 + 24))
      {
        v24 = *(v36 + 16);
        v25 = *(v36 + 24);

        sub_1BF4E70A4();
      }

      (*v33)(v10, v7, v3);
      v26 = sub_1BF4E7094();
      (*v19)(v10, v3);
      v37 = 0;
      v27 = [v23 contentsOfDirectoryAtURL:v26 includingPropertiesForKeys:0 options:0 error:&v37];

      v28 = v37;
      if (v27)
      {
        v22 = sub_1BF4E8BA4();
        v29 = v28;
      }

      else
      {
        v20 = v37;
        v21 = sub_1BF4E6FF4();

        swift_willThrow();
        v22 = MEMORY[0x1E69E7CC0];
      }

      sub_1BF44CB98(v15, type metadata accessor for WidgetCacheKey);
      sub_1BF44BCC0(v22, sub_1BF4323F4, MEMORY[0x1E6968FB0]);
      v18 += v35;
      --v17;
    }

    while (v17);
    v16 = v38;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t sub_1BF44CB34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetCacheKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF44CB98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ActivityCacheURLProvider.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t ActivityCacheURLProvider.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF44CC84(uint64_t a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD90A8, &unk_1BF4F1950);
  v4 = *(sub_1BF4E7194() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BF4EBEF0;
  sub_1BF44C264(a1, v7 + v6);
  return v7;
}

uint64_t sub_1BF44CF04(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BF4E9204();
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
      result = sub_1BF4E9204();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BF44D084();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95B0, &unk_1BF4F19D0);
            v9 = sub_1BF3E2130(v13, i, a3);
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
        sub_1BF42DD34();
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

unint64_t sub_1BF44D084()
{
  result = qword_1EBDD95B8;
  if (!qword_1EBDD95B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD95B0, &unk_1BF4F19D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD95B8);
  }

  return result;
}

uint64_t sub_1BF44D0E8(uint64_t a1, uint64_t *a2)
{
  sub_1BF38E49C(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 120));
  sub_1BF38E60C(v5, v3 + 120);
  return swift_endAccess();
}

void *DefaultEnvironmentProvidingFactory.__allocating_init(extensionManager:keybagStateProvider:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for IOSSystemEnvironmentProvider();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_1BF467770();
  sub_1BF38E49C(a1, v12);
  sub_1BF38E49C(a2, v11);
  type metadata accessor for DefaultEnvironmentProvidingFactory();
  v8 = swift_allocObject();
  v9 = sub_1BF44D800(v12, v11, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t sub_1BF44D224(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = *(*(v9 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v13);
  v17 = a4(a1, a2, v15, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v17;
}

uint64_t sub_1BF44D334(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + 112);
    v5 = *(v4 + 16);

    os_unfair_lock_lock(v5);
    sub_1BF44D3E4(v1, v3);
    os_unfair_lock_unlock(*(v4 + 16));
  }

  return result;
}

uint64_t sub_1BF44D3E4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = (result + 32);
    do
    {
      v5 = v4[3];
      v6 = v4[4];
      __swift_project_boxed_opaque_existential_1(v4, v5);
      v7 = (*(v6 + 40))(v5, v6);
      swift_beginAccess();
      v8 = *(a2 + 96);
      v9 = sub_1BF3916CC(v7);
      if (v10)
      {
        v11 = v9;
        v12 = *(a2 + 96);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = *(a2 + 96);
        v18 = v14;
        *(a2 + 96) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1BF4A3F6C();
          v14 = v18;
        }

        sub_1BF38E60C(*(v14 + 56) + 40 * v11, v16);
        sub_1BF47C840(v11, v14);

        v15 = *(a2 + 96);
        *(a2 + 96) = v14;
      }

      else
      {

        v17 = 0;
        memset(v16, 0, sizeof(v16));
      }

      sub_1BF38C9B4(v16, &qword_1EBDD9320, &qword_1BF4F09B0);
      result = swift_endAccess();
      v4 += 5;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_1BF44D550(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[14];
  os_unfair_lock_lock(*(v5 + 16));
  sub_1BF3C09B4(v2, a1, a2);
  v6 = *(v5 + 16);

  os_unfair_lock_unlock(v6);
}

uint64_t *DefaultEnvironmentProvidingFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  v3 = v0[14];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);
  return v0;
}

uint64_t DefaultEnvironmentProvidingFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  v3 = v0[14];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);

  return swift_deallocClassInstance();
}

void *sub_1BF44D69C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - v16;
  (*(v10 + 32))(&v23 - v16, v18, v19, v15);
  type metadata accessor for DefaultEnvironmentProvidingFactory();
  v20 = swift_allocObject();
  (*(v10 + 16))(v13, v17, a5);
  v21 = sub_1BF44D9D0(a1, a2, v13, v20, a5, a6);
  (*(v10 + 8))(v17, a5);
  return v21;
}

void *sub_1BF44D800(uint64_t *a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v13[3] = type metadata accessor for IOSSystemEnvironmentProvider();
  v13[4] = &protocol witness table for EnvironmentProvider;
  v13[0] = a3;
  a4[12] = MEMORY[0x1E69E7CC8];
  a4[13] = MEMORY[0x1E69E7CD0];
  type metadata accessor for UnfairLock();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *v9 = 0;
  *(v8 + 16) = v9;
  a4[14] = v8;
  sub_1BF38E49C(a1, (a4 + 2));
  sub_1BF38E49C(a2, (a4 + 7));
  sub_1BF38E49C(v13, (a4 + 15));
  v10 = a4[5];
  v11 = a4[6];
  __swift_project_boxed_opaque_existential_1(a4 + 2, v10);
  (*(v11 + 72))(v10, v11);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C0, &unk_1BF4F1A68);
  sub_1BF44DC44();
  sub_1BF4E7D14();

  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  return a4;
}

void *sub_1BF44D9D0(uint64_t *a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v17[3] = a5;
  v17[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a3, a5);
  a4[12] = MEMORY[0x1E69E7CC8];
  a4[13] = MEMORY[0x1E69E7CD0];
  type metadata accessor for UnfairLock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *v13 = 0;
  *(v12 + 16) = v13;
  a4[14] = v12;
  sub_1BF38E49C(a1, (a4 + 2));
  sub_1BF38E49C(a2, (a4 + 7));
  sub_1BF38E49C(v17, (a4 + 15));
  v14 = a4[5];
  v15 = a4[6];
  __swift_project_boxed_opaque_existential_1(a4 + 2, v14);
  (*(v15 + 72))(v14, v15);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C0, &unk_1BF4F1A68);
  sub_1BF44DC44();
  sub_1BF4E7D14();

  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return a4;
}

unint64_t sub_1BF44DC44()
{
  result = qword_1EDC9D3F0;
  if (!qword_1EDC9D3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD95C0, &unk_1BF4F1A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9D3F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BackoffPolicy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BackoffPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

char *StatefulStore.init<A, B>(reloadStrategy:reloadConfigurationPolicy:reloadTriggers:logger:dataMigrator:allowDebounce:enabled:reloadQueue:calloutQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, int a7, void *a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = sub_1BF45C7E0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);

  (*(*(a11 - 8) + 8))(a2, a11);
  (*(*(a10 - 8) + 8))(a1, a10);
  return v16;
}

uint64_t sub_1BF44DE1C()
{
  v1 = *(v0 + qword_1EDC9AF58);
  os_unfair_lock_lock(*(v1 + 16));
  sub_1BF457CD8(v0, &v3);
  os_unfair_lock_unlock(*(v1 + 16));
  return v3;
}

void *StatefulStore.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  v15 = v0[16];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v16 = qword_1EDCA6868;
  v17 = sub_1BF4E8424();
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v18 = *(v0 + qword_1EDC9AF70);

  v19 = *(v0 + qword_1EDC9AF48);

  v20 = *(v0 + qword_1EDC9AFA8);

  v21 = *(v0 + qword_1EDC9AF80);

  v22 = *(v0 + qword_1EDC9AF98);

  v23 = *(v0 + qword_1EDC9AF58);

  v24 = qword_1EDC9AF50;
  v25 = sub_1BF4E7B54();
  (*(*(v25 - 8) + 8))(v0 + v24, v25);
  v26 = *(v0 + qword_1EDC9AFB0);

  v27 = *(v0 + qword_1EDC9AFB8);

  v28 = *(v0 + qword_1EDC9AF68);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDC9AFC8));

  v29 = *(v0 + qword_1EDCA6870);

  v30 = *(v0 + qword_1EDCA6860);

  v31 = *(v0 + qword_1EDC9AF88);

  v32 = *(v0 + qword_1EDC9AF90);

  v33 = *(v0 + qword_1EDC9AF60);

  return v0;
}

uint64_t sub_1BF44E0C4()
{
  if (v0[2])
  {
    v1 = v0[2];
  }

  else
  {
    v1 = sub_1BF457170(v0);
    v2 = v0[2];
    v0[2] = v1;
  }

  return v1;
}

uint64_t sub_1BF44E124()
{
  v1 = *v0;
  if (v0[4])
  {
    v2 = v0[4];
  }

  else
  {
    v3 = v0;
    v9 = v0[3];
    v4 = v1[10];
    v5 = v1[13];
    v6 = v1[14];
    type metadata accessor for StatefulStoreReloadEvent();
    sub_1BF4E7C44();
    swift_getWitnessTable();
    v2 = sub_1BF4E7C84();
    v7 = v3[4];
    v3[4] = v2;
  }

  return v2;
}

uint64_t sub_1BF44E210(uint64_t a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_1BF44E220()
{
  v1 = *v0;
  if (v0[6])
  {
    v2 = v0[6];
  }

  else
  {
    v3 = v0;
    v8 = v0[5];
    v4 = *(v1 + 80);
    v5 = *(v1 + 88);
    type metadata accessor for StatefulStoreReloadVariantsEvent();
    sub_1BF4E7C44();
    swift_getWitnessTable();
    v2 = sub_1BF4E7C84();
    v6 = v3[6];
    v3[6] = v2;
  }

  return v2;
}

uint64_t sub_1BF44E308(uint64_t a1)
{
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t sub_1BF44E318()
{
  if (v0[8])
  {
    v1 = v0[8];
  }

  else
  {
    v2 = v0;
    v6 = v0[7];
    v3 = *(*v0 + 80);
    sub_1BF4E7C44();
    swift_getWitnessTable();
    v1 = sub_1BF4E7C84();
    v4 = v2[8];
    v2[8] = v1;
  }

  return v1;
}

uint64_t sub_1BF44E3F0(uint64_t a1)
{
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t sub_1BF44E400()
{
  if (v0[10])
  {
    v1 = v0[10];
  }

  else
  {
    v2 = v0;
    v6 = v0[9];
    v3 = *(*v0 + 80);
    sub_1BF4E7C44();
    swift_getWitnessTable();
    v1 = sub_1BF4E7C84();
    v4 = v2[10];
    v2[10] = v1;
  }

  return v1;
}

uint64_t sub_1BF44E4D8(uint64_t a1)
{
  v2 = *(v1 + 80);
  *(v1 + 80) = a1;
}

uint64_t sub_1BF44E4E8()
{
  if (v0[12])
  {
    v1 = v0[12];
  }

  else
  {
    v2 = v0;
    v6 = v0[11];
    v3 = *(*v0 + 80);
    sub_1BF4E7C44();
    swift_getWitnessTable();
    v1 = sub_1BF4E7C84();
    v4 = v2[12];
    v2[12] = v1;
  }

  return v1;
}

uint64_t sub_1BF44E5C0(uint64_t a1)
{
  v2 = *(v1 + 96);
  *(v1 + 96) = a1;
}

uint64_t sub_1BF44E5D0()
{
  v1 = *v0;
  if (v0[14])
  {
    v2 = v0[14];
  }

  else
  {
    v3 = v0;
    v9 = v0[13];
    v6 = v1[5];
    v7 = *(v1 + 104);
    v8 = *(v1 + 120);
    type metadata accessor for VariantIdentifier();
    sub_1BF4E7C44();
    swift_getWitnessTable();
    v2 = sub_1BF4E7C84();
    v4 = v3[14];
    v3[14] = v2;
  }

  return v2;
}

uint64_t sub_1BF44E6CC(uint64_t a1)
{
  v2 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t sub_1BF44E6DC()
{
  v1 = *v0;
  if (v0[16])
  {
    v2 = v0[16];
  }

  else
  {
    v3 = v0;
    v9 = v0[15];
    v6 = v1[5];
    v7 = *(v1 + 104);
    v8 = *(v1 + 120);
    type metadata accessor for VariantIdentifier();
    sub_1BF4E7C44();
    swift_getWitnessTable();
    v2 = sub_1BF4E7C84();
    v4 = v3[16];
    v3[16] = v2;
  }

  return v2;
}

uint64_t sub_1BF44E7D8(uint64_t a1)
{
  v2 = *(v1 + 128);
  *(v1 + 128) = a1;
}

uint64_t sub_1BF44E7E8()
{
  v1 = *v0;
  os_unfair_lock_assert_owner(*(*(v0 + qword_1EDC9AF58) + 16));
  v2 = qword_1EDCA6870;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[16];
  v8 = sub_1BF4E8834();
  nullsub_1(v3, v4, v8, v1[14]);
  sub_1BF4E87B4();

  swift_getWitnessTable();
  return sub_1BF4E8CB4();
}

uint64_t sub_1BF44E930()
{
  v1 = v0;
  v2 = *v0;
  v9 = *(v1 + qword_1EDC9AF58);
  v3 = type metadata accessor for UnfairLock();
  v4 = v2[10];
  v5 = v2[11];
  sub_1BF4E8CA4();
  v6 = v2[14];
  v7 = sub_1BF4E8834();

  sub_1BF38D774(sub_1BF45DAA4, v1, v3, v7, &off_1F3DEE010);

  return v10;
}

uint64_t sub_1BF44EA2C()
{
  v1 = *v0;
  v2 = *v0;
  os_unfair_lock_assert_owner(*(*(v0 + qword_1EDC9AF58) + 16));
  v3 = qword_1EDCA6870;
  swift_beginAccess();
  v11 = *(v0 + v3);
  v4 = v1[10];
  v5 = v1[11];
  sub_1BF4E8CA4();
  v6 = v1[14];

  sub_1BF4E8724();
  v8 = *(v2 + 6);
  v9 = v1[15];
  v10 = *(v2 + 8);
  sub_1BF4E8834();
  sub_1BF4E8834();
  sub_1BF4E8834();
  swift_getWitnessTable();
  sub_1BF4E8B14();

  return v12;
}

uint64_t sub_1BF44EC50(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 136));
  sub_1BF38E610(a1, v1 + 136);
  return swift_endAccess();
}

uint64_t sub_1BF44ECA8()
{
  v1 = v0;
  v2 = *v0;
  v8 = *(v0 + qword_1EDC9AF58);
  v3 = type metadata accessor for UnfairLock();
  v4 = *(v2 + 96);

  v7 = *(v2 + 80);
  ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
  sub_1BF38D774(sub_1BF45DAD4, v1, v3, ExtendedExistentialTypeMetadata, &off_1F3DEE010);
}

void (*sub_1BF44EDDC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  sub_1BF44ECA8();
  return sub_1BF44EE54;
}

void sub_1BF44EE54(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    sub_1BF38E49C(*a1, (v2 + 5));
    sub_1BF45DB24((v2 + 5));
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 5);
  }

  else
  {
    sub_1BF45DB24(*a1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);

  free(v2);
}

uint64_t sub_1BF44EEC4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 176) = a1;
  return result;
}

void (*sub_1BF44EF54(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BF44EFB8;
}

void sub_1BF44EFB8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_1BF395B90();
  }
}

uint64_t sub_1BF44F024()
{
  sub_1BF3B78FC();
}

uint64_t sub_1BF44F0B8()
{
  sub_1BF45DB84();
}

uint64_t sub_1BF44F0EC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_1BF44F1A0()
{
  v1 = v0;
  v2 = *v0;
  v10 = *(v1 + qword_1EDC9AF58);
  v3 = type metadata accessor for UnfairLock();

  v7 = v2[5];
  v6 = v2[7];
  v8 = v2[6];
  v9 = v2[8];
  type metadata accessor for ReloadTaskPair();
  v4 = sub_1BF4E8834();
  sub_1BF38D774(sub_1BF45DBC8, v1, v3, v4, &off_1F3DEE010);

  return v7;
}

uint64_t sub_1BF44F2A0()
{
  v1 = v0;
  v2 = *v0;
  v8 = *(v1 + qword_1EDC9AF58);
  v3 = type metadata accessor for UnfairLock();
  v4 = *(v2 + 80);
  type metadata accessor for ReloadConfiguration(255);
  v5 = *(v2 + 112);
  v6 = sub_1BF4E8834();

  sub_1BF38D774(sub_1BF45DBE8, v1, v3, v6, &off_1F3DEE010);

  return v9;
}

uint64_t sub_1BF44F388()
{
  v1 = *(v0 + qword_1EDC9AF58);
  os_unfair_lock_lock(*(v1 + 16));
  sub_1BF457814(v0, &v3);
  os_unfair_lock_unlock(*(v1 + 16));
  return v3;
}

uint64_t StatefulStore.__allocating_init<A, B>(reloadStrategy:reloadConfigurationPolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v33 = a6;
  v38 = a2;
  v9 = sub_1BF4E7B54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v19 + 16);
  v36 = a1;
  v37 = a3;
  v25(v24, a1, a3, v22);
  (*(v14 + 16))(v18, v38, a4);
  if (qword_1EDC9F998 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v9, qword_1EDCA6AD8);
  (*(v10 + 16))(v13, v26, v9);
  if (qword_1EDC99E10 != -1)
  {
    swift_once();
  }

  v27 = qword_1EDC99E18;
  v39[3] = type metadata accessor for _SystemDataMigrator();
  v39[4] = &protocol witness table for _SystemDataMigrator;
  v39[0] = v27;
  v28 = *(v35 + 1224);

  v29 = v37;
  v30 = v28(v24, v18, MEMORY[0x1E69E7CC0], v13, v39, 1, 1, 0, 0, v37, a4, v34, v33);
  (*(v14 + 8))(v38, a4);
  (*(v19 + 8))(v36, v29);
  return v30;
}

uint64_t sub_1BF44F748(uint64_t a1)
{
  v3 = *v1;
  v14 = *(v1 + qword_1EDC9AF58);
  v9 = v1;
  v10 = a1;
  v4 = type metadata accessor for UnfairLock();

  v5 = *(v3 + 104);
  v11 = v3[5];
  v12 = v5;
  v13 = *(v3 + 120);
  type metadata accessor for VariantReloadResult();
  v6 = sub_1BF4E7BB4();
  sub_1BF38D774(sub_1BF45DC08, &v8, v4, v6, &off_1F3DEE010);

  if (!v2)
  {
    return v15;
  }

  return result;
}

void sub_1BF44F860()
{
  v1 = *(v0 + qword_1EDC9AF58);
  os_unfair_lock_lock(*(v1 + 16));
  sub_1BF459A4C(v0);
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v2);
}

void sub_1BF44F8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + qword_1EDC9AF58);
  os_unfair_lock_lock(*(v11 + 16));
  sub_1BF459B10(v5, a1, a2, a3, a4, a5);
  v12 = *(v11 + 16);

  os_unfair_lock_unlock(v12);
}

uint64_t sub_1BF44F9EC(uint64_t a1)
{
  v69 = *v1;
  v2 = v69;
  v3 = v69[10];
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v77 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v67 - v8;
  v9 = v2[12];
  v10 = v2[16];
  v71 = v2[11];
  v68 = v9;
  v70 = v10;
  v11 = sub_1BF4E8834();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v80 = sub_1BF4E90F4();
  v13 = *(v80 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v79 = &v67 - v17;
  os_unfair_lock_assert_owner(*(*(v1 + qword_1EDC9AF58) + 16));
  swift_beginAccess();
  v18 = v2[14];
  v89 = v3;
  v85 = v18;
  sub_1BF4E8834();
  sub_1BF4E8824();
  swift_endAccess();
  v19 = qword_1EDCA6870;
  swift_beginAccess();
  v81 = v1;
  v20 = *(v1 + v19);
  v21 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 64);
  v25 = (v22 + 63) >> 6;
  v84 = TupleTypeMetadata2;
  v82 = TupleTypeMetadata2 - 8;
  v72 = v4 + 16;
  v87 = (v4 + 32);
  v78 = (v13 + 32);
  v74 = v4;
  v76 = (v4 + 8);
  v75 = v20;

  v27 = 0;
  v86 = 0;
  while (v24)
  {
    v28 = v27;
    v29 = v89;
LABEL_14:
    v35 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v36 = v35 | (v28 << 6);
    v37 = v75;
    v38 = v74;
    (*(v74 + 16))(v73, *(v75 + 48) + *(v74 + 72) * v36, v29);
    v39 = *(*(v37 + 56) + 8 * v36);
    v40 = *(v84 + 48);
    v41 = *(v38 + 32);
    v33 = v84;
    v34 = v83;
    v41();
    *&v34[v40] = v39;
    v42 = *(v33 - 8);
    (*(v42 + 56))(v34, 0, 1, v33);

    v31 = v28;
    v32 = v85;
LABEL_15:
    v43 = v79;
    (*v78)(v79, v34, v80);
    if ((*(v42 + 48))(v43, 1, v33) == 1)
    {

      v58 = v81;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD95D0, &qword_1BF4F1C88);
      v59 = v89;
      sub_1BF4E8834();
      sub_1BF4E8824();
      swift_endAccess();
      swift_beginAccess();
      sub_1BF4E8834();
      sub_1BF4E8824();
      swift_endAccess();
      v60 = *(v58 + qword_1EDC9AFB8);
      sub_1BF4C9794();
      sub_1BF452200(0x6465766F6D6572, 0xE700000000000000);
      swift_beginAccess();
      v61 = v69[13];
      v62 = v69[15];
      v63 = v69[17];
      v64 = v32;
      v65 = v71;
      v90 = v59;
      v91 = v71;
      v92 = v68;
      v93 = v61;
      v94 = v64;
      v95 = v62;
      v66 = v70;
      v96 = v70;
      v97 = v63;
      type metadata accessor for ReloadTaskPair();
      sub_1BF4E8834();
      sub_1BF4E8824();
      swift_endAccess();
      swift_beginAccess();
      v90 = v59;
      v91 = v65;
      v92 = v61;
      v93 = v64;
      v94 = v62;
      v95 = v66;
      type metadata accessor for VariantReloadResult();
      sub_1BF4E7C44();
      sub_1BF4E8834();
      sub_1BF4E8834();
      sub_1BF4E8824();
      swift_endAccess();
      swift_beginAccess();
      sub_1BF4E7334();
      sub_1BF4E8834();
      sub_1BF4E8824();
      return swift_endAccess();
    }

    v88 = v31;
    v44 = *&v43[*(v33 + 48)];

    v45 = v77;
    v46 = v11;
    v47 = v89;
    (*v87)(v77, v43, v89);
    v48 = qword_1EDCA6870;
    v49 = v81;
    swift_beginAccess();
    v50 = *(v49 + v48);

    sub_1BF4E8854();

    result = (*v76)(v45, v47);
    if (v90)
    {
      v98 = v90;
      MEMORY[0x1EEE9AC00](result);
      v51 = v71;
      *(&v67 - 8) = v47;
      *(&v67 - 7) = v51;
      v52 = v69;
      v53 = v69[13];
      *(&v67 - 6) = v68;
      *(&v67 - 5) = v53;
      v54 = v52[15];
      *(&v67 - 4) = v55;
      *(&v67 - 3) = v54;
      v56 = v52[17];
      *(&v67 - 2) = v70;
      *(&v67 - 1) = v56;
      swift_getWitnessTable();
      v57 = v86;
      sub_1BF4E8B44();
      v86 = v57;
    }

    v27 = v88;
    v11 = v46;
  }

  if (v25 <= v27 + 1)
  {
    v30 = v27 + 1;
  }

  else
  {
    v30 = v25;
  }

  v31 = v30 - 1;
  v29 = v89;
  v32 = v85;
  v33 = v84;
  v34 = v83;
  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v25)
    {
      v42 = *(v84 - 8);
      (*(v42 + 56))(v83, 1, 1, v84);
      v24 = 0;
      goto LABEL_15;
    }

    v24 = *(v21 + 8 * v28);
    ++v27;
    if (v24)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF450388(uint64_t a1, char *a2)
{
  v146 = a2;
  v148 = a1;
  v3 = *v2;
  v4 = *v2;
  v131 = sub_1BF4E7FF4();
  v130 = *(v131 - 8);
  v5 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v128 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1BF4E8064();
  v127 = *(v129 - 8);
  v7 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v126 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v3[10];
  v135 = *(v9 - 8);
  v124 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v137 = &v113 - v11;
  v12 = v3[11];
  v125 = v4;
  v147 = *(v4 + 13);
  v13 = v3[15];
  v14 = v3[16];
  *&aBlock = v9;
  *(&aBlock + 1) = v12;
  v153 = v147;
  v143 = v13;
  v154 = v13;
  v155 = v14;
  v140 = type metadata accessor for VariantIdentifier();
  v139 = *(v140 - 8);
  v15 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v122 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  *&v133 = &v113 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v138 = &v113 - v20;
  v142 = *(v12 - 8);
  v21 = v142[8];
  MEMORY[0x1EEE9AC00](v22);
  v136 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v141 = &v113 - v25;
  v26 = v3[12];
  v27 = sub_1BF4E90F4();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v132 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v113 - v32;
  os_unfair_lock_assert_owner(*(*(v2 + qword_1EDC9AF58) + 16));
  v34 = qword_1EDCA6870;
  swift_beginAccess();
  v144 = v2;
  v35 = *(v2 + v34);
  v36 = v26;
  v37 = v14;
  v145 = v12;
  v38 = sub_1BF4E8834();

  v39 = v147.i64[1];
  sub_1BF4E8854();

  if (aBlock)
  {
    v134 = v39;
    v151 = aBlock;
    sub_1BF4E8854();
    v41 = *(v36 - 8);
    v42 = v36;
    v43 = (*(v41 + 48))(v33, 1, v36);
    (*(v28 + 8))(v33, v27);
    if (v43 == 1)
    {
    }

    v44 = v38;
    v46 = v142 + 2;
    v45 = v142[2];
    v47 = v141;
    v48 = v145;
    v45(v141, v146, v145);
    v49 = *(v41 + 56);
    v121 = v42;
    v49(v132, 1, 1, v42);
    v50 = v37;
    v115 = v44;
    sub_1BF4E8864();
    v51 = *(v135 + 16);
    v52 = v137;
    v118 = v135 + 16;
    v117 = v51;
    v51(v137, v148, v9);
    v53 = v146;
    v45(v47, v146, v48);
    v54 = v138;
    v116 = v9;
    v132 = v50;
    VariantIdentifier.init(storedKey:variantKey:)(v52, v47, v9, v48, v138);
    v55 = v139;
    v56 = *(v139 + 16);
    v57 = v133;
    v58 = v54;
    v59 = v140;
    v56(v133, v58, v140);
    v119 = v46;
    v120 = v45;
    v45(v136, v53, v48);
    v60 = sub_1BF4E7B34();
    v61 = sub_1BF4E8E84();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v113 = v60;
      v63 = v62;
      v114 = swift_slowAlloc();
      *&aBlock = v114;
      *v63 = 136446466;
      v64 = v122;
      v56(v122, v57, v59);
      v65 = *(v55 + 8);
      v65(v57, v59);
      v66 = VariantIdentifier.description.getter(v59);
      v67 = v61;
      v69 = v68;
      v65(v64, v59);
      v70 = sub_1BF38D65C(v66, v69, &aBlock);

      *(v63 + 4) = v70;
      *(v63 + 12) = 2082;
      v71 = v141;
      v72 = v136;
      v73 = v145;
      v120(v141, v136, v145);
      v74 = v142[1];
      v74(v72, v73);
      v75 = sub_1BF4E96A4();
      v77 = v76;
      v74(v71, v73);
      v78 = sub_1BF38D65C(v75, v77, &aBlock);

      *(v63 + 14) = v78;
      v79 = v113;
      _os_log_impl(&dword_1BF389000, v113, v67, "%{public}s:%{public}s Removed variant from store", v63, 0x16u);
      v80 = v114;
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v80, -1, -1);
      MEMORY[0x1BFB5A5D0](v63, -1, -1);
    }

    else
    {
      v73 = v145;
      (v142[1])(v136, v145);
      v65 = *(v55 + 8);
      v65(v57, v59);

      v71 = v141;
    }

    v81 = v151;
    v82 = v132;
    v83 = MEMORY[0x1BFB58A40](v151, v73, v121, v132);
    v84 = v144;
    if (v83)
    {
      sub_1BF4513E0(v148);
      v65(v138, v140);
    }

    v85 = v116;
    v117(v137, v148, v116);
    v156 = v81;
    swift_beginAccess();
    sub_1BF4E8834();
    v136 = v81;

    sub_1BF4E8864();
    swift_endAccess();
    v86 = qword_1EDC9AF60;
    swift_beginAccess();
    v87 = *(v84 + v86);

    *&v88 = v85;
    *(&v88 + 1) = v73;
    v153 = v147;
    v133 = v88;
    aBlock = v88;
    v154 = v143;
    v155 = v82;
    type metadata accessor for VariantReloadResult();
    v89 = sub_1BF4E7C44();
    sub_1BF4E8834();
    sub_1BF4E8854();

    if (v149)
    {
      v150 = v149;
      v120(v71, v146, v73);
      *&aBlock = 0;
      sub_1BF4E8864();
      v90 = v150;
      if (MEMORY[0x1BFB58A40](v150, v73, v89, v82))
      {

        v91 = v137;
        v92 = v148;
        v93 = v117;
        v117(v137, v148, v85);
        v149 = 0;
      }

      else
      {
        v91 = v137;
        v92 = v148;
        v93 = v117;
        v117(v137, v148, v85);
        v149 = v90;
      }

      v95 = v144;
      swift_beginAccess();
      v94 = v85;
      sub_1BF4E8834();
      sub_1BF4E8864();
      swift_endAccess();
      v96 = v142;
    }

    else
    {
      v94 = v85;
      v92 = v148;
      v95 = v144;
      v91 = v137;
      v96 = v142;
      v93 = v117;
    }

    v148 = *(v95 + qword_1EDC9AFD0);
    v93(v91, v92, v94);
    v97 = v141;
    v98 = v91;
    v99 = v145;
    v120(v141, v146, v145);
    v100 = v135;
    v101 = (*(v135 + 80) + 80) & ~*(v135 + 80);
    v102 = (v124 + *(v96 + 80) + v101) & ~*(v96 + 80);
    v103 = v96;
    v104 = (v123 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
    v105 = swift_allocObject();
    v106.i64[0] = v121;
    v107 = vzip1q_s64(v106, v147);
    *(v105 + 16) = v133;
    *(v105 + 32) = v107;
    v108 = v143;
    *(v105 + 48) = v134;
    *(v105 + 56) = v108;
    *(v105 + 64) = v132;
    *(v105 + 72) = v125[17];
    (*(v100 + 32))(v105 + v101, v98, v94);
    (v103[4])(v105 + v102, v97, v99);
    *(v105 + v104) = v144;
    v154 = sub_1BF45E908;
    v155 = v105;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v153.i64[0] = sub_1BF38E868;
    v153.i64[1] = &block_descriptor_106;
    v109 = _Block_copy(&aBlock);

    v110 = v126;
    sub_1BF4E8014();
    v150 = MEMORY[0x1E69E7CC0];
    sub_1BF3983D4(&qword_1EDC9F980, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
    sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890);
    v111 = v128;
    v112 = v131;
    sub_1BF4E91A4();
    MEMORY[0x1BFB591B0](0, v110, v111, v109);
    _Block_release(v109);
    (*(v130 + 8))(v111, v112);
    (*(v127 + 8))(v110, v129);
    (*(v139 + 8))(v138, v140);
  }

  return result;
}

uint64_t sub_1BF4513E0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v96 = v4;
  v89 = sub_1BF4E7FF4();
  v5 = *(v89 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BF4E8064();
  v91 = *(v8 - 8);
  v9 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v90 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v86 = &v81 - v13;
  v14 = *(v4 + 10);
  v100 = *(v14 - 8);
  v15 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v87 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v81 - v19);
  os_unfair_lock_assert_owner(*(*(v2 + qword_1EDC9AF58) + 16));
  v21 = qword_1EDCA6870;
  swift_beginAccess();
  v22 = *(v2 + v21);
  v23 = *(v4 + 12);
  v24 = *(v4 + 16);
  v98 = *(v4 + 11);
  v99 = v24;
  sub_1BF4E8834();
  v25 = *(v4 + 14);

  v102 = a1;
  sub_1BF4E8854();

  if (aBlock)
  {
    v84 = v8;
    v83 = aBlock;
    v85 = v5;
    v27 = v100 + 16;
    v28 = *(v100 + 16);
    v29 = v102;
    v28(v20, v102, v14);
    LOBYTE(v112) = 5;
    swift_beginAccess();
    sub_1BF4E8834();
    v101 = v25;
    sub_1BF4E8864();
    swift_endAccess();
    v30 = *(v2 + qword_1EDC9AFB8);
    sub_1BF4C9CF8(v29);
    v95 = v27;
    v94 = v28;
    v28(v20, v29, v14);
    v112 = 0;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD95D0, &qword_1BF4F1C88);
    sub_1BF4E8834();
    sub_1BF4E8864();
    v31 = v101;
    swift_endAccess();
    v32 = qword_1EDCA6870;
    swift_beginAccess();
    v33 = *(v2 + v32);

    sub_1BF4E8854();

    v97 = v23;
    v35 = v99;
    v36 = v96;
    if (aBlock)
    {
      v93 = v20;
      v112 = aBlock;
      MEMORY[0x1EEE9AC00](v34);
      v37 = v98;
      *(&v81 - 8) = v14;
      *(&v81 - 7) = v37;
      v38 = *(v36 + 13);
      *(&v81 - 6) = v97;
      *(&v81 - 5) = v38;
      v39 = *(v36 + 15);
      *(&v81 - 4) = v31;
      *(&v81 - 3) = v39;
      v40 = *(v36 + 17);
      *(&v81 - 2) = v35;
      *(&v81 - 1) = v40;
      swift_getWitnessTable();
      sub_1BF4E8B44();
      v31 = v101;

      v20 = v93;
    }

    v41 = v102;
    v42 = v94;
    v94(v20, v102, v14);
    v112 = 0;
    swift_beginAccess();
    sub_1BF4E8834();
    v43 = v31;
    sub_1BF4E8864();
    swift_endAccess();
    v42(v20, v41, v14);
    v111 = 0;
    swift_beginAccess();
    v44 = *(v36 + 13);
    v93 = *(v36 + 15);
    v45 = v98;
    aBlock = v14;
    v104 = v98;
    v105 = v44;
    v106 = v31;
    v46 = v99;
    v107 = v93;
    v108 = v99;
    type metadata accessor for VariantReloadResult();
    sub_1BF4E7C44();
    sub_1BF4E8834();
    sub_1BF4E8834();
    sub_1BF4E8864();
    swift_endAccess();
    swift_beginAccess();
    sub_1BF4E7334();
    sub_1BF4E8834();
    v47 = v86;
    sub_1BF4E8784();
    sub_1BF38C9B4(v47, &qword_1EBDD9B00, &qword_1BF4F1E50);
    swift_endAccess();
    v48 = qword_1EDC9AF88;
    swift_beginAccess();
    v49 = *(v2 + v48);
    v50 = *(v96 + 17);

    aBlock = v14;
    v104 = v45;
    v105 = v97;
    v106 = v44;
    v96 = v44;
    v107 = v43;
    v108 = v93;
    v109 = v46;
    v110 = v50;
    v86 = v50;
    type metadata accessor for ReloadTaskPair();
    sub_1BF4E8854();

    if (v111)
    {
      sub_1BF4B4014();
      v51 = v94;
      v94(v20, v102, v14);
      v111 = 0;
      swift_beginAccess();
      sub_1BF4E8834();
      sub_1BF4E8864();
      swift_endAccess();
    }

    else
    {
      v51 = v94;
    }

    v52 = v87;
    v51(v87, v102, v14);
    v53 = sub_1BF4E7B34();
    v54 = sub_1BF4E8E84();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = v52;
      v56 = v20;
      v57 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      aBlock = v82;
      *v57 = 136446210;
      v51(v56, v55, v14);
      v58 = *(v100 + 8);
      v58(v55, v14);
      v59 = sub_1BF4E96A4();
      v61 = v60;
      v58(v56, v14);
      v62 = sub_1BF38D65C(v59, v61, &aBlock);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_1BF389000, v53, v54, "%{public}s Removed from store", v57, 0xCu);
      v63 = v82;
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      MEMORY[0x1BFB5A5D0](v63, -1, -1);
      v64 = v57;
      v20 = v56;
      MEMORY[0x1BFB5A5D0](v64, -1, -1);

      v65 = v94;
      v66 = v98;
    }

    else
    {
      (*(v100 + 8))(v52, v14);

      v66 = v98;
      v65 = v51;
    }

    v67 = v97;
    v68 = *(v2 + qword_1EDC9AFD0);
    v65(v20, v102, v14);
    v69 = v100;
    v70 = (*(v100 + 80) + 88) & ~*(v100 + 80);
    v71 = v20;
    v72 = (v88 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    *(v73 + 2) = v14;
    *(v73 + 3) = v66;
    v74 = v96;
    *(v73 + 4) = v67;
    *(v73 + 5) = v74;
    v75 = v93;
    *(v73 + 6) = v101;
    *(v73 + 7) = v75;
    v76 = v86;
    *(v73 + 8) = v99;
    *(v73 + 9) = v76;
    *(v73 + 10) = v83;
    (*(v69 + 32))(&v73[v70], v71, v14);
    *&v73[v72] = v2;
    v107 = sub_1BF45E9D4;
    v108 = v73;
    aBlock = MEMORY[0x1E69E9820];
    v104 = 1107296256;
    v105 = sub_1BF38E868;
    v106 = &block_descriptor_112;
    v77 = _Block_copy(&aBlock);

    v78 = v90;
    sub_1BF4E8014();
    v111 = MEMORY[0x1E69E7CC0];
    sub_1BF3983D4(&qword_1EDC9F980, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
    sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890);
    v79 = v92;
    v80 = v89;
    sub_1BF4E91A4();
    MEMORY[0x1BFB591B0](0, v78, v79, v77);
    _Block_release(v77);
    (*(v85 + 8))(v79, v80);
    (*(v91 + 8))(v78, v84);
  }

  return result;
}

void sub_1BF4520F8(uint64_t a1)
{
  v3 = *(v1 + qword_1EDC9AF58);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1BF45A838(v1, a1);
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

void sub_1BF452178(uint64_t a1, int a2)
{
  v5 = *(v2 + qword_1EDC9AF58);
  os_unfair_lock_lock(*(v5 + 16));
  sub_1BF45B630(v2, a1, a2);
  v6 = *(v5 + 16);

  os_unfair_lock_unlock(v6);
}

uint64_t sub_1BF452200(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v61 = a2;
  v3 = *(*v2 + 80);
  v55 = *(v3 - 8);
  v4 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v57 = v53 - v5;
  v7 = *(v6 + 136);
  v70 = v3;
  v9 = *(v8 + 104);
  v71 = *(v8 + 88);
  v72 = v9;
  v73 = *(v8 + 120);
  v74 = v7;
  v10 = type metadata accessor for ReloadTaskPair();
  v67 = v3;
  v53[1] = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = sub_1BF4E90F4();
  v12 = *(v65 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v53 - v17;
  v19 = qword_1EDC9AF88;
  swift_beginAccess();
  v20 = *(v2 + v19);
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = sub_1BF4E9414();
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v66 = v21 | 0x8000000000000000;
  }

  else
  {
    v25 = -1 << *(v20 + 32);
    v23 = ~v25;
    v22 = v20 + 64;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v24 = v27 & *(v20 + 64);
    v66 = v20;
  }

  v56 = (v55 + 32);
  v64 = TupleTypeMetadata2 - 8;
  v53[0] = v23;
  v28 = (v23 + 64) >> 6;
  v53[2] = v55 + 16;
  v63 = (v12 + 32);
  v58 = (v55 + 8);

  v30 = 0;
  v59 = v28;
  v54 = v22;
  v31 = v66;
  if ((v66 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  v32 = v24;
  v33 = v30;
  if (v24)
  {
LABEL_17:
    v68 = (v32 - 1) & v32;
    v62 = v30;
    v37 = __clz(__rbit64(v32)) | (v33 << 6);
    v38 = v18;
    v39 = v15;
    v40 = v55;
    v41 = v57;
    v42 = v67;
    (*(v55 + 16))(v57, *(v31 + 48) + *(v55 + 72) * v37, v67);
    v43 = *(*(v31 + 56) + 8 * v37);
    v44 = *(TupleTypeMetadata2 + 48);
    v45 = *(v40 + 32);
    v15 = v39;
    v18 = v38;
    v46 = v41;
    v22 = v54;
    v45(v15, v46, v42);
    *&v15[v44] = v43;
    v47 = *(TupleTypeMetadata2 - 8);
    (*(v47 + 56))(v15, 0, 1, TupleTypeMetadata2);

    v35 = v33;
    goto LABEL_23;
  }

  if (v28 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = v28;
  }

  v35 = v34 - 1;
  v36 = v30;
  while (1)
  {
    v33 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      return result;
    }

    if (v33 >= v28)
    {
      break;
    }

    v32 = *(v22 + 8 * v33);
    ++v36;
    if (v32)
    {
      v31 = v66;
      goto LABEL_17;
    }
  }

  v47 = *(TupleTypeMetadata2 - 8);
  (*(v47 + 56))(v15, 1, 1, TupleTypeMetadata2);
  v68 = 0;
LABEL_23:
  while (1)
  {
    (*v63)(v18, v15, v65);
    if ((*(v47 + 48))(v18, 1, TupleTypeMetadata2) == 1)
    {
      return sub_1BF39A9CC();
    }

    v52 = *&v18[*(TupleTypeMetadata2 + 48)];
    sub_1BF4B4014();

    result = (*v58)(v18, v67);
    v30 = v35;
    v24 = v68;
    v28 = v59;
    v31 = v66;
    if ((v66 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    v48 = v30;
    v62 = v24;
    if (sub_1BF4E9444())
    {
      v49 = v57;
      v50 = v67;
      sub_1BF4E9704();
      swift_unknownObjectRelease();
      sub_1BF4E9704();
      swift_unknownObjectRelease();
      v51 = *(TupleTypeMetadata2 + 48);
      (*v56)(v15, v49, v50);
      *&v15[v51] = v69;
      v47 = *(TupleTypeMetadata2 - 8);
      (*(v47 + 56))(v15, 0, 1, TupleTypeMetadata2);
    }

    else
    {
      v47 = *(TupleTypeMetadata2 - 8);
      (*(v47 + 56))(v15, 1, 1, TupleTypeMetadata2);
    }

    v35 = v48;
    v68 = v62;
  }
}

uint64_t sub_1BF45289C()
{
  v1 = *v0;
  v2 = qword_1EDC9AF88;
  swift_beginAccess();
  v3 = *(v0 + v2);

  v6 = v1[5];
  v5 = v1[7];
  v7 = v1[6];
  v8 = v1[8];
  type metadata accessor for ReloadTaskPair();
  sub_1BF4E8854();

  if (v9)
  {
    sub_1BF4B4014();
  }

  return result;
}

uint64_t sub_1BF4529A0(uint64_t a1)
{
  v2 = *v1;
  v7[5] = *(v1 + qword_1EDC9AF58);
  v7[3] = a1;
  v3 = type metadata accessor for UnfairLock();
  v4 = *(v2 + 96);
  v5 = sub_1BF4E90F4();

  sub_1BF38D774(sub_1BF45DC40, v7, v3, v5, &off_1F3DEE010);
}

uint64_t sub_1BF452A64(uint64_t a1)
{
  v95 = *v1;
  v2 = v95[10];
  v93 = *(v2 - 8);
  v3 = v93[8];
  MEMORY[0x1EEE9AC00](a1);
  v85 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v83 = &v73 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v73 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v73 - v11;
  os_unfair_lock_assert_owner(*(*(v1 + qword_1EDC9AF58) + 16));
  v98 = v1;
  v82 = qword_1EDC9AF50;
  v12 = sub_1BF4E7B34();
  v13 = sub_1BF4E8E84();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1BF389000, v12, v13, "System migration completed", v14, 2u);
    MEMORY[0x1BFB5A5D0](v14, -1, -1);
  }

  v15 = qword_1EDC9AF48;
  v16 = v98;
  swift_beginAccess();
  v17 = *(v16 + v15);
  v97 = v95[14];
  v18 = nullsub_1(v17, v2, &type metadata for ReloadState, v97);
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v81 = qword_1EDC9AF88;
  v23 = (v20 + 63) >> 6;
  v24 = v93 + 2;
  v87 = v93 + 4;
  v90 = (v93 + 1);
  v92 = v18;

  v26 = 0;
  *&v27 = 136446210;
  v79 = v27;
  v86 = v23;
  v96 = v2;
  v91 = v9;
  v94 = v24;
  while (v22)
  {
LABEL_13:
    v29 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v30 = v93;
    v31 = *(v92 + 48) + v93[9] * (v29 | (v26 << 6));
    v32 = v88;
    v89 = v93[2];
    v89(v88, v31, v2);
    (v30[4])(v9, v32, v2);
    v33 = qword_1EDCA6870;
    v34 = v98;
    swift_beginAccess();
    v35 = *(v34 + v33);
    v2 = v96;
    v37 = v95[11];
    v36 = v95[12];
    v38 = v95[16];
    sub_1BF4E8834();

    sub_1BF4E8854();

    v39 = v100[0];
    if (v100[0])
    {
      if (MEMORY[0x1BFB58A40](v100[0], v37, v36, v38))
      {
        goto LABEL_6;
      }

      v40 = qword_1EDC9AF48;
      v41 = v98;
      swift_beginAccess();
      v42 = *(v41 + v40);
      v2 = v96;

      sub_1BF4E8854();

      if (LOBYTE(v100[0]) == 4)
      {
LABEL_6:
        v9 = v91;
        (*v90)(v91, v2);
      }

      else
      {
        v84 = v39;
        v43 = qword_1EDC9AF88;
        v44 = v2;
        v45 = v98;
        swift_beginAccess();
        v46 = *(v45 + v43);

        v47 = v95[13];
        v48 = v95[15];
        v49 = v95[17];
        v100[0] = v44;
        v100[1] = v37;
        v100[2] = v36;
        v100[3] = v47;
        v78 = v47;
        v100[4] = v97;
        v100[5] = v48;
        v100[6] = v38;
        v100[7] = v49;
        v50 = type metadata accessor for ReloadTaskPair();
        v9 = v91;
        v80 = v50;
        sub_1BF4E8854();

        v51 = v100[0];
        LOBYTE(v100[0]) = 0;
        sub_1BF399684(v100, v9);
        if (v51 && (v52 = sub_1BF39B43C()) != 0)
        {
          v53 = v52;
        }

        else
        {
          v77 = v51;
          v54 = v83;
          v55 = v96;
          v56 = v89;
          v89(v83, v9, v96);
          v57 = sub_1BF4E7B34();
          v58 = sub_1BF4E8E64();
          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v74 = v59;
            v76 = swift_slowAlloc();
            v100[0] = v76;
            *v59 = v79;
            v75 = v57;
            v60 = v54;
            v61 = v85;
            v56(v85, v60, v55);
            v62 = *v90;
            (*v90)(v60, v55);
            v63 = sub_1BF4E96A4();
            v65 = v64;
            v62(v61, v55);
            v66 = sub_1BF38D65C(v63, v65, v100);

            v67 = v74;
            *(v74 + 1) = v66;
            v68 = v75;
            v69 = v67;
            _os_log_impl(&dword_1BF389000, v75, v58, "%{public}s Unexpectedly found no reload tasks for key", v67, 0xCu);
            v70 = v76;
            __swift_destroy_boxed_opaque_existential_1Tm(v76);
            MEMORY[0x1BFB5A5D0](v70, -1, -1);
            MEMORY[0x1BFB5A5D0](v69, -1, -1);
          }

          else
          {
            (*v90)(v54, v55);
          }

          v71 = v91;
          v72 = sub_1BF455294(v91, v84);
          v53 = sub_1BF39B43C();
          v89(v85, v71, v55);
          v99 = v72;
          swift_beginAccess();
          sub_1BF4E8834();

          sub_1BF4E8864();
          swift_endAccess();

          if (!v53)
          {
            goto LABEL_28;
          }

          v9 = v91;
        }

        sub_1BF397638(v53);

        v2 = v96;
        result = (*v90)(v9, v96);
      }
    }

    else
    {
      result = (*v90)(v9, v2);
    }

    v23 = v86;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v23)
    {
    }

    v22 = *(v19 + 8 * v28);
    ++v26;
    if (v22)
    {
      v26 = v28;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1BF4533A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v219 = a3;
  v260 = a1;
  v234 = *v3;
  v5 = v234;
  v241 = sub_1BF4E7334();
  v225 = *(v241 - 8);
  v6 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v241);
  v211 = &v206 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_1BF4E7B54();
  v237 = *(v243 - 8);
  v8 = *(v237 + 64);
  MEMORY[0x1EEE9AC00](v243);
  v221 = &v206 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for ReloadConfiguration(0);
  v10 = *(*(v218 - 8) + 64);
  MEMORY[0x1EEE9AC00](v218);
  v220 = &v206 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = v5[10];
  v271 = *(v266 - 1);
  v12 = *(v271 + 8);
  MEMORY[0x1EEE9AC00](v13);
  v208 = &v206 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v207 = &v206 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v209 = &v206 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v242 = &v206 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v232 = &v206 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v210 = &v206 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v235 = &v206 - v27;
  v28 = v5[12];
  v259 = v5[17];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v252 = sub_1BF4E90F4();
  v263 = *(v252 - 8);
  v29 = *(v263 + 8);
  MEMORY[0x1EEE9AC00](v252);
  v231 = &v206 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v262 = &v206 - v32;
  v251 = sub_1BF4E90F4();
  v244 = *(v251 - 8);
  v33 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](v251);
  v35 = &v206 - v34;
  v36 = *(v28 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v261 = (&v206 - v39);
  v40 = v5[11];
  v258 = *(v40 - 8);
  v41 = *(v258 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v215 = &v206 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v230 = &v206 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v206 - v47;
  v49 = sub_1BF4E90F4();
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v256 = &v206 - v51;
  v238 = v3;
  v52 = v5[16];
  v239 = a2;
  v53 = nullsub_1(a2, v40, v28, v52);
  if ((v53 & 0xC000000000000001) != 0)
  {
    v54 = v53;
    v55 = sub_1BF4E9414();
    v56 = 0;
    v57 = 0;
    v269 = v55 | 0x8000000000000000;
    v270 = 0;
    v53 = v54;
  }

  else
  {
    v58 = -1 << *(v53 + 32);
    v56 = ~v58;
    v59 = *(v53 + 64);
    v269 = v53;
    v270 = v53 + 64;
    v60 = -v58;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    else
    {
      v61 = -1;
    }

    v57 = v61 & v59;
  }

  v267 = (v258 + 56);
  v216 = v56;
  v268 = (v56 + 64) >> 6;
  v272 = (v258 + 16);
  v264 = (v36 + 48);
  v265 = (v258 + 32);
  v249 = (v36 + 32);
  v248 = v259 + 2;
  v247 = AssociatedTypeWitness - 8;
  v246 = (v263 + 8);
  v229 = v259 + 3;
  v240 = (v225 + 56);
  v228 = v259 + 6;
  v227 = "no reloaded content";
  v226 = v259 + 9;
  v255 = (v271 + 16);
  v263 = (v258 + 8);
  v236 = (v271 + 8);
  v245 = (v36 + 8);
  v244 += 8;
  v217 = v53;

  v271 = 0;
  *&v63 = 136446466;
  v214 = v63;
  v64 = v262;
  v65 = v261;
  v66 = v256;
  v233 = v28;
  v253 = v52;
  v250 = v35;
  v254 = v48;
  while ((v269 & 0x8000000000000000) != 0)
  {
    if (!sub_1BF4E9454())
    {
LABEL_28:
      (*v267)(v66, 1, 1, v40);
      sub_1BF39A9CC();
      LOBYTE(v274) = 3;
      sub_1BF399684(&v274, v260);
      v105 = v259;
      v106 = v217;
      v107 = v52;
      if (v219)
      {
        v270 = sub_1BF39B43C();

        sub_1BF4B4014();
      }

      else
      {
        v270 = 0;
      }

      v109 = v234[13];
      v108 = v234[14];
      v110 = v234[15];
      v111 = v266;
      v274 = v266;
      v275 = v40;
      v276 = v28;
      v277 = v109;
      v278 = v108;
      v279 = v110;
      v280 = v107;
      v281 = v105;
      v268 = type metadata accessor for ReloadTaskPair();
      v272 = ReloadTaskPair.__allocating_init()();
      v274 = v106;
      sub_1BF4E87B4();

      swift_getWitnessTable();
      v112 = sub_1BF4E8D94();
      v113 = v105;
      v114 = v112;
      v274 = v111;
      v275 = v40;
      v276 = v28;
      v277 = v109;
      v262 = v109;
      v269 = v108;
      v278 = v108;
      v279 = v110;
      v280 = v107;
      v281 = v113;
      v115 = type metadata accessor for ReloadTask();
      v116 = v238;
      v117 = sub_1BF3B29A4();
      v118 = v242;
      v271 = *v255;
      (v271)(v242, v260, v111);
      v119 = *v240;
      v120 = v220;
      v121 = v241;
      (*v240)(v220, 1, 1, v241);
      v122 = v218;
      v123 = *(v218 + 36);
      *(v120 + *(v218 + 20)) = 1;
      *(v120 + v122[7]) = 1;
      *(v120 + v122[6]) = 0xA000000000000030;
      *(v120 + v122[8]) = 1;
      *(v120 + v123) = 0;
      v124 = *(v237 + 16);
      v265 = qword_1EDC9AF50;
      v125 = v221;
      v237 += 16;
      v263 = v124;
      (v124)(v221, v116 + qword_1EDC9AF50, v243);

      v267 = v114;
      v264 = v115;
      v126 = ReloadTask.__allocating_init(identifier:key:variantKeys:configuration:logger:)(v117, v118, v114, v120, v125);
      sub_1BF3A8AF8(v126);
      v127 = v270;
      if (v270)
      {
        v128 = v270 + *(*v270 + 168);
        v274 = *(v128 + v122[6]);
        v129 = v274;
        v273[0] = 0xA000000000000030;

        sub_1BF39C510(v129);
        LOBYTE(v129) = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v274, v273);
        sub_1BF39C9A4(v274);
        if ((v129 & 1) == 0)
        {
          v142 = v209;
          v143 = v266;
          v144 = v271;
          (v271)(v209, v260, v266);
          v145 = sub_1BF4E7B34();
          v146 = sub_1BF4E8E84();
          if (os_log_type_enabled(v145, v146))
          {
            v147 = swift_slowAlloc();
            v148 = swift_slowAlloc();
            v274 = v148;
            *v147 = 136446210;
            v149 = v242;
            v144(v242, v142, v266);
            v150 = *v236;
            (*v236)(v142, v266);
            v151 = sub_1BF4E96A4();
            v153 = v152;
            v150(v149, v266);
            v144 = v271;
            v154 = sub_1BF38D65C(v151, v153, &v274);

            *(v147 + 4) = v154;
            _os_log_impl(&dword_1BF389000, v145, v146, "%{public}s Has a current task; queueing it for when the store becomes unblocked.", v147, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v148);
            MEMORY[0x1BFB5A5D0](v148, -1, -1);
            v155 = v147;
            v143 = v266;
            MEMORY[0x1BFB5A5D0](v155, -1, -1);

            v141 = v272;
          }

          else
          {
            (*v236)(v142, v143);

            v141 = v272;
            v149 = v242;
          }

          v170 = v238;
          v171 = sub_1BF3B29A4();
          v172 = v260;
          v144(v149, v260, v143);
          v173 = v128;
          v174 = v220;
          sub_1BF39B31C(v173, v220, type metadata accessor for ReloadConfiguration);
          v175 = v221;
          (v263)(v221, v265 + v170, v243);
          v176 = v175;
          v177 = v271;
          v178 = ReloadTask.__allocating_init(identifier:key:variantKeys:configuration:logger:)(v171, v149, v267, v174, v176);
          sub_1BF410244(v178);

          v177(v149, v172, v143);
          goto LABEL_59;
        }

        v130 = v260;
        v131 = v266;
        v132 = v271;
        if (v219)
        {
          v133 = sub_1BF3AB3E8();
          v134 = v242;
          if (v133)
          {
            v135 = v133 + *(*v133 + 168);
            v274 = *(v135 + v122[6]);
            v136 = v274;
            v273[0] = 0xA000000000000030;

            sub_1BF39C510(v136);
            LOBYTE(v136) = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v274, v273);
            sub_1BF39C9A4(v274);
            if (v136)
            {

              goto LABEL_50;
            }

            v270 = v127;
            v181 = v207;
            v132(v207, v130, v131);
            v182 = sub_1BF4E7B34();
            v183 = sub_1BF4E8E84();
            if (os_log_type_enabled(v182, v183))
            {
              v184 = swift_slowAlloc();
              v261 = swift_slowAlloc();
              v274 = v261;
              *v184 = 136446210;
              v134 = v242;
              v132(v242, v181, v131);
              LODWORD(v259) = v183;
              v185 = *v236;
              (*v236)(v181, v131);
              v186 = sub_1BF4E96A4();
              v188 = v187;
              v185(v134, v131);
              v189 = sub_1BF38D65C(v186, v188, &v274);

              *(v184 + 4) = v189;
              _os_log_impl(&dword_1BF389000, v182, v259, "%{public}s Has a queued task; queueing it for when the store becomes unblocked.", v184, 0xCu);
              v190 = v261;
              __swift_destroy_boxed_opaque_existential_1Tm(v261);
              MEMORY[0x1BFB5A5D0](v190, -1, -1);
              v191 = v184;
              v130 = v260;
              MEMORY[0x1BFB5A5D0](v191, -1, -1);

              v141 = v272;
            }

            else
            {
              (*v236)(v181, v131);

              v141 = v272;
              v134 = v242;
            }

            v200 = v238;
            v201 = sub_1BF3B29A4();
            (v271)(v134, v130, v131);
            v202 = v220;
            sub_1BF39B31C(v135, v220, type metadata accessor for ReloadConfiguration);
            v203 = v265 + v200;
            v204 = v221;
            (v263)(v221, v203, v243);
            v205 = ReloadTask.__allocating_init(identifier:key:variantKeys:configuration:logger:)(v201, v134, v267, v202, v204);
            sub_1BF410244(v205);

            v132 = v271;
          }

          else
          {

LABEL_50:
            v141 = v272;
          }

LABEL_58:
          v132(v134, v130, v131);
LABEL_59:
          v273[3] = v141;
          swift_beginAccess();
          sub_1BF4E8834();

          sub_1BF4E8864();
          swift_endAccess();
        }

        v141 = v272;
      }

      else
      {
        v261 = v119;
        v137 = qword_1EDC9AF68;
        swift_beginAccess();
        v138 = *(v116 + v137);

        v139 = v210;
        v131 = v266;
        sub_1BF4E8854();

        v140 = v225;
        if ((*(v225 + 48))(v139, 1, v121) != 1)
        {
          (*(v140 + 32))(v211, v139, v121);
          sub_1BF4E72A4();
          if (v156 <= -2.0)
          {

            v179 = v260;
            v180 = v121;
            v141 = v272;
          }

          else
          {
            v157 = v208;
            v158 = v271;
            (v271)(v208, v260, v131);
            v159 = sub_1BF4E7B34();
            v160 = sub_1BF4E8E84();
            if (os_log_type_enabled(v159, v160))
            {
              v161 = swift_slowAlloc();
              v259 = swift_slowAlloc();
              v273[0] = v259;
              *v161 = 136446210;
              v162 = v242;
              v158(v242, v157, v131);
              v163 = *v236;
              (*v236)(v157, v131);
              LODWORD(v258) = v160;
              v164 = sub_1BF4E96A4();
              v166 = v165;
              v163(v162, v131);
              v158 = v271;
              v167 = sub_1BF38D65C(v164, v166, v273);

              *(v161 + 4) = v167;
              _os_log_impl(&dword_1BF389000, v159, v258, "%{public}s Granting a reload due to keybag grace period for when the store becomes unblocked.", v161, 0xCu);
              v168 = v259;
              __swift_destroy_boxed_opaque_existential_1Tm(v259);
              MEMORY[0x1BFB5A5D0](v168, -1, -1);
              v169 = v161;
              v116 = v238;
              MEMORY[0x1BFB5A5D0](v169, -1, -1);

              v141 = v272;
            }

            else
            {
              (*v236)(v157, v131);

              v141 = v272;
              v162 = v242;
            }

            v192 = sub_1BF3B29A4();
            v193 = v260;
            v158(v162, v260, v131);
            v179 = v193;
            v194 = v220;
            v180 = v241;
            (v261)(v220, 1, 1, v241);
            v195 = v218;
            v196 = *(v218 + 36);
            *(v194 + *(v218 + 20)) = 1;
            *(v194 + v195[7]) = 1;
            *(v194 + v195[6]) = 0xA000000000000020;
            *(v194 + v195[8]) = 1;
            *(v194 + v196) = 0;
            v197 = v221;
            (v263)(v221, v265 + v116, v243);
            v198 = ReloadTask.__allocating_init(identifier:key:variantKeys:configuration:logger:)(v192, v162, v267, v194, v197);
            sub_1BF410244(v198);
          }

          swift_beginAccess();
          sub_1BF4E8834();
          v199 = v235;
          sub_1BF4E8784();
          sub_1BF38C9B4(v199, &qword_1EBDD9B00, &qword_1BF4F1E50);
          swift_endAccess();
          (*(v225 + 8))(v211, v180);
          (v271)(v242, v179, v131);
          goto LABEL_59;
        }

        sub_1BF38C9B4(v139, &qword_1EBDD9B00, &qword_1BF4F1E50);
        v130 = v260;
        v132 = v271;
        v141 = v272;
      }

      v134 = v242;
      goto LABEL_58;
    }

    sub_1BF4E9704();
    v64 = v262;
    swift_unknownObjectRelease();
    v65 = v261;
LABEL_19:
    (*v267)(v66, 0, 1, v40);
    (*v265)(v48, v66, v40);
    sub_1BF4E8854();
    if ((*v264)(v35, 1, v28) == 1)
    {
      (*v263)(v48, v40);
      result = (*v244)(v35, v251);
    }

    else
    {
      (*v249)(v65, v35, v28);
      v70 = v28;
      v71 = v259;
      v72 = v65;
      (v259[2])(v70, v259);
      v73 = AssociatedTypeWitness;
      v74 = v64;
      v75 = *(AssociatedTypeWitness - 8);
      if ((*(v75 + 48))(v74, 1, AssociatedTypeWitness) == 1)
      {
        (*v245)(v72, v70);
        v48 = v254;
        (*v263)(v254, v40);
        result = (*v246)(v74, v252);
        v28 = v70;
        v52 = v253;
        v64 = v74;
        v35 = v250;
        v65 = v72;
        v66 = v256;
      }

      else
      {
        (*v246)(v74, v252);
        v76 = v231;
        (*(v75 + 56))(v231, 1, 1, v73);
        (v71[3])(v76, v70, v71);
        v77 = v235;
        _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
        (*v240)(v77, 0, 1, v241);
        (v71[6])(v77, v70, v71);
        (v71[9])(0xD000000000000025, v227 | 0x8000000000000000, v70, v71);
        if (qword_1EDC9D4C0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v243, qword_1EDCA6940);
        v78 = *v255;
        v79 = v232;
        v80 = v266;
        (*v255)(v232, v260, v266);
        v81 = v230;
        v48 = v254;
        v223 = *v272;
        v223(v230, v254, v40);
        v82 = sub_1BF4E7B34();
        v224 = sub_1BF4E8E84();
        v83 = os_log_type_enabled(v82, v224);
        v66 = v256;
        if (v83)
        {
          v84 = swift_slowAlloc();
          v222 = v84;
          v213 = swift_slowAlloc();
          v274 = v213;
          *v84 = v214;
          v212 = v82;
          v85 = v242;
          v78(v242, v79, v80);
          v86 = v81;
          v87 = v234;
          v88 = *v236;
          (*v236)(v79, v266);
          v89 = v87[13];
          v90 = sub_1BF4E96A4();
          v92 = v91;
          v88(v85, v266);
          v93 = sub_1BF38D65C(v90, v92, &v274);

          v94 = v222;
          *(v222 + 1) = v93;
          *(v94 + 6) = 2082;
          v95 = v215;
          v223(v215, v86, v40);
          v96 = *v263;
          v97 = v86;
          v48 = v254;
          (*v263)(v97, v40);
          v98 = v87[15];
          v99 = sub_1BF4E96A4();
          v101 = v100;
          v96(v95, v40);
          v102 = sub_1BF38D65C(v99, v101, &v274);

          v103 = v222;
          *(v222 + 14) = v102;
          v82 = v212;
          _os_log_impl(&dword_1BF389000, v212, v224, "%{public}s:%{public}s Content discarded.", v103, 0x16u);
          v104 = v213;
          swift_arrayDestroy();
          MEMORY[0x1BFB5A5D0](v104, -1, -1);
          MEMORY[0x1BFB5A5D0](v103, -1, -1);
        }

        else
        {
          v96 = *v263;
          (*v263)(v81, v40);
          (*v236)(v79, v80);
        }

        v65 = v261;
        v28 = v233;
        (*v245)(v261, v233);
        result = (v96)(v48, v40);
        v52 = v253;
        v64 = v262;
        v35 = v250;
      }
    }
  }

  v67 = v271;
  if (v57)
  {
    v68 = v271;
LABEL_16:
    v69 = __clz(__rbit64(v57));
    v57 &= v57 - 1;
    (*(v258 + 16))(v66, *(v269 + 48) + *(v258 + 72) * (v69 | (v68 << 6)), v40);
    goto LABEL_19;
  }

  while (1)
  {
    v68 = (v67 + 1);
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v68 >= v268)
    {
      goto LABEL_28;
    }

    v57 = *(v270 + 8 * v68);
    ++v67;
    if (v57)
    {
      v271 = v68;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF455294(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v4 = *v2;
  v5 = *v2;
  v6 = sub_1BF4E7B54();
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v37.i8[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v4[10];
  v39 = v9;
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v37.i8[-v12];
  v13 = type metadata accessor for ReloadConfiguration(0);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v45 = v37.i64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37.i8[-v18];
  v20.i64[0] = v9;
  v21 = v4[16];
  v46 = *(v5 + 11);
  v38 = vzip1q_s64(v20, v46);
  v37 = vdupq_laneq_s64(v46, 1);
  v22 = nullsub_1(a2, v46.i64[0], v46.i64[1], v21);
  v23 = sub_1BF4E7334();
  (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
  v24 = v14[11];
  v19[v14[7]] = 1;
  *&v19[v14[9]] = 1;
  *&v19[v14[8]] = 0xA000000000000030;
  v19[v14[10]] = 1;
  v19[v24] = 0;
  v41 = v4[15];
  v40 = v4[17];
  v42 = *(v5 + 13);
  *&v25 = vdupq_laneq_s64(v42, 1).u64[0];
  *(&v25 + 1) = v41;
  *v51 = v38;
  *&v51[16] = vzip1q_s64(v37, v42);
  *&v26 = v21;
  *(&v26 + 1) = v40;
  v52 = v26;
  *&v51[32] = v25;
  v38.i64[0] = type metadata accessor for ReloadTask();

  v27 = sub_1BF3B29A4();
  v28 = v43;
  v29 = v39;
  (*(v44 + 16))(v43, v47, v39);
  *v51 = v22;
  sub_1BF4E87B4();

  swift_getWitnessTable();
  v30 = sub_1BF4E8D94();
  v31 = v45;
  sub_1BF39B31C(v19, v45, type metadata accessor for ReloadConfiguration);
  v32 = v2 + qword_1EDC9AF50;
  v33 = v48;
  (*(v49 + 16))(v48, v32, v50);
  ReloadTask.__allocating_init(identifier:key:variantKeys:configuration:logger:)(v27, v28, v30, v31, v33);
  *v51 = v29;
  *&v51[8] = v46;
  *&v51[24] = v42;
  *&v51[40] = v41;
  *&v52 = v21;
  *(&v52 + 1) = v40;
  type metadata accessor for ReloadTaskPair();
  v34 = ReloadTaskPair.__allocating_init()();

  sub_1BF3A8AF8(v35);

  sub_1BF45EABC(v19, type metadata accessor for ReloadConfiguration);
  return v34;
}

uint64_t sub_1BF455744(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v22 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v22 - v7;
  v9 = type metadata accessor for ReloadConfiguration(0);
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BF4E7334();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = v10[11];
  v13[v10[7]] = 1;
  *&v13[v10[9]] = 1;
  *&v13[v10[8]] = v15 | 0x2000000000000000;
  v13[v10[10]] = 1;
  v23 = v13;
  v13[v16] = 0;

  v17 = sub_1BF38D3FC();
  if (!sub_1BF4E8C34())
  {
LABEL_11:

    return sub_1BF45EABC(v23, type metadata accessor for ReloadConfiguration);
  }

  v18 = 0;
  while (1)
  {
    v19 = sub_1BF4E8C14();
    sub_1BF4E8BD4();
    if (v19)
    {
      (*(v6 + 16))(v8, v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, v5);
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_1BF4E9304();
    if (v22 != 8)
    {
      break;
    }

    v24[0] = result;
    (*(v6 + 16))(v8, v24, v5);
    swift_unknownObjectRelease();
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

LABEL_5:
    v24[2] = v2;
    v24[3] = v23;
    v24[4] = v8;
    sub_1BF3B1E44(sub_1BF3C40E0, v24, MEMORY[0x1E69E7CA8] + 8);
    (*(v6 + 8))(v8, v5);
    ++v18;
    if (v20 == sub_1BF4E8C34())
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF455A54(uint64_t a1, _BYTE *a2, uint64_t a3, id a4)
{
  v5 = v4;
  v81 = a1;
  v82 = a2;
  v76 = *v4;
  v8 = sub_1BF4E7334();
  v74 = *(v8 - 8);
  v75 = v8;
  v9 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ReloadConfiguration(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C8, &qword_1BF4F1AB0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v70 - v25;
  os_unfair_lock_assert_owner(*(*(v4 + qword_1EDC9AF58) + 16));
  v27 = *(v4 + qword_1EDC9AF70);
  v28 = *(*a3 + 144);
  v78 = *(*a3 + 168);
  v79 = v28;
  sub_1BF484F04();
  v80 = v84;
  v77 = v26;
  sub_1BF3AB308(v26, v23);
  if ((*(v16 + 48))(v23, 1, v15) == 1)
  {
    sub_1BF38C9B4(v23, &qword_1EBDD95C8, &qword_1BF4F1AB0);
    v29 = qword_1EDC9AF50;
    v84 = 0;
    v85 = 0xE000000000000000;
    sub_1BF4E92E4();
    v30 = sub_1BF39B444();
    v32 = v31;

    v84 = v30;
    v85 = v32;
    MEMORY[0x1BFB58C90](0x2064616F6C655220, 0xEE0064656C696166);
    v33 = v84;
    v34 = v85;
    v35 = a4;
    sub_1BF4A8CF8(v33, v34, v5 + v29, v35);

    v36 = v77;
  }

  else
  {
    v37 = v5;
    v72 = a4;
    sub_1BF3B4C44(v23, v19, type metadata accessor for ReloadConfiguration);
    sub_1BF39B31C(v19, v14, type metadata accessor for ReloadConfiguration.ReloadType);
    v38 = v74;
    v39 = v75;
    v40 = v19;
    if ((*(v74 + 48))(v14, 1, v75) == 1)
    {
      v41 = qword_1EDC9AF50;
      v84 = 0;
      v85 = 0xE000000000000000;
      sub_1BF4E92E4();
      v42 = sub_1BF39B444();
      v44 = v43;

      v84 = v42;
      v85 = v44;
      MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4FBD50);
      v83 = *&v19[*(v15 + 28)];
      v45 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v45);

      MEMORY[0x1BFB58C90](0xD000000000000012, 0x80000001BF4FBD70);
      v46 = v84;
      v47 = v85;
      a4 = v72;
      v48 = v72;
      sub_1BF4A8CF8(v46, v47, v37 + v41, v48);

      v49 = v19;
    }

    else
    {
      v50 = v38;
      v71 = v40;
      v51 = v73;
      (*(v38 + 32))(v73, v14, v39);
      v70 = qword_1EDC9AF50;
      v84 = 0;
      v85 = 0xE000000000000000;
      sub_1BF4E92E4();
      v52 = sub_1BF39B444();
      v54 = v53;

      v84 = v52;
      v85 = v54;
      MEMORY[0x1BFB58C90](0xD000000000000024, 0x80000001BF4FBD20);
      if (qword_1EDC9F0F0 != -1)
      {
        swift_once();
      }

      v55 = qword_1EDC9F0F8;
      v56 = sub_1BF4E7254();
      v57 = [v55 stringFromDate_];

      v58 = sub_1BF4E8914();
      v60 = v59;

      MEMORY[0x1BFB58C90](v58, v60);

      v61 = v84;
      v62 = v85;
      a4 = v72;
      v63 = v72;
      sub_1BF4A8CF8(v61, v62, v37 + v70, v63);

      (*(v50 + 8))(v51, v39);
      v49 = v71;
    }

    sub_1BF45EABC(v49, type metadata accessor for ReloadConfiguration);
    v36 = v77;
  }

  v64 = v80;
  LOBYTE(v84) = v80;
  v65 = v79;
  if (sub_1BF456FD4(a3 + v79, a3 + v78, v36, &v84, a4))
  {
    v84 = *(a3 + *(*a3 + 152));
    v66 = *(v76 + 88);
    v67 = *(v76 + 128);
    sub_1BF4E8D84();

    swift_getWitnessTable();
    v68 = sub_1BF4E8CB4();
    sub_1BF4561CC(a3 + v65, v68, 0xD000000000000017, 0x80000001BF4FBD00);
  }

  result = sub_1BF3AB298(v36, v81);
  *v82 = v64;
  return result;
}

uint64_t sub_1BF4561CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v116 = a4;
  v111 = a3;
  v114 = a2;
  v109 = *v4;
  v6 = v109;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v108 = &v90 - v9;
  v10 = v109[10];
  v140 = *(v10 - 8);
  v11 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v107 = &v90 - v15;
  v16 = v6[17];
  v17 = v6[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v127 = sub_1BF4E90F4();
  v132 = *(v127 - 8);
  v18 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v106 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v126 = &v90 - v21;
  v125 = sub_1BF4E90F4();
  v119 = *(v125 - 8);
  v22 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v136 = &v90 - v23;
  v24 = *(v17 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v129 = &v90 - v27;
  v28 = v6[11];
  v128 = *(v28 - 8);
  v29 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v93 = &v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v115 = &v90 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v130 = &v90 - v35;
  v91 = v36;
  MEMORY[0x1EEE9AC00](v37);
  v141 = &v90 - v38;
  os_unfair_lock_assert_owner(*(*(v4 + qword_1EDC9AF58) + 16));
  v39 = qword_1EDCA6870;
  swift_beginAccess();
  v40 = *(v4 + v39);
  v41 = v6[16];
  v138 = v17;
  v135 = v41;
  sub_1BF4E8834();
  v112 = v4;
  v42 = v6[14];

  v110 = a1;
  sub_1BF4E8854();

  v137 = v142;
  if (v142)
  {
    if (sub_1BF4E8C34())
    {
      v105 = v10;
      v45 = 0;
      v103 = qword_1EDC9AF50;
      v46 = v128;
      v47 = (v128 + 16);
      v133 = (v24 + 48);
      v134 = (v128 + 32);
      v124 = (v24 + 32);
      v123 = v16 + 16;
      v122 = AssociatedTypeWitness - 8;
      v121 = (v132 + 8);
      v102 = (v140 + 16);
      v132 = v128 + 8;
      v101 = (v140 + 8);
      v100 = v16 + 24;
      v99 = v16 + 48;
      v98 = 0x80000001BF4FBCE0;
      v97 = v16 + 72;
      v120 = (v24 + 8);
      v119 += 8;
      *&v44 = 136446722;
      v92 = v44;
      v48 = v114;
      v49 = v130;
      v104 = v16;
      v139 = (v128 + 16);
      while (1)
      {
        v51 = sub_1BF4E8C14();
        sub_1BF4E8BD4();
        if (v51)
        {
          v52 = *(v46 + 16);
          result = (v52)(v141, v48 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v45, v28);
        }

        else
        {
          result = sub_1BF4E9304();
          if (v91 != 8)
          {
            goto LABEL_22;
          }

          v142 = result;
          v52 = *v47;
          (*v47)(v141, &v142, v28);
          result = swift_unknownObjectRelease();
        }

        v53 = v136;
        if (__OFADD__(v45, 1))
        {
          break;
        }

        v140 = v45 + 1;
        (*v134)(v49, v141, v28);
        v54 = v49;
        v55 = v138;
        sub_1BF4E8854();
        if ((*v133)(v53, 1, v55) == 1)
        {
          (*v132)(v54, v28);
          (*v119)(v53, v125);
          v49 = v54;
        }

        else
        {
          v56 = v129;
          (*v124)(v129, v53, v55);
          v57 = v126;
          (*(v16 + 16))(v55, v16);
          v58 = *(AssociatedTypeWitness - 8);
          if ((*(v58 + 48))(v57, 1) == 1)
          {
            (*v120)(v56, v55);
            v49 = v130;
            (*v132)(v130, v28);
            (*v121)(v57, v127);
          }

          else
          {
            v118 = v58;
            (*v121)(v57, v127);
            v59 = v107;
            v60 = v105;
            v117 = *v102;
            (v117)(v107, v110, v105);
            v61 = v115;
            v52(v115, v130, v28);

            v62 = sub_1BF4E7B34();
            v63 = sub_1BF4E8E84();

            v113 = v63;
            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              v96 = swift_slowAlloc();
              v142 = v96;
              *v64 = v92;
              v95 = v62;
              v65 = v94;
              (v117)(v94, v59, v60);
              v66 = *v101;
              (*v101)(v59, v60);
              v67 = v109[13];
              v68 = sub_1BF4E96A4();
              v70 = v69;
              v66(v65, v60);
              v71 = sub_1BF38D65C(v68, v70, &v142);

              *(v64 + 4) = v71;
              *(v64 + 12) = 2082;
              v72 = v64;
              v73 = v93;
              v74 = v115;
              v52(v93, v115, v28);
              v75 = *v132;
              (*v132)(v74, v28);
              v76 = v109[15];
              v77 = sub_1BF4E96A4();
              v79 = v78;
              v117 = v75;
              v75(v73, v28);
              v80 = sub_1BF38D65C(v77, v79, &v142);

              *(v72 + 14) = v80;
              *(v72 + 22) = 2082;
              v81 = v111;
              *(v72 + 24) = sub_1BF38D65C(v111, v116, &v142);
              v82 = v95;
              _os_log_impl(&dword_1BF389000, v95, v113, "%{public}s:%{public}s Purged content: %{public}s", v72, 0x20u);
              v83 = v96;
              swift_arrayDestroy();
              MEMORY[0x1BFB5A5D0](v83, -1, -1);
              v84 = v116;
              MEMORY[0x1BFB5A5D0](v72, -1, -1);

              v85 = v129;
            }

            else
            {
              v117 = *v132;
              v117(v61, v28);
              (*v101)(v59, v60);

              v81 = v111;
              v85 = v129;
              v84 = v116;
            }

            v86 = v106;
            (*(v118 + 56))(v106, 1, 1, AssociatedTypeWitness);
            v16 = v104;
            v87 = v138;
            (*(v104 + 24))(v86, v138, v104);
            v88 = v108;
            _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
            v89 = sub_1BF4E7334();
            (*(*(v89 - 8) + 56))(v88, 0, 1, v89);
            (*(v16 + 48))(v88, v87, v16);
            v142 = 0;
            v143 = 0xE000000000000000;
            sub_1BF4E92E4();

            v142 = 0xD000000000000010;
            v143 = v98;
            MEMORY[0x1BFB58C90](v81, v84);
            (*(v16 + 72))(v142, v143, v87, v16);
            (*v120)(v85, v87);
            v49 = v130;
            v117(v130, v28);
            v48 = v114;
          }

          v46 = v128;
        }

        v50 = sub_1BF4E8C34();
        ++v45;
        v47 = v139;
        if (v140 == v50)
        {
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1BF456FD4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v7 = *v5;
  v8 = *a4;
  swift_beginAccess();
  sub_1BF38E49C((v5 + 17), v24);
  v9 = v25;
  v10 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v11 = qword_1EDCA6870;
  swift_beginAccess();
  v12 = *(v5 + v11);
  v13 = v7[10];
  v14 = v7[11];
  v15 = v7[12];
  v16 = v7[16];
  sub_1BF4E8834();
  v17 = v7[14];

  sub_1BF4E8854();

  v22 = v8;
  LOBYTE(v17) = (*(v10 + 72))(a1, v23, a2, a3, &v22, a5, v9, v10);

  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  return v17 & 1;
}

uint64_t sub_1BF457170(uint64_t *a1)
{
  v15 = *a1;
  v2 = v15;
  v3 = *(v15 + 80);
  v14 = *(v15 + 104);
  v13 = *(v15 + 112);
  type metadata accessor for StatefulStoreReloadEvent();
  sub_1BF4E7C44();
  swift_getWitnessTable();
  v4 = sub_1BF4E7B94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v16 = a1[3];
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v2[11];
  *(v9 + 32) = v2[12];
  v10 = v13;
  *(v9 + 40) = v14;
  *(v9 + 48) = v10;
  *(v9 + 56) = *(v15 + 120);
  *(v9 + 72) = v2[17];

  sub_1BF4E7CD4();

  swift_getWitnessTable();
  v11 = sub_1BF4E7C84();
  (*(v5 + 8))(v8, v4);
  return v11;
}

uint64_t sub_1BF457400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v28 = a8;
  v26 = a6;
  v27 = a7;
  v29 = a1;
  v14 = sub_1BF4E8834();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(*(TupleTypeMetadata2 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = &v25 - v18;
  (*(v20 + 16))(&v25 - v18, a2, TupleTypeMetadata2, v17);
  v21 = *&v19[*(TupleTypeMetadata2 + 48)];

  v39 = *(a2 + *(TupleTypeMetadata2 + 48));
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  v37 = a9;
  v38 = a10;
  WitnessTable = swift_getWitnessTable();
  v39 = sub_1BF3AF390(sub_1BF45E86C, v30, v14, a4, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v23);
  sub_1BF4E8CA4();
  sub_1BF4E8834();
  return sub_1BF4E8864();
}

uint64_t sub_1BF4575EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v16 - v11;
  (*(v13 + 16))(v16 - v11, a1, TupleTypeMetadata2, v10);
  v14 = *(TupleTypeMetadata2 + 48);
  (*(*(a2 - 8) + 32))(a4, v12, a2);
  return (*(*(a3 - 8) + 8))(&v12[v14], a3);
}

uint64_t sub_1BF457748(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BF4E8424();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  v10 = *a2;
  return sub_1BF395AC4(v8);
}

uint64_t sub_1BF457814@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = *a1;
  v5 = *a1;
  v6 = qword_1EDC9AF48;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = *(v4 + 80);
  v9 = *(v4 + 112);

  sub_1BF4E8854();

  if (!v24)
  {
    v12 = qword_1EDC9AF88;
    swift_beginAccess();
    v13 = *(a1 + v12);
    v14 = *(v5 + 104);
    v15 = *(v5 + 120);

    v23 = *(v5 + 88);
    v22 = *(v5 + 128);
    type metadata accessor for ReloadTaskPair();
    sub_1BF4E8854();

    if (v25)
    {
      v16 = sub_1BF39B43C();
      if (v16)
      {
        v17 = *(v16 + *(*v16 + 152));

        v18 = sub_1BF4E8D74();

        if (v18)
        {

          v11 = 1;
          goto LABEL_3;
        }
      }

      v19 = sub_1BF3AB3E8();
      if (v19)
      {
        v20 = *(v19 + *(*v19 + 152));

        v21 = sub_1BF4E8D74();

        if (v21)
        {
          v11 = 1;
          goto LABEL_3;
        }
      }

      else
      {
      }
    }
  }

  v11 = 0;
LABEL_3:
  *a2 = v11;
  return result;
}

char *StatefulStore.__allocating_init<A, B>(reloadStrategy:reloadConfigurationPolicy:reloadTriggers:logger:dataMigrator:allowDebounce:enabled:reloadQueue:calloutQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, int a7, void *a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = *(v13 + 48);
  v19 = *(v13 + 52);
  swift_allocObject();
  v20 = sub_1BF45C7E0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);

  (*(*(a11 - 8) + 8))(a2, a11);
  (*(*(a10 - 8) + 8))(a1, a10);
  return v20;
}

uint64_t sub_1BF457BB8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BF455744(0x725464616F6C6572, 0xED00007265676769);
  }

  return result;
}

uint64_t sub_1BF457C30(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + qword_1EDC9AF58);
    v5 = *(v4 + 16);

    os_unfair_lock_lock(v5);
    *(v3 + qword_1EDC9AF78) = v1;
    if (v1 == 2)
    {
      sub_1BF452A64(v6);
    }

    os_unfair_lock_unlock(*(v4 + 16));
  }

  return result;
}

uint64_t sub_1BF457CD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v152 = a2;
  v197 = *a1;
  v3 = v197;
  v151 = sub_1BF4E8424();
  v150 = *(v151 - 8);
  v4 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v149 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v197[12];
  v181 = *(v6 - 8);
  v7 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v183 = &v146 - v9;
  v10 = v3[11];
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v203 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v194 = &v146 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v192 = sub_1BF4E90F4();
  v205 = *(v192 - 8);
  v18 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v192);
  v189 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v202 = &v146 - v21;
  v22 = v3[10];
  v23 = *(v22 - 1);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v177 = &v146 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v155 = &v146 - v28;
  v29 = v3[16];
  v198 = v10;
  v147 = v29;
  sub_1BF4E8834();
  v30 = swift_getTupleTypeMetadata2();
  v165 = sub_1BF4E90F4();
  v31 = *(v165 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v168 = &v146 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v164 = &v146 - v35;
  v36 = qword_1EDCA6870;
  swift_beginAccess();
  v167 = a1;
  v37 = *(a1 + v36);
  v38 = v37 + 64;
  v39 = 1 << *(v37 + 32);
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & *(v37 + 64);
  v153 = (v39 + 63) >> 6;
  v169 = v30;
  v166 = v30 - 8;
  v154 = v23 + 16;
  v170 = (v23 + 32);
  v163 = (v31 + 32);
  v201 = (v11 + 32);
  v182 = (v181 + 32);
  v184 = TupleTypeMetadata2;
  v191 = TupleTypeMetadata2 - 8;
  v179 = v11 + 16;
  v178 = v181 + 16;
  v190 = (v205 + 32);
  v187 = ":\n            Counts:\n";
  v180 = v11;
  v186 = (v11 + 8);
  v185 = (v181 + 8);
  v160 = "\n    Protection Level: ";
  v159 = ":\n            State: ";
  v156 = v23;
  v158 = (v23 + 8);
  v157 = v37;

  v43 = 0;
  v44 = MEMORY[0x1E69E7CC0];
  v193 = v6;
  v161 = v38;
  v162 = v22;
  if (!v41)
  {
    goto LABEL_6;
  }

  while (2)
  {
    v174 = v43;
    v45 = v43;
    v46 = v194;
    v47 = v184;
LABEL_14:
    v175 = (v41 - 1) & v41;
    v52 = __clz(__rbit64(v41)) | (v45 << 6);
    v53 = v157;
    v54 = v156;
    (*(v156 + 16))(v155, *(v157 + 48) + *(v156 + 72) * v52, v22);
    v55 = *(*(v53 + 56) + 8 * v52);
    v56 = *(v169 + 48);
    v57 = *(v54 + 32);
    v50 = v169;
    v51 = v168;
    v57();
    *&v51[v56] = v55;
    v58 = *(v50 - 8);
    (*(v58 + 56))(v51, 0, 1, v50);

LABEL_15:
    v59 = v164;
    (*v163)(v164, v51, v165);
    v60 = (*(v58 + 48))(v59, 1, v50);
    v176 = v44;
    if (v60 == 1)
    {
LABEL_65:

      v114 = qword_1EDC9AF88;
      v115 = v167;
      v116 = swift_beginAccess();
      v117 = v193;
      v204 = &v146;
      v206 = *(v115 + v114);
      MEMORY[0x1EEE9AC00](v116);
      *(&v146 - 8) = v22;
      v118 = v22;
      v119 = v198;
      *(&v146 - 7) = v198;
      *(&v146 - 6) = v117;
      v120 = v197;
      v122 = v197[13];
      v121 = v197[14];
      *(&v146 - 5) = v122;
      *(&v146 - 4) = v121;
      v123 = v120[15];
      v124 = v120[17];
      v125 = v147;
      *(&v146 - 3) = v123;
      *(&v146 - 2) = v125;
      *(&v146 - 1) = v124;

      v208 = v118;
      v209 = v119;
      v210 = v117;
      v211 = v122;
      v212 = v121;
      v213 = v123;
      v214 = v125;
      v215 = v124;
      type metadata accessor for ReloadTaskPair();
      v126 = sub_1BF4E8834();
      WitnessTable = swift_getWitnessTable();
      v128 = v148;
      v130 = sub_1BF3AF390(sub_1BF45EB64, (&v146 - 10), v126, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v129);
      v205 = v128;

      v208 = v130;
      v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
      sub_1BF38C8B4(&qword_1EDC9F180, &unk_1EBDD9BB0, &qword_1BF4EC140);
      v204 = sub_1BF4E8894();
      v132 = v131;

      v208 = 0;
      v209 = 0xE000000000000000;
      sub_1BF4E92E4();
      v206 = v208;
      v207 = v209;
      MEMORY[0x1BFB58C90](0x62616E4520202020, 0xED0000203A64656CLL);
      v133 = v167;
      swift_beginAccess();
      if (*(v133 + 176))
      {
        v134 = 1702195828;
      }

      else
      {
        v134 = 0x65736C6166;
      }

      if (*(v133 + 176))
      {
        v135 = 0xE400000000000000;
      }

      else
      {
        v135 = 0xE500000000000000;
      }

      MEMORY[0x1BFB58C90](v134, v135);

      MEMORY[0x1BFB58C90](0x626544202020200ALL, 0xEF203A65636E756FLL);
      if (*(v133 + qword_1EDC9AFC0))
      {
        v136 = 1702195828;
      }

      else
      {
        v136 = 0x65736C6166;
      }

      if (*(v133 + qword_1EDC9AFC0))
      {
        v137 = 0xE400000000000000;
      }

      else
      {
        v137 = 0xE500000000000000;
      }

      MEMORY[0x1BFB58C90](v136, v137);

      MEMORY[0x1BFB58C90](0xD000000000000017, 0x80000001BF4FBE50);
      v138 = v149;
      sub_1BF395A3C(v149);
      sub_1BF3983D4(&qword_1EDC9D780, MEMORY[0x1E69859A8]);
      v139 = v151;
      v140 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v140);

      (*(v150 + 8))(v138, v139);
      MEMORY[0x1BFB58C90](0x746E45202020200ALL, 0xEE000A3A73656972);
      v217 = v176;
      v141 = sub_1BF4E8894();
      v143 = v142;

      MEMORY[0x1BFB58C90](v141, v143);

      MEMORY[0x1BFB58C90](0x736154202020200ALL, 0xEC0000000A3A736BLL);
      MEMORY[0x1BFB58C90](v204, v132);

      v144 = v207;
      v145 = v152;
      *v152 = v206;
      v145[1] = v144;
      return result;
    }

    v61 = *&v59[*(v50 + 48)];
    (*v170)(v177, v59, v22);
    v62 = qword_1EDC9AF48;
    v63 = v167;
    swift_beginAccess();
    v64 = *(v63 + v62);

    v65 = v197[14];
    sub_1BF4E8854();

    if (v208 > 2u)
    {
      v66 = v198;
      if (v208 != 3)
      {
        v67 = v61;
        if (v208 == 4)
        {
          v173 = 0xE600000000000000;
          v68 = 0x646573756170;
        }

        else
        {
          v173 = 0xE400000000000000;
          v68 = 1701736302;
        }

LABEL_33:
        v172 = v68;
        if ((v67 & 0xC000000000000001) != 0)
        {
          goto LABEL_34;
        }

LABEL_27:
        v70 = -1 << *(v67 + 32);
        v71 = v67 + 64;
        v72 = ~v70;
        v73 = -v70;
        if (v73 < 64)
        {
          v74 = ~(-1 << v73);
        }

        else
        {
          v74 = -1;
        }

        v75 = v74 & *(v67 + 64);
        goto LABEL_35;
      }

      v173 = 0xE700000000000000;
      v69 = 0x64656B636F6C62;
    }

    else
    {
      v66 = v198;
      if (v208)
      {
        v67 = v61;
        if (v208 == 1)
        {
          v173 = 0xE500000000000000;
          v68 = 0x6E61656C63;
        }

        else
        {
          v173 = 0xE600000000000000;
          v68 = 0x64656C696166;
        }

        goto LABEL_33;
      }

      v173 = 0xE600000000000000;
      v69 = 0x64616F6C6572;
    }

    v172 = v69;
    v67 = v61;
    if ((v61 & 0xC000000000000001) == 0)
    {
      goto LABEL_27;
    }

LABEL_34:
    v76 = sub_1BF4E9414();
    v71 = 0;
    v72 = 0;
    v75 = 0;
    v67 = v76 | 0x8000000000000000;
LABEL_35:
    v77 = v193;
    v22 = v202;
    v78 = 0;
    v171 = v72;
    v79 = (v72 + 64) >> 6;
    v80 = MEMORY[0x1E69E7CC0];
    v196 = v67;
    v195 = v71;
    for (i = v79; ; v79 = i)
    {
      v200 = v75;
      v199 = v78;
      if ((v67 & 0x8000000000000000) == 0)
      {
        v81 = v75;
        v82 = v78;
        if (!v75)
        {
          if (v79 <= v78 + 1)
          {
            v83 = v78 + 1;
          }

          else
          {
            v83 = v79;
          }

          v84 = (v83 - 1);
          v85 = v78;
          while (1)
          {
            v82 = v85 + 1;
            if (__OFADD__(v85, 1))
            {
              break;
            }

            if (v82 >= v79)
            {
              v204 = v84;
              v205 = 0;
              v95 = 1;
              goto LABEL_51;
            }

            v81 = *(v71 + 8 * v82);
            v85 = (v85 + 1);
            if (v81)
            {
              goto LABEL_45;
            }
          }

          __break(1u);
          goto LABEL_65;
        }

LABEL_45:
        v205 = (v81 - 1) & v81;
        v86 = v77;
        v87 = __clz(__rbit64(v81)) | (v82 << 6);
        (*(v180 + 16))(v46, *(v67 + 48) + *(v180 + 72) * v87, v66);
        v88 = v46;
        v89 = v183;
        (*(v181 + 16))(v183, *(v67 + 56) + *(v181 + 72) * v87, v86);
        goto LABEL_48;
      }

      if (sub_1BF4E9444())
      {
        v86 = v77;
        v90 = v198;
        sub_1BF4E9704();
        v66 = v90;
        swift_unknownObjectRelease();
        v88 = v46;
        v89 = v183;
        sub_1BF4E9704();
        swift_unknownObjectRelease();
        v82 = v199;
        v205 = v200;
LABEL_48:
        v91 = *(v184 + 48);
        v92 = v189;
        v93 = v88;
        v94 = v184;
        (*v201)(v189, v93, v66);
        (*v182)(&v92[v91], v89, v86);
        v95 = 0;
        v204 = v82;
        v22 = v202;
        goto LABEL_52;
      }

      v95 = 1;
      v204 = v199;
      v205 = v200;
      v66 = v198;
LABEL_51:
      v92 = v189;
      v94 = v47;
LABEL_52:
      v96 = *(v94 - 8);
      (*(v96 + 56))(v92, v95, 1, v94);
      (*v190)(v22, v92, v192);
      v47 = v94;
      if ((*(v96 + 48))(v22, 1, v94) == 1)
      {
        break;
      }

      (*v201)(v203, v22, v66);
      v208 = 0;
      v209 = 0xE000000000000000;
      sub_1BF4E92E4();
      MEMORY[0x1BFB58C90](0xD000000000000010, v187 | 0x8000000000000000);
      v97 = v197[15];
      sub_1BF4E96F4();
      v98 = v208;
      v99 = v209;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = sub_1BF431F90(0, *(v80 + 2) + 1, 1, v80);
      }

      v101 = *(v80 + 2);
      v100 = *(v80 + 3);
      if (v101 >= v100 >> 1)
      {
        v80 = sub_1BF431F90((v100 > 1), v101 + 1, 1, v80);
      }

      v102 = *(v94 + 48);
      v66 = v198;
      (*v186)(v203, v198);
      *(v80 + 2) = v101 + 1;
      v103 = &v80[16 * v101];
      *(v103 + 4) = v98;
      *(v103 + 5) = v99;
      v22 = v202;
      v104 = &v202[v102];
      v77 = v193;
      (*v185)(v104, v193);
      v78 = v204;
      v75 = v205;
      v46 = v194;
      v67 = v196;
      v71 = v195;
    }

    sub_1BF39A9CC();
    v208 = 0;
    v209 = 0xE000000000000000;
    sub_1BF4E92E4();
    MEMORY[0x1BFB58C90](0x2020202020202020, 0xE800000000000000);
    v105 = v197[13];
    v22 = v162;
    sub_1BF4E96F4();
    MEMORY[0x1BFB58C90](0xD000000000000015, v160 | 0x8000000000000000);
    MEMORY[0x1BFB58C90](v172, v173);

    MEMORY[0x1BFB58C90](0xD000000000000017, v159 | 0x8000000000000000);
    v216 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
    sub_1BF38C8B4(&qword_1EDC9F180, &unk_1EBDD9BB0, &qword_1BF4EC140);
    v106 = sub_1BF4E8894();
    v108 = v107;

    MEMORY[0x1BFB58C90](v106, v108);

    v109 = v208;
    v110 = v209;
    v44 = v176;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1BF431F90(0, *(v44 + 2) + 1, 1, v44);
    }

    v112 = *(v44 + 2);
    v111 = *(v44 + 3);
    if (v112 >= v111 >> 1)
    {
      v44 = sub_1BF431F90((v111 > 1), v112 + 1, 1, v44);
    }

    result = (*v158)(v177, v22);
    *(v44 + 2) = v112 + 1;
    v113 = &v44[16 * v112];
    *(v113 + 4) = v109;
    *(v113 + 5) = v110;
    v38 = v161;
    v41 = v175;
    v43 = v174;
    if (v175)
    {
      continue;
    }

    break;
  }

LABEL_6:
  if (v153 <= v43 + 1)
  {
    v48 = v43 + 1;
  }

  else
  {
    v48 = v153;
  }

  v49 = v48 - 1;
  v46 = v194;
  v47 = v184;
  v50 = v169;
  v51 = v168;
  while (1)
  {
    v45 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v45 >= v153)
    {
      v58 = *(v169 - 8);
      (*(v58 + 56))(v168, 1, 1, v169);
      v175 = 0;
      v174 = v49;
      goto LABEL_15;
    }

    v41 = *(v38 + 8 * v45);
    ++v43;
    if (v41)
    {
      v174 = v45;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF45922C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1BFB58C90](0x2020202020202020, 0xE800000000000000);
  sub_1BF4E96F4();
  MEMORY[0x1BFB58C90](8250, 0xE200000000000000);
  type metadata accessor for ReloadTaskPair();
  v5 = *(a1 + *(swift_getTupleTypeMetadata2() + 48));
  swift_getWitnessTable();
  result = sub_1BF4E96F4();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1BF459360@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a3;
  v42 = *a1;
  v5 = v42;
  v6 = v42[10];
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v35 - v8;
  v9 = v42[11];
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v35 - v12;
  v13 = v5[12];
  v14 = sub_1BF4E90F4();
  v43 = *(v14 - 8);
  v44 = v14;
  v15 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - v16;
  v18 = sub_1BF4E8324();
  v46 = *(v18 - 8);
  v47 = v18;
  v19 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v45 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = qword_1EDCA6870;
  swift_beginAccess();
  v22 = *(a1 + v21);
  v23 = v5[16];
  v48 = v9;
  sub_1BF4E8834();
  v24 = v5[14];

  sub_1BF4E8854();

  v25 = v51;
  if (!v51)
  {
    goto LABEL_4;
  }

  v26 = v24;
  v27 = v42[13];
  v28 = v42[15];
  v51 = v6;
  v52 = v48;
  v53 = v27;
  v54 = v26;
  v42 = v26;
  v35 = v28;
  v55 = v28;
  v56 = v23;
  v36 = *(type metadata accessor for VariantIdentifier() + 68);
  sub_1BF4E8854();
  if ((*(*(v13 - 8) + 48))(v17, 1, v13) == 1)
  {

    (*(v43 + 8))(v17, v44);
LABEL_4:
    sub_1BF3901C0(0, &qword_1EDC962E8, 0x1E696ABC0);
    (*(v46 + 104))(v45, *MEMORY[0x1E6985878], v47);
    sub_1BF4E9074();
    return swift_willThrow();
  }

  v47 = v25;
  (*(v43 + 8))(v17, v44);
  v30 = qword_1EDC9AF60;
  swift_beginAccess();
  v31 = *(a1 + v30);

  v51 = v6;
  v52 = v48;
  v53 = v27;
  v54 = v42;
  v55 = v35;
  v56 = v23;
  type metadata accessor for VariantReloadResult();
  sub_1BF4E7C44();
  sub_1BF4E8834();
  sub_1BF4E8854();

  if (!v57)
  {
    v57 = sub_1BF4E8724();
  }

  v32 = v36;
  sub_1BF4E8854();
  v33 = v50;
  if (!v50)
  {
    v33 = sub_1BF4E7C24();
    (*(v37 + 16))(v38, a2 + v32, v48);
    v51 = v33;

    sub_1BF4E8864();
  }

  (*(v39 + 16))(v40, a2, v6);
  v49 = v57;
  swift_beginAccess();
  sub_1BF4E8834();

  sub_1BF4E8864();
  swift_endAccess();

  v51 = v33;
  swift_getWitnessTable();
  v34 = sub_1BF4E7C84();

  *v41 = v34;
  return result;
}

uint64_t sub_1BF459A4C(uint64_t *a1)
{
  v2 = *a1;
  v3 = qword_1EDC9AF48;
  swift_beginAccess();
  v4 = *(a1 + v3);
  v5 = *(v2 + 80);
  v6 = *(v2 + 112);

  sub_1BF4E8854();
}

uint64_t sub_1BF459B10(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v25 = a3;
  v10 = *a1;
  v11 = *(*a1 + 80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v26 = &v22 - v14;
  v15 = qword_1EDCA6860;
  swift_beginAccess();
  v16 = *(a1 + v15);

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95D0, &qword_1BF4F1C88);
  v18 = *(v10 + 112);
  v27 = a2;
  v24 = v17;
  sub_1BF4E8854();

  if (!v30)
  {
    v30 = MEMORY[0x1E69E7CC8];
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v23;
  *(v19 + 24) = a6;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v30;
  sub_1BF3D75A4(sub_1BF45EB1C, v19, v25, a4, isUniquelyReferenced_nonNull_native);

  v30 = v28;
  (*(v12 + 16))(v26, v27, v11);
  v29 = v30;
  swift_beginAccess();
  sub_1BF4E8834();

  sub_1BF4E8864();
  swift_endAccess();
}

uint64_t sub_1BF459D88(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v26 - v7;
  v9 = qword_1EDCA6870;
  swift_beginAccess();
  v10 = *(a1 + v9);
  v11 = v3[11];
  v12 = v3[12];
  v13 = v3[16];
  v14 = sub_1BF4E8834();
  v15 = nullsub_1(v10, v4, v14, v3[14]);
  v16 = v15;
  v17 = v15 + 64;
  v18 = 1 << *(v15 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v15 + 64);
  v21 = (v18 + 63) >> 6;
  v26[1] = v5 + 8;
  v26[2] = v5 + 16;

  for (i = 0; v20; result = (*(v5 + 8))(v8, v4))
  {
    v24 = i;
LABEL_9:
    v25 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    (*(v5 + 16))(v8, *(v16 + 48) + *(v5 + 72) * (v25 | (v24 << 6)), v4);
    sub_1BF3BD60C(v27, v8);
  }

  while (1)
  {
    v24 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
    }

    v20 = *(v17 + 8 * v24);
    ++i;
    if (v20)
    {
      i = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF459FD0(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1BF45A004(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = a1;
  v31 = a2;
  v4 = *(*a3 + 88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v27 - v7;
  v10 = *(v9 + 80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v27 = *(v16 + 104);
  v28 = *(v17 + 120);
  *&v18 = v10;
  *(&v18 + 1) = v4;
  v19 = *(v17 + 128);
  v32 = v18;
  v33 = v27;
  v34 = v28;
  v35 = v19;
  v29 = type metadata accessor for VariantIdentifier();
  v20 = *(v29 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v29);
  v24 = &v27 - v23;
  (*(v11 + 16))(v15, v30, v10, v22);
  (*(v5 + 16))(v8, v31, v4);
  VariantIdentifier.init(storedKey:variantKey:)(v15, v8, v10, v4, v24);
  v25 = a3[15];

  sub_1BF4E7C14();

  return (*(v20 + 8))(v24, v29);
}

uint64_t sub_1BF45A2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a2;
  v5 = *a3;
  v6 = *(*a3 + 88);
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v60 = v47 - v8;
  v64 = *(v5[10] - 8);
  v9 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v58 = v47 - v11;
  v13 = *(v12 + 104);
  v14 = v5[15];
  v59 = v15;
  *&v16 = v15;
  *(&v16 + 1) = v6;
  v17 = v5[16];
  v53 = v13;
  v66 = v13;
  v65 = v16;
  v57 = v14;
  v67 = v14;
  v68 = v17;
  v55 = type metadata accessor for VariantIdentifier();
  v18 = *(v55 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v54 = v47 - v20;
  v21 = sub_1BF4E90F4();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = v47 - v23;
  v62 = a3;
  v25 = v5[12];
  v56 = v17;
  v26 = nullsub_1(a1, v6, v25, v17);
  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = sub_1BF4E9414();
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = v27 | 0x8000000000000000;
  }

  else
  {
    v32 = -1 << *(v26 + 32);
    v29 = ~v32;
    v28 = v26 + 64;
    v33 = -v32;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v30 = v34 & *(v26 + 64);
    v31 = v26;
  }

  v61 = (v48 + 56);
  v47[1] = v29;
  v35 = (v29 + 64) >> 6;
  v47[2] = v48 + 16;
  v51 = (v48 + 32);
  v52 = (v64 + 16);
  v36 = (v18 + 8);

  v64 = 0;
  v49 = *(&v53 + 1);
  v50 = v53;
  *&v53 = v31;
  v38 = v54;
  while ((v31 & 0x8000000000000000) != 0)
  {
    if (!sub_1BF4E9454())
    {
LABEL_19:
      (*v61)(v24, 1, 1, v6);
      sub_1BF39A9CC();
      v46 = *(v62 + 88);

      sub_1BF4E7C14();
    }

    sub_1BF4E9704();
    swift_unknownObjectRelease();
LABEL_10:
    (*v61)(v24, 0, 1, v6);
    v41 = v58;
    v42 = v59;
    (*v52)(v58, v63, v59);
    v43 = v60;
    (*v51)(v60, v24, v6);
    VariantIdentifier.init(storedKey:variantKey:)(v41, v43, v42, v6, v38);
    v44 = *(v62 + 120);

    sub_1BF4E7C14();

    result = (*v36)(v38, v55);
    v31 = v53;
  }

  v45 = v64;
  if (v30)
  {
    v39 = v64;
LABEL_9:
    v40 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    (*(v48 + 16))(v24, *(v31 + 48) + *(v48 + 72) * (v40 | (v39 << 6)), v6);
    goto LABEL_10;
  }

  while (1)
  {
    v39 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v39 >= v35)
    {
      goto LABEL_19;
    }

    v30 = *(v28 + 8 * v39);
    ++v45;
    if (v30)
    {
      v64 = v39;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1BF45A838(uint64_t *a1, uint64_t a2)
{
  v131 = *a1;
  v4 = v131;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C8, &qword_1BF4F1AB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v124 = (&v114 - v7);
  v123 = type metadata accessor for ReloadConfiguration(0);
  v122 = *(v123 - 8);
  v8 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v126 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v121 = &v114 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v128 = &v114 - v13;
  v14 = *(v4 + 80);
  v132 = *(v14 - 1);
  isa = v132[8].isa;
  MEMORY[0x1EEE9AC00](v16);
  v125 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v114 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v114 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v130 = &v114 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v114 - v27;
  v29 = qword_1EDC9AF48;
  swift_beginAccess();
  v30 = *(a1 + v29);
  v31 = *(v4 + 112);

  v133 = v31;
  sub_1BF4E8854();

  if (v134 == 3)
  {
    v32 = v132;
    v33 = v132[2].isa;
    (v33)(v28, a2, v14);
    v34 = sub_1BF4E7B34();
    v35 = sub_1BF4E8E84();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v134 = v133;
      *v36 = 136446210;
      v37 = v130;
      (v33)(v130, v28, v14);
      v38 = v32[1].isa;
      v38(v28, v14);
      v39 = *(v131 + 104);
      v40 = sub_1BF4E96A4();
      v42 = v41;
      v38(v37, v14);
      v43 = sub_1BF38D65C(v40, v42, &v134);

      *(v36 + 4) = v43;
      _os_log_impl(&dword_1BF389000, v34, v35, "%{public}s Disallowing pausing while state is blocked.", v36, 0xCu);
      v44 = v133;
      __swift_destroy_boxed_opaque_existential_1Tm(v133);
      MEMORY[0x1BFB5A5D0](v44, -1, -1);
      MEMORY[0x1BFB5A5D0](v36, -1, -1);
    }

    else
    {
      (v32[1].isa)(v28, v14);
    }
  }

  else
  {
    v45 = qword_1EDC9AF48;
    swift_beginAccess();
    v46 = *(a1 + v45);

    sub_1BF4E8854();

    if (v134 != 4)
    {
      v47 = qword_1EDC9AF50;
      v48 = v132;
      v49 = a2;
      v51 = v132 + 2;
      v50 = v132[2].isa;
      (v50)(v23, v49, v14);
      v127 = v20;
      v129 = v49;
      (v50)(v20, v49, v14);

      v118 = v47;
      v52 = sub_1BF4E7B34();
      v53 = sub_1BF4E8E84();

      v54 = os_log_type_enabled(v52, v53);
      v120 = v50;
      if (v54)
      {
        LODWORD(v116) = v53;
        v117 = v52;
        v55 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v134 = v115;
        *v55 = 136446466;
        v56 = v130;
        v119 = v51;
        (v50)(v130, v23, v14);
        v57 = v48[1].isa;
        v57(v23, v14);
        v58 = *(v131 + 104);
        v59 = sub_1BF4E96A4();
        v61 = v60;
        v57(v56, v14);
        v62 = sub_1BF38D65C(v59, v61, &v134);

        *(v55 + 4) = v62;
        *(v55 + 12) = 2082;
        v63 = qword_1EDC9AF48;
        swift_beginAccess();
        v64 = *(a1 + v63);

        sub_1BF4E8854();

        if (v140 > 2u)
        {
          v69 = v129;
          if (v140 == 3)
          {
            v68 = 0xE700000000000000;
            v67 = 0x64656B636F6C62;
            v51 = v119;
          }

          else
          {
            v51 = v119;
            if (v140 == 4)
            {
              v68 = 0xE600000000000000;
              v67 = 0x646573756170;
            }

            else
            {
              v68 = 0xE400000000000000;
              v67 = 1701736302;
            }
          }
        }

        else
        {
          v65 = 0xE500000000000000;
          v66 = 0x6E61656C63;
          if (v140 != 1)
          {
            v66 = 0x64656C696166;
            v65 = 0xE600000000000000;
          }

          if (v140)
          {
            v67 = v66;
          }

          else
          {
            v67 = 0x64616F6C6572;
          }

          if (v140)
          {
            v68 = v65;
          }

          else
          {
            v68 = 0xE600000000000000;
          }

          v51 = v119;
          v69 = v129;
        }

        v72 = v127;
        v127 = v57;
        v57(v72, v14);
        v73 = sub_1BF38D65C(v67, v68, &v134);

        *(v55 + 14) = v73;
        v74 = v117;
        _os_log_impl(&dword_1BF389000, v117, v116, "%{public}s Pausing reloads. Reload state %{public}s -> paused", v55, 0x16u);
        v75 = v115;
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v75, -1, -1);
        MEMORY[0x1BFB5A5D0](v55, -1, -1);
      }

      else
      {
        v70 = v48[1].isa;
        v70(v23, v14);

        v71 = v127;
        v127 = v70;
        v70(v71, v14);
        v69 = v129;
      }

      v76 = v133;
      LOBYTE(v134) = 4;
      sub_1BF399684(&v134, v69);
      v77 = qword_1EDC9AF88;
      swift_beginAccess();
      v78 = *(a1 + v77);
      v79 = v131;
      v80 = *(v131 + 104);
      v81 = *(v131 + 136);

      v134 = v14;
      v135 = *(v79 + 88);
      v117 = v80;
      v136 = v80;
      v137 = v76;
      v138 = *(v79 + 120);
      v139 = v81;
      v82 = type metadata accessor for ReloadTaskPair();
      sub_1BF4E8854();

      v83 = v120;
      if (v141 && (v84 = sub_1BF3AB3E8(), , , v84))
      {
        v131 = v82;
        v85 = v121;
        sub_1BF39B31C(v84 + *(*v84 + 168), v121, type metadata accessor for ReloadConfiguration);

        v86 = v85;
        v87 = v128;
        v116 = type metadata accessor for ReloadConfiguration;
        sub_1BF3B4C44(v86, v128, type metadata accessor for ReloadConfiguration);
        v88 = v129;
        v83(v130, v129, v14);
        v119 = v51;
        v89 = v124;
        sub_1BF39B31C(v87, v124, type metadata accessor for ReloadConfiguration);
        (*(v122 + 56))(v89, 0, 1, v123);
        swift_beginAccess();
        v90 = v83;
        v91 = v88;
        sub_1BF4E8834();
        sub_1BF4E8864();
        swift_endAccess();
        v92 = v125;
        v90(v125, v88, v14);
        v93 = v87;
        v94 = v126;
        sub_1BF39B31C(v93, v126, v116);
        v95 = sub_1BF4E7B34();
        v96 = sub_1BF4E8E84();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v134 = v124;
          *v97 = 136446466;
          LODWORD(v123) = v96;
          v98 = v130;
          v90(v130, v92, v14);
          v99 = v127;
          v127(v92, v14);
          v132 = v95;
          v100 = sub_1BF4E96A4();
          v102 = v101;
          v99(v98, v14);
          v103 = sub_1BF38D65C(v100, v102, &v134);

          *(v97 + 4) = v103;
          *(v97 + 12) = 2082;
          v104 = v126;
          v105 = ReloadConfiguration.description.getter();
          v107 = v106;
          sub_1BF45EABC(v104, type metadata accessor for ReloadConfiguration);
          v108 = sub_1BF38D65C(v105, v107, &v134);

          *(v97 + 14) = v108;
          v109 = v132;
          _os_log_impl(&dword_1BF389000, v132, v123, "%{public}s Delaying reload with configuration: %{public}s because entry is paused.", v97, 0x16u);
          v110 = v124;
          swift_arrayDestroy();
          MEMORY[0x1BFB5A5D0](v110, -1, -1);
          MEMORY[0x1BFB5A5D0](v97, -1, -1);
        }

        else
        {
          v127(v92, v14);

          sub_1BF45EABC(v94, type metadata accessor for ReloadConfiguration);
        }

        sub_1BF45EABC(v128, type metadata accessor for ReloadConfiguration);
      }

      else
      {
        v91 = v129;
      }

      v111 = *(a1 + qword_1EDC9AFB8);
      sub_1BF4C9790(v91);
      v112 = qword_1EDC9AF88;
      swift_beginAccess();
      v113 = *(a1 + v112);

      sub_1BF4E8854();

      if (v141)
      {
        sub_1BF410244(0);
      }
    }
  }
}

uint64_t sub_1BF45B630(uint64_t *a1, uint64_t a2, int a3)
{
  v73 = a3;
  v71 = *a1;
  v5 = v71;
  v6 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v70 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C8, &qword_1BF4F1AB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v75 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v61 - v13;
  v74 = type metadata accessor for ReloadConfiguration(0);
  v76 = *(v74 - 8);
  v15 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v69 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v72 = &v61 - v18;
  v19 = *(v5 + 80);
  v20 = *(v19 - 8);
  v21 = v20[8];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v61 - v26;
  v28 = qword_1EDC9AF48;
  swift_beginAccess();
  v29 = *(a1 + v28);
  v30 = v5;
  v31 = a2;
  v32 = *(v30 + 112);

  sub_1BF4E8854();

  if (LOBYTE(v77[0]) == 4)
  {
    v64 = v14;
    v68 = v32;
    v34 = v20[2];
    v34(v27, v31, v19);
    v35 = sub_1BF4E7B34();
    v63 = sub_1BF4E8E84();
    v36 = os_log_type_enabled(v35, v63);
    v65 = v34;
    v66 = v20 + 2;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v67 = v24;
      v38 = v37;
      v62 = swift_slowAlloc();
      v77[0] = v62;
      *v38 = 136446210;
      v34(v67, v27, v19);
      v39 = v31;
      v40 = v20[1];
      v40(v27, v19);
      v41 = *(v71 + 104);
      v42 = v35;
      v43 = sub_1BF4E96A4();
      v45 = v44;
      v40(v67, v19);
      v31 = v39;
      v46 = sub_1BF38D65C(v43, v45, v77);

      v47 = v38;
      v24 = v67;
      *(v47 + 1) = v46;
      v48 = v47;
      _os_log_impl(&dword_1BF389000, v42, v63, "%{public}s Resuming reloads. Reload state paused -> clean", v47, 0xCu);
      v49 = v62;
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x1BFB5A5D0](v49, -1, -1);
      MEMORY[0x1BFB5A5D0](v48, -1, -1);
    }

    else
    {
      (v20[1])(v27, v19);
    }

    v50 = v74;
    LOBYTE(v77[0]) = 1;
    sub_1BF399684(v77, v31);
    v51 = v64;
    if (v73)
    {
      v52 = v31;
      v53 = qword_1EDC9AF90;
      swift_beginAccess();
      v54 = *(a1 + v53);
      v31 = v52;

      sub_1BF4E8854();

      if ((*(v76 + 48))(v51, 1, v50) == 1)
      {
        sub_1BF38C9B4(v51, &qword_1EBDD95C8, &qword_1BF4F1AB0);
      }

      else
      {
        v55 = v72;
        sub_1BF3B4C44(v51, v72, type metadata accessor for ReloadConfiguration);
        v56 = v55;
        v57 = v69;
        sub_1BF39B31C(v56, v69, type metadata accessor for ReloadConfiguration);
        v58 = sub_1BF4E7334();
        v59 = v70;
        (*(*(v58 - 8) + 56))(v70, 1, 1, v58);
        v60 = sub_1BF3B5EEC(v57, v59);
        sub_1BF45EABC(v59, type metadata accessor for ReloadConfiguration.ReloadType);
        if (v60)
        {
          *(v57 + *(v50 + 36)) = 1;
        }

        sub_1BF3BD60C(v57, v31);
        sub_1BF45EABC(v57, type metadata accessor for ReloadConfiguration);
        sub_1BF45EABC(v72, type metadata accessor for ReloadConfiguration);
      }
    }

    v65(v24, v31, v19);
    (*(v76 + 56))(v75, 1, 1, v50);
    swift_beginAccess();
    sub_1BF4E8834();
    sub_1BF4E8864();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1BF45BD1C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a1;
  v7 = qword_1EDCA6870;
  swift_beginAccess();
  v8 = *(a1 + v7);
  v9 = v5[10];
  v10 = v5[11];
  v11 = v5[12];
  v12 = v5[16];
  sub_1BF4E8834();
  v13 = v5[14];

  sub_1BF4E8854();

  if (!v19)
  {
    return (*(*(v11 - 8) + 56))(a3, 1, 1, v11);
  }

  v17 = v6[13];
  v18 = v6[15];
  v14 = a2 + *(type metadata accessor for VariantIdentifier() + 68);
  sub_1BF4E8854();
}

uint64_t sub_1BF45BEF0(uint64_t a1)
{
  v1 = *(a1 + 56);

  sub_1BF4E7C14();
}

uint64_t StatefulStore.__deallocating_deinit()
{
  StatefulStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF45BF90@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 1216))();
  *a1 = result;
  return result;
}

BOOL sub_1BF45C2E4()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = qword_1EDCA6870;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[16];
  sub_1BF4E8834();
  v9 = v1[14];

  sub_1BF4E8854();

  if (v11)
  {
  }

  return v11 != 0;
}

uint64_t StatefulStoreMutator.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1BF45C4F0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1BF45C53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9(v6);
  v10 = sub_1BF4E96A4();
  (*(v4 + 8))(v8, a3);
  return v10;
}

_BYTE **sub_1BF45C628(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1BF45C660(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1BF38D65C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_1BF45C6BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AA0, &unk_1BF4F1CA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1BF45C7B0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *sub_1BF45C7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, int a7, void *a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v128 = a8;
  LODWORD(v122) = a7;
  LODWORD(v119) = a6;
  v126 = a5;
  v125 = a4;
  v127 = a3;
  v116 = a2;
  v115 = a1;
  v137 = a13;
  v138 = a11;
  v139 = a10;
  v140 = a12;
  v130 = a9;
  v15 = *v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95E8, &qword_1BF4F1CB0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v141 = &v108 - v18;
  v131 = sub_1BF4E8F14();
  v109 = *(v131 - 8);
  v19 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v142 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95F0, &qword_1BF4F1CB8);
  v108 = *(v111 - 8);
  v21 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v108 - v22;
  v112 = sub_1BF4E8F24();
  v129 = *(v112 - 8);
  v23 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v121 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1BF4E8ED4();
  v25 = *(*(v120 - 8) + 64);
  MEMORY[0x1EEE9AC00](v120);
  v118 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1BF4E8064();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v117 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1BF4E7B54();
  v123 = *(v124 - 8);
  v30 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v114 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[2] = 0;
  v32 = *(v15 + 80);
  v136 = *(v15 + 104);
  v33 = *(&v136 + 1);
  v113 = v136;
  type metadata accessor for StatefulStoreReloadEvent();
  sub_1BF4E7C44();
  v13[3] = sub_1BF4E7C24();
  v13[4] = 0;
  v34 = *(v15 + 88);
  type metadata accessor for StatefulStoreReloadVariantsEvent();
  sub_1BF4E7C44();
  v13[5] = sub_1BF4E7C24();
  v13[6] = 0;
  sub_1BF4E7C44();
  v13[7] = sub_1BF4E7C24();
  v13[8] = 0;
  v13[9] = sub_1BF4E7C24();
  v13[10] = 0;
  v13[11] = sub_1BF4E7C24();
  v13[12] = 0;
  v35 = *(v15 + 120);
  *&v36 = v32;
  *(&v36 + 1) = v34;
  v37 = *(v15 + 128);
  *v145 = v136;
  v144 = v36;
  *&v145[16] = v35;
  v146 = v37;
  type metadata accessor for VariantIdentifier();
  sub_1BF4E7C44();
  v13[13] = sub_1BF4E7C24();
  v13[14] = 0;
  v13[15] = sub_1BF4E7C24();
  v13[16] = 0;
  v38 = qword_1EDC9AF48;
  swift_getTupleTypeMetadata2();
  v39 = sub_1BF4E8BF4();
  v40 = sub_1BF3B0FE8(v39, v32, &type metadata for ReloadState, v33);

  *(v14 + v38) = v40;
  *(v14 + qword_1EDC9AF80) = MEMORY[0x1E69E7CD0];
  *(v14 + qword_1EDC9AF98) = 0;
  v41 = qword_1EDC9AF58;
  type metadata accessor for UnfairLock();
  v42 = swift_allocObject();
  v43 = swift_slowAlloc();
  *v43 = 0;
  *(v42 + 16) = v43;
  *(v14 + v41) = v42;
  *(v14 + qword_1EDC9AFA0) = 0;
  v44 = qword_1EDC9AF68;
  sub_1BF4E7334();
  *(v14 + v44) = sub_1BF4E8724();
  *(v14 + qword_1EDC9AF78) = 0;
  v45 = qword_1EDCA6870;
  v46 = *(v15 + 96);
  sub_1BF4E8834();
  *(v14 + v45) = sub_1BF4E8724();
  v47 = qword_1EDCA6860;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95D0, &qword_1BF4F1C88);
  *(v14 + v47) = sub_1BF4E8724();
  v48 = qword_1EDC9AF88;
  v49 = *(v15 + 136);
  *&v144 = v32;
  *(&v144 + 1) = v34;
  *v145 = v46;
  *&v145[8] = v136;
  v146 = v35;
  v147 = v37;
  v148 = v49;
  type metadata accessor for ReloadTaskPair();
  *(v14 + v48) = sub_1BF4E8724();
  v50 = qword_1EDC9AF90;
  type metadata accessor for ReloadConfiguration(0);
  *(v14 + v50) = sub_1BF4E8724();
  v51 = qword_1EDC9AF60;
  *&v144 = v32;
  *(&v144 + 1) = v34;
  *v145 = v136;
  *&v145[16] = v35;
  v146 = v37;
  type metadata accessor for VariantReloadResult();
  sub_1BF4E7C44();
  sub_1BF4E8834();
  *(v14 + v51) = sub_1BF4E8724();
  *&v144 = v32;
  *(&v144 + 1) = v34;
  *v145 = v46;
  *&v145[8] = v136;
  v135 = v35;
  v146 = v35;
  v147 = v37;
  v148 = v49;
  v52 = type metadata accessor for DefaultStatefulStoreFailurePolicy();
  v53 = DefaultStatefulStoreFailurePolicy.__allocating_init()();
  v14[20] = v52;
  v14[21] = swift_getWitnessTable();
  v14[17] = v53;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v144 = v32;
  *(&v144 + 1) = v34;
  *v145 = AssociatedTypeWitness;
  *&v145[8] = v136;
  v146 = v37;
  type metadata accessor for AnyReloadingStrategy();
  *(v14 + qword_1EDC9AFB0) = sub_1BF487D40(v115, v139);
  *&v144 = v32;
  *(&v144 + 1) = v34;
  *&v136 = v34;
  v134 = v46;
  *v145 = v46;
  *&v145[8] = v37;
  v55 = v14;
  *&v145[16] = v49;
  type metadata accessor for AnyReloadConfigurationPolicy();
  *(v14 + qword_1EDC9AF70) = sub_1BF4857B4(v116, v138);
  *(v14 + qword_1EDC9AFA8) = v127;
  v56 = v32;
  v57 = *(v123 + 16);
  v58 = v125;
  v59 = v124;
  v57(&v55[qword_1EDC9AF50], v125, v124);
  sub_1BF38E49C(v126, &v55[qword_1EDC9AFC8]);
  v60 = qword_1EDCA6868;
  v61 = *MEMORY[0x1E6985988];
  v62 = sub_1BF4E8424();
  (*(*(v62 - 8) + 104))(&v55[v60], v61, v62);
  v55[qword_1EDC9AFC0] = v119;
  v55[176] = v122;
  v132 = v56;
  type metadata accessor for ReloadHistory();
  v63 = v114;
  v57(v114, v58, v59);
  v64 = v128;

  *&v55[qword_1EDC9AFB8] = sub_1BF4C9660(v63);
  if (v64)
  {
    v122 = v64;
    v65 = v129;
    v66 = v121;
  }

  else
  {
    v122 = sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
    v119 = "\n            Variants:\n";
    sub_1BF4E8024();
    *&v144 = MEMORY[0x1E69E7CC0];
    sub_1BF3983D4(&qword_1EDC9F148, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
    sub_1BF38C8B4(&qword_1EDC9F178, &qword_1EBDD85C0, &qword_1BF4EC090);
    sub_1BF4E91A4();
    v65 = v129;
    v67 = v121;
    (*(v129 + 104))(v121, *MEMORY[0x1E69E8090], v112);
    v122 = sub_1BF4E8F64();
    v66 = v67;
  }

  v68 = v130;
  if (v130)
  {
    v69 = v64;
    v70 = v68;
  }

  else
  {
    v129 = sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
    v121 = "StatefulStoreReloadQueue";
    v71 = v64;
    sub_1BF4E8024();
    *&v144 = MEMORY[0x1E69E7CC0];
    sub_1BF3983D4(&qword_1EDC9F148, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
    sub_1BF38C8B4(&qword_1EDC9F178, &qword_1EBDD85C0, &qword_1BF4EC090);
    sub_1BF4E91A4();
    (*(v65 + 104))(v66, *MEMORY[0x1E69E8090], v112);
    v72 = sub_1BF4E8F64();
    v68 = v130;
    v70 = v72;
  }

  v73 = v122;
  *&v55[qword_1EDC9AFD8] = v122;
  *&v55[qword_1EDC9AFD0] = v70;
  v74 = *(v127 + 16);
  v121 = v70;
  v133 = v55;
  if (v74)
  {
    v130 = &v55[qword_1EDC9AF80];
    v75 = (v127 + 32);
    v129 = v109 + 8;
    v76 = (v108 + 8);
    v77 = v68;
    v128 = v73;
    v78 = v70;
    v79 = v141;
    v80 = v111;
    v81 = v110;
    do
    {
      v82 = *v75++;
      *&v144 = v82;

      sub_1BF4E8F04();
      v143 = v128;
      v83 = sub_1BF4E8EF4();
      (*(*(v83 - 8) + 56))(v79, 1, 1, v83);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F30, &unk_1BF4EF080);
      sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
      sub_1BF38C8B4(&qword_1EDC9EF90, &qword_1EBDD8F30, &unk_1BF4EF080);
      sub_1BF45EB9C();
      v79 = v141;
      v84 = v142;
      sub_1BF4E7CF4();
      sub_1BF38C9B4(v79, &qword_1EBDD95E8, &qword_1BF4F1CB0);
      (*v129)(v84, v131);
      v85 = swift_allocObject();
      swift_weakInit();
      v86 = swift_allocObject();
      v87 = v136;
      v86[2] = v132;
      v86[3] = v87;
      v89 = v138;
      v88 = v139;
      v86[4] = v134;
      v86[5] = v88;
      v90 = v135;
      v86[6] = v89;
      v86[7] = v90;
      v91 = v137;
      v86[8] = v140;
      v86[9] = v91;
      v86[10] = v85;
      v92 = swift_allocObject();
      *(v92 + 16) = sub_1BF45EC04;
      *(v92 + 24) = v86;
      sub_1BF38C8B4(&qword_1EDC9D438, &qword_1EBDD95F0, &qword_1BF4F1CB8);
      sub_1BF4E7D14();

      (*v76)(v81, v80);
      swift_beginAccess();
      sub_1BF4E7BC4();
      swift_endAccess();

      --v74;
    }

    while (v74);
  }

  else
  {
    v93 = v68;
    v94 = v73;
    v95 = v70;
  }

  v96 = v126;
  v97 = v126[3];
  v98 = v126[4];
  __swift_project_boxed_opaque_existential_1(v126, v97);
  *&v144 = (*(v98 + 16))(v97, v98);
  v99 = swift_allocObject();
  v100 = v133;
  swift_weakInit();
  v101 = swift_allocObject();
  v102 = v136;
  v101[2] = v132;
  v101[3] = v102;
  v104 = v138;
  v103 = v139;
  v101[4] = v134;
  v101[5] = v103;
  v105 = v135;
  v101[6] = v104;
  v101[7] = v105;
  v106 = v137;
  v101[8] = v140;
  v101[9] = v106;
  v101[10] = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95F8, &qword_1BF4F1CC0);
  sub_1BF38C8B4(&qword_1EDC9D410, &qword_1EBDD95F8, &qword_1BF4F1CC0);
  sub_1BF4E7D14();

  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  (*(v123 + 8))(v125, v124);
  __swift_destroy_boxed_opaque_existential_1Tm(v96);
  return v100;
}

uint64_t sub_1BF45D9CC()
{
  os_unfair_lock_assert_owner(*(*(v0 + qword_1EDC9AF58) + 16));
  swift_beginAccess();
  v1 = *(v0 + 176);
  if ((v1 & 1) == 0)
  {
    v2 = sub_1BF4E7B34();
    v3 = sub_1BF4E8E84();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1BF389000, v2, v3, "StatefulStore is disabled", v4, 2u);
      MEMORY[0x1BFB5A5D0](v4, -1, -1);
    }
  }

  return v1;
}

uint64_t sub_1BF45DAA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF44EA2C();
  *a1 = result;
  return result;
}

void sub_1BF45DB24(uint64_t a1)
{
  v3 = *(v1 + qword_1EDC9AF58);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1BF38E49C(a1, v4);
  sub_1BF44EC50(v4);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_1BF45DB84()
{
  v1 = qword_1EDCA6860;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t keypath_setTm_0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t keypath_get_44Tm@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v3 = *a1;
  *a3 = a2();
}

uint64_t keypath_set_45Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_1BF45DD04()
{
  result = sub_1BF4E8424();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1BF4E7B54();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_1BF45E734(void *a1, id a2, char a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 == 1)
  {
  }
}

id sub_1BF45E758(id result, id a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1BF45E76C(result, a2, a3);
  }

  return result;
}

id sub_1BF45E76C(id result, id a2, char a3)
{
  if (a3 == 2)
  {
    return result;
  }

  if (a3 == 1)
  {
  }

  return result;
}

void sub_1BF45E7A8(void *a1, id a2, char a3)
{
  if (a3 != -1)
  {
    sub_1BF45E734(a1, a2, a3);
  }
}

uint64_t objectdestroy_66Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF45E86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[5];
  v5 = v2[6];
  v6 = v2[7];
  v7 = v2[8];
  v9 = v2[9];
  return sub_1BF4575EC(a1, v2[3], v2[4], a2);
}

uint64_t sub_1BF45E8A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReloadConfiguration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF45E908()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 80) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = *(*(v0 + 24) - 8);
  v3 = (v1 + *(*(*(v0 + 16) - 8) + 64) + *(v2 + 80)) & ~*(v2 + 80);
  return sub_1BF45A004(v0 + v1, v0 + v3, *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1BF45EA40()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[9];
  v4 = *(swift_getTupleTypeMetadata2() + 48);
  return (*(v3 + 96))(v2, v3);
}

uint64_t sub_1BF45EABC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1BF45EB24(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[5];
  v4 = v1[6];
  return *(a1 + *(type metadata accessor for StatefulStoreReloadEvent() + 48)) == 0;
}

uint64_t sub_1BF45EB64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  v9 = v2[8];
  v11 = v2[9];
  return sub_1BF45922C(a1, a2);
}

unint64_t sub_1BF45EB9C()
{
  result = qword_1EDC9D718;
  if (!qword_1EDC9D718)
  {
    sub_1BF3901C0(255, &qword_1EDC9F140, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9D718);
  }

  return result;
}

uint64_t sub_1BF45EC04()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[10];
  v10 = v0[9];
  return sub_1BF457BB8();
}

uint64_t sub_1BF45EC3C(unsigned __int8 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[10];
  v10 = v1[8];
  v11 = v1[9];
  return sub_1BF457C30(a1);
}

uint64_t sub_1BF45EC74()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9ChronoKit13StatefulStoreC0cD11ReloadErrorOyxq_q0__G(uint64_t a1)
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

uint64_t sub_1BF45ECD8(uint64_t a1, unsigned int a2)
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

uint64_t sub_1BF45ED20(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BF45ED64(uint64_t result, unsigned int a2)
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

uint64_t RemoteActivitySubscription.ActivityOwnership.rescopingToRemote(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BF4E7394();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t RemoteActivitySubscription.ActivityOwnership.rescopingToLocal()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BF4E7394();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1BF45EF28()
{
  if (*v0)
  {
    result = 0x65746F6D6572;
  }

  else
  {
    result = 0x6C61636F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1BF45EF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1BF4E9734() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BF4E9734();

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

uint64_t sub_1BF45F030(uint64_t a1)
{
  v2 = sub_1BF462BAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF45F06C(uint64_t a1)
{
  v2 = sub_1BF462BAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF45F0A8(uint64_t a1)
{
  v2 = sub_1BF462C54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF45F0E4(uint64_t a1)
{
  v2 = sub_1BF462C54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF45F12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BF4E9734();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BF45F1AC(uint64_t a1)
{
  v2 = sub_1BF462C00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF45F1E8(uint64_t a1)
{
  v2 = sub_1BF462C00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteActivitySubscription.ActivityOwnership.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9600, &qword_1BF4F1DC0);
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v27 - v4;
  v5 = sub_1BF4E7394();
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9608, &qword_1BF4F1DC8);
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for RemoteActivitySubscription.ActivityOwnership(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9610, &qword_1BF4F1DD0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF462BAC();
  v22 = v34;
  sub_1BF4E9864();
  sub_1BF46350C(v35, v15, type metadata accessor for RemoteActivitySubscription.ActivityOwnership);
  if ((*(v22 + 48))(v15, 1, v5) == 1)
  {
    v36 = 0;
    sub_1BF462C54();
    sub_1BF4E95F4();
    (*(v28 + 8))(v11, v29);
  }

  else
  {
    v24 = v30;
    (*(v22 + 32))(v30, v15, v5);
    v37 = 1;
    sub_1BF462C00();
    v25 = v31;
    sub_1BF4E95F4();
    sub_1BF462CA8(&qword_1EDC9D5E0, MEMORY[0x1E69695A8]);
    v26 = v33;
    sub_1BF4E9674();
    (*(v32 + 8))(v25, v26);
    (*(v22 + 8))(v24, v5);
  }

  return (*(v17 + 8))(v20, v16);
}

uint64_t RemoteActivitySubscription.ActivityOwnership.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9630, &qword_1BF4F1DD8);
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9638, &qword_1BF4F1DE0);
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9640, &unk_1BF4F1DE8);
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - v14;
  v16 = type metadata accessor for RemoteActivitySubscription.ActivityOwnership(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v48 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1BF462BAC();
  v25 = v58;
  sub_1BF4E9854();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v59);
  }

  v58 = v16;
  v49 = v19;
  v50 = v22;
  v27 = v55;
  v26 = v56;
  v28 = sub_1BF4E95D4();
  v29 = (2 * *(v28 + 16)) | 1;
  v60 = v28;
  v61 = v28 + 32;
  v62 = 0;
  v63 = v29;
  v30 = sub_1BF3DD32C();
  v31 = v12;
  v32 = v15;
  if (v30 == 2 || v62 != v63 >> 1)
  {
    v35 = sub_1BF4E9344();
    swift_allocError();
    v37 = v36;
    v38 = v31;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8928, &qword_1BF4EB830) + 48);
    *v37 = v58;
    sub_1BF4E9534();
    sub_1BF4E9334();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    (*(v57 + 8))(v15, v38);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v59);
  }

  if (v30)
  {
    v64 = 1;
    sub_1BF462C00();
    v33 = v27;
    sub_1BF4E9524();
    v34 = v57;
    v42 = v26;
    v43 = sub_1BF4E7394();
    sub_1BF462CA8(&qword_1EBDD8958, MEMORY[0x1E69695A8]);
    v44 = v49;
    v45 = v53;
    sub_1BF4E95B4();
    (*(v54 + 8))(v33, v45);
    (*(v34 + 8))(v32, v31);
    swift_unknownObjectRelease();
    (*(*(v43 - 8) + 56))(v44, 0, 1, v43);
    v46 = v50;
    sub_1BF462CF0(v44, v50);
  }

  else
  {
    v64 = 0;
    sub_1BF462C54();
    sub_1BF4E9524();
    v41 = v57;
    v42 = v26;
    (*(v52 + 8))(v11, v51);
    (*(v41 + 8))(v15, v12);
    swift_unknownObjectRelease();
    v47 = sub_1BF4E7394();
    v46 = v50;
    (*(*(v47 - 8) + 56))(v50, 1, 1, v47);
  }

  sub_1BF462CF0(v46, v42);
  return __swift_destroy_boxed_opaque_existential_1Tm(v59);
}

uint64_t sub_1BF45FD10(uint64_t a1)
{
  v2 = sub_1BF462DFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF45FD4C(uint64_t a1)
{
  v2 = sub_1BF462DFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF45FD88()
{
  v1 = 1701736302;
  v2 = 0x737472656C61;
  if (*v0 != 2)
  {
    v2 = 1819047270;
  }

  if (*v0)
  {
    v1 = 0x6168436574617473;
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

uint64_t sub_1BF45FDF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF4641D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF45FE2C(uint64_t a1)
{
  v2 = sub_1BF462D54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF45FE68(uint64_t a1)
{
  v2 = sub_1BF462D54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF45FEA4(uint64_t a1)
{
  v2 = sub_1BF462DA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF45FEE0(uint64_t a1)
{
  v2 = sub_1BF462DA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF45FF1C(uint64_t a1)
{
  v2 = sub_1BF462EA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF45FF58(uint64_t a1)
{
  v2 = sub_1BF462EA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF45FF94(uint64_t a1)
{
  v2 = sub_1BF462E50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF45FFD0(uint64_t a1)
{
  v2 = sub_1BF462E50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteActivitySubscription.ActivitySubscriptionType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9648, &qword_1BF4F1DF8);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9650, &qword_1BF4F1E00);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9658, &qword_1BF4F1E08);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9660, &qword_1BF4F1E10);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9668, &qword_1BF4F1E18);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF462D54();
  sub_1BF4E9864();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_1BF462DFC();
      v24 = v33;
      sub_1BF4E95F4();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_1BF462DA8();
      v24 = v36;
      sub_1BF4E95F4();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_1BF462E50();
    v24 = v30;
    sub_1BF4E95F4();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_1BF462EA4();
  sub_1BF4E95F4();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

uint64_t RemoteActivitySubscription.ActivitySubscriptionType.hashValue.getter()
{
  v1 = *v0;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v1);
  return sub_1BF4E9844();
}

uint64_t RemoteActivitySubscription.ActivitySubscriptionType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9698, &qword_1BF4F1E20);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD96A0, &qword_1BF4F1E28);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD96A8, &qword_1BF4F1E30);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD96B0, &qword_1BF4F1E38);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD96B8, &unk_1BF4F1E40);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1BF462D54();
  v21 = v53;
  sub_1BF4E9854();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_1BF4E95D4();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_1BF3DD360();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_1BF4E9344();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8928, &qword_1BF4EB830) + 48);
      *v34 = &type metadata for RemoteActivitySubscription.ActivitySubscriptionType;
      sub_1BF4E9534();
      sub_1BF4E9334();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1Tm(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_1BF462E50();
        v39 = v42;
        sub_1BF4E9524();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_1BF462EA4();
        v31 = v42;
        sub_1BF4E9524();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1Tm(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_1BF462DFC();
      v38 = v42;
      sub_1BF4E9524();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_1BF462DA8();
      v40 = v42;
      sub_1BF4E9524();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v54);
}

uint64_t RemoteActivitySubscription.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BF4E7394();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RemoteActivitySubscription.id.setter(uint64_t a1)
{
  v3 = sub_1BF4E7394();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RemoteActivitySubscription.activityID.getter()
{
  v1 = (v0 + *(type metadata accessor for RemoteActivitySubscription(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RemoteActivitySubscription.activityID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RemoteActivitySubscription(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RemoteActivitySubscription.hostIdentity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoteActivitySubscription(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoteActivitySubscription.hostIdentity.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoteActivitySubscription(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoteActivitySubscription.activityOwner.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RemoteActivitySubscription(0) + 28);

  return sub_1BF462F18(a1, v3);
}

uint64_t RemoteActivitySubscription.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoteActivitySubscription(0) + 32);
  v4 = sub_1BF4E8674();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoteActivitySubscription.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoteActivitySubscription(0) + 32);
  v4 = sub_1BF4E8674();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoteActivitySubscription.family.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoteActivitySubscription(0) + 36);
  v4 = sub_1BF4E8364();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoteActivitySubscription.family.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoteActivitySubscription(0) + 36);
  v4 = sub_1BF4E8364();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoteActivitySubscription.subscriptionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RemoteActivitySubscription(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t RemoteActivitySubscription.subscriptionType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RemoteActivitySubscription(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t RemoteActivitySubscription.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RemoteActivitySubscription(0) + 44);

  return sub_1BF3ABF74(v3, a1);
}

uint64_t RemoteActivitySubscription.creationDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RemoteActivitySubscription(0) + 44);

  return sub_1BF3AC398(a1, v3);
}

uint64_t RemoteActivitySubscription.description.getter()
{
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](540697705, 0xE400000000000000);
  sub_1BF4E7394();
  sub_1BF462CA8(&unk_1EBDD92C0, MEMORY[0x1E69695A8]);
  v1 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v1);

  MEMORY[0x1BFB58C90](0x697669746361203BLL, 0xEE00203A44497974);
  v2 = type metadata accessor for RemoteActivitySubscription(0);
  MEMORY[0x1BFB58C90](*(v0 + v2[5]), *(v0 + v2[5] + 8));
  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4FBEF0);
  v3 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  sub_1BF38C8B4(&qword_1EBDD96C0, &unk_1EBDD85B0, &unk_1BF4EA9E0);
  v4 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x63697274656D203BLL, 0xEB00000000203A73);
  v5 = v2[8];
  sub_1BF4E8674();
  sub_1BF462CA8(&qword_1EBDD96C8, MEMORY[0x1E6985AA8]);
  v6 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x796C696D6166203BLL, 0xEA0000000000203ALL);
  v7 = v2[9];
  sub_1BF4E8364();
  sub_1BF462CA8(&qword_1EBDD96D0, MEMORY[0x1E69858D8]);
  v8 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v8);

  return 0;
}

uint64_t RemoteActivitySubscription.init(id:activityID:hostIdentity:activityOwner:metrics:family:subscriptionType:creationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = *a8;
  v18 = type metadata accessor for RemoteActivitySubscription(0);
  v19 = v18[11];
  v20 = sub_1BF4E7334();
  (*(*(v20 - 8) + 56))(a9 + v19, 1, 1, v20);
  v21 = sub_1BF4E7394();
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = (a9 + v18[5]);
  *v22 = a2;
  v22[1] = a3;
  v23 = v18[6];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  (*(*(v24 - 8) + 32))(a9 + v23, a4, v24);
  sub_1BF462CF0(a5, a9 + v18[7]);
  v25 = v18[8];
  v26 = sub_1BF4E8674();
  (*(*(v26 - 8) + 32))(a9 + v25, a6, v26);
  v27 = v18[9];
  v28 = sub_1BF4E8364();
  (*(*(v28 - 8) + 32))(a9 + v27, a7, v28);
  *(a9 + v18[10]) = v17;

  return sub_1BF3AC398(a10, a9 + v19);
}