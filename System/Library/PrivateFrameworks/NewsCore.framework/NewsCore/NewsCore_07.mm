uint64_t sub_1B64CC638()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B6435678;

  return FeedItemInventory.tokenForCoordinatedRead()();
}

uint64_t sub_1B64CC6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B64CC408(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B64CC6F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B64CC74C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B64CC7A0(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v15[0] = *(a2 + 24);
  v15[1] = v4;
  type metadata accessor for FeedItemInventory.Metadata.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1B67DA26C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B67DA47C();
  v17 = 0;
  sub_1B67D877C();
  sub_1B645C75C(&unk_1EDB1EFC0);
  v11 = v15[3];
  sub_1B67DA1FC();
  if (!v11)
  {
    v12 = *(a2 + 36);
    v16 = 1;
    swift_getAssociatedTypeWitness();
    v13 = *(swift_getAssociatedConformanceWitness() + 16);
    sub_1B67DA1FC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B64CC9C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1B67D9DFC();
  v32 = *(v5 - 8);
  v33 = v5;
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38 = &v29 - v10;
  type metadata accessor for FeedItemInventory.Metadata.CodingKeys();
  swift_getWitnessTable();
  v41 = sub_1B67DA1EC();
  v35 = *(v41 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v13 = &v29 - v12;
  v39 = a2;
  v14 = type metadata accessor for FeedItemInventory.Metadata();
  v31 = *(v14 - 8);
  v15 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v40 = v13;
  v19 = v42;
  sub_1B67DA46C();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v17;
  v42 = a1;
  v30 = v14;
  v22 = v35;
  v21 = v36;
  sub_1B67D877C();
  v44 = 0;
  sub_1B645C75C(&unk_1EDB1EFA0);
  v23 = v38;
  v24 = v40;
  sub_1B67DA18C();
  sub_1B6404758(v23, v20);
  v43 = 1;
  v25 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_1B67DA18C();
  (*(v22 + 8))(v24, v41);
  v26 = v30;
  (*(v32 + 32))(v20 + *(v30 + 36), v21, v33);
  v27 = v31;
  (*(v31 + 16))(v34, v20, v26);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return (*(v27 + 8))(v20, v26);
}

id sub_1B64CCE6C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v34 = a1;
  v35 = a4;
  v37 = a3;
  v33 = a2;
  ObjectType = swift_getObjectType();
  v9 = *v5;
  v10 = MEMORY[0x1E69E7D40];
  v11 = *MEMORY[0x1E69E7D40];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B3E0, &qword_1B68165A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v32 - v14;
  v16 = sub_1B67D85FC();
  v32 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &v6[*((v11 & v9) + 0x60)];
  sub_1B67D991C();
  v22 = *((*v10 & *v6) + 0x88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B600, &qword_1B6816720);
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  *(v23 + 16) = 0;
  *&v6[v22] = v23;
  (*(*(*((v11 & v9) + 0x50) - 8) + 16))(&v6[*((*v10 & *v6) + 0x68)], v34);
  sub_1B6431D18(a2, &v6[*((*v10 & *v6) + 0x70)]);
  type metadata accessor for FeedItemDatabase(0);
  (*(v17 + 16))(v20, v37, v16);
  v24 = sub_1B67D8A9C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 16);
  v27 = v35;
  v26(v15, v35, v24);
  (*(v25 + 56))(v15, 0, 1, v24);
  v28 = FeedItemDatabase.__allocating_init(fileURL:logger:)(v20, v15);
  v29 = MEMORY[0x1E69E7D40];
  *&v6[*((*MEMORY[0x1E69E7D40] & *v6) + 0x78)] = v28;
  *&v6[*((*v29 & *v6) + 0x80)] = a5;
  v26(&v6[*((*v29 & *v6) + 0x90)], v27, v24);
  v38.receiver = v6;
  v38.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v38, sel_init);
  (*(v25 + 8))(v27, v24);
  (*(v17 + 8))(v37, v32);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return v30;
}

unint64_t sub_1B64CD22C()
{
  result = qword_1EB94B618;
  if (!qword_1EB94B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94B618);
  }

  return result;
}

uint64_t dispatch thunk of FeedItemInventoryType.refreshIfNeeded(policy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B6422E9C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B6484E3C;

  return v9(a1, a2);
}

uint64_t sub_1B64CD5E4(uint64_t a1)
{
  result = sub_1B67D993C();
  if (v3 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = sub_1B67D8A9C();
      if (v6 <= 0x3F)
      {
        v9 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

void sub_1B64CD758(uint64_t a1)
{
  sub_1B6458D7C();
  if (v2 <= 0x3F)
  {
    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    sub_1B67D9DFC();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B64CD7FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1B67D877C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  if (v8)
  {
    v17 = *(v7 + 64);
  }

  else
  {
    v17 = *(v7 + 64) + 1;
  }

  v18 = *(v12 + 80);
  v19 = *(v12 + 64);
  if (v14)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = v17 + v18;
  if (a2 <= v16)
  {
LABEL_40:
    if (v9 >= v15)
    {
      v29 = (*(v7 + 48))(a1, v8, v6);
    }

    else
    {
      v29 = (*(v13 + 48))((a1 + v21) & ~v18);
    }

    if (v29 >= 2)
    {
      return v29 - 1;
    }

    else
    {
      return 0;
    }
  }

  v22 = v20 + (v21 & ~v18);
  v23 = 8 * v22;
  if (v22 <= 3)
  {
    v25 = ((a2 - v16 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v25))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v25 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v25 < 2)
    {
LABEL_39:
      if (v16)
      {
        goto LABEL_40;
      }

      return 0;
    }
  }

  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_39;
  }

LABEL_26:
  v26 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v26 = 0;
  }

  if (v22)
  {
    if (v22 <= 3)
    {
      v27 = v22;
    }

    else
    {
      v27 = 4;
    }

    if (v27 > 2)
    {
      if (v27 == 3)
      {
        v28 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v28 = *a1;
      }
    }

    else if (v27 == 1)
    {
      v28 = *a1;
    }

    else
    {
      v28 = *a1;
    }
  }

  else
  {
    v28 = 0;
  }

  return v16 + (v28 | v26) + 1;
}

void sub_1B64CDA70(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1B67D877C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v13 = *(a4 + 16);
  v12 = *(a4 + 24);
  v14 = 0;
  v15 = *(swift_getAssociatedTypeWitness() - 8);
  v16 = *(v15 + 84);
  if (v16)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v17 <= v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = v17;
  }

  if (v10)
  {
    v19 = *(v9 + 64);
  }

  else
  {
    v19 = *(v9 + 64) + 1;
  }

  v20 = *(v15 + 80);
  v21 = *(v15 + 64);
  if (!v16)
  {
    ++v21;
  }

  v22 = ((v19 + v20) & ~v20) + v21;
  if (a3 <= v18)
  {
LABEL_29:
    if (v18 < a2)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  if (v22 > 3)
  {
    v14 = 1;
    if (v18 >= a2)
    {
      goto LABEL_18;
    }

LABEL_30:
    v25 = ~v18 + a2;
    if (v22 >= 4)
    {
      bzero(a1, v22);
      *a1 = v25;
      v26 = 1;
      if (v14 > 1)
      {
        goto LABEL_32;
      }

LABEL_78:
      if (v14)
      {
        a1[v22] = v26;
      }

      return;
    }

    v26 = (v25 >> (8 * v22)) + 1;
    if (v22)
    {
      v30 = v25 & ~(-1 << (8 * v22));
      bzero(a1, v22);
      if (v22 != 3)
      {
        if (v22 == 2)
        {
          *a1 = v30;
          if (v14 <= 1)
          {
            goto LABEL_78;
          }
        }

        else
        {
          *a1 = v25;
          if (v14 <= 1)
          {
            goto LABEL_78;
          }
        }

LABEL_32:
        if (v14 == 2)
        {
          *&a1[v22] = v26;
        }

        else
        {
          *&a1[v22] = v26;
        }

        return;
      }

      *a1 = v30;
      a1[2] = BYTE2(v30);
    }

    if (v14 <= 1)
    {
      goto LABEL_78;
    }

    goto LABEL_32;
  }

  v23 = ((a3 - v18 + ~(-1 << (8 * v22))) >> (8 * v22)) + 1;
  if (!HIWORD(v23))
  {
    if (v23 < 0x100)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }

    if (v23 >= 2)
    {
      v14 = v24;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_29;
  }

  v14 = 4;
  if (v18 < a2)
  {
    goto LABEL_30;
  }

LABEL_18:
  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v22] = 0;
  }

  else if (v14)
  {
    a1[v22] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v11 >= v17)
  {
    if (v11 >= a2)
    {
      v33 = *(v9 + 56);

      v33(a1, a2 + 1, v10, v8);
    }

    else
    {
      if (v19 <= 3)
      {
        v31 = ~(-1 << (8 * v19));
      }

      else
      {
        v31 = -1;
      }

      if (v19)
      {
        v28 = v31 & (~v11 + a2);
        if (v19 <= 3)
        {
          v29 = v19;
        }

        else
        {
          v29 = 4;
        }

        bzero(a1, v19);
        if (v29 <= 2)
        {
          if (v29 != 1)
          {
            goto LABEL_48;
          }

          goto LABEL_64;
        }

        goto LABEL_83;
      }
    }
  }

  else
  {
    a1 = (&a1[v19 + v20] & ~v20);
    if (v17 >= a2)
    {
      v32 = *(v15 + 56);

      v32(a1, a2 + 1);
    }

    else
    {
      if (v21 <= 3)
      {
        v27 = ~(-1 << (8 * v21));
      }

      else
      {
        v27 = -1;
      }

      if (v21)
      {
        v28 = v27 & (~v17 + a2);
        if (v21 <= 3)
        {
          v29 = v21;
        }

        else
        {
          v29 = 4;
        }

        bzero(a1, v21);
        if (v29 <= 2)
        {
          if (v29 != 1)
          {
LABEL_48:
            *a1 = v28;
            return;
          }

LABEL_64:
          *a1 = v28;
          return;
        }

LABEL_83:
        if (v29 == 3)
        {
          *a1 = v28;
          a1[2] = BYTE2(v28);
        }

        else
        {
          *a1 = v28;
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for FeedItemInventoryErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FeedItemInventoryErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1B64CDFE8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1B64CDFFC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_1B64CE034()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(type metadata accessor for FeedItemInventory.Metadata() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B642694C;

  return sub_1B64C9348(v7, v8, v9, v6, v0 + v5);
}

uint64_t sub_1B64CE118(void *a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  swift_beginAccess();
  v7 = *(v4 + 16);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v9;
    swift_beginAccess();
    v10 = a1;
    MEMORY[0x1B8C949F0]();
    if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_3;
    }
  }

  sub_1B67D97FC();
LABEL_3:
  sub_1B67D983C();
  v11 = *(v3 + 16);
  swift_endAccess();
  if (v11 >> 62)
  {
    result = sub_1B67DA04C();
    if (result < 10)
    {
      return result;
    }
  }

  else
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 10)
    {
      return result;
    }
  }

  return v6();
}

uint64_t sub_1B64CE28C(uint64_t a1)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B620, &qword_1B6816A30);
  v2 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v4 = &v21 - v3;
  v24 = sub_1B67D877C();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v23 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B67D876C();
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v21 = v5 + 16;

  v13 = 0;
  while (v10)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    (*(v5 + 16))(&v4[*(v22 + 48)], *(a1 + 56) + *(v5 + 72) * v16, v24);
    *v4 = v18;
    *(v4 + 1) = v19;

    LOBYTE(v19) = sub_1B67D86EC();
    result = sub_1B6418AB4(v4, &qword_1EB94B620, &qword_1B6816A30);
    if (v19)
    {
      v20 = 1;
LABEL_13:

      (*(v5 + 8))(v23, v24);
      return v20;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      v20 = 0;
      goto LABEL_13;
    }

    v10 = *(a1 + 64 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B64CE4C8(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1B67D877C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  if (*(a2 + 16) && (v12 = sub_1B6456E70(*a1, a1[1]), (v13 & 1) != 0))
  {
    (*(v5 + 16))(v9, *(a2 + 56) + *(v5 + 72) * v12, v4);
    (*(v5 + 32))(v11, v9, v4);
    v14 = sub_1B67D86EC();
    (*(v5 + 8))(v11, v4);
  }

  else
  {
    v14 = 1;
  }

  return v14 & 1;
}

uint64_t sub_1B64CE634(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x1E69E7CC0];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1B6456B24(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_1B6456B24((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_16:

    return v8;
  }

  return result;
}

uint64_t sub_1B64CE7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x80000001B6829DC0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B67DA2DC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1B64CE85C(uint64_t a1)
{
  v2 = sub_1B64D2DAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B64CE898(uint64_t a1)
{
  v2 = sub_1B64D2DAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B64CE8D4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B628, &qword_1B6816A38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64D2DAC();
  sub_1B67DA47C();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B630, &qword_1B6816A40);
  sub_1B64D2E00();
  sub_1B67DA24C();
  return (*(v5 + 8))(v8, v4);
}

void *sub_1B64CEA30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1B64D2EA8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B64CEA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7[9] = a6;
  v7[10] = v6;
  v7[7] = a3;
  v7[8] = a5;
  v7[5] = a1;
  v7[6] = a2;
  v9 = type metadata accessor for RecipeItemPruningPolicy(0);
  v7[11] = v9;
  v10 = *(v9 - 8);
  v7[12] = v10;
  v11 = *(v10 + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v12 = sub_1B67D8A9C();
  v7[15] = v12;
  v13 = *(v12 - 8);
  v7[16] = v13;
  v14 = *(v13 + 64) + 15;
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v15 = sub_1B67D877C();
  v7[19] = v15;
  v16 = *(v15 - 8);
  v7[20] = v16;
  v17 = *(v16 + 64) + 15;
  v7[21] = swift_task_alloc();
  v18 = swift_task_alloc();
  v19 = *a4;
  v7[22] = v18;
  v7[23] = v19;

  return MEMORY[0x1EEE6DFA0](sub_1B64CEC24, 0, 0);
}

uint64_t sub_1B64CEC24()
{
  v1 = v0[22];
  sub_1B67D876C();
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_1B64CECBC;
  v3 = v0[10];

  return sub_1B64CF8D4();
}

uint64_t sub_1B64CECBC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 192);
  v8 = *v3;
  v4[25] = a1;
  v4[26] = a2;
  v4[27] = v2;

  if (v2)
  {
    v6 = sub_1B64CF80C;
  }

  else
  {
    v6 = sub_1B64CEDD4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B64CEDD4()
{
  v66 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = sub_1B64318C8();
  v6 = *(v3 + 16);
  v6(v2, v5, v4);

  v7 = sub_1B67D8A7C();
  v8 = sub_1B67D9C9C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 216);
    v10 = *(v0 + 200);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v64 = v12;
    v65[0] = v10;
    *v11 = 136446210;

    sub_1B64D1F00(v65);
    if (v9)
    {
LABEL_7:
    }

    v60 = v6;
    v62 = v5;
    v13 = *(v0 + 120);
    v14 = *(v0 + 128);
    v56 = v13;
    v58 = *(v0 + 144);
    v15 = MEMORY[0x1B8C94A20](v65[0], MEMORY[0x1E69E6158]);
    v17 = v16;

    v18 = sub_1B6456540(v15, v17, &v64);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_1B63EF000, v7, v8, "interested in recipe list IDs: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1B8C96DF0](v12, -1, -1);
    MEMORY[0x1B8C96DF0](v11, -1, -1);

    v19 = v56;
    v57 = *(v14 + 8);
    v57(v58, v19);
    v9 = 0;
  }

  else
  {
    v60 = v6;
    v62 = v5;
    v20 = *(v0 + 144);
    v21 = *(v0 + 120);
    v22 = *(v0 + 128);

    v57 = *(v22 + 8);
    v57(v20, v21);
    v9 = *(v0 + 216);
  }

  v23 = *(v0 + 200);
  v24 = *(v0 + 160);
  v25 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = *(v0 + 136);
  v59 = *(v0 + 120);
  v29 = *(v0 + 48);
  v28 = *(v0 + 56);
  sub_1B64D302C(v29, v28);
  v30 = sub_1B64D2C80(v29, v28);
  *(v0 + 224) = v30;
  sub_1B67D876C();
  v31 = swift_task_alloc();
  *(v31 + 16) = v30;
  *(v31 + 24) = v25;

  v32 = sub_1B64CE634(sub_1B64D38B4, v31, v23);
  *(v0 + 232) = v32;

  v33 = *(v24 + 8);
  *(v0 + 240) = v33;
  *(v0 + 248) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v33(v25, v26);
  v60(v27, v62, v59);

  v34 = sub_1B67D8A7C();
  v35 = sub_1B67D9C9C();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v64 = v37;
    v65[0] = v32;
    *v36 = 136446210;

    sub_1B64D1F00(v65);
    if (v9)
    {
      goto LABEL_7;
    }

    v44 = *(v0 + 128);
    v45 = *(v0 + 120);
    v61 = v45;
    v63 = *(v0 + 136);
    v46 = MEMORY[0x1B8C94A20](v65[0], MEMORY[0x1E69E6158]);
    v48 = v47;

    v49 = sub_1B6456540(v46, v48, &v64);

    *(v36 + 4) = v49;
    _os_log_impl(&dword_1B63EF000, v34, v35, "will fetch from recipe list IDs needing refresh: %{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1B8C96DF0](v37, -1, -1);
    MEMORY[0x1B8C96DF0](v36, -1, -1);

    v43 = v61;
    v42 = v63;
  }

  else
  {
    v40 = *(v0 + 128);
    v39 = *(v0 + 136);
    v41 = *(v0 + 120);

    v42 = v39;
    v43 = v41;
  }

  v57(v42, v43);
  v50 = *(v0 + 184);
  v51 = *(v0 + 80);
  v52 = swift_task_alloc();
  *(v0 + 256) = v52;
  v53 = *(v0 + 64);
  *(v52 + 16) = v51;
  *(v52 + 24) = v32;
  *(v52 + 32) = v50;
  *(v52 + 40) = v53;
  v54 = *(MEMORY[0x1E69E8920] + 4);
  v55 = swift_task_alloc();
  *(v0 + 264) = v55;
  *v55 = v0;
  v55[1] = sub_1B64CF2D0;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1B64CF2D0()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  v2[34] = v0;

  v5 = v2[32];
  if (v0)
  {
    v7 = v2[28];
    v6 = v2[29];
    v10 = v2 + 25;
    v8 = v2[25];
    v9 = v10[1];

    v11 = sub_1B64CF434;
  }

  else
  {

    v11 = sub_1B64CF500;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1B64CF434()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 160) + 8;
  v3 = *(v0 + 168);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  (*(v0 + 240))(*(v0 + 176), *(v0 + 152));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B64CF500()
{
  v1 = v0;
  v2 = v0[28];
  v3 = v0[26];
  v35 = v0[22];
  v36 = v0[25];
  v4 = v0[20];
  v33 = v0[29];
  v34 = v0[19];
  v40 = v0[14];
  v42 = v0[34];
  v7 = v0 + 11;
  v6 = v0[11];
  v5 = v7[1];
  v38 = sub_1B64D3050(v2, v36, v33, v3);

  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B638, &qword_1B6816A58);
  v9 = *(v5 + 72);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B6812A80;
  v12 = (v11 + v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B640, &qword_1B6816A60);
  v14 = swift_allocBox();
  v16 = v15;
  v17 = *(v13 + 48);
  *v15 = v33;
  swift_storeEnumTagMultiPayload();
  (*(v4 + 16))(v16 + v17, v35, v34);
  swift_storeEnumTagMultiPayload();
  *v12 = v14;
  swift_storeEnumTagMultiPayload();
  *(v12 + v9) = v36;
  swift_storeEnumTagMultiPayload();
  *(v8 + 16) = v11;
  *v40 = v8;
  swift_storeEnumTagMultiPayload();
  v18 = sub_1B67D83FC();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_1B67D83EC();
  v1[4] = v38;
  sub_1B64D339C();
  v21 = sub_1B67D83DC();
  if (v42)
  {

    v23 = 0;
    v24 = 0xF000000000000000;
  }

  else
  {
    v23 = v21;
    v24 = v22;
  }

  v25 = v1[30];
  v26 = v1[22];
  v37 = v1[31];
  v39 = v1[21];
  v27 = v1[19];
  v41 = v1[18];
  v43 = v1[17];
  v29 = v1[13];
  v28 = v1[14];
  v30 = v1[5];
  v1[2] = v23;
  v1[3] = v24;
  sub_1B64D33F0(v28, v29);
  sub_1B64D3454();
  sub_1B64D34A8();
  sub_1B64E1EA0((v1 + 2), v29, v30);
  sub_1B64D34FC(v28);
  v25(v26, v27);

  v31 = v1[1];

  return v31();
}

uint64_t sub_1B64CF80C()
{
  v1 = v0[27];
  v2 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[13];
  v5 = v0[14];
  (*(v0[20] + 8))(v0[22], v0[19]);

  v7 = v0[1];

  return v7();
}

void sub_1B64CF8F4()
{
  v20 = v0;
  v1 = MEMORY[0x1E69E7CD0];
  *(v0 + 88) = MEMORY[0x1E69E7CD0];
  v2 = *(*(v0 + 104) + 24);
  *(v0 + 112) = v2;
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC8];
  *(v0 + 128) = MEMORY[0x1E69E7CC8];
  *(v0 + 136) = v4;
  *(v0 + 120) = v3;
  if (v3)
  {
    *(v0 + 144) = 0;
    if (*(v2 + 16))
    {
      sub_1B6431D18(v2 + 32, v0 + 16);
      v5 = *(v0 + 40);
      v6 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
      *(v0 + 72) = (*(v6 + 16))(v5, v6);
      *(v0 + 80) = v7;
      v8 = *(v0 + 40);
      v9 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
      v10 = *(v9 + 8);
      v18 = (v10 + *v10);
      v11 = v10[1];
      v12 = swift_task_alloc();
      *(v0 + 152) = v12;
      *v12 = v0;
      v12[1] = sub_1B64CFB54;

      v18(v8, v9);
    }

    else
    {
      __break(1u);
    }

    return;
  }

  v13 = *(v1 + 16);
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = sub_1B646682C(*(v1 + 16), 0);
  v15 = sub_1B648945C(&v19, v14 + 4, v13, MEMORY[0x1E69E7CD0]);
  sub_1B6449D40();
  if (v15 != v13)
  {
    __break(1u);
LABEL_9:

    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = *(v0 + 8);
  v17 = *(v0 + 136);

  v16(v14, v17);
}

uint64_t sub_1B64CFB54(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[19];
  v9 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
    v5 = v3[17];
    __swift_destroy_boxed_opaque_existential_1(v3 + 2);
    v6 = v3[11];

    v7 = sub_1B64D001C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 2);
    v7 = sub_1B64CFC8C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B64CFC8C()
{
  v41 = v0;
  v1 = *(v0 + 160);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v20 = *(v0 + 144);
    v21 = *(v0 + 120);

    if (v20 + 1 == v21)
    {
      goto LABEL_14;
    }

LABEL_17:
    v19 = *(v0 + 144) + 1;
LABEL_18:
    *(v0 + 144) = v19;
    v26 = *(v0 + 112);
    if (v19 >= *(v26 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_1B6431D18(v26 + 40 * v19 + 32, v0 + 16);
      v27 = *(v0 + 40);
      v28 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v27);
      *(v0 + 72) = (*(v28 + 16))(v27, v28);
      *(v0 + 80) = v29;
      v30 = *(v0 + 40);
      v31 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v30);
      v32 = *(v31 + 8);
      v40 = (v32 + *v32);
      v33 = v32[1];
      v34 = swift_task_alloc();
      *(v0 + 152) = v34;
      *v34 = v0;
      v34[1] = sub_1B64CFB54;
      v35 = v40;

      return v35(v30, v31);
    }

    return result;
  }

  v3 = *(v0 + 80);
  v4 = *(v0 + 72);
  v5 = (v1 + 40);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  do
  {
    v10 = *(v5 - 1);
    v9 = *v5;
    swift_bridgeObjectRetain_n();
    sub_1B6469928((v0 + 56), v10, v9);
    v11 = *(v0 + 64);

    if ((v3 & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v6;
      sub_1B64D19BC(v10, v9, isUniquelyReferenced_nonNull_native, v4);

LABEL_4:
      v7 = v6;
      goto LABEL_5;
    }

    v12 = sub_1B6456E70(v10, v9);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 96) = v6;
      if (!v15)
      {
        sub_1B64D1B18();
        v6 = *(v0 + 96);
      }

      v16 = *(*(v6 + 48) + 16 * v12 + 8);

      sub_1B64D180C(v12, v6);
      goto LABEL_4;
    }

LABEL_5:
    v5 += 2;
    --v2;
  }

  while (v2);
  v17 = *(v0 + 160);

  v19 = *(v0 + 144) + 1;
  *(v0 + 128) = v6;
  *(v0 + 136) = v7;
  if (v19 != *(v0 + 120))
  {
    goto LABEL_18;
  }

LABEL_14:
  v22 = *(v0 + 88);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = sub_1B646682C(*(v22 + 16), 0);
    v25 = sub_1B648945C(&v39, v24 + 4, v23, v22);
    result = sub_1B6449D40();
    if (v25 != v23)
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    v36 = *(v0 + 88);

    v24 = MEMORY[0x1E69E7CC0];
  }

  v37 = *(v0 + 8);
  v38 = *(v0 + 136);

  return v37(v24, v38);
}

uint64_t sub_1B64D0034(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1B67D8A9C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64D00F8, 0, 0);
}

uint64_t sub_1B64D00F8()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1B64D302C(v1, v2);
  v3 = sub_1B64D2C80(v1, v2);
  v0[8] = v3;
  if (sub_1B64CE28C(v3))
  {

    v4 = v0[7];

    v5 = v0[1];

    return v5(1);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_1B64D01F8;
    v8 = v0[4];

    return sub_1B64CF8D4();
  }
}

uint64_t sub_1B64D01F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = *(v4 + 64);

    v8 = sub_1B64D04A4;
  }

  else
  {

    *(v4 + 88) = a1;
    v8 = sub_1B64D033C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1B64D033C()
{
  v16 = v0;
  v1 = v0[8];
  v2 = sub_1B646A4DC(v0[11]);

  v3 = *(v1 + 16);
  v4 = v0[8];
  if (v3)
  {
    v14 = v2;
    v5 = sub_1B646682C(v3, 0);
    v6 = sub_1B64D2938(&v15, v5 + 4, v3, v4);

    result = sub_1B6449D40();
    if (v6 != v3)
    {
      __break(1u);
      return result;
    }

    v8 = v0[8];

    v2 = v14;
  }

  else
  {
    v9 = v0[8];

    v5 = MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1B646A4DC(v5);

  v11 = sub_1B64D1030(v2, v10);

  v12 = v0[7];

  v13 = v0[1];

  return v13((v11 & 1) == 0);
}

uint64_t sub_1B64D04A4()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = sub_1B64318C8();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1B67D8A7C();
  v8 = sub_1B67D9C8C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[10];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1B63EF000, v7, v8, "skipping refresh because we couldn't determine recipe lists, error=%{public}@", v11, 0xCu);
    sub_1B6418AB4(v12, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v12, -1, -1);
    MEMORY[0x1B8C96DF0](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);
  v15 = v0[7];

  v16 = v0[1];

  return v16(0);
}

void sub_1B64D064C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A398, &qword_1B6811328);
  v11 = *(v10 - 8);
  v45 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v42 - v12;
  v13 = sub_1B67D8A9C();
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 16);
  v18 = objc_allocWithZone(FCRecipeItemsOperation);
  v19 = sub_1B67D97AC();
  v20 = [v18 initWithContext:v17 recipeListIDs:v19];

  if (a4)
  {
    [v20 setRecipeItemHandlerQueue_];
  }

  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a5;
  v22[4] = a6;
  v54 = sub_1B6465678;
  v55 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_1B645C40C;
  v53 = &block_descriptor_9;
  v23 = _Block_copy(&aBlock);

  [v20 setRecipeItemHandler_];
  _Block_release(v23);
  v24 = sub_1B64318C8();
  v26 = v48;
  v25 = v49;
  (*(v48 + 16))(v16, v24, v49);
  v27 = v20;
  v28 = sub_1B67D8A7C();
  v29 = sub_1B67D9C9C();
  if (!os_log_type_enabled(v28, v29))
  {

    (*(v26 + 8))(v16, v25);
    goto LABEL_7;
  }

  v43 = v11;
  v44 = v10;
  v30 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  aBlock = v31;
  *v30 = 136446210;
  v32 = [v27 shortOperationDescription];

  if (v32)
  {
    v33 = sub_1B67D964C();
    v35 = v34;

    v36 = sub_1B6456540(v33, v35, &aBlock);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_1B63EF000, v28, v29, "will fetch global recipe items from CK with operation: %{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x1B8C96DF0](v31, -1, -1);
    MEMORY[0x1B8C96DF0](v30, -1, -1);

    (*(v48 + 8))(v16, v49);
    v11 = v43;
    v10 = v44;
LABEL_7:
    v37 = v46;
    (*(v11 + 16))(v46, v47, v10);
    v38 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v39 = (v45 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    (*(v11 + 32))(v40 + v38, v37, v10);
    *(v40 + v39) = v21;
    v54 = sub_1B64D369C;
    v55 = v40;
    aBlock = MEMORY[0x1E69E9820];
    v51 = 1107296256;
    v52 = sub_1B64632F0;
    v53 = &block_descriptor_25;
    v41 = _Block_copy(&aBlock);

    [v27 setCompletionHandler_];
    _Block_release(v41);
    [v27 start];

    return;
  }

  __break(1u);
}

uint64_t sub_1B64D0B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B67D8A9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    v17[1] = v8;
    v11 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A398, &qword_1B6811328);
    return sub_1B67D98AC();
  }

  else
  {
    v13 = sub_1B64318C8();
    (*(v6 + 16))(v10, v13, v5);

    v14 = sub_1B67D8A7C();
    v15 = sub_1B67D9C9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134349056;
      swift_beginAccess();
      *(v16 + 4) = *(a3 + 16);

      _os_log_impl(&dword_1B63EF000, v14, v15, "did fetch %{public}ld global recipe items", v16, 0xCu);
      MEMORY[0x1B8C96DF0](v16, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v10, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A398, &qword_1B6811328);
    return sub_1B67D98BC();
  }
}

uint64_t sub_1B64D0D70()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B64D0DB8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = *v5;
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1B642694C;

  return sub_1B64CEA78(a1, v11, v12, a3, a4, a5);
}

uint64_t sub_1B64D0E90(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *v1;
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B64D0F34;

  return sub_1B64D0034(v3, v4);
}

uint64_t sub_1B64D0F34(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1B64D1030(uint64_t result, uint64_t a2)
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
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_1B67DA3DC();

    sub_1B67D967C();
    v17 = sub_1B67DA41C();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_1B67DA2DC() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B64D11E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B670, &qword_1B6816CA0);
  v37 = a2;
  result = sub_1B67DA0CC();
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1B67DA3DC();
      sub_1B67D967C();
      result = sub_1B67DA41C();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B64D148C(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_1B67D877C();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B660, &unk_1B6816C90);
  v46 = a2;
  result = sub_1B67DA0CC();
  v12 = result;
  if (*(v9 + 16))
  {
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
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_1B67DA3DC();
      sub_1B67D967C();
      result = sub_1B67DA41C();
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
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
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

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
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

uint64_t sub_1B64D180C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B67D9E7C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1B67DA3DC();

      sub_1B67D967C();
      v13 = sub_1B67DA41C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B64D19BC(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1B6456E70(a1, a2);
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
      sub_1B64D11E8(v16, a3 & 1);
      v20 = *v5;
      result = sub_1B6456E70(a1, a2);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1B67DA34C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1B64D1B18();
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

void *sub_1B64D1B18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B670, &qword_1B6816CA0);
  v2 = *v0;
  v3 = sub_1B67DA0BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

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
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1B64D1C80()
{
  v1 = v0;
  v36 = sub_1B67D877C();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B660, &unk_1B6816C90);
  v4 = *v0;
  v5 = sub_1B67DA0BC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1B64D1F00(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B64D2A90(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B64D1F6C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B64D1F6C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B67DA27C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B67D981C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B64D2134(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1B64D2064(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B64D2064(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1B67DA2DC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B64D2134(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1B64AD494(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1B64D2710((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1B67DA2DC();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1B67DA2DC();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B64AB9CC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1B64AB9CC((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1B64D2710((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B64AD494(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1B64AD408(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1B67DA2DC(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1B64D2710(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1B67DA2DC() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1B67DA2DC() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void *sub_1B64D2938(void *result, void *a2, uint64_t a3, uint64_t a4)
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

unint64_t sub_1B64D2AA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B688, &qword_1B6816CB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B660, &unk_1B6816C90);
    v8 = sub_1B67DA0EC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B64D3840(v10, v6);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1B6456E70(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1B67D877C();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B64D2C80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v8 = sub_1B64D2AA4(MEMORY[0x1E69E7CC0]);
    sub_1B6457448(a1, a2);
  }

  else
  {
    v4 = sub_1B67D83AC();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    sub_1B646B894(a1, a2);
    sub_1B67D839C();
    sub_1B64D37EC();
    sub_1B67D838C();
    sub_1B6457448(a1, a2);
    sub_1B6457448(a1, a2);

    return v9;
  }

  return v8;
}

unint64_t sub_1B64D2DAC()
{
  result = qword_1EDB21DA0[0];
  if (!qword_1EDB21DA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB21DA0);
  }

  return result;
}

unint64_t sub_1B64D2E00()
{
  result = qword_1EDB1E658;
  if (!qword_1EDB1E658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94B630, &qword_1B6816A40);
    sub_1B645C75C(&unk_1EDB1EFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E658);
  }

  return result;
}

void *sub_1B64D2EA8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B678, &qword_1B6816CA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64D2DAC();
  sub_1B67DA46C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B630, &qword_1B6816A40);
    sub_1B64D3744();
    sub_1B67DA1CC();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_1B64D302C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B646B894(a1, a2);
  }

  return a1;
}

uint64_t sub_1B64D3050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1B67D877C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v46 = &v43 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v43 - v13;
  sub_1B67D876C();
  v14 = sub_1B67D956C();
  v15 = *(a3 + 16);
  if (!v15)
  {
LABEL_18:
    (*(v7 + 8))(v47, v6);
    return v14;
  }

  v48 = (v7 + 32);
  v43 = v7 + 40;
  v44 = a4;
  v16 = (a3 + 40);
  v45 = v7;
  while (1)
  {
    v19 = *(v16 - 1);
    v18 = *v16;
    v20 = *(a4 + 16);

    if (v20)
    {
      v21 = sub_1B6456E70(v19, v18);
      if (v22)
      {
        v23 = *(*(a4 + 56) + 8 * v21);
      }
    }

    v24 = v46;
    sub_1B67D86CC();
    v25 = *v48;
    v26 = v24;
    v27 = v6;
    (*v48)(v49, v26, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v14;
    v29 = sub_1B6456E70(v19, v18);
    v31 = v14[2];
    v32 = (v30 & 1) == 0;
    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
      break;
    }

    v35 = v30;
    if (v14[3] < v34)
    {
      sub_1B64D148C(v34, isUniquelyReferenced_nonNull_native);
      v29 = sub_1B6456E70(v19, v18);
      if ((v35 & 1) != (v36 & 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      if (v35)
      {
        goto LABEL_3;
      }

      goto LABEL_14;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v41 = v29;
    sub_1B64D1C80();
    v29 = v41;
    if (v35)
    {
LABEL_3:
      v17 = v29;

      v14 = v50;
      v7 = v45;
      v6 = v27;
      (*(v45 + 40))(v50[7] + *(v45 + 72) * v17, v49, v27);
      goto LABEL_4;
    }

LABEL_14:
    v37 = v49;
    v14 = v50;
    v50[(v29 >> 6) + 8] |= 1 << v29;
    v38 = (v14[6] + 16 * v29);
    *v38 = v19;
    v38[1] = v18;
    v7 = v45;
    v6 = v27;
    v25((v14[7] + *(v45 + 72) * v29), v37, v27);
    v39 = v14[2];
    v33 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v33)
    {
      goto LABEL_20;
    }

    v14[2] = v40;
LABEL_4:
    v16 += 2;
    --v15;
    a4 = v44;
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1B67DA34C();
  __break(1u);
  return result;
}

unint64_t sub_1B64D339C()
{
  result = qword_1EDB1E8D8[0];
  if (!qword_1EDB1E8D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB1E8D8);
  }

  return result;
}

uint64_t sub_1B64D33F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeItemPruningPolicy(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B64D3454()
{
  result = qword_1EDB1EFD0;
  if (!qword_1EDB1EFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EFD0);
  }

  return result;
}

unint64_t sub_1B64D34A8()
{
  result = qword_1EDB1EFD8;
  if (!qword_1EDB1EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EFD8);
  }

  return result;
}

uint64_t sub_1B64D34FC(uint64_t a1)
{
  v2 = type metadata accessor for RecipeItemPruningPolicy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B64D3580()
{
  result = qword_1EB957870[0];
  if (!qword_1EB957870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB957870);
  }

  return result;
}

unint64_t sub_1B64D35D8()
{
  result = qword_1EDB21D90;
  if (!qword_1EDB21D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB21D90);
  }

  return result;
}

unint64_t sub_1B64D3630()
{
  result = qword_1EDB21D98;
  if (!qword_1EDB21D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB21D98);
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B64D369C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A398, &qword_1B6811328) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B64D0B6C(a1, v1 + v4, v5);
}

unint64_t sub_1B64D3744()
{
  result = qword_1EDB1E650;
  if (!qword_1EDB1E650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94B630, &qword_1B6816A40);
    sub_1B645C75C(&unk_1EDB1EFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E650);
  }

  return result;
}

unint64_t sub_1B64D37EC()
{
  result = qword_1EDB1E8D0;
  if (!qword_1EDB1E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E8D0);
  }

  return result;
}

uint64_t sub_1B64D3840(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B688, &qword_1B6816CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B64D38D4(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  v6 = *v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B690, &unk_1B6816CC0);
  *(v4 + 40) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50) - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v10 = *(v6 + 80);
  v11 = *(v6 + 88);
  v12 = type metadata accessor for RecipeItemInventory.Metadata();
  *(v4 + 64) = v12;
  v13 = *(v12 - 8);
  *(v4 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 104) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1B64D3A4C, 0, 0);
}

uint64_t sub_1B64D3A4C()
{
  v1 = v0[4];
  sub_1B64D3F24(v0[10]);
  v2 = v0[7];
  sub_1B6415FF0(v0[10], v2, &unk_1EB94A100, &qword_1B680FD50);
  v3 = sub_1B67D877C();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3) != 1;
  sub_1B6418AB4(v2, &unk_1EB94A100, &qword_1B680FD50);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1B64D3BE0;
  v6 = v0[10];
  v7 = v0[4];

  return sub_1B64D4398(1, 1, v6, v4);
}

uint64_t sub_1B64D3BE0()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1B64D3E8C;
  }

  else
  {
    v3 = sub_1B64D3CF4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B64D3CF4()
{
  v20 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16);
  v5 = *(*(v0 + 32) + *(**(v0 + 32) + 112));
  v19[0] = *(v0 + 104);
  sub_1B64DCC84(v19, v4, v3, 0, v2);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(v0 + 64);
  if (v1)
  {
    (*(v7 + 8))(*(v0 + 80), *(v0 + 64));
    v9 = *(v0 + 80);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 48);
    v15 = *(v0 + 56);
    v16 = *(v0 + 40);
    swift_getOpaqueTypeConformance2();
    v17 = sub_1B67D971C();
    (*(v7 + 8))(v6, v8);

    v18 = *(v0 + 8);

    return v18(v17);
  }
}

uint64_t sub_1B64D3E8C()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[12];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B64D3F24@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v37 = a1;
  v4 = *v1;
  v5 = v4[11];
  v6 = v4[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1B67D9DFC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v33 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v33 - v12;
  v35 = v6;
  v36 = v5;
  v14 = type metadata accessor for RecipeItemInventory.Metadata();
  v15 = sub_1B67D9DFC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - v18;
  v20 = *(v3 + v4[14]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B64DD6A4(v14, v19);
  if (v2)
  {
    v21 = *(*v3 + 128);
    v22 = v2;
    v23 = sub_1B67D8A7C();
    v24 = sub_1B67D9C8C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      v27 = v2;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_1B63EF000, v23, v24, "failed to load metadata from database, error=%{public}@", v25, 0xCu);
      sub_1B6418AB4(v26, &qword_1EB94A780, &qword_1B6810140);
      MEMORY[0x1B8C96DF0](v26, -1, -1);
      MEMORY[0x1B8C96DF0](v25, -1, -1);
    }

    else
    {
    }

    goto LABEL_7;
  }

  v29 = *(v14 - 8);
  if ((*(v29 + 48))(v19, 1, v14) == 1)
  {
    (*(v16 + 8))(v19, v15);
LABEL_7:
    v30 = sub_1B67D877C();
    (*(*(v30 - 8) + 56))(v13, 1, 1, v30);
    v31 = v33;
    (*(*(AssociatedTypeWitness - 8) + 56))(v33, 1, 1);
    return sub_1B64D76A0(v13, v31, v37);
  }

  return (*(v29 + 32))(v37, v19, v14);
}

uint64_t sub_1B64D4398(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 64) = a4;
  *(v5 + 16) = a3;
  *(v5 + 24) = v4;
  v9 = swift_task_alloc();
  *(v5 + 32) = v9;
  *v9 = v5;
  v9[1] = sub_1B64D444C;

  return sub_1B64D48D0(a1, a2 & 1, a3);
}

uint64_t sub_1B64D444C(char a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 65) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B64D454C, 0, 0);
}

uint64_t sub_1B64D454C()
{
  v14 = v0;
  if (*(v0 + 65) != 1)
  {
LABEL_4:
    v6 = *(v0 + 8);

    return v6();
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v1 + *(*v1 + 120));
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  os_unfair_lock_lock((v3 + 24));
  sub_1B64D89A0((v3 + 16), &v13);
  os_unfair_lock_unlock((v3 + 24));
  LOBYTE(v2) = *(v0 + 64);
  v5 = v13;
  *(v0 + 40) = v13;

  if (v2)
  {

    goto LABEL_4;
  }

  v8 = *(MEMORY[0x1E69E86A8] + 4);
  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
  *v9 = v0;
  v9[1] = sub_1B64D46F4;
  v11 = MEMORY[0x1E69E7288];
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v10, v5, v12, v10, v11);
}

uint64_t sub_1B64D46F4()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1B64D486C;
  }

  else
  {
    v3 = sub_1B64D4808;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B64D4808()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B64D486C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_1B64D48D0(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 184) = a3;
  *(v4 + 192) = v3;
  *(v4 + 105) = a2;
  *(v4 + 176) = a1;
  *(v4 + 200) = *v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50) - 8) + 64) + 15;
  *(v4 + 208) = swift_task_alloc();
  v6 = sub_1B67D877C();
  *(v4 + 216) = v6;
  v7 = *(v6 - 8);
  *(v4 + 224) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64D4A28, 0, 0);
}

uint64_t sub_1B64D4A28()
{
  v83 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  sub_1B6415FF0(*(v0 + 184), v3, &unk_1EB94A100, &qword_1B680FD50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B6418AB4(*(v0 + 208), &unk_1EB94A100, &qword_1B680FD50);
    goto LABEL_3;
  }

  v13 = *(v0 + 105);
  (*(*(v0 + 224) + 32))(*(v0 + 264), *(v0 + 208), *(v0 + 216));
  if ((v13 & 1) == 0)
  {
    v25 = *(v0 + 264);
    v26 = *(v0 + 224);
    v27 = *(v0 + 192);
    v28 = *(v0 + 176);
    sub_1B67D872C();
    v30 = *(*v27 + 128);
    v31 = *(v26 + 16);
    v32 = *(v0 + 264);
    v33 = *(v0 + 216);
    if (fabs(v29) < v28)
    {
      v31(*(v0 + 232), v32, v33);
      v34 = sub_1B67D8A7C();
      v35 = sub_1B67D9C9C();
      v36 = os_log_type_enabled(v34, v35);
      v37 = *(v0 + 264);
      v39 = *(v0 + 224);
      v38 = *(v0 + 232);
      v40 = *(v0 + 216);
      if (v36)
      {
        v41 = *(v0 + 176);
        v79 = *(v0 + 264);
        v42 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v82 = v76;
        *v42 = 136446722;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0xE000000000000000;
        *(v0 + 96) = v41;
        *(v0 + 104) = 0;
        sub_1B67DA01C();
        v43 = sub_1B6456540(*(v0 + 16), *(v0 + 24), &v82);

        *(v42 + 4) = v43;
        *(v42 + 12) = 2082;
        sub_1B645C75C(&qword_1EDB1EF98);
        v44 = sub_1B67DA28C();
        v46 = v45;
        v47 = *(v39 + 8);
        v47(v38, v40);
        v48 = sub_1B6456540(v44, v46, &v82);

        *(v42 + 14) = v48;
        *(v42 + 22) = 2050;
        *(v42 + 24) = v41;
        _os_log_impl(&dword_1B63EF000, v34, v35, "should not refresh inventory due to policy=%{public}s, lastRefresh=%{public}s, refreshInterval=%{public}f", v42, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B8C96DF0](v76, -1, -1);
        MEMORY[0x1B8C96DF0](v42, -1, -1);

        v47(v79, v40);
      }

      else
      {

        v74 = *(v39 + 8);
        v74(v38, v40);
        v74(v37, v40);
      }

      v4 = 0;
      goto LABEL_4;
    }

    v31(*(v0 + 240), v32, v33);
    v49 = sub_1B67D8A7C();
    v50 = sub_1B67D9C9C();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 264);
    v53 = *(v0 + 240);
    v55 = *(v0 + 216);
    v54 = *(v0 + 224);
    if (v51)
    {
      v56 = *(v0 + 176);
      v80 = *(v0 + 264);
      v57 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v82 = v77;
      *v57 = 136446722;
      *(v0 + 32) = 0;
      *(v0 + 40) = 0xE000000000000000;
      *(v0 + 112) = v56;
      *(v0 + 120) = 0;
      sub_1B67DA01C();
      v58 = sub_1B6456540(*(v0 + 32), *(v0 + 40), &v82);

      *(v57 + 4) = v58;
      *(v57 + 12) = 2082;
      sub_1B645C75C(&qword_1EDB1EF98);
      v59 = sub_1B67DA28C();
      v61 = v60;
      v62 = *(v54 + 8);
      v62(v53, v55);
      v63 = sub_1B6456540(v59, v61, &v82);

      *(v57 + 14) = v63;
      *(v57 + 22) = 2050;
      *(v57 + 24) = v56;
      _os_log_impl(&dword_1B63EF000, v49, v50, "should refresh inventory due to policy=%{public}s, lastRefresh=%{public}s, refreshInterval=%{public}f", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C96DF0](v77, -1, -1);
      MEMORY[0x1B8C96DF0](v57, -1, -1);

      v62(v80, v55);
    }

    else
    {

      v75 = *(v54 + 8);
      v75(v53, v55);
      v75(v52, v55);
    }

    goto LABEL_3;
  }

  v14 = *(v0 + 192);
  v15 = *v14;
  if (!*(v0 + 176))
  {
    v64 = v14 + *(v15 + 128);
    v65 = sub_1B67D8A7C();
    v66 = sub_1B67D9C9C();
    v67 = os_log_type_enabled(v65, v66);
    v68 = *(v0 + 264);
    v70 = *(v0 + 216);
    v69 = *(v0 + 224);
    if (v67)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v71 = 136446210;
      *(v0 + 80) = 0;
      *(v0 + 88) = 0xE000000000000000;
      *(v0 + 160) = 0;
      v81 = v68;
      v82 = v72;
      v4 = 1;
      *(v0 + 168) = 1;
      sub_1B67DA01C();
      v73 = sub_1B6456540(*(v0 + 80), *(v0 + 88), &v82);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_1B63EF000, v65, v66, "should refresh inventory due to policy=%{public}s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v72);
      MEMORY[0x1B8C96DF0](v72, -1, -1);
      MEMORY[0x1B8C96DF0](v71, -1, -1);

      (*(v69 + 8))(v81, v70);
      goto LABEL_4;
    }

    (*(v69 + 8))(v68, v70);
LABEL_3:
    v4 = 1;
LABEL_4:
    v6 = *(v0 + 256);
    v5 = *(v0 + 264);
    v8 = *(v0 + 240);
    v7 = *(v0 + 248);
    v9 = *(v0 + 232);
    v10 = *(v0 + 208);

    v11 = *(v0 + 8);

    return v11(v4);
  }

  v16 = *(v0 + 200);
  v17 = *(v0 + 184);
  v18 = *(v15 + 96);
  v19 = *(v16 + 80);
  v20 = *(v16 + 88);
  v21 = *(type metadata accessor for RecipeItemInventory.Metadata() + 36);
  v22 = *(v20 + 32);
  v78 = (v22 + *v22);
  v23 = v22[1];
  v24 = swift_task_alloc();
  *(v0 + 272) = v24;
  *v24 = v0;
  v24[1] = sub_1B64D5258;

  return v78(v17 + v21, v19, v20);
}

uint64_t sub_1B64D5258(char a1)
{
  v2 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 106) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B64D5358, 0, 0);
}

uint64_t sub_1B64D5358()
{
  v41 = v0;
  v1 = *(v0 + 106);
  v2 = *(v0 + 216);
  v3 = *(**(v0 + 192) + 128);
  v4 = *(*(v0 + 224) + 16);
  v5 = *(v0 + 264);
  if (v1 == 1)
  {
    v4(*(v0 + 256), v5, v2);
    v6 = sub_1B67D8A7C();
    v7 = sub_1B67D9C9C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 256);
    v10 = *(v0 + 264);
    v12 = *(v0 + 216);
    v11 = *(v0 + 224);
    if (v8)
    {
      v39 = 1;
      v13 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40 = v38;
      *v13 = 136446466;
      *(v0 + 64) = 0;
      *(v0 + 72) = 0xE000000000000000;
      *(v0 + 144) = 1;
      *(v0 + 152) = 1;
      sub_1B67DA01C();
      v37 = v10;
      v14 = sub_1B6456540(*(v0 + 64), *(v0 + 72), &v40);

      *(v13 + 4) = v14;
      *(v13 + 12) = 2082;
      sub_1B645C75C(&qword_1EDB1EF98);
      v15 = sub_1B67DA28C();
      v17 = v16;
      v18 = *(v11 + 8);
      v18(v9, v12);
      v19 = sub_1B6456540(v15, v17, &v40);

      *(v13 + 14) = v19;
      v20 = "should refresh inventory due to policy=%{public}s, lastRefresh=%{public}s";
LABEL_6:
      _os_log_impl(&dword_1B63EF000, v6, v7, v20, v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C96DF0](v38, -1, -1);
      v27 = v13;
      v1 = v39;
      MEMORY[0x1B8C96DF0](v27, -1, -1);

      v18(v37, v12);
      goto LABEL_8;
    }
  }

  else
  {
    v4(*(v0 + 248), v5, v2);
    v6 = sub_1B67D8A7C();
    v7 = sub_1B67D9C9C();
    v21 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 264);
    v9 = *(v0 + 248);
    v12 = *(v0 + 216);
    v11 = *(v0 + 224);
    if (v21)
    {
      v39 = v1;
      v13 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40 = v38;
      *v13 = 136446466;
      *(v0 + 48) = 0;
      *(v0 + 56) = 0xE000000000000000;
      *(v0 + 128) = 1;
      *(v0 + 136) = 1;
      sub_1B67DA01C();
      v37 = v10;
      v22 = sub_1B6456540(*(v0 + 48), *(v0 + 56), &v40);

      *(v13 + 4) = v22;
      *(v13 + 12) = 2082;
      sub_1B645C75C(&qword_1EDB1EF98);
      v23 = sub_1B67DA28C();
      v25 = v24;
      v18 = *(v11 + 8);
      v18(v9, v12);
      v26 = sub_1B6456540(v23, v25, &v40);

      *(v13 + 14) = v26;
      v20 = "should not refresh inventory due to policy=%{public}s, lastRefresh=%{public}s";
      goto LABEL_6;
    }
  }

  v28 = *(v11 + 8);
  v28(v9, v12);
  v28(v10, v12);
LABEL_8:
  v30 = *(v0 + 256);
  v29 = *(v0 + 264);
  v32 = *(v0 + 240);
  v31 = *(v0 + 248);
  v33 = *(v0 + 232);
  v34 = *(v0 + 208);

  v35 = *(v0 + 8);

  return v35(v1);
}

void sub_1B64D5788(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v30 = a3;
  v32 = a4;
  v6 = *a2;
  v7 = *(*a2 + 80);
  v8 = *(*a2 + 88);
  v9 = type metadata accessor for RecipeItemInventory.Metadata();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v29 - v16;
  v31 = a1;
  v18 = *a1;
  if (v18)
  {
    v19 = v32;
    v20 = *(v6 + 128);

    v21 = sub_1B67D8A7C();
    v22 = sub_1B67D9C9C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1B63EF000, v21, v22, "refresh is already in flight", v23, 2u);
      MEMORY[0x1B8C96DF0](v23, -1, -1);
    }

    *v19 = v18;
  }

  else
  {
    v24 = sub_1B67D993C();
    (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
    (*(v10 + 16))(v13, v30, v9);
    v25 = (*(v10 + 80) + 56) & ~*(v10 + 80);
    v26 = swift_allocObject();
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 4) = v7;
    *(v26 + 5) = v8;
    *(v26 + 6) = a2;
    (*(v10 + 32))(&v26[v25], v13, v9);

    v27 = sub_1B6461304(0, 0, v17, &unk_1B6816DF8, v26);
    v28 = v32;
    *v31 = v27;
    *v28 = v27;
  }
}

uint64_t sub_1B64D5A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_1B64D5B1C;

  return sub_1B64D5E78(a5);
}

uint64_t sub_1B64D5B1C()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_1B64D5CC4;
  }

  else
  {
    v3 = sub_1B64D5C30;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B64D5C30()
{
  v1 = *(*(v0 + 16) + *(**(v0 + 16) + 120));
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  *(v1 + 16) = 0;
  os_unfair_lock_unlock((v1 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B64D5CC4()
{
  v1 = *(v0 + 32);
  v2 = *(**(v0 + 16) + 128);
  v3 = v1;
  v4 = sub_1B67D8A7C();
  v5 = sub_1B67D9C8C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B63EF000, v4, v5, "failed to refresh inventory, error=%{public}@", v8, 0xCu);
    sub_1B6418AB4(v9, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v9, -1, -1);
    MEMORY[0x1B8C96DF0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(*(v0 + 16) + *(**(v0 + 16) + 120));
  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);

  *(v12 + 16) = 0;
  os_unfair_lock_unlock((v12 + 24));
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1B64D5E78(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *v1;
  v2[7] = *(*v1 + 88);
  v2[8] = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  v4 = sub_1B67D9DFC();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v8 = type metadata accessor for RecipeItemInventory.Metadata();
  v2[13] = v8;
  v9 = *(v8 - 8);
  v2[14] = v9;
  v10 = *(v9 + 64) + 15;
  v2[15] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 8);
  v13 = *(AssociatedConformanceWitness + 16);
  v14 = type metadata accessor for RecipeItemServiceResult();
  v2[16] = v14;
  v15 = *(v14 - 8);
  v2[17] = v15;
  v16 = *(v15 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64D60D0, 0, 0);
}

uint64_t sub_1B64D60D0()
{
  *(v0 + 160) = *(**(v0 + 48) + 128);
  v1 = sub_1B67D8A7C();
  v2 = sub_1B67D9C9C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B63EF000, v1, v2, "refreshing inventory", v3, 2u);
    MEMORY[0x1B8C96DF0](v3, -1, -1);
  }

  *(v0 + 168) = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
  v4 = sub_1B67D8A7C();
  v5 = sub_1B67D9C9C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B63EF000, v4, v5, "will acquire write token", v6, 2u);
    MEMORY[0x1B8C96DF0](v6, -1, -1);
  }

  v7 = *(v0 + 48);

  v8 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
  *(v0 + 176) = v8;
  *(v0 + 184) = *(v7 + *(*v7 + 112));
  sub_1B64DCAF4();
  *(v0 + 192) = v9;
  v10 = v8;
  v11 = sub_1B67D8A7C();
  v12 = sub_1B67D9C9C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134349056;
    *(v13 + 4) = [v10 fc_millisecondTimeIntervalUntilNow];

    _os_log_impl(&dword_1B63EF000, v11, v12, "did acquire write token, time=%{public}llums", v13, 0xCu);
    MEMORY[0x1B8C96DF0](v13, -1, -1);
  }

  else
  {

    v11 = v10;
  }

  v14 = *(v0 + 104);
  v15 = *(v0 + 48);
  v31 = *(v0 + 56);
  v16 = *(v0 + 40);

  v17 = swift_allocObject();
  *(v0 + 200) = v17;
  *(v17 + 16) = 0;
  v18 = swift_allocObject();
  *(v0 + 208) = v18;
  *(v18 + 16) = 0;
  *(v18 + 24) = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E695DF00];

  *(v0 + 216) = [objc_allocWithZone(v19) init];
  v20 = *(*v15 + 96);
  v21 = *(v14 + 36);
  *(v0 + 32) = 0;
  v22 = swift_allocObject();
  *(v0 + 224) = v22;
  v22[2] = v17;
  v22[3] = v18;
  v22[4] = sub_1B64D8AA8;
  v22[5] = v15;
  v23 = *(v31 + 24);

  v30 = (v23 + *v23);
  v24 = v23[1];
  v25 = swift_task_alloc();
  *(v0 + 232) = v25;
  *v25 = v0;
  v25[1] = sub_1B64D6590;
  v26 = *(v0 + 152);
  v28 = *(v0 + 56);
  v27 = *(v0 + 64);

  return (v30)(v26, v16 + v21, v0 + 32, sub_1B64D8AB0, v22, v27, v28);
}

uint64_t sub_1B64D6590()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v7 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = sub_1B64D6F10;
  }

  else
  {
    v5 = *(v2 + 224);

    v4 = sub_1B64D66AC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B64D66AC()
{
  v92 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 160);
  v5 = *(v0 + 48);
  os_unfair_lock_lock((v2 + 16));
  v6 = *(v2 + 24);

  os_unfair_lock_unlock((v2 + 16));
  sub_1B64D6FF8(v6, v5);

  v7 = v1;
  v8 = sub_1B67D8A7C();
  v9 = sub_1B67D9C9C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 216);
    v11 = *(v0 + 200);
    v12 = swift_slowAlloc();
    *v12 = 134349312;
    *(v12 + 4) = *(v11 + 16);

    *(v12 + 12) = 2050;
    *(v12 + 14) = [v10 fc_millisecondTimeIntervalUntilNow];

    _os_log_impl(&dword_1B63EF000, v8, v9, "finished fetching and saving recipe items, count=%{public}ld, time=%{public}llums", v12, 0x16u);
    MEMORY[0x1B8C96DF0](v12, -1, -1);
  }

  else
  {
    v13 = *(v0 + 200);

    v8 = *(v0 + 216);
  }

  v87 = *(v0 + 184);
  v89 = *(v0 + 240);
  v14 = *(v0 + 152);
  v15 = *(v0 + 120);
  v17 = *(v0 + 96);
  v16 = *(v0 + 104);
  v18 = *(v0 + 80);
  v19 = *(v0 + 88);
  v20 = *(v0 + 64);
  v21 = *(v0 + 72);
  v86 = *(v0 + 56);

  sub_1B67D876C();
  v22 = sub_1B67D877C();
  (*(*(v22 - 8) + 56))(v17, 0, 1, v22);
  (*(v18 + 16))(v19, v14, v21);
  sub_1B64D76A0(v17, v19, v15);
  WitnessTable = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  sub_1B64DD948(v15, v16, WitnessTable, v24);
  if (v89)
  {
    v25 = *(v0 + 160);
    v26 = *(v0 + 48);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    v27 = v89;
    v28 = sub_1B67D8A7C();
    v29 = sub_1B67D9C8C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138543362;
      v32 = v89;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_1B63EF000, v28, v29, "failed to save metadata, error=%{public}@", v30, 0xCu);
      sub_1B6418AB4(v31, &qword_1EB94A780, &qword_1B6810140);
      MEMORY[0x1B8C96DF0](v31, -1, -1);
      MEMORY[0x1B8C96DF0](v30, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  }

  v35 = *(v0 + 152);
  v34 = *(v0 + 160);
  v37 = *(v0 + 136);
  v36 = *(v0 + 144);
  v38 = *(v0 + 128);
  v39 = *(v0 + 48);
  v40 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
  (*(v37 + 16))(v36, v35, v38);
  v41 = sub_1B67D8A7C();
  v42 = sub_1B67D9C9C();
  v43 = os_log_type_enabled(v41, v42);
  v44 = *(v0 + 136);
  v45 = *(v0 + 144);
  v46 = *(v0 + 128);
  if (v43)
  {
    v47 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v91 = v88;
    *v47 = 136446210;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    v48 = *(v46 + 44);
    type metadata accessor for RecipeItemPruningPolicy(0);
    sub_1B67DA01C();
    v49 = v40;
    v50 = *(v0 + 16);
    v51 = *(v0 + 24);
    v90 = *(v44 + 8);
    v90(v45, v46);
    v52 = sub_1B6456540(v50, v51, &v91);
    v40 = v49;

    *(v47 + 4) = v52;
    _os_log_impl(&dword_1B63EF000, v41, v42, "will prune recipe items, policy=%{public}s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v88);
    MEMORY[0x1B8C96DF0](v88, -1, -1);
    MEMORY[0x1B8C96DF0](v47, -1, -1);
  }

  else
  {

    v90 = *(v44 + 8);
    v90(v45, v46);
  }

  v53 = *(v0 + 184);
  sub_1B64DDB4C(*(v0 + 152) + *(*(v0 + 128) + 44));
  v54 = *(v0 + 160);
  v55 = *(v0 + 48);
  v56 = v40;
  v57 = sub_1B67D8A7C();
  v58 = sub_1B67D9C9C();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 134349056;
    *(v59 + 4) = [v56 fc_millisecondTimeIntervalUntilNow];

    _os_log_impl(&dword_1B63EF000, v57, v58, "did prune recipe items, time=%{public}llums", v59, 0xCu);
    MEMORY[0x1B8C96DF0](v59, -1, -1);
  }

  else
  {
  }

  v60 = *(v0 + 160);
  v61 = *(v0 + 48);
  v62 = *(v0 + 168);
  v63 = sub_1B67D8A7C();
  v64 = sub_1B67D9C9C();
  v65 = os_log_type_enabled(v63, v64);
  v66 = *(v0 + 216);
  v67 = *(v0 + 168);
  v68 = *(v0 + 48);
  if (v65)
  {
    v69 = *(v0 + 176);
    v70 = swift_slowAlloc();
    *v70 = 134349056;
    *(v70 + 4) = [v67 fc_millisecondTimeIntervalUntilNow];

    _os_log_impl(&dword_1B63EF000, v63, v64, "finished refreshing inventory, time=%{public}llums", v70, 0xCu);
    MEMORY[0x1B8C96DF0](v70, -1, -1);

    v71 = 192;
    v63 = v69;
  }

  else
  {
    v72 = *(v0 + 192);
    v73 = *(v0 + 48);

    v71 = 176;
  }

  v74 = *(v0 + v71);
  v75 = *(v0 + 200);
  v76 = *(v0 + 208);
  v78 = *(v0 + 144);
  v77 = *(v0 + 152);
  v79 = *(v0 + 128);
  v80 = *(v0 + 136);
  v81 = *(v0 + 120);
  v83 = *(v0 + 88);
  v82 = *(v0 + 96);

  v90(v77, v79);

  v84 = *(v0 + 8);

  return v84();
}

uint64_t sub_1B64D6F10()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);
  v6 = *(v0 + 168);
  v7 = *(v0 + 48);

  v8 = *(v0 + 240);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);
  v11 = *(v0 + 120);
  v13 = *(v0 + 88);
  v12 = *(v0 + 96);

  v14 = *(v0 + 8);

  return v14();
}

void sub_1B64D6FF8(unint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    if (!sub_1B67DA04C())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
  v6 = *(*a2 + 128);

  v7 = sub_1B67D8A7C();
  v8 = sub_1B67D9C9C();
  v9 = &unk_1B6811000;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    *v10 = 134349056;
    if (v4)
    {
      v11 = sub_1B67DA04C();
    }

    else
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v10 + 4) = v11;

    _os_log_impl(&dword_1B63EF000, v7, v8, "will score recipe items, count=%{public}ld", v10, 0xCu);
    MEMORY[0x1B8C96DF0](v10, -1, -1);
  }

  else
  {
  }

  v12 = (a2 + *(*a2 + 104));
  v13 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v15 = (*(v14 + 8))(a1, v13, v14);
  v16 = v5;
  v17 = sub_1B67D8A7C();
  v18 = sub_1B67D9C9C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134349056;
    *(v19 + 4) = [v16 fc_millisecondTimeIntervalUntilNow];

    _os_log_impl(&dword_1B63EF000, v17, v18, "successfully scored recipe items, time=%{public}llums", v19, 0xCu);
    v20 = v19;
    v9 = &unk_1B6811000;
    MEMORY[0x1B8C96DF0](v20, -1, -1);
  }

  else
  {
  }

  v21 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];

  v22 = sub_1B67D8A7C();
  v23 = sub_1B67D9C9C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = v9;
    v26 = v24;
    *v24 = v25[62];
    if (v4)
    {
      v27 = sub_1B67DA04C();
    }

    else
    {
      v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 1) = v27;

    _os_log_impl(&dword_1B63EF000, v22, v23, "will save recipe items, count=%{public}ld", v26, 0xCu);
    MEMORY[0x1B8C96DF0](v26, -1, -1);
  }

  else
  {
  }

  v28 = *(a2 + *(*a2 + 112));
  sub_1B64DD40C(a1, v15);

  oslog = v21;
  v29 = sub_1B67D8A7C();
  v30 = sub_1B67D9C9C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134349312;
    if (v4)
    {
      v32 = sub_1B67DA04C();
    }

    else
    {
      v32 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v31 + 4) = v32;

    *(v31 + 12) = 2050;
    *(v31 + 14) = [oslog fc_millisecondTimeIntervalUntilNow];

    _os_log_impl(&dword_1B63EF000, v29, v30, "successfully saved recipe items, count=%{public}ld, time=%{public}llums", v31, 0x16u);
    MEMORY[0x1B8C96DF0](v31, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1B64D76A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B6404758(a1, a3);
  v5 = *(type metadata accessor for RecipeItemInventory.Metadata() + 36);
  swift_getAssociatedTypeWitness();
  v6 = sub_1B67D9DFC();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

uint64_t sub_1B64D7764()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 104)));
  v1 = *(v0 + *(*v0 + 112));

  v2 = *(v0 + *(*v0 + 120));

  v3 = *(*v0 + 128);
  v4 = sub_1B67D8A9C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1B64D787C()
{
  sub_1B64D7764();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B64D78D4(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B6435678;

  return sub_1B64D38D4(a1, a2, a3);
}

uint64_t sub_1B64D7984(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B64D79D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B64D7A2C(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v15[0] = *(a2 + 24);
  v15[1] = v4;
  type metadata accessor for RecipeItemInventory.Metadata.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1B67DA26C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B67DA47C();
  v17 = 0;
  sub_1B67D877C();
  sub_1B645C75C(&unk_1EDB1EFC0);
  v11 = v15[3];
  sub_1B67DA1FC();
  if (!v11)
  {
    v12 = *(a2 + 36);
    v16 = 1;
    swift_getAssociatedTypeWitness();
    v13 = *(swift_getAssociatedConformanceWitness() + 16);
    sub_1B67DA1FC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B64D7C50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1B67D9DFC();
  v32 = *(v5 - 8);
  v33 = v5;
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38 = &v29 - v10;
  type metadata accessor for RecipeItemInventory.Metadata.CodingKeys();
  swift_getWitnessTable();
  v41 = sub_1B67DA1EC();
  v35 = *(v41 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v13 = &v29 - v12;
  v39 = a2;
  v14 = type metadata accessor for RecipeItemInventory.Metadata();
  v31 = *(v14 - 8);
  v15 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v40 = v13;
  v19 = v42;
  sub_1B67DA46C();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v17;
  v42 = a1;
  v30 = v14;
  v22 = v35;
  v21 = v36;
  sub_1B67D877C();
  v44 = 0;
  sub_1B645C75C(&unk_1EDB1EFA0);
  v23 = v38;
  v24 = v40;
  sub_1B67DA18C();
  sub_1B6404758(v23, v20);
  v43 = 1;
  v25 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_1B67DA18C();
  (*(v22 + 8))(v24, v41);
  v26 = v30;
  (*(v32 + 32))(v20 + *(v30 + 36), v21, v33);
  v27 = v31;
  (*(v31 + 16))(v34, v20, v26);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return (*(v27 + 8))(v20, v26);
}

uint64_t dispatch thunk of RecipeItemInventoryType.recipeItems(order:filter:limit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1B6484E3C;

  return v15(a1, a2, a3, a4, a5);
}

void sub_1B64D8250(uint64_t a1)
{
  sub_1B6458D7C();
  if (v2 <= 0x3F)
  {
    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    sub_1B67D9DFC();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B64D82F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1B67D877C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  if (v8)
  {
    v17 = *(v7 + 64);
  }

  else
  {
    v17 = *(v7 + 64) + 1;
  }

  v18 = *(v12 + 80);
  v19 = *(v12 + 64);
  if (v14)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = v17 + v18;
  if (a2 <= v16)
  {
LABEL_40:
    if (v9 >= v15)
    {
      v29 = (*(v7 + 48))(a1, v8, v6);
    }

    else
    {
      v29 = (*(v13 + 48))((a1 + v21) & ~v18);
    }

    if (v29 >= 2)
    {
      return v29 - 1;
    }

    else
    {
      return 0;
    }
  }

  v22 = v20 + (v21 & ~v18);
  v23 = 8 * v22;
  if (v22 <= 3)
  {
    v25 = ((a2 - v16 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v25))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v25 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v25 < 2)
    {
LABEL_39:
      if (v16)
      {
        goto LABEL_40;
      }

      return 0;
    }
  }

  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_39;
  }

LABEL_26:
  v26 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v26 = 0;
  }

  if (v22)
  {
    if (v22 <= 3)
    {
      v27 = v22;
    }

    else
    {
      v27 = 4;
    }

    if (v27 > 2)
    {
      if (v27 == 3)
      {
        v28 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v28 = *a1;
      }
    }

    else if (v27 == 1)
    {
      v28 = *a1;
    }

    else
    {
      v28 = *a1;
    }
  }

  else
  {
    v28 = 0;
  }

  return v16 + (v28 | v26) + 1;
}

void sub_1B64D8568(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1B67D877C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v13 = *(a4 + 16);
  v12 = *(a4 + 24);
  v14 = 0;
  v15 = *(swift_getAssociatedTypeWitness() - 8);
  v16 = *(v15 + 84);
  if (v16)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v17 <= v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = v17;
  }

  if (v10)
  {
    v19 = *(v9 + 64);
  }

  else
  {
    v19 = *(v9 + 64) + 1;
  }

  v20 = *(v15 + 80);
  v21 = *(v15 + 64);
  if (!v16)
  {
    ++v21;
  }

  v22 = ((v19 + v20) & ~v20) + v21;
  if (a3 <= v18)
  {
LABEL_29:
    if (v18 < a2)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  if (v22 > 3)
  {
    v14 = 1;
    if (v18 >= a2)
    {
      goto LABEL_18;
    }

LABEL_30:
    v25 = ~v18 + a2;
    if (v22 >= 4)
    {
      bzero(a1, v22);
      *a1 = v25;
      v26 = 1;
      if (v14 > 1)
      {
        goto LABEL_32;
      }

LABEL_78:
      if (v14)
      {
        a1[v22] = v26;
      }

      return;
    }

    v26 = (v25 >> (8 * v22)) + 1;
    if (v22)
    {
      v30 = v25 & ~(-1 << (8 * v22));
      bzero(a1, v22);
      if (v22 != 3)
      {
        if (v22 == 2)
        {
          *a1 = v30;
          if (v14 <= 1)
          {
            goto LABEL_78;
          }
        }

        else
        {
          *a1 = v25;
          if (v14 <= 1)
          {
            goto LABEL_78;
          }
        }

LABEL_32:
        if (v14 == 2)
        {
          *&a1[v22] = v26;
        }

        else
        {
          *&a1[v22] = v26;
        }

        return;
      }

      *a1 = v30;
      a1[2] = BYTE2(v30);
    }

    if (v14 <= 1)
    {
      goto LABEL_78;
    }

    goto LABEL_32;
  }

  v23 = ((a3 - v18 + ~(-1 << (8 * v22))) >> (8 * v22)) + 1;
  if (!HIWORD(v23))
  {
    if (v23 < 0x100)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }

    if (v23 >= 2)
    {
      v14 = v24;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_29;
  }

  v14 = 4;
  if (v18 < a2)
  {
    goto LABEL_30;
  }

LABEL_18:
  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v22] = 0;
  }

  else if (v14)
  {
    a1[v22] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v11 >= v17)
  {
    if (v11 >= a2)
    {
      v33 = *(v9 + 56);

      v33(a1, a2 + 1, v10, v8);
    }

    else
    {
      if (v19 <= 3)
      {
        v31 = ~(-1 << (8 * v19));
      }

      else
      {
        v31 = -1;
      }

      if (v19)
      {
        v28 = v31 & (~v11 + a2);
        if (v19 <= 3)
        {
          v29 = v19;
        }

        else
        {
          v29 = 4;
        }

        bzero(a1, v19);
        if (v29 <= 2)
        {
          if (v29 != 1)
          {
            goto LABEL_48;
          }

          goto LABEL_64;
        }

        goto LABEL_83;
      }
    }
  }

  else
  {
    a1 = (&a1[v19 + v20] & ~v20);
    if (v17 >= a2)
    {
      v32 = *(v15 + 56);

      v32(a1, a2 + 1);
    }

    else
    {
      if (v21 <= 3)
      {
        v27 = ~(-1 << (8 * v21));
      }

      else
      {
        v27 = -1;
      }

      if (v21)
      {
        v28 = v27 & (~v17 + a2);
        if (v21 <= 3)
        {
          v29 = v21;
        }

        else
        {
          v29 = 4;
        }

        bzero(a1, v21);
        if (v29 <= 2)
        {
          if (v29 != 1)
          {
LABEL_48:
            *a1 = v28;
            return;
          }

LABEL_64:
          *a1 = v28;
          return;
        }

LABEL_83:
        if (v29 == 3)
        {
          *a1 = v28;
          a1[2] = BYTE2(v28);
        }

        else
        {
          *a1 = v28;
        }
      }
    }
  }
}

uint64_t sub_1B64D89CC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(type metadata accessor for RecipeItemInventory.Metadata() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B642694C;

  return sub_1B64D5A7C(v7, v8, v9, v6, v0 + v5);
}

uint64_t sub_1B64D8AB0(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v9 = *(v3 + 16);
  v7 = (v3 + 16);
  v8 = v9;
  do
  {
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    v10 = v8;
    atomic_compare_exchange_strong_explicit(v7, &v10, v8 + 1, memory_order_relaxed, memory_order_relaxed);
    v11 = v10 == v8;
    v8 = v10;
  }

  while (!v11);
  os_unfair_lock_lock((v4 + 16));
  v12 = a1;
  MEMORY[0x1B8C949F0]();
  if (*((*(v4 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v4 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_6;
  }

LABEL_17:
  sub_1B67D97FC();
LABEL_6:
  sub_1B67D983C();
  v13 = *(v4 + 24);
  if (v13 >> 62)
  {
    if (v13 < 0)
    {
      v18 = *(v4 + 24);
    }

    v14 = sub_1B67DA04C();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x1E69E7CC0];
  if (v14 >= 1000)
  {
    v16 = *(v4 + 24);
    *(v4 + 24) = MEMORY[0x1E69E7CC0];
    v15 = v16;
  }

  os_unfair_lock_unlock((v4 + 16));
  if (!(v15 >> 62))
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (sub_1B67DA04C())
  {
LABEL_12:
    v6(v15);
  }

LABEL_13:
}

uint64_t sub_1B64D8CB4()
{
  v1 = *(v0 + 48);
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v3 = objc_allocWithZone(FCRecipeItem);
    v4 = sub_1B64DA5BC();
    sub_1B6457448(v5, v6);
    return v4;
  }

  return result;
}

uint64_t sub_1B64D8D5C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v154 = a3;
  v155 = a2;
  v167 = a1;
  v160 = a4;
  v150 = sub_1B67D877C();
  v166 = *(v150 - 8);
  v4 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v158 = &v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v144 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v161 = &v143 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v159 = &v143 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v157 = &v143 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v156 = &v143 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v153 = &v143 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v151 = &v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v149 = &v143 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = &v143 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v143 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC60, &qword_1B6813E08);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v35 = &v143 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v143 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8);
  v42 = &v143 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v143 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v147 = v45;
  v46 = *(v45 - 8);
  v47 = *(v46 + 56);
  v148 = v47;
  v152 = v46 + 56;
  v145 = v44;
  v47(v44, 1, 1, v45);
  v146 = v42;
  v47(v42, 1, 1, v45);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  v165 = sub_1B67D8B3C();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC68, &qword_1B6813E10);
  v55 = *(*(v54 - 8) + 56);
  v55(v37, 1, 1, v54);
  v55(v35, 1, 1, v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC70, &qword_1B6813E18);
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC58, &qword_1B6813E00);
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  swift_allocObject();
  v164 = sub_1B67D8B3C();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v63 = *(*(v62 - 8) + 56);
  v63(v30, 1, 1, v62);
  v63(v28, 1, 1, v62);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  swift_allocObject();
  v163 = sub_1B67D8B3C();
  v63(v30, 1, 1, v62);
  v63(v28, 1, 1, v62);
  v70 = *(v64 + 48);
  v71 = *(v64 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v72 = *(v67 + 48);
  v73 = *(v67 + 52);
  swift_allocObject();
  v162 = sub_1B67D8B3C();
  v63(v30, 1, 1, v62);
  v63(v28, 1, 1, v62);
  v74 = *(v64 + 48);
  v75 = *(v64 + 52);
  swift_allocObject();
  v76 = v150;
  sub_1B67D8DBC();
  v77 = *(v67 + 48);
  v78 = *(v67 + 52);
  v79 = v167;
  swift_allocObject();
  v80 = sub_1B67D8B3C();
  v81 = v147;
  v82 = v148;
  v148(v145, 1, 1, v147);
  v82(v146, 1, 1, v81);
  v83 = *(v48 + 48);
  v84 = *(v48 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v85 = *(v51 + 48);
  v86 = *(v51 + 52);
  swift_allocObject();
  v152 = sub_1B67D8B3C();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v88 = *(*(v87 - 8) + 56);
  v88(v149, 1, 1, v87);
  v88(v151, 1, 1, v87);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  v90 = *(v89 + 48);
  v91 = *(v89 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  v93 = *(v92 + 48);
  v94 = *(v92 + 52);
  swift_allocObject();
  v151 = sub_1B67D8B3C();
  sub_1B67D8B4C();
  v95 = [v79 identifier];
  v96 = sub_1B67D964C();
  v98 = v97;

  v168 = v96;
  v169 = v98;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v99 = v155;
  if (v154)
  {
    v99 = 0;
  }

  v168 = v99;
  LOBYTE(v169) = 0;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v100 = v153;
  sub_1B67D876C();
  v101 = *(v166 + 56);
  v101(v100, 0, 1, v76);
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v102 = &selRef_productVersion;
  v103 = [v79 publishDate];
  if (v103)
  {
    v104 = v158;
    v105 = v103;
    sub_1B67D874C();

    v106 = *(v166 + 32);
    v107 = v157;
    v106(v157, v104, v76);
    v101(v107, 0, 1, v76);
    v108 = v80;
    v109 = v156;
    v110 = v107;
    v102 = &selRef_productVersion;
    v106(v156, v110, v76);
    v111 = v109;
    v80 = v108;
  }

  else
  {
    v112 = v157;
    v101(v157, 1, 1, v76);
    v111 = v156;
    sub_1B67D86AC();
    v113 = (*(v166 + 48))(v112, 1, v76);
    v104 = v158;
    if (v113 != 1)
    {
      sub_1B646FA50(v112);
    }
  }

  v101(v111, 0, 1, v76);
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v114 = [v167 lastReferenceDate];
  v115 = v159;
  if (v114)
  {
    v116 = v114;
    sub_1B67D874C();

    v117 = *(v166 + 32);
    v118 = v161;
    v117(v161, v104, v76);
    v101(v118, 0, 1, v76);
    v117(v115, v118, v76);
  }

  else
  {
    v101(v161, 1, 1, v76);
    v119 = [v167 v102[29]];
    if (v119)
    {
      v120 = v119;
      sub_1B67D874C();

      v121 = v166;
      v122 = *(v166 + 32);
      v123 = v104;
      v124 = v144;
      v122(v144, v123, v76);
      v101(v124, 0, 1, v76);
      v122(v115, v124, v76);
      v125 = *(v121 + 48);
    }

    else
    {
      v126 = v144;
      v101(v144, 1, 1, v76);
      sub_1B67D86AC();
      v125 = *(v166 + 48);
      if (v125(v126, 1, v76) != 1)
      {
        sub_1B646FA50(v126);
      }
    }

    v127 = v161;
    if (v125(v161, 1, v76) != 1)
    {
      sub_1B646FA50(v127);
    }
  }

  v101(v115, 0, 1, v76);
  sub_1B67D8DDC();

  v128 = v152;
  sub_1B67D8B4C();
  v129 = v167;
  v130 = [v167 surfacedBy];
  v131 = sub_1B67D964C();
  v133 = v132;

  v168 = v131;
  v169 = v133;
  sub_1B67D8DDC();

  v134 = v151;
  sub_1B67D8B4C();
  v135 = [v129 data];
  v136 = sub_1B67D866C();
  v138 = v137;

  v168 = v136;
  v169 = v138;
  sub_1B67D8DDC();

  v140 = v160;
  v141 = v164;
  *v160 = v165;
  v140[1] = v141;
  v142 = v162;
  v140[2] = v163;
  v140[3] = v142;
  v140[4] = v80;
  v140[5] = v128;
  v140[6] = v134;
  return result;
}

uint64_t sub_1B64D9BF0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6465636166727573;
  if (v1 != 5)
  {
    v3 = 0x617461446270;
  }

  v4 = 0x446873696C627570;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x53746C7561666564;
  if (v1 != 1)
  {
    v5 = 0x44656761726F7473;
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

uint64_t sub_1B64D9CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B64DAEEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B64D9D04(uint64_t a1)
{
  v2 = sub_1B64DAE98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B64D9D40(uint64_t a1)
{
  v2 = sub_1B64DAE98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B64D9D7C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B6A8, &qword_1B6816FD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64DAE98();
  sub_1B67DA47C();
  v15 = *v3;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  sub_1B6413CCC(&qword_1EB94A5E8, &qword_1EB949F40, &qword_1B6810290);
  sub_1B67DA24C();
  if (!v2)
  {
    v13 = v3;
    v15 = v3[1];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC58, &qword_1B6813E00);
    sub_1B6413CCC(&qword_1EB94AC88, &qword_1EB94AC58, &qword_1B6813E00);
    sub_1B67DA24C();
    v15 = v13[2];
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
    sub_1B6413CCC(&qword_1EB94A608, &qword_1EB949FF8, &qword_1B68123B0);
    sub_1B67DA24C();
    v15 = v13[3];
    v14 = 3;
    sub_1B67DA24C();
    v15 = v13[4];
    v14 = 4;
    sub_1B67DA24C();
    v11 = v13;
    v15 = v13[5];
    v14 = 5;
    sub_1B67DA24C();
    v15 = v11[6];
    v14 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
    sub_1B6413CCC(&qword_1EB94AC90, &qword_1EB94A640, &qword_1B6811470);
    sub_1B67DA24C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B64DA178(uint64_t a1)
{
  v2 = sub_1B64DC460();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B64DA1C4(uint64_t a1)
{
  v2 = sub_1B64DC460();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B64DA210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B64DC460();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

double sub_1B64DA274@<D0>(uint64_t a1@<X8>)
{
  sub_1B64DA67C(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

double sub_1B64DA2C0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B64DB148(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1B64DA328(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B64DC460();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B64DA374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B64DC460();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B64DA3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B64DC460();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

uint64_t sub_1B64DA42C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  v10(v6, 1, 1, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  result = sub_1B67D8B3C();
  *a1 = result;
  return result;
}

id sub_1B64DA5BC()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1B67D864C();
  v7[0] = 0;
  v2 = [v0 initWithData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1B67D855C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1B64DA67C@<X0>(uint64_t *a1@<X8>)
{
  v91 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v90 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v89 = &v80 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v80 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC60, &qword_1B6813E08);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v80 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v80 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v85 = v27;
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v86 = v29;
  v87 = v28 + 56;
  v82 = v26;
  v29(v26, 1, 1, v27);
  v83 = v24;
  v29(v24, 1, 1, v27);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v88 = sub_1B67D8B3C();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC68, &qword_1B6813E10);
  v37 = *(*(v36 - 8) + 56);
  v37(v19, 1, 1, v36);
  v37(v17, 1, 1, v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC70, &qword_1B6813E18);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC58, &qword_1B6813E00);
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v84 = sub_1B67D8B3C();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v45 = *(*(v44 - 8) + 56);
  v45(v12, 1, 1, v44);
  v45(v10, 1, 1, v44);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  v81 = sub_1B67D8B3C();
  v45(v12, 1, 1, v44);
  v45(v10, 1, 1, v44);
  v52 = *(v46 + 48);
  v53 = *(v46 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v54 = *(v49 + 48);
  v55 = *(v49 + 52);
  swift_allocObject();
  v80 = sub_1B67D8B3C();
  v45(v12, 1, 1, v44);
  v45(v10, 1, 1, v44);
  v56 = *(v46 + 48);
  v57 = *(v46 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v58 = *(v49 + 48);
  v59 = *(v49 + 52);
  swift_allocObject();
  v60 = sub_1B67D8B3C();
  v61 = v85;
  v62 = v86;
  v86(v82, 1, 1, v85);
  v62(v83, 1, 1, v61);
  v63 = *(v30 + 48);
  v64 = *(v30 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v65 = *(v33 + 48);
  v66 = *(v33 + 52);
  swift_allocObject();
  v67 = sub_1B67D8B3C();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v69 = *(*(v68 - 8) + 56);
  v69(v89, 1, 1, v68);
  v69(v90, 1, 1, v68);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  v71 = *(v70 + 48);
  v72 = *(v70 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  v74 = *(v73 + 48);
  v75 = *(v73 + 52);
  swift_allocObject();
  result = sub_1B67D8B3C();
  v77 = v91;
  v78 = v84;
  *v91 = v88;
  v77[1] = v78;
  v79 = v80;
  v77[2] = v81;
  v77[3] = v79;
  v77[4] = v60;
  v77[5] = v67;
  v77[6] = result;
  return result;
}

unint64_t sub_1B64DAE98()
{
  result = qword_1EB957A80[0];
  if (!qword_1EB957A80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB957A80);
  }

  return result;
}

uint64_t sub_1B64DAEEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53746C7561666564 && a2 == 0xEC00000065726F63 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44656761726F7473 && a2 == 0xEB00000000657461 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446873696C627570 && a2 == 0xEB00000000657461 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B6829E80 == a2 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6465636166727573 && a2 == 0xEA00000000007942 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x617461446270 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B67DA2DC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1B64DB148@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a1;
  v94[0] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B6C8, qword_1B68174A8);
  v95 = *(v2 - 8);
  v96 = v2;
  v3 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v106 = v94 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v104 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v102 = v94 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v108 = v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v94 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC60, &qword_1B6813E08);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v94 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = v94 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v100 = v30;
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v101 = v32;
  v105 = v31 + 56;
  v97 = v29;
  v32(v29, 1, 1, v30);
  v98 = v27;
  v32(v27, 1, 1, v30);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v33 = *(v99 + 48);
  v34 = *(v99 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v112 = sub_1B67D8B3C();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC68, &qword_1B6813E10);
  v39 = *(*(v38 - 8) + 56);
  v39(v22, 1, 1, v38);
  v39(v20, 1, 1, v38);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC70, &qword_1B6813E18);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC58, &qword_1B6813E00);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v94[1] = v43;
  swift_allocObject();
  v111 = sub_1B67D8B3C();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v47 = *(*(v46 - 8) + 56);
  v47(v15, 1, 1, v46);
  v48 = v108;
  v47(v108, 1, 1, v46);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  v110 = sub_1B67D8B3C();
  v47(v15, 1, 1, v46);
  v47(v48, 1, 1, v46);
  v55 = *(v49 + 48);
  v56 = *(v49 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v57 = *(v52 + 48);
  v58 = *(v52 + 52);
  swift_allocObject();
  v109 = sub_1B67D8B3C();
  v47(v15, 1, 1, v46);
  v47(v48, 1, 1, v46);
  v59 = *(v49 + 48);
  v60 = *(v49 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v61 = *(v52 + 48);
  v62 = *(v52 + 52);
  swift_allocObject();
  v108 = sub_1B67D8B3C();
  v63 = v100;
  v64 = v101;
  v101(v97, 1, 1, v100);
  v64(v98, 1, 1, v63);
  v65 = *(v99 + 48);
  v66 = *(v99 + 52);
  v67 = v103;
  swift_allocObject();
  sub_1B67D8DBC();
  v68 = *(v35 + 48);
  v69 = *(v35 + 52);
  v70 = v35;
  swift_allocObject();
  v105 = sub_1B67D8B3C();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v72 = *(*(v71 - 8) + 56);
  v72(v102, 1, 1, v71);
  v72(v104, 1, 1, v71);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  v74 = *(v73 + 48);
  v75 = *(v73 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  v77 = *(v76 + 48);
  v78 = *(v76 + 52);
  swift_allocObject();
  v104 = sub_1B67D8B3C();
  v79 = v67[4];
  __swift_project_boxed_opaque_existential_1(v67, v67[3]);
  sub_1B64DAE98();
  v80 = v107;
  v81 = v106;
  sub_1B67DA46C();
  if (v80)
  {
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    v113 = 0;
    sub_1B6413CCC(&qword_1EB94A618, &qword_1EB949F40, &qword_1B6810290);
    sub_1B67DA1CC();
    v107 = v70;

    v112 = v114;
    v113 = 1;
    sub_1B6413CCC(&qword_1EB94ACA8, &qword_1EB94AC58, &qword_1B6813E00);
    sub_1B67DA1CC();

    v111 = v114;
    v113 = 2;
    sub_1B6413CCC(&qword_1EB94A638, &qword_1EB949FF8, &qword_1B68123B0);
    sub_1B67DA1CC();

    v110 = v114;
    v113 = 3;
    sub_1B67DA1CC();

    v109 = v114;
    v113 = 4;
    sub_1B67DA1CC();

    v82 = v114;
    v113 = 5;
    sub_1B67DA1CC();
    v83 = v95;
    v108 = v82;

    v84 = v114;
    v113 = 6;
    sub_1B6413CCC(&qword_1EB94ACB0, &qword_1EB94A640, &qword_1B6811470);
    v85 = v96;
    sub_1B67DA1CC();
    (*(v83 + 8))(v81, v85);

    v86 = v114;
    v87 = v112;

    v88 = v111;

    v89 = v110;

    v90 = v109;

    v91 = v108;

    __swift_destroy_boxed_opaque_existential_1(v67);

    v93 = v94[0];
    *v94[0] = v87;
    v93[1] = v88;
    v93[2] = v89;
    v93[3] = v90;
    v93[4] = v91;
    v93[5] = v84;
    v93[6] = v86;
  }

  return result;
}

unint64_t sub_1B64DBE20()
{
  result = qword_1EDB1EDD0;
  if (!qword_1EDB1EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EDD0);
  }

  return result;
}

unint64_t sub_1B64DBE78()
{
  result = qword_1EDB1EDE8;
  if (!qword_1EDB1EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EDE8);
  }

  return result;
}

unint64_t sub_1B64DBEF8()
{
  result = qword_1EB94B6B0;
  if (!qword_1EB94B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94B6B0);
  }

  return result;
}

unint64_t sub_1B64DBF4C()
{
  result = qword_1EB94B6B8;
  if (!qword_1EB94B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94B6B8);
  }

  return result;
}

unint64_t sub_1B64DBFA0()
{
  result = qword_1EDB1EDC0;
  if (!qword_1EDB1EDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EDC0);
  }

  return result;
}

unint64_t sub_1B64DBFF4()
{
  result = qword_1EDB1EDC8;
  if (!qword_1EDB1EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EDC8);
  }

  return result;
}

unint64_t sub_1B64DC048()
{
  result = qword_1EDB1EDE0;
  if (!qword_1EDB1EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EDE0);
  }

  return result;
}

unint64_t sub_1B64DC0A8()
{
  result = qword_1EDB1EDD8;
  if (!qword_1EDB1EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EDD8);
  }

  return result;
}

unint64_t sub_1B64DC104()
{
  result = qword_1EDB1EDF8;
  if (!qword_1EDB1EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EDF8);
  }

  return result;
}

uint64_t sub_1B64DC184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B64DC1C0()
{
  result = qword_1EDB1EB78;
  if (!qword_1EDB1EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EB78);
  }

  return result;
}

unint64_t sub_1B64DC214()
{
  result = qword_1EB94B6C0;
  if (!qword_1EB94B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94B6C0);
  }

  return result;
}

unint64_t sub_1B64DC26C()
{
  result = qword_1EDB1EB80;
  if (!qword_1EDB1EB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EB80);
  }

  return result;
}

unint64_t sub_1B64DC2C4()
{
  result = qword_1EDB1EB70;
  if (!qword_1EDB1EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EB70);
  }

  return result;
}

unint64_t sub_1B64DC35C()
{
  result = qword_1EB957D90[0];
  if (!qword_1EB957D90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB957D90);
  }

  return result;
}

unint64_t sub_1B64DC3B4()
{
  result = qword_1EB957EA0[0];
  if (!qword_1EB957EA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB957EA0);
  }

  return result;
}

unint64_t sub_1B64DC40C()
{
  result = qword_1EDB23608[0];
  if (!qword_1EDB23608[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB23608);
  }

  return result;
}

unint64_t sub_1B64DC460()
{
  result = qword_1EDB1EDF0;
  if (!qword_1EDB1EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EDF0);
  }

  return result;
}

NewsCore::RecipeItemOrder_optional __swiftcall RecipeItemOrder.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B67DA12C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t RecipeItemOrder.rawValue.getter()
{
  v1 = 7958113;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0x73654465726F6373;
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

uint64_t sub_1B64DC5E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000017;
    }

    else
    {
      v3 = 0xD000000000000015;
    }

    if (v2 == 2)
    {
      v4 = 0x80000001B6829EB0;
    }

    else
    {
      v4 = 0x80000001B68299B0;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x73654465726F6373;
    }

    else
    {
      v3 = 7958113;
    }

    if (v2)
    {
      v4 = 0xEF676E69646E6563;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000017;
    }

    else
    {
      v7 = 0xD000000000000015;
    }

    if (a2 == 2)
    {
      v6 = 0x80000001B6829EB0;
    }

    else
    {
      v6 = 0x80000001B68299B0;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x73654465726F6373;
    }

    else
    {
      v5 = 7958113;
    }

    if (a2)
    {
      v6 = 0xEF676E69646E6563;
    }

    else
    {
      v6 = 0xE300000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = sub_1B67DA2DC();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t sub_1B64DC744()
{
  v1 = *v0;
  sub_1B67DA3DC();
  sub_1B67D967C();

  return sub_1B67DA41C();
}

uint64_t sub_1B64DC818()
{
  *v0;
  *v0;
  *v0;
  sub_1B67D967C();
}

uint64_t sub_1B64DC8D8()
{
  v1 = *v0;
  sub_1B67DA3DC();
  sub_1B67D967C();

  return sub_1B67DA41C();
}

void sub_1B64DC9B4(unint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7958113;
  v4 = 0x80000001B6829EB0;
  v5 = 0xD000000000000017;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000015;
    v4 = 0x80000001B68299B0;
  }

  if (*v1)
  {
    v3 = 0x73654465726F6373;
    v2 = 0xEF676E69646E6563;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void sub_1B64DCAF4()
{
  v2 = v0;
  v3 = *v0;
  v4 = sub_1B67D85FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_storage);
  v12 = v2;
  v13 = v3;
  os_unfair_lock_lock(v9 + 11);
  sub_1B64E1E00(&v9[4], &v14);
  os_unfair_lock_unlock(v9 + 11);
  if (!v1)
  {

    (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_fileURL, v4);
    v10 = objc_allocWithZone(FCFileAccessToken);
    sub_1B64BE94C(v8, &selRef_initForWritingURL_error_);
  }
}

void sub_1B64DCC84(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v36 = a4;
  v40 = a2;
  v10 = *v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B470, &unk_1B6815A80);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = (&v33 - v17);
  v19 = *a1;
  v20 = *(v5 + OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_storage);
  v37 = v5;
  v38 = v10;
  os_unfair_lock_lock(v20 + 11);
  sub_1B64E1E00(&v20[4], v39);
  if (v6)
  {
    os_unfair_lock_unlock(v20 + 11);
    return;
  }

  v34 = a5;
  v21 = v36;
  os_unfair_lock_unlock(v20 + 11);
  v22 = v39[0];
  v33 = v39[1];
  v23 = v39[2];

  v35 = v18;
  sub_1B64DD080(v18);
  if (v19 > 1)
  {
    v24 = v14;
    if (v19 == 2)
    {
      v26 = sub_1B64D8C9C();
    }

    else
    {
      v26 = sub_1B64D8C90();
    }

    goto LABEL_10;
  }

  v24 = v14;
  if (v19)
  {
    v26 = sub_1B64D8C78();
LABEL_10:
    v27 = v26[1];
    *v24 = *v26;
    *(v24 + 1) = v27;
    LODWORD(v40) = *MEMORY[0x1E69D6220];
    v28 = sub_1B67D8E4C();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v24, v40, v28);
    (*(v29 + 56))(v24, 0, 1, v28);

    goto LABEL_11;
  }

  v25 = sub_1B67D8E4C();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
LABEL_11:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v33 - 6) = v35;
  *(&v33 - 5) = v23;
  *(&v33 - 4) = v24;
  *(&v33 - 3) = a3;
  *(&v33 - 16) = v21 & 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B6D8, &unk_1B6817508);
  sub_1B67D8F1C();
  v31 = v39[0];

  if (!v31)
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  v32 = v34;
  sub_1B6418AB4(v24, &qword_1EB94B510, &unk_1B68102C0);
  sub_1B6418AB4(v35, &qword_1EB94B470, &unk_1B6815A80);
  *v32 = v22;
  v32[1] = v23;
  v32[2] = KeyPath;
  v32[3] = v31;
}

uint64_t sub_1B64DD080@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B67D877C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RecipeItemFilter(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B64E1B30(v2, v12, type metadata accessor for RecipeItemFilter);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *v12;
      v15 = swift_allocObject();
      v16 = sub_1B64D8CA8();
      v18 = *v16;
      v17 = *(v16 + 1);
      v15[2] = v18;
      v15[3] = v17;

      v19 = sub_1B64503A4(v14);

      v15[4] = v19;
      *a1 = v15;
      v20 = *MEMORY[0x1E69D6138];
      v21 = sub_1B67D8B1C();
      v22 = *(v21 - 8);
      (*(v22 + 104))(a1, v20, v21);
      return (*(v22 + 56))(a1, 0, 1, v21);
    }

    else
    {
      v33 = sub_1B67D8B1C();
      return (*(*(v33 - 8) + 56))(a1, 1, 1, v33);
    }
  }

  else
  {
    v24 = *(v5 + 32);
    v24(v8, v12, v4);
    v25 = swift_allocObject();
    v26 = sub_1B64D8C90();
    v27 = *(v26 + 1);
    v25[2] = *v26;
    v25[3] = v27;
    v28 = MEMORY[0x1E69D6130];
    v25[7] = v4;
    v25[8] = v28;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25 + 4);
    v24(boxed_opaque_existential_0, v8, v4);
    *a1 = v25;
    v30 = *MEMORY[0x1E69D6148];
    v31 = sub_1B67D8B1C();
    v32 = *(v31 - 8);
    (*(v32 + 104))(a1, v30, v31);
    (*(v32 + 56))(a1, 0, 1, v31);
  }
}

uint64_t sub_1B64DD3C0@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 6);
  result = sub_1B64D8CB4();
  *a2 = result;
  return result;
}

void sub_1B64DD40C(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v8 = sub_1B67D8C1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v13 = sub_1B67DA04C();
    if (!v13)
    {
      return;
    }
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      return;
    }
  }

  v21 = a2;
  v23 = v9;
  v14 = *(v4 + OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_storage);
  MEMORY[0x1EEE9AC00](v13);
  v20[-2] = v4;
  v20[-1] = v7;
  os_unfair_lock_lock(v14 + 11);
  sub_1B64E1E00(&v14[4], v22);
  os_unfair_lock_unlock(v14 + 11);
  if (!v3)
  {
    v16 = v22[1];
    v17 = v22[2];
    v20[1] = v20;
    MEMORY[0x1EEE9AC00](v15);
    v20[-4] = a1;
    v20[-3] = v16;
    v18 = v21;
    v20[-2] = v17;
    v20[-1] = v18;
    v19 = v23;
    (*(v23 + 104))(v12, *MEMORY[0x1E69D6188], v8);
    sub_1B67D8F4C();
    (*(v19 + 8))(v12, v8);
  }
}

void sub_1B64DD6A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_storage);
  v14 = *v2;
  os_unfair_lock_lock(v6 + 11);
  sub_1B64E1E00(&v6[4], &v15);
  v7 = v6 + 11;
  if (v3)
  {
    os_unfair_lock_unlock(v7);
  }

  else
  {
    os_unfair_lock_unlock(v7);
    MEMORY[0x1EEE9AC00](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B6E0, &qword_1B6817518);
    sub_1B67D8F1C();
    if (v15)
    {
      v17 = v15;
      v9 = sub_1B67D83AC();
      v10 = *(v9 + 48);
      v11 = *(v9 + 52);
      swift_allocObject();
      sub_1B67D839C();
      sub_1B67D8B4C();
      sub_1B67D8DCC();

      v12 = v16;
      if (v16 >> 60 == 15)
      {
        __break(1u);
      }

      else
      {
        v13 = v15;
        sub_1B67D838C();

        sub_1B6457448(v13, v12);
        (*(*(a1 - 8) + 56))(a2, 0, 1, a1);
      }
    }

    else
    {
      (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
    }
  }
}

void sub_1B64DD948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v20 = a1;
  v8 = *v4;
  v9 = sub_1B67D8C1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_storage);
  v21 = v4;
  v22 = v8;
  os_unfair_lock_lock(v14 + 11);
  sub_1B64E1E00(&v14[4], &v23);
  os_unfair_lock_unlock(v14 + 11);
  if (!v5)
  {
    MEMORY[0x1EEE9AC00](v15);
    *(&v19 - 6) = a2;
    *(&v19 - 5) = a3;
    *(&v19 - 4) = v24;
    *(&v19 - 3) = v16;
    v17 = v20;
    *(&v19 - 2) = v18;
    *(&v19 - 1) = v17;
    (*(v10 + 104))(v13, *MEMORY[0x1E69D6188], v9);
    sub_1B67D8F4C();
    (*(v10 + 8))(v13, v9);
  }
}

void sub_1B64DDB4C(uint64_t a1)
{
  v3 = v1;
  v51 = a1;
  v4 = *v1;
  v5 = sub_1B67D8C1C();
  v6 = *(v5 - 8);
  v43 = v5;
  v44 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B470, &unk_1B6815A80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v47 = (&v38 - v11);
  v12 = sub_1B67D8B1C();
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RecipeItemPruningPolicy(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v38 - v22;
  v24 = *(v3 + OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_storage);
  v48 = v3;
  v49 = v4;
  os_unfair_lock_lock(v24 + 11);
  sub_1B64E1E00(&v24[4], v50);
  os_unfair_lock_unlock(v24 + 11);
  if (!v2)
  {
    v25 = v47;
    v39 = v15;
    v26 = v50[1];
    v40 = v50[2];
    v41 = v50[0];
    sub_1B64E1B30(v51, v23, type metadata accessor for RecipeItemPruningPolicy);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v51 = v26;
      v27 = *(*v23 + 16);

      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = 0;
        while (v29 < *(v27 + 16))
        {
          sub_1B64E1B30(v27 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v29, v21, type metadata accessor for RecipeItemPruningPolicy);
          sub_1B64DDB4C(v21);
          ++v29;
          sub_1B64D34FC(v21);
          if (v28 == v29)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_7:
      }
    }

    else
    {
      sub_1B64D34FC(v23);
      sub_1B64DE0B4(v25);
      v31 = v45;
      v30 = v46;
      if ((*(v45 + 48))(v25, 1, v46) == 1)
      {

        sub_1B6418AB4(v25, &qword_1EB94B470, &unk_1B6815A80);
      }

      else
      {
        v32 = v39;
        v33 = (*(v31 + 32))(v39, v25, v30);
        v47 = &v38;
        MEMORY[0x1EEE9AC00](v33);
        v51 = v26;
        v34 = v40;
        *(&v38 - 4) = v26;
        *(&v38 - 3) = v34;
        *(&v38 - 2) = v32;
        v35 = v43;
        v36 = v44;
        v37 = v42;
        (*(v44 + 104))(v42, *MEMORY[0x1E69D6188], v43);
        sub_1B67D8F4C();
        (*(v36 + 8))(v37, v35);

        (*(v31 + 8))(v32, v30);
      }
    }
  }
}

uint64_t sub_1B64DE0B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v80 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B470, &unk_1B6815A80);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v78 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v74 - v7;
  v9 = sub_1B67D8B1C();
  v81 = *(v9 - 8);
  v82 = v9;
  v10 = *(v81 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v77 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v74 - v13;
  v14 = sub_1B67D877C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for RecipeItemPruningPolicy(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v74 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = (&v74 - v27);
  sub_1B64E1B30(v2, &v74 - v27, type metadata accessor for RecipeItemPruningPolicy);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        (*(v15 + 32))(v18, v28, v14);
        v48 = sub_1B64D8C84();
        v49 = *v48;
        v50 = *(v48 + 1);
        v83[3] = v14;
        v83[4] = MEMORY[0x1E69D6130];
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v83);
        (*(v15 + 16))(boxed_opaque_existential_0, v18, v14);

        v52 = v80;
        sub_1B67D8C5C();

        (*(v15 + 8))(v18, v14);
        __swift_destroy_boxed_opaque_existential_1(v83);
        v40 = *(v81 + 56);
        v41 = v52;
        goto LABEL_13;
      }

      v30 = *v28;
      v31 = sub_1B64D8CA8();
      v32 = *v31;
      v33 = *(v31 + 1);

      sub_1B64503A4(v30);

      v34 = v80;
      sub_1B67D8CAC();
    }

    else
    {
      v36 = *v28;
      v37 = sub_1B64D8CA8();
      v38 = *v37;
      v39 = *(v37 + 1);

      sub_1B64503A4(v36);

      v34 = v80;
      sub_1B67D8C8C();
    }

    v40 = *(v81 + 56);
    v41 = v34;
LABEL_13:
    v53 = 0;
    return v40(v41, v53, 1, v82);
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_1B64D34FC(v28);
      sub_1B64E1ADC();
      swift_allocError();
      return swift_willThrow();
    }

    v41 = v80;
    v40 = *(v81 + 56);
    v53 = 1;
    return v40(v41, v53, 1, v82);
  }

  v42 = *v28;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B640, &qword_1B6816A60);
  v44 = swift_projectBox();
  v45 = *(v43 + 48);
  sub_1B64E1B30(v44, v26, type metadata accessor for RecipeItemPruningPolicy);
  v46 = sub_1B64E1B30(v44 + v45, v23, type metadata accessor for RecipeItemPruningPolicy);
  v47 = v84;
  sub_1B64DE0B4(v46);
  if (v47)
  {
    sub_1B64D34FC(v23);
    sub_1B64D34FC(v26);
  }

  else
  {
    v55 = v81;
    v54 = v82;
    v56 = *(v81 + 48);
    if (v56(v8, 1, v82) == 1)
    {
      v57 = sub_1B6418AB4(v8, &qword_1EB94B470, &unk_1B6815A80);
      sub_1B64DE0B4(v57);
      sub_1B64D34FC(v23);
      sub_1B64D34FC(v26);
    }

    else
    {
      v76 = v42;
      v84 = 0;
      v58 = v79;
      v75 = *(v55 + 32);
      v59 = v75(v79, v8, v54);
      v60 = v78;
      v61 = v84;
      sub_1B64DE0B4(v59);
      v84 = v61;
      if (v61)
      {
        (*(v55 + 8))(v58, v82);
        sub_1B64D34FC(v23);
        sub_1B64D34FC(v26);
      }

      else
      {
        v62 = v75;
        sub_1B64D34FC(v23);
        sub_1B64D34FC(v26);
        v63 = v82;
        if (v56(v60, 1, v82) == 1)
        {
          sub_1B6418AB4(v60, &qword_1EB94B470, &unk_1B6815A80);
          v64 = v80;
          v62(v80, v79, v63);
          (*(v81 + 56))(v64, 0, 1, v63);
        }

        else
        {
          v65 = v77;
          v62(v77, v60, v63);
          v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B710, &unk_1B6817A28);
          v67 = v63;
          v68 = swift_allocBox();
          v70 = v69;
          v71 = *(v66 + 48);
          v62(v69, v79, v67);
          v62((v70 + v71), v65, v67);
          v72 = v80;
          *v80 = v68;
          v73 = v81;
          (*(v81 + 104))(v72, *MEMORY[0x1E69D6140], v67);
          (*(v73 + 56))(v72, 0, 1, v67);
        }
      }
    }
  }
}

id sub_1B64DE808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v69 = a2;
  v63 = a3;
  v4 = sub_1B67D8C1C();
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B67D8E6C();
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1B67D8F7C();
  v66 = *(v68 - 8);
  v11 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B67D8E8C();
  v64 = *(v13 - 8);
  v65 = v13;
  v14 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B67D8EDC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B67D8C4C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = sub_1B67D8F5C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *a1;
  v29 = *(a1 + 16);
  v74 = *(a1 + 8);
  v75 = v29;
  v30 = *(a1 + 24);
  if (v30 != 255)
  {
    v31 = v28;
    v32 = v30;
    if ((v30 & 1) == 0)
    {
      v33 = v63;
      v34 = v74;
      v35 = v75;
      *v63 = v28;
      v33[1] = v34;
      v33[2] = v35;
    }

    goto LABEL_7;
  }

  v58 = (a1 + 8);
  v59 = v28;
  v77 = 255;
  v57 = v7;
  v60 = a1;
  *v27 = sub_1B67D85BC();
  v27[1] = v37;
  (*(v24 + 104))(v27, *MEMORY[0x1E69D6280], v23);
  sub_1B67D8C3C();
  (*(v17 + 104))(v20, *MEMORY[0x1E69D6270], v16);
  (*(v64 + 104))(v67, *MEMORY[0x1E69D6268], v65);
  (*(v66 + 104))(v70, *MEMORY[0x1E69D62A0], v68);
  (*(v71 + 104))(v73, *MEMORY[0x1E69D6250], v72);
  v38 = sub_1B67D8F8C();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v78 = 1;
  v41 = v76;
  v42 = sub_1B67D8F6C();
  if (v41)
  {
    v43 = v60;
    *v60 = v41;
    v50 = v58;
    *v58 = 0;
    v50[1] = 0;
    *(v43 + 24) = 1;
    v51 = v41;
    v31 = v59;
    v32 = v77;
LABEL_7:
    swift_willThrow();
    return sub_1B64574B0(v31, v74, v75, v32);
  }

  v44 = v42;
  sub_1B64E0CFC();
  v45 = sub_1B67D8F3C();
  v46 = v60;
  v47 = v45;
  sub_1B64DC460();
  v48 = sub_1B67D8F3C();
  v49 = sub_1B67D8E7C();
  if (v49 != (FCRecipeItemVersion | 0x10000))
  {
    v73 = (FCRecipeItemVersion | 0x10000);
    v76 = &v56;
    MEMORY[0x1EEE9AC00](v49);
    *(&v56 - 2) = v47;
    *(&v56 - 1) = v48;
    v53 = v61;
    v54 = v62;
    v55 = v57;
    (*(v61 + 104))(v57, *MEMORY[0x1E69D6188], v62);
    sub_1B67D8F4C();
    (*(v53 + 8))(v55, v54);
    sub_1B67D8EEC();
  }

  *v46 = v44;
  v46[1] = v47;
  v46[2] = v48;
  *(v46 + 24) = 0;
  v52 = v63;
  *v63 = v44;
  v52[1] = v47;
  v52[2] = v48;
}

uint64_t sub_1B64DEF60()
{
  v1 = OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_fileURL;
  v2 = sub_1B67D85FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_logger;
  v4 = sub_1B67D8A9C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_storage);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B64DF04C(uint64_t a1)
{
  v2 = sub_1B64E1A34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B64DF088(uint64_t a1)
{
  v2 = sub_1B64E1A34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B64DF0C4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B700, &unk_1B6817A18);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64E1A34();
  sub_1B67DA47C();
  v16 = a2;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  sub_1B6413CCC(&qword_1EB94A5E8, &qword_1EB949F40, &qword_1B6810290);
  sub_1B67DA24C();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
    sub_1B6413CCC(&qword_1EB94AC90, &qword_1EB94A640, &qword_1B6811470);
    sub_1B67DA24C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1B64DF2DC(uint64_t a1)
{
  v2 = sub_1B64E0CFC();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B64DF328(uint64_t a1)
{
  v2 = sub_1B64E0CFC();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B64DF374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B64E0CFC();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1B64DF3D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B64E11A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B64DF400@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B64E14E4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1B64DF448(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B64E0CFC();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B64DF494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B64E0CFC();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B64DF4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B64E0CFC();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

void *sub_1B64DF54C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v34 = a2;
  v31 = a5;
  v32 = a4;
  v36 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - v8;
  v33 = sub_1B67D8E4C();
  v10 = *(v33 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v30 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &unk_1B6815A80;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B470, &unk_1B6815A80);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v30 - v16;
  v18 = sub_1B67D8B1C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6415FF0(a1, v17, &qword_1EB94B470, &unk_1B6815A80);
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    (*(v19 + 32))(v22, v17, v18);
    sub_1B64DC1C0();
    sub_1B67D8D9C();
    v25 = v35;
    v26 = sub_1B67D8FEC();
    if (!v25)
    {
      v13 = v26;
    }

    (*(v19 + 8))(v22, v18);
    goto LABEL_10;
  }

  v13 = v34;
  v23 = v35;
  sub_1B6418AB4(v17, &qword_1EB94B470, &unk_1B6815A80);
  sub_1B6415FF0(v36, v9, &qword_1EB94B510, &unk_1B68102C0);
  v24 = v33;
  if ((*(v10 + 48))(v9, 1, v33) != 1)
  {
    v27 = v30;
    (*(v10 + 32))(v30, v9, v24);
    sub_1B64DC1C0();
    sub_1B67D8D9C();
    v28 = sub_1B67D8FBC();
    if (!v23)
    {
      v13 = v28;
    }

    (*(v10 + 8))(v27, v24);
LABEL_10:

    return v13;
  }

  sub_1B6418AB4(v9, &qword_1EB94B510, &unk_1B68102C0);
  sub_1B64DC1C0();
  sub_1B67D8D9C();
  v13 = sub_1B67D8F9C();

  return v13;
}

uint64_t sub_1B64DF97C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    goto LABEL_2;
  }

  v4 = a2;
  v8 = a3;
  v9 = a4;
  sub_1B67DA2FC();
  swift_unknownObjectRetain_n();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v10 + 16);

  if (__OFSUB__(v9 >> 1, v8))
  {
    goto LABEL_25;
  }

  if (v11 != (v9 >> 1) - v8)
  {
LABEL_26:
    swift_unknownObjectRelease();
    a3 = v8;
    a4 = v9;
    a2 = v4;
LABEL_2:
    sub_1B64E0378(a1, a2, a3, a4);
    v7 = v6;
    goto LABEL_9;
  }

  v7 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v7)
  {
    goto LABEL_10;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  v12 = *(v7 + 16);
  if (v12 >= 2)
  {
    v9 = v12 >> 1;
    v8 = v12 + 3;
    v14 = 4;
    do
    {
      if (v14 != v8)
      {
        v16 = *(v7 + 16);
        if (v14 - 4 >= v16)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        if (v8 - 4 >= v16)
        {
          goto LABEL_23;
        }

        a1 = *(v7 + 8 * v14);
        v4 = *(v7 + 8 * v8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1B64BFF84(v7);
        }

        v17 = *(v7 + 8 * v14);
        *(v7 + 8 * v14) = v4;

        if (v8 - 4 >= *(v7 + 16))
        {
          goto LABEL_24;
        }

        v15 = *(v7 + 8 * v8);
        *(v7 + 8 * v8) = a1;
      }

      --v8;
      ++v14;
      --v9;
    }

    while (v9);
  }

  return v7;
}

uint64_t sub_1B64DFB24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v6 = sub_1B67D9DFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = v28 - v13;
  v15 = *(v2 + 24);
  if (!v15)
  {
    goto LABEL_15;
  }

  if (*(v15 + 16))
  {
    v16 = *(v2 + 24);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v17 = *(v15 + 16);
      if (v17)
      {
        goto LABEL_5;
      }
    }

    else
    {
      result = sub_1B64BFF84(v15);
      v15 = result;
      v17 = *(result + 16);
      if (v17)
      {
LABEL_5:
        v29 = a2;
        v18 = v17 - 1;
        v19 = *(v15 + 8 * v18 + 32);
        *(v15 + 16) = v18;
        *(v2 + 24) = v15;
        v20 = objc_autoreleasePoolPush();
        v21 = a1[2];
        v22 = a1[4];
        v28[1] = v19;
        sub_1B64DFE38(v2, v21, v5, v14);
        objc_autoreleasePoolPop(v20);
        (*(v7 + 16))(v11, v14, v6);
        v23 = *(v5 - 8);
        v24 = *(v23 + 48);
        if (v24(v11, 1, v5) == 1)
        {
          sub_1B64DFB24(a1);

          v25 = *(v7 + 8);
          v25(v14, v6);
          result = v24(v11, 1, v5);
          if (result != 1)
          {
            return (v25)(v11, v6);
          }
        }

        else
        {
          (*(v7 + 8))(v14, v6);

          v27 = v29;
          (*(v23 + 32))(v29, v11, v5);
          return (*(v23 + 56))(v27, 0, 1, v5);
        }

        return result;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v26 = *(*(v5 - 8) + 56);

  return v26(a2, 1, 1, v5);
}

uint64_t sub_1B64DFE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v35 = a3;
  v43 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_1B67D8B1C();
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B67D9DFC();
  v33 = *(v14 - 8);
  v34 = v14;
  v15 = *(v33 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v39 = *(a2 - 8);
  v19 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v31 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v21 = *(a1 + 8);

  sub_1B67D8D9C();

  v22 = sub_1B64D8C6C();
  v23 = *v22;
  v24 = v22[1];

  sub_1B646D2FC();
  sub_1B67D8DCC();

  if (v41)
  {
    v42[3] = MEMORY[0x1E69E6158];
    v42[4] = MEMORY[0x1E69D62D8];
    v42[0] = v40;
    v42[1] = v41;
    sub_1B67D8C7C();

    __swift_destroy_boxed_opaque_existential_1(v42);
    v26 = sub_1B67D8E4C();
    (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
    v27 = v36;
    sub_1B67D8FDC();
    if (v27)
    {

      sub_1B6418AB4(v9, &qword_1EB94B510, &unk_1B68102C0);
      (*(v37 + 8))(v13, v38);
      (*(v39 + 56))(v18, 1, 1, a2);
LABEL_5:
      (*(v33 + 8))(v18, v34);
      return (*(*(v35 - 8) + 56))(v43, 1, 1);
    }

    sub_1B6418AB4(v9, &qword_1EB94B510, &unk_1B68102C0);
    (*(v37 + 8))(v13, v38);
    v28 = v39;
    if ((*(v39 + 48))(v18, 1, a2) == 1)
    {
      goto LABEL_5;
    }

    v29 = v31;
    (*(v28 + 32))(v31, v18, a2);
    v30 = *(v32 + 16);

    swift_getAtKeyPath();

    return (*(v28 + 8))(v29, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B64E02EC@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  result = sub_1B64DF54C(*(v1 + 16), *(v1 + 24), *(v1 + 32), v4, v5);
  if (!v2)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v5)
    {
      v7 = v4;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v8 = *(result + 16);
      if (v8 >= v7)
      {
        v8 = v7;
      }

      v9 = 2 * v8;
      if (v7)
      {
        v10 = v9 + 1;
      }

      else
      {
        v10 = 1;
      }

      result = sub_1B64DF97C(result, result + 32, 0, v10);
      *a1 = result;
    }
  }

  return result;
}

void sub_1B64E0378(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B718, &qword_1B6817A38);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1B64E0450()
{
  v1 = v0[2];
  v2 = v0[5];
  v20 = v0[4];
  if (v1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B67DA04C())
  {
    v19 = v2;
    for (j = 4; ; ++j)
    {
      v5 = j - 4;
      if ((v1 & 0xC000000000000001) == 0)
      {
        break;
      }

      v6 = MEMORY[0x1B8C95180](j - 4, v1);
      v2 = v19;
      v7 = j - 3;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_20;
      }

LABEL_10:
      v21 = v7;
      v22 = objc_autoreleasePoolPush();
      sub_1B67D8D4C();
      v8 = [v6 identifier];
      v9 = sub_1B67D964C();
      v11 = v10;

      if (*(v2 + 16))
      {
        v12 = sub_1B6456E70(v9, v11);
        v14 = v13;

        if (v14)
        {
          v15 = 0;
          v16 = *(*(v2 + 56) + 8 * v12);
          goto LABEL_15;
        }
      }

      else
      {
      }

      v16 = 0;
      v15 = 1;
LABEL_15:
      v17 = v6;
      sub_1B64D8D5C(v17, v16, v15, &v23);
      v18 = v24;
      sub_1B67D8CDC();
      v24 = v18;
      if (v18)
      {

        objc_autoreleasePoolPop(v22);

        return;
      }

      objc_autoreleasePoolPop(v22);

      if (v21 == i)
      {
        return;
      }
    }

    v2 = v19;
    if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    v6 = *(v1 + 8 * j);
    v7 = j - 3;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_10;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }
}

uint64_t sub_1B64E0700()
{
  v2 = v0[2];
  v3 = v0[4];
  v4 = v0[7];
  v5 = v0[5];
  sub_1B67D8D4C();
  sub_1B64E0DC4(v4, v2, v3);
  if (!v1)
  {
    sub_1B67D8CDC();
  }
}

uint64_t sub_1B64E07C4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  sub_1B67D8D7C();
  sub_1B67D8E2C();
}

unint64_t sub_1B64E081C()
{
  result = qword_1EB94B6E8;
  if (!qword_1EB94B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94B6E8);
  }

  return result;
}

void sub_1B64E0888()
{
  sub_1B67D877C();
  if (v0 <= 0x3F)
  {
    sub_1B64E0A98(319, &qword_1EDB1E608, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B64E0920()
{
  sub_1B64E0A98(319, &qword_1EDB1E608, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B67D877C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t sub_1B64E09D0()
{
  result = qword_1EDB225A0[0];
  if (!qword_1EDB225A0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94B6F0, &qword_1B68176A8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB225A0);
  }

  return result;
}

uint64_t sub_1B64E0A34()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1B64E0A98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1B64E0AEC()
{
  result = qword_1EDB23A40;
  if (!qword_1EDB23A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB23A40);
  }

  return result;
}

unint64_t sub_1B64E0B44()
{
  result = qword_1EDB23A48;
  if (!qword_1EDB23A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB23A48);
  }

  return result;
}

unint64_t sub_1B64E0B9C()
{
  result = qword_1EDB23A60;
  if (!qword_1EDB23A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB23A60);
  }

  return result;
}

unint64_t sub_1B64E0BF4()
{
  result = qword_1EDB23A70[0];
  if (!qword_1EDB23A70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB23A70);
  }

  return result;
}

unint64_t sub_1B64E0C4C()
{
  result = qword_1EDB23A50;
  if (!qword_1EDB23A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB23A50);
  }

  return result;
}

unint64_t sub_1B64E0CA4()
{
  result = qword_1EDB23A88;
  if (!qword_1EDB23A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB23A88);
  }

  return result;
}

unint64_t sub_1B64E0CFC()
{
  result = qword_1EDB23A90[0];
  if (!qword_1EDB23A90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB23A90);
  }

  return result;
}

unint64_t sub_1B64E0D54()
{
  result = qword_1EB958138[0];
  if (!qword_1EB958138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB958138);
  }

  return result;
}

uint64_t sub_1B64E0DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43[1] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 1, 1, v17);
  v18(v14, 1, 1, v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_1B67D8B3C();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v27 = *(*(v26 - 8) + 56);
  v27(v9, 1, 1, v26);
  v27(v7, 1, 1, v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  sub_1B67D8B3C();
  sub_1B67D8B4C();
  v44 = xmmword_1B68100F0;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v34 = sub_1B67D83FC();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  sub_1B67D83EC();
  v37 = v45;
  v38 = sub_1B67D83DC();
  if (v37)
  {
  }

  else
  {
    v40 = v38;
    v41 = v39;

    *&v44 = v40;
    *(&v44 + 1) = v41;
    sub_1B67D8DDC();
  }

  return v25;
}

uint64_t sub_1B64E11A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v15 = *(*(v14 - 8) + 56);
  v15(v13, 1, 1, v14);
  v15(v11, 1, 1, v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_1B67D8B3C();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v24 = *(*(v23 - 8) + 56);
  v24(v6, 1, 1, v23);
  v24(v4, 1, 1, v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  sub_1B67D8DBC();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_1B67D8B3C();

  sub_1B67D8B4C();
  v32 = xmmword_1B68100F0;
  sub_1B67D8DDC();

  return v22;
}

uint64_t sub_1B64E14E4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B6F8, &qword_1B6817A10);
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v21 = *(*(v20 - 8) + 56);
  v21(v19, 1, 1, v20);
  v21(v17, 1, 1, v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_1B67D8B3C();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v30 = *(*(v29 - 8) + 56);
  v30(v12, 1, 1, v29);
  v30(v10, 1, 1, v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  sub_1B67D8B3C();
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64E1A34();
  v38 = v43;
  sub_1B67DA46C();
  if (v38)
  {
  }

  else
  {
    v44 = 0;
    sub_1B6413CCC(&qword_1EB94A618, &qword_1EB949F40, &qword_1B6810290);
    v39 = v42;
    sub_1B67DA1CC();

    v28 = v45;
    v44 = 1;
    sub_1B6413CCC(&qword_1EB94ACB0, &qword_1EB94A640, &qword_1B6811470);
    sub_1B67DA1CC();
    (*(v41 + 8))(v5, v39);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v28;
}

unint64_t sub_1B64E1A34()
{
  result = qword_1EB9581C0;
  if (!qword_1EB9581C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9581C0);
  }

  return result;
}

unint64_t sub_1B64E1A88()
{
  result = qword_1EB94B708;
  if (!qword_1EB94B708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94B708);
  }

  return result;
}

unint64_t sub_1B64E1ADC()
{
  result = qword_1EB9581C8[0];
  if (!qword_1EB9581C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9581C8);
  }

  return result;
}

uint64_t sub_1B64E1B30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B64E1B98()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1B67D8D3C();
  sub_1B67D8CCC();

  if (!v1)
  {
    sub_1B67D8D6C();
    sub_1B67D8DFC();

    sub_1B67D8D3C();
    sub_1B67D8CCC();

    sub_1B67D8D6C();
    sub_1B67D8DFC();
  }

  return result;
}

unint64_t sub_1B64E1CA0()
{
  result = qword_1EB9582D0[0];
  if (!qword_1EB9582D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9582D0);
  }

  return result;
}

unint64_t sub_1B64E1CF8()
{
  result = qword_1EB9583E0[0];
  if (!qword_1EB9583E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9583E0);
  }

  return result;
}

unint64_t sub_1B64E1D50()
{
  result = qword_1EB958570;
  if (!qword_1EB958570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB958570);
  }

  return result;
}

unint64_t sub_1B64E1DA8()
{
  result = qword_1EB958578;
  if (!qword_1EB958578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB958578);
  }

  return result;
}

uint64_t RecipeItemServiceResult.cursor.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1B67D9DFC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t sub_1B64E1EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B67D9DFC();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for RecipeItemServiceResult() + 44);

  return sub_1B64E1F6C(a2, v7);
}

uint64_t sub_1B64E1F6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeItemPruningPolicy(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B64E1FD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1B67D9DFC();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for RecipeItemPruningPolicy(319);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B64E2058(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(sub_1B67D877C() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  if (v8 <= 0xFA)
  {
    v11 = 250;
  }

  else
  {
    v11 = v8;
  }

  v12 = *(v6 + 64);
  if (!v7)
  {
    ++v12;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v9 + 80) & 0xF8 | 7;
  v14 = v12 + v13;
  if (a2 <= v11)
  {
    goto LABEL_35;
  }

  v15 = v10 + (v14 & ~v13) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v19 < 2)
    {
LABEL_35:
      if (v8 < 0xFA)
      {
        v24 = *(((a1 + v14) & ~v13) + v10);
        if (v24 >= 6)
        {
          return (v24 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v23 = (*(v6 + 48))(a1, v7, v5);
        if (v23 >= 2)
        {
          return v23 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_35;
  }

LABEL_22:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v11 + (v22 | v20) + 1;
}