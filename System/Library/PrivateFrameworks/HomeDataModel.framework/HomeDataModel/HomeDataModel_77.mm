void sub_1D1D7C9D0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  v12 = 0;
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  if (v16 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v13 + 80);
  v19 = *(v13 + 64);
  if (v17 <= 0xFE)
  {
    v17 = 254;
  }

  v20 = *(v10 + 64) + v18;
  if (!v15)
  {
    ++v19;
  }

  v21 = v19 + (v20 & ~v18) + 1;
  if (a3 > v17)
  {
    v12 = 1;
    if (v21 <= 3)
    {
      v22 = ((a3 - v17 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
      v23 = HIWORD(v22);
      if (v22 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v22 >= 2)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      if (v23)
      {
        v12 = 4;
      }

      else
      {
        v12 = v25;
      }
    }
  }

  if (v17 < a2)
  {
    v26 = ~v17 + a2;
    if (v21 < 4)
    {
      v27 = (v26 >> (8 * v21)) + 1;
      if (v19 + (v20 & ~v18) != -1)
      {
        v28 = v26 & ~(-1 << (8 * v21));
        bzero(a1, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *a1 = v28;
            if (v12 > 1)
            {
LABEL_53:
              if (v12 == 2)
              {
                *&a1[v21] = v27;
              }

              else
              {
                *&a1[v21] = v27;
              }

              return;
            }
          }

          else
          {
            *a1 = v26;
            if (v12 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v28;
        a1[2] = BYTE2(v28);
      }

      if (v12 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v19 + (v20 & ~v18) + 1);
      *a1 = v26;
      v27 = 1;
      if (v12 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v12)
    {
      a1[v21] = v27;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v21] = 0;
  }

  else if (v12)
  {
    a1[v21] = 0;
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
  if (v11 == v17)
  {
    v29 = *(v10 + 56);

    v29(a1, a2, v11, AssociatedTypeWitness);
  }

  else
  {
    v30 = &a1[v20] & ~v18;
    if (v16 == v17)
    {
      v31 = *(v14 + 56);

      v31(v30, (a2 + 1));
    }

    else
    {
      *(v30 + v19) = a2 + 1;
    }
  }
}

uint64_t AsyncSequence.collect()(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1D7CD74, 0, 0);
}

uint64_t sub_1D1D7CD74()
{
  v1 = v0[4];
  v2 = v0[5];
  swift_getAssociatedTypeWitness();
  v0[3] = sub_1D1E6758C();
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x1E69E8748] + 4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = sub_1D1E67D1C();
  *v5 = v0;
  v5[1] = sub_1D1D7CE98;
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[4];

  return MEMORY[0x1EEE6DB28](v0 + 2, v0 + 3, &unk_1D1EAD8D0, v3, v9, v6, v7);
}

uint64_t sub_1D1D7CE98()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 72) = v0;

  (*(*(v5 - 8) + 8))(v4, v5);

  if (v0)
  {
    v6 = sub_1D1D7D028;
  }

  else
  {
    v6 = sub_1D19D88F8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D1D7D040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v23 - v11;
  sub_1D1A08410(a1, v23 - v11);
  v13 = sub_1D1E67E7C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D1741A30(v12, &unk_1EC6442C0, &qword_1D1E741A0);
    if (*(a3 + 16))
    {
LABEL_3:
      v15 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_1D1E67D4C();
      v18 = v17;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D1E67E6C();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_6:
  v19 = *v5;
  v20 = *(a4 + 16);
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v16;
    v24[3] = v18;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v19;
  swift_task_create();
}

uint64_t AsyncSequence.collectWithError()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[7] = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = swift_getAssociatedTypeWitness();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v11 = *(*(sub_1D1E685AC() - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  v4[14] = v12;
  v13 = *(v12 - 8);
  v4[15] = v13;
  v14 = *(v13 + 64) + 15;
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D7D434, 0, 0);
}

uint64_t sub_1D1D7D434()
{
  v1 = v0[16];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v0[2] = sub_1D1E67C7C();
  sub_1D1E6801C();
  v6 = v0[14];
  v8 = v0[4];
  v7 = v0[5];
  swift_getAssociatedConformanceWitness();
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_1D1D7D530;
  v11 = v0[16];
  v12 = v0[13];
  v13 = v0[14];
  v14 = v0[12];

  return MEMORY[0x1EEE6D8D0](v12, 0, 0);
}

uint64_t sub_1D1D7D530()
{
  v2 = *(*v1 + 136);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1D1D7D828;
  }

  else
  {
    v3 = sub_1D1D7D640;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1D7D640()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    v4 = v0[16];
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[9];
    v8 = v0[2];
    (*(v0[11] + 56))(v0[3], 1, 1, v0[10]);

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    (*(v3 + 32))(v0[9], v1, v2);
    sub_1D1E67D1C();
    sub_1D1E67CDC();
    v11 = v0[14];
    v13 = v0[4];
    v12 = v0[5];
    swift_getAssociatedConformanceWitness();
    v14 = *(MEMORY[0x1E69E85B0] + 4);
    v15 = swift_task_alloc();
    v0[17] = v15;
    *v15 = v0;
    v15[1] = sub_1D1D7D530;
    v16 = v0[16];
    v17 = v0[13];
    v18 = v0[14];
    v19 = v0[12];

    return MEMORY[0x1EEE6D8D0](v17, 0, 0);
  }
}

uint64_t sub_1D1D7D828()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[3];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v2 + 32))(v4, v1, v3);
  v5 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[9];
  v9 = v0[2];
  (*(v0[11] + 56))(v0[3], 0, 1, v0[10]);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1D1D7D920(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[4] = AssociatedTypeWitness;
  v4 = *(AssociatedTypeWitness - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D7D9F8, 0, 0);
}

uint64_t sub_1D1D7D9F8()
{
  v1 = v0[2];
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  sub_1D1E67D1C();
  sub_1D1E67CDC();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D1D7DAA0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D17C4BFC;

  return sub_1D1D7D920(a1, a2);
}

uint64_t AsyncSequence<>.first(within:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = swift_getAssociatedTypeWitness();
  v8 = sub_1D1E685AC();
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v11 = *(a4 - 8);
  v6[13] = v11;
  v12 = *(v11 + 64) + 15;
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D7DCA4, 0, 0);
}

uint64_t sub_1D1D7DCA4()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  swift_getAssociatedTypeWitness();
  v8 = swift_allocBox();
  v0[15] = v8;
  (*(v2 + 16))(v1, v3, v5);
  sub_1D1E6801C();
  v9 = swift_task_alloc();
  v0[16] = v9;
  v9[2] = v5;
  v9[3] = v4;
  v9[4] = v8;
  v9[5] = v7;
  v9[6] = v6;
  v10 = *(MEMORY[0x1E69E88A0] + 4);
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_1D1D7DE18;
  v12 = v0[12];
  v13 = v0[9];

  return MEMORY[0x1EEE6DD58](v12, v13, v13, 0, 0, &unk_1D1EAD8F0, v9, v13);
}

uint64_t sub_1D1D7DE18()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;

  v5 = *(v2 + 128);
  if (v0)
  {
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1D7DF70, 0, 0);
  }
}

uint64_t sub_1D1D7DF70()
{
  v1 = v0[11];
  v2 = v0[8];
  (*(v0[10] + 32))(v1, v0[12], v0[9]);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[11];
  if (v4 == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
    v6 = 1;
  }

  else
  {
    (*(v3 + 32))(v0[2], v0[11], v0[8]);
    v6 = 0;
  }

  v7 = v0[14];
  v8 = v0[15];
  v10 = v0[11];
  v9 = v0[12];
  (*(v3 + 56))(v0[2], v6, 1, v0[8]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D1D7E0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = swift_getAssociatedTypeWitness();
  v7[10] = sub_1D1E685AC();
  v8 = sub_1D1E685AC();
  v7[11] = v8;
  v9 = *(v8 - 8);
  v7[12] = v9;
  v10 = *(v9 + 64) + 15;
  v7[13] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v7[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D7E210, 0, 0);
}

uint64_t sub_1D1D7E210()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v18 = v0[5];
  v19 = v0[6];
  v5 = v0[4];
  v16 = v3;
  v17 = v0[3];
  v6 = sub_1D1E67E7C();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;
  v8[5] = v4;
  v8[6] = v5;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v9 = sub_1D1E6800C();
  sub_1D1D7D040(v1, &unk_1D1EAD908, v8, v9);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v7(v1, 1, 1, v6);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v16;
  v10[5] = v4;
  v10[6] = v18;
  v10[7] = v19;
  sub_1D1D7D040(v1, &unk_1D1EAD920, v10, v9);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v11 = *(MEMORY[0x1E69E8708] + 4);
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_1D1D7E454;
  v13 = v0[13];
  v14 = v0[3];

  return MEMORY[0x1EEE6DAC8](v13, 0, 0, v9);
}

uint64_t sub_1D1D7E454()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1D1D7E6D4;
  }

  else
  {
    v3 = sub_1D1D7E568;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1D7E568()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 72);
    v5 = *(v0 + 16);
    (*(*(v0 + 96) + 8))(v1, *(v0 + 88));
    (*(*(v4 - 8) + 56))(v5, 1, 1, v4);
  }

  else
  {
    (*(v3 + 32))(*(v0 + 16), v1, v2);
  }

  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  sub_1D1D7EFD8(*(v0 + 24));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D1D7E6D4()
{
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EE07B5D8);
  v3 = v1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 128);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D16EC000, v4, v5, "Unable to get the next element in sequence: %@", v8, 0xCu);
    sub_1D1741A30(v9, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  else
  {
  }

  (*(*(*(v0 + 72) - 8) + 56))(*(v0 + 16), 1, 1);
  v12 = *(v0 + 104);
  v13 = *(v0 + 112);
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  sub_1D1D7EFD8(*(v0 + 24));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1D1D7E8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a1;
  v6[8] = swift_getAssociatedTypeWitness();
  v6[9] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1D1D7E970, 0, 0);
}

uint64_t sub_1D1D7E970()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  swift_beginAccess();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(MEMORY[0x1E69E85A8] + 4);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1D1D7EA54;
  v8 = v0[8];
  v9 = v0[9];
  v10 = v0[5];

  return MEMORY[0x1EEE6D8C8](v10, v8, AssociatedConformanceWitness);
}

uint64_t sub_1D1D7EA54()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1D7EB90, 0, 0);
  }

  else
  {
    swift_endAccess();
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1D1D7EB90()
{
  swift_endAccess();
  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1();
}

uint64_t sub_1D1D7EBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1D1E68A4C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D7ECB4, 0, 0);
}

uint64_t sub_1D1D7ECB4()
{
  v1 = v0[6];
  sub_1D1E6912C();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1D1D7ED74;
  v3 = v0[6];
  v5 = v0[2];
  v4 = v0[3];

  return sub_1D1A01910(v5, v4, 0, 0, 1);
}

uint64_t sub_1D1D7ED74()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 64) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1D1D7EF74;
  }

  else
  {
    v6 = sub_1D1D7EEE4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D1D7EEE4()
{
  sub_1D1D7F2D8();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1D7EF74()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1D7EFD8(uint64_t *a1)
{
  v1 = *a1;
  swift_getAssociatedTypeWitness();
  sub_1D1E685AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);

  return sub_1D1E67FFC();
}

uint64_t sub_1D1D7F064(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D17C4CF0;

  return sub_1D1D7E0D4(a1, a2, v8, v9, v10, v6, v7);
}

uint64_t sub_1D1D7F13C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1D7E8D4(a1, v6, v7, v8, v4, v5);
}

uint64_t sub_1D1D7F204(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D17C4CF0;

  return sub_1D1D7EBF4(a1, v6, v7, v9, v8);
}

unint64_t sub_1D1D7F2D8()
{
  result = qword_1EC64EDD8;
  if (!qword_1EC64EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64EDD8);
  }

  return result;
}

unint64_t sub_1D1D7F340()
{
  result = qword_1EC64EDE0[0];
  if (!qword_1EC64EDE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC64EDE0);
  }

  return result;
}

uint64_t CancellableBlockRunner.__allocating_init(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  CancellableBlockRunner.init(block:)(a1, a2);
  return v7;
}

uint64_t sub_1D1D7F3E4(uint64_t a1)
{
  v2 = *(v1 + 128);
  *(v1 + 128) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1D1D7F3F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  v5 = *(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E67D7C();
  v6 = sub_1D1E685AC();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_1D1D7F4D0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  v5 = *(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E67D7C();
  v6 = sub_1D1E685AC();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t sub_1D1D7F5B4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(*v2 + 120));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_1D17169C0(v4);
}

char *CancellableBlockRunner.init(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_defaultActor_initialize();
  *(v2 + 16) = 0;
  v6 = *(*v2 + 112);
  v7 = *(v5 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v8 = sub_1D1E67D7C();
  (*(*(v8 - 8) + 56))(&v2[v6], 1, 1, v8);
  v9 = &v2[*(*v2 + 120)];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v2 + 14) = a1;
  *(v2 + 15) = a2;
  return v2;
}

uint64_t sub_1D1D7F6D4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v2[5] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1D7F744, v1, 0);
}

uint64_t sub_1D1D7F744()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  v0[7] = v5;
  swift_weakInit();
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = *(v1 + 80);
  *(v6 + 16) = v7;
  *(v6 + 24) = v5;
  type metadata accessor for CancellableBlockRunner();
  WitnessTable = swift_getWitnessTable();
  v9 = *(MEMORY[0x1E69E88F0] + 4);
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_1D1D7F8B0;
  v11 = v0[2];

  return MEMORY[0x1EEE6DE18](v11, &unk_1D1EADA08, v4, sub_1D1D81180, v6, v3, WitnessTable, v7);
}

uint64_t sub_1D1D7F8B0()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x1EEE6DFA0](sub_1D1D7FA04, v4, 0);
  }

  else
  {
    v5 = v3[7];
    v6 = v3[8];
    v7 = v3[6];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_1D1D7FA04()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

uint64_t sub_1D1D7FA7C(uint64_t a1, void *a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1D7FAC4, a2, 0);
}

uint64_t sub_1D1D7FAC4()
{
  v1 = v0[4];
  v2 = v0[3];
  v3 = *(v0[5] + 80);
  type metadata accessor for CancellableBlockRunner();
  WitnessTable = swift_getWitnessTable();
  v5 = swift_allocObject();
  v0[6] = v5;
  swift_weakInit();
  v6 = swift_task_alloc();
  v0[7] = v6;
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = v1;
  v7 = *(MEMORY[0x1E69E8920] + 4);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1D1D7FC18;
  v9 = v0[2];

  return MEMORY[0x1EEE6DE38](v9, v2, WitnessTable, 0x29286E7572, 0xE500000000000000, sub_1D1D82108, v6, v3);
}

uint64_t sub_1D1D7FC18()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x1EEE6DFA0](sub_1D1A0E028, v4, 0);
  }

  else
  {
    v5 = v3[6];
    v6 = v3[7];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1D1D7FD60(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return sub_1D1D7FA7C(a1, v5, v4);
}

uint64_t sub_1D1D7FE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v7 = sub_1D1E67D7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v21 - v14;
  v16 = sub_1D1E67E7C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v8 + 16))(v11, a1, v7);
  v17 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a4;
  (*(v8 + 32))(&v19[v17], v11, v7);
  *&v19[v18] = a2;
  *&v19[(v18 + 15) & 0xFFFFFFFFFFFFFFF8] = v22;

  sub_1D1B1DFC0(0, 0, v15, &unk_1D1EADAE0, v19);

  return sub_1D1B14EB4(v15);
}

uint64_t sub_1D1D8004C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D1D80070, 0, 0);
}

uint64_t sub_1D1D80070()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1D1D80134;
  v4 = v0[7];
  v5 = v0[5];

  return sub_1D1D80244(v5, Strong);
}

uint64_t sub_1D1D80134()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1D1D80244(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  v4 = *(v2 + 80);
  v3[5] = v4;
  v5 = sub_1D1E685AC();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = *(v4 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v3[11] = sub_1D1E67D7C();
  v10 = sub_1D1E685AC();
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D803F4, 0, 0);
}

uint64_t sub_1D1D803F4()
{
  v1 = v0[4];
  swift_weakInit();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[14];
    v5 = v0[11];
    v6 = *(v5 - 8);
    (*(v6 + 16))(v4, v0[3], v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    v7 = sub_1D1D8070C;
LABEL_3:

    return MEMORY[0x1EEE6DFA0](v7, v3, 0);
  }

  v8 = swift_weakLoadStrong();
  if (v8)
  {
    v9 = *(v8 + 112);
    v0[16] = *(v8 + 120);

    v10 = swift_weakLoadStrong();
    v0[17] = v10;
    v23 = (v9 + *v9);
    v11 = v9[1];
    v12 = swift_task_alloc();
    v0[18] = v12;
    *v12 = v0;
    v12[1] = sub_1D1D809F8;
    v13 = v0[8];

    return v23(v13, v10);
  }

  else
  {
    v14 = v0[8];
    v15 = v0[6];
    v16 = v0[7];
    (*(v0[9] + 56))(v14, 1, 1, v0[5]);
    (*(v16 + 8))(v14, v15);
    v17 = swift_weakLoadStrong();
    v0[21] = v17;
    if (v17)
    {
      v3 = v17;
      sub_1D1E67D8C();
      sub_1D19DD0B4();
      v0[22] = swift_allocError();
      sub_1D1E6759C();
      v7 = sub_1D1D80D70;
      goto LABEL_3;
    }

    v18 = v0[14];
    v19 = v0[10];
    v20 = v0[8];
    swift_weakDestroy();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1D1D8070C()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  sub_1D1D81B98(v1);

  (*(v3 + 8))(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1D807A4, 0, 0);
}

uint64_t sub_1D1D807A4()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 112);
    v0[16] = *(Strong + 120);

    v3 = swift_weakLoadStrong();
    v0[17] = v3;
    v17 = (v2 + *v2);
    v4 = v2[1];
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_1D1D809F8;
    v6 = v0[8];

    return v17(v6, v3);
  }

  else
  {
    v8 = v0[8];
    v9 = v0[6];
    v10 = v0[7];
    (*(v0[9] + 56))(v8, 1, 1, v0[5]);
    (*(v10 + 8))(v8, v9);
    v11 = swift_weakLoadStrong();
    v0[21] = v11;
    if (v11)
    {
      v12 = v11;
      sub_1D1E67D8C();
      sub_1D19DD0B4();
      v0[22] = swift_allocError();
      sub_1D1E6759C();

      return MEMORY[0x1EEE6DFA0](sub_1D1D80D70, v12, 0);
    }

    else
    {
      v13 = v0[14];
      v14 = v0[10];
      v15 = v0[8];
      swift_weakDestroy();

      v16 = v0[1];

      return v16();
    }
  }
}

uint64_t sub_1D1D809F8()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v8 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_1D1D80E78;
  }

  else
  {
    v5 = *(v2 + 128);
    v6 = *(v2 + 136);

    v4 = sub_1D1D80B1C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1D80B1C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  (*(v2 + 56))(v3, 0, 1, v4);
  (*(v2 + 32))(v1, v3, v4);
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1D80C58, Strong, 0);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[5]);
    v6 = v0[14];
    v7 = v0[10];
    v8 = v0[8];
    swift_weakDestroy();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1D1D80C58()
{
  v1 = *(v0 + 160);
  sub_1D1D818A0(*(v0 + 80));

  return MEMORY[0x1EEE6DFA0](sub_1D1D80CCC, 0, 0);
}

uint64_t sub_1D1D80CCC()
{
  (*(v0[9] + 8))(v0[10], v0[5]);
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[8];
  swift_weakDestroy();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D1D80D70()
{
  v1 = *(v0 + 176);
  sub_1D1D81624(v1);

  return MEMORY[0x1EEE6DFA0](sub_1D1D80DEC, 0, 0);
}

uint64_t sub_1D1D80DEC()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[8];
  swift_weakDestroy();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D1D80E78()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);

  Strong = swift_weakLoadStrong();
  *(v0 + 184) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1D80F68, Strong, 0);
  }

  else
  {

    v4 = *(v0 + 112);
    v5 = *(v0 + 80);
    v6 = *(v0 + 64);
    swift_weakDestroy();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1D1D80F68()
{
  v1 = *(v0 + 184);
  sub_1D1D81624(*(v0 + 152));

  return MEMORY[0x1EEE6DFA0](sub_1D1D80FDC, 0, 0);
}

uint64_t sub_1D1D80FDC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  swift_weakDestroy();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D1D81070(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_1D1E67E7C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;
  v9[5] = a1;

  sub_1D17C71F0(0, 0, v7, &unk_1D1EADAD0, v9);
}

uint64_t sub_1D1D811A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D1D811C0, 0, 0);
}

uint64_t sub_1D1D811C0()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1D81284, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1D1D81284()
{
  v1 = *(v0 + 56);
  sub_1D1D812F4();

  return MEMORY[0x1EEE6DFA0](sub_1D19DC9F8, 0, 0);
}

uint64_t sub_1D1D812F4()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v3 = sub_1D1E67D7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v28 - v6;
  v8 = sub_1D1E685AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  v16 = v1[16];
  if (v16)
  {
    [v16 cancel];
    v17 = v1[16];
  }

  v1[16] = 0;
  swift_unknownObjectRelease();
  sub_1D1D7F3F4(v15);
  if ((*(v4 + 48))(v15, 1, v3))
  {
    (*(v9 + 8))(v15, v8);
  }

  else
  {
    (*(v4 + 16))(v7, v15, v3);
    (*(v9 + 8))(v15, v8);
    sub_1D1E67D8C();
    sub_1D19DD0B4();
    v18 = swift_allocError();
    sub_1D1E6759C();
    v28[1] = v18;
    sub_1D1E67D5C();
    (*(v4 + 8))(v7, v3);
  }

  (*(v4 + 56))(v13, 1, 1, v3);
  sub_1D1D7F4D0(v13);
  v19 = *v1;
  v20 = (v1 + *(*v1 + 120));
  v21 = *v20;
  if (*v20)
  {
    v22 = v20[1];
    v23 = sub_1D18AFEFC(*v20);
    v21(v23);
    sub_1D17169C0(v21);
    v19 = *v1;
  }

  v24 = (v1 + *(v19 + 120));
  v25 = *v24;
  v26 = v24[1];
  *v24 = 0;
  v24[1] = 0;
  return sub_1D17169C0(v25);
}

uint64_t sub_1D1D81624(void *a1)
{
  v3 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v4 = sub_1D1E67D7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - v7;
  v9 = sub_1D1E685AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v19 - v15;
  sub_1D1D7F3F4(v19 - v15);
  if ((*(v5 + 48))(v16, 1, v4))
  {
    (*(v10 + 8))(v16, v9);
  }

  else
  {
    (*(v5 + 16))(v8, v16, v4);
    (*(v10 + 8))(v16, v9);
    v19[1] = a1;
    v17 = a1;
    sub_1D1E67D5C();
    (*(v5 + 8))(v8, v4);
  }

  (*(v5 + 56))(v14, 1, 1, v4);
  return sub_1D1D7F4D0(v14);
}

uint64_t sub_1D1D818A0(uint64_t a1)
{
  v22 = a1;
  v2 = *(*v1 + 80);
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v20 = &v19 - v4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v5 = sub_1D1E67D7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = sub_1D1E685AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  sub_1D1D7F3F4(&v19 - v16);
  if ((*(v6 + 48))(v17, 1, v5))
  {
    (*(v11 + 8))(v17, v10);
  }

  else
  {
    (*(v6 + 16))(v9, v17, v5);
    (*(v11 + 8))(v17, v10);
    (*(v21 + 16))(v20, v22, v2);
    sub_1D1E67D6C();
    (*(v6 + 8))(v9, v5);
  }

  (*(v6 + 56))(v15, 1, 1, v5);
  return sub_1D1D7F4D0(v15);
}

uint64_t sub_1D1D81B98(uint64_t a1)
{
  v3 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E67D7C();
  v4 = sub_1D1E685AC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return sub_1D1D7F4D0(v7);
}

char *CancellableBlockRunner.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 15);

  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  v4 = *(*v0 + 112);
  v5 = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E67D7C();
  v6 = sub_1D1E685AC();
  (*(*(v6 - 8) + 8))(&v0[v4], v6);
  v7 = &v0[*(*v0 + 120)];
  v8 = v7[1];
  sub_1D17169C0(*v7);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t CancellableBlockRunner.__deallocating_deinit()
{
  CancellableBlockRunner.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D1D81DE4(uint64_t a1)
{
  v1 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E67D7C();
  result = sub_1D1E685AC();
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

uint64_t dispatch thunk of CancellableBlockRunner.run()(uint64_t a1)
{
  v4 = *(*v1 + 208);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4BFC;

  return v8(a1);
}

uint64_t sub_1D1D82048(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1D811A0(a1, v4, v5, v6);
}

uint64_t sub_1D1D82114(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v6 = *(sub_1D1E67D7C() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v8);
  v12 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4BFC;

  return sub_1D1D8004C(a1, v9, v10, v1 + v7, v11, v12);
}

uint64_t sub_1D1D8227C()
{
  result = 9674210;
  switch(*v0)
  {
    case 1:
      return 2845482992;
    case 2:
    case 0x3D:
      return 2526322672;
    case 3:
      v7 = 720896;
      v8 = 2727649264;
      return v8 | v7;
    case 4:
      return 2491850736;
    case 5:
      return 2442239984;
    case 6:
    case 8:
    case 0x20:
    case 0x73:
    case 0x94:
    case 0x96:
      return 2828181488;
    case 7:
    case 9:
      return 2846334960;
    case 0xA:
    case 0x5D:
    case 0x6C:
    case 0x6D:
    case 0x76:
    case 0x89:
    case 0xAA:
    case 0xAB:
    case 0xAC:
      return 2324996080;
    case 0xB:
      return 2341773296;
    case 0xC:
      v4 = 4018247906;
      return (v4 & 0xFFFF0000FFFFFFFFLL | 0x8FB800000000) - 0x10000;
    case 0xD:
    case 0x43:
      return 2257690608;
    case 0xE:
    case 0x56:
      return 2576130032;
    case 0xF:
    case 0x23:
    case 0x92:
    case 0x99:
      v4 = 4019554018;
      return (v4 & 0xFFFF0000FFFFFFFFLL | 0x8FB800000000) - 0x10000;
    case 0x10:
    case 0x2D:
    case 0x2E:
    case 0xA3:
    case 0xA4:
      return 0x8FB8EF9586E2;
    case 0x11:
    case 0x31:
      return 2375327728;
    case 0x12:
    case 0x82:
    case 0x85:
      return 0x8FB8EFA09AE2;
    case 0x13:
    case 0x16:
    case 0x33:
    case 0x51:
    case 0x8D:
      v2 = 2324996080;
      return v2 - 0x10000;
    case 0x14:
    case 0x17:
      return 2291376112;
    case 0x15:
      return 0x8FB8EFA098E2;
    case 0x18:
    case 0x67:
    case 0x68:
      return 10590946;
    case 0x19:
    case 0x4F:
    case 0x55:
      return 2643697648;
    case 0x1A:
    case 0x2C:
    case 0xA2:
    case 0xA6:
      v3 = -1584619536;
      goto LABEL_88;
    case 0x1B:
      v2 = 2224332784;
      return v2 - 0x10000;
    case 0x1C:
    case 0x1F:
    case 0x95:
      return 2862260208;
    case 0x1D:
      return 0x8FB8EF849DE2;
    case 0x1E:
    case 0x93:
      v3 = -1400070160;
      goto LABEL_88;
    case 0x21:
    case 0x22:
    case 0x37:
    case 0x7F:
    case 0x97:
    case 0x98:
      return 2777980912;
    case 0x24:
    case 0x29:
    case 0x4A:
    case 0x9A:
    case 0x9F:
    case 0xAD:
      return 2811404272;
    case 0x25:
      return 2710740976;
    case 0x26:
    case 0x4D:
    case 0x4E:
    case 0x9C:
      return 2459213808;
    case 0x27:
    case 0x3B:
    case 0x6F:
    case 0x91:
    case 0x9D:
      return 2895028208;
    case 0x28:
    case 0x9E:
      return 2408816624;
    case 0x2A:
    case 0x4C:
    case 0xA0:
      return 2425659376;
    case 0x2B:
    case 0x7D:
    case 0xA1:
      return 2678759408;
    case 0x2F:
    case 0xA5:
      v3 = -2121162768;
      goto LABEL_88;
    case 0x30:
    case 0x3A:
      return 2794627056;
    case 0x32:
      return 3114770416;
    case 0x34:
    case 0x40:
    case 0x72:
      return 2224332784;
    case 0x35:
    case 0x52:
    case 0xA8:
      return 2979241968;
    case 0x36:
      v3 = -1516855312;
      goto LABEL_88;
    case 0x38:
      return 9149666;
    case 0x39:
      return 2290917360;
    case 0x3C:
      return 0x8FB8EFB98FE2;
    case 0x3E:
      return 2341576688;
    case 0x3F:
      return 2661982192;
    case 0x41:
    case 0x5B:
      return 2358550512;
    case 0x42:
    case 0x71:
      return 2928582640;
    case 0x44:
      return 3130236912;
    case 0x45:
      return 2291441648;
    case 0x46:
    case 0x63:
      return 0x8FB8EF999AE2;
    case 0x47:
      return 2291769328;
    case 0x48:
    case 0x49:
      v3 = -1215324176;
      goto LABEL_88;
    case 0x4B:
    case 0x6A:
    case 0x7B:
      return 0x8FB8EFB18FE2;
    case 0x50:
      v6 = 2928582640;
      return v6 - 16711680;
    case 0x53:
      return 2207227888;
    case 0x54:
      v6 = 2291376112;
      return v6 - 16711680;
    case 0x57:
    case 0x5E:
    case 0x5F:
    case 0x60:
    case 0x87:
    case 0xA9:
      return 0x8FB8EF8198E2;
    case 0x58:
      return 9739234;
    case 0x59:
      return 2761007088;
    case 0x5A:
      v6 = 2408816624;
      return v6 - 16711680;
    case 0x5C:
      v5 = 2761007088;
      goto LABEL_80;
    case 0x61:
      return 2543099888;
    case 0x62:
    case 0x81:
      return 8756450;
    case 0x64:
      return 2777784304;
    case 0x65:
      v3 = -1130979344;
      goto LABEL_88;
    case 0x66:
      return 2375262192;
    case 0x69:
      return 2559877104;
    case 0x6B:
    case 0x6E:
    case 0x8E:
      return 2425135088;
    case 0x70:
      return 11767778;
    case 0x74:
      return 2827919344;
    case 0x75:
      return 2828705776;
    case 0x77:
    case 0x8A:
      return 3113459696;
    case 0x78:
    case 0x8B:
      return 2811535344;
    case 0x79:
    case 0x7C:
      return 2324471792;
    case 0x7A:
      return 2727649264;
    case 0x7E:
      return 3029901296;
    case 0x80:
      return 3197280240;
    case 0x83:
      v7 = 655360;
      v8 = 2442239984;
      return v8 | v7;
    case 0x84:
      return 2880086000;
    case 0x86:
      return 2710806512;
    case 0x88:
      v3 = -1718706192;
LABEL_88:
      result = v3 | 0x8FB8EF00000000;
      break;
    case 0x8C:
      result = 3096682480;
      break;
    case 0x8F:
      result = 2945359856;
      break;
    case 0x90:
      result = 2777587696;
      break;
    case 0x9B:
      v5 = 2341576688;
LABEL_80:
      result = v5 | 0x20000;
      break;
    case 0xA7:
      result = 2962923504;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t CodableTemperatureUnit.description.getter(char a1)
{
  if (!a1)
  {
    return 1869903201;
  }

  if (a1 == 1)
  {
    return 0x737569736C6563;
  }

  return 0x65686E6572686166;
}

uint64_t sub_1D1D828D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s13HomeDataModel22CodableTemperatureUnitO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_1D1D82904(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x737569736C6563;
  if (v2 != 1)
  {
    v5 = 0x65686E6572686166;
    v4 = 0xEA00000000007469;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1869903201;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D1D82960(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x737569736C6563;
  if (v2 != 1)
  {
    v4 = 0x65686E6572686166;
    v3 = 0xEA00000000007469;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1869903201;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x737569736C6563;
  if (*a2 != 1)
  {
    v8 = 0x65686E6572686166;
    v7 = 0xEA00000000007469;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1869903201;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D1E6904C();
  }

  return v11 & 1;
}

uint64_t sub_1D1D82A64()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D1D82B04()
{
  *v0;
  *v0;
  sub_1D1E678EC();
}

uint64_t sub_1D1D82B90()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D1D82CDC()
{
  v1 = 0x737569736C6563;
  if (*v0 != 1)
  {
    v1 = 0x65686E6572686166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1869903201;
  }
}

uint64_t _s13HomeDataModel22CodableTemperatureUnitO4unitACSo06NSUnitE0C_tcfC_0(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 celsius];
  sub_1D18311BC();
  v5 = sub_1D1E684FC();

  if (v5)
  {

    return 1;
  }

  else
  {
    v7 = [v2 fahrenheit];
    v8 = sub_1D1E684FC();

    if (v8)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t _s13HomeDataModel22CodableTemperatureUnitO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1D1E68C2C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D1D82E58()
{
  result = qword_1EC64EE68;
  if (!qword_1EC64EE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64EE68);
  }

  return result;
}

unint64_t sub_1D1D82EBC()
{
  result = qword_1EC64EE70;
  if (!qword_1EC64EE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64EE70);
  }

  return result;
}

void sub_1D1D82F14()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v1 = sub_1D1E677EC();
  [v0 setLocalizedDateFormatFromTemplate_];

  qword_1EC6BE260 = v0;
}

id sub_1D1D82F8C()
{
  result = sub_1D1D82FAC();
  qword_1EC6BE268 = result;
  return result;
}

id sub_1D1D82FAC()
{
  v0 = sub_1D1E66ADC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1E66C5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v11 = sub_1D1E677EC();
  [v10 setLocalizedDateFormatFromTemplate_];

  sub_1D1E66C1C();
  v12 = sub_1D1E66C0C();
  (*(v6 + 8))(v9, v5);
  [v10 setTimeZone_];

  sub_1D1E66ABC();
  v13 = sub_1D1E66AAC();
  (*(v1 + 8))(v4, v0);
  [v10 setLocale_];

  return v10;
}

id sub_1D1D831B4()
{
  result = sub_1D1D831D4();
  qword_1EC6BE270 = result;
  return result;
}

id sub_1D1D831D4()
{
  v0 = sub_1D1E66ADC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1E66C5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v10 setDateStyle_];
  [v10 setTimeStyle_];
  [v10 setFormattingContext_];
  sub_1D1E66C1C();
  v11 = sub_1D1E66C0C();
  (*(v6 + 8))(v9, v5);
  [v10 setTimeZone_];

  sub_1D1E66ABC();
  v12 = sub_1D1E66AAC();
  (*(v1 + 8))(v4, v0);
  [v10 setLocale_];

  return v10;
}

void sub_1D1D83434(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v6 = sub_1D1E677EC();
  [v5 setLocalizedDateFormatFromTemplate_];

  *a4 = v5;
}

id sub_1D1D834AC()
{
  result = sub_1D1D834CC();
  qword_1EC6BE290 = result;
  return result;
}

id sub_1D1D834CC()
{
  v0 = sub_1D1E66ADC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v5 setMaximumUnitCount_];
  sub_1D1E66ABC();
  sub_1D1E66A9C();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if (v7 && (v8 = sub_1D1E679AC(), , (v8 & 1) != 0))
  {
    v9 = 5;
  }

  else
  {
    v9 = 1;
  }

  [v5 setUnitsStyle_];
  return v5;
}

uint64_t debug_assert(_:_:file:line:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1();
  if ((v10 & 1) == 0)
  {
    v11 = a3();
    v13 = v12;
    v14 = sub_1D1E6833C();
    sub_1D1D8381C();
    v15 = sub_1D1E6856C();
    if (os_log_type_enabled(v15, v14))
    {
      v23 = v11;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315650;
      v18 = sub_1D1E6888C();
      v20 = sub_1D1B1312C(v18, v19, &v24);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2048;
      *(v16 + 14) = a8;
      *(v16 + 22) = 2080;
      v21 = sub_1D1B1312C(v23, v13, &v24);

      *(v16 + 24) = v21;
      _os_log_impl(&dword_1D16EC000, v15, v14, "(%s:%lu) %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v17, -1, -1);
      MEMORY[0x1D3893640](v16, -1, -1);
    }

    else
    {
    }
  }

  return v10 & 1;
}

unint64_t sub_1D1D8381C()
{
  result = qword_1EE079BA8;
  if (!qword_1EE079BA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE079BA8);
  }

  return result;
}

uint64_t DeepLinkDestination.rawValue.getter()
{
  v1 = 0x726F737365636361;
  v2 = 0x72616F6268736164;
  if (*v0 != 2)
  {
    v2 = 1836019570;
  }

  if (*v0)
  {
    v1 = 0x79726F6765746163;
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

HomeDataModel::DeepLinkURLGenerator __swiftcall DeepLinkURLGenerator.init(host:path:)(Swift::String host, Swift::String path)
{
  *v2 = host;
  v2[1] = path;
  result.path = path;
  result.host = host;
  return result;
}

uint64_t DeepLinkURLGenerator.generateDeepLink()@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v38 - v4;
  v43 = sub_1D1E6613C();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v39 = v1[3];
  v40 = v12;
  v13 = sub_1D1E678AC();
  v15 = v14;

  if (v13 == sub_1D1E678AC() && v15 == v16)
  {
    goto LABEL_3;
  }

  v17 = sub_1D1E6904C();

  if ((v17 & 1) == 0)
  {
    v22 = sub_1D1E678AC();
    v24 = v23;

    if (v22 == sub_1D1E678AC() && v24 == v25)
    {
      goto LABEL_3;
    }

    v26 = sub_1D1E6904C();

    if (v26)
    {
      goto LABEL_5;
    }

    v27 = sub_1D1E678AC();
    v29 = v28;

    if (v27 == sub_1D1E678AC() && v29 == v30)
    {
      goto LABEL_3;
    }

    v31 = sub_1D1E6904C();

    if (v31)
    {
      goto LABEL_5;
    }

    v32 = sub_1D1E678AC();
    v34 = v33;

    if (v32 == sub_1D1E678AC() && v34 == v35)
    {
LABEL_3:

      goto LABEL_5;
    }

    v36 = sub_1D1E6904C();

    if ((v36 & 1) == 0)
    {
      sub_1D1D83F30();
      swift_allocError();
      *v37 = 0;
      return swift_willThrow();
    }
  }

LABEL_5:
  sub_1D1E6612C();
  sub_1D1E6611C();

  MEMORY[0x1D388F710](v11, v10);
  v41 = 47;
  v42 = 0xE100000000000000;
  MEMORY[0x1D3890F70](v40, v39);
  MEMORY[0x1D388F730](v41, v42);
  sub_1D1E660BC();
  v18 = sub_1D1E6680C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v5, 1, v18) == 1)
  {
    sub_1D1741A30(v5, &qword_1EC642EA8, &qword_1D1E73C60);
    sub_1D1D83F30();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
    return (*(v6 + 8))(v9, v43);
  }

  else
  {
    (*(v6 + 8))(v9, v43);
    return (*(v19 + 32))(v38, v5, v18);
  }
}

unint64_t sub_1D1D83F30()
{
  result = qword_1EC64EE78;
  if (!qword_1EC64EE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64EE78);
  }

  return result;
}

uint64_t DeepLinkURLGeneratorError.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

HomeDataModel::DeepLinkDestination::SecondaryDestination_optional __swiftcall DeepLinkDestination.SecondaryDestination.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E68C2C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DeepLinkDestination.SecondaryDestination.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x736172656D6163;
  v3 = 0x657469726F766166;
  v4 = 0x73656E656373;
  if (v1 != 3)
  {
    v4 = 0x73676E6974746573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C6F72746E6F63;
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

uint64_t sub_1D1D84174()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D1D84258()
{
  *v0;
  *v0;
  *v0;
  sub_1D1E678EC();
}

uint64_t sub_1D1D84328()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

void sub_1D1D84414(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x736172656D6163;
  v5 = 0xE900000000000073;
  v6 = 0x657469726F766166;
  v7 = 0xE600000000000000;
  v8 = 0x73656E656373;
  if (v2 != 3)
  {
    v8 = 0x73676E6974746573;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C6F72746E6F63;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

HomeDataModel::DeepLinkDestination::AccessoryControlSecondaryDestination_optional __swiftcall DeepLinkDestination.AccessoryControlSecondaryDestination.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E68C2C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t DeepLinkDestination.AccessoryControlSecondaryDestination.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 6449010;
  }

  *v0;
  return result;
}

uint64_t sub_1D1D8456C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 6449010;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0x80000001D1EB8480;
  }

  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 6449010;
  }

  if (*a2)
  {
    v7 = 0x80000001D1EB8480;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();
  }

  return v9 & 1;
}

uint64_t sub_1D1D84610()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D1D84690()
{
  *v0;
  sub_1D1E678EC();
}

uint64_t sub_1D1D846FC()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D1D84778@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D1E68C2C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1D1D847D8(unint64_t *a1@<X8>)
{
  v2 = 0x80000001D1EB8480;
  v3 = 6449010;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

HomeDataModel::DeepLinkDestination_optional __swiftcall DeepLinkDestination.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E68C2C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D1D8488C()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D1D8494C()
{
  *v0;
  *v0;
  *v0;
  sub_1D1E678EC();
}

uint64_t sub_1D1D849F8()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

void sub_1D1D84AC0(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000079;
  v3 = 0x726F737365636361;
  v4 = 0x72616F6268736164;
  v5 = 0xE400000000000000;
  if (*v1 == 2)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v4 = 1836019570;
  }

  if (*v1)
  {
    v3 = 0x79726F6765746163;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v5;
  }

  *a1 = v6;
  a1[1] = v7;
}

HomeDataModel::HomeDeepLinkKeys_optional __swiftcall HomeDeepLinkKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x7475626972747461 && stringValue._object == 0xE900000000000065;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x79726F6765746163 && object == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x694C656369766564 && object == 0xEA00000000007473 || (sub_1D1E6904C() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x686372616573 && object == 0xE600000000000000)
  {

    v7 = 3;
  }

  else
  {
    v8 = sub_1D1E6904C();

    if (v8)
    {
      v7 = 3;
    }

    else
    {
      v7 = 4;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t HomeDeepLinkKeys.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t HomeDeepLinkKeys.stringValue.getter()
{
  v1 = 0x7475626972747461;
  v2 = 0x694C656369766564;
  if (*v0 != 2)
  {
    v2 = 0x686372616573;
  }

  if (*v0)
  {
    v1 = 0x79726F6765746163;
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

uint64_t sub_1D1D84DEC()
{
  v1 = 0x7475626972747461;
  v2 = 0x694C656369766564;
  if (*v0 != 2)
  {
    v2 = 0x686372616573;
  }

  if (*v0)
  {
    v1 = 0x79726F6765746163;
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

uint64_t sub_1D1D84E70(uint64_t a1)
{
  v2 = sub_1D1D868E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D84EAC(uint64_t a1)
{
  v2 = sub_1D1D868E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t URLQueryItem.init<A>(key:value:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1;
  *a1;
  (*(a4 + 16))(a3, a4);
  sub_1D1E6605C();

  v6 = *(*(a3 - 8) + 8);

  return v6(a2, a3);
}

uint64_t URLQueryItem.decodedValue<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D1E6607C();
  if (v7)
  {
    return (*(a2 + 8))(v6, v7, a1, a2);
  }

  v9 = *(*(a1 - 8) + 56);

  return v9(a3, 1, 1, a1);
}

uint64_t Array<A>.encode()(uint64_t a1)
{
  v31 = sub_1D1E66A7C();
  v2 = *(v31 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1D178CD24(0, v6, 0);
    v7 = v32;
    v9 = *(v2 + 16);
    v8 = v2 + 16;
    v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v29 = *(v8 + 56);
    v30 = v9;
    v28 = (v8 - 8);
    do
    {
      v11 = v31;
      v12 = v8;
      v30(v5, v10, v31);
      v13 = sub_1D1E66A1C();
      v15 = v14;
      (*v28)(v5, v11);
      v32 = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D178CD24((v16 > 1), v17 + 1, 1);
        v7 = v32;
      }

      *(v7 + 16) = v17 + 1;
      v18 = v7 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v10 += v29;
      --v6;
      v8 = v12;
    }

    while (v6);
  }

  v32 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17D8EA8(&qword_1EE07B278, &qword_1EC643CB0, &qword_1D1E73640);
  v19 = sub_1D1E6770C();
  v21 = v20;

  v22 = sub_1D19B7FF0(v19, v21);
  v24 = v23;
  v25 = sub_1D1E6689C();
  sub_1D174E7C4(v22, v24);
  return v25;
}

uint64_t sub_1D1D8533C@<X0>(uint64_t *a1@<X8>)
{
  result = _sSa13HomeDataModel10Foundation4UUIDVRszlE5querySayADGSgSS_tcfC_0();
  *a1 = result;
  return result;
}

Swift::String_optional __swiftcall String.encode()()
{
  v2 = v1;
  v3 = v0;

  v4 = v3;
  v5 = v2;
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

uint64_t sub_1D1D853A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

HomeDataModel::UmbrellaCategory_optional __swiftcall UmbrellaCategory.init(query:)(Swift::String query)
{
  v2 = v1;
  result.value = UmbrellaCategory.init(rawValue:)(query).value;
  *v2 = v4;
  return result;
}

unint64_t sub_1D1D85420()
{
  *v0;
  *v0;
  *v0;
  *v0;
  return 0xD000000000000024;
}

uint64_t static URLComponents.create(destination:secondary:queryItems:)(char *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1D1E6612C();
  sub_1D1E6611C();
  MEMORY[0x1D388F710](*&aAccessorcatego[8 * v2], *&aY_0[8 * v2]);
  v4 = 0xE700000000000000;
  v5 = 0x736172656D6163;
  v6 = 0xE600000000000000;
  v7 = 0x73656E656373;
  v8 = 0xE800000000000000;
  v9 = 0x73676E6974746573;
  if (v3 != 4)
  {
    v9 = 0;
    v8 = 0xE000000000000000;
  }

  if (v3 != 3)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0xE700000000000000;
  v11 = 0x6C6F72746E6F63;
  if (v3 != 1)
  {
    v11 = 0x657469726F766166;
    v10 = 0xE900000000000073;
  }

  if (v3)
  {
    v5 = v11;
    v4 = v10;
  }

  if (v3 <= 2)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  if (v3 <= 2)
  {
    v13 = v4;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x1D3890F70](v12, v13);

  MEMORY[0x1D388F730](47, 0xE100000000000000);

  return sub_1D1E6609C();
}

HomeDataModel::DeepLinkDestination::SecondaryDestination_optional URLComponents.secondary.getter@<W0>(_BYTE *a1@<X8>)
{
  v2 = sub_1D1E660EC();
  v15[0] = 47;
  v15[1] = 0xE100000000000000;
  v14[2] = v15;
  v4 = sub_1D1D85CD8(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D1A77F40, v14, v2, v3, v15);
  if (v4[2])
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = v4[6];
    v8 = v4[7];

    v9 = MEMORY[0x1D3890F10](v5, v6, v7, v8);
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    return DeepLinkDestination.SecondaryDestination.init(rawValue:)(v12);
  }

  else
  {

    *a1 = 5;
  }

  return result;
}

uint64_t Collection<>.subscript.getter@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EE80, &qword_1D1EADC60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v18[-v12];
  v18[16] = *a1;
  v14 = *(a3 + 8);
  sub_1D1E67A7C();
  v15 = sub_1D1E6608C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_1D1741A30(v13, &qword_1EC64EE80, &qword_1D1EADC60);
    return (*(*(a2 - 8) + 56))(a5, 1, 1, a2);
  }

  else
  {
    URLQueryItem.decodedValue<A>()(a2, a4, a5);
    return (*(v16 + 8))(v13, v15);
  }
}

uint64_t sub_1D1D85914(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_1D1E6606C();
  v5 = 0xE900000000000065;
  v6 = 0x7475626972747461;
  v7 = 0xEA00000000007473;
  v8 = 0x694C656369766564;
  if (a2 != 2)
  {
    v8 = 0x686372616573;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v6 = 0x79726F6765746163;
    v5 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D1E6904C();
  }

  return v11 & 1;
}

uint64_t URL.deepLinkComponents()@<X0>(char *a1@<X8>)
{
  v2 = sub_1D1E6613C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EE88, &qword_1D1EADC68);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  sub_1D1E660AC();
  sub_1D1D86494(v13, v11);
  if ((*(v3 + 48))(v11, 1, v2) != 1)
  {
    v15 = *(v3 + 32);
    v15(v6, v11, v2);
    v16 = sub_1D1E6610C();
    if (v17)
    {
      if (v16 == 0xD000000000000016 && v17 == 0x80000001D1EC9150)
      {

        sub_1D1741A30(v13, &qword_1EC64EE88, &qword_1D1EADC68);
LABEL_13:
        v15(a1, v6, v2);
        v14 = 0;
        return (*(v3 + 56))(a1, v14, 1, v2);
      }

      v19 = sub_1D1E6904C();

      sub_1D1741A30(v13, &qword_1EC64EE88, &qword_1D1EADC68);
      if (v19)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1D1741A30(v13, &qword_1EC64EE88, &qword_1D1EADC68);
    }

    (*(v3 + 8))(v6, v2);
    v14 = 1;
    return (*(v3 + 56))(a1, v14, 1, v2);
  }

  sub_1D1741A30(v13, &qword_1EC64EE88, &qword_1D1EADC68);
  sub_1D1741A30(v11, &qword_1EC64EE88, &qword_1D1EADC68);
  v14 = 1;
  return (*(v3 + 56))(a1, v14, 1, v2);
}

unint64_t sub_1D1D85CD8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1D1E67A0C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1D177FE74(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1D177FE74((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1D1E679FC();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1D1E6790C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1D1E6790C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1D1E67A0C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1D177FE74(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1D1E67A0C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1D177FE74(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1D177FE74((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1D1E6790C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSa13HomeDataModel10Foundation4UUIDVRszlE5querySayADGSgSS_tcfC_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v36 = &v31 - v2;
  v3 = sub_1D1E66A7C();
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D1E6786C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1D1E6684C();
  v10 = v9;

  v11 = 0;
  if (v10 >> 60 == 15)
  {
    return v11;
  }

  sub_1D1E6785C();
  v12 = sub_1D1E6782C();
  if (!v13)
  {
    sub_1D1716AA4(v8, v10);
    return 0;
  }

  v31 = v8;
  v32 = v10;
  v38[0] = 44;
  v38[1] = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v12);
  *(&v31 - 2) = v38;
  result = sub_1D1D85CD8(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D1A78B08, (&v31 - 4), v14, v15, &v31);
  v17 = result;
  v35 = *(result + 16);
  if (!v35)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_16:
    sub_1D1716AA4(v31, v32);

    return v11;
  }

  v18 = 0;
  v19 = (v33 + 48);
  v34 = (v33 + 32);
  v20 = (result + 56);
  v11 = MEMORY[0x1E69E7CC0];
  while (v18 < *(v17 + 16))
  {
    v22 = *(v20 - 1);
    v21 = *v20;
    v23 = v3;
    v24 = *(v20 - 3);
    v25 = *(v20 - 2);

    v26 = v25;
    v3 = v23;
    MEMORY[0x1D3890F10](v24, v26, v22, v21);
    v27 = v36;
    sub_1D1E66A0C();

    if ((*v19)(v27, 1, v3) == 1)
    {
      result = sub_1D1741A30(v27, &qword_1EC642590, qword_1D1E71260);
    }

    else
    {
      v28 = *v34;
      (*v34)(v37, v27, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1D177D0AC(0, v11[2] + 1, 1, v11);
      }

      v30 = v11[2];
      v29 = v11[3];
      if (v30 >= v29 >> 1)
      {
        v11 = sub_1D177D0AC(v29 > 1, v30 + 1, 1, v11);
      }

      v11[2] = v30 + 1;
      result = (v28)(v11 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v30, v37, v3);
    }

    ++v18;
    v20 += 4;
    if (v35 == v18)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D86494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EE88, &qword_1D1EADC68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1D86508()
{
  result = qword_1EC64EE90;
  if (!qword_1EC64EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64EE90);
  }

  return result;
}

unint64_t sub_1D1D86560()
{
  result = qword_1EC64EE98;
  if (!qword_1EC64EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64EE98);
  }

  return result;
}

unint64_t sub_1D1D865FC()
{
  result = qword_1EC64EEB0;
  if (!qword_1EC64EEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64EEB0);
  }

  return result;
}

unint64_t sub_1D1D86698()
{
  result = qword_1EC64EEC8;
  if (!qword_1EC64EEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64EEC8);
  }

  return result;
}

unint64_t sub_1D1D86734()
{
  result = qword_1EC64EEE0;
  if (!qword_1EC64EEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64EEE0);
  }

  return result;
}

unint64_t sub_1D1D8678C()
{
  result = qword_1EC64EEE8;
  if (!qword_1EC64EEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64EEE8);
  }

  return result;
}

unint64_t sub_1D1D867E4()
{
  result = qword_1EC64EEF0;
  if (!qword_1EC64EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64EEF0);
  }

  return result;
}

unint64_t sub_1D1D868E0()
{
  result = qword_1EC64EEF8;
  if (!qword_1EC64EEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64EEF8);
  }

  return result;
}

uint64_t FeatureFlagsKey.isEnabled.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = *(v5 + 16);
  v8(&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  if ((swift_dynamicCast() & 1) != 0 && LOBYTE(v13[0]) == 1)
  {
    v9 = _UIEnhancedMainMenuEnabled();
  }

  else
  {
    v13[3] = a1;
    v13[4] = a2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
    v8(boxed_opaque_existential_1, v2, a1);
    v9 = sub_1D1E66D5C();
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return v9 & 1;
}

const char *HomeAppFeatures.feature.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = "redesign_media";
    v7 = "QFAV2";
    if (v1 != 2)
    {
      v7 = "network_diagnostics";
    }

    if (*v0)
    {
      v6 = "wallet_key_uwb";
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = "red";
    v3 = "camera_lensing";
    if (v1 != 7)
    {
      v3 = "native_matter_light_automations";
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = "adaptive_navigation";
    if (v1 != 4)
    {
      v4 = "controlsapi";
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

const char *UIKitFeatures.feature.getter()
{
  if (*v0)
  {
    return "enhanced_main_menu";
  }

  else
  {
    return "uip_floating_tab_bar";
  }
}

uint64_t UIKitFeatures.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

const char *sub_1D1D86CB0()
{
  if (*v0)
  {
    return "enhanced_main_menu";
  }

  else
  {
    return "uip_floating_tab_bar";
  }
}

const char *HomeKitFeatures.feature.getter()
{
  v1 = *v0;
  v2 = "d0d2700c4dee4686a15d55";
  v3 = "HomeActivityState";
  v4 = "Tamis";
  if (v1 != 4)
  {
    v4 = "DemoModeV2";
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = "RestrictedGuest";
  if (v1 != 1)
  {
    v5 = "ResidentSelection";
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

const char *sub_1D1D86D98()
{
  v1 = *v0;
  v2 = "d0d2700c4dee4686a15d55";
  v3 = "HomeActivityState";
  v4 = "Tamis";
  if (v1 != 4)
  {
    v4 = "DemoModeV2";
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = "RestrictedGuest";
  if (v1 != 1)
  {
    v5 = "ResidentSelection";
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

uint64_t ControlCenterFeatures.hashValue.getter()
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](0);
  return sub_1D1E6926C();
}

unint64_t sub_1D1D86EC8()
{
  result = qword_1EC64EF00;
  if (!qword_1EC64EF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64EF00);
  }

  return result;
}

unint64_t sub_1D1D86F20()
{
  result = qword_1EC64EF08;
  if (!qword_1EC64EF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64EF08);
  }

  return result;
}

unint64_t sub_1D1D86F78()
{
  result = qword_1EC64EF10;
  if (!qword_1EC64EF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64EF10);
  }

  return result;
}

unint64_t sub_1D1D86FD0()
{
  result = qword_1EC64EF18;
  if (!qword_1EC64EF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64EF18);
  }

  return result;
}

uint64_t BinaryFloatingPoint.localizedPercentageValue(range:includesPercentSymbol:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  LODWORD(v93) = a2;
  v102 = a5;
  v8 = sub_1D1E68FFC();
  v86 = *(v8 - 8);
  v87 = v8;
  v9 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v88 = *(v11 - 8);
  v89 = v11;
  v12 = *(v88 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v82 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v83 = &v74 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v74 - v17;
  v18 = *(a4 + 16);
  v19 = *(*(v18 + 16) + 8);
  v80 = *(v19 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v78 = &v74 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CB38, &qword_1D1EA1858);
  v100 = *(v22 - 8);
  v101 = v22;
  v23 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v99 = &v74 - v24;
  v25 = sub_1D1E6673C();
  v95 = *(v25 - 8);
  v96 = v25;
  v26 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v94 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D1E66ADC();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v92 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6485E8, &qword_1D1EA1860);
  v76 = *(v77 - 8);
  v31 = *(v76 + 64);
  v32 = MEMORY[0x1EEE9AC00](v77);
  v74 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v75 = &v74 - v35;
  v90 = *(a3 - 8);
  v36 = *(v90 + 64);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v74 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v74 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = &v74 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v74 - v46;
  v48 = *(*(v18 + 24) + 8);
  v49 = sub_1D1E6774C();
  v50 = a1 + *(v49 + 36);
  v98 = a4;
  BinaryFloatingPoint.clamp(min:max:)(a1, v50, a3);
  v81 = v19;
  v51 = *(v19 + 8);
  v97 = v47;
  sub_1D1E68B2C();
  v52 = a1 + *(v49 + 36);
  sub_1D1E68B2C();
  sub_1D1E676CC();
  v53 = v90;
  v54 = *(v90 + 8);
  v54(v39, a3);
  v54(v42, a3);
  v91 = v45;
  if (v93)
  {
    (*(v53 + 16))(v42, v45, a3);
    sub_1D173FC5C();
    sub_1D1E675BC();
    v103 = v104;
    sub_1D1E66ABC();
    v55 = v74;
    sub_1D1E6665C();
    v56 = v94;
    sub_1D1E6672C();
    v57 = v75;
    v58 = v77;
    MEMORY[0x1D388FCA0](v56, v77);
    (*(v95 + 8))(v56, v96);
    v59 = *(v76 + 8);
    v59(v55, v58);
    v60 = v99;
    sub_1D1E6664C();
    v59(v57, v58);
    sub_1D17D8EA8(&qword_1EC64CB40, &qword_1EC64CB38, &qword_1D1EA1858);
    v61 = v101;
    sub_1D1E675AC();
    (*(v100 + 8))(v60, v61);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    sub_1D1E690AC();
    sub_1D1E6902C();
    sub_1D1E6823C();
    v54(v39, a3);
    v93 = sub_1D173FC5C();
    sub_1D1E675BC();
    v103 = v104;
    sub_1D1E66ABC();
    v62 = v82;
    sub_1D1E6662C();
    v64 = v86;
    v63 = v87;
    v65 = v84;
    (*(v86 + 104))(v84, *MEMORY[0x1E69E7030], v87);
    v66 = v83;
    v67 = v89;
    MEMORY[0x1D388FCB0](v65, 0, 1, v89);
    (*(v64 + 8))(v65, v63);
    v68 = *(v88 + 8);
    v68(v62, v67);
    v69 = v94;
    sub_1D1E6672C();
    v70 = v85;
    MEMORY[0x1D388FCE0](v69, v67);
    (*(v95 + 8))(v69, v96);
    v68(v66, v67);
    v71 = v99;
    sub_1D1E665CC();
    v68(v70, v67);
    sub_1D17D8EA8(&qword_1EC64CB40, &qword_1EC64CB38, &qword_1D1EA1858);
    v72 = v101;
    sub_1D1E675AC();
    (*(v100 + 8))(v71, v72);
  }

  v54(v91, a3);
  return (v54)(v97, a3);
}

uint64_t BinaryFloatingPoint.clamp(min:max:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(*(v8 + 16) + 24) + 8);
  sub_1D1E690CC();
  sub_1D1E690DC();
  return (*(v4 + 8))(v7, a3);
}

uint64_t BinaryFloatingPoint.clamp(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) + 24) + 8);
  v6 = a1 + *(sub_1D1E6774C() + 36);

  return BinaryFloatingPoint.clamp(min:max:)(a1, v6, a2);
}

uint64_t BinaryFloatingPoint.localizedPercentageString(range:includesPercentSymbol:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v85) = a2;
  v7 = sub_1D1E68FFC();
  v77 = *(v7 - 8);
  v78 = v7;
  v8 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v76 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v80 = *(v10 - 8);
  v81 = v10;
  v11 = *(v80 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v74 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v75 = &v66 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v79 = &v66 - v16;
  v17 = *(a4 + 16);
  v18 = *(*(v17 + 16) + 8);
  v72 = *(v18 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v68 = &v66 - v20;
  v90 = sub_1D1E6673C();
  v88 = *(v90 - 8);
  v21 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v86 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D1E66ADC();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v84 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6485E8, &qword_1D1EA1860);
  v69 = *(v71 - 8);
  v26 = *(v69 + 64);
  v27 = MEMORY[0x1EEE9AC00](v71);
  v66 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v67 = &v66 - v30;
  v82 = *(a3 - 8);
  v31 = *(v82 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v66 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v66 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v66 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v66 - v41;
  v43 = *(*(v17 + 24) + 8);
  v44 = sub_1D1E6774C();
  v45 = a1 + *(v44 + 36);
  v89 = a4;
  BinaryFloatingPoint.clamp(min:max:)(a1, v45, a3);
  v73 = v18;
  v46 = *(v18 + 8);
  v87 = v42;
  sub_1D1E68B2C();
  v47 = a1 + *(v44 + 36);
  sub_1D1E68B2C();
  v48 = v40;
  sub_1D1E676CC();
  v49 = v82;
  v50 = *(v82 + 8);
  v50(v34, a3);
  v50(v37, a3);
  v83 = v48;
  if (v85)
  {
    (*(v49 + 16))(v37, v48, a3);
    sub_1D173FC5C();
    sub_1D1E675BC();
    v91 = v92;
    sub_1D1E66ABC();
    v51 = v66;
    sub_1D1E6665C();
    v52 = v86;
    sub_1D1E6672C();
    v53 = v67;
    v54 = v71;
    MEMORY[0x1D388FCA0](v52, v71);
    (*(v88 + 8))(v52, v90);
    v55 = *(v69 + 8);
    v55(v51, v54);
    sub_1D17D8EA8(&qword_1EC6485F0, &qword_1EC6485E8, &qword_1D1EA1860);
    sub_1D1E675AC();
    v55(v53, v54);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    sub_1D1E690AC();
    sub_1D1E6902C();
    sub_1D1E6823C();
    v50(v34, a3);
    v85 = sub_1D173FC5C();
    sub_1D1E675BC();
    v91 = v92;
    sub_1D1E66ABC();
    v56 = v74;
    sub_1D1E6662C();
    v58 = v76;
    v57 = v77;
    v59 = v78;
    (*(v77 + 104))(v76, *MEMORY[0x1E69E7030], v78);
    v60 = v75;
    v61 = v81;
    MEMORY[0x1D388FCB0](v58, 0, 1, v81);
    (*(v57 + 8))(v58, v59);
    v62 = *(v80 + 8);
    v62(v56, v61);
    v63 = v86;
    sub_1D1E6672C();
    v64 = v79;
    MEMORY[0x1D388FCE0](v63, v61);
    (*(v88 + 8))(v63, v90);
    v62(v60, v61);
    sub_1D17D8EA8(&qword_1EC644C80, &qword_1EC644C60, &unk_1D1E77540);
    sub_1D1E675AC();
    v62(v64, v61);
  }

  v50(v83, a3);
  v50(v87, a3);
  return v93;
}

uint64_t sub_1D1D884FC@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for FloatingPointRangeFormatStyle.RangeStyle();
  *(a4 + *(result + 36)) = a2;
  *(a4 + *(result + 40)) = a3;
  return result;
}

uint64_t sub_1D1D885A8@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  a1(v3);
  sub_1D17D8EA8(qword_1EC64F2E0, &qword_1EC644C60, &unk_1D1E77540);
  if (sub_1D1E6775C())
  {
    (*(v7 + 8))(v13, v6);
    return (*(*(a2 - 8) + 16))(v18, v3, a2);
  }

  else
  {
    (*(v7 + 32))(v11, v13, v6);
    v15 = *(a2 + 16);
    v16 = *(a2 + 24);
    return sub_1D1D884FC(v11, *(v3 + *(a2 + 36)), *(v3 + *(a2 + 40)), v18);
  }
}

uint64_t sub_1D1D88788@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  (*(v11 + 16))(&v15 - v9, v3);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  return sub_1D1D884FC(v10, a1, 1, a3);
}

uint64_t _s13HomeDataModel29FloatingPointRangeFormatStyleV10AttributedV2eeoiySbAEyx_G_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D173FC5C();
  if ((sub_1D1E665EC() & 1) == 0)
  {
    goto LABEL_18;
  }

  v4 = type metadata accessor for FloatingPointRangeFormatStyle.RangeStyle();
  v5 = *(v4 + 36);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (!v6)
  {
    v8 = 0xE400000000000000;
    v9 = 1869903201;
    if (!v7)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (v6 != 1)
  {
    v9 = 0x65686E6572686166;
    v8 = 0xEA00000000007469;
    if (!v7)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (v7 == 1)
    {
      v10 = 0xE700000000000000;
      if (v9 != 0x737569736C6563)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v10 = 0xEA00000000007469;
      if (v9 != 0x65686E6572686166)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_14;
  }

  v8 = 0xE700000000000000;
  v9 = 0x737569736C6563;
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_11:
  v10 = 0xE400000000000000;
  if (v9 != 1869903201)
  {
LABEL_16:
    v11 = sub_1D1E6904C();

    if (v11)
    {
      goto LABEL_17;
    }

LABEL_18:
    v12 = 0;
    return v12 & 1;
  }

LABEL_14:
  if (v8 != v10)
  {
    goto LABEL_16;
  }

LABEL_17:
  v12 = *(a1 + *(v4 + 40)) ^ *(a2 + *(v4 + 40)) ^ 1;
  return v12 & 1;
}

uint64_t sub_1D1D88A0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74617265706D6574 && a2 == 0xEF74696E55657275 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D1EC9390 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1D88B30(char a1)
{
  if (!a1)
  {
    return 0x656C797473;
  }

  if (a1 == 1)
  {
    return 0x74617265706D6574;
  }

  return 0xD000000000000016;
}

uint64_t sub_1D1D88B94(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v18[0] = a2;
  v7 = *(a2 + 24);
  type metadata accessor for FloatingPointRangeFormatStyle.RangeStyle.CodingKeys();
  swift_getWitnessTable();
  v8 = sub_1D1E68F7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1E6930C();
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  sub_1D17D8EA8(&qword_1EC64F270, &qword_1EC644C60, &unk_1D1E77540);
  v14 = v18[1];
  sub_1D1E68F1C();
  if (!v14)
  {
    v15 = v18[0];
    v21 = *(v3 + *(v18[0] + 36));
    v20 = 1;
    sub_1D1D8EA58();
    sub_1D1E68F1C();
    v16 = *(v3 + *(v15 + 40));
    v19 = 2;
    sub_1D1E68EDC();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D1D88DCC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  sub_1D17D8EA8(&qword_1EC64F2D8, &qword_1EC644C60, &unk_1D1E77540);
  sub_1D1E676EC();
  if (*(v2 + *(a2 + 36)))
  {
    v4 = *(v2 + *(a2 + 36)) == 1;
  }

  sub_1D1E678EC();

  v5 = *(v2 + *(a2 + 40));
  return sub_1D1E6922C();
}

uint64_t sub_1D1D88ED0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v30 = *(v32 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v26 - v4;
  type metadata accessor for FloatingPointRangeFormatStyle.RangeStyle.CodingKeys();
  swift_getWitnessTable();
  v33 = sub_1D1E68DEC();
  v29 = *(v33 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v26 - v6;
  v8 = type metadata accessor for FloatingPointRangeFormatStyle.RangeStyle();
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v34 = v7;
  v13 = v35;
  sub_1D1E692FC();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = a1;
  v35 = v11;
  v16 = v29;
  v15 = v30;
  v39 = 0;
  sub_1D17D8EA8(&qword_1EC64F280, &qword_1EC644C60, &unk_1D1E77540);
  v17 = v31;
  v18 = v32;
  v19 = v33;
  sub_1D1E68D7C();
  (*(v15 + 32))(v35, v17, v18);
  v37 = 1;
  sub_1D1D8EAAC();
  sub_1D1E68D7C();
  v31 = v8;
  v20 = *(v8 + 36);
  v21 = v35;
  v35[v20] = v38;
  v36 = 2;
  v22 = sub_1D1E68D3C();
  (*(v16 + 8))(v34, v19);
  v23 = v31;
  v21[*(v31 + 10)] = v22 & 1;
  v24 = v27;
  (*(v27 + 16))(v28, v21, v23);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return (*(v24 + 8))(v21, v23);
}

BOOL sub_1D1D892F4(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1D1B2C1D8(*a1, *a2);
}

uint64_t sub_1D1D89308(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1D1B2C210(*v1);
}

uint64_t sub_1D1D89314(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1D1B2C1E8(a1, *v2);
}

uint64_t sub_1D1D89320(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1D1B2C1E8(v7, *v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D89368(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1D1D88B30(*v1);
}

uint64_t sub_1D1D89374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1D1D88A0C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1D1D893A4@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1D1B48FD0();
  *a2 = result;
  return result;
}

uint64_t sub_1D1D893D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D1D89424(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D1D89478@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return sub_1D1D88ED0(a1, a3);
}

uint64_t sub_1D1D894F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return _s13HomeDataModel29FloatingPointRangeFormatStyleV10AttributedV2eeoiySbAEyx_G_AGtFZ_0(a1, a2);
}

uint64_t FloatingPointRangeFormatStyle.init(locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_1D1E66ADC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for FloatingPointRangeFormatStyle.RangeStyle();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  (*(v4 + 16))(v7, a1, v3);
  sub_1D173FC5C();
  sub_1D1E6662C();
  (*(v4 + 8))(a1, v3);
  sub_1D1D884FC(v11, 0, 0, v16);
  return (*(v13 + 32))(v19, v16, v12);
}

uint64_t sub_1D1D8973C(uint64_t a1, double a2)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for FloatingPointRangeFormatStyle.RangeStyle();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v12 = v15 - v11;
  if (*(v2 + *(v9 + 40)) == 1)
  {
    return sub_1D1D89D9C(a1);
  }

  *&v15[1] = a2;
  (*(v10 + 16))(v12, v2);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  sub_1D173FC5C();
  sub_1D17D8EA8(&qword_1EC644C80, &qword_1EC644C60, &unk_1D1E77540);
  sub_1D1E675AC();
  (*(*(v14 - 8) + 8))(v12, v14);
  return v15[2];
}

uint64_t sub_1D1D898DC(uint64_t *a1, uint64_t *a2)
{
  v40 = a1;
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C88, &qword_1D1EAF050);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C90, &qword_1D1E77560);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C98, &qword_1D1E77568);
  v37 = *(v16 - 8);
  v38 = v16;
  v17 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v18;
  v20 = sub_1D1E66ADC();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C70, &unk_1D1E77550);
  v22 = *(v36 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v25 = &v36 - v24;
  v26 = *(v4 + 44);
  v39 = v2;
  v27 = *(v2 + v26);
  if (v27)
  {
    v28 = v7;
    if (v27 == 1)
    {
      v29 = [objc_opt_self() celsius];
    }

    else
    {
      v29 = [objc_opt_self() fahrenheit];
    }

    v30 = v29;
  }

  else
  {
    v28 = v7;
    sub_1D18311BC();
    sub_1D1E66ABC();
    sub_1D1E682EC();
  }

  sub_1D18311BC();
  sub_1D1E65F9C();
  sub_1D1E65FDC();
  sub_1D1E666EC();
  sub_1D1741C08(v39, v28, v40, v41);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v32 = *(v31 - 8);
  (*(v32 + 32))(v11, v28, v31);
  (*(v32 + 56))(v11, 0, 1, v31);
  sub_1D1E66ABC();
  sub_1D1E65FEC();
  sub_1D17D8EA8(&qword_1EC64F2B8, &qword_1EC644C98, &qword_1D1E77568);
  v33 = v36;
  v34 = v38;
  sub_1D1E6600C();
  (*(v37 + 8))(v19, v34);
  (*(v22 + 8))(v25, v33);
  return v42;
}

uint64_t sub_1D1D89D9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = type metadata accessor for FloatingPointRangeFormatStyle.RangeStyle();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C88, &qword_1D1EAF050);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38 = &v35 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C90, &qword_1D1E77560);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C98, &qword_1D1E77568);
  v36 = *(v15 - 8);
  v37 = v15;
  v16 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - v17;
  v19 = sub_1D1E66ADC();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C70, &unk_1D1E77550);
  v21 = *(v35 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v24 = &v35 - v23;
  v40 = v4;
  v25 = *(v1 + *(v4 + 36));
  if (*(v1 + *(v4 + 36)))
  {
    v26 = v1;
    if (v25 == 1)
    {
      v27 = [objc_opt_self() celsius];
    }

    else
    {
      v27 = [objc_opt_self() fahrenheit];
    }

    v28 = v27;
  }

  else
  {
    v26 = v1;
    sub_1D18311BC();
    sub_1D1E66ABC();
    sub_1D1E682EC();
  }

  sub_1D18311BC();
  sub_1D1E65F9C();
  sub_1D1E65FDC();
  sub_1D1E666EC();
  (*(v39 + 16))(v7, v26, v40);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v30 = *(v29 - 8);
  v31 = v38;
  (*(v30 + 32))(v38, v7, v29);
  (*(v30 + 56))(v31, 0, 1, v29);
  sub_1D1E66ABC();
  sub_1D1E65FEC();
  sub_1D17D8EA8(&qword_1EC64F2B8, &qword_1EC644C98, &qword_1D1E77568);
  v32 = v35;
  v33 = v37;
  sub_1D1E6600C();
  (*(v36 + 8))(v18, v33);
  (*(v21 + 8))(v24, v32);
  return v41;
}

uint64_t sub_1D1D8A2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CB38, &qword_1D1EA1858);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v22 - v10;
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = type metadata accessor for FloatingPointRangeFormatStyle.RangeStyle();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v19 = v22 - v18;
  if (*(v3 + *(v16 + 40)) == 1)
  {

    return sub_1D1D8A518(a1, a2);
  }

  else
  {
    *&v22[1] = a3;
    (*(v17 + 16))(v19, v3);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
    sub_1D1E665CC();
    (*(*(v21 - 8) + 8))(v19, v21);
    sub_1D173FC5C();
    sub_1D17D8EA8(&qword_1EC64CB40, &qword_1EC64CB38, &qword_1D1EA1858);
    sub_1D1E675AC();
    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_1D1D8A518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v53 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F2C8, qword_1D1EAF0B0);
  v52 = *(v5 - 8);
  v6 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v43 - v7;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = type metadata accessor for FloatingPointRangeFormatStyle.RangeStyle();
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v43 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C88, &qword_1D1EAF050);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C90, &qword_1D1E77560);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C98, &qword_1D1E77568);
  v45 = *(v21 - 8);
  v46 = v21;
  v22 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v43 - v23;
  v25 = sub_1D1E66ADC();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C70, &unk_1D1E77550);
  v27 = *(v44 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v30 = &v43 - v29;
  v48 = v10;
  v31 = *(v10 + 36);
  v50 = v3;
  v32 = *(v3 + v31);
  v54 = v5;
  if (v32)
  {
    if (v32 == 1)
    {
      v33 = [objc_opt_self() celsius];
    }

    else
    {
      v33 = [objc_opt_self() fahrenheit];
    }

    v34 = v33;
  }

  else
  {
    sub_1D18311BC();
    sub_1D1E66ABC();
    sub_1D1E682EC();
  }

  sub_1D18311BC();
  sub_1D1E65F9C();
  sub_1D1E65FDC();
  sub_1D1E666EC();
  v35 = v49;
  (*(v47 + 16))(v49, v50, v48);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v37 = *(v36 - 8);
  (*(v37 + 32))(v16, v35, v36);
  (*(v37 + 56))(v16, 0, 1, v36);
  sub_1D1E66ABC();
  sub_1D1E65FEC();
  v38 = v51;
  v39 = v46;
  sub_1D1E65FBC();
  (*(v45 + 8))(v24, v39);
  sub_1D17D8EA8(&qword_1EC64F2D0, &qword_1EC64F2C8, qword_1D1EAF0B0);
  v40 = v54;
  v41 = v44;
  sub_1D1E6600C();
  (*(v52 + 8))(v38, v40);
  return (*(v27 + 8))(v30, v41);
}

uint64_t sub_1D1D8AAD4(uint64_t *a1, uint64_t *a2, double a3, double a4)
{
  v9 = sub_1D1E66ADC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1D1E677DC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = sub_1D1E677BC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v24 - v18;
  if (a3 == a4)
  {
    if (*(v4 + *(v17 + 40)) == 1)
    {
      return sub_1D1D898DC(a1, a2);
    }

    else
    {
      v25 = a3;
      sub_1D1741C08(v4, v19, a1, a2);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
      sub_1D173FC5C();
      sub_1D17D8EA8(&qword_1EC644C80, &qword_1EC644C60, &unk_1D1E77540);
      sub_1D1E675AC();
      (*(*(v21 - 8) + 8))(v19, v21);
      return v26;
    }
  }

  else
  {
    if (*(v4 + *(v17 + 40)) == 1)
    {
      sub_1D1D898DC(a1, a2);
      sub_1D1D898DC(a1, a2);
    }

    else
    {
      v25 = a3;
      sub_1D1741C08(v4, v19, a1, a2);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
      sub_1D173FC5C();
      v24[1] = sub_1D17D8EA8(&qword_1EC644C80, &qword_1EC644C60, &unk_1D1E77540);
      sub_1D1E675AC();
      (*(*(v22 - 8) + 8))(v19, v22);
      v24[0] = v26;
      v25 = a4;
      sub_1D1741C08(v4, v19, a1, a2);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
      sub_1D1E675AC();
      (*(*(v23 - 8) + 8))(v19, v23);
    }

    sub_1D1E677AC();
    sub_1D1E6779C();
    sub_1D1E6778C();

    sub_1D1E6779C();
    sub_1D1E6778C();

    sub_1D1E6779C();
    sub_1D1E677CC();
    sub_1D1E66ACC();
    return sub_1D1E6787C();
  }
}

uint64_t sub_1D1D8AF68(uint64_t *a1, uint64_t *a2, double a3)
{
  v7 = sub_1D1E66ADC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1D1E677DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1D1E677BC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v20 - v16;
  if (*(v3 + *(v15 + 40)) == 1)
  {
    return sub_1D1D898DC(a1, a2);
  }

  *&v20[3] = a3;
  sub_1D1741C08(v3, v17, a1, a2);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  sub_1D173FC5C();
  sub_1D17D8EA8(&qword_1EC644C80, &qword_1EC644C60, &unk_1D1E77540);
  sub_1D1E675AC();
  (*(*(v19 - 8) + 8))(v17, v19);
  return v20[4];
}

uint64_t FloatingPointRangeFormatStyle.format(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66ADC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1D1E677DC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1D1E677BC();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = *(a2 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EF20, &qword_1D1EAE5C8);
  if (swift_dynamicCast() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644CB8, &qword_1D1EAE5D0), swift_dynamicCast()))
  {
    v17 = v20;
    v16 = v21;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EF28, &qword_1D1EAE5D8);
    if (swift_dynamicCast() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EF30, &qword_1D1EAE5E0), swift_dynamicCast()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EF38, &qword_1D1EAE5E8), swift_dynamicCast()))
    {
      v16 = v20;
    }

    else
    {
      v16 = NAN;
    }

    v17 = v16;
  }

  (*(v12 + 8))(v15, v11);
  result = sub_1D1D8973C(a2, v17);
  if (v17 != v16)
  {
    sub_1D1D8973C(a2, v16);
    sub_1D1E677AC();
    sub_1D1E6779C();
    sub_1D1E6778C();

    sub_1D1E6779C();
    sub_1D1E6778C();

    sub_1D1E6779C();
    sub_1D1E677CC();
    sub_1D1E66ACC();
    return sub_1D1E6787C();
  }

  return result;
}

uint64_t FloatingPointRangeFormatStyle.attributed.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = type metadata accessor for FloatingPointRangeFormatStyle();
  return (*(*(v10 - 8) + 32))(a2, v6, v10);
}

uint64_t sub_1D1D8B894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = sub_1D1E6659C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1D1E6636C();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v33 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v32 = &v31 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v19 = *(a2 + 16);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EF20, &qword_1D1EAE5C8);
  if (swift_dynamicCast() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644CB8, &qword_1D1EAE5D0), swift_dynamicCast()))
  {
    v25 = *v36;
    v24 = *&v36[1];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EF28, &qword_1D1EAE5D8);
    if (swift_dynamicCast() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EF30, &qword_1D1EAE5E0), swift_dynamicCast()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EF38, &qword_1D1EAE5E8), swift_dynamicCast()))
    {
      v24 = *v36;
    }

    else
    {
      v24 = NAN;
    }

    v25 = v24;
  }

  (*(v20 + 8))(v23, v19);
  if (v25 == v24)
  {
    return sub_1D1D8A2A0(a2, v35, v25);
  }

  sub_1D1D8A2A0(a2, v18, v25);
  v27 = v32;
  sub_1D1D8A2A0(a2, v32, v24);
  sub_1D1E6657C();
  sub_1D1E6635C();
  swift_getKeyPath();
  swift_getKeyPath();
  v37 = 0;
  sub_1D1D8EBA8();
  v28 = sub_1D1E6632C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F2C0, &unk_1D1EAF0A0);
  sub_1D1D8E344();
  sub_1D1E666CC();
  v28(v36, 0);

  v29 = v33;
  sub_1D1E6633C();
  sub_1D1E6633C();
  v30 = *(v34 + 8);
  v30(v29, v7);
  v30(v13, v7);
  v30(v27, v7);
  return (v30)(v18, v7);
}

uint64_t sub_1D1D8BD58()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  return MEMORY[0x1D388FC70](v1, v2);
}

uint64_t FloatingPointRangeFormatStyle.temperature(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = type metadata accessor for FloatingPointRangeFormatStyle.RangeStyle();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = _s13HomeDataModel22CodableTemperatureUnitO4unitACSo06NSUnitE0C_tcfC_0(a1);
  sub_1D1D88788(v12, v7, v11);
  return (*(v8 + 32))(a3, v11, v7);
}

uint64_t FloatingPointRangeFormatStyle.rounded(rule:increment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a4 + 16);
  v10 = *(a4 + 24);
  v11 = type metadata accessor for FloatingPointRangeFormatStyle.RangeStyle();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v17[-v14];
  v18 = a1;
  v19 = a2;
  v20 = a3 & 1;
  sub_1D1D885A8(sub_1D1D8DC40, v11, &v17[-v14]);
  return (*(v12 + 32))(a5, v15, v11);
}

uint64_t FloatingPointRangeFormatStyle.scale(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for FloatingPointRangeFormatStyle.RangeStyle();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13[-v10];
  v14 = a3;
  sub_1D1D885A8(sub_1D1D8DCAC, v7, &v13[-v10]);
  return (*(v8 + 32))(a2, v11, v7);
}

uint64_t sub_1D1D8C11C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = type metadata accessor for FloatingPointRangeFormatStyle.RangeStyle();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v15[-v12];
  v16 = a1;
  sub_1D1D885A8(a3, v9, &v15[-v12]);
  return (*(v10 + 32))(a4, v13, v9);
}

uint64_t sub_1D1D8C214(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C7974735FLL && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D1E6904C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D1D8C29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1D1D8C214(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1D1D8C2D0@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1D1743E90();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D1D8C300(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D1D8C354(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FloatingPointRangeFormatStyle.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v5 = type metadata accessor for FloatingPointRangeFormatStyle.RangeStyle();

  return sub_1D1D88DCC(a1, v5);
}

uint64_t FloatingPointRangeFormatStyle.hashValue.getter(uint64_t a1)
{
  sub_1D1E6920C();
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = type metadata accessor for FloatingPointRangeFormatStyle.RangeStyle();
  sub_1D1D88DCC(v6, v4);
  return sub_1D1E6926C();
}

uint64_t FloatingPointRangeFormatStyle.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for FloatingPointRangeFormatStyle.RangeStyle();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v22 - v5;
  type metadata accessor for FloatingPointRangeFormatStyle.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1D1E68DEC();
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for FloatingPointRangeFormatStyle();
  v23 = *(v10 - 8);
  v11 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v30;
  sub_1D1E692FC();
  if (!v15)
  {
    v22 = v13;
    v30 = v10;
    v16 = v25;
    v18 = v27;
    v17 = v28;
    swift_getWitnessTable();
    v19 = v26;
    sub_1D1E68D7C();
    (*(v16 + 8))(v9, v19);
    v20 = v22;
    (*(v18 + 32))(v22, v29, v17);
    (*(v23 + 32))(v24, v20, v30);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1D8C7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = FloatingPointRangeFormatStyle.format(_:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1D1D8C7DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return FloatingPointRangeFormatStyle.init(from:)(a1, a3);
}

uint64_t FloatingPointRangeFormatStyle.Attributed.format(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = type metadata accessor for FloatingPointRangeFormatStyle();

  return sub_1D1D8B894(a1, v7, a3);
}

uint64_t sub_1D1D8C890(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D1E6904C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D1D8C918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1D1D8C890(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1D1D8C94C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D1D8C9A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D1D8CA5C(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, void (*a5)(void, uint64_t, uint64_t), uint64_t a6)
{
  v16 = a5;
  v17 = a6;
  v7 = *(a2 + 24);
  v15 = *(a2 + 16);
  a3(255, v15, v7);
  swift_getWitnessTable();
  v8 = sub_1D1E68F7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1E6930C();
  v16(0, v15, v7);
  swift_getWitnessTable();
  sub_1D1E68F1C();
  return (*(v9 + 8))(v12, v8);
}

uint64_t FloatingPointRangeFormatStyle.Attributed.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v5 = type metadata accessor for FloatingPointRangeFormatStyle();
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v8 = type metadata accessor for FloatingPointRangeFormatStyle.RangeStyle();

  return sub_1D1D88DCC(a1, v8);
}

uint64_t sub_1D1D8CC60(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_1D1E6920C();
  a2(v5, a1);
  return sub_1D1E6926C();
}

uint64_t FloatingPointRangeFormatStyle.Attributed.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for FloatingPointRangeFormatStyle();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v22 - v5;
  type metadata accessor for FloatingPointRangeFormatStyle.Attributed.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1D1E68DEC();
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for FloatingPointRangeFormatStyle.Attributed();
  v23 = *(v10 - 8);
  v11 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v30;
  sub_1D1E692FC();
  if (!v15)
  {
    v22 = v13;
    v30 = v10;
    v16 = v25;
    v18 = v27;
    v17 = v28;
    swift_getWitnessTable();
    v19 = v26;
    sub_1D1E68D7C();
    (*(v16 + 8))(v9, v19);
    v20 = v22;
    (*(v18 + 32))(v22, v29, v17);
    (*(v23 + 32))(v24, v20, v30);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1D8CFBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return FloatingPointRangeFormatStyle.Attributed.init(from:)(a1, a3);
}

uint64_t sub_1D1D8D014(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  sub_1D1E6920C();
  a4(v7, a2);
  return sub_1D1E6926C();
}

uint64_t static FormatStyle<>.range.getter@<X0>(uint64_t a1@<X8>)
{
  return sub_1D1D8D1B4(&qword_1EC64EF40, &qword_1D1EAE5F0, a1);
}

{
  return sub_1D1D8D1B4(&qword_1EC64EF48, &qword_1D1EAE5F8, a1);
}

{
  return sub_1D1D8D1B4(&qword_1EC64EF50, &qword_1D1EAE600, a1);
}

{
  return sub_1D1D8D1B4(&qword_1EC64EF58, &qword_1D1EAE608, a1);
}

{
  return sub_1D1D8D1B4(&qword_1EC64EF60, &qword_1D1EAE610, a1);
}

uint64_t sub_1D1D8D1B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D1E66ADC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  sub_1D1E66ABC();
  (*(v7 + 16))(v11, v13, v6);
  sub_1D173FC5C();
  sub_1D1E6662C();
  (*(v7 + 8))(v13, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  *(a3 + *(result + 36)) = 0;
  *(a3 + *(result + 40)) = 0;
  return result;
}

uint64_t sub_1D1D8D34C()
{
  sub_1D1D8EBA8();

  return sub_1D1E661BC();
}

uint64_t sub_1D1D8D398()
{
  sub_1D1D8EBA8();

  return sub_1D1E661BC();
}

uint64_t sub_1D1D8D504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x687361646E65 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D1E6904C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D1D8D588(uint64_t a1)
{
  v2 = sub_1D1D8DDC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D8D5C4(uint64_t a1)
{
  v2 = sub_1D1D8DDC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D8D600(uint64_t a1)
{
  v2 = sub_1D1D8DE14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D8D63C(uint64_t a1)
{
  v2 = sub_1D1D8DE14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AttributedString.RangeSeparator.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EF68, &qword_1D1EAE618);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EF70, &qword_1D1EAE620);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D8DDC0();
  sub_1D1E6930C();
  sub_1D1D8DE14();
  sub_1D1E68DFC();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t AttributedString.RangeSeparator.hashValue.getter()
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](0);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D8D908(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EF68, &qword_1D1EAE618);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EF70, &qword_1D1EAE620);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D8DDC0();
  sub_1D1E6930C();
  sub_1D1D8DE14();
  sub_1D1E68DFC();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D1D8DAE0()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  return MEMORY[0x1D388FCC0](v1, v2);
}

uint64_t sub_1D1D8DB38()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  return MEMORY[0x1D388FCE0](v1, v2);
}

uint64_t sub_1D1D8DB90()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  return MEMORY[0x1D388FC30](v1, v2);
}

uint64_t sub_1D1D8DBE8()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  return MEMORY[0x1D388FC10](v1, v2);
}

uint64_t sub_1D1D8DC40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  return MEMORY[0x1D388FCB0](v1, v2, v3, v4);
}

uint64_t sub_1D1D8DCAC()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  return MEMORY[0x1D388FC40](v2, v1);
}

uint64_t sub_1D1D8DD08()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  return MEMORY[0x1D388FCD0](v1, v2);
}

unint64_t sub_1D1D8DDC0()
{
  result = qword_1EC64EF78;
  if (!qword_1EC64EF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64EF78);
  }

  return result;
}

unint64_t sub_1D1D8DE14()
{
  result = qword_1EC64EF80;
  if (!qword_1EC64EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64EF80);
  }

  return result;
}

uint64_t sub_1D1D8DE68(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F2A8, &qword_1D1EAF038);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F2B0, &unk_1D1EAF040);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D8DDC0();
  sub_1D1E692FC();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = sub_1D1E68DDC();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if ((sub_1D18085DC() & 1) != 0 || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = sub_1D1E688EC();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
    *v19 = &type metadata for AttributedString.RangeSeparator;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_1D1D8DE14();
  sub_1D1E68C4C();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

unint64_t sub_1D1D8E298()
{
  result = qword_1EC64EF88;
  if (!qword_1EC64EF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64EF88);
  }

  return result;
}

unint64_t sub_1D1D8E2F0()
{
  result = qword_1EC64EF90;
  if (!qword_1EC64EF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64EF90);
  }

  return result;
}

unint64_t sub_1D1D8E344()
{
  result = qword_1EC64EF98;
  if (!qword_1EC64EF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64EF98);
  }

  return result;
}

unint64_t sub_1D1D8E39C()
{
  result = qword_1EC64EFA0;
  if (!qword_1EC64EFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64EFA0);
  }

  return result;
}

unint64_t sub_1D1D8E438()
{
  result = qword_1EC64EFB8[0];
  if (!qword_1EC64EFB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC64EFB8);
  }

  return result;
}

uint64_t sub_1D1D8E4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void))
{
  result = a4(319, *(a1 + 16), *(a1 + 24));
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, void))
{
  v6 = a4(0, *(a3 + 16), *(a3 + 24));
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, void))
{
  v7 = a5(0, *(a4 + 16), *(a4 + 24));
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

void sub_1D1D8E6BC()
{
  sub_1D1D8E768();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D1D8E768()
{
  if (!qword_1EC64F240)
  {
    sub_1D173FC5C();
    v0 = sub_1D1E666BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC64F240);
    }
  }
}

unint64_t sub_1D1D8E81C()
{
  result = qword_1EC64F248;
  if (!qword_1EC64F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F248);
  }

  return result;
}

unint64_t sub_1D1D8E874()
{
  result = qword_1EC64F250;
  if (!qword_1EC64F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F250);
  }

  return result;
}

unint64_t sub_1D1D8E8CC()
{
  result = qword_1EC64F258;
  if (!qword_1EC64F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F258);
  }

  return result;
}

unint64_t sub_1D1D8E924()
{
  result = qword_1EC64F260;
  if (!qword_1EC64F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F260);
  }

  return result;
}

unint64_t sub_1D1D8E97C()
{
  result = qword_1EC64F268;
  if (!qword_1EC64F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F268);
  }

  return result;
}

unint64_t sub_1D1D8EA58()
{
  result = qword_1EC64F278;
  if (!qword_1EC64F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F278);
  }

  return result;
}

unint64_t sub_1D1D8EAAC()
{
  result = qword_1EC64F288;
  if (!qword_1EC64F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F288);
  }

  return result;
}

unint64_t sub_1D1D8EB00()
{
  result = qword_1EC64F290;
  if (!qword_1EC64F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F290);
  }

  return result;
}

unint64_t sub_1D1D8EB54()
{
  result = qword_1EC64F298;
  if (!qword_1EC64F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F298);
  }

  return result;
}

unint64_t sub_1D1D8EBA8()
{
  result = qword_1EC64F2A0;
  if (!qword_1EC64F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F2A0);
  }

  return result;
}

uint64_t static DataModel.sharedAsync(coverageConfig:)(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = *a1;
  *(v2 + 128) = *(a1 + 16);
  *(v2 + 40) = sub_1D1E67E1C();
  *(v2 + 48) = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();
  *(v2 + 56) = v4;
  *(v2 + 64) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D1D8ED0C, v4, v3);
}

uint64_t sub_1D1D8ED0C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v0 + 128);
  v5 = swift_allocObject();
  *(v0 + 72) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v4;
  sub_1D1AC3828(v3, v2, v4);
  *(v0 + 80) = sub_1D1E67E0C();
  v7 = sub_1D1E67D4C();
  *(v0 + 88) = v7;
  *(v0 + 96) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D1D8EDD8, v7, v6);
}

uint64_t sub_1D1D8EDD8()
{
  v1 = v0[9];
  v2 = swift_allocObject();
  v0[13] = v2;
  *(v2 + 16) = sub_1D1AE889C;
  *(v2 + 24) = v1;

  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1D1D8EEC8;
  v4 = v0[2];

  return static DataModel.sharedAsync(coverageProvider:)(sub_1D1A4F16C, v2);
}

uint64_t sub_1D1D8EEC8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 120) = a1;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D1D8F014, v6, v5);
}

uint64_t sub_1D1D8F014()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[7];
  v4 = v0[8];

  return MEMORY[0x1EEE6DFA0](sub_1D1D8F080, v3, v4);
}

uint64_t sub_1D1D8F080()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[15];

  return v2(v3);
}

uint64_t (*static HomeManagerActor.homeManagerCreationBlock.getter())()
{
  v0 = off_1EEC21D70;

  return v0;
}

uint64_t static HomeManagerActor.homeManagerCreationBlock.setter(uint64_t (*a1)(), uint64_t a2)
{
  sub_1D1D97044(a1, a2);
  off_1EEC21D70 = a1;
  qword_1EEC21D78 = a2;
}

uint64_t (*static HomeManagerActor.homeManagerCreationBlock.modify(void *a1))(uint64_t *a1, char a2)
{
  v2 = qword_1EEC21D78;
  *a1 = off_1EEC21D70;
  a1[1] = v2;

  return sub_1D1D8F1B8;
}

uint64_t sub_1D1D8F1B8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {
    v4 = a1[1];

    sub_1D1D97044(v3, v2);
    off_1EEC21D70 = v3;
    qword_1EEC21D78 = v2;
  }

  else
  {
    sub_1D1D97044(*a1, v2);
    off_1EEC21D70 = v3;
    qword_1EEC21D78 = v2;
  }
}

uint64_t sub_1D1D8F244(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  sub_1D1D97044(sub_1D1D9737C, v3);
  off_1EEC21D70 = sub_1D1D9737C;
  qword_1EEC21D78 = v3;
}

void *sub_1D1D8F2E0(char a1)
{
  if (qword_1EC64F370)
  {
    v2 = qword_1EC64F370;
  }

  else
  {
    type metadata accessor for HomeManagerActor();
    swift_allocObject();
    v2 = sub_1D1D8F35C(a1);
    qword_1EC64F370 = v2;
  }

  return v2;
}

void *sub_1D1D8F35C(char a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = MEMORY[0x1E69E7CC0];
  *(v1 + 136) = 0;
  *(v1 + 128) = a1 & 1;
  v3 = type metadata accessor for HomeManagerActor();
  if (a1)
  {
    v19.receiver = v1;
    v19.super_class = v3;
    v4 = objc_msgSendSuper2(&v19, sel_init);
    v5 = off_1EEC21D70;
    v6 = v4;

    v8 = (v5)(v7);

    v9 = v6[17];
    v6[17] = v8;

    if (qword_1EC642448 != -1)
    {
      swift_once();
    }

    v10 = sub_1D1E6709C();
    __swift_project_value_buffer(v10, qword_1EC6BE298);
    v11 = sub_1D1E6707C();
    v12 = sub_1D1E6835C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "HomeManagerActor init for custom target";
LABEL_10:
      _os_log_impl(&dword_1D16EC000, v11, v12, v14, v13, 2u);
      MEMORY[0x1D3893640](v13, -1, -1);
    }
  }

  else
  {
    v20.receiver = v1;
    v20.super_class = v3;
    v15 = objc_msgSendSuper2(&v20, sel_init);
    v16 = qword_1EC642448;
    v6 = v15;
    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1D1E6709C();
    __swift_project_value_buffer(v17, qword_1EC6BE298);
    v11 = sub_1D1E6707C();
    v12 = sub_1D1E6835C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "HomeManagerActor init for DataModel target";
      goto LABEL_10;
    }
  }

  return v6;
}

void sub_1D1D8F570(void *a1)
{
  v2 = *(v1 + 136);
  *(v1 + 136) = a1;
  v5 = a1;

  v3 = *(v1 + 136);
  if (v3)
  {
    v4 = v3;
    [v4 setDelegate_];
  }
}

uint64_t sub_1D1D8F5E0()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC6BE298);
  __swift_project_value_buffer(v0, qword_1EC6BE298);
  return sub_1D1E6708C();
}

void HomeManagerActor.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void HomeManagerActor.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t HomeManagerActor.deinit()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t HomeManagerActor.__deallocating_deinit()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t static HomeManagerActor.homeManager.getter()
{
  v1 = *(MEMORY[0x1E69E88D0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  v3 = sub_1D1741B10(0, &unk_1EC649E60, 0x1E696CBA0);
  *v2 = v0;
  v2[1] = sub_1D1D8F884;

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0x616E614D656D6F68, 0xEB00000000726567, sub_1D1D8F980, 0, v3);
}

uint64_t sub_1D1D8F884()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1AA61FC, 0, 0);
}

uint64_t sub_1D1D8F980(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F3C0, &qword_1D1EAF418);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_1D1E67E7C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v3 + 16))(v6, a1, v2);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v3 + 32))(v13 + v12, v6, v2);
  sub_1D17C6EF0(0, 0, v10, &unk_1D1EAF428, v13);
}

uint64_t sub_1D1D8FB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F3C0, &qword_1D1EAF418);
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v4[5] = *(v6 + 64);
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D8FC30, 0, 0);
}

uint64_t sub_1D1D8FC30()
{
  v1 = qword_1EC64F370;
  if (!qword_1EC64F370)
  {
    type metadata accessor for HomeManagerActor();
    swift_allocObject();
    v1 = sub_1D1D8F35C(1);
    qword_1EC64F370 = v1;
  }

  v0[7] = v1;
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  (*(v4 + 16))(v2, v0[2], v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[8] = v6;
  (*(v4 + 32))(v6 + v5, v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1D1D8FD6C, v1, 0);
}

uint64_t sub_1D1D8FD6C()
{
  v1 = v0[7];
  v2 = v0[6];
  sub_1D1D8FE58(sub_1D1D980E4, v0[8]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1D8FE08(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F3C0, &qword_1D1EAF418);
  return sub_1D1E67D6C();
}

void sub_1D1D8FE58(void (*a1)(void), uint64_t a2)
{
  if (*(v2 + 112) == 1)
  {
    v5 = *(v2 + 136);
    if (v5)
    {
      oslog = v5;
      a1();
    }

    else
    {
      if (qword_1EC642448 != -1)
      {
        swift_once();
      }

      v12 = sub_1D1E6709C();
      __swift_project_value_buffer(v12, qword_1EC6BE298);
      oslog = sub_1D1E6707C();
      v13 = sub_1D1E6834C();
      if (os_log_type_enabled(oslog, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1D16EC000, oslog, v13, "homeHasUpdatedOnce == true but internalHomeManager == nil", v14, 2u);
        MEMORY[0x1D3893640](v14, -1, -1);
      }
    }
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    swift_beginAccess();
    v7 = *(v2 + 120);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 120) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_1D177FF80(0, v7[2] + 1, 1, v7);
      *(v2 + 120) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_1D177FF80((v9 > 1), v10 + 1, 1, v7);
    }

    v7[2] = v10 + 1;
    v11 = &v7[2 * v10];
    v11[4] = sub_1D1D98168;
    v11[5] = v6;
    *(v2 + 120) = v7;
    swift_endAccess();
  }
}

Swift::Void __swiftcall HomeManagerActor.homeManagerDidUpdateHomes(_:)(HMHomeManager a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  if (qword_1EC642448 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC6BE298);
  v9 = a1.super.isa;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6835C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    v14 = [(objc_class *)v9 currentHome];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 name];

      v17 = sub_1D1E6781C();
      v19 = v18;
    }

    else
    {
      v19 = 0xE400000000000000;
      v17 = 1701736302;
    }

    v20 = sub_1D1B1312C(v17, v19, &v24);

    *(v12 + 4) = v20;
    _os_log_impl(&dword_1D16EC000, v10, v11, "HomeManagerActor: homeManagerDidUpdateHomes(), current is: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D3893640](v13, -1, -1);
    MEMORY[0x1D3893640](v12, -1, -1);
  }

  v21 = sub_1D1E67E7C();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v2;

  sub_1D17C6EF0(0, 0, v7, &unk_1D1EAF1F8, v22);
}

uint64_t sub_1D1D90328()
{
  v1 = *(v0 + 16);
  sub_1D1D90388();
  v2 = *(v0 + 8);

  return v2();
}

void sub_1D1D90388()
{
  if ((*(v0 + 112) & 1) == 0)
  {
    v1 = v0;
    v2 = *(v0 + 136);
    if (v2)
    {
      v3 = v2;
      [v3 setDelegate:0];
      *(v1 + 112) = 1;
      if (qword_1EC642448 != -1)
      {
        goto LABEL_15;
      }

      while (1)
      {
        v4 = sub_1D1E6709C();
        v5 = __swift_project_value_buffer(v4, qword_1EC6BE298);
        v6 = v3;
        v3 = sub_1D1E6707C();
        v7 = sub_1D1E6835C();

        if (os_log_type_enabled(v3, v7))
        {
          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          *v8 = 138412290;
          *(v8 + 4) = v6;
          *v9 = v2;
          v10 = v6;
          _os_log_impl(&dword_1D16EC000, v3, v7, "HomeManagerActor.dataModelShared finished with homeManager: %@", v8, 0xCu);
          sub_1D1741A30(v9, &unk_1EC644000, &unk_1D1E75B00);
          MEMORY[0x1D3893640](v9, -1, -1);
          MEMORY[0x1D3893640](v8, -1, -1);
        }

        swift_beginAccess();
        v24 = v1;
        v11 = *(v1 + 120);
        v2 = *(v11 + 16);

        if (!v2)
        {
          break;
        }

        v12 = 0;
        v13 = (v11 + 40);
        while (v12 < *(v11 + 16))
        {
          v1 = *(v13 - 1);
          v14 = *v13;
          swift_retain_n();
          v15 = sub_1D1E6707C();
          v16 = sub_1D1E6835C();
          if (os_log_type_enabled(v15, v16))
          {
            v25 = v1;
            v17 = v11;
            v18 = v2;
            v19 = v6;
            v20 = v5;
            v21 = swift_slowAlloc();
            *v21 = 134217984;
            *(v21 + 4) = v12;
            _os_log_impl(&dword_1D16EC000, v15, v16, "catching up on block %ld", v21, 0xCu);
            v22 = v21;
            v5 = v20;
            v6 = v19;
            v2 = v18;
            v11 = v17;
            v1 = v25;
            MEMORY[0x1D3893640](v22, -1, -1);
          }

          ++v12;

          v26 = v6;
          v3 = v14;
          (v1)(&v26);

          v13 += 2;
          if (v2 == v12)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_15:
        swift_once();
      }

LABEL_12:

      v23 = *(v24 + 120);
      *(v24 + 120) = MEMORY[0x1E69E7CC0];
    }
  }
}

id sub_1D1D906BC()
{
  sub_1D1741B10(0, &qword_1EC64F3D0, 0x1E696CC08);
  v0 = [swift_getObjCClassFromMetadata() defaultPrivateConfiguration];
  [v0 setCachePolicy_];
  [v0 setDiscretionary_];
  [v0 setAdaptive_];
  v1 = [objc_allocWithZone(MEMORY[0x1E696CBA0]) initWithConfiguration_];

  return v1;
}

uint64_t static DataModel.sharedAsyncWithCurrentSnapshots()()
{
  v0[2] = sub_1D1E67E1C();
  v0[3] = sub_1D1E67E0C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D1D90830;

  return static DataModel.sharedAsync(coverageProvider:)(sub_1D1AE3AB8, 0);
}

uint64_t sub_1D1D90830(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v8 = *v1;
  *(*v1 + 40) = a1;

  v6 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D90974, v6, v5);
}

uint64_t sub_1D1D90974()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2(v3);
}

uint64_t static DataModel.sharedAsync(coverageProvider:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = sub_1D1E67E1C();
  v3[7] = sub_1D1E67E0C();
  v3[8] = sub_1D1E67E0C();
  v5 = sub_1D1E67D4C();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D1D90A84, v5, v4);
}

uint64_t sub_1D1D90A84()
{
  if (byte_1EC6BE2B0 == 1)
  {
    if (qword_1EE07AE38 != -1)
    {
      swift_once();
    }

    if (qword_1EE07AE40 == 4)
    {
      if (qword_1EE07DC58 != -1)
      {
        swift_once();
      }

      v1 = swift_task_alloc();
      v0[11] = v1;
      *v1 = v0;
      v1[1] = sub_1D1D90CC4;

      return sub_1D1D93AD8();
    }

    else
    {
      v7 = v0[8];

      if (qword_1EE07DC58 != -1)
      {
        swift_once();
      }

      v8 = qword_1EE07DC60;
      v0[12] = qword_1EE07DC60;
      v8;
      v9 = swift_task_alloc();
      v0[13] = v9;
      *v9 = v0;
      v9[1] = sub_1D1D90ECC;
      v11 = v0[3];
      v10 = v0[4];

      return sub_1D1D91878(v11, v10);
    }
  }

  else
  {
    v3 = v0[8];
    v4 = v0[6];

    v0[14] = sub_1D1E67E0C();
    v6 = sub_1D1E67D4C();
    v0[15] = v6;
    v0[16] = v5;

    return MEMORY[0x1EEE6DFA0](sub_1D1D9106C, v6, v5);
  }
}

uint64_t sub_1D1D90CC4()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D1D90DE4, v4, v3);
}

uint64_t sub_1D1D90DE4()
{
  v1 = v0[8];

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE07DC60;
  v0[12] = qword_1EE07DC60;
  v2;
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1D1D90ECC;
  v5 = v0[3];
  v4 = v0[4];

  return sub_1D1D91878(v5, v4);
}

uint64_t sub_1D1D90ECC()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v5 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D91008, v5, v4);
}

uint64_t sub_1D1D91008()
{
  v1 = v0[7];

  v2 = v0[12];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1D1D9106C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v10 = *(v0 + 24);
  v3 = sub_1D1E67E0C();
  *(v0 + 136) = v3;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v10;
  v5 = *(MEMORY[0x1E69E88D0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  v7 = type metadata accessor for DataModel();
  *v6 = v0;
  v6[1] = sub_1D1D91190;
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v0 + 16, v3, v8, 0xD000000000000022, 0x80000001D1EC93D0, sub_1D1D972F0, v4, v7);
}

uint64_t sub_1D1D91190()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);
  v8 = *v0;

  v5 = *(v1 + 128);
  v6 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1D1D912F0, v6, v5);
}

uint64_t sub_1D1D912F0()
{
  v1 = v0[14];
  v2 = v0[6];
  v3 = v0[7];

  v0[20] = v0[2];
  v5 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D9137C, v5, v4);
}

uint64_t sub_1D1D9137C()
{
  v1 = v0[7];

  v2 = v0[20];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1D1D913E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return sub_1D1AC3828(a1, a2, a3);
}

uint64_t static DataModel.sharedAsync(defaultingCoverageProvider:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1D1E67E1C();
  v3[5] = sub_1D1E67E0C();
  v5 = sub_1D1E67D4C();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D1D91494, v5, v4);
}

uint64_t sub_1D1D91494()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1D1D91574;
  v5 = v0[4];

  return static DataModel.sharedAsync(coverageProvider:)(sub_1D1D98160, v3);
}

uint64_t sub_1D1D91574(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 80) = a1;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1D1D916C0, v6, v5);
}

uint64_t sub_1D1D916C0()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[10];

  return v2(v3);
}

void *sub_1D1D91724@<X0>(void *(*a1)(void *__return_ptr)@<X1>, uint64_t a2@<X8>)
{
  result = a1(v7);
  v4 = v7[0];
  if (v7[0])
  {
    v5 = v8;
    v6 = v7[1];
  }

  else
  {
    if (qword_1EE07AE38 != -1)
    {
      swift_once();
    }

    if (qword_1EE07AE40 == 4)
    {
      v4 = sub_1D179B6E8(&unk_1F4D665E0);
      result = swift_arrayDestroy();
      if (qword_1EE07CD90 != -1)
      {
        result = swift_once();
      }

      v6 = 0;
      v5 = -1;
    }

    else
    {
      if (qword_1EC642490 != -1)
      {
        swift_once();
      }

      v4 = qword_1EC64F540;
      v6 = *algn_1EC64F548;
      v5 = byte_1EC64F550;

      result = sub_1D186145C(v6, v5);
    }
  }

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1D1D91878(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_1D1E66A7C();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = sub_1D1E67E1C();
  v3[15] = sub_1D1E67E0C();
  v8 = sub_1D1E67D4C();
  v3[16] = v8;
  v3[17] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D1D91974, v8, v7);
}

uint64_t sub_1D1D91974()
{
  v51 = v0;
  v1 = [*(v0 + 80) sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v2 = sub_1D1E67C1C();
  *(v0 + 144) = v2;

  if (v2 >> 62)
  {
    v3 = sub_1D1E6873C();
    *(v0 + 152) = v3;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_24:
    v40 = *(v0 + 144);
    v41 = *(v0 + 120);
    v42 = *(v0 + 104);

    v43 = *(v0 + 8);

    return v43();
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 152) = v3;
  if (!v3)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = 0x1EC642000uLL;
    while (1)
    {
      *(v0 + 160) = v4;
      v6 = *(v0 + 144);
      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D3891EF0]();
      }

      else
      {
        v7 = *(v6 + 8 * v4 + 32);
      }

      v8 = v7;
      *(v0 + 168) = v7;
      v9 = *(v0 + 72);
      (*(v0 + 64))();
      v11 = *(v0 + 16);
      v10 = *(v0 + 24);
      *(v0 + 176) = v11;
      *(v0 + 184) = v10;
      v12 = *(v0 + 32);
      *(v0 + 33) = v12;
      if (*(v5 + 1096) != -1)
      {
        swift_once();
      }

      v13 = sub_1D1E6709C();
      __swift_project_value_buffer(v13, qword_1EC6BE298);
      v14 = v8;

      sub_1D186145C(v10, v12);
      v15 = sub_1D1E6707C();
      v16 = sub_1D1E6835C();

      sub_1D1861470(v10, v12);
      if (os_log_type_enabled(v15, v16))
      {
        log = v15;
        v18 = *(v0 + 96);
        v17 = *(v0 + 104);
        v45 = *(v0 + 88);
        v19 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v50 = v47;
        *v19 = 136315650;
        v46 = v16;
        v20 = [v14 name];
        v49 = v14;
        v21 = sub_1D1E6781C();
        v23 = v22;

        v24 = sub_1D1B1312C(v21, v23, &v50);

        *(v19 + 4) = v24;
        *(v19 + 12) = 2082;
        v25 = [v49 uniqueIdentifier];
        sub_1D1E66A5C();

        sub_1D1D97AC8(&qword_1EE07B250, MEMORY[0x1E69695A8]);
        v26 = sub_1D1E68FAC();
        v28 = v27;
        (*(v18 + 8))(v17, v45);
        v5 = 0x1EC642000;
        v29 = sub_1D1B1312C(v26, v28, &v50);

        *(v19 + 14) = v29;
        *(v19 + 22) = 2082;
        v14 = v49;
        *(v0 + 40) = v11;
        *(v0 + 48) = v10;
        *(v0 + 56) = v12;
        v30 = SnapshotCoverageConfig.debugDescription.getter();
        v32 = sub_1D1B1312C(v30, v31, &v50);

        *(v19 + 24) = v32;
        v15 = log;
        _os_log_impl(&dword_1D16EC000, log, v46, "Considering refeshing snapshots for home %s (%{public}s) with coverage %{public}s", v19, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v47, -1, -1);
        MEMORY[0x1D3893640](v19, -1, -1);
      }

      if (*(v11 + 16))
      {
        break;
      }

      if (v12 != 3)
      {
        if (v12 >= 3)
        {
          LOBYTE(v12) = -1;
          sub_1D186145C(v10, 255);
          sub_1D1861470(v10, 255);
          v33 = 0;
          v34 = 3;
        }

        else
        {
          sub_1D186145C(v10, v12);
          sub_1D186145C(v10, v12);

          v33 = v10;
          v34 = v12;
        }

        sub_1D1861470(v33, v34);
        break;
      }

      sub_1D186145C(v10, 3);

      sub_1D1861470(0, 3);
      sub_1D1861470(v10, 3);
      sub_1D1861470(v10, 3);

      sub_1D1861470(v10, 3);

      v4 = *(v0 + 160) + 1;
      if (v4 == *(v0 + 152))
      {
        goto LABEL_24;
      }
    }

    v35 = *(v0 + 112);
    v36 = *(v0 + 80);
    *(v0 + 192) = sub_1D1E67E0C();
    v37 = swift_task_alloc();
    *(v0 + 200) = v37;
    *(v37 + 16) = v11;
    *(v37 + 24) = v10;
    *(v37 + 32) = v12;
    *(v37 + 40) = v36;
    *(v37 + 48) = v14;
    v38 = *(MEMORY[0x1E69E88D8] + 4);
    v39 = swift_task_alloc();
    *(v0 + 208) = v39;
    *v39 = v0;
    v39[1] = sub_1D1D91F3C;
  }

  return MEMORY[0x1EEE6DDE8]();
}

uint64_t sub_1D1D91F3C()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 192);
  v5 = *(*v0 + 184);
  v6 = *(*v0 + 176);
  v7 = *(*v0 + 33);
  v11 = *v0;

  sub_1D1861470(v5, v7);

  v8 = *(v1 + 136);
  v9 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D1D920EC, v9, v8);
}

uint64_t sub_1D1D920EC()
{
  v48 = v0;

  v1 = *(v0 + 160) + 1;
  if (v1 == *(v0 + 152))
  {
LABEL_2:
    v2 = *(v0 + 144);
    v3 = *(v0 + 120);
    v4 = *(v0 + 104);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = 0x1EC642000uLL;
    while (1)
    {
      *(v0 + 160) = v1;
      v8 = *(v0 + 144);
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1D3891EF0]();
      }

      else
      {
        v9 = *(v8 + 8 * v1 + 32);
      }

      v10 = v9;
      *(v0 + 168) = v9;
      v11 = *(v0 + 72);
      (*(v0 + 64))();
      v13 = *(v0 + 16);
      v12 = *(v0 + 24);
      *(v0 + 176) = v13;
      *(v0 + 184) = v12;
      v14 = *(v0 + 32);
      *(v0 + 33) = v14;
      if (*(v7 + 1096) != -1)
      {
        swift_once();
      }

      v15 = sub_1D1E6709C();
      __swift_project_value_buffer(v15, qword_1EC6BE298);
      v16 = v10;

      sub_1D186145C(v12, v14);
      v17 = sub_1D1E6707C();
      v18 = sub_1D1E6835C();

      sub_1D1861470(v12, v14);
      if (os_log_type_enabled(v17, v18))
      {
        log = v17;
        v20 = *(v0 + 96);
        v19 = *(v0 + 104);
        v42 = *(v0 + 88);
        v21 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v47 = v44;
        *v21 = 136315650;
        v43 = v18;
        v22 = [v16 name];
        v46 = v16;
        v23 = sub_1D1E6781C();
        v25 = v24;

        v26 = sub_1D1B1312C(v23, v25, &v47);

        *(v21 + 4) = v26;
        *(v21 + 12) = 2082;
        v27 = [v46 uniqueIdentifier];
        sub_1D1E66A5C();

        sub_1D1D97AC8(&qword_1EE07B250, MEMORY[0x1E69695A8]);
        v28 = sub_1D1E68FAC();
        v30 = v29;
        (*(v20 + 8))(v19, v42);
        v7 = 0x1EC642000;
        v31 = sub_1D1B1312C(v28, v30, &v47);

        *(v21 + 14) = v31;
        *(v21 + 22) = 2082;
        v16 = v46;
        *(v0 + 40) = v13;
        *(v0 + 48) = v12;
        *(v0 + 56) = v14;
        v32 = SnapshotCoverageConfig.debugDescription.getter();
        v34 = sub_1D1B1312C(v32, v33, &v47);

        *(v21 + 24) = v34;
        v17 = log;
        _os_log_impl(&dword_1D16EC000, log, v43, "Considering refeshing snapshots for home %s (%{public}s) with coverage %{public}s", v21, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v44, -1, -1);
        MEMORY[0x1D3893640](v21, -1, -1);
      }

      if (*(v13 + 16))
      {
        break;
      }

      if (v14 != 3)
      {
        if (v14 >= 3)
        {
          LOBYTE(v14) = -1;
          sub_1D186145C(v12, 255);
          sub_1D1861470(v12, 255);
          v35 = 0;
          v36 = 3;
        }

        else
        {
          sub_1D186145C(v12, v14);
          sub_1D186145C(v12, v14);

          v35 = v12;
          v36 = v14;
        }

        sub_1D1861470(v35, v36);
        break;
      }

      sub_1D186145C(v12, 3);

      sub_1D1861470(0, 3);
      sub_1D1861470(v12, 3);
      sub_1D1861470(v12, 3);

      sub_1D1861470(v12, 3);

      v1 = *(v0 + 160) + 1;
      if (v1 == *(v0 + 152))
      {
        goto LABEL_2;
      }
    }

    v37 = *(v0 + 112);
    v38 = *(v0 + 80);
    *(v0 + 192) = sub_1D1E67E0C();
    v39 = swift_task_alloc();
    *(v0 + 200) = v39;
    *(v39 + 16) = v13;
    *(v39 + 24) = v12;
    *(v39 + 32) = v14;
    *(v39 + 40) = v38;
    *(v39 + 48) = v16;
    v40 = *(MEMORY[0x1E69E88D8] + 4);
    v41 = swift_task_alloc();
    *(v0 + 208) = v41;
    *v41 = v0;
    v41[1] = sub_1D1D91F3C;

    return MEMORY[0x1EEE6DDE8]();
  }
}

uint64_t sub_1D1D92640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v50 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8);
  v55 = *(v6 - 8);
  v51 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v48 - v10;
  v11 = sub_1D1E66FDC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v48 - v17;
  if (qword_1EC642448 != -1)
  {
    swift_once();
  }

  v19 = sub_1D1E6709C();
  __swift_project_value_buffer(v19, qword_1EC6BE298);
  v20 = sub_1D1E6707C();
  v21 = sub_1D1E6835C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1D16EC000, v20, v21, "HomeManagerActor.dataModelShared._setupDataModel called", v22, 2u);
    MEMORY[0x1D3893640](v22, -1, -1);
  }

  if (qword_1EE07AE48 != -1)
  {
    swift_once();
  }

  v23 = sub_1D1E6701C();
  __swift_project_value_buffer(v23, qword_1EE07AE50);
  sub_1D1E66FCC();
  v24 = sub_1D1E66FFC();
  v25 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v26 = swift_slowAlloc();
    v49 = v12;
    v27 = v16;
    v28 = v6;
    v29 = a2;
    v30 = v11;
    v31 = a4;
    v32 = v26;
    *v26 = 0;
    v33 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v24, v25, v33, "HomeManagerWarmUp", "", v32, 2u);
    v34 = v32;
    a4 = v31;
    v11 = v30;
    a2 = v29;
    v6 = v28;
    v16 = v27;
    v12 = v49;
    MEMORY[0x1D3893640](v34, -1, -1);
  }

  (*(v12 + 16))(v16, v18, v11);
  v35 = sub_1D1E6705C();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = sub_1D1E6704C();
  (*(v12 + 8))(v18, v11);
  v39 = sub_1D1E67E7C();
  v40 = v52;
  (*(*(v39 - 8) + 56))(v52, 1, 1, v39);
  v42 = v54;
  v41 = v55;
  (*(v55 + 16))(v54, v50, v6);
  sub_1D1E67E1C();

  v43 = sub_1D1E67E0C();
  v44 = (*(v41 + 80) + 88) & ~*(v41 + 80);
  v45 = swift_allocObject();
  v46 = MEMORY[0x1E69E85E0];
  *(v45 + 16) = v43;
  *(v45 + 24) = v46;
  *(v45 + 32) = "HomeManagerWarmUp";
  *(v45 + 40) = 17;
  *(v45 + 48) = 2;
  *(v45 + 56) = v38;
  *(v45 + 64) = a2;
  *(v45 + 72) = v53;
  *(v45 + 80) = a4;
  (*(v41 + 32))(v45 + v44, v42, v6);
  sub_1D17C6EF0(0, 0, v40, &unk_1D1EAF3E8, v45);
}

uint64_t sub_1D1D92B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v16;
  *(v8 + 48) = v15;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 144) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8);
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 + 64);
  *(v8 + 96) = swift_task_alloc();
  sub_1D1E67E1C();
  *(v8 + 104) = sub_1D1E67E0C();
  v12 = sub_1D1E67D4C();
  *(v8 + 112) = v12;
  *(v8 + 120) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D1D92C6C, v12, v11);
}

uint64_t sub_1D1D92C6C()
{
  v1 = qword_1EC64F370;
  if (!qword_1EC64F370)
  {
    type metadata accessor for HomeManagerActor();
    swift_allocObject();
    v1 = sub_1D1D8F35C(0);
    qword_1EC64F370 = v1;
  }

  *(v0 + 128) = v1;
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v12 = *(v0 + 48);
  v11 = *(v0 + 144);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  v13 = *(v0 + 32);
  (*(v4 + 16))(v2, *(v0 + 64), v3);
  v8 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v0 + 136) = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v6;
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  *(v9 + 56) = v12;
  *(v9 + 64) = v5;
  (*(v4 + 32))(v9 + v8, v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1D1D92DFC, v1, 0);
}

uint64_t sub_1D1D92DFC()
{
  v1 = v0[16];
  sub_1D1D8FE58(sub_1D1D97CE0, v0[17]);

  v2 = v0[14];
  v3 = v0[15];

  return MEMORY[0x1EEE6DFA0](sub_1D1D92E88, v2, v3);
}

uint64_t sub_1D1D92E88()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1D92EF0(void *a1, const char *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v53 = a7;
  v54 = a8;
  v55 = a4;
  v61 = a2;
  v57 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8);
  v9 = *(v60 - 8);
  v56 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v51[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v59 = &v51[-v13];
  v14 = sub_1D1E6702C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v51[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_1D1E66FDC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v51[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE07AE48 != -1)
  {
    swift_once();
  }

  v24 = sub_1D1E6701C();
  __swift_project_value_buffer(v24, qword_1EE07AE50);
  v25 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v52 = sub_1D1E683DC();
  result = sub_1D1E6855C();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v55)
  {
LABEL_7:
    if (v61 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v61 & 0xFFFFF800) == 0xD800)
      {
LABEL_27:
        __break(1u);
        return result;
      }

      if (v61 >> 16 <= 0x10)
      {
        v61 = &v62;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  if (!v61)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:

  sub_1D1E6706C();

  if ((*(v15 + 88))(v18, v14) == *MEMORY[0x1E69E93E8])
  {
    v27 = "[Error] Interval already ended";
  }

  else
  {
    (*(v15 + 8))(v18, v14);
    v27 = "";
  }

  v28 = swift_slowAlloc();
  *v28 = 0;
  v29 = sub_1D1E66FBC();
  _os_signpost_emit_with_name_impl(&dword_1D16EC000, v25, v52, v29, v61, v27, v28, 2u);
  MEMORY[0x1D3893640](v28, -1, -1);
LABEL_15:

  (*(v20 + 8))(v23, v19);
  if (qword_1EC642448 != -1)
  {
    swift_once();
  }

  v30 = sub_1D1E6709C();
  __swift_project_value_buffer(v30, qword_1EC6BE298);
  v31 = sub_1D1E6707C();
  v32 = sub_1D1E6835C();
  v33 = os_log_type_enabled(v31, v32);
  v35 = v59;
  v34 = v60;
  v36 = v58;
  if (v33)
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1D16EC000, v31, v32, "HomeManagerActor.dataModelShared homeManager wait finished for _setupDataModel", v37, 2u);
    MEMORY[0x1D3893640](v37, -1, -1);
  }

  byte_1EC6BE2B0 = 1;
  if (qword_1EE07AE38 != -1)
  {
    swift_once();
  }

  v38 = qword_1EE07AE40;
  v39 = sub_1D1E67E7C();
  (*(*(v39 - 8) + 56))(v35, 1, 1, v39);
  (*(v9 + 16))(v36, a9, v34);
  sub_1D1E67E1C();
  v40 = v57;
  if (v38 == 4)
  {
    v41 = v54;

    v42 = sub_1D1E67E0C();
    v43 = (*(v9 + 80) + 56) & ~*(v9 + 80);
    v44 = swift_allocObject();
    v45 = MEMORY[0x1E69E85E0];
    *(v44 + 2) = v42;
    *(v44 + 3) = v45;
    v46 = v53;
    *(v44 + 4) = v40;
    *(v44 + 5) = v46;
    *(v44 + 6) = v41;
    (*(v9 + 32))(&v44[v43], v36, v34);
    v47 = &unk_1D1EAF408;
  }

  else
  {
    v48 = sub_1D1E67E0C();
    v49 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v44 = swift_allocObject();
    v50 = MEMORY[0x1E69E85E0];
    *(v44 + 2) = v48;
    *(v44 + 3) = v50;
    *(v44 + 4) = v40;
    (*(v9 + 32))(&v44[v49], v36, v34);
    v47 = &unk_1D1EAF3F8;
  }

  sub_1D17C6EF0(0, 0, v35, v47, v44);
}

uint64_t sub_1D1D93548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = *(*(type metadata accessor for DataModel.StateSubscription.Reason() - 8) + 64) + 15;
  v7[7] = swift_task_alloc();
  sub_1D1E67E1C();
  v7[8] = sub_1D1E67E0C();
  v10 = sub_1D1E67D4C();
  v7[9] = v10;
  v7[10] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D1D93610, v10, v9);
}

uint64_t sub_1D1D93610()
{
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  *(v0 + 88) = qword_1EE07DC60;
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1D1D936D8;

  return sub_1D1D93AD8();
}

uint64_t sub_1D1D936D8()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[13] = v4;
  *v4 = v3;
  v4[1] = sub_1D1D9385C;
  v5 = v1[11];
  v6 = v1[5];
  v7 = v1[4];
  v8 = v1[3];

  return DataModel.loadUpHomeSnapshots(homeManager:coverageProvider:)(v8, v7, v6);
}

uint64_t sub_1D1D9385C()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D1D9397C, v4, v3);
}

uint64_t sub_1D1D9397C()
{
  v1 = v0[8];

  if (qword_1EE07AE38 != -1)
  {
    swift_once();
  }

  if (qword_1EE07AE40 == 4)
  {
    v2 = v0[11];
    v3 = v0[7];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
    (*(*(v4 - 8) + 56))(v3, 2, 3, v4);
    DataModel.add(stateSubscriptionEnabledReason:)(v3);
    sub_1D1D97F88(v3, type metadata accessor for DataModel.StateSubscription.Reason);
  }

  v5 = v0[11];
  v7 = v0[6];
  v6 = v0[7];
  v0[2] = v5;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8);
  sub_1D1E67D6C();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D1D93AD8()
{
  v1[5] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = sub_1D1E66FDC();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_1D1E67E1C();
  v1[11] = sub_1D1E67E0C();
  v7 = sub_1D1E67D4C();
  v1[12] = v7;
  v1[13] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D1D93C10, v7, v6);
}

uint64_t sub_1D1D93C10()
{
  if (qword_1EE07AE48 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_1D1E6701C();
  __swift_project_value_buffer(v2, qword_1EE07AE50);
  sub_1D1E66FCC();
  v3 = sub_1D1E66FFC();
  v4 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v3, v4, v7, "HomeManagerRefresh", "", v6, 2u);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[7];
  v11 = v0[8];
  v13 = v0[5];
  v12 = v0[6];

  (*(v11 + 16))(v8, v9, v10);
  v14 = sub_1D1E6705C();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_1D1E6704C();
  v0[14] = v17;
  (*(v11 + 8))(v9, v10);
  v18 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  v19 = *(v13 + v18);
  v0[15] = v19;
  v20 = v19;
  sub_1D1E67E3C();
  v21 = sub_1D1E67E7C();
  (*(*(v21 - 8) + 56))(v12, 0, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v19;
  v22[5] = v17;
  v23 = v20;

  v0[16] = sub_1D1B1DFC0(0, 0, v12, &unk_1D1EAF320, v22);
  sub_1D1741A30(v12, &unk_1EC6442C0, &qword_1D1E741A0);
  v24 = *(MEMORY[0x1E69E86C0] + 4);
  v25 = swift_task_alloc();
  v0[17] = v25;
  *v25 = v0;
  v25[1] = sub_1D1D93EFC;

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1D1D93EFC()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v7 = *v0;

  v4 = *(v1 + 104);
  v5 = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1D1D94040, v5, v4);
}

uint64_t sub_1D1D94040()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D1D940E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[9] = sub_1D1E67E1C();
  v5[10] = sub_1D1E67E0C();
  v7 = sub_1D1E67D4C();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D1D9417C, v7, v6);
}

uint64_t sub_1D1D9417C()
{
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE07DC60;
  v0[13] = qword_1EE07DC60;
  swift_getKeyPath();
  v0[5] = v1;
  sub_1D1D97AC8(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v2 = OBJC_IVAR____TtC13HomeDataModel9DataModel__homesToStateSnapshots;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16))
  {
    v3 = v0[10];

    v4 = v0[13];
    v5 = v0[8];
    v0[6] = v4;
    v6 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8);
    sub_1D1E67D6C();
    v7 = v0[1];

    return v7();
  }

  else
  {
    if (qword_1EC642448 != -1)
    {
      swift_once();
    }

    v9 = sub_1D1E6709C();
    __swift_project_value_buffer(v9, qword_1EC6BE298);
    v10 = sub_1D1E6707C();
    v11 = sub_1D1E6833C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D16EC000, v10, v11, "HomeManagerActor.dataModelShared calling loadUpHomeSnapshots", v12, 2u);
      MEMORY[0x1D3893640](v12, -1, -1);
    }

    v13 = v0[9];

    v0[14] = sub_1D1E67E0C();
    v14 = swift_task_alloc();
    v0[15] = v14;
    *v14 = v0;
    v14[1] = sub_1D1D9443C;
    v15 = v0[7];

    return sub_1D1DE3B24(v15, v1);
  }
}

uint64_t sub_1D1D9443C()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v5 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D94578, v5, v4);
}

uint64_t sub_1D1D94578()
{
  v1 = v0[14];

  v2 = v0[11];
  v3 = v0[12];

  return MEMORY[0x1EEE6DFA0](sub_1D1D945DC, v2, v3);
}

uint64_t sub_1D1D945DC()
{
  v1 = v0[10];

  v2 = v0[13];
  v3 = v0[8];
  v0[6] = v2;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8);
  sub_1D1E67D6C();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1D1D94670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 72) = a5;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 16) = a2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v7 + 56) = swift_task_alloc();
  sub_1D1E67E1C();
  *(v7 + 64) = sub_1D1E67E0C();
  v10 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D9474C, v10, v9);
}

uint64_t sub_1D1D9474C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v18 = *(v0 + 16);
  v7 = *(v0 + 72);

  v8 = sub_1D1E67E7C();
  v17 = *(*(v8 - 8) + 56);
  v17(v2, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  *(v9 + 48) = v7;
  *(v9 + 56) = v4;
  *(v9 + 64) = v3;

  sub_1D186145C(v5, v7);
  v10 = v4;
  v11 = v3;
  sub_1D1DE256C(v2, &unk_1D1EAF348, v9);
  sub_1D1741A30(v2, &unk_1EC6442C0, &qword_1D1E741A0);
  v17(v2, 1, 1, v8);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v6;
  *(v12 + 40) = v5;
  *(v12 + 48) = v7;
  *(v12 + 56) = v10;
  *(v12 + 64) = v11;

  sub_1D186145C(v5, v7);
  v13 = v10;
  v14 = v11;
  sub_1D1DE256C(v2, &unk_1D1EAF358, v12);
  sub_1D1741A30(v2, &unk_1EC6442C0, &qword_1D1E741A0);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1D1D94954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D1D94978, 0, 0);
}

uint64_t sub_1D1D94978()
{
  if (*(v0[2] + 16))
  {
    v1 = swift_task_alloc();
    v0[5] = v1;
    *v1 = v0;
    v1[1] = sub_1D17D0834;
    v3 = v0[3];
    v2 = v0[4];
    v4 = v0[2];

    return sub_1D1D94A4C(v2, v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1D1D94A4C(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v3[12] = updated;
  v5 = *(*(updated - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v6 = sub_1D1E66A7C();
  v3[14] = v6;
  v7 = *(v6 - 8);
  v3[15] = v7;
  v8 = *(v7 + 64) + 15;
  v3[16] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = sub_1D1E67E1C();
  v3[21] = sub_1D1E67E0C();
  v11 = sub_1D1E67D4C();
  v3[22] = v11;
  v3[23] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D1D94BC8, v11, v10);
}

uint64_t sub_1D1D94BC8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = [*(v0 + 72) uniqueIdentifier];
  sub_1D1E66A5C();

  swift_getKeyPath();
  *(v0 + 64) = v2;
  sub_1D1D97AC8(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtC13HomeDataModel9DataModel__homesToStateSnapshots;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16))
  {
    v6 = *(v0 + 128);

    v7 = sub_1D1742188(v6);
    v8 = *(v0 + 152);
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v11 = *(v0 + 112);
    if (v12)
    {
      v13 = v7;
      v33 = *(v5 + 56);
      v14 = type metadata accessor for StateSnapshot(0);
      v15 = *(v14 - 8);
      sub_1D1D97B38(v33 + *(v15 + 72) * v13, v8, type metadata accessor for StateSnapshot);
      (*(v10 + 8))(v9, v11);

      (*(v15 + 56))(v8, 0, 1, v14);
      goto LABEL_7;
    }

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v8 = *(v0 + 152);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  }

  v14 = type metadata accessor for StateSnapshot(0);
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
LABEL_7:
  v16 = *(v0 + 144);
  sub_1D1741C08(*(v0 + 152), v16, &unk_1EC649E30, &unk_1D1E91250);
  type metadata accessor for StateSnapshot(0);
  *(v0 + 192) = v14;
  v17 = *(v14 - 8);
  *(v0 + 200) = v17;
  v18 = (*(v17 + 48))(v16, 1, v14);
  v19 = *(v0 + 144);
  if (v18 == 1)
  {
    sub_1D1741A30(*(v0 + 144), &unk_1EC649E30, &unk_1D1E91250);
LABEL_13:
    v30 = *(v0 + 160);
    *(v0 + 208) = sub_1D1E67E0C();
    v32 = sub_1D1E67D4C();
    *(v0 + 216) = v32;
    *(v0 + 224) = v31;

    return MEMORY[0x1EEE6DFA0](sub_1D1D95028, v32, v31);
  }

  v20 = *(v0 + 80);
  v21 = *v19;

  sub_1D1D97F88(v19, type metadata accessor for StateSnapshot);
  LOBYTE(v20) = sub_1D192A9D0(v21, v20);

  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

  v22 = *(v0 + 168);
  sub_1D1741A30(*(v0 + 152), &unk_1EC649E30, &unk_1D1E91250);

  v24 = *(v0 + 144);
  v23 = *(v0 + 152);
  v26 = *(v0 + 128);
  v25 = *(v0 + 136);
  v27 = *(v0 + 104);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1D1D95028()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[29] = v3;
  if (v3)
  {
    v4 = qword_1EE07AE28;
    v5 = v3;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = v0[12];
    v8 = v0[9];
    v7 = v0[10];
    *v0[13] = v8;
    swift_storeEnumTagMultiPayload();
    v9 = v8;
    v10 = swift_task_alloc();
    v0[30] = v10;
    *v10 = v0;
    v10[1] = sub_1D1D952FC;
    v11 = v0[17];
    v12 = v0[13];
    v13 = v0[9];

    return sub_1D1E5A250(v11, v12, v5, v13, v7);
  }

  else
  {
    v15 = v0[26];

    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v16 = v0[9];
    v17 = sub_1D1E6709C();
    __swift_project_value_buffer(v17, qword_1EE07B5D8);
    v18 = v16;
    v19 = sub_1D1E6707C();
    v20 = sub_1D1E6833C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[9];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v21;
      *v23 = v21;
      v24 = v21;
      _os_log_impl(&dword_1D16EC000, v19, v20, "skipping rebuildSnapshot for %@ due to missing homeManager", v22, 0xCu);
      sub_1D1741A30(v23, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v23, -1, -1);
      MEMORY[0x1D3893640](v22, -1, -1);
    }

    v25 = v0[17];
    (*(v0[25] + 56))(v25, 1, 1, v0[24]);
    sub_1D1741A30(v25, &unk_1EC649E30, &unk_1D1E91250);
    v26 = v0[22];
    v27 = v0[23];

    return MEMORY[0x1EEE6DFA0](sub_1D1D954FC, v26, v27);
  }
}

uint64_t sub_1D1D952FC()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 104);
  v7 = *v0;

  sub_1D1D97F88(v3, type metadata accessor for StateSnapshot.UpdateType);
  v4 = *(v1 + 224);
  v5 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1D1D95454, v5, v4);
}

uint64_t sub_1D1D95454()
{
  v1 = v0[29];
  v2 = v0[26];

  v3 = v0[17];
  (*(v0[25] + 56))(v3, 0, 1, v0[24]);
  sub_1D1741A30(v3, &unk_1EC649E30, &unk_1D1E91250);
  v4 = v0[22];
  v5 = v0[23];

  return MEMORY[0x1EEE6DFA0](sub_1D1D954FC, v4, v5);
}

uint64_t sub_1D1D954FC()
{
  v1 = v0[21];
  v2 = v0[19];

  sub_1D1741A30(v2, &unk_1EC649E30, &unk_1D1E91250);
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D1D955B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 25) = a5;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D1D955D8, 0, 0);
}

uint64_t sub_1D1D955D8()
{
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + 25);
  if (SnapshotCoverageConfig.matterSnapshotHasAnyCoverage.getter())
  {
    v1 = *(v0 + 40);
    *(v0 + 16) = v1;
    v2 = *(v0 + 25);
    *(v0 + 24) = v2;
    sub_1D186145C(v1, v2);
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_1D1D956E0;
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);

    return sub_1D1D957F8(v4, (v0 + 16));
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1D1D956E0()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *v0;

  sub_1D1861470(*(v1 + 16), *(v1 + 24));
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_1D1D957F8(uint64_t a1, uint64_t *a2)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v5 = *(*(type metadata accessor for MatterStateSnapshot() - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *a2;
  *(v3 + 72) = v6;
  *(v3 + 80) = v7;
  *(v3 + 33) = *(a2 + 8);
  sub_1D1E67E1C();
  *(v3 + 88) = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();
  *(v3 + 96) = v9;
  *(v3 + 104) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D1D958CC, v9, v8);
}

uint64_t sub_1D1D958CC()
{
  v17 = v0;
  v1 = *(v0 + 33);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v15 = *(v0 + 80);
  v16 = v1;
  if (sub_1D1D95C3C(v2, &v15))
  {
    if (qword_1EE07AE08 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 33);
    v5 = *(v0 + 80);
    v6 = *(v0 + 56);
    *(v0 + 16) = v6;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 40) = v5;
    *(v0 + 48) = v4;
    v7 = v6;
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_1D1D95A50;
    v9 = *(v0 + 72);
    v10 = *(v0 + 56);

    return MatterSnapshotModerator.rebuildSnapshot(updateType:home:filter:)(v9, v0 + 16, v10, v0 + 40);
  }

  else
  {
    v12 = *(v0 + 88);

    v13 = *(v0 + 72);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1D1D95A50()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 72);
  v7 = *v0;

  sub_1D1A283E8(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  sub_1D1D97F88(v3, type metadata accessor for MatterStateSnapshot);
  v4 = *(v1 + 104);
  v5 = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1D1D95BD4, v5, v4);
}

uint64_t sub_1D1D95BD4()
{
  v1 = v0[11];

  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1D95C3C(char *a1, uint64_t a2)
{
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v63 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v63 - v15;
  v17 = *a2;
  v18 = *(a2 + 8);
  if (v18 == 255)
  {
    sub_1D186145C(*a2, 255);
    sub_1D1861470(v17, 255);
    sub_1D1861470(0, 3);
  }

  else
  {
    v73 = *a2;
    v74 = v18;
    v70 = 0;
    v71 = 3;
    sub_1D186145C(v17, v18);
    sub_1D186145C(v17, v18);
    v19 = _s13HomeDataModel19MatterStateSnapshotV6FilterO2eeoiySbAE_AEtFZ_0(&v73, &v70);

    sub_1D1861470(v17, v18);
    if (v19)
    {
      if (qword_1EC642448 != -1)
      {
        swift_once();
      }

      v20 = sub_1D1E6709C();
      __swift_project_value_buffer(v20, qword_1EC6BE298);
      v21 = sub_1D1E6707C();
      v22 = sub_1D1E6831C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1D16EC000, v21, v22, "Skipping matter snapshot because filter is noDevices", v23, 2u);
        MEMORY[0x1D3893640](v23, -1, -1);
      }

      LOBYTE(v24) = 0;
      return v24 & 1;
    }
  }

  v67 = v10;
  v69 = a1;
  v25 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  swift_getKeyPath();
  v73 = v2;
  sub_1D1D97AC8(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v26 = OBJC_IVAR____TtC13HomeDataModel9DataModel__homesToMatterSnapshots;
  swift_beginAccess();
  v27 = *(v2 + v26);
  v28 = *(v27 + 16);
  v68 = v6;
  if (!v28)
  {
    goto LABEL_13;
  }

  v29 = sub_1D1742188(v12);
  if ((v30 & 1) == 0)
  {

LABEL_13:
    v66 = *(v6 + 8);
    v66(v12, v5);
    v36 = type metadata accessor for MatterStateSnapshot();
    (*(*(v36 - 8) + 56))(v16, 1, 1, v36);
    goto LABEL_14;
  }

  v31 = v29;
  v32 = *(v27 + 56);
  v33 = type metadata accessor for MatterStateSnapshot();
  v34 = v5;
  v35 = *(v33 - 8);
  sub_1D1D97B38(v32 + *(v35 + 72) * v31, v16, type metadata accessor for MatterStateSnapshot);
  v66 = *(v68 + 8);
  v66(v12, v34);

  (*(v35 + 56))(v16, 0, 1, v33);
  v5 = v34;
LABEL_14:
  v37 = v69;
  v38 = HMHome.allMatterNodeIDs.getter();
  v39 = sub_1D179D1E0(&unk_1F4D66610);
  v40 = MEMORY[0x1EEE9AC00](v39);
  *(&v63 - 4) = v17;
  *(&v63 - 24) = v18;
  v69 = v16;
  *(&v63 - 2) = v16;
  *(&v63 - 1) = v40;
  LODWORD(v24) = sub_1D18B5F74(sub_1D1D97B10, (&v63 - 6), v38);

  if (qword_1EC642448 != -1)
  {
    swift_once();
  }

  v41 = sub_1D1E6709C();
  __swift_project_value_buffer(v41, qword_1EC6BE298);
  sub_1D186145C(v17, v18);
  v42 = v37;
  v43 = sub_1D1E6707C();
  v44 = sub_1D1E6835C();

  sub_1D1861470(v17, v18);
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v72[0] = v64;
    *v45 = 67240962;
    *(v45 + 4) = v24 & 1;
    *(v45 + 8) = 2080;
    v46 = [v42 name];
    v47 = sub_1D1E6781C();
    v65 = v24;
    v24 = v5;
    v49 = v48;

    v50 = sub_1D1B1312C(v47, v49, v72);

    *(v45 + 10) = v50;
    *(v45 + 18) = 2080;
    v51 = [v42 uniqueIdentifier];
    v52 = v67;
    sub_1D1E66A5C();

    sub_1D1D97AC8(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v53 = sub_1D1E68FAC();
    v55 = v54;
    v56 = v24;
    LOBYTE(v24) = v65;
    v66(v52, v56);
    v57 = sub_1D1B1312C(v53, v55, v72);

    *(v45 + 20) = v57;
    *(v45 + 28) = 2080;
    v70 = v17;
    v71 = v18;
    sub_1D186145C(v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3A0, &qword_1D1EAF5D0);
    v58 = sub_1D1E678BC();
    v60 = sub_1D1B1312C(v58, v59, v72);

    *(v45 + 30) = v60;
    _os_log_impl(&dword_1D16EC000, v43, v44, "_matterSnapshotNeedsRefresh: %{BOOL,public}d for home %s (%s) with filter: %s", v45, 0x26u);
    v61 = v64;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v61, -1, -1);
    MEMORY[0x1D3893640](v45, -1, -1);
  }

  sub_1D1741A30(v69, &unk_1EC64F390, &qword_1D1E92B10);
  return v24 & 1;
}

uint64_t sub_1D1D9640C(uint64_t *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v8 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v41 - v15;
  v17 = type metadata accessor for StaticMatterDevice();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  if (v8 == 1 && !sub_1D17199BC(v22, a2))
  {
    if (qword_1EC642448 != -1)
    {
      swift_once();
    }

    v33 = sub_1D1E6709C();
    __swift_project_value_buffer(v33, qword_1EC6BE298);
    v34 = sub_1D1E6707C();
    v35 = sub_1D1E6831C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134349056;
      *(v36 + 4) = v22;
      _os_log_impl(&dword_1D16EC000, v34, v35, "Ignoring device %{public}llu because it's not in the filter", v36, 0xCu);
      MEMORY[0x1D3893640](v36, -1, -1);
    }
  }

  else
  {
    sub_1D1741C08(a4, v12, &unk_1EC64F390, &qword_1D1E92B10);
    v23 = type metadata accessor for MatterStateSnapshot();
    if ((*(*(v23 - 8) + 48))(v12, 1, v23) == 1)
    {
      sub_1D1741A30(v12, &unk_1EC64F390, &qword_1D1E92B10);
      (*(v18 + 56))(v16, 1, 1, v17);
      goto LABEL_10;
    }

    v24 = *&v12[*(v23 + 24)];

    sub_1D1D97F88(v12, type metadata accessor for MatterStateSnapshot);
    if (*(v24 + 16) && (v25 = sub_1D17420B0(v22), (v26 & 1) != 0))
    {
      sub_1D1D97B38(*(v24 + 56) + *(v18 + 72) * v25, v16, type metadata accessor for StaticMatterDevice);
      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    (*(v18 + 56))(v16, v27, 1, v17);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
LABEL_10:
      sub_1D1741A30(v16, &qword_1EC643650, &qword_1D1E71D40);
      if (qword_1EC642448 != -1)
      {
        swift_once();
      }

      v28 = sub_1D1E6709C();
      __swift_project_value_buffer(v28, qword_1EC6BE298);
      v29 = sub_1D1E6707C();
      v30 = sub_1D1E6831C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 134349056;
        *(v31 + 4) = v22;
        _os_log_impl(&dword_1D16EC000, v29, v30, "Missing snapshot for device %{public}llu, so doing a snapshot", v31, 0xCu);
        MEMORY[0x1D3893640](v31, -1, -1);
      }

      return 1;
    }

    sub_1D1AE8C0C(v16, v21);
    static MatterDeviceType.primaryDeviceType(for:)(*&v21[*(v17 + 32)], &v42);
    if ((sub_1D171A84C(v42, v41) & 1) != 0 || !*(*&v21[*(v17 + 56)] + 16))
    {
      if (qword_1EC642448 != -1)
      {
        swift_once();
      }

      v37 = sub_1D1E6709C();
      __swift_project_value_buffer(v37, qword_1EC6BE298);
      v38 = sub_1D1E6707C();
      v39 = sub_1D1E6831C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 134349056;
        *(v40 + 4) = v22;
        _os_log_impl(&dword_1D16EC000, v38, v39, "Snapshotted device for %{public}llu has invalid data, so doing a snapshot", v40, 0xCu);
        MEMORY[0x1D3893640](v40, -1, -1);
      }

      sub_1D1D97F88(v21, type metadata accessor for StaticMatterDevice);
      return 1;
    }

    sub_1D1D97F88(v21, type metadata accessor for StaticMatterDevice);
  }

  return 0;
}

uint64_t sub_1D1D969DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1D96A00, 0, 0);
}

uint64_t sub_1D1D96A00()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1D1AE793C;
  v6 = v0[2];
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v6, 0, 0, 0x687365726665725FLL, 0xEA00000000002928, sub_1D1D9774C, v3, v7);
}

uint64_t sub_1D1D96AFC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9A0, &qword_1D1E97428);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = aBlock - v10;
  if (a2)
  {
    (*(v7 + 16))(v11, a1, v6);
    v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    (*(v7 + 32))(v13 + v12, v11, v6);
    aBlock[4] = sub_1D1D97754;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D1C40BA8;
    aBlock[3] = &block_descriptor_59;
    v14 = _Block_copy(aBlock);

    v15 = [a2 _refreshBeforeDate_completionHandler_];
    _Block_release(v14);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1D96CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[1] = a3;
  v3 = sub_1D1E6702C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66FDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE07AE48 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6701C();
  __swift_project_value_buffer(v13, qword_1EE07AE50);
  v14 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v15 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {

    sub_1D1E6706C();

    if ((*(v4 + 88))(v7, v3) == *MEMORY[0x1E69E93E8])
    {
      v16 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v7, v3);
      v16 = "";
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v14, v15, v18, "HomeManagerRefresh", v16, v17, 2u);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v19 = sub_1D1E6709C();
  __swift_project_value_buffer(v19, qword_1EE07B5D8);
  v20 = sub_1D1E6707C();
  v21 = sub_1D1E6835C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1D16EC000, v20, v21, "homemanager refresh is done", v22, 2u);
    MEMORY[0x1D3893640](v22, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9A0, &qword_1D1E97428);
  return sub_1D1E67D6C();
}

void sub_1D1D97044(uint64_t a1, uint64_t a2)
{
  if (qword_1EC642448 != -1)
  {
    swift_once();
  }

  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EC6BE298);

  oslog = sub_1D1E6707C();
  v5 = sub_1D1E6835C();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F3C8, &qword_1D1EAF430);
    v9 = sub_1D1E6789C();
    v11 = sub_1D1B1312C(v9, v10, &v13);

    *(v6 + 4) = v11;
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D3893640](v7, -1, -1);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1D1D9723C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1D90308(a1, v4, v5, v6);
}

unint64_t sub_1D1D97328()
{
  result = qword_1EC64F380;
  if (!qword_1EC64F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F380);
  }

  return result;
}

uint64_t sub_1D1D9737C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t sub_1D1D973B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

void sub_1D1D973E4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  if (*(a1 + 112) == 1)
  {
    v7 = *(a1 + 136);
    if (v7)
    {
      oslog = v7;
      v8 = a2;

      sub_1D1DF37D0(v8);
    }

    else
    {
      v16 = qword_1EC642448;
      v17 = a2;

      if (v16 != -1)
      {
        swift_once();
      }

      v18 = sub_1D1E6709C();
      __swift_project_value_buffer(v18, qword_1EC6BE298);
      oslog = sub_1D1E6707C();
      v19 = sub_1D1E6834C();
      if (os_log_type_enabled(oslog, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1D16EC000, oslog, v19, "homeHasUpdatedOnce == true but internalHomeManager == nil", v20, 2u);
        MEMORY[0x1D3893640](v20, -1, -1);
      }
    }
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1D1D97658;
    *(v9 + 24) = v6;
    swift_beginAccess();
    v10 = *(a1 + 120);
    v11 = a2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 120) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1D177FF80(0, v10[2] + 1, 1, v10);
      *(a1 + 120) = v10;
    }

    v14 = v10[2];
    v13 = v10[3];
    if (v14 >= v13 >> 1)
    {
      v10 = sub_1D177FF80((v13 > 1), v14 + 1, 1, v10);
    }

    v10[2] = v14 + 1;
    v15 = &v10[2 * v14];
    v15[4] = sub_1D1D97660;
    v15[5] = v9;
    *(a1 + 120) = v10;
    swift_endAccess();
  }
}

uint64_t sub_1D1D97660(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1D1D9768C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1D969DC(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1D97754(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9A0, &qword_1D1E97428) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1D1D96CDC(a1, v4, v5);
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1D977EC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 32);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D17C4CF0;

  return sub_1D1D94670(a1, a2, v6, v7, v10, v8, v9);
}

uint64_t sub_1D1D978C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 48);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1D94954(v2, v3, v4, v5, v8, v6, v7);
}

uint64_t objectdestroy_57Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  if (*(v0 + 48) != 255)
  {
    v3 = *(v0 + 40);
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D1D979F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 48);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1D955B0(v2, v3, v4, v5, v8, v6, v7);
}

uint64_t sub_1D1D97AC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1D97B38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1D97BA0(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 64);
  v15 = *(v1 + 56);
  v10 = *(v1 + 72);
  v9 = *(v1 + 80);
  v11 = v1 + ((*(v3 + 80) + 88) & ~*(v3 + 80));
  v12 = *(v1 + 48);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1D17C4CF0;

  return sub_1D1D92B48(a1, v4, v5, v6, v7, v12, v15, v8);
}

uint64_t sub_1D1D97D6C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1D940E0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D1D97E70(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D17C4CF0;

  return sub_1D1D93548(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1D1D97F88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1D97FE8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F3C0, &qword_1D1EAF418) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4BFC;

  return sub_1D1D8FB5C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1D1D980E4(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F3C0, &qword_1D1EAF418) - 8) + 80);

  return sub_1D1D8FE08(a1);
}

uint64_t sub_1D1D9816C()
{
  result = os_variant_has_internal_diagnostics();
  byte_1EE07B288 = result;
  return result;
}

uint64_t static Logger.hasInternalDiagnostics.getter()
{
  if (qword_1EE07B280 != -1)
  {
    swift_once();
  }

  return byte_1EE07B288;
}

uint64_t sub_1D1D98400()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC64F428);
  __swift_project_value_buffer(v0, qword_1EC64F428);
  return sub_1D1E6708C();
}

uint64_t sub_1D1D984C0()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC64F440);
  __swift_project_value_buffer(v0, qword_1EC64F440);
  return sub_1D1E6708C();
}

uint64_t sub_1D1D985AC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1D1E6708C();
}

uint64_t sub_1D1D98668()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EE07A080);
  __swift_project_value_buffer(v0, qword_1EE07A080);
  return sub_1D1E6708C();
}

uint64_t sub_1D1D98728()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC64F458);
  __swift_project_value_buffer(v0, qword_1EC64F458);
  return sub_1D1E6708C();
}

uint64_t sub_1D1D987E8()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC64F470);
  __swift_project_value_buffer(v0, qword_1EC64F470);
  return sub_1D1E6708C();
}

uint64_t sub_1D1D988A8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1D1D9894C()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EE0813C8);
  __swift_project_value_buffer(v0, qword_1EE0813C8);
  return sub_1D1E6708C();
}

uint64_t sub_1D1D98A00(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_1D1E6709C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D1E6701C();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, a4);
  (*(v8 + 16))(v11, v13, v7);
  return sub_1D1E66FEC();
}

uint64_t static UUID.matterObjectIdentifier(deviceID:endpointID:)@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27 - v8;
  v27 = a1;
  sub_1D1D98E30();
  v10 = sub_1D1E679EC();
  v12 = v11;
  result = sub_1D1E678FC();
  if (__OFSUB__(16, result))
  {
    __break(1u);
    goto LABEL_6;
  }

  v27 = sub_1D1E679DC();
  v28 = v14;

  MEMORY[0x1D3890F70](v10, v12);

  v15 = v27;
  v16 = v28;
  v27 = 0x4445454446464544;
  v28 = 0xE800000000000000;
  MEMORY[0x1D3890F70](v15, v16);

  v18 = v27;
  v17 = v28;
  LOWORD(v27) = a2;
  sub_1D19F3EEC();
  v19 = sub_1D1E679EC();
  v21 = v20;
  result = sub_1D1E678FC();
  if (__OFSUB__(8, result))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v27 = sub_1D1E679DC();
  v28 = v22;

  MEMORY[0x1D3890F70](v19, v21);

  v23 = v27;
  v24 = v28;
  v27 = v18;
  v28 = v17;

  MEMORY[0x1D3890F70](v23, v24);

  sub_1D1E6792C();
  sub_1D1E6794C();
  sub_1D1E6792C();
  sub_1D1E6794C();
  sub_1D1E6792C();
  sub_1D1E6794C();
  sub_1D1E6792C();
  sub_1D1E6794C();
  sub_1D1E66A0C();
  v25 = sub_1D1E66A7C();
  v26 = *(v25 - 8);
  result = (*(v26 + 48))(v9, 1, v25);
  if (result != 1)
  {

    return (*(v26 + 32))(a3, v9, v25);
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1D1D98E30()
{
  result = qword_1EC64F488;
  if (!qword_1EC64F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F488);
  }

  return result;
}

uint64_t UUID.isMatterDevice.getter()
{
  sub_1D1E66A1C();
  v0 = sub_1D1E679AC();

  return v0 & 1;
}

uint64_t static UUID.transferRepresentation.getter()
{
  v0 = sub_1D1E66F6C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E66F5C();
  v4 = sub_1D1E66A7C();
  v5 = sub_1D174A5FC(&qword_1EC64F490);
  return MEMORY[0x1D3890480](v3, &unk_1D1EAF438, 0, &unk_1D1EAF440, 0, v4, v5);
}