uint64_t sub_1E5F856AC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        goto LABEL_14;
      }

LABEL_8:
      v11 = v9[1];

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_17;
      }

LABEL_13:
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
      goto LABEL_16;
    }

    type metadata accessor for ItemContext();
    v24 = swift_getEnumCaseMultiPayload();
    if (v24 > 4)
    {
      if (v24 <= 6)
      {
        if (v24 == 5)
        {
          v12 = sub_1E65E0248();
        }

        else
        {
          v12 = sub_1E65E3498();
        }

        goto LABEL_16;
      }

      switch(v24)
      {
        case 7:
          type metadata accessor for ProgramDetailItemContext();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v12 = sub_1E65E3578();
            break;
          }

          goto LABEL_8;
        case 8:
          type metadata accessor for SearchItemContext();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v12 = sub_1E65DCCE8();
          }

          else
          {
            v12 = sub_1E65DCF98();
          }

          break;
        case 9:
          v12 = sub_1E65E26E8();
          break;
        default:
          goto LABEL_17;
      }
    }

    else
    {
      if (v24 > 1)
      {
        if (v24 != 2)
        {
          if (v24 == 3)
          {
            v12 = sub_1E65DC508();
            goto LABEL_16;
          }

          type metadata accessor for LibraryItemContext();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v12 = sub_1E65DF3B8();
            goto LABEL_16;
          }

          goto LABEL_8;
        }

LABEL_40:
        v26 = *v9;
        v27 = v9[1];
        v28 = *(v9 + 16);
        sub_1E5E483B8();
        goto LABEL_17;
      }

      if (!v24)
      {
        goto LABEL_40;
      }

      if (v24 != 1)
      {
        goto LABEL_17;
      }

      type metadata accessor for BrowseItemContext();
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 > 3)
      {
        switch(v25)
        {
          case 4:
            v12 = sub_1E65DFDA8();
            break;
          case 5:
            v12 = sub_1E65DFC88();
            break;
          case 6:
            v12 = sub_1E65E0128();
            break;
          default:
            goto LABEL_17;
        }
      }

      else
      {
        if (!v25)
        {
          v12 = sub_1E65DFF38();
          goto LABEL_16;
        }

        if (v25 == 1)
        {
          goto LABEL_8;
        }

        if (v25 != 2)
        {
          goto LABEL_17;
        }

        v12 = sub_1E65DF978();
      }
    }

LABEL_16:
    (*(*(v12 - 8) + 8))(v0 + v2, v12);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_14:
    v13 = *v9;

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 1)
  {
LABEL_15:
    v12 = sub_1E65D7968();
    goto LABEL_16;
  }

LABEL_17:
  v14 = (v2 + v3 + v6) & ~v6;
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v5 + 8))(v0 + v14, v4);
  v16 = *(v0 + v15);

  v17 = (v0 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = *v17;
  swift_unknownObjectRelease();
  v19 = v17[3];

  v20 = v17[5];

  v21 = v17[7];

  v22 = v17[9];

  return swift_deallocObject();
}

uint64_t sub_1E5F85C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E65D76F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1E65D96F8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1E5F85D4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E65D76F8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1E65D96F8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E5F85EA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5F85F24(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E65DB748();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E5F85FD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E65DB748();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E5F8611C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFF8, &unk_1E660AEC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 56) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5F861B0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5F861F0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5F862A0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5F862D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5F86318()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5F863B8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5F86408()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1E5F86478()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1E5F864C8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5F86500()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5F86580()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1E5F86650()
{
  _Block_release(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1E5F866B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1E5F86700()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5F86784()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B980, &unk_1E660DCE8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5F86830()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5F86868()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1E5F86904()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5F86944()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1E5F869FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5F86A34(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079C10, &unk_1E660E8F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1E5F86AF0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079C10, &unk_1E660E8F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E5F86BA0()
{
  v1 = (type metadata accessor for SubscriptionPurchaseRequest() - 8);
  v2 = (*(*v1 + 80) + 96) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = v0[2];
  swift_unknownObjectRelease();
  v5 = v0[4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  v6 = v0[11];

  v7 = v1[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079C10, &unk_1E660E8F0);
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_1E5F86CB4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5F86EFC()
{
  v1 = sub_1E65D76F8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5F87058(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1E5F87098(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1E5F8710C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1E5F8711C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1E5F87148(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1E5F87158(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1E5F87058(result, a2, a3 & 1);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E5F8763C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E5F87684(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1E5F876D4(uint64_t a1)
{
  v2 = sub_1E65D7848();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65E5C28();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass_];
  (*(v3 + 16))(v6, a1, v2);
  return sub_1E65E5D48();
}

uint64_t sub_1E5F87AD0(void *a1, uint64_t a2)
{
  v4 = sub_1E65D7848();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65E5C28();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1E65E5BA8();
  (*(v5 + 16))(v8, a2, v4);
  v11 = a1;
  return sub_1E65E5D48();
}

uint64_t sub_1E5F87DD0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v8 = sub_1E65D7848();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65E5C28();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  if (a5 > 2u)
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v15 = sub_1E65E3B68();
    __swift_project_value_buffer(v15, qword_1EE2EA2A0);
    v16 = sub_1E65E3B48();
    v17 = sub_1E65E6328();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1E5DE9000, v16, v17, "[ActionItemIdentifier] localizedDeleteFromLibraryString: Unsupported item type", v18, 2u);
      MEMORY[0x1E694F1C0](v18, -1, -1);
    }

    if (a2)
    {
      return 0xD000000000000029;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1E65E5BA8();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass_];
    (*(v9 + 16))(v12, a1, v8);
    return sub_1E65E5CD8();
  }
}

uint64_t sub_1E5F88188(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v7 = a5;
  v8 = sub_1E65D7848();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65E5C28();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  if (v7)
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v15 = sub_1E65E3B68();
    __swift_project_value_buffer(v15, qword_1EE2EA2A0);
    v16 = sub_1E65E3B48();
    v17 = sub_1E65E6328();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1E5DE9000, v16, v17, "[ActionItemIdentifier] localizedRemoveDownloadOrDeleteFromLibraryString: Unsupported item type", v18, 2u);
      MEMORY[0x1E694F1C0](v18, -1, -1);
    }

    if (a2)
    {
      return 0xD000000000000029;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1E65E5BA8();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    (*(v9 + 16))(v12, a1, v8);
    return sub_1E65E5CD8();
  }
}

uint64_t sub_1E5F88410()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E5F88458()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

unint64_t sub_1E5F8849C()
{
  v1 = *v0;
  v2 = 0x74756F6B726F77;
  v3 = 0xD000000000000013;
  v4 = 0x72656E69617274;
  if (v1 != 3)
  {
    v4 = 0x7974696C61646F6DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D6172676F7270;
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

uint64_t sub_1E5F8853C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5F89B0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5F88570(uint64_t a1)
{
  v2 = sub_1E5F8A638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5F885AC(uint64_t a1)
{
  v2 = sub_1E5F8A638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5F885E8(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v52 = a3;
  v49 = a4;
  v51 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BD8, &qword_1E65E8C88);
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BE0, &qword_1E65E8C90);
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BE8, &qword_1E65E8C98);
  v40 = *(v11 - 8);
  v41 = v11;
  v12 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v38 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BF0, &qword_1E65E8CA0);
  v38 = *(v14 - 8);
  v15 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BF8, &qword_1E65E8CA8);
  v48 = *(v18 - 8);
  v19 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v38 - v20;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071C00, &qword_1E65E8CB0);
  v22 = *(v50 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v25 = &v38 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5F8A638();
  sub_1E65E6DA8();
  v27 = (v22 + 8);
  if (v49 <= 1u)
  {
    v32 = v48;
    if (!v49)
    {
      v53 = 0;
      sub_1E5F8A7DC();
      v33 = v50;
      sub_1E65E6B18();
      sub_1E65E6B48();
      (*(v32 + 8))(v21, v18);
      return (*v27)(v25, v33);
    }

    v54 = 1;
    sub_1E5F8A788();
    v29 = v50;
    sub_1E65E6B18();
    sub_1E65E6B48();
    (*(v38 + 8))(v17, v14);
  }

  else
  {
    if (v49 == 2)
    {
      v55 = 2;
      sub_1E5F8A734();
      v35 = v39;
      v36 = v50;
      sub_1E65E6B18();
      v37 = v41;
      sub_1E65E6B48();
      (*(v40 + 8))(v35, v37);
      return (*v27)(v25, v36);
    }

    if (v49 == 3)
    {
      v56 = 3;
      sub_1E5F8A6E0();
      v28 = v42;
      v29 = v50;
      sub_1E65E6B18();
      v30 = v44;
      sub_1E65E6B48();
      v31 = v43;
    }

    else
    {
      v57 = 4;
      sub_1E5F8A68C();
      v28 = v45;
      v29 = v50;
      sub_1E65E6B18();
      v30 = v47;
      sub_1E65E6B48();
      v31 = v46;
    }

    (*(v31 + 8))(v28, v30);
  }

  return (*v27)(v25, v29);
}

uint64_t sub_1E5F88BF0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1E65E6D28();
  MEMORY[0x1E694E740](a3);
  sub_1E65E5D78();
  return sub_1E65E6D78();
}

uint64_t sub_1E5F88C7C(uint64_t a1)
{
  v2 = sub_1E5F8A734();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5F88CB8(uint64_t a1)
{
  v2 = sub_1E5F8A734();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5F88CF4(uint64_t a1)
{
  v2 = sub_1E5F8A68C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5F88D30(uint64_t a1)
{
  v2 = sub_1E5F8A68C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5F88D6C(uint64_t a1)
{
  v2 = sub_1E5F8A788();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5F88DA8(uint64_t a1)
{
  v2 = sub_1E5F8A788();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5F88DE4(uint64_t a1)
{
  v2 = sub_1E5F8A6E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5F88E20(uint64_t a1)
{
  v2 = sub_1E5F8A6E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5F88E5C()
{
  sub_1E65E6D28();
  MEMORY[0x1E694E740](0);
  return sub_1E65E6D78();
}

uint64_t sub_1E5F88EA0()
{
  sub_1E65E6D28();
  MEMORY[0x1E694E740](0);
  return sub_1E65E6D78();
}

uint64_t sub_1E5F88EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5F88F70(uint64_t a1)
{
  v2 = sub_1E5F8A7DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5F88FAC(uint64_t a1)
{
  v2 = sub_1E5F8A7DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5F88FE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E5F89CC4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1E5F89044()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x1E694E740](*(v0 + 16));

  return sub_1E65E5D78();
}

uint64_t sub_1E5F89098()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v3);
  sub_1E65E5D78();
  return sub_1E65E6D78();
}

void *sub_1E5F8916C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1E5F89198@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1E5F89248(uint64_t a1, id *a2)
{
  result = sub_1E65E5C58();
  *a2 = 0;
  return result;
}

uint64_t sub_1E5F892C0(uint64_t a1, id *a2)
{
  v3 = sub_1E65E5C68();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1E5F89340@<X0>(uint64_t *a1@<X8>)
{
  sub_1E65E5C78();
  v2 = sub_1E65E5C48();

  *a1 = v2;
  return result;
}

uint64_t sub_1E5F89398@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1E5F8A830(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1E5F893D8(uint64_t a1)
{
  v2 = sub_1E5E0DD4C(&qword_1EE2D45B8, type metadata accessor for Key);
  v3 = sub_1E5E0DD4C(&unk_1ED071D50, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1E5F89494(uint64_t a1)
{
  v2 = sub_1E5E0DD4C(&qword_1ED071D68, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_1E5E0DD4C(&unk_1ED071D70, type metadata accessor for OpenExternalURLOptionsKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1E5F89550(uint64_t a1)
{
  v2 = sub_1E5E0DD4C(&qword_1ED071D38, type metadata accessor for URLResourceKey);
  v3 = sub_1E5E0DD4C(&unk_1ED071D40, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1E5F8960C(uint64_t a1)
{
  v2 = sub_1E5E0DD4C(&qword_1EE2D45F8, type metadata accessor for FileAttributeKey);
  v3 = sub_1E5E0DD4C(&qword_1ED071D30, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1E5F897E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1E65E5C48();

  *a2 = v5;
  return result;
}

uint64_t sub_1E5F89830(uint64_t a1)
{
  v2 = sub_1E5E0DD4C(&qword_1EE2D4588, type metadata accessor for AttributeName);
  v3 = sub_1E5E0DD4C(&qword_1ED071D60, type metadata accessor for AttributeName);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1E5F898EC()
{
  v1 = *v0;
  v2 = sub_1E65E5C78();
  v3 = MEMORY[0x1E694D840](v2);

  return v3;
}

uint64_t sub_1E5F89928()
{
  v1 = *v0;
  sub_1E65E5C78();
  sub_1E65E5D78();
}

uint64_t sub_1E5F8997C()
{
  v1 = *v0;
  sub_1E65E5C78();
  sub_1E65E6D28();
  sub_1E65E5D78();
  v2 = sub_1E65E6D78();

  return v2;
}

uint64_t sub_1E5F899F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1E65E5C78();
  v6 = v5;
  if (v4 == sub_1E65E5C78() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();
  }

  return v9 & 1;
}

uint64_t sub_1E5F89A78(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      if (a6 == 1)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if (a6)
    {
      return 0;
    }
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        if (a6 == 3)
        {
          goto LABEL_10;
        }
      }

      else if (a6 == 4)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if (a6 != 2)
    {
      return 0;
    }
  }

LABEL_10:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1E65E6C18();
  }
}

uint64_t sub_1E5F89B0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F6B726F77 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6172676F7270 && a2 == 0xE700000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E66102B0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72656E69617274 && a2 == 0xE700000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7974696C61646F6DLL && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E65E6C18();

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

uint64_t sub_1E5F89CC4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071B70, &qword_1E65E8C50);
  v3 = *(v2 - 8);
  v62 = v2;
  v63 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v64 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071B78, &qword_1E65E8C58);
  v7 = *(v6 - 8);
  v60 = v6;
  v61 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071B80, &qword_1E65E8C60);
  v11 = *(v10 - 8);
  v58 = v10;
  v59 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071B88, &qword_1E65E8C68);
  v56 = *(v14 - 8);
  v57 = v14;
  v15 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071B90, &qword_1E65E8C70);
  v55 = *(v18 - 8);
  v19 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v54 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071B98, &qword_1E65E8C78);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v54 - v25;
  v27 = a1[3];
  v28 = a1[4];
  v67 = a1;
  v29 = __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1E5F8A638();
  v30 = v68;
  sub_1E65E6D98();
  if (v30)
  {
    goto LABEL_9;
  }

  v31 = v21;
  v54 = v18;
  v33 = v65;
  v32 = v66;
  v68 = v23;
  v34 = sub_1E65E6AF8();
  v35 = (2 * *(v34 + 16)) | 1;
  v69 = v34;
  v70 = v34 + 32;
  v71 = 0;
  v72 = v35;
  v36 = sub_1E5FBE3EC();
  if (v36 == 5 || v71 != v72 >> 1)
  {
    v41 = sub_1E65E68F8();
    swift_allocError();
    v43 = v42;
    v29 = v26;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80) + 48);
    *v43 = &type metadata for ActionItemIdentifier;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
    swift_willThrow();
    (*(v68 + 8))(v29, v22);
    swift_unknownObjectRelease();
LABEL_9:
    v45 = v67;
    goto LABEL_10;
  }

  if (v36 > 1u)
  {
    v73 = v36;
    if (v36 == 2)
    {
      v74 = 2;
      sub_1E5F8A734();
      sub_1E65E6A68();
      v37 = v68;
      v55 = v22;
      v50 = v58;
      v29 = sub_1E65E6AA8();
      (*(v59 + 8))(v33, v50);
      v39 = v67;
    }

    else
    {
      v37 = v68;
      if (v36 == 3)
      {
        v74 = 3;
        sub_1E5F8A6E0();
        v38 = v32;
        sub_1E65E6A68();
        v39 = v67;
        v55 = v22;
        v40 = v60;
        v29 = sub_1E65E6AA8();
        v53 = v61;
      }

      else
      {
        v74 = 4;
        sub_1E5F8A68C();
        v38 = v64;
        sub_1E65E6A68();
        v39 = v67;
        v55 = v22;
        v40 = v62;
        v29 = sub_1E65E6AA8();
        v53 = v63;
      }

      (*(v53 + 8))(v38, v40);
    }

    goto LABEL_17;
  }

  if (v36)
  {
    v48 = v36;
    v74 = 1;
    sub_1E5F8A788();
    v49 = v17;
    sub_1E65E6A68();
    v39 = v67;
    v73 = v48;
    v55 = v22;
    v52 = v57;
    v29 = sub_1E65E6AA8();
    (*(v56 + 8))(v49, v52);
    v37 = v68;
LABEL_17:
    (*(v37 + 8))(v26, v55);
    swift_unknownObjectRelease();
    v45 = v39;
    goto LABEL_10;
  }

  v73 = v36;
  v74 = 0;
  sub_1E5F8A7DC();
  sub_1E65E6A68();
  v47 = v67;
  v51 = v54;
  v29 = sub_1E65E6AA8();
  (*(v55 + 8))(v31, v51);
  (*(v68 + 8))(v26, v22);
  swift_unknownObjectRelease();
  v45 = v47;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v45);
  return v29;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1E5F8A638()
{
  result = qword_1ED071BA0;
  if (!qword_1ED071BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071BA0);
  }

  return result;
}

unint64_t sub_1E5F8A68C()
{
  result = qword_1ED071BB0;
  if (!qword_1ED071BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071BB0);
  }

  return result;
}

unint64_t sub_1E5F8A6E0()
{
  result = qword_1ED071BB8;
  if (!qword_1ED071BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071BB8);
  }

  return result;
}

unint64_t sub_1E5F8A734()
{
  result = qword_1ED071BC0;
  if (!qword_1ED071BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071BC0);
  }

  return result;
}

unint64_t sub_1E5F8A788()
{
  result = qword_1ED071BC8;
  if (!qword_1ED071BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071BC8);
  }

  return result;
}

unint64_t sub_1E5F8A7DC()
{
  result = qword_1ED071BD0;
  if (!qword_1ED071BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071BD0);
  }

  return result;
}

uint64_t sub_1E5F8A830(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1E5F8A874(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5F8A894(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ActionItemIdentifier.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActionItemIdentifier.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PersonalizationPrivacyConsentDetour.PersonalizationPrivacyConsentError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PersonalizationPrivacyConsentDetour.PersonalizationPrivacyConsentError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1E5F8ABB0()
{
  result = qword_1ED071C30;
  if (!qword_1ED071C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071C30);
  }

  return result;
}

unint64_t sub_1E5F8AC08()
{
  result = qword_1ED071C38;
  if (!qword_1ED071C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071C38);
  }

  return result;
}

unint64_t sub_1E5F8AC60()
{
  result = qword_1ED071C40;
  if (!qword_1ED071C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071C40);
  }

  return result;
}

unint64_t sub_1E5F8ACB8()
{
  result = qword_1ED071C48;
  if (!qword_1ED071C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071C48);
  }

  return result;
}

unint64_t sub_1E5F8AD10()
{
  result = qword_1ED071C50;
  if (!qword_1ED071C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071C50);
  }

  return result;
}

unint64_t sub_1E5F8AD68()
{
  result = qword_1ED071C58;
  if (!qword_1ED071C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071C58);
  }

  return result;
}

unint64_t sub_1E5F8B1B0()
{
  result = qword_1ED071CC8;
  if (!qword_1ED071CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071CC8);
  }

  return result;
}

unint64_t sub_1E5F8B208()
{
  result = qword_1ED071CD0;
  if (!qword_1ED071CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071CD0);
  }

  return result;
}

unint64_t sub_1E5F8B260()
{
  result = qword_1ED071CD8;
  if (!qword_1ED071CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071CD8);
  }

  return result;
}

unint64_t sub_1E5F8B2B8()
{
  result = qword_1ED071CE0;
  if (!qword_1ED071CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071CE0);
  }

  return result;
}

unint64_t sub_1E5F8B310()
{
  result = qword_1ED071CE8;
  if (!qword_1ED071CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071CE8);
  }

  return result;
}

unint64_t sub_1E5F8B368()
{
  result = qword_1ED071CF0;
  if (!qword_1ED071CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071CF0);
  }

  return result;
}

unint64_t sub_1E5F8B3C0()
{
  result = qword_1ED071CF8;
  if (!qword_1ED071CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071CF8);
  }

  return result;
}

unint64_t sub_1E5F8B418()
{
  result = qword_1ED071D00;
  if (!qword_1ED071D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071D00);
  }

  return result;
}

unint64_t sub_1E5F8B470()
{
  result = qword_1ED071D08;
  if (!qword_1ED071D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071D08);
  }

  return result;
}

unint64_t sub_1E5F8B4C8()
{
  result = qword_1ED071D10;
  if (!qword_1ED071D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071D10);
  }

  return result;
}

unint64_t sub_1E5F8B520()
{
  result = qword_1ED071D18;
  if (!qword_1ED071D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071D18);
  }

  return result;
}

unint64_t sub_1E5F8B578()
{
  result = qword_1ED071D20;
  if (!qword_1ED071D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071D20);
  }

  return result;
}

uint64_t SampleContentWorkoutViewErrorItemContext.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

unint64_t sub_1E5F8B6CC()
{
  result = qword_1ED071DE0;
  if (!qword_1ED071DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071DE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SampleContentWorkoutViewErrorItemContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SampleContentWorkoutViewErrorItemContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1E5F8B870()
{
  v1 = 7368564;
  v2 = 0x6D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x676E696C69617274;
  }

  if (*v0)
  {
    v1 = 0x676E696461656CLL;
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

uint64_t sub_1E5F8B8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5F8C45C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5F8B914(uint64_t a1)
{
  v2 = sub_1E5F8BC68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5F8B950(uint64_t a1)
{
  v2 = sub_1E5F8BC68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static ArtworkEdgeInsets.compact.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E65E4B48();
  v3 = 4.0;
  if (result)
  {
    v3 = 8.0;
  }

  *a1 = 0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0x4020000000000000;
  return result;
}

double static ArtworkEdgeInsets.regular.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_1E65E4B48();
  result = 0.0;
  *a1 = xmmword_1E65E9CF0;
  a1[1] = xmmword_1E65E9D00;
  return result;
}

uint64_t static ArtworkEdgeInsets.large.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E65E4B48();
  v3 = 16.0;
  if (result)
  {
    v3 = 18.0;
  }

  *a1 = 0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0x4028000000000000;
  return result;
}

uint64_t ArtworkEdgeInsets.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071DE8, &qword_1E65E9D10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5F8BC68();
  sub_1E65E6DA8();
  v16 = v10;
  HIBYTE(v15) = 0;
  sub_1E5F8BCBC();
  sub_1E65E6B78();
  if (!v2)
  {
    v16 = v9;
    HIBYTE(v15) = 1;
    sub_1E65E6B78();
    v16 = v12;
    HIBYTE(v15) = 2;
    sub_1E65E6B78();
    v16 = v11;
    HIBYTE(v15) = 3;
    sub_1E65E6B78();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1E5F8BC68()
{
  result = qword_1EE2D9DF0[0];
  if (!qword_1EE2D9DF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2D9DF0);
  }

  return result;
}

unint64_t sub_1E5F8BCBC()
{
  result = qword_1EE2D6DC8[0];
  if (!qword_1EE2D6DC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2D6DC8);
  }

  return result;
}

uint64_t ArtworkEdgeInsets.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071DF0, &qword_1E65E9D18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5F8BC68();
  sub_1E65E6D98();
  if (!v2)
  {
    HIBYTE(v16) = 0;
    sub_1E5F8BF70();
    sub_1E65E6AD8();
    v11 = v17;
    HIBYTE(v16) = 1;
    sub_1E65E6AD8();
    v12 = v17;
    HIBYTE(v16) = 2;
    sub_1E65E6AD8();
    v14 = v17;
    HIBYTE(v16) = 3;
    sub_1E65E6AD8();
    (*(v6 + 8))(v9, v5);
    v15 = v17;
    *a2 = v11;
    a2[1] = v12;
    a2[2] = v14;
    a2[3] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E5F8BF70()
{
  result = qword_1ED071DF8;
  if (!qword_1ED071DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071DF8);
  }

  return result;
}

uint64_t ArtworkEdgeInsets.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E694E770](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1E694E770](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1E694E770](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x1E694E770](*&v7);
}

uint64_t ArtworkEdgeInsets.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1E65E6D28();
  ArtworkEdgeInsets.hash(into:)();
  return sub_1E65E6D78();
}

uint64_t sub_1E5F8C0C4()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1E65E6D28();
  ArtworkEdgeInsets.hash(into:)();
  return sub_1E65E6D78();
}

uint64_t sub_1E5F8C114()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1E65E6D28();
  ArtworkEdgeInsets.hash(into:)();
  return sub_1E65E6D78();
}

unint64_t sub_1E5F8C1A0()
{
  result = qword_1ED071E00;
  if (!qword_1ED071E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071E00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkEdgeInsets.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArtworkEdgeInsets.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5F8C358()
{
  result = qword_1ED071E08;
  if (!qword_1ED071E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071E08);
  }

  return result;
}

unint64_t sub_1E5F8C3B0()
{
  result = qword_1EE2D9DE0;
  if (!qword_1EE2D9DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9DE0);
  }

  return result;
}

unint64_t sub_1E5F8C408()
{
  result = qword_1EE2D9DE8;
  if (!qword_1EE2D9DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9DE8);
  }

  return result;
}

uint64_t sub_1E5F8C45C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7368564 && a2 == 0xE300000000000000;
  if (v3 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696461656CLL && a2 == 0xE700000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E5F8C5CC(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1E65DA988();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5F8C68C, 0, 0);
}

uint64_t sub_1E5F8C68C()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  v3 = v0[9];
  if (Strong)
  {
    v4 = Strong;
    v5 = v0[5];
    sub_1E65DE2A8();

    return MEMORY[0x1EEE6DFA0](sub_1E5F8C760, v4, 0);
  }

  else
  {
    v6 = v0[9];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1E5F8C760()
{
  v1 = v0[9];
  v2 = sub_1E65DA968();
  if ((v3 & 1) == 0 || v2 - 3 >= 0xFFFFFFFE)
  {
    v4 = v0[10];
    sub_1E5F8C818(0);
  }

  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v8 = v0[8];

  (*(v8 + 8))(v6, v7);
  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E5F8C818(void *a1)
{
  v3 = type metadata accessor for PersonalizationPrivacyConsentDetour.State(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  v10 = type metadata accessor for RouteDestination();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  v18 = *(v17 - 8);
  v33 = v17;
  v34 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - v20;
  v22 = OBJC_IVAR____TtC10Blackbeard35PersonalizationPrivacyConsentDetour_state;
  swift_beginAccess();
  sub_1E5F90E10(v1 + v22, v9, type metadata accessor for PersonalizationPrivacyConsentDetour.State);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v9, 1, v23) == 1)
  {
    return sub_1E5F90EDC(v9, type metadata accessor for PersonalizationPrivacyConsentDetour.State);
  }

  v32 = v14;
  v26 = v16;
  v27 = a1;
  v28 = *(v23 + 48);
  (*(v34 + 32))(v21, v9, v33);
  sub_1E5F90FA0(&v9[v28], v26, type metadata accessor for RouteDestination);
  (*(v24 + 56))(v7, 1, 1, v23);
  swift_beginAccess();
  sub_1E5F90E78(v7, v1 + v22);
  swift_endAccess();
  if (v27)
  {
    v35 = v27;
    v29 = v27;
    v30 = v33;
    sub_1E65E5FE8();
  }

  else
  {
    sub_1E5F90E10(v26, v32, type metadata accessor for RouteDestination);
    v30 = v33;
    sub_1E65E5FF8();
  }

  sub_1E5F90EDC(v26, type metadata accessor for RouteDestination);
  return (*(v34 + 8))(v21, v30);
}

uint64_t sub_1E5F8CB98()
{
  v1 = sub_1E65E3B68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18[-v9];
  (*(v7 + 16))(&v18[-v9], v0 + OBJC_IVAR____TtC10Blackbeard35PersonalizationPrivacyConsentDetour__forcePersonalizationPrivacyConsentAcknowledgement, v6);
  sub_1E65DDC48();
  (*(v7 + 8))(v10, v6);
  if (v18[15])
  {
    sub_1E65DE348();
    v11 = sub_1E65E3B48();
    v12 = sub_1E65E6338();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1E5DE9000, v11, v12, "PersonalizationPrivacyConsent force showing enabled", v13, 2u);
      MEMORY[0x1E694F1C0](v13, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    v14 = 1;
  }

  else
  {
    v15 = sub_1E65DA968() - 3 < 0xFFFFFFFE;
    v14 = v16 ^ 1 | v15;
  }

  return v14 & 1;
}

uint64_t sub_1E5F8CDE4()
{
  sub_1E5F90EDC(v0 + OBJC_IVAR____TtC10Blackbeard35PersonalizationPrivacyConsentDetour_state, type metadata accessor for PersonalizationPrivacyConsentDetour.State);
  v1 = *(v0 + OBJC_IVAR____TtC10Blackbeard35PersonalizationPrivacyConsentDetour_dependencies);

  v2 = *(v0 + OBJC_IVAR____TtC10Blackbeard35PersonalizationPrivacyConsentDetour_eventHub);
  swift_unknownObjectRelease();
  v3 = *(v0 + OBJC_IVAR____TtC10Blackbeard35PersonalizationPrivacyConsentDetour_subscriptionToken);

  v4 = OBJC_IVAR____TtC10Blackbeard35PersonalizationPrivacyConsentDetour__personalizationPrivacyConsentShowingEnabled;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC10Blackbeard35PersonalizationPrivacyConsentDetour__forcePersonalizationPrivacyConsentAcknowledgement, v5);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
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

uint64_t sub_1E5F8CF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1E65E3B68();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = sub_1E65DA988();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = sub_1E65D76A8();
  v6[14] = v13;
  v14 = *(v13 - 8);
  v6[15] = v14;
  v15 = *(v14 + 64) + 15;
  v6[16] = swift_task_alloc();
  v16 = sub_1E65D92D8();
  v6[17] = v16;
  v17 = *(v16 - 8);
  v6[18] = v17;
  v18 = *(v17 + 64) + 15;
  v6[19] = swift_task_alloc();
  v19 = sub_1E65D9FF8();
  v6[20] = v19;
  v20 = *(v19 - 8);
  v6[21] = v20;
  v21 = *(v20 + 64) + 15;
  v6[22] = swift_task_alloc();
  v22 = sub_1E65DA2A8();
  v6[23] = v22;
  v23 = *(v22 - 8);
  v6[24] = v23;
  v24 = *(v23 + 64) + 15;
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v6[27] = v25;
  v26 = *(v25 - 8);
  v6[28] = v26;
  v27 = *(v26 + 64) + 15;
  v6[29] = swift_task_alloc();
  v28 = sub_1E65DE3E8();
  v6[30] = v28;
  v29 = *(v28 - 8);
  v6[31] = v29;
  v30 = *(v29 + 64) + 15;
  v6[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5F8D2C8, v5, 0);
}

uint64_t sub_1E5F8D2C8()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = *(v0 + 32);
  v5 = *(type metadata accessor for AppComposer() + 20);
  *(v0 + 368) = v5;
  v6 = v4 + v5;
  v7 = *(v4 + v5 + 8);
  v8 = sub_1E65DAE18();
  (*(v2 + 104))(v1, *MEMORY[0x1E69CAD48], v3);
  v9 = sub_1E637C87C(v1, v8);

  (*(v2 + 8))(v1, v3);
  if (v9)
  {
    v11 = *(v0 + 224);
    v10 = *(v0 + 232);
    v12 = *(v0 + 216);
    (*(v11 + 16))(v10, *(v0 + 56) + OBJC_IVAR____TtC10Blackbeard35PersonalizationPrivacyConsentDetour__personalizationPrivacyConsentShowingEnabled, v12);
    sub_1E65DDC48();
    (*(v11 + 8))(v10, v12);
    if (*(v0 + 372) == 1)
    {
      v13 = sub_1E65DAE38();
      if (v13 == sub_1E65DAE38())
      {
        v14 = v6 + *(type metadata accessor for AppEnvironment() + 100);
        active = RemoteBrowsingService.requireActiveEnvironment.getter();
        *(v0 + 264) = v16;
        v49 = (active + *active);
        v17 = active[1];
        v18 = swift_task_alloc();
        *(v0 + 272) = v18;
        *v18 = v0;
        v18[1] = sub_1E5F8D740;
        v19 = *(v0 + 176);
      }

      else
      {
        v42 = *(v0 + 32) + *(v0 + 368);
        v43 = type metadata accessor for AppEnvironment();
        *(v0 + 288) = v43;
        v44 = v42 + *(v43 + 108);
        v45 = ServiceSubscriptionService.queryServiceSubscription.getter();
        *(v0 + 296) = v46;
        v49 = (v45 + *v45);
        v47 = v45[1];
        v48 = swift_task_alloc();
        *(v0 + 304) = v48;
        *v48 = v0;
        v48[1] = sub_1E5F8DB34;
        v19 = *(v0 + 152);
      }

      return v49(v19);
    }

    v22 = *(v0 + 80);
    sub_1E65DE348();
    v23 = sub_1E65E3B48();
    v24 = sub_1E65E6338();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1E5DE9000, v23, v24, "PersonalizationPrivacyConsent showing disabled", v25, 2u);
      MEMORY[0x1E694F1C0](v25, -1, -1);
    }

    v27 = *(v0 + 72);
    v26 = *(v0 + 80);
    v28 = *(v0 + 64);
    v30 = *(v0 + 16);
    v29 = *(v0 + 24);

    (*(v27 + 8))(v26, v28);
    v20 = v29;
    v21 = v30;
  }

  else
  {
    v21 = *(v0 + 16);
    v20 = *(v0 + 24);
  }

  sub_1E5F90E10(v20, v21, type metadata accessor for RouteDestination);
  v31 = *(v0 + 256);
  v32 = *(v0 + 232);
  v34 = *(v0 + 200);
  v33 = *(v0 + 208);
  v35 = *(v0 + 176);
  v36 = *(v0 + 152);
  v37 = *(v0 + 128);
  v38 = *(v0 + 104);
  v39 = *(v0 + 80);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1E5F8D740()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 280) = v0;

  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_1E5F8E3F0;
  }

  else
  {
    v7 = sub_1E5F8D888;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1E5F8D888()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v7 = *(v0 + 160);
  sub_1E65D9F98();
  (*(v6 + 8))(v5, v7);
  sub_1E65DA288();
  sub_1E5F90D14(&qword_1ED071E28, MEMORY[0x1E69CCBE8]);
  LOBYTE(v5) = sub_1E65E6718();
  v8 = *(v4 + 8);
  v8(v2, v3);
  v8(v1, v3);
  if (v5)
  {
    v9 = *(v0 + 32) + *(v0 + 368);
    v10 = type metadata accessor for AppEnvironment();
    *(v0 + 288) = v10;
    v11 = v9 + *(v10 + 108);
    v12 = ServiceSubscriptionService.queryServiceSubscription.getter();
    *(v0 + 296) = v13;
    v28 = (v12 + *v12);
    v14 = v12[1];
    v15 = swift_task_alloc();
    *(v0 + 304) = v15;
    *v15 = v0;
    v15[1] = sub_1E5F8DB34;
    v16 = *(v0 + 152);

    return v28(v16);
  }

  else
  {
    sub_1E5F90E10(*(v0 + 24), *(v0 + 16), type metadata accessor for RouteDestination);
    v18 = *(v0 + 256);
    v19 = *(v0 + 232);
    v21 = *(v0 + 200);
    v20 = *(v0 + 208);
    v22 = *(v0 + 176);
    v23 = *(v0 + 152);
    v24 = *(v0 + 128);
    v25 = *(v0 + 104);
    v26 = *(v0 + 80);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_1E5F8DB34()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_1E5F8E4F4;
  }

  else
  {
    v6 = sub_1E5F8DC60;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E5F8DC60()
{
  v1 = *(v0 + 296);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 112);
  v7 = *(v0 + 120);

  sub_1E65D7698();
  v8 = sub_1E65D92A8();
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  if (v8)
  {
    v9 = *(v0 + 32) + *(v0 + 368) + *(*(v0 + 288) + 92);
    v10 = PrivacyPreferenceService.queryPersonalizationPrivacyPreference.getter();
    *(v0 + 320) = v11;
    v26 = (v10 + *v10);
    v12 = v10[1];
    v13 = swift_task_alloc();
    *(v0 + 328) = v13;
    *v13 = v0;
    v13[1] = sub_1E5F8DEAC;
    v14 = *(v0 + 104);

    return v26(v14);
  }

  else
  {
    sub_1E5F90E10(*(v0 + 24), *(v0 + 16), type metadata accessor for RouteDestination);
    v16 = *(v0 + 256);
    v17 = *(v0 + 232);
    v19 = *(v0 + 200);
    v18 = *(v0 + 208);
    v20 = *(v0 + 176);
    v21 = *(v0 + 152);
    v22 = *(v0 + 128);
    v23 = *(v0 + 104);
    v24 = *(v0 + 80);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1E5F8DEAC()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_1E5F8E604;
  }

  else
  {
    v6 = sub_1E5F8DFD8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E5F8DFD8()
{
  v1 = *(v0 + 320);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 56);

  LOBYTE(v5) = sub_1E5F8CB98();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    v6 = *(v0 + 56);
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    v9 = swift_task_alloc();
    *(v0 + 344) = v9;
    v10 = *(v0 + 40);
    *(v9 + 16) = v6;
    *(v9 + 24) = v8;
    *(v9 + 32) = v10;
    *(v9 + 48) = v7;
    v11 = sub_1E5F90D14(&qword_1ED071E20, type metadata accessor for PersonalizationPrivacyConsentDetour);
    v12 = *(MEMORY[0x1E69E88F0] + 4);
    v13 = swift_task_alloc();
    *(v0 + 352) = v13;
    v14 = type metadata accessor for RouteDestination();
    *v13 = v0;
    v13[1] = sub_1E5F8E228;
    v15 = *(v0 + 56);
    v16 = *(v0 + 16);

    return MEMORY[0x1EEE6DE18](v16, &unk_1E65E9FF8, v9, sub_1E5F90D0C, v15, v6, v11, v14);
  }

  else
  {
    sub_1E5F90E10(*(v0 + 24), *(v0 + 16), type metadata accessor for RouteDestination);
    v17 = *(v0 + 256);
    v18 = *(v0 + 232);
    v20 = *(v0 + 200);
    v19 = *(v0 + 208);
    v21 = *(v0 + 176);
    v22 = *(v0 + 152);
    v23 = *(v0 + 128);
    v24 = *(v0 + 104);
    v25 = *(v0 + 80);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_1E5F8E228()
{
  v2 = *(*v1 + 352);
  v3 = *v1;
  v3[45] = v0;

  if (v0)
  {
    v4 = v3[7];

    return MEMORY[0x1EEE6DFA0](sub_1E5F8E714, v4, 0);
  }

  else
  {
    v5 = v3[43];

    v6 = v3[32];
    v7 = v3[29];
    v9 = v3[25];
    v8 = v3[26];
    v10 = v3[22];
    v11 = v3[19];
    v12 = v3[16];
    v13 = v3[13];
    v14 = v3[10];

    v15 = v3[1];

    return v15();
  }
}

uint64_t sub_1E5F8E3F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_1E5F90E10(v2, v1, type metadata accessor for RouteDestination);
  v3 = *(v0 + 256);
  v4 = *(v0 + 232);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 176);
  v8 = *(v0 + 152);
  v9 = *(v0 + 128);
  v10 = *(v0 + 104);
  v11 = *(v0 + 80);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1E5F8E4F4()
{
  v1 = v0[39];
  v2 = v0[37];
  v4 = v0[2];
  v3 = v0[3];

  sub_1E5F90E10(v3, v4, type metadata accessor for RouteDestination);
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[22];
  v10 = v0[19];
  v11 = v0[16];
  v12 = v0[13];
  v13 = v0[10];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E5F8E604()
{
  v1 = v0[42];
  v2 = v0[40];
  v4 = v0[2];
  v3 = v0[3];

  sub_1E5F90E10(v3, v4, type metadata accessor for RouteDestination);
  v5 = v0[32];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[22];
  v10 = v0[19];
  v11 = v0[16];
  v12 = v0[13];
  v13 = v0[10];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E5F8E714()
{
  v1 = v0[43];
  v2 = v0[32];
  v3 = v0[29];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[22];
  v7 = v0[19];
  v8 = v0[16];
  v9 = v0[13];
  v10 = v0[10];

  v11 = v0[1];
  v12 = v0[45];

  return v11();
}

uint64_t sub_1E5F8E800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5F8E824, a2, 0);
}

uint64_t sub_1E5F8E824()
{
  v1 = *(v0 + 56);
  v2 = sub_1E5F90D14(&qword_1ED071E20, type metadata accessor for PersonalizationPrivacyConsentDetour);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v10 = *(v0 + 24);
  v4 = *(v0 + 40);
  *(v3 + 16) = v10;
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  v7 = type metadata accessor for RouteDestination();
  *v6 = v0;
  v6[1] = sub_1E5F8E974;
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v8, v10, v2, 0xD000000000000024, 0x80000001E66103D0, sub_1E5F90F3C, v3, v7);
}

uint64_t sub_1E5F8E974()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x1EEE6DFA0](sub_1E5F8EAB0, v4, 0);
  }

  else
  {
    v5 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1E5F8EAB0()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1E5F8EB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a6;
  v39 = a5;
  v40 = a4;
  v41 = a1;
  v8 = type metadata accessor for AppComposer();
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v36 - v12;
  v14 = type metadata accessor for PersonalizationPrivacyConsentDetour.State(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - v19;
  v21 = OBJC_IVAR____TtC10Blackbeard35PersonalizationPrivacyConsentDetour_state;
  swift_beginAccess();
  sub_1E5F90E10(a2 + v21, v20, type metadata accessor for PersonalizationPrivacyConsentDetour.State);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v23 = *(v22 - 8);
  v24 = (*(v23 + 48))(v20, 1, v22);
  sub_1E5F90EDC(v20, type metadata accessor for PersonalizationPrivacyConsentDetour.State);
  if (v24 == 1)
  {
    v25 = &v18[*(v22 + 48)];
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    (*(*(v26 - 8) + 16))(v18, v41, v26);
    sub_1E5F90E10(a3, v25, type metadata accessor for RouteResource);
    v27 = type metadata accessor for RouteDestination();
    sub_1E5F90E10(a3 + *(v27 + 20), v25 + *(v27 + 20), type metadata accessor for RouteSource);
    v28 = *(a3 + *(v27 + 24));

    *(v25 + *(v27 + 24)) = sub_1E602A670(&unk_1F5FA7EB8, v28);
    (*(v23 + 56))(v18, 0, 1, v22);
    swift_beginAccess();
    sub_1E5F90E78(v18, a2 + v21);
    swift_endAccess();
    v29 = sub_1E65E60A8();
    (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
    v30 = v38;
    sub_1E5F90E10(v36, v38, type metadata accessor for AppComposer);
    v31 = sub_1E5F90D14(&qword_1ED071E20, type metadata accessor for PersonalizationPrivacyConsentDetour);
    v32 = (*(v37 + 80) + 56) & ~*(v37 + 80);
    v33 = swift_allocObject();
    v33[2] = a2;
    v33[3] = v31;
    v34 = v39;
    v33[4] = v40;
    v33[5] = v34;
    v33[6] = a2;
    sub_1E5F90FA0(v30, v33 + v32, type metadata accessor for AppComposer);
    swift_retain_n();
    swift_unknownObjectRetain();
    sub_1E64B80F8(0, 0, v13, &unk_1E65EA020, v33);
  }

  else
  {
    sub_1E5F90F4C();
    v42 = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    return sub_1E65E5FE8();
  }
}

uint64_t sub_1E5F8EFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v9 = *(type metadata accessor for AppComposer() - 8);
  v7[6] = v9;
  v7[7] = *(v9 + 64);
  v7[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5F8F0AC, a6, 0);
}

uint64_t sub_1E5F8F0AC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v17 = v0[3];
  v6 = v0[2];
  ObjectType = swift_getObjectType();
  sub_1E5F90E10(v3, v1, type metadata accessor for AppComposer);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v0[9] = v9;
  *(v9 + 16) = v5;
  sub_1E5F90FA0(v1, v9 + v8, type metadata accessor for AppComposer);
  v10 = *(v17 + 24);

  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1E5F8F278;
  v14 = v0[2];
  v13 = v0[3];

  return v16(sub_1E5F91114, v9, ObjectType, v13);
}

uint64_t sub_1E5F8F278()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

void sub_1E5F8F3A4(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v5 = type metadata accessor for AppComposer();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = *(a2 + OBJC_IVAR____TtC10Blackbeard35PersonalizationPrivacyConsentDetour_dependencies);

  sub_1E65DA978();
  v10 = objc_allocWithZone(type metadata accessor for PersonalizationPrivacyConsentViewController());
  v11 = sub_1E645FCA4();
  v12 = &v11[OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_onDismiss];
  swift_beginAccess();
  v14 = *v12;
  v13 = v12[1];
  *v12 = sub_1E5F91188;
  v12[1] = a2;

  sub_1E5E29474(v14);
  sub_1E5F90E10(a3, &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_1E5F90FA0(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for AppComposer);
  *(v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v17 = &v11[OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_onConsent];
  v18 = *&v11[OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_onConsent];
  v19 = *&v11[OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_onConsent + 8];
  *v17 = sub_1E5F91190;
  v17[1] = v16;

  sub_1E5E29474(v18);
  v20 = *(a3 + *(v6 + 28) + 8);
  if (v20 < 2)
  {
    [v21 presentViewController:v11 animated:1 completion:0];
LABEL_5:

    return;
  }

  if (v20 == 3)
  {
    [v21 pushViewController:v11 animated:0];
    goto LABEL_5;
  }

  sub_1E65E69D8();
  __break(1u);
}

uint64_t sub_1E5F8F64C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_1E65E60A8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1E65E6058();

  v7 = sub_1E65E6048();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a1;
  sub_1E64B80F8(0, 0, v5, &unk_1E65EA058, v8);
}

uint64_t sub_1E5F8F770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1E65E6058();
  v4[4] = sub_1E65E6048();

  return MEMORY[0x1EEE6DFA0](sub_1E5F8F7F0, a4, 0);
}

uint64_t sub_1E5F8F7F0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_1E5F8C818(0);
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5F916A0, v5, v4);
}

uint64_t sub_1E5F8F884(int a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v23 = a1;
  v4 = type metadata accessor for AppComposer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22[-v10];
  v12 = sub_1E65E60A8();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 1, 1, v12);
  sub_1E5F90E10(a2, v7, type metadata accessor for AppComposer);
  sub_1E65E6058();
  v14 = sub_1E65E6048();
  v15 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  *(v16 + 32) = v23;
  sub_1E5F90FA0(v7, v16 + v15, type metadata accessor for AppComposer);
  sub_1E64B80F8(0, 0, v11, &unk_1E65EA030, v16);

  v13(v11, 1, 1, v12);
  v18 = v24;

  v19 = sub_1E65E6048();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v17;
  v20[4] = v18;
  sub_1E64B80F8(0, 0, v11, &unk_1E65EA040, v20);
}

uint64_t sub_1E5F8FB04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 25) = a4;
  v6 = sub_1E65E3B68();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  v9 = sub_1E65DA988();
  *(v5 + 88) = v9;
  v10 = *(v9 - 8);
  *(v5 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  sub_1E65E6058();
  *(v5 + 112) = sub_1E65E6048();
  v13 = sub_1E65E5FC8();
  *(v5 + 120) = v13;
  *(v5 + 128) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1E5F8FC64, v13, v12);
}

uint64_t sub_1E5F8FC64()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 48);
  *(v0 + 25);
  sub_1E65DA978();
  sub_1E65DA958();
  v3 = *(type metadata accessor for AppComposer() + 20);
  *(v0 + 28) = v3;
  v4 = v2 + v3;
  v5 = type metadata accessor for AppEnvironment();
  *(v0 + 136) = v5;
  v6 = v4 + *(v5 + 92);
  v7 = PrivacyPreferenceService.updatePersonalizationPrivacyPreference.getter();
  *(v0 + 144) = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 152) = v10;
  *v10 = v0;
  v10[1] = sub_1E5F8FDC4;
  v11 = *(v0 + 104);

  return v13(v11);
}

uint64_t sub_1E5F8FDC4()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_1E5F902C8;
  }

  else
  {
    v7 = sub_1E5F8FF00;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E5F8FF00()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 104);
  *(v0 + 16) = sub_1E65DA968();
  *(v0 + 24) = v3 & 1;
  *(v0 + 32) = 1;
  *(v0 + 40) = 1;
  sub_1E5F913D8();
  sub_1E5F9142C();
  if ((sub_1E65D7FD8() & 1) != 0 && (v4 = *(*(v0 + 48) + *(v0 + 28) + 8), v5 = sub_1E65DAE38(), v5 == sub_1E65DAE38()))
  {
    v6 = *(v0 + 48) + *(v0 + 28) + *(*(v0 + 136) + 100);
    v7 = RemoteBrowsingService.requestEnvironmentUpdate.getter();
    *(v0 + 168) = v8;
    v17 = (v7 + *v7);
    v9 = v7[1];
    v10 = swift_task_alloc();
    *(v0 + 176) = v10;
    *v10 = v0;
    v10[1] = sub_1E5F9010C;

    return v17();
  }

  else
  {
    v12 = *(v0 + 112);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v13 = *(v0 + 104);
    v14 = *(v0 + 72);
    v15 = *(v0 + 80);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1E5F9010C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = v2[15];
    v5 = v2[16];
    v6 = sub_1E5F905E0;
  }

  else
  {
    v7 = v2[21];

    v4 = v2[15];
    v5 = v2[16];
    v6 = sub_1E5F90228;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E5F90228()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];

  (*(v4 + 8))(v2, v3);
  v5 = v0[13];
  v6 = v0[9];
  v7 = v0[10];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E5F902C8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 80);

  sub_1E65DE348();
  v4 = v1;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6338();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 160);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "[PersonalizationPrivacyConsentDetour] Failed updating personalization privacy preference: %{public}@", v9, 0xCu);
    sub_1E5F91480(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
  v13 = *(v0 + 104);
  *(v0 + 16) = sub_1E65DA968();
  *(v0 + 24) = v14 & 1;
  *(v0 + 32) = 1;
  *(v0 + 40) = 1;
  sub_1E5F913D8();
  sub_1E5F9142C();
  if ((sub_1E65D7FD8() & 1) != 0 && (v15 = *(*(v0 + 48) + *(v0 + 28) + 8), v16 = sub_1E65DAE38(), v16 == sub_1E65DAE38()))
  {
    v17 = *(v0 + 48) + *(v0 + 28) + *(*(v0 + 136) + 100);
    v18 = RemoteBrowsingService.requestEnvironmentUpdate.getter();
    *(v0 + 168) = v19;
    v28 = (v18 + *v18);
    v20 = v18[1];
    v21 = swift_task_alloc();
    *(v0 + 176) = v21;
    *v21 = v0;
    v21[1] = sub_1E5F9010C;

    return v28();
  }

  else
  {
    v23 = *(v0 + 112);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v24 = *(v0 + 104);
    v25 = *(v0 + 72);
    v26 = *(v0 + 80);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_1E5F905E0()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[14];
  v4 = v0[9];

  sub_1E65DE348();
  v5 = v1;
  v6 = sub_1E65E3B48();
  v7 = sub_1E65E6338();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1E5DE9000, v6, v7, "[PersonalizationPrivacyConsentDetour] Failed requesting new browsing environment: %{public}@", v9, 0xCu);
    sub_1E5F91480(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  v13 = v0[23];
  v15 = v0[12];
  v14 = v0[13];
  v16 = v0[11];
  v18 = v0[8];
  v17 = v0[9];
  v19 = v0[7];

  (*(v18 + 8))(v17, v19);
  (*(v15 + 8))(v14, v16);
  v20 = v0[13];
  v21 = v0[9];
  v22 = v0[10];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1E5F907A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1E65E6058();
  v4[4] = sub_1E65E6048();

  return MEMORY[0x1EEE6DFA0](sub_1E5F90828, a4, 0);
}

uint64_t sub_1E5F90828()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_1E5F8C818(0);
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5F908BC, v5, v4);
}

uint64_t sub_1E5F908BC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5F9091C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  v6 = sub_1E65E60A8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  sub_1E64B80F8(0, 0, v5, &unk_1E65EA010, v7);
}

uint64_t sub_1E5F90A48()
{
  v1 = *(v0 + 16);
  sub_1E65E6018();
  sub_1E5F90D14(&qword_1ED071E30, MEMORY[0x1E69E8550]);
  *(v0 + 24) = swift_allocError();
  sub_1E65E5AE8();

  return MEMORY[0x1EEE6DFA0](sub_1E5F90B0C, v1, 0);
}

uint64_t sub_1E5F90B0C()
{
  v1 = *(v0 + 24);
  sub_1E5F8C818(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5F90B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1E5DFA78C;

  return sub_1E5F8CF64(a1, a2, a3, a4, a5);
}

uint64_t sub_1E5F90C44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E5F8E800(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E5F90D14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5F90D5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E5F90A28(a1, v4, v5, v6);
}

uint64_t sub_1E5F90E10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5F90E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizationPrivacyConsentDetour.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5F90EDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E5F90F4C()
{
  result = qword_1ED071E38;
  if (!qword_1ED071E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071E38);
  }

  return result;
}

uint64_t sub_1E5F90FA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5F91008(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5DFA78C;

  return sub_1E5F8EFE0(a1, v6, v7, v8, v9, v10, v1 + v5);
}

void sub_1E5F91114(void *a1)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1E5F8F3A4(a1, v4, v5);
}

uint64_t sub_1E5F91190(int a1)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E5F8F884(a1, v1 + v4, v5);
}

uint64_t sub_1E5F9122C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E5F8FB04(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1E5F91324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E5F907A8(a1, v4, v5, v6);
}

unint64_t sub_1E5F913D8()
{
  result = qword_1ED071E40;
  if (!qword_1ED071E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071E40);
  }

  return result;
}

unint64_t sub_1E5F9142C()
{
  result = qword_1ED071E48;
  if (!qword_1ED071E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071E48);
  }

  return result;
}

uint64_t sub_1E5F91480(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072130, &qword_1E65EA840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5F914E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E5F8F770(a1, v4, v5, v6);
}

uint64_t sub_1E5F9159C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E5F8C5CC(a1, v1);
}

unint64_t sub_1E5F91648()
{
  result = qword_1ED071E50;
  if (!qword_1ED071E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071E50);
  }

  return result;
}

uint64_t sub_1E5F916A4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E58, &qword_1E65EA150);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E60, &qword_1E65EA158);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = *(type metadata accessor for AppState() + 92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
  sub_1E65E4C98();
  sub_1E60EE7BC(v9);
  sub_1E5DFE50C(v5, &qword_1ED071E58, &qword_1E65EA150);
  v11 = type metadata accessor for BrowsingIdentity(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return sub_1E5F918A4(v9, a1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return sub_1E5DFE50C(v9, &qword_1ED071E60, &qword_1E65EA158);
  }

  return result;
}

uint64_t sub_1E5F918A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowsingIdentity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static TVAwardHeaderLayout.default(awardName:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DBB28();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  if (sub_1E65DB988() == a1 && v6 == a2)
  {
  }

  else
  {
    sub_1E65E6C18();
  }

  sub_1E65DAE38();
  sub_1E65DAE38();
  sub_1E65DBB08();
  return sub_1E65DBD58();
}

uint64_t sub_1E5F91AC0(uint64_t a1, uint64_t *a2, unsigned int *a3, char a4)
{
  v7 = sub_1E65DDE68();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  (*(v8 + 104))(v11, *a3, v7);
  v14[15] = a4;
  return sub_1E65DDC88();
}

uint64_t sub_1E5F91BF8()
{
  sub_1E5F94C90(v0 + OBJC_IVAR____TtC10Blackbeard34AudioLanguageEngagementSheetDetour_state, type metadata accessor for AudioLanguageEngagementSheetDetour.State);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5F91C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5F91CA0, a2, 0);
}

uint64_t sub_1E5F91CA0()
{
  v1 = *(v0 + 56);
  v2 = sub_1E5F94D54(&qword_1EE2D7BC0, type metadata accessor for AudioLanguageEngagementSheetDetour);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v10 = *(v0 + 24);
  v4 = *(v0 + 40);
  *(v3 + 16) = v10;
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  v7 = type metadata accessor for RouteDestination();
  *v6 = v0;
  v6[1] = sub_1E5F8E974;
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v8, v10, v2, 0xD000000000000024, 0x80000001E66103D0, sub_1E5F94D9C, v3, v7);
}

uint64_t sub_1E5F91DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a6;
  v50 = a5;
  v54 = a1;
  v55 = a4;
  v8 = type metadata accessor for RouteDestination();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v53 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppComposer();
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v52 = &v46 - v14;
  v15 = type metadata accessor for AudioLanguageEngagementSheetDetour.State(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v46 - v20;
  v22 = OBJC_IVAR____TtC10Blackbeard34AudioLanguageEngagementSheetDetour_state;
  swift_beginAccess();
  sub_1E5E1D27C(a2 + v22, v21, type metadata accessor for AudioLanguageEngagementSheetDetour.State);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EE0, &qword_1E65EA1E0);
  v24 = *(v23 - 8);
  v25 = (*(v24 + 48))(v21, 1, v23);
  sub_1E5F94C90(v21, type metadata accessor for AudioLanguageEngagementSheetDetour.State);
  if (v25 == 1)
  {
    v26 = &v19[*(v23 + 48)];
    v27 = a3;
    v28 = *(v23 + 64);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    (*(*(v29 - 8) + 16))(v19, v54, v29);
    v46 = v27;
    v30 = v55;
    *v26 = v27;
    *(v26 + 1) = v30;
    v54 = v9;
    v31 = v50;
    sub_1E5E1D27C(v50, &v19[v28], type metadata accessor for RouteDestination);
    (*(v24 + 56))(v19, 0, 1, v23);
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_1E5F94CF0(v19, a2 + v22);
    swift_endAccess();
    v32 = sub_1E65E60A8();
    v33 = v52;
    (*(*(v32 - 8) + 56))(v52, 1, 1, v32);
    v34 = v49;
    sub_1E5E1D27C(v48, v49, type metadata accessor for AppComposer);
    v35 = v53;
    sub_1E5E1D27C(v31, v53, type metadata accessor for RouteDestination);
    v36 = sub_1E5F94D54(&qword_1EE2D7BC0, type metadata accessor for AudioLanguageEngagementSheetDetour);
    v37 = (*(v47 + 80) + 40) & ~*(v47 + 80);
    v38 = (v11 + *(v51 + 80) + v37) & ~*(v51 + 80);
    v39 = (v54 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    v40[2] = a2;
    v40[3] = v36;
    v40[4] = a2;
    sub_1E5E1DF10(v34, v40 + v37, type metadata accessor for AppComposer);
    sub_1E5E1DF10(v35, v40 + v38, type metadata accessor for RouteDestination);
    v41 = (v40 + v39);
    v42 = v55;
    *v41 = v46;
    v41[1] = v42;
    swift_retain_n();
    swift_unknownObjectRetain();
    sub_1E64B80F8(0, 0, v33, &unk_1E65EA2E8, v40);
  }

  else
  {
    sub_1E5F94DAC();
    v44 = swift_allocError();
    *v45 = 3;
    v56 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    return sub_1E65E5FE8();
  }
}

uint64_t sub_1E5F92370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v10 = *(type metadata accessor for RouteDestination() - 8);
  v8[7] = v10;
  v8[8] = *(v10 + 64);
  v8[9] = swift_task_alloc();
  v11 = *(type metadata accessor for AppComposer() - 8);
  v8[10] = v11;
  v8[11] = *(v11 + 64);
  v8[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5F924A0, a4, 0);
}

uint64_t sub_1E5F924A0()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = *(v0 + 16);
  sub_1E65E16D8();
  v11 = v10;
  sub_1E5E1D27C(v8, v1, type metadata accessor for AppComposer);
  sub_1E5E1D27C(v7, v3, type metadata accessor for RouteDestination);
  v12 = *(v4 + 80);
  *(v0 + 152) = v12;
  v13 = (v12 + 24) & ~v12;
  v14 = (v13 + v2 + *(v6 + 80)) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v0 + 104) = v15;
  *(v15 + 16) = v9;
  sub_1E5E1DF10(v1, v15 + v13, type metadata accessor for AppComposer);
  sub_1E5E1DF10(v3, v15 + v14, type metadata accessor for RouteDestination);
  v16 = *(MEMORY[0x1E69CAAC0] + 4);

  v17 = swift_task_alloc();
  *(v0 + 112) = v17;
  *v17 = v0;
  v17[1] = sub_1E5F92668;
  v18.n128_u64[0] = v11;

  return MEMORY[0x1EEE343F0](v18);
}

uint64_t sub_1E5F92668()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_1E5F92AA8;
  }

  else
  {
    v6 = *(v2 + 104);
    v7 = *(v2 + 16);

    v5 = sub_1E5F92790;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1E5F92790()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 40);
  v16 = *(v0 + 48);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = (*(v0 + 152) + 24) & ~*(v0 + 152);
  ObjectType = swift_getObjectType();
  sub_1E5E1D27C(v4, v1, type metadata accessor for AppComposer);
  v8 = swift_allocObject();
  *(v0 + 128) = v8;
  *(v8 + 16) = v5;
  sub_1E5E1DF10(v1, v8 + v6, type metadata accessor for AppComposer);
  v9 = *(v16 + 24);

  v15 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_1E5F92958;
  v13 = *(v0 + 40);
  v12 = *(v0 + 48);

  return v15(sub_1E5F9663C, v8, ObjectType, v12);
}

uint64_t sub_1E5F92958()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v8 = *v0;

  v4 = *(v1 + 96);
  v5 = *(v1 + 72);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1E5F92AA8()
{
  v1 = v0[13];

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6338();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "[Audio Language Engagement Sheet] Skipping audio language engagement sheet detour activation: %{public}@", v8, 0xCu);
    sub_1E5DFE50C(v9, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  v12 = swift_task_alloc();
  v0[18] = v12;
  *v12 = v0;
  v12[1] = sub_1E5F92C78;
  v14 = v0[2];
  v13 = v0[3];

  return sub_1E5F939F0(0, v13);
}

uint64_t sub_1E5F92C78()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5F92D88, v2, 0);
}

uint64_t sub_1E5F92D88()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E5F92DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1E5DFA78C;

  return sub_1E5F92EA8(a3, a4);
}

uint64_t sub_1E5F92EA8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1E65D76A8();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1E65D92D8();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5F93030, v2, 0);
}

uint64_t sub_1E5F93030()
{
  if (qword_1EE2D7CA0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = __swift_project_value_buffer(v3, qword_1EE2D7CA8);
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  sub_1E65DDC48();
  v6 = *(v2 + 8);
  v6(v1, v3);
  if (*(v0 + 156) != 1)
  {
    sub_1E5F94DAC();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
    v19 = *(v0 + 104);
    v20 = *(v0 + 80);
    v21 = *(v0 + 56);

    v17 = *(v0 + 8);
LABEL_13:

    return v17();
  }

  sub_1E5F988FC(*(v0 + 24));
  if (qword_1EE2D7C78 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 104);
  v8 = *(v0 + 88);
  v9 = __swift_project_value_buffer(v8, qword_1EE2D7C80);
  v5(v7, v9, v8);
  sub_1E65DDC48();
  v6(v7, v8);
  if (*(v0 + 157))
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v10 = sub_1E65E3B68();
    __swift_project_value_buffer(v10, qword_1EE2EA2A0);
    v11 = sub_1E65E3B48();
    v12 = sub_1E65E6338();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1E5DE9000, v11, v12, "[Audio Language Engagement Sheet] forceAudioLanguageEngagementSheetPresentation enabled", v13, 2u);
      MEMORY[0x1E694F1C0](v13, -1, -1);
    }

    v14 = *(v0 + 104);
    v15 = *(v0 + 80);
    v16 = *(v0 + 56);

    v17 = *(v0 + 8);
    goto LABEL_13;
  }

  v23 = *(v0 + 16);
  v24 = *(type metadata accessor for AppComposer() + 20);
  *(v0 + 152) = v24;
  v25 = v23 + v24 + *(type metadata accessor for AppEnvironment() + 108);
  v26 = ServiceSubscriptionService.fetchServiceSubscription.getter();
  *(v0 + 112) = v27;
  v31 = (v26 + *v26);
  v28 = v26[1];
  v29 = swift_task_alloc();
  *(v0 + 120) = v29;
  *v29 = v0;
  v29[1] = sub_1E5F93410;
  v30 = *(v0 + 80);

  return (v31)(v30, 0);
}

uint64_t sub_1E5F93410()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1E5F938C8;
  }

  else
  {
    v6 = sub_1E5F9353C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E5F9353C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 40);

  sub_1E65D7698();
  LOBYTE(v2) = sub_1E65D92A8();
  (*(v4 + 8))(v3, v5);
  if (v2)
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 16);
    v8 = swift_task_alloc();
    *(v0 + 136) = v8;
    *v8 = v0;
    v8[1] = sub_1E5F936DC;
    v9 = *(v0 + 32);

    return sub_1E5F953C8(v7 + v6);
  }

  else
  {
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v13 = *(v0 + 64);
    sub_1E5F94DAC();
    swift_allocError();
    *v14 = 6;
    swift_willThrow();
    (*(v12 + 8))(v11, v13);
    v15 = *(v0 + 104);
    v16 = *(v0 + 80);
    v17 = *(v0 + 56);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1E5F936DC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1E5F93954;
  }

  else
  {
    v6 = sub_1E5F93808;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E5F93808()
{
  v1 = *(v0 + 144);
  sub_1E5F98ADC(*(v0 + 16) + *(v0 + 152), **(v0 + 16));
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1E5F938C8()
{
  v1 = v0[14];

  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E5F93954()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5F939F0(char a1, uint64_t a2)
{
  *(v3 + 64) = a2;
  *(v3 + 72) = v2;
  *(v3 + 184) = a1;
  v4 = *(type metadata accessor for AppComposer() - 8);
  *(v3 + 80) = v4;
  *(v3 + 88) = *(v4 + 64);
  *(v3 + 96) = swift_task_alloc();
  v5 = *(*(type metadata accessor for AudioLanguageEngagementSheetDetour.State(0) - 8) + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v6 = *(*(type metadata accessor for RouteDestination() - 8) + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  *(v3 + 136) = v7;
  v8 = *(v7 - 8);
  *(v3 + 144) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5F93B90, v2, 0);
}

uint64_t sub_1E5F93B90()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  v3 = OBJC_IVAR____TtC10Blackbeard34AudioLanguageEngagementSheetDetour_state;
  swift_beginAccess();
  sub_1E5E1D27C(v2 + v3, v1, type metadata accessor for AudioLanguageEngagementSheetDetour.State);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EE0, &qword_1E65EA1E0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    sub_1E5F94C90(*(v0 + 112), type metadata accessor for AudioLanguageEngagementSheetDetour.State);
LABEL_8:
    v31 = *(v0 + 152);
    v32 = *(v0 + 120);
    v33 = *(v0 + 128);
    v35 = *(v0 + 104);
    v34 = *(v0 + 112);
    v36 = *(v0 + 96);

    v37 = *(v0 + 8);

    return v37();
  }

  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v11 = *(v0 + 104);
  v10 = *(v0 + 112);
  v12 = *(v0 + 184);
  v13 = (v10 + *(v4 + 48));
  *(v0 + 160) = *v13;
  v39 = v13[1];
  v14 = *(v4 + 64);
  (*(v7 + 32))(v6, v10, v8);
  sub_1E5E1DF10(v10 + v14, v9, type metadata accessor for RouteDestination);
  (*(v5 + 56))(v11, 1, 1, v4);
  swift_beginAccess();
  sub_1E5F94CF0(v11, v2 + v3);
  swift_endAccess();
  if (v12 != 1)
  {
    v27 = *(v0 + 144);
    v28 = *(v0 + 152);
    v30 = *(v0 + 128);
    v29 = *(v0 + 136);
    sub_1E5E1D27C(v30, *(v0 + 120), type metadata accessor for RouteDestination);
    sub_1E65E5FF8();
    swift_unknownObjectRelease();
    sub_1E5F94C90(v30, type metadata accessor for RouteDestination);
    (*(v27 + 8))(v28, v29);
    goto LABEL_8;
  }

  v15 = *(v0 + 88);
  v16 = *(v0 + 96);
  v18 = *(v0 + 72);
  v17 = *(v0 + 80);
  v19 = *(v0 + 64);
  ObjectType = swift_getObjectType();
  sub_1E5E1D27C(v19, v16, type metadata accessor for AppComposer);
  v21 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v0 + 168) = v22;
  *(v22 + 16) = v18;
  sub_1E5E1DF10(v16, v22 + v21, type metadata accessor for AppComposer);
  v23 = *(v39 + 24);

  v38 = (v23 + *v23);
  v24 = v23[1];
  v25 = swift_task_alloc();
  *(v0 + 176) = v25;
  *v25 = v0;
  v25[1] = sub_1E5F93FD8;

  return v38(sub_1E5F9AD98, v22, ObjectType, v39);
}

uint64_t sub_1E5F93FD8()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5F94104, v3, 0);
}

uint64_t sub_1E5F94104()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  sub_1E5E1D27C(v5, v0[15], type metadata accessor for RouteDestination);
  sub_1E65E5FF8();
  swift_unknownObjectRelease();
  sub_1E5F94C90(v5, type metadata accessor for RouteDestination);
  (*(v4 + 8))(v2, v3);
  v6 = v0[19];
  v7 = v0[15];
  v8 = v0[16];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E5F9421C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppComposer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_1E65E60A8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1E5E1D27C(a2, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  sub_1E5E1DF10(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for AppComposer);

  sub_1E64B80F8(0, 0, v10, &unk_1E65EA260, v13);
}

uint64_t sub_1E5F943F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v6 = *(*(type metadata accessor for AudioLanguageEngagementSheetDetour.State(0) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  v4[12] = v7;
  v8 = *(v7 - 8);
  v4[13] = v8;
  v9 = *(v8 + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5F944F8, a4, 0);
}

uint64_t sub_1E5F944F8()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = OBJC_IVAR____TtC10Blackbeard34AudioLanguageEngagementSheetDetour_state;
  swift_beginAccess();
  sub_1E5E1D27C(v2 + v3, v1, type metadata accessor for AudioLanguageEngagementSheetDetour.State);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EE0, &qword_1E65EA1E0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    sub_1E5F94C90(v0[11], type metadata accessor for AudioLanguageEngagementSheetDetour.State);
  }

  else
  {
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[11];
    v9 = v0[12];
    v18 = v0[10];
    v10 = *(v8 + *(v4 + 48));
    swift_unknownObjectRelease();
    v11 = *(v4 + 64);
    (*(v7 + 32))(v6, v8, v9);
    sub_1E5F94C90(v8 + v11, type metadata accessor for RouteDestination);
    (*(v5 + 56))(v18, 1, 1, v4);
    swift_beginAccess();
    sub_1E5F94CF0(v18, v2 + v3);
    swift_endAccess();
    sub_1E65E6018();
    sub_1E5F94D54(&qword_1ED071E30, MEMORY[0x1E69E8550]);
    v12 = swift_allocError();
    sub_1E65E5AE8();
    v0[8] = v12;
    sub_1E65E5FE8();
    (*(v7 + 8))(v6, v9);
  }

  v13 = v0[14];
  v14 = v0[10];
  v15 = v0[11];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1E5F9478C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v6[6] = a5;
  v6[7] = v7;
  return MEMORY[0x1EEE6DFA0](sub_1E5F947B4, v7, 0);
}

uint64_t sub_1E5F947B4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v2;
  *(v4 + 48) = v3;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  v7 = sub_1E5F94D54(&qword_1EE2D7BC0, type metadata accessor for AudioLanguageEngagementSheetDetour);
  v8 = *(MEMORY[0x1E69E88F0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  v10 = type metadata accessor for RouteDestination();
  *v9 = v0;
  v9[1] = sub_1E5F94914;
  v11 = *(v0 + 16);

  return MEMORY[0x1EEE6DE18](v11, &unk_1E65EA248, v4, sub_1E5F94B90, v6, v1, v7, v10);
}

uint64_t sub_1E5F94914()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[7];

    return MEMORY[0x1EEE6DFA0](sub_1E5F94A5C, v4, 0);
  }

  else
  {
    v6 = v3[8];
    v5 = v3[9];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1E5F94A5C()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_1E5F94AC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E5F91C7C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E5F94B98(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E5F943F0(a1, v6, v7, v8);
}

uint64_t sub_1E5F94C90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5F94CF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioLanguageEngagementSheetDetour.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5F94D54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E5F94DAC()
{
  result = qword_1ED071EF0;
  if (!qword_1ED071EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071EF0);
  }

  return result;
}

void sub_1E5F94E00(id a1, char a2)
{
  if ((a2 & 0xC0) == 0x80)
  {
  }
}

uint64_t sub_1E5F94E20(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for RouteDestination() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1E5DFE6BC;

  return sub_1E5F92370(a1, v10, v11, v12, v1 + v6, v1 + v9, v14, v15);
}

uint64_t sub_1E5F94FC0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for RouteDestination() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1E5DFE6BC;

  return sub_1E5F92DFC(a1, v10, v1 + v6, v1 + v9);
}

void sub_1E5F9510C(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v5 = sub_1E65E3B68();
  __swift_project_value_buffer(v5, qword_1EE2EA2A0);
  v6 = sub_1E65E3B48();
  v7 = sub_1E65E6338();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1E5DE9000, v6, v7, "[Audio Language Engagement Sheet] Presenting audio language engagement sheet", v8, 2u);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  v10 = sub_1E5F99494(a3);
  v9 = *(a3 + *(type metadata accessor for AppComposer() + 20) + 8);
  if (v9 >= 2)
  {
    if (v9 != 3)
    {
      sub_1E65E69D8();
      __break(1u);
      return;
    }

    [a1 pushViewController:v10 animated:0];
  }

  else
  {
    [a1 presentViewController:v10 animated:1 completion:0];
  }
}

void sub_1E5F952CC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + *(type metadata accessor for AppComposer() + 20) + 8);
  if (v4 >= 2)
  {
    if (v4 == 3)
    {
      v5 = [a1 popViewControllerAnimated_];
    }

    else
    {
      sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {

    [a1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1E5F953C8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1E65DABE8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5F95488, v1, 0);
}

uint64_t sub_1E5F95488()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for AppEnvironment() + 60);
  v3 = EngagementService.queryAudioLanguageEngagementSheetAcknowledgment.getter();
  v0[7] = v4;
  v9 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1E5F95594;
  v7 = v0[6];

  return v9(v7);
}

uint64_t sub_1E5F95594()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 72) = v0;

  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_1E5F957C8;
  }

  else
  {
    v7 = sub_1E5F956DC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1E5F956DC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_1E65DABB8();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  if ((v6 & 1) != 0 && (v4 & 1) == 0)
  {
    v10 = v0[6];

    v9 = v0[1];
  }

  else
  {
    sub_1E5F94DAC();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    v8 = v0[6];

    v9 = v0[1];
  }

  return v9();
}

uint64_t sub_1E5F957C8()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5F9582C(uint64_t a1, uint64_t a2)
{
  v4 = 0x746C7561666564;
  v5 = type metadata accessor for RouteSource(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v28 - v10;
  sub_1E5E1D27C(a1, v28 - v10, type metadata accessor for RouteSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v13 = 0x55676E6972616873;
        sub_1E5F94C90(v11, type metadata accessor for RouteSource);
        v14 = 0xEA00000000004C52;
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v13 = 0x4C52556E65706FLL;
        sub_1E5F94C90(v11, type metadata accessor for RouteSource);
        v14 = 0xE700000000000000;
      }

      else
      {
        v13 = 0x616C506572616873;
        v16 = sub_1E65D8D48();
        (*(*(v16 - 8) + 8))(v11, v16);
        v14 = 0xE900000000000079;
      }

      goto LABEL_25;
    }

    if (!EnumCaseMultiPayload)
    {
      v13 = 0x636E75614C707061;
      sub_1E5F94C90(v11, type metadata accessor for RouteSource);
      goto LABEL_12;
    }

    v13 = 0x6974634172657375;
    sub_1E5F94C90(v11, type metadata accessor for RouteSource);
    v15 = 2037672310;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
      if (EnumCaseMultiPayload != 8)
      {
        v13 = 0x746977536B736174;
        v14 = 0xEA00000000006863;
        goto LABEL_25;
      }

      v13 = 0x6374697753626174;
LABEL_12:
      v14 = 0xE900000000000068;
      goto LABEL_25;
    }

    v13 = 0x7069726373627573;
    v15 = 1852795252;
LABEL_24:
    v14 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v13 = 0x746C7561666564;
  }

  else
  {
    v13 = 1769105779;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v14 = 0xE700000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

LABEL_25:
  v17 = type metadata accessor for RouteDestination();
  sub_1E5E1D27C(a2 + *(v17 + 20), v9, type metadata accessor for RouteSource);
  v18 = swift_getEnumCaseMultiPayload();
  if (v18 <= 4)
  {
    if (v18 > 1)
    {
      if (v18 != 2)
      {
        if (v18 != 3)
        {
          v25 = sub_1E65D8D48();
          (*(*(v25 - 8) + 8))(v9, v25);
          v20 = 0xE900000000000079;
          if (v13 != 0x616C506572616873)
          {
            goto LABEL_54;
          }

          goto LABEL_52;
        }

        v4 = 0x4C52556E65706FLL;
        sub_1E5F94C90(v9, type metadata accessor for RouteSource);
        goto LABEL_39;
      }

      v21 = 0x55676E6972616873;
      sub_1E5F94C90(v9, type metadata accessor for RouteSource);
      v22 = 19538;
LABEL_46:
      v20 = v22 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      if (v13 != v21)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    if (!v18)
    {
      v19 = 0x636E75614C707061;
      sub_1E5F94C90(v9, type metadata accessor for RouteSource);
LABEL_36:
      v20 = 0xE900000000000068;
      if (v13 != v19)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v23 = 0x6974634172657375;
    sub_1E5F94C90(v9, type metadata accessor for RouteSource);
    v24 = 2037672310;
    goto LABEL_49;
  }

  if (v18 > 6)
  {
    if (v18 != 7)
    {
      if (v18 != 8)
      {
        v21 = 0x746977536B736174;
        v22 = 26723;
        goto LABEL_46;
      }

      v19 = 0x6374697753626174;
      goto LABEL_36;
    }

    v23 = 0x7069726373627573;
    v24 = 1852795252;
LABEL_49:
    v20 = v24 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v13 != v23)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (v18 == 5)
  {
LABEL_39:
    v20 = 0xE700000000000000;
    if (v13 != v4)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  v20 = 0xE400000000000000;
  if (v13 != 1769105779)
  {
LABEL_54:
    v26 = sub_1E65E6C18();
    goto LABEL_55;
  }

LABEL_52:
  if (v14 != v20)
  {
    goto LABEL_54;
  }

  v26 = 1;
LABEL_55:

  return v26 & 1;
}

uint64_t sub_1E5F95D7C(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v20 = a1;
  v6 = type metadata accessor for RouteSource(0);
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  while (v12)
  {
LABEL_9:
    sub_1E5E1D27C(*(a3 + 48) + *(v19 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v9, type metadata accessor for RouteSource);
    v17 = v20(v9);
    result = sub_1E5F94C90(v9, type metadata accessor for RouteSource);
    if (v3)
    {
      goto LABEL_13;
    }

    v12 &= v12 - 1;
    if (v17)
    {
      a2 = 1;
LABEL_13:

      return a2 & 1;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      a2 = 0;
      goto LABEL_13;
    }

    v12 = *(a3 + 56 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5F95F4C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1E5F95FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1E65E6058();
  v5[3] = sub_1E65E6048();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1E5F960B8;

  return sub_1E5F939F0(1, a5);
}

uint64_t sub_1E5F960B8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5F961F4, v5, v4);
}

uint64_t sub_1E5F961F4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5F96254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AppComposer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_1E65E60A8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_1E5E1D27C(a2, &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  sub_1E65E6058();

  v15 = sub_1E65E6048();
  v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  v17[2] = v15;
  v17[3] = v18;
  v17[4] = a1;
  sub_1E5E1DF10(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for AppComposer);
  sub_1E64B80F8(0, 0, v13, a4, v17);
}

uint64_t sub_1E5F96440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1E65E6058();
  v5[3] = sub_1E65E6048();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1E5F96500;

  return sub_1E5F939F0(1, a5);
}

uint64_t sub_1E5F96500()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5F9C430, v5, v4);
}

uint64_t sub_1E5F96654(uint64_t a1)
{
  v225 = sub_1E65D8D48();
  v235 = *(v225 - 8);
  v2 = *(v235 + 64);
  MEMORY[0x1EEE9AC00](v225);
  v212 = &v194[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1E65D74E8();
  v233 = *(v4 - 8);
  v234 = v4;
  v5 = *(v233 + 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v211 = &v194[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v204 = &v194[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v202 = &v194[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v194[-v14];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v194[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v197 = &v194[-v19];
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F98, &qword_1E65EA418);
  v20 = *(*(v214 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v214);
  v207 = &v194[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x1EEE9AC00](v21);
  v206 = &v194[-v24];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v199 = &v194[-v26];
  MEMORY[0x1EEE9AC00](v25);
  v198 = &v194[-v27];
  v219 = type metadata accessor for URLContext(0);
  v28 = *(*(v219 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v219);
  v227 = &v194[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v194[-v32];
  v34 = MEMORY[0x1EEE9AC00](v31);
  v203 = &v194[-v35];
  MEMORY[0x1EEE9AC00](v34);
  v200 = &v194[-v36];
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071FA0, &qword_1E65EA420);
  v37 = *(*(v209 - 8) + 64);
  MEMORY[0x1EEE9AC00](v209);
  v39 = &v194[-v38];
  v218 = type metadata accessor for AppLaunchScope(0);
  v40 = *(*(v218 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v218);
  v208 = &v194[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x1EEE9AC00](v41);
  v205 = &v194[-v44];
  MEMORY[0x1EEE9AC00](v43);
  v217 = &v194[-v45];
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071FA8, &qword_1E65EA428);
  v46 = *(*(v232 - 8) + 64);
  MEMORY[0x1EEE9AC00](v232);
  v48 = &v194[-v47];
  v240 = type metadata accessor for RouteSource(0);
  v49 = *(v240 - 8);
  v50 = *(v49 + 64);
  v51 = MEMORY[0x1EEE9AC00](v240);
  v52 = MEMORY[0x1EEE9AC00](v51);
  v53 = MEMORY[0x1EEE9AC00](v52);
  v231 = &v194[-v54];
  v55 = MEMORY[0x1EEE9AC00](v53);
  v56 = MEMORY[0x1EEE9AC00](v55);
  v58 = &v194[-v57];
  v59 = MEMORY[0x1EEE9AC00](v56);
  v61 = &v194[-v60];
  MEMORY[0x1EEE9AC00](v59);
  v238 = &v194[-v65];
  v66 = *(a1 + 16);
  if (v66)
  {
    v230 = v63;
    v224 = v62;
    v196 = v18;
    v201 = v15;
    v223 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071FB0, &unk_1E65EA430);
    v67 = sub_1E65E6888();
    v68 = 0;
    v239 = v67;
    v236 = v67 + 56;
    v221 = a1 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v237 = *(v49 + 72);
    v222 = (v235 + 8);
    v210 = (v235 + 32);
    v228 = (v233 + 8);
    v215 = (v233 + 32);
    v213 = (v233 + 48);
    v226 = v33;
    v216 = v39;
    v69 = v232;
    v233 = v58;
    v220 = v66;
LABEL_6:
    v229 = v68;
    sub_1E5E1D27C(v221 + v237 * v68, v238, type metadata accessor for RouteSource);
    v71 = v239;
    v72 = v239[5];
    sub_1E65E6D28();
    RouteSource.hash(into:)(v241);
    v73 = sub_1E65E6D78();
    v235 = ~(-1 << *(v71 + 32));
    v74 = v73 & v235;
    v75 = (v73 & v235) >> 6;
    v76 = *(v236 + 8 * v75);
    v77 = 1 << (v73 & v235);
    if ((v77 & v76) == 0)
    {
LABEL_7:
      *(v236 + 8 * v75) = v76 | v77;
      v78 = v239;
      result = sub_1E5E1DF10(v238, v239[6] + v74 * v237, type metadata accessor for RouteSource);
      v80 = v78[2];
      v81 = __OFADD__(v80, 1);
      v82 = v80 + 1;
      if (!v81)
      {
        v239[2] = v82;
        goto LABEL_5;
      }

      __break(1u);
      return result;
    }

    while (1)
    {
      sub_1E5E1D27C(v239[6] + v74 * v237, v61, type metadata accessor for RouteSource);
      v83 = *(v69 + 48);
      sub_1E5E1D27C(v61, v48, type metadata accessor for RouteSource);
      sub_1E5E1D27C(v238, &v48[v83], type metadata accessor for RouteSource);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload <= 6)
        {
          if (EnumCaseMultiPayload == 5)
          {
            sub_1E5F94C90(v61, type metadata accessor for RouteSource);
            if (swift_getEnumCaseMultiPayload() == 5)
            {
              goto LABEL_151;
            }
          }

          else
          {
            sub_1E5F94C90(v61, type metadata accessor for RouteSource);
            if (swift_getEnumCaseMultiPayload() == 6)
            {
LABEL_3:
              sub_1E5F94C90(v238, type metadata accessor for RouteSource);
              v70 = v48;
              goto LABEL_4;
            }
          }
        }

        else if (EnumCaseMultiPayload == 7)
        {
          sub_1E5F94C90(v61, type metadata accessor for RouteSource);
          if (swift_getEnumCaseMultiPayload() == 7)
          {
            goto LABEL_3;
          }
        }

        else if (EnumCaseMultiPayload == 8)
        {
          sub_1E5F94C90(v61, type metadata accessor for RouteSource);
          if (swift_getEnumCaseMultiPayload() == 8)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_1E5F94C90(v61, type metadata accessor for RouteSource);
          if (swift_getEnumCaseMultiPayload() == 9)
          {
            goto LABEL_3;
          }
        }
      }

      else if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v107 = v230;
          sub_1E5E1D27C(v48, v230, type metadata accessor for RouteSource);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v108 = v226;
            sub_1E5E1DF10(&v48[v83], v226, type metadata accessor for URLContext);
            if ((sub_1E65D7468() & 1) == 0)
            {
              sub_1E5F94C90(v61, type metadata accessor for RouteSource);
              v58 = v233;
              v39 = v216;
              goto LABEL_101;
            }

            v109 = *(v219 + 20);
            v110 = *(v214 + 48);
            v111 = v206;
            sub_1E5F9AF1C(v107 + v109, v206);
            sub_1E5F9AF1C(v108 + v109, &v111[v110]);
            v112 = *v213;
            if ((*v213)(v111, 1, v234) == 1)
            {
              if (v112(&v111[v110], 1, v234) == 1)
              {
                sub_1E5DFE50C(v111, &qword_1ED072340, &qword_1E65EA410);
                v58 = v233;
                v39 = v216;
LABEL_80:
                v144 = *(v219 + 24);
                v145 = &v230[v144];
                v146 = *&v230[v144 + 8];
                v147 = &v226[v144];
                v148 = v147[1];
                v69 = v232;
                if (v146)
                {
                  if (v148)
                  {
                    if (*v145 == *v147 && v146 == v148)
                    {
                      sub_1E5F94C90(v61, type metadata accessor for RouteSource);
LABEL_142:
                      v188 = type metadata accessor for URLContext;
                      sub_1E5F94C90(v226, type metadata accessor for URLContext);
                      v189 = v230;
                      goto LABEL_150;
                    }

                    v149 = v147[1];
                    v150 = sub_1E65E6C18();
                    sub_1E5F94C90(v61, type metadata accessor for RouteSource);
                    if (v150)
                    {
                      goto LABEL_142;
                    }
                  }

                  else
                  {
                    sub_1E5F94C90(v61, type metadata accessor for RouteSource);
                  }
                }

                else
                {
                  sub_1E5F94C90(v61, type metadata accessor for RouteSource);
                  if (!v148)
                  {
                    goto LABEL_142;
                  }
                }

                goto LABEL_101;
              }

              sub_1E5F94C90(v61, type metadata accessor for RouteSource);
              v58 = v233;
              v39 = v216;
LABEL_78:
              sub_1E5DFE50C(v111, &qword_1ED071F98, &qword_1E65EA418);
              v69 = v232;
              goto LABEL_101;
            }

            v126 = v201;
            sub_1E5F9AF1C(v111, v201);
            if (v112(&v111[v110], 1, v234) == 1)
            {
              sub_1E5F94C90(v61, type metadata accessor for RouteSource);
              (*v228)(v126, v234);
              v39 = v216;
              v58 = v233;
              goto LABEL_78;
            }

            v140 = v204;
            v141 = v234;
            (*v215)(v204, &v111[v110], v234);
            sub_1E5F94D54(&qword_1ED071FB8, MEMORY[0x1E6968FB0]);
            v142 = sub_1E65E5B98();
            v143 = *v228;
            (*v228)(v140, v141);
            v143(v126, v141);
            sub_1E5DFE50C(v111, &qword_1ED072340, &qword_1E65EA410);
            v39 = v216;
            v58 = v233;
            if (v142)
            {
              goto LABEL_80;
            }

            sub_1E5F94C90(v61, type metadata accessor for RouteSource);
            v69 = v232;
LABEL_101:
            sub_1E5F94C90(v226, type metadata accessor for URLContext);
            v159 = v230;
LABEL_102:
            v160 = type metadata accessor for URLContext;
LABEL_137:
            sub_1E5F94C90(v159, v160);
LABEL_138:
            sub_1E5F94C90(v48, type metadata accessor for RouteSource);
            goto LABEL_11;
          }

          sub_1E5F94C90(v61, type metadata accessor for RouteSource);
          sub_1E5F94C90(v107, type metadata accessor for URLContext);
          v58 = v233;
        }

        else
        {
          sub_1E5E1D27C(v48, v58, type metadata accessor for RouteSource);
          if (!swift_getEnumCaseMultiPayload())
          {
            v113 = v217;
            sub_1E5E1DF10(&v48[v83], v217, type metadata accessor for AppLaunchScope);
            v114 = *(v209 + 48);
            sub_1E5E1D27C(v58, v39, type metadata accessor for AppLaunchScope);
            sub_1E5E1D27C(v113, &v39[v114], type metadata accessor for AppLaunchScope);
            v115 = swift_getEnumCaseMultiPayload();
            if (v115)
            {
              if (v115 == 1)
              {
                v116 = v208;
                sub_1E5E1D27C(v39, v208, type metadata accessor for AppLaunchScope);
                if (swift_getEnumCaseMultiPayload() == 1)
                {
                  v117 = v203;
                  sub_1E5E1DF10(&v39[v114], v203, type metadata accessor for URLContext);
                  v118 = v208;
                  if ((sub_1E65D7468() & 1) == 0)
                  {
                    sub_1E5F94C90(v217, type metadata accessor for AppLaunchScope);
                    sub_1E5F94C90(v61, type metadata accessor for RouteSource);
                    v39 = v216;
                    v69 = v232;
                    goto LABEL_132;
                  }

                  v119 = *(v219 + 20);
                  v120 = *(v214 + 48);
                  v121 = &v118[v119];
                  v122 = v199;
                  sub_1E5F9AF1C(v121, v199);
                  sub_1E5F9AF1C(&v117[v119], &v122[v120]);
                  v123 = *v213;
                  if ((*v213)(v122, 1, v234) == 1)
                  {
                    v124 = v123(&v122[v120], 1, v234);
                    v39 = v216;
                    if (v124 == 1)
                    {
                      sub_1E5DFE50C(v122, &qword_1ED072340, &qword_1E65EA410);
LABEL_110:
                      v169 = *(v219 + 24);
                      v170 = &v208[v169];
                      v171 = *&v208[v169 + 8];
                      v172 = &v203[v169];
                      v173 = v172[1];
                      v69 = v232;
                      if (v171)
                      {
                        if (v173)
                        {
                          if (*v170 == *v172 && v171 == v173)
                          {
                            v192 = v203;
                            v193 = &v240;
                            goto LABEL_147;
                          }

                          v174 = v172[1];
                          v175 = sub_1E65E6C18();
                          sub_1E5F94C90(v217, type metadata accessor for AppLaunchScope);
                          sub_1E5F94C90(v61, type metadata accessor for RouteSource);
                          if (v175)
                          {
                            goto LABEL_143;
                          }
                        }

                        else
                        {
                          sub_1E5F94C90(v217, type metadata accessor for AppLaunchScope);
                          sub_1E5F94C90(v61, type metadata accessor for RouteSource);
                        }
                      }

                      else
                      {
                        sub_1E5F94C90(v217, type metadata accessor for AppLaunchScope);
                        sub_1E5F94C90(v61, type metadata accessor for RouteSource);
                        if (!v173)
                        {
LABEL_143:
                          v190 = v203;
                          v191 = v208;
                          goto LABEL_148;
                        }
                      }

                      goto LABEL_132;
                    }

                    sub_1E5F94C90(v217, type metadata accessor for AppLaunchScope);
                    sub_1E5F94C90(v61, type metadata accessor for RouteSource);
LABEL_108:
                    sub_1E5DFE50C(v122, &qword_1ED071F98, &qword_1E65EA418);
                    v69 = v232;
                    goto LABEL_132;
                  }

                  v161 = v196;
                  sub_1E5F9AF1C(v122, v196);
                  if (v123(&v122[v120], 1, v234) == 1)
                  {
                    sub_1E5F94C90(v217, type metadata accessor for AppLaunchScope);
                    sub_1E5F94C90(v61, type metadata accessor for RouteSource);
                    (*v228)(v161, v234);
                    v39 = v216;
                    goto LABEL_108;
                  }

                  v164 = v204;
                  v165 = v234;
                  (*v215)(v204, &v122[v120], v234);
                  sub_1E5F94D54(&qword_1ED071FB8, MEMORY[0x1E6968FB0]);
                  v166 = sub_1E65E5B98();
                  v167 = *v228;
                  (*v228)(v164, v165);
                  v168 = v165;
                  v58 = v233;
                  v167(v161, v168);
                  sub_1E5DFE50C(v122, &qword_1ED072340, &qword_1E65EA410);
                  v39 = v216;
                  if (v166)
                  {
                    goto LABEL_110;
                  }

                  sub_1E5F94C90(v217, type metadata accessor for AppLaunchScope);
                  sub_1E5F94C90(v61, type metadata accessor for RouteSource);
                  v69 = v232;
LABEL_132:
                  sub_1E5F94C90(v203, type metadata accessor for URLContext);
                  v187 = &v240;
LABEL_135:
                  sub_1E5F94C90(*(v187 - 32), type metadata accessor for URLContext);
                  sub_1E5F94C90(v39, type metadata accessor for AppLaunchScope);
LABEL_136:
                  v160 = type metadata accessor for AppLaunchScope;
                  v159 = v58;
                  goto LABEL_137;
                }

LABEL_63:
                sub_1E5F94C90(v217, type metadata accessor for AppLaunchScope);
                sub_1E5F94C90(v61, type metadata accessor for RouteSource);
                sub_1E5F94C90(v116, type metadata accessor for URLContext);
                v69 = v232;
              }

              else
              {
                sub_1E5F94C90(v217, type metadata accessor for AppLaunchScope);
                sub_1E5F94C90(v61, type metadata accessor for RouteSource);
                v127 = swift_getEnumCaseMultiPayload();
                v69 = v232;
                if (v127 == 2)
                {
                  goto LABEL_149;
                }
              }

              sub_1E5DFE50C(v39, &qword_1ED071FA0, &qword_1E65EA420);
              goto LABEL_136;
            }

            v116 = v205;
            sub_1E5E1D27C(v39, v205, type metadata accessor for AppLaunchScope);
            if (swift_getEnumCaseMultiPayload())
            {
              goto LABEL_63;
            }

            v151 = v200;
            sub_1E5E1DF10(&v39[v114], v200, type metadata accessor for URLContext);
            v152 = v205;
            if ((sub_1E65D7468() & 1) == 0)
            {
              sub_1E5F94C90(v217, type metadata accessor for AppLaunchScope);
              sub_1E5F94C90(v61, type metadata accessor for RouteSource);
              v39 = v216;
              v69 = v232;
              goto LABEL_134;
            }

            v153 = *(v219 + 20);
            v154 = *(v214 + 48);
            v155 = &v152[v153];
            v156 = v198;
            sub_1E5F9AF1C(v155, v198);
            sub_1E5F9AF1C(&v151[v153], &v156[v154]);
            v157 = *v213;
            if ((*v213)(v156, 1, v234) == 1)
            {
              v158 = v157(&v156[v154], 1, v234);
              v39 = v216;
              if (v158 == 1)
              {
                sub_1E5DFE50C(v156, &qword_1ED072340, &qword_1E65EA410);
LABEL_119:
                v180 = *(v219 + 24);
                v181 = &v205[v180];
                v182 = *&v205[v180 + 8];
                v183 = &v200[v180];
                v184 = v183[1];
                v69 = v232;
                if (v182)
                {
                  if (v184)
                  {
                    if (*v181 == *v183 && v182 == v184)
                    {
                      v192 = v200;
                      v193 = &v237;
LABEL_147:
                      v191 = *(v193 - 32);
                      sub_1E5F94C90(v217, type metadata accessor for AppLaunchScope);
                      sub_1E5F94C90(v61, type metadata accessor for RouteSource);
                      v190 = v192;
LABEL_148:
                      sub_1E5F94C90(v190, type metadata accessor for URLContext);
                      sub_1E5F94C90(v191, type metadata accessor for URLContext);
LABEL_149:
                      v188 = type metadata accessor for AppLaunchScope;
                      sub_1E5F94C90(v39, type metadata accessor for AppLaunchScope);
                      v189 = v58;
LABEL_150:
                      sub_1E5F94C90(v189, v188);
LABEL_151:
                      sub_1E5F94C90(v48, type metadata accessor for RouteSource);
                      v70 = v238;
LABEL_4:
                      sub_1E5F94C90(v70, type metadata accessor for RouteSource);
LABEL_5:
                      v68 = v229 + 1;
                      if (v229 + 1 == v220)
                      {
                        return v239;
                      }

                      goto LABEL_6;
                    }

                    v185 = v183[1];
                    v186 = sub_1E65E6C18();
                    sub_1E5F94C90(v217, type metadata accessor for AppLaunchScope);
                    sub_1E5F94C90(v61, type metadata accessor for RouteSource);
                    if (v186)
                    {
                      goto LABEL_144;
                    }
                  }

                  else
                  {
                    sub_1E5F94C90(v217, type metadata accessor for AppLaunchScope);
                    sub_1E5F94C90(v61, type metadata accessor for RouteSource);
                  }
                }

                else
                {
                  sub_1E5F94C90(v217, type metadata accessor for AppLaunchScope);
                  sub_1E5F94C90(v61, type metadata accessor for RouteSource);
                  if (!v184)
                  {
LABEL_144:
                    v190 = v200;
                    v191 = v205;
                    goto LABEL_148;
                  }
                }

                goto LABEL_134;
              }

              sub_1E5F94C90(v217, type metadata accessor for AppLaunchScope);
              sub_1E5F94C90(v61, type metadata accessor for RouteSource);
            }

            else
            {
              v162 = v197;
              sub_1E5F9AF1C(v156, v197);
              v163 = v157(&v156[v154], 1, v234);
              v39 = v216;
              if (v163 != 1)
              {
                v176 = v204;
                v177 = v234;
                (*v215)(v204, &v156[v154], v234);
                sub_1E5F94D54(&qword_1ED071FB8, MEMORY[0x1E6968FB0]);
                v195 = sub_1E65E5B98();
                v178 = *v228;
                (*v228)(v176, v177);
                v179 = v177;
                v58 = v233;
                v178(v162, v179);
                sub_1E5DFE50C(v156, &qword_1ED072340, &qword_1E65EA410);
                if (v195)
                {
                  goto LABEL_119;
                }

                sub_1E5F94C90(v217, type metadata accessor for AppLaunchScope);
                sub_1E5F94C90(v61, type metadata accessor for RouteSource);
                v69 = v232;
LABEL_134:
                sub_1E5F94C90(v200, type metadata accessor for URLContext);
                v187 = &v237;
                goto LABEL_135;
              }

              sub_1E5F94C90(v217, type metadata accessor for AppLaunchScope);
              sub_1E5F94C90(v61, type metadata accessor for RouteSource);
              (*v228)(v162, v234);
            }

            sub_1E5DFE50C(v156, &qword_1ED071F98, &qword_1E65EA418);
            v69 = v232;
            goto LABEL_134;
          }

          sub_1E5F94C90(v61, type metadata accessor for RouteSource);
          sub_1E5F94C90(v58, type metadata accessor for AppLaunchScope);
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v93 = v231;
        sub_1E5E1D27C(v48, v231, type metadata accessor for RouteSource);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v94 = v227;
          sub_1E5E1DF10(&v48[v83], v227, type metadata accessor for URLContext);
          if ((sub_1E65D7468() & 1) == 0)
          {
            sub_1E5F94C90(v61, type metadata accessor for RouteSource);
            v69 = v232;
            goto LABEL_99;
          }

          v95 = v93;
          v96 = *(v219 + 20);
          v97 = *(v214 + 48);
          v98 = v207;
          sub_1E5F9AF1C(&v95[v96], v207);
          sub_1E5F9AF1C(&v94[v96], &v98[v97]);
          v99 = *v213;
          if ((*v213)(v98, 1, v234) == 1)
          {
            if (v99(&v98[v97], 1, v234) == 1)
            {
              sub_1E5DFE50C(v98, &qword_1ED072340, &qword_1E65EA410);
              v69 = v232;
LABEL_71:
              v133 = *(v219 + 24);
              v134 = &v231[v133];
              v135 = *&v231[v133 + 8];
              v136 = &v227[v133];
              v137 = v136[1];
              v58 = v233;
              if (v135)
              {
                if (v137)
                {
                  if (*v134 == *v136 && v135 == v137)
                  {
                    sub_1E5F94C90(v61, type metadata accessor for RouteSource);
LABEL_140:
                    v188 = type metadata accessor for URLContext;
                    sub_1E5F94C90(v227, type metadata accessor for URLContext);
                    v189 = v231;
                    goto LABEL_150;
                  }

                  v138 = v136[1];
                  v139 = sub_1E65E6C18();
                  sub_1E5F94C90(v61, type metadata accessor for RouteSource);
                  if (v139)
                  {
                    goto LABEL_140;
                  }
                }

                else
                {
                  sub_1E5F94C90(v61, type metadata accessor for RouteSource);
                }
              }

              else
              {
                sub_1E5F94C90(v61, type metadata accessor for RouteSource);
                if (!v137)
                {
                  goto LABEL_140;
                }
              }

              goto LABEL_99;
            }

            sub_1E5F94C90(v61, type metadata accessor for RouteSource);
            v69 = v232;
          }

          else
          {
            v125 = v202;
            sub_1E5F9AF1C(v98, v202);
            if (v99(&v98[v97], 1, v234) != 1)
            {
              v128 = &v98[v97];
              v129 = v204;
              v130 = v234;
              (*v215)(v204, v128, v234);
              sub_1E5F94D54(&qword_1ED071FB8, MEMORY[0x1E6968FB0]);
              v131 = sub_1E65E5B98();
              v132 = *v228;
              (*v228)(v129, v130);
              v132(v125, v130);
              sub_1E5DFE50C(v98, &qword_1ED072340, &qword_1E65EA410);
              v39 = v216;
              v69 = v232;
              if (v131)
              {
                goto LABEL_71;
              }

              sub_1E5F94C90(v61, type metadata accessor for RouteSource);
              v58 = v233;
LABEL_99:
              sub_1E5F94C90(v227, type metadata accessor for URLContext);
              v159 = v231;
              goto LABEL_102;
            }

            sub_1E5F94C90(v61, type metadata accessor for RouteSource);
            (*v228)(v125, v234);
            v39 = v216;
            v69 = v232;
          }

          sub_1E5DFE50C(v98, &qword_1ED071F98, &qword_1E65EA418);
          v58 = v233;
          goto LABEL_99;
        }

        sub_1E5F94C90(v61, type metadata accessor for RouteSource);
        sub_1E5F94C90(v93, type metadata accessor for URLContext);
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v85 = v39;
        v86 = v223;
        sub_1E5E1D27C(v48, v223, type metadata accessor for RouteSource);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v87 = v211;
          v88 = v234;
          (*v215)(v211, &v48[v83], v234);
          v89 = sub_1E65D7468();
          v90 = *v228;
          v91 = v87;
          v69 = v232;
          (*v228)(v91, v88);
          sub_1E5F94C90(v61, type metadata accessor for RouteSource);
          v92 = v88;
          v58 = v233;
          v90(v86, v92);
          v39 = v85;
          if (v89)
          {
            goto LABEL_151;
          }

          goto LABEL_138;
        }

        sub_1E5F94C90(v61, type metadata accessor for RouteSource);
        (*v228)(v86, v234);
        v39 = v85;
      }

      else
      {
        v100 = v224;
        sub_1E5E1D27C(v48, v224, type metadata accessor for RouteSource);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v101 = v212;
          v102 = v225;
          (*v210)(v212, &v48[v83], v225);
          v103 = MEMORY[0x1E6940730](v100, v101);
          v104 = *v222;
          v105 = v101;
          v58 = v233;
          (*v222)(v105, v102);
          sub_1E5F94C90(v61, type metadata accessor for RouteSource);
          v106 = v102;
          v69 = v232;
          v104(v100, v106);
          if (v103)
          {
            goto LABEL_151;
          }

          goto LABEL_138;
        }

        sub_1E5F94C90(v61, type metadata accessor for RouteSource);
        (*v222)(v100, v225);
      }

      sub_1E5DFE50C(v48, &qword_1ED071FA8, &qword_1E65EA428);
LABEL_11:
      v74 = (v74 + 1) & v235;
      v75 = v74 >> 6;
      v76 = *(v236 + 8 * (v74 >> 6));
      v77 = 1 << v74;
      if ((v76 & (1 << v74)) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E5F988FC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F90, &qword_1E65FD870);
  v2 = *(type metadata accessor for RouteSource(0) - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E65EA190;
  type metadata accessor for AppLaunchScope(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v6 = sub_1E5F96654(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v9[2] = a1;
  LOBYTE(a1) = sub_1E5F95D7C(sub_1E5F9AEFC, v9, v6);

  if ((a1 & 1) == 0)
  {
    sub_1E5F94DAC();
    swift_allocError();
    *v8 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1E5F98ADC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F58, &qword_1E65EA388);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v83 = &v75 - v5;
  v82 = sub_1E65D7828();
  v80 = *(v82 - 8);
  v6 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65D7848();
  v77 = *(v8 - 8);
  v78 = v8;
  v9 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1E65D7768();
  v85 = *(v87 - 8);
  v12 = *(v85 + 64);
  v13 = MEMORY[0x1EEE9AC00](v87);
  v76 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v75 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F60, &qword_1E65EA390);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v75 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F68, &qword_1E65EA398);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v75 - v26;
  swift_getKeyPath();
  v81 = a2;
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v24 + 8))(v27, v23);
  sub_1E5F9AE38(v22, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload)
  {
    v29 = v87;
    v30 = v85;
    if (EnumCaseMultiPayload == 1)
    {
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F70, &qword_1E65EA3E8) + 48);
      v32 = *v20;
      v33 = sub_1E65D76A8();
      (*(*(v33 - 8) + 8))(v20 + v31, v33);
      goto LABEL_6;
    }

    sub_1E5DFE50C(v20, &qword_1ED071F60, &qword_1E65EA390);
LABEL_12:
    sub_1E5F94DAC();
    swift_allocError();
    v46 = 4;
LABEL_15:
    *v45 = v46;
    return swift_willThrow();
  }

  v32 = *v20;
  v29 = v87;
  v30 = v85;
LABEL_6:
  swift_getKeyPath();
  sub_1E65E4EC8();

  v34 = v79;
  sub_1E65D7838();
  (*(v77 + 8))(v11, v78);
  v35 = v83;
  sub_1E65D77F8();
  (*(v80 + 8))(v34, v82);
  if ((*(v30 + 48))(v35, 1, v29) == 1)
  {

    sub_1E5DFE50C(v35, &qword_1ED071F58, &qword_1E65EA388);
LABEL_14:
    sub_1E5F94DAC();
    swift_allocError();
    v46 = 7;
    goto LABEL_15;
  }

  v36 = v84;
  (*(v30 + 32))(v84, v35, v29);
  v37 = sub_1E65D7788();
  if (!v37[2])
  {
    (*(v30 + 8))(v36, v29);

    goto LABEL_14;
  }

  v39 = v37[4];
  v38 = v37[5];

  v86[0] = v39;
  v86[1] = v38;
  sub_1E5F9AEA8();
  v40 = sub_1E65E66E8();

  if (v40[2])
  {
    v41 = v40[4];
    v42 = v40[5];
    v44 = v40[6];
    v43 = v40[7];
  }

  else
  {

    v41 = sub_1E65E6688();
    v42 = v48;
    v44 = v49;
    v43 = v50;
  }

  v51 = MEMORY[0x1E694D730](v41, v42, v44, v43);
  v53 = v52;

  v54 = v84;
  if (sub_1E65D7748() == 28261 && v55 == 0xE200000000000000)
  {

    goto LABEL_21;
  }

  v56 = sub_1E65E6C18();

  if (v56)
  {
LABEL_21:
    v57 = 0;
    if (v51 == 28261)
    {
      v58 = v76;
      if (v53 == 0xE200000000000000)
      {

        v57 = 0;
        goto LABEL_31;
      }

      goto LABEL_28;
    }

LABEL_27:
    v58 = v76;
    goto LABEL_28;
  }

  v59 = sub_1E65D7748();
  v57 = sub_1E637CA94(v59, v60, v32);

  if (v51 != 28261)
  {
    goto LABEL_27;
  }

  v58 = v76;
  if (v53 == 0xE200000000000000)
  {
LABEL_29:

    goto LABEL_31;
  }

LABEL_28:
  if (sub_1E65E6C18())
  {
    goto LABEL_29;
  }

  v61 = sub_1E637CA94(v51, v53, v32);

  v57 |= v61;
LABEL_31:
  LODWORD(v83) = v57;
  v82 = v51;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v62 = sub_1E65E3B68();
  __swift_project_value_buffer(v62, qword_1EE2EA2A0);
  (*(v30 + 16))(v58, v54, v29);

  v63 = sub_1E65E3B48();
  v64 = sub_1E65E6338();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = v58;
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v86[0] = v67;
    *v66 = 136315394;
    v68 = sub_1E65D7748();
    v70 = v69;
    v71 = *(v30 + 8);
    v71(v65, v87);
    v72 = sub_1E5DFD4B0(v68, v70, v86);
    v29 = v87;

    *(v66 + 4) = v72;
    *(v66 + 12) = 2080;
    v73 = sub_1E5DFD4B0(v82, v53, v86);

    *(v66 + 14) = v73;
    _os_log_impl(&dword_1E5DE9000, v63, v64, "[Audio Language Engagement Sheet] storeFrontLanguage: %s deviceLanguage: %s", v66, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v67, -1, -1);
    MEMORY[0x1E694F1C0](v66, -1, -1);

    if ((v83 & 1) == 0)
    {
LABEL_35:
      sub_1E5F94DAC();
      swift_allocError();
      *v74 = 5;
      swift_willThrow();
      return (v71)(v84, v29);
    }
  }

  else
  {

    v71 = *(v30 + 8);
    v71(v58, v29);
    if ((v83 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  return (v71)(v84, v29);
}

uint64_t sub_1E5F99494(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077730, &unk_1E65EA310);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EF8, &unk_1E65FA470);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v50 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F00, &qword_1E65EA320);
  v12 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v14 = &v50 - v13;
  v15 = type metadata accessor for AppComposer();
  v16 = v15 - 8;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F08, &qword_1E65EA328);
  v20 = *(*(v52 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v52);
  v53 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v50 - v23;
  v25 = *(a1 + *(v16 + 28) + 8);
  if (v25 < 2)
  {
    sub_1E5E1D27C(a1, &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
    v26 = (*(v17 + 80) + 24) & ~*(v17 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v2;
    sub_1E5E1DF10(v19, v27 + v26, type metadata accessor for AppComposer);

    sub_1E6318EA0(&v54);
    sub_1E61BAD70(a1, sub_1E5F99E40, v27, v14);
    v28 = sub_1E65E4FD8();
    (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
    if (qword_1EE2D49E0 != -1)
    {
      swift_once();
    }

    v29 = sub_1E65E5018();
    __swift_project_value_buffer(v29, qword_1EE2D49E8);
    v30 = sub_1E65E2E78();
    (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
    sub_1E5F99C3C();
    sub_1E65E4728();

    sub_1E5DFE50C(v7, &unk_1ED077730, &unk_1E65EA310);
    sub_1E5DFE50C(v11, &qword_1ED071EF8, &unk_1E65FA470);
    sub_1E5DFE50C(v14, &qword_1ED071F00, &qword_1E65EA320);
    v31 = swift_allocObject();
    v32 = v57;
    v31[3] = v56;
    v31[4] = v32;
    v31[5] = v58;
    v33 = v55;
    v31[1] = v54;
    v31[2] = v33;
    v34 = v53;
    v35 = &v24[*(v52 + 36)];
    *v35 = 0;
    *(v35 + 1) = 0;
    *(v35 + 2) = sub_1E5F9C42C;
    *(v35 + 3) = v31;
    sub_1E5E2F270(v24, v34);
    v36 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F50, &qword_1E65EA348));
    v37 = sub_1E65E1738();
    [v37 setModalInPresentation_];
LABEL_9:
    sub_1E5E2F2E0(v24);
    return v37;
  }

  if (v25 == 3)
  {
    sub_1E5E1D27C(a1, &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
    v38 = (*(v17 + 80) + 24) & ~*(v17 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v2;
    sub_1E5E1DF10(v19, v39 + v38, type metadata accessor for AppComposer);

    sub_1E6318EA0(&v54);
    sub_1E61BAD70(a1, sub_1E5F99C1C, v39, v14);
    v40 = sub_1E65E4FD8();
    (*(*(v40 - 8) + 56))(v11, 1, 1, v40);
    if (qword_1EE2D49E0 != -1)
    {
      swift_once();
    }

    v41 = sub_1E65E5018();
    __swift_project_value_buffer(v41, qword_1EE2D49E8);
    v42 = sub_1E65E2E78();
    (*(*(v42 - 8) + 56))(v7, 1, 1, v42);
    sub_1E5F99C3C();
    sub_1E65E4728();

    sub_1E5DFE50C(v7, &unk_1ED077730, &unk_1E65EA310);
    sub_1E5DFE50C(v11, &qword_1ED071EF8, &unk_1E65FA470);
    sub_1E5DFE50C(v14, &qword_1ED071F00, &qword_1E65EA320);
    v43 = swift_allocObject();
    v44 = v57;
    v43[3] = v56;
    v43[4] = v44;
    v43[5] = v58;
    v45 = v55;
    v43[1] = v54;
    v43[2] = v45;
    v46 = v53;
    v47 = &v24[*(v52 + 36)];
    *v47 = 0;
    *(v47 + 1) = 0;
    *(v47 + 2) = sub_1E5F99E38;
    *(v47 + 3) = v43;
    sub_1E5E2F270(v24, v46);
    v48 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F48, &qword_1E65EA340));
    v37 = sub_1E65E4058();
    goto LABEL_9;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

unint64_t sub_1E5F99C3C()
{
  result = qword_1ED071F10;
  if (!qword_1ED071F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071F00, &qword_1E65EA320);
    sub_1E5F99CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071F10);
  }

  return result;
}

unint64_t sub_1E5F99CC0()
{
  result = qword_1ED071F18;
  if (!qword_1ED071F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071F20, &qword_1E65EA330);
    sub_1E5F99D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071F18);
  }

  return result;
}

unint64_t sub_1E5F99D4C()
{
  result = qword_1ED071F28;
  if (!qword_1ED071F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071F30, &qword_1E65EA338);
    sub_1E5F94D54(&qword_1ED071F38, MEMORY[0x1E699E900]);
    sub_1E5F94D54(&qword_1ED071F40, MEMORY[0x1E699E940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071F28);
  }

  return result;
}

uint64_t sub_1E5F99ED8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E5F96440(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1E5F99FD0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E5F95FF8(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_21Tm_0()
{
  v112 = type metadata accessor for AppComposer();
  v111 = *(*(v112 - 1) + 80);
  v110 = *(*(v112 - 1) + 64);
  v1 = *(v0 + 16);

  v107 = (v0 + ((v111 + 24) & ~v111));
  v2 = *v107;

  v3 = v107 + v112[5];
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment();
  v6 = v5[6];
  v109 = type metadata accessor for AccountService();
  v108 = *(v109[-1].Description + 1);
  v108(&v3[v6], v109);
  v7 = v5[7];
  v106 = type metadata accessor for AppStateService();
  v105 = *(v106[-1].Description + 1);
  v105(&v3[v7], v106);
  v8 = v5[8];
  v104 = type metadata accessor for ArchivedSessionService();
  v103 = *(v104[-1].Description + 1);
  v103(&v3[v8], v104);
  v9 = v5[9];
  v102 = type metadata accessor for AssetService();
  v101 = *(v102[-1].Description + 1);
  v101(&v3[v9], v102);
  v10 = v5[10];
  v100 = type metadata accessor for AwardsService();
  v99 = *(v100[-1].Description + 1);
  v99(&v3[v10], v100);
  v11 = v5[11];
  v98 = type metadata accessor for BookmarkService();
  v97 = *(v98[-1].Description + 1);
  v97(&v3[v11], v98);
  v12 = v5[12];
  v96 = type metadata accessor for CatalogService();
  v95 = *(v96[-1].Description + 1);
  v95(&v3[v12], v96);
  v13 = v5[13];
  v94 = type metadata accessor for ConfigurationService();
  v93 = *(v94[-1].Description + 1);
  v93(&v3[v13], v94);
  v14 = v5[14];
  v92 = type metadata accessor for ContentAvailabilityService();
  v91 = *(v92[-1].Description + 1);
  v91(&v3[v14], v92);
  v15 = v5[15];
  v90 = type metadata accessor for EngagementService();
  v89 = *(v90[-1].Description + 1);
  v89(&v3[v15], v90);
  v16 = v5[16];
  v88 = type metadata accessor for HealthDataService();
  v87 = *(v88[-1].Description + 1);
  v87(&v3[v16], v88);
  v17 = v5[17];
  v86 = type metadata accessor for InteropService();
  v85 = *(v86[-1].Description + 1);
  v85(&v3[v17], v86);
  v18 = v5[18];
  v84 = type metadata accessor for LocalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(&v3[v18], v84);
  v19 = v5[19];
  v82 = type metadata accessor for MarketingService();
  v81 = *(v82[-1].Description + 1);
  v81(&v3[v19], v82);
  v20 = v5[20];
  v80 = type metadata accessor for MetricService();
  v79 = *(v80[-1].Description + 1);
  v79(&v3[v20], v80);
  v21 = v5[21];
  v78 = type metadata accessor for PersonalizationService();
  v77 = *(v78[-1].Description + 1);
  v77(&v3[v21], v78);
  v22 = v5[22];
  v76 = type metadata accessor for PlayerService();
  v75 = *(v76[-1].Description + 1);
  v75(&v3[v22], v76);
  v23 = v5[23];
  v74 = type metadata accessor for PrivacyPreferenceService();
  v73 = *(v74[-1].Description + 1);
  v73(&v3[v23], v74);
  v24 = v5[24];
  v72 = type metadata accessor for RecommendationService();
  v71 = *(v72[-1].Description + 1);
  v71(&v3[v24], v72);
  v25 = v5[25];
  v70 = type metadata accessor for RemoteBrowsingService();
  v69 = *(v70[-1].Description + 1);
  v69(&v3[v25], v70);
  v26 = v5[26];
  v68 = type metadata accessor for SearchService();
  v67 = *(v68[-1].Description + 1);
  v67(&v3[v26], v68);
  v27 = v5[27];
  v66 = type metadata accessor for ServiceSubscriptionService();
  v65 = *(v66[-1].Description + 1);
  v65(&v3[v27], v66);
  v28 = v5[28];
  v59 = type metadata accessor for SessionService();
  v64 = *(v59[-1].Description + 1);
  v64(&v3[v28], v59);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v63 = *(v30[-1].Description + 1);
  v63(&v3[v29], v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v62 = *(v32[-1].Description + 1);
  v62(&v3[v31], v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v61 = *(v34[-1].Description + 1);
  v61(&v3[v33], v34);
  v35 = &v3[v5[32]];
  v36 = *(v35 + 1);

  v37 = *(v35 + 3);

  v38 = *(v35 + 5);

  v39 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v60 = *(QueueService[-1].Description + 1);
  v60(&v3[v39], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v5[34]]);
  v41 = *&v3[v5[35]];

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v58 = *(v43[-1].Description + 1);
  v58(&v3[v42], v43);
  v44 = *(v107 + v112[6]);

  v45 = (v107 + v112[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = v45 + *(type metadata accessor for AppDataItemResolver() + 24);
  v49 = *v48;
  swift_unknownObjectRelease();
  v108(&v48[v5[6]], v109);
  v105(&v48[v5[7]], v106);
  v103(&v48[v5[8]], v104);
  v101(&v48[v5[9]], v102);
  v99(&v48[v5[10]], v100);
  v97(&v48[v5[11]], v98);
  v95(&v48[v5[12]], v96);
  v93(&v48[v5[13]], v94);
  v91(&v48[v5[14]], v92);
  v89(&v48[v5[15]], v90);
  v87(&v48[v5[16]], v88);
  v85(&v48[v5[17]], v86);
  v83(&v48[v5[18]], v84);
  v81(&v48[v5[19]], v82);
  v79(&v48[v5[20]], v80);
  v77(&v48[v5[21]], v78);
  v75(&v48[v5[22]], v76);
  v73(&v48[v5[23]], v74);
  v71(&v48[v5[24]], v72);
  v69(&v48[v5[25]], v70);
  v67(&v48[v5[26]], v68);
  v65(&v48[v5[27]], v66);
  v64(&v48[v5[28]], v59);
  v63(&v48[v5[29]], v30);
  v62(&v48[v5[30]], v32);
  v61(&v48[v5[31]], v34);
  v50 = &v48[v5[32]];
  v51 = *(v50 + 1);

  v52 = *(v50 + 3);

  v53 = *(v50 + 5);

  v60(&v48[v5[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v48[v5[34]]);
  v54 = *&v48[v5[35]];

  v58(&v48[v5[36]], v43);
  v55 = *(v107 + v112[8]);
  swift_unknownObjectRelease();
  if (*(v107 + v112[9] + 8) >= 0xC)
  {
  }

  v56 = (v107 + v112[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5F9ADB0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_1E5F9AE38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F60, &qword_1E65EA390);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5F9AEA8()
{
  result = qword_1EE2D4970;
  if (!qword_1EE2D4970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4970);
  }

  return result;
}

uint64_t sub_1E5F9AF1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1E5F9AF8C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1E65E67C8())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072010, &qword_1E65EA478);
      v3 = sub_1E65E6888();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1E65E67C8();
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
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x1E694E2D0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_1E65E6598();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_1E5E0DFF4();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_1E65E65A8();

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
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
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
          goto LABEL_32;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = sub_1E65E6598();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_1E5E0DFF4();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_1E65E65A8();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v9 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1E5F9B258(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071FD0, &qword_1E65EA450);
    v3 = sub_1E65E6888();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      sub_1E65E6D28();
      sub_1E65DE5F8();
      result = sub_1E65E6D78();
      v13 = ~(-1 << *(v3 + 32));
      for (i = result & v13; ; i = (i + 1) & v13)
      {
        v15 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v15) == 0)
        {
          break;
        }

        v16 = *(*(v3 + 48) + i);
        result = sub_1E65DE5E8();
        if (result)
        {
          goto LABEL_5;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v15;
      *(*(v3 + 48) + i) = v10;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        *(v3 + 16) = v9;
LABEL_5:
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

uint64_t sub_1E5F9B3B0(uint64_t a1)
{
  v2 = sub_1E65DADD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071FD8, &qword_1E65EA458);
    v10 = sub_1E65E6888();
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
      sub_1E5F94D54(&qword_1ED071FE0, MEMORY[0x1E69CD2D8]);
      v18 = sub_1E65E5B38();
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
          sub_1E5F94D54(&qword_1EE2D6FB0, MEMORY[0x1E69CD2D8]);
          v25 = sub_1E65E5B98();
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

uint64_t sub_1E5F9B6E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B760, &qword_1E65EA440);
    v3 = sub_1E65E6888();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1E65E6D28();

      sub_1E65E5D78();
      result = sub_1E65E6D78();
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
          result = sub_1E65E6C18();
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

uint64_t sub_1E5F9B874(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1E65E6888();
    v8 = 0;
    v9 = v7 + 56;
    v25 = v4;
    v26 = a1 + 32;
    while (2)
    {
      v10 = *(v26 + v8);
      v11 = *(v7 + 40);
      sub_1E65E6D28();
      a4(v10);
      sub_1E65E5D78();

      result = sub_1E65E6D78();
      v13 = ~(-1 << *(v7 + 32));
      for (i = result & v13; ; i = (i + 1) & v13)
      {
        v15 = *(v9 + 8 * (i >> 6));
        if (((1 << i) & v15) == 0)
        {
          break;
        }

        v16 = (a4)(*(*(v7 + 48) + i));
        v18 = v17;
        if (v16 == (a4)(v10) && v18 == v19)
        {

          goto LABEL_4;
        }

        v21 = sub_1E65E6C18();

        if (v21)
        {
          goto LABEL_4;
        }
      }

      *(v9 + 8 * (i >> 6)) = (1 << i) | v15;
      *(*(v7 + 48) + i) = v10;
      v22 = *(v7 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (!v23)
      {
        *(v7 + 16) = v24;
LABEL_4:
        if (++v8 == v25)
        {
          return v7;
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

uint64_t sub_1E5F9BA30(uint64_t a1)
{
  v2 = sub_1E65E0B48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071FE8, &qword_1E65EA460);
    v11 = sub_1E65E6888();
    v12 = 0;
    v13 = v11 + 56;
    v14 = *(v3 + 80);
    v27 = v10;
    v28 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v3 + 72);
    while (2)
    {
      sub_1E5E1D27C(v28 + v15 * v12, v9, MEMORY[0x1E699DD40]);
      v16 = *(v11 + 40);
      sub_1E65E6D28();
      sub_1E65E0B38();
      v17 = sub_1E65E6D78();
      v18 = ~(-1 << *(v11 + 32));
      for (i = v17 & v18; ; i = (i + 1) & v18)
      {
        v20 = *(v13 + 8 * (i >> 6));
        if (((1 << i) & v20) == 0)
        {
          break;
        }

        sub_1E5E1D27C(*(v11 + 48) + i * v15, v7, MEMORY[0x1E699DD40]);
        v21 = MEMORY[0x1E6948530](v7, v9);
        sub_1E5F94C90(v7, MEMORY[0x1E699DD40]);
        if (v21)
        {
          sub_1E5F94C90(v9, MEMORY[0x1E699DD40]);
          goto LABEL_4;
        }
      }

      *(v13 + 8 * (i >> 6)) = (1 << i) | v20;
      result = sub_1E5E1DF10(v9, *(v11 + 48) + i * v15, MEMORY[0x1E699DD40]);
      v23 = *(v11 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (!v24)
      {
        *(v11 + 16) = v25;
LABEL_4:
        if (++v12 == v27)
        {
          return v11;
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

uint64_t sub_1E5F9BCB8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1E65E6888();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    while (1)
    {
      v12 = *(v8 + v6);
      v13 = *(v5 + 40);
      sub_1E65E6D28();
      MEMORY[0x1E694E740](v12);
      result = sub_1E65E6D78();
      v15 = ~(-1 << *(v5 + 32));
      v16 = result & v15;
      v17 = (result & v15) >> 6;
      v18 = *(v7 + 8 * v17);
      v19 = 1 << (result & v15);
      v20 = *(v5 + 48);
      if ((v19 & v18) != 0)
      {
        while (*(v20 + v16) != v12)
        {
          v16 = (v16 + 1) & v15;
          v17 = v16 >> 6;
          v18 = *(v7 + 8 * (v16 >> 6));
          v19 = 1 << v16;
          if (((1 << v16) & v18) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v17) = v19 | v18;
        *(v20 + v16) = v12;
        v9 = *(v5 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v11;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E5F9BDEC(uint64_t a1)
{
  v2 = sub_1E65DAEC8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072018, &qword_1E65EA480);
    v10 = sub_1E65E6888();
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
      sub_1E5F94D54(&qword_1EE2D6FA0, MEMORY[0x1E69CD3C0]);
      v18 = sub_1E65E5B38();
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
          sub_1E5F94D54(&qword_1EE2D6F98, MEMORY[0x1E69CD3C0]);
          v25 = sub_1E65E5B98();
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

uint64_t sub_1E5F9C10C(uint64_t a1)
{
  v2 = sub_1E65D78F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071FF8, &qword_1E65EA470);
    v10 = sub_1E65E6888();
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
      sub_1E5F94D54(&qword_1ED072000, MEMORY[0x1E6969AD0]);
      v18 = sub_1E65E5B38();
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
          sub_1E5F94D54(&qword_1ED072008, MEMORY[0x1E6969AD0]);
          v25 = sub_1E65E5B98();
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

uint64_t RoutingContext.resolveDetours(_:priority:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  v8 = *(type metadata accessor for RouteDestination() - 8);
  *(v5 + 48) = v8;
  *(v5 + 56) = *(v8 + 64);
  *(v5 + 64) = swift_task_alloc();
  v9 = *(a3 - 8);
  *(v5 + 72) = v9;
  *(v5 + 80) = *(v9 + 64);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 129) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1E5F9C56C, 0, 0);
}

uint64_t sub_1E5F9C56C()
{
  v15 = *(v0 + 129);
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v18 = *(v0 + 80);
  v19 = *(v0 + 56);
  v16 = v1;
  v17 = *(v0 + 48);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = (*(v5 + 16))(v7, v5);
  v21 = v9;
  *(v0 + 96) = v8;
  ObjectType = swift_getObjectType();
  *(v0 + 128) = v15;
  (*(v2 + 16))(v1, v4, v7);
  sub_1E5F9CE1C(v6, v3);
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v11 = (v18 + *(v17 + 80) + v10) & ~*(v17 + 80);
  v12 = swift_allocObject();
  *(v0 + 104) = v12;
  *(v12 + 16) = v7;
  *(v12 + 24) = v5;
  (*(v2 + 32))(v12 + v10, v16, v7);
  sub_1E5F9CE80(v3, v12 + v11);
  v13 = swift_task_alloc();
  *(v0 + 112) = v13;
  *v13 = v0;
  v13[1] = sub_1E5F9C738;

  return sub_1E61261B8((v0 + 128), &unk_1E65EA4A8, v12, ObjectType, v21);
}

uint64_t sub_1E5F9C738()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {
    v5 = v3[12];
    v4 = v3[13];

    swift_unknownObjectRelease();

    return MEMORY[0x1EEE6DFA0](sub_1E5F9C8B4, 0, 0);
  }

  else
  {
    v6 = v3[12];
    v7 = v3[13];
    v8 = v3[11];
    v9 = v3[8];
    swift_unknownObjectRelease();

    v10 = v3[1];

    return v10();
  }
}

uint64_t sub_1E5F9C8B4()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1E5F9C924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5F9C9C4, 0, 0);
}

uint64_t sub_1E5F9C9C4()
{
  v1 = v0[7];
  (*(v0[10] + 24))(v0[9]);
  v2 = v0[5];
  if (v2)
  {
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v4 = *(v3 + 16);
    v14 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_1E5F9CBD0;
    v7 = v0[11];
    v8 = v0[8];

    return v14(v7, v8, v2, v3);
  }

  else
  {
    v10 = v0[11];
    sub_1E5DFE50C((v0 + 2), &unk_1ED072050, &unk_1E65EEAB0);
    v11 = type metadata accessor for RouteDestination();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    sub_1E5DFE50C(v10, &unk_1ED072040, &qword_1E65F0860);
    v12 = v0[11];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1E5F9CBD0()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1E5F9CDAC;
  }

  else
  {
    v3 = sub_1E5F9CCE4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E5F9CCE4()
{
  v1 = v0[11];
  v2 = type metadata accessor for RouteDestination();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_1E5DFE50C(v1, &unk_1ED072040, &qword_1E65F0860);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5F9CDAC()
{
  v1 = v0[11];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_1E5F9CE1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteDestination();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5F9CE80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteDestination();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5F9CEE4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = *(*(v2 - 8) + 64);
  v6 = *(type metadata accessor for RouteDestination() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E5F9C924(v0 + v4, v0 + v7, v2, v3);
}

uint64_t RoutingContext.appendDestination(_:priority:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  *(v4 + 16) = sub_1E65E6058();
  *(v4 + 24) = sub_1E65E6048();
  *(v4 + 48) = v8;
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 32) = v11;
  *v11 = v4;
  v11[1] = sub_1E5F9D184;

  return v13(a1, 1, v4 + 48, a3, a4);
}

uint64_t sub_1E5F9D184()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v14 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    v6 = sub_1E65E5FC8();
    v8 = v7;
    v9 = sub_1E5F9D2C8;
  }

  else
  {
    v10 = *(v2 + 16);
    v11 = *(v2 + 24);
    v6 = sub_1E65E5FC8();
    v8 = v12;
    v9 = sub_1E5F9F080;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, v8);
}

uint64_t sub_1E5F9D2C8()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t RoutingContext.removeLast()(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1E65E6058();
  v2[3] = sub_1E65E6048();
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v2[4] = v7;
  *v7 = v2;
  v7[1] = sub_1E5F9D470;

  return v9(1, a1, a2);
}

uint64_t sub_1E5F9D470()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_1E65E5FC8();
  if (v2)
  {
    v8 = sub_1E5F9D2C8;
  }

  else
  {
    v8 = sub_1E5F9D5CC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E5F9D5CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t RoutingContext.reset(animated:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 89) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  sub_1E65E6058();
  *(v4 + 48) = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  *(v4 + 56) = v7;
  *(v4 + 64) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E5F9D708, v7, v6);
}

uint64_t sub_1E5F9D708()
{
  v1 = *(v0 + 40);
  v13 = *(v0 + 24);
  v2 = type metadata accessor for RouteDestination();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  *(v0 + 88) = 0;
  v3 = *(v13 + 48);
  v12 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1E5F9D878;
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + 89);

  return v12(v6, v10, v0 + 88, v8, v9);
}

uint64_t sub_1E5F9D878()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 80) = v0;

  sub_1E5DFE50C(v4, &unk_1ED072040, &qword_1E65F0860);
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_1E5F9DA2C;
  }

  else
  {
    v7 = sub_1E5F9D9C0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E5F9D9C0()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5F9DA2C()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t RoutingContext.reset(with:priority:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  *(v4 + 16) = sub_1E65E6058();
  *(v4 + 24) = sub_1E65E6048();
  *(v4 + 48) = v8;
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 32) = v11;
  *v11 = v4;
  v11[1] = sub_1E5F9DBFC;

  return v13(a1, 1, v4 + 48, a3, a4);
}

{
  v8 = *a2;
  *(v4 + 16) = sub_1E65E6058();
  *(v4 + 24) = sub_1E65E6048();
  *(v4 + 48) = v8;
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 32) = v11;
  *v11 = v4;
  v11[1] = sub_1E5F9DBFC;

  return v13(a1, 1, v4 + 48, a3, a4);
}

uint64_t sub_1E5F9DBFC()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v14 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    v6 = sub_1E65E5FC8();
    v8 = v7;
    v9 = sub_1E5F9F07C;
  }

  else
  {
    v10 = *(v2 + 16);
    v11 = *(v2 + 24);
    v6 = sub_1E65E5FC8();
    v8 = v12;
    v9 = sub_1E5F9F080;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, v8);
}

uint64_t RoutingContext.dismiss()(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1E65E6058();
  v2[3] = sub_1E65E6048();
  v5 = *(a2 + 64);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v2[4] = v7;
  *v7 = v2;
  v7[1] = sub_1E5F9DFE8;

  return v9(1, a1, a2);
}

uint64_t sub_1E5F9DFE8()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_1E65E5FC8();
  if (v2)
  {
    v8 = sub_1E5F9F07C;
  }

  else
  {
    v8 = sub_1E5F9F080;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t RoutingContext.presentDestination(_:style:priority:)(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *a3;
  *(v5 + 32) = sub_1E65E6058();
  *(v5 + 40) = sub_1E65E6048();
  *(v5 + 16) = v9;
  *(v5 + 24) = v10;
  *(v5 + 25) = v11;
  v12 = *(a5 + 72);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v5 + 48) = v14;
  *v14 = v5;
  v14[1] = sub_1E5F9E2C8;

  return v16(a1, v5 + 16, 1, v5 + 25, a4, a5);
}

uint64_t sub_1E5F9E2C8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v14 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = *(v2 + 40);
    v6 = sub_1E65E5FC8();
    v8 = v7;
    v9 = sub_1E5F9E470;
  }

  else
  {
    v10 = *(v2 + 32);
    v11 = *(v2 + 40);
    v6 = sub_1E65E5FC8();
    v8 = v12;
    v9 = sub_1E5F9E40C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, v8);
}

uint64_t sub_1E5F9E40C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5F9E470()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t RoutingContext.presentDestinations(_:style:priority:)(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *a3;
  *(v5 + 32) = sub_1E65E6058();
  *(v5 + 40) = sub_1E65E6048();
  *(v5 + 16) = v9;
  *(v5 + 24) = v10;
  *(v5 + 25) = v11;
  v12 = *(a5 + 80);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v5 + 48) = v14;
  *v14 = v5;
  v14[1] = sub_1E5F9E658;

  return v16(a1, v5 + 16, 1, v5 + 25, a4, a5);
}

uint64_t sub_1E5F9E658()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v14 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = *(v2 + 40);
    v6 = sub_1E65E5FC8();
    v8 = v7;
    v9 = sub_1E5F9F078;
  }

  else
  {
    v10 = *(v2 + 32);
    v11 = *(v2 + 40);
    v6 = sub_1E65E5FC8();
    v8 = v12;
    v9 = sub_1E5F9F084;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, v8);
}

uint64_t dispatch thunk of RoutingContext.appendDestination(_:animated:priority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1E5DFE6BC;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of RoutingContext.removeLast(animated:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1E5DFA78C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of RoutingContext.reset(with:animated:priority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 48);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1E5DFE6BC;

  return v15(a1, a2, a3, a4, a5);
}

{
  v11 = *(a5 + 56);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1E5DFE6BC;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of RoutingContext.dismiss(animated:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1E5DFE6BC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of RoutingContext.presentDestination(_:style:animated:priority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 72);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1E5DFE6BC;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of RoutingContext.presentDestinations(_:style:animated:priority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 80);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1E5DFE6BC;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1E5F9F088()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5F9F0D0(uint64_t *a1, int a2)
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

uint64_t sub_1E5F9F118(uint64_t result, int a2, int a3)
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

uint64_t sub_1E5F9F178(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  v4 = *(a2 + 16);
  return sub_1E5F9F324(*v2);
}

uint64_t sub_1E5F9F1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB778](a1, a2, a3, WitnessTable);
}

uint64_t sub_1E5F9F24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB740](a1, a2, a3, WitnessTable);
}

void sub_1E5F9F2C8()
{
  swift_getWitnessTable();
  sub_1E65E4358();
  __break(1u);
}

uint64_t sub_1E5F9F34C(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1E65E6958();
    v9 = *(type metadata accessor for RouteDestination() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v13, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1E65E6928();
      v12 = *(v14 + 16);
      sub_1E65E6968();
      sub_1E65E6978();
      sub_1E65E6938();
      v10 += v11;
      if (!--v6)
      {
        return v14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E5F9F530(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(BOOL, unint64_t, uint64_t), uint64_t (*a7)(void))
{
  v10 = v7;
  v28 = a1;
  v29 = a2;
  v26 = a4;
  v27 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v24 - v15;
  v17 = *(a3 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (!v17)
  {
    return v18;
  }

  v30 = MEMORY[0x1E69E7CC0];
  v24 = a6;
  a6(0, v17, 0);
  v18 = v30;
  v19 = *(a7(0) - 8);
  v20 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v25 = *(v19 + 72);
  while (1)
  {
    v28(v20);
    if (v10)
    {
      break;
    }

    v10 = 0;
    v30 = v18;
    v22 = *(v18 + 16);
    v21 = *(v18 + 24);
    if (v22 >= v21 >> 1)
    {
      v24(v21 > 1, v22 + 1, 1);
      v18 = v30;
    }

    *(v18 + 16) = v22 + 1;
    sub_1E5FAB460(v16, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v22, v26, v27);
    v20 += v25;
    if (!--v17)
    {
      return v18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5F9F890(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = v4;
  v23 = a1;
  v24 = a2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A0, &qword_1E65EA788);
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v11 = &v19 - v10;
  v12 = *(a3 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
    return v13;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1E601C670(0, v12, 0);
  v13 = v25;
  v14 = *(a4(0) - 8);
  v15 = a3 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v21 = v8 + 32;
  v20 = *(v14 + 72);
  while (1)
  {
    v23(v15);
    if (v6)
    {
      break;
    }

    v6 = 0;
    v25 = v13;
    v17 = *(v13 + 16);
    v16 = *(v13 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1E601C670(v16 > 1, v17 + 1, 1);
      v13 = v25;
    }

    *(v13 + 16) = v17 + 1;
    (*(v8 + 32))(v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17, v11, v22);
    v15 += v20;
    if (!--v12)
    {
      return v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5F9FAF8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v9 = v6;
  v26 = a1;
  v27 = a2;
  v25 = a4(0);
  v11 = *(v25 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v14 = &v22 - v13;
  v15 = *(a3 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (!v15)
  {
    return v16;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v22 = a5;
  a5(0, v15, 0);
  v16 = v28;
  v17 = *(a6(0) - 8);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v24 = v11 + 32;
  v23 = *(v17 + 72);
  while (1)
  {
    v26(v18);
    if (v9)
    {
      break;
    }

    v9 = 0;
    v28 = v16;
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    if (v20 >= v19 >> 1)
    {
      v22(v19 > 1, v20 + 1, 1);
      v16 = v28;
    }

    *(v16 + 16) = v20 + 1;
    (*(v11 + 32))(v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v14, v25);
    v18 += v23;
    if (!--v15)
    {
      return v16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5F9FD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18[0] = a1;
  v18[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A8, &qword_1E65EA790);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v18 - v9;
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v20 = MEMORY[0x1E69E7CC0];
  sub_1E601BE24(0, v11, 0);
  v12 = v20;
  for (i = (a3 + 40); ; i += 2)
  {
    v14 = *i;
    v19[0] = *(i - 1);
    v19[1] = v14;

    (v18[0])(v19);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v20 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1E601BE24(v15 > 1, v16 + 1, 1);
      v12 = v20;
    }

    *(v12 + 16) = v16 + 1;
    sub_1E5FAB460(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &qword_1ED0720A8, &qword_1E65EA790);
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5F9FF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v6 = type metadata accessor for RouteDestination();
  v4[17] = v6;
  v7 = *(v6 - 8);
  v4[18] = v7;
  v8 = *(v7 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  sub_1E65E6058();
  v4[21] = sub_1E65E6048();
  v10 = sub_1E65E5FC8();
  v4[22] = v10;
  v4[23] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA0068, v10, v9);
}

uint64_t sub_1E5FA0068()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  *(v0 + 192) = v2;
  if (v2)
  {
    v3 = *(v0 + 120);
    sub_1E5E24688(v1 + ((*(*(v0 + 144) + 80) + 32) & ~*(*(v0 + 144) + 80)) + *(*(v0 + 144) + 72) * (v2 - 1), *(v0 + 160), type metadata accessor for RouteDestination);
    v4 = type metadata accessor for NavigationControllerRoutingContext();
    sub_1E5DFD1CC(v3 + *(v4 + 28), v0 + 16, &unk_1ED072050, &unk_1E65EEAB0);
    v5 = *(v0 + 40);
    if (v5)
    {
      v6 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      v7 = *(v6 + 16);
      v51 = (v7 + *v7);
      v8 = v7[1];
      v9 = swift_task_alloc();
      *(v0 + 200) = v9;
      *v9 = v0;
      v9[1] = sub_1E5FA0564;
      v10 = *(v0 + 160);
      v11 = *(v0 + 128);

      return v51(v11, v10, v5, v6);
    }

    else
    {
      v19 = *(v0 + 168);
      v20 = *(v0 + 136);
      v21 = *(v0 + 144);
      v22 = *(v0 + 128);

      sub_1E5DFE50C(v0 + 16, &unk_1ED072050, &unk_1E65EEAB0);
      (*(v21 + 56))(v22, 1, 1, v20);
      v23 = *(v0 + 136);
      v24 = *(v0 + 144);
      v25 = *(v0 + 128);
      sub_1E5E24688(*(v0 + 160), *(v0 + 152), type metadata accessor for RouteDestination);
      if ((*(v24 + 48))(v25, 1, v23) != 1)
      {
        sub_1E5DFE50C(*(v0 + 128), &unk_1ED072040, &qword_1E65F0860);
      }

      v26 = *(v0 + 192);
      if (v26 == 1)
      {
        v27 = [**(v0 + 120) topViewController];
        v26 = *(v0 + 192);
      }

      else
      {
        v27 = 0;
      }

      v28 = *(v0 + 152);
      v48 = v27;
      v49 = v28;
      v50 = *(v0 + 160);
      v52 = *(v0 + 128);
      v30 = *(v0 + 104);
      v29 = *(v0 + 112);
      v31 = *(v0 + 96);
      v32 = v26 - 1;
      v34 = v29[3];
      v33 = v29[4];
      v35 = __swift_project_boxed_opaque_existential_1(v29, v34);
      v36 = sub_1E625E57C(v30, v27, v35, v28, v34, v33);
      sub_1E5FA0A68(v32, v31);
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v43 = swift_task_alloc();
      *(v43 + 16) = v30;
      *(v43 + 24) = v29;

      v44 = sub_1E5FAAAF4(sub_1E5FAAA88, v43, v38, v40, v42);
      swift_unknownObjectRelease();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E65EA660;
      *(inited + 32) = v36;
      v53 = v44;
      v46 = v36;
      sub_1E5FAA134(inited, sub_1E5FAA640);

      sub_1E5E262E0(v49, type metadata accessor for RouteDestination);
      sub_1E5E262E0(v50, type metadata accessor for RouteDestination);

      v47 = *(v0 + 8);

      return v47(v53);
    }
  }

  else
  {
    v13 = *(v0 + 168);

    sub_1E5FAA54C();
    swift_allocError();
    *v14 = 3;
    swift_willThrow();
    v16 = *(v0 + 152);
    v15 = *(v0 + 160);
    v17 = *(v0 + 128);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1E5FA0564()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);
  if (v0)
  {
    v7 = sub_1E5FA09BC;
  }

  else
  {
    v7 = sub_1E5FA06A0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E5FA06A0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);

  (*(v3 + 56))(v4, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = *(v0 + 208);
    v6 = *(v0 + 136);
    v7 = *(v0 + 144);
    v8 = *(v0 + 128);
    sub_1E5E24688(*(v0 + 160), *(v0 + 152), type metadata accessor for RouteDestination);
    if ((*(v7 + 48))(v8, 1, v6) != 1)
    {
      sub_1E5DFE50C(*(v0 + 128), &unk_1ED072040, &qword_1E65F0860);
    }
  }

  else
  {
    sub_1E5E247DC(*(v0 + 128), *(v0 + 152), type metadata accessor for RouteDestination);
    v9 = *(v0 + 208);
  }

  v10 = *(v0 + 192);
  if (v10 == 1)
  {
    v11 = [**(v0 + 120) topViewController];
    v10 = *(v0 + 192);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v0 + 152);
  v33 = v11;
  v34 = v12;
  v35 = *(v0 + 160);
  v36 = *(v0 + 128);
  v14 = *(v0 + 104);
  v13 = *(v0 + 112);
  v15 = *(v0 + 96);
  v16 = v10 - 1;
  v17 = v13[3];
  v18 = v13[4];
  v19 = __swift_project_boxed_opaque_existential_1(v13, v17);
  v32 = sub_1E625E57C(v14, v11, v19, v12, v17, v18);
  sub_1E5FA0A68(v16, v15);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = swift_task_alloc();
  *(v26 + 16) = v14;
  *(v26 + 24) = v13;

  v27 = sub_1E5FAAAF4(sub_1E5FAAA88, v26, v21, v23, v25);
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA660;
  *(inited + 32) = v32;
  v37 = v27;
  v29 = v32;
  sub_1E5FAA134(inited, sub_1E5FAA640);

  sub_1E5E262E0(v34, type metadata accessor for RouteDestination);
  sub_1E5E262E0(v35, type metadata accessor for RouteDestination);

  v30 = *(v0 + 8);

  return v30(v37);
}