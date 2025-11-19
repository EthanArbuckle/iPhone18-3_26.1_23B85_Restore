uint64_t sub_1C6E7E35C()
{
  result = sub_1C6EE44B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C6E7E45C();
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding(0);
        sub_1C6E8005C(&qword_1EC1F8990, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding);
        sub_1C6EE4590();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E7E45C()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_Embedding(0) + 24);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  sub_1C6E8005C(&qword_1EC1F89B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E7E510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6E7E60C(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding(0);
      sub_1C6E8005C(&qword_1EC1F8990, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding);
      sub_1C6EE46D0();
    }

    v8 = v5 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_Embedding(0) + 20);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E7E60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F89F0, &unk_1C6EF1170);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_Embedding(0);
  sub_1C6E80E08(a1 + *(v14 + 24), v8, &qword_1EC1F89F0, &unk_1C6EF1170);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E80E70(v8, &qword_1EC1F89F0, &unk_1C6EF1170);
  }

  sub_1C6E80F30(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
  sub_1C6E8005C(&qword_1EC1F89B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
  sub_1C6EE46E0();
  return sub_1C6E80ED0(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
}

uint64_t sub_1C6E7E81C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v4 = &a2[*(a1 + 20)];
  sub_1C6EE4420();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t (*sub_1C6E7E8C4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_102;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6E7E91C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E8005C(&qword_1EC1F89E8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_Embedding);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E7E9BC(uint64_t a1)
{
  v2 = sub_1C6E8005C(&qword_1EC1F89D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_Embedding);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E7EA28()
{
  sub_1C6E8005C(&qword_1EC1F89D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_Embedding);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E7EAA8()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212B60);
  __swift_project_value_buffer(v0, qword_1EC212B60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "uuid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dimension";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "tokenizer_spec";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E7ECC4()
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1C6E7EE2C();
        break;
      case 2:
        sub_1C6EE4560();
        break;
      case 1:
        sub_1C6E7ED78();
        break;
    }
  }

  return result;
}

uint64_t sub_1C6E7ED78()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0) + 24);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  sub_1C6E8005C(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E7EE2C()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0) + 28);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  sub_1C6E8005C(qword_1EDEF89C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E7EEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E7EF98(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_1C6EE46A0();
    }

    sub_1C6E7F1A8(v3, a1, a2, a3);
    v9 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0) + 20);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E7EF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  sub_1C6E80E08(a1 + *(v14 + 24), v8, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E80E70(v8, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6E80F30(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E8005C(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EE46E0();
  return sub_1C6E80ED0(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6E7F1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8968, &qword_1C6EEEF08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  sub_1C6E80E08(a1 + *(v14 + 28), v8, &qword_1EC1F8968, &qword_1C6EEEF08);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E80E70(v8, &qword_1EC1F8968, &qword_1C6EEEF08);
  }

  sub_1C6E80F30(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec);
  sub_1C6E8005C(qword_1EDEF89C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec);
  sub_1C6EE46E0();
  return sub_1C6E80ED0(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec);
}

uint64_t sub_1C6E7F3BC@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[a1[5]];
  sub_1C6EE4420();
  v5 = a1[6];
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a2[v7], 1, 1, v8);
}

uint64_t sub_1C6E7F4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E7F51C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E7F590(uint64_t a1, uint64_t a2))()
{
  result = nullsub_103;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6E7F5E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E8005C(&qword_1EC1F8A08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E7F688(uint64_t a1)
{
  v2 = sub_1C6E8005C(&qword_1EC1F89B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E7F6F4()
{
  sub_1C6E8005C(&qword_1EC1F89B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E7F774()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212B78);
  __swift_project_value_buffer(v0, qword_1EC212B78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "token";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "vector";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E7F93C()
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6EE4580();
    }

    else if (result == 2)
    {
      sub_1C6EE44F0();
    }
  }

  return result;
}

uint64_t sub_1C6E7F9C8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1C6EE46C0(), !v1))
  {
    if (!*(v0[2] + 16) || (result = sub_1C6EE4630(), !v1))
    {
      v6 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding(0) + 24);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E7FA80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1 + 24);
  return sub_1C6EE4420();
}

uint64_t sub_1C6E7FAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E7FB44(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E7FBB8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_104;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6E7FC10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E8005C(&qword_1EC1F8A10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E7FCB0@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C6EE4720();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1C6E7FD4C(uint64_t a1)
{
  v2 = sub_1C6E8005C(&qword_1EC1F8990, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E7FDB8()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E7FE10()
{
  sub_1C6E8005C(&qword_1EC1F8990, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E7FE8C()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E7FEE0(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1C6EE54B0() & 1) == 0 || (sub_1C6E59708(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  sub_1C6EE4430();
  sub_1C6E8005C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E8005C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6E802BC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E803CC(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8968, &qword_1C6EEEF08);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = &v47 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8A00, &qword_1C6EEF398);
  v10 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v47 - v11;
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v55 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = (&v47 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v47 - v23;
  v51 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  v25 = *(v51 + 24);
  v26 = *(v21 + 56);
  v56 = a1;
  sub_1C6E80E08(a1 + v25, v24, &qword_1EC1F7EF0, &unk_1C6EE9280);
  sub_1C6E80E08(a2 + v25, &v24[v26], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v27 = *(v13 + 48);
  if (v27(v24, 1, v12) == 1)
  {
    if (v27(&v24[v26], 1, v12) == 1)
    {
      sub_1C6E80E70(v24, &qword_1EC1F7EF0, &unk_1C6EE9280);
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  sub_1C6E80E08(v24, v19, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if (v27(&v24[v26], 1, v12) == 1)
  {
    sub_1C6E80ED0(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    v28 = &qword_1EC1F8220;
    v29 = &qword_1C6EEC6E0;
LABEL_7:
    v30 = v24;
LABEL_8:
    sub_1C6E80E70(v30, v28, v29);
    goto LABEL_23;
  }

  v31 = v55;
  sub_1C6E80F30(&v24[v26], v55, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  if ((*v19 != *v31 || v19[1] != v31[1]) && (sub_1C6EE54B0() & 1) == 0)
  {
    sub_1C6E80ED0(v31, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    sub_1C6E80ED0(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    v28 = &qword_1EC1F7EF0;
    v29 = &unk_1C6EE9280;
    goto LABEL_7;
  }

  v32 = *(v12 + 20);
  sub_1C6EE4430();
  sub_1C6E8005C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v33 = sub_1C6EE4A50();
  sub_1C6E80ED0(v31, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E80ED0(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E80E70(v24, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((v33 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  if (*v56 != *a2)
  {
    goto LABEL_23;
  }

  v34 = v51;
  v35 = *(v51 + 28);
  v36 = *(v50 + 48);
  v37 = v54;
  sub_1C6E80E08(v56 + v35, v54, &qword_1EC1F8968, &qword_1C6EEEF08);
  sub_1C6E80E08(a2 + v35, v37 + v36, &qword_1EC1F8968, &qword_1C6EEEF08);
  v38 = v53;
  v39 = *(v52 + 48);
  if (v39(v37, 1, v53) != 1)
  {
    v40 = v49;
    sub_1C6E80E08(v37, v49, &qword_1EC1F8968, &qword_1C6EEEF08);
    if (v39(v37 + v36, 1, v38) != 1)
    {
      v41 = v37 + v36;
      v42 = v48;
      sub_1C6E80F30(v41, v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec);
      v43 = sub_1C6E8B274(v40, v42);
      sub_1C6E80ED0(v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec);
      sub_1C6E80ED0(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec);
      sub_1C6E80E70(v37, &qword_1EC1F8968, &qword_1C6EEEF08);
      if (v43)
      {
        goto LABEL_22;
      }

LABEL_23:
      v45 = 0;
      return v45 & 1;
    }

    sub_1C6E80ED0(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec);
    goto LABEL_19;
  }

  if (v39(v37 + v36, 1, v38) != 1)
  {
LABEL_19:
    v28 = &qword_1EC1F8A00;
    v29 = &qword_1C6EEF398;
    v30 = v37;
    goto LABEL_8;
  }

  sub_1C6E80E70(v37, &qword_1EC1F8968, &qword_1C6EEEF08);
LABEL_22:
  v44 = *(v34 + 20);
  sub_1C6EE4430();
  sub_1C6E8005C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v45 = sub_1C6EE4A50();
  return v45 & 1;
}

uint64_t sub_1C6E80A9C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v27 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F89F0, &unk_1C6EF1170);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v25 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F89F8, &qword_1C6EEF390);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  v26 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_Embedding(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 56);
  v28 = a1;
  sub_1C6E80E08(a1 + v17, v16, &qword_1EC1F89F0, &unk_1C6EF1170);
  sub_1C6E80E08(a2 + v17, &v16[v18], &qword_1EC1F89F0, &unk_1C6EF1170);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1C6E80E70(v16, &qword_1EC1F89F0, &unk_1C6EF1170);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1C6E80E08(v16, v11, &qword_1EC1F89F0, &unk_1C6EF1170);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1C6E80ED0(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
LABEL_6:
    sub_1C6E80E70(v16, &qword_1EC1F89F8, &qword_1C6EEF390);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v27;
  sub_1C6E80F30(&v16[v18], v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
  v21 = sub_1C6E803CC(v11, v20);
  sub_1C6E80ED0(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
  sub_1C6E80ED0(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
  sub_1C6E80E70(v16, &qword_1EC1F89F0, &unk_1C6EF1170);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_1C6E5EB40(*v28, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = *(v26 + 20);
  sub_1C6EE4430();
  sub_1C6E8005C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v23 = sub_1C6EE4A50();
  return v23 & 1;
}

uint64_t sub_1C6E80E08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E80E70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6E80ED0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E80F30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C6E80FC0()
{
  sub_1C6E7E130(319, &qword_1EC1F8A28, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v1 <= 0x3F)
    {
      sub_1C6E7E130(319, &qword_1EC1F8A30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6E810E4()
{
  sub_1C6E81178();
  if (v0 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6E81178()
{
  if (!qword_1EDEF67B8)
  {
    v0 = sub_1C6EE4D50();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEF67B8);
    }
  }
}

void sub_1C6E81280()
{
  if (!qword_1EDEF7CE8[0])
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
    v0 = sub_1C6EE4FE0();
    if (!v1)
    {
      atomic_store(v0, qword_1EDEF7CE8);
    }
  }
}

uint64_t sub_1C6E812F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6EE44B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1C6E81BA0(a1, v5, a2, a3, MEMORY[0x1E69AABE8], MEMORY[0x1E69AABB0]);
          break;
        case 2:
          sub_1C6EE4580();
          break;
        case 1:
          sub_1C6E81AE8(a1, v5, a2, a3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
          break;
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E81414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E81D68(v3, a1, a2, a3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
  if (!v4)
  {
    v6 = *v3;
    v7 = v3[1];
    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      sub_1C6EE46C0();
    }

    if (*(v3[2] + 16))
    {
      sub_1C6EE4400();
      sub_1C6EE43F0();
      sub_1C6EE4620();
    }

    v9 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec(0) + 24);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t (*sub_1C6E81570(uint64_t a1, uint64_t a2))()
{
  result = nullsub_105;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6E815C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E8255C(&qword_1EC1F8A68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E81668(uint64_t a1)
{
  v2 = sub_1C6E8255C(qword_1EDEF74C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E816D4()
{
  sub_1C6E8255C(qword_1EDEF74C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E817B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C6EE65B0;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = "id";
  *(v13 + 8) = 2;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  v15 = sub_1C6EE46F0();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = a3;
  *(v17 + 1) = 13;
  v17[16] = 2;
  v18 = *MEMORY[0x1E69AADE8];
  v16();
  v19 = v12 + 2 * v9 + v8[14];
  *(v12 + 2 * v9) = 3;
  *v19 = a4;
  *(v19 + 8) = a5;
  *(v19 + 16) = 2;
  v16();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E819CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6EE44B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1C6E81BA0(a1, v5, a2, a3, MEMORY[0x1E69AABB0], MEMORY[0x1E69AABE8]);
          break;
        case 2:
          sub_1C6EE4580();
          break;
        case 1:
          sub_1C6E81AE8(a1, v5, a2, a3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TextCodesSpec);
          break;
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E81AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 28);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  sub_1C6E8255C(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E81BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5(0);
  a6(0);
  return sub_1C6EE44A0();
}

uint64_t sub_1C6E81C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E81D68(v3, a1, a2, a3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TextCodesSpec);
  if (!v4)
  {
    v6 = *v3;
    v7 = v3[1];
    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      sub_1C6EE46C0();
    }

    if (*(v3[2] + 16))
    {
      sub_1C6EE43F0();
      sub_1C6EE4400();
      sub_1C6EE4620();
    }

    v9 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TextCodesSpec(0) + 24);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E81D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v18[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0);
  sub_1C6E82B3C(a1 + *(v16 + 28), v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1C6E82BAC(v10, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6E82C68(v10, v15);
  sub_1C6E8255C(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EE46E0();
  return sub_1C6E82C0C(v15);
}

uint64_t sub_1C6E81F68@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  *(a3 + 2) = a2(MEMORY[0x1E69E7CC0]);
  v5 = &a3[*(a1 + 24)];
  sub_1C6EE4420();
  v6 = *(a1 + 28);
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v8 = *(*(v7 - 8) + 56);

  return v8(&a3[v6], 1, 1, v7);
}

uint64_t sub_1C6E82020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E82094(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E82108(uint64_t a1, uint64_t a2))()
{
  result = nullsub_106;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6E82160(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E8255C(&qword_1EC1F8A70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TextCodesSpec);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E82200@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C6EE4720();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1C6E8229C(uint64_t a1)
{
  v2 = sub_1C6E8255C(&qword_1EDEF62E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TextCodesSpec);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E82308()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E82360()
{
  sub_1C6E8255C(&qword_1EDEF62E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TextCodesSpec);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E823DC()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E824DC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E8255C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6E82780(void *a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void, void))
{
  v34 = a4;
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v33 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v33 - v19;
  v21 = a3(0);
  v22 = *(v21 + 28);
  v23 = *(v17 + 56);
  sub_1C6E82B3C(a1 + v22, v20);
  sub_1C6E82B3C(a2 + v22, &v20[v23]);
  v24 = *(v8 + 48);
  if (v24(v20, 1, v7) != 1)
  {
    sub_1C6E82B3C(v20, v15);
    if (v24(&v20[v23], 1, v7) != 1)
    {
      sub_1C6E82C68(&v20[v23], v11);
      v29 = *v15 == *v11 && v15[1] == v11[1];
      if (v29 || (sub_1C6EE54B0() & 1) != 0)
      {
        v30 = *(v7 + 20);
        sub_1C6EE4430();
        sub_1C6E8255C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
        v31 = sub_1C6EE4A50();
        sub_1C6E82C0C(v11);
        sub_1C6E82C0C(v15);
        sub_1C6E82BAC(v20, &qword_1EC1F7EF0, &unk_1C6EE9280);
        if ((v31 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      }

      sub_1C6E82C0C(v11);
      sub_1C6E82C0C(v15);
      v25 = &qword_1EC1F7EF0;
      v26 = &unk_1C6EE9280;
LABEL_7:
      sub_1C6E82BAC(v20, v25, v26);
      goto LABEL_8;
    }

    sub_1C6E82C0C(v15);
LABEL_6:
    v25 = &qword_1EC1F8220;
    v26 = &qword_1C6EEC6E0;
    goto LABEL_7;
  }

  if (v24(&v20[v23], 1, v7) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6E82BAC(v20, &qword_1EC1F7EF0, &unk_1C6EE9280);
LABEL_16:
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_1C6EE54B0()) && (v34(a1[2], a2[2]))
  {
    v32 = *(v21 + 24);
    sub_1C6EE4430();
    sub_1C6E8255C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    v27 = sub_1C6EE4A50();
    return v27 & 1;
  }

LABEL_8:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_1C6E82B3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6E82BAC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6E82C0C(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6E82C68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6EE4430();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1C6E82F78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  sub_1C6E83034(319, a4);
  if (v4 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v5 <= 0x3F)
    {
      sub_1C6E81280();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6E83034(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C6EE49E0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1C6E83108()
{
  sub_1C6EE4430();
  if (v0 <= 0x3F)
  {
    sub_1C6E83278(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    if (v1 <= 0x3F)
    {
      sub_1C6E83278(319, qword_1EDEF6D68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
      if (v2 <= 0x3F)
      {
        sub_1C6E83278(319, qword_1EDEF7078, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
        if (v3 <= 0x3F)
        {
          sub_1C6E83278(319, qword_1EDEF73C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec);
          if (v4 <= 0x3F)
          {
            sub_1C6E83278(319, qword_1EDEF7478, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C6E83278(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6EE4FE0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_8Tm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_1C6EE4430();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = v10;
    v13 = *(v11 + 48);
    v14 = a1;
LABEL_5:

    return v13(v14, a2, v12);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v16 = *(v15 - 8);
  if (*(v16 + 84) == a2)
  {
    v12 = v15;
    v13 = *(v16 + 48);
    v14 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + *(a3 + 24);

  return v19(v20, a2, v18);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = sub_1C6EE4430();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = v12;
    v15 = *(v13 + 56);
    v16 = a1;
LABEL_5:

    return v15(v16, a2, a2, v14);
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v18 = *(v17 - 8);
  if (*(v18 + 84) == a3)
  {
    v14 = v17;
    v15 = *(v18 + 56);
    v16 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + *(a4 + 24);

  return v21(v22, a2, a2, v20);
}

void sub_1C6E836D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_1C6EE4430();
  if (v7 <= 0x3F)
  {
    sub_1C6E83278(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    if (v8 <= 0x3F)
    {
      sub_1C6E83278(319, a4, a5);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_17Tm_0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_18Tm_0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6E8394C()
{
  result = sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C6E839DC(uint64_t a1@<X8>)
{
  sub_1C6E8C39C();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_1C6E83A20(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1C6E8C39C();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

uint64_t sub_1C6E83A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E8C2F4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1C6E83AA8()
{
  result = qword_1EDEF6A58;
  if (!qword_1EDEF6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF6A58);
  }

  return result;
}

unint64_t sub_1C6E83B30()
{
  result = qword_1EDEF6A60;
  if (!qword_1EDEF6A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF6A60);
  }

  return result;
}

unint64_t sub_1C6E83B88()
{
  result = qword_1EDEF6A50;
  if (!qword_1EDEF6A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF6A50);
  }

  return result;
}

unint64_t sub_1C6E83BDC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_1C6E83C04@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C6E83C20()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E83C8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E8C348();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6E83CD8()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

unint64_t sub_1C6E83D44()
{
  result = qword_1EDEF6B08;
  if (!qword_1EDEF6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF6B08);
  }

  return result;
}

uint64_t sub_1C6E83DC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C6E83E20()
{
  result = qword_1EDEF6B10;
  if (!qword_1EDEF6B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF6B10);
  }

  return result;
}

unint64_t sub_1C6E83E78()
{
  result = qword_1EDEF6B00;
  if (!qword_1EDEF6B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF6B00);
  }

  return result;
}

uint64_t sub_1C6E83ECC()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212BC0);
  __swift_project_value_buffer(v0, qword_1EC212BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EEA120;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "normalizer_spec";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "splitter_spec";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "ngrams_spec";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v9();
  v16 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v16 = "codes_spec";
  *(v16 + 8) = 10;
  *(v16 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E84168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_1C6E876F0(a1, v5, a2, a3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec);
      }

      else if (result == 2)
      {
        sub_1C6E84284();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_1C6E84338();
          break;
        case 4:
          sub_1C6E843EC();
          break;
        case 5:
          sub_1C6E844A0();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1C6E84284()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0) + 24);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0);
  sub_1C6E88D5C(&qword_1EC1F8B80, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E84338()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0) + 28);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec(0);
  sub_1C6E88D5C(qword_1EDEF70C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E843EC()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0) + 32);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec(0);
  sub_1C6E88D5C(qword_1EDEF7418, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E844A0()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0) + 36);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec(0);
  sub_1C6E88D5C(qword_1EDEF74C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E84554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E878D8(v3, a1, a2, a3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec);
  if (!v4)
  {
    sub_1C6E84620(v3, a1, a2, a3);
    sub_1C6E84830(v3, a1, a2, a3);
    sub_1C6E84A40(v3, a1, a2, a3);
    sub_1C6E84C50(v3, a1, a2, a3);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E84620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD8, &qword_1C6EE8B68);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  sub_1C6E8C22C(a1 + *(v14 + 24), v8, &qword_1EC1F7DD8, &qword_1C6EE8B68);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E8C294(v8, &qword_1EC1F7DD8, &qword_1C6EE8B68);
  }

  sub_1C6E8C1C4(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
  sub_1C6E88D5C(&qword_1EC1F8B80, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
  sub_1C6EE46E0();
  return sub_1C6E8C164(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
}

uint64_t sub_1C6E84830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD0, &qword_1C6EE8B60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  sub_1C6E8C22C(a1 + *(v14 + 28), v8, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E8C294(v8, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  }

  sub_1C6E8C1C4(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
  sub_1C6E88D5C(qword_1EDEF70C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
  sub_1C6EE46E0();
  return sub_1C6E8C164(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
}

uint64_t sub_1C6E84A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC8, &qword_1C6EE8B58);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  sub_1C6E8C22C(a1 + *(v14 + 32), v8, &qword_1EC1F7DC8, &qword_1C6EE8B58);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E8C294(v8, &qword_1EC1F7DC8, &qword_1C6EE8B58);
  }

  sub_1C6E8C1C4(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec);
  sub_1C6E88D5C(qword_1EDEF7418, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec);
  sub_1C6EE46E0();
  return sub_1C6E8C164(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec);
}

uint64_t sub_1C6E84C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC0, &qword_1C6EE8B50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  sub_1C6E8C22C(a1 + *(v14 + 36), v8, &qword_1EC1F7DC0, &qword_1C6EE8B50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E8C294(v8, &qword_1EC1F7DC0, &qword_1C6EE8B50);
  }

  sub_1C6E8C1C4(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
  sub_1C6E88D5C(qword_1EDEF74C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
  sub_1C6EE46E0();
  return sub_1C6E8C164(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
}

uint64_t sub_1C6E84E60@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6EE4420();
  v4 = a1[5];
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[7];
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec(0);
  (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  v10 = a1[8];
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v12 = a1[9];
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec(0);
  v14 = *(*(v13 - 8) + 56);

  return v14(a2 + v12, 1, 1, v13);
}

uint64_t sub_1C6E85060(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E88D5C(&qword_1EC1F8B78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E85100(uint64_t a1)
{
  v2 = sub_1C6E88D5C(qword_1EDEF89C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E8516C()
{
  sub_1C6E88D5C(qword_1EDEF89C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E851EC()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212BD8);
  __swift_project_value_buffer(v0, qword_1EC212BD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EED1D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "wordpiece_normalizer_spec";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "splitter_spec";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "codes_spec";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "suffix_indicator";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "max_bytes_per_word";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "split_nonspaced_cjk_chars";
  *(v21 + 1) = 25;
  v21[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E854FC()
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          sub_1C6E85648();
          break;
        case 2:
          sub_1C6E856FC();
          break;
        case 3:
          sub_1C6E857B0();
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_1C6EE4540();
      }

      else if (result == 7)
      {
        sub_1C6EE44D0();
      }
    }

    else if (result == 4)
    {
      sub_1C6E85864();
    }

    else
    {
      sub_1C6EE4580();
    }
  }

  return result;
}

uint64_t sub_1C6E85648()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec(0) + 32);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  sub_1C6E88D5C(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E856FC()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec(0) + 36);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec(0);
  sub_1C6E88D5C(&qword_1EC1F8B98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E857B0()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec(0) + 40);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec(0);
  sub_1C6E88D5C(qword_1EDEF70C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E85864()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec(0) + 44);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec(0);
  sub_1C6E88D5C(qword_1EDEF74C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E85918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E85A58(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6E85C68(v3, a1, a2, a3);
    sub_1C6E85E78(v3, a1, a2, a3);
    sub_1C6E86088(v3, a1, a2, a3);
    v9 = *v3;
    v10 = *(v3 + 8);
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_1C6EE46C0();
    }

    if (*(v3 + 16))
    {
      sub_1C6EE4690();
    }

    if (*(v3 + 20) == 1)
    {
      sub_1C6EE4650();
    }

    v12 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec(0) + 28);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E85A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec(0);
  sub_1C6E8C22C(a1 + *(v14 + 32), v8, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E8C294(v8, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6E8C1C4(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E88D5C(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EE46E0();
  return sub_1C6E8C164(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6E85C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B90, &qword_1C6EF0738);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec(0);
  sub_1C6E8C22C(a1 + *(v14 + 36), v8, &qword_1EC1F8B90, &qword_1C6EF0738);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E8C294(v8, &qword_1EC1F8B90, &qword_1C6EF0738);
  }

  sub_1C6E8C1C4(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec);
  sub_1C6E88D5C(&qword_1EC1F8B98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec);
  sub_1C6EE46E0();
  return sub_1C6E8C164(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec);
}

uint64_t sub_1C6E85E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD0, &qword_1C6EE8B60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec(0);
  sub_1C6E8C22C(a1 + *(v14 + 40), v8, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E8C294(v8, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  }

  sub_1C6E8C1C4(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
  sub_1C6E88D5C(qword_1EDEF70C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
  sub_1C6EE46E0();
  return sub_1C6E8C164(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
}

uint64_t sub_1C6E86088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC0, &qword_1C6EE8B50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec(0);
  sub_1C6E8C22C(a1 + *(v14 + 44), v8, &qword_1EC1F7DC0, &qword_1C6EE8B50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E8C294(v8, &qword_1EC1F7DC0, &qword_1C6EE8B50);
  }

  sub_1C6E8C1C4(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
  sub_1C6E88D5C(qword_1EDEF74C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
  sub_1C6EE46E0();
  return sub_1C6E8C164(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
}

uint64_t sub_1C6E86298@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 20) = 0;
  v4 = a2 + a1[7];
  sub_1C6EE4420();
  v5 = a1[8];
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[9];
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[10];
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec(0);
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v11 = a1[11];
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a2 + v11, 1, 1, v12);
}

uint64_t sub_1C6E86418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E8648C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E86500(uint64_t a1, uint64_t a2))()
{
  result = nullsub_110;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1C6E86558(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E88D5C(&qword_1EC1F8B88, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E865F8(uint64_t a1)
{
  v2 = sub_1C6E88D5C(&qword_1EC1F8B20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E86664()
{
  sub_1C6E88D5C(&qword_1EC1F8B20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E866F0()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec(0) + 24);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy(0);
  sub_1C6E88D5C(qword_1EDEF6BC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E867A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1F7510, &unk_1C6EE66A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec(0);
  sub_1C6E8C22C(a1 + *(v14 + 24), v8, qword_1EC1F7510, &unk_1C6EE66A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E8C294(v8, qword_1EC1F7510, &unk_1C6EE66A0);
  }

  sub_1C6E8C1C4(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy);
  sub_1C6E88D5C(qword_1EDEF6BC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy);
  sub_1C6EE46E0();
  return sub_1C6E8C164(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy);
}

uint64_t sub_1C6E86A8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E88D5C(&qword_1EC1F8BA8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E86B2C(uint64_t a1)
{
  v2 = sub_1C6E88D5C(qword_1EDEF70C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E86B98()
{
  sub_1C6E88D5C(qword_1EDEF70C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E86C30(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C6EE6B40;
  v10 = (v9 + v8);
  v11 = v9 + v8 + v6[14];
  *v10 = 1;
  *v11 = "strategy_type";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v13 = sub_1C6EE46F0();
  v14 = *(*(v13 - 8) + 104);
  (v14)(v11, v12, v13);
  v15 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v15 = a3;
  *(v15 + 1) = a4;
  v15[16] = 2;
  v14();
  return sub_1C6EE4700();
}

uint64_t (*sub_1C6E86E0C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_112;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6E86EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E88D5C(&qword_1EC1F8BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E86F50(uint64_t a1)
{
  v2 = sub_1C6E88D5C(qword_1EDEF6BC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E86FBC()
{
  sub_1C6E88D5C(qword_1EDEF6BC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E87088(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E88D5C(&qword_1EC1F8BB8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategyType);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E87128(uint64_t a1)
{
  v2 = sub_1C6E88D5C(&qword_1EC1F8AE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategyType);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E87194()
{
  sub_1C6E88D5C(&qword_1EC1F8AE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategyType);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E87210()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212C38);
  __swift_project_value_buffer(v0, qword_1EC212C38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EEA170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NO_SPLIT";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SPLIT_ON_STRING";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SPLIT_ON_PATTERN";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E87484(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C6EE6B40;
  v8 = (v7 + v6);
  v9 = v7 + v6 + v4[14];
  *v8 = 1;
  *v9 = "id";
  *(v9 + 8) = 2;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADC8];
  v11 = sub_1C6EE46F0();
  v12 = *(*(v11 - 8) + 104);
  (v12)(v9, v10, v11);
  v13 = v8 + v5 + v4[14];
  *(v8 + v5) = 2;
  *v13 = "strategy";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v12();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E87644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6E876F0(a1, v9, a2, a3, a4);
    }

    else if (result == 2)
    {
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6E876F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 20);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  sub_1C6E88D5C(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E877A8()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec(0) + 24);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy(0);
  sub_1C6E88D5C(qword_1EDEF6E58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E8785C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = sub_1C6E878D8(v5, a1, a2, a3, a4);
  if (!v6)
  {
    a5(v5, a1, a2, a3);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E878D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v18[3] = a4;
  v18[0] = a2;
  v18[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0);
  sub_1C6E8C22C(a1 + *(v16 + 20), v10, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1C6E8C294(v10, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6E8C1C4(v10, v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E88D5C(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EE46E0();
  return sub_1C6E8C164(v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6E87AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EC8, &unk_1C6EE90C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec(0);
  sub_1C6E8C22C(a1 + *(v14 + 24), v8, &qword_1EC1F7EC8, &unk_1C6EE90C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E8C294(v8, &qword_1EC1F7EC8, &unk_1C6EE90C0);
  }

  sub_1C6E8C1C4(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy);
  sub_1C6E88D5C(qword_1EDEF6E58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy);
  sub_1C6EE46E0();
  return sub_1C6E8C164(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy);
}

uint64_t sub_1C6E87D14@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  sub_1C6EE4420();
  v6 = *(a1 + 20);
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = *(a1 + 24);
  v9 = a2(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a3 + v8, 1, 1, v9);
}

uint64_t sub_1C6E87EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E88D5C(&qword_1EC1F8BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E87F40(uint64_t a1)
{
  v2 = sub_1C6E88D5C(qword_1EDEF7418, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E87FAC()
{
  sub_1C6E88D5C(qword_1EDEF7418, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E88044(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4();
      sub_1C6EE44E0();
    }

    else if (result == 2)
    {
      sub_1C6EE4580();
    }
  }

  return result;
}

uint64_t sub_1C6E88100(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t (*a6)(void))
{
  if (!*v6 || (v13 = *v6, v14 = *(v6 + 8), a4(a1, a2), result = sub_1C6EE4660(), !v7))
  {
    v10 = v6[3];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v6[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v11 || (result = sub_1C6EE46C0(), !v7))
    {
      v12 = v6 + *(a6(0) + 24);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E881F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return sub_1C6EE4420();
}

uint64_t sub_1C6E88248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E882BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E88330(uint64_t a1, uint64_t a2))()
{
  result = nullsub_115;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6E883D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E88D5C(&qword_1EC1F8BC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E88474(uint64_t a1)
{
  v2 = sub_1C6E88D5C(qword_1EDEF6E58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E884E0()
{
  sub_1C6E88D5C(qword_1EDEF6E58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E8856C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1C6EE4710();
}

uint64_t sub_1C6E885B4()
{
  do
  {
    result = sub_1C6EE44B0();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_1C6E8862C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C6E88694(uint64_t a1)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6E88720(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E88D5C(&qword_1EC1F8BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategyType);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E887C0(uint64_t a1)
{
  v2 = sub_1C6E88D5C(&qword_1EC1F8AA0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategyType);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E8882C()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E88884()
{
  sub_1C6E88D5C(&qword_1EC1F8AA0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategyType);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E88900()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E88954()
{
  sub_1C6EE4430();
  sub_1C6E88D5C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E889DC()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212C98);
  __swift_project_value_buffer(v0, qword_1EC212C98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NO_NGRAMS";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "DICTIONARY_GREEDY_LTR";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E88C10@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C6EE4720();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1C6E88D5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6E8945C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E8968C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        if (v2 != 2)
        {
          return 0;
        }
      }

      else if (v2 != 3)
      {
        return 0;
      }
    }

    else if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (v4 || (sub_1C6EE54B0() & 1) != 0)
  {
    v5 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy(0) + 24);
    sub_1C6EE4430();
    sub_1C6E88D5C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    return sub_1C6EE4A50() & 1;
  }

  return 0;
}

uint64_t sub_1C6E897A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (sub_1C6EE54B0() & 1) != 0)
  {
    v5 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy(0) + 24);
    sub_1C6EE4430();
    sub_1C6E88D5C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    return sub_1C6EE4A50() & 1;
  }

  return 0;
}

uint64_t sub_1C6E898A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy(0);
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1F7510, &unk_1C6EE66A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = (&v47 - v9);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B68, &qword_1C6EF0728);
  v10 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v47 - v11;
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v50 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = (&v47 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v47 - v23;
  v51 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec(0);
  v25 = *(v51 + 20);
  v26 = *(v21 + 56);
  v56 = a1;
  sub_1C6E8C22C(a1 + v25, v24, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v27 = a2 + v25;
  v28 = a2;
  sub_1C6E8C22C(v27, &v24[v26], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v29 = *(v13 + 48);
  if (v29(v24, 1, v12) != 1)
  {
    sub_1C6E8C22C(v24, v19, &qword_1EC1F7EF0, &unk_1C6EE9280);
    if (v29(&v24[v26], 1, v12) != 1)
    {
      v33 = v50;
      sub_1C6E8C1C4(&v24[v26], v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      if (*v19 == *v33 && v19[1] == v33[1] || (sub_1C6EE54B0() & 1) != 0)
      {
        v34 = *(v12 + 20);
        sub_1C6EE4430();
        sub_1C6E88D5C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
        v35 = sub_1C6EE4A50();
        sub_1C6E8C164(v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6E8C164(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6E8C294(v24, &qword_1EC1F7EF0, &unk_1C6EE9280);
        if ((v35 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_12;
      }

      sub_1C6E8C164(v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6E8C164(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v30 = &qword_1EC1F7EF0;
      v31 = &unk_1C6EE9280;
LABEL_7:
      v32 = v24;
LABEL_18:
      sub_1C6E8C294(v32, v30, v31);
      goto LABEL_19;
    }

    sub_1C6E8C164(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    v30 = &qword_1EC1F8220;
    v31 = &qword_1C6EEC6E0;
    goto LABEL_7;
  }

  if (v29(&v24[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6E8C294(v24, &qword_1EC1F7EF0, &unk_1C6EE9280);
LABEL_12:
  v36 = *(v51 + 24);
  v37 = *(v52 + 48);
  v38 = v55;
  sub_1C6E8C22C(v56 + v36, v55, qword_1EC1F7510, &unk_1C6EE66A0);
  sub_1C6E8C22C(v28 + v36, v38 + v37, qword_1EC1F7510, &unk_1C6EE66A0);
  v39 = v54;
  v40 = *(v53 + 48);
  if (v40(v38, 1, v54) == 1)
  {
    if (v40(v38 + v37, 1, v39) == 1)
    {
      sub_1C6E8C294(v38, qword_1EC1F7510, &unk_1C6EE66A0);
LABEL_22:
      sub_1C6EE4430();
      sub_1C6E88D5C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v42 = sub_1C6EE4A50();
      return v42 & 1;
    }

    goto LABEL_17;
  }

  v41 = v49;
  sub_1C6E8C22C(v38, v49, qword_1EC1F7510, &unk_1C6EE66A0);
  if (v40(v38 + v37, 1, v39) == 1)
  {
    sub_1C6E8C164(v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy);
LABEL_17:
    v30 = &qword_1EC1F8B68;
    v31 = &qword_1C6EF0728;
    v32 = v38;
    goto LABEL_18;
  }

  v44 = v38 + v37;
  v45 = v48;
  sub_1C6E8C1C4(v44, v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy);
  v46 = sub_1C6E8968C(v41, v45);
  sub_1C6E8C164(v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy);
  sub_1C6E8C164(v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterStrategy);
  sub_1C6E8C294(v38, qword_1EC1F7510, &unk_1C6EE66A0);
  if (v46)
  {
    goto LABEL_22;
  }

LABEL_19:
  v42 = 0;
  return v42 & 1;
}

uint64_t sub_1C6E89F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy(0);
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EC8, &unk_1C6EE90C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = (&v47 - v9);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B70, &qword_1C6EF0730);
  v10 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v47 - v11;
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v50 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = (&v47 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v47 - v23;
  v51 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec(0);
  v25 = *(v51 + 20);
  v26 = *(v21 + 56);
  v56 = a1;
  sub_1C6E8C22C(a1 + v25, v24, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v27 = a2 + v25;
  v28 = a2;
  sub_1C6E8C22C(v27, &v24[v26], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v29 = *(v13 + 48);
  if (v29(v24, 1, v12) != 1)
  {
    sub_1C6E8C22C(v24, v19, &qword_1EC1F7EF0, &unk_1C6EE9280);
    if (v29(&v24[v26], 1, v12) != 1)
    {
      v33 = v50;
      sub_1C6E8C1C4(&v24[v26], v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      if (*v19 == *v33 && v19[1] == v33[1] || (sub_1C6EE54B0() & 1) != 0)
      {
        v34 = *(v12 + 20);
        sub_1C6EE4430();
        sub_1C6E88D5C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
        v35 = sub_1C6EE4A50();
        sub_1C6E8C164(v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6E8C164(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6E8C294(v24, &qword_1EC1F7EF0, &unk_1C6EE9280);
        if ((v35 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_12;
      }

      sub_1C6E8C164(v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6E8C164(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v30 = &qword_1EC1F7EF0;
      v31 = &unk_1C6EE9280;
LABEL_7:
      v32 = v24;
LABEL_18:
      sub_1C6E8C294(v32, v30, v31);
      goto LABEL_19;
    }

    sub_1C6E8C164(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    v30 = &qword_1EC1F8220;
    v31 = &qword_1C6EEC6E0;
    goto LABEL_7;
  }

  if (v29(&v24[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6E8C294(v24, &qword_1EC1F7EF0, &unk_1C6EE9280);
LABEL_12:
  v36 = *(v51 + 24);
  v37 = *(v52 + 48);
  v38 = v55;
  sub_1C6E8C22C(v56 + v36, v55, &qword_1EC1F7EC8, &unk_1C6EE90C0);
  sub_1C6E8C22C(v28 + v36, v38 + v37, &qword_1EC1F7EC8, &unk_1C6EE90C0);
  v39 = v54;
  v40 = *(v53 + 48);
  if (v40(v38, 1, v54) == 1)
  {
    if (v40(v38 + v37, 1, v39) == 1)
    {
      sub_1C6E8C294(v38, &qword_1EC1F7EC8, &unk_1C6EE90C0);
LABEL_22:
      sub_1C6EE4430();
      sub_1C6E88D5C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v42 = sub_1C6EE4A50();
      return v42 & 1;
    }

    goto LABEL_17;
  }

  v41 = v49;
  sub_1C6E8C22C(v38, v49, &qword_1EC1F7EC8, &unk_1C6EE90C0);
  if (v40(v38 + v37, 1, v39) == 1)
  {
    sub_1C6E8C164(v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy);
LABEL_17:
    v30 = &qword_1EC1F8B70;
    v31 = &qword_1C6EF0730;
    v32 = v38;
    goto LABEL_18;
  }

  v44 = v38 + v37;
  v45 = v48;
  sub_1C6E8C1C4(v44, v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy);
  v46 = sub_1C6E897A0(v41, v45);
  sub_1C6E8C164(v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy);
  sub_1C6E8C164(v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsStrategy);
  sub_1C6E8C294(v38, &qword_1EC1F7EC8, &unk_1C6EE90C0);
  if (v46)
  {
    goto LABEL_22;
  }

LABEL_19:
  v42 = 0;
  return v42 & 1;
}

uint64_t sub_1C6E8A614(uint64_t a1, uint64_t a2)
{
  v104 = a2;
  v105 = a1;
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec(0);
  v89 = *(v2 - 8);
  v90 = v2;
  v3 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v86 = (&v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC0, &qword_1C6EE8B50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v103 = &v85 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B48, &qword_1C6EF0710);
  v8 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v85 - v9;
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec(0);
  v94 = *(v10 - 8);
  v95 = v10;
  v11 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD0, &qword_1C6EE8B60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v101 = &v85 - v15;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B58, &qword_1C6EF0720);
  v16 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v96 = &v85 - v17;
  v18 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec(0);
  v99 = *(v18 - 8);
  v100 = v18;
  v19 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v92 = (&v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B90, &qword_1C6EF0738);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v97 = &v85 - v23;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8BA0, &unk_1C6EF0740);
  v24 = *(*(v98 - 8) + 64);
  MEMORY[0x1EEE9AC00](v98);
  v26 = &v85 - v25;
  v27 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = (&v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = (&v85 - v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v37 = v36 - 8;
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v85 - v39;
  v102 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceTokenizerSpec(0);
  v41 = *(v102 + 32);
  v42 = *(v37 + 56);
  sub_1C6E8C22C(v105 + v41, v40, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v43 = v104 + v41;
  v44 = v104;
  sub_1C6E8C22C(v43, &v40[v42], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v45 = *(v28 + 48);
  if (v45(v40, 1, v27) == 1)
  {
    if (v45(&v40[v42], 1, v27) == 1)
    {
      sub_1C6E8C294(v40, &qword_1EC1F7EF0, &unk_1C6EE9280);
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  sub_1C6E8C22C(v40, v35, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if (v45(&v40[v42], 1, v27) == 1)
  {
    sub_1C6E8C164(v35, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    v46 = &qword_1EC1F8220;
    v47 = &qword_1C6EEC6E0;
LABEL_7:
    v48 = v40;
LABEL_33:
    sub_1C6E8C294(v48, v46, v47);
    goto LABEL_34;
  }

  sub_1C6E8C1C4(&v40[v42], v31, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  if ((*v35 != *v31 || v35[1] != v31[1]) && (sub_1C6EE54B0() & 1) == 0)
  {
    sub_1C6E8C164(v31, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    sub_1C6E8C164(v35, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    v46 = &qword_1EC1F7EF0;
    v47 = &unk_1C6EE9280;
    goto LABEL_7;
  }

  v49 = *(v27 + 20);
  sub_1C6EE4430();
  sub_1C6E88D5C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v50 = sub_1C6EE4A50();
  sub_1C6E8C164(v31, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E8C164(v35, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E8C294(v40, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((v50 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_12:
  v51 = v102;
  v52 = *(v102 + 36);
  v53 = *(v98 + 48);
  v54 = v105;
  sub_1C6E8C22C(v105 + v52, v26, &qword_1EC1F8B90, &qword_1C6EF0738);
  sub_1C6E8C22C(v44 + v52, &v26[v53], &qword_1EC1F8B90, &qword_1C6EF0738);
  v55 = v100;
  v56 = *(v99 + 48);
  if (v56(v26, 1, v100) == 1)
  {
    v57 = v56(&v26[v53], 1, v55);
    v58 = v103;
    v59 = v101;
    if (v57 == 1)
    {
      sub_1C6E8C294(v26, &qword_1EC1F8B90, &qword_1C6EF0738);
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v60 = v97;
  sub_1C6E8C22C(v26, v97, &qword_1EC1F8B90, &qword_1C6EF0738);
  v61 = v56(&v26[v53], 1, v55);
  v58 = v103;
  v59 = v101;
  if (v61 == 1)
  {
    sub_1C6E8C164(v60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec);
LABEL_17:
    v46 = &qword_1EC1F8BA0;
    v47 = &unk_1C6EF0740;
    v48 = v26;
    goto LABEL_33;
  }

  v62 = &v26[v53];
  v63 = v92;
  sub_1C6E8C1C4(v62, v92, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec);
  v64 = sub_1C6E9A558(v60, v63);
  sub_1C6E8C164(v63, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec);
  sub_1C6E8C164(v60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec);
  sub_1C6E8C294(v26, &qword_1EC1F8B90, &qword_1C6EF0738);
  if ((v64 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_19:
  v65 = v58;
  v66 = v51[10];
  v67 = *(v93 + 48);
  v68 = v96;
  sub_1C6E8C22C(v54 + v66, v96, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  sub_1C6E8C22C(v44 + v66, v68 + v67, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  v69 = v95;
  v70 = *(v94 + 48);
  if (v70(v68, 1, v95) == 1)
  {
    if (v70(v68 + v67, 1, v69) == 1)
    {
      sub_1C6E8C294(v68, &qword_1EC1F7DD0, &qword_1C6EE8B60);
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  sub_1C6E8C22C(v68, v59, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  if (v70(v68 + v67, 1, v69) == 1)
  {
    sub_1C6E8C164(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
LABEL_24:
    v46 = &qword_1EC1F8B58;
    v47 = &qword_1C6EF0720;
    v48 = v68;
    goto LABEL_33;
  }

  v71 = v68 + v67;
  v72 = v87;
  sub_1C6E8C1C4(v71, v87, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
  v73 = sub_1C6E898A4(v59, v72);
  sub_1C6E8C164(v72, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
  sub_1C6E8C164(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
  sub_1C6E8C294(v68, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  if ((v73 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  v74 = v51[11];
  v75 = *(v88 + 48);
  v76 = v91;
  sub_1C6E8C22C(v54 + v74, v91, &qword_1EC1F7DC0, &qword_1C6EE8B50);
  sub_1C6E8C22C(v44 + v74, v76 + v75, &qword_1EC1F7DC0, &qword_1C6EE8B50);
  v77 = v90;
  v78 = *(v89 + 48);
  if (v78(v76, 1, v90) != 1)
  {
    sub_1C6E8C22C(v76, v65, &qword_1EC1F7DC0, &qword_1C6EE8B50);
    if (v78(v76 + v75, 1, v77) != 1)
    {
      v81 = v76 + v75;
      v82 = v86;
      sub_1C6E8C1C4(v81, v86, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
      v83 = sub_1C6E82754(v65, v82);
      sub_1C6E8C164(v82, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
      sub_1C6E8C164(v65, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
      sub_1C6E8C294(v76, &qword_1EC1F7DC0, &qword_1C6EE8B50);
      if ((v83 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_37;
    }

    sub_1C6E8C164(v65, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
    goto LABEL_32;
  }

  if (v78(v76 + v75, 1, v77) != 1)
  {
LABEL_32:
    v46 = &qword_1EC1F8B48;
    v47 = &qword_1C6EF0710;
    v48 = v76;
    goto LABEL_33;
  }

  sub_1C6E8C294(v76, &qword_1EC1F7DC0, &qword_1C6EE8B50);
LABEL_37:
  if (*v54 == *v44 && *(v54 + 8) == *(v44 + 8) || (sub_1C6EE54B0()) && *(v54 + 16) == *(v44 + 16) && *(v54 + 20) == *(v44 + 20))
  {
    v84 = v51[7];
    sub_1C6EE4430();
    sub_1C6E88D5C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    v79 = sub_1C6EE4A50();
    return v79 & 1;
  }

LABEL_34:
  v79 = 0;
  return v79 & 1;
}

uint64_t sub_1C6E8B274(uint64_t a1, uint64_t a2)
{
  v125 = a1;
  v126 = a2;
  v105 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec(0);
  v104 = *(v105 - 8);
  v2 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v101 = (&v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC0, &qword_1C6EE8B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v119 = &v100 - v6;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B48, &qword_1C6EF0710);
  v7 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v100 - v8;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec(0);
  v109 = *(v9 - 8);
  v110 = v9;
  v10 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DC8, &qword_1C6EE8B58);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v118 = &v100 - v14;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B50, &qword_1C6EF0718);
  v15 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108);
  v111 = &v100 - v16;
  v17 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec(0);
  v115 = *(v17 - 8);
  v116 = v17;
  v18 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v107 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD0, &qword_1C6EE8B60);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v112 = &v100 - v22;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B58, &qword_1C6EF0720);
  v23 = *(*(v114 - 8) + 64);
  MEMORY[0x1EEE9AC00](v114);
  v117 = &v100 - v24;
  v25 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0);
  v122 = *(v25 - 8);
  v123 = v25;
  v26 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v113 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD8, &qword_1C6EE8B68);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v120 = &v100 - v30;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B60, &unk_1C6EF2360);
  v31 = *(*(v121 - 8) + 64);
  MEMORY[0x1EEE9AC00](v121);
  v33 = &v100 - v32;
  v34 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = (&v100 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v42 = (&v100 - v41);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v44 = v43 - 8;
  v45 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v100 - v46;
  v124 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec(0);
  v48 = v124[5];
  v49 = *(v44 + 56);
  sub_1C6E8C22C(v125 + v48, v47, &qword_1EC1F7EF0, &unk_1C6EE9280);
  sub_1C6E8C22C(v126 + v48, &v47[v49], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v50 = *(v35 + 48);
  if (v50(v47, 1, v34) == 1)
  {
    if (v50(&v47[v49], 1, v34) == 1)
    {
      sub_1C6E8C294(v47, &qword_1EC1F7EF0, &unk_1C6EE9280);
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  sub_1C6E8C22C(v47, v42, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if (v50(&v47[v49], 1, v34) == 1)
  {
    sub_1C6E8C164(v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    v51 = &qword_1EC1F8220;
    v52 = &qword_1C6EEC6E0;
LABEL_7:
    v53 = v47;
LABEL_41:
    sub_1C6E8C294(v53, v51, v52);
    goto LABEL_42;
  }

  sub_1C6E8C1C4(&v47[v49], v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  if ((*v42 != *v38 || v42[1] != v38[1]) && (sub_1C6EE54B0() & 1) == 0)
  {
    sub_1C6E8C164(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    sub_1C6E8C164(v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    v51 = &qword_1EC1F7EF0;
    v52 = &unk_1C6EE9280;
    goto LABEL_7;
  }

  v54 = *(v34 + 20);
  sub_1C6EE4430();
  sub_1C6E88D5C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v55 = sub_1C6EE4A50();
  sub_1C6E8C164(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E8C164(v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E8C294(v47, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((v55 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_12:
  v56 = v125;
  v57 = v124[6];
  v58 = *(v121 + 48);
  sub_1C6E8C22C(v125 + v57, v33, &qword_1EC1F7DD8, &qword_1C6EE8B68);
  v59 = v126;
  sub_1C6E8C22C(v126 + v57, &v33[v58], &qword_1EC1F7DD8, &qword_1C6EE8B68);
  v60 = v123;
  v61 = *(v122 + 48);
  if (v61(v33, 1, v123) == 1)
  {
    if (v61(&v33[v58], 1, v60) == 1)
    {
      sub_1C6E8C294(v33, &qword_1EC1F7DD8, &qword_1C6EE8B68);
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v62 = v120;
  sub_1C6E8C22C(v33, v120, &qword_1EC1F7DD8, &qword_1C6EE8B68);
  if (v61(&v33[v58], 1, v60) == 1)
  {
    sub_1C6E8C164(v62, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
LABEL_17:
    v51 = &qword_1EC1F8B60;
    v52 = &unk_1C6EF2360;
    v53 = v33;
    goto LABEL_41;
  }

  v63 = &v33[v58];
  v64 = v113;
  sub_1C6E8C1C4(v63, v113, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
  v65 = sub_1C6E9A8FC(v62, v64);
  sub_1C6E8C164(v64, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
  sub_1C6E8C164(v62, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
  sub_1C6E8C294(v33, &qword_1EC1F7DD8, &qword_1C6EE8B68);
  if ((v65 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_19:
  v66 = v124[7];
  v67 = *(v114 + 48);
  v68 = v117;
  sub_1C6E8C22C(v56 + v66, v117, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  sub_1C6E8C22C(v59 + v66, v68 + v67, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  v69 = v116;
  v70 = *(v115 + 48);
  if (v70(v68, 1, v116) == 1)
  {
    v71 = v70(v68 + v67, 1, v69);
    v73 = v118;
    v72 = v119;
    if (v71 == 1)
    {
      sub_1C6E8C294(v68, &qword_1EC1F7DD0, &qword_1C6EE8B60);
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v74 = v112;
  sub_1C6E8C22C(v68, v112, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  v75 = v70(v68 + v67, 1, v69);
  v73 = v118;
  v72 = v119;
  if (v75 == 1)
  {
    sub_1C6E8C164(v74, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
LABEL_24:
    v51 = &qword_1EC1F8B58;
    v52 = &qword_1C6EF0720;
    v53 = v68;
    goto LABEL_41;
  }

  v76 = v68 + v67;
  v77 = v107;
  sub_1C6E8C1C4(v76, v107, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
  v78 = sub_1C6E898A4(v74, v77);
  sub_1C6E8C164(v77, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
  sub_1C6E8C164(v74, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
  sub_1C6E8C294(v68, &qword_1EC1F7DD0, &qword_1C6EE8B60);
  if ((v78 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_27:
  v79 = v124[8];
  v80 = *(v108 + 48);
  v81 = v111;
  sub_1C6E8C22C(v56 + v79, v111, &qword_1EC1F7DC8, &qword_1C6EE8B58);
  v82 = v59 + v79;
  v83 = v81;
  sub_1C6E8C22C(v82, v81 + v80, &qword_1EC1F7DC8, &qword_1C6EE8B58);
  v84 = v110;
  v85 = *(v109 + 48);
  if (v85(v81, 1, v110) != 1)
  {
    sub_1C6E8C22C(v81, v73, &qword_1EC1F7DC8, &qword_1C6EE8B58);
    if (v85(v81 + v80, 1, v84) != 1)
    {
      v86 = v81 + v80;
      v87 = v102;
      sub_1C6E8C1C4(v86, v102, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec);
      v88 = sub_1C6E89F5C(v73, v87);
      sub_1C6E8C164(v87, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec);
      sub_1C6E8C164(v73, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec);
      sub_1C6E8C294(v81, &qword_1EC1F7DC8, &qword_1C6EE8B58);
      if ((v88 & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_34;
    }

    sub_1C6E8C164(v73, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NGramsSpec);
LABEL_32:
    v51 = &qword_1EC1F8B50;
    v52 = &qword_1C6EF0718;
LABEL_40:
    v53 = v83;
    goto LABEL_41;
  }

  if (v85(v81 + v80, 1, v84) != 1)
  {
    goto LABEL_32;
  }

  sub_1C6E8C294(v81, &qword_1EC1F7DC8, &qword_1C6EE8B58);
LABEL_34:
  v89 = v124[9];
  v90 = *(v103 + 48);
  v91 = v106;
  sub_1C6E8C22C(v56 + v89, v106, &qword_1EC1F7DC0, &qword_1C6EE8B50);
  v92 = v59 + v89;
  v83 = v91;
  sub_1C6E8C22C(v92, v91 + v90, &qword_1EC1F7DC0, &qword_1C6EE8B50);
  v93 = *(v104 + 48);
  v94 = v105;
  if (v93(v91, 1, v105) == 1)
  {
    if (v93(v91 + v90, 1, v94) == 1)
    {
      sub_1C6E8C294(v91, &qword_1EC1F7DC0, &qword_1C6EE8B50);
LABEL_45:
      sub_1C6EE4430();
      sub_1C6E88D5C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v95 = sub_1C6EE4A50();
      return v95 & 1;
    }

    goto LABEL_39;
  }

  sub_1C6E8C22C(v91, v72, &qword_1EC1F7DC0, &qword_1C6EE8B50);
  if (v93(v91 + v90, 1, v94) == 1)
  {
    sub_1C6E8C164(v72, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
LABEL_39:
    v51 = &qword_1EC1F8B48;
    v52 = &qword_1C6EF0710;
    goto LABEL_40;
  }

  v97 = v91 + v90;
  v98 = v101;
  sub_1C6E8C1C4(v97, v101, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
  v99 = sub_1C6E82754(v72, v98);
  sub_1C6E8C164(v98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
  sub_1C6E8C164(v72, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
  sub_1C6E8C294(v91, &qword_1EC1F7DC0, &qword_1C6EE8B50);
  if (v99)
  {
    goto LABEL_45;
  }

LABEL_42:
  v95 = 0;
  return v95 & 1;
}

uint64_t sub_1C6E8C164(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E8C1C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E8C22C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E8C294(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1C6E8C2F4()
{
  result = qword_1EDEF6A68[0];
  if (!qword_1EDEF6A68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEF6A68);
  }

  return result;
}

unint64_t sub_1C6E8C348()
{
  result = qword_1EDEF6B18[0];
  if (!qword_1EDEF6B18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEF6B18);
  }

  return result;
}

void sub_1C6E8C3D8()
{
  sub_1C6EE4430();
  if (v0 <= 0x3F)
  {
    sub_1C6E83278(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    if (v1 <= 0x3F)
    {
      sub_1C6E83278(319, &qword_1EC1F8BE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec);
      if (v2 <= 0x3F)
      {
        sub_1C6E83278(319, qword_1EDEF7078, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SplitterSpec);
        if (v3 <= 0x3F)
        {
          sub_1C6E83278(319, qword_1EDEF7478, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_CodesSpec);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_64Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE4430();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_65Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE4430();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C6E8C668()
{
  result = sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID()
{
  result = qword_1EDEF7D18;
  if (!qword_1EDEF7D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E8C8F0()
{
  result = sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6E8C96C()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212CB0);
  __swift_project_value_buffer(v0, qword_1EC212CB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6590;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "string_value";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C6EE46F0();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C6EE4700();
}

uint64_t sub_1C6E8CAD8()
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6EE4580();
    }
  }

  return result;
}

uint64_t sub_1C6E8CB48()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1C6EE46C0(), !v1))
  {
    v6 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID() + 20);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E8CBDC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = a2 + *(a1 + 20);
  return sub_1C6EE4420();
}

uint64_t sub_1C6E8CC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E8CC98(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E8CD0C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_117;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6E8CD68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E8D200(&qword_1EC1F8C20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E8CDE8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1F7310 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6EE4720();
  v3 = __swift_project_value_buffer(v2, qword_1EC212CB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6E8CE90(uint64_t a1)
{
  v2 = sub_1C6E8D200(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E8CEFC()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E8CF54()
{
  sub_1C6E8D200(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E8CFD0()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E8D024(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  sub_1C6EE4430();
  sub_1C6E8D200(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E8D200(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C6E8D258@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_1C6E8D288@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C6E8D2B0()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E8D31C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E91A7C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6E8D368()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E8D3E4()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212CC8);
  __swift_project_value_buffer(v0, qword_1EC212CC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "embedding_header";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v12 = "strategy";
  *(v12 + 8) = 8;
  *(v12 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E8D5FC()
{
  v0 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpec._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__id;
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__embeddingHeader;
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__strategy;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy(0);
  result = (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  qword_1EC1F8C28 = v3;
  return result;
}

uint64_t sub_1C6E8D710(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8D40, &qword_1C6EF1168);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v25[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F89F0, &unk_1C6EF1170);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v25[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25[-v13];
  v15 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__id;
  v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__embeddingHeader;
  v18 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__strategy;
  v20 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__id;
  swift_beginAccess();
  sub_1C6E919B4(a1 + v21, v14, &qword_1EC1F7EF0, &unk_1C6EE9280);
  swift_beginAccess();
  sub_1C6E91440(v14, v1 + v15, &qword_1EC1F7EF0, &unk_1C6EE9280);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__embeddingHeader;
  swift_beginAccess();
  sub_1C6E919B4(a1 + v22, v10, &qword_1EC1F89F0, &unk_1C6EF1170);
  swift_beginAccess();
  sub_1C6E91440(v10, v1 + v17, &qword_1EC1F89F0, &unk_1C6EF1170);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__strategy;
  swift_beginAccess();
  sub_1C6E919B4(a1 + v23, v6, &qword_1EC1F8D40, &qword_1C6EF1168);

  swift_beginAccess();
  sub_1C6E91440(v6, v1 + v19, &qword_1EC1F8D40, &qword_1C6EF1168);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C6E8DA68()
{
  sub_1C6E91A1C(v0 + OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__id, &qword_1EC1F7EF0, &unk_1C6EE9280);
  sub_1C6E91A1C(v0 + OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__embeddingHeader, &qword_1EC1F89F0, &unk_1C6EF1170);
  sub_1C6E91A1C(v0 + OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__strategy, &qword_1EC1F8D40, &qword_1C6EF1168);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1C6E8DB44()
{
  sub_1C6E8DC9C(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1C6E8DC9C(319, &qword_1EC1F8A30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1C6E8DC9C(319, &qword_1EC1F8C58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C6E8DC9C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6EE4FE0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C6E8DD38()
{
  sub_1C6EE4430();
  if (v0 <= 0x3F)
  {
    sub_1C6E8DC9C(319, &qword_1EC1F8C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6E8DE20()
{
  result = sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategyType.Enum(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategyType.Enum(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C6E8DEEC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6E8DF0C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_1C6E8DF40()
{
  result = qword_1EC1F8C90;
  if (!qword_1EC1F8C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8C90);
  }

  return result;
}

unint64_t sub_1C6E8DF98()
{
  result = qword_1EC1F8C98;
  if (!qword_1EC1F8C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F8CA0, qword_1C6EF0B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8C98);
  }

  return result;
}

unint64_t sub_1C6E8E000()
{
  result = qword_1EC1F8CA8;
  if (!qword_1EC1F8CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8CA8);
  }

  return result;
}

unint64_t sub_1C6E8E058()
{
  result = qword_1EC1F8CB0;
  if (!qword_1EC1F8CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8CB0);
  }

  return result;
}

uint64_t sub_1C6E8E0AC()
{
  v1 = v0;
  v2 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpec(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = *(v0 + v2);
    v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpec._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    *(v1 + v2) = sub_1C6E8D710(v6);
  }

  return sub_1C6E8E154();
}

uint64_t sub_1C6E8E154()
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        sub_1C6E8E3C4();
        break;
      case 3:
        sub_1C6E8E2E8();
        break;
      case 1:
        sub_1C6E8E20C();
        break;
    }
  }

  return result;
}

uint64_t sub_1C6E8E20C()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  sub_1C6E90EE8(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EE45A0();
  return swift_endAccess();
}

uint64_t sub_1C6E8E2E8()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  sub_1C6E90EE8(&qword_1EC1F89B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
  sub_1C6EE45A0();
  return swift_endAccess();
}

uint64_t sub_1C6E8E3C4()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy(0);
  sub_1C6E90EE8(&qword_1EC1F8D00, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy);
  sub_1C6EE45A0();
  return swift_endAccess();
}

uint64_t sub_1C6E8E4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpec(0);
  result = sub_1C6E8E50C(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E8E50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C6E8E574(a1, a2, a3, a4);
  if (!v4)
  {
    sub_1C6E8E790(a1, a2, a3, a4);
    return sub_1C6E8E9AC(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C6E8E574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__id;
  swift_beginAccess();
  sub_1C6E919B4(a1 + v14, v8, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E91A1C(v8, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6E91378(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E90EE8(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EE46E0();
  return sub_1C6E913E0(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6E8E790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F89F0, &unk_1C6EF1170);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__embeddingHeader;
  swift_beginAccess();
  sub_1C6E919B4(a1 + v14, v8, &qword_1EC1F89F0, &unk_1C6EF1170);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E91A1C(v8, &qword_1EC1F89F0, &unk_1C6EF1170);
  }

  sub_1C6E91378(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
  sub_1C6E90EE8(&qword_1EC1F89B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
  sub_1C6EE46E0();
  return sub_1C6E913E0(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
}

uint64_t sub_1C6E8E9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8D40, &qword_1C6EF1168);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__strategy;
  swift_beginAccess();
  sub_1C6E919B4(a1 + v14, v8, &qword_1EC1F8D40, &qword_1C6EF1168);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E91A1C(v8, &qword_1EC1F8D40, &qword_1C6EF1168);
  }

  sub_1C6E91378(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy);
  sub_1C6E90EE8(&qword_1EC1F8D00, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy);
  sub_1C6EE46E0();
  return sub_1C6E913E0(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy);
}

BOOL sub_1C6E8EBC8(uint64_t a1, uint64_t a2)
{
  v93 = a2;
  v81 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy(0);
  v80 = *(v81 - 8);
  v3 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v77 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8D48, &qword_1C6EF1180);
  v5 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v82 = &v77 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8D40, &qword_1C6EF1168);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v90 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v89 = &v77 - v11;
  v87 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata(0);
  v86 = *(v87 - 8);
  v12 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v78 = (&v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F89F8, &qword_1C6EEF390);
  v14 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v77 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F89F0, &unk_1C6EF1170);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v83 = (&v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v91 = &v77 - v20;
  v21 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v92 = *(v21 - 8);
  v22 = *(v92 + 8);
  MEMORY[0x1EEE9AC00](v21);
  v84 = (&v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v77 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v33 = (&v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v77 - v34;
  v36 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__id;
  swift_beginAccess();
  sub_1C6E919B4(a1 + v36, v35, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v37 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__id;
  v38 = v93;
  swift_beginAccess();
  v39 = *(v25 + 56);
  sub_1C6E919B4(v35, v28, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v40 = v38;
  v41 = v92;
  sub_1C6E919B4(v40 + v37, &v28[v39], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v42 = *(v41 + 48);
  if (v42(v28, 1, v21) == 1)
  {

    sub_1C6E91A1C(v35, &qword_1EC1F7EF0, &unk_1C6EE9280);
    v43 = a1;
    if (v42(&v28[v39], 1, v21) == 1)
    {
      sub_1C6E91A1C(v28, &qword_1EC1F7EF0, &unk_1C6EE9280);
      goto LABEL_11;
    }

LABEL_6:
    v44 = &qword_1EC1F8220;
    v45 = &qword_1C6EEC6E0;
    v46 = v28;
LABEL_25:
    sub_1C6E91A1C(v46, v44, v45);
    goto LABEL_26;
  }

  v43 = a1;
  sub_1C6E919B4(v28, v33, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if (v42(&v28[v39], 1, v21) == 1)
  {

    sub_1C6E91A1C(v35, &qword_1EC1F7EF0, &unk_1C6EE9280);
    sub_1C6E913E0(v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    goto LABEL_6;
  }

  v92 = v28;
  v47 = v84;
  sub_1C6E91378(&v28[v39], v84, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  if ((*v33 != *v47 || v33[1] != v47[1]) && (sub_1C6EE54B0() & 1) == 0)
  {

    sub_1C6E91A1C(v35, &qword_1EC1F7EF0, &unk_1C6EE9280);
    sub_1C6E913E0(v47, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    sub_1C6E913E0(v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    v46 = v92;
    v44 = &qword_1EC1F7EF0;
    v45 = &unk_1C6EE9280;
    goto LABEL_25;
  }

  v48 = *(v21 + 20);
  sub_1C6EE4430();
  sub_1C6E90EE8(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);

  v49 = sub_1C6EE4A50();
  sub_1C6E91A1C(v35, &qword_1EC1F7EF0, &unk_1C6EE9280);
  sub_1C6E913E0(v47, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E913E0(v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E91A1C(v92, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((v49 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  v50 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__embeddingHeader;
  swift_beginAccess();
  v51 = v91;
  sub_1C6E919B4(v43 + v50, v91, &qword_1EC1F89F0, &unk_1C6EF1170);
  v52 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__embeddingHeader;
  v53 = v93;
  swift_beginAccess();
  v54 = *(v85 + 48);
  v55 = v88;
  sub_1C6E919B4(v51, v88, &qword_1EC1F89F0, &unk_1C6EF1170);
  sub_1C6E919B4(v53 + v52, v55 + v54, &qword_1EC1F89F0, &unk_1C6EF1170);
  v56 = *(v86 + 48);
  v57 = v87;
  if (v56(v55, 1, v87) == 1)
  {
    sub_1C6E91A1C(v51, &qword_1EC1F89F0, &unk_1C6EF1170);
    v58 = v56(v55 + v54, 1, v57);
    v59 = v90;
    v60 = v89;
    if (v58 == 1)
    {
      sub_1C6E91A1C(v55, &qword_1EC1F89F0, &unk_1C6EF1170);
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v61 = v83;
  sub_1C6E919B4(v55, v83, &qword_1EC1F89F0, &unk_1C6EF1170);
  v62 = v56(v55 + v54, 1, v57);
  v59 = v90;
  v60 = v89;
  if (v62 == 1)
  {
    sub_1C6E91A1C(v91, &qword_1EC1F89F0, &unk_1C6EF1170);
    sub_1C6E913E0(v61, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
LABEL_16:
    v44 = &qword_1EC1F89F8;
    v45 = &qword_1C6EEF390;
    v46 = v55;
    goto LABEL_25;
  }

  v63 = v55 + v54;
  v64 = v78;
  sub_1C6E91378(v63, v78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
  v65 = sub_1C6E803CC(v61, v64);
  sub_1C6E913E0(v64, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
  sub_1C6E91A1C(v91, &qword_1EC1F89F0, &unk_1C6EF1170);
  sub_1C6E913E0(v61, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_EmbeddingMetadata);
  sub_1C6E91A1C(v55, &qword_1EC1F89F0, &unk_1C6EF1170);
  if ((v65 & 1) == 0)
  {
LABEL_26:

    return 0;
  }

LABEL_18:
  v66 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__strategy;
  swift_beginAccess();
  sub_1C6E919B4(v43 + v66, v60, &qword_1EC1F8D40, &qword_1C6EF1168);
  v67 = OBJC_IVAR____TtCV18ComputationalGraph51Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpecP33_E0EFD8602BFEEC70D7E1C8A220F6E94B13_StorageClass__strategy;
  v68 = v93;
  swift_beginAccess();
  v69 = *(v79 + 48);
  v70 = v82;
  sub_1C6E919B4(v60, v82, &qword_1EC1F8D40, &qword_1C6EF1168);
  sub_1C6E919B4(v68 + v67, v70 + v69, &qword_1EC1F8D40, &qword_1C6EF1168);
  v71 = *(v80 + 48);
  v72 = v81;
  if (v71(v70, 1, v81) == 1)
  {

    sub_1C6E91A1C(v60, &qword_1EC1F8D40, &qword_1C6EF1168);
    if (v71(v70 + v69, 1, v72) == 1)
    {
      sub_1C6E91A1C(v70, &qword_1EC1F8D40, &qword_1C6EF1168);
      return 1;
    }

    goto LABEL_23;
  }

  sub_1C6E919B4(v70, v59, &qword_1EC1F8D40, &qword_1C6EF1168);
  if (v71(v70 + v69, 1, v72) == 1)
  {

    sub_1C6E91A1C(v60, &qword_1EC1F8D40, &qword_1C6EF1168);
    sub_1C6E913E0(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy);
LABEL_23:
    sub_1C6E91A1C(v70, &qword_1EC1F8D48, &qword_1C6EF1180);
    return 0;
  }

  v74 = v70 + v69;
  v75 = v77;
  sub_1C6E91378(v74, v77, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy);
  v76 = sub_1C6E914A8(v59, v75);

  sub_1C6E913E0(v75, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy);
  sub_1C6E91A1C(v60, &qword_1EC1F8D40, &qword_1C6EF1168);
  sub_1C6E913E0(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy);
  sub_1C6E91A1C(v70, &qword_1EC1F8D40, &qword_1C6EF1168);
  return (v76 & 1) != 0;
}

uint64_t sub_1C6E8F844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6EE4420();
  v4 = *(a1 + 20);
  if (qword_1EC1F7320 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_1EC1F8C28;
}

uint64_t sub_1C6E8F92C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E90EE8(&qword_1EC1F8D38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpec);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E8F9CC(uint64_t a1)
{
  v2 = sub_1C6E90EE8(&qword_1EC1F8D20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpec);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E8FA38()
{
  sub_1C6E90EE8(&qword_1EC1F8D20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpec);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E8FAD0()
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6E8FB44();
    }
  }

  return result;
}

uint64_t sub_1C6E8FB44()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy(0) + 20);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy(0);
  sub_1C6E90EE8(&qword_1EC1F8CE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E8FBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E8FC50(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E8FC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8C60, &unk_1C6EF0950);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy(0);
  sub_1C6E919B4(a1 + *(v14 + 20), v8, &qword_1EC1F8C60, &unk_1C6EF0950);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E91A1C(v8, &qword_1EC1F8C60, &unk_1C6EF0950);
  }

  sub_1C6E91378(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy);
  sub_1C6E90EE8(&qword_1EC1F8CE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy);
  sub_1C6EE46E0();
  return sub_1C6E913E0(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy);
}

uint64_t sub_1C6E8FE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6EE4420();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1C6E8FF48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E90EE8(&qword_1EC1F8D58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E8FFE8(uint64_t a1)
{
  v2 = sub_1C6E90EE8(&qword_1EC1F8D00, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E90054()
{
  sub_1C6E90EE8(&qword_1EC1F8D00, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E900EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C6EE6590;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v14 = sub_1C6EE46F0();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return sub_1C6EE4700();
}

uint64_t sub_1C6E90258()
{
  result = sub_1C6EE44B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C6E91A7C();
        sub_1C6EE44E0();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E902F8()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), sub_1C6E91A7C(), result = sub_1C6EE4660(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy(0) + 20);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E903AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v2 = a2 + *(a1 + 20);
  return sub_1C6EE4420();
}

uint64_t sub_1C6E903F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E90468(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E904DC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_121;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6E90534(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E90EE8(&qword_1EC1F8D60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E905D4(uint64_t a1)
{
  v2 = sub_1C6E90EE8(&qword_1EC1F8CE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E90640()
{
  sub_1C6E90EE8(&qword_1EC1F8CE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E906C0()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212D10);
  __swift_project_value_buffer(v0, qword_1EC212D10);
  return sub_1C6EE4710();
}

uint64_t sub_1C6E9070C()
{
  do
  {
    result = sub_1C6EE44B0();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_1C6E90788@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C6E907F0(uint64_t a1)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6E908AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E90EE8(&qword_1EC1F8D70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategyType);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E9094C(uint64_t a1)
{
  v2 = sub_1C6E90EE8(&qword_1EC1F8CC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategyType);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E909B8()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E90A10()
{
  sub_1C6E90EE8(&qword_1EC1F8CC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategyType);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E90A8C()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E90AE0()
{
  sub_1C6EE4430();
  sub_1C6E90EE8(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E90B68()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212D28);
  __swift_project_value_buffer(v0, qword_1EC212D28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AGGREGATE";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "DO_NOT_AGGREGATE";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E90D9C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C6EE4720();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1C6E90EE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6E91268(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E91378(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E913E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E91440(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E914A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v29[0] = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8C60, &unk_1C6EF0950);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (v29 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8D50, &qword_1C6EF1188);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v29 - v15;
  v17 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderStrategy(0) + 20);
  v18 = *(v13 + 56);
  v29[1] = a1;
  sub_1C6E919B4(a1 + v17, v16, &qword_1EC1F8C60, &unk_1C6EF0950);
  sub_1C6E919B4(a2 + v17, &v16[v18], &qword_1EC1F8C60, &unk_1C6EF0950);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1C6E919B4(v16, v11, &qword_1EC1F8C60, &unk_1C6EF0950);
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1C6E913E0(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy);
      goto LABEL_7;
    }

    v23 = v29[0];
    sub_1C6E91378(&v16[v18], v29[0], type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy);
    v24 = *v11;
    v25 = *v23;
    if (*(v23 + 8) == 1)
    {
      if (v25)
      {
        if (v25 == 1)
        {
          if (v24 != 1)
          {
            goto LABEL_17;
          }
        }

        else if (v24 != 2)
        {
          goto LABEL_17;
        }

LABEL_14:
        v26 = *(v4 + 20);
        sub_1C6EE4430();
        sub_1C6E90EE8(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
        v27 = sub_1C6EE4A50();
        sub_1C6E913E0(v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy);
        sub_1C6E913E0(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy);
        sub_1C6E91A1C(v16, &qword_1EC1F8C60, &unk_1C6EF0950);
        if (v27)
        {
          goto LABEL_4;
        }

LABEL_19:
        v20 = 0;
        return v20 & 1;
      }

      if (!v24)
      {
        goto LABEL_14;
      }
    }

    else if (v24 == v25)
    {
      goto LABEL_14;
    }

LABEL_17:
    sub_1C6E913E0(v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy);
    sub_1C6E913E0(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy);
    v21 = &qword_1EC1F8C60;
    v22 = &unk_1C6EF0950;
    goto LABEL_18;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
LABEL_7:
    v21 = &qword_1EC1F8D50;
    v22 = &qword_1C6EF1188;
LABEL_18:
    sub_1C6E91A1C(v16, v21, v22);
    goto LABEL_19;
  }

  sub_1C6E91A1C(v16, &qword_1EC1F8C60, &unk_1C6EF0950);
LABEL_4:
  sub_1C6EE4430();
  sub_1C6E90EE8(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v20 = sub_1C6EE4A50();
  return v20 & 1;
}

uint64_t sub_1C6E918CC(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpec(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_1C6E8EBC8(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  sub_1C6EE4430();
  sub_1C6E90EE8(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E919B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E91A1C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1C6E91A7C()
{
  result = qword_1EC1F8D68;
  if (!qword_1EC1F8D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8D68);
  }

  return result;
}

uint64_t sub_1C6E91AD0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }

LABEL_7:
      v4 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderAggregationStrategy(0) + 20);
      sub_1C6EE4430();
      sub_1C6E90EE8(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      return sub_1C6EE4A50() & 1;
    }

    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else if (v2 == v3)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_1C6E91BD8()
{
  result = sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_EncoderSpec._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C6E91C84()
{
  result = sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6E91D58()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212D40);
  __swift_project_value_buffer(v0, qword_1EC212D40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "resource_identifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "gambit_spec";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E91F20()
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6EE4580();
    }

    else if (result == 2)
    {
      sub_1C6E91FB0();
    }
  }

  return result;
}

uint64_t sub_1C6E91FB0()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitResource(0) + 24);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec(0);
  sub_1C6E94058(&qword_1EC1F8DE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E92064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_1C6EE46C0(), !v4))
  {
    result = sub_1C6E92110(v3, a1, a2, a3);
    if (!v4)
    {
      v12 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitResource(0) + 20);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E92110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8E20, &qword_1C6EF1730);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitResource(0);
  sub_1C6E94DC8(a1 + *(v14 + 24), v8, &qword_1EC1F8E20, &qword_1C6EF1730);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E94E30(v8, &qword_1EC1F8E20, &qword_1C6EF1730);
  }

  sub_1C6E94EF0(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec);
  sub_1C6E94058(&qword_1EC1F8DE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec);
  sub_1C6EE46E0();
  return sub_1C6E94E90(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec);
}

uint64_t sub_1C6E92320@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[*(a1 + 20)];
  sub_1C6EE4420();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t (*sub_1C6E923C4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_123;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6E9241C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E94058(&qword_1EC1F8E18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitResource);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E924BC(uint64_t a1)
{
  v2 = sub_1C6E94058(&qword_1EC1F8E00, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitResource);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E92528()
{
  sub_1C6E94058(&qword_1EC1F8E00, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitResource);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E925A8()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212D58);
  __swift_project_value_buffer(v0, qword_1EC212D58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "model_packages";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "api_spec";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "graph_nodes";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E927BC()
{
  result = sub_1C6EE44B0();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        sub_1C6E92918();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v3 = v0;
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
        sub_1C6E94058(qword_1EDEF8C70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
LABEL_12:
        v0 = v3;
        sub_1C6EE4590();
      }

LABEL_5:
      result = sub_1C6EE44B0();
    }

    v3 = v0;
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0);
    sub_1C6E94058(qword_1EDEF72B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1C6E92918()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec(0) + 28);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec(0);
  sub_1C6E94058(&qword_1EC1F8DC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E929CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0), sub_1C6E94058(qword_1EDEF8C70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage), result = sub_1C6EE46D0(), !v4))
  {
    result = sub_1C6E92B40(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3[1] + 16))
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0);
        sub_1C6E94058(qword_1EDEF72B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode);
        sub_1C6EE46D0();
      }

      v9 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec(0) + 24);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E92B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8E30, &qword_1C6EF1740);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec(0);
  sub_1C6E94DC8(a1 + *(v14 + 28), v8, &qword_1EC1F8E30, &qword_1C6EF1740);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E94E30(v8, &qword_1EC1F8E30, &qword_1C6EF1740);
  }

  sub_1C6E94EF0(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec);
  sub_1C6E94058(&qword_1EC1F8DC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec);
  sub_1C6EE46E0();
  return sub_1C6E94E90(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec);
}

uint64_t sub_1C6E92D50@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v4;
  v5 = &a2[*(a1 + 24)];
  sub_1C6EE4420();
  v6 = *(a1 + 28);
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_1C6E92DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E92E6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E92EE0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_124;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6E92F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E94058(&qword_1EC1F8E40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E92FD8(uint64_t a1)
{
  v2 = sub_1C6E94058(&qword_1EC1F8DE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E93044()
{
  sub_1C6E94058(&qword_1EC1F8DE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E930C4()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212D70);
  __swift_project_value_buffer(v0, qword_1EC212D70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6590;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "bindings";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C6EE46F0();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C6EE4700();
}

uint64_t sub_1C6E93230()
{
  result = sub_1C6EE44B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiBinding(0);
        sub_1C6E94058(&qword_1EC1F8DA0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiBinding);
        sub_1C6EE4590();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E93310()
{
  if (!*(*v0 + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiBinding(0), sub_1C6E94058(&qword_1EC1F8DA0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiBinding), result = sub_1C6EE46D0(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec(0) + 20);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E933F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1 + 20);
  return sub_1C6EE4420();
}

uint64_t sub_1C6E9343C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E934B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E93524(uint64_t a1, uint64_t a2))()
{
  result = nullsub_125;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6E9357C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E94058(&qword_1EC1F8E48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E9361C(uint64_t a1)
{
  v2 = sub_1C6E94058(&qword_1EC1F8DC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E93688()
{
  sub_1C6E94058(&qword_1EC1F8DC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E93704(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1C6E5EDF4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_1C6EE4430();
  sub_1C6E94058(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E937AC()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212D88);
  __swift_project_value_buffer(v0, qword_1EC212D88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "api_name";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "output_name";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "input_names";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E939BC()
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_1C6EE4570();
    }

    else if (result == 2 || result == 1)
    {
      sub_1C6EE4580();
    }
  }

  return result;
}

uint64_t sub_1C6E93A58()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1C6EE46C0(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_1C6EE46C0(), !v1))
    {
      if (!*(v0[4] + 16) || (result = sub_1C6EE46B0(), !v1))
      {
        v8 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiBinding(0) + 28);
        return sub_1C6EE4410();
      }
    }
  }

  return result;
}

uint64_t sub_1C6E93B40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1 + 28);
  return sub_1C6EE4420();
}

uint64_t sub_1C6E93B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E93C08(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E93C7C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_126;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1C6E93CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E94058(&qword_1EC1F8E50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiBinding);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E93D74@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C6EE4720();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1C6E93E10(uint64_t a1)
{
  v2 = sub_1C6E94058(&qword_1EC1F8DA0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiBinding);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E93E7C()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E93ED4()
{
  sub_1C6E94058(&qword_1EC1F8DA0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiBinding);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E93F50()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E94058(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6E94418(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E94528(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1C6EE54B0() & 1) == 0 || (sub_1C6E59BCC(a1[4], a2[4]) & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiBinding(0) + 28);
  sub_1C6EE4430();
  sub_1C6E94058(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E94618(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8E20, &qword_1C6EF1730);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v25 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8E28, &qword_1C6EF1738);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1C6EE54B0() & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v8;
  v26 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitResource(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 48);
  sub_1C6E94DC8(a1 + v17, v16, &qword_1EC1F8E20, &qword_1C6EF1730);
  sub_1C6E94DC8(a2 + v17, &v16[v18], &qword_1EC1F8E20, &qword_1C6EF1730);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1C6E94E30(v16, &qword_1EC1F8E20, &qword_1C6EF1730);
LABEL_12:
      v23 = *(v26 + 20);
      sub_1C6EE4430();
      sub_1C6E94058(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v20 = sub_1C6EE4A50();
      return v20 & 1;
    }

    goto LABEL_9;
  }

  sub_1C6E94DC8(v16, v12, &qword_1EC1F8E20, &qword_1C6EF1730);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1C6E94E90(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec);
LABEL_9:
    sub_1C6E94E30(v16, &qword_1EC1F8E28, &qword_1C6EF1738);
    goto LABEL_10;
  }

  v21 = v25;
  sub_1C6E94EF0(&v16[v18], v25, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec);
  v22 = sub_1C6E94998(v12, v21);
  sub_1C6E94E90(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec);
  sub_1C6E94E90(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec);
  sub_1C6E94E30(v16, &qword_1EC1F8E20, &qword_1C6EF1730);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1C6E94998(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8E30, &qword_1C6EF1740);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v31 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8E38, &qword_1C6EF1748);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  if ((sub_1C6E5CAE8(*a1, *a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  v17 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec(0);
  v18 = *(v17 + 28);
  v19 = a1;
  v20 = *(v13 + 48);
  v31 = v17;
  v32 = v19;
  sub_1C6E94DC8(v19 + v18, v16, &qword_1EC1F8E30, &qword_1C6EF1740);
  v21 = a2 + v18;
  v22 = a2;
  sub_1C6E94DC8(v21, &v16[v20], &qword_1EC1F8E30, &qword_1C6EF1740);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v20], 1, v4) == 1)
    {
      sub_1C6E94E30(v16, &qword_1EC1F8E30, &qword_1C6EF1740);
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  sub_1C6E94DC8(v16, v12, &qword_1EC1F8E30, &qword_1C6EF1740);
  if (v23(&v16[v20], 1, v4) == 1)
  {
    sub_1C6E94E90(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec);
LABEL_9:
    v26 = &qword_1EC1F8E38;
    v27 = &qword_1C6EF1748;
LABEL_10:
    sub_1C6E94E30(v16, v26, v27);
    goto LABEL_11;
  }

  sub_1C6E94EF0(&v16[v20], v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec);
  if ((sub_1C6E5EDF4(*v12, *v8) & 1) == 0)
  {
    sub_1C6E94E90(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec);
    sub_1C6E94E90(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec);
    v26 = &qword_1EC1F8E30;
    v27 = &qword_1C6EF1740;
    goto LABEL_10;
  }

  v29 = *(v4 + 20);
  sub_1C6EE4430();
  sub_1C6E94058(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v22 = a2;
  v30 = sub_1C6EE4A50();
  sub_1C6E94E90(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec);
  sub_1C6E94E90(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec);
  sub_1C6E94E30(v16, &qword_1EC1F8E30, &qword_1C6EF1740);
  if ((v30 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((sub_1C6E5CA94(v32[1], v22[1]) & 1) == 0)
  {
LABEL_11:
    v25 = 0;
    return v25 & 1;
  }

  v24 = *(v31 + 24);
  sub_1C6EE4430();
  sub_1C6E94058(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v25 = sub_1C6EE4A50();
  return v25 & 1;
}

uint64_t sub_1C6E94DC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E94E30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6E94E90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E94EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C6E94F80()
{
  sub_1C6EE4430();
  if (v0 <= 0x3F)
  {
    sub_1C6E951B0(319, &qword_1EC1F8E68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_GambitSpec, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6E9506C()
{
  sub_1C6E951B0(319, &qword_1EDEF67F8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C6E951B0(319, &qword_1EDEF67F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C6EE4430();
      if (v2 <= 0x3F)
      {
        sub_1C6E951B0(319, &qword_1EC1F8E80, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiSpec, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C6E951B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6E9523C()
{
  sub_1C6E951B0(319, &qword_1EC1F8E98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ApiBinding, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6E95318()
{
  sub_1C6E953AC();
  if (v0 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6E953AC()
{
  if (!qword_1EDEF67D0)
  {
    v0 = sub_1C6EE4D50();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEF67D0);
    }
  }
}

__n128 __swift_memcpy149_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 141) = *(a2 + 141);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1C6E95490(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 149))
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

uint64_t sub_1C6E954D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 148) = 0;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 149) = 1;
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

    *(result + 149) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6E95554(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v20 = a2;
    v25 = MEMORY[0x1E69E7CC0];
    sub_1C6E15A70(0, v5, 0);
    v6 = v25;
    v21 = *v2;
    v22 = v2[1];
    v23 = v2[2];
    v24 = v2[3];
    v8 = (a1 + 40);
    while (1)
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      v11 = sub_1C6E95F30(v9, v10);
      if (v4)
      {
        break;
      }

      v13 = sub_1C6E00E34(v11, v12, *(v2 + 8), *(v2 + 9), *(v2 + 10), *(v2 + 88));

      v14 = sub_1C6E957B8(v13);

      v16 = *(v25 + 16);
      v15 = *(v25 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1C6E15A70((v15 > 1), v16 + 1, 1);
      }

      *(v25 + 16) = v16 + 1;
      *(v25 + 8 * v16 + 32) = v14;
      v8 += 2;
      if (!--v5)
      {
        a2 = v20;
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    sub_1C6EDB41C(v6, a2, *(v2 + 12), *(v2 + 30));
    v19 = v18;

    return v19;
  }
}

uint64_t sub_1C6E956F0()
{
  v1 = *v0;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v1);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E95764()
{
  v1 = *v0;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v1);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E957B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v1;
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = a1 + 32;
  v57 = *(v1 + 144);
  v7 = MEMORY[0x1E69E7CC0];
  v52 = *(a1 + 16);
  v53 = a1 + 32;
  while (1)
  {
    v9 = (v6 + 16 * v4);
    v11 = *v9;
    v10 = v9[1];
    swift_bridgeObjectRetain_n();
    v12 = sub_1C6EE4B40();
    v59 = v7;
    if (v12)
    {
      v13 = v12;
      if (v12 < 1)
      {
        v14 = v5;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8EC0, &unk_1C6EF18C0);
        v14 = swift_allocObject();
        v15 = _swift_stdlib_malloc_size_1(v14);
        v16 = v15 - 32;
        if (v15 < 32)
        {
          v16 = v15 - 17;
        }

        v14[2] = v13;
        v14[3] = 2 * (v16 >> 4);
      }

      v17 = HIBYTE(v10) & 0xF;
      *&v61 = v11;
      *(&v61 + 1) = v10;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v17 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v62 = 0;
      v63 = v17;
      if (v13 < 1)
      {
        __break(1u);
        goto LABEL_65;
      }

      v18 = sub_1C6EE4B80();
      if (!v19)
      {
        goto LABEL_70;
      }

      v20 = 4;
      while (1)
      {
        v21 = &v14[v20];
        *v21 = v18;
        v21[1] = v19;
        if (!--v13)
        {
          break;
        }

        v20 += 2;
        v18 = sub_1C6EE4B80();
        if (!v19)
        {
          goto LABEL_70;
        }
      }
    }

    else
    {

      v14 = v5;
    }

    v22 = v14[2];
    if (v22 > v57)
    {

      v23 = v3[13];
      v24 = v3[14];

      v7 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1C6ED8FB0(0, *(v59 + 2) + 1, 1, v59);
      }

      v26 = *(v7 + 2);
      v25 = *(v7 + 3);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v7 = sub_1C6ED8FB0((v25 > 1), v26 + 1, 1, v7);
      }

LABEL_4:
      *(v7 + 2) = v27;
      v8 = &v7[16 * v26];
      *(v8 + 4) = v23;
      *(v8 + 5) = v24;
      goto LABEL_5;
    }

    if (v22)
    {
      break;
    }

    v50 = v5;
LABEL_48:

    v41 = v50;
    v42 = *(v50 + 2);
    v7 = v59;
    v43 = *(v59 + 2);
    v44 = v43 + v42;
    if (__OFADD__(v43, v42))
    {
      goto LABEL_66;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v44 > *(v59 + 3) >> 1)
    {
      if (v43 <= v44)
      {
        v46 = v43 + v42;
      }

      else
      {
        v46 = v43;
      }

      v7 = sub_1C6ED8FB0(isUniquelyReferenced_nonNull_native, v46, 1, v59);
    }

    if (*(v41 + 2))
    {
      if ((*(v7 + 3) >> 1) - *(v7 + 2) < v42)
      {
        goto LABEL_68;
      }

      swift_arrayInitWithCopy();

      if (v42)
      {
        v47 = *(v7 + 2);
        v48 = __OFADD__(v47, v42);
        v49 = v47 + v42;
        if (v48)
        {
          goto LABEL_69;
        }

        *(v7 + 2) = v49;
      }
    }

    else
    {

      if (v42)
      {
        goto LABEL_67;
      }
    }

LABEL_5:
    if (++v4 == v2)
    {
      return v7;
    }
  }

  v54 = v4;
  v28 = v3;
  v29 = v3[12];

  v30 = 0;
  v55 = (2 * v22) | 1;
  v56 = v22;
  v58 = v5;
LABEL_29:
  if (v30 >= v22)
  {
LABEL_43:

    v3 = v28;
    v23 = v28[13];
    v24 = v3[14];

    v7 = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1C6ED8FB0(0, *(v59 + 2) + 1, 1, v59);
    }

    v2 = v52;
    v6 = v53;
    v4 = v54;
    v26 = *(v7 + 2);
    v40 = *(v7 + 3);
    v27 = v26 + 1;
    if (v26 >= v40 >> 1)
    {
      v7 = sub_1C6ED8FB0((v40 > 1), v26 + 1, 1, v7);
    }

    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_4;
  }

  v32 = v55;
  v31 = v56;
  while (v14[2] >= v31)
  {
    *&v61 = v14;
    *(&v61 + 1) = v14 + 4;
    v62 = v30;
    v63 = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8EB0, &qword_1C6EF18B8);
    sub_1C6E95D10();
    v33 = sub_1C6EE4BE0();
    v35 = v34;
    if (v30 >= 1)
    {
      v64 = *(v28 + 8);
      v61 = v64;
      sub_1C6E579D4(&v64, v60);
      MEMORY[0x1CCA57F60](v33, v35);

      v35 = *(&v61 + 1);
      v33 = v61;
    }

    if (*(v29 + 16))
    {
      sub_1C6DEC784(v33, v35);
      if (v36)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = sub_1C6ED8FB0(0, *(v58 + 2) + 1, 1, v58);
        }

        v6 = v53;
        v38 = *(v58 + 2);
        v37 = *(v58 + 3);
        if (v38 >= v37 >> 1)
        {
          v58 = sub_1C6ED8FB0((v37 > 1), v38 + 1, 1, v58);
        }

        *(v58 + 2) = v38 + 1;
        v39 = &v58[16 * v38];
        *(v39 + 4) = v33;
        *(v39 + 5) = v35;
        v30 = v31;
        v22 = v56;
        if (v31 >= v56)
        {

          v3 = v28;
          v2 = v52;
          v4 = v54;
          v5 = MEMORY[0x1E69E7CC0];
          v50 = v58;
          goto LABEL_48;
        }

        goto LABEL_29;
      }
    }

    --v31;
    v32 -= 2;
    if (v30 >= v31)
    {
      goto LABEL_43;
    }
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:

  __break(1u);
  return result;
}

unint64_t sub_1C6E95D10()
{
  result = qword_1EC1F8EB8;
  if (!qword_1EC1F8EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F8EB0, &qword_1C6EF18B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8EB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WordPieceTokenizerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WordPieceTokenizerError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C6E95EDC()
{
  result = qword_1EC1F8EC8;
  if (!qword_1EC1F8EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8EC8);
  }

  return result;
}

uint64_t sub_1C6E95F30(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v118 = *MEMORY[0x1E69E9840];
  v7 = sub_1C6EE3F70();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v109 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    result = 0;
    goto LABEL_45;
  }

  v104 = v14;
  v105 = v11;
  v108 = v8;
  v106 = v7;
  v103 = v3;
  v116 = a1;
  v117 = a2;
  v111 = sub_1C6DF0C68();
  v16 = sub_1C6EE5030();
  v18 = v17;
  v107 = v4;
  v19 = *(v4 + 48);
  v22 = *(v19 + 64);
  v21 = v19 + 64;
  v20 = v22;
  v23 = 1 << *(*(v4 + 48) + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v26 = (v23 + 63) >> 6;
  v110 = *(v4 + 48);

  v27 = 0;
  if (v25)
  {
    while (1)
    {
      v28 = v27;
LABEL_10:
      v29 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v30 = (v28 << 10) | (16 * v29);
      v31 = (*(v110 + 48) + v30);
      v32 = *v31;
      v33 = v31[1];
      v34 = (*(v110 + 56) + v30);
      v35 = *v34;
      v36 = v34[1];
      v116 = v16;
      v117 = v18;
      v114 = v32;
      v115 = v33;
      v112 = v35;
      v113 = v36;

      v16 = sub_1C6EE5010();
      v38 = v37;

      v18 = v38;
      if (!v25)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
    }

    if (v28 >= v26)
    {
      break;
    }

    v25 = *(v21 + 8 * v28);
    ++v27;
    if (v25)
    {
      v27 = v28;
      goto LABEL_10;
    }
  }

  v39 = v107;
  if (*v107)
  {
    v16 = sub_1C6EE4B00();
    v41 = v40;

    v18 = v41;
  }

  v42 = v109;
  v43 = *(v39 + 1);
  v44 = *(v43 + 16);
  if (!v44)
  {
    v64 = v18;
LABEL_29:
    v116 = v16;
    v117 = v64;

    v69 = v105;
    sub_1C6EE3F40();
    v70 = sub_1C6EE5000();
    v72 = v71;

    v73 = v108 + 8;
    v109 = *(v108 + 8);
    (v109)(v69, v106);

    v74 = v107;
    v75 = v107[16];
    v108 = v73;
    if (v75)
    {
      v70 = sub_1C6E96878(v70, v72);
      v77 = v76;

      v72 = v77;
    }

    v78 = *(v74 + 7);
    v79 = v78 + 64;
    v80 = 1 << *(v78 + 32);
    v81 = -1;
    if (v80 < 64)
    {
      v81 = ~(-1 << v80);
    }

    v82 = v81 & *(v78 + 64);
    v83 = (v80 + 63) >> 6;
    v110 = v78;

    v84 = 0;
    if (v82)
    {
      while (1)
      {
        v85 = v84;
LABEL_39:
        v86 = __clz(__rbit64(v82));
        v82 &= v82 - 1;
        v87 = (v85 << 10) | (16 * v86);
        v88 = (*(v110 + 48) + v87);
        v89 = *v88;
        v90 = v88[1];
        v91 = (*(v110 + 56) + v87);
        v92 = *v91;
        v93 = v91[1];
        v116 = v70;
        v117 = v72;
        v114 = v89;
        v115 = v90;
        v112 = v92;
        v113 = v93;

        v70 = sub_1C6EE5010();
        v95 = v94;

        v72 = v95;
        if (!v82)
        {
          goto LABEL_35;
        }
      }
    }

    while (1)
    {
LABEL_35:
      v85 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        goto LABEL_47;
      }

      if (v85 >= v83)
      {
        break;
      }

      v82 = *(v79 + 8 * v85);
      ++v84;
      if (v82)
      {
        v84 = v85;
        goto LABEL_39;
      }
    }

    v116 = v70;
    v117 = v72;

    v96 = v105;
    sub_1C6EE3F40();
    v97 = sub_1C6EE5000();

    (v109)(v96, v106);

    result = v97;
    goto LABEL_45;
  }

  v45 = v43 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
  v110 = *(v104 + 72);
  while (1)
  {
    sub_1C6E2D5E8(v45, v42);
    if (v42[8] != 1)
    {
LABEL_42:
      sub_1C6E96764();
      swift_allocError();
      *v98 = 0;
      swift_willThrow();
      goto LABEL_44;
    }

    if ((*v42 - 2) < 2)
    {
      break;
    }

    if (*v42 != 1)
    {
      goto LABEL_42;
    }

    v116 = v16;
    v117 = v18;
    v65 = *(v42 + 3);
    v114 = *(v42 + 2);
    v115 = v65;
    v66 = *(v42 + 5);
    v112 = *(v42 + 4);
    v113 = v66;
    v16 = sub_1C6EE5010();
    v64 = v67;
LABEL_22:
    sub_1C6E967B8(v42);

    v45 += v110;
    v18 = v64;
    if (!--v44)
    {
      goto LABEL_29;
    }
  }

  v46 = *(v42 + 2);
  v47 = *(v42 + 3);
  v48 = objc_allocWithZone(MEMORY[0x1E696AE70]);

  v49 = sub_1C6EE4A60();

  v116 = 0;
  v50 = [v48 initWithPattern:v49 options:0 error:&v116];

  v51 = v116;
  if (v50)
  {
    v52 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v52 = v16;
    }

    v53 = 7;
    if (((v18 >> 60) & ((v16 & 0x800000000000000) == 0)) != 0)
    {
      v53 = 11;
    }

    v116 = 15;
    v117 = v53 | (v52 << 16);
    v114 = v16;
    v115 = v18;

    v54 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8ED8, &qword_1C6EF1990);
    sub_1C6E96814();
    v55 = sub_1C6EE4FA0();
    v57 = v56;
    v58 = sub_1C6EE4A60();
    v59 = *(v42 + 4);
    v60 = *(v42 + 5);
    v61 = sub_1C6EE4A60();
    v62 = [v50 stringByReplacingMatchesInString:v58 options:0 range:v55 withTemplate:{v57, v61}];

    v16 = sub_1C6EE4A90();
    v64 = v63;

    goto LABEL_22;
  }

  v99 = v116;
  v100 = sub_1C6EE4050();

  swift_willThrow();
  sub_1C6E96764();
  swift_allocError();
  *v101 = 2;
  swift_willThrow();

LABEL_44:

  result = sub_1C6E967B8(v109);
LABEL_45:
  v102 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1C6E96764()
{
  result = qword_1EC1F8ED0;
  if (!qword_1EC1F8ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8ED0);
  }

  return result;
}

uint64_t sub_1C6E967B8(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C6E96814()
{
  result = qword_1EC1F8EE0;
  if (!qword_1EC1F8EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F8ED8, &qword_1C6EF1990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8EE0);
  }

  return result;
}

uint64_t sub_1C6E96878(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C6EE3F70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v33 = a2;
  sub_1C6DF0C68();
  v9 = sub_1C6EE5020();
  v11 = v10;
  v32 = 0;
  v33 = 0xE000000000000000;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = v9;
    v14 = 0;
    v29 = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v30 = v10 & 0xFFFFFFFFFFFFFFLL;
    v15 = (v5 + 8);
    do
    {
      if ((v11 & 0x1000000000000000) != 0)
      {
        v20 = sub_1C6EE51A0();
        v22 = v21;
      }

      else
      {
        if ((v11 & 0x2000000000000000) != 0)
        {
          v31[0] = v13;
          v31[1] = v30;
          v19 = v31 + v14;
        }

        else
        {
          v18 = v29;
          if ((v13 & 0x1000000000000000) == 0)
          {
            v18 = sub_1C6EE5240();
          }

          v19 = (v18 + v14);
        }

        v20 = *v19;
        if ((*v19 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        v25 = (__clz(v20 ^ 0xFF) - 24);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            v20 = ((v20 & 0xF) << 12) | ((v19[1] & 0x3F) << 6) | v19[2] & 0x3F;
            v22 = 3;
          }

          else
          {
            v20 = ((v20 & 0xF) << 18) | ((v19[1] & 0x3F) << 12) | ((v19[2] & 0x3F) << 6) | v19[3] & 0x3F;
            v22 = 4;
          }

          goto LABEL_18;
        }

        if (v25 == 1)
        {
LABEL_17:
          v22 = 1;
        }

        else
        {
          v20 = v19[1] & 0x3F | ((v20 & 0x1F) << 6);
          v22 = 2;
        }
      }

LABEL_18:
      sub_1C6EE3F50();
      v23 = sub_1C6EE3F60();
      (*v15)(v8, v4);
      if ((v23 & 1) == 0)
      {
        if (v20 <= 0x7F)
        {
          v16 = v20 + 1;
        }

        else
        {
          v24 = (v20 & 0x3F) << 8;
          if (v20 >= 0x800)
          {
            v26 = (v24 | (v20 >> 6) & 0x3F) << 8;
            v27 = (((v26 | (v20 >> 12) & 0x3F) << 8) | (v20 >> 18)) - 2122219023;
            v16 = (v20 >> 12) + v26 + 8487393;
            if (HIWORD(v20))
            {
              v16 = v27;
            }
          }

          else
          {
            v16 = (v20 >> 6) + v24 + 33217;
          }
        }

        v31[0] = (v16 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v16) >> 3))));
        v17 = sub_1C6EE4B20();
        MEMORY[0x1CCA57F50](v17);
      }

      v14 += v22;
    }

    while (v14 < v12);
  }

  return v32;
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

uint64_t sub_1C6E96BA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C6E96BEC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C6E96C4C()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212DA0);
  __swift_project_value_buffer(v0, qword_1EC212DA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E96E14()
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_1C6EE4580();
    }
  }

  return result;
}

uint64_t sub_1C6E96E94()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1C6EE46C0(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_1C6EE46C0(), !v1))
    {
      v8 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_StringBlob() + 24);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E96F58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return sub_1C6EE4420();
}

uint64_t sub_1C6E96FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E97018(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E9708C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_128;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6E970E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E975EC(&qword_1EC1F8F08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_StringBlob);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E97168@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1F7368 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6EE4720();
  v3 = __swift_project_value_buffer(v2, qword_1EC212DA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6E97210(uint64_t a1)
{
  v2 = sub_1C6E975EC(&qword_1EC1F8EF0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_StringBlob);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E9727C()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E972D4()
{
  sub_1C6E975EC(&qword_1EC1F8EF0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_StringBlob);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E97350()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E973A4(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  sub_1C6EE4430();
  sub_1C6E975EC(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_StringBlob()
{
  result = qword_1EC1F8F10;
  if (!qword_1EC1F8F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E975EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6E9765C()
{
  result = sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C6E97720()
{
  sub_1C6E9784C(319, &qword_1EDEF67E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v1 <= 0x3F)
    {
      sub_1C6E9784C(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6E9784C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6E978D8()
{
  result = sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Com_Apple_News_Algorithms_Proto_Tokenizer_SubstitutionType.Enum(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Com_Apple_News_Algorithms_Proto_Tokenizer_SubstitutionType.Enum(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C6E979B4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6E979D4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_1C6E97A14(uint64_t a1@<X8>)
{
  sub_1C6E9B04C();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_1C6E97A60(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1C6E9B04C();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

uint64_t sub_1C6E97AA4()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E97B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E9AEC0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6E97B5C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

unint64_t sub_1C6E97BDC()
{
  result = qword_1EC1F8F20;
  if (!qword_1EC1F8F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8F20);
  }

  return result;
}

unint64_t sub_1C6E97C34()
{
  result = qword_1EC1F8F28;
  if (!qword_1EC1F8F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F8F30, qword_1C6EF1D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8F28);
  }

  return result;
}

unint64_t sub_1C6E97C9C()
{
  result = qword_1EC1F8F38;
  if (!qword_1EC1F8F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8F38);
  }

  return result;
}

unint64_t sub_1C6E97CF4()
{
  result = qword_1EC1F8F40;
  if (!qword_1EC1F8F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8F40);
  }

  return result;
}

uint64_t sub_1C6E97D48()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212DB8);
  __swift_project_value_buffer(v0, qword_1EC212DB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "should_lower";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v12 = "substitutions";
  *(v12 + 8) = 13;
  *(v12 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E97F60()
{
  result = sub_1C6EE44B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution(0);
          sub_1C6E9A0C8(&qword_1EC1F8F70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution);
          sub_1C6EE4590();
          break;
        case 2:
          sub_1C6EE44D0();
          break;
        case 1:
          sub_1C6E98080();
          break;
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E98080()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0) + 28);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  sub_1C6E9A0C8(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E98134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E98258(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3 == 1)
    {
      sub_1C6EE4650();
    }

    if (*(*(v3 + 8) + 16))
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution(0);
      sub_1C6E9A0C8(&qword_1EC1F8F70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution);
      sub_1C6EE46D0();
    }

    v6 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0) + 24);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E98258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0);
  sub_1C6E9AD30(a1 + *(v14 + 28), v8, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E9AD98(v8, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6E9AE58(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E9A0C8(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EE46E0();
  return sub_1C6E9ADF8(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6E98468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  v4 = a2 + *(a1 + 24);
  sub_1C6EE4420();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1C6E98514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E98588(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E985FC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_130;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6E98654(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E9A0C8(&qword_1EC1F8FB8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E986F4(uint64_t a1)
{
  v2 = sub_1C6E9A0C8(&qword_1EC1F8B80, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E98760()
{
  sub_1C6E9A0C8(&qword_1EC1F8B80, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E987E0()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212DD0);
  __swift_project_value_buffer(v0, qword_1EC212DD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EEA170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "normalizer_spec";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "strip_accents";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "special_token_padding";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "special_tokens";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E98A28()
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1C6EE4580();
      }

      else if (result == 4)
      {
        sub_1C6EE4570();
      }
    }

    else if (result == 1)
    {
      sub_1C6E98B00();
    }

    else if (result == 2)
    {
      sub_1C6EE44D0();
    }
  }

  return result;
}

uint64_t sub_1C6E98B00()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec(0) + 32);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0);
  sub_1C6E9A0C8(&qword_1EC1F8B80, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E98BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E98CB0(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3 == 1)
    {
      sub_1C6EE4650();
    }

    v6 = *(v3 + 16);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_1C6EE46C0();
    }

    if (*(*(v3 + 24) + 16))
    {
      sub_1C6EE46B0();
    }

    v8 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec(0) + 28);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E98CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD8, &qword_1C6EE8B68);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec(0);
  sub_1C6E9AD30(a1 + *(v14 + 32), v8, &qword_1EC1F7DD8, &qword_1C6EE8B68);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E9AD98(v8, &qword_1EC1F7DD8, &qword_1C6EE8B68);
  }

  sub_1C6E9AE58(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
  sub_1C6E9A0C8(&qword_1EC1F8B80, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
  sub_1C6EE46E0();
  return sub_1C6E9ADF8(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
}

uint64_t sub_1C6E98EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  v4 = a2 + *(a1 + 28);
  sub_1C6EE4420();
  v5 = *(a1 + 32);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t (*sub_1C6E98F74(uint64_t a1, uint64_t a2))()
{
  result = nullsub_131;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1C6E98FCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E9A0C8(&qword_1EC1F8FC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E9906C(uint64_t a1)
{
  v2 = sub_1C6E9A0C8(&qword_1EC1F8B98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E990D8()
{
  sub_1C6E9A0C8(&qword_1EC1F8B98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E99158()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212DE8);
  __swift_project_value_buffer(v0, qword_1EC212DE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "source";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "target";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E99368()
{
  result = sub_1C6EE44B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        sub_1C6EE4580();
      }

      else if (result == 1)
      {
        sub_1C6E9AEC0();
        sub_1C6EE44E0();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E99434()
{
  if (!*v0 || (v8 = *v0, v9 = *(v0 + 8), sub_1C6E9AEC0(), result = sub_1C6EE4660(), !v1))
  {
    v3 = v0[3];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_1C6EE46C0(), !v1))
    {
      v5 = v0[5];
      v6 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v6 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v6 || (result = sub_1C6EE46C0(), !v1))
      {
        v7 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution(0) + 28);
        return sub_1C6EE4410();
      }
    }
  }

  return result;
}

uint64_t sub_1C6E99548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  v2 = a2 + *(a1 + 28);
  return sub_1C6EE4420();
}

uint64_t sub_1C6E9959C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E99610(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E99684(uint64_t a1, uint64_t a2))()
{
  result = nullsub_132;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1C6E996DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E9A0C8(&qword_1EC1F8FC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E9977C(uint64_t a1)
{
  v2 = sub_1C6E9A0C8(&qword_1EC1F8F70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E997E8()
{
  sub_1C6E9A0C8(&qword_1EC1F8F70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E99868()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212E00);
  __swift_project_value_buffer(v0, qword_1EC212E00);
  return sub_1C6EE4710();
}

uint64_t sub_1C6E998B4()
{
  do
  {
    result = sub_1C6EE44B0();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_1C6E99930@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C6E99998(uint64_t a1)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6E99A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E9A0C8(&qword_1EC1F8FD8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SubstitutionType);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E99AF4(uint64_t a1)
{
  v2 = sub_1C6E9A0C8(&qword_1EC1F8F50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SubstitutionType);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E99B60()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E99BB8()
{
  sub_1C6E9A0C8(&qword_1EC1F8F50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_SubstitutionType);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E99C34()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E99C88()
{
  sub_1C6EE4430();
  sub_1C6E9A0C8(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E99D10()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212E18);
  __swift_project_value_buffer(v0, qword_1EC212E18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EEA170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "STRING";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SIMPLE_PATTERN";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TARGET_PATTERN";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E99F7C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C6EE4720();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1C6E9A0C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6E9A328(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E9A558(unsigned __int8 *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7DD8, &qword_1C6EE8B68);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8B60, &unk_1C6EF2360);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  v27 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_WordPieceNormalizerSpec(0);
  v17 = *(v27 + 32);
  v18 = *(v13 + 56);
  v29 = a1;
  sub_1C6E9AD30(&a1[v17], v16, &qword_1EC1F7DD8, &qword_1C6EE8B68);
  sub_1C6E9AD30(a2 + v17, &v16[v18], &qword_1EC1F7DD8, &qword_1C6EE8B68);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1C6E9AD98(v16, &qword_1EC1F7DD8, &qword_1C6EE8B68);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1C6E9AD30(v16, v11, &qword_1EC1F7DD8, &qword_1C6EE8B68);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1C6E9ADF8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
LABEL_6:
    sub_1C6E9AD98(v16, &qword_1EC1F8B60, &unk_1C6EF2360);
LABEL_14:
    v24 = 0;
    return v24 & 1;
  }

  v20 = v28;
  sub_1C6E9AE58(&v16[v18], v28, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
  v21 = sub_1C6E9A8FC(v11, v20);
  sub_1C6E9ADF8(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
  sub_1C6E9ADF8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec);
  sub_1C6E9AD98(v16, &qword_1EC1F7DD8, &qword_1C6EE8B68);
  if ((v21 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v22 = v29;
  if (*v29 != *a2 || (*(v29 + 1) != a2[1] || *(v29 + 2) != a2[2]) && (sub_1C6EE54B0() & 1) == 0 || (sub_1C6E59BCC(*(v22 + 3), a2[3]) & 1) == 0)
  {
    goto LABEL_14;
  }

  v23 = *(v27 + 28);
  sub_1C6EE4430();
  sub_1C6E9A0C8(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v24 = sub_1C6EE4A50();
  return v24 & 1;
}

uint64_t sub_1C6E9A8FC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v31 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v29 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  v30 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec(0);
  v17 = *(v30 + 28);
  v18 = *(v13 + 56);
  v32 = a1;
  sub_1C6E9AD30(&a1[v17], v16, &qword_1EC1F7EF0, &unk_1C6EE9280);
  sub_1C6E9AD30(&a2[v17], &v16[v18], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1C6E9AD30(v16, v11, &qword_1EC1F7EF0, &unk_1C6EE9280);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v31;
      sub_1C6E9AE58(&v16[v18], v31, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v23 = *v11 == *v22 && v11[1] == v22[1];
      if (v23 || (sub_1C6EE54B0() & 1) != 0)
      {
        v24 = *(v4 + 20);
        sub_1C6EE4430();
        sub_1C6E9A0C8(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
        v25 = sub_1C6EE4A50();
        sub_1C6E9ADF8(v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6E9ADF8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6E9AD98(v16, &qword_1EC1F7EF0, &unk_1C6EE9280);
        if (v25)
        {
          goto LABEL_14;
        }

LABEL_17:
        v27 = 0;
        return v27 & 1;
      }

      sub_1C6E9ADF8(v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6E9ADF8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v20 = &qword_1EC1F7EF0;
      v21 = &unk_1C6EE9280;
LABEL_7:
      sub_1C6E9AD98(v16, v20, v21);
      goto LABEL_17;
    }

    sub_1C6E9ADF8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    v20 = &qword_1EC1F8220;
    v21 = &qword_1C6EEC6E0;
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6E9AD98(v16, &qword_1EC1F7EF0, &unk_1C6EE9280);
LABEL_14:
  if (*v32 != *a2 || (sub_1C6E5E85C(*(v32 + 1), *(a2 + 1)) & 1) == 0)
  {
    goto LABEL_17;
  }

  v26 = *(v30 + 24);
  sub_1C6EE4430();
  sub_1C6E9A0C8(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v27 = sub_1C6EE4A50();
  return v27 & 1;
}

uint64_t sub_1C6E9AD30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E9AD98(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6E9ADF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E9AE58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C6E9AEC0()
{
  result = qword_1EC1F8FD0;
  if (!qword_1EC1F8FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8FD0);
  }

  return result;
}

uint64_t sub_1C6E9AF14(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (v6 || (sub_1C6EE54B0()) && (a1[4] == *(a2 + 32) && a1[5] == *(a2 + 40) || (sub_1C6EE54B0()))
  {
    v7 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution(0) + 28);
    sub_1C6EE4430();
    sub_1C6E9A0C8(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    return sub_1C6EE4A50() & 1;
  }

  return 0;
}

void sub_1C6E9B088()
{
  sub_1C6E953AC();
  if (v0 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v1 <= 0x3F)
    {
      sub_1C6E9784C(319, qword_1EDEF6D68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_NormalizerSpec, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C6E9B194()
{
  result = sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C6E9B2A8()
{
  sub_1C6E9B434(319, &qword_1EDEF67F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C6E9B434(319, &qword_1EDEF67F8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C6E9B434(319, &qword_1EDEF67E8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1C6EE4430();
        if (v3 <= 0x3F)
        {
          sub_1C6E9B434(319, qword_1EDEF7318, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C6E9B434(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6E9B500()
{
  sub_1C6E953AC();
  if (v0 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v1 <= 0x3F)
    {
      sub_1C6E9B434(319, qword_1EDEF7AC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6E9B5F4()
{
  sub_1C6EE4430();
  if (v0 <= 0x3F)
  {
    sub_1C6E9B434(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6E9B700()
{
  sub_1C6E953AC();
  if (v0 <= 0x3F)
  {
    sub_1C6E9B434(319, &qword_1EC1F9000, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C6EE4430();
      if (v2 <= 0x3F)
      {
        sub_1C6E9B434(319, qword_1EDEF7AC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C6E9B814()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212E30);
  __swift_project_value_buffer(v0, qword_1EC212E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EEA170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 5;
  *v6 = "header";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "graph_nodes";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "model_packages";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "default_features";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E9BA68()
{
  result = sub_1C6EE44B0();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4)
        {
          v3 = v0;
          type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures(0);
          sub_1C6E9F550(&qword_1EDEF6300, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures);
LABEL_5:
          v0 = v3;
          sub_1C6EE4590();
          goto LABEL_6;
        }

        if (result == 5)
        {
          sub_1C6E9BC30();
        }
      }

      else
      {
        if (result == 2)
        {
          v3 = v0;
          type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0);
          sub_1C6E9F550(qword_1EDEF72B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode);
          goto LABEL_5;
        }

        if (result == 3)
        {
          v3 = v0;
          type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
          sub_1C6E9F550(qword_1EDEF8C70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E9BC30()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec(0) + 32);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader(0);
  sub_1C6E9F550(qword_1EDEF7368, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E9BCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*(*v3 + 16))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0);
    sub_1C6E9F550(qword_1EDEF72B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode);
    result = sub_1C6EE46D0();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3[1] + 16))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
    sub_1C6E9F550(qword_1EDEF8C70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
    v10 = v5;
    result = sub_1C6EE46D0();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v10 = v5;
  }

  if (!*(v3[2] + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures(0), sub_1C6E9F550(&qword_1EDEF6300, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures), result = sub_1C6EE46D0(), !v10))
  {
    result = sub_1C6E9BED8(v3, a1, a2, a3);
    if (!v10)
    {
      v11 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec(0) + 28);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E9BED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF8, &unk_1C6EF23C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec(0);
  sub_1C6EA130C(a1 + *(v14 + 32), v8, &qword_1EC1F7EF8, &unk_1C6EF23C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EA1374(v8, &qword_1EC1F7EF8, &unk_1C6EF23C0);
  }

  sub_1C6E9FD60(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);
  sub_1C6E9F550(qword_1EDEF7368, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);
  sub_1C6EE46E0();
  return sub_1C6E9FDC8(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);
}

uint64_t sub_1C6E9C0E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v4;
  *(a2 + 2) = v4;
  v5 = &a2[*(a1 + 28)];
  sub_1C6EE4420();
  v6 = *(a1 + 32);
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t (*sub_1C6E9C194(uint64_t a1, uint64_t a2))()
{
  result = nullsub_134;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1C6E9C1EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E9F550(&qword_1EC1F90B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E9C28C(uint64_t a1)
{
  v2 = sub_1C6E9F550(qword_1EDEF7A60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E9C2F8()
{
  sub_1C6E9F550(qword_1EDEF7A60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E9C378()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212E48);
  __swift_project_value_buffer(v0, qword_1EC212E48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "description";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E9C53C()
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6E9C5CC();
    }

    else if (result == 2)
    {
      sub_1C6EE4580();
    }
  }

  return result;
}

uint64_t sub_1C6E9C5CC()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader(0) + 24);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  sub_1C6E9F550(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E9C680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E9C72C(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = *v3;
    v7 = v3[1];
    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      sub_1C6EE46C0();
    }

    v9 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader(0) + 20);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E9C72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader(0);
  sub_1C6EA130C(a1 + *(v14 + 24), v8, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EA1374(v8, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6E9FD60(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E9F550(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EE46E0();
  return sub_1C6E9FDC8(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6E9C940@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[*(a1 + 20)];
  sub_1C6EE4420();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t (*sub_1C6E9C9E4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_135;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6E9CA3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E9F550(&qword_1EC1F90C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E9CADC(uint64_t a1)
{
  v2 = sub_1C6E9F550(qword_1EDEF7368, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E9CB48()
{
  sub_1C6E9F550(qword_1EDEF7368, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E9CBC8()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212E60);
  __swift_project_value_buffer(v0, qword_1EC212E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "applied_to_apis";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "defaults";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E9CD98()
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6EE4570();
    }

    else if (result == 2)
    {
      sub_1C6E9CE28();
    }
  }

  return result;
}

uint64_t sub_1C6E9CE28()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures(0) + 24);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  sub_1C6E9F550(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E9CEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_1C6EE46B0(), !v4))
  {
    result = sub_1C6E9CF7C(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures(0) + 20);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E9CF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures(0);
  sub_1C6EA130C(a1 + *(v14 + 24), v8, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EA1374(v8, &qword_1EC1F7D68, &unk_1C6EE89B0);
  }

  sub_1C6E9FD60(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6E9F550(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6EE46E0();
  return sub_1C6E9FDC8(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
}

uint64_t sub_1C6E9D18C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v4 = &a2[*(a1 + 20)];
  sub_1C6EE4420();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t (*sub_1C6E9D234(uint64_t a1, uint64_t a2))()
{
  result = nullsub_136;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6E9D28C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E9F550(&qword_1EC1F90C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E9D32C(uint64_t a1)
{
  v2 = sub_1C6E9F550(&qword_1EDEF6300, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E9D398()
{
  sub_1C6E9F550(&qword_1EDEF6300, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E9D438()
{
  result = sub_1C6EE44B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiBinding(0);
        sub_1C6E9F550(&qword_1EC1F9040, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiBinding);
        sub_1C6EE4590();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E9D518()
{
  if (!*(*v0 + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiBinding(0), sub_1C6E9F550(&qword_1EC1F9040, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiBinding), result = sub_1C6EE46D0(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiSpec(0) + 20);
    return sub_1C6EE4410();
  }

  return result;
}