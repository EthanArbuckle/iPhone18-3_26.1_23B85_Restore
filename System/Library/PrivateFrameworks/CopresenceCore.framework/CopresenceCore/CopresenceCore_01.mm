uint64_t sub_1AEB3FED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AEB3FF80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AEB4004C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1AEB4017C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AEB402D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AEB40380(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AEB40424(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AEB404D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AEB4059C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 48);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1AEB40614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 48);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1AEB40690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AEB406FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AEB4076C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AEB40818(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AEB408E0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB40918(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[4];
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();

  return swift_getWitnessTable();
}

__n128 sub_1AEB40990(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 64);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = v4;
  *(a2 + 16) = result;
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_1AEB409AC()
{
  v1 = *(v0 + 96);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1AEB409E4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB40A1C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 6);
  v3 = *(v0 + 10);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 104) & ~v6;
  v8 = *(v5 + 64);
  v9 = *(v0 + 12);

  (*(v5 + 8))(&v0[v7], AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v6 | 7);
}

uint64_t sub_1AEB40B44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + direct field offset for PeoplePickerClient.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1AEB40BA0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + direct field offset for PeoplePickerClient.delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1AEB40C04()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB40C90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB40CC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB40D04()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEB40D54()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEB40DA4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1AEB40DFC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEB40E58(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xC8);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_1AEB40ECC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB40F28(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xF8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1AEB4106C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB410D0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x130);

  return v3(v4);
}

uint64_t sub_1AEB4113C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x148))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB411A0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x150);

  return v3(v4);
}

uint64_t sub_1AEB4120C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x160))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB41270(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x168);

  return v3(v4);
}

uint64_t sub_1AEB413B8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x190))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB4141C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x198);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1AEB4148C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A8))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB41550()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVySay14CopresenceCore23IDSGroupSessionProviderC07CurrentF4InfoVGGMd, &_s15Synchronization5MutexVySay14CopresenceCore23IDSGroupSessionProviderC07CurrentF4InfoVGGMR);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1AEB41588()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB415E8()
{
  v1 = (type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  outlined consume of Data._Representation(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[8];
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v9 = v0 + v3 + v1[9];
  v10 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    outlined consume of Data._Representation(*v9, *(v9 + 8));
    v8(v9 + *(v10 + 24), v7);
    v11 = v9 + *(v10 + 28);
    v12 = type metadata accessor for AttachmentLedger_EncryptionID(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      outlined consume of Data._Representation(*v11, *(v11 + 8));
      v8(v11 + *(v12 + 20), v7);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEB417C4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB417FC()
{
  v1 = (type metadata accessor for AttachmentLedger_AttachmentMetadata(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  outlined consume of Data._Representation(*(v0 + v3), *(v0 + v3 + 8));
  v5 = *(v0 + v3 + 16);

  outlined consume of Data._Representation(*(v0 + v3 + 40), *(v0 + v3 + 48));
  v6 = v1[10];
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v9 = (v0 + v3 + v1[11]);
  v10 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  if (!(*(*(v10 - 1) + 48))(v9, 1, v10))
  {
    v22 = v4;
    v11 = v9[1];

    v12 = v9[3];

    outlined consume of Data._Representation(v9[4], v9[5]);
    outlined consume of Data._Representation(v9[6], v9[7]);
    v8(v9 + v10[8], v7);
    v13 = v9 + v10[9];
    v14 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
    v15 = *(*(v14 - 8) + 48);
    if (!v15(v13, 1, v14))
    {
      outlined consume of Data._Representation(*(v13 + 1), *(v13 + 2));
      v8(&v13[*(v14 + 24)], v7);
    }

    v16 = v9 + v10[10];
    v17 = v15(v16, 1, v14);
    v4 = v22;
    v3 = (v2 + 16) & ~v2;
    if (!v17)
    {
      outlined consume of Data._Representation(*(v16 + 1), *(v16 + 2));
      v8(&v16[*(v14 + 24)], v7);
    }
  }

  v18 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v0 + v18);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v19));

  return MEMORY[0x1EEE6BDD0](v0, v19 + 40, v2 | 7);
}

uint64_t sub_1AEB41A8C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB41AD4()
{
  v1 = (type metadata accessor for AttachmentLedger_AttachmentMetadata(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  outlined consume of Data._Representation(*(v0 + v3), *(v0 + v3 + 8));
  v6 = *(v0 + v3 + 16);

  outlined consume of Data._Representation(*(v0 + v3 + 40), *(v0 + v3 + 48));
  v7 = v1[10];
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v3 + v7, v8);
  v10 = (v0 + v3 + v1[11]);
  v11 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  if (!(*(*(v11 - 1) + 48))(v10, 1, v11))
  {
    v20 = v4;
    v12 = v10[1];

    v13 = v10[3];

    outlined consume of Data._Representation(v10[4], v10[5]);
    outlined consume of Data._Representation(v10[6], v10[7]);
    v9(v10 + v11[8], v8);
    v14 = v10 + v11[9];
    v15 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
    v16 = *(*(v15 - 8) + 48);
    if (!v16(v14, 1, v15))
    {
      outlined consume of Data._Representation(*(v14 + 1), *(v14 + 2));
      v9(&v14[*(v15 + 24)], v8);
    }

    v17 = v10 + v11[10];
    v18 = v16(v17, 1, v15);
    v4 = v20;
    v3 = (v2 + 24) & ~v2;
    if (!v18)
    {
      outlined consume of Data._Representation(*(v17 + 1), *(v17 + 2));
      v9(&v17[*(v15 + 24)], v8);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEB41D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymmetricKey();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Attachment.MMCSMetadata(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1AEB41E54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SymmetricKey();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Attachment.MMCSMetadata(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1AEB41F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AES.GCM.SealedBox();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1AEB42084(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AES.GCM.SealedBox();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1AEB421AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMd, &_sScs12ContinuationVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEB42298()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB422DC()
{
  MEMORY[0x1B27121C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB42314@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1AEB423CC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEB42428(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x88);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_1AEB424A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB424DC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB42530()
{
  outlined consume of Data._Representation(v0[2], v0[3]);
  v1 = v0[4];

  if (v0[5])
  {
    v2 = v0[6];
  }

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEB42594@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 88);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1AEB425E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 88) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1AEB42644()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB4268C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB426CC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v3 | 7);
}

uint64_t sub_1AEB427FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AEB428A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AEB4294C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB42984()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB429C4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5 + 8);

  v11 = *(v0 + v7 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v8 + 8, v3 | 7);
}

uint64_t sub_1AEB42AE4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB42B1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB42B58()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

__n128 sub_1AEB42BC4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1AEB42BD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB42C24()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB42C5C()
{
  outlined consume of ActivitySession.State(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1AEB42C94@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 identifier];
  *a2 = result;
  return result;
}

uint64_t sub_1AEB42CD8()
{
  MEMORY[0x1B27121C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB42D10()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB42D58@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x120))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB42DBC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x128);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

uint64_t sub_1AEB42E28@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x138))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB42EF8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x150))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1AEB42FC0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x198))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @escaping @callee_guaranteed (@guaranteed TUConversationActivitySession, @guaranteed ActivitySessionManager) -> (@owned ActivitySession)partial apply;
  a2[1] = result;
  return result;
}

uint64_t sub_1AEB4313C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2D8))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @escaping @callee_guaranteed (@guaranteed ActivitySessionManager, @in_guaranteed UUID, @unowned UInt64) -> (@owned PubSubTopicsObserver)partial apply;
  a2[1] = result;
  return result;
}

uint64_t sub_1AEB431DC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB43214()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB43294()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB432CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB43344()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB4337C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB433B4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEB43410(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x78);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_1AEB43484@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1AEB43548()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB435A0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  outlined consume of BackgroundSession.State(v0[5]);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB435F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB43638()
{
  v1 = (type metadata accessor for Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEB43720()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEB43768@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_reporter;
  swift_beginAccess();
  return outlined init with copy of UserNotificationCenter(v3 + v4, a2);
}

uint64_t sub_1AEB437C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1AEB43824(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

id sub_1AEB438B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_session;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1AEB43920(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  BackgroundSession.session.setter(v2);
}

uint64_t sub_1AEB439B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  swift_beginAccess();
  return outlined init with copy of ActivitySession.DomainAssertionWrapper?(v3 + v4, a2, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
}

uint64_t sub_1AEB43A28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AEB43A94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AEB43B38()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1AEB43B90()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB43BC8()
{
  v1 = (type metadata accessor for Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[7];
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEB43CD0()
{
  MEMORY[0x1B27121C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB43D44()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1AEB43E34()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB43F18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB43F50()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB43F98()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB43FD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB44010()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB44050()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB44098()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB440E0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB44120()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  outlined consume of Data._Representation(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AEB44178()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEB441C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB441FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB44258(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1AEB442B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + direct field offset for ActivitySessionHostConnection.__isAppProcess);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1AEB44310()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB44348()
{
  MEMORY[0x1B27121C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB44380()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB443C8()
{
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEB44464@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static PresenceSessionInterface.identity;
  return result;
}

uint64_t sub_1AEB444B0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static PresenceSessionInterface.identity = v1;
  return result;
}

uint64_t sub_1AEB445D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB4461C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB44664@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB446C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1AEB4471C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB44754()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEB447C4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x58))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEB44820(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x60);

  return v4(v2, v3);
}

uint64_t sub_1AEB4489C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB44938@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB44984(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 168);
  outlined copy of ActivitySession.State(*a1);
  return v3(v2);
}

uint64_t sub_1AEB449E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB44A2C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 192);

  return v3(v4);
}

uint64_t sub_1AEB44A80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB44ACC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 216);

  return v3(v4);
}

uint64_t sub_1AEB44B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PluginEndpoint();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1AEB44BE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PluginEndpoint();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AEB44C9C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB44CDC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB44D58()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB44D90@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB44DEC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xD0);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

uint64_t sub_1AEB44F10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB44F60(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

char *sub_1AEB450F0(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    *(result + 1) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[8]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1AEB4527C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1AEB452F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1AEB45370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1AEB45428(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AEB454F4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB45530()
{
  v1 = v0[2];

  outlined consume of Data._Representation(v0[5], v0[6]);
  v2 = v0[8];

  v3 = v0[9];

  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1AEB45638()
{
  outlined consume of Data._Representation(v0[4], v0[5]);
  v1 = v0[7];

  v2 = v0[8];

  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AEB45688()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB456C8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB45710()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEB45754@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 144);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1AEB457A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 144) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1AEB45864@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 32);
  *a2 = *(result + 24);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1AEB45878(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 24) = *result;
  *(a2 + 32) = v2;
  return result;
}

uint64_t sub_1AEB4588C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB458C4()
{
  v1 = *(v0 + 16);

  outlined consume of PubSubTopic.ClosedReason(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1AEB45908()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB45950()
{
  v1 = (type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  v7 = *(v0 + v3 + 8);

  v8 = v1[8];
  v9 = type metadata accessor for UnknownStorage();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEB45A48()
{
  v1 = (type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 32);

  v7 = *(v0 + v3 + 8);

  v8 = v1[8];
  v9 = type metadata accessor for UnknownStorage();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEB45B40()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1AEB45B8C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB45BC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB45BFC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB45C34()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB45C74()
{
  v1 = (type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  MEMORY[0x1B27121C0](v0 + v3 + v1[7]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEB45D64()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEB45E28@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB45EDC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB45F38(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xE0);

  return v3(v4);
}

uint64_t sub_1AEB4605C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x108))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB460C0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x110);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1AEB46130@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x120))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB46194(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x128);

  return v3(v4);
}

uint64_t sub_1AEB46200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AEB4626C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AEB462DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB46330()
{
  v1 = (type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  MEMORY[0x1B27121C0](v0 + v3 + v1[7]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEB46418()
{
  v1 = (type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  MEMORY[0x1B27121C0](v0 + v3 + v1[7]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEB46540()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB46580()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB465BC()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB46608()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEB4664C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEB46710()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AEB467EC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t sub_1AEB468E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x188))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEB4694C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x190);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_1AEB469C8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A0))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB46A2C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1A8);

  return v3(v4);
}

uint64_t sub_1AEB46B74@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1D0))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB46BD8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1D8);

  return v3(v4);
}

uint64_t sub_1AEB46C44()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB46C80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB46CF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEB46D40(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 128);

  return v4(v2, v3);
}

uint64_t sub_1AEB46DA8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB46DE0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static GroupActivityAssociation.supportsSecureCoding;
  return result;
}

uint64_t sub_1AEB46E2C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static GroupActivityAssociation.supportsSecureCoding = v1;
  return result;
}

id sub_1AEB46E74@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isCloned];
  *a2 = result;
  return result;
}

uint64_t sub_1AEB46EA8()
{
  MEMORY[0x1B27121C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB46EE0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEB46F3C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x90);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_1AEB46FB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB46FFC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 112);

  return v3(v4);
}

uint64_t sub_1AEB47050@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB470A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB470EC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 168);

  return v3(v4);
}

uint64_t sub_1AEB47150()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB47188@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1AEB47240@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB4729C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xC8);

  return v3(v4);
}

uint64_t sub_1AEB473D0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF0))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CNContactStoreConfiguration) -> (@owned TUContactsDataSource);
  a2[1] = result;
  return result;
}

uint64_t sub_1AEB4746C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB474A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB474E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB4751C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB47568()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore16OperationManagerC0C8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_pGMd, &_sScSy14CopresenceCore16OperationManagerC0C8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEB47638(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v6 = *(a3 + 16);
    v7 = *(a3 + 24);
    v8 = *(a3 + 32);
    type metadata accessor for CheckedContinuation();
    v11 = type metadata accessor for Optional();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

void *sub_1AEB47700(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v6 = *(a4 + 16);
    v7 = *(a4 + 24);
    v8 = *(a4 + 32);
    type metadata accessor for CheckedContinuation();
    v10 = type metadata accessor for Optional();
    v11 = *(*(v10 - 8) + 56);
    v12 = v5 + *(a4 + 44);

    return v11(v12, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1AEB477BC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB477F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB47844(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 96);

  return v3(v4);
}

uint64_t sub_1AEB47898@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_1AEB478E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB47934(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 136);

  return v3(v4);
}

uint64_t sub_1AEB47988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AEB479E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AEB47A48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB47A94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14CopresenceCore9Histogram_totalCount;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1AEB47AE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = DarwinNotification.state.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB47B14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return notify_set_state(*(v3 + 32), v2);
}

uint64_t sub_1AEB47B70()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB47BA8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB47BE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + direct field offset for PeoplePickerHostConnection.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1AEB47C40(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + direct field offset for PeoplePickerHostConnection.delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1AEB47CD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEB47D68()
{
  v1 = v0[2];

  v2 = v0[4];

  if (v0[18])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);
  }

  v3 = v0[20];
  swift_unknownObjectRelease();
  v4 = v0[22];

  return MEMORY[0x1EEE6BDD0](v0, 184, 7);
}

uint64_t sub_1AEB47DC8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB47E00()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v4 = v0[22];
  swift_unknownObjectRelease();
  v5 = v0[24];

  return MEMORY[0x1EEE6BDD0](v0, 200, 7);
}

uint64_t sub_1AEB47E90()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB47EC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB47F08@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB47F64(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xD0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1AEB47FCC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB48028(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xE8);

  return v3(v4);
}

uint64_t sub_1AEB480D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEB48124(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 200);

  return v3(v4);
}

uint64_t sub_1AEB48178()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB481B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata() + 20));
  v4 = *v3;
  v5 = v3[1];
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v3;
  }

  v7 = 0xC000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v5;
  }

  *a2 = v6;
  a2[1] = v7;

  return outlined copy of Data?(v4, v5);
}

uint64_t sub_1AEB48214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_1AEB482DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_1AEB483A4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x58))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEB48400(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x60);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_1AEB48474()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEB484B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEB484FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 120);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1AEB4854C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 120) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1AEB485A4@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 128);
  return result;
}

uint64_t sub_1AEB485EC(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 128) = v2;
  return result;
}

uint64_t sub_1AEB48630@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 176);
}

uint64_t sub_1AEB48680@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 184);
}

uint64_t sub_1AEB486D0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEB48710@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result & 1;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id CPDefaultLog()
{
  if (CPDefaultLog_onceToken != -1)
  {
    CPDefaultLog_cold_1();
  }

  v1 = CPDefaultLog_CPDefaultLog;

  return v1;
}

uint64_t __CPDefaultLog_block_invoke()
{
  CPDefaultLog_CPDefaultLog = os_log_create(CPLoggingSubsystem, "Default");

  return MEMORY[0x1EEE66BB8]();
}

__CFString *stateNameForPGBackgroundPIPAuthorizationState(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"Unknown state";
  }

  else
  {
    return off_1E7A45BE8[a1];
  }
}

id getGKDaemonProxyClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getGKDaemonProxyClass_softClass;
  v7 = getGKDaemonProxyClass_softClass;
  if (!getGKDaemonProxyClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getGKDaemonProxyClass_block_invoke;
    v3[3] = &unk_1E7A45C70;
    v3[4] = &v4;
    __getGKDaemonProxyClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AEB4C9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id cpGameCenterLog()
{
  if (cpGameCenterLog___once != -1)
  {
    cpGameCenterLog_cold_1();
  }

  v1 = cpGameCenterLog__log;

  return v1;
}

Class __getGKDaemonProxyClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!GameCenterFoundationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __GameCenterFoundationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7A45C90;
    v7 = 0;
    GameCenterFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (GameCenterFoundationLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("GKDaemonProxy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getGKDaemonProxyClass_block_invoke_cold_1();
  }

  getGKDaemonProxyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __GameCenterFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  GameCenterFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __cpGameCenterLog_block_invoke()
{
  cpGameCenterLog__log = os_log_create(CPLoggingSubsystem, "CPGameCenterUtilities");

  return MEMORY[0x1EEE66BB8]();
}

Swift::Int ActivitySession.Errors.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ActivitySession.Errors()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ActivitySession.Errors()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](v1);
  return Hasher._finalize()();
}

uint64_t ActivitySession.State.description.getter()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    return 0x6164696C61766E49;
  }

  if (v2 == 1)
  {
    return 0x664F6465646E6148;
  }

  v4 = 0x64656E696F4ALL;
  if (v1 != 0x8000000000000008)
  {
    v4 = 1952867660;
  }

  if (v1 == 0x8000000000000000)
  {
    return 0x676E6974696157;
  }

  else
  {
    return v4;
  }
}

uint64_t static ActivitySession.State.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (!v4)
  {
    if (v3 >> 62)
    {
      goto LABEL_22;
    }

    v7 = *(v2 + 24);
    v8 = *(v3 + 24);
    if (v7)
    {
      if (v8)
      {
        if (*(v2 + 16) != *(v3 + 16) || v7 != v8)
        {
          v10 = *(v3 + 24);
          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of ActivitySession.State(v3);
          outlined copy of ActivitySession.State(v2);
          outlined consume of ActivitySession.State(v2);
          outlined consume of ActivitySession.State(v3);
          if ((v11 & 1) == 0)
          {
LABEL_24:
            v6 = 0;
            return v6 & 1;
          }

LABEL_32:
          v6 = 1;
          return v6 & 1;
        }

        outlined copy of ActivitySession.State(v3);
        outlined copy of ActivitySession.State(v2);
        goto LABEL_30;
      }

      outlined copy of ActivitySession.State(v3);
      outlined copy of ActivitySession.State(v2);
    }

    else
    {
      outlined copy of ActivitySession.State(v3);
      outlined copy of ActivitySession.State(v2);
      if (!v8)
      {
        swift_bridgeObjectRelease_n();
LABEL_30:
        outlined consume of ActivitySession.State(v2);
        v12 = v3;
LABEL_31:
        outlined consume of ActivitySession.State(v12);
        goto LABEL_32;
      }
    }

    goto LABEL_23;
  }

  if (v4 != 1)
  {
    if (v2 == 0x8000000000000000)
    {
      if (v3 != 0x8000000000000000)
      {
        goto LABEL_22;
      }

      outlined consume of ActivitySession.State(0x8000000000000000);
      v12 = 0x8000000000000000;
    }

    else if (v2 == 0x8000000000000008)
    {
      if (v3 != 0x8000000000000008)
      {
        goto LABEL_22;
      }

      outlined consume of ActivitySession.State(0x8000000000000008);
      v12 = 0x8000000000000008;
    }

    else
    {
      if (v3 != 0x8000000000000010)
      {
        goto LABEL_22;
      }

      outlined consume of ActivitySession.State(0x8000000000000010);
      v12 = 0x8000000000000010;
    }

    goto LABEL_31;
  }

  if (v3 >> 62 != 1)
  {
LABEL_22:
    outlined copy of ActivitySession.State(*a2);
    outlined copy of ActivitySession.State(v2);
LABEL_23:
    outlined consume of ActivitySession.State(v2);
    outlined consume of ActivitySession.State(v3);
    goto LABEL_24;
  }

  v5 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v14 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v15 = v5;
  outlined copy of ActivitySession.State(v3);
  outlined copy of ActivitySession.State(v2);
  v6 = static ActivitySession.State.== infix(_:_:)(&v15, &v14);
  outlined consume of ActivitySession.State(v2);
  outlined consume of ActivitySession.State(v3);
  return v6 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ActivitySession.State()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    return 0x6164696C61766E49;
  }

  if (v2 == 1)
  {
    return 0x664F6465646E6148;
  }

  v4 = 0x64656E696F4ALL;
  if (v1 != 0x8000000000000008)
  {
    v4 = 1952867660;
  }

  if (v1 == 0x8000000000000000)
  {
    return 0x676E6974696157;
  }

  else
  {
    return v4;
  }
}

char *ActivitySession.Capabilities.pluginNames.getter()
{
  if ((*v0 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1);
  }

  *(v1 + 2) = v3 + 1;
  v4 = &v1[16 * v3];
  *(v4 + 4) = 0xD000000000000010;
  *(v4 + 5) = 0x80000001AEE2EFD0;
  return v1;
}

uint64_t *ActivitySession.Capabilities.attachments.unsafeMutableAddressor()
{
  if (one-time initialization token for attachments != -1)
  {
    swift_once();
  }

  return &static ActivitySession.Capabilities.attachments;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t ActivitySession.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CPActivitySession_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path setter for ActivitySession.activityInterval : ActivitySession(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for DateInterval();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x178))(v7);
}

uint64_t ActivitySession.activityInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CPActivitySession_activityInterval;
  swift_beginAccess();
  v4 = type metadata accessor for DateInterval();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t ActivitySession.activityInterval.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPActivitySession_activityInterval;
  swift_beginAccess();
  v4 = type metadata accessor for DateInterval();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t key path getter for ActivitySession.terminatingHandle : ActivitySession@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x188))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ActivitySession.terminatingHandle : ActivitySession(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x190);
  v4 = *a1;
  return v3(v2);
}

void *ActivitySession.terminatingHandle.getter()
{
  v1 = OBJC_IVAR___CPActivitySession_terminatingHandle;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ActivitySession.terminatingHandle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPActivitySession_terminatingHandle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for ActivitySession.isFirstJoin : ActivitySession@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A0))();
  *a2 = result & 1;
  return result;
}

uint64_t ActivitySession.isFirstJoin.getter()
{
  v1 = OBJC_IVAR___CPActivitySession_isFirstJoin;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ActivitySession.isFirstJoin.setter(char a1)
{
  v3 = OBJC_IVAR___CPActivitySession_isFirstJoin;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ActivitySession.isPermittedToJoin.getter()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2F8))(&v6);
  if (v6 >> 62 == 1)
  {
    v2 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v3 = v2 >> 62;
    v4 = (v2 & 0x3FFFFFFFFFFFFFF7) == 0;
    v1 = v3 == 2 && v4;
    goto LABEL_9;
  }

  if (v6 >> 62 != 2 || (v6 | 8) != 0x8000000000000008)
  {
    v1 = 0;
LABEL_9:
    outlined consume of ActivitySession.State(v6);
    return v1;
  }

  return 1;
}

uint64_t ActivitySession.persistentSceneIdentifier.getter()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C8))(v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  BidirectionalCollection.last.getter();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  return v2;
}

uint64_t ActivitySession.persistentSceneIdentifiers.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___CPActivitySession_sceneAssociationCoordinator);
  if (v3)
  {
    v4 = atomic_load((v3 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch));
    if (v4 == -1)
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v5 = [*(v3 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager) scenesInBranchWithIndex_];
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v10 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    *&v8 = v6;
    outlined init with take of ContiguousBytes(&v8, v11);
    return outlined init with take of ContiguousBytes(v11, a1);
  }

  else
  {
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    result = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    a1[4] = result;
    *a1 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t ActivitySession.primarySceneAssociationIdentifier.getter()
{
  if (!*(v0 + OBJC_IVAR___CPActivitySession_sceneAssociationCoordinator))
  {
    return 0;
  }

  v1 = ActivitySession.SceneAssociationCoordinator.associatedBranchAppProvidedAssociation.getter();
  if (!v1)
  {
    return 0;
  }

  v2 = *&v1[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID];
  v3 = *&v1[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID + 8];
  v4 = v1;

  return v2;
}

uint64_t ActivitySession.didAssociateScene.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPActivitySession_sceneAssociationCoordinator);
  if (!v1)
  {
    return 0;
  }

  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
  v3 = v1;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

void *ActivitySession.sceneAssociationCoordinator.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPActivitySession_sceneAssociationCoordinator);
  v2 = v1;
  return v1;
}

uint64_t key path getter for ActivitySession.persistentSceneIsEligibleForAutoClose : ActivitySession@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1E0))();
  *a2 = result & 1;
  return result;
}

Swift::Void __swiftcall ActivitySession.sessionChanged()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR___CPActivitySession_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (one-time initialization token for host == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_1AEB26000, v10, v11, "%@ notifying manager of change", v12, 0xCu);
    outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  if ((*((*MEMORY[0x1E69E7D40] & *v9) + 0x3D8))())
  {
    v16 = v15;
    ObjectType = swift_getObjectType();
    (*(v16 + 72))(v9, ObjectType, v16);
    swift_unknownObjectRelease();
  }
}

uint64_t ActivitySession.persistentSceneIsEligibleForAutoClose.getter()
{
  v1 = OBJC_IVAR___CPActivitySession_persistentSceneIsEligibleForAutoClose;
  swift_beginAccess();
  return *(v0 + v1);
}

void ActivitySession.persistentSceneIsEligibleForAutoClose.setter(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR___CPActivitySession_persistentSceneIsEligibleForAutoClose;
  swift_beginAccess();
  v9 = *(v1 + v8);
  *(v1 + v8) = a1;
  v10 = *(v1 + OBJC_IVAR___CPActivitySession_queue);
  *v7 = v10;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v10)
  {
    if (v9 != *(v1 + v8))
    {
      ActivitySession.sessionChanged()();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t key path getter for ActivitySession.audioSessionID : ActivitySession@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F8))();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t ActivitySession.audioSessionID.getter()
{
  v1 = (v0 + OBJC_IVAR___CPActivitySession_audioSessionID);
  swift_beginAccess();
  return *v1 | (*(v1 + 4) << 32);
}

uint64_t ActivitySession.audioSessionID.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___CPActivitySession_audioSessionID;
  result = swift_beginAccess();
  *v3 = a1;
  *(v3 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t key path getter for ActivitySession.externalParticipants : ActivitySession@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x210))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ActivitySession.externalParticipants : ActivitySession(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x218);

  return v3(v4);
}

uint64_t key path setter for ActivitySession.domainAssertion : ActivitySession(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15ActivitySessionC22DomainAssertionWrapperVSgMd, &_s14CopresenceCore15ActivitySessionC22DomainAssertionWrapperVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v9 - v6, &_s14CopresenceCore15ActivitySessionC22DomainAssertionWrapperVSgMd, &_s14CopresenceCore15ActivitySessionC22DomainAssertionWrapperVSgMR);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x230))(v7);
}

uint64_t ActivitySession.domainAssertion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CPActivitySession_domainAssertion;
  swift_beginAccess();
  return outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v3, a1, &_s14CopresenceCore15ActivitySessionC22DomainAssertionWrapperVSgMd, &_s14CopresenceCore15ActivitySessionC22DomainAssertionWrapperVSgMR);
}

uint64_t ActivitySession.domainAssertion.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPActivitySession_domainAssertion;
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(a1, v1 + v3, &_s14CopresenceCore15ActivitySessionC22DomainAssertionWrapperVSgMd, &_s14CopresenceCore15ActivitySessionC22DomainAssertionWrapperVSgMR);
  return swift_endAccess();
}

uint64_t key path getter for ActivitySession.distributionCount : ActivitySession@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x258))();
  *a2 = result;
  return result;
}

uint64_t ActivitySession.distributionCount.getter()
{
  v1 = OBJC_IVAR___CPActivitySession_distributionCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ActivitySession.distributionCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPActivitySession_distributionCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void ActivitySession.changeStatusForExternalParticipants(updatedParticipants:)(uint64_t a1)
{
  v2 = v1;
  v58 = type metadata accessor for DispatchPredicate();
  v57 = *(v58 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v56 = (v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for TUExternalParticipant();
    lazy protocol witness table accessor for type TUExternalParticipant and conformance NSObject(&lazy protocol witness table cache variable for type TUExternalParticipant and conformance NSObject, MEMORY[0x1E69D8A28]);
    Set.Iterator.init(_cocoa:)();
    a1 = v69[4];
    v6 = v69[5];
    v8 = v69[6];
    v7 = v69[7];
    v9 = v69[8];
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v7 = 0;
  }

  v55[1] = v8;
  v13 = (v8 + 64) >> 6;
  v62 = v2;
  v61 = a1;
  v60 = v6;
  v59 = v13;
  if (a1 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v7;
  v15 = v9;
  v16 = v7;
  if (v9)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(a1 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_38;
    }

    while (1)
    {
      v67 = v18;
      v65 = v17;
      v20 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x210))();
      v21 = v20;
      v64 = v16;
      if ((v20 & 0xC000000000000001) != 0)
      {
        __CocoaSet.makeIterator()();
        type metadata accessor for TUExternalParticipant();
        lazy protocol witness table accessor for type TUExternalParticipant and conformance NSObject(&lazy protocol witness table cache variable for type TUExternalParticipant and conformance NSObject, MEMORY[0x1E69D8A28]);
        Set.Iterator.init(_cocoa:)();
        v21 = v69[9];
        v22 = v69[10];
        v23 = v69[11];
        v24 = v69[12];
        v25 = v69[13];
      }

      else
      {
        v24 = 0;
        v26 = -1 << *(v20 + 32);
        v22 = v20 + 56;
        v23 = ~v26;
        v27 = -v26;
        v28 = v27 < 64 ? ~(-1 << v27) : -1;
        v25 = v28 & *(v20 + 56);
      }

      v63 = v23;
      v29 = (v23 + 64) >> 6;
      if ((v21 & 0x8000000000000000) == 0)
      {
        break;
      }

      while (1)
      {
        v35 = __CocoaSet.Iterator.next()();
        if (!v35)
        {
          goto LABEL_34;
        }

        v68 = v35;
        type metadata accessor for TUExternalParticipant();
        swift_dynamicCast();
        v34 = v69[0];
        v32 = v24;
        v33 = v25;
        if (!v69[0])
        {
          goto LABEL_34;
        }

LABEL_31:
        v66 = v25;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
        v36 = [v34 identifier];
        v37 = [v67 identifier];
        v38 = static NSObject.== infix(_:_:)();

        if (v38)
        {
          break;
        }

        v24 = v32;
        v25 = v33;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }
      }

      v2 = v62;
      v39 = *((*MEMORY[0x1E69E7D40] & *v62) + 0x220);
      v40 = v39(v69);

      v40(v69, 0);
      v41 = v67;
      v42 = v39(v69);
      specialized Set._Variant.insert(_:)(&v68, v41);

      v42(v69, 0);
      outlined consume of Set<String>.Iterator._Variant();
      v7 = v64;
      v9 = v65;
LABEL_35:
      a1 = v61;
      v6 = v60;
      v13 = v59;
      if ((v61 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v19 = __CocoaSet.Iterator.next()();
      if (v19)
      {
        v68 = v19;
        type metadata accessor for TUExternalParticipant();
        swift_dynamicCast();
        v18 = v69[0];
        v16 = v7;
        v17 = v9;
        if (v69[0])
        {
          continue;
        }
      }

      goto LABEL_38;
    }

LABEL_23:
    v30 = v24;
    v31 = v25;
    v32 = v24;
    if (!v25)
    {
      while (1)
      {
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v32 >= v29)
        {
          goto LABEL_34;
        }

        v31 = *(v22 + 8 * v32);
        ++v30;
        if (v31)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_27:
    v33 = (v31 - 1) & v31;
    v34 = *(*(v21 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v31)))));
    if (v34)
    {
      goto LABEL_31;
    }

LABEL_34:
    outlined consume of Set<String>.Iterator._Variant();

    v7 = v64;
    v9 = v65;
    v2 = v62;
    goto LABEL_35;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_44;
    }

    if (v16 >= v13)
    {
      break;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

LABEL_38:
  outlined consume of Set<String>.Iterator._Variant();
  v43 = *(v2 + OBJC_IVAR___CPActivitySession_queue);
  v44 = v56;
  *v56 = v43;
  v45 = v57;
  v46 = v58;
  (*(v57 + 104))(v44, *MEMORY[0x1E69E8020], v58);
  v47 = v43;
  LOBYTE(v43) = _dispatchPreconditionTest(_:)();
  v48 = (*(v45 + 8))(v44, v46);
  if ((v43 & 1) == 0)
  {
    goto LABEL_45;
  }

  v49 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x408))(v48);
  if (!v49)
  {
    goto LABEL_42;
  }

  v50 = v49;
  v51 = [*(v49 + direct field offset for XPCHostConnection.connection) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore24ActivitySessionXPCClient_pMd, &_s14CopresenceCore24ActivitySessionXPCClient_pMR);
  if (!swift_dynamicCast())
  {
LABEL_46:
    __break(1u);
    return;
  }

  v52 = v68;

  v53 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x210))();
  specialized _copyCollectionToContiguousArray<A>(_:)(v53, specialized Sequence._copySequenceContents(initializing:));

  type metadata accessor for TUExternalParticipant();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v52 setExternalParticipants_];

  swift_unknownObjectRelease();
LABEL_42:
  ActivitySession.sessionChanged()();
}

uint64_t key path getter for ActivitySession.applicationState : ActivitySession@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2A8))();
  *a2 = result;
  return result;
}

uint64_t ActivitySession.applicationState.getter()
{
  v1 = OBJC_IVAR___CPActivitySession_applicationState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ActivitySession.applicationState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPActivitySession_applicationState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *key path getter for ActivitySession.capabilities : ActivitySession@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2C0))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for ActivitySession.capabilities : ActivitySession(uint64_t *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2C8))(&v4);
}

uint64_t ActivitySession.capabilities.didset()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR___CPActivitySession_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (one-time initialization token for default == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.default);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2048;
    v14 = OBJC_IVAR___CPActivitySession_capabilities;
    swift_beginAccess();
    *(v12 + 14) = *&v9[v14];
    _os_log_impl(&dword_1AEB26000, v10, v11, "%@ updated capabilities to %ld", v12, 0x16u);
    outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  else
  {
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x3D8))();
  if (result)
  {
    v17 = v16;
    ObjectType = swift_getObjectType();
    (*(v17 + 168))(v9, ObjectType, v17);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ActivitySession.capabilities.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR___CPActivitySession_capabilities;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t ActivitySession.capabilities.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___CPActivitySession_capabilities;
  swift_beginAccess();
  *(v1 + v3) = v2;
  return ActivitySession.capabilities.didset();
}

uint64_t (*ActivitySession.capabilities.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ActivitySession.capabilities.modify;
}

uint64_t ActivitySession.capabilities.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return ActivitySession.capabilities.didset();
  }

  return result;
}

uint64_t key path getter for ActivitySession.reportDictionary : ActivitySession@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2D8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ActivitySession.reportDictionary : ActivitySession(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2E0);

  return v3(v4);
}

uint64_t ActivitySession.externalParticipants.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

void ActivitySession.logDurationMetric(_:)()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x388))();
  v2 = [v1 activity];

  v3 = [v2 metadata];
  if (v3)
  {
    v4 = [v3 context];

    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AEE07B10;
      strcpy((inited + 32), "activity_type");
      *(inited + 46) = -4864;
      v6 = [v4 analyticsIdentifier];
      if (!v6)
      {
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = MEMORY[0x1B270FF70](v7);
      }

      v8 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];

      *(inited + 48) = v8;
      *(inited + 56) = 0x6E6F697461727564;
      *(inited + 64) = 0xE800000000000000;
      DateInterval.duration.getter();
      *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
      swift_arrayDestroy();
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Log.default);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        aBlock[0] = v15;
        *v14 = 136315394;
        *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001AEE2EFF0, aBlock);
        *(v14 + 12) = 2080;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo8NSObjectCGMd, &_sSDySSSo8NSObjectCGMR);
        v16 = String.init<A>(reflecting:)();
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, aBlock);

        *(v14 + 14) = v18;
        _os_log_impl(&dword_1AEB26000, v12, v13, "Logged coreanalytics event %s %s", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v15, -1, -1);
        MEMORY[0x1B27120C0](v14, -1, -1);
      }

      v19 = MEMORY[0x1B270FF70](0xD000000000000028, 0x80000001AEE2EFF0);
      v20 = swift_allocObject();
      *(v20 + 16) = v10;
      aBlock[4] = partial apply for closure #1 in ActivitySession.logDurationMetric(_:);
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
      aBlock[3] = &block_descriptor;
      v21 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v21);
    }
  }
}

void *key path getter for ActivitySession.state : ActivitySession@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2F8))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for ActivitySession.state : ActivitySession(unint64_t *a1, void **a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x300);
  outlined copy of ActivitySession.State(v5);
  return v3(&v5);
}

void ActivitySession.state.didset(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v97 - v6;
  v107 = type metadata accessor for DateInterval();
  v8 = *(v107 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v107);
  v105 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v106 = &v97 - v12;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v104 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v110 = &v97 - v18;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *a1;
  v25 = *(v2 + OBJC_IVAR___CPActivitySession_queue);
  *v23 = v25;
  (*(v20 + 104))(v23, *MEMORY[0x1E69E8020], v19);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  v27 = (*(v20 + 8))(v23, v19);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  v109 = v8;
  v112[0] = v24;
  v111 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x2F8);
  v111(v114, v27);
  v28 = v114[0];
  v113 = v114[0];
  v29 = static ActivitySession.State.== infix(_:_:)(v112, &v113);
  outlined consume of ActivitySession.State(v28);
  if (v29)
  {
    if (one-time initialization token for default == -1)
    {
LABEL_4:
      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Log.default);
      v31 = v2;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        *(v34 + 4) = v31;
        *v35 = v2;
        v36 = v31;
        _os_log_impl(&dword_1AEB26000, v32, v33, "%@ dropping state update since value is the same", v34, 0xCu);
        outlined destroy of NSObject?(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27120C0](v35, -1, -1);
        MEMORY[0x1B27120C0](v34, -1, -1);
      }

      return;
    }

LABEL_52:
    swift_once();
    goto LABEL_4;
  }

  v103 = v13;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Log.default);
  v38 = v2;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  v41 = os_log_type_enabled(v39, v40);
  v101 = v7;
  v102 = v14;
  v108 = v24;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v112[0] = v44;
    *v42 = 138412546;
    *(v42 + 4) = v38;
    *v43 = v2;
    *(v42 + 12) = 2080;
    v45 = v38;
    (v111)(v114);
    v113 = v114[0];
    v46 = String.init<A>(reflecting:)();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v112);

    *(v42 + 14) = v48;
    _os_log_impl(&dword_1AEB26000, v39, v40, "%@ changed to state: %s", v42, 0x16u);
    outlined destroy of NSObject?(v43, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v49 = v43;
    v24 = v108;
    MEMORY[0x1B27120C0](v49, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x1B27120C0](v44, -1, -1);
    MEMORY[0x1B27120C0](v42, -1, -1);
  }

  v50 = MEMORY[0x1E69E7D40];
  v51 = *((*MEMORY[0x1E69E7D40] & *v38) + 0x408);
  v52 = v51();
  if (v52)
  {
    v53 = v52;
    v54 = [*(v52 + direct field offset for XPCHostConnection.connection) remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore24ActivitySessionXPCClient_pMd, &_s14CopresenceCore24ActivitySessionXPCClient_pMR);
    if (!swift_dynamicCast())
    {
      __break(1u);
      return;
    }

    v55 = v114[0];

    (v111)(v112);
    if (v112[0] >> 62)
    {
      if (v112[0] >> 62 == 1)
      {
        outlined consume of ActivitySession.State(v112[0]);
        v56 = 4;
      }

      else if (v112[0] == 0x8000000000000000)
      {
        v56 = 0;
      }

      else if (v112[0] == 0x8000000000000008)
      {
        v56 = 1;
      }

      else
      {
        v56 = 5;
      }
    }

    else
    {
      outlined consume of ActivitySession.State(v112[0]);
      v56 = 2;
    }

    [v55 setStateWithState:v56 error:0];
    v52 = swift_unknownObjectRelease();
  }

  v111(v114, v52);
  if ((v114[0] & 0x8000000000000000) != 0)
  {
    if (v114[0] == 0x8000000000000000)
    {
      goto LABEL_26;
    }

    if (v114[0] == 0x8000000000000008)
    {
      Date.init()();
      v96 = (*((*v50 & *v38) + 0x180))(v112);
      DateInterval.start.setter();
      v96(v112, 0);
      goto LABEL_26;
    }
  }

  else
  {
    outlined consume of ActivitySession.State(v114[0]);
  }

  (*((*v50 & *v38) + 0x410))(0);
LABEL_26:
  v112[0] = v24;
  v114[0] = 0x8000000000000008;
  if ((static ActivitySession.State.== infix(_:_:)(v112, v114) & 1) == 0)
  {
    (v111)(v112);
    v57 = v112[0];
    v113 = 0x8000000000000008;
    v114[0] = v112[0];
    v58 = static ActivitySession.State.== infix(_:_:)(v114, &v113);
    v59 = outlined consume of ActivitySession.State(v57);
    if (v58)
    {
      v60 = (v51)(v59);
      if (v60)
      {
        v61 = v60;
        ActivitySession.acquireAssertionsIfNecessary(for:)();
      }
    }
  }

  (v111)(v112);
  v62 = v112[0];
  v113 = 0x8000000000000008;
  v114[0] = v112[0];
  v63 = static ActivitySession.State.== infix(_:_:)(v114, &v113);
  outlined consume of ActivitySession.State(v62);
  if ((v63 & 1) == 0)
  {
    ActivitySession.invalidateAssertions(useDelay:)(1);
  }

  v112[0] = v24;
  v114[0] = 0x8000000000000008;
  if (static ActivitySession.State.== infix(_:_:)(v112, v114))
  {
    (v111)(v112);
    v64 = v112[0];
    v113 = 0x8000000000000008;
    v114[0] = v112[0];
    v65 = static ActivitySession.State.== infix(_:_:)(v114, &v113);
    outlined consume of ActivitySession.State(v64);
    if ((v65 & 1) == 0)
    {
      Date.init()();
      v66 = MEMORY[0x1E69E7D40];
      v67 = (*((*MEMORY[0x1E69E7D40] & *v38) + 0x180))(v112);
      DateInterval.end.setter();
      v67(v112, 0);
      v68 = (*((*v66 & *v38) + 0x1A8))(0);
      v69 = *((*v66 & *v38) + 0x170);
      v70 = v106;
      (v69)(v68);
      (*((*v66 & *v38) + 0x2F0))(v70);
      v71 = *(v109 + 8);
      v109 += 8;
      v72 = v71(v70, v107);
      v73 = (*((*v66 & *v38) + 0x3D8))(v72);
      if (v73)
      {
        v100 = v73;
        v98 = v74;
        ObjectType = swift_getObjectType();
        v75 = v106;
        v69();
        DateInterval.start.getter();
        v76 = v107;
        v77 = v71(v75, v107);
        v78 = v69;
        v79 = v105;
        (v78)(v77);
        v80 = v104;
        DateInterval.end.getter();
        v71(v79, v76);
        v81 = v110;
        (*(v98 + 128))(v38, v110, v80, ObjectType);
        swift_unknownObjectRelease();
        v82 = *(v102 + 8);
        v83 = v80;
        v84 = v103;
        v82(v83, v103);
        v82(v81, v84);
      }
    }
  }

  v85 = v108;
  v112[0] = v108;
  v114[0] = 0x8000000000000010;
  v86 = static ActivitySession.State.== infix(_:_:)(v112, v114);
  if (v86)
  {
    (v111)(v112);
    v87 = v112[0];
    v113 = 0x8000000000000000;
    v114[0] = v112[0];
    v88 = static ActivitySession.State.== infix(_:_:)(v114, &v113);
    v86 = outlined consume of ActivitySession.State(v87);
    if (v88)
    {
      v89 = v101;
      Date.init()();
      (*(v102 + 56))(v89, 0, 1, v103);
      v90 = OBJC_IVAR___CPActivitySession_permittedJoinTimestamp;
      swift_beginAccess();
      outlined assign with take of ActivitySession.DomainAssertionWrapper?(v89, v38 + v90, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v86 = swift_endAccess();
    }
  }

  v111(v112, v86);
  v91 = v112[0];
  v92 = MEMORY[0x1E69E7D40];
  if ((v112[0] & 0x8000000000000000) == 0)
  {
    outlined consume of ActivitySession.State(v112[0]);
LABEL_41:
    v91 = (*((*v92 & *v38) + 0x2B0))(0);
    goto LABEL_42;
  }

  if (v112[0] != 0x8000000000000000)
  {
    if (v112[0] == 0x8000000000000008)
    {
      goto LABEL_41;
    }

    v91 = (*((*MEMORY[0x1E69E7D40] & *v38) + 0x2B0))(1);
  }

LABEL_42:
  if ((*((*v92 & *v38) + 0x3D8))(v91))
  {
    v94 = v93;
    v95 = swift_getObjectType();
    v112[0] = v85;
    (*(v94 + 120))(v38, v112, v95, v94);
    swift_unknownObjectRelease();
  }
}

uint64_t ActivitySession.State.cpActivitySessionState.getter()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    return 2;
  }

  if (v2 == 1)
  {
    return 4;
  }

  v4 = 1;
  if (v1 != 0x8000000000000008)
  {
    v4 = 5;
  }

  if (v1 == 0x8000000000000000)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

Swift::Void __swiftcall ActivitySession.invalidateAssertions(useDelay:)(Swift::Bool useDelay)
{
  v3 = type metadata accessor for DispatchTimeInterval();
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DispatchTime();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v31 - v12;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = OBJC_IVAR___CPActivitySession_invalidateAssertionsWorkItem;
  v18 = *(v1 + OBJC_IVAR___CPActivitySession_invalidateAssertionsWorkItem);
  if (useDelay)
  {
    if (!v18)
    {
      v31[4] = v16;
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = partial apply for closure #1 in ActivitySession.invalidateAssertions(useDelay:);
      aBlock[5] = v19;
      v31[2] = v19;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_48;
      v31[3] = _Block_copy(aBlock);
      v34 = MEMORY[0x1E69E7CC0];
      v31[1] = lazy protocol witness table accessor for type TUExternalParticipant and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v20 = v1;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v21 = type metadata accessor for DispatchWorkItem();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();
      v24 = DispatchWorkItem.init(flags:block:)();

      v25 = *(v1 + OBJC_IVAR___CPActivitySession_queue);
      static DispatchTime.now()();
      *v6 = 2;
      v26 = v33;
      (*(v33 + 104))(v6, *MEMORY[0x1E69E7F48], v3);
      MEMORY[0x1B270FBE0](v11, v6);
      (*(v26 + 8))(v6, v3);
      v27 = *(v32 + 8);
      v27(v11, v7);
      MEMORY[0x1B2710680](v13, v24);
      v27(v13, v7);
      v28 = *(v20 + v17);
      *(v20 + v17) = v24;
    }
  }

  else
  {
    if (v18)
    {
      v29 = *(v1 + OBJC_IVAR___CPActivitySession_invalidateAssertionsWorkItem);

      dispatch thunk of DispatchWorkItem.cancel()();

      v30 = *(v1 + v17);
      *(v1 + v17) = 0;
    }

    ActivitySession.invalidateDomainAssertion()();
  }
}

uint64_t ActivitySession.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

unint64_t ActivitySession.state.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v1;
  static Published.subscript.setter();
  ActivitySession.state.didset(&v6);
  return outlined consume of ActivitySession.State(v3);
}

unint64_t (*ActivitySession.state.modify(uint64_t a1))(unint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return ActivitySession.state.modify;
}

unint64_t ActivitySession.state.modify(unint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1[2];
  if (a2)
  {
    outlined copy of ActivitySession.State(v4);
    static Published.subscript.getter();

    v6 = a1[1];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v4;
    v7 = v5;
    static Published.subscript.setter();
    v13 = v6;
    ActivitySession.state.didset(&v13);
    outlined consume of ActivitySession.State(v6);
    v8 = *a1;
  }

  else
  {
    v9 = a1[2];
    static Published.subscript.getter();

    v10 = a1[1];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v4;
    v11 = v5;
    static Published.subscript.setter();
    v13 = v10;
    ActivitySession.state.didset(&v13);
    v8 = v10;
  }

  return outlined consume of ActivitySession.State(v8);
}

uint64_t key path setter for ActivitySession.$state : ActivitySession(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore15ActivitySessionC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore15ActivitySessionC5StateO_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x318))(v7);
}

uint64_t ActivitySession.$state.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore15ActivitySessionC5StateOGMd, &_s7Combine9PublishedVy14CopresenceCore15ActivitySessionC5StateOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t ActivitySession.$state.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore15ActivitySessionC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore15ActivitySessionC5StateO_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore15ActivitySessionC5StateOGMd, &_s7Combine9PublishedVy14CopresenceCore15ActivitySessionC5StateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ActivitySession.$state.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore15ActivitySessionC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore15ActivitySessionC5StateO_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___CPActivitySession__state;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore15ActivitySessionC5StateOGMd, &_s7Combine9PublishedVy14CopresenceCore15ActivitySessionC5StateOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivitySession.$state.modify;
}

id ActivitySession.activity.getter()
{
  v1 = OBJC_IVAR___CPActivitySession_activity;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ActivitySession.activity.setter(void *a1)
{
  v3 = OBJC_IVAR___CPActivitySession_activity;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  ActivitySession.activity.didset(v4);
}

uint64_t key path getter for ActivitySession.activity : ActivitySession@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x328))();
  *a2 = result;
  return result;
}

void ActivitySession.activity.didset(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v1[OBJC_IVAR___CPActivitySession_queue];
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (one-time initialization token for default == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.default);
  v11 = v1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412546;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2112;
    v16 = OBJC_IVAR___CPActivitySession_activity;
    swift_beginAccess();
    v17 = *&v11[v16];
    *(v14 + 14) = v17;
    v15[1] = v17;
    v18 = v11;
    v19 = v17;
    _os_log_impl(&dword_1AEB26000, v12, v13, "ActivitySession %@ activity changed to %@", v14, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  v20 = OBJC_IVAR___CPActivitySession_activity;
  swift_beginAccess();
  v21 = [*&v11[v20] metadata];
  [v21 saveImageToDisk];

  v22 = [*&v11[v20] metadata];
  v23 = [a1 metadata];
  v24 = v23;
  if (v22)
  {
    if (v23)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivityMetadata, 0x1E69D8B48);
      v25 = static NSObject.== infix(_:_:)();

      if (v25)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    v24 = v22;
  }

  else if (!v23)
  {
    goto LABEL_16;
  }

LABEL_13:
  v26 = a1;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&dword_1AEB26000, v27, v28, "Cleaning up image for old metadata %@", v29, 0xCu);
    outlined destroy of NSObject?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v30, -1, -1);
    MEMORY[0x1B27120C0](v29, -1, -1);
  }

  v32 = [v26 metadata];
  [v32 removeImageDiskFile];

LABEL_16:
  v33 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x408))();
  if (!v33)
  {
LABEL_19:
    ActivitySession.sessionChanged()();
    return;
  }

  v34 = v33;
  v35 = [*(v33 + direct field offset for XPCHostConnection.connection) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore24ActivitySessionXPCClient_pMd, &_s14CopresenceCore24ActivitySessionXPCClient_pMR);
  if (swift_dynamicCast())
  {
    v36 = v38[4];

    v37 = *&v11[v20];
    [v36 setActivityWithActivity_];

    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  __break(1u);
}

void (*ActivitySession.activity.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CPActivitySession_activity;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return ActivitySession.activity.modify;
}

void ActivitySession.activity.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  v11 = v3[4];
  if (a2)
  {
    v12 = v9;
    ActivitySession.activity.didset(v8);

    v10 = *v5;
  }

  else
  {
    ActivitySession.activity.didset(v8);
  }

  free(v3);
}

uint64_t key path getter for ActivitySession.isLocallyInitiated : ActivitySession@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x340))();
  *a2 = result & 1;
  return result;
}

uint64_t key path setter for ActivitySession.isLocallyInitiated : ActivitySession(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CPActivitySession_isLocallyInitiated;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t ActivitySession.isLocallyInitiated.getter()
{
  v1 = OBJC_IVAR___CPActivitySession_isLocallyInitiated;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t key path getter for ActivitySession.isUsingAirplay : ActivitySession@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x370))();
  *a2 = result & 1;
  return result;
}

uint64_t ActivitySession.isUsingAirplay.getter()
{
  v1 = OBJC_IVAR___CPActivitySession_isUsingAirplay;
  swift_beginAccess();
  return *(v0 + v1);
}

void ActivitySession.isUsingAirplay.setter(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR___CPActivitySession_isUsingAirplay;
  swift_beginAccess();
  *(v1 + v8) = a1;
  v9 = *(v1 + OBJC_IVAR___CPActivitySession_queue);
  *v7 = v9;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v9)
  {
    ActivitySession.sessionChanged()();
  }

  else
  {
    __break(1u);
  }
}

void (*ActivitySession.isUsingAirplay.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = type metadata accessor for DispatchPredicate();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[6] = v8;
  swift_beginAccess();
  return ActivitySession.isUsingAirplay.modify;
}

void ActivitySession.isUsingAirplay.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[6];
  if ((a2 & 1) == 0)
  {
    v5 = v3[4];
    v6 = v3[5];
    v7 = *(v3[3] + OBJC_IVAR___CPActivitySession_queue);
    *v4 = v7;
    (*(v6 + 104))(v4, *MEMORY[0x1E69E8020], v5);
    v8 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    (*(v6 + 8))(v4, v5);
    if ((v7 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v4 = v3[6];
    v9 = v3[3];
    ActivitySession.sessionChanged()();
  }

  free(v4);

  free(v3);
}

uint64_t ActivitySession.tuConversationActivitySession.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v94 - v4;
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x328))(v3);
  [v7 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
  v8 = swift_dynamicCast();
  v9 = v108;
  (*((*v6 & *v0) + 0x2F8))(&v107, v8);
  v102 = v5;
  v99 = v9;
  if (v107 >> 62)
  {
    if (v107 >> 62 == 1)
    {
      outlined consume of ActivitySession.State(v107);
      v10 = 4;
    }

    else
    {
      v11 = 1;
      if (v107 != 0x8000000000000008)
      {
        v11 = 5;
      }

      if (v107 == 0x8000000000000000)
      {
        v10 = 0;
      }

      else
      {
        v10 = v11;
      }
    }
  }

  else
  {
    outlined consume of ActivitySession.State(v107);
    v10 = 2;
  }

  v98 = v10;
  v12 = MEMORY[0x1E69E7D40];
  v13 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x340);
  v97 = *(v0 + OBJC_IVAR___CPActivitySession_endpoint);
  v96 = v13();
  v95 = (*((*v12 & *v0) + 0x1A0))();
  v14 = v12;
  v15 = *v12 & *v0;
  v100 = *(v15 + 0x3C0);
  v101 = v15 + 960;
  v16 = v100();
  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo25TUConversationParticipantC_SD6ValuesVys6UInt64VAE_GTt0g5(v16);
  v103 = v0;
  LOBYTE(v12) = *(v0 + OBJC_IVAR___CPActivitySession_isLocalParticipantActive);
  v17 = (*((*v14 & *v0) + 0x2A8))();
  v18 = objc_allocWithZone(MEMORY[0x1E69D8B58]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v20 = Date._bridgeToObjectiveC()().super.isa;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
  v21 = Set._bridgeToObjectiveC()().super.isa;
  v22 = v103;

  LOBYTE(v93) = v12;
  LOBYTE(v92) = v95 & 1;
  v23 = v18;
  v24 = v99;
  v25 = v97;
  v26 = [v23 initWithActivity:v99 state:v98 uuid:isa endpoint:v97 locallyInitiated:v96 & 1 timestamp:v20 isFirstJoin:v92 activeRemoteParticipants:v21 isLocalParticipantActive:v93 applicationState:v17];

  v27 = MEMORY[0x1E69E7D40];
  v28 = (*((*MEMORY[0x1E69E7D40] & *v22) + 0x188))();
  [v26 setTerminatingHandle_];

  [v26 setDistributionCount_];
  [v26 setIsLightweightPrimaryInitiated_];
  v29 = [v26 setPermittedToJoin_];
  v30 = [v26 setPersistentSceneIsEligibleForAutoClose_];
  (*((*v27 & *v22) + 0x1C8))(v104, v30);
  v32 = v105;
  v31 = v106;
  v33 = __swift_project_boxed_opaque_existential_1(v104, v105);
  v34 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  (*(v36 + 16))(&v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *(*(v31 + 8) + 8);
  Array.init<A>(_:)();
  v38 = Array._bridgeToObjectiveC()().super.isa;

  __swift_destroy_boxed_opaque_existential_1Tm(v104);
  [v26 setPersistentSceneIdentifiers_];

  v39 = (*((*v27 & *v22) + 0x1D0))();
  if (v40)
  {
    v41 = MEMORY[0x1B270FF70](v39);
  }

  else
  {
    v41 = 0;
  }

  [v26 setPrimarySceneAssociationIdentifier_];

  v42 = MEMORY[0x1E69E7D40];
  v43 = [v26 setDidAssociateScene_];
  v44 = [v26 setUsingAirplay_];
  v45 = (*((*v42 & *v22) + 0x1F8))(v44);
  v46 = v102;
  if ((v45 & 0x100000000) != 0)
  {
    v47.super.super.isa = 0;
  }

  else
  {
    v47.super.super.isa = UInt32._bridgeToObjectiveC()().super.super.isa;
  }

  [v26 setClientAudioSessionID_];

  v48 = Date._bridgeToObjectiveC()().super.isa;
  [v26 setLocalCreationTimestamp_];

  v49 = OBJC_IVAR___CPActivitySession_permittedJoinTimestamp;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v22 + v49, v46, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v50 = type metadata accessor for Date();
  v51 = *(v50 - 8);
  v52 = 0;
  if ((*(v51 + 48))(v46, 1, v50) != 1)
  {
    v52 = Date._bridgeToObjectiveC()().super.isa;
    (*(v51 + 8))(v46, v50);
  }

  v99 = v26;
  [v26 setPermittedJoinTimestamp_];

  v53 = v100();
  v108 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8NSNumberC_ADTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v54 = v53 + 64;
  v55 = 1 << *(v53 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & *(v53 + 64);
  v58 = (v55 + 63) >> 6;

  v59 = 0;
  v102 = v53;
  if (v57)
  {
    goto LABEL_27;
  }

LABEL_23:
  while (1)
  {
    v61 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    if (v61 >= v58)
    {

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type NSNumber and conformance NSObject, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      v87 = Dictionary._bridgeToObjectiveC()().super.isa;

      v88 = v99;
      [v99 setParticipantIdentifierMap_];

      v89 = (*((*MEMORY[0x1E69E7D40] & *v103) + 0x210))();
      specialized _copyCollectionToContiguousArray<A>(_:)(v89, specialized Sequence._copySequenceContents(initializing:));

      type metadata accessor for TUExternalParticipant();
      v90 = Array._bridgeToObjectiveC()().super.isa;

      [v88 setExternalParticipants_];

      return v88;
    }

    v57 = *(v54 + 8 * v61);
    ++v59;
    if (v57)
    {
      while (1)
      {
        v62 = __clz(__rbit64(v57));
        v57 &= v57 - 1;
        v63 = (v61 << 9) | (8 * v62);
        v64 = *(*(v53 + 48) + v63);
        v65 = *(*(v53 + 56) + v63);
        v66 = [v65 identifier];
        v67 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
        v68 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
        if (!v68)
        {
          v60 = specialized Dictionary._Variant.removeValue(forKey:)(v67);

          v59 = v61;
          if (!v57)
          {
            goto LABEL_23;
          }

          goto LABEL_27;
        }

        v69 = v68;
        v70 = v108;
        if ((v108 & 0xC000000000000001) != 0)
        {
          if (v108 >= 0)
          {
            v70 = v108 & 0xFFFFFFFFFFFFFF8;
          }

          v71 = __CocoaSet.count.getter();
          if (__OFADD__(v71, 1))
          {
            goto LABEL_49;
          }

          v70 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8NSNumberC_AHTt1g5(v70, v71 + 1);
          v108 = v70;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v107 = v70;
        v73 = specialized __RawDictionaryStorage.find<A>(_:)(v67);
        v75 = *(v70 + 16);
        v76 = (v74 & 1) == 0;
        v77 = __OFADD__(v75, v76);
        v78 = v75 + v76;
        if (v77)
        {
          goto LABEL_48;
        }

        v79 = v74;
        if (*(v70 + 24) < v78)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_39;
        }

        v84 = v73;
        specialized _NativeDictionary.copy()();
        v73 = v84;
        v81 = v107;
        if (v79)
        {
LABEL_40:
          v82 = v81[7];
          v83 = *(v82 + 8 * v73);
          *(v82 + 8 * v73) = v69;

          goto LABEL_44;
        }

LABEL_42:
        v81[(v73 >> 6) + 8] |= 1 << v73;
        *(v81[6] + 8 * v73) = v67;
        *(v81[7] + 8 * v73) = v69;

        v85 = v81[2];
        v77 = __OFADD__(v85, 1);
        v86 = v85 + 1;
        if (v77)
        {
          goto LABEL_50;
        }

        v81[2] = v86;
LABEL_44:
        v108 = v81;
        v59 = v61;
        v53 = v102;
        if (!v57)
        {
          goto LABEL_23;
        }

LABEL_27:
        v61 = v59;
      }

      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v78, isUniquelyReferenced_nonNull_native);
      v73 = specialized __RawDictionaryStorage.find<A>(_:)(v67);
      if ((v79 & 1) != (v80 & 1))
      {
        goto LABEL_51;
      }

LABEL_39:
      v81 = v107;
      if (v79)
      {
        goto LABEL_40;
      }

      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo25TUConversationParticipantC_SD6ValuesVys6UInt64VAE_GTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
  v4 = lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
  v5 = 0;
  v12[1] = MEMORY[0x1B27104E0](v2, v3, v4);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    specialized Set._Variant.insert(_:)(v12, *(*(a1 + 56) + ((v10 << 9) | (8 * v11))), &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90, &_ss11_SetStorageCySo25TUConversationParticipantCGMd, &_ss11_SetStorageCySo25TUConversationParticipantCGMR);
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs6UInt64V_SD4KeysVyAESo25TUConversationParticipantC_GTt0g5(uint64_t a1)
{
  result = MEMORY[0x1B27104E0](*(a1 + 16), MEMORY[0x1E69E76D8], MEMORY[0x1E69E76E8]);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = specialized Set._Variant.insert(_:)(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_s15LazyMapSequenceVys07FlattenF0VyAHyShySo38TUConversationActivitySessionContainerCGShySo0hiJ0CGGGAFGTt0g5(uint64_t *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v53 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v52 = v39 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v51 = v39 - v9;
  v10 = lazy protocol witness table accessor for type TUExternalParticipant and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v58 = MEMORY[0x1B27104E0](0, v2, v10);
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v50 = a1[3];
  v54 = a1[4];
  result = specialized LazyMapSequence.makeIterator()(v11, v12, v13, v59);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v45 = v64;
  v46 = v59[0];
  v41 = v59[1];
  v19 = v62;
  v43 = v63;
  v49 = (v3 + 32);
  v48 = (v3 + 8);
  v39[1] = v60;
  v40 = (v60 + 64) >> 6;
  v20 = 0xF000000000000007;
  v42 = v61;
  for (i = v2; ; v2 = i)
  {
    v55 = v20;
    v47 = v15;
    if ((~v20 & 0xF000000000000007) != 0)
    {
      break;
    }

LABEL_18:
    if (v46 < 0)
    {
      v35 = __CocoaSet.Iterator.next()();
      if (!v35)
      {
        goto LABEL_34;
      }

      v56 = v35;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
      swift_dynamicCast();
      v34 = v57;
      if (!v57)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v31 = v42;
      if (!v19)
      {
        while (1)
        {
          v32 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_36;
          }

          if (v32 >= v40)
          {
            goto LABEL_34;
          }

          v19 = *(v41 + 8 * v32);
          ++v31;
          if (v19)
          {
            v42 = v32;
            goto LABEL_25;
          }
        }
      }

      v32 = v42;
LABEL_25:
      v33 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v34 = *(*(v46 + 48) + ((v32 << 9) | (8 * v33)));
      if (!v34)
      {
LABEL_34:
        outlined consume of Set<String>.Iterator._Variant();

        outlined consume of Set<TUConversationActivitySession>.Iterator?(v55);

        return v58;
      }
    }

    v57 = v34;
    v43(&v56, &v57);

    v20 = v56;
    if ((v56 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
      lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
      Set.Iterator.init(_cocoa:)();
      v20 = v65;
      v21 = v66;
      v15 = v67;
      v17 = v68;
      v22 = v69;
    }

    else
    {
      v17 = 0;
      v36 = -1 << *(v56 + 32);
      v21 = v56 + 56;
      v15 = ~v36;
      v37 = -v36;
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      else
      {
        v38 = -1;
      }

      v22 = v38 & *(v56 + 56);
    }

    result = outlined consume of Set<TUConversationActivitySession>.Iterator?(v55);
    v16 = v21;
    v18 = v22;
  }

  v23 = (v15 + 64) >> 6;
  while (1)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      result = __CocoaSet.Iterator.next()();
      if (!result)
      {
        goto LABEL_18;
      }

      v56 = result;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
      result = swift_dynamicCast();
      v26 = v57;
      v24 = v17;
      if (!v57)
      {
        goto LABEL_18;
      }

      goto LABEL_9;
    }

    v30 = v17;
    if (!v18)
    {
      break;
    }

    v24 = v17;
LABEL_8:
    v25 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    result = *(*(v20 + 48) + ((v24 << 9) | (8 * v25)));
    v26 = result;
    if (!result)
    {
      goto LABEL_18;
    }

LABEL_9:
    v57 = v26;
    v27 = v51;
    v50(&v57);

    v28 = v53;
    (*v49)(v53, v27, v2);
    v29 = v52;
    specialized Set._Variant.insert(_:)(v52, v28);
    result = (*v48)(v29, v2);
    v17 = v24;
    v20 = v55;
  }

  while (1)
  {
    v24 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v24 >= v23)
    {
      goto LABEL_18;
    }

    v18 = *(v16 + 8 * v24);
    ++v30;
    if (v18)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS10Foundation4DateV_GTt0g5(uint64_t a1)
{
  result = MEMORY[0x1B27104E0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    specialized Set._Variant.insert(_:)(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t key path getter for ActivitySession.activeParticipantsUpdateItem : ActivitySession@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3A8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ActivitySession.activeParticipantsUpdateItem : ActivitySession(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3B0);

  return v3(v4);
}

uint64_t key path getter for ActivitySession.activeParticipants : ActivitySession@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3C0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ActivitySession.activeParticipants : ActivitySession(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3C8);

  return v3(v4);
}

void ActivitySession.activeParticipants.didset(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR___CPActivitySession_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v10 = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v11 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x328))(v10);
    v12 = [v11 isStaticActivity];

    if ((v12 & 1) == 0)
    {
      v13 = OBJC_IVAR___CPActivitySession_activeParticipants;
      swift_beginAccess();
      v14 = *(v1 + v13);

      v16 = specialized _NativeDictionary.mapValues<A>(_:)(v15);

      v17 = specialized _NativeDictionary.mapValues<A>(_:)(a1);
      LOBYTE(v13) = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_ADTt1g5(v16, v17);

      if ((v13 & 1) == 0)
      {
        ActivitySession.sessionChanged()();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t ActivitySession.externalParticipants.getter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t ActivitySession.activeParticipants.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPActivitySession_activeParticipants;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  ActivitySession.activeParticipants.didset(v4);
}

void (*ActivitySession.activeParticipants.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CPActivitySession_activeParticipants;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return ActivitySession.activeParticipants.modify;
}

void ActivitySession.activeParticipants.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 24);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *v3;
  v7 = v2[4];
  if (a2)
  {

    ActivitySession.activeParticipants.didset(v6);

    v8 = *v3;
  }

  else
  {
    ActivitySession.activeParticipants.didset(v6);
  }

  free(v2);
}

uint64_t key path getter for ActivitySession.sessionManager : ActivitySession@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3D8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for ActivitySession.sessionManager : ActivitySession(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3E0);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t ActivitySession.sessionManager.getter()
{
  v1 = v0 + OBJC_IVAR___CPActivitySession_sessionManager;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t ActivitySession.sessionManager.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___CPActivitySession_sessionManager;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ActivitySession.sessionManager.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CPActivitySession_sessionManager;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return ActivitySession.sessionManager.modify;
}

void ActivitySession.sessionManager.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t key path getter for ActivitySession.rtcReporter : ActivitySession@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3F0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ActivitySession.rtcReporter : ActivitySession(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3F8);

  return v3(v4);
}

uint64_t ActivitySession.activeParticipantsUpdateItem.getter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t ActivitySession.activeParticipantsUpdateItem.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t key path getter for ActivitySession.connection : ActivitySession@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x408))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ActivitySession.connection : ActivitySession(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x410);
  v4 = *a1;
  return v3(v2);
}

void *ActivitySession.connection.getter()
{
  v1 = OBJC_IVAR___CPActivitySession_connection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ActivitySession.connection.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPActivitySession_connection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = direct field offset for XPCHostConnection.connection;
    v6 = *&v4[direct field offset for XPCHostConnection.connection];
    v7 = v4;
    [v6 setExportedObject_];
    [*&v4[v5] setInvalidationHandler_];
    [*&v4[v5] setInterruptionHandler_];
    [*&v4[v5] invalidate];

    v8 = *(v1 + v3);
  }

  else
  {
    v8 = 0;
  }

  *(v1 + v3) = a1;
}

void (*ActivitySession.connection.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CPActivitySession_connection;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return ActivitySession.connection.modify;
}

void ActivitySession.connection.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = v2[4];
    v5 = v3;
    ActivitySession.connection.setter(v3);
    v6 = v2[3];
  }

  else
  {
    v8 = v2[4];
    v7 = v2[5];
    v9 = *(v8 + v7);
    if (v9)
    {
      v10 = direct field offset for XPCHostConnection.connection;
      v11 = *&v9[direct field offset for XPCHostConnection.connection];
      v12 = v9;
      [v11 setExportedObject_];
      [*&v9[v10] setInvalidationHandler_];
      [*&v9[v10] setInterruptionHandler_];
      [*&v9[v10] invalidate];

      v6 = *(v8 + v7);
      v8 = v2[4];
      v7 = v2[5];
    }

    else
    {
      v6 = 0;
    }

    *(v8 + v7) = v3;
  }

  free(v2);
}

Swift::Void __swiftcall ActivitySession.updateExternalParticipants(participants:)(Swift::OpaquePointer participants)
{
  if (participants._rawValue >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((participants._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    while ((participants._rawValue & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1B2710B10](v4, participants._rawValue);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x220);
      v8 = v5;
      v9 = v7(v10);
      specialized Set._Variant.insert(_:)(&v11, v8);

      v9(v10, 0);
      ++v4;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    if (v4 >= *((participants._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v5 = *(participants._rawValue + v4 + 4);
    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  ActivitySession.sessionChanged()();
}

uint64_t ActivitySession.updateActiveParticipants(with:fromCache:)(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v113 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113);
  v8 = (&v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(&v2->isa + OBJC_IVAR___CPActivitySession_queue);
  *v13 = v14;
  v15 = v10[13];
  LODWORD(v116) = *MEMORY[0x1E69E8020];
  v120 = v15;
  v15(v13);
  v114 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v16 = v10[1];
  (v16)(v13, v9);
  if ((v14 & 1) == 0)
  {
    goto LABEL_58;
  }

  v123 = a1;

  v17 = ActivitySession.localParticipantAlias.getter();
  v18 = &static ConversationManagerInterface.identity;
  v117 = v8;
  v118 = a1;
  if ((v19 & 1) != 0 || (v119 = v17, !specialized Set.contains(_:)(v17, a1)))
  {
    v25 = OBJC_IVAR___CPActivitySession_isLocalParticipantActive;
    if (*(&v3->isa + OBJC_IVAR___CPActivitySession_isLocalParticipantActive) != 1)
    {
      v119 = 0;
      LODWORD(v120) = 1;
      a1 = v118;
      goto LABEL_19;
    }

    v26 = v4;
    v119 = v16;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Log.default);
    v4 = v3;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v112 = v4;

    LODWORD(v4) = v26;
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      LODWORD(v115) = v26;
      v4 = v30;
      v31 = swift_slowAlloc();
      *v4 = 138412290;
      v32 = v112;
      *(v4 + 4) = v112;
      *v31 = v32;
      v33 = v32;
      _os_log_impl(&dword_1AEB26000, v28, v29, "%@ setting isLocalParticipantActive=false", v4, 0xCu);
      outlined destroy of NSObject?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v31, -1, -1);
      v34 = v4;
      LODWORD(v4) = v115;
      MEMORY[0x1B27120C0](v34, -1, -1);
    }

    v35 = *(&v3->isa + v25);
    *(&v3->isa + v25) = 0;
    v36 = v114;
    *v13 = v114;
    (v120)(v13, v116, v9);
    v37 = v36;
    LOBYTE(v36) = _dispatchPreconditionTest(_:)();
    (v119)(v13, v9);
    if (v36)
    {
      if (v35 != *(&v3->isa + v25))
      {
        ActivitySession.sessionChanged()();
      }

      v119 = 0;
      LODWORD(v120) = 1;
      a1 = v118;
      goto LABEL_17;
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);

    __break(1u);
    return result;
  }

  LODWORD(v115) = v4;
  v20 = v16;
  v21 = OBJC_IVAR___CPActivitySession_isLocalParticipantActive;
  v22 = *(&v3->isa + OBJC_IVAR___CPActivitySession_isLocalParticipantActive);
  *(&v3->isa + OBJC_IVAR___CPActivitySession_isLocalParticipantActive) = 1;
  v23 = v114;
  *v13 = v114;
  (v120)(v13, v116, v9);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (v20)(v13, v9);
  if ((v23 & 1) == 0)
  {
    goto LABEL_62;
  }

  if (v22 != *(&v3->isa + v21))
  {
    ActivitySession.sessionChanged()();
  }

  specialized Set._Variant.remove(_:)(v119);
  LODWORD(v120) = 0;
  LODWORD(v4) = v115;
LABEL_17:
  v18 = &static ConversationManagerInterface.identity;
LABEL_19:
  if (*(v18 + 431) != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v38 = type metadata accessor for Logger();
    v39 = __swift_project_value_buffer(v38, static Log.default);

    v40 = v3;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    v43 = os_log_type_enabled(v41, v42);
    v112 = v39;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v121 = v110;
      *v44 = 138413058;
      *(v44 + 4) = v40;
      v109 = v45;
      *v45 = v40;
      *(v44 + 12) = 1024;
      *(v44 + 14) = v4 & 1;
      *(v44 + 18) = 2080;
      if (v120)
      {
        v46 = v40;
        v47 = 0xE300000000000000;
        v48 = 7104878;
      }

      else
      {
        aBlock[0] = v119;
        v49 = v40;
        v48 = String.init<A>(reflecting:)();
        v47 = v50;
      }

      LODWORD(v111) = v42;
      v116 = v41;
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, &v121);

      *(v44 + 20) = v51;
      *(v44 + 28) = 2080;
      v52 = *(a1 + 16);
      if (v52)
      {
        LODWORD(v115) = v4;
        v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt64V_Tt1g5(v52, 0);
        v53 = specialized Sequence._copySequenceContents(initializing:)(aBlock, &v3[4].isa, v52, a1);

        outlined consume of Set<String>.Iterator._Variant();
        if (v53 != v52)
        {
          goto LABEL_61;
        }

        a1 = v118;
        LOBYTE(v4) = v115;
      }

      else
      {
        v3 = MEMORY[0x1E69E7CC0];
      }

      aBlock[0] = v3;
      specialized MutableCollection<>.sort(by:)(aBlock);
      v54 = MEMORY[0x1B2710180](aBlock[0], MEMORY[0x1E69E76D8]);
      v56 = v55;

      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v121);

      *(v44 + 30) = v57;
      v58 = v116;
      _os_log_impl(&dword_1AEB26000, v116, v111, "%@ updating activeParticipants, fromCache: %{BOOL}d, localParticipantID:%s participantIDs: %s", v44, 0x26u);
      v59 = v109;
      outlined destroy of NSObject?(v109, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v59, -1, -1);
      v60 = v110;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v60, -1, -1);
      MEMORY[0x1B27120C0](v44, -1, -1);
    }

    else
    {
    }

    v61 = OBJC_IVAR___CPActivitySession_activeParticipantIDs;
    if (_sSh2eeoiySbShyxG_ABtFZs6UInt64V_Tt1g5(*(&v40->isa + OBJC_IVAR___CPActivitySession_activeParticipantIDs), a1))
    {
      if (v4 & 1) == 0 || (v62 = (*((*MEMORY[0x1E69E7D40] & v40->isa) + 0x3C0))(), v63 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs6UInt64V_SD4KeysVyAESo25TUConversationParticipantC_GTt0g5(v62), v64 = _sSh2eeoiySbShyxG_ABtFZs6UInt64V_Tt1g5(v63, v123), , (v64))
      {
        v65 = v40;
        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          *v68 = 138412290;
          *(v68 + 4) = v65;
          *v69 = v65;
          v70 = v65;
          _os_log_impl(&dword_1AEB26000, v66, v67, "%@ not updating activeParticipants since no change was detected", v68, 0xCu);
          outlined destroy of NSObject?(v69, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x1B27120C0](v69, -1, -1);
          MEMORY[0x1B27120C0](v68, -1, -1);
        }
      }
    }

    v111 = 0;
    v71 = *(&v40->isa + v61);
    *(&v40->isa + v61) = a1;

    v72 = *((*MEMORY[0x1E69E7D40] & v40->isa) + 0x3A8);

    if (v72(v73))
    {
      dispatch thunk of DispatchWorkItem.cancel()();
    }

    v116 = dispatch_group_create();
    v74 = swift_allocObject();
    *(v74 + 16) = MEMORY[0x1E69E7CC8];
    v75 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v76 = swift_allocObject();
    *(v76 + 16) = v75;
    *(v76 + 24) = v74;
    aBlock[4] = partial apply for closure #1 in ActivitySession.updateActiveParticipants(with:fromCache:);
    aBlock[5] = v76;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_61;
    _Block_copy(aBlock);
    v121 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type TUExternalParticipant and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);

    v115 = v74;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v77 = type metadata accessor for DispatchWorkItem();
    v78 = *(v77 + 48);
    v79 = *(v77 + 52);
    swift_allocObject();
    v3 = DispatchWorkItem.init(flags:block:)();

    v81 = (*((*MEMORY[0x1E69E7D40] & v40->isa) + 0x328))(v80);
    v82 = [v81 bundleIdentifier];

    if (!v82)
    {
      break;
    }

    v117 = v3;

    v83 = a1 + 56;
    v84 = 1 << *(a1 + 32);
    v85 = -1;
    if (v84 < 64)
    {
      v85 = ~(-1 << v84);
    }

    v86 = v85 & *(a1 + 56);
    v4 = (v84 + 63) >> 6;

    v87 = 0;
    while (v86)
    {
LABEL_47:
      v89 = __clz(__rbit64(v86));
      v86 &= v86 - 1;
      v90 = *(*(a1 + 48) + ((v87 << 9) | (8 * v89)));
      v91 = v120;
      if (v90 != v119)
      {
        v91 = 1;
      }

      if (v91 == 1)
      {
        v3 = v116;
        dispatch_group_enter(v116);
        v92 = swift_allocObject();
        v92[2] = v115;
        v92[3] = v90;
        v92[4] = v3;
        v93 = *((*MEMORY[0x1E69E7D40] & v40->isa) + 0x478);

        v94 = v3;
        v93(v90, 0, partial apply for closure #1 in closure #2 in ActivitySession.updateActiveParticipants(with:fromCache:), v92);
        a1 = v118;
      }
    }

    while (1)
    {
      v88 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        break;
      }

      if (v88 >= v4)
      {

        v95 = v116;
        OS_dispatch_group.notify(queue:work:)();
        v96 = *((*MEMORY[0x1E69E7D40] & v40->isa) + 0x3B0);

        v96(v97);

        goto LABEL_55;
      }

      v86 = *(v83 + 8 * v88);
      ++v87;
      if (v86)
      {
        v87 = v88;
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
  }

  v98 = v40;
  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    aBlock[0] = v102;
    *v101 = 136315394;
    v103 = Set.description.getter();
    v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v104, aBlock);

    *(v101 + 4) = v105;
    *(v101 + 12) = 2112;
    *(v101 + 14) = v98;
    v106 = v120;
    *v120 = v40;
    v107 = v98;
    _os_log_impl(&dword_1AEB26000, v99, v100, "Failed to update participants for participantIDs %s on %@ because of invalid bundleID", v101, 0x16u);
    outlined destroy of NSObject?(v106, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v106, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v102);
    MEMORY[0x1B27120C0](v102, -1, -1);
    MEMORY[0x1B27120C0](v101, -1, -1);
  }

  else
  {
  }

LABEL_55:
}

uint64_t specialized Set.contains(_:)(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (type metadata accessor for ActivitySession(0), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x1B27111C0](*(a2 + 40), a1);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void closure #1 in ActivitySession.updateActiveParticipants(with:fromCache:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.default);
    v6 = v4;

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v9 = 138412546;
      *(v9 + 4) = v6;
      *v10 = v4;
      *(v9 + 12) = 2080;
      swift_beginAccess();
      v11 = *(a2 + 16);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
      v12 = v6;

      v13 = Dictionary.description.getter();
      v15 = v14;

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v21);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_1AEB26000, v7, v8, "Retrieved all participants for %@, updating with participants %s", v9, 0x16u);
      outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1B27120C0](v20, -1, -1);
      MEMORY[0x1B27120C0](v9, -1, -1);
    }

    swift_beginAccess();
    v17 = *(a2 + 16);
    v18 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x3C8);

    v18(v19);
  }
}

void closure #1 in closure #2 in ActivitySession.updateActiveParticipants(with:fromCache:)(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  if (a1)
  {
    swift_beginAccess();
    v7 = a1;
    specialized Dictionary.subscript.setter(a1, a3);
    swift_endAccess();
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.default);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = a3;
      _os_log_impl(&dword_1AEB26000, v9, v10, "updateActiveParticipants, could not find active-remote-participant for participantID %llu", v11, 0xCu);
      MEMORY[0x1B27120C0](v11, -1, -1);
    }
  }

  dispatch_group_leave(a4);
}

uint64_t ActivitySession.join(audioSessionID:completion:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v3[OBJC_IVAR___CPActivitySession_queue];
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v15 = v3;

    specialized ActivitySession.invalidationBlock(execute:)(v15, v15, a1 | ((HIDWORD(a1) & 1) << 32), a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in ActivitySession.join(audioSessionID:completion:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2F8);
  v7(&v46);
  v8 = v46;
  v44 = 0x8000000000000000;
  v45 = v46;
  v9 = static ActivitySession.State.== infix(_:_:)(&v45, &v44);
  v10 = outlined consume of ActivitySession.State(v8);
  if (v9 & 1) != 0 || ((v7)(&v46, v10), v11 = v46, v44 = 0x8000000000000008, v45 = v46, v12 = static ActivitySession.State.== infix(_:_:)(&v45, &v44), outlined consume of ActivitySession.State(v11), (v12))
  {
    v41 = a3;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.host);
    v14 = a1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v40 = a4;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v46 = v19;
      *v17 = 138412546;
      *(v17 + 4) = v14;
      *v18 = a1;
      *(v17 + 12) = 2080;
      if ((a2 & 0x100000000) != 0)
      {
        v20 = v14;
        v21 = 0xE300000000000000;
        v22 = 7104878;
      }

      else
      {
        LODWORD(v45) = a2;
        v25 = v14;
        v22 = String.init<A>(reflecting:)();
        v21 = v26;
      }

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v46);

      *(v17 + 14) = v27;
      _os_log_impl(&dword_1AEB26000, v15, v16, "Joining %@ with audioSessionID: %s", v17, 0x16u);
      outlined destroy of NSObject?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1B27120C0](v19, -1, -1);
      MEMORY[0x1B27120C0](v17, -1, -1);

      a4 = v40;
    }

    else
    {
    }

    v46 = 0x8000000000000008;
    v28 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v14) + 0x300))(&v46);
    (*((*v28 & *v14) + 0x200))(a2 | ((HIDWORD(a2) & 1) << 32));
    v29 = swift_allocObject();
    *(v29 + 16) = v41;
    *(v29 + 24) = a4;
    v30 = *((*v28 & *v14) + 0x3D8);

    if (v30(v31))
    {
      v33 = v32;
      ObjectType = swift_getObjectType();
      v34 = UUID.uuidString.getter();
      v36 = v35;
      v37 = swift_allocObject();
      v37[2] = v14;
      v37[3] = partial apply for closure #1 in closure #1 in ActivitySession.join(audioSessionID:completion:);
      v37[4] = v29;
      v38 = *(v33 + 96);
      v39 = v14;

      v38(v39, v34, v36, closure #1 in ActivitySession.fetchDataCryptor(completion:)partial apply, v37, ObjectType, v33);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    lazy protocol witness table accessor for type ActivitySession.Errors and conformance ActivitySession.Errors();
    swift_allocError();
    *v23 = 1;
    return swift_willThrow();
  }
}

uint64_t ActivitySession.invalidationBlock(execute:)(uint64_t (*a1)(void))
{
  result = a1();
  if (v2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.default);
    v5 = v1;
    v6 = v2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v9 = 138412546;
      *(v9 + 4) = v5;
      *v10 = v5;
      *(v9 + 12) = 2080;
      v12 = v5;
      v13 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v14 = String.init<A>(reflecting:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v17);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_1AEB26000, v7, v8, "%@ was invalidated with error: %s", v9, 0x16u);
      outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1B27120C0](v11, -1, -1);
      MEMORY[0x1B27120C0](v9, -1, -1);
    }

    [v5 resetSession];
    return swift_willThrow();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActivitySession.leave()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR___CPActivitySession_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v9 = (v3 + 8);
  v11 = v10(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  v9 = MEMORY[0x1E69E7D40];
  v12 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x328))(v11);
  v13 = [v12 metadata];

  if (!v13 || (v14 = [v13 lifetimePolicy], v13, v14 != 1) || ((*((*v9 & *v1) + 0x340))() & 1) == 0)
  {
    v19 = v1;
    specialized ActivitySession.invalidationBlock(execute:)(v19, v19, closure #1 in ActivitySession.leave());

    return;
  }

  if (one-time initialization token for host != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.host);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1AEB26000, v16, v17, "Requested leave, but ending instead due to lifetimePolicy", v18, 2u);
    MEMORY[0x1B27120C0](v18, -1, -1);
  }

  (*((*v9 & *v1) + 0x440))();
}

void closure #1 in ActivitySession.leave()(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2F8);
  v3(&v26);
  v4 = v26;
  v24 = 0x8000000000000008;
  v25 = v26;
  v5 = static ActivitySession.State.== infix(_:_:)(&v25, &v24);
  v6 = outlined consume of ActivitySession.State(v4);
  if (v5 & 1) != 0 || ((v3)(&v26, v6), v7 = v26, v24 = 0x8000000000000000, v25 = v26, v8 = static ActivitySession.State.== infix(_:_:)(&v25, &v24), outlined consume of ActivitySession.State(v7), (v8))
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.host);
    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = a1;
      v15 = v10;
      _os_log_impl(&dword_1AEB26000, v11, v12, "Leaving %@", v13, 0xCu);
      outlined destroy of NSObject?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v14, -1, -1);
      v16 = v13;
      v2 = MEMORY[0x1E69E7D40];
      MEMORY[0x1B27120C0](v16, -1, -1);
    }

    v26 = 0x8000000000000010;
    v17 = (*((*v2 & *v10) + 0x300))(&v26);
    if (*(v10 + OBJC_IVAR___CPActivitySession_sceneAssociationCoordinator))
    {
      ActivitySession.SceneAssociationCoordinator.disassociateAllScenes()();
    }

    v18 = (*((*v2 & *v10) + 0x328))(v17);
    v19 = [v18 isSystemActivity];

    if (v19)
    {
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1AEB26000, v20, v21, "Activity is a systemActivity, permitting activity to be re-distributed.", v22, 2u);
        MEMORY[0x1B27120C0](v22, -1, -1);
      }

      (*((*v2 & *v10) + 0x448))();
    }
  }

  else
  {
    lazy protocol witness table accessor for type ActivitySession.Errors and conformance ActivitySession.Errors();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
  }
}

Swift::Void __swiftcall ActivitySession.end()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR___CPActivitySession_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (one-time initialization token for host == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_1AEB26000, v10, v11, "Ending %@", v12, 0xCu);
    outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v17 = v15;
  (*((*MEMORY[0x1E69E7D40] & *v9) + 0x300))(&v17);
}

Swift::Void __swiftcall ActivitySession.permitJoin()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR___CPActivitySession_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (one-time initialization token for host == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_1AEB26000, v10, v11, "Received request for %@ to be permitted", v12, 0xCu);
    outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  v15 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v9) + 0x2F8))(v26);
  v16 = v26[0];
  v27 = 0x8000000000000010;
  v28 = v26[0];
  v17 = static ActivitySession.State.== infix(_:_:)(&v28, &v27);
  outlined consume of ActivitySession.State(v16);
  if (v17)
  {
    v18 = v9;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v9;
      v23 = v18;
      _os_log_impl(&dword_1AEB26000, v19, v20, "Permitting %@ to be joined", v21, 0xCu);
      outlined destroy of NSObject?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v22, -1, -1);
      MEMORY[0x1B27120C0](v21, -1, -1);
    }

    v24 = (*((*v15 & *v18) + 0x268))(v26);
    if (__OFADD__(*v25, 1))
    {
      __break(1u);
    }

    else
    {
      ++*v25;
      v24(v26, 0);
      v26[0] = 0x8000000000000000;
      (*((*v15 & *v18) + 0x300))(v26);
    }
  }
}

uint64_t ActivitySession.logAttachmentEvent(report:reportEvent:)(void *a1, uint64_t a2, unint64_t a3)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.host);
  v8 = v3;

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v8;
    *v12 = v8;
    *(v11 + 12) = 2080;
    v14 = v8;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v16);
    _os_log_impl(&dword_1AEB26000, v9, v10, "%@: Logging attachment event in RTC reporting: %s", v11, 0x16u);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v8) + 0x3F0))();
  if (result)
  {
    RTCReporter.reportAttachmentEvent(report:)(a1);
  }

  return result;
}

void ActivitySession.postEvent(event:)(char *a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR___CPActivitySession_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v12 = (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_7:
    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Log.default);
    v27 = a1;
    v28 = v3;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v29, v30))
    {
LABEL_23:

      return;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v46 = v43;
    *v31 = 138412802;
    *(v31 + 4) = v28;
    *(v31 + 12) = 2112;
    *(v31 + 14) = v27;
    *v32 = v3;
    v32[1] = v27;
    *(v31 + 22) = 2080;
    v33 = v27;
    v34 = v28;
    v2(&v45);
    if (v45 >> 62)
    {
      if (v45 >> 62 != 1)
      {
        v39 = v43;
        v40 = 0xE600000000000000;
        v41 = 0x64656E696F4ALL;
        if (v45 != 0x8000000000000008)
        {
          v41 = 1952867660;
          v40 = 0xE400000000000000;
        }

        if (v45 == 0x8000000000000000)
        {
          v36 = 0x676E6974696157;
        }

        else
        {
          v36 = v41;
        }

        if (v45 == 0x8000000000000000)
        {
          v35 = 0xE700000000000000;
        }

        else
        {
          v35 = v40;
        }

        goto LABEL_22;
      }

      v35 = 0xE900000000000066;
      v36 = 0x664F6465646E6148;
    }

    else
    {
      v35 = 0xEB00000000646574;
      v36 = 0x6164696C61766E49;
    }

    v39 = v43;
LABEL_22:
    outlined consume of ActivitySession.State(v45);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, &v46);

    *(v31 + 24) = v42;
    _os_log_impl(&dword_1AEB26000, v29, v30, "%@ dropping event %@ because state != joined. state: %s", v31, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x1B27120C0](v39, -1, -1);
    MEMORY[0x1B27120C0](v31, -1, -1);
    goto LABEL_23;
  }

  v13 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x2F8);
  (v2)(&v46, v12);
  v14 = v46;
  v44 = 0x8000000000000008;
  v45 = v46;
  v15 = static ActivitySession.State.== infix(_:_:)(&v45, &v44);
  outlined consume of ActivitySession.State(v14);
  if ((v15 & 1) == 0)
  {
    if (one-time initialization token for default == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v16;
  v18 = *&a1[OBJC_IVAR___CPActivitySessionEvent_originatorID];
  v19 = *((*v13 & *v3) + 0x3C0);

  v20 = a1;
  v21 = v19();
  if (*(v21 + 16) && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v18), (v23 & 1) != 0))
  {
    v24 = *(*(v21 + 56) + 8 * v22);

    v25 = v24;
    closure #1 in ActivitySession.postEvent(event:)(v24, v20);
  }

  else
  {

    v37 = swift_allocObject();
    *(v37 + 16) = partial apply for closure #1 in ActivitySession.postEvent(event:);
    *(v37 + 24) = v17;
    v38 = *((*v13 & *v3) + 0x478);

    v38(v18, 1, partial apply for closure #2 in ActivitySession.postEvent(event:), v37);
  }
}

void closure #1 in ActivitySession.postEvent(event:)(void *a1, char *a2)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = *&a2[OBJC_IVAR___CPActivitySessionEvent_type];
      v7 = objc_allocWithZone(MEMORY[0x1E69D8B40]);
      v8 = a1;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v10 = [v7 initWithSessionUUID:isa originator:v8 type:v6];

      if (*&a2[OBJC_IVAR___CPActivitySessionEvent_item + 8])
      {
        v11 = MEMORY[0x1B270FF70](*&a2[OBJC_IVAR___CPActivitySessionEvent_item]);
      }

      else
      {
        v11 = 0;
      }

      [v10 setItem_];

      v16 = [v10 setQueueItemType_];
      v17 = MEMORY[0x1E69E7D40];
      v18 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x388))(v16);
      [v10 setSession_];

      if ((*((*v17 & *v5) + 0x3D8))([v10 setUrl_]))
      {
        v20 = v19;
        ObjectType = swift_getObjectType();
        (*(v20 + 88))(v5, v10, ObjectType, v20);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.default);
    v22 = a2;
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = *(v22 + OBJC_IVAR___CPActivitySessionEvent_originatorID);

      _os_log_impl(&dword_1AEB26000, oslog, v13, "Received event from unknown participant %llu", v14, 0xCu);
      MEMORY[0x1B27120C0](v14, -1, -1);
      v15 = oslog;
    }

    else
    {

      v15 = v22;
    }
  }
}

Swift::Void __swiftcall ActivitySession.requestEncryptionKeys(for:)(Swift::OpaquePointer_optional a1)
{
  v2 = v1;
  rawValue = a1.value._rawValue;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR___CPActivitySession_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  isUniquelyReferenced_nonNull_native = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v12 = MEMORY[0x1E69E7D40];
    if (rawValue)
    {
      v13 = rawValue[2];
      if (v13)
      {
        v14 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3C0);
        v15 = (rawValue + 4);
        v16 = MEMORY[0x1E69E7CC0];
        do
        {
          v18 = *v15++;
          v17 = v18;
          v19 = v14(isUniquelyReferenced_nonNull_native);
          if (*(v19 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v21 & 1) != 0))
          {
            v22 = *(*(v19 + 56) + 8 * v20);

            v17 = [v22 identifier];
          }

          else
          {
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
            v16 = isUniquelyReferenced_nonNull_native;
          }

          v24 = *(v16 + 16);
          v23 = *(v16 + 24);
          if (v24 >= v23 >> 1)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v16);
            v16 = isUniquelyReferenced_nonNull_native;
          }

          *(v16 + 16) = v24 + 1;
          *(v16 + 8 * v24 + 32) = v17;
          --v13;
        }

        while (v13);
      }

      else
      {
        v16 = MEMORY[0x1E69E7CC0];
      }

      v12 = MEMORY[0x1E69E7D40];
    }

    else
    {
      v16 = 0;
    }

    if ((*((*v12 & *v2) + 0x3D8))(isUniquelyReferenced_nonNull_native))
    {
      v26 = v25;
      ObjectType = swift_getObjectType();
      v28 = (*((*v12 & *v2) + 0x4C8))();
      (*(v26 + 104))(v2, v16, v28, v29, ObjectType, v26);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t ActivitySession.usesAliasing.getter()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR___CPActivitySession_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v9 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x408))(result);
    if (v9)
    {
      v10 = v9[direct field offset for XPCHostConnection.isEntitledToAccessUnaliasedIdentifiers];

      v11 = v10 ^ 1;
    }

    else
    {
      v11 = 1;
    }

    return v11 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ActivitySession.localParticipantAlias.getter()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR___CPActivitySession_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v9 = MEMORY[0x1E69E7D40];
    result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3D8))(result);
    if (result)
    {
      v11 = v10;
      v12 = (*((*v9 & *v0) + 0x328))();
      v13 = [v12 bundleIdentifier];

      if (v13)
      {
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        if ((ActivitySession.usesAliasing.getter() & 1) == 0)
        {

          v14 = 0;
          v16 = 0;
        }

        ObjectType = swift_getObjectType();
        v18 = (*(v11 + 56))(v14, v16, ObjectType, v11);
        swift_unknownObjectRelease();

        return v18;
      }

      else
      {
        swift_unknownObjectRelease();
        return 0;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ActivitySession.participant(with:includeLocalParticipant:completion:)(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4)
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v4 + OBJC_IVAR___CPActivitySession_queue);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v17 = MEMORY[0x1E69E7D40];
  if (!(*((*MEMORY[0x1E69E7D40] & *v4) + 0x3D8))(result))
  {
    return a3(0);
  }

  v19 = v18;
  v20 = (*((*v17 & *v4) + 0x328))();
  v21 = [v20 bundleIdentifier];

  if (!v21)
  {
    swift_unknownObjectRelease();
    return a3(0);
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if ((ActivitySession.usesAliasing.getter() & 1) == 0)
  {

    v22 = 0;
    v24 = 0;
  }

  ObjectType = swift_getObjectType();
  (*(v19 + 64))(a1, v22, v24, a2 & 1, a3, a4, ObjectType, v19);
  swift_unknownObjectRelease();
}

uint64_t ActivitySession.localParticipantCluster.getter()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR___CPActivitySession_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (!(*((*MEMORY[0x1E69E7D40] & *v0) + 0x3D8))(result))
    {
      return 0;
    }

    v10 = v9;
    ObjectType = swift_getObjectType();
    v12 = (*(v10 + 32))(ObjectType, v10);
    swift_unknownObjectRelease();
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ActivitySession.presentSessionDismissalAlert(for:allowingCancellation:completion:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5)
{
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&countAndFlagsBits - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&v5[OBJC_IVAR___CPActivitySession_queue];
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v103 = a1;
    if (one-time initialization token for default == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Log.default);
  v19 = v5;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v104 = a2;
  v105 = a4;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v106 = v19;
    v107 = v24;
    *v23 = 136315138;
    type metadata accessor for ActivitySession(0);
    v25 = v19;
    v26 = String.init<A>(reflecting:)();
    v28 = a5;
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v107);

    *(v23 + 4) = v29;
    a5 = v28;
    _os_log_impl(&dword_1AEB26000, v20, v21, "Presenting session dismissal alert for %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1B27120C0](v24, -1, -1);
    MEMORY[0x1B27120C0](v23, -1, -1);
  }

  v30 = MEMORY[0x1E69E7D40];
  v31 = (*((*MEMORY[0x1E69E7D40] & *v19) + 0x408))();
  if (v31)
  {
    v32 = v31;
    v33 = (*((*v30 & *v19) + 0x328))();
    v34 = [v33 metadata];

    v102 = v32;
    if (v34 && (v35 = [v34 title], v34, v35))
    {
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      type metadata accessor for ConversationManagerHost();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v40 = [objc_opt_self() bundleForClass_];
      v108._object = 0xE000000000000000;
      v41._object = 0x80000001AEE2F040;
      v41._countAndFlagsBits = 0xD000000000000015;
      v42.value._countAndFlagsBits = 0x6E65736572706F43;
      v42.value._object = 0xEE0065726F436563;
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      v108._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v41, v42, v40, v43, v108);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1AEE07B20;
      *(v44 + 56) = MEMORY[0x1E69E6158];
      *(v44 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v44 + 32) = v36;
      *(v44 + 40) = v38;
      v45 = String.init(format:_:)();
      v47 = v46;
    }

    else
    {
      v48 = &v32[direct field offset for XPCHostConnection.bundleIdentifier];
      v49 = *&v32[direct field offset for XPCHostConnection.bundleIdentifier];
      v50 = *(v48 + 1);
      objc_allocWithZone(MEMORY[0x1E69635F8]);

      v51 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v49, v50, 1);
      if (v51)
      {
        v88 = v51;
        type metadata accessor for ConversationManagerHost();
        v89 = swift_getObjCClassFromMetadata();
        v90 = [objc_opt_self() bundleForClass_];
        v110._object = 0xE000000000000000;
        v91._countAndFlagsBits = 0x415F40255F444E45;
        v91._object = 0xEF454D414E5F5050;
        v92.value._countAndFlagsBits = 0x6E65736572706F43;
        v92.value._object = 0xEE0065726F436563;
        v93._countAndFlagsBits = 0;
        v93._object = 0xE000000000000000;
        v110._countAndFlagsBits = 0;
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v91, v92, v90, v93, v110)._countAndFlagsBits;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v94 = swift_allocObject();
        *(v94 + 16) = xmmword_1AEE07B20;
        v95 = v88;
        v96 = [v88 localizedName];
        v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v99 = v98;

        *(v94 + 56) = MEMORY[0x1E69E6158];
        *(v94 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v94 + 32) = v97;
        *(v94 + 40) = v99;
        v45 = String.init(format:_:)();
        v47 = v100;

LABEL_12:
        v58 = a3 & 1;
        v59 = ActivitySession.buildDisplayOptions(title:allowingCancellation:)(v45, v47, a3 & 1);

        if (v59)
        {
          v60 = *&v19[OBJC_IVAR___CPActivitySession_notificationCenter + 24];
          v61 = *&v19[OBJC_IVAR___CPActivitySession_notificationCenter + 32];
          countAndFlagsBits = __swift_project_boxed_opaque_existential_1(&v19[OBJC_IVAR___CPActivitySession_notificationCenter], v60);
          v62 = UUID.uuidString.getter();
          v64 = v63;
          v65 = swift_allocObject();
          *(v65 + 16) = v58;
          v66 = v105;
          *(v65 + 24) = v19;
          *(v65 + 32) = v66;
          *(v65 + 40) = a5;
          v67 = *(v61 + 8);
          v68 = v19;

          v67(v62, v64, v103, v104, v59, 0, partial apply for closure #1 in ActivitySession.presentSessionDismissalAlert(for:allowingCancellation:completion:), v65, v60, v61);
        }

        else
        {
          v78 = v19;
          v79 = Logger.logObject.getter();
          v80 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            v106 = v78;
            v107 = v82;
            *v81 = 136315138;
            type metadata accessor for ActivitySession(0);
            v83 = v78;
            v84 = String.init<A>(reflecting:)();
            v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, &v107);

            *(v81 + 4) = v86;
            _os_log_impl(&dword_1AEB26000, v79, v80, "Skipping session dismissal alert and ending session because only one option would be presented: %s", v81, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v82);
            MEMORY[0x1B27120C0](v82, -1, -1);
            MEMORY[0x1B27120C0](v81, -1, -1);
          }

          v87 = v102;
          (*((*MEMORY[0x1E69E7D40] & *v78) + 0x490))(v105, a5);
        }

        return;
      }

      type metadata accessor for ConversationManagerHost();
      v52 = swift_getObjCClassFromMetadata();
      v53 = [objc_opt_self() bundleForClass_];
      v109._object = 0xE000000000000000;
      v54._countAndFlagsBits = 0x495443415F444E45;
      v54._object = 0xEC00000059544956;
      v55.value._countAndFlagsBits = 0x6E65736572706F43;
      v55.value._object = 0xEE0065726F436563;
      v56._countAndFlagsBits = 0;
      v56._object = 0xE000000000000000;
      v109._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v54, v55, v53, v56, v109);

      v45 = String.init(format:_:)();
      v47 = v57;
    }

    goto LABEL_12;
  }

  v69 = v19;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v106 = v69;
    v107 = v73;
    *v72 = 136315138;
    type metadata accessor for ActivitySession(0);
    v74 = v69;
    v75 = String.init<A>(reflecting:)();
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v107);

    *(v72 + 4) = v77;
    _os_log_impl(&dword_1AEB26000, v70, v71, "Not presenting session dismissal alert because we don't have an XPC connection for the app (not joined?) session: %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    MEMORY[0x1B27120C0](v73, -1, -1);
    MEMORY[0x1B27120C0](v72, -1, -1);
  }

  v105(0);
}

uint64_t closure #1 in ActivitySession.presentSessionDismissalAlert(for:allowingCancellation:completion:)(uint64_t result, char a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (result == 2)
  {
    if ((a2 & 1) == 0)
    {
      return result;
    }

    return (*((*MEMORY[0x1E69E7D40] & *a3) + 0x498))(a4, a5);
  }

  if (result == 1)
  {
    v6 = *MEMORY[0x1E69E7D40] & *a3;
    if (a2)
    {
      return (*((*MEMORY[0x1E69E7D40] & *a3) + 0x490))(a4, a5);
    }

    return (*((*MEMORY[0x1E69E7D40] & *a3) + 0x498))(a4, a5);
  }

  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & *a3) + 0x490))(a4, a5);
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.default);
  v9 = a3;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    type metadata accessor for ActivitySession(0);
    v14 = v9;
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v18);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1AEB26000, v10, v11, "User chose not to dismiss session %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  return a4(1);
}

uint64_t ActivitySession.endSessionForAll(completion:)(void (*a1)(void), uint64_t *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  v46 = v12;
  v47 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(v17 - 8);
  v49 = v17;
  v50 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v48 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Log.default);
  v22 = v6;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v43[1] = a2;
    v26 = v25;
    v27 = swift_slowAlloc();
    v44 = a1;
    v43[0] = v27;
    v51 = v22;
    aBlock[0] = v27;
    *v26 = 136315138;
    type metadata accessor for ActivitySession(0);
    v45 = v16;
    v28 = v22;
    v29 = String.init<A>(reflecting:)();
    v31 = a5;
    v32 = a6;
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, aBlock);
    v16 = v45;

    *(v26 + 4) = v33;
    a6 = v32;
    a5 = v31;
    _os_log_impl(&dword_1AEB26000, v23, v24, a3, v26, 0xCu);
    v34 = v43[0];
    __swift_destroy_boxed_opaque_existential_1Tm(v43[0]);
    v35 = v34;
    a1 = v44;
    MEMORY[0x1B27120C0](v35, -1, -1);
    MEMORY[0x1B27120C0](v26, -1, -1);
  }

  a1(0);
  v36 = *&v22[OBJC_IVAR___CPActivitySession_queue];
  v37 = swift_allocObject();
  *(v37 + 16) = v22;
  aBlock[4] = a5;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a6;
  v38 = _Block_copy(aBlock);
  v39 = v22;
  v40 = v48;
  static DispatchQoS.unspecified.getter();
  v51 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type TUExternalParticipant and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v41 = v46;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v40, v16, v38);
  _Block_release(v38);
  (*(v47 + 8))(v16, v41);
  (*(v50 + 8))(v40, v49);
}

Swift::Void __swiftcall ActivitySession.terminateSessionIfAtEndOfLifetime()()
{
  v4 = v0;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v4 + OBJC_IVAR___CPActivitySession_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v12 = (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
LABEL_14:
    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Log.default);
    v32 = v4;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v50[0] = v3;
      v35 = swift_slowAlloc();
      v36 = v1;
      v37 = swift_slowAlloc();
      v52 = v37;
      *v35 = 67109634;
      *(v35 + 4) = v2() & 1;

      *(v35 + 8) = 2080;
      v38 = (*((*v36 & *v32) + 0x328))();
      v39 = [v38 metadata];

      if (v39)
      {
        v40 = [v39 lifetimePolicy];

        v51 = v40;
        type metadata accessor for TUConversationActivityLifetimePolicy(0);
        v41 = String.init<A>(reflecting:)();
        v43 = v42;
      }

      else
      {
        v43 = 0xE300000000000000;
        v41 = 7104878;
      }

      v44 = v50[0];
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v52);

      *(v35 + 10) = v45;
      *(v35 + 18) = 2080;
      v44(&v51, v46);
      v47 = String.init<A>(reflecting:)();
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v52);

      *(v35 + 20) = v49;
      _os_log_impl(&dword_1AEB26000, v33, v34, "terminateSessionIfAtEndOfLifetime, Not terminating session.  isLocallyInitiated: %{BOOL}d, lifetimePolicy: %s, state: %s", v35, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v37, -1, -1);
      MEMORY[0x1B27120C0](v35, -1, -1);
    }

    else
    {
    }

    return;
  }

  v1 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x2F8);
  v13 = (*MEMORY[0x1E69E7D40] & *v4) + 760;
  v14 = v3(&v52, v12);
  v15 = v52;
  if ((v52 & 0x8000000000000000) == 0)
  {
    v14 = outlined consume of ActivitySession.State(v52);
  }

  v2 = *((*v1 & *v4) + 0x340);
  if (((v2)(v14) & 1) == 0 || (v16 = (*((*v1 & *v4) + 0x328))(), v17 = [v16 metadata], v16, !v17) || (v18 = objc_msgSend(v17, sel_lifetimePolicy), v17, (v15 & 0x8000000000000000) == 0) || v18 != 1)
  {
    v50[1] = v13;
    if (one-time initialization token for default == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.default);
  v20 = v4;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = v1;
    v25 = swift_slowAlloc();
    v51 = v20;
    v52 = v25;
    *v23 = 136315138;
    type metadata accessor for ActivitySession(0);
    v26 = v20;
    v27 = String.init<A>(reflecting:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v52);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_1AEB26000, v21, v22, "terminateSessionIfAtEndOfLifetime, terminating %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v30 = v25;
    v1 = v24;
    MEMORY[0x1B27120C0](v30, -1, -1);
    MEMORY[0x1B27120C0](v23, -1, -1);
  }

  (*((*v1 & *v20) + 0x440))();
}

unint64_t ActivitySession.buildDisplayOptions(title:allowingCancellation:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B20;
  v9 = *MEMORY[0x1E69A60A8];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v11;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of NSObject?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);

  v12 = swift_initStackObject();
  if (a3)
  {
    *(v12 + 16) = xmmword_1AEE07B30;
    *(v12 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v12 + 72) = v10;
    *(v12 + 40) = v13;
    *(v12 + 48) = a1;
    *(v12 + 56) = a2;
    v14 = *MEMORY[0x1E69A6068];
    *(v12 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v12 + 88) = v15;
    type metadata accessor for ConversationManagerHost();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = objc_opt_self();

    v18 = [v17 bundleForClass_];
    v81._object = 0xE000000000000000;
    v19._object = 0x80000001AEE2F6F0;
    v19._countAndFlagsBits = 0xD000000000000010;
    v20.value._countAndFlagsBits = 0x6E65736572706F43;
    v20.value._object = 0xEE0065726F436563;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v81._countAndFlagsBits = 0;
    v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v81);

    *(v12 + 120) = MEMORY[0x1E69E6158];
    *(v12 + 96) = v22;
    v23 = *MEMORY[0x1E69A6078];
    *(v12 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v12 + 136) = v24;
    v25 = [v17 bundleForClass_];
    v82._object = 0xE000000000000000;
    v26._countAndFlagsBits = 0x4C45434E4143;
    v26._object = 0xE600000000000000;
    v27.value._countAndFlagsBits = 0x6E65736572706F43;
    v27.value._object = 0xEE0065726F436563;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    v82._countAndFlagsBits = 0;
    v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, v25, v28, v82);

    *(v12 + 144) = v29;
    v10 = MEMORY[0x1E69E6158];
    *(v12 + 168) = MEMORY[0x1E69E6158];
    *(v12 + 176) = 0xD000000000000022;
    *(v12 + 216) = MEMORY[0x1E69E6810];
    *(v12 + 184) = 0x80000001AEE2F710;
    *(v12 + 192) = 1;
    v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v12);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    swift_arrayDestroy();
    v31 = MEMORY[0x1E69A6090];
  }

  else
  {
    *(v12 + 16) = xmmword_1AEE07B10;
    *(v12 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v12 + 72) = v10;
    *(v12 + 40) = v32;
    *(v12 + 48) = a1;
    *(v12 + 56) = a2;
    v33 = *MEMORY[0x1E69A6078];
    *(v12 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v12 + 88) = v34;
    type metadata accessor for ConversationManagerHost();
    v35 = swift_getObjCClassFromMetadata();
    v36 = objc_opt_self();

    v37 = [v36 bundleForClass_];
    v83._object = 0xE000000000000000;
    v38._object = 0x80000001AEE2F6F0;
    v38._countAndFlagsBits = 0xD000000000000010;
    v39.value._countAndFlagsBits = 0x6E65736572706F43;
    v39.value._object = 0xEE0065726F436563;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    v83._countAndFlagsBits = 0;
    v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v83);

    *(v12 + 120) = v10;
    *(v12 + 96) = v41;
    v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v12);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    swift_arrayDestroy();
    v31 = MEMORY[0x1E69A6068];
  }

  v42 = *v31;
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;
  v46 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *v4) + 0x340))() & 1) == 0 || (v47 = (*((*v46 & *v4) + 0x328))(), v48 = [v47 metadata], v47, !v48) || (v49 = objc_msgSend(v48, sel_lifetimePolicy), v48, v49 != 1))
  {
    if (!(*((*v46 & *v4) + 0x3D8))() || (v51 = v50, ObjectType = swift_getObjectType(), v53 = (*(v51 + 48))(ObjectType, v51), swift_unknownObjectRelease(), (v53 & 1) != 0))
    {
      type metadata accessor for ConversationManagerHost();
      v54 = swift_getObjCClassFromMetadata();
      v55 = [objc_opt_self() bundleForClass_];
      v84._object = 0xE000000000000000;
      v56._countAndFlagsBits = 0x5F524F465F444E45;
      v56._object = 0xEA0000000000454DLL;
      v57.value._countAndFlagsBits = 0x6E65736572706F43;
      v57.value._object = 0xEE0065726F436563;
      v58._countAndFlagsBits = 0;
      v58._object = 0xE000000000000000;
      v84._countAndFlagsBits = 0;
      v59 = NSLocalizedString(_:tableName:bundle:value:comment:)(v56, v57, v55, v58, v84);

      v80 = v10;
      v79 = v59;
      outlined init with take of Any(&v79, v78);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = v30;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v78, v43, v45, isUniquelyReferenced_nonNull_native);
LABEL_16:

      return v77;
    }
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  __swift_project_value_buffer(v61, static Log.default);
  v62 = v4;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v79._countAndFlagsBits = v66;
    *v65 = 136315138;
    *&v78[0] = v62;
    type metadata accessor for ActivitySession(0);
    v67 = v62;
    v68 = String.init<A>(reflecting:)();
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v79._countAndFlagsBits);

    *(v65 + 4) = v70;
    _os_log_impl(&dword_1AEB26000, v63, v64, "excluding end-only-for-me option for locally initiated session with initiator-owned content association: %s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    MEMORY[0x1B27120C0](v66, -1, -1);
    MEMORY[0x1B27120C0](v65, -1, -1);
  }

  if (a3)
  {
    v71 = *MEMORY[0x1E69A6060];
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v73;
    v80 = MEMORY[0x1E69E6810];
    v79._countAndFlagsBits = 0;
    outlined init with take of Any(&v79, v78);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v77 = v30;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v78, v72, v74, v75);
    goto LABEL_16;
  }

  return 0;
}

id default argument 7 of ActivitySession.init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:)@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static IMUserNotificationCenter.shared;
  a1[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMUserNotificationCenter, 0x1E69A6190);
  a1[4] = &protocol witness table for IMUserNotificationCenter;
  *a1 = v3;

  return v3;
}

char *ActivitySession.__allocating_init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t *a9)
{
  v10 = v9;
  v29 = a7;
  v30 = a8;
  v28 = a6;
  v27 = a5;
  v15 = objc_allocWithZone(v10);
  ObjectType = swift_getObjectType();
  v17 = a9[3];
  v18 = a9[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a9, v17);
  v20 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  v24 = specialized ActivitySession.init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:)(a1, a2, a3, v27, v28, v29, v30, v22, v15, ObjectType, v17, a4, v18);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a9);
  return v24;
}

char *ActivitySession.init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t *a9)
{
  v27 = a7;
  v28 = a8;
  v26 = a6;
  v25 = a5;
  ObjectType = swift_getObjectType();
  v15 = a9[3];
  v16 = a9[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a9, v15);
  v18 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = specialized ActivitySession.init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:)(a1, a2, a3, v25, v26, v27, v28, v20, v9, ObjectType, v15, a4, v16);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a9);
  return v22;
}

void closure #1 in ActivitySession.init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    ActivitySession.associatedScenesChanged()();
  }
}

_BYTE *ActivitySession.__allocating_init(activitySession:manager:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return specialized ActivitySession.__allocating_init(activitySession:manager:)(a1, a2, v3, ObjectType, a3);
}

id ActivitySession.__deallocating_deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR___CPActivitySession_invalidateAssertionsWorkItem;
  if (*&v0[OBJC_IVAR___CPActivitySession_invalidateAssertionsWorkItem])
  {

    dispatch thunk of DispatchWorkItem.cancel()();

    v3 = *&v0[v2];
    *&v0[v2] = 0;
  }

  ActivitySession.invalidateDomainAssertion()();
  v4 = OBJC_IVAR___CPActivitySession_connection;
  swift_beginAccess();
  v5 = *&v1[v4];
  *&v1[v4] = 0;

  v7.receiver = v1;
  v7.super_class = type metadata accessor for ActivitySession(0);
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

Swift::Void __swiftcall ActivitySession.refreshDataCryptor()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR___CPActivitySession_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v8 = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v9 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2F8))(&v27, v8);
    v10 = v27;
    v25 = 0x8000000000000008;
    v26 = v27;
    v11 = static ActivitySession.State.== infix(_:_:)(&v26, &v25);
    outlined consume of ActivitySession.State(v10);
    if (v11)
    {
      v12 = swift_allocObject();
      *(v12 + 16) = v0;
      v13 = *((*v9 & *v0) + 0x3D8);
      v14 = v0;
      if (v13())
      {
        v16 = v15;
        ObjectType = swift_getObjectType();
        v18 = UUID.uuidString.getter();
        v20 = v19;
        v21 = swift_allocObject();
        v21[2] = v14;
        v21[3] = partial apply for closure #1 in ActivitySession.refreshDataCryptor();
        v21[4] = v12;
        v22 = *(v16 + 96);
        v23 = v14;

        v22(v23, v18, v20, partial apply for closure #1 in ActivitySession.fetchDataCryptor(completion:), v21, ObjectType, v16);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in ActivitySession.refreshDataCryptor()(uint64_t a1, void *a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x408))();
  if (result)
  {
    v4 = result;
    v5 = [*(result + direct field offset for XPCHostConnection.connection) remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore24ActivitySessionXPCClient_pMd, &_s14CopresenceCore24ActivitySessionXPCClient_pMR);
    result = swift_dynamicCast();
    if (result)
    {

      [v6 setDataCryptor_];
      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #1 in ActivitySession.fetchDataCryptor(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + OBJC_IVAR___CPActivitySession_queue);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in ActivitySession.fetchDataCryptor(completion:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_237;
  v18 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v23 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type TUExternalParticipant and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v15, v11, v18);
  _Block_release(v18);
  (*(v22 + 8))(v11, v8);
  (*(v12 + 8))(v15, v21);
}

Swift::Void __swiftcall ActivitySession.invalidate(replacementBundleIdentifier:)(Swift::String replacementBundleIdentifier)
{
  object = replacementBundleIdentifier._object;
  countAndFlagsBits = replacementBundleIdentifier._countAndFlagsBits;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v1[OBJC_IVAR___CPActivitySession_queue];
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (one-time initialization token for host == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.host);
  v12 = v1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_1AEB26000, v13, v14, "Invalidating %@", v15, 0xCu);
    outlined destroy of NSObject?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = countAndFlagsBits;
  *(v18 + 24) = object;
  v21 = v18;
  v19 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x300);

  v19(&v21);
}

id ActivitySession.rbsAssertion(for:)(uint64_t a1)
{
  v1 = [objc_opt_self() targetWithPid_];
  v2 = *MEMORY[0x1E69D8FC8];
  v3 = MEMORY[0x1B270FF70](0x74634170756F7247, 0xEF73656974697669);
  v4 = [objc_opt_self() attributeWithDomain:v2 name:v3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AEE07B40;
  *(v5 + 32) = v4;
  v6 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v7 = v4;
  v8 = MEMORY[0x1B270FF70](0xD000000000000024, 0x80000001AEE2F060);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v6 initWithExplanation:v8 target:v1 attributes:isa];

  return v10;
}

void ActivitySession.updateApplicationState(_:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR___CPActivitySession_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v10 = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v11 = MEMORY[0x1E69E7D40];
    if (a1 != 1 || ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x2F8))(&v17, v10), v12 = v17, v15 = 0x8000000000000008, v16 = v17, v13 = static ActivitySession.State.== infix(_:_:)(&v16, &v15), outlined consume of ActivitySession.State(v12), (v13 & 1) == 0))
    {
      (*((*v11 & *v1) + 0x2B0))(a1);
      ActivitySession.sessionChanged()();
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ActivitySession.refreshActiveParticipants()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR___CPActivitySession_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = *(v0 + OBJC_IVAR___CPActivitySession_activeParticipantIDs);
    v9 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x428);

    v9(v10, 1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in ActivitySession.listener(_:shouldAcceptNewConnection:)(_BYTE *a1, void *a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x3D8))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 80))(a2, ObjectType, v6);
    result = swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  *a1 = v8 & 1;
  return result;
}

Swift::Void __swiftcall ActivitySession.requestForegroundPresentation()()
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.host);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Asked to be presented as foreground for %@", v5, 0xCu);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x2F8);
  v9(&v25);
  v10 = v25;
  v23 = 0x8000000000000008;
  v24 = v25;
  v11 = static ActivitySession.State.== infix(_:_:)(&v24, &v23);
  v12 = outlined consume of ActivitySession.State(v10);
  if (v11 & 1) != 0 || ((v9)(&v25, v12), v13 = v25, v23 = 0x8000000000000000, v24 = v25, v14 = static ActivitySession.State.== infix(_:_:)(&v24, &v23), outlined consume of ActivitySession.State(v13), (v14))
  {
    v15 = (*((*v8 & *v2) + 0x2B0))(1);
    if ((*((*v8 & *v2) + 0x3D8))(v15))
    {
      v17 = v16;
      ObjectType = swift_getObjectType();
      (*(v17 + 136))(v2, ObjectType, v17);
      swift_unknownObjectRelease();
    }

    v19 = *(v2 + OBJC_IVAR___CPActivitySession_foregroundPresentationSubject);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
    Subject<>.send()();
  }

  else
  {
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1AEB26000, oslog, v20, "Not presenting in foreground as session is not in joined or waiting state", v21, 2u);
      MEMORY[0x1B27120C0](v21, -1, -1);
    }
  }
}

Swift::Void __swiftcall ActivitySession.enableAutoCloseForPersistentScene()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  v2 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v5 = *(v12 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR___CPActivitySession_queue);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in ActivitySession.enableAutoCloseForPersistentScene();
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_100;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type TUExternalParticipant and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v8, v4, v10);
  _Block_release(v10);
  (*(v13 + 8))(v4, v1);
  (*(v5 + 8))(v8, v12);
}

void closure #1 in ActivitySession.enableAutoCloseForPersistentScene()()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR___CPActivitySession_persistentSceneIsEligibleForAutoClose;
    swift_beginAccess();
    v8 = v6[v7];
    v6[v7] = 1;
    v9 = *&v6[OBJC_IVAR___CPActivitySession_queue];
    *v4 = v9;
    (*(v1 + 104))(v4, *MEMORY[0x1E69E8020], v0);
    v10 = v9;
    LOBYTE(v9) = _dispatchPreconditionTest(_:)();
    (*(v1 + 8))(v4, v0);
    if (v9)
    {
      if (v8 != v6[v7])
      {
        ActivitySession.sessionChanged()();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall ActivitySession.associateScene(sceneID:)(Swift::String sceneID)
{
  object = sceneID._object;
  countAndFlagsBits = sceneID._countAndFlagsBits;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v1[OBJC_IVAR___CPActivitySession_queue];
  v13 = swift_allocObject();
  v13[2] = v1;
  v13[3] = countAndFlagsBits;
  v13[4] = object;
  aBlock[4] = partial apply for closure #1 in ActivitySession.associateScene(sceneID:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_106;
  v14 = _Block_copy(aBlock);
  v15 = v1;

  static DispatchQoS.unspecified.getter();
  v18 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type TUExternalParticipant and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v12, v8, v14);
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v17);
}

void closure #1 in ActivitySession.associateScene(sceneID:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + OBJC_IVAR___CPActivitySession_sceneAssociationCoordinator);
  if (v5)
  {
    oslog = v5;
    v6._countAndFlagsBits = a2;
    v6._object = a3;
    ActivitySession.SceneAssociationCoordinator.setSystemAssociatedScene(to:)(v6);
  }

  else
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.host);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v12);
      _os_log_impl(&dword_1AEB26000, oslog, v8, "Attempted to associate scene '%s' on an activity without a scene association coordinator.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1B27120C0](v10, -1, -1);
      MEMORY[0x1B27120C0](v9, -1, -1);
    }
  }
}

uint64_t ActivitySession.associatedScenesChanged()()
{
  if (one-time initialization token for sceneAssociation != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.sceneAssociation);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = MEMORY[0x1E69E7D40];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136446722;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000001AEE2F680, &v28);
    *(v7 + 12) = 2080;
    (*((*v6 & *v2) + 0x1C8))(v27);
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    v9 = BidirectionalCollection<>.joined(separator:)();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v28);

    *(v7 + 14) = v12;
    *(v7 + 22) = 2080;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type TUExternalParticipant and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v28);

    *(v7 + 24) = v15;
    _os_log_impl(&dword_1AEB26000, v3, v4, "%{public}s to [%s] on %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  else
  {
  }

  v16 = (*((*v6 & *v2) + 0x3D8))();
  if (v16)
  {
    v18 = v17;
    ObjectType = swift_getObjectType();
    (*(v18 + 144))(v2, ObjectType, v18);
    v16 = swift_unknownObjectRelease();
  }

  result = (*((*v6 & *v2) + 0x408))(v16);
  if (result)
  {
    v21 = result;
    v22 = [*(result + direct field offset for XPCHostConnection.connection) remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore24ActivitySessionXPCClient_pMd, &_s14CopresenceCore24ActivitySessionXPCClient_pMR);
    result = swift_dynamicCast();
    if (result)
    {
      v23 = v28;

      v24 = (*((*v6 & *v2) + 0x1C0))();
      if (v25)
      {
        v26 = MEMORY[0x1B270FF70](v24);
      }

      else
      {
        v26 = 0;
      }

      [v23 setAssociatedSceneWithSceneSessionIdentifier_];

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void ActivitySession.setNearbyParticipantIDs(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR___CPActivitySession_unaliasedNearbyParticipantIDs;
  if (*(v1 + OBJC_IVAR___CPActivitySession_unaliasedNearbyParticipantIDs) && (_sSh2eeoiySbShyxG_ABtFZs6UInt64V_Tt1g5(*(v1 + OBJC_IVAR___CPActivitySession_unaliasedNearbyParticipantIDs), a1) & 1) != 0)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.host);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v67[0] = v7;
      *v6 = 136446210;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000001AEE2F090, v67);
      _os_log_impl(&dword_1AEB26000, oslog, v5, "%{public}s: Nearby participants did not change. Skipping update.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1B27120C0](v7, -1, -1);
      MEMORY[0x1B27120C0](v6, -1, -1);
    }

    else
    {
    }

    return;
  }

  *(v1 + v3) = a1;

  v8 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3C0);
  v64 = a1;

  v63 = v1;
  v10 = v8(v9);
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_ADTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  if (v14)
  {
    goto LABEL_12;
  }

  do
  {
LABEL_13:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v17 >= v15)
    {

      *(swift_allocObject() + 16) = v11;

      v33 = MEMORY[0x1B27104E0](0, MEMORY[0x1E69E76D8], MEMORY[0x1E69E76E8]);
      v34 = *(v64 + 56);
      v67[0] = v33;
      v35 = -1 << *(v64 + 32);
      if (-v35 < 64)
      {
        v36 = ~(-1 << -v35);
      }

      else
      {
        v36 = -1;
      }

      v37 = v36 & v34;

      v38 = 0;
      while (1)
      {
        v39 = v37;
        v40 = v38;
        if (!v37)
        {
          break;
        }

LABEL_35:
        v42 = (v39 - 1) & v39;
        v43 = *(*(v64 + 48) + ((v40 << 9) | (8 * __clz(__rbit64(v39)))));

        outlined consume of Set<String>.Iterator._Variant();
        v38 = v40;
        v37 = v42;
        if (v11[2])
        {
          v44 = specialized __RawDictionaryStorage.find<A>(_:)(v43);
          v38 = v40;
          v37 = v42;
          if (v45)
          {
            specialized Set._Variant.insert(_:)(&v68, *(v11[7] + 8 * v44));
            v38 = v40;
            v37 = v42;
          }
        }
      }

      v41 = v38;
      while (1)
      {
        v40 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_51;
        }

        if (v40 >= ((63 - v35) >> 6))
        {

          outlined consume of Set<String>.Iterator._Variant();
          outlined consume of Set<String>.Iterator._Variant();

          if (one-time initialization token for host != -1)
          {
            goto LABEL_54;
          }

          goto LABEL_39;
        }

        v39 = *(v64 + 56 + 8 * v40);
        ++v41;
        if (v39)
        {
          goto LABEL_35;
        }
      }
    }

    v14 = *(v10 + 64 + 8 * v17);
    ++v16;
  }

  while (!v14);
  while (1)
  {
    v18 = (v17 << 9) | (8 * __clz(__rbit64(v14)));
    osloga = *(*(v10 + 48) + v18);
    v19 = *(*(v10 + 56) + v18);
    v20 = [v19 identifier];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67[0] = v11;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
    v24 = v11[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      break;
    }

    v28 = v23;
    if (v11[3] >= v27)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = v22;
        specialized _NativeDictionary.copy()();
        v22 = v32;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_56;
      }
    }

    v14 &= v14 - 1;
    v11 = v67[0];
    if (v28)
    {
      *(*(v67[0] + 56) + 8 * v22) = osloga;

      v16 = v17;
      if (!v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *(v67[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
      *(v11[6] + 8 * v22) = v20;
      *(v11[7] + 8 * v22) = osloga;

      v30 = v11[2];
      v26 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v26)
      {
        goto LABEL_53;
      }

      v11[2] = v31;
      v16 = v17;
      if (!v14)
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    v17 = v16;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  swift_once();
LABEL_39:
  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Log.host);

  v47 = v63;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v67[0] = v51;
    *v50 = 136446722;
    *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000001AEE2F090, v67);
    *(v50 + 12) = 2080;
    v52 = Set.description.getter();
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v67);

    *(v50 + 14) = v54;
    *(v50 + 22) = 2080;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type TUExternalParticipant and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v67);

    *(v50 + 24) = v57;
    _os_log_impl(&dword_1AEB26000, v48, v49, "%{public}s: Setting nearby participants to %s on %s", v50, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v51, -1, -1);
    MEMORY[0x1B27120C0](v50, -1, -1);
  }

  v58 = (*((*MEMORY[0x1E69E7D40] & *v47) + 0x408))();
  if (v58)
  {
    v59 = v58;
    v60 = [*(v58 + direct field offset for XPCHostConnection.connection) remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore24ActivitySessionXPCClient_pMd, &_s14CopresenceCore24ActivitySessionXPCClient_pMR);
    if (swift_dynamicCast())
    {
      v61 = v68;

      isa = Set._bridgeToObjectiveC()().super.isa;

      [v61 setNearbyParticipants_];

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
LABEL_56:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }
  }

  else
  {
  }
}