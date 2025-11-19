uint64_t sub_1C6E5E85C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v22 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v20 = 1;
      return v20 & 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1C6E6EB04(v14, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution);
      sub_1C6E6EB04(v15, v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution);
      v17 = *v11;
      v18 = *v8;
      if (v8[8] == 1)
      {
        if (v18 > 1)
        {
          if (v18 == 2)
          {
            if (v17 != 2)
            {
              break;
            }
          }

          else if (v17 != 3)
          {
            break;
          }
        }

        else if (v18)
        {
          if (v17 != 1)
          {
            break;
          }
        }

        else if (v17)
        {
          break;
        }
      }

      else if (v17 != v18)
      {
        break;
      }

      if ((v11[2] != *(v8 + 2) || v11[3] != *(v8 + 3)) && (sub_1C6EE54B0() & 1) == 0 || (v11[4] != *(v8 + 4) || v11[5] != *(v8 + 5)) && (sub_1C6EE54B0() & 1) == 0)
      {
        break;
      }

      v19 = *(v4 + 28);
      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v20 = sub_1C6EE4A50();
      sub_1C6E6B094(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution);
      sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution);
      if (v20)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_1C6E6B094(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution);
    sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_Substitution);
  }

  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1C6E5EB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v28 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_25:
    v27 = 0;
    return v27 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v27 = 1;
    return v27 & 1;
  }

  v13 = 0;
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = *(v9 + 72);
  while (1)
  {
    result = sub_1C6E6EB04(v15 + v17 * v13, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding);
    if (v13 == v12)
    {
      break;
    }

    sub_1C6E6EB04(v16 + v17 * v13, v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding);
    result = *v11;
    v19 = *v11 == *v8 && v11[1] == v8[1];
    if (!v19 && (result = sub_1C6EE54B0(), (result & 1) == 0) || (v20 = v11[2], v21 = v8[2], v22 = *(v20 + 16), v22 != *(v21 + 16)))
    {
LABEL_24:
      sub_1C6E6B094(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding);
      sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding);
      goto LABEL_25;
    }

    if (v22)
    {
      v23 = v20 == v21;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      v24 = (v20 + 32);
      v25 = (v21 + 32);
      while (v22)
      {
        if (*v24 != *v25)
        {
          goto LABEL_24;
        }

        ++v24;
        ++v25;
        if (!--v22)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      break;
    }

LABEL_20:
    v26 = *(v4 + 24);
    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    v27 = sub_1C6EE4A50();
    sub_1C6E6B094(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding);
    sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenEmbedding);
    if ((v27 & 1) != 0 && ++v13 != v12)
    {
      continue;
    }

    return v27 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E5EE34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = a3(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v16 = (&v31 - v15);
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
LABEL_30:
    v30 = 0;
    return v30 & 1;
  }

  if (!v17 || a1 == a2)
  {
    v30 = 1;
    return v30 & 1;
  }

  v18 = 0;
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v32 = a2 + v19;
  v33 = *(v14 + 72);
  v34 = a1 + v19;
  while (1)
  {
    v20 = v33 * v18;
    result = sub_1C6E6EB04(v34 + v33 * v18, v16, a4);
    if (v18 == v17)
    {
      break;
    }

    sub_1C6E6EB04(v32 + v20, v13, a4);
    v22 = *v16 == *v13 && v16[1] == v13[1];
    if (!v22 && (sub_1C6EE54B0() & 1) == 0 || (v16[2] != v13[2] || v16[3] != v13[3]) && (sub_1C6EE54B0() & 1) == 0)
    {
      goto LABEL_29;
    }

    v23 = v16[4];
    v24 = v13[4];
    v25 = *(v23 + 16);
    if (v25 != *(v24 + 16))
    {
      goto LABEL_29;
    }

    if (v25 && v23 != v24)
    {
      v26 = (v23 + 40);
      v27 = (v24 + 40);
      while (1)
      {
        v28 = *(v26 - 1) == *(v27 - 1) && *v26 == *v27;
        if (!v28 && (sub_1C6EE54B0() & 1) == 0)
        {
          break;
        }

        v26 += 2;
        v27 += 2;
        if (!--v25)
        {
          goto LABEL_25;
        }
      }

LABEL_29:
      sub_1C6E6B094(v13, a5);
      sub_1C6E6B094(v16, a5);
      goto LABEL_30;
    }

LABEL_25:
    v29 = *(v9 + 28);
    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    v30 = sub_1C6EE4A50();
    sub_1C6E6B094(v13, a5);
    sub_1C6E6B094(v16, a5);
    if ((v30 & 1) != 0 && ++v18 != v17)
    {
      continue;
    }

    return v30 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E5F0FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v30 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_48:
    v29 = 0;
    return v29 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v29 = 1;
    return v29 & 1;
  }

  v13 = 0;
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = *(v9 + 72);
  while (1)
  {
    result = sub_1C6E6EB04(v15 + v17 * v13, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    if (v13 == v12)
    {
      break;
    }

    sub_1C6E6EB04(v16 + v17 * v13, v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    result = *v11;
    v19 = *v11 == *v8 && v11[1] == *(v8 + 1);
    if (!v19 && (result = sub_1C6EE54B0(), (result & 1) == 0) || (v20 = v11[2], v21 = *(v8 + 2), v22 = *(v20 + 16), v22 != *(v21 + 16)))
    {
LABEL_47:
      sub_1C6E6B094(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      goto LABEL_48;
    }

    if (v22)
    {
      v23 = v20 == v21;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      v24 = (v20 + 32);
      v25 = (v21 + 32);
      while (v22)
      {
        if (*v24 != *v25)
        {
          goto LABEL_47;
        }

        ++v24;
        ++v25;
        if (!--v22)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      break;
    }

LABEL_20:
    v26 = v11[3];
    v27 = *(v8 + 3);
    if (v8[32] == 1)
    {
      if (v27 > 3)
      {
        if (v27 > 5)
        {
          if (v27 == 6)
          {
            if (v26 != 6)
            {
              goto LABEL_47;
            }
          }

          else if (v26 != 7)
          {
            goto LABEL_47;
          }
        }

        else if (v27 == 4)
        {
          if (v26 != 4)
          {
            goto LABEL_47;
          }
        }

        else if (v26 != 5)
        {
          goto LABEL_47;
        }
      }

      else if (v27 > 1)
      {
        if (v27 == 2)
        {
          if (v26 != 2)
          {
            goto LABEL_47;
          }
        }

        else if (v26 != 3)
        {
          goto LABEL_47;
        }
      }

      else if (v27)
      {
        if (v26 != 1)
        {
          goto LABEL_47;
        }
      }

      else if (v26)
      {
        goto LABEL_47;
      }
    }

    else if (v26 != v27)
    {
      goto LABEL_47;
    }

    v28 = *(v4 + 28);
    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    v29 = sub_1C6EE4A50();
    sub_1C6E6B094(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    if ((v29 & 1) != 0 && ++v13 != v12)
    {
      continue;
    }

    return v29 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E5F458(uint64_t result, uint64_t a2)
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

uint64_t sub_1C6E5F4B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7105633;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x5047646E41757063;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (v3 == 2)
    {
      v5 = 0xE900000000000055;
    }

    else
    {
      v5 = 0x80000001C6EF7AC0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x796C6E4F757063;
    }

    else
    {
      v4 = 7105633;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0x5047646E41757063;
  v8 = 0x80000001C6EF7AC0;
  if (a2 == 2)
  {
    v8 = 0xE900000000000055;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (a2)
  {
    v2 = 0x796C6E4F757063;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C6EE54B0();
  }

  return v11 & 1;
}

uint64_t sub_1C6E5F638(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6EA08();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6E5F6E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6EA5C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1C6E5F730()
{
  result = qword_1EDEF7C78;
  if (!qword_1EDEF7C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF7C78);
  }

  return result;
}

unint64_t sub_1C6E5F7B8()
{
  result = qword_1EDEF7C80;
  if (!qword_1EDEF7C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF7C80);
  }

  return result;
}

unint64_t sub_1C6E5F810()
{
  result = qword_1EDEF7C70;
  if (!qword_1EDEF7C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF7C70);
  }

  return result;
}

uint64_t sub_1C6E5F87C@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_1C6E5F8DC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_1C6E5F918(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6EAB0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1C6E5F968()
{
  result = qword_1EDEF8F58;
  if (!qword_1EDEF8F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF8F58);
  }

  return result;
}

unint64_t sub_1C6E5F9F0()
{
  result = qword_1EDEF8F60;
  if (!qword_1EDEF8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF8F60);
  }

  return result;
}

unint64_t sub_1C6E5FA48()
{
  result = qword_1EDEF8F50;
  if (!qword_1EDEF8F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF8F50);
  }

  return result;
}

unint64_t sub_1C6E5FAA0()
{
  result = qword_1EDEF8D30;
  if (!qword_1EDEF8D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF8D30);
  }

  return result;
}

unint64_t sub_1C6E5FB28()
{
  result = qword_1EDEF8D38;
  if (!qword_1EDEF8D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF8D38);
  }

  return result;
}

unint64_t sub_1C6E5FB80()
{
  result = qword_1EDEF8D28;
  if (!qword_1EDEF8D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF8D28);
  }

  return result;
}

unint64_t sub_1C6E5FBD4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_1C6E5FBFC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C6E5FC18()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E5FC84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6EB6C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6E5FCD0()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E5FD4C()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC2126E0);
  __swift_project_value_buffer(v0, qword_1EC2126E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EEA120;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "underlying_resource";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "input_aliases";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "output_aliases";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "node_cache_policy";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "id";
  *(v15 + 8) = 2;
  *(v15 + 16) = 2;
  v16 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E5FFE4()
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

      if (result <= 2)
      {
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

LABEL_14:
          sub_1C6EE4400();
          sub_1C6EE44A0();
          goto LABEL_5;
        }

        sub_1C6E60130();
      }

      else
      {
        switch(result)
        {
          case 3:
            goto LABEL_14;
          case 4:
            sub_1C6E601E4();
            break;
          case 5:
            sub_1C6E60298();
            break;
        }
      }

LABEL_5:
      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E60130()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0) + 28);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
  sub_1C6E6989C(qword_1EDEF8C70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E601E4()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0) + 32);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0);
  sub_1C6E6989C(qword_1EDEF7208, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E60298()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0) + 36);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  sub_1C6E6989C(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E6034C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6E6049C(v3, a1, a2, a3);
  if (!v4)
  {
    v10 = *v3;
    if (*(*v5 + 16))
    {
      sub_1C6EE4400();
      sub_1C6EE4620();
    }

    if (*(v5[1] + 16))
    {
      sub_1C6EE4400();
      sub_1C6EE4620();
    }

    sub_1C6E606B8(v5, a1, a2, a3);
    sub_1C6E608D4(v5, a1, a2, a3);
    v11 = v5 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0) + 24);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E6049C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F10, &qword_1C6EE92A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0);
  sub_1C6E6EBC0(a1 + *(v14 + 28), v8, &qword_1EC1F7F10, &qword_1C6EE92A8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E6EC28(v8, &qword_1EC1F7F10, &qword_1C6EE92A8);
  }

  sub_1C6E6B02C(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
  sub_1C6E6989C(qword_1EDEF8C70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
  sub_1C6EE46E0();
  return sub_1C6E6B094(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
}

uint64_t sub_1C6E606B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7508, &unk_1C6EE6690);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0);
  sub_1C6E6EBC0(a1 + *(v14 + 32), v8, &qword_1EC1F7508, &unk_1C6EE6690);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E6EC28(v8, &qword_1EC1F7508, &unk_1C6EE6690);
  }

  sub_1C6E6B02C(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
  sub_1C6E6989C(qword_1EDEF7208, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
  sub_1C6EE46E0();
  return sub_1C6E6B094(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
}

uint64_t sub_1C6E608D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0);
  sub_1C6E6EBC0(a1 + *(v14 + 36), v8, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E6EC28(v8, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6E6B02C(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E6989C(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EE46E0();
  return sub_1C6E6B094(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6E60AF0@<X0>(int *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = sub_1C6E0C808(MEMORY[0x1E69E7CC0]);
  a2[1] = sub_1C6E0C808(v4);
  v5 = a2 + a1[6];
  sub_1C6EE4420();
  v6 = a1[7];
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[8];
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0);
  (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  v10 = a1[9];
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v12 = *(*(v11 - 8) + 56);

  return v12(a2 + v10, 1, 1, v11);
}

uint64_t (*sub_1C6E60C3C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_58;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6E60C94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F8208, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E60D34(uint64_t a1)
{
  v2 = sub_1C6E6989C(qword_1EDEF72B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E60DA0()
{
  sub_1C6E6989C(qword_1EDEF72B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E60E20()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC2126F8);
  __swift_project_value_buffer(v0, qword_1EC2126F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "model_storage";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "model_spec";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E60FE8()
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
      sub_1C6E6107C();
    }

    else if (result == 2)
    {
      sub_1C6E61130();
    }
  }

  return result;
}

uint64_t sub_1C6E6107C()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0) + 20);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage(0);
  sub_1C6E6989C(qword_1EDEF8BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E61130()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0) + 24);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
  sub_1C6E6989C(qword_1EDEF8DF0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E611E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E61254(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6E61470(v3, a1, a2, a3);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E61254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7820, &unk_1C6EEA180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
  sub_1C6E6EBC0(a1 + *(v14 + 20), v8, &qword_1EC1F7820, &unk_1C6EEA180);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E6EC28(v8, &qword_1EC1F7820, &unk_1C6EEA180);
  }

  sub_1C6E6B02C(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
  sub_1C6E6989C(qword_1EDEF8BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
  sub_1C6EE46E0();
  return sub_1C6E6B094(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
}

uint64_t sub_1C6E61470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7810, &unk_1C6EE9270);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
  sub_1C6E6EBC0(a1 + *(v14 + 24), v8, &qword_1EC1F7810, &unk_1C6EE9270);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E6EC28(v8, &qword_1EC1F7810, &unk_1C6EE9270);
  }

  sub_1C6E6B02C(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
  sub_1C6E6989C(qword_1EDEF8DF0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
  sub_1C6EE46E0();
  return sub_1C6E6B094(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
}

uint64_t sub_1C6E6168C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6EE4420();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6E617C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F8250, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E61860(uint64_t a1)
{
  v2 = sub_1C6E6989C(qword_1EDEF8C70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E618CC()
{
  sub_1C6E6989C(qword_1EDEF8C70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E6194C()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212710);
  __swift_project_value_buffer(v0, qword_1EC212710);
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
  *v10 = "model_id";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v12 = "model_io_spec";
  *(v12 + 8) = 13;
  *(v12 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E61B68()
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
        sub_1C6E61D88();
        break;
      case 2:
        sub_1C6E61CD4();
        break;
      case 1:
        sub_1C6E61C20();
        break;
    }
  }

  return result;
}

uint64_t sub_1C6E61C20()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0) + 20);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  sub_1C6E6989C(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E61CD4()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0) + 24);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification(0);
  sub_1C6E6989C(&qword_1EDEF8F48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E61D88()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0) + 28);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec(0);
  sub_1C6E6989C(&qword_1EDEF8D20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E61E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E61EC4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6E620E0(v3, a1, a2, a3);
    sub_1C6E622FC(v3, a1, a2, a3);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E61EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
  sub_1C6E6EBC0(a1 + *(v14 + 20), v8, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E6EC28(v8, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6E6B02C(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E6989C(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EE46E0();
  return sub_1C6E6B094(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6E620E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EE8, &unk_1C6EEA1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
  sub_1C6E6EBC0(a1 + *(v14 + 24), v8, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E6EC28(v8, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
  }

  sub_1C6E6B02C(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
  sub_1C6E6989C(&qword_1EDEF8F48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
  sub_1C6EE46E0();
  return sub_1C6E6B094(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
}

uint64_t sub_1C6E622FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EE0, &unk_1C6EE9260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
  sub_1C6E6EBC0(a1 + *(v14 + 28), v8, &qword_1EC1F7EE0, &unk_1C6EE9260);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E6EC28(v8, &qword_1EC1F7EE0, &unk_1C6EE9260);
  }

  sub_1C6E6B02C(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  sub_1C6E6989C(&qword_1EDEF8D20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  sub_1C6EE46E0();
  return sub_1C6E6B094(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
}

uint64_t sub_1C6E62518@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6EE4420();
  v4 = a1[5];
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[7];
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t sub_1C6E62690(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F8258, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E62730(uint64_t a1)
{
  v2 = sub_1C6E6989C(qword_1EDEF8DF0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E6279C()
{
  sub_1C6E6989C(qword_1EDEF8DF0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E6281C()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212728);
  __swift_project_value_buffer(v0, qword_1EC212728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "md5_hex_digest";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v12 = "type";
  *(v12 + 8) = 4;
  *(v12 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E62A38()
{
  result = sub_1C6EE44B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3)
      {
        sub_1C6E6EA08();
        sub_1C6EE44E0();
      }

      else if (result == 2 || result == 1)
      {
        sub_1C6EE4580();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E62B04()
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
      if (!v0[4] || (v9 = v0[4], v10 = *(v0 + 40), sub_1C6E6EA08(), result = sub_1C6EE4660(), !v1))
      {
        v8 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification(0) + 28);
        return sub_1C6EE4410();
      }
    }
  }

  return result;
}

uint64_t sub_1C6E62C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v2 = a2 + *(a1 + 28);
  return sub_1C6EE4420();
}

uint64_t (*sub_1C6E62C6C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_61;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1C6E62CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F8260, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E62D64(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EDEF8F48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E62DD0()
{
  sub_1C6E6989C(&qword_1EDEF8F48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E62E9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F8268, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelType);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E62F3C(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EC1F81C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelType);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E62FA8()
{
  sub_1C6E6989C(&qword_1EC1F81C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelType);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E63024()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212758);
  __swift_project_value_buffer(v0, qword_1EC212758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C6EEA130;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 0;
  *v5 = "UNKNOWN";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C6EE46F0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "TENSORFLOW";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "MESSAGE_PREPROCESSING";
  *(v11 + 1) = 21;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "TEXT_PREPROCESSING";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "TEXT_OUTPUT";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "TEXT_CODES";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "COREML";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "FEATURE_PREPROCESSING";
  *(v21 + 1) = 21;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "PYTORCH";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "WORDPIECE_TOKENIZER";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v8();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E63400()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212770);
  __swift_project_value_buffer(v0, qword_1EC212770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "inputs";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "outputs";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E635C8()
{
  result = sub_1C6EE44B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1 || result == 2)
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
        sub_1C6E6989C(qword_1EDEF8E98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        sub_1C6EE4590();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E636F8()
{
  if (!*(*v0 + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0), sub_1C6E6989C(qword_1EDEF8E98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO), result = sub_1C6EE46D0(), !v1))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0), sub_1C6E6989C(qword_1EDEF8E98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO), result = sub_1C6EE46D0(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec(0) + 24);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E63854@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v2;
  v3 = a2 + *(a1 + 24);
  return sub_1C6EE4420();
}

uint64_t (*sub_1C6E6389C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_63;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6E638F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F8270, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E63994(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EDEF8D20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E63A00()
{
  sub_1C6E6989C(&qword_1EDEF8D20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E63A7C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1C6E5F0FC(*a1, *a2) & 1) == 0 || (sub_1C6E5F0FC(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E63B34()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212788);
  __swift_project_value_buffer(v0, qword_1EC212788);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shape";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "dtype";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E63D44()
{
  result = sub_1C6EE44B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1C6E6EA5C();
          sub_1C6EE44E0();
          break;
        case 2:
          sub_1C6EE4500();
          break;
        case 1:
          sub_1C6EE4580();
          break;
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E63E20()
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
    if (!*(v0[2] + 16) || (result = sub_1C6EE4640(), !v1))
    {
      if (!v0[3] || (v7 = v0[3], v8 = *(v0 + 32), sub_1C6E6EA5C(), result = sub_1C6EE4660(), !v1))
      {
        v6 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0) + 28);
        return sub_1C6EE4410();
      }
    }
  }

  return result;
}

uint64_t sub_1C6E63F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = v2;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  v3 = a2 + *(a1 + 28);
  return sub_1C6EE4420();
}

uint64_t sub_1C6E63F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E63FF4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E64068(uint64_t a1, uint64_t a2))()
{
  result = nullsub_64;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1C6E640C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F8278, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E64160(uint64_t a1)
{
  v2 = sub_1C6E6989C(qword_1EDEF8E98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E641CC()
{
  sub_1C6E6989C(qword_1EDEF8E98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E6426C()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec(0) + 20);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue(0);
  sub_1C6E6989C(&qword_1EDEF62D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E64320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C30, &qword_1C6EEC710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec(0);
  sub_1C6E6EBC0(a1 + *(v14 + 20), v8, &qword_1EC1F7C30, &qword_1C6EEC710);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E6EC28(v8, &qword_1EC1F7C30, &qword_1C6EEC710);
  }

  sub_1C6E6B02C(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue);
  sub_1C6E6989C(&qword_1EDEF62D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue);
  sub_1C6EE46E0();
  return sub_1C6E6B094(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue);
}

uint64_t sub_1C6E645EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F8280, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E6468C(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EDEF62B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E646F8()
{
  sub_1C6E6989C(&qword_1EDEF62B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E64778()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC2127B8);
  __swift_project_value_buffer(v0, qword_1EC2127B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C6EEA120;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "float16_little_endian_bytes";
  *(v5 + 8) = 27;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C6EE46F0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "float_value";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "int32_value";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "int64_value";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "bytes_value";
  *(v14 + 8) = 11;
  *(v14 + 16) = 2;
  v8();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E649FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        goto LABEL_14;
      }

      if (result == 2)
      {
        sub_1C6E64B34(a1, v5, a2, a3, MEMORY[0x1E69AAC80], 0x1000000000000000);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_1C6E64B34(a1, v5, a2, a3, MEMORY[0x1E69AAC90], 0x2000000000000000);
          break;
        case 4:
          sub_1C6E64C04();
          break;
        case 5:
LABEL_14:
          sub_1C6E64CD0();
          break;
      }
    }
  }
}

uint64_t sub_1C6E64B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(unsigned int *, uint64_t, uint64_t), uint64_t a6)
{
  v14 = 0;
  v15 = 1;
  result = a5(&v14, a3, a4);
  if (!v6 && (v15 & 1) == 0)
  {
    v10 = v14;
    v11 = *(a2 + 8);
    if ((~v11 & 0x3000000000000000) != 0 || *(a2 + 16) != 255)
    {
      sub_1C6EE44C0();
      v11 = *(a2 + 8);
      v12 = *(a2 + 16);
    }

    else
    {
      v12 = -1;
    }

    v13 = *a2;
    *a2 = v10;
    *(a2 + 8) = a6;
    *(a2 + 16) = 0;
    return sub_1C6E1E420(v13, v11, v12);
  }

  return result;
}

uint64_t sub_1C6E64DE4()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if ((~v2 & 0x3000000000000000) == 0 && v3 == 255)
  {
    goto LABEL_3;
  }

  v6 = (v2 >> 60) & 3 | (4 * (v3 & 1));
  if (v6 <= 1)
  {
    if (v6)
    {
      result = sub_1C6E64F84(v0);
      if (!v1)
      {
        goto LABEL_3;
      }
    }

    else
    {
      result = sub_1C6E64ED0(v0);
      if (!v1)
      {
        goto LABEL_3;
      }
    }
  }

  else if (v6 == 2)
  {
    result = sub_1C6E64FE8(v0);
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  else if (v6 == 3)
  {
    result = sub_1C6E65048(v0);
    if (!v1)
    {
LABEL_3:
      v4 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue(0) + 20);
      return sub_1C6EE4410();
    }
  }

  else
  {
    result = sub_1C6E650A8(v0);
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t sub_1C6E64ED0(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 8);
  v3 = *(result + 16);
  if ((~v2 & 0x3000000000000000) == 0 && v3 == 255 || (v2 >> 60) & 3 | (4 * (v3 & 1u)))
  {
    __break(1u);
  }

  else
  {
    sub_1C6E1E408(*result, v2);
    sub_1C6EE4670();
    return sub_1C6E1E420(v1, v2, v3);
  }

  return result;
}

uint64_t sub_1C6E64F84(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 8);
  v3 = *(result + 16);
  if (((~v2 & 0x3000000000000000) != 0 || v3 != 255) && ((v2 >> 60) & 3 | (4 * (v3 & 1u))) == 1)
  {
    return sub_1C6EE4680();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E64FE8(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (((~v3 & 0x3000000000000000) != 0 || v4 != 255) && ((v3 >> 60) & 3 | (4 * (v4 & 1u))) == 2)
  {
    return sub_1C6EE4690();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E65048(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (((~v3 & 0x3000000000000000) != 0 || v4 != 255) && ((v3 >> 60) & 3 | (4 * (v4 & 1u))) == 3)
  {
    return sub_1C6EE46A0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E650A8(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 8);
  v3 = *(result + 16);
  if (((~v2 & 0x3000000000000000) != 0 || v3 != 255) && ((v2 >> 60) & 3 | (4 * (v3 & 1u))) == 4)
  {
    sub_1C6E1E408(*result, v2);
    sub_1C6EE4670();
    return sub_1C6E1E420(v1, v2, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6E65160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1C6EE7FC0;
  *(a2 + 16) = -1;
  v2 = a2 + *(a1 + 20);
  return sub_1C6EE4420();
}

uint64_t (*sub_1C6E651B0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_66;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6E65208(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F8290, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E652A8(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EDEF62D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E65314()
{
  sub_1C6E6989C(&qword_1EDEF62D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E653E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F8298, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_DType);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E65480(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EC1F8160, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_DType);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E654EC()
{
  sub_1C6E6989C(&qword_1EC1F8160, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_DType);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E65568()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC2127E8);
  __swift_project_value_buffer(v0, qword_1EC2127E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C6EEA150;
  v4 = v22 + v3 + v1[14];
  *(v22 + v3) = 0;
  *v4 = "UNKNOWN";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C6EE46F0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v22 + v3 + v2 + v1[14];
  *(v22 + v3 + v2) = 1;
  *v8 = "TEXT";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v22 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "INT_32";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v22 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "INT_64";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v22 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "FLOAT_32";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v7();
  v15 = (v22 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "FLOAT_64";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v22 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "BYTES";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  v19 = (v22 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "FLOAT_16";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v7();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E658E8()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPolicySpec(0) + 20);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec(0);
  sub_1C6E6989C(&qword_1EC1F8120, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E6599C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F82A8, &qword_1C6EEC720);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPolicySpec(0);
  sub_1C6E6EBC0(a1 + *(v14 + 20), v8, &qword_1EC1F82A8, &qword_1C6EEC720);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E6EC28(v8, &qword_1EC1F82A8, &qword_1C6EEC720);
  }

  sub_1C6E6B02C(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec);
  sub_1C6E6989C(&qword_1EC1F8120, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec);
  sub_1C6EE46E0();
  return sub_1C6E6B094(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec);
}

uint64_t sub_1C6E65BD0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  sub_1C6EE4420();
  v6 = *(a1 + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t sub_1C6E65CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F82A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPolicySpec);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E65D90(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EC1F8140, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPolicySpec);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E65DFC()
{
  sub_1C6E6989C(&qword_1EC1F8140, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPolicySpec);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E65E9C()
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
      sub_1C6EE4530();
    }
  }

  return result;
}

uint64_t sub_1C6E65F0C()
{
  if (!*v0 || (result = sub_1C6EE4680(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec(0) + 20);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E65FA0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1 + 20);
  return sub_1C6EE4420();
}

uint64_t (*sub_1C6E65FE0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_69;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6E66038(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F82B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E660D8(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EC1F8120, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E66144()
{
  sub_1C6E6989C(&qword_1EC1F8120, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E661C0(float *a1, float *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E66264()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212830);
  __swift_project_value_buffer(v0, qword_1EC212830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "model_path";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "model_storage_type";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E6642C()
{
  result = sub_1C6EE44B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C6EE4580();
      }

      else if (result == 2)
      {
        sub_1C6E6EAB0();
        sub_1C6EE44E0();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E664E8()
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
    if (!v0[2] || (v7 = v0[2], v8 = *(v0 + 24), sub_1C6E6EAB0(), result = sub_1C6EE4660(), !v1))
    {
      v6 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage(0) + 24);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E665CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v2 = a2 + *(a1 + 24);
  return sub_1C6EE4420();
}

uint64_t sub_1C6E6661C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E66690(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E66704(uint64_t a1, uint64_t a2))()
{
  result = nullsub_70;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6E6675C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F82C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E667FC(uint64_t a1)
{
  v2 = sub_1C6E6989C(qword_1EDEF8BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E66868()
{
  sub_1C6E6989C(qword_1EDEF8BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E668F4()
{
  do
  {
    result = sub_1C6EE44B0();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_1C6E66990(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F82C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorageType);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E66A30(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EC1F80F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorageType);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E66A9C()
{
  sub_1C6E6989C(&qword_1EC1F80F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorageType);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E66B18()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212860);
  __swift_project_value_buffer(v0, qword_1EC212860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1C6EEA160;
  v4 = v34 + v3;
  v5 = v34 + v3 + v1[14];
  *(v34 + v3) = 0;
  *v5 = "UNKNOWN";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C6EE46F0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v34 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "TENSORFLOW_SAVED_MODEL";
  *(v9 + 8) = 22;
  *(v9 + 16) = 2;
  v8();
  v10 = (v34 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "MESSAGE_PREPROCESSING_SPEC_PB";
  *(v11 + 1) = 29;
  v11[16] = 2;
  v8();
  v12 = (v34 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "TOKENIZER_PB";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v34 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "FROZEN_GRAPH_PB";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v34 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "TENSORFLOW_H5";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v34 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "TEXT_CODES_PB";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v34 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "CODES_SPEC_PB";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v34 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "COREML_MLMODEL";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  v23 = (v34 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "COREML_MLPACKAGE";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v34 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "COREML_COMPILED_MODEL";
  *(v26 + 1) = 21;
  v26[16] = 2;
  v8();
  v27 = (v34 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "FEATURE_PREPROCESSING_SPEC_PB";
  *(v28 + 1) = 29;
  v28[16] = 2;
  v8();
  v29 = (v34 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "PYTORCH_TRACED_MODEL";
  *(v30 + 1) = 20;
  v30[16] = 2;
  v8();
  v31 = (v34 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "WORDPIECE_TOKENIZER_PB";
  *(v32 + 1) = 22;
  v32[16] = 2;
  v8();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E67000()
{
  result = sub_1C6EE44B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec(0);
        sub_1C6E6989C(&qword_1EC1F80B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec);
        sub_1C6EE4590();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E670E0()
{
  if (!*(*v0 + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec(0), sub_1C6E6989C(&qword_1EC1F80B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec), result = sub_1C6EE46D0(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_MessagePreprocessingSpec(0) + 20);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E671C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1 + 20);
  return sub_1C6EE4420();
}

uint64_t (*sub_1C6E6720C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_72;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6E67264(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F82D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_MessagePreprocessingSpec);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E67304(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EC1F80D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_MessagePreprocessingSpec);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E67370()
{
  sub_1C6E6989C(&qword_1EC1F80D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_MessagePreprocessingSpec);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E673EC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1C6E5A718(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E67494()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212890);
  __swift_project_value_buffer(v0, qword_1EC212890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EEA170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "source_field_names";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "join_string";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E676E8()
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

      if (result > 2)
      {
        if (result == 3)
        {
          sub_1C6EE4570();
          goto LABEL_5;
        }

        if (result == 4)
        {
LABEL_13:
          sub_1C6EE4580();
        }
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_13;
        }

        if (result == 2)
        {
          sub_1C6E6EB6C();
          sub_1C6EE44E0();
        }
      }

LABEL_5:
      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E677DC()
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
    if (!v0[2] || (v9 = v0[2], v10 = *(v0 + 24), sub_1C6E6EB6C(), result = sub_1C6EE4660(), !v1))
    {
      if (!*(v0[4] + 16) || (result = sub_1C6EE46B0(), !v1))
      {
        v6 = v0[6];
        v7 = HIBYTE(v6) & 0xF;
        if ((v6 & 0x2000000000000000) == 0)
        {
          v7 = v0[5] & 0xFFFFFFFFFFFFLL;
        }

        if (!v7 || (result = sub_1C6EE46C0(), !v1))
        {
          v8 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec(0) + 32);
          return sub_1C6EE4410();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C6E6791C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = MEMORY[0x1E69E7CC0];
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  v2 = a2 + *(a1 + 32);
  return sub_1C6EE4420();
}

uint64_t sub_1C6E6797C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E679F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E67A64(uint64_t a1, uint64_t a2))()
{
  result = nullsub_73;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_1C6E67ABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F82D8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E67B5C(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EC1F80B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E67BC8()
{
  sub_1C6E6989C(&qword_1EC1F80B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E67C54(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1C6EE4710();
}

uint64_t sub_1C6E67CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F82E8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorType);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E67D7C(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EC1F8090, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorType);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E67DE8()
{
  sub_1C6E6989C(&qword_1EC1F8090, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorType);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E67E64()
{
  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E67EEC()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC2128C0);
  __swift_project_value_buffer(v0, qword_1EC2128C0);
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
  *v10 = "SIMPLE";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "STRING_JOIN";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E68120()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC2128D8);
  __swift_project_value_buffer(v0, qword_1EC2128D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "retention_key";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "token";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E682F0()
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
      sub_1C6E68380();
    }

    else if (result == 2)
    {
      sub_1C6EE4580();
    }
  }

  return result;
}

uint64_t sub_1C6E68380()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData(0) + 24);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey(0);
  sub_1C6E6989C(qword_1EDEF7608, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E68434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E684E0(v3, a1, a2, a3);
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

    v9 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData(0) + 20);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E684E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8000, &unk_1C6EEA4C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData(0);
  sub_1C6E6EBC0(a1 + *(v14 + 24), v8, &qword_1EC1F8000, &unk_1C6EEA4C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E6EC28(v8, &qword_1EC1F8000, &unk_1C6EEA4C0);
  }

  sub_1C6E6B02C(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
  sub_1C6E6989C(qword_1EDEF7608, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
  sub_1C6EE46E0();
  return sub_1C6E6B094(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
}

uint64_t sub_1C6E686FC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[*(a1 + 20)];
  sub_1C6EE4420();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t (*sub_1C6E687A0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_75;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6E687F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F82F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E68898(uint64_t a1)
{
  v2 = sub_1C6E6989C(&qword_1EC1F8070, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E68904()
{
  sub_1C6E6989C(&qword_1EC1F8070, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E689A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6E68A28()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0) + 20);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey(0);
  sub_1C6E6989C(qword_1EDEF7608, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E68ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a4(v4, a1, a2, a3);
  if (!v5)
  {
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E68B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8000, &unk_1C6EEA4C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0);
  sub_1C6E6EBC0(a1 + *(v14 + 20), v8, &qword_1EC1F8000, &unk_1C6EEA4C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E6EC28(v8, &qword_1EC1F8000, &unk_1C6EEA4C0);
  }

  sub_1C6E6B02C(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
  sub_1C6E6989C(qword_1EDEF7608, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
  sub_1C6EE46E0();
  return sub_1C6E6B094(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
}

uint64_t sub_1C6E68D90@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C6E68DF8(uint64_t a1)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6E68EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F82F8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E68F7C(uint64_t a1)
{
  v2 = sub_1C6E6989C(qword_1EDEF7208, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E68FE8()
{
  sub_1C6E6989C(qword_1EDEF7208, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E69088(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C6EE6590;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *a5;
  v16 = sub_1C6EE46F0();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  return sub_1C6EE4700();
}

uint64_t sub_1C6E691F8()
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

uint64_t sub_1C6E69268()
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
    v6 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey(0) + 20);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E692FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = a2 + *(a1 + 20);
  return sub_1C6EE4420();
}

uint64_t sub_1C6E69340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E693B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E69428(uint64_t a1, uint64_t a2))()
{
  result = nullsub_77;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6E69480(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E6989C(&qword_1EC1F8300, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E69520@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
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

uint64_t sub_1C6E695BC(uint64_t a1)
{
  v2 = sub_1C6E6989C(qword_1EDEF7608, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E69628()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E69680()
{
  sub_1C6E6989C(qword_1EDEF7608, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E696FC()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E69750(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E6989C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6E6AA9C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E6B02C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E6B094(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E6B0F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1C6EE3F90();
    if (v10)
    {
      v11 = sub_1C6EE3FC0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1C6EE3FB0();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1C6EE3F90();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1C6EE3FC0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1C6EE3FB0();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1C6E6B324(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1C6E6B4B4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1C6DF1134(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_1C6E6B0F4(v14, a3, a4, &v13);
  v10 = v4;
  sub_1C6DF1134(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_1C6E6B4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1C6EE3F90();
  v11 = result;
  if (result)
  {
    result = sub_1C6EE3FC0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1C6EE3FB0();
  sub_1C6E6B0F4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1C6E6B56C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1C6E00D18(a3, a4);
          return sub_1C6E6B324(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C6E6B6D4(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6)
{
  v6 = (a2 >> 60) & 3 | (4 * (a3 & 1));
  v7 = (a5 >> 60) & 3 | (4 * (a6 & 1));
  if (v6 <= 1)
  {
    if (v6)
    {
      return v7 == 1 && *&a1 == *&a4;
    }

    if (!v7)
    {
      return sub_1C6E6B56C(a1, a2, a4, a5);
    }

    return 0;
  }

  if (v6 == 2)
  {
    return v7 == 2 && a1 == a4;
  }

  if (v6 != 3)
  {
    if (v7 == 4)
    {
      return sub_1C6E6B56C(a1, a2, a4, a5);
    }

    return 0;
  }

  return v7 == 3 && a1 == a4;
}

uint64_t sub_1C6E6B764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C30, &qword_1C6EEC710);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8288, &qword_1C6EEC718);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v24 - v15;
  v17 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec(0) + 20);
  v18 = *(v13 + 56);
  v24[1] = a1;
  sub_1C6E6EBC0(a1 + v17, v16, &qword_1EC1F7C30, &qword_1C6EEC710);
  sub_1C6E6EBC0(a2 + v17, &v16[v18], &qword_1EC1F7C30, &qword_1C6EEC710);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1C6E6EC28(v16, &qword_1EC1F7C30, &qword_1C6EEC710);
LABEL_9:
      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v20 = sub_1C6EE4A50();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6E6EBC0(v16, v11, &qword_1EC1F7C30, &qword_1C6EEC710);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue);
LABEL_6:
    sub_1C6E6EC28(v16, &qword_1EC1F8288, &qword_1C6EEC718);
    goto LABEL_7;
  }

  v21 = v24[0];
  sub_1C6E6B02C(&v16[v18], v24[0], type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue);
  v22 = sub_1C6E6BEF0(v11, v21);
  sub_1C6E6B094(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue);
  sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue);
  sub_1C6E6EC28(v16, &qword_1EC1F7C30, &qword_1C6EEC710);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1C6E6BAC0(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v30 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8000, &unk_1C6EEA4C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v29 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8248, &qword_1C6EEC708);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  v31 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData(0);
  v32 = a1;
  v17 = *(v31 + 24);
  v18 = *(v13 + 56);
  sub_1C6E6EBC0(a1 + v17, v16, &qword_1EC1F8000, &unk_1C6EEA4C0);
  sub_1C6E6EBC0(a2 + v17, &v16[v18], &qword_1EC1F8000, &unk_1C6EEA4C0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1C6E6EBC0(v16, v11, &qword_1EC1F8000, &unk_1C6EEA4C0);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v23 = v30;
      sub_1C6E6B02C(&v16[v18], v30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
      v24 = *v11 == *v23 && v11[1] == v23[1];
      if (v24 || (sub_1C6EE54B0() & 1) != 0)
      {
        v25 = *(v4 + 20);
        sub_1C6EE4430();
        sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
        v26 = sub_1C6EE4A50();
        sub_1C6E6B094(v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
        sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
        sub_1C6E6EC28(v16, &qword_1EC1F8000, &unk_1C6EEA4C0);
        if ((v26 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_15;
      }

      sub_1C6E6B094(v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
      sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
      v20 = &qword_1EC1F8000;
      v21 = &unk_1C6EEA4C0;
LABEL_7:
      sub_1C6E6EC28(v16, v20, v21);
      goto LABEL_8;
    }

    sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
LABEL_6:
    v20 = &qword_1EC1F8248;
    v21 = &qword_1C6EEC708;
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6E6EC28(v16, &qword_1EC1F8000, &unk_1C6EEA4C0);
LABEL_15:
  if (*v32 == *a2 && v32[1] == a2[1] || (sub_1C6EE54B0() & 1) != 0)
  {
    v27 = *(v31 + 20);
    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    v22 = sub_1C6EE4A50();
    return v22 & 1;
  }

LABEL_8:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1C6E6BEF0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = (~v5 & 0x3000000000000000) == 0 && v7 == 255;
  if ((~v2 & 0x3000000000000000) != 0 || v4 != 255)
  {
    if (!v9)
    {
      sub_1C6E1E3E0(*a1, v2, v4);
      sub_1C6E1E3E0(v6, v5, v7);
      v11 = sub_1C6E6B6D4(v3, v2, v4 & 1, v6, v5, v7 & 1);
      sub_1C6E1E420(v6, v5, v7);
      sub_1C6E1E420(v3, v2, v4);
      if (v11)
      {
        goto LABEL_15;
      }

      return 0;
    }

LABEL_12:
    sub_1C6E1E3E0(*a1, v2, v4);
    sub_1C6E1E3E0(v6, v5, v7);
    sub_1C6E1E420(v3, v2, v4);
    sub_1C6E1E420(v6, v5, v7);
    return 0;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  sub_1C6E1E3E0(*a1, v2, 255);
  sub_1C6E1E3E0(v6, v5, 255);
  sub_1C6E1E420(v3, v2, 255);
LABEL_15:
  v12 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue(0) + 20);
  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E6C0B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v29 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8000, &unk_1C6EEA4C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v28 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8248, &qword_1C6EEC708);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  v17 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0) + 20);
  v18 = *(v13 + 56);
  v30 = a1;
  sub_1C6E6EBC0(a1 + v17, v16, &qword_1EC1F8000, &unk_1C6EEA4C0);
  v31 = a2;
  sub_1C6E6EBC0(a2 + v17, &v16[v18], &qword_1EC1F8000, &unk_1C6EEA4C0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1C6E6EC28(v16, &qword_1EC1F8000, &unk_1C6EEA4C0);
LABEL_15:
      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v22 = sub_1C6EE4A50();
      return v22 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6E6EBC0(v16, v11, &qword_1EC1F8000, &unk_1C6EEA4C0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
LABEL_6:
    v20 = &qword_1EC1F8248;
    v21 = &qword_1C6EEC708;
LABEL_7:
    sub_1C6E6EC28(v16, v20, v21);
    goto LABEL_8;
  }

  v23 = v29;
  sub_1C6E6B02C(&v16[v18], v29, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
  v24 = *v11 == *v23 && v11[1] == v23[1];
  if (!v24 && (sub_1C6EE54B0() & 1) == 0)
  {
    sub_1C6E6B094(v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
    sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
    v20 = &qword_1EC1F8000;
    v21 = &unk_1C6EEA4C0;
    goto LABEL_7;
  }

  v25 = *(v4 + 20);
  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v26 = sub_1C6EE4A50();
  sub_1C6E6B094(v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
  sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionKey);
  sub_1C6E6EC28(v16, &qword_1EC1F8000, &unk_1C6EEA4C0);
  if (v26)
  {
    goto LABEL_15;
  }

LABEL_8:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1C6E6C4B8(uint64_t *a1, uint64_t *a2)
{
  v82 = a2;
  v3 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v68 = (&v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v69 = (&v67 - v8);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v9 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v67 - v10;
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0);
  v77 = *(v11 - 8);
  v78 = v11;
  v12 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7508, &unk_1C6EE6690);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v75 = &v67 - v16;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8228, &qword_1C6EEC6E8);
  v17 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v67 - v18;
  v19 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F10, &qword_1C6EE92A8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v67 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8230, &qword_1C6EEC6F0);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v67 - v31;
  v80 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ComputationNode(0);
  v81 = a1;
  v33 = *(v80 + 28);
  v34 = *(v29 + 56);
  sub_1C6E6EBC0(a1 + v33, v32, &qword_1EC1F7F10, &qword_1C6EE92A8);
  v35 = v82 + v33;
  v36 = v82;
  sub_1C6E6EBC0(v35, &v32[v34], &qword_1EC1F7F10, &qword_1C6EE92A8);
  v37 = *(v20 + 48);
  if (v37(v32, 1, v19) == 1)
  {
    if (v37(&v32[v34], 1, v19) == 1)
    {
      sub_1C6E6EC28(v32, &qword_1EC1F7F10, &qword_1C6EE92A8);
      goto LABEL_9;
    }

LABEL_6:
    v38 = &qword_1EC1F8230;
    v39 = &qword_1C6EEC6F0;
    v40 = v32;
LABEL_7:
    sub_1C6E6EC28(v40, v38, v39);
    goto LABEL_30;
  }

  sub_1C6E6EBC0(v32, v27, &qword_1EC1F7F10, &qword_1C6EE92A8);
  if (v37(&v32[v34], 1, v19) == 1)
  {
    sub_1C6E6B094(v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
    goto LABEL_6;
  }

  sub_1C6E6B02C(&v32[v34], v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
  v41 = sub_1C6E6D140(v27, v23);
  sub_1C6E6B094(v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
  sub_1C6E6B094(v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage);
  sub_1C6E6EC28(v32, &qword_1EC1F7F10, &qword_1C6EE92A8);
  if ((v41 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_9:
  v42 = v81;
  if ((sub_1C6E246EC(*v81, *v36) & 1) == 0 || (sub_1C6E246EC(v42[1], v36[1]) & 1) == 0)
  {
    goto LABEL_30;
  }

  v43 = v79;
  v44 = v80;
  v45 = *(v80 + 32);
  v46 = *(v76 + 48);
  sub_1C6E6EBC0(v42 + v45, v79, &qword_1EC1F7508, &unk_1C6EE6690);
  sub_1C6E6EBC0(v36 + v45, v43 + v46, &qword_1EC1F7508, &unk_1C6EE6690);
  v47 = v78;
  v48 = *(v77 + 48);
  if (v48(v43, 1, v78) == 1)
  {
    if (v48(v43 + v46, 1, v47) == 1)
    {
      sub_1C6E6EC28(v43, &qword_1EC1F7508, &unk_1C6EE6690);
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v49 = v75;
  sub_1C6E6EBC0(v43, v75, &qword_1EC1F7508, &unk_1C6EE6690);
  if (v48(v43 + v46, 1, v47) == 1)
  {
    sub_1C6E6B094(v49, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
LABEL_16:
    v38 = &qword_1EC1F8228;
    v39 = &qword_1C6EEC6E8;
    v40 = v43;
    goto LABEL_7;
  }

  v50 = v43 + v46;
  v51 = v70;
  sub_1C6E6B02C(v50, v70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
  v52 = sub_1C6E6C0B8(v49, v51);
  sub_1C6E6B094(v51, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
  sub_1C6E6B094(v49, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy);
  sub_1C6E6EC28(v43, &qword_1EC1F7508, &unk_1C6EE6690);
  if ((v52 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_18:
  v53 = *(v44 + 36);
  v54 = *(v71 + 48);
  v55 = v74;
  sub_1C6E6EBC0(v42 + v53, v74, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v56 = v36 + v53;
  v57 = v55;
  sub_1C6E6EBC0(v56, v55 + v54, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v58 = v73;
  v59 = *(v72 + 48);
  if (v59(v55, 1, v73) != 1)
  {
    v60 = v69;
    sub_1C6E6EBC0(v57, v69, &qword_1EC1F7EF0, &unk_1C6EE9280);
    if (v59(v57 + v54, 1, v58) != 1)
    {
      v61 = v57 + v54;
      v62 = v68;
      sub_1C6E6B02C(v61, v68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      if (*v60 == *v62 && v60[1] == v62[1] || (sub_1C6EE54B0() & 1) != 0)
      {
        v63 = *(v58 + 20);
        sub_1C6EE4430();
        sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
        LOBYTE(v63) = sub_1C6EE4A50();
        sub_1C6E6B094(v62, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6E6B094(v60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6E6EC28(v57, &qword_1EC1F7EF0, &unk_1C6EE9280);
        if (v63)
        {
          goto LABEL_29;
        }

LABEL_30:
        v65 = 0;
        return v65 & 1;
      }

      sub_1C6E6B094(v62, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6E6B094(v60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v38 = &qword_1EC1F7EF0;
      v39 = &unk_1C6EE9280;
      goto LABEL_24;
    }

    sub_1C6E6B094(v60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_23:
    v38 = &qword_1EC1F8220;
    v39 = &qword_1C6EEC6E0;
LABEL_24:
    v40 = v57;
    goto LABEL_7;
  }

  if (v59(v55 + v54, 1, v58) != 1)
  {
    goto LABEL_23;
  }

  sub_1C6E6EC28(v55, &qword_1EC1F7EF0, &unk_1C6EE9280);
LABEL_29:
  v64 = *(v44 + 24);
  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v65 = sub_1C6EE4A50();
  return v65 & 1;
}

uint64_t sub_1C6E6CE68(void *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        if (v5 != 1)
        {
          return 0;
        }
      }

      else if (v5 != 2)
      {
        return 0;
      }
    }

    else if (v5)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  if (sub_1C6E59BCC(a1[4], *(a2 + 32)) & 1) != 0 && (a1[5] == *(a2 + 40) && a1[6] == *(a2 + 48) || (sub_1C6EE54B0()))
  {
    v7 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ExtractorSpec(0) + 32);
    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    return sub_1C6EE4A50() & 1;
  }

  return 0;
}

uint64_t sub_1C6E6CFA4(void *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    switch(v6)
    {
      case 1:
        if (v5 == 1)
        {
          goto LABEL_11;
        }

        return 0;
      case 2:
        if (v5 == 2)
        {
          goto LABEL_11;
        }

        return 0;
      case 3:
        if (v5 == 3)
        {
          goto LABEL_11;
        }

        return 0;
      case 4:
        if (v5 == 4)
        {
          goto LABEL_11;
        }

        return 0;
      case 5:
        if (v5 == 5)
        {
          goto LABEL_11;
        }

        return 0;
      case 6:
        if (v5 == 6)
        {
          goto LABEL_11;
        }

        return 0;
      case 7:
        if (v5 == 7)
        {
          goto LABEL_11;
        }

        return 0;
      case 8:
        if (v5 == 8)
        {
          goto LABEL_11;
        }

        return 0;
      case 9:
        if (v5 == 9)
        {
          goto LABEL_11;
        }

        return 0;
      case 10:
        if (v5 == 10)
        {
          goto LABEL_11;
        }

        return 0;
      case 11:
        if (v5 == 11)
        {
          goto LABEL_11;
        }

        return 0;
      case 12:
        if (v5 == 12)
        {
          goto LABEL_11;
        }

        return 0;
      case 13:
        if (v5 == 13)
        {
          goto LABEL_11;
        }

        return 0;
      default:
        if (v5)
        {
          return 0;
        }

        goto LABEL_11;
    }
  }

  if (v5 != v6)
  {
    return 0;
  }

LABEL_11:
  v8 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage(0) + 24);
  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E6D140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7810, &unk_1C6EE9270);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = &v48 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7818, &unk_1C6EE69D0);
  v10 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v48 - v11;
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7820, &unk_1C6EEA180);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7828, &qword_1C6EE69E0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v48 - v23;
  v52 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPackage(0);
  v25 = *(v52 + 20);
  v26 = *(v21 + 56);
  v57 = a1;
  sub_1C6E6EBC0(a1 + v25, v24, &qword_1EC1F7820, &unk_1C6EEA180);
  v27 = a2 + v25;
  v28 = a2;
  sub_1C6E6EBC0(v27, &v24[v26], &qword_1EC1F7820, &unk_1C6EEA180);
  v29 = *(v13 + 48);
  if (v29(v24, 1, v12) == 1)
  {
    if (v29(&v24[v26], 1, v12) == 1)
    {
      sub_1C6E6EC28(v24, &qword_1EC1F7820, &unk_1C6EEA180);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_1C6E6EBC0(v24, v19, &qword_1EC1F7820, &unk_1C6EEA180);
  if (v29(&v24[v26], 1, v12) == 1)
  {
    sub_1C6E6B094(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
LABEL_9:
    v35 = &qword_1EC1F7828;
    v36 = &qword_1C6EE69E0;
LABEL_17:
    v41 = v24;
LABEL_18:
    sub_1C6E6EC28(v41, v35, v36);
    goto LABEL_19;
  }

  v37 = v51;
  sub_1C6E6B02C(&v24[v26], v51, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
  if ((*v19 != *v37 || *(v19 + 1) != *(v37 + 8)) && (sub_1C6EE54B0() & 1) == 0 || (v38 = *(v37 + 24), !sub_1C6DF4B44(*(v19 + 2), v19[24], *(v37 + 16))))
  {
    sub_1C6E6B094(v37, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
    sub_1C6E6B094(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
    v35 = &qword_1EC1F7820;
    v36 = &unk_1C6EEA180;
    goto LABEL_17;
  }

  v39 = *(v12 + 24);
  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v40 = sub_1C6EE4A50();
  sub_1C6E6B094(v37, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
  sub_1C6E6B094(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelStorage);
  sub_1C6E6EC28(v24, &qword_1EC1F7820, &unk_1C6EEA180);
  if ((v40 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  v30 = *(v52 + 24);
  v31 = *(v53 + 48);
  v32 = v56;
  sub_1C6E6EBC0(v57 + v30, v56, &qword_1EC1F7810, &unk_1C6EE9270);
  sub_1C6E6EBC0(v28 + v30, v32 + v31, &qword_1EC1F7810, &unk_1C6EE9270);
  v33 = v55;
  v34 = *(v54 + 48);
  if (v34(v32, 1, v55) == 1)
  {
    if (v34(v32 + v31, 1, v33) == 1)
    {
      sub_1C6E6EC28(v32, &qword_1EC1F7810, &unk_1C6EE9270);
LABEL_25:
      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v42 = sub_1C6EE4A50();
      return v42 & 1;
    }

    goto LABEL_23;
  }

  v44 = v50;
  sub_1C6E6EBC0(v32, v50, &qword_1EC1F7810, &unk_1C6EE9270);
  if (v34(v32 + v31, 1, v33) == 1)
  {
    sub_1C6E6B094(v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
LABEL_23:
    v35 = &qword_1EC1F7818;
    v36 = &unk_1C6EE69D0;
    v41 = v32;
    goto LABEL_18;
  }

  v45 = v32 + v31;
  v46 = v49;
  sub_1C6E6B02C(v45, v49, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
  v47 = sub_1C6E6D820(v44, v46);
  sub_1C6E6B094(v46, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
  sub_1C6E6B094(v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec);
  sub_1C6E6EC28(v32, &qword_1EC1F7810, &unk_1C6EE9270);
  if (v47)
  {
    goto LABEL_25;
  }

LABEL_19:
  v42 = 0;
  return v42 & 1;
}

uint64_t sub_1C6E6D820(uint64_t a1, uint64_t a2)
{
  v82 = a2;
  v3 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec(0);
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v68 = (&v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EE0, &unk_1C6EE9260);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v69 = (&v67 - v8);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8238, &qword_1C6EEC6F8);
  v9 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v67 - v10;
  v79 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification(0);
  v77 = *(v79 - 8);
  v11 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v70 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EE8, &unk_1C6EEA1D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v75 = &v67 - v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8240, &qword_1C6EEC700);
  v16 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v80 = &v67 - v17;
  v18 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = (&v67 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v28 = v27 - 8;
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v67 - v30;
  v78 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelSpec(0);
  v32 = *(v78 + 20);
  v33 = *(v28 + 56);
  v81 = a1;
  sub_1C6E6EBC0(a1 + v32, v31, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v34 = v82 + v32;
  v35 = v82;
  sub_1C6E6EBC0(v34, &v31[v33], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v36 = *(v19 + 48);
  if (v36(v31, 1, v18) == 1)
  {
    if (v36(&v31[v33], 1, v18) == 1)
    {
      sub_1C6E6EC28(v31, &qword_1EC1F7EF0, &unk_1C6EE9280);
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  sub_1C6E6EBC0(v31, v26, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if (v36(&v31[v33], 1, v18) == 1)
  {
    sub_1C6E6B094(v26, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    v37 = &qword_1EC1F8220;
    v38 = &qword_1C6EEC6E0;
LABEL_7:
    v39 = v31;
LABEL_42:
    sub_1C6E6EC28(v39, v37, v38);
    goto LABEL_43;
  }

  sub_1C6E6B02C(&v31[v33], v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  if ((*v26 != *v22 || v26[1] != v22[1]) && (sub_1C6EE54B0() & 1) == 0)
  {
    sub_1C6E6B094(v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    sub_1C6E6B094(v26, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    v37 = &qword_1EC1F7EF0;
    v38 = &unk_1C6EE9280;
    goto LABEL_7;
  }

  v40 = *(v18 + 20);
  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v41 = sub_1C6EE4A50();
  sub_1C6E6B094(v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E6B094(v26, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6E6EC28(v31, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((v41 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_12:
  v42 = v78;
  v43 = *(v78 + 24);
  v44 = *(v76 + 48);
  v46 = v80;
  v45 = v81;
  sub_1C6E6EBC0(v81 + v43, v80, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
  sub_1C6E6EBC0(v35 + v43, v46 + v44, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
  v47 = *(v77 + 48);
  v48 = v79;
  if (v47(v46, 1, v79) == 1)
  {
    if (v47(v46 + v44, 1, v48) == 1)
    {
      sub_1C6E6EC28(v46, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  v57 = v75;
  sub_1C6E6EBC0(v46, v75, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
  if (v47(v46 + v44, 1, v48) == 1)
  {
    sub_1C6E6B094(v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
LABEL_21:
    v37 = &qword_1EC1F8240;
    v38 = &qword_1C6EEC700;
    v39 = v46;
    goto LABEL_42;
  }

  v58 = v70;
  sub_1C6E6B02C(v46 + v44, v70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
  if ((*v57 != *v58 || *(v57 + 8) != *(v58 + 8)) && (sub_1C6EE54B0() & 1) == 0 || (*(v57 + 16) != *(v58 + 16) || *(v57 + 24) != *(v58 + 24)) && (sub_1C6EE54B0() & 1) == 0 || (v59 = *(v58 + 40), !sub_1C6DF4B44(*(v57 + 32), *(v57 + 40), *(v58 + 32))))
  {
    sub_1C6E6B094(v58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
    sub_1C6E6B094(v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
    v37 = &qword_1EC1F7EE8;
    v38 = &unk_1C6EEA1D0;
    v39 = v46;
    goto LABEL_42;
  }

  v60 = *(v48 + 28);
  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v61 = sub_1C6EE4A50();
  sub_1C6E6B094(v58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
  sub_1C6E6B094(v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification);
  sub_1C6E6EC28(v46, &qword_1EC1F7EE8, &unk_1C6EEA1D0);
  if ((v61 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_15:
  v49 = *(v42 + 28);
  v50 = *(v71 + 48);
  v51 = v74;
  sub_1C6E6EBC0(v45 + v49, v74, &qword_1EC1F7EE0, &unk_1C6EE9260);
  v52 = v35 + v49;
  v53 = v51;
  sub_1C6E6EBC0(v52, v51 + v50, &qword_1EC1F7EE0, &unk_1C6EE9260);
  v54 = v73;
  v55 = *(v72 + 48);
  if (v55(v51, 1, v73) != 1)
  {
    v62 = v69;
    sub_1C6E6EBC0(v53, v69, &qword_1EC1F7EE0, &unk_1C6EE9260);
    if (v55(v53 + v50, 1, v54) == 1)
    {
      sub_1C6E6B094(v62, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
      goto LABEL_35;
    }

    v63 = v53 + v50;
    v64 = v68;
    sub_1C6E6B02C(v63, v68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
    if ((sub_1C6E5F0FC(*v62, *v64) & 1) == 0 || (sub_1C6E5F0FC(v62[1], v64[1]) & 1) == 0)
    {
      sub_1C6E6B094(v64, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
      sub_1C6E6B094(v62, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
      v37 = &qword_1EC1F7EE0;
      v38 = &unk_1C6EE9260;
      goto LABEL_41;
    }

    v65 = *(v54 + 24);
    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    LOBYTE(v65) = sub_1C6EE4A50();
    sub_1C6E6B094(v64, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
    sub_1C6E6B094(v62, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
    sub_1C6E6EC28(v53, &qword_1EC1F7EE0, &unk_1C6EE9260);
    if (v65)
    {
      goto LABEL_18;
    }

LABEL_43:
    v56 = 0;
    return v56 & 1;
  }

  if (v55(v51 + v50, 1, v54) != 1)
  {
LABEL_35:
    v37 = &qword_1EC1F8238;
    v38 = &qword_1C6EEC6F8;
LABEL_41:
    v39 = v53;
    goto LABEL_42;
  }

  sub_1C6E6EC28(v51, &qword_1EC1F7EE0, &unk_1C6EE9260);
LABEL_18:
  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v56 = sub_1C6EE4A50();
  return v56 & 1;
}

uint64_t sub_1C6E6E350(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (result != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    result = sub_1C6EE54B0();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  v8 = *(v6 + 16);
  if (v8 != *(v7 + 16))
  {
    return 0;
  }

  if (v8)
  {
    v9 = v6 == v7;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_15:
    v12 = *(a2 + 32);
    if (sub_1C6DF4B44(*(a1 + 24), *(a1 + 32), *(a2 + 24)))
    {
      v13 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0) + 28);
      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      return sub_1C6EE4A50() & 1;
    }

    return 0;
  }

  v10 = (v6 + 32);
  v11 = (v7 + 32);
  while (v8)
  {
    if (*v10 != *v11)
    {
      return 0;
    }

    ++v10;
    ++v11;
    if (!--v8)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E6E47C(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 40);
  if (!sub_1C6DF4B44(*(a1 + 32), *(a1 + 40), *(a2 + 32)))
  {
    return 0;
  }

  v7 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIdentification(0) + 28);
  sub_1C6EE4430();
  sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E6E574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v27[0] = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F82A8, &qword_1C6EEC720);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (v27 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F82B0, &qword_1C6EEC728);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v27 - v15;
  v17 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelPolicySpec(0) + 20);
  v18 = *(v13 + 56);
  v27[1] = a1;
  sub_1C6E6EBC0(a1 + v17, v16, &qword_1EC1F82A8, &qword_1C6EEC720);
  sub_1C6E6EBC0(a2 + v17, &v16[v18], &qword_1EC1F82A8, &qword_1C6EEC720);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1C6E6EC28(v16, &qword_1EC1F82A8, &qword_1C6EEC720);
LABEL_10:
      sub_1C6EE4430();
      sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v22 = sub_1C6EE4A50();
      return v22 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6E6EBC0(v16, v11, &qword_1EC1F82A8, &qword_1C6EEC720);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec);
LABEL_6:
    v20 = &qword_1EC1F82B0;
    v21 = &qword_1C6EEC728;
    goto LABEL_7;
  }

  v23 = v27[0];
  sub_1C6E6B02C(&v16[v18], v27[0], type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec);
  if (*v11 == *v23)
  {
    v24 = *(v4 + 20);
    sub_1C6EE4430();
    sub_1C6E6989C(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    v25 = sub_1C6EE4A50();
    sub_1C6E6B094(v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec);
    sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec);
    sub_1C6E6EC28(v16, &qword_1EC1F82A8, &qword_1C6EEC720);
    if ((v25 & 1) == 0)
    {
      v22 = 0;
      return v22 & 1;
    }

    goto LABEL_10;
  }

  sub_1C6E6B094(v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec);
  sub_1C6E6B094(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BinaryClassifierSpec);
  v20 = &qword_1EC1F82A8;
  v21 = &qword_1C6EEC720;
LABEL_7:
  sub_1C6E6EC28(v16, v20, v21);
  v22 = 0;
  return v22 & 1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_1C6E6EA08()
{
  result = qword_1EDEF8D40[0];
  if (!qword_1EDEF8D40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEF8D40);
  }

  return result;
}

unint64_t sub_1C6E6EA5C()
{
  result = qword_1EDEF7C88[0];
  if (!qword_1EDEF7C88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEF7C88);
  }

  return result;
}

unint64_t sub_1C6E6EAB0()
{
  result = qword_1EDEF8F68;
  if (!qword_1EDEF8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF8F68);
  }

  return result;
}

uint64_t sub_1C6E6EB04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C6E6EB6C()
{
  result = qword_1EC1F82E0;
  if (!qword_1EC1F82E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F82E0);
  }

  return result;
}

uint64_t sub_1C6E6EBC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E6EC28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_83Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_1C6EE4430();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 20);

    return v15(v16, a2, v14);
  }
}

uint64_t __swift_store_extra_inhabitant_index_84Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = sub_1C6EE4430();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 20);

    return v17(v18, a2, a2, v16);
  }
}

void sub_1C6E6EF70(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1C6EE4430();
  if (v7 <= 0x3F)
  {
    sub_1C6E58ADC(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6E6F054()
{
  result = sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6E6F138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_1C6EE4430();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C6E6F1F4()
{
  sub_1C6E6F2B0(319, &qword_1EDEF67D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6E6F2B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_166Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE4430();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_167Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE4430();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C6E6F490()
{
  result = sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C6E6F500()
{
  result = qword_1EC1F83F8;
  if (!qword_1EC1F83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F83F8);
  }

  return result;
}

uint64_t sub_1C6E6F584(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1C6E6F5DC()
{
  result = qword_1EC1F8410;
  if (!qword_1EC1F8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8410);
  }

  return result;
}

unint64_t sub_1C6E6F634()
{
  result = qword_1EC1F8418;
  if (!qword_1EC1F8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8418);
  }

  return result;
}

unint64_t sub_1C6E6FA4C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C6E6FA64()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_1C6E6FA90@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_1C6E6FAAC(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_1C6E6FACC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E71348();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

BOOL sub_1C6E6FB18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

void sub_1C6E6FB54(uint64_t a1@<X8>)
{
  sub_1C6E71A58();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_1C6E6FBA0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1C6E71A58();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

uint64_t sub_1C6E6FBE4()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E6FC50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7139C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6E6FC9C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E6FD18()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212920);
  __swift_project_value_buffer(v0, qword_1EC212920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "source";
  *(v6 + 8) = 6;
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

uint64_t sub_1C6E6FEE0()
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

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v3 = v0;
        sub_1C6E7139C();
        goto LABEL_5;
      }

LABEL_6:
      result = sub_1C6EE44B0();
    }

    v3 = v0;
    sub_1C6E71348();
LABEL_5:
    v0 = v3;
    sub_1C6EE44E0();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1C6E6FFAC()
{
  if (!*v0 || (v4 = *v0, v6 = *(v0 + 8), sub_1C6E71348(), result = sub_1C6EE4660(), !v1))
  {
    if (!v0[2] || (v5 = v0[2], v7 = *(v0 + 24), sub_1C6E7139C(), result = sub_1C6EE4660(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating(0) + 24);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E700AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v2 = a2 + *(a1 + 24);
  return sub_1C6EE4420();
}

uint64_t sub_1C6E700FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E70170(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E701E4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_79;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6E7023C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E70FB8(&qword_1EC1F8480, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E702DC(uint64_t a1)
{
  v2 = sub_1C6E70FB8(&qword_1EC1F8468, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E70348()
{
  sub_1C6E70FB8(&qword_1EC1F8468, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E70414(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E70FB8(&qword_1EC1F8498, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_RatingSource);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E704B4(uint64_t a1)
{
  v2 = sub_1C6E70FB8(&qword_1EC1F8448, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_RatingSource);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E70520()
{
  sub_1C6E70FB8(&qword_1EC1F8448, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_RatingSource);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E7059C()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212950);
  __swift_project_value_buffer(v0, qword_1EC212950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
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
  *v10 = "EDITOR_PROVIDED";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E70794(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1C6EE4710();
}

uint64_t sub_1C6E707DC()
{
  do
  {
    result = sub_1C6EE44B0();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_1C6E70854@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C6E708BC(uint64_t a1)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6E70948(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E70FB8(&qword_1EC1F84A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_RatingValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E709E8(uint64_t a1)
{
  v2 = sub_1C6E70FB8(&qword_1EC1F8428, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_RatingValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E70A54()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E70AAC()
{
  sub_1C6E70FB8(&qword_1EC1F8428, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_RatingValue);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E70B28()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E70B7C()
{
  sub_1C6EE4430();
  sub_1C6E70FB8(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E70C04()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212980);
  __swift_project_value_buffer(v0, qword_1EC212980);
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
  *v10 = "RELEVANT";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SOMEWHAT_RELEVANT";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NOT_RELEVANT";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E70E6C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
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

uint64_t sub_1C6E70FB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6E71238(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C6E71348()
{
  result = qword_1EC1F8488;
  if (!qword_1EC1F8488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8488);
  }

  return result;
}

unint64_t sub_1C6E7139C()
{
  result = qword_1EC1F8490;
  if (!qword_1EC1F8490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8490);
  }

  return result;
}

uint64_t sub_1C6E713F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v3)
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

  v4 = a1[2];
  v5 = a2[2];
  if (*(a2 + 24) == 1)
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

  v7 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating(0) + 24);
  sub_1C6EE4430();
  sub_1C6E70FB8(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E71550()
{
  result = sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE4430();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE4430();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C6E71714()
{
  result = sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C6E71798()
{
  result = qword_1EC1F84D8;
  if (!qword_1EC1F84D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F84D8);
  }

  return result;
}

unint64_t sub_1C6E71820()
{
  result = qword_1EC1F84F0;
  if (!qword_1EC1F84F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F84F0);
  }

  return result;
}

uint64_t sub_1C6E718A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1C6E718FC()
{
  result = qword_1EC1F8508;
  if (!qword_1EC1F8508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8508);
  }

  return result;
}

unint64_t sub_1C6E71954()
{
  result = qword_1EC1F8510;
  if (!qword_1EC1F8510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8510);
  }

  return result;
}

unint64_t sub_1C6E719AC()
{
  result = qword_1EC1F8518;
  if (!qword_1EC1F8518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8518);
  }

  return result;
}

unint64_t sub_1C6E71A04()
{
  result = qword_1EC1F8520;
  if (!qword_1EC1F8520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8520);
  }

  return result;
}

uint64_t sub_1C6E71B68()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212998);
  __swift_project_value_buffer(v0, qword_1EC212998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C6EED1D0;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C6EE46F0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "parent_id";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v20 = *MEMORY[0x1E69AADE8];
  v7();
  v9 = (v21 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "timestamp";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v21 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "namespace";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v21 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "title";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v21 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "raw_text";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v21 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "redirect";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E71E64()
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      if (result == 1 || result == 2)
      {
        goto LABEL_16;
      }

      if (result == 3)
      {
LABEL_2:
        sub_1C6EE4580();
      }
    }

    else if (result > 5)
    {
      if (result == 6 || result == 7)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (result != 4)
      {
        goto LABEL_2;
      }

LABEL_16:
      sub_1C6EE4560();
    }
  }
}

uint64_t sub_1C6E71F50()
{
  if (!*v0 || (result = sub_1C6EE46A0(), !v1))
  {
    if (!v0[1] || (result = sub_1C6EE46A0(), !v1))
    {
      v3 = v0[3];
      v4 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x2000000000000000) == 0)
      {
        v4 = v0[2] & 0xFFFFFFFFFFFFLL;
      }

      if (!v4 || (result = sub_1C6EE46C0(), !v1))
      {
        if (!v0[4] || (result = sub_1C6EE46A0(), !v1))
        {
          v5 = v0[6];
          v6 = HIBYTE(v5) & 0xF;
          if ((v5 & 0x2000000000000000) == 0)
          {
            v6 = v0[5] & 0xFFFFFFFFFFFFLL;
          }

          if (!v6 || (result = sub_1C6EE46C0(), !v1))
          {
            v7 = v0[8];
            v8 = HIBYTE(v7) & 0xF;
            if ((v7 & 0x2000000000000000) == 0)
            {
              v8 = v0[7] & 0xFFFFFFFFFFFFLL;
            }

            if (!v8 || (result = sub_1C6EE46C0(), !v1))
            {
              v9 = v0[10];
              v10 = HIBYTE(v9) & 0xF;
              if ((v9 & 0x2000000000000000) == 0)
              {
                v10 = v0[9] & 0xFFFFFFFFFFFFLL;
              }

              if (!v10 || (result = sub_1C6EE46C0(), !v1))
              {
                v11 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Wiki_RawWikiPage() + 44);
                return sub_1C6EE4410();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C6E720D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0;
  a2[6] = 0xE000000000000000;
  a2[7] = 0;
  a2[8] = 0xE000000000000000;
  a2[9] = 0;
  a2[10] = 0xE000000000000000;
  v2 = a2 + *(a1 + 44);
  return sub_1C6EE4420();
}

uint64_t sub_1C6E72130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E721A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E72218(uint64_t a1, uint64_t a2))()
{
  result = nullsub_84;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t sub_1C6E72274(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E72864(&qword_1EC1F8548, type metadata accessor for Com_Apple_News_Algorithms_Proto_Wiki_RawWikiPage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E722F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1F7208 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6EE4720();
  v3 = __swift_project_value_buffer(v2, qword_1EC212998);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6E7239C(uint64_t a1)
{
  v2 = sub_1C6E72864(&qword_1EC1F8530, type metadata accessor for Com_Apple_News_Algorithms_Proto_Wiki_RawWikiPage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E72408()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E72460()
{
  sub_1C6E72864(&qword_1EC1F8530, type metadata accessor for Com_Apple_News_Algorithms_Proto_Wiki_RawWikiPage);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E724DC()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t type metadata accessor for Com_Apple_News_Algorithms_Proto_Wiki_RawWikiPage()
{
  result = qword_1EC1F8550;
  if (!qword_1EC1F8550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E726A0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] != a2[2] || a1[3] != a2[3])
  {
    v3 = a1;
    v4 = a1[2];
    v5 = a2;
    v6 = sub_1C6EE54B0();
    a2 = v5;
    v7 = v6;
    a1 = v3;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[4] != a2[4])
  {
    return 0;
  }

  if (a1[5] != a2[5] || a1[6] != a2[6])
  {
    v8 = a1;
    v9 = a1[5];
    v10 = a2;
    v11 = sub_1C6EE54B0();
    a2 = v10;
    v12 = v11;
    a1 = v8;
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[7] != a2[7] || a1[8] != a2[8])
  {
    v13 = a1;
    v14 = a1[7];
    v15 = a2;
    v16 = sub_1C6EE54B0();
    a2 = v15;
    v17 = v16;
    a1 = v13;
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[9] != a2[9] || a1[10] != a2[10])
  {
    v18 = a1[9];
    if ((sub_1C6EE54B0() & 1) == 0)
    {
      return 0;
    }
  }

  v19 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Wiki_RawWikiPage() + 44);
  sub_1C6EE4430();
  sub_1C6E72864(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E72864(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6E728D4()
{
  result = sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C6E729B4()
{
  sub_1C6E72BD4(319, &qword_1EC1F8570, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6E72AC0()
{
  sub_1C6EE4430();
  if (v0 <= 0x3F)
  {
    sub_1C6E72BD4(319, &qword_1EC1F8588, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C6E72BD4(319, qword_1EDEF7AC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6E72BD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6E72C94()
{
  sub_1C6E732AC(319, &qword_1EDEF67D0);
  if (v0 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v1 <= 0x3F)
    {
      sub_1C6E72BD4(319, qword_1EDEF7AC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C6E72BD4(319, &qword_1EC1F85A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C6E72E08()
{
  sub_1C6EE4430();
  if (v0 <= 0x3F)
  {
    sub_1C6E72BD4(319, &qword_1EC1F85B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C6E72BD4(319, &qword_1EC1F85C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6E72F6C()
{
  sub_1C6EE4430();
  if (v0 <= 0x3F)
  {
    sub_1C6E72BD4(319, &qword_1EC1F85D8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6E7308C()
{
  sub_1C6E73110();
  if (v0 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6E73110()
{
  if (!qword_1EC1F85F0)
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig(255);
    v0 = sub_1C6EE49E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1F85F0);
    }
  }
}

void sub_1C6E731C0()
{
  sub_1C6E732AC(319, &qword_1EDEF67A0);
  if (v0 <= 0x3F)
  {
    sub_1C6E72BD4(319, &qword_1EC1F8608, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C6EE4430();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6E732AC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C6EE4D50();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1C6E733F8()
{
  result = sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_54Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6EE4430();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_55Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6EE4430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1C6E73640(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1C6E72BD4(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6E73720(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7D8B0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1C6E73770()
{
  result = qword_1EC1F8660;
  if (!qword_1EC1F8660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8660);
  }

  return result;
}

unint64_t sub_1C6E737F8()
{
  result = qword_1EC1F8678;
  if (!qword_1EC1F8678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8678);
  }

  return result;
}

unint64_t sub_1C6E73850()
{
  result = qword_1EC1F8680;
  if (!qword_1EC1F8680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8680);
  }

  return result;
}

unint64_t sub_1C6E738A4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_1C6E738CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C6E738E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7D9CC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6E7394C@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_1C6E739AC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_1C6E739E8()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E73A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7DA20();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6E73AA0()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

unint64_t sub_1C6E73B28()
{
  result = qword_1EC1F8688;
  if (!qword_1EC1F8688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8688);
  }

  return result;
}

unint64_t sub_1C6E73BB0()
{
  result = qword_1EC1F86A0;
  if (!qword_1EC1F86A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F86A0);
  }

  return result;
}

unint64_t sub_1C6E73C08()
{
  result = qword_1EC1F86A8;
  if (!qword_1EC1F86A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F86A8);
  }

  return result;
}

unint64_t sub_1C6E73C60()
{
  result = qword_1EC1F86B0;
  if (!qword_1EC1F86B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F86B0);
  }

  return result;
}

uint64_t sub_1C6E73CE4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1C6E73D3C()
{
  result = qword_1EC1F86C8;
  if (!qword_1EC1F86C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F86C8);
  }

  return result;
}

unint64_t sub_1C6E73D94()
{
  result = qword_1EC1F86D0;
  if (!qword_1EC1F86D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F86D0);
  }

  return result;
}

uint64_t sub_1C6E73E00()
{
  if (!*(*v0 + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0), sub_1C6E7A810(&qword_1EC1F8800, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase), result = sub_1C6EE46D0(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundle(0) + 20);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t (*sub_1C6E73F00(uint64_t a1, uint64_t a2))()
{
  result = nullsub_88;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6E73F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F8888, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundle);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E7403C(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F7F20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundle);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E740A8()
{
  sub_1C6E7A810(&qword_1EC1F7F20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundle);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E7413C()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC2129C8);
  __swift_project_value_buffer(v0, qword_1EC2129C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "result_type";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "test_results";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E74304()
{
  result = sub_1C6EE44B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C6E7D8B0();
        sub_1C6EE44E0();
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult(0);
        sub_1C6E7A810(&qword_1EC1F7F48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult);
        sub_1C6EE4590();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E7441C()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), sub_1C6E7D8B0(), result = sub_1C6EE4660(), !v1))
  {
    if (!*(v0[2] + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult(0), sub_1C6E7A810(&qword_1EC1F7F48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult), result = sub_1C6EE46D0(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundleResult(0) + 24);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E74550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1 + 24);
  return sub_1C6EE4420();
}

uint64_t (*sub_1C6E745A4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_89;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6E745FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F88B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundleResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E7469C(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F8858, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundleResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E74708()
{
  sub_1C6E7A810(&qword_1EC1F8858, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundleResult);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E747D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F88C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundleResultType);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E74874(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F8838, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundleResultType);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E748E0()
{
  sub_1C6E7A810(&qword_1EC1F8838, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundleResultType);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E7495C()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC2129F8);
  __swift_project_value_buffer(v0, qword_1EC2129F8);
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
  *v10 = "FAILED_WITH_EXCEPTION";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TESTS_RAN_ALL_OK";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TESTS_RAN_NOT_ALL_OK";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E74BC4()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212A10);
  __swift_project_value_buffer(v0, qword_1EC212A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EEA170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "test_case";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "actual_output_features";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "result_type";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "info";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v15 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E74E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6EE44B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1C6E7D9CC();
          sub_1C6EE44E0();
        }

        else if (result == 4)
        {
          sub_1C6EE4580();
        }
      }

      else if (result == 1)
      {
        sub_1C6E74F30();
      }

      else if (result == 2)
      {
        sub_1C6E75A64(a1, v5, a2, a3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult);
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E74F30()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult(0) + 28);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0);
  sub_1C6E7A810(&qword_1EC1F8800, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E74FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E75114(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6E75EF8(v3, a1, a2, a3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult, 2);
    if (*v3)
    {
      v12 = *v3;
      v13 = *(v3 + 8);
      sub_1C6E7D9CC();
      sub_1C6EE4660();
    }

    v9 = *(v3 + 24);
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      sub_1C6EE46C0();
    }

    v11 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult(0) + 24);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E75114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F50, &unk_1C6EED3E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult(0);
  sub_1C6E7D904(a1 + *(v14 + 28), v8, &qword_1EC1F7F50, &unk_1C6EED3E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E7D96C(v8, &qword_1EC1F7F50, &unk_1C6EED3E0);
  }

  sub_1C6E7D848(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
  sub_1C6E7A810(&qword_1EC1F8800, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
  sub_1C6EE46E0();
  return sub_1C6E7D7E8(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
}

uint64_t sub_1C6E75328@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  v4 = a2 + a1[6];
  sub_1C6EE4420();
  v5 = a1[7];
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[8];
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t (*sub_1C6E75424(uint64_t a1, uint64_t a2))()
{
  result = nullsub_91;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6E7547C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F88D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E7551C(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F7F48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E75588()
{
  sub_1C6E7A810(&qword_1EC1F7F48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E75608()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212A28);
  __swift_project_value_buffer(v0, qword_1EC212A28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EEA120;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "test_name";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "requested_api_names";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "input_features";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "expected_output_features";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "test_case_config";
  *(v15 + 8) = 16;
  *(v15 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E7589C(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_1C6EE4580();
      }

      else if (result == 2)
      {
        sub_1C6EE4570();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_1C6E759B0();
          break;
        case 4:
          sub_1C6E75A64(a1, v5, a2, a3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
          break;
        case 5:
          sub_1C6E75B1C();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1C6E759B0()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0) + 28);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  sub_1C6E7A810(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E75A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 32);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  sub_1C6E7A810(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E75B1C()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0) + 36);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig(0);
  sub_1C6E7A810(&qword_1EC1F87C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E75BD0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (!*(v3[2] + 16) || (result = sub_1C6EE46B0(), !v4))
    {
      result = sub_1C6E75CE8(v3, a1, a2, a3);
      if (!v4)
      {
        sub_1C6E75EF8(v3, a1, a2, a3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase, 4);
        sub_1C6E76110(v3, a1, a2, a3);
        v12 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0) + 24);
        return sub_1C6EE4410();
      }
    }
  }

  return result;
}

uint64_t sub_1C6E75CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0);
  sub_1C6E7D904(a1 + *(v14 + 28), v8, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E7D96C(v8, &qword_1EC1F7D68, &unk_1C6EE89B0);
  }

  sub_1C6E7D848(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6E7A810(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6EE46E0();
  return sub_1C6E7D7E8(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
}

uint64_t sub_1C6E75EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v19[2] = a6;
  v19[3] = a3;
  v19[5] = a4;
  v19[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v19 - v10;
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a5(0);
  sub_1C6E7D904(a1 + *(v17 + 32), v11, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1C6E7D96C(v11, &qword_1EC1F7D68, &unk_1C6EE89B0);
  }

  sub_1C6E7D848(v11, v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6E7A810(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6EE46E0();
  return sub_1C6E7D7E8(v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
}

uint64_t sub_1C6E76110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F70, &qword_1C6EE9500);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0);
  sub_1C6E7D904(a1 + *(v14 + 36), v8, &qword_1EC1F7F70, &qword_1C6EE9500);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E7D96C(v8, &qword_1EC1F7F70, &qword_1C6EE9500);
  }

  sub_1C6E7D848(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
  sub_1C6E7A810(&qword_1EC1F87C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
  sub_1C6EE46E0();
  return sub_1C6E7D7E8(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
}

uint64_t sub_1C6E76324@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = MEMORY[0x1E69E7CC0];
  v4 = &a2[a1[6]];
  sub_1C6EE4420();
  v5 = a1[7];
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v7 = *(*(v6 - 8) + 56);
  v7(&a2[v5], 1, 1, v6);
  v7(&a2[a1[8]], 1, 1, v6);
  v8 = a1[9];
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(&a2[v8], 1, 1, v9);
}

uint64_t sub_1C6E7644C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E764C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E76534(uint64_t a1, uint64_t a2))()
{
  result = nullsub_92;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6E7658C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F88E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E7662C(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F8800, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E76698()
{
  sub_1C6E7A810(&qword_1EC1F8800, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E76764(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F88E8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResultType);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E76804(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F87E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResultType);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E76870()
{
  sub_1C6E7A810(&qword_1EC1F87E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResultType);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E768EC()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212A58);
  __swift_project_value_buffer(v0, qword_1EC212A58);
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
  *v10 = "PASS";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "FAIL";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E76B1C()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212A70);
  __swift_project_value_buffer(v0, qword_1EC212A70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "error_tolerance_config";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "assertion_config";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E76CE4()
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
      sub_1C6E76D78();
    }

    else if (result == 2)
    {
      sub_1C6E76E2C();
    }
  }

  return result;
}

uint64_t sub_1C6E76D78()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig(0) + 20);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig(0);
  sub_1C6E7A810(&qword_1EC1F87A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E76E2C()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig(0) + 24);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig(0);
  sub_1C6E7A810(&qword_1EC1F8760, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E76EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E76F50(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6E77160(v3, a1, a2, a3);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E76F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F68, &qword_1C6EE94F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig(0);
  sub_1C6E7D904(a1 + *(v14 + 20), v8, &qword_1EC1F7F68, &qword_1C6EE94F8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E7D96C(v8, &qword_1EC1F7F68, &qword_1C6EE94F8);
  }

  sub_1C6E7D848(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);
  sub_1C6E7A810(&qword_1EC1F87A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);
  sub_1C6EE46E0();
  return sub_1C6E7D7E8(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);
}

uint64_t sub_1C6E77160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F60, &qword_1C6EE94F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig(0);
  sub_1C6E7D904(a1 + *(v14 + 24), v8, &qword_1EC1F7F60, &qword_1C6EE94F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E7D96C(v8, &qword_1EC1F7F60, &qword_1C6EE94F0);
  }

  sub_1C6E7D848(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
  sub_1C6E7A810(&qword_1EC1F8760, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
  sub_1C6EE46E0();
  return sub_1C6E7D7E8(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
}

uint64_t sub_1C6E77370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6EE4420();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6E774A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F88F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E77544(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F87C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E775B0()
{
  sub_1C6E7A810(&qword_1EC1F87C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E77648(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1C6E7A810(a5, a6);
      sub_1C6EE4590();
    }
  }

  return result;
}

uint64_t sub_1C6E77724()
{
  if (!*(*v0 + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType(0), sub_1C6E7A810(&qword_1EC1F8780, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType), result = sub_1C6EE46D0(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig(0) + 20);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t (*sub_1C6E77824(uint64_t a1, uint64_t a2))()
{
  result = nullsub_95;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6E778C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F88F8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E77960(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F87A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E779CC()
{
  sub_1C6E7A810(&qword_1EC1F87A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E77A60()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212AA0);
  __swift_project_value_buffer(v0, qword_1EC212AA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "dtype";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "relative_error_tolerance";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v12 = "absolute_error_tolerance";
  *(v12 + 8) = 24;
  *(v12 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E77C7C()
{
  result = sub_1C6EE44B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        sub_1C6EE4530();
      }

      else if (result == 1)
      {
        sub_1C6E6EA5C();
        sub_1C6EE44E0();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E77D48()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), sub_1C6E6EA5C(), result = sub_1C6EE4660(), !v1))
  {
    if (!*(v0 + 3) || (result = sub_1C6EE4680(), !v1))
    {
      if (!*(v0 + 4) || (result = sub_1C6EE4680(), !v1))
      {
        v3 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType(0) + 28);
        return sub_1C6EE4410();
      }
    }
  }

  return result;
}

uint64_t sub_1C6E77E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  v2 = a2 + *(a1 + 28);
  return sub_1C6EE4420();
}

uint64_t (*sub_1C6E77E90(uint64_t a1, uint64_t a2))()
{
  result = nullsub_96;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1C6E77EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F8900, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E77F88(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F8780, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E77FF4()
{
  sub_1C6E7A810(&qword_1EC1F8780, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E78074()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212AB8);
  __swift_project_value_buffer(v0, qword_1EC212AB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "assertion_type";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "actual_features_config";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E7823C()
{
  result = sub_1C6EE44B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C6E7DA20();
        sub_1C6EE44E0();
      }

      else if (result == 2)
      {
        sub_1C6E782FC();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E782FC()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig(0) + 24);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig(0);
  sub_1C6E7A810(&qword_1EC1F8720, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E783B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v10 = *v3, v11 = *(v3 + 8), sub_1C6E7DA20(), result = sub_1C6EE4660(), !v4))
  {
    result = sub_1C6E7847C(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig(0) + 20);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E7847C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F78, &qword_1C6EE9508);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig(0);
  sub_1C6E7D904(a1 + *(v14 + 24), v8, &qword_1EC1F7F78, &qword_1C6EE9508);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6E7D96C(v8, &qword_1EC1F7F78, &qword_1C6EE9508);
  }

  sub_1C6E7D848(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);
  sub_1C6E7A810(&qword_1EC1F8720, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);
  sub_1C6EE46E0();
  return sub_1C6E7D7E8(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);
}

uint64_t sub_1C6E7868C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a2 + *(a1 + 20);
  sub_1C6EE4420();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t (*sub_1C6E78734(uint64_t a1, uint64_t a2))()
{
  result = nullsub_97;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6E7878C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F8908, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E7882C(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F8760, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E78898()
{
  sub_1C6E7A810(&qword_1EC1F8760, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E78924(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1C6EE4710();
}

uint64_t sub_1C6E7896C()
{
  do
  {
    result = sub_1C6EE44B0();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_1C6E789E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C6E78A4C(uint64_t a1)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6E78AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F8918, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionType);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E78B78(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F8740, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionType);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E78BE4()
{
  sub_1C6E7A810(&qword_1EC1F8740, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionType);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E78C60()
{
  sub_1C6EE4430();
  sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E78CE8()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212AE8);
  __swift_project_value_buffer(v0, qword_1EC212AE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C6EED390;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 0;
  *v5 = "UNKNOWN";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C6EE46F0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v28 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "EXISTS";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v28 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "NOT_EXISTS";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v28 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "CONTAINS";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v28 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "NOT_CONTAINS";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v28 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "EQUALS";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v28 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "NOT_EQUALS";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v28 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "GREATER_THAN";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = v28 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "NOT_GREATER_THAN";
  *(v22 + 8) = 16;
  *(v22 + 16) = 2;
  v8();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "LESS_THAN";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "NOT_LESS_THAN";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v8();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E79114(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_1C6E79280()
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
      sub_1C6E792F4();
    }
  }

  return result;
}

uint64_t sub_1C6E792F4()
{
  sub_1C6EE4400();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig(0);
  sub_1C6E7A810(&qword_1EC1F8700, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);
  sub_1C6E7A810(&qword_1EC1F8708, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);
  return sub_1C6EE4490();
}

uint64_t sub_1C6E793EC()
{
  if (!*(*v0 + 16) || (sub_1C6EE4400(), type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig(0), sub_1C6E7A810(&qword_1EC1F8700, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig), sub_1C6E7A810(&qword_1EC1F8708, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig), result = sub_1C6EE4610(), !v3))
  {
    v2 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig(0) + 20);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E79528@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  *a2 = sub_1C6E0C4F4(MEMORY[0x1E69E7CC0]);
  v4 = a2 + *(a1 + 20);
  return sub_1C6EE4420();
}

uint64_t sub_1C6E79584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E795F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E7966C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_99;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6E796C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F8920, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E79764(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F8720, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E797D0()
{
  sub_1C6E7A810(&qword_1EC1F8720, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E79864(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_1C6EE4430();
  sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E79910()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212B18);
  __swift_project_value_buffer(v0, qword_1EC212B18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "to_length";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "with_shape";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "slice_specs";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E79B24()
{
  result = sub_1C6EE44B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec(0);
          sub_1C6E7A810(&qword_1EC1F86E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);
          sub_1C6EE4590();
          break;
        case 2:
          sub_1C6EE4500();
          break;
        case 1:
          sub_1C6EE44D0();
          break;
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E79C40()
{
  if (*v0 != 1 || (result = sub_1C6EE4650(), !v1))
  {
    if (!*(*(v0 + 8) + 16) || (result = sub_1C6EE4640(), !v1))
    {
      if (!*(*(v0 + 16) + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec(0), sub_1C6E7A810(&qword_1EC1F86E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec), result = sub_1C6EE46D0(), !v1))
      {
        v3 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig(0) + 28);
        return sub_1C6EE4410();
      }
    }
  }

  return result;
}

uint64_t sub_1C6E79D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = v2;
  v3 = a2 + *(a1 + 28);
  return sub_1C6EE4420();
}

uint64_t (*sub_1C6E79DBC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_100;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1C6E79E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F8928, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E79EB4(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F8700, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E79F20()
{
  sub_1C6E7A810(&qword_1EC1F8700, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E79FA0()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212B30);
  __swift_project_value_buffer(v0, qword_1EC212B30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "should_slice";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "start";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v12 = "end";
  *(v12 + 8) = 3;
  *(v12 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E7A1BC()
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      sub_1C6EE4540();
    }

    else if (result == 1)
    {
      sub_1C6EE44D0();
    }
  }

  return result;
}

uint64_t sub_1C6E7A25C()
{
  if (*v0 != 1 || (result = sub_1C6EE4650(), !v1))
  {
    if (!*(v0 + 4) || (result = sub_1C6EE4690(), !v1))
    {
      if (!*(v0 + 8) || (result = sub_1C6EE4690(), !v1))
      {
        v3 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec(0) + 28);
        return sub_1C6EE4410();
      }
    }
  }

  return result;
}

uint64_t sub_1C6E7A328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 4) = 0;
  *(a2 + 8) = 0;
  v2 = a2 + *(a1 + 28);
  return sub_1C6EE4420();
}

uint64_t sub_1C6E7A36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E7A3E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E7A454(uint64_t a1, uint64_t a2))()
{
  result = nullsub_101;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1C6E7A4AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E7A810(&qword_1EC1F8930, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E7A54C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
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

uint64_t sub_1C6E7A5E8(uint64_t a1)
{
  v2 = sub_1C6E7A810(&qword_1EC1F86E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E7A654()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E7A6AC()
{
  sub_1C6E7A810(&qword_1EC1F86E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E7A728()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E7A810(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6E7B4D0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E7B820(float *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3 > 3)
    {
      if (v3 > 5)
      {
        if (v3 == 6)
        {
          if (v2 != 6)
          {
            return 0;
          }
        }

        else if (v2 != 7)
        {
          return 0;
        }
      }

      else if (v3 == 4)
      {
        if (v2 != 4)
        {
          return 0;
        }
      }

      else if (v2 != 5)
      {
        return 0;
      }
    }

    else if (v3 > 1)
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

  if (a1[3] == *(a2 + 12) && a1[4] == *(a2 + 16))
  {
    v4 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceForDType(0) + 28);
    sub_1C6EE4430();
    sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    return sub_1C6EE4A50() & 1;
  }

  return 0;
}

uint64_t sub_1C6E7B980(uint64_t *a1, uint64_t a2)
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

  if (sub_1C6E5AA5C(a1[2], *(a2 + 16)))
  {
    v4 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestBundleResult(0) + 24);
    sub_1C6EE4430();
    sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    return sub_1C6EE4A50() & 1;
  }

  return 0;
}

uint64_t sub_1C6E7BA84(uint64_t *a1, uint64_t *a2)
{
  v56 = a2;
  v53 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v51 = *(v53 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v48 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = (&v47 - v7);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D70, &unk_1C6EF2EA0);
  v8 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v47 - v9;
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F50, &unk_1C6EED3E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = (&v47 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F88C0, &unk_1C6EEEEF8);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v47 - v22;
  v52 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCaseResult(0);
  v24 = *(v52 + 28);
  v25 = *(v20 + 56);
  v55 = a1;
  sub_1C6E7D904(a1 + v24, v23, &qword_1EC1F7F50, &unk_1C6EED3E0);
  v26 = v56;
  sub_1C6E7D904(v56 + v24, &v23[v25], &qword_1EC1F7F50, &unk_1C6EED3E0);
  v27 = *(v11 + 48);
  if (v27(v23, 1, v10) == 1)
  {
    if (v27(&v23[v25], 1, v10) == 1)
    {
      sub_1C6E7D96C(v23, &qword_1EC1F7F50, &unk_1C6EED3E0);
      goto LABEL_8;
    }

LABEL_6:
    v28 = &qword_1EC1F88C0;
    v29 = &unk_1C6EEEEF8;
    v30 = v23;
LABEL_20:
    sub_1C6E7D96C(v30, v28, v29);
    goto LABEL_21;
  }

  sub_1C6E7D904(v23, v18, &qword_1EC1F7F50, &unk_1C6EED3E0);
  if (v27(&v23[v25], 1, v10) == 1)
  {
    sub_1C6E7D7E8(v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
    goto LABEL_6;
  }

  sub_1C6E7D848(&v23[v25], v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
  v31 = sub_1C6E7CE44(v18, v14);
  sub_1C6E7D7E8(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
  sub_1C6E7D7E8(v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase);
  sub_1C6E7D96C(v23, &qword_1EC1F7F50, &unk_1C6EED3E0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_8:
  v32 = v52;
  v33 = *(v52 + 32);
  v34 = *(v50 + 48);
  v36 = v54;
  v35 = v55;
  sub_1C6E7D904(v55 + v33, v54, &qword_1EC1F7D68, &unk_1C6EE89B0);
  sub_1C6E7D904(v26 + v33, v36 + v34, &qword_1EC1F7D68, &unk_1C6EE89B0);
  v37 = *(v51 + 48);
  v38 = v53;
  if (v37(v36, 1, v53) != 1)
  {
    v41 = v49;
    sub_1C6E7D904(v36, v49, &qword_1EC1F7D68, &unk_1C6EE89B0);
    if (v37(v36 + v34, 1, v38) != 1)
    {
      v44 = v48;
      sub_1C6E7D848(v36 + v34, v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      if (sub_1C6E227C4(*v41, *v44))
      {
        v45 = *(v38 + 20);
        sub_1C6EE4430();
        sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
        LOBYTE(v45) = sub_1C6EE4A50();
        sub_1C6E7D7E8(v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        sub_1C6E7D7E8(v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        sub_1C6E7D96C(v36, &qword_1EC1F7D68, &unk_1C6EE89B0);
        if ((v45 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_11;
      }

      sub_1C6E7D7E8(v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      sub_1C6E7D7E8(v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      v28 = &qword_1EC1F7D68;
      v29 = &unk_1C6EE89B0;
      goto LABEL_19;
    }

    sub_1C6E7D7E8(v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
LABEL_18:
    v28 = &qword_1EC1F7D70;
    v29 = &unk_1C6EF2EA0;
LABEL_19:
    v30 = v36;
    goto LABEL_20;
  }

  if (v37(v36 + v34, 1, v38) != 1)
  {
    goto LABEL_18;
  }

  sub_1C6E7D96C(v36, &qword_1EC1F7D68, &unk_1C6EE89B0);
LABEL_11:
  v39 = *v35;
  v40 = *v26;
  if (*(v26 + 8) == 1)
  {
    if (v40)
    {
      if (v40 == 1)
      {
        if (v39 != 1)
        {
          goto LABEL_21;
        }
      }

      else if (v39 != 2)
      {
        goto LABEL_21;
      }
    }

    else if (v39)
    {
      goto LABEL_21;
    }
  }

  else if (v39 != v40)
  {
    goto LABEL_21;
  }

  if (v35[2] == v26[2] && v35[3] == v26[3] || (sub_1C6EE54B0() & 1) != 0)
  {
    v46 = *(v32 + 24);
    sub_1C6EE4430();
    sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    v42 = sub_1C6EE4A50();
    return v42 & 1;
  }

LABEL_21:
  v42 = 0;
  return v42 & 1;
}

uint64_t sub_1C6E7C19C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F78, &qword_1C6EE9508);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (v31 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F88A8, &qword_1C6EEEEF0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v31 - v15;
  v17 = *a1;
  v18 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v18 <= 4)
    {
      if (v18 <= 1)
      {
        if (v18)
        {
          if (v17 != 1)
          {
            goto LABEL_17;
          }
        }

        else if (v17)
        {
          goto LABEL_17;
        }
      }

      else if (v18 == 2)
      {
        if (v17 != 2)
        {
          goto LABEL_17;
        }
      }

      else if (v18 == 3)
      {
        if (v17 != 3)
        {
          goto LABEL_17;
        }
      }

      else if (v17 != 4)
      {
        goto LABEL_17;
      }
    }

    else if (v18 > 7)
    {
      if (v18 == 8)
      {
        if (v17 != 8)
        {
          goto LABEL_17;
        }
      }

      else if (v18 == 9)
      {
        if (v17 != 9)
        {
          goto LABEL_17;
        }
      }

      else if (v17 != 10)
      {
        goto LABEL_17;
      }
    }

    else if (v18 == 5)
    {
      if (v17 != 5)
      {
        goto LABEL_17;
      }
    }

    else if (v18 == 6)
    {
      if (v17 != 6)
      {
        goto LABEL_17;
      }
    }

    else if (v17 != 7)
    {
      goto LABEL_17;
    }
  }

  else if (v17 != v18)
  {
LABEL_17:
    v25 = 0;
    return v25 & 1;
  }

  v19 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig(0);
  v20 = a1;
  v31[0] = v19;
  v31[1] = a1;
  v21 = *(v19 + 24);
  v22 = *(v13 + 48);
  sub_1C6E7D904(v20 + v21, v16, &qword_1EC1F7F78, &qword_1C6EE9508);
  sub_1C6E7D904(a2 + v21, &v16[v22], &qword_1EC1F7F78, &qword_1C6EE9508);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v22], 1, v4) == 1)
    {
      sub_1C6E7D96C(v16, &qword_1EC1F7F78, &qword_1C6EE9508);
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  sub_1C6E7D904(v16, v12, &qword_1EC1F7F78, &qword_1C6EE9508);
  if (v23(&v16[v22], 1, v4) == 1)
  {
    sub_1C6E7D7E8(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);
LABEL_15:
    v26 = &qword_1EC1F88A8;
    v27 = &qword_1C6EEEEF0;
LABEL_16:
    sub_1C6E7D96C(v16, v26, v27);
    goto LABEL_17;
  }

  sub_1C6E7D848(&v16[v22], v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);
  if ((sub_1C6E24124(*v12, *v8) & 1) == 0)
  {
    sub_1C6E7D7E8(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);
    sub_1C6E7D7E8(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);
    v26 = &qword_1EC1F7F78;
    v27 = &qword_1C6EE9508;
    goto LABEL_16;
  }

  v29 = *(v4 + 20);
  sub_1C6EE4430();
  sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v30 = sub_1C6EE4A50();
  sub_1C6E7D7E8(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);
  sub_1C6E7D7E8(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeaturesConfig);
  sub_1C6E7D96C(v16, &qword_1EC1F7F78, &qword_1C6EE9508);
  if ((v30 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  v24 = *(v31[0] + 20);
  sub_1C6EE4430();
  sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v25 = sub_1C6EE4A50();
  return v25 & 1;
}

uint64_t sub_1C6E7C688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig(0);
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F60, &qword_1C6EE94F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = (&v47 - v9);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8898, &qword_1C6EEEEE0);
  v10 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v47 - v11;
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v50 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F68, &qword_1C6EE94F8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = (&v47 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F88A0, &qword_1C6EEEEE8);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v47 - v23;
  v51 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig(0);
  v25 = *(v51 + 20);
  v26 = *(v21 + 56);
  v56 = a1;
  sub_1C6E7D904(a1 + v25, v24, &qword_1EC1F7F68, &qword_1C6EE94F8);
  v27 = a2 + v25;
  v28 = a2;
  sub_1C6E7D904(v27, &v24[v26], &qword_1EC1F7F68, &qword_1C6EE94F8);
  v29 = *(v13 + 48);
  if (v29(v24, 1, v12) == 1)
  {
    if (v29(&v24[v26], 1, v12) == 1)
    {
      sub_1C6E7D96C(v24, &qword_1EC1F7F68, &qword_1C6EE94F8);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_1C6E7D904(v24, v19, &qword_1EC1F7F68, &qword_1C6EE94F8);
  if (v29(&v24[v26], 1, v12) == 1)
  {
    sub_1C6E7D7E8(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);
LABEL_9:
    v35 = &qword_1EC1F88A0;
    v36 = &qword_1C6EEEEE8;
LABEL_10:
    v37 = v24;
LABEL_11:
    sub_1C6E7D96C(v37, v35, v36);
    goto LABEL_12;
  }

  v40 = v50;
  sub_1C6E7D848(&v24[v26], v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);
  if ((sub_1C6E5B684(*v19, *v40) & 1) == 0)
  {
    sub_1C6E7D7E8(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);
    sub_1C6E7D7E8(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);
    v35 = &qword_1EC1F7F68;
    v36 = &qword_1C6EE94F8;
    goto LABEL_10;
  }

  v41 = *(v12 + 20);
  sub_1C6EE4430();
  sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v42 = sub_1C6EE4A50();
  sub_1C6E7D7E8(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);
  sub_1C6E7D7E8(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_ErrorToleranceConfig);
  sub_1C6E7D96C(v24, &qword_1EC1F7F68, &qword_1C6EE94F8);
  if ((v42 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  v30 = *(v51 + 24);
  v31 = *(v52 + 48);
  v32 = v55;
  sub_1C6E7D904(v56 + v30, v55, &qword_1EC1F7F60, &qword_1C6EE94F0);
  sub_1C6E7D904(v28 + v30, v32 + v31, &qword_1EC1F7F60, &qword_1C6EE94F0);
  v33 = v54;
  v34 = *(v53 + 48);
  if (v34(v32, 1, v54) == 1)
  {
    if (v34(v32 + v31, 1, v33) == 1)
    {
      sub_1C6E7D96C(v32, &qword_1EC1F7F60, &qword_1C6EE94F0);
LABEL_22:
      sub_1C6EE4430();
      sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v38 = sub_1C6EE4A50();
      return v38 & 1;
    }

    goto LABEL_19;
  }

  v43 = v49;
  sub_1C6E7D904(v32, v49, &qword_1EC1F7F60, &qword_1C6EE94F0);
  if (v34(v32 + v31, 1, v33) == 1)
  {
    sub_1C6E7D7E8(v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
LABEL_19:
    v35 = &qword_1EC1F8898;
    v36 = &qword_1C6EEEEE0;
    v37 = v32;
    goto LABEL_11;
  }

  v44 = v32 + v31;
  v45 = v48;
  sub_1C6E7D848(v44, v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
  v46 = sub_1C6E7C19C(v43, v45);
  sub_1C6E7D7E8(v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
  sub_1C6E7D7E8(v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_AssertionConfig);
  sub_1C6E7D96C(v32, &qword_1EC1F7F60, &qword_1C6EE94F0);
  if (v46)
  {
    goto LABEL_22;
  }

LABEL_12:
  v38 = 0;
  return v38 & 1;
}

unsigned __int8 *sub_1C6E7CD2C(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (*result != *a2)
  {
    return 0;
  }

  v2 = *(result + 1);
  v3 = *(a2 + 1);
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_11:
    if (sub_1C6E5B3BC(*(result + 2), *(a2 + 2)))
    {
      v8 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_FeatureConfig(0) + 28);
      sub_1C6EE4430();
      sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      return (sub_1C6EE4A50() & 1);
    }

    return 0;
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E7CE44(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig(0);
  v72 = *(v4 - 8);
  v5 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7F70, &qword_1C6EE9500);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v69 = &v64 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8890, &unk_1C6EEEED0);
  v11 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v13 = &v64 - v12;
  v75 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v14 = *(v75 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v75);
  v70 = (&v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v64 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v73 = (&v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v64 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D70, &unk_1C6EF2EA0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v74 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v64 - v30;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1C6EE54B0() & 1) == 0 || (sub_1C6E59BCC(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_19;
  }

  v65 = v4;
  v66 = v13;
  v64 = v7;
  v32 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiTestCase(0);
  v33 = *(v32 + 28);
  v34 = *(v26 + 48);
  v67 = v32;
  v68 = a1;
  sub_1C6E7D904(a1 + v33, v31, &qword_1EC1F7D68, &unk_1C6EE89B0);
  v35 = a2 + v33;
  v36 = a2;
  sub_1C6E7D904(v35, &v31[v34], &qword_1EC1F7D68, &unk_1C6EE89B0);
  v37 = *(v14 + 48);
  v38 = v75;
  if (v37(v31, 1, v75) == 1)
  {
    if (v37(&v31[v34], 1, v38) == 1)
    {
      sub_1C6E7D96C(v31, &qword_1EC1F7D68, &unk_1C6EE89B0);
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  sub_1C6E7D904(v31, v25, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if (v37(&v31[v34], 1, v38) == 1)
  {
    sub_1C6E7D7E8(v25, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
LABEL_16:
    v48 = &qword_1EC1F7D70;
    v49 = &unk_1C6EF2EA0;
LABEL_17:
    v50 = v31;
LABEL_18:
    sub_1C6E7D96C(v50, v48, v49);
    goto LABEL_19;
  }

  sub_1C6E7D848(&v31[v34], v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  if ((sub_1C6E227C4(*v25, *v19) & 1) == 0)
  {
    sub_1C6E7D7E8(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    sub_1C6E7D7E8(v25, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    v48 = &qword_1EC1F7D68;
    v49 = &unk_1C6EE89B0;
    goto LABEL_17;
  }

  v53 = *(v38 + 20);
  sub_1C6EE4430();
  sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  LOBYTE(v53) = sub_1C6EE4A50();
  sub_1C6E7D7E8(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6E7D7E8(v25, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6E7D96C(v31, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if ((v53 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_8:
  v39 = v67;
  v40 = *(v67 + 32);
  v41 = *(v26 + 48);
  v42 = v74;
  sub_1C6E7D904(v68 + v40, v74, &qword_1EC1F7D68, &unk_1C6EE89B0);
  sub_1C6E7D904(a2 + v40, v42 + v41, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if (v37(v42, 1, v38) == 1)
  {
    if (v37((v42 + v41), 1, v38) == 1)
    {
      sub_1C6E7D96C(v42, &qword_1EC1F7D68, &unk_1C6EE89B0);
      goto LABEL_11;
    }

    goto LABEL_26;
  }

  v54 = v73;
  sub_1C6E7D904(v42, v73, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if (v37((v42 + v41), 1, v38) == 1)
  {
    sub_1C6E7D7E8(v54, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
LABEL_26:
    v48 = &qword_1EC1F7D70;
    v49 = &unk_1C6EF2EA0;
    v50 = v42;
    goto LABEL_18;
  }

  v55 = v42 + v41;
  v56 = v70;
  sub_1C6E7D848(v55, v70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  if ((sub_1C6E227C4(*v54, *v56) & 1) == 0)
  {
    sub_1C6E7D7E8(v56, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    sub_1C6E7D7E8(v54, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    v48 = &qword_1EC1F7D68;
    v49 = &unk_1C6EE89B0;
    v50 = v42;
    goto LABEL_18;
  }

  v57 = *(v38 + 20);
  sub_1C6EE4430();
  sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v58 = sub_1C6EE4A50();
  sub_1C6E7D7E8(v56, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6E7D7E8(v54, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6E7D96C(v42, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if ((v58 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  v43 = *(v39 + 36);
  v44 = *(v71 + 48);
  v45 = v66;
  sub_1C6E7D904(v68 + v43, v66, &qword_1EC1F7F70, &qword_1C6EE9500);
  sub_1C6E7D904(v36 + v43, v45 + v44, &qword_1EC1F7F70, &qword_1C6EE9500);
  v46 = *(v72 + 48);
  v47 = v65;
  if (v46(v45, 1, v65) == 1)
  {
    if (v46(v45 + v44, 1, v47) == 1)
    {
      sub_1C6E7D96C(v45, &qword_1EC1F7F70, &qword_1C6EE9500);
LABEL_36:
      v63 = *(v39 + 24);
      sub_1C6EE4430();
      sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v51 = sub_1C6EE4A50();
      return v51 & 1;
    }

    goto LABEL_33;
  }

  v59 = v69;
  sub_1C6E7D904(v45, v69, &qword_1EC1F7F70, &qword_1C6EE9500);
  if (v46(v45 + v44, 1, v47) == 1)
  {
    sub_1C6E7D7E8(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
LABEL_33:
    v48 = &qword_1EC1F8890;
    v49 = &unk_1C6EEEED0;
    v50 = v45;
    goto LABEL_18;
  }

  v60 = v45 + v44;
  v61 = v64;
  sub_1C6E7D848(v60, v64, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
  v62 = sub_1C6E7C688(v59, v61);
  sub_1C6E7D7E8(v61, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
  sub_1C6E7D7E8(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TestCaseConfig);
  sub_1C6E7D96C(v45, &qword_1EC1F7F70, &qword_1C6EE9500);
  if (v62)
  {
    goto LABEL_36;
  }

LABEL_19:
  v51 = 0;
  return v51 & 1;
}

uint64_t sub_1C6E7D7E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E7D848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C6E7D8B0()
{
  result = qword_1EC1F88B8;
  if (!qword_1EC1F88B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F88B8);
  }

  return result;
}

uint64_t sub_1C6E7D904(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E7D96C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1C6E7D9CC()
{
  result = qword_1EC1F88D8;
  if (!qword_1EC1F88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F88D8);
  }

  return result;
}

unint64_t sub_1C6E7DA20()
{
  result = qword_1EC1F8910;
  if (!qword_1EC1F8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F8910);
  }

  return result;
}

uint64_t sub_1C6E7DA74(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    return 0;
  }

  v2 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_SliceSpec(0) + 28);
  sub_1C6EE4430();
  sub_1C6E7A810(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t __swift_get_extra_inhabitant_index_116Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE4430();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_117Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EE4430();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C6E7DCB8()
{
  result = sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C6E7E024()
{
  sub_1C6EE4430();
  if (v0 <= 0x3F)
  {
    sub_1C6E7E130(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C6E7E130(319, &qword_1EC1F8980, type metadata accessor for Com_Apple_News_Algorithms_Proto_Tokenizer_TokenizerSpec, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6E7E130(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6E7E194()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212B48);
  __swift_project_value_buffer(v0, qword_1EC212B48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "header";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "vectors";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}