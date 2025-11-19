uint64_t sub_2166FBDA8()
{
  v1 = (type metadata accessor for RemoveFromPlaylistAction() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v2);
  v4 = v1[7];
  sub_21700C8E4();
  OUTLINED_FUNCTION_34();
  (*(v5 + 8))(v2 + v4);
  v6 = v1[8];
  sub_21700C924();
  OUTLINED_FUNCTION_34();
  (*(v7 + 8))(v2 + v6);

  return swift_deallocObject();
}

uint64_t sub_2166FBF34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2167D1450();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2166FBF8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A20);
  OUTLINED_FUNCTION_2(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  v4 = v0 + v3;
  v5 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v5))
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 16);
    v6 = *(v5 + 24);
    v7 = sub_21700D7A4();
    if (!__swift_getEnumTagSinglePayload(v4 + v6, 1, v7))
    {
      OUTLINED_FUNCTION_50();
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_2166FC0D0(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[7];
LABEL_7:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A20);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[9];
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
  OUTLINED_FUNCTION_17();
  if (*(v13 + 84) == a2)
  {
    v8 = v12;
    v9 = a3[10];
    goto LABEL_7;
  }

  v15 = *(a1 + a3[12]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

void sub_2166FC220(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[7];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A20);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[9];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
      OUTLINED_FUNCTION_17();
      if (*(v15 + 84) != a3)
      {
        *(a1 + a4[12]) = (a2 - 1);
        return;
      }

      v10 = v14;
      v11 = a4[10];
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_2166FC36C()
{
  sub_217008A64();
  OUTLINED_FUNCTION_34();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_2166FC4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for OpenFinancePageAction.Kind(0);
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2166FC590(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for OpenFinancePageAction.Kind(0);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2166FC688()
{
  type metadata accessor for PromptRemoveAppWithAccessAction();
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v4 + 8))(v1 + v3);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  if (*(v1 + v3 + *(v0 + 44) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2166FC7D4(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for SocialOnboardingPrivacySettingsPageLockup();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_2166FC8CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for SocialOnboardingPrivacySettingsPageLockup();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[6];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_2166FCABC()
{
  type metadata accessor for FollowUserAction();
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  sub_2170075A4();
  OUTLINED_FUNCTION_1();

  v4 = *(v0 + 32);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v1 + v3 + v4);
  v6 = OUTLINED_FUNCTION_8_11();
  v7(v6);

  return swift_deallocObject();
}

uint64_t sub_2166FCC1C()
{
  type metadata accessor for UnfollowUserAction();
  OUTLINED_FUNCTION_117();
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  sub_2170075A4();
  OUTLINED_FUNCTION_1();

  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v0 + v2);

  v4 = OUTLINED_FUNCTION_8_11();
  v5(v4);

  return swift_deallocObject();
}

uint64_t sub_2166FCD70()
{
  v1 = type metadata accessor for OpenSocialProfileEditAction();
  OUTLINED_FUNCTION_2(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v9 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);

  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v0 + v3);
  (*(v8 + 8))(v0 + v9, v6);

  return swift_deallocObject();
}

uint64_t sub_2166FCEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FlowAction(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2166FCF5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_110();
  result = type metadata accessor for FlowAction(v8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2166FD084()
{

  return swift_deallocObject();
}

uint64_t sub_2166FD128()
{

  return swift_deallocObject();
}

uint64_t sub_2166FD170()
{
  sub_217007324();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_2166FD1EC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_68_1();

  return swift_deallocObject();
}

uint64_t sub_2166FD220()
{
  sub_21700C084();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_2166FD2A0()
{
  type metadata accessor for GoToArtistContext(0);
  OUTLINED_FUNCTION_43_0();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    sub_21700C1E4();
  }

  else if (EnumCaseMultiPayload == 1)
  {
    sub_21700BA44();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }

    sub_21700C084();
  }

  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v0 + v2);
LABEL_8:

  return swift_deallocObject();
}

uint64_t sub_2166FD390()
{
  type metadata accessor for FlowActionPageView();
  OUTLINED_FUNCTION_43_0();
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v4 = v0 + v3;
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v0 + v3);
  v6 = type metadata accessor for FlowAction(0);
  v7 = v0 + v3 + v6[5];
  type metadata accessor for FlowAction.Destination(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      goto LABEL_37;
    case 2u:

      v14 = *(type metadata accessor for ContentDescriptor() + 24);
      v15 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_87_2(v15))
      {
        OUTLINED_FUNCTION_50();
        (*(v16 + 8))(v7 + v14, v1);
      }

      v17 = &qword_27CAB80F0;
      goto LABEL_21;
    case 3u:

      goto LABEL_22;
    case 4u:
    case 0x15u:

      v8 = *(type metadata accessor for ContentDescriptor() + 24);
      v9 = sub_217005EF4();
      goto LABEL_29;
    case 5u:
      type metadata accessor for GoToArtistContext(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        sub_21700C1E4();
      }

      else if (EnumCaseMultiPayload == 1)
      {
        sub_21700BA44();
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          goto LABEL_37;
        }

LABEL_35:
        sub_21700C084();
      }

LABEL_36:
      OUTLINED_FUNCTION_9_0();
      (*(v29 + 8))(v7, v30);
LABEL_37:

      v31 = v6[8];
      v32 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_23_4(v4 + v31))
      {
        OUTLINED_FUNCTION_50();
        (*(v33 + 8))(v4 + v31, v32);
      }

      v34 = v4 + v6[9];
      v35 = type metadata accessor for ReferrerInfo();
      if (!__swift_getEnumTagSinglePayload(v34, 1, v35))
      {
        if (!OUTLINED_FUNCTION_23_4(v34))
        {
          OUTLINED_FUNCTION_50();
          (*(v36 + 8))(v34, v32);
        }
      }

      v37 = v4 + v6[10];
      if (*(v37 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
      }

      v38 = v4 + v6[11];
      v39 = type metadata accessor for Page.Header(0);
      if (!OUTLINED_FUNCTION_23_4(v38))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        v40 = *(v39 + 20);
        v41 = sub_21700D7A4();
        if (!__swift_getEnumTagSinglePayload(v38 + v40, 1, v41))
        {
          OUTLINED_FUNCTION_50();
          (*(v42 + 8))(v38 + v40, v41);
        }

        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_89();

        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_89();
      }

      return swift_deallocObject();
    case 6u:
    case 7u:
      goto LABEL_35;
    case 8u:
      sub_2170073D4();
      goto LABEL_36;
    case 9u:
      sub_217007324();
      goto LABEL_36;
    case 0xAu:
      sub_21700C384();
      goto LABEL_36;
    case 0xBu:
      sub_2170072A4();
      goto LABEL_36;
    case 0xCu:
      sub_217006F54();
      goto LABEL_36;
    case 0xDu:
      sub_21700C1E4();
      OUTLINED_FUNCTION_9_0();
      (*(v18 + 8))(v7);
      v17 = &qword_27CAB80D0;
      goto LABEL_21;
    case 0xEu:
      sub_21700C924();
      OUTLINED_FUNCTION_9_0();
      (*(v19 + 8))(v7);
      v17 = &qword_27CAB80C8;
LABEL_21:
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v17);
      OUTLINED_FUNCTION_8_9(*(v20 + 48));
      goto LABEL_22;
    case 0xFu:

      v24 = *(type metadata accessor for ContentDescriptor() + 24);
      v25 = sub_217005EF4();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7 + v24, 1, v25);
      v27 = *(v25 - 8);
      if (!EnumTagSinglePayload)
      {
        (*(v27 + 8))(v7 + v24, v25);
      }

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F8);
      (*(v27 + 8))(v7 + *(v28 + 48), v25);
      goto LABEL_37;
    case 0x10u:
      sub_21700C1E4();
      OUTLINED_FUNCTION_9_0();
      (*(v22 + 8))(v7);
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C0) + 48);
      v9 = sub_21700C2F4();
      goto LABEL_29;
    case 0x11u:
      sub_21700C924();
      OUTLINED_FUNCTION_9_0();
      (*(v10 + 8))(v7);
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B8) + 48);
      v9 = sub_21700C8E4();
LABEL_29:
      if (!OUTLINED_FUNCTION_87_2(v9))
      {
        OUTLINED_FUNCTION_50();
        (*(v23 + 8))(v7 + v8, v1);
      }

      goto LABEL_37;
    case 0x12u:
      sub_21700C734();
      goto LABEL_36;
    case 0x14u:
      type metadata accessor for ReportableMusicItem();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          sub_21700C924();
          goto LABEL_36;
        case 1u:
          sub_217006E94();
          goto LABEL_36;
        case 2u:
        case 3u:
          goto LABEL_35;
        case 4u:
          v44 = sub_21700C4B4();
          if (!__swift_getEnumTagSinglePayload(v7, 1, v44))
          {
            OUTLINED_FUNCTION_50();
            (*(v45 + 8))(v7, v44);
          }

          v46 = type metadata accessor for SocialProfileDescriptor(0);
          OUTLINED_FUNCTION_8_9(v46[5]);

          OUTLINED_FUNCTION_8_9(v46[6]);

          OUTLINED_FUNCTION_8_9(v46[7]);

          v11 = v46[8];
          goto LABEL_9;
        case 5u:

          goto LABEL_22;
        default:
          goto LABEL_37;
      }

      goto LABEL_37;
    case 0x16u:

      goto LABEL_22;
    case 0x17u:
      goto LABEL_22;
    case 0x18u:

      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4E0) + 48);
LABEL_9:
      sub_217005EF4();
      OUTLINED_FUNCTION_9_0();
      (*(v12 + 8))(v7 + v11, v13);
      goto LABEL_37;
    case 0x19u:

LABEL_22:

      goto LABEL_37;
    case 0x1Au:

      goto LABEL_37;
    default:
      goto LABEL_37;
  }
}

uint64_t sub_2166FDD0C()
{

  return swift_deallocObject();
}

uint64_t sub_2166FDD94()
{
  v1 = type metadata accessor for RoutedPageIntent();
  OUTLINED_FUNCTION_43_0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v0 + v3;
  v5 = type metadata accessor for ReferrerInfo();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v5))
  {
    v6 = sub_217005EF4();
    if (!OUTLINED_FUNCTION_23_4(v0 + v3))
    {
      OUTLINED_FUNCTION_50();
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  v8 = *(v1 + 20);
  v9 = sub_217005EF4();
  if (!__swift_getEnumTagSinglePayload(v4 + v8, 1, v9))
  {
    OUTLINED_FUNCTION_50();
    (*(v10 + 8))(v4 + v8, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_2166FDF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2166FDFB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2166FE060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81E0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2166FE114(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81E0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2166FE1EC()
{

  return swift_deallocObject();
}

uint64_t sub_2166FE288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217006A94();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2166FE334(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_217006A94();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2166FE3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2166FE498(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2166FE550()
{
  v1 = type metadata accessor for OpenFinancePageAction(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0 + v2);

  v4 = *(v1 + 24);
  type metadata accessor for OpenFinancePageAction.Kind(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_217005EF4();
    OUTLINED_FUNCTION_34();
    (*(v5 + 8))(v0 + v2 + v4);
  }

  return swift_deallocObject();
}

uint64_t sub_2166FE6AC(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    OUTLINED_FUNCTION_17();
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      sub_21700C554();
      OUTLINED_FUNCTION_17();
      if (*(v14 + 84) == a2)
      {
        v11 = v13;
        v12 = a3[6];
      }

      else
      {
        v11 = type metadata accessor for MenuConfiguration(0);
        v12 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

void *sub_2166FE7CC(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      sub_21700C554();
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = type metadata accessor for MenuConfiguration(0);
        v11 = a4[7];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_2166FE8E0()
{
  v1 = type metadata accessor for SearchAction();
  v2 = (*(*(v1 - 8) + 80) + 56) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (*(v0 + v2 + 8))
  {
  }

  v3 = *(v1 + 20);
  v4 = sub_21700D284();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_2166FEA34()
{
  v2 = type metadata accessor for ShareMusicItemAction();
  v3 = (*(*(v2 - 8) + 80) + 24) & ~*(*(v2 - 8) + 80);
  v31 = *(*(v2 - 8) + 64);
  v4 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v7 = *(v5 + 80);

  v8 = v0 + v3;
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v9 + 8))(v0 + v3);
  v10 = v0 + v3 + *(v2 + 20);
  v11 = type metadata accessor for ShareableMusicItem(0);
  if (!OUTLINED_FUNCTION_4_16(v11))
  {
    OUTLINED_FUNCTION_108();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        sub_21700C1E4();
        goto LABEL_32;
      case 1u:
        sub_21700C384();
        goto LABEL_32;
      case 2u:
        sub_2170072A4();
        goto LABEL_32;
      case 3u:
        sub_21700C554();
        goto LABEL_32;
      case 4u:
        sub_217006F54();
        goto LABEL_32;
      case 5u:
        v17 = sub_21700C4B4();
        if (!OUTLINED_FUNCTION_4_16(v17))
        {
          OUTLINED_FUNCTION_50();
          v18 = OUTLINED_FUNCTION_108();
          v19(v18);
        }

        type metadata accessor for SocialProfileDescriptor(0);
        OUTLINED_FUNCTION_6_21();
        OUTLINED_FUNCTION_8_13();
        OUTLINED_FUNCTION_8_13();
        v20 = *(v1 + 32);
        sub_217005EF4();
        OUTLINED_FUNCTION_34();
        (*(v21 + 8))(v10 + v20);
        type metadata accessor for MusicFriendsInviteDescriptor(0);
        OUTLINED_FUNCTION_6_21();
        OUTLINED_FUNCTION_8_13();
        break;
      case 6u:
        sub_21700C254();
        goto LABEL_32;
      case 7u:
        sub_217006B84();
        goto LABEL_32;
      case 8u:
        sub_21700BA44();
        goto LABEL_32;
      case 9u:
        sub_21700C924();
        goto LABEL_32;
      case 0xAu:
        sub_21700C994();
        goto LABEL_32;
      case 0xBu:
        sub_21700BEA4();
        goto LABEL_32;
      case 0xCu:
        v12 = sub_21700C4B4();
        if (!OUTLINED_FUNCTION_4_16(v12))
        {
          OUTLINED_FUNCTION_50();
          v13 = OUTLINED_FUNCTION_108();
          v14(v13);
        }

        v15 = type metadata accessor for ShareURLDescriptor(0);
        OUTLINED_FUNCTION_8_13();
        v16 = *(v15 + 28);
        goto LABEL_26;
      case 0xDu:
        v22 = sub_21700C4B4();
        if (!OUTLINED_FUNCTION_4_16(v22))
        {
          OUTLINED_FUNCTION_50();
          v23 = OUTLINED_FUNCTION_108();
          v24(v23);
        }

        type metadata accessor for SocialProfileDescriptor(0);
        OUTLINED_FUNCTION_6_21();
        OUTLINED_FUNCTION_8_13();
        OUTLINED_FUNCTION_8_13();
        v16 = *(v1 + 32);
LABEL_26:
        sub_217005EF4();
        OUTLINED_FUNCTION_34();
        (*(v25 + 8))(v10 + v16);
        break;
      case 0xEu:
        sub_21700C084();
        goto LABEL_32;
      case 0xFu:
        sub_21700C644();
        goto LABEL_32;
      case 0x10u:
        sub_21700C2F4();
        goto LABEL_32;
      case 0x11u:
        sub_2170073D4();
        goto LABEL_32;
      case 0x12u:
        sub_217007324();
        goto LABEL_32;
      case 0x13u:
        sub_217007264();
        goto LABEL_32;
      case 0x14u:
        sub_217007064();
        goto LABEL_32;
      case 0x15u:
        sub_2170070F4();
LABEL_32:
        OUTLINED_FUNCTION_34();
        (*(v26 + 8))(v10);
        break;
      default:
        break;
    }
  }

  v27 = *(v2 + 24);
  v28 = sub_217005EF4();
  if (!__swift_getEnumTagSinglePayload(v8 + v27, 1, v28))
  {
    OUTLINED_FUNCTION_50();
    (*(v29 + 8))(v8 + v27, v28);
  }

  (*(v6 + 8))(v0 + ((v3 + v31 + v7) & ~v7), v4);

  return swift_deallocObject();
}

uint64_t sub_2166FEF1C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2166FEF54()
{

  return swift_deallocObject();
}

uint64_t sub_2166FEFB4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21700D284();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2166FF03C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2166FF0BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2166FF100()
{
  type metadata accessor for SongDetailContentView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7BE8);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  OUTLINED_FUNCTION_5_19();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_21();
  sub_21669E098(v0, v1);
  OUTLINED_FUNCTION_0_9();
  return swift_getWitnessTable();
}

uint64_t sub_2166FF1F8()
{
  OUTLINED_FUNCTION_92();
  v2 = sub_21700C084();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_2166FF23C()
{
  OUTLINED_FUNCTION_92();
  v2 = sub_21700C084();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_2166FF284(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_15:

    return __swift_getEnumTagSinglePayload(v9, v3, v8);
  }

  if (v3 != 2147483646)
  {
    sub_21700C084();
    OUTLINED_FUNCTION_17();
    if (*(v14 + 84) == v3)
    {
      v8 = v13;
      v15 = a3[11];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E0);
      OUTLINED_FUNCTION_17();
      if (*(v17 + 84) == v3)
      {
        v8 = v16;
        v15 = a3[12];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
        v15 = a3[13];
      }
    }

    v9 = v4 + v15;
    goto LABEL_15;
  }

  v10 = *(v4 + a3[9]);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  v11 = v10 - 1;
  if (v11 < 0)
  {
    v11 = -1;
  }

  return (v11 + 1);
}

void sub_2166FF3FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v5 + a4[9]) = v4;
      return;
    }

    sub_21700C084();
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[11];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E0);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[12];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
        v14 = a4[13];
      }
    }

    v11 = v5 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_2166FF564()
{
  type metadata accessor for SongDetailHeaderView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB84A8);
  OUTLINED_FUNCTION_11_3();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_3();
  sub_217008044();

  return swift_getWitnessTable();
}

uint64_t sub_2166FF6A4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2166FF6FC()
{
  v1 = *(type metadata accessor for SongDetailLyricsButton(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_21700C084();
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_2166FF7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) != v3)
    {
      v13 = *(v4 + *(a3 + 28) + 8);
      if (v13 > 1)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_2166FF8BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84E0);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(v5 + *(a4 + 28) + 8) = -v4;
      return;
    }

    v10 = v12;
    v11 = v5 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_2166FF9BC()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  sub_21700C084();
  sub_2167FCC68(&qword_27CAB8618, &unk_27CAB8608, &unk_21701A200, sub_2167FCC38);
  sub_2167FDEE4(&qword_27CAB86B0, MEMORY[0x277CD8238]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2166FFAA0()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2166FFB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2166FFC18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 24) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2166FFD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2166FFD94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2166FFEA4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2166FFF08()
{
  v1 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_2166FFFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_110();
  type metadata accessor for TopSearchLockup();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    sub_2170067A4();
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) != a2)
    {
      v13 = *(v3 + *(a3 + 24));
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_2167000BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  type metadata accessor for TopSearchLockup();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    sub_2170067A4();
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(v4 + *(a4 + 24)) = a2 + 1;
      return;
    }

    v10 = v12;
    v11 = v4 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2167001A0(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
        v11 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_2167002CC(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
        v11 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_216700400()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8C00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75D0);
  sub_21680D978();
  OUTLINED_FUNCTION_18_10();
  sub_21680DFBC(v0, &qword_27CAB75D0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216700520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 120);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
      v10 = *(a3 + 40);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_216700604(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 120) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
      v10 = *(a4 + 40);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_2167006F4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D38);
  OUTLINED_FUNCTION_34();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21670075C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8D38);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

__n128 sub_216700804(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_216700838()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_43_9();
  v2 = type metadata accessor for LibraryAction();
  v3 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  OUTLINED_FUNCTION_43_9();
  type metadata accessor for LibraryActionType();
  if (swift_getEnumCaseMultiPayload() <= 5)
  {
    (*(*(v1 - 8) + 8))(v0 + v3, v1);
  }

  v4 = *(v2 + 44);
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v5 + 8))(v0 + v3 + v4);

  return swift_deallocObject();
}

uint64_t sub_21670098C()
{
  OUTLINED_FUNCTION_41_8();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216700A14()
{
  OUTLINED_FUNCTION_41_8();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216700A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_216700B78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216700C50(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_5_21();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v6 + 84) == a2)
  {
    v7 = *(a3 + 20);
  }

  else
  {
    type metadata accessor for SplitPosterLockup.Item(0);
    v7 = *(a3 + 24);
  }

  v8 = OUTLINED_FUNCTION_19_1(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_216700D10()
{
  OUTLINED_FUNCTION_21_0();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 20);
    }

    else
    {
      type metadata accessor for SplitPosterLockup.Item(0);
      v8 = *(v5 + 24);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_216700DD0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_5_21();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_17();
  if (*(v6 + 84) == a2)
  {
    v7 = *(a3 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    v7 = *(a3 + 36);
  }

  v8 = OUTLINED_FUNCTION_19_1(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_216700E9C()
{
  OUTLINED_FUNCTION_21_0();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      v8 = *(v5 + 36);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_216700F90()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_216700FC8()
{

  return swift_deallocObject();
}

uint64_t sub_216701000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_2167010BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_216701168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2167011FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216701324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MappedSection.Content(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2167013E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MappedSection.Content(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2167014CC()
{
  v4 = *(type metadata accessor for PageListSectionView() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v0 + v5;
  type metadata accessor for MappedSection.Content(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 4u:
    case 5u:
    case 0xDu:
    case 0x17u:
    case 0x35u:
    case 0x3Au:
    case 0x3Bu:
      goto LABEL_2;
    case 1u:
      sub_21700C1E4();
      OUTLINED_FUNCTION_9_0();
      (*(v157 + 8))(v0 + v5);
      v110 = &unk_27CAB7938;
      goto LABEL_105;
    case 2u:
      OUTLINED_FUNCTION_10_14();
      type metadata accessor for AnimatedTextListItem();
      goto LABEL_57;
    case 3u:
    case 7u:
    case 0xBu:
    case 0xEu:
    case 0xFu:
    case 0x12u:
    case 0x13u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x24u:
    case 0x2Du:
    case 0x33u:
    case 0x34u:
    case 0x36u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Du:
      goto LABEL_153;
    case 6u:
      v140 = OUTLINED_FUNCTION_10_14();
      type metadata accessor for MappedArtistLatestReleaseAndTopSongs(v140);
      v141 = OUTLINED_FUNCTION_15_13();
      if (!OUTLINED_FUNCTION_7_21(v141))
      {
        OUTLINED_FUNCTION_4_23();
        v142 = OUTLINED_FUNCTION_16_19();
        v143(v142);
      }

      v144 = v6 + *(v1 + 24);
      v145 = _s7SectionV6HeaderVMa(0);
      v146 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v146, v147, v145))
      {
        v148 = (v144 + *(v145 + 20));
        v149 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
        v150 = OUTLINED_FUNCTION_19_2();
        if (!__swift_getEnumTagSinglePayload(v150, v151, v149))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:

              goto LABEL_181;
            case 1u:
              __swift_destroy_boxed_opaque_existential_1Tm(v148);
              v236 = type metadata accessor for ComposerSectionHeader();
              v255 = v236[5];
              if (!OUTLINED_FUNCTION_20_1(&v148[v255]))
              {
                OUTLINED_FUNCTION_4_23();
                (*(v237 + 8))(&v148[v255], v2);
              }

              v238 = &v148[v236[11]];
              if (*(v238 + 24))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v238);
              }

              v239 = &v148[v236[12]];
              v240 = type metadata accessor for ContentDescriptor();
              v241 = OUTLINED_FUNCTION_19_2();
              if (!__swift_getEnumTagSinglePayload(v241, v242, v240))
              {

                v243 = *(v240 + 24);
                v244 = sub_217005EF4();
                v256 = v243;
                v245 = &v239[v243];
                v246 = v244;
                if (!__swift_getEnumTagSinglePayload(v245, 1, v244))
                {
                  (*(*(v246 - 8) + 8))(&v239[v256], v246);
                }
              }

              break;
            case 2u:
              if (*(v148 + 1))
              {

                if (*(v148 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v148 + 32));
                }
              }

              if (*(v148 + 10))
              {

                if (*(v148 + 16))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v148 + 104));
                }
              }

              v222 = &v148[*(type metadata accessor for DefaultSectionHeader() + 32)];
              v223 = type metadata accessor for Artwork();
              v224 = OUTLINED_FUNCTION_19_2();
              if (!__swift_getEnumTagSinglePayload(v224, v225, v223))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v226 + 8))(v222);
                v227 = *(v223 + 20);
                sub_21700C444();
                OUTLINED_FUNCTION_9_0();
                (*(v228 + 8))(&v222[v227], v229);
              }

              break;
            case 3u:
              if (*(v148 + 1))
              {

                if (*(v148 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v148 + 32));
                }
              }

LABEL_181:

              break;
            default:
              break;
          }
        }
      }

      v152 = v6 + *(v1 + 32);
      v153 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v153, v154, v145))
      {
        v155 = v152 + *(v145 + 20);
        v156 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
        if (!OUTLINED_FUNCTION_4_16(v156))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:

              goto LABEL_186;
            case 1u:
              __swift_destroy_boxed_opaque_existential_1Tm(v155);
              v247 = type metadata accessor for ComposerSectionHeader();
              v248 = v247[5];
              if (!OUTLINED_FUNCTION_20_1(v155 + v248))
              {
                OUTLINED_FUNCTION_4_23();
                (*(v249 + 8))(v155 + v248, v2);
              }

              v250 = v155 + v247[11];
              if (*(v250 + 24))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v250);
              }

              v251 = v155 + v247[12];
              v252 = type metadata accessor for ContentDescriptor();
              if (!OUTLINED_FUNCTION_15_10(v252))
              {

                v253 = *(v155 + 24);
                v254 = sub_217005EF4();
                if (!OUTLINED_FUNCTION_23_8(v254))
                {
                  (*(*(v155 - 8) + 8))(v251 + v253, v155);
                }
              }

              break;
            case 2u:
              if (*(v155 + 8))
              {

                if (*(v155 + 56))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v155 + 32);
                }
              }

              if (*(v155 + 80))
              {

                if (*(v155 + 128))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v155 + 104);
                }
              }

              v230 = v155 + *(type metadata accessor for DefaultSectionHeader() + 32);
              v231 = type metadata accessor for Artwork();
              if (!OUTLINED_FUNCTION_15_10(v231))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v232 + 8))(v230);
                v233 = *(v155 + 20);
                sub_21700C444();
                OUTLINED_FUNCTION_9_0();
                (*(v234 + 8))(v230 + v233, v235);
              }

              break;
            case 3u:
              if (*(v155 + 8))
              {

                if (*(v155 + 56))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v155 + 32);
                }
              }

LABEL_186:

              break;
            default:
              break;
          }
        }
      }

LABEL_2:

      goto LABEL_154;
    case 8u:
      v50 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v50))
      {
        OUTLINED_FUNCTION_3_11();
        v51 = OUTLINED_FUNCTION_116();
        v52(v51);
      }

      v53 = type metadata accessor for ContainerDetailTracklistFooterLockup();
      OUTLINED_FUNCTION_1_31(v53);
      OUTLINED_FUNCTION_21_14();
      v54 = type metadata accessor for ContentDescriptor();
      if (!OUTLINED_FUNCTION_15_10(v54))
      {

        v55 = *(v3 + 24);
        v56 = sub_217005EF4();
        if (!OUTLINED_FUNCTION_23_8(v56))
        {
          (*(*(v3 - 8) + 8))(v2 + v55, v3);
        }
      }

      OUTLINED_FUNCTION_93_0(*(v1 + 32));

      if (*(v6 + *(v1 + 36) + 8))
      {
      }

      goto LABEL_153;
    case 9u:
      v57 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v57))
      {
        OUTLINED_FUNCTION_3_11();
        v58 = OUTLINED_FUNCTION_116();
        v59(v58);
      }

      v60 = type metadata accessor for CuratorDetailHeaderComponentModel();
      __swift_destroy_boxed_opaque_existential_1Tm(v6 + v60[5]);
      OUTLINED_FUNCTION_93_0(v60[6]);

      v61 = v60[7];
      v62 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_22_8(v6 + v61))
      {
        OUTLINED_FUNCTION_3_11();
        (*(v63 + 8))(v6 + v61, v62);
      }

      v64 = v6 + v60[8];
      v65 = type metadata accessor for Artwork();
      v66 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v66, v67, v65))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v68 + 8))(v64);
        v69 = *(v65 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v70 + 8))(v64 + v69);
      }

      v71 = v6 + v60[10];
      v72 = OUTLINED_FUNCTION_19_2();
      if (!__swift_getEnumTagSinglePayload(v72, v73, v65))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v74 + 8))(v71);
        v75 = *(v65 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v76 + 8))(v71 + v75);
      }

      v77 = v6 + v60[11];
      v78 = type metadata accessor for VideoArtwork();
      if (!OUTLINED_FUNCTION_4_16(v78))
      {

        v79 = *(v71 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v80 + 8))(v77 + v79);
      }

      v6 += v60[12];
      v81 = type metadata accessor for ContentDescriptor();
      v82 = OUTLINED_FUNCTION_12_17();
      if (__swift_getEnumTagSinglePayload(v82, v83, v81))
      {
        goto LABEL_154;
      }

      v84 = *(v81 + 24);
      goto LABEL_147;
    case 0xAu:
      OUTLINED_FUNCTION_10_14();
      v115 = type metadata accessor for EmptyStateLockup();
      v116 = v115[5];
      v117 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_22_8(v6 + v116))
      {
        OUTLINED_FUNCTION_3_11();
        (*(v118 + 8))(v6 + v116, v117);
      }

      OUTLINED_FUNCTION_93_0(v115[7]);

      OUTLINED_FUNCTION_93_0(v115[8]);

      OUTLINED_FUNCTION_93_0(v115[9]);

      v119 = v6 + v115[10];
      v120 = type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_22_8(v119))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v121 + 8))(v119);
        v122 = *(v120 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v123 + 8))(v119 + v122);
      }

      v124 = v6 + v115[11];
      v125 = type metadata accessor for ColorSchemeArtwork();
      v126 = OUTLINED_FUNCTION_12_17();
      if (__swift_getEnumTagSinglePayload(v126, v127, v125))
      {
        goto LABEL_154;
      }

      v128 = OUTLINED_FUNCTION_12_17();
      if (!__swift_getEnumTagSinglePayload(v128, v129, v120))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v130 + 8))(v124);
        v131 = *(v120 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v132 + 8))(v124 + v131);
      }

      v6 = v124 + *(v125 + 20);
      goto LABEL_134;
    case 0xCu:
      v39 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v39))
      {
        OUTLINED_FUNCTION_3_11();
        v40 = OUTLINED_FUNCTION_116();
        v41(v40);
      }

      v42 = type metadata accessor for GroupedTextListLockup();
      OUTLINED_FUNCTION_1_31(v42);
      OUTLINED_FUNCTION_21_14();
      v43 = type metadata accessor for ModalPresentationDescriptor();
      if (!OUTLINED_FUNCTION_15_10(v43))
      {

        v44 = *(v3 + 40);
        sub_21700D284();
        OUTLINED_FUNCTION_9_0();
        (*(v45 + 8))(v2 + v44);
      }

      goto LABEL_153;
    case 0x10u:
      OUTLINED_FUNCTION_10_14();
      type metadata accessor for InlineUpsell();
      v92 = OUTLINED_FUNCTION_15_13();
      if (!OUTLINED_FUNCTION_7_21(v92))
      {
        OUTLINED_FUNCTION_4_23();
        v93 = OUTLINED_FUNCTION_16_19();
        v94(v93);
      }

      OUTLINED_FUNCTION_6_25();

      OUTLINED_FUNCTION_93_0(*(v1 + 28));

      OUTLINED_FUNCTION_93_0(*(v1 + 32));

      v95 = OUTLINED_FUNCTION_17_19(*(v1 + 36));
      if (v96)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v95);
      }

      v97 = OUTLINED_FUNCTION_17_19(*(v1 + 40));
      if (v98)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v97);
      }

      v99 = *(v1 + 44);
      goto LABEL_114;
    case 0x11u:
      OUTLINED_FUNCTION_10_14();
      type metadata accessor for LandingUpsell();
      v21 = OUTLINED_FUNCTION_15_13();
      if (!OUTLINED_FUNCTION_7_21(v21))
      {
        OUTLINED_FUNCTION_4_23();
        v22 = OUTLINED_FUNCTION_16_19();
        v23(v22);
      }

      OUTLINED_FUNCTION_6_25();

      OUTLINED_FUNCTION_93_0(*(v1 + 28));

      OUTLINED_FUNCTION_93_0(*(v1 + 32));

      OUTLINED_FUNCTION_93_0(*(v1 + 36));

      v24 = OUTLINED_FUNCTION_17_19(*(v1 + 40));
      if (v25)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
      }

      v26 = OUTLINED_FUNCTION_17_19(*(v1 + 44));
      if (v27)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
      }

      v28 = OUTLINED_FUNCTION_17_19(*(v1 + 48));
      if (v29)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
      }

      v30 = v6 + *(v1 + 52);
      v31 = type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_20_1(v30))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v32 + 8))(v30);
        v33 = *(v31 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v34 + 8))(v30 + v33);
      }

      v6 += *(v1 + 56);
      v35 = OUTLINED_FUNCTION_12_17();
      if (__swift_getEnumTagSinglePayload(v35, v36, v31))
      {
        goto LABEL_154;
      }

      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v37 + 8))(v6);
      v38 = *(v31 + 20);
      goto LABEL_136;
    case 0x14u:
      v104 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v104))
      {
        OUTLINED_FUNCTION_3_11();
        v105 = OUTLINED_FUNCTION_116();
        v106(v105);
      }

      v107 = type metadata accessor for ListSection();
      OUTLINED_FUNCTION_1_31(v107);
      OUTLINED_FUNCTION_93_0(v108);

      OUTLINED_FUNCTION_93_0(*(v1 + 28));

      goto LABEL_153;
    case 0x15u:

      __swift_destroy_boxed_opaque_existential_1Tm(v6 + 8);
      v133 = type metadata accessor for GradientListRowModel();
      v134 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_21(v134))
      {
        OUTLINED_FUNCTION_4_23();
        v135 = OUTLINED_FUNCTION_16_19();
        v136(v135);
      }

      v137 = OUTLINED_FUNCTION_17_19(*(v133 + 28));
      if (v138)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v137);
      }

      v139 = v6 + *(v133 + 32);
      if (*(v139 + 32))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v139 + 8);
      }

      goto LABEL_96;
    case 0x16u:
      v185 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v185))
      {
        OUTLINED_FUNCTION_3_11();
        v186 = OUTLINED_FUNCTION_116();
        v187(v186);
      }

      v188 = type metadata accessor for ParagraphComponentModel();
      OUTLINED_FUNCTION_1_31(v188);
      OUTLINED_FUNCTION_93_0(v189);
      goto LABEL_127;
    case 0x18u:
      sub_21700C924();
      OUTLINED_FUNCTION_9_0();
      (*(v109 + 8))(v0 + v5);
      v110 = &unk_27CAB7940;
LABEL_105:
      __swift_instantiateConcreteTypeFromMangledNameV2(v110);
      goto LABEL_153;
    case 0x19u:
      v111 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v111))
      {
        OUTLINED_FUNCTION_3_11();
        v112 = OUTLINED_FUNCTION_116();
        v113(v112);
      }

      v114 = type metadata accessor for PopoverSelector();
      OUTLINED_FUNCTION_1_31(v114);
LABEL_127:

      goto LABEL_151;
    case 0x1Du:
      v172 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v172))
      {
        OUTLINED_FUNCTION_3_11();
        v173 = OUTLINED_FUNCTION_116();
        v174(v173);
      }

      ContextLockup = type metadata accessor for SearchQueryContextLockup();
      OUTLINED_FUNCTION_1_31(ContextLockup);
      OUTLINED_FUNCTION_93_0(v176);

      OUTLINED_FUNCTION_93_0(*(v1 + 32));

      OUTLINED_FUNCTION_93_0(*(v1 + 36));

      OUTLINED_FUNCTION_93_0(*(v1 + 40));

      goto LABEL_153;
    case 0x1Eu:
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + v5);

      v38 = *(type metadata accessor for MappedSearchResultsList(0) + 24);
      sub_21700D194();
      goto LABEL_137;
    case 0x22u:
      OUTLINED_FUNCTION_10_14();
      type metadata accessor for SocialOnboardingNotificationSettingsPageLockup();
      v88 = OUTLINED_FUNCTION_15_13();
      if (!OUTLINED_FUNCTION_7_21(v88))
      {
        OUTLINED_FUNCTION_4_23();
        v89 = OUTLINED_FUNCTION_16_19();
        v90(v89);
      }

      goto LABEL_63;
    case 0x23u:
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + v5);

      v84 = *(type metadata accessor for SocialOnboardingPrivacySettingsPageLockup() + 48);
      goto LABEL_146;
    case 0x25u:

      __swift_destroy_boxed_opaque_existential_1Tm(v6 + 16);
      v1 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup();
      v218 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_21(v218))
      {
        OUTLINED_FUNCTION_4_23();
        v219 = OUTLINED_FUNCTION_16_19();
        v220(v219);
      }

LABEL_151:
      v91 = *(v1 + 28);
      goto LABEL_152;
    case 0x26u:
      v14 = type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_14_9(v14))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v15 + 8))(v0 + v5);
        v1 = *(v1 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v16 + 8))(v6 + v1);
      }

      v17 = type metadata accessor for SocialOnboardingWelcomePageLockup();
      OUTLINED_FUNCTION_11_19(v17);
      v18 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_21(v18))
      {
        OUTLINED_FUNCTION_4_23();
        v19 = OUTLINED_FUNCTION_16_19();
        v20(v19);
      }

      OUTLINED_FUNCTION_93_0(*(v1 + 28));

LABEL_63:
      v91 = *(v1 + 32);
      goto LABEL_152;
    case 0x27u:
      v190 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v190))
      {
        OUTLINED_FUNCTION_3_11();
        v191 = OUTLINED_FUNCTION_116();
        v192(v191);
      }

      v193 = type metadata accessor for SocialProfileDetailHeaderLockup();
      OUTLINED_FUNCTION_1_31(v193);
      v195 = v6 + v194;

      v196 = *(type metadata accessor for ContentDescriptor() + 24);
      v197 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_20_1(v195 + v196))
      {
        OUTLINED_FUNCTION_4_23();
        (*(v198 + 8))(v195 + v196, v197);
      }

      OUTLINED_FUNCTION_93_0(*(v1 + 28));

      OUTLINED_FUNCTION_93_0(*(v1 + 32));

      v6 += *(v1 + 44);
      v120 = type metadata accessor for Artwork();
LABEL_134:
      v199 = OUTLINED_FUNCTION_12_17();
      if (!__swift_getEnumTagSinglePayload(v199, v200, v120))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v201 + 8))(v6);
        v38 = *(v120 + 20);
LABEL_136:
        sub_21700C444();
LABEL_137:
        OUTLINED_FUNCTION_9_0();
        (*(v202 + 8))(v6 + v38, v203);
      }

      goto LABEL_154;
    case 0x28u:
      v204 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v204))
      {
        OUTLINED_FUNCTION_3_11();
        v205 = OUTLINED_FUNCTION_116();
        v206(v205);
      }

      v207 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
      OUTLINED_FUNCTION_1_31(v207);
      v209 = v6 + v208;

      v210 = *(type metadata accessor for ContentDescriptor() + 24);
      v211 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_20_1(v209 + v210))
      {
        OUTLINED_FUNCTION_4_23();
        (*(v212 + 8))(v209 + v210, v211);
      }

      OUTLINED_FUNCTION_93_0(*(v1 + 28));

      OUTLINED_FUNCTION_93_0(*(v1 + 32));

      OUTLINED_FUNCTION_93_0(*(v1 + 44));

      OUTLINED_FUNCTION_93_0(*(v1 + 48));

      OUTLINED_FUNCTION_93_0(*(v1 + 52));

      OUTLINED_FUNCTION_93_0(*(v1 + 56));

      OUTLINED_FUNCTION_21_14();
      v213 = type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_15_10(v213))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v214 + 8))(v211);
        v215 = *(v209 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v216 + 8))(v211 + v215);
      }

      v91 = *(v1 + 68);
      goto LABEL_152;
    case 0x29u:
      v158 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v158))
      {
        OUTLINED_FUNCTION_3_11();
        v159 = OUTLINED_FUNCTION_116();
        v160(v159);
      }

      FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel();
      OUTLINED_FUNCTION_1_31(FriendsButtonComponentModel);
      OUTLINED_FUNCTION_93_0(v162);

      v99 = *(v1 + 28);
      goto LABEL_114;
    case 0x2Au:
      v100 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v100))
      {
        OUTLINED_FUNCTION_3_11();
        v101 = OUTLINED_FUNCTION_116();
        v102(v101);
      }

      v103 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader();
      OUTLINED_FUNCTION_11_19(v103);
      goto LABEL_153;
    case 0x2Bu:
      v163 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v163))
      {
        OUTLINED_FUNCTION_3_11();
        v164 = OUTLINED_FUNCTION_116();
        v165(v164);
      }

      v166 = type metadata accessor for SocialProfileFollowRequestResponseHeader();
      OUTLINED_FUNCTION_1_31(v166);
      OUTLINED_FUNCTION_93_0(v167);

      OUTLINED_FUNCTION_93_0(*(v1 + 28));

      v168 = OUTLINED_FUNCTION_17_19(*(v1 + 32));
      if (v169)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v168);
      }

      v99 = *(v1 + 36);
LABEL_114:
      v170 = OUTLINED_FUNCTION_17_19(v99);
      if (v171)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v170);
      }

      goto LABEL_154;
    case 0x2Cu:
      v46 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v46))
      {
        OUTLINED_FUNCTION_3_11();
        v47 = OUTLINED_FUNCTION_116();
        v48(v47);
      }

      v49 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel();
      OUTLINED_FUNCTION_11_19(v49);
      goto LABEL_153;
    case 0x2Eu:
      OUTLINED_FUNCTION_10_14();
      type metadata accessor for SocialOnboardingSharedPlaylistPageLockup();
LABEL_57:
      v85 = OUTLINED_FUNCTION_15_13();
      if (!OUTLINED_FUNCTION_7_21(v85))
      {
        OUTLINED_FUNCTION_4_23();
        v86 = OUTLINED_FUNCTION_16_19();
        v87(v86);
      }

      goto LABEL_153;
    case 0x2Fu:
      OUTLINED_FUNCTION_10_14();
      type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup();
      v7 = OUTLINED_FUNCTION_15_13();
      if (!OUTLINED_FUNCTION_7_21(v7))
      {
        OUTLINED_FUNCTION_4_23();
        v8 = OUTLINED_FUNCTION_16_19();
        v9(v8);
      }

LABEL_96:

      goto LABEL_153;
    case 0x30u:
      v10 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_14_9(v10))
      {
        OUTLINED_FUNCTION_3_11();
        v11 = OUTLINED_FUNCTION_116();
        v12(v11);
      }

      v13 = type metadata accessor for SocialProfileHorizontalLockupSection();
      OUTLINED_FUNCTION_1_31(v13);

      if (*(v6 + *(v1 + 28)) == 1)
      {
        goto LABEL_154;
      }

LABEL_153:

LABEL_154:

      return swift_deallocObject();
    case 0x31u:
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + v5);

      goto LABEL_153;
    case 0x32u:
      OUTLINED_FUNCTION_10_14();
      v84 = *(type metadata accessor for Spacer() + 20);
LABEL_146:
      v62 = sub_21700D7A4();
LABEL_147:
      if (!OUTLINED_FUNCTION_22_8(v6 + v84))
      {
        OUTLINED_FUNCTION_3_11();
        (*(v217 + 8))(v6 + v84, v62);
      }

      goto LABEL_154;
    case 0x3Cu:
      OUTLINED_FUNCTION_10_14();
      type metadata accessor for VerticalArtworkListItem();
      v177 = OUTLINED_FUNCTION_15_13();
      if (!OUTLINED_FUNCTION_7_21(v177))
      {
        OUTLINED_FUNCTION_4_23();
        v178 = OUTLINED_FUNCTION_16_19();
        v179(v178);
      }

      OUTLINED_FUNCTION_6_25();

      OUTLINED_FUNCTION_21_14();
      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v180 + 8))(v2);
      v181 = *(type metadata accessor for Artwork() + 20);
      sub_21700C444();
      OUTLINED_FUNCTION_9_0();
      (*(v182 + 8))(v2 + v181);
      v183 = OUTLINED_FUNCTION_17_19(*(v1 + 32));
      if (v184)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v183);
      }

      v91 = *(v1 + 36);
LABEL_152:
      OUTLINED_FUNCTION_93_0(v91);
      goto LABEL_153;
    default:
      goto LABEL_154;
  }
}

uint64_t sub_216702EBC()
{

  return swift_deallocObject();
}

uint64_t sub_216702F00(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[12];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
        v11 = a3[14];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_21670302C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[12];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
        v11 = a4[14];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_216703154(uint64_t a1)
{
  result = sub_2166D65B0(&qword_280E439E8, _s6LockupVMa);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167031AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2167031F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216703240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
    v9 = a1 + *(a3 + 72);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2167032D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
    v8 = v5 + *(a4 + 72);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216703384()
{
  v1 = type metadata accessor for ReplayPageContentView();
  OUTLINED_FUNCTION_43_0();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  sub_2166B8588();
  swift_unknownObjectRelease();

  v4 = *(v1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v0 + v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

__n128 sub_216703528(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21670355C()
{
  OUTLINED_FUNCTION_49();
  v1 = type metadata accessor for ReplayPageContentView();
  OUTLINED_FUNCTION_43_0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for MappedReplayPage(0);
  OUTLINED_FUNCTION_1();
  sub_2166B8588();
  swift_unknownObjectRelease();

  v7 = *(v1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v8 + 8))(v0 + v3 + v7);
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_22();

  v9 = *(v6 + 24);
  sub_21700D194();
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v0 + v5 + v9);

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_21670377C()
{
  OUTLINED_FUNCTION_49();
  v1 = type metadata accessor for ReplayPageContentView();
  OUTLINED_FUNCTION_43_0();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for MappedReplayPage(0);
  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();
  sub_2166B8588();
  swift_unknownObjectRelease();

  v7 = *(v1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v8 + 8))(v0 + v3 + v7);
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_22();

  v9 = *(v6 + 24);
  sub_21700D194();
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v0 + v5 + v9);

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_2167039A0()
{
  v1 = (type metadata accessor for MappedReplayPage(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[8];
  sub_21700D194();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v0 + v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_216703AAC()
{

  return swift_deallocObject();
}

uint64_t sub_216703AEC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB62D8);
  sub_216826B9C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216703C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SectionContent();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216703CDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SectionContent();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

__n128 sub_216703DE0(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_216703DF4()
{
  OUTLINED_FUNCTION_13_13();
  type metadata accessor for GridView();
  OUTLINED_FUNCTION_43_3();
  v3 = v0 + ((*(v2 + 80) + 64) & ~*(v2 + 80));
  OUTLINED_FUNCTION_50();
  (*(v4 + 8))(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v3 + v1[19]);
  OUTLINED_FUNCTION_32_11(v3 + v1[21]);

  OUTLINED_FUNCTION_46_8(v3 + v1[24]);
  v5 = v1[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008844();
    OUTLINED_FUNCTION_9_0();
    (*(v6 + 8))(v3 + v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216703F50()
{

  return swift_deallocObject();
}

uint64_t sub_216703F90()
{
  OUTLINED_FUNCTION_13_13();
  type metadata accessor for GridView();
  OUTLINED_FUNCTION_43_3();
  v3 = v0 + ((*(v2 + 80) + 64) & ~*(v2 + 80));
  OUTLINED_FUNCTION_50();
  (*(v4 + 8))(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v3 + v1[19]);
  OUTLINED_FUNCTION_32_11(v3 + v1[21]);

  OUTLINED_FUNCTION_46_8(v3 + v1[24]);
  v5 = v1[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008844();
    OUTLINED_FUNCTION_9_0();
    (*(v6 + 8))(v3 + v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2167041B4()
{
  OUTLINED_FUNCTION_30_7();
  type metadata accessor for GridView.HorizontalGridView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F8);
  sub_2170075B4();
  OUTLINED_FUNCTION_30_7();
  type metadata accessor for GridView.ItemView();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_30_7();
  sub_21700B174();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8860);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB88D8);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0);
  sub_2170089F4();
  OUTLINED_FUNCTION_11_20();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_27();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_21_15(WitnessTable, MEMORY[0x277CE0760]);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A8D8, &qword_27CAB8860);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A8C8, &qword_27CAB88D8);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_5();
  sub_2166D9530(v1, &qword_27CAB93F0);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_30_7();
  sub_217009EE4();
  sub_2170086D4();
  OUTLINED_FUNCTION_23_9();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_21();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_45_7();
  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_30_7();
  swift_getOpaqueTypeMetadata2();
  sub_2170089F4();
  sub_2170089F4();
  OUTLINED_FUNCTION_19_0();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93E8);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_30_7();
  sub_21700B174();
  OUTLINED_FUNCTION_27_11();
  sub_2170089F4();
  OUTLINED_FUNCTION_10_17();
  sub_2166D9530(v2, &qword_27CAB93E8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B494();
  sub_2170089F4();
  OUTLINED_FUNCTION_27_11();
  sub_2170089F4();
  OUTLINED_FUNCTION_36_7();
  sub_2170089F4();
  sub_2170089F4();
  sub_217009564();
  OUTLINED_FUNCTION_1_33();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_32();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_216704714()
{
  OUTLINED_FUNCTION_13_13();
  type metadata accessor for GridView.HorizontalGridView();
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  v4 = v1 + v3;

  v13 = OUTLINED_FUNCTION_31_14(v5, v6, v7, v8, v9, v10, v11, v12, v17);
  (*(v14 + 8))(v4 + v15, v13);
  OUTLINED_FUNCTION_32_11(v4 + *(v0 + 100));
  OUTLINED_FUNCTION_46_8(v4 + *(v0 + 116));
  return swift_deallocObject();
}

uint64_t sub_216704808()
{
  OUTLINED_FUNCTION_13_13();
  type metadata accessor for GridView.HorizontalGridView();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_26_2();
  v3 = v1 + v2;

  v12 = OUTLINED_FUNCTION_31_14(v4, v5, v6, v7, v8, v9, v10, v11, v16);
  (*(v13 + 8))(v3 + v14, v12);
  OUTLINED_FUNCTION_32_11(v3 + *(v0 + 100));
  OUTLINED_FUNCTION_46_8(v3 + *(v0 + 116));
  return swift_deallocObject();
}

uint64_t sub_2167048EC()
{
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2167049D0()
{
  sub_2170075B4();
  type metadata accessor for GridView.ItemView();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93E8);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_217009B44();
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  sub_21700B174();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9438);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_11_20();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_21_15(WitnessTable, MEMORY[0x277CDF678]);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_17();
  sub_2166D9530(v1, &qword_27CAB93E8);
  swift_getWitnessTable();
  sub_216839810(&qword_280E2A6F0, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_27();
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2AC38, &qword_27CAB9438);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B454();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_2170089F4();
  sub_2170089F4();
  OUTLINED_FUNCTION_36_7();
  sub_2170089F4();
  OUTLINED_FUNCTION_27_11();
  sub_2170089F4();
  OUTLINED_FUNCTION_45_7();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_217008044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9440);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A8D0, &qword_27CAB9440);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_19_0();
  sub_217008B64();
  sub_217009B84();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_45_7();
  OUTLINED_FUNCTION_7_5();
  sub_2166D9530(v2, &qword_27CAB93F0);
  return swift_getWitnessTable();
}

uint64_t sub_216704EE8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[9];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      v14 = a3[10];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_21670501C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[9];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      v14 = a4[10];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216705190()
{

  return swift_deallocObject();
}

uint64_t sub_2167051C8()
{

  OUTLINED_FUNCTION_181();

  return swift_deallocObject();
}

uint64_t sub_2167051FC()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_216705230()
{

  OUTLINED_FUNCTION_68_1();

  return swift_deallocObject();
}

uint64_t sub_216705268()
{

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_2167052A4()
{
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_2167052E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21700C924();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB6AF0);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_2167053DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_21700C924();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB6AF0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2167054E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21670553C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2167055DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_216705614()
{
  sub_217005974();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v1 + v4, v0);

  return swift_deallocObject();
}

uint64_t sub_216705700()
{

  return swift_deallocObject();
}

__n128 sub_2167057B0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2167057BC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_110();
  v4 = type metadata accessor for PopoverSelector();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_216705800()
{
  OUTLINED_FUNCTION_110();
  type metadata accessor for PopoverSelector();
  v0 = OUTLINED_FUNCTION_54();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_21670583C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PopoverSelector();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_2167058F8(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_110();
  result = type metadata accessor for PopoverSelector();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_54();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_2167059D8()
{
  type metadata accessor for PopoverSelectorView.ButtonView(0);
  OUTLINED_FUNCTION_4_4();
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = sub_21700D7A4();
  if (!OUTLINED_FUNCTION_9_1(v8))
  {
    (*(*(v2 - 8) + 8))(v7, v2);
  }

  v9 = type metadata accessor for PopoverSelector();
  OUTLINED_FUNCTION_10_18(v9);
  OUTLINED_FUNCTION_7_7(*(v2 + 28));

  OUTLINED_FUNCTION_7_7(*(v0 + 20));

  if (*(v1 + v6 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + v6 + 32);
  }

  return swift_deallocObject();
}

uint64_t sub_216705B04()
{
  type metadata accessor for PopoverSelectorView.ButtonView(0);
  OUTLINED_FUNCTION_4_4();
  v4 = (*(v3 + 80) + 88) & ~*(v3 + 80);

  if (*(v1 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 48);
  }

  v5 = sub_21700D7A4();
  if (!OUTLINED_FUNCTION_9_1(v5))
  {
    (*(*(v2 - 8) + 8))(v1 + v4, v2);
  }

  v6 = type metadata accessor for PopoverSelector();
  OUTLINED_FUNCTION_10_18(v6);
  OUTLINED_FUNCTION_7_7(*(v2 + 28));

  OUTLINED_FUNCTION_7_7(*(v0 + 20));

  return swift_deallocObject();
}

uint64_t sub_216705C2C()
{

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);
  }

  return swift_deallocObject();
}

uint64_t sub_216705C9C()
{

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  }

  return swift_deallocObject();
}

uint64_t sub_216705D04()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  sub_217009354();
  sub_2166D9530(&qword_27CAB9D38, &qword_27CAB9D10);
  sub_21685466C(&qword_27CAB9D40, MEMORY[0x277CDDEE0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216705E1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216705E64(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216705EB0()
{

  return swift_deallocObject();
}

uint64_t sub_216705F18()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_65_3();

  return swift_deallocObject();
}

__n128 sub_216705F54(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_216705F6C()
{

  OUTLINED_FUNCTION_65_3();

  return swift_deallocObject();
}

uint64_t sub_216705FEC()
{

  return swift_deallocObject();
}

uint64_t sub_216706070(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v6 = OUTLINED_FUNCTION_19_1(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_2167060F8()
{
  OUTLINED_FUNCTION_21_0();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v5 = OUTLINED_FUNCTION_19_1(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_2167061A0()
{
  v2 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v4 + 8))(v1 + v5, v2);
  v10 = v1 + v9;
  v11 = type metadata accessor for ContentDescriptor();
  if (!__swift_getEnumTagSinglePayload(v1 + v9, 1, v11))
  {

    v12 = *(v11 + 24);
    v13 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v10 + v12, 1, v13))
    {
      (*(*(v13 - 8) + 8))(v10 + v12, v13);
    }
  }

  v14 = v10 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_9_0();
    (*(v15 + 8))(v14);
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
    v17 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v14 + v16, 1, v17))
    {
      (*(*(v17 - 8) + 8))(v14 + v16, v17);
    }
  }

  v18 = v10 + *(v0 + 32);
  if (*(v18 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  return swift_deallocObject();
}

uint64_t sub_216706468()
{
  sub_2170067A4();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_2167064E4()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21670652C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_11_1();
    return (v3 + 1);
  }

  else
  {
    if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598) - 8) + 84) == a2)
    {
      v6 = *(a3 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
      v6 = *(a3 + 28);
    }

    v7 = OUTLINED_FUNCTION_19_1(v6);

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void sub_216706604()
{
  OUTLINED_FUNCTION_21_0();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598) - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
      v8 = *(v5 + 28);
    }

    v9 = OUTLINED_FUNCTION_19_1(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_2167066D8()
{
  type metadata accessor for PosterLockupView.Card(0);
  OUTLINED_FUNCTION_4_4();
  v3 = (*(v2 + 80) + 81) & ~*(v2 + 80);

  if (*(v1 + 72) != 1)
  {
  }

  v4 = v1 + v3;

  sub_216684F5C(*(v4 + 8), *(v4 + 16));
  v5 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008844();
    OUTLINED_FUNCTION_9_0();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  v7 = *(v0 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v8 + 8))(v4 + v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216706884(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_11_1();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
    v7 = OUTLINED_FUNCTION_19_1(*(a3 + 24));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_216706918(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
    v6 = OUTLINED_FUNCTION_19_1(*(a4 + 24));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_2167069A4()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  sub_21686C170(&unk_27CABA220);
  OUTLINED_FUNCTION_5_5();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216706A34(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_21686CE9C(*v3, *(v3 + 8));
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t sub_216706A88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_216706B1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216706BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216706C80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216706D2C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[10];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA338);
        v11 = a3[11];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_216706E58(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[10];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA338);
        v11 = a4[11];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_216706FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216707084(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216707110()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA398);
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_8();
  v2(v1);
  return v0;
}

uint64_t sub_216707170()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216870FC0();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2167071DC()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216870FAC();
  *v0 = result & 1;
  return result;
}

uint64_t sub_216707240()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216870F38();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_216707274()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216870DDC();
  *v0 = result;
  return result;
}

uint64_t sub_2167072A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2167072E0()
{

  return swift_deallocObject();
}

uint64_t sub_216707320()
{

  return swift_deallocObject();
}

uint64_t sub_216707358()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA380);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA420);
  sub_21687534C();
  OUTLINED_FUNCTION_3_41();
  sub_21669E098(v0, &qword_27CABA420);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21670740C()
{
  sub_217009BE4();
  sub_217008AD4();
  sub_2168752B0(&qword_280E2A6D8, MEMORY[0x277CDE500]);
  sub_2168752B0(&qword_280E2AD60, MEMORY[0x277CDDB18]);
  OUTLINED_FUNCTION_2_9();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_216707504()
{
  sub_2170068C4();
  OUTLINED_FUNCTION_34();
  v0 = OUTLINED_FUNCTION_11_22();
  v1(v0);

  return swift_deallocObject();
}

uint64_t sub_2167075AC()
{
  v1 = sub_21700B8D4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 113) & ~*(v2 + 80);

  swift_unknownObjectRelease();

  sub_2166B8588();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_216707690()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  OUTLINED_FUNCTION_2(v1);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);

  sub_2166B8588();

  v4 = sub_2170098A4();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_2167077B4()
{
  v1 = (type metadata accessor for SearchResultsListSection() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  sub_21700D194();
  OUTLINED_FUNCTION_34();
  (*(v4 + 8))(v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_2167078B0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA508);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA550);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA500);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA4F8);
  OUTLINED_FUNCTION_3_42();
  sub_21687E120(v0, &qword_27CABA500, &unk_2170209E8, v1);
  sub_21687C2EC();
  swift_getOpaqueTypeConformance2();
  sub_21687C5A0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2167079C4()
{

  return swift_deallocObject();
}

uint64_t sub_2167079FC()
{
  v1 = sub_2170068C4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  sub_2166B8588();

  return swift_deallocObject();
}

uint64_t sub_216707ADC()
{
  sub_2170068C4();
  OUTLINED_FUNCTION_34();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 17) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216707BBC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MappedReplayModel(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
      v10 = *(a3 + 36);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_216707C94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MappedReplayModel(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB84D8);
      v10 = *(a4 + 36);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_216707D70()
{
  OUTLINED_FUNCTION_49();
  v1 = type metadata accessor for ReplaySwiftMusicContentView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[5];

  v4 = v3 + *(type metadata accessor for MappedReplayModel(0) + 20);

  v5 = v4 + *(type metadata accessor for MappedReplayYearModel(0) + 20);

  v6 = *(type metadata accessor for MappedReplayPage(0) + 24);
  sub_21700D194();
  OUTLINED_FUNCTION_34();
  (*(v7 + 8))(v5 + v6);

  v8 = v2 + v1[7];
  if (*(v8 + 8))
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v8 + 16);
    if (*(v8 + 80))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v8 + 56);
    }
  }

  v9 = v2 + v1[8];

  __swift_destroy_boxed_opaque_existential_1Tm(v9 + 16);
  if (*(v9 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v9 + 56);
  }

  v10 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2170098A4();
    if (!__swift_getEnumTagSinglePayload(v2 + v10, 1, v11))
    {
      (*(*(v11 - 8) + 8))(v2 + v10, v11);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_216708010()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA6C8);
  type metadata accessor for ObjectGraph();
  sub_216880B70();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2167080FC()
{
  type metadata accessor for OpenAddToPlaylistAction();
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v9 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);

  v10 = *(v0 + 28);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v11 + 8))(v1 + v3 + v10);
  (*(v8 + 8))(v1 + v9, v6);

  return swift_deallocObject();
}

uint64_t sub_21670824C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for ProcessDeepLinkAction();
  OUTLINED_FUNCTION_43_3();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v27 = *(v10 + 64);
  v26 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  v13 = *(v11 + 80);
  (*(v4 + 8))(v0 + v5, v2);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v14 + 8))(v0 + v9);
  v15 = *(v1 + 28);
  v16 = sub_217005EF4();
  OUTLINED_FUNCTION_34();
  v18 = v0 + v9 + v15;
  v19 = *(v17 + 8);
  v19(v18, v16);
  v20 = v0 + v9 + *(v1 + 32);
  v21 = type metadata accessor for ReferrerInfo();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v21);
  v23 = v27;
  v24 = v26;
  if (!EnumTagSinglePayload)
  {
    if (!__swift_getEnumTagSinglePayload(v20, 1, v16))
    {
      v19(v20, v16);
    }

    v24 = v26;
    v23 = v27;
  }

  (*(v12 + 8))(v0 + ((v9 + v23 + v13) & ~v13), v24);

  return swift_deallocObject();
}

uint64_t sub_216708500()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for RemoveFromPlaylistAction();
  OUTLINED_FUNCTION_43_3();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v9 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);

  v10 = v0 + v3;
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v11 + 8))(v0 + v3);
  v12 = *(v1 + 28);
  sub_21700C8E4();
  OUTLINED_FUNCTION_9_0();
  (*(v13 + 8))(v10 + v12);
  v14 = *(v1 + 32);
  sub_21700C924();
  OUTLINED_FUNCTION_9_0();
  (*(v15 + 8))(v10 + v14);
  (*(v8 + 8))(v0 + v9, v6);
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_21670869C()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for OpenMoveToFolderAction();
  OUTLINED_FUNCTION_43_3();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v9 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);

  sub_21700C924();
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v0 + v3);
  v11 = *(v1 + 28);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v12 + 8))(v0 + v3 + v11);
  (*(v8 + 8))(v0 + v9, v6);
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_216708808()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for PromptHideFromProfileAction(0);
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v9 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);

  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v1 + v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + v3 + *(v0 + 28));
  (*(v8 + 8))(v1 + v9, v6);
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t sub_216708950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216708A00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_216708AAC()
{

  return swift_deallocObject();
}

uint64_t sub_216708AEC()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_216708B20()
{
  v1 = (type metadata accessor for SourceBundleLoader() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[7];
  sub_21700CB44();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v0 + v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_216708E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_21700F7D4();
  }
}

uint64_t sub_216709028()
{
  sub_21700E614();
}

uint64_t sub_2167090DC()
{
  sub_21700E614();
}

uint64_t sub_21670936C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2167092C4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_216709684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_216709724(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216709874()
{

  return swift_deallocObject();
}

__n128 sub_2167099D4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_2167099E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_216709A74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216709B18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB488);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_216709C28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2168B03F0();
  *a1 = result;
  return result;
}

uint64_t sub_216709C80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2168B02FC();
  *a1 = result;
  return result;
}

uint64_t sub_216709CDC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216709D48()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_216709D80()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB520) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB528);
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v3))
  {
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_216709E94()
{

  return swift_deallocObject();
}

uint64_t sub_216709ED4()
{

  return swift_deallocObject();
}

uint64_t sub_216709F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContainerDetailTracklistFooterLockup();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 > 1)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_216709FDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ContainerDetailTracklistFooterLockup();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_21670A0CC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_217006E94();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_12:
    v9 = a1 + v12;
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v12 = a3[7];
    goto LABEL_12;
  }

  v13 = *(a1 + a3[6]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_21670A1F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_217006E94();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[6]) = a2;
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVy05MusicB04LinkVSgGSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21670A320()
{

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);
  }

  return swift_deallocObject();
}

uint64_t sub_21670A380@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217008E74();
  *a1 = result;
  return result;
}

uint64_t sub_21670A3BC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB600);
  OUTLINED_FUNCTION_34();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21670A42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PopoverAccessoryButton();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_21670A4E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PopoverAccessoryButton();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_21670A5A4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_21670A5D8()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

__n128 sub_21670A860(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_21670AA24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21670AA78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21670AAF4()
{
  v1 = (type metadata accessor for GoToAlbumAction() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v7 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);

  sub_21700C084();
  OUTLINED_FUNCTION_9_0();
  (*(v8 + 8))(v0 + v2);
  v9 = v1[8];
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v0 + v2 + v9);
  (*(v6 + 8))(v0 + v7, v4);

  return swift_deallocObject();
}

uint64_t sub_21670AC7C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21700D284();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21670AD04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21670AD84(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21700D194();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21670AE0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D194();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21670AE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20) + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_21670AF78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20) + 24) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21670B054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_21670B0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

__n128 sub_21670B1BC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21670B214()
{
  v1 = _s6ActionVMa();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 32);
  }

  v3 = *(v1 + 20);
  v4 = sub_217007F04();
  if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21670B364@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2168D38EC();
  *a1 = result;
  return result;
}

uint64_t sub_21670B458()
{
  sub_21700DFD4();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21670B508()
{

  return swift_deallocObject();
}

uint64_t sub_21670B57C()
{
  type metadata accessor for PageViewEnvironmentModifier();
  OUTLINED_FUNCTION_6_32();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_3();
  sub_2170097A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB9F8);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA00);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA08);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA10);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  type metadata accessor for PopoverBubbleTipRequestManager(255);
  OUTLINED_FUNCTION_7_31();
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A7F0, &qword_27CABB9F8);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A7D8, &qword_27CABBA00);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A7E0, &qword_27CABBA08);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A7C0, &qword_27CABBA10);
  swift_getWitnessTable();
  sub_2166B4B88(&qword_280E30968, type metadata accessor for PopoverBubbleTipRequestManager);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA18);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA20);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  type metadata accessor for ObjectGraph();
  swift_getOpaqueTypeConformance2();
  sub_2166D9530(&qword_280E2A7E8, &qword_27CABBA18);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A7A8, &qword_27CABBA20);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CatalogPagePresenter();
  type metadata accessor for ViewAppearanceLifecycleModifier();
  OUTLINED_FUNCTION_11_27();
  sub_2170089F4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageRenderMetricsViewModifier();
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_2170089F4();
  swift_getOpaqueTypeConformance2();
  sub_2166B4B88(&qword_280E314E0, type metadata accessor for PageRenderMetricsViewModifier);
  swift_getWitnessTable();
  sub_2168E341C();
  return swift_getWitnessTable();
}

uint64_t sub_21670BA80()
{
  type metadata accessor for PageViewContentViewModifier();
  OUTLINED_FUNCTION_1_50();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_3();
  sub_2170097A4();
  OUTLINED_FUNCTION_7_31();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageNavigationModifier();
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_27_17();
  sub_2166B4B88(v0, v1);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_2170089F4();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_21670BC5C()
{
  v18 = *(v1 + 24);
  OUTLINED_FUNCTION_56_9();
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 48) & ~*(v2 + 80));
  v4 = sub_2166B8588();
  v12 = OUTLINED_FUNCTION_45_13(v4, v5, v6, v7, v8, v9, v10, v11, v18);
  (*(v13 + 8))(v3 + v14, v12);

  v15 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v16 + 8))(v3 + v15);
  }

  else
  {
  }

  sub_216684F5C(*(v3 + v0[25]), *(v3 + v0[25] + 8));
  sub_2166B8588();
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_21670BE88()
{

  return swift_deallocObject();
}

uint64_t sub_21670BEC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216A403B4();
  *a1 = result & 1;
  return result;
}

__n128 sub_21670BF2C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_21670BF40()
{
  v18 = *(v1 + 24);
  OUTLINED_FUNCTION_56_9();
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 48) & ~*(v2 + 80));
  v4 = sub_2166B8588();
  v12 = OUTLINED_FUNCTION_45_13(v4, v5, v6, v7, v8, v9, v10, v11, v18);
  (*(v13 + 8))(v3 + v14, v12);

  OUTLINED_FUNCTION_54_4(v0[16]);

  OUTLINED_FUNCTION_54_4(v0[21]);

  v15 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v16 + 8))(v3 + v15);
  }

  else
  {
  }

  OUTLINED_FUNCTION_42_14();

  return swift_deallocObject();
}

uint64_t sub_21670C124()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v6 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_56_9();
  OUTLINED_FUNCTION_4_4();
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  (*(v5 + 8))(v0 + v6, AssociatedTypeWitness);

  sub_2166B8588();
  (*(*(v2 - 8) + 8))(v0 + v10 + v1[13], v2);

  OUTLINED_FUNCTION_54_4(v1[16]);

  OUTLINED_FUNCTION_54_4(v1[21]);

  v11 = v1[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v12 + 8))(v0 + v10 + v11);
  }

  else
  {
  }

  OUTLINED_FUNCTION_42_14();
  return swift_deallocObject();
}

uint64_t sub_21670C3B0()
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));

  return swift_deallocObject();
}

void sub_21670C458()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_10_23();
  type metadata accessor for DefaultLoadingStyle();
  OUTLINED_FUNCTION_23_16();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_11();
  type metadata accessor for PageLoadingView();
  OUTLINED_FUNCTION_10_23();
  type metadata accessor for CatalogPagePresenter.State();
  OUTLINED_FUNCTION_34_4();
  sub_21700F164();
  OUTLINED_FUNCTION_34_4();
  sub_217007E04();
  OUTLINED_FUNCTION_10_23();
  type metadata accessor for SongDetailPageView();
  OUTLINED_FUNCTION_10_23();
  type metadata accessor for CatalogPagePresenter();
  OUTLINED_FUNCTION_34_4();
  sub_21700F164();
  OUTLINED_FUNCTION_34_4();
  sub_217009B34();
  sub_2170089F4();
  OUTLINED_FUNCTION_10_23();
  type metadata accessor for SearchPageListContentView();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA40);
  OUTLINED_FUNCTION_11_3();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA48);
  OUTLINED_FUNCTION_11_3();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9000);
  OUTLINED_FUNCTION_12_24();
  type metadata accessor for CatalogSectionView();
  OUTLINED_FUNCTION_15_22();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_34_4();
  sub_21700B4E4();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B084();
  OUTLINED_FUNCTION_32_15();
  sub_2166D9530(v0, &qword_27CAB9000);
  OUTLINED_FUNCTION_46_12();
  OUTLINED_FUNCTION_14_20();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_31_20();
  sub_2166B4B88(v1, v2);
  OUTLINED_FUNCTION_22_11();
  type metadata accessor for PaginatingShelfCollection();
  _s27BannerNavigationItemAdaptorVMa(255);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_217009564();
  sub_217009564();
  sub_217009564();
  sub_21700F164();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA60);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA68);
  OUTLINED_FUNCTION_37_15();
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA70);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA78);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA80);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_217009564();
  OUTLINED_FUNCTION_37_15();
  sub_217009564();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9278);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9290);
  OUTLINED_FUNCTION_37_15();
  sub_2170089F4();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9298);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92A0);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA88);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92A8);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92B0);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92B8);
  OUTLINED_FUNCTION_11_3();
  sub_2170089F4();
  OUTLINED_FUNCTION_25_15();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24_16();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2168E41B0();
  swift_getWitnessTable();
  sub_2168E42C0();
  swift_getWitnessTable();
  sub_2168E4548();
  OUTLINED_FUNCTION_21_7();
  sub_2166D9530(v3, &qword_27CABBA58);
  OUTLINED_FUNCTION_20_19();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_18();
  sub_2166B4B88(v4, v5);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_17_26();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_6();
  sub_2166D9530(v6, &qword_27CABBA60);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A7B0, &qword_27CABBA68);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2AC10, &qword_27CABBA70);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2AC08, &qword_27CABBA78);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2ABE8, &qword_27CABBA80);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A738, &qword_27CAB9278);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A768, &qword_27CAB9290);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A778, &qword_27CAB9298);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A7B8, &qword_27CAB92A0);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A790, &qword_27CABBA88);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A770, &qword_27CAB92A8);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A788, &qword_27CAB92B0);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A7F8, &qword_27CAB92B8);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_24_0();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_24_0();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_24_0();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_22_25();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_22_11();
  sub_217008B74();
  type metadata accessor for PageViewContentViewModifier();
  OUTLINED_FUNCTION_12_24();
  sub_2170089F4();
  sub_2170089F4();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9150);
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBAA0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_11_27();
  type metadata accessor for PageViewEnvironmentModifier();
  sub_2170089F4();
  OUTLINED_FUNCTION_30_16();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_29_16();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_50();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_28_2();
  sub_2166D9530(v7, &qword_27CAB9150);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A748, &qword_27CABBAA0);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_32();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_21670D228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_14_21();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    type metadata accessor for MusicEvent(0);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) != v3)
    {
      OUTLINED_FUNCTION_37_16();
      return OUTLINED_FUNCTION_22_1(*(v13 + 8));
    }

    v8 = v10;
    v9 = v4 + *(a3 + 36);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_21670D2FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_14_21();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    type metadata accessor for MusicEvent(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      OUTLINED_FUNCTION_37_16();
      *(v14 + 8) = (v4 - 1);
      return;
    }

    v10 = v12;
    v11 = v5 + *(a4 + 36);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_21670D3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_14_21();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    type metadata accessor for MusicEvent(0);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = *(a3 + 36);
    }

    else
    {
      if (v3 == 0x7FFFFFFF)
      {
        OUTLINED_FUNCTION_37_16();
        return OUTLINED_FUNCTION_22_1(*(v13 + 24));
      }

      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8);
      v12 = *(a3 + 52);
    }

    v9 = v4 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_21670D4D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_14_21();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    type metadata accessor for MusicEvent(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 36);
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        OUTLINED_FUNCTION_37_16();
        *(v15 + 24) = (v4 - 1);
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8);
      v14 = *(a4 + 52);
    }

    v11 = v5 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_21670D628()
{
  if (*(v0 + 40) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21670D668()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21670D6A0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_21670D6E8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[11];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      v14 = a3[18];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_21670D81C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[11];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      v14 = a4[18];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21670D94C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21670D984()
{

  return swift_deallocObject();
}

uint64_t sub_21670DAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_110();
  type metadata accessor for JSSearchResultsPage.QueryContext(v6);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_6_35(*(a3 + 24));
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
    v10 = v3 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

void sub_21670DB7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_110();
  type metadata accessor for JSSearchResultsPage.QueryContext(v8);
  OUTLINED_FUNCTION_17();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
    v12 = v4 + *(a4 + 28);
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_21670DC68(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBC90);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return a2;
}

uint64_t sub_21670DCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for JSSearchResultsPage.QueryContext(0);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) != a2)
    {
      return OUTLINED_FUNCTION_6_35(*(a3 + 28));
    }

    v8 = v10;
    v9 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_21670DDB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90E0);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for JSSearchResultsPage.QueryContext(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21670DF04(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  Context = type metadata accessor for JSSearchResultsPage.QueryContext(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, Context);
}

uint64_t sub_21670DF48(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  Context = type metadata accessor for JSSearchResultsPage.QueryContext(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, Context);
}

uint64_t sub_21670E024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21670E0D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21670E180(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21700D284();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21670E208(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21670E288(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[11];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[13];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
        v11 = a3[14];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_21670E3B4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[11];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[13];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
        v11 = a4[14];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_21670E4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_21670E58C()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
    v7 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_21670E638()
{
  v1 = type metadata accessor for ContainerDetailArtworkView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  v4 = type metadata accessor for Artwork();
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_34();
    (*(v5 + 8))(v0 + v2);
    v6 = *(v4 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_34();
    (*(v7 + 8))(v3 + v6);
  }

  v8 = v3 + *(v1 + 20);
  v9 = type metadata accessor for VideoArtwork();
  if (!__swift_getEnumTagSinglePayload(v8, 1, v9))
  {

    v10 = *(v9 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_34();
    (*(v11 + 8))(v8 + v10);
  }

  return swift_deallocObject();
}

uint64_t sub_21670E7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217006EC4();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
    v9 = a1 + *(a3 + 40);
    goto LABEL_8;
  }

  v10 = *(a1 + *(a3 + 36));
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_21670E8AC()
{
  OUTLINED_FUNCTION_14_8();
  sub_217006EC4();
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 36)) = (v0 - 1);
      return;
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
    v7 = v1 + *(v2 + 40);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_21670E97C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB76F8);
  sub_2167C505C();
  swift_getOpaqueTypeConformance2();
  sub_2170063B4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_2170089F4();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_21670EAB4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_21700BEA4();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_12:
    v9 = a1 + v12;
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v12 = a3[7];
    goto LABEL_12;
  }

  v13 = *(a1 + a3[6]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_21670EBD8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_21700BEA4();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[6]) = a2;
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
      v14 = a4[7];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21670EDB8()
{
  sub_21700C384();
  OUTLINED_FUNCTION_34();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21670EE58()
{
  OUTLINED_FUNCTION_17_6();
  result = sub_2170090A4();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_21670EE8C()
{
  OUTLINED_FUNCTION_17_6();
  result = sub_217008FA4();
  *v0 = result;
  return result;
}

uint64_t sub_21670EEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + *(a3 + 28) + 8);
      if (v13 > 1)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_21670EFF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = -a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_21670F0F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_21670F188(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21670F214()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC130);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC128);
  sub_21700C384();
  sub_2169033A0();
  OUTLINED_FUNCTION_4_32();
  sub_216906924(v0, v1);
  swift_getOpaqueTypeConformance2();
  sub_2169035CC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21670F4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770) - 8) + 84) == a2)
  {
    v6 = OUTLINED_FUNCTION_34_2();
LABEL_10:

    return __swift_getEnumTagSinglePayload(v6, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_217005EF4();
    v6 = a1 + *(a3 + 28);
    goto LABEL_10;
  }

  v8 = *(a1 + *(a3 + 24) + 8);
  if (v8 >= 0xFFFFFFFF)
  {
    LODWORD(v8) = -1;
  }

  v9 = v8 - 1;
  if (v9 < 0)
  {
    v9 = -1;
  }

  return (v9 + 1);
}

uint64_t sub_21670F594(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v9 = sub_217005EF4();
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21670F670()
{
  type metadata accessor for MusicMetricsContextModifier();
  sub_2170089F4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21670F714()
{
  OUTLINED_FUNCTION_80_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
  OUTLINED_FUNCTION_17();
  if (*(v3 + 84) == v1)
  {
    v4 = OUTLINED_FUNCTION_73();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    v8 = *(v0 + *(v2 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

void sub_21670F7B8()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }
}

uint64_t sub_21670F860()
{
  type metadata accessor for FlowcaseLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v4 + 8))(v1 + v3);
  }

  else
  {
  }

  v5 = v1 + v3 + *(v0 + 20);
  if (*(v5 + 40))
  {
    if (*(v5 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21670F98C()
{
  sub_2170067A4();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_21670FA14()
{
  v2 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v4 + 8))(v1 + v5, v2);
  v10 = v1 + v9;
  v11 = type metadata accessor for ContentDescriptor();
  if (!OUTLINED_FUNCTION_20_1(v1 + v9))
  {

    v12 = *(v11 + 24);
    v13 = sub_217005EF4();
    if (!OUTLINED_FUNCTION_20_1(v10 + v12))
    {
      (*(*(v13 - 8) + 8))(v10 + v12, v13);
    }
  }

  v14 = v10 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_9_0();
    (*(v15 + 8))(v14);
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
    v17 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v14 + v16, 1, v17))
    {
      (*(*(v17 - 8) + 8))(v14 + v16, v17);
    }
  }

  v18 = v10 + *(v0 + 32);
  if (*(v18 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  return swift_deallocObject();
}

uint64_t sub_21670FCB4()
{
  OUTLINED_FUNCTION_13_21();
  if (v2)
  {
    return OUTLINED_FUNCTION_0_11(*(v0 + 24));
  }

  OUTLINED_FUNCTION_29_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  v4 = OUTLINED_FUNCTION_19_1(*(v1 + 44));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_21670FD2C()
{
  OUTLINED_FUNCTION_4_33();
  if (v3)
  {
    *(v1 + 24) = v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    v5 = OUTLINED_FUNCTION_11_6(*(v4 + 44));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_21670FDA8()
{
  type metadata accessor for FlowcaseLockupView.ContentView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + v3;
  if (*(v1 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + v3);
  }

  v5 = v4 + v0[11];
  v6 = type metadata accessor for Artwork();
  if (!OUTLINED_FUNCTION_20_1(v5))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v7 + 8))(v5);
    v8 = *(v6 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v9 + 8))(v5 + v8);
  }

  v10 = v4 + v0[12];
  if (!OUTLINED_FUNCTION_20_1(v10))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v11 + 8))(v10);
    v12 = *(v6 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v13 + 8))(v10 + v12);
  }

  sub_216684F5C(*(v4 + v0[15]), *(v4 + v0[15] + 8));

  return swift_deallocObject();
}

uint64_t sub_21670FF98()
{
  OUTLINED_FUNCTION_80_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_17();
  if (*(v3 + 84) != v1)
  {
    return OUTLINED_FUNCTION_0_11(*(v0 + *(v2 + 20) + 8));
  }

  v4 = OUTLINED_FUNCTION_73();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_216710034()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_17();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_27_20();
  }
}

uint64_t sub_2167100C4()
{
  OUTLINED_FUNCTION_13_21();
  if (v2)
  {
    return OUTLINED_FUNCTION_0_11(*(v0 + 8));
  }

  OUTLINED_FUNCTION_29_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
  v4 = OUTLINED_FUNCTION_19_1(*(v1 + 36));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_21671013C()
{
  OUTLINED_FUNCTION_4_33();
  if (v3)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
    v5 = OUTLINED_FUNCTION_11_6(*(v4 + 36));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_2167101B4()
{
  v0 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  type metadata accessor for ActionButtonStyle(255);
  sub_21669E098(&qword_27CABC690, &unk_27CABC658);
  sub_2166D4620(&qword_280E404C0, type metadata accessor for ActionButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2167102A8()
{
  OUTLINED_FUNCTION_13_21();
  if (v3)
  {
    return OUTLINED_FUNCTION_0_11(*(v1 + 8));
  }

  OUTLINED_FUNCTION_29_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    v6 = *(v2 + 32);
  }

  v7 = OUTLINED_FUNCTION_19_1(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_21671036C()
{
  OUTLINED_FUNCTION_4_33();
  if (v4)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    v5 = v3;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    OUTLINED_FUNCTION_17();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
      v8 = *(v5 + 32);
    }

    v9 = OUTLINED_FUNCTION_11_6(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t sub_21671043C()
{
  OUTLINED_FUNCTION_13_21();
  if (v2)
  {
    return OUTLINED_FUNCTION_0_11(*(v0 + 8));
  }

  OUTLINED_FUNCTION_29_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  v4 = OUTLINED_FUNCTION_19_1(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2167104B4()
{
  OUTLINED_FUNCTION_4_33();
  if (v3)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    v5 = OUTLINED_FUNCTION_11_6(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_216710564()
{
  OUTLINED_FUNCTION_80_0();
  type metadata accessor for Artwork();
  OUTLINED_FUNCTION_17();
  if (*(v3 + 84) != v1)
  {
    return OUTLINED_FUNCTION_0_11(*(v0 + *(v2 + 20) + 8));
  }

  v4 = OUTLINED_FUNCTION_73();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2167105F4()
{
  OUTLINED_FUNCTION_14_8();
  type metadata accessor for Artwork();
  OUTLINED_FUNCTION_17();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_27_20();
  }
}

uint64_t sub_216710680(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC848);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return a2;
}

uint64_t sub_21671071C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_216710754()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2167107A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2167107EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216710860(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_216710900(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21671098C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MenuActionType();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 20));
      if (v9 >= 2)
      {
        return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
    v8 = a1 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216710A74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MenuActionType();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20)) = a2 + 1;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216710C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_217006924();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216710CC8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_217006924();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_216710D28(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[13];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
      v14 = a3[14];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216710E5C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[13];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
      v14 = a4[14];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216710F8C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_15:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[12];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[15];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a2)
        {
          v8 = v17;
          v14 = a3[18];
        }

        else
        {
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA338);
          v14 = a3[19];
        }
      }
    }

    v9 = a1 + v14;
    goto LABEL_15;
  }

  v10 = *(a1 + a3[5] + 24);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_216711158(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 24) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[12];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
      OUTLINED_FUNCTION_17();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[15];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
        OUTLINED_FUNCTION_17();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[18];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA338);
          v14 = a4[19];
        }
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t get_enum_tag_for_layout_string_7MusicUI12PosterLockupV4KindO013SquareArtworkE0V3TopVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t sub_216711344(uint64_t a1)
{
  result = sub_2166D5AF0(qword_280E44990, type metadata accessor for PosterLockup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167113C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21700D284();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = sub_21700C924();
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_2167114A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_21700D284();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = sub_21700C924();
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216711588()
{
  v1 = (type metadata accessor for GoToTVEpisodeAction() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v7 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);

  sub_2170073D4();
  OUTLINED_FUNCTION_9_0();
  (*(v8 + 8))(v0 + v2);
  v9 = v1[7];
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v0 + v2 + v9);
  (*(v6 + 8))(v0 + v7, v4);

  return swift_deallocObject();
}

uint64_t sub_216711710()
{

  return swift_deallocObject();
}

uint64_t sub_216711748()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  OUTLINED_FUNCTION_2(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  v10 = sub_2170098A4();
  if (!__swift_getEnumTagSinglePayload(v0 + v9, 1, v10))
  {
    OUTLINED_FUNCTION_50();
    (*(v11 + 8))(v0 + v9, v10);
  }

  return swift_deallocObject();
}

uint64_t sub_2167118F8()
{
  OUTLINED_FUNCTION_17_6();
  result = sub_2169223FC();
  *v0 = result;
  return result;
}

uint64_t sub_21671198C()
{

  return swift_deallocObject();
}

uint64_t sub_2167119C4()
{
  OUTLINED_FUNCTION_23_21();
  type metadata accessor for ShelfCollection();
  OUTLINED_FUNCTION_117();
  v2 = v0 + ((*(v1 + 80) + 80) & ~*(v1 + 80));

  OUTLINED_FUNCTION_31_23();
  (*(v3 + 8))(v2 + v4);

  return swift_deallocObject();
}

__n128 sub_216711AC8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void sub_216711ADC()
{
  OUTLINED_FUNCTION_149();
  v9 = *(v1 + 16);
  OUTLINED_FUNCTION_23_21();
  type metadata accessor for ShelfCollection();
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v5 = *(v9 - 8);
  v6 = (v3 + *(v4 + 64) + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v1 + v3;

  v8 = *(v5 + 8);
  v8(v7 + *(v0 + 92), v9);

  v8(v1 + v6, v9);
  swift_deallocObject();
  OUTLINED_FUNCTION_148_0();
}

uint64_t sub_216711C34()
{

  return swift_deallocObject();
}

void sub_216711CB0()
{
  OUTLINED_FUNCTION_149();
  sub_2170075B4();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_21700B174();
  OUTLINED_FUNCTION_19_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_34_4();
  sub_21700B4E4();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  type metadata accessor for _ShelfCollection();
  OUTLINED_FUNCTION_11_31();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_34_4();
  sub_217009564();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_6_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_148_0();
}

uint64_t sub_216711E58()
{
  OUTLINED_FUNCTION_23_21();
  type metadata accessor for _ShelfCollection();
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  OUTLINED_FUNCTION_50();
  (*(v4 + 8))(v1 + v3);
  OUTLINED_FUNCTION_7_7(*(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_216711F90()
{
  type metadata accessor for _ShelfCollection.ContentView();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_2170085A4();
  return swift_getWitnessTable();
}

uint64_t sub_216712038()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCCA8);
  sub_217008024();
  sub_21700B084();
  sub_217009564();
  sub_21700AD94();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16_28();
  OUTLINED_FUNCTION_19_0();
  sub_217008044();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16_28();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCCB0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC88);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC90);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7980);
  OUTLINED_FUNCTION_16_28();
  sub_2166D9530(&qword_280E2A838, &qword_27CABCCB0);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_32();
  sub_2166D9530(v0, &qword_27CAB93F0);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A760, &qword_27CABCC88);
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A740, &qword_27CABCC90);
  swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7990);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7998);
  sub_2167CBD04();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_29_19();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_29_19();
  sub_2167B2E14();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16_28();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_34_4();
  sub_217009564();
  sub_2166D9530(&qword_280E48588, &qword_27CABCCA8);
  OUTLINED_FUNCTION_29_19();
  swift_getWitnessTable();
  sub_217008B74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCCB8);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2A780, &qword_27CABCCB8);
  return swift_getWitnessTable();
}

uint64_t sub_21671269C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2167126D4()
{

  return swift_deallocObject();
}

uint64_t sub_21671270C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216712764()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD78);
  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_3_12();
  v1(v0);
  OUTLINED_FUNCTION_2_7();

  return swift_deallocObject();
}

uint64_t sub_216712820()
{
  sub_217006224();
  OUTLINED_FUNCTION_1();

  v0 = OUTLINED_FUNCTION_3_12();
  v1(v0);
  OUTLINED_FUNCTION_2_7();

  return swift_deallocObject();
}

uint64_t sub_2167128C8()
{
  sub_217006224();
  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_3_12();
  v1(v0);
  OUTLINED_FUNCTION_2_7();

  return swift_deallocObject();
}

uint64_t sub_216712978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_110();
  v7 = type metadata accessor for MusicMetrics.PageFields(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
  }

  else
  {
    if (a2 == 254)
    {
      v10 = *(v3 + *(a3 + 20) + 40);
      if (v10 > 1)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = sub_217007CA4();
    v9 = v3 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_216712A40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_110();
  result = type metadata accessor for MusicMetrics.PageFields(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = v4;
  }

  else
  {
    if (a3 == 254)
    {
      *(v4 + *(a4 + 20) + 40) = -a2;
      return result;
    }

    v10 = sub_217007CA4();
    v11 = v4 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216712B30()
{
  v1 = type metadata accessor for MusicPageMetricsModifier();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = *(type metadata accessor for MusicMetrics.PageFields(0) + 28);
  v4 = sub_217005EF4();
  if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  v5 = v2 + v1[5];
  if (*(v5 + 40))
  {
    if (*(v5 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
    }
  }

  else
  {
  }

  v6 = v2 + v1[6];
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  v7 = v1[7];
  sub_217007CA4();
  OUTLINED_FUNCTION_34();
  (*(v8 + 8))(v2 + v7);

  return swift_deallocObject();
}

uint64_t sub_216712D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    v8 = a1 + *(a3 + 28);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_216712DFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216712F04()
{
  FriendsButtonView = type metadata accessor for SocialProfileFindFriendsButtonView();
  v2 = (*(*(FriendsButtonView - 8) + 80) + 16) & ~*(*(FriendsButtonView - 8) + 80);
  v3 = v0 + v2;
  v4 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel();
  __swift_destroy_boxed_opaque_existential_1Tm(v3 + *(FriendsButtonComponentModel + 20));

  v6 = v3 + *(FriendsButtonComponentModel + 28);
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  v7 = v3 + *(FriendsButtonView + 20);
  sub_21680E444(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));
  v8 = *(FriendsButtonView + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  OUTLINED_FUNCTION_34();
  (*(v9 + 8))(v3 + v8);

  return swift_deallocObject();
}

uint64_t sub_2167130B8()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE68);
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_8();
  v2(v1);
  return v0;
}

uint64_t sub_216713118(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE68);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_216713178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel();
  if (*(*(FriendsButtonComponentModel - 8) + 84) == a2)
  {
    v7 = FriendsButtonComponentModel;
    v8 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(a1 + *(a3 + 20) + 32);
      if (v9 > 1)
      {
        return (v9 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    v8 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_216713250(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SocialProfileFindFriendsButtonComponentModel();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20) + 32) = -a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_21671332C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_216713360()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21671341C()
{

  sub_21677A524(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_21671345C()
{

  return swift_deallocObject();
}

uint64_t sub_2167134C4()
{
  v1 = *(*(type metadata accessor for CuratorDetailHeaderLockupView() - 8) + 80);
  v2 = (v1 + 32) & ~v1;
  v3 = v0 + v2;
  v4 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    OUTLINED_FUNCTION_4_23();
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = type metadata accessor for CuratorDetailHeaderComponentModel();
  __swift_destroy_boxed_opaque_existential_1Tm(v3 + v6[5]);

  v7 = v6[7];
  v8 = sub_217005EF4();
  if (!__swift_getEnumTagSinglePayload(v3 + v7, 1, v8))
  {
    OUTLINED_FUNCTION_4_23();
    (*(v9 + 8))(v3 + v7, v8);
  }

  v10 = v3 + v6[8];
  v11 = type metadata accessor for Artwork();
  if (!__swift_getEnumTagSinglePayload(v10, 1, v11))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v12 + 8))(v10);
    v13 = *(v11 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v14 + 8))(v10 + v13);
  }

  v15 = v3 + v6[10];
  if (!__swift_getEnumTagSinglePayload(v15, 1, v11))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v16 + 8))(v15);
    v17 = *(v11 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v18 + 8))(v15 + v17);
  }

  v19 = v3 + v6[11];
  v20 = type metadata accessor for VideoArtwork();
  if (!__swift_getEnumTagSinglePayload(v19, 1, v20))
  {

    v21 = *(v20 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v22 + 8))(v19 + v21);
  }

  v23 = v3 + v6[12];
  v24 = type metadata accessor for ContentDescriptor();
  if (!__swift_getEnumTagSinglePayload(v23, 1, v24))
  {

    v25 = *(v24 + 24);
    if (!__swift_getEnumTagSinglePayload(v23 + v25, 1, v8))
    {
      OUTLINED_FUNCTION_4_23();
      (*(v26 + 8))(v23 + v25, v8);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_216713874()
{
  OUTLINED_FUNCTION_92();
  v2 = type metadata accessor for CuratorDetailHeaderComponentModel();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_2167138B8()
{
  OUTLINED_FUNCTION_92();
  type metadata accessor for CuratorDetailHeaderComponentModel();
  v0 = OUTLINED_FUNCTION_54();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_2167138F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CuratorDetailHeaderComponentModel();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 36));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_2167139A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_92();
  type metadata accessor for CuratorDetailHeaderComponentModel();
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 36)) = v4;
  }
}

uint64_t sub_216713A40(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCF80);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_216713A9C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCF80);
  OUTLINED_FUNCTION_34();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216713B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    sub_21700C444();
    OUTLINED_FUNCTION_17();
    if (*(v11 + 84) != v3)
    {
      v13 = *(v4 + *(a3 + 24) + 8);
      if (v13 > 1)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_216713C08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    sub_21700C444();
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(v5 + *(a4 + 24) + 8) = -v4;
      return;
    }

    v10 = v12;
    v11 = v5 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_216713D40()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216713DB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216713E44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216713F9C()
{
  OUTLINED_FUNCTION_4_39();
  type metadata accessor for SimpleChinViewModifier();
  OUTLINED_FUNCTION_1_64();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_2170097A4();
  OUTLINED_FUNCTION_4_39();
  type metadata accessor for SimpleChinViewModifier.SimpleChinView();
  sub_2170089F4();
  sub_2170089F4();
  OUTLINED_FUNCTION_19_0();
  swift_getTupleTypeMetadata2();
  sub_21700B4E4();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_21700B084();
  OUTLINED_FUNCTION_0_78();
  return swift_getWitnessTable();
}

uint64_t sub_216714078()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD420);
  sub_217009564();
  sub_21693D4B8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_217009534();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC210);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  sub_217008BC4();
  sub_2170089F4();
  sub_2170089F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2166D9530(&qword_280E2B380, &qword_27CABC210);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_216714340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentDescriptor();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2167143E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ContentDescriptor();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_216714508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21671459C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216714678()
{
  type metadata accessor for MusicMetricsContextModifier();
  OUTLINED_FUNCTION_1_65();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  sub_2170097A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD628);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD630);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_7_31();
  swift_getWitnessTable();
  sub_216941D00(&qword_27CABD638, &qword_27CABD628);
  OUTLINED_FUNCTION_0_80();
  swift_getWitnessTable();
  sub_216941D00(&qword_27CABD640, &qword_27CABD630);
  return swift_getWitnessTable();
}

uint64_t sub_2167147A8()
{

  return swift_deallocObject();
}

void sub_216714824()
{
  OUTLINED_FUNCTION_1_66();
  OUTLINED_FUNCTION_0_81();
  __break(1u);
}

uint64_t sub_216714868(uint64_t a1, uint64_t a2, int *a3)
{
  sub_21700C644();
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_12:
    v9 = a1 + v12;
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v12 = a3[8];
    goto LABEL_12;
  }

  v13 = *(a1 + a3[6]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_21671498C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_21700C644();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[6]) = a2;
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216714AA0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216714AE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_216714B34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_216714B8C()
{
  v1 = *(type metadata accessor for ShareImageRequestAction() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_216714C94()
{
  MEMORY[0x21CEA1520](v0 + 16);
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_216714CC8()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_216714CFC()
{

  return swift_deallocObject();
}

uint64_t sub_216714D3C()
{

  return swift_deallocObject();
}

uint64_t sub_216714D74()
{
  sub_217005EF4();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_216714E04()
{

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for GridItemSpacing(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216714F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD9D8);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_216714FF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD9D8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2167150D8()
{
  v1 = type metadata accessor for ImagePicker(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008424();
    OUTLINED_FUNCTION_34();
    (*(v4 + 8))(v0 + v2);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 20);

  if (*(v3 + *(v1 + 28) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_216715268()
{
  v1 = sub_21700C9E4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_216715328()
{
  v1 = sub_21700C9E4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  swift_unknownObjectRelease();
  v5 = *(v0 + 40);
  if (v5 >> 60 != 15)
  {
    sub_21677A524(*(v0 + 32), v5);
  }

  (*(v3 + 8))(v0 + ((v4 + 72) & ~v4), v1);

  return swift_deallocObject();
}

uint64_t sub_216715410()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2167154B8()
{
  type metadata accessor for MusicAppDestination(0);
  v0 = OUTLINED_FUNCTION_38();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, v1, v2);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2167154FC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for MusicAppDestination(0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_2167155A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_7_43();
    }

    type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_17();
    if (*(v12 + 84) == v3)
    {
      v8 = v11;
      v13 = *(a3 + 24);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      v13 = *(a3 + 64);
    }

    v9 = v4 + v13;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_2167156B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      OUTLINED_FUNCTION_15_29();
      return;
    }

    type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 24);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
      v14 = *(a4 + 64);
    }

    v11 = v5 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_2167157C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_7_43();
    }

    v8 = type metadata accessor for ContentDescriptor();
    v9 = v4 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_216715888(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      OUTLINED_FUNCTION_15_29();
      return;
    }

    v10 = type metadata accessor for ContentDescriptor();
    v11 = v5 + *(a4 + 28);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_216715A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_216715AE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_216715B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7940);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  type metadata accessor for MappedSection(0);
  OUTLINED_FUNCTION_17();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 40));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_216715C88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7940);
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for MappedSection(0);
    OUTLINED_FUNCTION_17();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = a2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 36);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_216715DA4()
{
  v2 = type metadata accessor for PlaylistTrackListSection();
  v282 = *(*(v2 - 8) + 80);
  v3 = v0 + ((v282 + 32) & ~v282);
  v4 = sub_21700C924();
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 8);
  v6(v3, v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7940);

  v283 = v2;
  v281 = v3;
  v8 = v3 + *(v2 + 36);

  v9 = type metadata accessor for MappedSection(0);
  v10 = (v8 + *(v9 + 24));
  v11 = _s7SectionV6HeaderVMa(0);
  if (!OUTLINED_FUNCTION_4_16(v11))
  {
    v12 = OUTLINED_FUNCTION_20_11();
    v13 = _s7SectionV6HeaderV12HeaderLockupOMa(v12);
    v14 = OUTLINED_FUNCTION_88_0();
    if (!__swift_getEnumTagSinglePayload(v14, v15, v13))
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:

          goto LABEL_19;
        case 1u:
          v280 = v8;
          OUTLINED_FUNCTION_9_12();
          v25 = type metadata accessor for ComposerSectionHeader();
          v26 = v25[5];
          v27 = sub_21700D7A4();
          if (!__swift_getEnumTagSinglePayload(&v10[v26], 1, v27))
          {
            OUTLINED_FUNCTION_50();
            (*(v28 + 8))(&v10[v26], v27);
          }

          OUTLINED_FUNCTION_8_9(v25[6]);

          OUTLINED_FUNCTION_8_9(v25[10]);

          v29 = OUTLINED_FUNCTION_13_4(v25[11]);
          v8 = v280;
          if (v30)
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v29);
          }

          OUTLINED_FUNCTION_20_11();
          v31 = type metadata accessor for ContentDescriptor();
          v32 = OUTLINED_FUNCTION_88_0();
          if (!__swift_getEnumTagSinglePayload(v32, v33, v31))
          {

            v34 = *(v31 + 24);
            v35 = sub_217005EF4();
            if (!__swift_getEnumTagSinglePayload(&v10[v34], 1, v35))
            {
              OUTLINED_FUNCTION_50();
              (*(v36 + 8))(&v10[v34], v35);
            }
          }

          break;
        case 2u:
          if (*(v10 + 1))
          {

            if (*(v10 + 7))
            {
              __swift_destroy_boxed_opaque_existential_1Tm((v10 + 32));
            }
          }

          if (*(v10 + 10))
          {

            if (*(v10 + 16))
            {
              __swift_destroy_boxed_opaque_existential_1Tm((v10 + 104));
            }
          }

          type metadata accessor for DefaultSectionHeader();
          OUTLINED_FUNCTION_20_11();
          v18 = type metadata accessor for Artwork();
          v19 = OUTLINED_FUNCTION_88_0();
          if (!__swift_getEnumTagSinglePayload(v19, v20, v18))
          {
            sub_21700C4B4();
            OUTLINED_FUNCTION_9_0();
            (*(v21 + 8))(v10);
            v22 = *(v18 + 20);
            sub_21700C444();
            OUTLINED_FUNCTION_9_0();
            (*(v23 + 8))(&v10[v22], v24);
          }

          break;
        case 3u:
          if (*(v10 + 1))
          {

            if (*(v10 + 7))
            {
              __swift_destroy_boxed_opaque_existential_1Tm((v10 + 32));
            }
          }

LABEL_19:

          break;
        default:
          break;
      }
    }
  }

  v16 = v9;
  v17 = v8 + *(v9 + 28);
  type metadata accessor for MappedSection.Content(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 4u:
    case 5u:
    case 0xDu:
    case 0x17u:
    case 0x35u:
    case 0x3Au:
    case 0x3Bu:
      goto LABEL_6;
    case 1u:
      sub_21700C1E4();
      OUTLINED_FUNCTION_9_0();
      (*(v179 + 8))(v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7938);
      goto LABEL_177;
    case 2u:
      OUTLINED_FUNCTION_9_12();
      type metadata accessor for AnimatedTextListItem();
      goto LABEL_81;
    case 3u:
    case 7u:
    case 0xBu:
    case 0xEu:
    case 0xFu:
    case 0x12u:
    case 0x13u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x24u:
    case 0x2Du:
    case 0x33u:
    case 0x34u:
    case 0x36u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Du:
      goto LABEL_177;
    case 6u:
      v166 = OUTLINED_FUNCTION_9_12();
      v167 = type metadata accessor for MappedArtistLatestReleaseAndTopSongs(v166);
      v168 = v167[5];
      v169 = sub_21700D7A4();
      v170 = OUTLINED_FUNCTION_14_30();
      if (!__swift_getEnumTagSinglePayload(v170, v171, v169))
      {
        OUTLINED_FUNCTION_50();
        (*(v172 + 8))(v17 + v168, v169);
      }

      v173 = v17 + v167[6];
      if (!__swift_getEnumTagSinglePayload(v173, 1, v1))
      {
        v174 = (v173 + v1[5]);
        v175 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
        if (!OUTLINED_FUNCTION_28_9(v175))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:

              goto LABEL_209;
            case 1u:
              __swift_destroy_boxed_opaque_existential_1Tm(v174);
              v262 = type metadata accessor for ComposerSectionHeader();
              v263 = v262[5];
              if (!OUTLINED_FUNCTION_21_2(&v174[v263]))
              {
                OUTLINED_FUNCTION_50();
                (*(v264 + 8))(&v174[v263], v169);
              }

              v265 = &v174[v262[11]];
              if (*(v265 + 24))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v265);
              }

              v266 = &v174[v262[12]];
              v267 = type metadata accessor for ContentDescriptor();
              if (!OUTLINED_FUNCTION_28_9(v267))
              {

                v268 = *(v263 + 24);
                v269 = sub_217005EF4();
                if (!__swift_getEnumTagSinglePayload(&v266[v268], 1, v269))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v270 + 8))(&v266[v268], v269);
                }
              }

              break;
            case 2u:
              if (*(v174 + 1))
              {

                if (*(v174 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v174 + 32));
                }
              }

              if (*(v174 + 10))
              {

                if (*(v174 + 16))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v174 + 104));
                }
              }

              v252 = &v174[*(type metadata accessor for DefaultSectionHeader() + 32)];
              v253 = type metadata accessor for Artwork();
              if (!OUTLINED_FUNCTION_28_9(v253))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v254 + 8))(v252);
                v255 = *(v168 + 20);
                sub_21700C444();
                OUTLINED_FUNCTION_9_0();
                (*(v256 + 8))(&v252[v255], v257);
              }

              break;
            case 3u:
              if (*(v174 + 1))
              {

                if (*(v174 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v174 + 32));
                }
              }

LABEL_209:

              break;
            default:
              break;
          }
        }
      }

      v176 = v17 + v167[8];
      v16 = v9;
      if (!__swift_getEnumTagSinglePayload(v176, 1, v1))
      {
        v177 = (v176 + v1[5]);
        v178 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
        if (!__swift_getEnumTagSinglePayload(v177, 1, v178))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:

              goto LABEL_214;
            case 1u:
              __swift_destroy_boxed_opaque_existential_1Tm(v177);
              v271 = type metadata accessor for ComposerSectionHeader();
              v272 = v271[5];
              if (!OUTLINED_FUNCTION_21_2(&v177[v272]))
              {
                OUTLINED_FUNCTION_50();
                (*(v273 + 8))(&v177[v272], v169);
              }

              v274 = &v177[v271[11]];
              if (*(v274 + 24))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v274);
              }

              v275 = &v177[v271[12]];
              v276 = type metadata accessor for ContentDescriptor();
              if (!OUTLINED_FUNCTION_21_2(v275))
              {

                v277 = *(v276 + 24);
                v278 = sub_217005EF4();
                if (!OUTLINED_FUNCTION_21_2(v275 + v277))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v279 + 8))(v275 + v277, v278);
                }
              }

              break;
            case 2u:
              if (*(v177 + 1))
              {

                if (*(v177 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v177 + 32));
                }
              }

              if (*(v177 + 10))
              {

                if (*(v177 + 16))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v177 + 104));
                }
              }

              v258 = &v177[*(type metadata accessor for DefaultSectionHeader() + 32)];
              type metadata accessor for Artwork();
              if (!OUTLINED_FUNCTION_21_2(v258))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v259 + 8))(v258);
                OUTLINED_FUNCTION_36_16();
                OUTLINED_FUNCTION_9_0();
                (*(v260 + 8))(v258 + v178, v261);
              }

              break;
            case 3u:
              if (*(v177 + 1))
              {

                if (*(v177 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v177 + 32));
                }
              }

LABEL_214:

              break;
            default:
              break;
          }
        }
      }

LABEL_6:

      goto LABEL_178;
    case 8u:
      v81 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v81))
      {
        OUTLINED_FUNCTION_2_11();
        v82 = OUTLINED_FUNCTION_108();
        v83(v82);
      }

      v84 = type metadata accessor for ContainerDetailTracklistFooterLockup();
      OUTLINED_FUNCTION_1_15(v84);
      OUTLINED_FUNCTION_25_5();
      v85 = type metadata accessor for ContentDescriptor();
      if (!OUTLINED_FUNCTION_19_3(v85))
      {

        v86 = *(v7 + 24);
        v87 = sub_217005EF4();
        if (!OUTLINED_FUNCTION_21_2(v4 + v86))
        {
          OUTLINED_FUNCTION_50();
          (*(v88 + 8))(v4 + v86, v87);
        }
      }

      OUTLINED_FUNCTION_8_9(v1[8]);

      if (*(v17 + v1[9] + 8))
      {
      }

      goto LABEL_177;
    case 9u:
      v89 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v89))
      {
        OUTLINED_FUNCTION_2_11();
        v90 = OUTLINED_FUNCTION_108();
        v91(v90);
      }

      v92 = type metadata accessor for CuratorDetailHeaderComponentModel();
      __swift_destroy_boxed_opaque_existential_1Tm(v17 + v92[5]);
      OUTLINED_FUNCTION_8_9(v92[6]);

      v93 = v92[7];
      v94 = sub_217005EF4();
      v95 = OUTLINED_FUNCTION_14_30();
      if (!__swift_getEnumTagSinglePayload(v95, v96, v94))
      {
        OUTLINED_FUNCTION_2_11();
        (*(v97 + 8))(v17 + v93, v94);
      }

      v98 = v17 + v92[8];
      type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_21_2(v98))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v99 + 8))(v98);
        OUTLINED_FUNCTION_36_16();
        OUTLINED_FUNCTION_9_0();
        (*(v100 + 8))(v98 + v93);
      }

      v101 = v17 + v92[10];
      if (!OUTLINED_FUNCTION_21_2(v101))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v102 + 8))(v101);
        OUTLINED_FUNCTION_36_16();
        OUTLINED_FUNCTION_9_0();
        (*(v103 + 8))(v101 + v93);
      }

      v104 = v17 + v92[11];
      v105 = type metadata accessor for VideoArtwork();
      if (!__swift_getEnumTagSinglePayload(v104, 1, v105))
      {

        v106 = *(v105 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v107 + 8))(v104 + v106);
      }

      OUTLINED_FUNCTION_20_11();
      v108 = type metadata accessor for ContentDescriptor();
      v109 = OUTLINED_FUNCTION_88_0();
      if (__swift_getEnumTagSinglePayload(v109, v110, v108))
      {
        goto LABEL_178;
      }

      v111 = *(v108 + 24);
      goto LABEL_171;
    case 0xAu:
      OUTLINED_FUNCTION_9_12();
      v140 = type metadata accessor for EmptyStateLockup();
      v141 = v140[5];
      v142 = sub_21700D7A4();
      v143 = OUTLINED_FUNCTION_14_30();
      if (!__swift_getEnumTagSinglePayload(v143, v144, v142))
      {
        OUTLINED_FUNCTION_2_11();
        (*(v145 + 8))(v17 + v141, v142);
      }

      OUTLINED_FUNCTION_8_9(v140[7]);

      OUTLINED_FUNCTION_8_9(v140[8]);

      OUTLINED_FUNCTION_8_9(v140[9]);

      v146 = v17 + v140[10];
      v147 = type metadata accessor for Artwork();
      if (!__swift_getEnumTagSinglePayload(v146, 1, v147))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v148 + 8))(v146);
        v149 = *(v147 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v150 + 8))(v146 + v149);
      }

      OUTLINED_FUNCTION_20_11();
      v151 = type metadata accessor for ColorSchemeArtwork();
      v152 = OUTLINED_FUNCTION_88_0();
      if (__swift_getEnumTagSinglePayload(v152, v153, v151))
      {
        goto LABEL_178;
      }

      v154 = OUTLINED_FUNCTION_88_0();
      if (!__swift_getEnumTagSinglePayload(v154, v155, v147))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v156 + 8))(v17);
        v157 = *(v147 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v158 + 8))(v17 + v157);
      }

      v17 += *(v151 + 20);
      goto LABEL_158;
    case 0xCu:
      v70 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v70))
      {
        OUTLINED_FUNCTION_2_11();
        v71 = OUTLINED_FUNCTION_108();
        v72(v71);
      }

      v73 = type metadata accessor for GroupedTextListLockup();
      OUTLINED_FUNCTION_1_15(v73);
      OUTLINED_FUNCTION_25_5();
      v74 = type metadata accessor for ModalPresentationDescriptor();
      if (!OUTLINED_FUNCTION_19_3(v74))
      {

        v75 = *(v7 + 40);
        sub_21700D284();
        OUTLINED_FUNCTION_9_0();
        (*(v76 + 8))(v4 + v75);
      }

      goto LABEL_177;
    case 0x10u:
      OUTLINED_FUNCTION_9_12();
      type metadata accessor for InlineUpsell();
      v119 = OUTLINED_FUNCTION_25_23();
      if (!OUTLINED_FUNCTION_7_45(v119))
      {
        OUTLINED_FUNCTION_3_10();
        v120 = OUTLINED_FUNCTION_26_6();
        v121(v120);
      }

      OUTLINED_FUNCTION_6_20();

      OUTLINED_FUNCTION_8_9(v1[7]);

      OUTLINED_FUNCTION_8_9(v1[8]);

      v122 = OUTLINED_FUNCTION_13_4(v1[9]);
      if (v123)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v122);
      }

      v124 = OUTLINED_FUNCTION_13_4(v1[10]);
      if (v125)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v124);
      }

      v126 = v1[11];
      goto LABEL_137;
    case 0x11u:
      OUTLINED_FUNCTION_9_12();
      type metadata accessor for LandingUpsell();
      v52 = OUTLINED_FUNCTION_25_23();
      if (!OUTLINED_FUNCTION_7_45(v52))
      {
        OUTLINED_FUNCTION_3_10();
        v53 = OUTLINED_FUNCTION_26_6();
        v54(v53);
      }

      OUTLINED_FUNCTION_6_20();

      OUTLINED_FUNCTION_8_9(v1[7]);

      OUTLINED_FUNCTION_8_9(v1[8]);

      OUTLINED_FUNCTION_8_9(v1[9]);

      v55 = OUTLINED_FUNCTION_13_4(v1[10]);
      if (v56)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
      }

      v57 = OUTLINED_FUNCTION_13_4(v1[11]);
      if (v58)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
      }

      v59 = OUTLINED_FUNCTION_13_4(v1[12]);
      if (v60)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
      }

      v61 = v17 + v1[13];
      v62 = type metadata accessor for Artwork();
      if (!__swift_getEnumTagSinglePayload(v61, 1, v62))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v63 + 8))(v61);
        v64 = *(v62 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v65 + 8))(v61 + v64);
      }

      v17 += v1[14];
      v66 = OUTLINED_FUNCTION_88_0();
      if (__swift_getEnumTagSinglePayload(v66, v67, v62))
      {
        goto LABEL_178;
      }

      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v68 + 8))(v17);
      v69 = *(v62 + 20);
      goto LABEL_160;
    case 0x14u:
      v131 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v131))
      {
        OUTLINED_FUNCTION_2_11();
        v132 = OUTLINED_FUNCTION_108();
        v133(v132);
      }

      v134 = type metadata accessor for ListSection();
      OUTLINED_FUNCTION_1_15(v134);
      OUTLINED_FUNCTION_8_9(v135);

      OUTLINED_FUNCTION_8_9(v1[7]);

      goto LABEL_177;
    case 0x15u:

      __swift_destroy_boxed_opaque_existential_1Tm(v17 + 8);
      v159 = type metadata accessor for GradientListRowModel();
      v160 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_45(v160))
      {
        OUTLINED_FUNCTION_3_10();
        v161 = OUTLINED_FUNCTION_26_6();
        v162(v161);
      }

      v163 = OUTLINED_FUNCTION_13_4(*(v159 + 28));
      if (v164)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v163);
      }

      v165 = v17 + *(v159 + 32);
      if (*(v165 + 32))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v165 + 8);
      }

      goto LABEL_120;
    case 0x16u:
      v207 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v207))
      {
        OUTLINED_FUNCTION_2_11();
        v208 = OUTLINED_FUNCTION_108();
        v209(v208);
      }

      v210 = type metadata accessor for ParagraphComponentModel();
      OUTLINED_FUNCTION_1_15(v210);
      OUTLINED_FUNCTION_8_9(v211);
      goto LABEL_151;
    case 0x18u:
      v6(v17, v4);
      goto LABEL_177;
    case 0x19u:
      v136 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v136))
      {
        OUTLINED_FUNCTION_2_11();
        v137 = OUTLINED_FUNCTION_108();
        v138(v137);
      }

      v139 = type metadata accessor for PopoverSelector();
      OUTLINED_FUNCTION_1_15(v139);
LABEL_151:

      goto LABEL_175;
    case 0x1Du:
      v194 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v194))
      {
        OUTLINED_FUNCTION_2_11();
        v195 = OUTLINED_FUNCTION_108();
        v196(v195);
      }

      ContextLockup = type metadata accessor for SearchQueryContextLockup();
      OUTLINED_FUNCTION_1_15(ContextLockup);
      OUTLINED_FUNCTION_8_9(v198);

      OUTLINED_FUNCTION_8_9(v1[8]);

      OUTLINED_FUNCTION_8_9(v1[9]);

      OUTLINED_FUNCTION_8_9(v1[10]);

      goto LABEL_177;
    case 0x1Eu:
      __swift_destroy_boxed_opaque_existential_1Tm(v17);

      v69 = *(type metadata accessor for MappedSearchResultsList(0) + 24);
      sub_21700D194();
      goto LABEL_161;
    case 0x22u:
      OUTLINED_FUNCTION_9_12();
      type metadata accessor for SocialOnboardingNotificationSettingsPageLockup();
      v115 = OUTLINED_FUNCTION_25_23();
      if (!OUTLINED_FUNCTION_7_45(v115))
      {
        OUTLINED_FUNCTION_3_10();
        v116 = OUTLINED_FUNCTION_26_6();
        v117(v116);
      }

      goto LABEL_87;
    case 0x23u:
      __swift_destroy_boxed_opaque_existential_1Tm(v17);

      v111 = *(type metadata accessor for SocialOnboardingPrivacySettingsPageLockup() + 48);
      goto LABEL_170;
    case 0x25u:

      __swift_destroy_boxed_opaque_existential_1Tm(v17 + 16);
      v1 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup();
      v241 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_45(v241))
      {
        OUTLINED_FUNCTION_3_10();
        v242 = OUTLINED_FUNCTION_26_6();
        v243(v242);
      }

LABEL_175:
      v118 = v1[7];
      goto LABEL_176;
    case 0x26u:
      v44 = type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_4_16(v44))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v45 + 8))(v17);
        v46 = v1[5];
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v47 + 8))(v17 + v46);
      }

      v48 = type metadata accessor for SocialOnboardingWelcomePageLockup();
      OUTLINED_FUNCTION_11_13(v48);
      v49 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_7_45(v49))
      {
        OUTLINED_FUNCTION_3_10();
        v50 = OUTLINED_FUNCTION_26_6();
        v51(v50);
      }

      OUTLINED_FUNCTION_8_9(v1[7]);

LABEL_87:
      v118 = v1[8];
      goto LABEL_176;
    case 0x27u:
      v212 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v212))
      {
        OUTLINED_FUNCTION_2_11();
        v213 = OUTLINED_FUNCTION_108();
        v214(v213);
      }

      v215 = type metadata accessor for SocialProfileDetailHeaderLockup();
      OUTLINED_FUNCTION_1_15(v215);
      v217 = v17 + v216;

      v218 = *(type metadata accessor for ContentDescriptor() + 24);
      v219 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_35_19(v219))
      {
        OUTLINED_FUNCTION_3_10();
        (*(v220 + 8))(v217 + v218, v4);
      }

      OUTLINED_FUNCTION_8_9(v1[7]);

      OUTLINED_FUNCTION_8_9(v1[8]);

      OUTLINED_FUNCTION_20_11();
      v147 = type metadata accessor for Artwork();
LABEL_158:
      v221 = OUTLINED_FUNCTION_88_0();
      if (!__swift_getEnumTagSinglePayload(v221, v222, v147))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v223 + 8))(v17);
        v69 = *(v147 + 20);
LABEL_160:
        sub_21700C444();
LABEL_161:
        OUTLINED_FUNCTION_9_0();
        (*(v224 + 8))(v17 + v69, v225);
      }

      goto LABEL_178;
    case 0x28u:
      v226 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v226))
      {
        OUTLINED_FUNCTION_2_11();
        v227 = OUTLINED_FUNCTION_108();
        v228(v227);
      }

      v229 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
      OUTLINED_FUNCTION_1_15(v229);
      v231 = v17 + v230;

      v232 = *(type metadata accessor for ContentDescriptor() + 24);
      v233 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_35_19(v233))
      {
        OUTLINED_FUNCTION_3_10();
        (*(v234 + 8))(v231 + v232, v4);
      }

      OUTLINED_FUNCTION_8_9(v1[7]);

      OUTLINED_FUNCTION_8_9(v1[8]);

      OUTLINED_FUNCTION_8_9(v1[11]);

      OUTLINED_FUNCTION_8_9(v1[12]);

      OUTLINED_FUNCTION_8_9(v1[13]);

      OUTLINED_FUNCTION_8_9(v1[14]);

      OUTLINED_FUNCTION_25_5();
      v235 = type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_19_3(v235))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v236 + 8))(v4);
        OUTLINED_FUNCTION_36_16();
        OUTLINED_FUNCTION_9_0();
        (*(v237 + 8))(v4 + v231);
      }

      v118 = v1[17];
      goto LABEL_176;
    case 0x29u:
      v180 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v180))
      {
        OUTLINED_FUNCTION_2_11();
        v181 = OUTLINED_FUNCTION_108();
        v182(v181);
      }

      FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel();
      OUTLINED_FUNCTION_1_15(FriendsButtonComponentModel);
      OUTLINED_FUNCTION_8_9(v184);

      v126 = v1[7];
      goto LABEL_137;
    case 0x2Au:
      v127 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v127))
      {
        OUTLINED_FUNCTION_2_11();
        v128 = OUTLINED_FUNCTION_108();
        v129(v128);
      }

      v130 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader();
      OUTLINED_FUNCTION_11_13(v130);
      goto LABEL_177;
    case 0x2Bu:
      v185 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v185))
      {
        OUTLINED_FUNCTION_2_11();
        v186 = OUTLINED_FUNCTION_108();
        v187(v186);
      }

      v188 = type metadata accessor for SocialProfileFollowRequestResponseHeader();
      OUTLINED_FUNCTION_1_15(v188);
      OUTLINED_FUNCTION_8_9(v189);

      OUTLINED_FUNCTION_8_9(v1[7]);

      v190 = OUTLINED_FUNCTION_13_4(v1[8]);
      if (v191)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v190);
      }

      v126 = v1[9];
LABEL_137:
      v192 = OUTLINED_FUNCTION_13_4(v126);
      if (v193)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v192);
      }

      goto LABEL_178;
    case 0x2Cu:
      v77 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v77))
      {
        OUTLINED_FUNCTION_2_11();
        v78 = OUTLINED_FUNCTION_108();
        v79(v78);
      }

      v80 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel();
      OUTLINED_FUNCTION_11_13(v80);
      goto LABEL_177;
    case 0x2Eu:
      OUTLINED_FUNCTION_9_12();
      type metadata accessor for SocialOnboardingSharedPlaylistPageLockup();
LABEL_81:
      v112 = OUTLINED_FUNCTION_25_23();
      if (!OUTLINED_FUNCTION_7_45(v112))
      {
        OUTLINED_FUNCTION_3_10();
        v113 = OUTLINED_FUNCTION_26_6();
        v114(v113);
      }

      goto LABEL_177;
    case 0x2Fu:
      OUTLINED_FUNCTION_9_12();
      type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup();
      v37 = OUTLINED_FUNCTION_25_23();
      if (!OUTLINED_FUNCTION_7_45(v37))
      {
        OUTLINED_FUNCTION_3_10();
        v38 = OUTLINED_FUNCTION_26_6();
        v39(v38);
      }

LABEL_120:

      goto LABEL_177;
    case 0x30u:
      v40 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v40))
      {
        OUTLINED_FUNCTION_2_11();
        v41 = OUTLINED_FUNCTION_108();
        v42(v41);
      }

      v43 = type metadata accessor for SocialProfileHorizontalLockupSection();
      OUTLINED_FUNCTION_1_15(v43);

      if (*(v17 + v1[7]) == 1)
      {
        goto LABEL_178;
      }

LABEL_177:

LABEL_178:
      v244 = *(v16 + 36);
      v245 = sub_21700D7A4();
      if (!__swift_getEnumTagSinglePayload(v8 + v244, 1, v245))
      {
        OUTLINED_FUNCTION_50();
        (*(v246 + 8))(v8 + v244, v245);
      }

      v247 = v8 + *(v16 + 40);
      v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7948);
      if (!__swift_getEnumTagSinglePayload(v247, 1, v248))
      {

        v249 = *(v248 + 36);
        sub_21700CDF4();
        OUTLINED_FUNCTION_9_0();
        (*(v250 + 8))(v247 + v249);
      }

      sub_216684F5C(*(v281 + *(v283 + 44)), *(v281 + *(v283 + 44) + 8));

      return swift_deallocObject();
    case 0x31u:
      __swift_destroy_boxed_opaque_existential_1Tm(v17);

      goto LABEL_177;
    case 0x32u:
      OUTLINED_FUNCTION_9_12();
      v111 = *(type metadata accessor for Spacer() + 20);
LABEL_170:
      v94 = sub_21700D7A4();
LABEL_171:
      v238 = OUTLINED_FUNCTION_14_30();
      if (!__swift_getEnumTagSinglePayload(v238, v239, v94))
      {
        OUTLINED_FUNCTION_2_11();
        (*(v240 + 8))(v17 + v111, v94);
      }

      goto LABEL_178;
    case 0x3Cu:
      OUTLINED_FUNCTION_9_12();
      type metadata accessor for VerticalArtworkListItem();
      v199 = OUTLINED_FUNCTION_25_23();
      if (!OUTLINED_FUNCTION_7_45(v199))
      {
        OUTLINED_FUNCTION_3_10();
        v200 = OUTLINED_FUNCTION_26_6();
        v201(v200);
      }

      OUTLINED_FUNCTION_6_20();

      OUTLINED_FUNCTION_25_5();
      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v202 + 8))(v4);
      v203 = *(type metadata accessor for Artwork() + 20);
      sub_21700C444();
      OUTLINED_FUNCTION_9_0();
      (*(v204 + 8))(v4 + v203);
      v205 = OUTLINED_FUNCTION_13_4(v1[8]);
      if (v206)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v205);
      }

      v118 = v1[9];
LABEL_176:
      OUTLINED_FUNCTION_8_9(v118);
      goto LABEL_177;
    default:
      goto LABEL_178;
  }
}